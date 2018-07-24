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
.unbackground $3b8e $3c6b ; Intermission screens handler
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
.define ScreenOn                    $0295 ; turns screen on
.define ScreenOff                   $0282 ; turns screen off
.define LoadFont                    $1557 ; loads font tiles at tilemap address ix

; RAM locations from the original game we want to use
.define RAM_TilePalettePointer      $C7C7 ; pointer to palette for tiles, used by LoadPalettes
.define RAM_SpritePalettePointer    $C769 ; pointer to palette for sprites and font tiles, used by LoadPalettes
.define RAM_IntroButtonPressed      $C822 ; signal from intro to game to indicate if it was skipped by pressing a button, 1 if true, 0 otherwise
.define RAM_GameState               $c779 ; 3 = continue screen?
.define RAM_LevelNumber             $C792 ; 0, 1, ...

; Data locations from tje original game we want to use
.define DATA_FontPalette            $AC41

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
  jp _ScriptLoop
  
Intermission:
  call ScreenOn
  ; Check if it's the continue screen
  ld a,(RAM_GameState)
  cp 3
  jp nz,+
  ; Continue screen graphics
  
  ; ELse look up a random text based on the level
+:ld a,(RAM_LevelNumber) ; 0..8? TODO So we can fit in 8 bits for the next bit
  add a,a ; Multiply by 16
  add a,a
  add a,a
  add a,a
  ld e,a
  ld d,0
  ld hl,IntermissionsLookup
  add hl,de
  push hl
    ; get a random number (0,2,4,6) to add on
    ld a,r
    and 6
    add a,l
    ld l,a
    ; read value
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ; draw
    call _ScriptLoop
  pop hl
  ; next T-Bird
  ld de,8
  add hl,de
  ; get a random number
  ld a,r
  and 6
  add a,l
  ld l,a
  ; read value
  ld a,(hl)
  inc hl
  ld h,(hl)
  ld l,a
  ; draw
  call _ScriptLoop
  jp ScreenOff ; and ret
  
_ScriptLoop:
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
	jr z, _ScriptLoop ; loop if not pressed
  ; else fall through  
_IntroSkipped:
	call ResetScrollTile0AndTilemap
	ld a, 1
	ld (RAM_IntroButtonPressed), a
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
  jp _ScriptLoop

  
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
  jp _ScriptLoop
  
_Wait:
	ld b, (hl)
  inc hl
	call SkippableDelay
  jp _ScriptLoop

  
_End:
	call ResetScrollTile0AndTilemap
	xor a
	ld (RAM_IntroButtonPressed), a
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

; Draws some text at the given location, with an optioanl pause
.macro Text args x, y, text, frames
  .db INTRO_TEXT,x,y,text,0
  .if NARGS == 4
  .db INTRO_WAIT, frames
  .endif
.endm

; Pauses for the given length of time
.macro Wait args frames
  .db INTRO_WAIT, frames
.endm

; Clears the screen from the given row onwards
.macro Clear args row
  .db INTRO_BLANK_TEXT, row
.endm  

.block "Scripts"

IntroScript:
  Picture Intro1Palette, Intro1Tiles, Intro1Tilemap
  Text 7,21, "THE 'TOADS ARE AT THE"
  Text 7,23, "GYACHUNG-LA FORTRESS", 100

  Picture Intro2Palette, Intro2Tiles, Intro2Tilemap
  Text 12,21,"LOCATED IN"
  Text 7,23, "NORTHERN TIBET, ASIA", 100

  Picture Intro3Palette, Intro3Tiles, Intro3Tilemap
  Text 4,21, "PROFESSOR T-BIRD STARTS...", 50
  Clear 21
  Text 4,21, "'TOADS, I HAVE INVITED YOU"
  Text 5,23, "HERE TO WITNESS THE FIRST", 100
  Clear 21
  Text 4,21, "DEMONSTRATION OF PSICONE'S"
  Text 7,23, "NEW GAMES GENERATOR.", 100

  Picture Intro4Palette, Intro4Tiles, Intro4Tilemap
  Text 13,21,"TRIPS 21", 50
  Clear 21
  Text 5,21, "TOTAL REALITY INTEGRATED"
  Text 10,23,"PLAYING SYSTEM", 100
  Clear 21
  Text 4,21, "WE'VE NAMED ITS ARTIFICIAL"
  Text 6,23, "WORLD \"THE GAMESCAPE\".", 100

  Picture Intro5Palette, Intro5Tiles, Intro5Tilemap

  Text 3,21, "THIS APPROACHING IMAGE IS A"
  Text 6,23, "PIG OF THE APOCALYPSE,", 100
  Clear 21
  Text 6,21, "ONE OF THE GAMES T...", 50

  Picture Intro6Palette, Intro6Tiles, Intro6Tilemap
  Text 5,19, "BEFORE THE PROFESSOR CAN"
  Text 4,21, "FINISH, THE PIG LEAPS OUT"
  Text 9,23, "OF THE SCREEN!!", 150

  Picture Intro7Palette, Intro7Tiles, Intro7Tilemap
  Text 4,19, "IT GRABS MICHIKO TASHOKU,"
  Text 6,21, "DAUGHTER OF PSICONE'S"
  Text 10,23,"HEAD HONCHO!!", 150

  Picture Intro8Palette, Intro8Tiles, Intro8Tilemap
  Text 4,19, "ZITZ LEAPS TO HER RESCUE,"
  Text 2,21, "BUT HE TAKES A BEASTLY BASHING"
  Text 7,23, "AND IS CAPTURED TOO!", 150

  Picture Intro9Palette, Intro9Tiles, Intro9Tilemap
  Text 4,19, "WITH MICHIKO AND ZITZ ITS"
  Text 2,21, "PRISONER, THE EVIL PIG ESCAPES"
  Text 5,23, "BACK INTO THE GAMESCAPE!", 150

  Picture Intro10Palette, Intro10Tiles, Intro10Tilemap
  Text 4,21, "PAY ATTENTION BATTLEJERKS!", 100
  Clear 21
  Text 3,21, "I, SILAS VOLKMIRE, INTEND TO"
  Text 2,23, "TURN YOUR MISERABLE WORLD INTO", 100
  Clear 21
  Text 6,21, "MY VERY OWN GAMESCAPE!", 50                
  Clear 21
  Text 4,21, "THE DARK QUEEN HOLDS YOUR"
  Text 5,23, "FEEBLE FRIENDS CAPTIVE,", 100                
  Clear 21
  Text 5,21, "AND IF YOU TRY ANYTHING,"
  Text 3,23, "YOU'LL NEVER SEE THEM AGAIN!", 100
  Clear 21
  Text 10,21,"HA-HA-HA-HA!!", 50

; ***********************************
; Beginning of level 1 (I guess the easiest is to add this as a Prologue scene)
; ***********************************

  Picture Intro11Palette, Intro11Tiles, Intro11Tilemap
  Text 5,21, "WE GOTTA GET 'EM BACK!!", 50
  Clear 21
  Text 2,21, "LET'S GATECRASH THE GAMESCAPE"
  Text 2,23, "AN' COOK SOME BEASTIN' BACON!", 100
.db INTRO_END

; Intermission scripts

IntermissionsLookup:
.dw Intermission1DarkQueenA
.dw Intermission1DarkQueenB
.dw Intermission1DarkQueenC
.dw Intermission1DarkQueenD
.dw Intermission1TBirdA
.dw Intermission1TBirdB
.dw Intermission1TBirdC
.dw Intermission1TBirdD
.dw Intermission2DarkQueenA
.dw Intermission2DarkQueenB
.dw Intermission2DarkQueenC
.dw Intermission2DarkQueenD
.dw Intermission2TBirdA
.dw Intermission2TBirdB
.dw Intermission2TBirdC
.dw Intermission2TBirdD
.dw Intermission3DarkQueenA
.dw Intermission3DarkQueenB
.dw Intermission3DarkQueenC
.dw Intermission3DarkQueenD
.dw Intermission3TBirdA
.dw Intermission3TBirdB
.dw Intermission3TBirdC
.dw Intermission3TBirdD
.dw Intermission4DarkQueenA
.dw Intermission4DarkQueenB
.dw Intermission4DarkQueenC
.dw Intermission4DarkQueenD
.dw Intermission4TBirdA
.dw Intermission4TBirdB
.dw Intermission4TBirdC
.dw Intermission4TBirdD
.dw Intermission5DarkQueenA
.dw Intermission5DarkQueenB
.dw Intermission5DarkQueenC
.dw Intermission5DarkQueenD
.dw Intermission5TBirdA
.dw Intermission5TBirdB
.dw Intermission5TBirdC
.dw Intermission5TBirdD
.dw Intermission6DarkQueenA
.dw Intermission6DarkQueenB
.dw Intermission6DarkQueenC
.dw Intermission6DarkQueenD
.dw Intermission6TBirdA
.dw Intermission6TBirdB
.dw Intermission6TBirdC
.dw Intermission6TBirdD
.dw Intermission7DarkQueenA
.dw Intermission7DarkQueenB
.dw Intermission7DarkQueenC
.dw Intermission7DarkQueenD
.dw Intermission7TBirdA
.dw Intermission7TBirdB
.dw Intermission7TBirdC
.dw Intermission7TBirdD
.dw Intermission8DarkQueenA
.dw Intermission8DarkQueenB
.dw Intermission8DarkQueenC
.dw Intermission8DarkQueenD
.dw Intermission8TBirdA
.dw Intermission8TBirdB
.dw Intermission8TBirdC
.dw Intermission8TBirdD
.dw Intermission9DarkQueenA
.dw Intermission9DarkQueenB
.dw Intermission9DarkQueenC
.dw Intermission9DarkQueenD
.dw Intermission9TBirdA
.dw Intermission9TBirdB
.dw Intermission9TBirdC
.dw Intermission9TBirdD

Intermission1DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,19, "Y'KNOW BATTLEBARF, THEY SAY", 17
  Text 4,20, "TREES ARE ENVIRONMENTALLY", 17
  Text 3,21, "FRIENDLY. BAD NEWS FOR YOU,", 17
  Text 3,22, "'CUZ OURS DEFINITELY ISN'T,", 17
  Text 5,23, "AND YOU'LL FIND OUT WHY!", 200
  .db INTRO_END  
Intermission1DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 4,19, "MY WASPLINGS WILL SORT YOU", 17
  Text 5,20, "OUT, WART FEATURES, 'CUZ", 17
  Text 5,21, "THEY'LL BE STINGIN', AN'", 17
  Text 8,22, "YOU'LL BE SINGIN'!", 200 
  .db INTRO_END
Intermission1DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 6,19, "DO YOU REALLY THINK A", 17
  Text 3,20, "CLUCKING FOOL AND HIS SLIMY", 17
  Text 3,21, "SNOT SNAFFLERS CAN BEAT US?", 17
  Text 4,22, "PREPARE TO MEET MY SATURN", 17
  Text 12,23, "TOADTRAPS!", 200
  .db INTRO_END
Intermission1DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 4,19, "SO, THE MUTANT RATPACK AND", 17
  Text 6,20, "THAT USELESS STONE PIG", 17
  Text 3,21, "DIDN'T GET YOU?  NEVER MIND,", 17
  Text 5,22, "'CUZ THE REAL CHALLENGE", 17
  Text 3,23, "STARTS HERE, SO COME ON IN!!", 200
  .db INTRO_END
Intermission1TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,18, "THIS IS ONE BIG TREE YOU'RE", 17
  Text 4,19, "FACING NEXT, 'TOADS! ABOUT", 17
  Text 3,20, "A MILE DOWN, AND THE EXIT'S", 17
  Text 9,21, "AT THE BOTTOM!!", 200 
  .db INTRO_END
Intermission1TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 7,18, "WE TAUGHT THAT STONY", 17
  Text 5,19, "SNORTER A LESSON, DIDN'T", 17
  Text 5,20, "WE, GUYS? NOW LET'S LEAP", 17
  Text 6,21, "THROUGH THE LEAVES AND", 17
  Text 8,22, "TACKLE THAT TREE!", 200
  .db INTRO_END
Intermission1TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 5,18, "I'VE LOCATED SOME HOVER", 17
  Text 3,19, "DISCS THAT YOU CAN USE, BUT", 17
  Text 5,20, "I BET MY BEAK THERE'S A", 17
  Text 3,21, "WHOLE 'TOAD-LOAD OF TROUBLE", 17
  Text 4,22, "WAITING DOWN IN THAT TREE!", 200
  .db INTRO_END
Intermission1TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 5,18, "MY SENSORS INDICATE THAT", 17
  Text 4,19, "THIS WHOLE TREE IS HOLLOW,", 17
  Text 6,20, "SO HEAD FOR THE BOTTOM", 17
  Text 7,21, "AND DON'T LOOK DOWN!", 200
.db INTRO_END

Intermission2DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 4,16, "I'M SO SURE THAT I'M GONNA", 17
  Text 4,17, "WIN, WARTBODIES, THAT I'LL", 17
  Text 8,18, "LET YOU ATTEMPT A", 17
  Text 11,19, "BONUS LEVEL!", 200
  .db INTRO_END
Intermission2DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,16, "GRR! I SUPPOSE YOU SNOTSKINS", 17
  Text 3,17, "DESERVE A SHOT AT THIS BONUS", 17
  Text 3,18, "LEVEL FOR GETTIN' THIS FAR.", 17
  Text 5,19, "BUT ONCE IT'S OVER, I'M", 17
  Text 4,20, "GONNA FINISH YOU FOR GOOD!", 200
  .db INTRO_END
Intermission2DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,16, "YOU'D BETTER COLLECT ENOUGH", 17
  Text 6,17, "PINS TO GAIN AN EXTRA", 17
  Text 3,18, "LIFE HERE, SWAMPSUCKERS,'CUZ", 17
  Text 3,19, "YOU'LL SURELY BE NEEDIN' IT!", 200
  .db INTRO_END
Intermission2DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 4,16, "YOU CAN'T SAY THAT I DON'T", 17
  Text 3,17, "PLAY FAIR, PENCIL NECK. I'LL", 17
  Text 3,18, "LET THE BATTLEWIMPS PLAY MY", 17
  Text 3,19, "NICE EASY BONUS LEVEL BEFORE", 17
  Text 7,20, "I GET REALLY NASTY!!", 200
  .db INTRO_END
Intermission2TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 5,16, "SNATCH THE PINS, 'TOADS!", 17
  Text 5,17, "COLLECT ENOUGH AN' WE'RE", 17
  Text 4,18, "TALKIN' EXTRA LIVES HERE!!", 200
  .db INTRO_END
Intermission2TBirdB: 
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,16, "TAKE A REST FROM THE ACTION,", 17
  Text 5,17, "GUYS! TRY OUT THE BONUS", 17
  Text 4,18, "LEVEL, AND IF YOU COLLECT", 17
  Text 4,19, "ENOUGH PINS, YOU'LL WIN AN", 17
  Text 8,20, "EXTRA LIFE OR TWO!", 200
  .db INTRO_END
Intermission2TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,17, "THE MORE THE MERRIER,'TOADS!", 17
  Text 3,18, "LET'S CHECK OUT THAT CHECKER", 17
  Text 6,19, "AND WIN US SOME LIVES!", 200
  .db INTRO_END
Intermission2TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 5,14, "C'MON 'TOADS, IT'S BONUS", 17
  Text 5,16, "TIME! COLLECT THE WHITES", 17
  Text 7,18, "TO WIN A LIFE, AVOID", 17
  Text 8,20, "THE SKULLS AS THEY", 17
  Text 11,22, "MEAN STRIFE!", 200
  .db INTRO_END

Intermission3DarkQueenA: 
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,16, "THIS IS WHERE THE ACTION", 17
  Text 5,17, "GETS FAST AN' YOUR SLIME", 17
  Text 7,18, "BACKS COME LAST, YOU", 17
  Text 10,19, "FLAPPIN' FOOL!", 200
  .db INTRO_END
Intermission3DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,16, "HAVE YOU GOT THE STOMACH", 17
  Text 6,17, "FOR SPEED? I SINCERELY", 17
  Text 6,18, "HOPE NOT, YOU HOPPING", 17
  Text 12,19, "HALF-WITS!", 200
  .db INTRO_END
Intermission3DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 7,16, "YOU MIGHT THINK YOUR", 17
  Text 5,17, "BATTLENERDS ARE WINNING,", 17
  Text 3,18, "HOOKBILL, BUT LET ME ASSURE", 17
  Text 7,19, "YOU, I HAVEN'T EVEN", 17
  Text 9,20, "WARMED UP YET!!", 200
  .db INTRO_END
Intermission3DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,16, "I HOPE YOU ENJOYED YOURSELF", 17
  Text 3,17, "BACK THERE, 'CUZ I KNOW THAT", 17
  Text 6,18, "SOMETHING REALLY NASTY", 17
  Text 6,19, "IS GONNA HAPPEN TO YOU", 17
  Text 9,20, "ON THOSE BIKES!!", 200
  .db INTRO_END
Intermission3TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 6,16, "BE CAREFUL 'TOADS, I'M", 17
  Text 7,17, "PICKIN' UP IMAGES OF", 17
  Text 4,18, "WHIZZIN' WALLS AND RODENT", 17
  Text 4,19, "ROADHOGS IN THAT TUNNEL!!", 200 
  .db INTRO_END
Intermission3TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,17, "YOU'RE DOIN' GREAT, 'TOADS!", 17
  Text 3,18, "LET'S HEAD FOR THE BIKES AND", 17
  Text 6,19, "HIT THAT TUNNEL-HARD!", 200
  .db INTRO_END
Intermission3TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 4,17, "REMEMBER, 'TOADS, IN HERE", 17
  Text 5,18, "IT'S THE SURVIVAL OF THE", 17
  Text 13,19, "FASTEST!", 200
  .db INTRO_END
Intermission3TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 6,23, "IT'S THE NEED-TO-SPEED", 17
  Text 3,23, "ONCE AGAIN 'TOADS! PUT YOUR", 17
  Text 4,23, "FOOT TO THE FLOOR AND HANG", 17
  Text 12,23, "ON TIGHT!", 200
  .db INTRO_END

Intermission4DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "'TOAD VERSUS SNAKE, EH?", 17
  Text 5,23, "THEY DON'T HAVE A CHANCE", 17
  Text 2,23, "IN THIS ONE, MR. BEAKY FREAK!", 200
  .db INTRO_END
Intermission4DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 6,23, "THE BIKE LEVEL'S OVER,", 17
  Text 6,23, "MANGROVE LURKERS, SO I", 17
  Text 3,23, "SUGGEST YOU RUN HOME TO THAT", 17
  Text 6,23, "FEATHERED FREAK WHILE", 17
  Text 10,23, "YOU STILL CAN!", 200
  .db INTRO_END
Intermission4DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "THIS IS IT, YOU GOBBLIN'", 17
  Text 3,23, "GEEK, YOUR MISERABLE BOTTLED", 17
  Text 6,23, "NERDS ARE GONNA PERISH", 17
  Text 9,23, "IN MY SNAKE PIT!", 200
  .db INTRO_END
Intermission4DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "PREPARE TO MEET KARNATH-KING", 17
  Text 3,23, "OF THE SNAKES!! YOU'LL NEVER", 17
  Text 3,23, "ESCAPE FROM HIS LETHAL LAIR,", 17
  Text 7,23, "NEVER! HA-HA-HA-HA!", 200
  .db INTRO_END
Intermission4TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 4,23, "MY INFO REVEALS THAT THESE", 17
  Text 5,23, "SNAKES DON'T BITE, SO IT", 17
  Text 4,23, "SHOULD BE A PIECE OF CAKE!", 200
  .db INTRO_END
Intermission4TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "IT LOOKS LIKE IT'S TIME FOR", 17
  Text 4,23, "SOME SKILLFUL SCALING FROM", 17
  Text 9,23, "THE BATTLETOADS!", 200
  .db INTRO_END
Intermission4TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 5,23, "SLITHER ON UP TO THE TOP", 17
  Text 3,23, "OF THESE SNAKE PITS, 'TOADS!", 200
  .db INTRO_END
Intermission4TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 6,23, "THE EXIT'S AT THE TOP", 17
  Text 5,23, "'TOADS, SO GRAB A SNAKE", 17
  Text 8,23, "AND HOLD ON TIGHT!", 200
  .db INTRO_END

Intermission5DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 6,23, "SO, YOU MADE IT TO THE", 17
  Text 3,23, "SECOND BONUS LEVEL. MAKE THE", 17
  Text 6,23, "MOST OF IT, 'CUZ IT'LL", 17
  Text 10,23, "BE YOUR LAST!!", 200
  .db INTRO_END
Intermission5DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "TOO MUCH FOR YOU, HUH BEAKY?", 17
  Text 5,23, "I'LL GIVE YOUR PATHETIC", 17
  Text 3,23, "PRATTLETOADS ONE MORE CHANCE", 17
  Text 7,23, "AT MY BONUS LEVEL...", 200
  .db INTRO_END
Intermission5DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "I'M FEELING SO SORRY FOR YOU", 17
  Text 3,23, "IN YOUR PITIFUL ATTEMPTS TO", 17
  Text 4,23, "BEAT ME, THAT I'LL LET YOU", 17
  Text 5,23, "TRY ANOTHER BONUS LEVEL!", 200
  .db INTRO_END
Intermission5DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "YOUR LAST CHANCE TO GAIN", 17
  Text 3,23, "SOME LIVES, SWAMP FEATURES,", 17
  Text 4,23, "'CUZ IT'LL SOON BE THE END", 17
  Text 4,23, "OF THE ROAD FOR YOU IN THE", 17
  Text 11,23, "DARK TOWER!", 200
  .db INTRO_END
Intermission5TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 8,23, "WATCH OUT, THERE'S", 17
  Text 5,23, "MORE BEASTLY BAD ONES TO", 17
  Text 3,23, "AVOID HERE! LET'S MOTIVATE!!", 200
  .db INTRO_END
Intermission5TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "THE QUEEN'S RUNNING SCARED!", 17
  Text 4,23, "LET'S TRY FOR SOME LIVES,", 17
  Text 5,23, "THEN GO GET HER, 'TOADS!", 200
  .db INTRO_END
Intermission5TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "GRAB AS MANY DOMINOES AS YOU", 17
  Text 3,23, "CAN! MY SCANNERS REVEAL THAT", 17
  Text 4,23, "VOLKMIRE'S TOWER IS NEAR!!", 200
  .db INTRO_END
Intermission5TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "BACK ON THE CHECKERS,'TOADS!", 17
  Text 3,23, "THERE'S DOMINOES TO COLLECT", 17
  Text 5,23, "AND EXTRA LIVES TO GET!!", 200
  .db INTRO_END

Intermission6DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "I CAN'T BELIEVE YOU ESCAPED", 17
  Text 3,23, "FROM KARNATH! YOU'RE PRETTY", 17
  Text 6,23, "GOOD, FROGGIES, BUT IT", 17
  Text 9,23, "AIN'T OVER YET!", 200
  .db INTRO_END
Intermission6DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 6,23, "RIDE MY RACKETY ROLLER", 17
  Text 5,23, "COASTER IF YOU DARE! BUT", 17
  Text 5,23, "WATCH OUT FOR FUZZ, 'CUZ", 17
  Text 10,23, "FUZZ CAN BUZZ!", 200
  .db INTRO_END
Intermission6DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "MMM, I WONDER WHAT THIN,", 17
  Text 4,23, "SUCCULENT SLICES OF GREEN", 17
  Text 3,23, "'TOAD TASTE LIKE? WELL, I'M", 17
  Text 3,23, "SURE I'LL FIND OUT SHORTLY!!", 200
  .db INTRO_END
Intermission6DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "UP AN' DOWN N' ROUND YOU GO,", 17
  Text 5,23, "YOU'D BEST BE FAST, 'CUZ", 17
  Text 9,23, "FUZZ AIN'T SLOW!", 200
  .db INTRO_END
Intermission6TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "POWER UP THOSE JET TRACKTORS", 17
  Text 7,23, "'TOADS, AND HIT THEM", 17
  Text 10,23, "CORNERS FAST!", 200
  .db INTRO_END
Intermission6TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "DON'T LET THAT MOBILE MINCER", 17
  Text 4,23, "NEAR YOU, 'TOADS. MICHIKO", 17
  Text 8,23, "AND ZITZ ARE STILL", 17
  Text 9,23, "COUNTING ON YOU!", 200
  .db INTRO_END
Intermission6TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "LISTEN, 'TOADS, IT'S NOT THE", 17
  Text 5,23, "TAKING PART THAT COUNTS,", 17
  Text 8,23, "IT'S THE WINNING!", 200
  .db INTRO_END
Intermission6TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "HIT THE TRACK AND DON'T LOOK", 17
  Text 4,23, "BACK, 'TOADS! YOU'VE GOT A", 17
  Text 5,23, "CRAZY RIDE AHEAD OF YOU!", 200
  .db INTRO_END

Intermission7DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "FEELING WEARY YET, SWAMP", 17
  Text 3,23, "DWELLERS? I HOPE SO,'CUZ I'M", 17
  Text 3,23, "SENDIN' IN SCUZZ TO BLOW UP", 17
  Text 5,23, "THE TOWER WITH YOU STILL", 17
  Text 11,23, "INSIDE IT!", 200
  .db INTRO_END
Intermission7DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "TELL THEM TO QUIT WHILE", 17
  Text 5,23, "THEY'RE AHEAD, FEATHERY", 17
  Text 3,23, "FOOL, 'CUZ IT'S CURTAINS FOR", 17
  Text 5,23, "THE FROGS IF THEY ENTER", 17
  Text 9,23, "THE DARK TOWER!", 200
  .db INTRO_END
Intermission7DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "YOU CROAKING CLOWNS MUST", 17
  Text 4,23, "HAVE TAKEN A SHORT CUT TO", 17
  Text 4,23, "GET HERE! I'M WAITIN' FOR", 17
  Text 6,23, "YOU AT THE BOTTOM, IF", 17
  Text 7,23, "YOU GET THAT FAR...", 200
  .db INTRO_END
Intermission7DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "I'M IMPRESSED, PROFESSOR", 17
  Text 4,23, "NERD, I DIDN'T THINK YOUR", 17
  Text 4,23, "BATTLEFOOLS WOULD GET THIS", 17
  Text 4,23, "FAR! UNFORTUNATELY, THEIR", 17
  Text 8,23, "MISSION ENDS HERE!", 200
  .db INTRO_END
Intermission7TBirdA: 
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 5,23, "C'MON GUYS, THE END'S IN", 17
  Text 5,23, "SIGHT! BEAT THE RAT TWO", 17
  Text 4,23, "TIMES, AND HE'LL LEAD YOU", 17
  Text 8,23, "TO THE DARK QUEEN!", 200
  .db INTRO_END
Intermission7TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 6,23, "THE QUEEN'S PLACED TWO", 17
  Text 3,23, "BOMBS IN THE TOWER! YOU MUST", 17
  Text 4,23, "DEFUSE THEM ALL, OTHERWISE", 17
  Text 9,23, "YOU'RE HISTORY!!", 200
  .db INTRO_END
Intermission7TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "WE'RE ALMOST THERE, 'TOADS!", 17
  Text 4,23, "PUT ON YOUR RUNNING SHOES,", 17
  Text 7,23, "AND LET'S DROP IN ON", 17
  Text 9,23, "THE DARK QUEEN!!", 200
  .db INTRO_END
Intermission7TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 4,23, "YOU'RE IN THE QUEEN'S HOME", 17
  Text 4,23, "TERRITORY NOW,'TOADS! JUST", 17
  Text 4,23, "TWO RAT RACES, AND YOU GET", 17
  Text 3,23, "TO 'TOADSLAM HER REAL GOOD!!", 200
  .db INTRO_END

Intermission8DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "WELL, WELL, WELL, YOU FROGS", 17
  Text 5,23, "MUST THINK YOU'RE REALLY", 17
  Text 5,23, "SOMETHING. WELL, YOU'VE", 17
  Text 3,23, "FOUGHT THE REST, NOW YOU'RE", 17
  Text 5,23, "GONNA LOSE TO THE BEST!", 200
  .db INTRO_END
Intermission8DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "I HOPE YOU'RE STILL WATCHING", 17
  Text 4,23, "THIS, BIRD BRAIN, 'CUZ I'M", 17
  Text 3,23, "GONNA FINISH THE BATTLETOADS", 17
  Text 11,23, "OFF MYSELF!", 200
  .db INTRO_END
Intermission8DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 4,23, "JUST YOU AND ME LEFT NOW,", 17
  Text 3,23, "'TOADIES! THERE'S NO ROUNDS,", 17
  Text 3,23, "NO FALLS, NO RULES, AN' WHEN", 17
  Text 5,23, "I'VE FINISHED - NO YOU!", 200
  .db INTRO_END
Intermission8DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "PAH! IF YOU WANT A JOB DONE", 17
  Text 5,23, "PROPERLY, NEVER TRUST A", 17
  Text 4,23, "USELESS BUNCH OF PIGS AND", 17
  Text 6,23, "RATS! C'MON 'TOADIES,", 17
  Text 11,23, "LET'S FIGHT!", 200
  .db INTRO_END
Intermission8TBirdA: 
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "IT'S SHOWDOWN TIME, 'TOADS!!", 17
  Text 4,23, "JUST THE DARK QUEEN STANDS", 17
  Text 3,23, "BETWEEN YOU AND OUR BUDDIES!", 200
  .db INTRO_END
Intermission8TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "SHOW THAT DARK QUEEN WHO YOU", 17
  Text 5,23, "ARE! YOU AIN'T NO FEEBLE", 17
  Text 9,23, "FROGS-YOU'RE THE", 17
  Text 11,23, "BATTLETOADS!", 200
  .db INTRO_END
Intermission8TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "WAYDIGO 'TOADS! THE QUEEN'S", 17
  Text 4,23, "ARMY IS BEATEN, AND SHE'S", 17
  Text 3,23, "SHAKIN' IN FEAR! GO GET HER!", 200
  .db INTRO_END
Intermission8TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 3,23, "I KNEW YOU'D MAKE IT 'TOADS!", 17
  Text 4,23, "BOY, I WOULDN'T WANT TO BE", 17
  Text 4,23, "IN THE QUEEN'S SHOES NOW,", 17
  Text 9,23, "SHE'S IN FOR ONE", 17
  Text 7,23, "HUMUNGOUS SURPRISE!!", 200
  .db INTRO_END

Intermission9DarkQueenA: 
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 7,23, "NOOOO, THIS CAN'T BE ", 17
  Text 4,23, "HAPPENING!! YOU CAN'T BEAT ", 17
  Text 3,23, "ME, I'M THE DARK QUEEN!! I'M ", 17
  Text 4,23, "MEAN, I'M NASTY AND I WANT ", 17
  Text 3,23, "TO WIN! GRR, I HATE 'TOADS!", 200
  .db INTRO_END
Intermission9DarkQueenB: 
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 3,23, "IT'S JUST NOT FAIR, I'M FED ", 17
  Text 3,23, "UP BEING BEATEN BY A SCRAWNY ", 17
  Text 5,23, "BEAK AND HIS SLIMY SWAMP ", 17
  Text 3,23, "SWIMMERS!! I'LL GET YOU NEXT ", 17
  Text 8,23, "TIME, ALL OF YOU!!", 200
  .db INTRO_END
Intermission9DarkQueenC: 
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 4,23, "UH-YOU WOULDN'T HIT A LADY ", 17
  Text 3,23, "WHILE SHE'S DOWN, WOULD YOU? ", 17
  Text 4,23, "GOOD, 'CUZ THIS GIVES ME A", 17
  Text 3,23, "CHANCE TO ESCAPE! FAREWELL,", 17
  Text 9,23, "FOUNTAIN FREAKS!", 200
  .db INTRO_END
Intermission9DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  Text 5,23, "WHAT STRENGTH! BUT DON'T", 17
  Text 6,23, "FORGET, THERE ARE MANY", 17
  Text 7,23, "TYRANTS LIKE ME ALL", 17
  Text 9,23, "OVER THE WORLD!!", 200
  .db INTRO_END
Intermission9TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 4,23, "COSMICALLY COOL!! THE MAD,", 17
  Text 3,23, "BAD N'CRAZY 'TOADS SAVE THE", 17
  Text 4,23, "DAY, AND THE DARK QUEEN IS", 17
  Text 6,23, "NOW THE DARK HAS-BEEN!", 17
  Text 6,23, "HEH-HEH-CACKLE-CACKLE!", 200
  .db INTRO_END
Intermission9TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 4,23, "WOOOOO! I LIKE IT, 'TOADS!", 17
  Text 5,23, "WE SURE TAUGHT THAT DARK", 17
  Text 4,23, "QUEEN NOT TO MESS WITH THE", 17
  Text 6,23, "AWESOME T.BIRD AND HIS", 17
  Text 11,23, "BATTLETOADS!", 200
  .db INTRO_END
Intermission9TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 6,23, "TOUCHDOWN! THE BATTLIN'", 17
  Text 5,23, "BATTLETOADS COME THROUGH", 17
  Text 5,23, "IN THE LAST QUARTER AND", 17
  Text 5,23, "THE GOOD GUYS WIN AGAIN!", 200
  .db INTRO_END
Intermission9TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  Text 4,23, "WE'LL HAVE TO WRITE A BOOK", 17
  Text 4,23, "AND MAKE A MOVIE ABOUT YOU", 17
  Text 4,23, "GUYS, IT'LL MAKE ME... ER,", 17
  Text 10,23, "US A FORTUNE!", 200
  .db INTRO_END

/************************************
Ending Part 1
************************************/

Ending:
  Text 4,23, "ER....", 50
  Clear 23
  Text 4,23, "HOLD THE PARTY, 'TOADS....", 50
  Clear 23
  Text 4,23, "I'VE JUST PICKED UP SILAS"
  Text 4,23, "VOLKMIRE ON MY SCANNERS,"
  Text 4,23, "TRYING TO ESCAPE USING"
  Text 4,23, "A TELEPORTER!!", 200
  Clear 23
  Text 4,23, "HOLD ON, I'LL LOCATE HIS"
  Text 4,23, "TARGET DESTINATION....", 100
  Clear 23
  Text 4,23, "FOUND IT! TWEAK MY BEAK,"
  Text 4,23, "HE'S GONNA APPEAR ABOVE THE"
  Text 4,23, "PSICONE BUILDING ANY"
  Text 4,23, "MINUTE NOW!!", 4
  Clear 23
  Text 4,23, "YOU'D BETTER GET BACK HERE"
  Text 4,23, "PRONTO, 'TOADS, YOU'RE OUR"
  Text 4,23, "ONLY HOPE OF CATCHING HIM!", 150
  Clear 23
;Scene 1:
  Text 4,23, "WE'RE BACK ON THE SCENE AN'"
  Text 4,23, "RARIN' TO GO, PROF!"
;Scene 2:
  Text 4,23, "THERE HE IS, GUYS! QUICK,"
  Text 4,23, "INTO THE BATTLECOPTER!"
;Scene 3:
  Text 4,23, "PUT YOUR FOOT DOWN PIMPLE,"
  Text 4,23, "HE'S GETTIN' AWAY!"
;Scene 4:
  Text 4,23, "WE'VE CAUGHT UP! HURRY RASH,"
  Text 4,23, "FIRE THE MISSILES, WE WON'T"
  Text 4,23, "BE ABLE TO STAY WITH HIM"
  Text 4,23, "MUCH LONGER!"

/*************************************
Ending Part 2 (Bad Ending) (This will probably be left unused)
*************************************/

;Text 1:
  Text 4,23, "VOLKMIRE BREATHES A SIGH OF"
  Text 4,23, "RELIEF AS HIS SPACESHIP"
  Text 4,23, "ACCELERATES OUT OF THE"
  Text 4,23, "'TOADS MISSILE RANGE, KNOWING"
  Text 4,23, "THAT HE LIVES TO FIGHT"
  Text 4,23, "ANOTHER DAY."
;Text 2:
  Text 4,23, "DEJECTED, THE 'TOADS RETURN"
  Text 4,23, "TO PSICONE, THEIR ONLY"
  Text 4,23, "CONSOLATION BEING THAT HIS"
  Text 4,23, "PARTNER IN CRIME, THE DARK"
  Text 4,23, "QUEEN, WON'T BE CAUSING"
  Text 4,23, "ANY MORE TROUBLE."
;Text 3:
  Text 4,23, "BUT WITH VOLKMIRE FREE, AND"
  Text 4,23, "THE QUEEN WANTING REVENGE,"
  Text 4,23, "IT WILL ONLY BE A MATTER OF"
  Text 4,23, "TIME BEFORE THE DIRE"
  Text 4,23, "DUO TRY AGAIN..."
;Text 4:
  Text 4,23, "THE END?"

/*************************************
Ending Part 2 (Good Ending)
*************************************/
;Scene 5:
  Text 4,23, "ARRGGGHHHHHHH!"
;Text 1:
  Text 4,23, "AND SO, THE SINISTER SILAS"
  Text 4,23, "VOLKMIRE IS ONCE AGAIN"
  Text 4,23, "THWARTED BY THE VICTORIOUS"
  Text 4,23, "BATTLETOADS."
;Text 2:
  Text 4,23, "VOLKMIRE'S BURNT OUT SHIP IS"
  Text 4,23, "RETRIEVED FROM THE HIMALAYAS,"
  Text 4,23, "BUT OF HIS BODY, THERE IS"
  Text 4,23, "NO TRACE...."
;Text 3:
  Text 4,23, "WHO KNOWS WHAT HAPPENED TO"
  Text 4,23, "HIM, BUT YOU CAN BE SURE OF"
  Text 4,23, "ONE THING, BOTH HE AND THE"
  Text 4,23, "DARK QUEEN WILL REMEMBER THE"
  Text 4,23, "DAY THEY TOOK ON THE"
  Text 4,23, "BATTLETOADS-AND LOST!!"
;Text 4:
  Text 4,23, "THE END."
/*
*************************************
Continue (In the Master System version these messages appear before continuing, not after continuing like in the SNES)
*************************************
*/
;T-Bird A:
  Text 4,23, "THINGS ARE LOOKING GOOD"
  Text 4,23, "'TOADS, GOOD FOR THE DARK"
  Text 4,23, "QUEEN IF THAT'S YOUR BEST"
  Text 4,23, "EFFORT! GET A GRIP GUYS -"
  Text 4,23, "LET'S MOTIVATE!"
;T-Bird B:
  Text 4,23, "WHADYA MEAN, THE ACTION GOT"
  Text 4,23, "TOO THICK HERE? I'LL GIVE"
  Text 4,23, "YOU A THICK EAR IF YOU DON'T"
  Text 4,23, "RESCUE MICHIKO AND ZITZ!"
;T-Bird C:
  Text 4,23, "DID THE NASTY QUEEN NOT PLAY"
  Text 4,23, "FAIR? AH, SHAME... NOW"
  Text 4,23, "GET BACK IN THERE AND"
  Text 4,23, "ROAST SOME PORK!"
;T-Bird D:
  Text 4,23, "I CAN'T BELIEVE WHAT'S"
  Text 4,23, "HAPPENING, EVEN I COULD'VE"
  Text 4,23, "BEATEN THAT! C'MON 'TOADS,"
  Text 4,23, "GET MAD, BAD 'N' CRAZY!!"

/*************************************
Game Over (No Game Over messages in the Master System version, don't know if these could be implemented)
*************************************/

;Dark Queen A:
  Text 4,23, "YOU'RE NO MATCH FOR ME-I'M"
  Text 4,23, "THE STRONGEST WOMAN IN"
  Text 4,23, "THE UNIVERSE!!"
;Dark Queen B:
  Text 4,23, "YOU'VE GOT A LOT TO LEARN,"
  Text 4,23, "BEFORE YOU BEAT ME. TRY"
  Text 4,23, "AGAIN, 'TOADIES, HA-HA-HA-HA!"
;Dark Queen C:
  Text 4,23, "IS THAT THE BEST YOUR SWAMP"
  Text 4,23, "CRAWLERS CAN DO, TURKEY"
  Text 4,23, "BRAINS? I FEEL SORRY FOR"
  Text 4,23, "YOU, I REALLY DO!!"
;Dark Queen D:
  Text 4,23, "AND ANOTHER 'TOAD BITES THE"
  Text 4,23, "DUST! C'MON BEAKY, TAKE A"
  Text 4,23, "PICTURE OF THE BEATEN"
  Text 4,23, "BATTLEFAILURES FOR YOUR"
  Text 4,23, "FREAKY FAMILY ALBUM!"
  Text 4,23, "HA-HA-HA-HA!"
;T-Bird A:
  Text 4,23, "OUR LUCK'S FINALLY RUN OUT"
  Text 4,23, "'TOADS, AND WE'RE OUT OF THE"
  Text 4,23, "GAME. HEAD BACK TO BASE AND"
  Text 4,23, "WE'LL PLAN A REMATCH...."
;T-Bird B:
  Text 4,23, "IT'S ALL OVER, I NEVER"
  Text 4,23, "THOUGHT I'D SEE THE BATTLE"
  Text 4,23, "'TOADS BEATEN. IT'S A SAD"
  Text 4,23, "DAY FOR ALL 'TOADKIND..."
;T-Bird C:
  Text 4,23, "NO MORE CHANCES,'TOADS."
  Text 4,23, "TIME'S UP AND WE'VE LOST BY"
  Text 4,23, "A WASHOUT. WE'LL HAVE TO"
  Text 4,23, "REGROUP AND TRY AGAIN..."
;T-Bird D:
  Text 4,23, "THAT'S IT, THE GAME'S OVER"
  Text 4,23, "FOR US, FINITO, END OF THE"
  Text 4,23, "LINE...WE'D BETTER RETURN"
  Text 4,23, "TO PSICONE AND WORK OUT"
  Text 4,23, "A NEW PLAN."

/*
converted in the uk.

by

syrox developments ltd.



programmer

dominic wood



graphic artist

jock green



music and sound

krisalis






virgin interactive

entertainment (europe) ltd.



product producer

matthew spall





(new credits of the hack)
*/
.endb
  
  
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
DarkQueenPalette:
.incbin "images\Dark Queen.png.palette.bin"
TBirdPalette:
.incbin "images\T-Bird.png.palette.bin"
.ends

; Compressed data needs to be in slot 1, but we don't care what bank.
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
.section "Dark Queen Intermissions" superfree
DarkQueenTiles:
.incbin "images\Dark Queen.png.tiles.zx7"
DarkQueenTilemap:
.incbin "images\Dark Queen.png.tilemap.zx7"
.ends
.section "T-Bird Intermissions" superfree
TBirdTiles:
.incbin "images\T-Bird.png.tiles.zx7"
TBirdTilemap:
.incbin "images\T-Bird.png.tilemap.zx7"
.ends

.bank 0 slot 0
.orga $3b8e
.section "Intermission replacement" force
  ld a,(PAGING_REGISTER_2)
  push af
    ld ix,$2000
    call LoadFont
    ld hl, DATA_FontPalette
    ld (RAM_SpritePalettePointer), hl
    ld a,:Intermission
    ld (PAGING_REGISTER_2),a
    call Intermission
  pop af
  ld (PAGING_REGISTER_2),a
  ret
.ends
