; ROM layout

.memorymap
slotsize $4000 ; ROM banks
slot 0 $0000
slot 1 $4000
slot 2 $8000
slotsize $2000 ; RAM
slot 3 $c000
defaultslot 2
.endme

.rombankmap
bankstotal 32 ; power of 2 for best compatibility - wastes a lot of space...
banksize $4000
banks 32
.endro

; The ROM to patch, with certain areas marked as free to use
.background "Battlemaniacs (BR).sms"
.unbackground $0004 $0037 ; unused space
.unbackground $003b $0065 ; unused space
.unbackground $0083 $00ff ; unused space
.unbackground $0159 $01ff ; unused space
.unbackground $0465 $0474 ; interrupt handler call to music engine
;.unbackground $0d2e $0d42 ; delay function
.unbackground $6d3d $6d72 ; old jump points for music engine

.unbackground $18000 $18402 ; intro code and script
.unbackground $38C4 $3913 ; intro picture loaders
.unbackground $1AC51 $1bf07 ; intro picture data 1
.unbackground $1F292 $1fbad ; intro picture data 2

; Unused space throughout ROM - may not be useful
.unbackground $7bb5 $7bff
.unbackground $7fe3 $7fff
.unbackground $9020 $bbff
.unbackground $bf68 $bfff
.unbackground $dd45 $ffff
.unbackground $13e45 $13fff
.unbackground $17ecc $17fff
.unbackground $1bf08 $1bfff
.unbackground $1fbae $1ffff
.unbackground $23fc3 $23fff
.unbackground $27b66 $27fff
.unbackground $2b56e $2bfff
.unbackground $2f96f $2ffff
.unbackground $33754 $33fff
.unbackground $35b24 $37fff


; We rewrite the SMS header - this restores the product code and fixes the checksum
.smsheader
  productcode $70, $58, 2
	regioncode 4
.endsms
; No room for an SDSC tag :(
;.sdsctag 1.0, "Battlemaniacs Restoration", "Adds missing music to the game, ...", "Maxim, ..."

.define PAGING_REGISTER_1 $fffe
.define PAGING_REGISTER_2 $ffff

; PSGLib uses a .ramsection, so we do too...
.ramsection "Variables" slot 3
CurrentMusicBank  db
.ends

; Functions in the original game we want to use
.define TextToVRAM                  $5790 ; write ASCII from ix to VRAM starting at loction (b,c), until a zero is encountered
.define CheckForButton1             $0E7A ; returns nz if pressed
.define ResetScrollTile0AndTilemap  $04EA ; resets scrolling, blanks tile 0 and fills tilemap with that index
.define LoadPalettes                $1583 ; loads palettes from RAM pointers to VRAM
;.define EmitTilemapRect             $0D4D ; emits tilemap data from hl to vram address de with dimensions bxc
.define SkippableDelay              $0E9C ; delays for b*20ms, e.g. $64 => 2s

; RAM locations from the original game we want to use
.define RAM_TilePalettePointer      $C7C7 ; pointer to palette for tiles, used by LoadPalettes
.define IntroButtonPressed          $C822 ; signal from intro to game to indicate if it was skipped by pressing a button, 1 if true, 0 otherwise

.bank 0 slot 0

; Patches to audio API calls
.orga $0465
.section "Interrupt handler hook" force
InterruptHook:
  ld a,(PAGING_REGISTER_1)
  push af
    ld a, :AudioFrame
    ld (PAGING_REGISTER_1), a
    call AudioFrame
  pop af
  ld (PAGING_REGISTER_1), a
  ; Exactly fits the space...
.ends

.orga $30a3
.section "Init hook" overwrite
  call Init
.ends

.section "Init hook handler" free
Init:
  ; Page in code
  ; We don't need to preserve paging here
  ld a, :PSGInit
  ld (PAGING_REGISTER_1), a
  ; Call it
  call PSGInit
  ; Restore paging
  ld a,1
	ld (PAGING_REGISTER_1), a
  inc a
	ld (PAGING_REGISTER_2), a
  ; what we replaced to get here
  jp $02BF
  ; above will ret
.ends

; We need to place some trampolines in the first 16KB...
.section "Play SFX trampoline" free
PlaySFXTrampoline:
  ; save parameter
	ex af, af'
  ; page in code
  ld a,(PAGING_REGISTER_1)
  push af
    ld a,:PlaySFX
    ld (PAGING_REGISTER_1), a
    ; call it
    ex af, af'
    call PlaySFX
  pop af
  ; restore paging
  ld (PAGING_REGISTER_1), a
  ret  
.ends

.section "Play music trampoline" free
PlayMusicTrampoline:
  ; save parameter
	ex af, af'
  ; page in code
  ld a,(PAGING_REGISTER_1)
  push af
    ld a,:PlayMusic
    ld (PAGING_REGISTER_1), a
    ; call it
    ex af,af'
    call PlayMusic
  pop af
  ; restore paging
  ld (PAGING_REGISTER_1), a
  ret  
.ends

.section "Stop music trampoline" free
StopMusicTrampoline:
  ; page in code
  ld a,(PAGING_REGISTER_1)
  push af
    ld a, :StopMusic
    ld (PAGING_REGISTER_1), a
    ; call it
    call StopMusic
  pop af
  ; restore paging
  ld (PAGING_REGISTER_1), a
  ret  
.ends

.bank 1 slot 1
.orga $6d3d
.section "Play SFX hook" force
  ; a = index
  jp PlaySFXTrampoline
.ends

.orga $6d54
.section "Play music hook" force
  ; a = index
  jp PlayMusicTrampoline
.ends

.orga $6d6b
.section "Stop audio hook" force
  jp StopMusicTrampoline
.ends

.bank 16 slot 1
.include "PSGLib.inc" 

.section "Audio frame handler" free
AudioFrame:
  push bc
  push hl
    ld a,(PAGING_REGISTER_2)
    push af
      ld a,(CurrentMusicBank)
      ld (PAGING_REGISTER_2),a
      call PSGFrame
      ld a,:SFX1
      ld (PAGING_REGISTER_2),a
      call PSGSFXFrame
    pop af
    ld (PAGING_REGISTER_2),a
  pop hl
  pop bc
  ret
.ends

.section "SFX player" free
PlaySFX:
  push hl
  push de
  push bc
    ; convert to 0-based
    sub $2B
    ; Look up in table
    add a,a
    ld e,a
    ld d,0
    ld hl,_lookup
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ; Page into slot 2
    ld a,(PAGING_REGISTER_2)
    push af
      ld a,:SFX1
      ld (PAGING_REGISTER_2),a
      ; First byte is the channel mask
      ld c,(hl)
      inc hl
      call PSGSFXPlay
    pop af
    ld (PAGING_REGISTER_2),a
  pop bc
  pop de
  pop hl  
  ret
  
_lookup:
.dw SFX1, SFX2, SFX3, SFX4, SFX5, SFX6, SFX7, SFX8, SFX9, SFX10, SFX11, SFX12, SFX13, SFX14, SFX15, SFX16, SFX17, SFX18, SFX19
.ends

.section "Music player" free
PlayMusic:
  ; We do a dumb if-then-else. This costs about 15 bytes per item and isn't very fast, but doing it by a lookup would be a pain as we have large indices.
  cp 1
  jr nz,+
  ; 1 = title screen
  ld a,:MusicTitle
  ld (CurrentMusicBank),a
  ld hl,MusicTitle
  jp PSGPlay ; and ret
+:cp $0d
  jr nz,+
  ; d = ragnarok canyon
  ld a,:MusicRagnarokCanyon
  ld (CurrentMusicBank),a
  ld hl,MusicRagnarokCanyon
  jp PSGPlay ; and ret
+:cp $15
  jr nz,+
  ; $15 = hollow tree
  ld a,:MusicHollowTree
  ld (CurrentMusicBank),a
  ld hl,MusicHollowTree
  jp PSGPlay ; and ret
+:cp $23
  jr nz,+
  ; $23 = snake pit
  ld a,:MusicSnakePit
  ld (CurrentMusicBank),a
  ld hl,MusicSnakePit
  jp PSGPlay ; and ret
+:cp $1b
  jr nz,+
  ; $1b = bonus stage
  ld a,:MusicBonusStage
  ld (CurrentMusicBank),a
  ld hl,MusicBonusStage
  jp PSGPlay ; and ret
+:cp $02
  jr nz,+
  ; $02 = dark tower (new)
  ld a,:MusicDarkTower
  ld (CurrentMusicBank),a
  ld hl,MusicDarkTower
  jp PSGPlay ; and ret
+:cp $03
  jr nz,+
  ; $03 = turbo tunnel (new)
  ld a,:MusicTurboTunnel
  ld (CurrentMusicBank),a
  ld hl,MusicTurboTunnel
  jp PSGPlay ; and ret
  ; unhandled
+:jp StopMusic ; and ret
.ends

.section "Audio stop" free
StopMusic:
  call PSGStop
  call PSGSFXStop
  ret
.ends

.slot 2
.section "Music data 1" superfree
MusicTitle:
.incbin "vgms/music/Battlemaniacs - 01 - Title.psg"
.ends
.section "Music data 2" superfree
MusicRagnarokCanyon:
.incbin "vgms/music/Battlemaniacs - 02 - Ragnarok Canyon.psg"
.ends
.section "Music data 3" superfree
MusicHollowTree:
.incbin "vgms/music/Battlemaniacs - 03 - Hollow Tree.psg"
.ends
.section "Music data 4" superfree
MusicSnakePit:
.incbin "vgms/music/Battlemaniacs - 04 - Snake Pit.psg"
.ends
.section "Music data 5" superfree
MusicBonusStage:
.incbin "vgms/music/Battlemaniacs - 05 - Last Battle, Bonus Stage #1 .psg"
.ends
.section "Music data 6" superfree
MusicDarkTower:
.incbin "vgms/music/Dark Tower.psg"
.ends
.section "Music data 7" superfree
MusicTurboTunnel:
.incbin "vgms/music/Turbo Tunnel.psg"
.ends

.section "SFX data" superfree
; We prepend the SFX data with the channel info
.define CH2  %00000001
.define CH23 %00000011
SFX1: 
.db CH23
.incbin "vgms/sfx/SFX01_23.psg"
SFX2: 
.db CH23
.incbin "vgms/sfx/SFX02_23.psg"
SFX3: 
.db CH23
.incbin "vgms/sfx/SFX03_23.psg"
SFX4: 
.db CH23
.incbin "vgms/sfx/SFX04_23.psg"
SFX5: 
.db CH23
.incbin "vgms/sfx/SFX05_23.psg"
SFX6: 
.db CH2
.incbin "vgms/sfx/SFX06_2.psg"
SFX7: 
.db CH2
.incbin "vgms/sfx/SFX07_2.psg"
SFX8: 
.db CH2
.incbin "vgms/sfx/SFX08_2.psg"
SFX9: 
.db CH23
.incbin "vgms/sfx/SFX09_23.psg"
SFX10: 
.db CH23
.incbin "vgms/sfx/SFX10_23.psg"
SFX11: 
.db CH23
.incbin "vgms/sfx/SFX11_23.psg"
SFX12: 
.db CH23
.incbin "vgms/sfx/SFX12_23.psg"
SFX13: 
.db CH2
.incbin "vgms/sfx/SFX13_2.psg"
SFX14: 
.db CH23
.incbin "vgms/sfx/SFX14_23.psg"
SFX15: 
.db CH2
.incbin "vgms/sfx/SFX15_2.psg"
SFX16: 
.db CH2
.incbin "vgms/sfx/SFX16_2.psg"
SFX17: 
.db CH2
.incbin "vgms/sfx/SFX17_2.psg"
SFX18: 
.db CH23
.incbin "vgms/sfx/SFX18_23.psg"
SFX19: 
.db CH23
.incbin "vgms/sfx/SFX19_23.psg"
.ends

.bank 6 slot 2
.orga $8000
.section "Intro replacement" force
  jp IntroTrampoline
.ends

.bank 0 slot 0
.section "IntroTrampoline" free
IntroTrampoline:
  ; no need to preserve paging - original game doesn't
  ld a,:Intro
  ld (PAGING_REGISTER_2),a
  jp Intro
.ends

.slot 2
.section "Intro" superfree
.enum $ff DESC
  INTRO_END db
  INTRO_PICTURE db
  INTRO_WAIT db
  INTRO_TEXT db
  INTRO_BLANK_TEXT db
.ende

Intro:
  ; Start off blank
	call ResetScrollTile0AndTilemap
  ld hl,IntroScript
IntroLoop:
  ld a,(hl)
  inc hl
  cp INTRO_END
  jp z,_End
  cp INTRO_PICTURE
  jp z,_LoadPicture
  cp INTRO_WAIT
  jp z,_Wait
  cp INTRO_BLANK_TEXT
  jp z,_blank
  ; else it's text
  ; location is next, we need to put it in bc
  ld c,(hl)
  inc hl
  ld b,(hl)
  inc hl
  ; then we need to put hl in ix
  push hl
  pop ix
  call TextToVRAM ; writes chars util a zero is met
  push ix
  pop hl
  ; check for key press
	call CheckForButton1
	jr z, IntroLoop ; loop if not pressed
  ; else fall through  
_IntroSkipped:
	call ResetScrollTile0AndTilemap
	ld a, 1
	ld (IntroButtonPressed), a
  ret
  
_blank:
  ; next byte is the row index
  ld a,(hl)
  inc hl
  ; we want to multiply it by 64
  push hl
    ld b,a
    ld l,a
    ld h,0
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,hl
    ; and add to $3800
    ld de,$7800
    add hl,de
    ; and set that address
    di
    ld c,$bf
    out (c),l
    out (c),h
    ; and draw 24-a rows
    ld a,24
    sub b
    ld c,a
    xor a
--: ld b,64
-:  out ($be),a
    push ix ; delay
    pop ix
    djnz -
    dec c
    jr nz,--
    ei
  pop hl
  jp IntroLoop

  
_LoadPicture:
  ; Clear the tilemap
  push hl
    call ResetScrollTile0AndTilemap
  pop hl
  ; Load data
  ; First the palette
  ld e,(hl)
  inc hl
	ld d,(hl)
  inc hl
	ld (RAM_TilePalettePointer), de
  push hl
    call LoadPalettes
  pop hl
  ; Then the tiles
  ld e,(hl) ; offset
  inc hl
	ld d,(hl)
  inc hl
  ld c,(hl) ; page
  inc hl
  push bc
  push hl
    ex de,hl
    ld de,$4000 ; tile 0
    call decompress
  pop hl
  pop bc
  ; Then the tilemap
  ld e,(hl)
  inc hl
	ld d,(hl)
  inc hl
  push hl
    ex de,hl
    ; hl = data to write
    ; de = VRAM address to write to
    ld de,$7800 ; tilemap start
    call decompress
  pop hl
  jp IntroLoop
  
_Wait:
	ld b, (hl)
  inc hl
	call SkippableDelay
  jp IntroLoop

  
_End:
	call ResetScrollTile0AndTilemap
	xor a
	ld (IntroButtonPressed), a
  ret

; Macros for scripts

; Adds a picture 
.macro Picture args palette, tiles, tilemap
  .db INTRO_PICTURE
  .dw palette
  .dw tiles
  .db :tiles
  .dw tilemap
.endm

; Draws some text at the given location
.macro Text args x, y, text
  .db INTRO_TEXT,x,y,text,0
.endm

; Pauses for the given length of time
.macro Wait args seconds
  .db INTRO_WAIT, seconds*50
.endm

; Clears the screen from the given row onwards
.macro Clear args row
  .db INTRO_BLANK_TEXT, row
.endm  

IntroScript:
  Picture Intro1Palette, Intro1Tiles, Intro1Tilemap
  Text 7,21, "THE 'TOADS ARE AT THE"
  Text 7,23, "GYACHUNG-LA FORTRESS"
  Wait 2

  Picture Intro2Palette, Intro2Tiles, Intro2Tilemap
  Text 12,21,"LOCATED IN"
  Text 7,23, "NORTHERN TIBET, ASIA"
  Wait 2

  Picture Intro3Palette, Intro3Tiles, Intro3Tilemap
  Text 4,21, "PROFESSOR T-BIRD STARTS..."
  Wait 1
  Clear 21
  Text 4,21, "'TOADS, I HAVE INVITED YOU"
  Text 5,23, "HERE TO WITNESS THE FIRST"
  Wait 2
  Clear 21
  Text 4,21, "DEMONSTRATION OF PSICONE'S"
  Text 7,23, "NEW GAMES GENERATOR."
  Wait 2

  Picture Intro4Palette, Intro4Tiles, Intro4Tilemap
  Text 13,21,"TRIPS 21"
  Wait 1
  Clear 21
  Text 5,21, "TOTAL REALITY INTEGRATED"
  Text 10,23,"PLAYING SYSTEM"
  Wait 2
  Clear 21
  Text 4,21, "WE'VE NAMED ITS ARTIFICIAL"
  Text 6,23, "WORLD \"THE GAMESCAPE\"."
  Wait 2

  Picture Intro5Palette, Intro5Tiles, Intro5Tilemap

  Text 3,21, "THIS APPROACHING IMAGE IS A"
  Text 6,23, "PIG OF THE APOCALYPSE,"
  Wait 2
  Clear 21
  Text 6,21, "ONE OF THE GAMES T..."
  Wait 1

  Picture Intro6Palette, Intro6Tiles, Intro6Tilemap
  Text 5,19, "BEFORE THE PROFESSOR CAN"
  Text 4,21, "FINISH, THE PIG LEAPS OUT"
  Text 9,23, "OF THE SCREEN!!"
  Wait 3

  Picture Intro7Palette, Intro7Tiles, Intro7Tilemap
  Text 4,19, "IT GRABS MICHIKO TASHOKU,"
  Text 6,21, "DAUGHTER OF PSICONE'S"
  Text 10,23,"HEAD HONCHO!!"
  Wait 3

  Picture Intro8Palette, Intro8Tiles, Intro8Tilemap
  Text 4,19, "ZITZ LEAPS TO HER RESCUE,"
  Text 2,21, "BUT HE TAKES A BEASTLY BASHING"
  Text 7,23, "AND IS CAPTURED TOO!"
  Wait 3

  Picture Intro9Palette, Intro9Tiles, Intro9Tilemap
  Text 4,19, "WITH MICHIKO AND ZITZ ITS"
  Text 2,21, "PRISONER, THE EVIL PIG ESCAPES"
  Text 5,23, "BACK INTO THE GAMESCAPE!"
  Wait 3

  Picture Intro10Palette, Intro10Tiles, Intro10Tilemap
  Text 4,21, "PAY ATTENTION BATTLEJERKS!"
  Wait 2
  Clear 21
  Text 3,21, "I, SILAS VOLKMIRE, INTEND TO"
  Text 2,23, "TURN YOUR MISERABLE WORLD INTO"
  Wait 2
  Clear 21
  Text 6,21, "MY VERY OWN GAMESCAPE!"
  Wait 1                
  Clear 21
  Text 4,21, "THE DARK QUEEN HOLDS YOUR"
  Text 5,23, "FEEBLE FRIENDS CAPTIVE,"
  Wait 2                
  Clear 21
  Text 5,21, "AND IF YOU TRY ANYTHING,"
  Text 3,23, "YOU'LL NEVER SEE THEM AGAIN!"
  Wait 2
  Clear 21
  Text 10,21,"HA-HA-HA-HA!!"
  Wait 1

; ***********************************
; Beginning of level 1 (I guess the easiest is to add this as a Prologue scene)
; ***********************************

  Picture Intro11Palette, Intro11Tiles, Intro11Tilemap
  Text 5,21, "WE GOTTA GET 'EM BACK!!"
  Wait 1
  Clear 21
  Text 2,21, "LET'S GATECRASH THE GAMESCAPE"
  Text 2,23, "AN' COOK SOME BEASTIN' BACON!"
  Wait 2
.db INTRO_END

decompress:
  ; page in data
  ld a,(PAGING_REGISTER_1)
  push af
    ld a,c
    ld (PAGING_REGISTER_1),a
    call zx7_decompress
  pop af
  ld (PAGING_REGISTER_1),a
  ret
  
.define ZX7ToVRAM
.define ZX7ToVRAMScreenOn
.include "ZX7 decompressor.asm"
.ends

; Palettes need to be in the lower 32KB
.bank 0 slot 0
.section "Palettes" free
Intro1Palette:
.incbin "images\intro1.png.palette.bin"
Intro2Palette:
.incbin "images\intro2.png.palette.bin"
Intro3Palette:
.incbin "images\intro3.png.palette.bin"
Intro4Palette:
.incbin "images\intro4.png.palette.bin"
Intro5Palette:
.incbin "images\intro5.png.palette.bin"
Intro6Palette:
.incbin "images\intro6.png.palette.bin"
Intro7Palette:
.incbin "images\intro7.png.palette.bin"
Intro8Palette:
.incbin "images\intro8.png.palette.bin"
Intro9Palette:
.incbin "images\intro9.png.palette.bin"
Intro10Palette:
.incbin "images\intro10.png.palette.bin"
.ends
.section "Palettes part 2" free
Intro11Palette:
.incbin "images\intro11.png.palette.bin"
.ends

; compressed data needs to be in slot 1
.slot 1

.section "image 1" superfree
Intro1Tiles:
.incbin "images\intro1.png.tiles.zx7"
Intro1Tilemap:
.incbin "images\intro1.png.tilemap.zx7"
.ends
.section "image 2" superfree
Intro2Tiles:
.incbin "images\intro2.png.tiles.zx7"
Intro2Tilemap:
.incbin "images\intro2.png.tilemap.zx7"
.ends
.section "image 3" superfree
Intro3Tiles:
.incbin "images\intro3.png.tiles.zx7"
Intro3Tilemap:
.incbin "images\intro3.png.tilemap.zx7"
.ends
.section "image 4" superfree
Intro4Tiles:
.incbin "images\intro4.png.tiles.zx7"
Intro4Tilemap:
.incbin "images\intro4.png.tilemap.zx7"
.ends
.section "image 5" superfree
Intro5Tiles:
.incbin "images\intro5.png.tiles.zx7"
Intro5Tilemap:
.incbin "images\intro5.png.tilemap.zx7"
.ends
.section "image 6" superfree
Intro6Tiles:
.incbin "images\intro6.png.tiles.zx7"
Intro6Tilemap:
.incbin "images\intro6.png.tilemap.zx7"
.ends
.section "image 7" superfree
Intro7Tiles:
.incbin "images\intro7.png.tiles.zx7"
Intro7Tilemap:
.incbin "images\intro7.png.tilemap.zx7"
.ends
.section "image 8" superfree
Intro8Tiles:
.incbin "images\intro8.png.tiles.zx7"
Intro8Tilemap:
.incbin "images\intro8.png.tilemap.zx7"
.ends
.section "image 9" superfree
Intro9Tiles:
.incbin "images\intro9.png.tiles.zx7"
Intro9Tilemap:
.incbin "images\intro9.png.tilemap.zx7"
.ends
.section "image 10" superfree
Intro10Tiles:
.incbin "images\intro10.png.tiles.zx7"
Intro10Tilemap:
.incbin "images\intro10.png.tilemap.zx7"
.ends
.section "image 11" superfree
Intro11Tiles:
.incbin "images\intro11.png.tiles.zx7"
Intro11Tilemap:
.incbin "images\intro11.png.tilemap.zx7"
.ends
