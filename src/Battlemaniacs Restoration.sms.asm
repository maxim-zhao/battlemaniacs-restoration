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

.block "Scripts"

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

; Interstitial scripts

Interstitial1:
.dw Interstitial1DarkQueenA
.dw Interstitial1DarkQueenB
.dw Interstitial1DarkQueenC
.dw Interstitial1DarkQueenD
.dw Interstitial1TBirdA
.dw Interstitial1TBirdB
.dw Interstitial1TBirdC
.dw Interstitial1TBirdD
Interstitial1DarkQueenA:
  Text 4,19, "Y'KNOW BATTLEBARF, THEY SAY"
  Text 4,20, "TREES ARE ENVIRONMENTALLY"
  Text 4,21, "FRIENDLY. BAD NEWS FOR YOU,"
  Text 4,22, "'CUZ OURS DEFINITELY ISN'T,"
  Text 4,23, "AND YOU'LL FIND OUT WHY!"
Interstitial1DarkQueenB:
  Text 4,20, "MY WASPLINGS WILL SORT YOU"
  Text 4,21, "OUT, WART FEATURES, 'CUZ"
  Text 4,22, "THEY'LL BE STINGIN', AN'"
  Text 4,23, "YOU'LL BE SINGIN'!"
Interstitial1DarkQueenC:
  Text 4,19, "DO YOU REALLY THINK A"
  Text 4,20, "CLUCKING FOOL AND HIS SLIMY"
  Text 4,21, "SNOT SNAFFLERS CAN BEAT US?"
  Text 4,22, "PREPARE TO MEET MY SATURN"
  Text 4,23, "TOADTRAPS!"
Interstitial1DarkQueenD:
  Text 4,19, "SO, THE MUTANT RATPACK AND"
  Text 4,20, "THAT USELESS STONE PIG"
  Text 4,21, "DIDN'T GET YOU?  NEVER MIND,"
  Text 4,22, "'CUZ THE REAL CHALLENGE"
  Text 4,23, "STARTS HERE, SO COME ON IN!!"
Interstitial1TBirdA:
  Text 4,23, "THIS IS ONE BIG TREE YOU'RE"
  Text 4,23, "FACING NEXT, 'TOADS! ABOUT"
  Text 4,23, "A MILE DOWN, AND THE EXIT'S"
  Text 4,23, "AT THE BOTTOM!!"
Interstitial1TBirdB:
  Text 4,23, "WE TAUGHT THAT STONY"
  Text 4,23, "SNORTER A LESSON, DIDN'T"
  Text 4,23, "WE, GUYS? NOW LET'S LEAP"
  Text 4,23, "THROUGH THE LEAVES AND"
  Text 4,23, "TACKLE THAT TREE!"
Interstitial1TBirdC:
  Text 4,23, "I'VE LOCATED SOME HOVER"
  Text 4,23, "DISCS THAT YOU CAN USE, BUT"
  Text 4,23, "I BET MY BEAK THERE'S A"
  Text 4,23, "WHOLE 'TOAD-LOAD OF TROUBLE"
  Text 4,23, "WAITING DOWN IN THAT TREE!"
Interstitial1TBirdD:
  Text 4,23, "MY SENSORS INDICATE THAT"
  Text 4,23, "THIS WHOLE TREE IS HOLLOW,"
  Text 4,23, "SO HEAD FOR THE BOTTOM"
  Text 4,23, "AND DON'T LOOK DOWN!"

Interstitial2:
.dw Interstitial2DarkQueenA
.dw Interstitial2DarkQueenB
.dw Interstitial2DarkQueenC
.dw Interstitial2DarkQueenD
.dw Interstitial2TBirdA
.dw Interstitial2TBirdB
.dw Interstitial2TBirdC
.dw Interstitial2TBirdD

Interstitial2DarkQueenA:
  Text 4,23, "I'M SO SURE THAT I'M GONNA"
  Text 4,23, "WIN, WARTBODIES, THAT I'LL"
  Text 4,23, "LET YOU ATTEMPT A"
  Text 4,23, "BONUS LEVEL!"
Interstitial2DarkQueenB:
  Text 4,23, "GRR! I SUPPOSE YOU SNOTSKINS"
  Text 4,23, "DESERVE A SHOT AT THIS BONUS"
  Text 4,23, "LEVEL FOR GETTIN' THIS FAR."
  Text 4,23, "BUT ONCE IT'S OVER, I'M"
  Text 4,23, "GONNA FINISH YOU FOR GOOD!"
Interstitial2DarkQueenC:
  Text 4,23, "YOU'D BETTER COLLECT ENOUGH"
  Text 4,23, "PINS TO GAIN AN EXTRA"
  Text 4,23, "LIFE HERE, SWAMPSUCKERS,'CUZ"
  Text 4,23, "YOU'LL SURELY BE NEEDIN' IT!"
Interstitial2DarkQueenD:
  Text 4,23, "YOU CAN'T SAY THAT I DON'T"
  Text 4,23, "PLAY FAIR, PENCIL NECK. I'LL"
  Text 4,23, "LET THE BATTLEWIMPS PLAY MY"
  Text 4,23, "NICE EASY BONUS LEVEL BEFORE"
  Text 4,23, "I GET REALLY NASTY!!"
Interstitial2TBirdA:
  Text 4,23, "SNATCH THE PINS, 'TOADS!"
  Text 4,23, "COLLECT ENOUGH AN' WE'RE"
  Text 4,23, "TALKIN' EXTRA LIVES HERE!!"
Interstitial2TBirdB: 
  Text 4,19, "TAKE A REST FROM THE ACTION,"
  Text 4,20, "GUYS! TRY OUT THE BONUS"
  Text 4,21, "LEVEL, AND IF YOU COLLECT"
  Text 4,22, "ENOUGH PINS, YOU'LL WIN AN"
  Text 4,23, "EXTRA LIFE OR TWO!"
Interstitial2TBirdC:
  Text 4,19, "THE MORE THE MERRIER,'TOADS!"
  Text 4,21, "LET'S CHECK OUT THAT CHECKER"
  Text 4,23, "AND WIN US SOME LIVES!"
Interstitial2TBirdD:
  Text 4,19, "C'MON 'TOADS, IT'S BONUS"
  Text 4,20, "TIME! COLLECT THE WHITES"
  Text 4,21, "TO WIN A LIFE, AVOID"
  Text 4,22, "THE SKULLS AS THEY"
  Text 4,23, "MEAN STRIFE!"

Interstitial3:
.dw Interstitial3DarkQueenA
.dw Interstitial3DarkQueenB
.dw Interstitial3DarkQueenC
.dw Interstitial3DarkQueenD
.dw Interstitial3TBirdA
.dw Interstitial3TBirdB
.dw Interstitial3TBirdC
.dw Interstitial3TBirdD

Interstitial3DarkQueenA: 
  Text 4,23, "THIS IS WHERE THE ACTION"
  Text 4,23, "GETS FAST AN' YOUR SLIME"
  Text 4,23, "BACKS COME LAST, YOU"
  Text 4,23, "FLAPPIN' FOOL!"

Interstitial3DarkQueenB:
  Text 4,23, "HAVE YOU GOT THE STOMACH"
  Text 4,23, "FOR SPEED? I SINCERELY"
  Text 4,23, "HOPE NOT, YOU HOPPING"
  Text 4,23, "HALF-WITS!"

Interstitial3DarkQueenC:
  Text 4,23, "YOU MIGHT THINK YOUR"
  Text 4,23, "BATTLENERDS ARE WINNING,"
  Text 4,23, "HOOKBILL, BUT LET ME ASSURE"
  Text 4,23, "YOU, I HAVEN'T EVEN"
  Text 4,23, "WARMED UP YET!!"

Interstitial3DarkQueenD:
  Text 4,23, "I HOPE YOU ENJOYED YOURSELF"
  Text 4,23, "BACK THERE, 'CUZ I KNOW THAT"
  Text 4,23, "SOMETHING REALLY NASTY"
  Text 4,23, "IS GONNA HAPPEN TO YOU"
  Text 4,23, "ON THOSE BIKES!!"

Interstitial3TBirdA:
  Text 4,23, "BE CAREFUL 'TOADS, I'M"
  Text 4,23, "PICKIN' UP IMAGES OF"
  Text 4,23, "WHIZZIN' WALLS AND RODENT"
  Text 4,23, "ROADHOGS IN THAT TUNNEL!!"

Interstitial3TBirdB:
  Text 4,23, "YOU'RE DOIN' GREAT, 'TOADS!"
  Text 4,23, "LET'S HEAD FOR THE BIKES AND"
  Text 4,23, "HIT THAT TUNNEL-HARD!"

Interstitial3TBirdC:
  Text 4,23, "REMEMBER, 'TOADS, IN HERE"
  Text 4,23, "IT'S THE SURVIVAL OF THE"
  Text 4,23, "FASTEST!"

Interstitial3TBirdD:
  Text 4,23, "IT'S THE NEED-TO-SPEED"
  Text 4,23, "ONCE AGAIN 'TOADS! PUT YOUR"
  Text 4,23, "FOOT TO THE FLOOR AND HANG"
  Text 4,23, "ON TIGHT!"
  
Interstitial4:
.dw Interstitial4DarkQueenA
.dw Interstitial4DarkQueenB
.dw Interstitial4DarkQueenC
.dw Interstitial4DarkQueenD
.dw Interstitial4TBirdA
.dw Interstitial4TBirdB
.dw Interstitial4TBirdC
.dw Interstitial4TBirdD

Interstitial4DarkQueenA:
  Text 4,23, "'TOAD VERSUS SNAKE, EH?"
  Text 4,23, "THEY DON'T HAVE A CHANCE"
  Text 4,23, "IN THIS ONE, MR.BEAKY FREAK!"
Interstitial4DarkQueenB:
  Text 4,23, "THE BIKE LEVEL'S OVER,"
  Text 4,23, "MANGROVE LURKERS, SO I"
  Text 4,23, "SUGGEST YOU RUN HOME TO THAT"
  Text 4,23, "FEATHERED FREAK WHILE"
  Text 4,23, "YOU STILL CAN!"
Interstitial4DarkQueenC:
  Text 4,23, "THIS IS IT, YOU GOBBLIN'"
  Text 4,23, "GEEK, YOUR MISERABLE BOTTLED"
  Text 4,23, "NERDS ARE GONNA PERISH"
  Text 4,23, "IN MY SNAKE PIT!"
Interstitial4DarkQueenD:
  Text 4,23, "PREPARE TO MEET KARNATH-KING"
  Text 4,23, "OF THE SNAKES!! YOU'LL NEVER"
  Text 4,23, "ESCAPE FROM HIS LETHAL LAIR,"
  Text 4,23, "NEVER! HA-HA-HA-HA!"
Interstitial4TBirdA:
  Text 4,23, "MY INFO REVEALS THAT THESE"
  Text 4,23, "SNAKES DON'T BITE, SO IT"
  Text 4,23, "SHOULD BE A PIECE OF CAKE!"
Interstitial4TBirdB:
  Text 4,23, "IT LOOKS LIKE IT'S TIME FOR"
  Text 4,23, "SOME SKILLFUL SCALING FROM"
  Text 4,23, "THE BATTLETOADS!"
Interstitial4TBirdC:
  Text 4,23, "SLITHER ON UP TO THE TOP"
  Text 4,23, "OF THESE SNAKE PITS, 'TOADS!"
Interstitial4TBirdD:
  Text 4,23, "THE EXIT'S AT THE TOP"
  Text 4,23, "'TOADS, SO GRAB A SNAKE"
  Text 4,23, "AND HOLD ON TIGHT!"

Interstitial5:
.dw Interstitial5DarkQueenA
.dw Interstitial5DarkQueenB
.dw Interstitial5DarkQueenC
.dw Interstitial5DarkQueenD
.dw Interstitial5TBirdA
.dw Interstitial5TBirdB
.dw Interstitial5TBirdC
.dw Interstitial5TBirdD
Interstitial5DarkQueenA:
  Text 4,23, "SO, YOU MADE IT TO THE"
  Text 4,23, "SECOND BONUS LEVEL. MAKE THE"
  Text 4,23, "MOST OF IT, 'CUZ IT'LL"
  Text 4,23, "BE YOUR LAST!!"
Interstitial5DarkQueenB:
  Text 4,23, "TOO MUCH FOR YOU, HUH BEAKY?"
  Text 4,23, "I'LL GIVE YOUR PATHETIC"
  Text 4,23, "PRATTLETOADS ONE MORE CHANCE"
  Text 4,23, "AT MY BONUS LEVEL..."
Interstitial5DarkQueenC:
  Text 4,23, "I'M FEELING SO SORRY FOR YOU"
  Text 4,23, "IN YOUR PITIFUL ATTEMPTS TO"
  Text 4,23, "BEAT ME, THAT I'LL LET YOU"
  Text 4,23, "TRY ANOTHER BONUS LEVEL!"
Interstitial5DarkQueenD:
  Text 4,23, "YOUR LAST CHANCE TO GAIN"
  Text 4,23, "SOME LIVES, SWAMP FEATURES,"
  Text 4,23, "'CUZ IT'LL SOON BE THE END"
  Text 4,23, "OF THE ROAD FOR YOU IN THE"
  Text 4,23, "DARK TOWER!"
Interstitial5TBirdA:
  Text 4,23, "WATCH OUT, THERE'S"
  Text 4,23, "MORE BEASTLY BAD ONES TO"
  Text 4,23, "AVOID HERE! LET'S MOTIVATE!!"
Interstitial5TBirdB:
  Text 4,23, "THE QUEEN'S RUNNING SCARED!"
  Text 4,23, "LET'S TRY FOR SOME LIVES,"
  Text 4,23, "THEN GO GET HER, 'TOADS!"
Interstitial5TBirdC:
  Text 4,23, "GRAB AS MANY DOMINOES AS YOU"
  Text 4,23, "CAN! MY SCANNERS REVEAL THAT"
  Text 4,23, "VOLKMIRE'S TOWER IS NEAR!!"
Interstitial5TBirdD:
  Text 4,23, "BACK ON THE CHECKERS,'TOADS!"
  Text 4,23, "THERE'S DOMINOES TO COLLECT"
  Text 4,23, "AND EXTRA LIVES TO GET!!"

Interstitial6:
.dw Interstitial6DarkQueenA
.dw Interstitial6DarkQueenB
.dw Interstitial6DarkQueenC
.dw Interstitial6DarkQueenD
.dw Interstitial6TBirdA
.dw Interstitial6TBirdB
.dw Interstitial6TBirdC
.dw Interstitial6TBirdD

Interstitial6DarkQueenA:
  Text 4,23, "I CAN'T BELIEVE YOU ESCAPED"
  Text 4,23, "FROM KARNATH! YOU'RE PRETTY"
  Text 4,23, "GOOD, FROGGIES, BUT IT"
  Text 4,23, "AIN'T OVER YET!"
Interstitial6DarkQueenB:
  Text 4,23, "RIDE MY RACKETY ROLLER"
  Text 4,23, "COASTER IF YOU DARE! BUT"
  Text 4,23, "WATCH OUT FOR FUZZ, 'CUZ"
  Text 4,23, "FUZZ CAN BUZZ!"
Interstitial6DarkQueenC:
  Text 4,23, "MMM, I WONDER WHAT THIN,"
  Text 4,23, "SUCCULENT SLICES OF GREEN"
  Text 4,23, "'TOAD TASTE LIKE? WELL, I'M"
  Text 4,23, "SURE I'LL FIND OUT SHORTLY!!"
Interstitial6DarkQueenD:
  Text 4,23, "UP AN' DOWN N' ROUND YOU GO,"
  Text 4,23, "YOU'D BEST BE FAST, 'CUZ"
  Text 4,23, "FUZZ AIN'T SLOW!"
Interstitial6TBirdA:
  Text 4,23, "POWER UP THOSE JET TRACKTORS"
  Text 4,23, "'TOADS, AND HIT THEM"
  Text 4,23, "CORNERS FAST!"
Interstitial6TBirdB:
  Text 4,23, "DON'T LET THAT MOBILE MINCER"
  Text 4,23, "NEAR YOU, 'TOADS. MICHIKO"
  Text 4,23, "AND ZITZ ARE STILL"
  Text 4,23, "COUNTING ON YOU!"
Interstitial6TBirdC:
  Text 4,23, "LISTEN, 'TOADS, IT'S NOT THE"
  Text 4,23, "TAKING PART THAT COUNTS,"
  Text 4,23, "IT'S THE WINNING!"
Interstitial6TBirdD:
  Text 4,23, "HIT THE TRACK AND DON'T LOOK"
  Text 4,23, "BACK, 'TOADS! YOU'VE GOT A"
  Text 4,23, "CRAZY RIDE AHEAD OF YOU!"

Interstitial7:
.dw Interstitial7DarkQueenA
.dw Interstitial7DarkQueenB
.dw Interstitial7DarkQueenC
.dw Interstitial7DarkQueenD
.dw Interstitial7TBirdA
.dw Interstitial7TBirdB
.dw Interstitial7TBirdC
.dw Interstitial7TBirdD
Interstitial7DarkQueenA:
  Text 4,23, "FEELING WEARY YET, SWAMP"
  Text 4,23, "DWELLERS? I HOPE SO,'CUZ I'M"
  Text 4,23, "SENDIN' IN SCUZZ TO BLOW UP"
  Text 4,23, "THE TOWER WITH YOU STILL"
  Text 4,23, "INSIDE IT!"
Interstitial7DarkQueenB:
  Text 4,23, "TELL THEM TO QUIT WHILE"
  Text 4,23, "THEY'RE AHEAD, FEATHERY"
  Text 4,23, "FOOL, 'CUZ IT'S CURTAINS FOR"
  Text 4,23, "THE FROGS IF THEY ENTER"
  Text 4,23, "THE DARK TOWER!"
Interstitial7DarkQueenC:
  Text 4,23, "YOU CROAKING CLOWNS MUST"
  Text 4,23, "HAVE TAKEN A SHORT CUT TO"
  Text 4,23, "GET HERE! I'M WAITIN' FOR"
  Text 4,23, "YOU AT THE BOTTOM, IF"
  Text 4,23, "YOU GET THAT FAR..."
Interstitial7DarkQueenD:
  Text 4,23, "I'M IMPRESSED, PROFESSOR"
  Text 4,23, "NERD, I DIDN'T THINK YOUR"
  Text 4,23, "BATTLEFOOLS WOULD GET THIS"
  Text 4,23, "FAR! UNFORTUNATELY, THEIR"
  Text 4,23, "MISSION ENDS HERE!"
Interstitial7TBirdA: 
  Text 4,23, "C'MON GUYS, THE END'S IN"
  Text 4,23, "SIGHT! BEAT THE RAT TWO"
  Text 4,23, "TIMES, AND HE'LL LEAD YOU"
  Text 4,23, "TO THE DARK QUEEN!"
Interstitial7TBirdB:
  Text 4,23, "THE QUEEN'S PLACED TWO"
  Text 4,23, "BOMBS IN THE TOWER! YOU MUST"
  Text 4,23, "DEFUSE THEM ALL, OTHERWISE"
  Text 4,23, "YOU'RE HISTORY!!"
Interstitial7TBirdC:
  Text 4,23, "WE'RE ALMOST THERE, 'TOADS!"
  Text 4,23, "PUT ON YOUR RUNNING SHOES,"
  Text 4,23, "AND LET'S DROP IN ON"
  Text 4,23, "THE DARK QUEEN!!"
Interstitial7TBirdD:
  Text 4,23, "YOU'RE IN THE QUEEN'S HOME"
  Text 4,23, "TERRITORY NOW,'TOADS! JUST"
  Text 4,23, "TWO RAT RACES, AND YOU GET"
  Text 4,23, "TO 'TOADSLAM HER REAL GOOD!!"

Interstitial8:
.dw Interstitial8DarkQueenA
.dw Interstitial8DarkQueenB
.dw Interstitial8DarkQueenC
.dw Interstitial8DarkQueenD
.dw Interstitial8TBirdA
.dw Interstitial8TBirdB
.dw Interstitial8TBirdC
.dw Interstitial8TBirdD
Interstitial8DarkQueenA:
  Text 4,23, "WELL, WELL, WELL, YOU FROGS"
  Text 4,23, "MUST THINK YOU'RE REALLY"
  Text 4,23, "SOMETHING. WELL, YOU'VE"
  Text 4,23, "FOUGHT THE REST, NOW YOU'RE"
  Text 4,23, "GONNA LOSE TO THE BEST!"
Interstitial8DarkQueenB:
  Text 4,23, "I HOPE YOU'RE STILL WATCHING"
  Text 4,23, "THIS, BIRD BRAIN, 'CUZ I'M"
  Text 4,23, "GONNA FINISH THE BATTLETOADS"
  Text 4,23, "OFF MYSELF!"
Interstitial8DarkQueenC:
  Text 4,23, "JUST YOU AND ME LEFT NOW,"
  Text 4,23, "'TOADIES! THERE'S NO ROUNDS,"
  Text 4,23, "NO FALLS, NO RULES, AN' WHEN"
  Text 4,23, "I'VE FINISHED - NO YOU!"
Interstitial8DarkQueenD:
  Text 4,23, "PAH! IF YOU WANT A JOB DONE"
  Text 4,23, "PROPERLY, NEVER TRUST A"
  Text 4,23, "USELESS BUNCH OF PIGS AND"
  Text 4,23, "RATS! C'MON 'TOADIES,"
  Text 4,23, "LET'S FIGHT!"
Interstitial8TBirdA: 
  Text 4,23, "IT'S SHOWDOWN TIME, 'TOADS!!"
  Text 4,23, "JUST THE DARK QUEEN STANDS"
  Text 4,23, "BETWEEN YOU AND OUR BUDDIES!"
Interstitial8TBirdB:
  Text 4,23, "SHOW THAT DARK QUEEN WHO YOU"
  Text 4,23, "ARE! YOU AIN'T NO FEEBLE"
  Text 4,23, "FROGS-YOU'RE THE"
  Text 4,23, "BATTLETOADS!"
Interstitial8TBirdC:
  Text 4,23, "WAYDIGO 'TOADS! THE QUEEN'S"
  Text 4,23, "ARMY IS BEATEN, AND SHE'S"
  Text 4,23, "SHAKIN' IN FEAR! GO GET HER!"
Interstitial8TBirdD:
  Text 4,23, "I KNEW YOU'D MAKE IT 'TOADS!"
  Text 4,23, "BOY, I WOULDN'T WANT TO BE"
  Text 4,23, "IN THE QUEEN'S SHOES NOW,"
  Text 4,23, "SHE'S IN FOR ONE"
  Text 4,23, "HUMUNGOUS SURPRISE!!"

Interstitial9:
.dw Interstitial9DarkQueenA
.dw Interstitial9DarkQueenB
.dw Interstitial9DarkQueenC
.dw Interstitial9DarkQueenD
.dw Interstitial9TBirdA
.dw Interstitial9TBirdB
.dw Interstitial9TBirdC
.dw Interstitial9TBirdD
Interstitial9DarkQueenA: 
  Text 4,23, "NOOOO, THIS CAN'T BE "
  Text 4,23, "HAPPENING!! YOU CAN'T BEAT "
  Text 4,23, "ME, I'M THE DARK QUEEN!! I'M "
  Text 4,23, "MEAN, I'M NASTY AND I WANT "
  Text 4,23, "TO WIN! GRR, I HATE 'TOADS!"
Interstitial9DarkQueenB: 
  Text 4,23, "IT'S JUST NOT FAIR, I'M FED "
  Text 4,23, "UP BEING BEATEN BY A SCRAWNY "
  Text 4,23, "BEAK AND HIS SLIMY SWAMP "
  Text 4,23, "SWIMMERS!! I'LL GET YOU NEXT "
  Text 4,23, "TIME, ALL OF YOU!!"
Interstitial9DarkQueenC: 
  Text 4,23, "UH-YOU WOULDN'T HIT A LADY "
  Text 4,23, "WHILE SHE'S DOWN, WOULD YOU? "
  Text 4,23, "GOOD, 'CUZ THIS GIVES ME A"
  Text 4,23, "CHANCE TO ESCAPE! FAREWELL,"
  Text 4,23, "FOUNTAIN FREAKS!"
Interstitial9DarkQueenD:
  Text 4,23, "WHAT STRENGTH! BUT DON'T"
  Text 4,23, "FORGET, THERE ARE MANY"
  Text 4,23, "TYRANTS LIKE ME ALL"
  Text 4,23, "OVER THE WORLD!! "
Interstitial9TBirdA:
  Text 4,23, "COSMICALLY COOL!! THE MAD,"
  Text 4,23, "BAD N'CRAZY 'TOADS SAVE THE"
  Text 4,23, "DAY, AND THE DARK QUEEN IS"
  Text 4,23, "NOW THE DARK HAS-BEEN!"
  Text 4,23, "HEH-HEH-CACKLE-CACKLE!"
Interstitial9TBirdB:
  Text 4,23, "WOOOOO! I LIKE IT, 'TOADS!"
  Text 4,23, "WE SURE TAUGHT THAT DARK"
  Text 4,23, "QUEEN NOT TO MESS WITH THE"
  Text 4,23, "AWESOME T.BIRD AND HIS"
  Text 4,23, "BATTLETOADS!"
Interstitial9TBirdC:
  Text 4,23, "TOUCHDOWN! THE BATTLIN'"
  Text 4,23, "BATTLETOADS COME THROUGH"
  Text 4,23, "IN THE LAST QUARTER AND"
  Text 4,23, "THE GOOD GUYS WIN AGAIN!"
Interstitial9TBirdD:
  Text 4,23, "WE'LL HAVE TO WRITE A BOOK"
  Text 4,23, "AND MAKE A MOVIE ABOUT YOU"
  Text 4,23, "GUYS, IT'LL MAKE ME... ER,"
  Text 4,23, "US A FORTUNE!"

/************************************
Ending Part 1
************************************/

Ending:
  Text 4,23, "ER...."
  Wait 1
  Clear 23
  Text 4,23, "HOLD THE PARTY, 'TOADS...."
  Wait 1
  Clear 23
  Text 4,23, "I'VE JUST PICKED UP SILAS"
  Text 4,23, "VOLKMIRE ON MY SCANNERS,"
  Text 4,23, "TRYING TO ESCAPE USING"
  Text 4,23, "A TELEPORTER!!"
  Wait 4
  Clear 23
  Text 4,23, "HOLD ON, I'LL LOCATE HIS"
  Text 4,23, "TARGET DESTINATION...."
  Wait 2
  Clear 23
  Text 4,23, "FOUND IT! TWEAK MY BEAK,"
  Text 4,23, "HE'S GONNA APPEAR ABOVE THE"
  Text 4,23, "PSICONE BUILDING ANY"
  Text 4,23, "MINUTE NOW!!"
  Wait 4
  Clear 23
  Text 4,23, "YOU'D BETTER GET BACK HERE"
  Text 4,23, "PRONTO, 'TOADS, YOU'RE OUR"
  Text 4,23, "ONLY HOPE OF CATCHING HIM!"
  Wait 3
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
