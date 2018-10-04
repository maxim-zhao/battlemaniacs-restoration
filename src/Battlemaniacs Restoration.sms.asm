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
.unbackground $38C4 $3913 ; intro picture loaders
.unbackground $6D73 $6DE9 ; title screen text strings
; gap: continue, game over text
.unbackground $6e19 $6e41 ; title screen text strings
.unbackground $8CF0 $8E99 ; pre-title text
.unbackground $18000 $18402 ; intro code and script
.unbackground $18403 $18702 ; Virgin logo tilemap
.unbackground $18703 $1884C ; title screen tilemap
.unbackground $1AC31 $1AC40 ; pre-title logo palette
.unbackground $1AC51 $1bf07 ; intro picture data 1
.unbackground $1CFFB $1e5f0 ; title screen tiles (RNC compressed)
.unbackground $1e5f2 $1f290 ; Virgin logo tiles (RNC compressed)
.unbackground $1F292 $1fbad ; intro picture data 2

; Unused space throughout ROM - may not be useful
.unbackground $7bb5 $7bff
.unbackground $7fe3 $7fff
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
.define TextToVRAM                  $5790 ; write ASCII from ix to VRAM starting at location (b,c), until a zero is encountered. Uses tile mapping to match the last call to LoadFont.
.define CheckForButton1             $0E7A ; returns nz if pressed
.define ResetScrollTile0AndTilemap  $04EA ; resets scrolling, blanks tile 0 and fills tilemap with that index
.define LoadPalettes                $1583 ; loads palettes from RAM pointers to VRAM
;.define EmitTilemapRect             $0D4D ; emits tilemap data from hl to vram address de with dimensions bxc
.define SkippableDelay              $0E9C ; delays for b*20ms, e.g. $64 => 2s. Maximum wait is ~5s.
.define ScreenOn                    $0295 ; turns screen on
.define ScreenOff                   $0282 ; turns screen off
.define FadeOut                     $14ac ; fades screen out
.define SetOutputLocation           $57e7 ; sets the output location
.define PrintScore                  $582a ; prints a 6-byte byte-per-digit number from ix to the current output location

.export TextToVRAM,CheckForButton1,ResetScrollTile0AndTilemap,LoadPalettes,SkippableDelay,ScreenOn,ScreenOff,FadeOut

; RAM locations from the original game we want to use
.define RAM_TilePalettePointer      $C7C7 ; pointer to palette for tiles, used by LoadPalettes
.define RAM_SpritePalettePointer    $C769 ; pointer to palette for sprites and font tiles, used by LoadPalettes
.define RAM_IntroButtonPressed      $C822 ; signal from intro to game to indicate if it was skipped by pressing a button, 1 if true, 0 otherwise
.define RAM_GameState               $c779 ; 3 = continue screen?
.define RAM_LevelNumber             $C792 ; 0, 1, ...
.define RAM_CharacterDataPointer    $c8c6 ; Points to character data, the first byte of which tells me if it's Pimple (1) or Rash (2)
.define RAM_Is2Player               $C771 ; 1 if 2-player

; Data locations from the original game we want to use
.define DATA_FontPalette            $AC41

; =======================================================================================
;
; Part 1: Audio
;
; We replace the whole music engine with PSGLib. This uses more space, but actually frees
; up some CPU (so reducing slowdown in the orgiinal game, if there is any) and makes it
; somewhat trivial to add in any new music as it can be produced using any tool capable
; of producing a VGM file.
;
; =======================================================================================

.bank 0 slot 0

; Patches to audio API calls

.unbackground $0465 $0474 ; interrupt handler call to music engine
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
.section "Audio init hook" overwrite
  ; Replaces a jump, see below
  call AudioInit
.ends

.section "Audio init hook handler" free
AudioInit:
  ; Page in code
  ; We don't need to preserve paging here
  ld a, :PSGInit
  ld (PAGING_REGISTER_1), a
  ; Call it
  call PSGInit
  ; Restore paging - we just put things back to the defaults
  ld a,1
  ld (PAGING_REGISTER_1), a
  inc a
  ld (PAGING_REGISTER_2), a
  ; what we replaced to get here
  jp $02BF
  ; above will ret
.ends

; We need to place some trampolines in the first 16KB, so they can be 
; called from code located above 16KB and safely restore paging
.section "Play SFX trampoline" free
PlaySFXTrampoline:
  ; a = SFX track index (from the original game)
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
  ; a = music track index (from the original game)
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

; We hook the original API entry points and redirect them to our trampolines
.bank 1 slot 1
.unbackground $6d3d $6d72 ; old jump points for music engine
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

; We need to pick a slot for this as it defines free sections.
; We put the PSGLib code and glue functions in slot 1, and the music data in slot 2.
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

.define MUSIC_SILENCE 0
.define MUSIC_TITLE 1
.define MUSIC_RAGNAROK_CANYON $d
.define MUSIC_HOLLOW_TREE $15
.define MUSIC_SNAKE_PIT $23
.define MUSIC_BONUS_STAGE $1b
; Additions
.define MUSIC_DARK_TOWER $02
.define MUSIC_TURBO_TUNNEL $03
.define MUSIC_ROLLER_COASTER $04
.define MUSIC_BONUS_STAGE_2 $05

PlayMusic:
  ; We do a dumb if-then-else. This costs about 12 bytes per item and isn't very fast, but doing it by a lookup would be a pain as we have large indices.
  ; (We could use more sensible indices if we re-wrote all callers to use the new indices.)
  cp MUSIC_TITLE
  jr nz,+
  ld a,:MusicTitle
  ld hl,MusicTitle
_play:
  ld (CurrentMusicBank),a
  jp PSGPlay ; and ret
+:cp MUSIC_RAGNAROK_CANYON
  jr nz,+
  ld a,:MusicRagnarokCanyon
  ld hl,MusicRagnarokCanyon
  jp _play
+:cp MUSIC_HOLLOW_TREE
  jr nz,+
  ld a,:MusicHollowTree
  ld hl,MusicHollowTree
  jp _play
+:cp MUSIC_SNAKE_PIT
  jr nz,+
  ld a,:MusicSnakePit
  ld hl,MusicSnakePit
  jp _play
+:cp MUSIC_BONUS_STAGE
  jr nz,+
  ld a,:MusicBonusStage
  ld hl,MusicBonusStage
  jp _play
+:cp MUSIC_DARK_TOWER
  jr nz,+
  ld a,:MusicDarkTower
  ld hl,MusicDarkTower
  jp _play
+:cp MUSIC_TURBO_TUNNEL
  jr nz,+
  ld a,:MusicTurboTunnel
  ld hl,MusicTurboTunnel
  jp _play
+:cp MUSIC_ROLLER_COASTER
  jr nz,+
  ld a,:MusicRollerCoaster
  ld hl,MusicRollerCoaster
  jp _play
+:cp MUSIC_BONUS_STAGE_2
  jr nz,+
  ld a,:MusicBonusStage2
  ld hl,MusicBonusStage2
  jp _play
  ; unhandled
+:jp StopMusic ; and ret
.ends

.section "Audio stop" free
StopMusic:
  call PSGStop
  call PSGSFXStop
  ret
.ends

; Music data, each in its own superfree slot 2 section so WLA DX can assign the banks

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
.section "Music data 8" superfree
MusicRollerCoaster:
.incbin "vgms/music/Roller Coaster.psg"
.ends
.section "Music data 9" superfree
MusicBonusStage2:
.incbin "vgms/music/Bonus Stage 2.psg"
.ends

.section "SFX data" superfree
; All in one section because it's far simpler if it's all in the same bank
; We prepend the SFX data with the channel mask
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

.bank 1 slot 1
.orga $6D31
.section "Level music lookup" overwrite
LevelMusicLookup:
.db MUSIC_RAGNAROK_CANYON
.db MUSIC_HOLLOW_TREE
.db MUSIC_BONUS_STAGE
.db MUSIC_TURBO_TUNNEL
.dsb 4 MUSIC_SNAKE_PIT ; 4 levels joined together
.db MUSIC_BONUS_STAGE_2
.db MUSIC_ROLLER_COASTER
.db MUSIC_DARK_TOWER
.db MUSIC_BONUS_STAGE
.ends

; =======================================================================================
;
; Part 2: Scripts
;
; The intro, title screen, intermissions, game over sequence and ending are all very
; similar structurally: show pictures and text, with timing. We implement a completely
; new engine to achieve the same thing, with a few assumptions:
; * Pictures are always full-width so we can easily load the tilemaps straight to VRAM
; * We can load the picture from tile 0, and locate the font near the top of VRAM
; * Text is mostly centred and evenly spaced - although we can place it arbitrarily if 
;   needed
; * Waits should all be skippable
;
; =======================================================================================

.bank 1 slot 1
.unbackground $40cd $40dc ; caller of the intro
.orga $40cd
.section "IntroTrampoline" force
  ; Original game does:
  ; ld a, :_LABEL_18000_Intro;$06
  ; ld (_RAM_FFFF_), a
  ; call _LABEL_18000_Intro
	; ld a, (_RAM_C822_IntroButtonPressed)
	; and a
	; jp z, _LABEL_3F74_ShowMenus ; restart loop
	; ret ; Or break out of it
  ld a,:Intro
  ld (PAGING_REGISTER_2),a
  call Intro
	ld a, (RAM_IntroButtonPressed)
	and a
	jp z, TitleScreenLoop ; restart loop
	ret ; Or break out of it
.ends

.slot 2
.section "Scripting" superfree
.enum $ff DESC
  SCRIPT_END_NOBLANK db
  SCRIPT_END_BLANK db
  SCRIPT_PICTURE db
  SCRIPT_PICTURE_NOBLANK db
  SCRIPT_WAIT db
  SCRIPT_TEXT db
  SCRIPT_BLANK_TEXT db
  SCRIPT_FADEOUT db
  SCRIPT_TILEMAP db
  SCRIPT_RESTORESCREEN db
  SCRIPT_BLANK_TBIRD db
.ende

; Pre-title sequence and title screen
Title: 
  ld hl,PreTitleScript
  call _ScriptStart
  ; Separate script so this isn't skipped
  ld hl,TitleScript
  jp _ScriptLoop

; Post-title-timeout sequence - the story
Intro:
  ; Start off blank
  ;call ResetScrollTile0AndTilemap
  ld hl,IntroScript
  jp _ScriptStart
  
Continue:
  ld hl,ContinueLookup
  jp _TBird
  
GameOver:
  ld hl,GameOverLookup
  jp ++

; Inter-level sequence - randomly chosen from 4 items each time
Intermission:
  ; Check if it's game over
  ld a,(RAM_GameState)
  cp 3
  ret z ; disable - we will re-enable it later

  ; ELse look up a random text based on the level
+:ld a,(RAM_LevelNumber) ; 0..11
  add a,a ; Multiply by 16 - fits in 8 bits
  add a,a
  add a,a
  add a,a
  ld e,a
  ld d,0
  ld hl,IntermissionsLookup
  add hl,de
++:
  push hl
    ; get a random number (0,2,4,6) to add on
    ld a,r
    and 6
    ld e,a
    ld d,0
    add hl,de
    ; read value
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ; check for zero
    or h
    jr z,_NoIntermission
    ; draw
    call _ScriptStart
  pop hl
  ; next T-Bird
  ld de,8
  add hl,de
_TBird:
  ; get a random number
  ld a,r
  and 6
  ld e,a
  ld d,0
  add hl,de
  ; read value
  ld a,(hl)
  inc hl
  ld h,(hl)
  ld l,a
  ; draw
  call _ScriptStart
_NoIntermission:
  jp ScreenOff ; and ret
  
GameModeScreen:
  ld hl,GameModeScreenScript
  jp _ScriptLoop ; and ret

GameOverScreen:
  ld hl,GameOverPimple
  ld ix,(RAM_CharacterDataPointer)
  ld a,(ix+0)
  cp 1
  jr z,+
  ld hl,GameOverRash
+:call _ScriptLoop
  ld hl,GameOverText
  jp _ScriptLoop
  
GameComplete:
  ld ix,$3000 + 32 * 4
  call LoadFont

  ld a,MUSIC_TITLE ; TODO change
  call PlayMusicTrampoline
  
  call ResetScrollTile0AndTilemap
  call ScreenOn
  ld hl,Ending
  call _ScriptLoop
  
  ld a,(RAM_Is2Player)
  or a
  jr nz,@2P
  ; 1 player
  ld a,($c400)
  dec a
  jr z,@Pimple
@Rash:
  ld hl,CompleteRash
  call _ScriptLoop
-:ld ix,$c77b ; 1P score
  jp PrintScore ; and ret
@Pimple:
  ld hl,CompletePimple
  call _ScriptLoop
  jr -
@2P:
  ld hl,Complete2Player
  call _ScriptLoop
  ld ix,$c786 ; 2P score
  call PrintScore
	ld bc, 7 + 21 << 8 ; x, y
	call SetOutputLocation
  jr -
  
_ScriptStart:
  push hl
    call ResetScrollTile0AndTilemap
    call ScreenOn
  pop hl

_ScriptLoop:
  ld a,(hl)
  inc hl
  cp SCRIPT_END_BLANK
  jp z,_End
  cp SCRIPT_END_NOBLANK
  ret z
  cp SCRIPT_PICTURE
  jp z,_LoadPicture
  cp SCRIPT_PICTURE_NOBLANK
  jp z,_LoadPictureNoBlank
  cp SCRIPT_WAIT
  jp z,_Wait
  cp SCRIPT_BLANK_TEXT
  jp z,_blank
  cp SCRIPT_FADEOUT
  jp z,_FadeOut
  cp SCRIPT_TILEMAP
  jp z,_LoadTilemap
  cp SCRIPT_RESTORESCREEN
  jp z,_RestoreScreenToBlank
  cp SCRIPT_BLANK_TBIRD
  jp z,_BlankRectTBird
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
  ; TODO: this means that pressing a button during text makes the script be entirely skipped, but at other times it does nothing
  call CheckForButton1
  jr z, _ScriptLoop ; loop if not pressed
  ; else fall through
_IntroSkipped:
  call ResetScrollTile0AndTilemap
  ld a, 1
  ld (RAM_IntroButtonPressed), a
  ret
  
_BlankRectTBird:
  push hl
    ; We set the write address
    ld hl,$3800 + (18 * 32 + 2) * 2
    di
    ld de,32*2
    ld c,$bf
    xor a
    ld b,5 ; rows
--: out (c),l
    out (c),h
    push bc
      ld b,28*2 ; columns
-:    out ($be),a
      push ix ; delay
      pop ix
      djnz -
    pop bc
    ; add 32 to hl
    add hl,de
    ; and repeat
    djnz --
    ei
  pop hl
  jp _ScriptLoop
  

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

_FadeOut:
  push hl
    call FadeOut
  pop hl
  jp _ScriptLoop

_LoadPicture:
  ; Clear the tilemap
  push hl
    call ResetScrollTile0AndTilemap
  pop hl
_LoadPictureNoBlank:
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
-:ld e,(hl)
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
  
_RestoreScreenToBlank:
  push hl
    call ResetScrollTile0AndTilemap
    call LoadPalettes
  pop hl
  jp _ScriptLoop
  
_LoadTilemap:
  ld c,(hl)
  inc hl
  jr -

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
  .db SCRIPT_PICTURE
  .dw palette
  .dw tiles
  .db :tiles
  .dw tilemap
.endm

.macro PictureNoBlank args palette, tiles, tilemap
  .db SCRIPT_PICTURE_NOBLANK
  .dw palette
  .dw tiles
  .db :tiles
  .dw tilemap
.endm

.macro LoadTilemap args tilemap
  .db SCRIPT_TILEMAP
  .db :tilemap
  .dw tilemap
.endm

.define textY 0
.define rowAdvance 1

; Draws some text at the given location, with an optional pause
.macro Text args text, length, seconds
  ; If the text is (length) long, we want to draw it at (31 - length)/2+1
  ; This centres it within the 31 tiles on-screen, with a bias to the left for even lengths.
  .db SCRIPT_TEXT, (31-length)/2+2-(length&1), textY, text, 0
  .if NARGS > 2
  .db SCRIPT_WAIT, seconds * 50
  .endif
  .redefine textY textY+rowAdvance
.endm

.macro TextAt args x,y,text
  .db SCRIPT_TEXT, x, y, text, 0
.endm

.macro StartText args y
  .redefine textY y
.endm

; Pauses for the given length of time
.macro Wait args seconds
  .db SCRIPT_WAIT, seconds * 50
.endm

; Clears the screen from the given row onwards
.macro Clear args row
  .db SCRIPT_BLANK_TEXT, row
.endm

.block "Scripts"

PreTitleScript:
.redefine rowAdvance 2
  Picture LegalsPalette, LegalsTiles, LegalsTilemap
  Wait 3
  Wait 3
  LoadTilemap StarfieldTilemap
  PictureNoBlank VirginLogoPalette, VirginLogoTiles, VirginLogoTilemap
  Wait 3
  LoadTilemap StarfieldTilemap
  PictureNoBlank PreTitlePalette, PreTitleTiles, PreTitleTilemap
  Wait 2
.db SCRIPT_END_NOBLANK

TitleScript:
  LoadTilemap StarfieldTilemap
  PictureNoBlank TitlePalette, TitleTiles, TitleTilemap
.db SCRIPT_END_NOBLANK


IntroScript:
.redefine rowAdvance 2
  Picture Intro1Palette, Intro1Tiles, Intro1Tilemap
  StartText 21
  ;    Text, Length, (optional) Wait
  Text "THE 'TOADS ARE AT THE", 21
  Text "GYACHUNG-LA FORTRESS", 20, 2
  .db SCRIPT_FADEOUT

  Picture Intro2Palette, Intro2Tiles, Intro2Tilemap
  StartText 21
  Text "LOCATED IN", 10
  Text "NORTHERN TIBET, ASIA", 20, 2
  .db SCRIPT_FADEOUT

  Picture Intro3Palette, Intro3Tiles, Intro3Tilemap
  StartText 21
  Text "PROFESSOR T. BIRD STARTS...", 27, 2
  Clear 21
  StartText 21
  Text "'TOADS, I HAVE INVITED YOU", 26
  Text "HERE TO WITNESS THE FIRST", 25, 2
  Clear 21
  StartText 21
  Text "DEMONSTRATION OF PSICONE'S", 26
  Text "NEW GAMES GENERATOR.", 20, 2
  .db SCRIPT_FADEOUT

  Picture Intro4Palette, Intro4Tiles, Intro4Tilemap
  StartText 21
  Text "TRIPS 21", 8, 2
  Clear 21
  StartText 21
  Text "TOTAL REALITY INTEGRATED", 24
  Text "PLAYING SYSTEM.", 15, 2
  Clear 21
  StartText 21
  Text "WE'VE NAMED ITS ARTIFICIAL", 26
  Text "WORLD \"THE GAMESCAPE\".", 22, 2
  .db SCRIPT_FADEOUT

  Picture Intro5Palette, Intro5Tiles, Intro5Tilemap
  StartText 21
  Text "THIS APPROACHING IMAGE IS A", 27
  Text "PIG OF THE APOCALYPSE,", 22, 2
  Clear 21
  StartText 21
  Text "ONE OF THE GAMES T...", 21, 1
  .db SCRIPT_FADEOUT

  Picture Intro6Palette, Intro6Tiles, Intro6Tilemap
  StartText 19
  Text "BEFORE THE PROFESSOR CAN", 24
  Text "FINISH, THE PIG LEAPS OUT", 25
  Text "OF THE SCREEN!!", 15, 3
  .db SCRIPT_FADEOUT

  Picture Intro7Palette, Intro7Tiles, Intro7Tilemap
  StartText 19
  Text "IT GRABS MICHIKO TASHOKU,", 25
  Text "DAUGHTER OF PSICONE'S", 21
  Text "HEAD HONCHO!!", 13, 3
  .db SCRIPT_FADEOUT

  Picture Intro8Palette, Intro8Tiles, Intro8Tilemap
  StartText 19
  Text "ZITZ LEAPS TO HER RESCUE,", 25
  Text "BUT HE TAKES A BEASTLY BASHING", 30
  Text "AND IS CAPTURED TOO!", 20, 3
  .db SCRIPT_FADEOUT

  Picture Intro9Palette, Intro9Tiles, Intro9Tilemap
  StartText 19
  Text "WITH MICHIKO AND ZITZ ITS", 25
  Text "PRISONER, THE EVIL PIG ESCAPES", 30
  Text "BACK INTO THE GAMESCAPE!", 24, 3
  .db SCRIPT_FADEOUT

  Picture Intro10Palette, Intro10Tiles, Intro10Tilemap
  StartText 21
  Text "PAY ATTENTION, BATTLEJERKS!", 27, 2
  Clear 21
  StartText 21
  Text "I, SILAS VOLKMIRE, INTEND TO", 28
  Text "TURN YOUR MISERABLE WORLD INTO", 30, 2
  Clear 21
  StartText 21
  Text "MY VERY OWN GAMESCAPE!", 22, 2
  Clear 21
  StartText 21
  Text "THE DARK QUEEN HOLDS YOUR", 25
  Text "FEEBLE FRIENDS CAPTIVE,", 23, 2
  Clear 21
  StartText 21
  Text "AND IF YOU TRY ANYTHING,", 24
  Text "YOU'LL NEVER SEE THEM AGAIN!", 28, 2
  Clear 21
  StartText 21
  Text "HA-HA-HA-HA!!", 13, 2
  .db SCRIPT_FADEOUT

; ***********************************
; Beginning of level 1 (I guess the easiest is to add this as a Prologue scene)
; ***********************************

  Picture Intro11Palette, Intro11Tiles, Intro11Tilemap
  StartText 21
  Text "WE GOTTA GET 'EM BACK!!", 23, 2
  Clear 21
  StartText 21
  Text "LET'S GATECRASH THE GAMESCAPE", 29
  Text "AN' COOK SOME BEASTIN' BACON!", 29, 2
  .db SCRIPT_FADEOUT
.db SCRIPT_END_BLANK

; Intermission scripts

ContinueLookup:
.dw ContinueA
.dw ContinueB
.dw ContinueC
.dw ContinueD

GameOverLookup:
.dw GameOverDarkQueenA
.dw GameOverDarkQueenB
.dw GameOverDarkQueenC
.dw GameOverDarkQueenD
.dw GameOverTBirdA
.dw GameOverTBirdB
.dw GameOverTBirdC
.dw GameOverTBirdD

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
; no intermissions for snake levels
.dsw 3*2*4 0
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

.redefine rowAdvance 1

Intermission1DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "Y'KNOW BATTLEBARF, THEY SAY", 27, 0.33
  Text "TREES ARE ENVIRONMENTALLY", 25, 0.33
  Text "FRIENDLY. BAD NEWS FOR YOU,", 27, 0.33
  Text "'CUZ OURS DEFINITELY ISN'T,", 27, 0.33
  Text "AND YOU'LL FIND OUT WHY!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "MY WASPLINGS WILL SORT YOU", 26, 0.33
  Text "OUT, WART FEATURES, 'CUZ", 24, 0.33
  Text "THEY'LL BE STINGIN', AN'", 24, 0.33
  Text "YOU'LL BE SINGIN'!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "DO YOU REALLY THINK A", 21, 0.33
  Text "CLUCKING FOOL AND HIS SLIMY", 27, 0.33
  Text "SNOT SNAFFLERS CAN BEAT US?", 27, 0.33
  Text "PREPARE TO MEET MY SATURN", 25, 0.33
  Text "TOADTRAPS!", 10, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "SO, THE MUTANT RATPACK AND", 26, 0.33
  Text "THAT USELESS STONE PIG", 22, 0.33
  Text "DIDN'T GET YOU? NEVER MIND,", 27, 0.33
  Text "'CUZ THE REAL CHALLENGE", 23, 0.33
  Text "STARTS HERE, SO COME ON IN!!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THIS IS ONE BIG TREE YOU'RE", 27, 0.33
  Text "FACING NEXT, 'TOADS! ABOUT", 26, 0.33
  Text "A MILE DOWN, AND THE EXIT'S", 27, 0.33
  Text "AT THE BOTTOM!!", 15, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WE TAUGHT THAT STONY", 20, 0.33
  Text "SNORTER A LESSON, DIDN'T", 24, 0.33
  Text "WE, GUYS? NOW LET'S LEAP", 24, 0.33
  Text "THROUGH THE LEAVES AND", 22, 0.33
  Text "TACKLE THAT TREE!", 17, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "I'VE LOCATED SOME HOVER", 23, 0.33
  Text "DISCS THAT YOU CAN USE, BUT", 27, 0.33
  Text "I BET MY BEAK THERE'S A", 23, 0.33
  Text "WHOLE 'TOAD-LOAD OF TROUBLE", 27, 0.33
  Text "WAITING DOWN IN THAT TREE!", 26, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission1TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "MY SENSORS INDICATE THAT", 24, 0.33
  Text "THIS WHOLE TREE IS HOLLOW,", 26, 0.33
  Text "SO HEAD FOR THE BOTTOM", 22, 0.33
  Text "AND DON'T LOOK DOWN!", 20, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission2DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "I'M SO SURE THAT I'M GONNA", 26, 0.33
  Text "WIN, WARTBODIES, THAT I'LL", 26, 0.33
  Text "LET YOU ATTEMPT A", 17, 0.33
  Text "BONUS LEVEL!", 12, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "GRR! I SUPPOSE YOU SNOTSKINS", 28, 0.33
  Text "DESERVE A SHOT AT THIS BONUS", 28, 0.33
  Text "LEVEL FOR GETTIN' THIS FAR.", 27, 0.33
  Text "BUT ONCE IT'S OVER, I'M", 23, 0.33
  Text "GONNA FINISH YOU FOR GOOD!", 26, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOU'D BETTER COLLECT ENOUGH", 27, 0.33
  Text "PINS TO GAIN AN EXTRA", 21, 0.33
  Text "LIFE HERE, SWAMPSUCKERS, 'CUZ", 29, 0.33
  Text "YOU'LL SURELY BE NEEDIN' IT!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOU CAN'T SAY THAT I DON'T", 26, 0.33
  Text "PLAY FAIR, PENCIL NECK. I'LL", 28, 0.33
  Text "LET THE BATTLEWIMPS PLAY MY", 27, 0.33
  Text "NICE EASY BONUS LEVEL BEFORE", 28, 0.33
  Text "I GET REALLY NASTY!!", 20, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "SNATCH THE PINS, 'TOADS!", 24, 0.33
  Text "COLLECT ENOUGH AN' WE'RE", 24, 0.33
  Text "TALKIN' EXTRA LIVES HERE!!", 26, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "TAKE A REST FROM THE ACTION,", 28, 0.33
  Text "GUYS! TRY OUT THE BONUS", 23, 0.33
  Text "LEVEL, AND IF YOU COLLECT", 25, 0.33
  Text "ENOUGH PINS, YOU'LL WIN AN", 26, 0.33
  Text "EXTRA LIFE OR TWO!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THE MORE THE MERRIER, 'TOADS!", 29, 0.33
  Text "LET'S CHECK OUT THAT CHECKER", 28, 0.33
  Text "AND WIN US SOME LIVES!", 22, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission2TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "C'MON, 'TOADS, IT'S BONUS", 25, 0.33
  Text "TIME! COLLECT THE WHITES", 24, 0.33
  Text "TO WIN A LIFE! AVOID", 20, 0.33
  Text "THE SKULLS AS THEY", 18, 0.33
  Text "MEAN STRIFE!", 12, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission3DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "THIS IS WHERE THE ACTION", 24, 0.33
  Text "GETS FAST AN' YOUR SLIME", 24, 0.33
  Text "BACKS COME LAST, YOU", 20, 0.33
  Text "FLAPPIN' FOOL!", 14, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "HAVE YOU GOT THE STOMACH", 24, 0.33
  Text "FOR SPEED? I SINCERELY", 22, 0.33
  Text "HOPE NOT, YOU HOPPING", 21, 0.33
  Text "HALF-WITS!", 10, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOU MIGHT THINK YOUR", 20, 0.33
  Text "BATTLENERDS ARE WINNING,", 24, 0.33
  Text "HOOKBILL, BUT LET ME ASSURE", 27, 0.33
  Text "YOU, I HAVEN'T EVEN", 19, 0.33
  Text "WARMED UP YET!!", 15, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "I HOPE YOU ENJOYED YOURSELF", 27, 0.33
  Text "BACK THERE, 'CUZ I KNOW THAT", 28, 0.33
  Text "SOMETHING REALLY NASTY", 22, 0.33
  Text "IS GONNA HAPPEN TO YOU", 22, 0.33
  Text "ON THOSE BIKES!!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "BE CAREFUL, 'TOADS, I'M", 23, 0.33
  Text "PICKIN' UP IMAGES OF", 20, 0.33
  Text "WHIZZIN' WALLS AND MASSIVE", 26, 0.33
  Text "GAPS IN THAT TUNNEL!!", 21, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "YOU'RE DOIN' GREAT, 'TOADS!", 27, 0.33
  Text "LET'S HEAD FOR THE BIKES AND", 28, 0.33
  Text "HIT THAT TUNNEL - HARD!", 23, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "REMEMBER, 'TOADS! IN HERE,", 26, 0.33
  Text "IT'S THE SURVIVAL OF THE", 24, 0.33
  Text "FASTEST!", 8, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission3TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "IT'S THE NEED-TO-SPEED", 22, 0.33
  Text "ONCE AGAIN, 'TOADS! PUT YOUR", 28, 0.33
  Text "FOOT TO THE FLOOR AND HANG", 26, 0.33
  Text "ON TIGHT!", 9, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission4DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "'TOAD VERSUS SNAKE, EH?", 23, 0.33
  Text "THEY DON'T HAVE A CHANCE", 24, 0.33
  Text "IN THIS ONE, MR. BEAKY FREAK!", 29, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "THE BIKE LEVEL'S OVER,", 22, 0.33
  Text "MANGROVE LURKERS, SO I", 22, 0.33
  Text "SUGGEST YOU RUN HOME TO THAT", 28, 0.33
  Text "FEATHERED FREAK WHILE", 21, 0.33
  Text "YOU STILL CAN!", 14, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "THIS IS IT, YOU GOBBLIN'", 24, 0.33
  Text "GEEK! YOUR MISERABLE BOTTLED", 28, 0.33
  Text "NERDS ARE GONNA PERISH", 22, 0.33
  Text "IN MY SNAKE PIT!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "PREPARE TO MEET KARNATH -", 25, 0.33
  Text "KING OF THE SNAKES!! YOU'LL", 27, 0.33
  Text "NEVER ESCAPE FROM HIS LETHAL", 28, 0.33
  Text "LAIR, NEVER! HA-HA-HA-HA!", 25, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "MY INFO REVEALS THAT THESE", 26, 0.33
  Text "SNAKES DON'T BITE, SO IT", 24, 0.33
  Text "SHOULD BE A PIECE OF CAKE!", 26, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "IT LOOKS LIKE IT'S TIME FOR", 27, 0.33
  Text "SOME SKILLFUL SCALING FROM", 26, 0.33
  Text "THE BATTLETOADS!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "SLITHER ON UP TO THE TOP", 24, 0.33
  Text "OF THESE SNAKE PITS, 'TOADS!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission4TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THE EXIT'S AT THE TOP,", 22, 0.33
  Text "'TOADS, SO GRAB A SNAKE", 23, 0.33
  Text "AND HOLD ON TIGHT!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission5DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "SO, YOU MADE IT TO THE", 22, 0.33
  Text "SECOND BONUS LEVEL. MAKE THE", 28, 0.33
  Text "MOST OF IT, 'CUZ IT'LL", 22, 0.33
  Text "BE YOUR LAST!!", 14, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "TOO MUCH FOR YOU, HUH, BEAKY?", 29, 0.33
  Text "I'LL GIVE YOUR PATHETIC", 23, 0.33
  Text "PRATTLETOADS ONE MORE CHANCE", 28, 0.33
  Text "AT MY BONUS LEVEL...", 20, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "I'M FEELING SO SORRY FOR YOU", 28, 0.33
  Text "IN YOUR PITIFUL ATTEMPTS TO", 27, 0.33
  Text "BEAT ME, THAT I'LL LET YOU", 26, 0.33
  Text "TRY ANOTHER BONUS LEVEL!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOUR LAST CHANCE TO GAIN", 24, 0.33
  Text "SOME LIVES, SWAMP FEATURES,", 27, 0.33
  Text "'CUZ IT'LL SOON BE THE END", 26, 0.33
  Text "OF THE ROAD FOR YOU IN THE", 26, 0.33
  Text "DARK TOWER!", 11, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WATCH OUT, THERE'S", 18, 0.33
  Text "MORE BEASTLY BAD ONES TO", 24, 0.33
  Text "AVOID HERE! LET'S MOTIVATE!!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THE QUEEN'S RUNNING SCARED!", 27, 0.33
  Text "LET'S TRY FOR SOME LIVES,", 25, 0.33
  Text "THEN GO GET HER, 'TOADS!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "GRAB AS MANY PINS AS YOU CAN!", 29, 0.33
  Text "MY SCANNERS REVEAL THAT", 23, 0.33
  Text "VOLKMIRE'S TOWER IS NEAR!!", 26, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission5TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "BACK ON THE CHECKERS,'TOADS!", 28, 0.33
  Text "THERE'S PINS TO COLLECT", 23, 0.33
  Text "AND EXTRA LIVES TO GET!!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission6DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "I CAN'T BELIEVE YOU ESCAPED", 27, 0.33
  Text "FROM KARNATH! YOU'RE PRETTY", 27, 0.33
  Text "GOOD, FROGGIES, BUT IT", 22, 0.33
  Text "AIN'T OVER YET!", 15, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "RIDE MY RACKETY ROLLER", 22, 0.33
  Text "COASTER IF YOU DARE! BUT", 24, 0.33
  Text "WATCH OUT FOR FUZZ, 'CUZ", 24, 0.33
  Text "FUZZ CAN BUZZ!", 14, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "MMM, I WONDER WHAT THIN,", 24, 0.33
  Text "SUCCULENT SLICES OF GREEN", 25, 0.33
  Text "'TOAD TASTE LIKE? WELL, I'M", 27, 0.33
  Text "SURE I'LL FIND OUT SHORTLY!!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "UP AN' DOWN N' ROUND YOU GO!", 28, 0.33
  Text "YOU'D BEST BE FAST, 'CUZ", 24, 0.33
  Text "FUZZ AIN'T SLOW!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "POWER UP THOSE JET TRACKTORS,", 29, 0.33
  Text "'TOADS, AND HIT THEM", 20, 0.33
  Text "CORNERS FAST!", 13, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "DON'T LET THAT MOBILE MINCER", 28, 0.33
  Text "NEAR YOU, 'TOADS. MICHIKO", 25, 0.33
  Text "AND ZITZ ARE STILL", 18, 0.33
  Text "COUNTING ON YOU!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "LISTEN, 'TOADS! IT'S NOT THE", 28, 0.33
  Text "TAKING PART THAT COUNTS,", 24, 0.33
  Text "IT'S THE WINNING!", 17, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission6TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "HIT THE TRACK AND DON'T LOOK", 28, 0.33
  Text "BACK, 'TOADS! YOU'VE GOT A", 26, 0.33
  Text "CRAZY RIDE AHEAD OF YOU!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission7DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "FEELING WEARY YET, SWAMP", 24, 0.33
  Text "DWELLERS? I HOPE SO, 'CUZ I'M", 29, 0.33
  Text "SENDIN' IN SCUZZ TO BLOW UP", 27, 0.33
  Text "THE TOWER WITH YOU STILL", 24, 0.33
  Text "INSIDE IT!", 10, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "TELL THEM TO QUIT WHILE", 23, 0.33
  Text "THEY'RE AHEAD, FEATHERY", 23, 0.33
  Text "FOOL, 'CUZ IT'S CURTAINS FOR", 28, 0.33
  Text "THE FROGS IF THEY ENTER", 23, 0.33
  Text "THE DARK TOWER!", 15, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOU CROAKING CLOWNS MUST", 24, 0.33
  Text "HAVE TAKEN A SHORT CUT TO", 25, 0.33
  Text "GET HERE! I'M WAITIN' FOR", 25, 0.33
  Text "YOU AT THE BOTTOM, IF", 21, 0.33
  Text "YOU GET THAT FAR...", 19, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "I'M IMPRESSED, PROFESSOR", 24, 0.33
  Text "NERD! I DIDN'T THINK YOUR", 25, 0.33
  Text "BATTLEFOOLS WOULD GET THIS", 26, 0.33
  Text "FAR! UNFORTUNATELY, THEIR", 25, 0.33
  Text "MISSION ENDS HERE!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "C'MON, GUYS, THE END'S IN", 25, 0.33
  Text "SIGHT! BEAT THE RAT TWO", 23, 0.33
  Text "TIMES, AND HE'LL LEAD YOU", 25, 0.33
  Text "TO THE DARK QUEEN!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THE QUEEN'S PLACED TWO", 22, 0.33
  Text "BOMBS IN THE TOWER! YOU MUST", 28, 0.33
  Text "DEFUSE THEM ALL, OTHERWISE", 26, 0.33
  Text "YOU'RE HISTORY!!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WE'RE ALMOST THERE, 'TOADS!", 27, 0.33
  Text "PUT ON YOUR RUNNING SHOES,", 26, 0.33
  Text "AND LET'S DROP IN ON", 20, 0.33
  Text "THE DARK QUEEN!!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission7TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "YOU'RE IN THE QUEEN'S HOME", 26, 0.33
  Text "TERRITORY NOW, 'TOADS! JUST", 27, 0.33
  Text "TWO RAT RACES, AND YOU GET", 26, 0.33
  Text "TO 'TOADSLAM HER REAL GOOD!!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission8DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "WELL, WELL, WELL, YOU FROGS", 27, 0.33
  Text "MUST THINK YOU'RE REALLY", 24, 0.33
  Text "SOMETHING. WELL, YOU'VE", 23, 0.33
  Text "FOUGHT THE REST, NOW YOU'RE", 27, 0.33
  Text "GONNA LOSE TO THE BEST!", 23, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "I HOPE YOU'RE STILL WATCHING", 28, 0.33
  Text "THIS, BIRD BRAIN, 'CUZ I'M", 26, 0.33
  Text "GONNA FINISH THE BATTLETOADS", 28, 0.33
  Text "OFF MYSELF!", 11, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "JUST YOU AND ME LEFT NOW,", 25, 0.33
  Text "'TOADIES! THERE'S NO ROUNDS,", 28, 0.33
  Text "NO FALLS, NO RULES, AN' WHEN", 28, 0.33
  Text "I'VE FINISHED - NO YOU!", 23, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "PAH! IF YOU WANT A JOB DONE", 27, 0.33
  Text "PROPERLY, NEVER TRUST A", 23, 0.33
  Text "USELESS BUNCH OF PIGS AND", 25, 0.33
  Text "RATS! C'MON 'TOADIES,", 21, 0.33
  Text "LET'S FIGHT!", 12, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "IT'S SHOWDOWN TIME, 'TOADS!!", 28, 0.33
  Text "JUST THE DARK QUEEN STANDS", 26, 0.33
  Text "BETWEEN YOU AND OUR BUDDIES!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "SHOW THAT DARK QUEEN WHO YOU", 28, 0.33
  Text "ARE! YOU AIN'T NO FEEBLE", 24, 0.33
  Text "FROGS - YOU'RE THE", 18, 0.33
  Text "BATTLETOADS!", 12, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WAYDIGO, 'TOADS! THE QUEEN'S", 28, 0.33
  Text "ARMY IS BEATEN, AND SHE'S", 25, 0.33
  Text "SHAKIN' IN FEAR! GO GET HER!", 28, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission8TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "I KNEW YOU'D MAKE IT, 'TOADS!", 29, 0.33
  Text "BOY, I WOULDN'T WANT TO BE", 26, 0.33
  Text "IN THE QUEEN'S SHOES NOW!", 25, 0.33
  Text "SHE'S IN FOR ONE", 16, 0.33
  Text "HUMUNGOUS SURPRISE!!", 20, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

Intermission9DarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "NOOOO, THIS CAN'T BE", 20, 0.33
  Text "HAPPENING!! YOU CAN'T BEAT", 26, 0.33
  Text "ME, I'M THE DARK QUEEN!! I'M", 28, 0.33
  Text "MEAN, I'M NASTY AND I WANT", 26, 0.33
  Text "TO WIN! GRR, I HATE 'TOADS!", 27, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9DarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "IT'S JUST NOT FAIR! I'M FED", 27, 0.33
  Text "UP BEING BEATEN BY A SCRAWNY", 28, 0.33
  Text "BEAK AND HIS SLIMY SWAMP", 24, 0.33
  Text "SWIMMERS!! I'LL GET YOU NEXT", 28, 0.33
  Text "TIME, ALL OF YOU!!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9DarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "UH - YOU WOULDN'T HIT A LADY", 28, 0.33
  Text "WHILE SHE'S DOWN, WOULD YOU?", 28, 0.33
  Text "GOOD, 'CUZ THIS GIVES ME A", 26, 0.33
  Text "CHANCE TO ESCAPE! FAREWELL,", 27, 0.33
  Text "FOUNTAIN FREAKS!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9DarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "WHAT STRENGTH!! BUT DON'T", 25, 0.33
  Text "FORGET, THERE ARE MANY", 22, 0.33
  Text "TYRANTS LIKE ME ALL", 19, 0.33
  Text "OVER THE WORLD!!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9TBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "COSMICALLY COOL!! THE MAD,", 26, 0.33
  Text "BAD N' CRAZY 'TOADS SAVE THE", 28, 0.33
  Text "DAY, AND THE DARK QUEEN IS", 26, 0.33
  Text "NOW THE DARK HAS-BEEN!", 22, 0.33
  Text "HEH-HEH-CACKLE-CACKLE!", 22, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9TBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WOOOOO! I LIKE IT, 'TOADS!", 26, 0.33
  Text "WE SURE TAUGHT THAT DARK", 24, 0.33
  Text "QUEEN NOT TO MESS WITH THE", 26, 0.33
  Text "AWESOME T. BIRD AND HIS", 23, 0.33
  Text "BATTLETOADS!", 12, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9TBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "TOUCHDOWN! THE BATTLIN'", 23, 0.33
  Text "BATTLETOADS COME THROUGH", 24, 0.33
  Text "IN THE LAST QUARTER AND", 23, 0.33
  Text "THE GOOD GUYS WIN AGAIN!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
Intermission9TBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WE'LL HAVE TO WRITE A BOOK", 26, 0.33
  Text "AND MAKE A MOVIE ABOUT YOU", 26, 0.33
  Text "GUYS! IT'LL MAKE ME... ER,", 26, 0.33
  Text "US A FORTUNE!", 13, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

/************************************
Ending Part 1
************************************/

Ending:
  ; TODO make this unskippable?
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 20
  Text "ER...", 5, 2
  .db SCRIPT_BLANK_TBIRD
  StartText 20
  Text "HOLD THE PARTY, 'TOADS...", 25, 2
  .db SCRIPT_BLANK_TBIRD
  StartText 18
  Text "I'VE JUST PICKED UP SILAS", 25, 0.33
  Text "VOLKMIRE ON MY SCANNERS,", 24, 0.33
  Text "TRYING TO ESCAPE USING", 22, 0.33
  Text "A TELEPORTER!!", 14, 4
  .db SCRIPT_BLANK_TBIRD
  StartText 19
  Text "HOLD ON, I'LL LOCATE HIS", 24, 0.33
  Text "TARGET DESTINATION...", 21, 2
  .db SCRIPT_BLANK_TBIRD
  StartText 18
  Text "FOUND IT! TWEAK MY BEAK,", 24, 0.33
  Text "HE'S GONNA APPEAR ABOVE THE", 27, 0.33
  Text "PSICONE BUILDING ANY", 20, 0.33
  Text "MINUTE NOW!!", 12, 4
  .db SCRIPT_BLANK_TBIRD
  StartText 19
  Text "YOU'D BETTER GET BACK HERE", 26, 0.33
  Text "PRONTO, 'TOADS! YOU'RE OUR", 26, 0.33
  Text "ONLY HOPE OF CATCHING HIM!", 26, 3
  .db SCRIPT_FADEOUT
  Picture Ending1Palette,Ending1Tiles,Ending1Tilemap
  StartText 18
  Text "WE'RE BACK ON THE SCENE AN'", 27, 0.33
  Text "RARIN' TO GO, PROF!", 19, 2
  .db SCRIPT_FADEOUT
  Picture Ending2Palette,Ending2Tiles,Ending2Tilemap
  StartText 21
  Text "THERE HE IS, GUYS! QUICK,", 25, 0.33
  Text "INTO THE BATTLECOPTER!", 22, 2
  .db SCRIPT_FADEOUT
  Picture Ending3Palette,Ending3Tiles,Ending3Tilemap
  StartText 21
  Text "PUT YOUR FOOT DOWN PIMPLE,", 26, 0.33
  Text "HE'S GETTIN' AWAY!", 18, 2
  .db SCRIPT_FADEOUT


/*************************************
Ending Part 2 (Bad Ending) (This will probably be left unused)
*************************************/
/*
  StartText 20
  Text "WE'VE CAUGHT UP! HURRY RASH,", 28, 0.33
  Text "FIRE THE MISSILES! WE WON'T", 27, 0.33
  Text "BE ABLE TO STAY WITH HIM", 24, 0.33
  Text "MUCH LONGER!", 12, 4
  Clear 20
  StartText 21
  Text "SO LONG, BATTLELOSERS!!", 23, 0.33
  Text "HA-HA-HA-HA!!", 13, 2
  .db SCRIPT_FADEOUT

;Text 1:
  Text "VOLKMIRE BREATHES A SIGH OF", 27
  Text "RELIEF AS HIS SPACESHIP", 23
  Text "ACCELERATES OUT OF THE", 22
  Text "'TOADS MISSILE RANGE, KNOWING", 29
  Text "THAT HE LIVES TO FIGHT", 22
  Text "ANOTHER DAY.", 12
;Text 2:
  Text "DEJECTED, THE 'TOADS RETURN", 27
  Text "TO PSICONE, THEIR ONLY", 22
  Text "CONSOLATION BEING THAT HIS", 26
  Text "PARTNER IN CRIME, THE DARK", 26
  Text "QUEEN, WON'T BE CAUSING", 23
  Text "ANY MORE TROUBLE.", 0.33
;Text 3:
  Text "BUT WITH VOLKMIRE FREE, AND", 27
  Text "THE QUEEN WANTING REVENGE,", 26
  Text "IT WILL ONLY BE A MATTER OF", 27
  Text "TIME BEFORE THE DIRE", 20
  Text "DUO TRY AGAIN...", 16
;Text 4:
  Text "THE END?", 8
*/
/*************************************
Ending Part 2 (Good Ending)
*************************************/
  Picture EndingGood1Palette,EndingGood1Tiles,EndingGood1Tilemap
  StartText 20
  Text "WE'VE CAUGHT UP! HURRY RASH,", 28, 0.33
  Text "FIRE THE MISSILES! WE WON'T", 27, 0.33
  Text "BE ABLE TO STAY WITH HIM", 24, 0.33
  Text "MUCH LONGER!", 12, 4
  .db SCRIPT_FADEOUT
  Picture EndingGood2Palette,EndingGood2Tiles,EndingGood2Tilemap
  StartText 21
  Text "ARRGGGHHHHHHH!", 14, 1
  .db SCRIPT_FADEOUT
  
  .db SCRIPT_RESTORESCREEN
  StartText 2
  Text "AND SO, THE SINISTER SILAS", 26, 0.33
  Text "VOLKMIRE IS ONCE AGAIN", 22, 0.33
  Text "THWARTED BY THE VICTORIOUS", 26, 0.33
  Text "BATTLETOADS.", 12, 4
  StartText 7
  Text "VOLKMIRE'S BURNT OUT SHIP IS", 28, 0.33
  Text "RETRIEVED FROM THE HIMALAYAS,", 29, 0.33
  Text "BUT OF HIS BODY, THERE IS", 25, 0.33
  Text "NO TRACE...", 11, 4
  StartText 12
  Text "WHO KNOWS WHAT HAPPENED TO", 26, 0.33
  Text "HIM, BUT YOU CAN BE SURE OF", 27, 0.33
  Text "ONE THING - BOTH HE AND THE", 27, 0.33
  Text "DARK QUEEN WILL REMEMBER THE", 28, 0.33
  Text "DAY THEY TOOK ON THE", 20, 0.33
  Text "BATTLETOADS - AND LOST!!", 24, 5
  StartText 20
  Text "THE END.", 8, 5
  
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

/*************************************
Continue (in the Master System version these messages appear before continuing, not after continuing like in the SNES)
*************************************/

ContinueA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THINGS ARE LOOKING GOOD,", 24, 0.33
  Text "'TOADS. GOOD FOR THE DARK", 25, 0.33
  Text "QUEEN IF THAT'S YOUR BEST", 25, 0.33
  Text "EFFORT! GET A GRIP GUYS -", 25, 0.33
  Text "LET'S MOTIVATE!", 15, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
ContinueB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "WHADYA MEAN, THE ACTION GOT", 27, 0.33
  Text "TOO THICK HERE? I'LL GIVE", 25, 0.33
  Text "YOU A THICK EAR IF YOU DON'T", 28, 0.33
  Text "RESCUE MICHIKO AND ZITZ!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
ContinueC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "DID THE NASTY QUEEN NOT PLAY", 28, 0.33
  Text "FAIR? AH, SHAME... NOW", 22, 0.33
  Text "GET BACK IN THERE AND", 21, 0.33
  Text "ROAST SOME PORK!", 16, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
ContinueD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "I CAN'T BELIEVE WHAT'S", 22, 0.33
  Text "HAPPENING. EVEN I COULD'VE", 26, 0.33
  Text "BEATEN THAT! C'MON 'TOADS,", 26, 0.33
  Text "GET MAD, BAD 'N' CRAZY!!", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

/*************************************
Game Over (not found in the original Master System version)
*************************************/

GameOverDarkQueenA:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOU'RE NO MATCH FOR ME! I'M", 27, 0.33
  Text "THE STRONGEST WOMAN IN", 22, 0.33
  Text "THE UNIVERSE!!", 14, 3
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverDarkQueenB:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "YOU'VE GOT A LOT TO LEARN,", 26, 0.33
  Text "BEFORE YOU BEAT ME. TRY", 23, 0.33
  Text "AGAIN, 'TOADIES! HA-HA-HA-HA!", 29, 3
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverDarkQueenC:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "IS THAT THE BEST YOUR SWAMP", 27, 0.33
  Text "CRAWLERS CAN DO, TURKEY", 23, 0.33
  Text "BRAINS? I FEEL SORRY FOR", 24, 0.33
  Text "YOU, I REALLY DO!!", 18, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverDarkQueenD:
  Picture DarkQueenPalette,DarkQueenTiles,DarkQueenTilemap
  StartText 19
  Text "AND ANOTHER 'TOAD BITES THE", 27, 0.33
  Text "DUST! C'MON BEAKY, TAKE A", 25, 0.33
  Text "PICTURE OF THE BEATEN", 21, 0.33
  Text "BATTLEFAILURES FOR YOUR", 23, 0.33
  Text "FREAKY FAMILY ALBUM!", 20, 5
  Clear 19
  StartText 19
  Text "HA-HA-HA-HA!", 12, 1
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverTBirdA:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "OUR LUCK'S FINALLY RUN OUT,", 27, 0.33
  Text "'TOADS, AND WE'RE OUT OF THE", 28, 0.33
  Text "GAME. HEAD BACK TO BASE AND", 27, 0.33
  Text "WE'LL PLAN A REMATCH....", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverTBirdB:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "IT'S ALL OVER, I NEVER", 22, 0.33
  Text "THOUGHT I'D SEE THE BATTLE", 26, 0.33
  Text "'TOADS BEATEN. IT'S A SAD", 25, 0.33
  Text "DAY FOR ALL 'TOADKIND...", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverTBirdC:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "NO MORE CHANCES, 'TOADS.", 24, 0.33
  Text "TIME'S UP AND WE'VE LOST BY", 27, 0.33
  Text "A WASHOUT. WE'LL HAVE TO", 24, 0.33
  Text "REGROUP AND TRY AGAIN...", 24, 4
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK
GameOverTBirdD:
  Picture TBirdPalette,TBirdTiles,TBirdTilemap
  StartText 18
  Text "THAT'S IT, THE GAME'S OVER", 26, 0.33
  Text "FOR US, FINITO, END OF THE", 26, 0.33
  Text "LINE... WE'D BETTER RETURN", 26, 0.33
  Text "TO PSICONE AND WORK OUT", 23, 0.33
  Text "A NEW PLAN.", 11, 5
  .db SCRIPT_FADEOUT
  .db SCRIPT_END_BLANK

GameModeScreenScript:
  Picture ToadsPalette, ToadsTiles, ToadsTilemap
  TextAt 11, 15, "1 PLAYER"
  TextAt 11, 17, "2 PLAYERS A"
  TextAt 11, 19, "2 PLAYERS B"
  TextAt 11, 21, "OPTIONS"
.db SCRIPT_END_NOBLANK

GameOverPimple:
  Picture GameOverPimplePalette, GameOverPimpleTiles, GameOverPimpleTilemap
.db SCRIPT_END_NOBLANK
GameOverRash:
  Picture GameOverRashPalette, GameOverRashTiles, GameOverRashTilemap
.db SCRIPT_END_NOBLANK
GameOverText:
  TextAt 11, 13, "GAME OVER"
.db SCRIPT_END_NOBLANK

CompletePimple:
  Picture CompletePimplePalette, CompletePimpleTiles, CompletePimpleTilemap
  TextAt 26,2 "GAME"
  TextAt 21,4 "COMPLETED"
  TextAt 26,13 "YOUR"
  TextAt 25,15 "FINAL"
  TextAt 25,17 "SCORE"
  TextAt 24,21 "" ; ready for score
.db SCRIPT_END_NOBLANK
CompleteRash:
  Picture CompleteRashPalette, CompleteRashTiles, CompleteRashTilemap
  TextAt 3,2 "GAME"
  TextAt 3,4 "COMPLETED"
  TextAt 3,14 "YOUR FINAL"
  TextAt 3,16 "SCORE"
  TextAt 3,19 "" ; ready for score
.db SCRIPT_END_NOBLANK
Complete2Player:
  Picture Complete2PlayerPalette, Complete2PlayerTiles, Complete2PlayerTilemap
  TextAt 10,13 "GAME COMPLETED"
  TextAt 8,16 "YOUR FINAL SCORES"
  TextAt 7,19 "PIMPLE"
  TextAt 21,19 "RASH"
  TextAt 20,21 "" ; ready for P2 score
.db SCRIPT_END_NOBLANK
.endb
.ends

.bank 0 slot 0
.section "Decompressor" free
.block "Decompressor"
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
.endb
.ends

; Palettes need to be in the lower 32KB
; We make a macro to make it slightly easier to squeeze them into gaps...
.macro NewSection
.ends
.section "Autogenerated section \@" free
.endm

.bank 0 slot 0
.section "Palettes" free
Intro1Palette:
.incbin "images\intro1.png.palette.bin"
  NewSection
Intro2Palette:
.incbin "images\intro2.png.palette.bin"
  NewSection
Intro3Palette:
.incbin "images\intro3.png.palette.bin"
  NewSection
Intro4Palette:
.incbin "images\intro4.png.palette.bin"
  NewSection
Intro5Palette:
.incbin "images\intro5.png.palette.bin"
  NewSection
Intro6Palette:
.incbin "images\intro6.png.palette.bin"
  NewSection
Intro7Palette:
.incbin "images\intro7.png.palette.bin"
  NewSection
Intro8Palette:
.incbin "images\intro8.png.palette.bin"
  NewSection
Intro9Palette:
.incbin "images\intro9.png.palette.bin"
  NewSection
Intro10Palette:
.incbin "images\intro10.png.palette.bin"
  NewSection
Intro11Palette:
.incbin "images\intro11.png.palette.bin"
  NewSection
DarkQueenPalette:
.incbin "images\Dark Queen.png.palette.bin"
  NewSection
TBirdPalette:
.incbin "images\T-Bird.png.palette.bin"
  NewSection
TitlePalette:
.incbin "images\Title.png.palette.bin"
  NewSection
PreTitlePalette:
.incbin "images\PreTitle.png.palette.bin"
  NewSection
VirginLogoPalette:
.incbin "images\Virgin logo.png.palette.bin"
  NewSection
LegalsPalette:
.incbin "images\Legals.png.palette.bin"
  NewSection
ToadsPalette:
.incbin "images\Toads.png.palette.bin"
  NewSection
GameOverPimplePalette:
.incbin "images\Game Over - Pimple.png.palette.bin"
  NewSection
GameOverRashPalette:
.incbin "images\Game Over - Rash.png.palette.bin"
  NewSection
CompleteRashPalette:
.incbin "images\Complete 1 player - Rash.png.palette.bin"
  NewSection
CompletePimplePalette:
.incbin "images\Complete 1 player - Pimple.png.palette.bin"
  NewSection
Complete2PlayerPalette:
.incbin "images\Complete 2 players.png.palette.bin"
  NewSection
Ending1Palette:
.incbin "images\Ending 01.png.palette.bin"
  NewSection
Ending2Palette:
.incbin "images\Ending 02.png.palette.bin"
  NewSection
Ending3Palette:
.incbin "images\Ending 03.png.palette.bin"
  NewSection
EndingGood1Palette:
.incbin "images\Ending Good 01.png.palette.bin"
  NewSection
EndingGood2Palette:
.incbin "images\Ending Good 02.png.palette.bin"
/*
  NewSection
EndingBad1Palette:
.incbin "images\Ending Bad 01.png.palette.bin"
  NewSection
EndingBad2Palette:
.incbin "images\Ending Bad 02.png.palette.bin"
*/
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
.unbackground $3b8e $3c6b ; intermission screens handler
.orga $3b8e
.section "Intermission replacement" force
  ld a,(PAGING_REGISTER_2)
  push af
    ld ix,$3000 + 32 * 4
    call LoadFont
    ld a,:Intermission
    ld (PAGING_REGISTER_2),a
    call Intermission
  pop af
  ld (PAGING_REGISTER_2),a
  ret
.ends

.orga $3f74
.unbackground $3f74 $40ad ; pre-title screens up to title screen
.section "Pre-title and title replacement" force
TitleScreenStart:
  ld a,MUSIC_TITLE
  call PlayMusicTrampoline
  ld ix,$3000 + 32 * 4
  call LoadFont
TitleScreenLoop:
  ld a,(PAGING_REGISTER_2)
  push af
    ld a,:Title
    ld (PAGING_REGISTER_2),a
    call Title
  pop af
  ld (PAGING_REGISTER_2),a
  jp $40ad
.ends

.slot 1
.section "Virgin logo" superfree
VirginLogoTiles:
.incbin "images\Virgin logo.png.tiles.zx7"
VirginLogoTilemap:
.incbin "images\Virgin logo.png.tilemap.zx7"
.ends

.section "Pre-title text" superfree
PreTitleTiles:
.incbin "images\PreTitle.png.tiles.zx7"
PreTitleTilemap:
.incbin "images\PreTitle.png.tilemap.zx7"
.ends

.section "Legals" superfree
LegalsTiles:
.incbin "images\Legals.png.tiles.zx7"
LegalsTilemap:
.incbin "images\Legals.png.tilemap.zx7"
.ends


.section "Starfield" superfree
StarfieldTilemap:
.incbin "images\Starfield.png.tilemap.zx7"
.ends


.section "Title screen" superfree
TitleTiles:
.incbin "images\Title.png.tiles.zx7"
TitleTilemap:
.incbin "images\Title.png.tilemap.zx7"
.ends

; Font replacement
.bank 0 slot 0
.unbackground $1557 $1582 ; code
.unbackground $816D $88ed ; data
.orga $1557
.section "Font loader trampoline" force
LoadFont:
  ld a,(PAGING_REGISTER_2)
  push af
    ld a,:LoadFontImpl
    ld (PAGING_REGISTER_2),a
    call LoadFontImpl
  pop af
  ld (PAGING_REGISTER_2),a
  ret
.ends

.bank 16 slot 2 ; needs to match the decompressor page
.section "Font loader implementation" free
LoadFontImpl:
  ; Takes a VRAM address in ix which we need to convert to a tile index by dividing by 32
  push ix
  pop de
  .repeat 5
  srl d
  rr e
  .endr
  ld ($c751),de ; and save here

  ; Now load it
  push ix
  pop de
  set 6,d ; set the write flag
  ld hl,Font
  call decompress ; and ret
  
  ; We also set the palette
  ld hl, FontPalette
  ld (RAM_SpritePalettePointer), hl
  ld (RAM_TilePalettePointer), hl
  call LoadPalettes
  ret
  
Font:
;.incbin "images\fonts\original.png.tiles.zx7"
.incbin "images\fonts\SNES.png.tiles.zx7"
.ends
; Palettes need to e in the first 16KB
.bank 0 slot 0
.section "Font palette" free
FontPalette:
.incbin "images\fonts\original.png.palette.bin"
.ends

.bank 0 slot 0
.unbackground $3C6C $3CD7 ; Game mode selection screen
.orga $3C6C
.section "Game mode screen replacement" force
  ld a,(PAGING_REGISTER_2)
  push af
    ld ix,$3000 + 32 * 4
    call LoadFont
    ld a,:GameModeScreen
    ld (PAGING_REGISTER_2),a
    call GameModeScreen
  pop af
  ld (PAGING_REGISTER_2),a
  
  ; Some stuff the game does which we need to replicate...
  xor a
  ld ($C859), a
  ld (RAM_IntroButtonPressed), a
  ld ($C776), a
  ld hl, $C400
  ld ($C777), hl

  ; Back to the normal code flow
  jp $3cd8 ; wait for button
.ends

.slot 1
.section "Game mode screen data" superfree
ToadsTiles:
.incbin "images\Toads.png.tiles.zx7"
ToadsTilemap:
.incbin "images\Toads.png.tilemap.zx7"
.ends


.bank 0 slot 0
.unbackground $3a6e $3aca
.orga $3a6e
.section "Game over replacement" force
  call ResetScrollTile0AndTilemap
  ld ix,$3000 + 32 * 4
  call LoadFont
  ld a,:GameOverScreen
  ld (PAGING_REGISTER_2),a
  call GameOverScreen
  jp $3aca
.ends

.slot 1
.section "Game over screen data - Pimple" superfree
GameOverPimpleTiles:
.incbin "images\Game Over - Pimple.png.tiles.zx7"
GameOverPimpleTilemap:
.incbin "images\Game Over - Pimple.png.tilemap.zx7"
.ends
.section "Game over screen data - Rash" superfree
GameOverRashTiles:
.incbin "images\Game Over - Rash.png.tiles.zx7"
GameOverRashTilemap:
.incbin "images\Game Over - Rash.png.tilemap.zx7"
.ends
.section "Complete screen data - Pimple" superfree
CompletePimpleTiles:
.incbin "images\Complete 1 player - Pimple.png.tiles.zx7"
CompletePimpleTilemap:
.incbin "images\Complete 1 player - Pimple.png.tilemap.zx7"
.ends
.section "Complete screen data - Rash" superfree
CompleteRashTiles:
.incbin "images\Complete 1 player - Rash.png.tiles.zx7"
CompleteRashTilemap:
.incbin "images\Complete 1 player - Rash.png.tilemap.zx7"
.ends
.section "Complete screen data - 2 players" superfree
Complete2PlayerTiles:
.incbin "images\Complete 2 players.png.tiles.zx7"
Complete2PlayerTilemap:
.incbin "images\Complete 2 players.png.tilemap.zx7"
.ends
.section "Ending graphics 1" superfree
Ending1Tiles:   .incbin "images\Ending 01.png.tiles.zx7"
Ending1Tilemap: .incbin "images\Ending 01.png.tilemap.zx7"
.ends
.section "Ending graphics 2" superfree
Ending2Tiles:   .incbin "images\Ending 02.png.tiles.zx7"
Ending2Tilemap: .incbin "images\Ending 02.png.tilemap.zx7"
.ends
.section "Ending graphics 3" superfree
Ending3Tiles:   .incbin "images\Ending 03.png.tiles.zx7"
Ending3Tilemap: .incbin "images\Ending 03.png.tilemap.zx7"
.ends
.section "Ending graphics Good 1" superfree
EndingGood1Tiles:   .incbin "images\Ending Good 01.png.tiles.zx7"
EndingGood1Tilemap: .incbin "images\Ending Good 01.png.tilemap.zx7"
.ends
.section "Ending graphics Good 2" superfree
EndingGood2Tiles:   .incbin "images\Ending Good 02.png.tiles.zx7"
EndingGood2Tilemap: .incbin "images\Ending Good 02.png.tilemap.zx7"
.ends


.bank 2 slot 2
.unbackground $8ee9 $bbff
.orga $8ee9
.section "Credits text" force
; This is the original game data format.
; There's plenty of room for expansion.
; It comes out in uppercase, so we store it as such,
; although for some reason the original uses lowercase here.
; We centre the text just by left-padding - the left-padding 
; should be floor((27-width)/2). A zero means end of line.

.macro CreditsText args s
  .if s.length > 0
    .if s.length < 26
      .dsb (27-s.length)/2, ' '
    .endif
    .db s
  .endif
  .db 0
.endm

  CreditsText "CONVERTED IN THE UK"
  CreditsText ""
  CreditsText "BY"
  CreditsText "SYROX DEVELOPMENTS LTD"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "PROGRAMMER"
  CreditsText ""
  CreditsText "DOMINIC WOOD"
  CreditsText ""
  CreditsText ""
  CreditsText "GRAPHIC ARTIST"
  CreditsText ""
  CreditsText "JOCK GREEN"
  CreditsText ""
  CreditsText ""
  CreditsText "MUSIC AND SOUND"
  CreditsText ""
  CreditsText "KRISALIS:"
  CreditsText "MATT FURNISS"
  CreditsText "SHAUN HOLLINGWORTH"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "VIRGIN INTERACTIVE"
  CreditsText "ENTERTAINMENT (EUROPE) LTD"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "PRODUCT PRODUCER"
  CreditsText ""
  CreditsText "MATTHEW SPALL"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "BATTLEMANIACS RESTORATION"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "PROGRAMMER"
  CreditsText ""
  CreditsText "MAXIM"
  CreditsText ""
  CreditsText ""
  CreditsText "MUSIC"
  CreditsText ""
  CreditsText "MOTAVIAN RAIDER",0
  CreditsText ""
  CreditsText ""
  CreditsText "ARTIST"
  CreditsText ""
  CreditsText "PYRON"
  CreditsText ""
  CreditsText ""
  CreditsText "COORDINATOR"
  CreditsText ""
  CreditsText "WESKER"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "SPECIAL THANKS"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "ZITZ"
  CreditsText ""
  CreditsText "RASH"
  CreditsText ""
  CreditsText "PIMPLE"
  CreditsText ""
  CreditsText "PROFESSOR T. BIRD"
  CreditsText ""
  CreditsText "MICHIKO TASHOKU"
  CreditsText ""
  CreditsText "YURIKO TASHOKU"
  CreditsText ""
  CreditsText "PSICONE CORPORATION"
  CreditsText ""
  CreditsText "NOT SO SPECIAL THANKS"
  CreditsText ""
  CreditsText "THE EVIL DARK QUEEN"
  CreditsText ""
  CreditsText "SILAS VOLKMIRE"
  CreditsText ""
  CreditsText "KARNATH"
  CreditsText ""
  CreditsText "SCUZZ"
  CreditsText ""
  CreditsText "FUZZ"
  CreditsText ""
  CreditsText "SPARKZ"
  CreditsText ""
  CreditsText "THE GREAT RATSO"
  CreditsText ""
  CreditsText "THE RAT WORKERS"
  CreditsText ""
  CreditsText "THE PIGS OF THE APOCALYPSE"
  CreditsText ""
  CreditsText "ROCKY THE STONE PIG"
  CreditsText ""
  CreditsText "THE PORKA PIGS"
  CreditsText ""
  CreditsText "THE SKELLINGTON BONES"
  CreditsText ""
  CreditsText "THE SATURN TOADTRAPS"
  CreditsText ""
  CreditsText "THE WASPLINGS"
  CreditsText ""
  CreditsText "THE LAZBOTS"
  CreditsText ""
  CreditsText "THE TURBO TUNNEL WALLS"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "VERY SPECIAL THANKS"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "RARE LTD"
  CreditsText ""
  CreditsText "TRADEWEST, INC"
  CreditsText ""
  CreditsText "SEGA ENTERPRISES, LTD"
  CreditsText ""
  CreditsText "THE SMS POWER! COMMUNITY"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText "AND"
  CreditsText ""
  CreditsText "YOU"
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
  CreditsText ""
CreditsEnd:
.ends

.bank 0 slot 0
.orga $39d7
.section "Patch credits palette" overwrite
  jp $39e0
.ends
.orga $39d7

.orga $3a5c
.section "Patch credits ending pointer" overwrite
  ld de,CreditsEnd
.ends


.bank 0 slot 0
.orga $3382
.section "Continue hook" overwrite
  call ContinuePatch
.ends
.section "Continue patch" free
ContinuePatch:
  ld a,(PAGING_REGISTER_2)
  push af
    ld a,:Continue
    ld (PAGING_REGISTER_2),a
    call Continue
  pop af
  ld (PAGING_REGISTER_2),a

  ; What we replaced to get here...  
  ld a, (RAM_CharacterDataPointer)
  ret
.ends

.orga $334f
.section "Game over hook" overwrite
  ; was jp z,$30B4 = back to title screen
  jp z,GameOverPatch
.ends
.section "Game over patch" free
GameOverPatch:
  ld a,(PAGING_REGISTER_2)
  push af
    ld a,:GameOver
    ld (PAGING_REGISTER_2),a
    call GameOver
  pop af
  ld (PAGING_REGISTER_2),a

  ; What we replaced to get here...  
  jp $30B4
.ends

.unbackground $3914 $39B8
.orga $3914
.section "Game complete patch" force
  ld a,(PAGING_REGISTER_2)
  push af
    ld a,:GameComplete
    ld (PAGING_REGISTER_2),a
    call GameComplete
  pop af
  ld (PAGING_REGISTER_2),a

  jp $39B9
.ends

.bank 1 slot 1
.unbackground $51D0 $51df
.unbackground $88ED $8A4C
.orga $51D0
.section "In-game font replacement" force
  ld a,:InGameFontTiles
  ld (PAGING_REGISTER_2),a
  ld hl,InGameFontTiles
  ld de,$76A0
  call zx7_decompress ; we call the decompressor directly
  nop ; fill space
  nop
; Original:
;	ld a, $C2
;	ld (_RAM_FFFF_), a
;	ld hl, _DATA_88ED_InGameNumbers
;	ld de, $36A0 ; Destination
;	ld b, $0B ; Count
;	call _LABEL_6A7_EmitTiles
.ends

.slot 2
.section "In-game font data" superfree
InGameFontTiles:
.incbin "images/fonts/In-game font.png.tiles.zx7"
.ends
