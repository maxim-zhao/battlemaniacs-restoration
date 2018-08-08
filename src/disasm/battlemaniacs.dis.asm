; This disassembly was created using Emulicious (http://www.emulicious.net)
.MEMORYMAP
SLOTSIZE $7FF0
SLOT 0 $0000
SLOTSIZE $10
SLOT 1 $7FF0
SLOTSIZE $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME
.ROMBANKMAP
BANKSTOTAL 16
BANKSIZE $7FF0
BANKS 1
BANKSIZE $10
BANKS 1
BANKSIZE $4000
BANKS 14
.ENDRO

.enum $C000 export
_RAM_C000_ dsb $e
_RAM_C00E_ db
.ende

.enum $C016 export
_RAM_C016_ db
_RAM_C017_ db
.ende

.enum $C01A export
_RAM_C01A_ db
.ende

.enum $C01C export
_RAM_C01C_ db
_RAM_C01D_ db
_RAM_C01E_ db
_RAM_C01F_ db
_RAM_C020_ db
_RAM_C021_ db
.ende

.enum $C02F export
_RAM_C02F_ db
.ende

.enum $C037 export
_RAM_C037_ db
_RAM_C038_ db
.ende

.enum $C03B export
_RAM_C03B_ db
.ende

.enum $C03D export
_RAM_C03D_ db
_RAM_C03E_ db
_RAM_C03F_ db
_RAM_C040_ db
_RAM_C041_ db
_RAM_C042_ db
.ende

.enum $C050 export
_RAM_C050_ db
.ende

.enum $C058 export
_RAM_C058_ db
_RAM_C059_ db
.ende

.enum $C05C export
_RAM_C05C_ db
.ende

.enum $C05E export
_RAM_C05E_ db
_RAM_C05F_ db
_RAM_C060_ db
_RAM_C061_ db
_RAM_C062_ db
_RAM_C063_ db
.ende

.enum $C071 export
_RAM_C071_ db
.ende

.enum $C079 export
_RAM_C079_ db
_RAM_C07A_ db
.ende

.enum $C07D export
_RAM_C07D_ db
_RAM_C07E_ db
_RAM_C07F_ db
_RAM_C080_ db
_RAM_C081_ db
_RAM_C082_ db
_RAM_C083_ db
_RAM_C084_ db
.ende

.enum $C09A export
_RAM_C09A_ db
_RAM_C09B_ db
.ende

.enum $C09E export
_RAM_C09E_ db
.ende

.enum $C0A0 export
_RAM_C0A0_ db
_RAM_C0A1_ db
_RAM_C0A2_ db
_RAM_C0A3_ db
_RAM_C0A4_ db
_RAM_C0A5_ db
.ende

.enum $C0BB export
_RAM_C0BB_ db
_RAM_C0BC_ db
.ende

.enum $C0BF export
_RAM_C0BF_ db
_RAM_C0C0_ db
_RAM_C0C1_ db
_RAM_C0C2_ db
_RAM_C0C3_ db
_RAM_C0C4_ db
_RAM_C0C5_ db
.ende

.enum $C0C7 export
_RAM_C0C7_ db
_RAM_C0C8_ db
_RAM_C0C9_Audio_CurrentMusicSequence db
_RAM_C0CA_ db
_RAM_C0CB_ db
_RAM_C0CC_ db
.ende

.enum $C0CE export
_RAM_C0CE_ db
_RAM_C0CF_ db
_RAM_C0D0_ db
_RAM_C0D1_ db
_RAM_C0D2_AudioEnabled db
_RAM_C0D3_ db
_RAM_C0D4_ db
_RAM_C0D5_ db
_RAM_C0D6_ db
_RAM_C0D7_ db
.ende

.enum $C0FF export
_RAM_C0FF_ db
_RAM_C100_ db
_RAM_C101_ db
.ende

.enum $C180 export
_RAM_C180_ db
.ende

.enum $C200 export
_RAM_C200_ db
_RAM_C201_ db
.ende

.enum $C280 export
_RAM_C280_ db
_RAM_C281_ db
_RAM_C282_ db
_RAM_C283_ db
_RAM_C284_ db
_RAM_C285_ db
_RAM_C286_ db
_RAM_C287_ db
_RAM_C288_ db
_RAM_C289_ db
_RAM_C28A_ dw
_RAM_C28C_ dw
_RAM_C28E_ dw
_RAM_C290_ dw
_RAM_C292_ dw
.ende

.enum $C300 export
_RAM_C300_ db
_RAM_C301_ db
.ende

.enum $C3C0 export
_RAM_C3C0_ db
.ende

.enum $C400 export
_RAM_C400_ dw
_RAM_C402_ db
_RAM_C403_ db
_RAM_C404_ db
_RAM_C405_ db
_RAM_C406_ dsb $3
.ende

.enum $C424 export
_RAM_C424_ db
.ende

.enum $C426 export
_RAM_C426_ dw
.ende

.enum $C430 export
_RAM_C430_ dw
_RAM_C432_ db
_RAM_C433_ db
_RAM_C434_ db
_RAM_C435_ db
.ende

.enum $C44B export
_RAM_C44B_ db
.ende

.enum $C454 export
_RAM_C454_ db
.ende

.enum $C456 export
_RAM_C456_ dw
.ende

.enum $C460 export
_RAM_C460_ dsb $1e
_RAM_C47E_ db
.ende

.enum $C4C0 export
_RAM_C4C0_ dsb $30
_RAM_C4F0_ dsb $10
_RAM_C500_ dsb $170
_RAM_C670_ db
.ende

.enum $C700 export
_RAM_C700_ dsb $8
.ende

.enum $C710 export
_RAM_C710_ db
_RAM_C711_ db
.ende

.enum $C751 export
_RAM_C751_TextToVRAMBaseTilemapData dw
.ende

.enum $C755 export
_RAM_C755_ dw
_RAM_C757_CheatEnabled db
.ende

.enum $C75B export
_RAM_C75B_ db
.ende

.enum $C762 export
_RAM_C762_ db
_RAM_C763_ db
_RAM_C764_ db
_RAM_C765_ db
_RAM_C766_ db
_RAM_C767_ db
_RAM_C768_ db
_RAM_C769_SpritePalettePointer dw
_RAM_C76B_ dw
_RAM_C76D_ db
_RAM_C76E_ db
_RAM_C76F_ db
_RAM_C770_SwapButtons db
_RAM_C771_Is2Player db
.ende

.enum $C773 export
_RAM_C773_ db
_RAM_C774_Player1Player db
_RAM_C775_ db
_RAM_C776_ db
_RAM_C777_ dw
_RAM_C779_GameState db
_RAM_C77A_ db
_RAM_C77B_ dsb $4
_RAM_C77F_ db
.ende

.enum $C781 export
_RAM_C781_ db
_RAM_C782_ db
.ende

.enum $C786 export
_RAM_C786_ dsb $4
_RAM_C78A_ db
.ende

.enum $C78C export
_RAM_C78C_ db
_RAM_C78D_ db
.ende

.enum $C791 export
_RAM_C791_ db
_RAM_C792_LevelNumber db
_RAM_C793_ db
_RAM_C794_ db
_RAM_C795_ db
.ende

.enum $C797 export
_RAM_C797_ db
_RAM_C798_ db
_RAM_C799_ db
_RAM_C79A_ db
_RAM_C79B_ dw
_RAM_C79D_ db
_RAM_C79E_ db
_RAM_C79F_ db
_RAM_C7A0_ dw
_RAM_C7A2_ db
.ende

.enum $C7A5 export
_RAM_C7A5_ db
_RAM_C7A6_ db
_RAM_C7A7_ dw
_RAM_C7A9_ db
_RAM_C7AA_ db
_RAM_C7AB_ db
_RAM_C7AC_ db
_RAM_C7AD_ dw
_RAM_C7AF_ db
_RAM_C7B0_ dw
_RAM_C7B2_ dw
_RAM_C7B4_ dw
.ende

.enum $C7B9 export
_RAM_C7B9_ db
.ende

.enum $C7BB export
_RAM_C7BB_ dw
.ende

.enum $C7BE export
_RAM_C7BE_ dw
_RAM_C7C0_ db
.ende

.enum $C7C5 export
_RAM_C7C5_ db
.ende

.enum $C7C7 export
_RAM_C7C7_TilePalettePointer dw
.ende

.enum $C7CF export
_RAM_C7CF_ dw
_RAM_C7D1_ dw
_RAM_C7D3_ dw
_RAM_C7D5_ dw
_RAM_C7D7_ dw
_RAM_C7D9_ dw
_RAM_C7DB_ db
_RAM_C7DC_ db
_RAM_C7DD_ db
_RAM_C7DE_ db
.ende

.enum $C7E3 export
_RAM_C7E3_ dw
_RAM_C7E5_ dw
_RAM_C7E7_ dw
_RAM_C7E9_ dw
_RAM_C7EB_ db
_RAM_C7EC_ dw
_RAM_C7EE_ db
.ende

.enum $C7F1 export
_RAM_C7F1_ db
.ende

.enum $C7F4 export
_RAM_C7F4_ db
.ende

.enum $C7F7 export
_RAM_C7F7_ db
.ende

.enum $C7FA export
_RAM_C7FA_ db
.ende

.enum $C7FD export
_RAM_C7FD_ db
.ende

.enum $C80C export
_RAM_C80C_ db
.ende

.enum $C81C export
_RAM_C81C_ db
_RAM_C81D_ dw
_RAM_C81F_ dw
_RAM_C821_ db
_RAM_C822_ScrollCounter .db
_RAM_C822_IntroButtonPressed dw
_RAM_C824_ db
_RAM_C825_ db
_RAM_C826_ db
.ende

.enum $C82A export
_RAM_C82A_ db
_RAM_C82B_ db
_RAM_C82C_ db
.ende

.enum $C82F export
_RAM_C82F_DirectionsPressed db
_RAM_C830_ db
_RAM_C831_ButtonsPressed db
_RAM_C832_ db
.ende

.enum $C837 export
_RAM_C837_Player2InputsEnabled db
_RAM_C838_ db
_RAM_C839_ db
.ende

.enum $C83C export
_RAM_C83C_ db
_RAM_C83D_ db
.ende

.enum $C83F export
_RAM_C83F_ db
_RAM_C840_ db
_RAM_C841_ db
_RAM_C842_ dw
_RAM_C844_ dw
_RAM_C846_ dw
_RAM_C848_ dw
_RAM_C84A_ dw
_RAM_C84C_ db
_RAM_C84D_ db
_RAM_C84E_ db
_RAM_C84F_ db
_RAM_C850_ db
_RAM_C851_FrameCounter db
_RAM_C852_ db
_RAM_C853_ db
_RAM_C854_TextToVRAMDestPointer dw
_RAM_C856_TextToVRAM_XY dw
.ende

.enum $C859 export
_RAM_C859_ db
_RAM_C85A_ dw
_RAM_C85C_AudioEnabled db
.ende

.enum $C85E export
_RAM_C85E_ db
.ende

.enum $C861 export
_RAM_C861_ db
.ende

.enum $C864 export
_RAM_C864_ dw
.ende

.enum $C869 export
_RAM_C869_ dw
_RAM_C86B_ dw
_RAM_C86D_ db
_RAM_C86E_ db
_RAM_C86F_ db
.ende

.enum $C871 export
_RAM_C871_ db
.ende

.enum $C875 export
_RAM_C875_ db
.ende

.enum $C880 export
_RAM_C880_ db
.ende

.enum $C8AE export
_RAM_C8AE_ db
.ende

.enum $C8B1 export
_RAM_C8B1_ db
.ende

.enum $C8B3 export
_RAM_C8B3_ db
.ende

.enum $C8B5 export
_RAM_C8B5_ db
_RAM_C8B6_ db
_RAM_C8B7_ db
.ende

.enum $C8BA export
_RAM_C8BA_ db
_RAM_C8BB_ db
_RAM_C8BC_ db
_RAM_C8BD_ db
.ende

.enum $C8C1 export
_RAM_C8C1_ db
_RAM_C8C2_ db
_RAM_C8C3_ db
_RAM_C8C4_ dw
_RAM_C8C6_CharacterDataPointer dw
_RAM_C8C8_ db
_RAM_C8C9_ dw
.ende

.enum $CA00 export
_RAM_CA00_ dsb $100
_RAM_CB00_ db
.ende

.enum $D000 export
_RAM_D000_ db
.ende

.enum $D200 export
_RAM_D200_ dsb $480
.ende

.enum $DA00 export
_RAM_DA00_ db
_RAM_DA01_ db
.ende

.enum $DA03 export
_RAM_DA03_ db
.ende

.enum $DA05 export
_RAM_DA05_ db
.ende

.enum $DA08 export
_RAM_DA08_ db
.ende

.enum $DA0C export
_RAM_DA0C_ db
.ende

.enum $DA0F export
_RAM_DA0F_ db
.ende

.enum $DA13 export
_RAM_DA13_ dw
.ende

.enum $DA16 export
_RAM_DA16_ db
.ende

.enum $DA1A export
_RAM_DA1A_ dw
.ende

.enum $DA1D export
_RAM_DA1D_ db
.ende

.enum $DA20 export
_RAM_DA20_ db
_RAM_DA21_ dw
.ende

.enum $DA24 export
_RAM_DA24_ db
.ende

.enum $DA28 export
_RAM_DA28_ dw
_RAM_DA2A_ dw
.ende

.enum $DA2F export
_RAM_DA2F_ dw
_RAM_DA31_ dw
.ende

.enum $DA36 export
_RAM_DA36_ dw
_RAM_DA38_ dw
.ende

.enum $DA3D export
_RAM_DA3D_ dw
_RAM_DA3F_ db
_RAM_DA40_ db
.ende

.enum $DA44 export
_RAM_DA44_ dw
_RAM_DA46_ dw
.ende

.enum $DA4B export
_RAM_DA4B_ dw
.ende

.enum $DA60 export
_RAM_DA60_ db
.ende

.enum $DA80 export
_RAM_DA80_ dw
_RAM_DA82_ dsb $1e
_RAM_DAA0_ dw
_RAM_DAA2_ dsb $1e
_RAM_DAC0_ dw
_RAM_DAC2_ dsb $1e
_RAM_DAE0_ dw
_RAM_DAE2_ dsb $1e
.ende

.enum $FFD0 export
_RAM_FFD0_ db
.ende

.enum $FFFC export
_RAM_FFFC_ db
_RAM_FFFD_ db
_RAM_FFFE_ db
_RAM_FFFF_ db
.ende

; Ports
.define Port_MemoryControl $3E
.define Port_IOPortControl $3F
.define Port_PSG $7F
.define Port_VDPData $BE
.define Port_VDPAddress $BF

; Input Ports
.define Port_VCounter $7E
.define Port_VDPStatus $BF
.define Port_IOPort1 $DC
.define Port_IOPort2 $DD

.BANK 0 SLOT 0
.ORG $0000

_LABEL_0_:
	di
	jp _LABEL_23B_Startup

; Data from 4 to 4 (1 bytes)
_DATA_4_:
.db $FF

; Data from 5 to A (6 bytes)
_DATA_5_:
.db $FF $FF $FF $FF $FF $FF

; 1st entry of Pointer Table from 7F00 (indexed by _RAM_C7C0_)
; Data from B to C (2 bytes)
_DATA_B_:
.db $FF $FF

; 1st entry of Pointer Table from 7F54 (indexed by _RAM_C7C5_)
; Data from D to F (3 bytes)
_DATA_D_:
.db $FF $FF $FF

; Data from 10 to 2F (32 bytes)
_DATA_10_:
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

; Data from 30 to 37 (8 bytes)
_DATA_30_:
.db $FF $FF $FF $FF $FF $FF $FF $FF

_LABEL_38_:
	jp _LABEL_43A_InterruptHandler

; Data from 3B to 3F (5 bytes)
.db $FF $FF $FF $FF $FF

; 1st entry of Pointer Table from 101 (indexed by unknown)
; Data from 40 to 65 (38 bytes)
_DATA_40_:
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF

_LABEL_66_:
	jp +

_LABEL_69_DecompressToVRAMTrampoline:
  ; Page in
	ld a, :_LABEL_BC00_DecompressToVRAM
	ld (_RAM_FFFE_), a
	call _LABEL_BC00_DecompressToVRAM
	ld a, $01
	ld (_RAM_FFFE_), a
	ret

+:
	push af
	ld a, (_RAM_C839_)
	xor $01
	ld (_RAM_C839_), a
	pop af
	retn

; Data from 83 to AF (45 bytes)
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

_LABEL_B0_:
	rst $38	; Possibly invalid
; Data from B1 to 100 (80 bytes)
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $55

; Pointer Table from 101 to 102 (1 entries, indexed by unknown)
_DATA_101_:
.dw _DATA_40_

; Data from 103 to 207 (261 bytes)
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $F5 $C5 $D5
.db $E5 $5F $06 $00 $0E $04 $16 $08 $3A $01 $01 $E6 $C2 $FE $80 $20
.db $F7 $7B $E6 $80 $20 $08 $21 $09 $01 $09 $7E $C3 $36 $01 $21 $0B
.db $01 $09 $7E $CB $13 $0E $00 $15 $20 $DE $E1 $D1 $C1 $F1 $C9 $3A
.db $01 $01 $E6 $C1 $FE $81 $20 $F7 $C9 $CD $42 $01 $3A $00 $01 $C9
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $80 $40 $20
.db $10 $08 $04 $02 $01

_LABEL_208_:
	ld a, (_RAM_C839_)
	and a
	ret z
	ld a, $01
	ld (_RAM_C838_), a
	xor a
	ld (_RAM_C85C_AudioEnabled), a
	call _LABEL_229_MutePSG
-:
	ld a, (_RAM_C839_)
	and a
	jr nz, -
	xor a
	ld (_RAM_C838_), a
	ld a, $01
	ld (_RAM_C85C_AudioEnabled), a
	ret

_LABEL_229_MutePSG: ; semes to only be on startup
	push bc
	push hl
	ld hl, _DATA_237_ZeroPSGVolumes
	ld c, Port_PSG
	ld b, $04
	otir
	pop hl
	pop bc
	ret

; Data from 237 to 23A (4 bytes)
_DATA_237_ZeroPSGVolumes:
.db $9F $BF $DF $FF

_LABEL_23B_Startup:
	ld sp, $DFF0
	ld a, (_RAM_C000_)
	and $E0
	or $08
	out (Port_MemoryControl), a
	ld a, $0F
	out (Port_IOPortControl), a
	xor a
	ld (_RAM_FFFC_), a
	ld (_RAM_FFFD_), a
	ld a, $01
	ld (_RAM_FFFE_), a
	ld a, $02
	ld (_RAM_FFFF_), a
	call _LABEL_229_MutePSG

  ; delay - unnecessary?
	ld b, $04
--:
	ld hl, $FFFF
-:dec hl
	ld a, l
	or h
	jp nz, -
	djnz --
  
  ; clear RAM
	ld hl, _RAM_C000_
	ld de, _RAM_C000_ + 1
	ld bc, $1F00
	ld (hl), $00
	ldir
	im 1
  
	jp _LABEL_3093_StartupPart2

_LABEL_27E_HandleReset:
	di
	jp _LABEL_23B_Startup

_LABEL_282_ScreenOff:
	di
	ld a, $A0
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $81
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	ret

_LABEL_295_ScreenOn:
	di
	ld a, $E0
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $81
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	ret

_LABEL_2A8_DisableSprites:
	di
	ld c, Port_VDPAddress
	ld de, $7F00
	out (c), e
	nop
	ld ($0007), a
	out (c), d
	dec c
	ld a, $D0
	out (c), a
	ei
	ret

_LABEL_2BF_InitSomeRAM:
	ld hl, $AB51
	ld (_RAM_C769_SpritePalettePointer), hl
	ld a, $A9
	ld (_RAM_C766_), a
	ld a, $AC
	ld (_RAM_C767_), a
	ld a, $D0
	ld (_RAM_C768_), a
	ld hl, _RAM_CA00_
	ld (_RAM_C76B_), hl
	ld a, $18
	ld (_RAM_C76D_), a
	ld a, $01
	ld (_RAM_C76E_), a
	ld a, $01
	ld (_RAM_C76F_), a
	ret

_LABEL_2EA_InitVDPFull:
  ; Sets VDP registers... slowly
  ; 0   $36
  ; 1   $a0
  ; 2   $ff
  ; 3   $ff
  ; 4   $ff
  ; 5   $ff
  ; 6   $ff
  ; 7   $f0
  ; 8   $00
  ; 9   $00
  ; a   $ff
	di
	ld a, $36
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $80
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $A0
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $81
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $82
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $83
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $84
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $85
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $86
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $F0
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $87
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $00
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $88
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $00
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $89
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $8A
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	call _LABEL_2A8_DisableSprites
	ret

_LABEL_3B7_DisableSpritesAndClearTiles:
	di
	xor a
	out (Port_VDPAddress), a
	ld ($0007), a ; Debugging?
	ld a, $7F
	out (Port_VDPAddress), a  ; sprite table
	ld a, $D0                 ; terminator
	ld ($0007), a
	out (Port_VDPData), a
	xor a
	out (Port_VDPAddress), a
	ld ($0007), a
	ld a, $40
	out (Port_VDPAddress), a  ; tile RAM
	ld de, $3800
	ld ($0007), a
-:xor a                     ; zero it all
	out (Port_VDPData), a
	dec de
	ld a, e
	or d
	jp nz, -
	ei
	ret

_LABEL_3E4_:
	ld hl, (_RAM_C85A_)
	ld de, $C3C0
	and a
	sbc hl, de
	jp c, +
	ld a, $D0
	ld (_RAM_C3C0_), a
+:
	di
	ld hl, _RAM_C300_
	xor a
	out (Port_VDPAddress), a
	nop
	nop
	nop
	ld a, $7F
	out (Port_VDPAddress), a
	nop
	nop
	nop
	ld c, Port_VDPData
	ld b, $D0
	ld e, $FF
-:
	ld a, (hl)
	out (c), a
	inc l
	inc l
	inc l
	inc e
	cp b
	jp nz, -
	ld a, $80
	out (Port_VDPAddress), a
	nop
	nop
	nop
	ld a, $7F
	out (Port_VDPAddress), a
	ld hl, _RAM_C301_
	ld c, Port_VDPData
	ld a, e
	and a
	jp z, +
	ld b, a
-:
	ld a, (hl)
	out (c), a
	inc l
	ld a, (hl)
	inc l
	inc l
	out (c), a
	djnz -
+:
	ei
	ret

_LABEL_43A_InterruptHandler:
	di
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	exx
	ex af, af'
	push af
	push bc
	push de
	push hl
    in a, (Port_VDPStatus)
    and $80
    jp z, + ; Line interrupt

    ld a, (_RAM_C851_FrameCounter)
    inc a
    ld (_RAM_C851_FrameCounter), a

    in a, (Port_IOPort2)
    and $10
    jp z, _LABEL_27E_HandleReset

    ld a, (_RAM_C85C_AudioEnabled)
    and a
    jp z, _LABEL_4DA_InterruptEnd

    ld a, (_RAM_FFFF_)
    push af
      ld a, $03
      ld (_RAM_FFFF_), a
      call _LABEL_D47B_SoundEngine_Update
    pop af
    ld (_RAM_FFFF_), a

    ld a, (_RAM_C821_)
    and a
    jp z, _LABEL_4DA_InterruptEnd
    ld hl, _RAM_DA03_
    jr _LABEL_4CB_SetScrollFromPointer

+:  ; Line interrupt
    ld a, (_RAM_C821_)
    cp $02
    ld a, $00
    jr z, _LABEL_4CC_SetScroll
    ld hl, _RAM_DA03_
    in a, (Port_VCounter)
    cp $20
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $0A
    cp $30
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $11
    cp $40
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $18
    cp $50
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $1F
    cp $60
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $26
    cp $70
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $2D
    cp $80
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $34
    cp $90
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $3B
    cp $98
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $42
    cp $A0
    jr c, _LABEL_4CB_SetScrollFromPointer
    ld l, $49
    
_LABEL_4CB_SetScrollFromPointer:
    ld a, (hl)
_LABEL_4CC_SetScroll:
    ld c, Port_VDPAddress
    out (c), a
    ld b, $88 ; register 8 = scroll
    ld a, l
    add a, $07
    ld (_RAM_C755_), a
    out (c), b
_LABEL_4DA_InterruptEnd:
	pop hl
	pop de
	pop bc
	pop af
	ex af, af'
	exx
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret

_LABEL_4EA_ResetScrollTile0AndTilemap:
  ; reset scroll registers
	di
	ld a, $00
	out (Port_VDPAddress), a
	nop ; unnecessary waits?
	nop
	nop
	nop
	ld a, $88
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $00
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $89
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
  
  ; Set VRAM address to 0
	ld hl, $4000
	ld c, Port_VDPAddress
	out (c), l
	nop
	ld ($0007), a
	out (c), h
  ; point to data register
	dec c
  ; Emit 32 zeroes = 1 blank tile at index 0
	ld b, $20
	ld a, $00
-:out (c), a
	nop
	djnz -
  
  ; Name table: set all entries to 0
	ld hl, $7800
	ld bc,  $0000 | Port_VDPAddress
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	ld hl, $0380  ; 32*28
	ld e, $00     ; value $0800
	ld d, $08
	dec c
-:out (c), e
	nop
	ld ($0007), a
	out (c), d
	ld ($0007), a
	dec hl
	ld a, l
	or h
	jp nz, -
	ei
	ret

; Data from 54F to 560 (18 bytes)
; Dead code
.db $F3 $F6 $F0 $D3 $BF $00 $00 $00 $3E $87 $D3 $BF $00 $00 $00 $00
.db $FB $C9

_LABEL_561_GetInputs:
	ld a, (_RAM_C81C_)
	and a
	jr z, +
	ld a, (_RAM_C859_)
	and $01
	ret nz
+:
	ld hl, $0000 ; UDLR
	ld bc, $0000 ; 12
	in a, (Port_IOPort1)
	bit 2, a ; Left
	jr nz, +
	ld l, $FF
+:
	in a, (Port_IOPort1)
	bit 3, a ; Right
	jr nz, +
	ld l, $01
+:
	in a, (Port_IOPort1)
	bit 0, a ; Up
	jr nz, +
	ld h, $FF
+:
	in a, (Port_IOPort1)
	bit 1, a ; Down
	jr nz, +
	ld h, $01
+:
	in a, (Port_IOPort1)
	bit 4, a ; Button 1
	jr nz, +
	ld c, $01
+:
	in a, (Port_IOPort1)
	bit 5, a ; Button 2
	jr nz, +
	ld b, $01
+:
	ld a, (_RAM_C83C_) ; overrides L/R
	and a
	jr z, +
	ld l, a
+:
	ld (_RAM_C82F_DirectionsPressed), hl ; save result
  
	ld a, (_RAM_C770_SwapButtons)
	and a
	jp z, +
	ld a, b
	ld b, c
	ld c, a
+:
	ld (_RAM_C831_ButtonsPressed), bc ; save value
  
	ld a, (_RAM_C81C_) ; enables something
	and a
	ret z
	push af
    ld a, $0E
    ld (_RAM_FFFF_), a
	pop af
	cp $01
	jr z, _LABEL_610_
	ld hl, (_RAM_C81D_)
	ld e, (hl)
	inc hl
	ld (_RAM_C81D_), hl
	ld a, e
	and $03
	ld l, a
	cp $03
	jr nz, +
	ld l, $FF
+:
	ld a, e
	and $0C
	srl a
	srl a
	ld h, a
	cp $03
	jr nz, +
	ld h, $FF
+:
	ld (_RAM_C82F_DirectionsPressed), hl
	srl e
	srl e
	srl e
	srl e
	ld a, e
	and $01
	ld l, a
	srl e
	ld h, e
	ld (_RAM_C831_ButtonsPressed), hl
	ld hl, (_RAM_C81F_)
	dec hl
	ld (_RAM_C81F_), hl
	ld a, l
	or h
	ret nz
	ld a, $81
	ld (_RAM_C779_GameState), a
	ret

_LABEL_610_:
	ld a, l
	and $03
	ld e, a
	ld a, h
	and $03
	add a, a
	add a, a
	or e
	ld e, a
	ld a, c
	sla b
	or b
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	ld hl, (_RAM_C81D_)
	ld (hl), a
	inc hl
	ld (_RAM_C81D_), hl
	ld hl, (_RAM_C81F_)
	dec hl
	ld (_RAM_C81F_), hl
	ld a, l
	or h
	jp z, _LABEL_B0_
; Data from 638 to 638 (1 bytes)
.db $C9

_LABEL_639_GetPlayer2Buttons:
	ld hl, $0000
	ld bc, $0000
	in a, (Port_IOPort2)
	bit 0, a
	jr nz, +
	ld l, $FF
+:
	in a, (Port_IOPort2)
	bit 1, a
	jr nz, +
	ld l, $01
+:
	in a, (Port_IOPort1)
	bit 6, a
	jr nz, +
	ld h, $FF
+:
	in a, (Port_IOPort1)
	bit 7, a
	jr nz, +
	ld h, $01
+:
	in a, (Port_IOPort2)
	bit 2, a
	jr nz, +
	ld c, $01
+:
	in a, (Port_IOPort2)
	bit 3, a
	jr nz, +
	ld b, $01
+:
	ld a, (_RAM_C83C_)
	and a
	jr z, +
	ld l, a
+:
	ld (_RAM_C82F_DirectionsPressed), hl
	ld a, (_RAM_C770_SwapButtons)
	and a
	jp z, +
	ld a, b
	ld b, c
	ld c, a
+:
	ld (_RAM_C831_ButtonsPressed), bc
	ret

_LABEL_688_:
	ld bc, (_RAM_C82F_DirectionsPressed)
	ld a, b
	inc a
	add a, a
	add a, a
	add a, c
	inc a
	ld c, a
	ld b, $00
	ld hl, $069B
	add hl, bc
	ld a, (hl)
	ret

; Data from 69B to 6A6 (12 bytes)
.db $03 $02 $01 $08 $04 $08 $00 $08 $05 $06 $07 $08

_LABEL_6A7_EmitTiles:
  ; Emits b*32 bytes from hl to VRAM addess de
	di
    ; VRAM address to de
    ld c, Port_VDPAddress
    out (c), e
    set 6, d
    nop
    nop
    nop
    out (c), d
    dec c
--: push bc
      ld b, $40 ; 32*2
-:    outi
      nop
      djnz -
    pop bc
    djnz --
    ei
	ret

; Data from 6C1 to 6CD (13 bytes)
.db $AF $32 $51 $C8 $3A $51 $C8 $A7 $28 $FA $C3 $E4 $03

_LABEL_6CE_:
	ld a, (_RAM_C86E_)
	and a
	ret nz
	ld a, (_RAM_C821_)
	cp $01
	jp z, _LABEL_16C9_
	cp $02
	ret z
	di
	ld a, (_RAM_FFFF_)
	push af
	ld a, $0E
	ld (_RAM_FFFF_), a
	call _LABEL_72E_
	call +
	pop af
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C7D3_)
	ld a, l
	srl h
	rr a
	srl h
	rr a
	srl h
	rr a
	srl h
	rr a
	ld (_RAM_C853_), a
	ei
	ret

+:
	ld c, Port_VDPAddress
	ld b, $88
	ld a, (_RAM_C84C_)
	out (c), a
	ld ($0007), a
	ld ($0007), a
	out (c), b
	ld ($0007), a
	inc b
	ld a, (_RAM_C84D_)
	out (c), a
	ld ($0007), a
	ld ($0007), a
	out (c), b
	ret

_LABEL_72E_:
	call _LABEL_77E_
	call _LABEL_7BC_
	ret

_LABEL_735_:
	ld a, (_RAM_C821_)
	and a
	ret nz
	ld hl, (_RAM_C7DB_)
	ld de, (_RAM_C7B2_)
	and a
	sbc hl, de
	jr c, ++
	ld a, h
	cp $FF
	jr nz, +
	ld de, $0000
+:
	ld (_RAM_C7DB_), de
++:
	ld hl, (_RAM_C7DD_)
	ld de, (_RAM_C7B4_)
	and a
	sbc hl, de
	ld de, $0C00
	add hl, de
	ret nc
	ld hl, (_RAM_C7B4_)
	and a
	sbc hl, de
	ld (_RAM_C7DD_), hl
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld (_RAM_C7D5_), hl
	ret

_LABEL_77E_:
	ld hl, (_RAM_C7D3_)
	ld de, (_RAM_C7D7_)
	and a
	sbc hl, de
	ret z
	jp nc, ++
	ld a, l
	neg
	cp $09
	jp c, +
	ld a, $08
+:
	ld (_RAM_C76E_), a
	ex de, hl
	ld e, a
	ld d, $00
	and a
	sbc hl, de
	ld (_RAM_C7D7_), hl
	jp _LABEL_A63_

++:
	ld a, l
	cp $09
	jp c, +
	ld a, $08
+:
	ld (_RAM_C76E_), a
	ex de, hl
	ld e, a
	ld d, $00
	add hl, de
	ld (_RAM_C7D7_), hl
	jp _LABEL_A1F_

_LABEL_7BC_:
	ld hl, (_RAM_C7D5_)
	ld de, (_RAM_C7D9_)
	and a
	sbc hl, de
	ret z
	jp nc, ++
	ld a, l
	neg
	cp $09
	jp c, +
	ld a, $08
+:
	ld (_RAM_C76F_), a
	ex de, hl
	ld e, a
	ld d, $00
	and a
	sbc hl, de
	ld (_RAM_C7D9_), hl
	jp _LABEL_AFC_

++:
	ld a, l
	cp $09
	jp c, +
	ld a, $08
+:
	ld (_RAM_C76F_), a
	ex de, hl
	ld e, a
	ld d, $00
	add hl, de
	ld (_RAM_C7D9_), hl
	jp _LABEL_AA0_

_LABEL_7FA_:
	ld hl, (_RAM_C7DB_)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld (_RAM_C7D3_), hl
	ld (_RAM_C7D7_), hl
	ld hl, (_RAM_C7DD_)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld (_RAM_C7D5_), hl
	ld (_RAM_C7D9_), hl
	ld (_RAM_C7A7_), hl
	xor a
	ld (_RAM_C84E_), a
	ld (_RAM_C84F_), a
	ld a, $18
	ld (_RAM_C76D_), a
	ld a, (_RAM_C7D7_)
	and $07
	sub $07
	neg
	ld (_RAM_C84C_), a
	ld a, (_RAM_C7D9_)
	and $07
	ld (_RAM_C84D_), a
	ld hl, (_RAM_C7D9_)
	ld a, l
	and $F0
	ld l, a
	ld a, (_RAM_C7AD_)
	cp $10
	jr z, +
	add hl, hl
	cp $20
	jr z, +
	add hl, hl
	cp $40
	jr z, +
	add hl, hl
	cp $80
	jr z, +
	add hl, hl
+:
	ex de, hl
	ld hl, (_RAM_C7D7_)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	add hl, de
	ld bc, $CA00
	add hl, bc
	ld (_RAM_C76B_), hl
	ret

; Data from 88A to 898 (15 bytes)
.db $68 $CB $25 $26 $7D $7E $24 $66 $6F $06 $38 $CB $21 $09 $C9

_LABEL_899_:
	ld a, (_RAM_C797_)
	add a, a
	add a, b
	ld b, a
	push bc
	push hl
	pop ix
	ld bc, (_RAM_C7BB_)
	ld a, e
	and a
	jr z, +
	inc bc
	inc bc
+:
	ld a, d
	ld de, _RAM_C200_
	and a
	jr z, +
	inc de
	inc de
+:
	push de
	ld de, _RAM_C200_
	ld a, $0D
-:
	ld l, (ix+0)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
	push bc
	ldi
	ldi
	inc hl
	inc hl
	ldi
	ldi
	ld bc, (_RAM_C7AD_)
	add ix, bc
	pop bc
	dec a
	jp nz, -
	pop de
	pop bc
	ld l, b
	sla l
	ld h, $7D
	ld a, (hl)
	inc h
	ld h, (hl)
	ld l, a
	ld b, $38
	sla c
	add hl, bc
	ld b, $1A
-:
	dec b
	ret z
	push bc
	ld a, l
	out (Port_VDPAddress), a
	ld a, (_DATA_5_ + 2)
	ld a, h
	or $40
	out (Port_VDPAddress), a
	ld a, (_DATA_5_ + 2)
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	inc de
	out (Port_VDPData), a
	ld bc, $0040
	add hl, bc
	pop bc
	ld a, h
	cp $3F
	jp c, -
	sub $07
	ld h, a
	jp -

_LABEL_917_:
	push bc
	push hl
	pop ix
	ld bc, (_RAM_C7BB_)
	ld a, d
	and a
	jr z, +
	ld hl, _DATA_4_
	add hl, bc
	ld c, l
	ld b, h
+:
	ld a, e
	ld de, _RAM_C200_
	and a
	jr z, +
	inc de
	inc de
+:
	push de
	ld de, _RAM_C200_
	ld a, $11
-:
	ld l, (ix+0)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
	push bc
	ldi
	ldi
	ldi
	ldi
	pop bc
	inc ix
	dec a
	jp nz, -
	pop de
	pop bc
	ld l, b
	sla l
	ld h, $7D
	ld a, (hl)
	inc h
	ld h, (hl)
	ld l, a
	ld (_RAM_C84A_), hl
	sla c
	ld b, $38
	add hl, bc
	call _LABEL_B63_
	srl c
	ld l, c
	ld bc,  $2100 | Port_VDPData
	ld h, $1F
-:
	dec b
	ret z
	ld a, (de)
	out (c), a
	inc de
	inc l
	ld a, (de)
	out (c), a
	inc de
	ld a, l
	and h
	jp nz, -
	inc c
	ld hl, (_RAM_C84A_)
	out (c), l
	ld a, h
	or $40
	add a, $38
	out (c), a
	dec c
-:
	dec b
	ret z
	ld a, (de)
	out (c), a
	inc de
	ld a, (de)
	nop
	out (c), a
	inc de
	jp -

_LABEL_99B_:
	ld a, (_RAM_C7C0_)
	cp $03
	jp nz, +
	ld hl, _DATA_30080_
	ld de, $7880
	call _LABEL_9B6_
	ld hl, _DATA_30300_
	ld de, $7B00
	call _LABEL_9B6_
	ret

_LABEL_9B6_:
	ld a, $0C
	ld (_RAM_FFFF_), a
	di
	ld a, h
	add a, $03
	ld b, a
	ld c, Port_VDPAddress
	out (c), e
	nop
	ld ($0007), a
	nop
	out (c), d
	nop
	ld ($0007), a
	dec c
-:
	ld a, (hl)
	out (c), a
	inc hl
	ld a, h
	cp b
	jp nz, -
	ei
	ret

+:
	di
	ld a, $0E
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C76B_)
	ld a, (_RAM_C84E_)
	and $01
	ld e, a
	ld a, (_RAM_C84F_)
	ld b, a
	and $01
	ld d, a
	ld a, (_RAM_C797_)
	add a, a
	add a, b
	ld b, a
	ld c, $1A
-:
	push bc
	push de
	push hl
	ld a, (_RAM_C84E_)
	ld c, a
	call _LABEL_917_
	pop hl
	pop de
	ld a, d
	xor $01
	ld d, a
	jr nz, +
	ld bc, (_RAM_C7AD_)
	add hl, bc
+:
	pop bc
	ld a, b
	inc a
	cp $1C
	jr c, +
	xor a
+:
	ld b, a
	dec c
	jp nz, -
	ei
	ret

_LABEL_A1F_:
	ld a, (_RAM_C84C_)
	and $F8
	ld b, a
	ld hl, _RAM_C76E_
	ld a, (_RAM_C84C_)
	sub (hl)
	ld (_RAM_C84C_), a
	and $F8
	cp b
	ret z
	ld hl, _RAM_C84E_
	ld a, (hl)
	inc a
	and $1F
	ld (hl), a
	dec a
	and $1F
	ld c, a
	ld a, (_RAM_C84F_)
	ld b, a
	ld hl, (_RAM_C76B_)
	ld de, _DATA_10_
	add hl, de
	ld a, c
	and $01
	ld e, a
	ld a, b
	and $01
	ld d, a
	call _LABEL_899_
	ld a, (_RAM_C84E_)
	and $01
	ret nz
	ld hl, (_RAM_C76B_)
	inc hl
	ld (_RAM_C76B_), hl
	ret

_LABEL_A63_:
	ld a, (_RAM_C84C_)
	and $F8
	ld b, a
	ld hl, _RAM_C76E_
	ld a, (_RAM_C84C_)
	add a, (hl)
	ld (_RAM_C84C_), a
	and $F8
	cp b
	ret z
	ld hl, _RAM_C84E_
	ld a, (hl)
	dec a
	and $1F
	ld (hl), a
	bit 0, a
	jr z, +
	ld hl, (_RAM_C76B_)
	dec hl
	ld (_RAM_C76B_), hl
+:
	and $1F
	ld c, a
	ld a, (_RAM_C84F_)
	ld b, a
	ld hl, (_RAM_C76B_)
	ld a, c
	and $01
	ld e, a
	ld a, b
	and $01
	ld d, a
	call _LABEL_899_
	ret

_LABEL_AA0_:
	ld a, (_RAM_C84D_)
	and $F8
	ld b, a
	ld hl, _RAM_C76F_
	ld a, (_RAM_C84D_)
	add a, (hl)
	cp $E0
	jp c, +
	and $1F
+:
	ld (_RAM_C84D_), a
	and $F8
	cp b
	ret z
	ld a, (_RAM_C84F_)
	inc a
	cp $1C
	jp nz, +
	xor a
+:
	ld (_RAM_C84F_), a
	ld a, (_RAM_C76D_)
	inc a
	cp $1C
	jp nz, +
	xor a
+:
	ld (_RAM_C76D_), a
	ld b, a
	and $01
	jr nz, +
	ld hl, (_RAM_C76B_)
	ld de, (_RAM_C7AD_)
	add hl, de
	ld (_RAM_C76B_), hl
+:
	ld hl, (_RAM_C76B_)
	ld de, (_RAM_C7B0_)
	add hl, de
	ld a, (_RAM_C84E_)
	ld c, a
	and $01
	ld e, a
	ld a, b
	and $01
	ld d, a
	call _LABEL_917_
	ret

_LABEL_AFC_:
	ld a, (_RAM_C84D_)
	and $F8
	ld b, a
	ld hl, _RAM_C76F_
	ld a, (_RAM_C84D_)
	sub (hl)
	cp $E0
	jp c, +
	ld c, a
	ld a, $FF
	sub c
	ld c, a
	ld a, $DF
	sub c
+:
	ld (_RAM_C84D_), a
	and $F8
	cp b
	ret z
	ld a, (_RAM_C84F_)
	dec a
	cp $FF
	jp nz, +
	ld a, $1B
+:
	ld (_RAM_C84F_), a
	ld b, a
	ld a, (_RAM_C76D_)
	dec a
	cp $FF
	jp nz, +
	ld a, $1B
+:
	ld (_RAM_C76D_), a
	ld a, (_RAM_C84F_)
	and $01
	jr z, +
	ld hl, (_RAM_C76B_)
	ld de, (_RAM_C7AD_)
	and a
	sbc hl, de
	ld (_RAM_C76B_), hl
+:
	ld hl, (_RAM_C76B_)
	ld a, (_RAM_C84E_)
	ld c, a
	ld a, (_RAM_C84F_)
	and $01
	ld d, a
	ld a, c
	and $01
	ld e, a
	call _LABEL_917_
	ret

_LABEL_B63_:
	ld a, l
	out (Port_VDPAddress), a
	ld ($0007), a
	ld a, h
	or $40
	out (Port_VDPAddress), a
	ret

; Data from B6F to B78 (10 bytes)
.db $7D $D3 $BF $32 $07 $00 $7C $D3 $BF $C9

_LABEL_B79_:
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld h, b
	ld l, c
	ld bc, _DATA_4_ + 1
	add hl, bc
	ld c, (hl)
	inc hl
	ld a, (hl)
	inc c
	add hl, bc
	di
	ld c, Port_VDPAddress
	out (c), e
	set 6, d
	nop
	nop
	out (c), d
	dec c
--:
	ld b, $40
-:
	outi
	djnz -
	dec a
	jp nz, --
	ei
	ret

_LABEL_BA4_:
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld h, b
	ld l, c
	ld bc, _DATA_4_ + 1
	add hl, bc
	ld c, (hl)
	inc hl
	ld a, (hl)
	inc c
	add hl, bc
	di
	ld c, Port_VDPAddress
	out (c), e
	set 6, d
	nop
	nop
	out (c), d
	dec c
	ld b, a
_LABEL_BC4_:
	ld d, $7C
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	dec b
	jp nz, _LABEL_BC4_
	ei
	ret

_LABEL_C6C_:
	ld hl, _RAM_C300_
	ld (_RAM_C85A_), hl
	ld (hl), $D0
	ret

_LABEL_C75_:
	ld a, (_RAM_C85A_)
	cp $C0
	ret nc
	ld iy, (_RAM_C85A_)
	ld (_RAM_C200_), de
-:
	ld a, (_RAM_C200_)
	push hl
	ld e, a
	ld a, b
	cp $D0
	jr nz, _LABEL_C8E_
	inc b
_LABEL_C8E_:
	ld a, h
	and a
	jr nz, +
	ld (iy+0), b
	ld (iy+1), l
	ld (iy+2), c
	inc iy
	inc iy
	inc iy
+:
	inc c
	ld a, l
	add a, $08
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	dec e
	jp nz, _LABEL_C8E_
	ld a, b
	add a, $08
	ld b, a
	pop hl
	dec d
	jp nz, -
	push iy
	pop hl
	ld a, l
	cp $C0
	jr c, +
	ld l, $C0
+:
	ld (hl), $D0
	ld (_RAM_C85A_), hl
	ret

_LABEL_CC7_:
	ld a, (_RAM_C85A_)
	cp $C0
	ret nc
	ld iy, (_RAM_C85A_)
	ld (_RAM_C200_), de
	ld a, e
	dec a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ld a, e
	dec a
	add a, c
	ld c, a
-:
	ld a, (_RAM_C200_)
	push hl
	ld e, a
	ld a, b
	cp $D0
	jr nz, _LABEL_CEF_
	inc b
_LABEL_CEF_:
	ld a, h
	and a
	jr nz, +
	ld (iy+0), b
	ld (iy+1), l
	ld (iy+2), c
	inc iy
	inc iy
	inc iy
+:
	dec c
	ld a, l
	sub $08
	ld l, a
	ld a, h
	sbc a, $00
	ld h, a
	dec e
	jp nz, _LABEL_CEF_
	ld a, (_RAM_C200_)
	add a, a
	add a, c
	ld c, a
	ld a, b
	add a, $08
	ld b, a
	pop hl
	dec d
	jp nz, -
	push iy
	pop hl
	ld a, l
	cp $C0
	jr c, +
	ld l, $C0
+:
	ld (hl), $D0
	ld (_RAM_C85A_), hl
	ret

_LABEL_D2E_DelayTimes20ms:
	push bc
	push hl
    ld h, b
---:ld c, $10 ; x16
--: ld b, $00
-:  nop       ; x256
    djnz -
    dec c
    jp nz, --
    dec h
    jp nz, ---
	pop hl
	pop bc
	ret

_LABEL_D43_DelaySeconds:
-:push bc
    ld b, $32 ; x50
    call _LABEL_D2E_DelayTimes20ms
	pop bc
	djnz -
	ret

_LABEL_D4D_EmitTilemapRect:
  ; de = VRAM address to write to
  ; hl = data to write (low byte only)
  ; _RAM_C8B6_ = high byte to use
  ; b = row count
  ; c = column count
	di
  ; Set VRAM write address
	set 6, d
--:
	ld a, e
	out (Port_VDPAddress), a
;	nop
;	nop
;	ld ($0007), a
	ld a, d
	out (Port_VDPAddress), a
;	nop
;	nop
;	ld ($0007), a
	push bc
    ld b, c
    ld c, Port_VDPData
-:  ld a, (hl)
    inc a
    out (c), a
    inc hl
    ld a, (_RAM_C8B6_)
;    ld ($0007), a
    out (c), a
;    nop
    djnz -
    ex de, hl
    ld bc, $0040 ; add a row
    add hl, bc
    ex de, hl
	pop bc
	dec b
	jp nz, --
	ei
	ret

_LABEL_D81_:
	di
	set 6, d
--:
	ld a, e
	out (Port_VDPAddress), a
	nop
	nop
	ld ($0007), a
	ld a, d
	out (Port_VDPAddress), a
	nop
	nop
	ld ($0007), a
	push bc
	ld b, c
	ld c, Port_VDPData
-:
	ld a, (_RAM_C8B6_)
	inc a
	add a, (hl)
	out (c), a
	inc hl
	ld a, (_RAM_C8B7_)
	adc a, (hl)
	out (c), a
	inc hl
	djnz -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	dec b
	jp nz, --
	ei
	ret

; Data from DB6 to DD9 (36 bytes)
.db $F3 $CB $F2 $C5 $0E $BF $ED $59 $00 $00 $32 $07 $00 $ED $51 $0D
.db $D1 $7E $ED $79 $32 $07 $00 $AF $00 $ED $79 $23 $1B $7B $B2 $C2
.db $C7 $0D $FB $C9

_LABEL_DDA_:
	ld a, (de)
	ld b, a
	inc de
-:
	push bc
	call _LABEL_E4B_
	call +
	ld bc, $0100
	add ix, bc
	pop bc
	djnz -
	ret

-:
	push ix
	ld ix, _RAM_CB00_
	ld hl, _RAM_CA00_
	call ++
	call ++
	call ++
	call ++
	pop ix
	ret

+:
	call -
	push ix
	pop hl
	set 6, h
	di
	ld c, Port_VDPAddress
	out (c), l
	ld ($0007), a
	nop
	nop
	out (c), h
	dec c
	ld ($0007), a
	ld hl, _RAM_CB00_
	ld b, $00
-:
	outi
	nop
	djnz -
	ld ($0007), a
	ld b, $00
-:
	outi
	nop
	djnz -
	ei
	ret

++:
	push ix
	ld b, $40
-:
	ld a, (hl)
	ld (ix+0), a
	inc hl
	inc ix
	inc ix
	inc ix
	inc ix
	djnz -
	pop ix
	inc ix
	ret

_LABEL_E4B_:
	ld hl, _RAM_CA00_
--:
	ld a, h
	cp $CB
	ret nc
	ld a, (de)
	bit 7, a
	jr nz, +
	ld b, a
	inc b
	inc de
-:
	ld a, (de)
	ld (hl), a
	inc de
	inc hl
	ld a, h
	cp $CB
	ret nc
	djnz -
	jp --

+:
	sub $7F
	ld b, a
	inc de
	ld a, (de)
	ld c, a
-:
	ld (hl), c
	inc hl
	ld a, h
	cp $CB
	jr nc, +
	djnz -
+:
	inc de
	jp --

_LABEL_E7A_CheckForButton1:
	in a, (Port_IOPort1)
	and $10
	xor $10
	ret

_LABEL_E81_CheckForP21Or2:
	in a, (Port_IOPort2)
	and $0C ; %00001100 - was probably supposed to be $08
	xor $0C
	ret

_LABEL_E88_WaitForNoButtonP1:
	in a, (Port_IOPort1)
	and $30
	cp $30
	ret z
	jp _LABEL_E88_WaitForNoButtonP1

_LABEL_E92_WaitForNoButtonP2:
	in a, (Port_IOPort2)
	and $0C
	cp $0C
	ret z
	jp _LABEL_E92_WaitForNoButtonP2

_LABEL_E9C_SkippableDelay:
-:call _LABEL_E7A_CheckForButton1
	ret nz
	call _LABEL_E81_CheckForP21Or2
	ret nz
	push bc
    ld b, $01
    call _LABEL_D2E_DelayTimes20ms
	pop bc
	djnz -
	ret

; Data from EAE to F2F (130 bytes)
.db $11 $00 $CA $A7 $ED $52 $3A $AD $C7 $A7 $28 $6E $FE $20 $28 $07
.db $FE $40 $28 $20 $C3 $03 $0F $7D $E6 $1F $5F $CB $3C $CB $1D $CB
.db $3C $CB $1D $CB $3C $CB $1D $CB $3C $CB $1D $CB $3C $CB $1D $65
.db $6B $C3 $2B $0F $7D $E6 $3F $5F $CB $3C $CB $1D $CB $3C $CB $1D
.db $CB $3C $CB $1D $CB $3C $CB $1D $CB $3C $CB $1D $CB $3C $CB $1D
.db $65 $6B $C3 $2B $0F $7D $E6 $7F $5F $CB $3C $CB $1D $CB $3C $CB
.db $1D $CB $3C $CB $1D $CB $3C $CB $1D $CB $3C $CB $1D $CB $3C $CB
.db $1D $CB $3C $CB $1D $65 $6B $C3 $2B $0F $C3 $2B $0F $45 $2E $80
.db $4D $C9

_LABEL_F30_:
	ld d, h
	ld e, l
	ld c, (ix+12)
	ld b, (ix+13)
	and a
	sbc hl, bc
	ret z
	ex de, hl
	ld a, h
	cp $80
	jr c, +
	ld a, $02
	ld (_RAM_FFFF_), a
	ld (ix+12), l
	ld (ix+13), h
	ld a, (hl)
	ld (ix+9), a
	ld e, a
	inc hl
	ld a, (hl)
	ld (ix+14), a
	inc hl
	ld a, (hl)
	ld (ix+15), a
	inc hl
	ld a, (hl)
	ld (ix+17), a
	inc hl
	ld a, (hl)
	dec a
	ld (ix+18), a
	ld d, $7D
	ex de, hl
	ld e, (hl)
	ld (ix+10), e
	inc h
	ld a, (hl)
	add a, $20
	ld (ix+11), a
	ret

+:
	push hl
	call _LABEL_4DE5_
	pop hl
	push hl
	ld (ix+12), l
	ld (ix+13), h
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld a, (de)
	ex af, af'
	inc de
	ld a, (de)
	ld (ix+14), a
	inc de
	ld a, (de)
	ld (ix+15), a
	inc de
	ex af, af'
	bit 0, (hl)
	jr z, +
	neg
+:
	ld c, a
	ld a, (de)
	add a, c
	ld (ix+17), a
	inc de
	ld a, (de)
	dec a
	dec a
	ld (ix+18), a
	inc de
	ld a, (de)
	ld (ix+34), a
	inc de
	ld a, (de)
	ld (ix+35), a
	inc de
	ld (ix+32), e
	ld (ix+33), d
	ld a, (hl)
	ld (ix+16), a
	ld c, a
	pop hl
	ld a, (_RAM_C821_)
	and a
	jp z, +
-:
	in a, (Port_VCounter)
	cp $80
	jp c, -
	cp $C0
	jp nc, -
+:
	ld e, (ix+10)
	ld d, (ix+11)
	ld a, c
	and a
	jp z, _LABEL_B79_
	jp _LABEL_BA4_

_LABEL_FE4_:
	ld a, (_RAM_C86E_)
	and a
	ret nz
	ld a, (_RAM_C792_LevelNumber)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_FF9_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	jp (hl)

; Jump Table from FF9 to 1010 (12 entries, indexed by  $C792)
_DATA_FF9_:
.dw _LABEL_1011_ _LABEL_1067_ _LABEL_1079_ _LABEL_1086_ _LABEL_113A_ _LABEL_113A_ _LABEL_113A_ _LABEL_113A_
.dw _LABEL_1079_ _LABEL_1110_ _LABEL_11A7_ _LABEL_113A_

; 1st entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_1011_:
	ld ix, _RAM_C400_
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld a, (_RAM_C433_)
	cp (ix+3)
	jr nc, +
	ld ix, _RAM_C430_
+:
	call _LABEL_19CC_
	ld a, (_RAM_C7AA_)
	ld h, (ix+3)
	sub h
	jr z, ++
	jr c, ++
	cp $05
	jr c, +++
	ld a, (_RAM_C83D_)
	and a
	ret z
	sub $02
	jr nc, +
	xor a
+:
	ld (_RAM_C83D_), a
	jr +++++

++:
	ld a, $20
	jr ++++

+++:
	ld a, (_RAM_C83D_)
	add a, $02
	cp $22
	jp nc, +++++
++++:
	ld (_RAM_C83D_), a
+++++:
	ld a, (_RAM_C83D_)
	ld e, a
	ld d, $00
	ld hl, (_RAM_C7DB_)
	add hl, de
	ld (_RAM_C7DB_), hl
	ret

; 2nd entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_1067_:
	call _LABEL_19E1_
	xor a
	ld (_RAM_C7AB_), a
	ld hl, (_RAM_C7DD_)
	ld de, $0010
	add hl, de
	ld (_RAM_C7DD_), hl
	ret

; 3rd entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_1079_:
	xor a
	ld (_RAM_C86E_), a
	ld a, (_RAM_DA03_)
	sub $03
	ld (_RAM_DA03_), a
	ret

; 4th entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_1086_:
	ld a, (_RAM_DA01_)
	cp $01
	jr nz, +
	xor a
	ld (_RAM_DA01_), a
	ld (_RAM_DA08_), a
	ld (_RAM_DA05_), a
	ld a, $80
	ld (_RAM_DA0C_), a
+:
	ld a, (_RAM_DA0F_)
	cp $01
	jr nz, +
	xor a
	ld (_RAM_DA0F_), a
	ld (_RAM_DA16_), a
	ld (_RAM_DA1D_), a
	ld (_RAM_DA24_), a
	ld hl, $CB00
	ld (_RAM_DA13_), hl
	ld hl, $CB80
	ld (_RAM_DA1A_), hl
	ld hl, $CC00
	ld (_RAM_DA21_), hl
	ld hl, $CC80
	ld (_RAM_DA28_), hl
+:
	ld a, (_RAM_C79F_)
	inc a
	and $1F
	ld (_RAM_C79F_), a
	cp $01
	ret nz
	ld hl, (_RAM_C7A0_)
	inc hl
	ld (_RAM_C7A0_), hl
	ld a, (hl)
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, $CCF0
	add hl, de
	ld de, $0080
	ld (_RAM_DA2F_), hl
	add hl, de
	ld (_RAM_DA36_), hl
	add hl, de
	ld (_RAM_DA3D_), hl
	add hl, de
	ld (_RAM_DA44_), hl
	add hl, de
	ld (_RAM_DA4B_), hl
	ld hl, $0000
	ld (_RAM_DA2A_), hl
	ld (_RAM_DA31_), hl
	ld (_RAM_DA38_), hl
	ld (_RAM_DA3F_), hl
	ld (_RAM_DA46_), hl
	ret

; 10th entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_1110_:
	ld ix, _RAM_C400_
	ld a, (_RAM_C771_Is2Player)
	and a
	jp z, _LABEL_1210_
	ld de, (_RAM_C426_)
	ld hl, (_RAM_C456_)
	and a
	sbc hl, de
	jp c, _LABEL_1210_
	jr nz, +
	ld a, (_RAM_C44B_)
	cp (ix+27)
	jp nc, _LABEL_1210_
+:
	ld ix, _RAM_C430_
	jp _LABEL_1210_

; 5th entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_113A_:
	ld ix, _RAM_C400_
	ld a, (_RAM_C771_Is2Player)
	and a
	jp z, _LABEL_1210_
	ld a, (_RAM_C435_)
	cp (ix+5)
	jp c, +
	jr ++

+:
	ld ix, _RAM_C430_
++:
	call _LABEL_129F_
	call _LABEL_19CC_
	ld hl, (_RAM_C402_)
	call +
	ld hl, (_RAM_C432_)
	call +
	ret

+:
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld de, (_RAM_C7D3_)
	and a
	sbc hl, de
	ret c
	ld de, $0070
	and a
	sbc hl, de
	jr c, +
	ld de, $0010
	and a
	sbc hl, de
	ret c
	ld hl, (_RAM_C7DB_)
	ld de, $0020
	add hl, de
	ld (_RAM_C7DB_), hl
	ret

+:
	ld de, $0020
	ld hl, (_RAM_C7DB_)
	and a
	sbc hl, de
	ret c
	ld (_RAM_C7DB_), hl
	ret

; 11th entry of Jump Table from FF9 (indexed by _RAM_C792_LevelNumber)
_LABEL_11A7_:
	ld bc, (_RAM_C404_)
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, ++
	ld hl, (_RAM_C434_)
	and a
	sbc hl, bc
	jr c, +
	ld bc, (_RAM_C434_)
+:
	call ++
	and a
	ret z
	ld a, (_RAM_C405_)
	sub h
	jr nc, +
	ld a, h
	ld (_RAM_C405_), a
+:
	ld a, (_RAM_C435_)
	sub h
	ret nc
	ld a, h
	ld (_RAM_C435_), a
	ret

++:
	xor a
	ld hl, (_RAM_C7DD_)
	ld de, $0900
	add hl, de
	and a
	sbc hl, bc
	ret nc
	ex de, hl
	ld hl, (_RAM_C7DD_)
	and a
	sbc hl, de
	ld (_RAM_C7DD_), hl
	ld a, $FF
	ret

_LABEL_11EF_:
	ld hl, _RAM_C82C_
	inc (hl)
	ld a, (hl)
	cp $05
	ret c
	ld (hl), $00
	inc hl
	ld a, (hl)
	inc a
	and $07
	ld (hl), a
	ld e, a
	add a, a
	add a, e
	ld d, a
	ld e, $00
	ld hl, _DATA_30300_
	add hl, de
	ld de, $7B00
	call _LABEL_9B6_
	ret

_LABEL_1210_:
	ld a, (_RAM_C86E_)
	and a
	ret nz
	call +
	jp _LABEL_129F_

+:
	ld l, (ix+2)
	ld h, (ix+3)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld de, $0070
	ld a, (ix+26)
	cp $01
	jr z, +
	ld de, $0090
+:
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ld de, (_RAM_C7D3_)
	and a
	sbc hl, de
	ret z
	jr c, ++
	ld de, $0008
	xor a
	sbc hl, de
	ld a, $30
	jp nc, +
	ld a, (ix+6)
	bit 7, a
	jr z, +
	xor a
+:
	ld e, a
	ld d, $00
	bit 7, e
	jr z, +
	ld d, $FF
+:
	ld hl, (_RAM_C7DB_)
	add hl, de
	ld (_RAM_C7DB_), hl
	ret

++:
	ld de, $0008
	add hl, de
	ld a, $D0
	jp nc, +
	ld a, (ix+6)
	bit 7, a
	jr nz, +
	xor a
+:
	ld e, a
	ld d, $00
	bit 7, e
	jp z, +
	ld d, $FF
+:
	ld hl, (_RAM_C7DB_)
	add hl, de
	ld a, h
	cp $F0
	jr c, +
	ld hl, $0000
+:
	ld (_RAM_C7DB_), hl
	ret

_LABEL_129F_:
	ld l, (ix+4)
	ld h, (ix+5)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld de, (_RAM_C7D5_)
	and a
	sbc hl, de
	jp c, _LABEL_1307_
	ld de, $0030
	and a
	sbc hl, de
	jp c, _LABEL_1307_
	ld e, $50
	and a
	sbc hl, de
	jr nc, ++
	ld de, $0010
	ld bc, $0028
	add hl, bc
	jr c, +
	ld de, $FFF0
	ld bc, $0028
	add hl, bc
	jr nc, +
	ld de, $0000
+:
	ld de, $0000
	ld a, (ix+7)
	and a
	ret nz
	ld hl, (_RAM_C7DD_)
	jp +++

++:
	ld hl, (_RAM_C7DD_)
	ld a, (ix+7)
	and a
	jr z, +
	ld e, a
	bit 7, a
	jr z, +++
+:
	ld e, $10
+++:
	add hl, de
	ld (_RAM_C7DD_), hl
	ret

_LABEL_1307_:
	ld hl, (_RAM_C7DD_)
	ld a, (ix+7)
	and a
	jr z, +
	ld e, a
	bit 7, a
	jr nz, ++
+:
	ld e, $F0
++:
	ld d, $FF
	add hl, de
	bit 7, h
	ret nz
	ld (_RAM_C7DD_), hl
	ret

_LABEL_1321_:
	ld de, (_RAM_C7B4_)
	and a
	sbc hl, de
	jp c, +
	add hl, de
	ld a, $FF
	ret

+:
	add hl, de
	ld c, b
	ld l, h
	ld a, (_RAM_C7AD_)
	cp $21
	jr c, +
	sla l
+:
	ld h, $7D
	ld e, (hl)
	inc h
	ld d, (hl)
	ex de, hl
	cp $10
	jr nz, +
	srl h
	rr l
	jr ++

+:
	cp $20
	jr z, ++
	cp $40
	jr z, ++
	add hl, hl
	cp $80
	jr z, ++
	add hl, hl
++:
	ld b, $CA
	add hl, bc
	ld a, (hl)
	ret

_LABEL_135E_:
	ld a, $0E
	ld (_RAM_FFFF_), a
	push bc
	push hl
	call _LABEL_1321_
	ld (_RAM_C850_), a
	ld e, a
	ld a, (_RAM_C7B9_)
	ld d, a
	ld a, (de)
	ld d, e
	and a
	pop hl
	pop bc
	ret

_LABEL_1376_:
	ld a, (_RAM_C821_)
	and a
	jp nz, +
	ld hl, (_RAM_C7DB_)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld (_RAM_C7D3_), hl
	ld hl, (_RAM_C7DD_)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld (_RAM_C7D5_), hl
	ret

+:
	ld hl, $0000
	ld (_RAM_C7DD_), hl
	ld (_RAM_C7D5_), hl
	ret

_LABEL_13B4_:
	push bc
	push hl
	push af
	call _LABEL_1321_
	pop af
	cp (hl)
	jp nz, +
	pop hl
	pop bc
	ret

+:
	ld (hl), a
	pop hl
	pop bc
	ld a, (_RAM_C7DC_)
	sub b
	jr z, +
	ret nc
+:
	ld a, (_RAM_C7DC_)
	add a, $10
	cp b
	ret c
	ld a, (_RAM_C7DE_)
	sub h
	jr z, +
	ret nc
+:
	ld a, (_RAM_C7DE_)
	add a, $0C
	cp h
	ret c
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl b
	rr c
	srl b
	rr c
	srl b
	rr c
	srl b
	rr c
	ld a, $0E
	ld (_RAM_FFFF_), a
	ld (_RAM_C822_IntroButtonPressed), hl
	ld a, l
	and $F0
	ld l, a
	ld a, (_RAM_C7AD_)
	cp $10
	jr z, +
	add hl, hl
	cp $20
	jr z, +
	add hl, hl
	cp $40
	jr z, +
	add hl, hl
	cp $80
	jr z, +
	add hl, hl
+:
	ld bc, _RAM_CA00_
	add hl, bc
	ld bc, (_RAM_C7D3_)
	srl b
	rr c
	srl b
	rr c
	srl b
	rr c
	srl b
	rr c
	add hl, bc
	ex de, hl
	ld hl, (_RAM_C822_IntroButtonPressed)
	ld bc, (_RAM_C7A7_)
	and a
	sbc hl, bc
	jp nc, +
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	res 0, l
	ld bc, $001C
-:
	add hl, bc
	jr nc, -
	jp ++

+:
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	res 0, l
	ld bc, $001C
-:
	and a
	sbc hl, bc
	jr nc, -
	add hl, bc
++:
	ld b, l
	ex de, hl
	ld d, $00
	ld a, (_RAM_C84E_)
	and $01
	ld e, a
	ld c, $02
-:
	push bc
	push de
	push hl
	ld a, (_RAM_C84E_)
	ld c, a
	di
	call _LABEL_917_
	ei
	pop hl
	pop de
	ld a, d
	xor $01
	ld d, a
	jr nz, +
	ld bc, (_RAM_C7AD_)
	add hl, bc
+:
	pop bc
	ld a, b
	inc a
	cp $1C
	jr c, +
	xor a
+:
	ld b, a
	dec c
	jp nz, -
	ret

_LABEL_14AC_FadeOut:
	call _LABEL_151D_
	ld b, $10
_LABEL_14B1_:
	push bc
	xor a
	ld (_RAM_C851_FrameCounter), a
-:
	ld a, (_RAM_C851_FrameCounter)
	and a
	jp z, -
	di
	ld c, Port_VDPAddress
	ld hl, $C000
	out (c), l
	nop
	nop
	ld ($0007), a
	out (c), h
	dec c
	call ++
	call ++
	ei
	ld b, $01
	call _LABEL_D2E_DelayTimes20ms
	ld hl, _RAM_C200_
	ld b, $60
-:
	ld a, (hl)
	add a, a
	add a, a
	add a, a
	add a, a
	sub (hl)
	jr nc, +
	xor a
+:
	srl a
	srl a
	srl a
	srl a
	ld (hl), a
	inc hl
	djnz -
	pop bc
	djnz _LABEL_14B1_
	ret

++:
	ld hl, _RAM_C200_
	ld b, $20
-:
	ld a, (hl)
	srl a
	srl a
	ld e, a
	inc hl
	ld a, (hl)
	srl a
	srl a
	add a, a
	add a, a
	or e
	ld e, a
	inc hl
	ld a, (hl)
	srl a
	srl a
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (c), e
	inc hl
	djnz -
	ret

_LABEL_151D_:
	ld a, (_RAM_FFFF_)
	push af
	ld a, $06
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C7C7_TilePalettePointer)
	ld de, _RAM_C200_
	ld b, $10
	call _LABEL_153E_
	ld hl, (_RAM_C769_SpritePalettePointer)
	ld b, $10
	call _LABEL_153E_
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_153E_:
	ld a, (hl)
	and $03
	add a, a
	add a, a
	ld (de), a
	inc de
	ld a, (hl)
	and $0C
	ld (de), a
	inc de
	ld a, (hl)
	and $18
	srl a
	srl a
	ld (de), a
	inc de
	inc hl
	djnz _LABEL_153E_
	ret

_LABEL_1557_LoadFont:
  ; ix -> de
	push ix
	pop de
  ; divide by 32
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (_RAM_C751_TextToVRAMBaseTilemapData), de
	ld a, :_DATA_816D_FontTiles | $c0 ; $C2
	ld (_RAM_FFFF_), a
  ; get value again
	push ix
	pop de
	ld hl, _DATA_816D_FontTiles
	ld b, $3C
	call _LABEL_6A7_EmitTiles
	ret

_LABEL_1583_LoadPalettes:
  ; Wait for VBLank
	xor a
	ld (_RAM_C851_FrameCounter), a
-:ld a, (_RAM_C851_FrameCounter)
	and a
	jp z, -
	di
  ; Set palette address 0
	xor a
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	nop
	ld a, $C0
	out (Port_VDPAddress), a
	ld a, (_RAM_FFFF_)
	push af
    ; Page in data
    ld a, $06
    ld (_RAM_FFFF_), a
    ld hl, (_RAM_C7C7_TilePalettePointer)
    ld b, $10 ; 16 entries
    call _LABEL_15B9_OutputData
    ld hl, (_RAM_C769_SpritePalettePointer)
    ld b, $10
    call _LABEL_15B9_OutputData
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_15B9_OutputData:
-:d a, (hl)
	out (Port_VDPData), a
	inc hl
	djnz -
	ei
	ret

_LABEL_15C1_:
	ld a, (_RAM_C859_)
	and $01
	jr z, +
	call _LABEL_1670_
	call _LABEL_1670_
	ld de, $1C80
	ld ix, _RAM_DA00_
	call _LABEL_162B_
	jr ++

+:
	call _LABEL_1699_
	call _LABEL_1699_
	ld de, $1D00
	ld ix, _RAM_DA80_
	call _LABEL_162B_
	ld a, (_RAM_C859_)
	add a, a
	and $0F
	add a, a
	add a, a
	ld l, a
	ld h, $7D
	ld e, (hl)
	inc h
	ld d, (hl)
	ld hl, _DATA_3DB80_
	add hl, de
	ld de, $1D80
	ld b, $04
	ld a, :_DATA_3DB80_ ; $0F
	ld (_RAM_FFFF_), a
	call _LABEL_6A7_EmitTiles
	ret

++:
	ld a, (_RAM_C859_)
	add a, a
	and $0F
	xor $0F
	add a, a
	add a, a
	ld l, a
	ld h, $7D
	ld e, (hl)
	inc h
	ld d, (hl)
	ld hl, _DATA_3DB80_
	add hl, de
	ld de, $1E00
	ld b, $04
	ld a, $0F
	ld (_RAM_FFFF_), a
	jp _LABEL_6A7_EmitTiles

_LABEL_162B_:
	di
	ld c, Port_VDPAddress
	out (c), e
	set 6, d
	nop
	nop
	nop
	out (c), d
	dec c
	call +
	inc ix
	call +
	ld de, $000F
	add ix, de
	call +
	inc ix
	call +
	ei
	ret

+:
	ld b, $08
	push ix
-:
	ld a, (ix+0)
	out (c), a
	ld a, (ix+32)
	out (c), a
	ld a, (ix+64)
	out (c), a
	ld a, (ix+96)
	out (c), a
	inc ix
	inc ix
	djnz -
	pop ix
	ret

_LABEL_1670_:
	ld hl, _RAM_DA00_
	call +
	ld hl, _RAM_DA20_
	call +
	ld hl, _RAM_DA40_
	call +
	ld hl, _RAM_DA60_
	call +
	ret

+:
	ld b, $10
-:
	inc hl
	ld a, (hl)
	rr a
	dec hl
	rr (hl)
	inc hl
	rr (hl)
	inc hl
	djnz -
	ret

_LABEL_1699_:
	ld hl, _RAM_DA80_
	call +
	ld hl, _RAM_DAA0_
	call +
	ld hl, _RAM_DAC0_
	call +
	ld hl, _RAM_DAE0_
	call +
	ret

+:
	push hl
	ld d, h
	ld e, l
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	push bc
	ld bc, $001E
	ldir
	pop bc
	pop hl
	ld de, $001E
	add hl, de
	ld (hl), c
	inc hl
	ld (hl), b
	ret

_LABEL_16C9_:
	ld ix, _RAM_DA00_
	ld b, $01
_LABEL_16CF_:
	push bc
	ld a, (ix+2)
	and a
	jp z, _LABEL_1730_
	ld e, a
	ld d, $00
	ld l, (ix+0)
	ld h, (ix+1)
	add hl, de
	ld (ix+0), l
	ld (ix+1), h
	ld a, (ix+3)
	ld c, a
	and $F8
	ld l, a
	ld a, c
	sub e
	ld c, a
	ld (ix+3), c
	ld a, c
	and $F8
	cp l
	jp z, _LABEL_1730_
	ld a, (ix+4)
	inc a
	and $1F
	ld (ix+4), a
	dec a
	and $1F
	ld c, a
	sla b
	ld l, (ix+5)
	ld h, (ix+6)
	ld de, _DATA_10_
	add hl, de
	ld a, c
	and $01
	ld e, a
	call +
	ld a, (ix+4)
	and $01
	jp nz, _LABEL_1730_
	ld l, (ix+5)
	ld h, (ix+6)
	inc hl
	ld (ix+5), l
	ld (ix+6), h
_LABEL_1730_:
	ld bc, $0007
	add ix, bc
	pop bc
	inc b
	ld a, b
	cp $0C
	jp nz, _LABEL_16CF_
	ret

+:
	ld a, $0E
	ld (_RAM_FFFF_), a
	push hl
	pop iy
	push bc
	ld bc, (_RAM_C7BB_)
	ld a, e
	and a
	jp z, +
	inc bc
	inc bc
+:
	ld l, (iy+0)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
	ex de, hl
	pop bc
	ld l, b
	sla l
	ld h, $7D
	ld a, (hl)
	inc h
	ld h, (hl)
	ld l, a
	ld b, $38
	sla c
	add hl, bc
	di
	ld a, l
	out (Port_VDPAddress), a
	ld a, (_DATA_5_ + 2)
	ld a, h
	or $40
	out (Port_VDPAddress), a
	ld a, (_DATA_5_ + 2)
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	inc de
	out (Port_VDPData), a
	ld bc, $0040
	add hl, bc
	ld a, h
	cp $3F
	jp c, +
	sub $07
	ld h, a
+:
	inc de
	inc de
	ld a, l
	out (Port_VDPAddress), a
	ld a, (_DATA_5_ + 2)
	ld a, h
	or $40
	out (Port_VDPAddress), a
	ld a, (_DATA_5_ + 2)
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	inc de
	out (Port_VDPData), a
	ei
	ret

_LABEL_17A9_:
	ld a, (_RAM_C859_)
	srl a
	ld e, a
	and $03
	jp nz, +
	ld a, (_RAM_C7D5_)
	xor $04
	ld (_RAM_C7D5_), a
+:
	ld a, e
	and $03
	cp $02
	ret nz
	ld a, (_RAM_C7D3_)
	xor $04
	ld (_RAM_C7D3_), a
	ret

_LABEL_17CB_:
	ld a, b
	ld (_RAM_C8B5_), a
	ld hl, (_RAM_C7C7_TilePalettePointer)
	ld a, c
	ld (_RAM_C8B3_), a
	sub $10
	jr c, +
	ld hl, (_RAM_C769_SpritePalettePointer)
	ld c, a
+:
	ld b, $00
	add hl, bc
	ld de, _RAM_C280_
	ld bc, (_RAM_C8B5_)
	ld b, $00
	ld a, $06
	ld (_RAM_FFFF_), a
	ldir
	ret

_LABEL_17F2_:
	ld hl, _RAM_C280_
	ld a, (_RAM_C8B5_)
	ld b, a
	add a, $80
	ld c, a
	dec b
	ld d, h
	ld e, l
	inc hl
	ld a, (de)
	push af
-:
	ld a, (hl)
	ld (de), a
	inc e
	inc l
	djnz -
	pop af
	ld (de), a
	di
	ld a, (_RAM_C8B3_)
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	nop
	ld a, $C0
	out (Port_VDPAddress), a
	ld a, (_RAM_C8B5_)
	ld b, a
	ld hl, _RAM_C280_
-:
	ld a, (hl)
	out (Port_VDPData), a
	inc hl
	djnz -
	ei
	ret

_LABEL_1828_:
	ld a, (_RAM_C85A_)
	cp $C0
	ret nc
	ld (_RAM_C200_), de
-:
	ld a, (_RAM_C200_)
	push hl
	ld e, a
	ld a, b
	cp $D0
	jr nz, _LABEL_183D_
	inc b
_LABEL_183D_:
	ld a, (iy+0)
	inc iy
	and a
	jr z, ++
	ld a, h
	and a
	jr nz, +
	ld a, l
	push hl
	ld hl, (_RAM_C85A_)
	ld (hl), b
	inc hl
	ld (hl), a
	inc hl
	ld (hl), c
	inc hl
	ld (_RAM_C85A_), hl
	pop hl
+:
	inc c
++:
	ld a, l
	add a, $08
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	dec e
	jp nz, _LABEL_183D_
	ld a, b
	add a, $08
	ld b, a
	pop hl
	dec d
	jp nz, -
	ld hl, (_RAM_C85A_)
	ld a, l
	cp $C0
	jr c, +
	ld l, $C0
	ld (_RAM_C85A_), hl
+:
	ld (hl), $D0
	ret

_LABEL_187E_:
	ld a, (_RAM_C85A_)
	cp $C0
	ret nc
	ld (_RAM_C200_), de
	ld a, e
	dec a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
-:
	ld a, (_RAM_C200_)
	push hl
	ld e, a
	ld a, b
	cp $D0
	jr nz, _LABEL_189E_
	inc b
_LABEL_189E_:
	ld a, (iy+0)
	inc iy
	and a
	jr z, ++
	ld a, h
	and a
	jr nz, +
	push hl
	ld a, l
	ld hl, (_RAM_C85A_)
	ld (hl), b
	inc hl
	ld (hl), a
	inc hl
	ld (hl), c
	inc hl
	ld (_RAM_C85A_), hl
	pop hl
+:
	inc c
++:
	ld a, l
	sub $08
	ld l, a
	ld a, h
	sbc a, $00
	ld h, a
	dec e
	jp nz, _LABEL_189E_
	ld a, b
	add a, $08
	ld b, a
	pop hl
	dec d
	jp nz, -
	ld hl, (_RAM_C85A_)
	ld a, l
	cp $C0
	jr c, +
	ld l, $C0
	ld (_RAM_C85A_), hl
+:
	ld (hl), $D0
	ret

_LABEL_18DF_:
	ld a, (_RAM_C85A_)
	cp $C0
	ret nc
	ld (_RAM_C200_), de
	ld a, (ix+34)
	ld e, a
	ld d, $00
	dec e
	add iy, de
	ld a, (ix+35)
	add a, c
	dec a
	ld c, a
	ld de, (_RAM_C200_)
	ld a, e
	dec a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ld a, d
	dec a
	add a, a
	add a, a
	add a, a
	add a, b
	ld b, a
-:
	ld a, (_RAM_C200_)
	push hl
	ld e, a
	ld a, b
	cp $D0
	jr nz, _LABEL_1919_
	inc b
_LABEL_1919_:
	ld a, (iy+0)
	dec iy
	and a
	jr z, ++
	ld a, h
	and a
	jr nz, +
	push hl
	ld a, l
	ld hl, (_RAM_C85A_)
	ld (hl), b
	inc hl
	ld (hl), a
	inc hl
	ld (hl), c
	inc hl
	ld (_RAM_C85A_), hl
	pop hl
+:
	dec c
++:
	ld a, l
	sub $08
	ld l, a
	ld a, h
	sbc a, $00
	ld h, a
	dec e
	jp nz, _LABEL_1919_
	ld a, b
	sub $08
	ld b, a
	pop hl
	dec d
	jp nz, -
	ld hl, (_RAM_C85A_)
	ld a, l
	cp $C0
	jr c, +
	ld l, $C0
	ld (_RAM_C85A_), hl
+:
	ld (hl), $D0
	ret

_LABEL_195A_:
	ld a, (_RAM_C85A_)
	cp $C0
	ret nc
	ld a, (ix+34)
	ld (_RAM_C200_), de
	ld e, a
	ld d, $00
	dec e
	add iy, de
	ld a, (ix+35)
	add a, c
	dec a
	ld c, a
	ld a, (_RAM_C201_)
	dec a
	add a, a
	add a, a
	add a, a
	add a, b
	ld b, a
	ld a, (_RAM_C201_)
	ld d, a
-:
	ld a, (_RAM_C200_)
	push hl
	ld e, a
	ld a, b
	cp $D0
	jr nz, _LABEL_198B_
	inc b
_LABEL_198B_:
	ld a, (iy+0)
	dec iy
	and a
	jr z, ++
	ld a, h
	and a
	jr nz, +
	push hl
	ld a, l
	ld hl, (_RAM_C85A_)
	ld (hl), b
	inc hl
	ld (hl), a
	inc hl
	ld (hl), c
	inc hl
	ld (_RAM_C85A_), hl
	pop hl
+:
	dec c
++:
	ld a, l
	add a, $08
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	dec e
	jp nz, _LABEL_198B_
	ld a, b
	sub $08
	ld b, a
	pop hl
	dec d
	jp nz, -
	ld hl, (_RAM_C85A_)
	ld a, l
	cp $C0
	jr c, +
	ld l, $C0
	ld (_RAM_C85A_), hl
+:
	ld (hl), $D0
	ret

_LABEL_19CC_:
	ld a, (_RAM_C7DC_)
	inc a
	ld b, a
	ld a, (_RAM_C403_)
	cp b
	jr c, +
	ld a, b
+:
	ld (_RAM_C7A9_), a
	add a, $0C
	ld (_RAM_C7AA_), a
	ret

_LABEL_19E1_:
	ld a, (_RAM_C7DE_)
	add a, $02
	ld (_RAM_C7AB_), a
	add a, $08
	ld (_RAM_C7AC_), a
	ret

_LABEL_19EF_:
	push de
	push hl
	ld l, b
	ld h, $7D
	ld a, (hl)
	inc h
	ld h, (hl)
	ld l, a
	add hl, hl
	ld (_RAM_C822_IntroButtonPressed), hl
	srl h
	rr l
	pop de
	add hl, de
	ld de, $0020
	and a
	sbc hl, de
	pop de
	ld a, b
	ld (_RAM_C824_), a
	di
	ld a, e
	out (Port_VDPAddress), a
	ld a, d
	or $40
	nop
	nop
	nop
	out (Port_VDPAddress), a
_LABEL_1A19_:
	ld a, (_RAM_C824_)
	ld b, a
_LABEL_1A1D_:
	push hl
	ld d, $7C
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	ld e, (hl)
	ld a, (de)
	out (Port_VDPData), a
	inc hl
	pop hl
	ld de, $0020
	and a
	sbc hl, de
	dec b
	jp nz, _LABEL_1A1D_
	ld de, (_RAM_C822_IntroButtonPressed)
	add hl, de
	dec c
	jp nz, _LABEL_1A19_
	ei
	ret

_LABEL_1AD6_:
	push ix
	pop hl
	ld a, l
	ld hl, _RAM_C8BD_
	and a
	jr z, +
	inc hl
	inc hl
+:
	ld a, (hl)
	and a
	jr nz, +
	ld a, (_RAM_C82F_DirectionsPressed)
	and a
	ret z
--:
	inc (hl)
	inc hl
	ld (hl), $08
	ret

+:
	cp $01
	jr nz, +
	ld a, (_RAM_C82F_DirectionsPressed)
	and a
	jr z, --
-:
	inc hl
	dec (hl)
	ret nz
	dec hl
	ld (hl), $00
	ret

+:
	cp $02
	jr nz, +
	ld a, (_RAM_C82F_DirectionsPressed)
	and a
	jr nz, --
	jp -

+:
	ld a, (_RAM_C82F_DirectionsPressed)
	and a
	ret nz
	ld (hl), $00
	ret

_LABEL_1B16_:
	ld hl, $0000
	jr +

; Data from 1B1B to 1B24 (10 bytes)
.db $21 $08 $00 $18 $05 $21 $00 $0F $18 $00

+:
	ld a, $10
_LABEL_1B27_SetPaletteEntry:
	di
	out (Port_VDPAddress), a
	ld ($0007), a
	ld ($0007), a
	ld a, $C0
	out (Port_VDPAddress), a
	ld ($0007), a
	ld ($0007), a
	ld a, l
	out (Port_VDPData), a
	ld ($0007), a
	ld ($0007), a
	ei
	ret

_LABEL_1B45_GetInputsP2:
	ld a, (_RAM_C837_Player2InputsEnabled)
	and a
	ret nz
	ld hl, $0000
	ld (_RAM_C82F_DirectionsPressed), hl
	ld (_RAM_C831_ButtonsPressed), hl
	call _LABEL_639_GetPlayer2Buttons
	ld hl, (_RAM_C82F_DirectionsPressed)
	ld a, l
	or h
	ld hl, (_RAM_C831_ButtonsPressed) ; Or them into P1 inputs
	or l
	or h
	ld (_RAM_C837_Player2InputsEnabled), a
	ret

_LABEL_1B64_:
	ld ix, _RAM_C460_
	ld b, $02
_LABEL_1B6A_:
	ld a, (ix+0)
	and a
	jp z, _LABEL_2E00_
	ld e, a
	ld a, (ix+1)
	cp $10
	jr nz, ++
	dec (ix+21)
	jp nz, _LABEL_2E00_
	ld a, (ix+0)
	cp $13
	jr nz, +
	ld a, $02
	ld (_RAM_C779_GameState), a
+:
	call _LABEL_2F72_
	call _LABEL_4D6D_
	jp _LABEL_2E00_

++:
	push bc
	ld a, e
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_1BA3_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	jp (hl)

; Jump Table from 1BA3 to 1BFC (45 entries, indexed by  $C490)
_DATA_1BA3_:
.dw _LABEL_2DFF_ _LABEL_2DFF_ _LABEL_2DFF_ _LABEL_2B8A_ _LABEL_1CEB_ _LABEL_1F12_ _LABEL_2656_ _LABEL_2DFF_
.dw _LABEL_262C_ _LABEL_2411_ _LABEL_23F2_ _LABEL_2DFF_ _LABEL_295D_ _LABEL_1F06_ _LABEL_2DFF_ _LABEL_2DFF_
.dw _LABEL_2046_ _LABEL_2046_ _LABEL_1F79_ _LABEL_1D7D_ _LABEL_1F34_ _LABEL_2DFF_ _LABEL_2DFF_ _LABEL_2DFF_
.dw _LABEL_2A2C_ _LABEL_27E3_ _LABEL_29C7_ _LABEL_26AD_ _LABEL_248C_ _LABEL_25C7_ _LABEL_2788_ _LABEL_2DFF_
.dw _LABEL_2CB1_ _LABEL_2CB1_ _LABEL_2C51_ _LABEL_1BFD_ _LABEL_2D02_ _LABEL_2D07_ _LABEL_2D0C_ _LABEL_2D1A_
.dw _LABEL_2D5E_ _LABEL_2528_ _LABEL_25DD_ _LABEL_2614_ _LABEL_1C09_

; 36th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1BFD_:
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

; 45th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1C09_:
	ld a, (ix+1)
	and a
	jr z, _LABEL_1C52_
	dec a
	jp z, _LABEL_1C92_
	dec a
	jr z, ++
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $01
	jr nz, +
	call _LABEL_6C89_
	jp _LABEL_2DFF_

+:
	cp $4B
	jp nz, _LABEL_2DFF_
	xor a
	ld (ix+1), a
	ld (ix+24), a
	jp _LABEL_2DFF_

++:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	dec a
	ld (ix+24), a
	jp nz, _LABEL_1CDB_
	ld (ix+1), $03
	ld (ix+21), $00
	jp _LABEL_1CDB_

_LABEL_1C52_:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	inc a
	ld (ix+24), a
	cp $05
	jr nz, _LABEL_1CDB_
	ld (ix+1), $01
	ld (ix+21), $00
	ld (ix+7), $FF
-:
	call _LABEL_50EC_
	and $07
	cp $05
	jr nc, -
	cp (ix+27)
	jr z, -
	ld (ix+27), a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_1CE1_
	add hl, de
	ld a, (hl)
	ld (ix+28), a
	inc hl
	ld a, (hl)
	ld (ix+29), a
_LABEL_1C92_:
	call _LABEL_5077_
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $0A
	jp nc, +
	ld a, (ix+24)
	inc a
	and $01
	ld (ix+24), a
	add a, $05
	jr _LABEL_1CDB_

+:
	xor a
	ld (ix+6), a
	ld (ix+7), a
	ld a, (ix+28)
	ld (ix+3), a
	ld a, (ix+29)
	ld (ix+5), a
	ld (ix+2), $00
	ld (ix+4), $80
	ld (ix+1), $02
	ld (ix+24), $05
	jp _LABEL_2DFF_

_LABEL_1CDB_:
	ld hl, $7B99
	jp _LABEL_2DF3_

; Data from 1CE1 to 1CEA (10 bytes)
_DATA_1CE1_:
.db $03 $03 $03 $08 $08 $08 $0D $03 $0D $08

; 5th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1CEB_:
	ld a, (ix+1)
	and a
	jr z, _LABEL_1D34_
	ld hl, $80B4
	ld (ix+19), l
	ld (ix+20), h
	ld a, (ix+44)
	and a
	call nz, _LABEL_6090_
	ld a, (ix+21)
	dec a
	ld (ix+21), a
	jp nz, _LABEL_2DFF_
	ld a, (ix+29)
	and a
	jr z, +
	sub $08
	ld (ix+21), a
	ld (ix+29), $00
	ld a, (ix+6)
	neg
	ld (ix+6), a
	ld a, (ix+7)
	neg
	ld (ix+7), a
	jp _LABEL_2DFF_

+:
	ld (ix+1), $00
	jp _LABEL_2DFF_

_LABEL_1D34_:
	push ix
	pop iy
	ld de, $FF40
	add iy, de
	ld l, (iy+2)
	ld h, (iy+3)
	ld (ix+2), l
	ld (ix+3), h
	ld l, (iy+4)
	ld h, (iy+5)
	inc h
	ld (ix+4), l
	ld (ix+5), h
	ld a, (iy+6)
	ld (ix+6), a
	ld a, (iy+7)
	ld (ix+7), a
	ld a, (iy+8)
	ld (ix+8), a
	ld hl, $80B9
	ld a, (ix+0)
	dec a
	jr z, +
	ld hl, $80BE
+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

; 20th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1D7D_:
	ld a, (ix+29)
	and a
	jp nz, _LABEL_1E3D_
	ld a, (ix+1)
	and a
	jp z, _LABEL_1E25_
	dec a
	jr z, _LABEL_1DE4_
	dec a
	jr z, +
	dec a
	jr z, _LABEL_1E10_
	cp $04
	jp nz, _LABEL_2DFF_
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	jp _LABEL_1E2B_

+:
	bit 7, (ix+7)
	jp nz, _LABEL_2DFF_
	call _LABEL_1EE1_
	call _LABEL_1EC4_
	ld a, (ix+5)
	cp $09
	jp nz, _LABEL_2DFF_
	xor a
	ld (ix+4), $C0
	ld (ix+6), a
	ld (ix+7), a
	ld (ix+37), a
	ld (ix+8), a
	ld (ix+1), $03
	ld e, $28
	ld a, (ix+27)
	cp $07
	jr nz, +
	ld e, $05
+:
	ld (ix+21), a
	ld (ix+27), $00
	call _LABEL_2FAE_
	jp _LABEL_2DFF_

_LABEL_1DE4_:
	dec (ix+21)
	jr nz, +
	xor a
	ld (ix+6), a
	ld (ix+7), a
	ld (ix+1), a
	ld (ix+21), $32
	jp _LABEL_2DFF_

+:
	ld a, (_RAM_C859_)
	and $01
	call nz, _LABEL_1EC4_
	ld a, (_RAM_C859_)
	and $1F
	jp nz, _LABEL_2DFF_
	call _LABEL_1EE1_
	jp _LABEL_2DFF_

_LABEL_1E10_:
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	ld (ix+1), $01
	ld (ix+21), $B4
	ld (ix+4), $00
	jp _LABEL_2DFF_

_LABEL_1E25_:
	dec (ix+21)
	jp nz, _LABEL_2DFF_
_LABEL_1E2B_:
	call _LABEL_1EE1_
	ld (ix+1), $02
	ld (ix+7), $91
	ld (ix+8), $03
	jp _LABEL_2DFF_

_LABEL_1E3D_:
	ld (ix+25), $FF
	ld iy, (_RAM_C8C9_)
	ld l, (iy+2)
	ld h, (iy+3)
	ld (ix+2), l
	ld (ix+3), h
	ld l, (iy+4)
	ld h, (iy+5)
	inc h
	inc h
	ld (ix+4), l
	ld (ix+5), h
	ld a, (iy+36)
	ld (ix+36), a
	ld a, (iy+6)
	ld (ix+6), a
	ld a, (iy+7)
	ld (ix+7), a
	ld a, (iy+37)
	ld (ix+37), a
	ld a, (iy+8)
	ld (ix+8), a
	ld a, (iy+1)
	ld (ix+1), a
	cp $07
	jp z, _LABEL_2DFF_
	ld hl, $814A
	cp $03
	jr z, ++
	ld hl, $8159
	cp $00
	jr z, ++
	cp $02
	jr z, ++
	ld a, (_RAM_C859_)
	and $0F
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	inc a
	cp $03
	jr c, +
	xor a
+:
	ld (ix+24), a
	cp $02
	jr z, ++
	ld hl, $814F
	and a
	jr z, ++
	ld hl, $8154
++:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

_LABEL_1EC4_:
	ld hl, (_RAM_C777_)
	ld a, $24
	add a, l
	ld l, a
	ld a, (hl)
	cp (ix+36)
	ret z
	ld e, $FF
	jr c, +
	ld e, $01
+:
	ld a, (ix+36)
	add a, e
	cp $30
	ret nc
	ld (ix+36), a
	ret

_LABEL_1EE1_:
	ld hl, (_RAM_C777_)
	ld de, $0003
	add hl, de
	ld e, $00
	ld d, $00
	ld a, (hl)
	cp (ix+3)
	jr z, +
	ld d, $FF
	ld e, $E8
	jr c, +
	ld d, $01
	ld e, $18
+:
	ld (ix+6), e
	ld a, d
	and a
	ret z
	ld (ix+26), a
	ret

; 14th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1F06_:
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

; 6th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1F12_:
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $02
	jp c, _LABEL_2DFF_
	ld hl, $8113
	cp $06
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

; 21st entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1F34_:
	bit 7, (ix+7)
	jr nz, +
	ld b, (ix+36)
	ld l, (ix+2)
	ld h, (ix+3)
	call _LABEL_4D24_
	cp (ix+5)
	jr nc, +
	ld (ix+5), a
	ld (ix+4), $00
	xor a
	ld (ix+6), a
	ld (ix+7), a
	ld (ix+8), a
	ld (ix+0), $11
	jp _LABEL_2DFF_

+:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	inc a
	and $07
	ld (ix+24), a
	ld hl, $7B65
	jp _LABEL_2DF3_

; 19th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_1F79_:
	ld a, (ix+1)
	and a
	jr z, +
	cp $01
	jr z, _LABEL_1FE6_
	cp $02
	jp z, _LABEL_200A_
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	ld (ix+1), $00
	jp _LABEL_2DFF_

+:
	ld iy, (_RAM_C777_)
	ld l, (iy+6)
	ld h, $00
	bit 7, l
	jr z, +
	ld h, $FF
+:
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld e, (iy+2)
	ld d, (iy+3)
	add hl, de
	ld (ix+2), l
	ld (ix+3), h
	ld a, (iy+37)
	add a, a
	add a, a
	add a, (iy+36)
	bit 7, a
	jr z, +
	xor a
	jr ++

+:
	cp $40
	jr c, ++
	ld a, $3E
++:
	ld (ix+36), a
	ld (ix+4), $00
	ld (ix+5), $01
	ld (ix+7), $7F
	ld (ix+1), $01
	call _LABEL_6AB9_
	call _LABEL_2FAE_
	jp _LABEL_2DFF_

_LABEL_1FE6_:
	ld a, (ix+5)
	cp $0A
	jr nz, +
	ld (ix+7), $00
	ld (ix+1), $02
	ld (ix+21), $32
	jp _LABEL_2DFF_

+:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld hl, $7AED
	xor a
	jp _LABEL_2DF3_

_LABEL_200A_:
	dec (ix+21)
	jr nz, +
	ld (ix+21), $1E
	ld (ix+1), $03
	ld hl, $0000
	ld (ix+19), l
	ld (ix+20), h
	ld (ix+24), l
	ld a, (ix+29)
	inc a
	ld (ix+29), a
	cp $08
	call nc, _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld hl, $7AED
	ld a, (ix+24)
	inc a
	ld (ix+24), a
	jp _LABEL_2DF3_

; 17th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2046_:
	call _LABEL_2FC8_
	ld a, (ix+1)
	and a
	jp z, _LABEL_21AA_
	cp $01
	jp z, _LABEL_2123_
	cp $02
	jp z, _LABEL_20FB_
	cp $03
	jr z, ++
	cp $04
	jr z, +
	cp $0F
	jp z, _LABEL_212B_
	cp $07
	jr z, _LABEL_20B9_
	jp _LABEL_2DFF_

+:
	call _LABEL_4D24_
	cp (ix+5)
	jp nz, _LABEL_232F_
	xor a
	ld (ix+4), a
	ld (ix+6), a
	ld (ix+7), a
	ld (ix+8), a
	ld (ix+1), $02
	jp _LABEL_2DFF_

++:
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $19
	jp c, +
	dec (ix+36)
	cp $21
	jp c, _LABEL_2DFF_
	ld (ix+1), $00
	ld (ix+21), $00
	jp _LABEL_2DFF_

+:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld hl, $7A9D
	ld a, $09
	jp _LABEL_2DF3_

_LABEL_20B9_:
	call _LABEL_22A1_
	bit 7, (ix+7)
	jp nz, +
	ld l, (ix+2)
	ld h, (ix+3)
	ld b, (ix+36)
	call _LABEL_4D24_
	dec a
	cp (ix+5)
	jp nc, +
	inc a
	ld (ix+5), a
	ld d, $00
	ld (ix+4), d
	ld (ix+7), d
	ld (ix+8), d
	cp $0B
	jp z, _LABEL_2198_
+:
	dec (ix+21)
	jp nz, _LABEL_232F_
	ld (ix+1), $00
	ld (ix+21), $0C
	jp _LABEL_21AA_

_LABEL_20FB_:
	call _LABEL_22A1_
	ld b, (ix+36)
	ld l, (ix+2)
	ld h, (ix+3)
	call _LABEL_4D24_
	cp $0B
	jp z, _LABEL_2198_
	ld a, (ix+21)
	and a
	jr z, _LABEL_2123_
	dec a
	ld (ix+21), a
	jp nz, _LABEL_232F_
	ld (ix+1), $00
	jp _LABEL_21AA_

_LABEL_2123_:
	ld a, (ix+0)
	cp $11
	jp z, _LABEL_2192_
_LABEL_212B_:
	ld hl, (_RAM_C7DB_)
	ld a, (ix+3)
	sub h
	jp c, _LABEL_2198_
	cp $11
	jp nc, _LABEL_2198_
	call _LABEL_22A1_
	bit 7, (ix+7)
	jp nz, _LABEL_232F_
	ld l, (ix+2)
	ld h, (ix+3)
	ld b, (ix+36)
	call _LABEL_4D24_
	dec a
	cp (ix+5)
	jp nc, _LABEL_232F_
	inc a
	ld (ix+5), a
	ld d, $00
	ld (ix+4), d
	ld (ix+7), d
	ld (ix+8), d
	ld (ix+6), d
	cp $0B
	jp z, _LABEL_2198_
	ld a, (ix+1)
	cp $0F
	jr z, +
	cp $02
	jr nz, ++
	ld (ix+21), $32
	jp _LABEL_232F_

+:
	ld a, (ix+25)
	and a
	jp z, _LABEL_2198_
	ld (ix+1), $02
	ld (ix+21), $3C
	jp _LABEL_232F_

_LABEL_2192_:
	call _LABEL_22A1_
	jp _LABEL_232F_

_LABEL_2198_:
	ld (ix+1), $10
	ld (ix+21), $04
	jp _LABEL_2DFF_

++:
	ld (ix+1), $00
	jp _LABEL_232F_

_LABEL_21AA_:
	ld a, (ix+21)
	and a
	jr z, +
	dec a
	ld (ix+21), a
	call _LABEL_22A1_
	jp _LABEL_232F_

+:
	call _LABEL_2F18_
	bit 7, (ix+26)
	jr z, +
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
+:
	bit 7, h
	jr nz, _LABEL_222B_
	ld a, h
	and a
	jr z, _LABEL_222B_
	cp $01
	jr nz, _LABEL_2226_
	ld a, l
	cp $40
	jr nc, _LABEL_2226_
	call _LABEL_2F2D_
	bit 7, a
	jr z, +
	neg
+:
	cp $03
	jr nc, _LABEL_2226_
	ld a, (ix+0)
	cp $11
	jp z, +
	ld (ix+1), $01
	ld (ix+7), $D8
	ld (ix+8), $03
	ld (ix+37), $00
	ld a, (ix+26)
	add a, a
	add a, a
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	jp _LABEL_232F_

+:
	ld (ix+1), $01
	ld a, (ix+26)
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	ld (ix+37), $00
	ld (ix+24), $03
	jp _LABEL_232F_

_LABEL_2226_:
	ld a, (ix+26)
	jr ++

_LABEL_222B_:
	ld a, (_RAM_C7EB_)
	cp b
	jr nz, +++
	ld a, h
	and a
	jr z, +
	cp $FF
	jp c, _LABEL_2292_
+:
	ld (ix+21), $14
	ld a, (ix+26)
	neg
++:
	add a, a
	add a, a
	add a, a
	ld e, a
	add a, a
	add a, e
	ld (ix+6), a
+++:
	call _LABEL_50EC_
	and $03
	ld e, a
	call _LABEL_2F2D_
	ld d, $00
	add a, e
	and a
	jr z, _LABEL_2264_
	ld e, $01
	bit 7, a
	jr z, +
	ld e, $FF
+:
	ld a, e
_LABEL_2264_:
	ld (ix+37), a
	and a
	jr z, ++
	add a, (ix+36)
	ld b, a
	ld l, (ix+2)
	ld h, (ix+3)
	push de
	call _LABEL_4D24_
	pop de
	sub (ix+5)
	jr nc, +
	ld a, d
	and a
	jr nz, ++
	ld a, e
	neg
	ld d, $01
	jr _LABEL_2264_

+:
	ld (ix+36), b
++:
	call _LABEL_22A1_
	jp _LABEL_232F_

_LABEL_2292_:
	ld a, (ix+26)
	neg
	ld (ix+26), a
	ld (ix+6), $00
	jp _LABEL_232F_

_LABEL_22A1_:
	ld a, (ix+0)
	cp $11
	jr z, _LABEL_22E7_
_LABEL_22A8_:
	ld a, (ix+6)
	and a
	ret z
	ld e, a
	ld d, $00
	bit 7, a
	jr z, +
	ld d, $FF
+:
	ld l, (ix+2)
	ld h, (ix+3)
	add hl, de
	ld b, (ix+36)
	call _LABEL_4D24_
	sub (ix+5)
	jr c, +
	ret z
	cp $03
	ret c
	ld a, (ix+8)
	and a
	ret nz
	ld (ix+1), $04
	ld (ix+7), $E0
	ld (ix+8), $03
	ld (ix+37), $00
	ret

+:
	ld (ix+6), $00
	ret

_LABEL_22E7_:
	ld a, (ix+1)
	cp $0F
	jr z, _LABEL_22A8_
	ld a, (ix+6)
	ld e, a
	ld d, $00
	bit 7, a
	jr z, +
	ld d, $FF
+:
	ld l, (ix+2)
	ld h, (ix+3)
	add hl, de
	ld b, (ix+36)
	call _LABEL_4D24_
	cp $0B
	jr nc, ++
	cp (ix+5)
	ret z
	ld l, a
	sub (ix+5)
	jr nc, +
	add a, $03
	jr nc, ++
+:
	push hl
	ld hl, (_RAM_C777_)
	ld a, $05
	add a, l
	ld l, a
	ld a, (hl)
	pop hl
	cp l
	jr nz, ++
	ld (ix+5), l
	ret

++:
	ld (ix+6), $00
	ret

_LABEL_232F_:
	pop bc
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2E00_
	push bc
	ld a, (ix+0)
	cp $11
	jp z, _LABEL_23A1_
	ld hl, $7A9D
	ld a, (ix+1)
	cp $01
	jr z, _LABEL_2393_
	cp $02
	jr z, _LABEL_2390_
	cp $04
	jr z, +
	cp $0F
	jr z, ++
	cp $07
	jr z, _LABEL_236F_
+:
	ld a, $05
	jr z, +++
	ld a, (ix+24)
	inc a
	and $03
	cp $03
	jr nz, +
	xor a
+:
	ld (ix+24), a
	inc a
	jr +++

_LABEL_236F_:
	ld e, $07
	ld a, (ix+6)
	and $80
	and (ix+26)
	jp nz, +
	inc e
+:
	ld a, e
	jr +++

++:
	ld a, (ix+7)
	cp $80
	jr c, +
	cp $E0
	jp c, _LABEL_236F_
+:
	ld a, $06
	jr +++

_LABEL_2390_:
	xor a
	jr +++

_LABEL_2393_:
	ld a, $04
+++:
	bit 7, (ix+26)
	jp z, _LABEL_2DF3_
	add a, $0A
	jp _LABEL_2DF3_

_LABEL_23A1_:
	ld hl, $7B0D
	ld a, (ix+1)
	and a
	jr z, ++++
	cp $01
	jr z, +++
	cp $02
	jr z, +
	cp $0F
	jr z, ++
-:
	ld a, $08
	jp +++++

+:
	ld a, $07
	jp +++++

++:
	ld a, (ix+7)
	cp $80
	jr nc, -
	ld a, $09
	jr +++++

+++:
	ld a, (ix+24)
	inc a
	cp $07
	ld (ix+24), a
	jr c, +++++
	ld (ix+1), $00
	jp _LABEL_2DFF_

++++:
	ld a, (ix+24)
	inc a
	and $03
	ld (ix+24), a
+++++:
	bit 7, (ix+26)
	jp z, _LABEL_2DF3_
	add a, $0B
	jp _LABEL_2DF3_

; 11th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_23F2_:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	inc a
	ld (ix+24), a
	cp $06
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	dec a
	ld hl, $7B85
	jp _LABEL_2DF3_

; 10th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2411_:
	ld a, (ix+1)
	cp $01
	jr nz, _LABEL_2473_
	ld a, (_RAM_C859_)
	and $0F
	jr nz, _LABEL_2473_
	push bc
	call _LABEL_6C5F_
	pop bc
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $02
	jr nz, ++
	ld a, (ix+27)
	cp $29
	jr nz, +
	call _LABEL_2ED7_
	jp _LABEL_2DFF_

+:
	call _LABEL_2EF2_
	jp _LABEL_2DFF_

++:
	cp $14
	jp c, _LABEL_2473_
	xor a
	ld (_RAM_C8B1_), a
	ld a, (_RAM_C7DE_)
	add a, $0B
	ld (_RAM_C405_), a
	ld e, a
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld a, e
	ld (_RAM_C435_), a
+:
	ld a, e
	cp $6E
	jr c, +
	ld a, $01
	ld (_RAM_C86E_), a
	ld a, $02
	ld (_RAM_C779_GameState), a
+:
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

_LABEL_2473_:
	ld a, (ix+1)
	xor $01
	ld e, a
	add a, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld hl, $813B
	add hl, de
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

; 29th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_248C_:
	ld a, (_RAM_C7DE_)
	dec a
	cp (ix+5)
	jr nz, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld a, (ix+1)
	and a
	jr z, +
	cp $01
	jr z, _LABEL_24EB_
	jp _LABEL_2DFF_

+:
	ld a, (ix+21)
	inc a
	and $0F
	ld (ix+21), a
	jp nz, _LABEL_2DFF_
	ld a, (ix+3)
	bit 7, (ix+27)
	jr z, +
	cp $01
	jr nz, +++
	jr ++

+:
	cp $0C
	jr nz, +++
++:
	ld a, (ix+27)
	neg
	ld (ix+27), a
+++:
	ld (ix+1), $01
	ld (ix+6), $00
	ld hl, (_RAM_C777_)
	ld a, $03
	add a, l
	ld l, a
	ld a, (hl)
	cp (ix+3)
	ld e, $FF
	jr c, +
	ld e, $01
+:
	ld (ix+26), e
_LABEL_24EB_:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	inc a
	ld (ix+24), a
	cp $05
	jr nz, +
	call _LABEL_6B2C_
	jr ++

+:
	cp $0C
	jp nz, ++
	xor a
	ld (ix+1), a
	ld (ix+24), a
	ld a, (ix+27)
	add a, a
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	xor a
	jr +++

++:
	ld a, (ix+24)
	srl a
	and $03
+++:
	ld hl, $7A89
	jp _LABEL_2DF3_

; 42nd entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2528_:
	ld a, (ix+1)
	cp $0F
	jr nz, +
	dec (ix+21)
	jr nz, ++
	ld (ix+1), $00
+:
	ld a, (_RAM_C7DE_)
	ld e, a
	ld a, (ix+5)
	sub e
	jr nc, +
	add a, $04
	jr c, +
	dec e
	dec e
	ld (ix+5), e
+:
	ld a, (_RAM_C8BB_)
	cp $01
	push bc
	call z, _LABEL_604D_
	pop bc
++:
	ld a, (ix+3)
	bit 7, (ix+6)
	jr nz, +
	cp $0E
	jr c, +++
	jr ++

+:
	cp $01
	jr nz, +++
++:
	ld a, (ix+6)
	neg
	ld (ix+6), a
	and $80
	ld e, a
	ld a, (ix+26)
	and $80
	cp e
	jr z, +++
	ld a, (ix+26)
	neg
	ld (ix+26), a
+++:
	ld a, (ix+7)
	bit 7, a
	jr nz, ++
	ld l, (ix+4)
	ld h, (ix+5)
	inc h
	push bc
	ld c, (ix+2)
	ld b, (ix+3)
	call _LABEL_511A_
	pop bc
	ld e, $03
	jr z, +
	ld e, $00
	ld (ix+7), e
+:
	ld (ix+8), e
++:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld hl, $7A69
	bit 7, (ix+26)
	jr z, +
	ld hl, $7A79
+:
	ld a, (ix+21)
	inc a
	and $03
	ld (ix+21), a
	jp _LABEL_2DF3_

; 30th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_25C7_:
	ld (ix+44), $01
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $2C
	jp c, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

; 43rd entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_25DD_:
	ld (ix+44), $01
	ld a, (ix+21)
	inc a
	cp $30
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld (ix+21), a
	ld hl, $8122
	cp $0C
	jr c, +
	ld hl, $811D
	cp $20
	jr c, +
	ld a, (ix+6)
	sra a
	ld (ix+6), a
	ld hl, $8118
+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

; 44th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2614_:
	ld (ix+44), $01
	ld a, (ix+21)
	inc a
	cp $40
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld (ix+21), a
	jp _LABEL_2DFF_

; 9th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_262C_:
	ld a, (_RAM_C859_)
	and $07
	cp $07
	jp nz, _LABEL_2DFF_
	ld a, (_RAM_C7DE_)
	cp (ix+5)
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld a, (ix+21)
	inc a
	cp $0F
	jr nz, +
	call _LABEL_6AE0_
	xor a
+:
	ld (ix+21), a
	jp _LABEL_2DFF_

; 7th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2656_:
	ld l, (ix+38)
	ld h, (ix+39)
	push hl
	pop iy
	ld a, (iy+2)
	ld (ix+2), a
	ld a, (iy+3)
	ld (ix+3), a
	ld l, (ix+2)
	ld h, (ix+3)
	ld b, (ix+36)
	call _LABEL_4D24_
	ld (ix+5), a
	ld (ix+4), $80
	ld a, (iy+36)
	ld (ix+36), a
	ld a, (iy+0)
	cp $12
	jr z, +
	ld a, (iy+1)
	cp $02
	jp z, _LABEL_2DFF_
	ld a, (iy+7)
	or (iy+8)
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld a, (iy+5)
	cp $0A
	call z, _LABEL_4D6D_
	jp _LABEL_2DFF_

; 28th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_26AD_:
	call _LABEL_2F99_
	ld a, (_RAM_C7DE_)
	cp (ix+5)
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld hl, (_RAM_C777_)
	inc l
	ld a, (hl)
	cp $0F
	jp z, +++
	ld a, $04
	add a, l
	ld l, a
	ld a, (hl)
	dec a
	sub (ix+5)
	jr c, +++
	cp $02
	jp nc, +++
	dec l
	dec l
	ld a, (hl)
	bit 7, (ix+26)
	jr nz, +
	cp $03
	jp c, +++
	ld e, $FC
	jr ++

+:
	cp $0D
	jp nc, +++
	ld e, $04
++:
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	sla e
+:
	ld hl, (_RAM_C777_)
	ld a, l
	add a, $06
	ld l, a
	ld a, (hl)
	add a, e
	ld (hl), a
+++:
	ld a, (_RAM_C7EB_)
	and a
	jp z, _LABEL_2DFF_
	ld a, (ix+1)
	and a
	jr z, +
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	xor a
	ld (ix+1), a
	ld (ix+44), a
	ld (ix+21), $14
	ld hl, $80FA
	jr z, _LABEL_2775_
+:
	ld hl, $80FA
	ld a, (ix+21)
	and a
	jr z, +
	dec a
	ld (ix+21), a
	jr _LABEL_2775_

+:
	ld iy, (_RAM_C777_)
	ld a, (ix+3)
	cp $08
	jr c, +
	ld a, (iy+3)
	cp $0E
	jr nc, _LABEL_2775_
	cp $0C
	jr c, _LABEL_2775_
	jr ++

+:
	ld a, (iy+3)
	cp $02
	jr c, _LABEL_2775_
	cp $04
	jr nc, _LABEL_2775_
++:
	ld a, (iy+5)
	sub (ix+5)
	jr nc, +
	neg
+:
	cp $02
	jr nc, _LABEL_2775_
	ld a, $01
	ld (ix+1), a
	ld (ix+44), a
	ld (ix+21), $08
	ld hl, $80FF
_LABEL_2775_:
	ld a, (ix+26)
	dec a
	jr z, +
	ld de, $000A
	add hl, de
+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

; 31st entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2788_:
	call _LABEL_2F99_
	ld a, (_RAM_C7DE_)
	cp (ix+5)
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld hl, (_RAM_C777_)
	ld a, $05
	add a, l
	ld l, a
	ld a, (hl)
	sub (ix+5)
	jr nc, +
	neg
+:
	cp $04
	jp nc, _LABEL_2DFF_
	dec l
	dec l
	ld a, (hl)
	sub (ix+3)
	bit 7, (ix+26)
	jr nz, +
	cp $09
	jp nc, _LABEL_2DFF_
	neg
	add a, $09
	jr ++

+:
	cp $F7
	jp c, _LABEL_2DFF_
	neg
	add a, $F7
++:
	ld e, a
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	sla e
+:
	ld hl, (_RAM_C777_)
	ld a, $06
	add a, l
	ld l, a
	ld a, (hl)
	add a, e
	ld (hl), a
	jp _LABEL_2DFF_

; 26th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_27E3_:
	call _LABEL_3033_
	ld a, (ix+1)
	cp $07
	jr nz, ++
	ld a, (ix+29)
	dec a
	ld (ix+29), a
	jr z, +
	cp $1F
	jp nz, _LABEL_2933_
	ld a, (ix+6)
	neg
	ld (ix+6), a
	jp _LABEL_2933_

+:
	ld a, (ix+31)
	ld (ix+1), a
	ld a, (ix+38)
	ld (ix+6), a
	ld a, (ix+39)
	ld (ix+7), a
++:
	ld hl, (_RAM_C777_)
	ld a, l
	add a, $03
	ld l, a
	ld a, (hl)
	sub (ix+3)
	jr c, +
	cp $02
	jr nc, +++
	bit 7, (ix+26)
	jr nz, +++
	jr ++

+:
	cp $FE
	jr c, +++
	bit 7, (ix+26)
	jr z, +++
++:
	ld a, $01
	ld (ix+24), a
	ld (ix+44), a
	jr ++++

+++:
	xor a
	ld (ix+24), a
	ld (ix+44), a
++++:
	ld a, (_RAM_C86E_)
	and a
	jp nz, +
	ld a, (ix+1)
	cp $0F
	jr z, +
	ld a, (_RAM_C7DE_)
	add a, $06
	cp (ix+28)
	jp nz, +
	ld a, $01
	ld (_RAM_C86E_), a
+:
	ld a, (ix+1)
	and a
	jr z, +
	cp $01
	jr z, ++
	cp $02
	jr z, _LABEL_28D5_
	jp _LABEL_2DFF_

+:
	ld a, (hl)
	sub (ix+3)
	jr nc, +
	bit 7, (ix+26)
	jp z, _LABEL_2933_
	neg
+:
	cp $08
	jp nc, _LABEL_2933_
	ld a, (hl)
	sub (ix+3)
	jp z, _LABEL_2933_
	ld e, a
	add a, a
	add a, a
	add a, a
	add a, e
	ld (ix+6), a
	ld a, $01
	ld (ix+1), a
++:
	cp $02
	jr z, _LABEL_28D5_
	inc (ix+21)
	ld a, (_RAM_C859_)
	and $07
	jr nz, ++
	ld e, $00
	inc l
	inc l
	ld a, (hl)
	sub (ix+5)
	jr z, +
	ld e, $18
	jr nc, +
	ld e, $E8
+:
	ld (ix+7), e
++:
	ld a, (ix+6)
	call _LABEL_2953_
	ld (ix+6), a
	and a
	jp nz, _LABEL_2933_
	ld (ix+1), $02
_LABEL_28D5_:
	ld a, (ix+5)
	cp (ix+27)
	jr z, ++
	ld a, (ix+6)
	sub (ix+26)
	ld (ix+6), a
	ld e, $18
	ld a, (ix+5)
	cp (ix+28)
	jr c, +
	ld e, $E8
+:
	ld (ix+7), e
	jr ++

; Data from 28F7 to 28FF (9 bytes)
.db $DD $7E $07 $DD $96 $2C $DD $77 $07

++:
	dec (ix+21)
	jr nz, _LABEL_2933_
	ld a, (ix+5)
	cp (ix+28)
	jr nz, +
	xor a
	ld (ix+7), a
	ld (ix+44), a
+:
	ld a, (ix+3)
	cp (ix+27)
	jr nz, _LABEL_2933_
	xor a
	ld (ix+2), a
	ld (ix+1), a
	ld (ix+6), a
	ld (ix+7), a
	ld (ix+4), $80
	ld a, (ix+28)
	ld (ix+5), a
_LABEL_2933_:
	ld hl, $80F0
	ld a, (ix+26)
	dec a
	jr z, +
	ld hl, $80E6
+:
	ld a, (ix+24)
	ld e, a
	add a, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	add hl, de
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

_LABEL_2953_:
	and a
	ret z
	cp $80
	jr nc, +
	dec a
	ret

+:
	inc a
	ret

; 13th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_295D_:
	ld a, (_RAM_C7DE_)
	dec a
	cp (ix+5)
	jr c, +
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld a, (ix+1)
	and a
	jr nz, ++
	ld hl, (_RAM_C777_)
	ld de, $0005
	add hl, de
	ld a, (hl)
	sub (ix+5)
	jr nc, +
	neg
+:
	cp $04
	jp nc, _LABEL_2DFF_
	ld (ix+1), $01
	ld (ix+21), $00
	ld a, (ix+26)
	neg
	add a, a
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	call _LABEL_6B79_
	jp _LABEL_2DFF_

++:
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $40
	jr z, ++
	cp $20
	jr z, +
	jp _LABEL_2DFF_

+:
	ld a, (ix+6)
	neg
	ld (ix+6), a
	jp _LABEL_2DFF_

++:
	xor a
	ld (ix+1), a
	ld (ix+6), a
	jp _LABEL_2DFF_

; 27th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_29C7_:
	ld a, (ix+1)
	and a
	jr z, +
	dec (ix+21)
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

+:
	ld a, (_RAM_C859_)
	and $03
	jp nz, _LABEL_2DFF_
	ld a, (ix+24)
	inc a
	ld (ix+24), a
	cp $03
	jr z, ++
	ld hl, $80C8
	dec a
	jr z, +
	ld hl, $80CD
+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

++:
	ld d, $60
	ld hl, $80D7
	ld a, (ix+3)
	cp $08
	jr c, +
	ld d, $A0
	ld hl, $80D2
+:
	ld (ix+19), l
	ld (ix+20), h
	ld a, (ix+3)
	add a, (ix+26)
	ld (ix+3), a
	ld (ix+6), d
	ld (ix+1), $01
	ld (ix+21), $28
	jp _LABEL_2DFF_

; 25th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2A2C_:
	push bc
	call _LABEL_3033_
	pop bc
	ld a, (ix+1)
	and a
	jr z, +
	dec a
	jr z, _LABEL_2A61_
	dec a
	jp z, _LABEL_2AE0_
	jp _LABEL_2DFF_

+:
	ld hl, $808C
	ld a, (_RAM_C7DE_)
	add a, $04
	cp (ix+5)
	jp nz, _LABEL_2B77_
	ld a, (_RAM_C86E_)
	inc a
	ld (_RAM_C86E_), a
	ld (ix+1), $01
	ld (ix+21), $0F
	jp _LABEL_2B77_

_LABEL_2A61_:
	ld a, (_RAM_C859_)
	and $07
	jr nz, ++
	sra (ix+6)
	ld e, $01
	ld hl, (_RAM_C777_)
	ld a, l
	add a, $03
	ld l, a
	ld a, (hl)
	cp (ix+3)
	jr nc, +
	ld e, $FF
+:
	ld (ix+26), e
++:
	ld e, $F0
	ld a, (_RAM_C7DE_)
	add a, $02
	cp (ix+5)
	jr c, +
	ld e, $10
+:
	ld (ix+7), e
	jr nz, ++
	dec (ix+21)
	jr nz, ++
	ld (ix+1), $02
	ld (ix+44), $01
	ld e, $00
	ld d, $E0
	ld a, (hl)
	cp (ix+3)
	jr nc, +
	ld a, (ix+26)
	neg
	add a, a
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $E0
+:
	ld hl, (_RAM_C777_)
	ld a, l
	add a, $05
	ld l, a
	ld a, (hl)
	dec a
	sub (ix+5)
	jr c, +
	ld d, $28
+:
	ld (ix+6), e
	ld (ix+7), d
	jr _LABEL_2AE0_

++:
	ld hl, $8091
	ld a, (_RAM_C859_)
	and $02
	jp z, _LABEL_2B77_
	ld hl, $808C
	jp _LABEL_2B77_

_LABEL_2AE0_:
	ld hl, (_RAM_C777_)
	ld a, l
	add a, $03
	ld l, a
	ld a, (hl)
	sub (ix+3)
	add a, (ix+26)
	and $80
	ld e, a
	ld a, (ix+26)
	and $80
	cp e
	jp nz, _LABEL_2B65_
	inc l
	inc l
	ld a, (hl)
	sub (ix+5)
	jr c, +
	cp $03
	jr nc, +++
+:
	ld a, (ix+7)
	bit 7, a
	jr z, +
	inc a
	and a
	jr nz, ++
	ld a, $20
+:
	sub $01
	cp $08
	jr c, +++
++:
	ld (ix+7), a
+++:
	ld a, (ix+6)
	bit 7, (ix+26)
	jr z, +
	sub $01
	bit 7, a
	jr z, ++
	cp $C0
	jr c, +++
	jr ++

+:
	add a, $01
	bit 7, a
	jr nz, ++
	cp $40
	jr nc, +++
++:
	ld (ix+6), a
+++:
	ld a, (ix+3)
	bit 7, a
	jr z, +
	cp $FE
	jr nc, +++
	add a, $12
	jr ++

+:
	cp $12
	jr c, +++
	sub $12
++:
	ld (ix+3), a
+++:
	ld a, (_RAM_C7DE_)
	add a, $0C
	cp (ix+5)
	jr c, _LABEL_2B65_
	ld hl, $8096
	jr _LABEL_2B77_

_LABEL_2B65_:
	ld (ix+44), $00
	ld (ix+1), $01
	ld (ix+21), $03
	call _LABEL_2F39_
	jp _LABEL_2A61_

_LABEL_2B77_:
	ld de, $0014
	bit 7, (ix+26)
	jr nz, +
	add hl, de
+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

; 4th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2B8A_:
	ld a, $03
	ld (_RAM_FFFF_), a
	ld a, (ix+21)
	inc a
	and $0F
	ld (ix+21), a
	jp nz, _LABEL_2DFF_
	ld a, (ix+27)
	and a
	jr z, +
	dec a
	ld (ix+27), a
	jp _LABEL_2DFF_

+:
	ld l, (ix+38)
	ld h, (ix+39)
	ld a, (hl)
	cp $FF
	jp z, _LABEL_2C3C_
	cp $80
	jp z, _LABEL_2C42_
	ld (ix+26), a
	inc hl
	ld (ix+38), l
	ld (ix+39), h
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_71FD_
	add hl, de
	ld a, (hl)
	ld (ix+6), a
	inc hl
	ld a, (hl)
	ld (ix+7), a
	ld hl, _DATA_7221_
	ld a, (ix+31)
	and a
	jr z, +
	ld hl, _DATA_7239_
+:
	add hl, de
	ld a, (hl)
	ld (ix+19), a
	inc hl
	ld a, (hl)
	ld (ix+20), a
	ld c, $00
	ld a, (ix+31)
	and a
	jr nz, +
	srl e
	ld hl, _DATA_7215_
	add hl, de
	ld c, (hl)
+:
	ld a, c
	ld b, (ix+3)
	ld h, (ix+5)
	ld c, $00
	ld l, c
	and a
	jp nz, +
	push bc
	push hl
	call _LABEL_1321_
	ld a, $08
	add a, h
	ld h, a
	ld a, (hl)
	pop hl
	pop bc
+:
	push ix
	call _LABEL_13B4_
	pop ix
	ld a, (ix+31)
	and a
	jp nz, _LABEL_2DFF_
	ld a, $03
	ld (_RAM_FFFF_), a
	ld l, (ix+38)
	ld h, (ix+39)
	ld a, (hl)
	cp $FF
	jp nz, _LABEL_2DFF_
	xor a
	ld (ix+19), a
	ld (ix+20), a
	jp _LABEL_2DFF_

_LABEL_2C3C_:
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

_LABEL_2C42_:
	inc hl
	ld a, (hl)
	ld (ix+27), a
	inc hl
	ld (ix+38), l
	ld (ix+39), h
	jp _LABEL_2DFF_

; 35th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2C51_:
	ld a, (ix+41)
	and a
	jr z, +
	ld a, (ix+42)
	and a
	jr z, +
	push ix
	ld b, $05
	ld a, (ix+40)
	call _LABEL_5734_
	pop ix
	xor a
	ld (ix+42), a
	ld (ix+41), a
+:
	ld a, (ix+31)
	and a
	jr z, ++
	ld e, (ix+37)
	ld a, e
	and a
	jr nz, +
	dec (ix+21)
	jr nz, ++
	ld a, (ix+27)
	ld (ix+37), a
+:
	ld a, (ix+36)
	add a, e
	cp $40
	jr c, +
	ld a, e
	neg
	ld (ix+27), a
	ld (ix+37), $00
	ld (ix+21), $10
	jr ++

+:
	ld (ix+36), a
++:
	ld a, (ix+3)
	cp $FF
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

; 33rd entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2CB1_:
	ld a, (ix+41)
	and a
	jr z, +++
	push ix
	ld a, (ix+42)
	bit 7, a
	jr z, +
	neg
	ld b, a
	ld a, (ix+40)
	call _LABEL_5734_
	jr ++

+:
	ld b, a
	ld c, $30
	cp $01
	jr z, +
	inc c
+:
	ld a, c
	push bc
    call _LABEL_6D3D_AudioPlaySFX
	pop bc
	ld a, (ix+40)
	call _LABEL_56EE_
++:
	pop ix
	ld (ix+7), $AC
	ld (ix+8), $04
	ld (ix+21), $1C
	ld (ix+1), $10
	jp _LABEL_2DFF_

+++:
	ld a, (ix+3)
	cp $FF
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

; 37th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2D02_:
	ld hl, $0000
	jr +

; 38th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2D07_:
	ld hl, $8050
	jr +

; 39th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2D0C_:
	ld hl, $8055
	ld a, (ix+36)
	and a
	jr nz, +
	ld hl, $805A
	jr +

; 40th entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2D1A_:
	ld hl, $805F
+:
	ld a, (_RAM_C86E_)
	and a
	jp nz, _LABEL_2DFF_
	ld a, (ix+6)
	and a
	jp nz, ++
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $30
	jr c, +
	ld (ix+6), $80
+:
	srl a
	srl a
	srl a
	and $01
	jr z, +
	ld hl, $0000
+:
	ld (ix+19), l
	ld (ix+20), h
	jp _LABEL_2DFF_

++:
	ld a, (ix+3)
	cp $FF
	jp nz, _LABEL_2DFF_
	call _LABEL_4D6D_
	jp _LABEL_2DFF_

; 41st entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2D5E_:
	ld a, $03
	ld (_RAM_FFFF_), a
	ld a, (ix+27)
	and a
	jp z, _LABEL_2DCE_
	dec a
	jp z, _LABEL_2DCE_
	ld d, $00
	cp $0A
	jr c, +
	ld d, $01
	dec a
+:
	ld (ix+27), a
_LABEL_2D7A_:
	ld a, (ix+26)
	add a, a
	push bc
	ld c, a
	ld b, $00
	ld hl, _DATA_DC52_
	add hl, bc
	pop bc
	call _LABEL_2DC8_
	ld (ix+6), a
	inc hl
	call _LABEL_2DC8_
	ld (ix+7), a
	ld l, (ix+4)
	ld h, (ix+5)
	ld de, (_RAM_C7DD_)
	and a
	sbc hl, de
	jr c, +
	ld de, $0D00
	and a
	sbc hl, de
	jr c, +
	ld hl, $0000
	ld (ix+19), l
	ld (ix+20), h
+:
	ld a, (_RAM_C7EB_)
	cp b
	jp nz, _LABEL_2DFF_
	ld a, (ix+26)
	srl a
	and $03
	ld hl, $7A59
	jp _LABEL_2DF3_

_LABEL_2DC8_:
	ld a, (hl)
	bit 0, d
	ret z
	add a, a
	ret

_LABEL_2DCE_:
	ld l, (ix+38)
	ld h, (ix+39)
	ld a, (hl)
	cp $FF
	jp z, +
	ld (ix+26), a
	inc hl
	ld a, (hl)
	ld (ix+27), a
	inc hl
	ld (ix+38), l
	ld (ix+39), h
	jr _LABEL_2D7A_

+:
	ld a, $02
	ld (_RAM_C779_GameState), a
	jp _LABEL_2DFF_

_LABEL_2DF3_:
	add a, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld (ix+19), l
	ld (ix+20), h
; 1st entry of Jump Table from 1BA3 (indexed by _RAM_C490_)
_LABEL_2DFF_:
	pop bc
_LABEL_2E00_:
	ld de, $0030
	add ix, de
	inc b
	ld a, b
	cp $0E
	jp nz, _LABEL_1B6A_
	ret

; Data from 2E0D to 2ED6 (202 bytes)
.db $10 $00 $10 $F0 $00 $F0 $F0 $F0 $F0 $00 $F0 $10 $00 $10 $10 $10
.db $00 $00 $DD $7E $01 $A7 $CA $5C $2E $FE $FF $28 $13 $DD $E5 $D1
.db $2A $69 $C8 $A7 $ED $52 $C2 $D6 $2E $DD $36 $01 $00 $C3 $6A $2E
.db $DD $5E $26 $DD $56 $27 $1A $6F $26 $00 $CB $7D $CA $4E $2E $26
.db $FF $19 $DD $75 $26 $DD $74 $27 $DD $36 $01 $00 $C3 $1F $2E $DD
.db $7E $15 $A7 $CA $6A $2E $3D $DD $77 $15 $C3 $D6 $2E $DD $5E $26
.db $DD $56 $27 $1A $FE $09 $CA $B3 $2E $D2 $BC $2E $87 $4F $06 $00
.db $21 $0D $2E $09 $D5 $5E $23 $56 $DD $7E $1B $A7 $CA $94 $2E $CB
.db $23 $CB $22 $3D $C2 $8C $2E $DD $7E $00 $FE $12 $20 $04 $CB $2B
.db $CB $2A $DD $73 $06 $DD $72 $07 $D1 $13 $1A $DD $77 $15 $13 $DD
.db $36 $01 $00 $C3 $D0 $2E $13 $1A $DD $77 $1B $AF $DD $77 $15 $DD
.db $77 $01 $13 $DD $73 $26 $DD $72 $27 $AF $DD $77 $06 $DD $77 $07
.db $C3 $1F $2E $DD $73 $26 $DD $72 $27 $C9

_LABEL_2ED7_:
	ld iy, _RAM_C400_
	call +
	ld (iy+24), $01
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld iy, _RAM_C430_
	ld (iy+24), $01
	jp +

_LABEL_2EF2_:
	ld iy, _RAM_C460_
	ld de, $0030
	ld b, $02
-:
	ld a, (iy+0)
	cp $29
	jr z, +
	add iy, de
	djnz -
	ret

+:
	ld (iy+1), $10
	ld (iy+21), $40
	ld (iy+7), $B0
	ld (iy+8), $02
	ret

_LABEL_2F18_:
	ld hl, (_RAM_C777_)
	ld de, $0002
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld e, (ix+2)
	ld d, (ix+3)
	and a
	sbc hl, de
	ret

_LABEL_2F2D_:
	ld hl, (_RAM_C777_)
	ld a, $24
	add a, l
	ld l, a
	ld a, (hl)
	sub (ix+36)
	ret

_LABEL_2F39_:
	ld hl, _RAM_C4C0_
	ld de, $0030
	ld b, $0A
	ld c, $00
-:
	ld a, (hl)
	cp $18
	jr nz, ++
	inc hl
	ld a, (hl)
	dec hl
	and a
	jr z, +
	inc c
	jr ++

+:
	ex de, hl
	push ix
	pop hl
	and a
	sbc hl, de
	jr nz, +++
	ex de, hl
	ld de, $0030
++:
	add hl, de
	ld a, c
	cp $02
	ret z
	djnz -
	ret

+++:
	inc de
	ld a, $01
	ld (de), a
	ld a, (_RAM_C86E_)
	inc a
	ld (_RAM_C86E_), a
	ret

_LABEL_2F72_:
	push bc
	ld a, $0A
	ld (_RAM_FFFF_), a
	ld a, (ix+0)
	sub $10
	ret c
	ld e, a
	ld d, $00
	ld hl, _DATA_2B551_
	add hl, de
	ld a, (hl)
	and a
	jr z, ++
	ld b, a
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld a, (ix+40)
	dec a
+:
	call _LABEL_56C8_
++:
	pop bc
	ret

_LABEL_2F99_:
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld a, (_RAM_C859_)
	ld hl, $C400
	and $01
	jr z, +
	ld l, $30
+:
	ld (_RAM_C777_), hl
	ret

_LABEL_2FAE_:
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld hl, (_RAM_C777_)
	ld a, (hl)
	dec a
	jr z, +
	ld hl, $C400
	ld (_RAM_C777_), hl
	ret

+:
	ld hl, $C430
	ld (_RAM_C777_), hl
	ret

_LABEL_2FC8_:
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld a, (_RAM_C859_)
	and $0F
	cp $0F
	ret nz
	ld iy, (_RAM_C777_)
	ld a, (ix+3)
	sub (iy+3)
	jr nc, +
	neg
+:
	ld e, a
	ld a, (ix+36)
	sub (iy+36)
	jr nc, +
	neg
+:
	ld d, a
	cp $10
	jr nc, +
	ld a, e
	cp $03
	ret c
+:
	push bc
	ld a, (iy+0)
	dec a
	jr z, +
	ld iy, _RAM_C400_
	jr ++

+:
	ld iy, _RAM_C430_
++:
	ld a, (ix+3)
	sub (iy+3)
	jr nc, +
	neg
+:
	ld c, a
	ld a, (ix+36)
	sub (iy+36)
	jr nc, +
	neg
+:
	ld b, a
	ld a, c
	add a, a
	add a, a
	add a, a
	add a, a
	add a, b
	ld c, a
	ld a, e
	add a, a
	add a, a
	add a, a
	add a, a
	add a, d
	cp c
	pop bc
	ret c
	ld (_RAM_C777_), iy
	ret

_LABEL_3033_:
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld a, (_RAM_C859_)
	and $0F
	cp $0F
	ret nz
	ld iy, (_RAM_C777_)
	ld a, (ix+3)
	sub (iy+3)
	jr nc, +
	neg
+:
	ld e, a
	ld a, (ix+5)
	sub (iy+5)
	jr nc, +
	neg
+:
	ld d, a
	cp $04
	jr nc, +
	ld a, e
	cp $04
	ret c
+:
	ld a, (iy+0)
	dec a
	jr z, +
	ld iy, _RAM_C400_
	jr ++

+:
	ld iy, _RAM_C430_
++:
	ld a, (ix+3)
	sub (iy+3)
	jr nc, +
	neg
+:
	ld c, a
	ld a, (ix+5)
	sub (iy+5)
	jr nc, +
	neg
+:
	ld b, a
	add a, c
	ld c, a
	ld a, e
	add a, d
	cp c
	ret c
	ld (_RAM_C777_), iy
	ret

_LABEL_3093_StartupPart2:
	call _LABEL_2EA_InitVDPFull
	ld hl, _RAM_C500_
	ld de, _RAM_C500_ + 1
	ld bc, $1BFF
	ld (hl), $00
	ldir
	call _LABEL_2BF_InitSomeRAM
	call _LABEL_3B7_DisableSpritesAndClearTiles
	call _LABEL_295_ScreenOn
	call _LABEL_362C_CheatEntry
	ld a, $01
	ld (_RAM_C765_), a

_LABEL_30B4_:
	ld a, $01
	ld (_RAM_C85C_AudioEnabled), a

	ld hl, _RAM_C779_GameState
	ld de, _RAM_C779_GameState + 1
	ld bc, $0021
	ld (hl), $00
	ldir

	call _LABEL_3F74_ShowMenus

	ld a, (_RAM_C779_GameState)
	cp $80
	jp z, _LABEL_3101_StartLevel
	cp $81
	jp z, _LABEL_30B4_
	call _LABEL_3C6C_GameModeMenu
	call _LABEL_282_ScreenOff
	ld a, (_RAM_C757_CheatEnabled)
	and a
	call nz, _LABEL_3ED2_ShowLevelSelect
	call _LABEL_3899_
	ld a, (_RAM_C763_)
	ld (_RAM_C794_), a
	ld (_RAM_C795_), a
	ld a, (_RAM_C764_)
	ld (_RAM_C782_), a
	ld (_RAM_C78D_), a
	ld a, (_RAM_C762_)
	ld (_RAM_C781_), a
	ld (_RAM_C78C_), a
_LABEL_3101_StartLevel:
	call _LABEL_C6C_
	call _LABEL_3E4_
	call _LABEL_50D1_
	xor a
	ld (_RAM_C821_), a
	ld (_RAM_C779_GameState), a
	call _LABEL_557D_
	call _LABEL_346B_
	call _LABEL_1583_LoadPalettes
_LABEL_311A_:
	call _LABEL_282_ScreenOff
	call _LABEL_36B4_
	ld hl, _RAM_C822_IntroButtonPressed
	ld de, _RAM_C822_IntroButtonPressed + 1
	ld bc, $00A9
	ld (hl), $00
	ldir
	call _LABEL_50D1_
	ld a, (_RAM_C7C0_)
	cp $05
	jr nz, +
	ld de, _RAM_CA00_
	ld hl, _RAM_D200_
	ld bc, $0480
	ldir
+:
	call _LABEL_33D1_
	ld a, $09
	ld (_RAM_C79A_), a
	ld hl, $0000
	ld (_RAM_C79B_), hl
	call _LABEL_7FA_
	ld a, (_RAM_C821_)
	and a
	call nz, _LABEL_36D5_
	call _LABEL_99B_
	ld a, (_RAM_C7C0_)
	cp $04
	call z, _LABEL_FE4_
	call _LABEL_6D1E_PlayMusicForLevel
	call _LABEL_51D0_
	call _LABEL_295_ScreenOn
	ld hl, _DATA_1AB51_Palette
	ld (_RAM_C769_SpritePalettePointer), hl
	call _LABEL_1583_LoadPalettes
	ld a, $01
	ld (_RAM_C880_), a
	ld a, $FF
	ld (_RAM_C859_), a
	ld bc, $040C
	call _LABEL_17CB_
	call _LABEL_37C2_
	ld a, (_RAM_C799_)
	srl a
	ld (_RAM_C424_), a
	srl a
	ld (_RAM_C454_), a
	xor a
	ld (_RAM_C851_FrameCounter), a
_LABEL_319B_:
	call _LABEL_4E3F_
	call _LABEL_4DD3_
	ld a, (_RAM_C7C0_)
	cp $05
	call z, _LABEL_15C1_
	ld a, (_RAM_C821_)
	cp $02
	jp c, _LABEL_31C2_
	ld a, (_RAM_C82C_)
	and a
	jp z, _LABEL_31C2_
	ld a, (_RAM_C851_FrameCounter)
	cp $02
	jr c, _LABEL_31C2_
	jp ++

_LABEL_31C2_:
	ld a, (_RAM_C851_FrameCounter)
	and a
	jp z, _LABEL_31C2_
	ld a, (_RAM_C7C0_)
	cp $05
	jr nz, +
-:
	in a, (Port_VCounter)
	cp $C0
	jr c, -
	jr ++

+:
	in a, (Port_VCounter)
	and a
	jr z, ++
; Data from 31DD to 31E1 (5 bytes)
.db $FE $C0 $DA $D8 $31

++:
	xor a
	ld (_RAM_C851_FrameCounter), a
	ld a, (_RAM_C821_)
	cp $01
	jr z, ++
	and a
	jr z, +
	call _LABEL_3E4_
	call _LABEL_11EF_
	call _LABEL_6CE_
	jr +++

+:
	call _LABEL_3E4_
	call _LABEL_6CE_
	jr +++

++:
	call _LABEL_6CE_
	call _LABEL_3E4_
+++:
	call _LABEL_C6C_
	ld hl, (_RAM_C86E_)
	ld l, $00
	ld h, $00
	call _LABEL_1B16_
	call _LABEL_40DD_
	call _LABEL_FE4_
	call _LABEL_4814_
	call _LABEL_5885_
	call _LABEL_5FF6_
	call _LABEL_37DA_
	call _LABEL_735_
	call _LABEL_1B64_
	call _LABEL_1376_
	call _LABEL_5433_
	ld a, $05
	ld (_RAM_FFFF_), a
	call _LABEL_14000_
	call _LABEL_61F0_
	ld a, (_RAM_C859_)
	inc a
	ld (_RAM_C859_), a
	and $07
	ld e, a
	ld d, $00
	ld hl, _DATA_71F5_
	add hl, de
	ld a, (hl)
	ld (_RAM_C7EB_), a
	ld a, e
	and a
	jr nz, +
	ld a, (_RAM_C7C0_)
	cp $01
	call z, _LABEL_17F2_
+:
	ld a, (_RAM_C8B1_)
	and a
	call nz, _LABEL_17A9_
	ld a, (_RAM_C77A_)
	and a
	jr z, +
	dec a
	ld (_RAM_C77A_), a
	jr ++++

+:
	ld a, (_RAM_C779_GameState)
	cp $01
	jr nz, +++
	ld hl, (_RAM_C792_LevelNumber)
	ld h, $00
	ld de, _DATA_719E_
	add hl, de
	ld a, (hl)
	ld (_RAM_C779_GameState), a
	ld e, a
	ld a, (_RAM_C792_LevelNumber)
	cp $0A
	jr c, ++
	ld hl, _DATA_20B24_
	jr z, +
	ld hl, _DATA_20000_
+:
	ld (_RAM_C7CF_), hl
++:
	ld a, e
+++:
	cp $80
	jr nz, +
	call _LABEL_E7A_CheckForButton1
	jp z, _LABEL_319B_
	ld a, $81
	ld (_RAM_C779_GameState), a
+:
	and a
	jp nz, +++++
++++:
	call _LABEL_208_
	jp _LABEL_319B_

+++++:
	call _LABEL_3831_
	call _LABEL_6D6B_AudioStop
	ld b, $05
	call _LABEL_D2E_DelayTimes20ms
	call _LABEL_14AC_FadeOut
	call _LABEL_282_ScreenOff
	call _LABEL_1583_LoadPalettes
	call _LABEL_C6C_
	call _LABEL_3E4_
	ld a, (_RAM_C779_GameState)
	cp $01
	jr z, _LABEL_332D_
	cp $80
	jr nc, _LABEL_331B_
	xor a
	ld (_RAM_C83C_), a
	ld (_RAM_C821_), a
	ld (_RAM_C8B6_), a
	di
	ld a, $00
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $88
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $00
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $89
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld a, $FF
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $8A
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	call _LABEL_3B8E_
_LABEL_331B_:
	ld a, (_RAM_C779_GameState)
	cp $81
	jp z, _LABEL_33C7_
	cp $02 ; End of game
	jp z, _LABEL_33A6_
	cp $03
	jp z, +
_LABEL_332D_:
	xor a
	ld (_RAM_C779_GameState), a
	jp _LABEL_311A_

+:
	xor a
	ld (_RAM_C779_GameState), a
	ld a, $01
	call _LABEL_6D54_AudioPlayMusic
	call _LABEL_3A6E_GameOver
	push af
    call _LABEL_14AC_FadeOut
    call _LABEL_282_ScreenOff
	pop af
	and a ; Check if continuing
	jr nz, ++
  ; No...
	ld a, (_RAM_C771_Is2Player)
	and a
	jp z, _LABEL_30B4_
	xor a
	ld (_RAM_C771_Is2Player), a
	ld hl, $C400
	ld (_RAM_C777_), hl
	ld a, (_RAM_C8C6_CharacterDataPointer)
	and a
	jp nz, +
	ld a, $02
	ld (_RAM_C400_), a
	ld a, (_RAM_C775_)
	ld (_RAM_C774_Player1Player), a
	ld a, (_RAM_C795_)
	ld (_RAM_C794_), a
	ld hl, _RAM_C786_
	ld de, _RAM_C77B_
	ld bc, $000B
	ldir
+:
	jp _LABEL_3101_StartLevel

++:
  ; Continuing
	ld a, (_RAM_C8C6_CharacterDataPointer)
	and a
	jr nz, + ; ???
	ld a, (_RAM_C764_)
	ld (_RAM_C782_), a
	ld a, (_RAM_C762_)
	ld (_RAM_C781_), a
	jp _LABEL_3101_StartLevel

+:
	ld a, (_RAM_C764_)
	ld (_RAM_C78D_), a
	ld a, (_RAM_C762_)
	ld (_RAM_C78C_), a
	jp _LABEL_3101_StartLevel

_LABEL_33A6_:
	xor a
	ld (_RAM_C779_GameState), a
	ld a, $00
	call _LABEL_6D54_AudioPlayMusic ; Stop music
	ld a, (_RAM_C792_LevelNumber)
	inc a
	ld (_RAM_C792_LevelNumber), a
	cp $0C
	jp z, + ; Ending
	jp _LABEL_3101_StartLevel

+:
	call _LABEL_3914_ ; Game Completed
	call _LABEL_39CD_Credits ; Credits
	jp _LABEL_23B_Startup

_LABEL_33C7_:
	xor a
	ld (_RAM_C779_GameState), a
	ld (_RAM_C81C_), a
	jp _LABEL_30B4_

_LABEL_33D1_:
	xor a
	ld (_RAM_C79D_), a
	ld ix, _RAM_C400_
	call ++
	ld a, (_RAM_C774_Player1Player)
	ld (ix+0), a
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld ix, _RAM_C430_
	call ++
	ld a, (_RAM_C775_)
	ld (ix+0), a
	ld a, (_RAM_C792_LevelNumber)
	cp $05
	ret z
	cp $07
	jr z, +
	cp $09
	ret z
	inc (ix+3)
	ret

+:
	dec (ix+3)
	ret

++:
	call _LABEL_4E27_
	ld (ix+23), $10
	ld (ix+22), $08
	ld (ix+1), $00
	ld e, $01
	ld a, (_RAM_C792_LevelNumber)
	cp $07
	jr nz, +
	ld e, $FF
+:
	ld (ix+26), e
	ld (ix+21), $04
	ld a, $01
	ld (_RAM_C85E_), a
	ld (_RAM_C861_), a
	ld hl, (_RAM_C7E3_)
	ld (_RAM_C7DB_), hl
	ld hl, (_RAM_C7E5_)
	ld (ix+2), l
	ld (ix+3), h
	ld hl, (_RAM_C7E7_)
	ld (_RAM_C7DD_), hl
	ld hl, (_RAM_C7E9_)
	ld (ix+4), l
	ld (ix+5), h
	ld a, (_RAM_C798_)
	cp $05
	ret nz
	ld hl, _DATA_DC66_
	ld (ix+38), l
	ld (ix+39), h
	xor a
	ld (ix+27), $00
	ld (ix+26), $00
	ret

; Data from 3469 to 346A (2 bytes)
.db $C9 $FF

_LABEL_346B_:
	ld a, $03
	ld (_RAM_FFFF_), a
	ld hl, _RAM_C100_
	ld de, _RAM_C100_ + 1
	ld (hl), $00
	ld bc, $00FF
	ldir
	ld a, (_RAM_C792_LevelNumber)
	ld e, a
	add a, a
	add a, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld ix, _DATA_DCD9_
	add ix, de
	ld a, (ix+0)
	ld (_RAM_C7C0_), a
	ld a, (ix+1)
	ld (_RAM_C7C5_), a
	ld l, (ix+2)
	ld h, (ix+3)
	ld (_RAM_C7CF_), hl
	ld (_RAM_C7D1_), hl
	ld a, (ix+4)
	ld (_RAM_C793_), a
	ld a, (ix+5)
	ld (_RAM_C798_), a
	ld e, $01
	cp $02
	jr z, +
	cp $04
	jr z, +
	cp $06
	jr z, +
	ld e, $00
+:
	ld a, e
	ld (_RAM_C791_), a
	ld a, (ix+6)
	ld (_RAM_C7A6_), a
	ld a, (ix+7)
	ld (_RAM_C7A5_), a
	ld a, (ix+8)
	ld (_RAM_C799_), a
	call ++
	call _LABEL_3567_
	ld e, $02
	ld a, (_RAM_C7C0_)
	cp $03
	jr z, +
	dec e
	cp $04
	jr z, +
	dec e
+:
	ld a, e
	ld (_RAM_C821_), a
	and a
	ret z
	ld hl, $DA03
	ld (_RAM_C755_), hl
	ret

++:
	ld a, (_RAM_C7C0_)
	dec a
	ld e, a
	add a, a
	add a, e
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld ix, _DATA_7F00_
	add ix, de
	ld a, (ix+0)
	ld (_RAM_FFFF_), a
	ld l, (ix+3)
	ld h, (ix+4)
	ld a, (_RAM_C7C0_)
	cp $05
	jr nz, +
	ld a, (_RAM_C792_LevelNumber)
	sub $04
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	jr ++

+:
	ld a, (_RAM_C792_LevelNumber)
	cp $08
	jr nz, ++
	ld hl, _DATA_1ABB1_
++:
	ld (_RAM_C7C7_TilePalettePointer), hl
	ld l, (ix+8)
	ld h, (ix+9)
	ld (_RAM_C7BE_), hl
	ld l, (ix+1)
	ld h, (ix+2)
	push ix
    ld de, $0000 ; Destination in VRAM
    call _LABEL_69_DecompressToVRAMTrampoline
	pop ix
	ld a, (_RAM_C7C0_)
	dec a
	add a, $B2
	ld (_RAM_C7B9_), a
	ld a, (ix+10)
	ld h, a
	ld l, $00
	ld (_RAM_C7BB_), hl
	ret

_LABEL_3567_:
	ld hl, _RAM_CA00_
	ld de, _RAM_CA00_ + 1
	ld (hl), $00
	ld bc, $14FF
	ldir
	ld a, (_RAM_C7C5_)
	dec a
	ld e, a
	add a, a
	add a, a
	add a, a
	add a, a
	sub e
	sub e
	sub e
	ld e, a
	ld d, $00
	ld ix, _DATA_7F54_
	add ix, de
	ld a, (ix+0)
	ld (_RAM_FFFF_), a
	ld l, (ix+1)
	ld h, (ix+2)
	ld (_RAM_C76B_), hl
	ld de, _RAM_CA00_
	ld a, (_RAM_C7C0_)
	cp $03
	call nz, _LABEL_6E7C_
	ld l, (ix+3)
	ld h, (ix+4)
	ld (_RAM_C7E3_), hl
	ld l, (ix+5)
	ld h, (ix+6)
	ld a, (_RAM_C792_LevelNumber)
	cp $03
	jp z, +
	ld a, h
	and a
	jr z, +
	dec h
+:
	ld (_RAM_C7E7_), hl
	ld l, (ix+7)
	ld h, (ix+8)
	ld (_RAM_C7E5_), hl
	ld l, (ix+9)
	ld h, (ix+10)
	ld (_RAM_C7E9_), hl
	ld a, (ix+11)
	ld h, $00
	ld l, a
	and a
	jp nz, +
	inc h
+:
	ld (_RAM_C7AD_), hl
	add hl, hl
	add hl, hl
	ld d, h
	ld e, l
	add hl, hl
	add hl, de
	ld (_RAM_C7B0_), hl
	ld a, (ix+12)
	ld (_RAM_C7AF_), a
	ld de, $F000
	ld bc, $F400
	ld a, (_RAM_C7AD_)
	ld h, a
	and a
	jr nz, +
	ld h, $F8
	ld a, h
+:
	ld l, $00
	add hl, de
	ld a, (_RAM_C7C0_)
	cp $05
	jr nz, +
	ld hl, _RAM_CA00_
	ld de, _RAM_D200_
	ld bc, $0480
	ldir
	ld hl, $0B00
+:
	ld (_RAM_C7B2_), hl
	ld a, h
	add a, $0E
	ld (_RAM_C7AA_), a
	ld a, (_RAM_C7AF_)
	ld h, a
	ld l, $00
	ld (_RAM_C7B4_), hl
	ret

_LABEL_362C_CheatEntry:
	call _WaitForUp ; ++
	call _WaitForDown
	call _WaitForUp ; ++
	call _WaitForDown
	call _WaitForLeft ; +
	call _WaitForRight
	ld a, $01
	ld (_RAM_C757_CheatEnabled), a
	ld a, $33
	jp _LABEL_6D3D_AudioPlaySFX ; and ret

_LABEL_3648_CheatTimedOut:
	ld a, $FF
	and a ; these values are ignored...
	ret

_WaitForLeft:
+:
	ld bc, $FFFF
-:
	in a, (Port_IOPort1)
	bit 2, a
	jr z, _LABEL_365F_LeftPressed
	dec bc
	ld a, c
	or b
	jp nz, -
	pop af ; ignore return address
	jp _LABEL_3648_CheatTimedOut

_LABEL_365F_LeftPressed:
	in a, (Port_IOPort1)
	bit 2, a
	jr z, _LABEL_365F_LeftPressed
	ret

_WaitForUp:
++: ; Wait for Up to be pressed
	ld bc, $FFFF
-:in a, (Port_IOPort1)
	bit 0, a
	jr z, _LABEL_3679_UpPressed
	dec bc
	ld a, c
	or b
	jp nz, -
	pop af ; ignore return address
	jp _LABEL_3648_CheatTimedOut

_LABEL_3679_UpPressed:
	in a, (Port_IOPort1)
	bit 0, a
	jr z, _LABEL_3679_UpPressed
	ret

_WaitForRight:
	ld bc, $FFFF
-:
	in a, (Port_IOPort1)
	bit 3, a
	jr z, _LABEL_3693_RightPressed
	dec bc
	ld a, c
	or b
	jp nz, -
	pop af ; ignore return address
	jp _LABEL_3648_CheatTimedOut

_LABEL_3693_RightPressed:
	in a, (Port_IOPort1)
	bit 3, a
	jr z, _LABEL_3693_RightPressed
	ret

_WaitForDown:
	ld bc, $FFFF
-:
	in a, (Port_IOPort1)
	bit 1, a
	jr z, _LABEL_36AD_DownPressed
	dec bc
	ld a, c
	or b
	jp nz, -
	pop af ; ignore return address
	jp _LABEL_3648_CheatTimedOut

_LABEL_36AD_DownPressed:
	in a, (Port_IOPort1)
	bit 1, a
	jr z, _LABEL_36AD_DownPressed
	ret

_LABEL_36B4_:
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld ix, (_RAM_C7CF_)
	ld hl, _RAM_C101_
	ld de, _DATA_4_
-:
	ld a, (ix+0)
	cp $FF
	ret z
	ld a, (hl)
	cp $02
	jp nz, +
+:
	add ix, de
	inc hl
	jp -

_LABEL_36D5_:
	ld a, (_RAM_C792_LevelNumber)
	cp $03
	jr nz, _LABEL_371F_
	xor a
	ld (_RAM_C79F_), a
	ld a, (_RAM_C7A2_)
	add a, a
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld ix, _DATA_725D_
	add ix, de
	ld l, (ix+0)
	ld h, (ix+1)
	ld (_RAM_C7A0_), hl
	ld l, (ix+2)
	ld h, (ix+3)
	ld (_RAM_C7CF_), hl
	ld a, (ix+4)
	ld (_RAM_C79E_), a
	di
	ld a, $0F
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $8A
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	ld de, _DATA_378C_
	jr +

_LABEL_371F_:
	ld h, $00
	ld l, $FF
	ld (_RAM_C8B6_), hl
	ld a, $0C
	ld (_RAM_FFFF_), a
	ld hl, _DATA_30000_
	ld de, $3800
	ld bc, $0220
	call _LABEL_D81_
	call _LABEL_557D_
	di
	ld a, $5E
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $8A
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	ld de, _DATA_3798_
+:
	push de
	ld hl, _RAM_DA00_
	ld de, _RAM_DA00_ + 1
	ld (hl), $00
	ld bc, $0053
	ldir
	ld ix, _RAM_DA00_
	ld hl, $CA00
	pop de
-:
	ld a, (_RAM_C84C_)
	ld (ix+3), a
	ld a, (_RAM_C84E_)
	ld (ix+4), a
	ld (ix+5), l
	ld (ix+6), h
	ld bc, $0080
	add hl, bc
	ld a, (de)
	ld (ix+2), a
	ld bc, $0007
	add ix, bc
	inc de
	ld a, (de)
	cp $FF
	jp nz, -
	ret

; Data from 378C to 3797 (12 bytes)
_DATA_378C_:
.db $04 $04 $02 $02 $02 $02 $08 $08 $08 $08 $08 $FF

; Data from 3798 to 37C1 (42 bytes)
_DATA_3798_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $FF $AF $32 $EB
.db $C7 $CD $64 $1B $CD $3F $4E $CD $D3 $4D $CD $6C $0C $3A $EB $C7
.db $3C $32 $EB $C7 $FE $06 $C2 $A6 $37 $C9

_LABEL_37C2_:
	ld a, (_RAM_C792_LevelNumber)
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_71C5_
	add hl, de
	ld de, _RAM_C7A9_
	ldi
	ldi
	ldi
	ldi
	ret

_LABEL_37DA_:
	ld a, (_RAM_C7C0_)
	cp $05
	ret nz
	ld ix, _RAM_C400_
	ld a, (_RAM_C792_LevelNumber)
	add a, a
	ld e, a
	ld d, $00
	ld hl, $380D
	add hl, de
	ld a, (ix+3)
	cp (hl)
	ret nz
	ld a, (ix+2)
	cp $80
	ret c
	inc hl
	ld a, (ix+5)
	cp (hl)
	ret nz
	ld a, (ix+7)
	or (ix+8)
	ret nz
	ld a, $02
	ld (_RAM_C779_GameState), a
	ret

; Data from 380D to 3830 (36 bytes)
.db $00 $00 $00 $00 $00 $00 $00 $00 $17 $05 $17 $05 $17 $05 $17 $05
.db $00 $00 $DD $21 $60 $C4 $06 $0C $11 $30 $00 $DD $36 $06 $00 $DD
.db $19 $10 $F8 $C9

_LABEL_3831_:
	ld a, (_RAM_C821_)
	cp $02
	ret nz
	ld ix, _RAM_C77B_
	ld a, (_RAM_C400_)
	call +
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld a, $02
	ld ix, _RAM_C786_
+:
	ld (_RAM_C822_IntroButtonPressed), a
	ld a, (ix+8)
	and a
	jr z, _LABEL_3865_
	add a, (ix+6)
	cp $0A
	jr c, +
	ld a, $09
+:
	ld (ix+6), a
	ld (ix+8), $00
_LABEL_3865_:
	ld a, (ix+8)
	or (ix+9)
	or (ix+10)
	ret z
	ld b, $01
	push ix
	ld a, (_RAM_C822_IntroButtonPressed)
	call _LABEL_5734_
	ld b, $01
	ld a, (_RAM_C822_IntroButtonPressed)
	ld e, $00
	ld hl, (_RAM_C400_)
	cp l
	jr z, +
	ld e, $01
+:
	ld a, e
	call _LABEL_56C8_
	call _LABEL_5433_
	ld b, $02
	call _LABEL_D2E_DelayTimes20ms
	pop ix
	jp _LABEL_3865_

_LABEL_3899_:
	ld a, (_RAM_C765_)
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_38AF_
	add hl, de
	ld de, _RAM_C762_
	ldi
	ldi
	ldi
	ret

; Data from 38AF to 38C3 (21 bytes)
_DATA_38AF_:
.db $05 $02 $0A $00 
.db $03 $02 $08 $00 
.db $03 $00 $08 $00 

.db $CD $EA $04 $3E
.db $06 $32 $FF $FF 
.db $C9

_LABEL_38C4_IntroPicture2:
	ld hl, _DATA_1AB11_TilePalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	call _LABEL_1583_LoadPalettes
	ld hl, _DATA_1AD19_
	ld de, $0020 ; Tile 1
	call _LABEL_69_DecompressToVRAMTrampoline
	ld hl, _DATA_1AC51_
	ld de, $3810
	ld bc, $0A14
	xor a
	ld (_RAM_C8B6_), a
	call _LABEL_D4D_EmitTilemapRect
	ret

_LABEL_38E7_IntroPicture1:
	ld hl, _DATA_1AB21_IntroPalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	call _LABEL_1583_LoadPalettes
  ; page in data
	ld a, :_DATA_1F332_
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1F332_ ; tile data
	ld de, $0020 ; tile 1
	call _LABEL_69_DecompressToVRAMTrampoline
	ld hl, _DATA_1F292_
	ld de, $3812 ; destination
	ld bc, $0A10 ; dimensions
	xor a
	ld (_RAM_C8B6_), a
	call _LABEL_D4D_EmitTilemapRect
  ; restore paging for caller
	ld a, :_LABEL_18000_Intro
	ld (_RAM_FFFF_), a
	ret

_LABEL_3914_:
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	
  ld ix, $2000 ; Tile 256
	call _LABEL_1557_LoadFont
  
	ld hl, _DATA_1AB71_TitleScreenTilePalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	ld hl, _DATA_1AC41_TitleScreenSpritePalette
	ld (_RAM_C769_SpritePalettePointer), hl
	call _LABEL_1583_LoadPalettes
  
	ld a, $0F
	ld hl, $0001
	call _LABEL_1B27_SetPaletteEntry
  
	ld a, $07
	ld (_RAM_FFFF_), a
	ld hl, $8150
	ld de, $0020
	call _LABEL_69_DecompressToVRAMTrampoline
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld a, $07
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1C000_
	ld bc, $0C1C
	ld de, $3804
	jr ++

+:
	ld a, $06
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1884D_
	ld a, (_RAM_C400_)
	dec a
	jr z, +
	ld hl, _DATA_188DD_
+:
	ld de, $3814
	ld bc, $0C0C
++:
	call _LABEL_D4D_EmitTilemapRect
	call _LABEL_295_ScreenOn
	ld a, $01
	call _LABEL_6D54_AudioPlayMusic
	call _LABEL_E7A_CheckForButton1
	call _LABEL_282_ScreenOff
	ld bc, $0E08
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_6E5A_Text_GameCompleted
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	ld ix, _RAM_C77B_
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld bc, $1405
	call _LABEL_57E7_SetTextToVRAMLocation
	call _LABEL_582A_
	ld bc, $1415
	ld ix, _RAM_C786_
	jr ++

+:
	ld bc, $140D
++:
	call _LABEL_57E7_SetTextToVRAMLocation
	call _LABEL_582A_
	call _LABEL_295_ScreenOn
	ld b, $02
	call _LABEL_D43_DelaySeconds
	call _LABEL_E88_WaitForNoButtonP1
-:
	call _LABEL_E7A_CheckForButton1
	jp z, -
	jp _LABEL_6D6B_AudioStop

_LABEL_39CD_Credits:
  ; Blank screen
	call _LABEL_4EA_ResetScrollTile0AndTilemap
  ; Load font
	ld ix, $2000
	call _LABEL_1557_LoadFont
  ; Load palette
	ld hl, _DATA_1AC41_TitleScreenSpritePalette
	ld (_RAM_C769_SpritePalettePointer), hl
	call _LABEL_1583_LoadPalettes
  ; Page in data
	ld a, $C2
	ld (_RAM_FFFF_), a
  ; Point at text
	ld ix, _DATA_8EE9_Text_EndCredits
	xor a
	ld (_RAM_C822_IntroButtonPressed), a
  ; Initial drawing location
	ld bc, $1803
	call _LABEL_57E7_SetTextToVRAMLocation

_LABEL_39F3_Loop:
	xor a
	ld (_RAM_C851_FrameCounter), a
  ; Add 2 rows to the pointer
	ld hl, (_RAM_C854_TextToVRAMDestPointer)
	ld bc, $0080
	add hl, bc
  ; Check for overflow
	ld a, h
	cp $3F
	jr c, +
	ld h, $38
+:ld (_RAM_C854_TextToVRAMDestPointer), hl
  ; Draw a blank line
	push ix
	push hl
    ld ix, _DATA_8ECC_Text_BlankLine
    call _LABEL_579B_TextToVRAM
	pop hl
	pop ix
  ; Then draw text over it (as the string may be shorter)
	ld (_RAM_C854_TextToVRAMDestPointer), hl
	push hl
    call _LABEL_579B_TextToVRAM
	pop hl
	ld (_RAM_C854_TextToVRAMDestPointer), hl
  ; ???
	ld b, $10
  ; Increment scroll counter
-:ld a, (_RAM_C822_ScrollCounter)
	inc a
	cp $E0
	jr c, +
	xor a
+:ld (_RAM_C822_ScrollCounter), a
	di
    ; Set scroll value
    ld a, a
    out (Port_VDPAddress), a
    nop
    nop
    nop
    nop
    ld a, $89
    out (Port_VDPAddress), a
    nop
    nop
    nop
    nop
	ei
	ld a, b
	cp $10
	jp z, _LABEL_3A49_
  ; Skip wait
	xor a
	ld (_RAM_C851_FrameCounter), a
_LABEL_3A49_:
  ; Wait for 2 frames to pass
-:ld a, (_RAM_C851_FrameCounter)
	cp $02
	jp c, -
  ; x16?
	djnz -
  ; Let a button break it
	call _LABEL_E7A_CheckForButton1
	jp nz, +
  ; Or when we get to the end
	push ix
	pop hl
	ld de, _LABEL_9020_CreditsEnd
	and a
	sbc hl, de
	jp c, _LABEL_39F3_Loop
+:; At the end, wait 1s...
	ld b, $01
	call _LABEL_D43_DelaySeconds
  ; Then blank the screen and return
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ret

_LABEL_3A6E_GameOver:
  ; Blank screen
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	call _LABEL_282_ScreenOff
  ; Load font
	ld ix, $2000
	call _LABEL_1557_LoadFont
  ; Load palettes
	ld hl, _DATA_1AB71_TitleScreenTilePalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	ld hl, _DATA_1AC41_TitleScreenSpritePalette
	ld (_RAM_C769_SpritePalettePointer), hl
	call _LABEL_1583_LoadPalettes
  ; Set a palette entry to another colour
	ld a, $0F
	ld hl, $0001
	call _LABEL_1B27_SetPaletteEntry
  ; Load tiles
	ld a, $07
	ld (_RAM_FFFF_), a
	ld hl, $8150
	ld de, $0020
	call _LABEL_69_DecompressToVRAMTrampoline
  ; Load tilemap
	ld a, $06
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1884D_
	ld ix, (_RAM_C8C6_CharacterDataPointer)
	ld a, (ix+0) ; Check which one
	dec a
	jr z, +
	ld hl, _DATA_188DD_
+:
	ld de, $3814
	ld bc, $0C0C
	call _LABEL_D4D_EmitTilemapRect
  ; Emit text
	ld bc, $0D08
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_6E0C_Text_GameOver
	call _LABEL_579B_TextToVRAM
  ; Screen on
	call _LABEL_295_ScreenOn
  ; Wait 4s
	ld b, $04
	call _LABEL_D43_DelaySeconds
  ; Look up credits per character (for 2-player mode)?
	ld a, (_RAM_C794_)
	ld e, a
	ld a, (_RAM_C8C6_CharacterDataPointer)
	and a
	jr z, +
	ld a, (_RAM_C795_)
	ld e, a
+:ld a, e
  ; check it's enough (and not too much)
	and a
	jp z, _LABEL_3B36_
	cp $09
	jp nc, _LABEL_3B36_
  ; draw text
	ld bc, $1008
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_6DEA_Text_continue
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
  ; Start timer
	ld a, $09
	ld (_RAM_C822_ScrollCounter), a
--:
	call _LABEL_3B5E_
	call _LABEL_3B78_
	ld b, $32
-:
	push bc
    ld b, $01
    call _LABEL_D2E_DelayTimes20ms
	pop bc
	ld a, (_RAM_C8C6_CharacterDataPointer)
	and a
	jr nz, +
	ld a, (_RAM_C400_)
	cp $02
	jr z, +
	call _LABEL_E7A_CheckForButton1
	jr ++

+:
	call _LABEL_E81_CheckForP21Or2
++:
	jr nz, +
	djnz -
	ld a, (_RAM_C822_IntroButtonPressed)
	cp $FF
	jp nz, --
_LABEL_3B36_:
	xor a
	ret

+:
	ld a, (_RAM_C8C6_CharacterDataPointer)
	and a
	jr z, +
	ld a, (_RAM_C795_)
	dec a
	ld (_RAM_C795_), a
	jr ++

+:
	ld a, (_RAM_C794_)
	dec a
	ld (_RAM_C794_), a
++:
	call _LABEL_3B5E_
	ld a, $39
	call _LABEL_6D3D_AudioPlaySFX
	ld b, $01
	call _LABEL_D43_DelaySeconds
	or $FF
	ret

_LABEL_3B5E_:
	ld bc, $120F
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, (_RAM_C794_)
	ld e, a
	ld a, (_RAM_C8C6_CharacterDataPointer)
	and a
	jr z, +
	ld a, (_RAM_C795_)
	ld e, a
+:
	ld a, $30
	add a, e
	jp _LABEL_57AB_CharToVRAM

_LABEL_3B78_:
	ld bc, $160F
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, (_RAM_C822_IntroButtonPressed)
	add a, $30
	call _LABEL_57AB_CharToVRAM
	ld a, (_RAM_C822_IntroButtonPressed)
	dec a
	ld (_RAM_C822_IntroButtonPressed), a
	ret

/******************************************************/
_LABEL_3B8E_:
	ld a, $06
	ld (_RAM_FFFF_), a
	ld hl, $899D ; Only used when _DATA_1896D_= 3, leads to "continue" message
	ld a, (_RAM_C779_GameState) ; ???
	cp $03
	jr z, +
  
	ld a, (_RAM_C792_LevelNumber) ; Stage?
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_1896D_ ; Lookup table for text
	add hl, de
	ld a, (hl) ; Zero means no text
	inc hl
	or (hl)
	ret z
	dec hl
+:
	push hl
    ; Load tiles
    call _LABEL_4EA_ResetScrollTile0AndTilemap
    ld ix, $2020 ; Tile 257(!)
    call _LABEL_1557_LoadFont
	pop hl
	push hl
    ld a, (_RAM_C779_GameState)
    cp $03
    jr z, +
    
    ld a, $0E
    ld (_RAM_FFFF_), a
    ld hl, $A8A0 ; Tile data
    ld de, $0020
    call _LABEL_69_DecompressToVRAMTrampoline
    ld hl, _DATA_3AFC6_ ; Tilemap data
    ld de, $388C
    ld bc, $0C16
    call _LABEL_D4D_EmitTilemapRect
    ld hl, _DATA_1AB41_ ; Palette
    ld (_RAM_C7C7_TilePalettePointer), hl
    ld hl, _DATA_1AC41_TitleScreenSpritePalette
    ld (_RAM_C769_SpritePalettePointer), hl
    call _LABEL_1583_LoadPalettes
    call _LABEL_295_ScreenOn
    ld bc, $1002
	pop hl
	call _LABEL_3C38_InterstitialText
  
  ; Repeat for T-Bird character
	push hl
    call _LABEL_282_ScreenOff
    call _LABEL_4EA_ResetScrollTile0AndTilemap
+:  ld a, $0E
    ld (_RAM_FFFF_), a
    ld hl, $9D48
    ld de, $0020
    call _LABEL_69_DecompressToVRAMTrampoline
    ld a, $0C
    ld (_RAM_FFFF_), a
    ld hl, _DATA_3235F_
    ld de, $3882
    ld bc, $1420
    call _LABEL_D4D_EmitTilemapRect
    ld hl, _DATA_1AB31_
    ld (_RAM_C7C7_TilePalettePointer), hl
    ld hl, _DATA_1AC41_TitleScreenSpritePalette
    ld (_RAM_C769_SpritePalettePointer), hl
    call _LABEL_1583_LoadPalettes
    call _LABEL_295_ScreenOn
    ld bc, $1002 ; Drawing location?
	pop hl
	call _LABEL_3C38_InterstitialText
	call _LABEL_282_ScreenOff
	ret

_LABEL_3C38_InterstitialText:
  ; Draws five lines of text from hl
	push hl
    ; Page in data
    ld a, $06
    ld (_RAM_FFFF_), a
    ; Read pointer
    ld e, (hl)
    inc hl
    ld d, (hl)
    ; Get it in ix
    push de
    pop ix
    ; Emit five lines
    call +
    call +
    call +
    call +
    call +
  pop hl
  ; Move pointer on
  inc hl
  inc hl
  ; Wait 1s + 1s
  ld b, $64
  call _LABEL_D2E_DelayTimes20ms
  ld b, $64
  jp _LABEL_E9C_SkippableDelay
  ; and done

+:call _LABEL_5790_TextToVRAM
	dec b ; Next row?
	push bc
    ld b, $10 ; ~320ms
    call _LABEL_D2E_DelayTimes20ms
	pop bc
	ret
/*****************************************************/

_LABEL_3C6C_GameModeMenu:
	call _LABEL_282_ScreenOff
	call _LABEL_4EA_ResetScrollTile0AndTilemap

  ; palettes
	ld hl, _DATA_1AB71_TitleScreenTilePalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	ld hl, _DATA_1AC41_TitleScreenSpritePalette
	ld (_RAM_C769_SpritePalettePointer), hl
	call _LABEL_1583_LoadPalettes

   ; character tiles
	ld a, $07
	ld (_RAM_FFFF_), a
	ld hl, $8150
	ld de, $0020
	call _LABEL_69_DecompressToVRAMTrampoline

  ; character tilemap
	ld hl, _DATA_1C000_
	ld de, $3884
	ld bc, $0C1C
	call _LABEL_D4D_EmitTilemapRect

  ; font
	ld ix, $2000
	call _LABEL_1557_LoadFont
  
  ; stuff...
	xor a
	ld (_RAM_C859_), a
	ld (_RAM_C822_IntroButtonPressed), a
	ld (_RAM_C776_), a
	ld hl, _RAM_C400_
	ld (_RAM_C777_), hl
  
  ; menu text
	ld bc, $0F0B
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_6E19_Text_TitleScreenMenu
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
  
  ; character names
	ld bc, $0005
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_6D73_Text_pimple_rash_licenced
	call _LABEL_5790_TextToVRAM
	call _LABEL_295_ScreenOn
  
  ; wait for no buttons
	call _LABEL_E88_WaitForNoButtonP1
	call _LABEL_E92_WaitForNoButtonP2

_LABEL_3CDE_:
  ; delay?
	ld b, $05
	call _LABEL_D2E_DelayTimes20ms
  
	call _LABEL_1B45_GetInputsP2
	call _LABEL_561_GetInputs
  
	ld a, (_RAM_C837_Player2InputsEnabled)
	and a
	call nz, _LABEL_639_GetPlayer2Buttons
	ld hl, (_RAM_C82F_DirectionsPressed)
	ld a, (_RAM_C837_Player2InputsEnabled)
	and a
	jr nz, +
	sla h
	sla h
+:
	ld a, (_RAM_C822_IntroButtonPressed)
	add a, h
	bit 7, a
	jr z, +
	xor a
+:
	cp $04
	jr c, +
	ld a, $03
+:
	ld (_RAM_C824_), a
	ld e, a
	ld a, (_RAM_C822_IntroButtonPressed)
	cp e
	jp z, +
	add a, a
	add a, $0F
	ld b, a
	ld c, $09
	ld a, e
	ld (_RAM_C822_IntroButtonPressed), a
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, $20 ; " "
	call _LABEL_57AB_CharToVRAM
+:
	ld a, (_RAM_C822_IntroButtonPressed)
	add a, a
	add a, $0F
	ld b, a
	ld c, $09
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, $2D ; "-"
	call _LABEL_57AB_CharToVRAM
	call _LABEL_E7A_CheckForButton1
	jr nz, +
	call _LABEL_E81_CheckForP21Or2
	jp z, _LABEL_3CDE_
+:; Button pressed
	ld a, $39
	call _LABEL_6D3D_AudioPlaySFX
	ld a, (_RAM_C822_IntroButtonPressed)
	cp $03 ; Options
	jp z, ++
	and a
	jp z, + ; Start
	dec a
	xor $01
	ld (_RAM_C776_), a
	ld a, $02
	ld (_RAM_C775_), a
	dec a
	ld (_RAM_C774_Player1Player), a
+:
	ld (_RAM_C771_Is2Player), a
	and a
	ret nz
	ld a, (_RAM_C837_Player2InputsEnabled)
	inc a
	ld a, a
	ld (_RAM_C774_Player1Player), a
	ret
  
  ; c771 c774
  ;    0    1 1-player pad 1
  ;    0    2 1-player pad 2
  ;    1    1 2-player

++:
  ; Options screen
	xor a
	ld (_RAM_C822_IntroButtonPressed), a
	ld (_RAM_C824_), a
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld bc, $0708
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, $02
	ld (_RAM_FFFF_), a
	ld ix, _DATA_8CAA_Text_Options
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_3E8B_
	call _LABEL_3EA3_
	call _LABEL_3EB3_
	call _LABEL_E88_WaitForNoButtonP1
	call _LABEL_E92_WaitForNoButtonP2
_LABEL_3DAD_:
	ld b, $05
	call _LABEL_D2E_DelayTimes20ms
	call _LABEL_1B45_GetInputsP2
	call _LABEL_561_GetInputs
	ld a, (_RAM_C837_Player2InputsEnabled)
	and a
	call nz, _LABEL_639_GetPlayer2Buttons
	call _LABEL_3E09_
	ld a, (_RAM_C837_Player2InputsEnabled)
	and a
	jr z, +
	call _LABEL_E81_CheckForP21Or2
	jr z, _LABEL_3DAD_
	jr ++

+:
	call _LABEL_E7A_CheckForButton1
	jr z, _LABEL_3DAD_
++:
	ld a, (_RAM_C824_)
	and a
	jp z, _LABEL_3E74_
	cp $01
	jp z, _LABEL_3E4A_
	cp $02
	jp z, _LABEL_3E61_
	cp $03
	jp nz, _LABEL_3DF2_
	ld a, $39
	call _LABEL_6D3D_AudioPlaySFX
	jp _LABEL_3C6C_GameModeMenu

_LABEL_3DF2_:
	ld a, (_RAM_C837_Player2InputsEnabled)
	and a
	jr z, _LABEL_3E00_
-:
	call _LABEL_E81_CheckForP21Or2
	jr nz, -
	jp _LABEL_3DAD_

_LABEL_3E00_:
	call _LABEL_E7A_CheckForButton1
	jp nz, _LABEL_3E00_
	jp _LABEL_3DAD_

_LABEL_3E09_:
	ld a, (_RAM_C824_)
	ld hl, (_RAM_C82F_DirectionsPressed)
	add a, h
	cp $FF
	jr z, +
	cp $04
	jr z, +
	ld (_RAM_C824_), a
+:
	ld c, $00
	ld b, $07
	call +
	ld c, $01
	ld b, $09
	call +
	ld c, $02
	ld b, $0B
	call +
	ld c, $03
	ld b, $11
+:
	ld e, $20
	ld a, (_RAM_C824_)
	cp c
	jr nz, +
	ld e, $2D
+:
	push de
	ld c, $06
	call _LABEL_57E7_SetTextToVRAMLocation
	pop de
	ld a, e
	call _LABEL_57AB_CharToVRAM
	ret

_LABEL_3E4A_:
	ld a, (_RAM_C822_IntroButtonPressed)
	inc a
	cp $13
	jr nz, +
	xor a
+:
	ld (_RAM_C822_IntroButtonPressed), a
	add a, $2B
	call _LABEL_6D3D_AudioPlaySFX
	call _LABEL_3EA3_
	jp _LABEL_3DF2_

_LABEL_3E61_:
	ld a, (_RAM_C770_SwapButtons)
	xor $01
	ld (_RAM_C770_SwapButtons), a
	call _LABEL_3EB3_
	ld a, $39
	call _LABEL_6D3D_AudioPlaySFX
	jp _LABEL_3DF2_

_LABEL_3E74_:
	ld a, (_RAM_C765_)
	inc a
	cp $03
	jr nz, +
	xor a
+:
	ld (_RAM_C765_), a
	call _LABEL_3E8B_
	ld a, $39
	call _LABEL_6D3D_AudioPlaySFX
	jp _LABEL_3DF2_

_LABEL_3E8B_:
	ld a, (_RAM_C765_)
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld ix, _DATA_6E42_Text_Difficulties
	add ix, de
	ld bc, $0714
	call _LABEL_57E7_SetTextToVRAMLocation
	jp _LABEL_579B_TextToVRAM

_LABEL_3EA3_:
	ld bc, $0914
	call _LABEL_57E7_SetTextToVRAMLocation
	ld hl, (_RAM_C822_IntroButtonPressed)
	inc l
	ld h, $00
	call _LABEL_583B_
	ret

_LABEL_3EB3_:
	ld bc, $0D14
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, (_RAM_C770_SwapButtons)
	xor $01
	add a, $31
	call _LABEL_57AB_CharToVRAM
	ld bc, $0F14
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, (_RAM_C770_SwapButtons)
	add a, $31
	jp _LABEL_57AB_CharToVRAM

; Data from 3ED1 to 3ED1 (1 bytes)
.db $C9 ; abandoned ret

_LABEL_3ED2_ShowLevelSelect:
	call _LABEL_E88_WaitForNoButtonP1
	call _LABEL_E92_WaitForNoButtonP2
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	xor a
	ld (_RAM_C852_), a
	ld (_RAM_C75B_), a
	ld ix, $0020
	call _LABEL_1557_LoadFont
	ld a, $02
	ld (_RAM_FFFF_), a
	ld bc, $0403
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_8C47_Text_cheat_mode
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_295_ScreenOn
	xor a
	ld (_RAM_C792_LevelNumber), a
_LABEL_3F11_:
	ld b, $05
	call _LABEL_D2E_DelayTimes20ms
	ld bc, $0E0D
	call _LABEL_57E7_SetTextToVRAMLocation
	ld a, (_RAM_C792_LevelNumber)
	add a, a
	add a, a
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld ix, _DATA_8BB7_Text_Numbers
	add ix, de
	call _LABEL_579B_TextToVRAM
	call _LABEL_561_GetInputs
	ld a, (_RAM_C774_Player1Player)
	cp $02
	call z, _LABEL_639_GetPlayer2Buttons
	ld hl, (_RAM_C82F_DirectionsPressed)
	ld a, (_RAM_C792_LevelNumber)
	add a, l
	cp $FF
	jr nz, +
	ld a, $00
+:
	cp $0C
	jr nz, +
	dec a
+:
	ld (_RAM_C792_LevelNumber), a
	ld a, (_RAM_C774_Player1Player)
	cp $01
	jr z, +
	call _LABEL_E81_CheckForP21Or2
	jp z, _LABEL_3F11_
	jr ++

+:
	call _LABEL_E7A_CheckForButton1
	jp z, _LABEL_3F11_
++:
	ld b, $14
	call _LABEL_D2E_DelayTimes20ms
	call _LABEL_E88_WaitForNoButtonP1
	call _LABEL_E92_WaitForNoButtonP2
	call _LABEL_282_ScreenOff
	ret

_LABEL_3F74_ShowMenus:
	call _LABEL_282_ScreenOff
	call _LABEL_4EA_ResetScrollTile0AndTilemap
  
	ld hl, _DATA_1AC31_VirginLogoPalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	ld hl, _DATA_1AC41_TitleScreenSpritePalette
	ld (_RAM_C769_SpritePalettePointer), hl
	call _LABEL_1583_LoadPalettes
  
	ld ix, $2000
	call _LABEL_1557_LoadFont
	ld a, $02
	ld (_RAM_FFFF_), a
	ld ix, _DATA_8CF0_Text_Splash
	ld bc, $0401
	call _LABEL_57E7_SetTextToVRAMLocation
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_295_ScreenOn
	ld b, $06
	call _LABEL_D43_DelaySeconds
	call _LABEL_282_ScreenOff
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld bc, $0400
	call _LABEL_57E7_SetTextToVRAMLocation
	call _LABEL_5790_TextToVRAM ; remaining lines in splash
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_295_ScreenOn
	ld b, $06
	call _LABEL_D43_DelaySeconds
	call _LABEL_282_ScreenOff
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld a, $07
	ld (_RAM_FFFF_), a
	xor a
	ld (_RAM_C822_IntroButtonPressed), a
	ld (_RAM_C8B6_), a

  ; Virgin logo
	ld a, :_LABEL_1E5F2_VirginLogo
	ld (_RAM_FFFF_), a
	ld a, $01
	ld (_RAM_C822_IntroButtonPressed), a
	ld hl, _DATA_1AC31_VirginLogoPalette
	ld (_RAM_C7C7_TilePalettePointer), hl
	call _LABEL_1583_LoadPalettes
	ld hl, _LABEL_1E5F2_VirginLogo
	ld de, $0020
	call _LABEL_69_DecompressToVRAMTrampoline
  
	ld hl, _DATA_18403_VirginLogoTilemap
	ld de, $3800
	ld bc, $1820
	xor a
	ld (_RAM_C8B6_), a
	ld a, :_DATA_18403_VirginLogoTilemap
	ld (_RAM_FFFF_), a
	call _LABEL_D4D_EmitTilemapRect
  
	call _LABEL_295_ScreenOn
	
  ld b, $03
	call _LABEL_D43_DelaySeconds
	
  ; Present...
  call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld hl, _DATA_1AB61_
	ld (_RAM_C7C7_TilePalettePointer), hl
	call _LABEL_1583_LoadPalettes
	ld ix, _DATA_6DAE_Text_present
	ld bc, $0906
	call _LABEL_57E7_SetTextToVRAMLocation
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
	ld b, $64
	call _LABEL_E9C_SkippableDelay
  
  ; Main title screen
	call _LABEL_282_ScreenOff
	call _LABEL_4EA_ResetScrollTile0AndTilemap

	ld a, :_LABEL_1CFFB_TitleScreenTiles
	ld (_RAM_FFFF_), a
	ld hl, _LABEL_1CFFB_TitleScreenTiles
	ld de, $0020
	call _LABEL_69_DecompressToVRAMTrampoline

	ld a, :_DATA_18703_TitleScreenTilemap
	ld (_RAM_FFFF_), a
	ld hl, _DATA_18703_TitleScreenTilemap
	ld de, $3884
	ld bc, $0B1E
	call _LABEL_D4D_EmitTilemapRect

	ld bc, $100B
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_6DDE_Text_press_start
	call _LABEL_579B_TextToVRAM

  ; We write the first two lines of the credits on the title screen...
	ld a, :_DATA_8E9A_Text_Credits
	ld (_RAM_FFFF_), a
	ld bc, $1501
	call _LABEL_57E7_SetTextToVRAMLocation
	ld ix, _DATA_8E9A_Text_Credits
	call _LABEL_5790_TextToVRAM
	call _LABEL_5790_TextToVRAM
  
	call _LABEL_295_ScreenOn
  ; Title screen music
	ld a, $01
	call _LABEL_6D54_AudioPlayMusic

	ld bc, $012C ; Intro delay
-:push bc
    ld b, $02
    call _LABEL_D2E_DelayTimes20ms
    call _LABEL_1B45_GetInputsP2
	pop bc
	call _LABEL_E7A_CheckForButton1
	ret nz
	call _LABEL_E81_CheckForP21Or2
	ret nz
	dec bc
	ld a, b
	or c
	jp nz, -
  
	ld a, :_LABEL_18000_Intro;$06
	ld (_RAM_FFFF_), a
	call _LABEL_18000_Intro
  
	ld a, (_RAM_C822_IntroButtonPressed)
	and a
	jp z, _LABEL_3F74_ShowMenus ; restart loop
	ret ; Or break out of it

_LABEL_40DD_:
	ld hl, _RAM_C85E_
	ld (_RAM_C864_), hl
	ld ix, _RAM_C400_
	call +
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld hl, $C861
	ld (_RAM_C864_), hl
	ld ix, _RAM_C430_
	ld a, (ix+0)
	cp $02
	ret nz
+:
	ld a, (ix+1)
	cp $10
	jr nz, +
	dec (ix+21)
	ret nz
	ld a, $01
	ld (_RAM_C779_GameState), a
	ret

+:
	ld a, (ix+46)
	cp $4B
	jr nc, ++
	ld a, (ix+0)
	cp $01
	jr nz, +
	call _LABEL_561_GetInputs
; Data from 4121 to 4122 (2 bytes)
.db $18 $03

+:
	call _LABEL_639_GetPlayer2Buttons
	call _LABEL_1AD6_
	jr +++

++:
	ld hl, $0000
	ld (_RAM_C82F_DirectionsPressed), hl
+++:
	call _LABEL_6F7F_
	ld a, (_RAM_C798_)
	cp $03
	jp z, _LABEL_4B4E_
	cp $05
	jp z, _LABEL_4CB8_
	ld a, (_RAM_C799_)
	and a
	call nz, _LABEL_4B19_
	ld a, (_RAM_C798_)
	cp $04
	jp z, _LABEL_4433_
	cp $06
	jp z, _LABEL_445A_
	ld a, (ix+1)
	cp $00
	jp z, _LABEL_4263_
	cp $01
	jp z, _LABEL_42D9_
	cp $02
	jp z, _LABEL_4311_
	cp $03
	jp z, _LABEL_4385_
	cp $0F
	jp z, ++
	cp $04
	jp z, _LABEL_4252_
	cp $0D
	jr z, _LABEL_41E8_
	cp $05
	jr z, +
	ret

+:
	ld (ix+46), $00
	call _LABEL_4472_
	ld a, (ix+7)
	or (ix+8)
	jr z, +
	jp _LABEL_45F9_

+:
	ld a, (ix+21)
	cp $02
	ret nz
	ld (ix+1), $00
	ld (ix+44), $00
	ret

++:
	call _LABEL_4472_
	ld a, (ix+7)
	or (ix+8)
	call nz, _LABEL_45F9_
	ld a, (ix+7)
	or (ix+8)
	ret nz
	ld (ix+1), $0F
	ld a, (ix+6)
	ld e, a
	sra e
	sra e
	sra e
	sub e
	ld (ix+6), a
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $14
	ret nz
	ld (ix+6), $00
	ld a, (_RAM_C77A_)
	and a
	ret nz
	ld (ix+46), $4B
	ld (ix+1), $00
	xor a
	ld (ix+21), a
	ld (ix+44), a
	ret

_LABEL_41E8_:
	ld a, (_RAM_C7EB_)
	and a
	ret nz
	ld a, (ix+21)
	inc a
	ld (ix+21), a
	cp $02
	jr c, _LABEL_4240_
	jr nz, +
	xor a
	ld (ix+19), a
	ld (ix+20), a
+:
	cp $0F
	ret nz
	ld l, (ix+2)
	ld h, (ix+3)
	ld b, $3F
-:
	call _LABEL_4D24_
	cp $0B
	jr nz, +
	ld a, b
	sub $10
	ld b, a
	jp nc, -
	inc h
	ld b, $37
	jr -

+:
	ld d, a
	ld e, $00
	ld (ix+4), e
	ld (ix+5), d
	ld (ix+2), l
	ld (ix+3), h
	ld (ix+36), b
	ld (ix+1), $00
	ld (ix+46), $64
	push ix
	pop iy
	jp _LABEL_6186_

_LABEL_4240_:
	ld a, (ix+15)
	and a
	ret z
	dec a
	ld (ix+15), a
	ld a, (ix+18)
	add a, $08
	ld (ix+18), a
	ret

_LABEL_4252_:
	call _LABEL_47C6_
	ld a, (ix+1)
	cp $02
	jp z, _LABEL_43D8_
	call _LABEL_450B_
	jp _LABEL_43D8_

_LABEL_4263_:
	call _LABEL_45F9_
	ld a, (ix+1)
	cp $02
	jp z, _LABEL_43D8_
	call _LABEL_4472_
	ld (ix+7), $00
	ld (ix+8), $00
	ld a, (ix+6)
	and a
	jr z, _LABEL_428A_
	xor a
	ld (_RAM_C8BA_), a
	ld (ix+1), $01
	jp _LABEL_42F5_

_LABEL_428A_:
	call _LABEL_47C6_
	ld a, (ix+1)
	cp $02
	jp z, _LABEL_43D8_
	ld a, (ix+7)
	bit 7, a
	call nz, _LABEL_459B_
	ld a, (_RAM_C830_)
	cp $01
	jp nz, +
	ld a, (_RAM_C798_)
	cp $01
	jp nz, +
	ld (ix+1), $03
	xor a
	ld (ix+21), a
	ld (_RAM_C8BA_), a
	jp _LABEL_43D8_

+:
	ld a, (_RAM_C832_)
	dec a
	jp z, +
	ld a, (_RAM_C7EB_)
	and a
	jp nz, _LABEL_43D8_
	ld a, (_RAM_C8BA_)
	inc a
	cp $26
	jr c, +
	ld a, $1E
+:
	ld (_RAM_C8BA_), a
	jp _LABEL_43D8_

_LABEL_42D9_:
	call _LABEL_4472_
	ld a, (ix+6)
	and a
	jp nz, +
	ld (ix+1), $00
	ld (ix+21), $04
	jp _LABEL_428A_

+:
	xor a
	ld (ix+7), a
	ld (ix+8), a
_LABEL_42F5_:
	ld hl, $C8AE
	ld e, (ix+0)
	ld d, $00
	add hl, de
	ld (hl), $01
	call _LABEL_45F9_
	ld a, (ix+1)
	cp $02
	jp z, _LABEL_43D8_
	call _LABEL_47C6_
	jp _LABEL_43D8_

_LABEL_4311_:
	ld a, (ix+21)
	cp $03
	jp c, ++
	call _LABEL_4472_
	ld a, (ix+7)
	bit 7, a
	jr nz, +++
	and a
	jp nz, +
	ld a, (ix+8)
	and a
	jp nz, +
+:
	ld a, (ix+7)
	cp $10
	jr c, +
	ld a, (_RAM_C7EB_)
	and a
	jr nz, +
	ld (ix+21), $05
+:
	call _LABEL_45F9_
	ld a, (ix+1)
	cp $02
	jp nz, _LABEL_43D8_
	jp _LABEL_43D8_

++:
	inc a
	ld (ix+21), a
	cp $02
	jp nz, +++++
	ld a, (_RAM_C7A5_)
	ld (ix+7), a
	jp ++++

+++:
	ld a, (_RAM_C7EB_)
	and a
	jr nz, ++++
	ld a, (ix+21)
	inc a
	cp $05
	jr nc, ++++
	ld (ix+21), a
++++:
	call _LABEL_4793_
+++++:
	ld a, (_RAM_C798_)
	cp $01
	call z, _LABEL_459B_
	call _LABEL_450B_
	xor a
	ld (_RAM_C86D_), a
	jp _LABEL_43D8_

_LABEL_4385_:
	ld a, (_RAM_C830_)
	cp $01
	jr z, +
	ld (ix+21), $04
	ld (ix+1), $00
	jp _LABEL_4263_

+:
	ld a, (_RAM_C8BB_)
	cp $01
	call z, _LABEL_604D_
	call _LABEL_4472_
	call _LABEL_45F9_
	ld (ix+6), $00
	ld a, (_RAM_C859_)
	and $03
	jp nz, _LABEL_43D8_
	ld a, (ix+21)
	inc a
	cp $02
	jp nc, _LABEL_43D8_
	ld (ix+21), a
	jp _LABEL_43D8_

; Data from 43C0 to 43D7 (24 bytes)
.db $DD $36 $01 $0F $AF $32 $6D $C8 $2A $69 $C8 $7D $B4 $CA $D8 $43
.db $11 $07 $00 $19 $7E $DD $77 $07

_LABEL_43D8_:
	ld hl, _RAM_C86D_
	ld a, (ix+6)
	add a, (hl)
	ld (ix+6), a
	ld e, a
	ret z
	ld a, (hl)
	and a
	ret z
	ld l, (ix+2)
	ld h, (ix+3)
	ld bc, $FFB0
	bit 7, e
	jr nz, +
	ld bc, $0050
+:
	add hl, bc
	ld c, l
	ld b, h
	ld l, (ix+4)
	ld h, (ix+5)
	ld a, (ix+1)
	cp $03
	jr nz, +
	ld de, $0080
	jr ++

+:
	ld de, $FF20
	add hl, de
	call _LABEL_135E_
	and $20
	jp nz, +++
	ld de, $00E0
	add hl, de
	call _LABEL_135E_
	and $20
	jp nz, +++
	ld de, $00F0
++:
	add hl, de
	call _LABEL_135E_
	and $20
	ret z
+++:
	ld (ix+6), $00
	ret

_LABEL_4433_:
	ld hl, (_RAM_C82F_DirectionsPressed)
	ld h, $7D
	ld a, (hl)
	ld (ix+6), a
	ld a, (ix+29)
	and a
	jr z, +
	dec a
	ld (ix+29), a
+:
	ld a, (ix+1)
	cp $02
	jp z, _LABEL_4311_
	call _LABEL_47C6_
	ld a, (ix+1)
	cp $02
	jp z, _LABEL_4311_
	ret

_LABEL_445A_:
	ld hl, (_RAM_C82F_DirectionsPressed)
	ld h, $7D
	ld a, (hl)
	ld (ix+6), a
	ld a, (ix+1)
	cp $0E
	ret nz
	dec (ix+21)
	ret nz
	ld (ix+1), $00
	ret

_LABEL_4472_:
	ld a, (ix+1)
	cp $0F
	jr z, ++
	cp $05
	jr z, +
	ld a, (_RAM_C82F_DirectionsPressed)
	add a, a
	add a, a
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
+:
	ld a, (ix+6)
	and a
	jr z, ++
	ld e, $01
	bit 7, a
	jr z, +
	ld e, $FF
+:
	ld a, e
	ld (ix+26), a
++:
	ld a, (ix+6)
	ld de, $0080
	bit 7, a
	jr z, +
	ld de, $FF70
+:
	ld l, (ix+2)
	ld h, (ix+3)
	add hl, de
	ld a, (_RAM_C793_)
	cp $01
	jp z, ++++
	ld b, h
	ld c, l
	ld l, (ix+4)
	ld h, (ix+5)
	ld a, (ix+1)
	cp $03
	jr nz, +
	ld de, $0080
	jr ++

+:
	ld de, $FF10
	add hl, de
	call _LABEL_135E_
	and $20
	jr nz, +++
	ld de, $00F0
	add hl, de
	call _LABEL_135E_
	and $20
	jr nz, +++
	ld de, $00E0
++:
	add hl, de
	call _LABEL_135E_
	and $20
	ret z
+++:
	xor a
	ld (ix+6), a
	ld (_RAM_C86F_), a
	ret

++++:
	ld b, (ix+36)
	call _LABEL_4D24_
	cp (ix+5)
	ret nc
	xor a
	ld (ix+6), a
	ld (_RAM_C86F_), a
	ld a, (ix+1)
	cp $05
	ret nz
	ret

; Data from 450A to 450A (1 bytes)
.db $C9

_LABEL_450B_:
	ld a, (_RAM_C7C0_)
	cp $05
	ret nz
	ld c, (ix+2)
	ld b, (ix+3)
	ld hl, $FF60
	ld a, (ix+26)
	cp $FF
	jr z, +
	ld hl, $00A0
+:
	add hl, bc
	ld c, l
	ld b, h
	ld l, (ix+4)
	ld h, (ix+5)
	ld de, $0080
	add hl, de
	push bc
	call _LABEL_135E_
	pop bc
	ld e, a
	ld a, (_RAM_C850_)
	cp $7F
	jr nz, _LABEL_457F_
	ld a, (ix+1)
	cp $04
	jr z, ++
	cp $02
	ret nz
	ld a, (_RAM_C82F_DirectionsPressed)
	cp (ix+26)
	ret nz
	ld hl, (_RAM_C864_)
	ld (hl), $01
	ld (ix+1), $04
	ld a, $38
	call _LABEL_6D3D_AudioPlaySFX
	ld a, (ix+26)
	ld hl, $FFC0
	bit 7, a
	jr z, +
	ld hl, $0040
+:
	add hl, bc
	ld (ix+2), l
	ld (ix+3), h
	ret

++:
	ld (ix+7), $F0
	ld (ix+8), $00
	ld (ix+6), $00
	ret

_LABEL_457F_:
	ld a, (ix+1)
	cp $04
	ret nz
	ld a, e
	cp $80
	ret z
	ld (ix+1), $02
	ld a, (_RAM_C7A6_)
	ld hl, (_RAM_C864_)
	inc hl
	inc hl
	ld (hl), a
	ld (ix+8), $03
	ret

_LABEL_459B_:
	ld c, (ix+2)
	ld b, (ix+3)
	ld l, (ix+4)
	ld h, (ix+5)
	ld a, (_RAM_C7C0_)
	cp $07
	jr nz, +
	ld a, (_RAM_C7DE_)
	cp h
	jp nc, ++
+:
	dec h
	ld (_RAM_C822_IntroButtonPressed), hl
	ld hl, $FFD0
	add hl, bc
	ld c, l
	ld b, h
	ld hl, (_RAM_C822_IntroButtonPressed)
	call _LABEL_135E_
	and $40
	jp nz, ++
	ld hl, $0060
	add hl, bc
	ld c, l
	ld b, h
	ld hl, (_RAM_C822_IntroButtonPressed)
	call _LABEL_135E_
	and $40
	ret z
++:
	ld (ix+7), $00
	ld (ix+8), $03
	ld a, (ix+1)
	cp $0F
	ret z
	ld a, (_RAM_C7A6_)
	ld hl, (_RAM_C864_)
	inc hl
	inc hl
	ld (hl), a
	ld (ix+1), $02
	ld (ix+21), $04
	ret

_LABEL_45F9_:
	ld hl, $0000
	ld (_RAM_C869_), hl
	ld (_RAM_C86B_), hl
	xor a
	ld (_RAM_C86D_), a
	ld de, $0A00
	ld a, (_RAM_C798_)
	cp $02
	jp z, _LABEL_4718_
	ld de, $0880
	cp $04
	jp z, _LABEL_4718_
	ld c, (ix+2)
	ld b, (ix+3)
	ld l, (ix+4)
	ld h, (ix+5)
	inc h
	ld (_RAM_C822_IntroButtonPressed), hl
	call _LABEL_5114_
	jp nz, _LABEL_4695_
	ld hl, $0030
	ld a, (ix+26)
	cp $01
	jr z, +
	ld hl, $FFD0
+:
	ld (_RAM_C824_), hl
	add hl, bc
	ld c, l
	ld b, h
	ld hl, (_RAM_C822_IntroButtonPressed)
	call _LABEL_5114_
	jp nz, _LABEL_4695_
	ld h, b
	ld l, c
	ld bc, (_RAM_C824_)
	sla c
	rl b
	and a
	sbc hl, bc
	ld c, l
	ld b, h
	ld hl, (_RAM_C822_IntroButtonPressed)
	call _LABEL_5114_
	jp nz, _LABEL_4695_
	ld a, (ix+1)
	cp $02
	ret z
	cp $0F
	ret z
	xor a
	ld (_RAM_C871_), a
	ld hl, (_RAM_C822_IntroButtonPressed)
	call _LABEL_5114_
	jr nz, _LABEL_46B1_
-:
	ld a, (_RAM_C871_)
	inc a
	ld (_RAM_C871_), a
	cp $05
	jp nc, _LABEL_46F2_
	ld de, $0010
	add hl, de
	call _LABEL_5114_
	jp z, -
	ld de, $FF00
	add hl, de
	jp ++

_LABEL_4695_:
	ld a, (_RAM_C7C0_)
	cp $05
	jp nz, _LABEL_46B1_
	ld a, (_RAM_C850_)
	ld e, $10
	cp $7D
	jr z, +
	ld e, $F0
	cp $7E
	jp nz, _LABEL_46B1_
+:
	ld a, e
	ld (_RAM_C86D_), a
_LABEL_46B1_:
	ld de, $FFF0
	add hl, de
	call _LABEL_5114_
	jr nz, _LABEL_46B1_
	ld de, $FF20
	add hl, de
++:
	ld (ix+4), l
	ld (ix+5), h
	ld a, (ix+1)
	cp $0F
	jr z, +
	cp $05
	jr z, +
	cp $02
	ret nz
+:
	ld e, a
	ld (ix+7), $00
	ld (ix+8), $00
	ld hl, (_RAM_C864_)
	inc hl
	inc hl
	ld (hl), $00
	ld a, e
	cp $05
	ret z
	cp $0F
	ret z
	ld (ix+1), $00
	ld (ix+21), $04
	ret

_LABEL_46F2_:
	ld a, (ix+1)
	cp $02
	ret z
	cp $0F
	ret z
	cp $05
	ret z
	ld (ix+1), $02
	ld (ix+8), $03
	ld (ix+21), $04
	ld (ix+40), $01
	ld a, (_RAM_C7A6_)
	ld hl, (_RAM_C864_)
	inc hl
	inc hl
	ld (hl), a
	ret

_LABEL_4718_:
	ld a, (_RAM_C793_)
	cp $01
	jr z, _LABEL_4763_
_LABEL_471F_:
	ld l, (ix+4)
	ld h, (ix+5)
	and a
	sbc hl, de
	jr nc, +
	ld a, (_RAM_C793_)
	cp $01
	ret nz
	ld a, (ix+7)
	or (ix+8)
	ret nz
	jp _LABEL_46F2_

+:
	ld (ix+4), e
	ld (ix+5), d
	ld a, (ix+1)
	ld e, a
	cp $0F
	jr z, +
	cp $05
	jr z, +
	cp $02
	ret nz
	ld (ix+1), $00
+:
	xor a
	ld (ix+7), a
	ld (ix+8), a
	ld a, e
	cp $0F
	ret nz
	ld (ix+21), $00
	ret

_LABEL_4763_:
	ld l, (ix+2)
	ld h, (ix+3)
	ld b, (ix+36)
	call _LABEL_4D24_
	ld e, $00
	ld d, a
	cp $0B
	jr z, +
	jr _LABEL_471F_

+:
	ld a, (ix+5)
	cp $0A
	ret c
	ld (ix+1), $0D
	xor a
	ld (ix+21), a
	ld (ix+6), a
	ld (ix+7), a
	ld (ix+37), a
	ld (ix+44), a
	ret

_LABEL_4793_:
	ld a, (ix+21)
	and a
	ret z
	ld a, (_RAM_C831_ButtonsPressed)
	and a
	jr z, +
	ld hl, (_RAM_C7A6_)
	ld a, l
	and a
	jp z, ++
	ld de, (_RAM_C864_)
	inc de
	inc de
	ld a, (de)
	inc a
	cp l
	jr nc, ++
	ld (de), a
	ld (ix+8), $00
	ret

+:
	ld hl, (_RAM_C864_)
	ld (hl), a
++:
	ld a, (ix+7)
	bit 7, a
	ret z
	ld (ix+8), $03
	ret

_LABEL_47C6_:
	ld hl, (_RAM_C864_)
	ld a, (hl)
	and a
	jr z, +
	ld a, (_RAM_C831_ButtonsPressed)
	ld (hl), a
	ret

+:
	ld a, (_RAM_C831_ButtonsPressed)
	and a
	ret z
	ld (hl), a
	ld (ix+1), $02
	ld a, (ix+6)
	and a
	jr z, +
	ld a, $01
+:
	ld (ix+40), a
	xor a
	ld (ix+7), a
	ld (_RAM_C86D_), a
	ld (ix+8), a
	ld hl, (_RAM_C864_)
	inc hl
	inc hl
	ld (hl), a
	ld (ix+21), $01
	ld a, (_RAM_C792_LevelNumber)
	and a
	call z, _LABEL_6AB9_
	ld hl, (_RAM_C869_)
	ld a, l
	or h
	jp z, +
	ld hl, $0000
	ld (_RAM_C869_), hl
	ld (_RAM_C86B_), hl
+:
	ret

_LABEL_4814_:
	ld ix, _RAM_C400_
	ld b, $00
	call +
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld b, $01
	ld ix, _RAM_C430_
+:
	ld a, (_RAM_C798_)
	cp $06
	jp z, _LABEL_498D_
	cp $04
	jp z, _LABEL_49B6_
	cp $05
	jp z, _LABEL_4953_
	cp $03
	jp z, +
	ld a, (ix+1)
	cp $00
	jp z, _LABEL_4A15_
	cp $01
	jp z, _LABEL_4A4C_
	cp $02
	jp z, _LABEL_4A95_
	cp $03
	jp z, _LABEL_4A07_
	cp $10
	jp z, _LABEL_4AD3_
	cp $04
	jp z, _LABEL_4A8C_
	cp $0F
	jp z, _LABEL_492F_
	cp $05
	jp z, ++
	ret

+:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (ix+44)
	and a
	jp nz, ++
	ld l, $09
	call _LABEL_4B02_
	ld e, $05
	ld a, (ix+1)
	dec a
	jr z, +
	ld e, $04
	dec a
	jr z, +
	ld e, $03
	cp $0D
	jr z, +
	ld e, $01
	ld a, (ix+6)
	and a
	jr z, +
	ld e, $02
+:
	ld a, e
	dec a
	jp _LABEL_4AE0_

++:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (ix+21)
	and a
	jr nz, _LABEL_4915_
	ld a, (ix+44)
	add a, a
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld a, $05
	ld (_RAM_FFFF_), a
	ld hl, _DATA_140ED_
	ld a, (ix+0)
	dec a
	jr nz, +
	ld hl, _DATA_14141_
+:
	add hl, de
	ld a, (hl)
	ld (ix+38), a
	inc hl
	ld a, (hl)
	ld (ix+39), a
	inc hl
	ld a, (hl)
	ld (ix+27), a
	ld a, (_RAM_C792_LevelNumber)
	dec a
	jr z, +++
	inc hl
	ld a, (hl)
	cp $FF
	jr z, ++
	bit 7, (ix+26)
	jr z, +
	neg
+:
	ld (ix+6), a
++:
	inc hl
	ld a, (hl)
	ld (ix+7), a
	ld e, a
	inc hl
	ld a, (hl)
	ld (ix+8), a
	ld (ix+21), $01
	ld a, (_RAM_C792_LevelNumber)
	and a
	jr nz, +
	push ix
	bit 7, e
	call nz, _LABEL_6AB9_
	pop ix
	call _LABEL_4472_
+:
	xor a
	jr ++++

+++:
	ld (ix+21), $01
	xor a
	jr ++++

_LABEL_4915_:
	ld a, (ix+24)
	inc a
	cp (ix+27)
	jr c, ++++
	ld (ix+21), $02
	dec a
++++:
	ld (ix+24), a
	ld l, (ix+38)
	ld h, (ix+39)
	jp _LABEL_4AE0_

_LABEL_492F_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld l, $00
	call _LABEL_4B02_
	ld e, $00
	ld a, (ix+8)
	and a
	jr z, +
	ld e, $01
	ld a, (ix+7)
	bit 7, a
	jr nz, +
	cp $30
	ret c
	ld e, $00
+:
	ld a, e
	jp _LABEL_4AE0_

_LABEL_4953_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (ix+1)
	cp $10
	jr nz, +
	ld hl, _DATA_7A25_
	ld a, (ix+0)
	cp $02
	jr z, ++
	ld hl, _DATA_7A31_
	jr ++

+:
	ld hl, $7A39
	ld a, (ix+0)
	cp $02
	jr z, +
	ld hl, $7A49
+:
	ld a, (ix+26)
	srl a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
++:
	ld (ix+19), l
	ld (ix+20), h
	ret

_LABEL_498D_:
	ld a, (ix+0)
	ld hl, _DATA_8000_
	cp $01
	jr z, +
	ld hl, $800A
+:
	ld a, (ix+1)
	cp $0E
	jr nz, +
	ld de, $0005
	add hl, de
+:
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld de, $003C
	add hl, de
+:
	ld (ix+19), l
	ld (ix+20), h
	ret

_LABEL_49B6_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (ix+0)
	ld hl, _DATA_7A29_
	cp $01
	jr z, +
	ld hl, $7A1D
+:
	ld a, (ix+1)
	ld de, $0004
	cp $02
	jr z, +
	cp $10
	jr nz, ++
	ld de, $0008
+:
	add hl, de
++:
	ld (ix+19), l
	ld (ix+20), h
	ret

; Data from 49E1 to 4A06 (38 bytes)
.db $DD $7E $15 $3C $DD $77 $15 $FE $32 $20 $00 $FE $50 $38 $06 $3E
.db $01 $32 $79 $C7 $C9 $3A $EB $C7 $B8 $C0 $AF $DD $77 $18 $2E $01
.db $CD $02 $4B $C3 $E0 $4A

_LABEL_4A07_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld l, $02
	call _LABEL_4B02_
	xor a
	jp _LABEL_4AE0_

_LABEL_4A15_:
	ld hl, _RAM_C8AE_
	ld e, (ix+0)
	ld d, $00
	add hl, de
	ld a, (hl)
	cp $01
	jp z, _LABEL_4A4C_
	ld a, (ix+37)
	and a
	jp nz, _LABEL_4A76_
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (_RAM_C8BA_)
	sub $1A
	jp c, +
	srl a
	xor a
	ld l, $03
	call _LABEL_4B02_
	jp _LABEL_4AE0_

+:
	ld l, $04
	call _LABEL_4B02_
	xor a
	jp _LABEL_4AE0_

_LABEL_4A4C_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld hl, $C8AE
	ld e, (ix+0)
	ld d, $00
	add hl, de
	ld (hl), $00
	ld a, (ix+26)
	bit 7, a
	jr z, +
	neg
+:
	add a, (ix+24)
	call _LABEL_506B_
	ld (ix+24), a
	ld l, $05
	call _LABEL_4B02_
	jp _LABEL_4AE0_

_LABEL_4A76_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (ix+24)
	inc a
	and $03
	ld (ix+24), a
	ld l, $08
	call _LABEL_4B02_
	jp _LABEL_4AE0_

_LABEL_4A8C_:
	xor a
	ld l, $06
	call _LABEL_4B02_
	jp _LABEL_4AE0_

_LABEL_4A95_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld a, (ix+40)
	and a
	jp nz, +
	ld l, $07
	call _LABEL_4B02_
	xor a
	jp _LABEL_4AE0_

+:
	ld a, $04
	ld l, $05
	call _LABEL_4B02_
	jp _LABEL_4AE0_

; Data from 4AB4 to 4AD2 (31 bytes)
.db $3A $59 $C8 $E6 $07 $20 $0D $DD $7E $15 $3C $FE $05 $38 $02 $3E
.db $03 $DD $77 $15 $2E $04 $CD $02 $4B $DD $7E $15 $C3 $E0 $4A

_LABEL_4AD3_:
	ld a, (_RAM_C7EB_)
	cp b
	ret nz
	ld l, $00
	call _LABEL_4B02_
	ld a, (ix+24)
_LABEL_4AE0_:
	add a, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld de, $01F4
	ld a, (ix+0)
	cp $02
	jr z, +
	ld de, $01AC
+:
	ld a, (ix+26)
	cp $FF
	jr nz, +
	add hl, de
+:
	ld (ix+19), l
	ld (ix+20), h
	ret

_LABEL_4B02_:
	sla l
	sla l
	ld h, (ix+0)
	dec h
	jr nz, +
	inc l
	inc l
+:
	ld h, $00
	ld de, $7176
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ret

_LABEL_4B19_:
	ld a, (ix+1)
	cp $0F
	ret z
	cp $05
	ret z
	ld a, (_RAM_C830_)
	neg
	ld (ix+37), a
	add a, (ix+36)
	ld hl, (_RAM_C799_)
	cp l
	ret nc
	ld l, a
	ld a, (_RAM_C793_)
	cp $01
	jr nz, +
	ld b, l
	push hl
	ld l, (ix+2)
	ld h, (ix+3)
	call _LABEL_4D24_
	pop hl
	cp (ix+5)
	ret c
+:
	ld (ix+36), l
	ret

_LABEL_4B4E_:
	ld iy, _RAM_C4C0_
	push ix
	pop hl
	ld a, l
	and a
	jr z, +
	ld iy, _RAM_C4F0_
+:
	ld a, (iy+0)
	cp $04
	jr z, +
	call _LABEL_6B9F_
+:
	ld a, (ix+1)
	cp $05
	jr z, ++
	cp $01
	jr z, +
	cp $02
	jr z, +
	cp $0F
	jr nz, _LABEL_4BB8_
	dec (ix+21)
	jp nz, _LABEL_4BCC_
	ld (ix+1), $00
	jp _LABEL_4BCC_

+:
	push ix
	pop iy
	ld de, $00C0
	add iy, de
	ld a, (iy+1)
	and a
	jr nz, +
	ld (iy+44), a
	ld (_RAM_C8C3_), a
	ld (ix+1), a
	jp _LABEL_4BB8_

+:
	ld (ix+7), $00
	jp _LABEL_4C0A_

++:
	ld a, (ix+21)
	cp $02
	jr nz, ++
	ld (ix+1), $00
	ld (ix+44), $00
_LABEL_4BB8_:
	ld a, (_RAM_C82F_DirectionsPressed)
	and a
	jr z, ++
	ld e, $01
	cp $80
	jr c, +
	ld e, $FF
+:
	ld (ix+26), e
++:
	call _LABEL_4C4C_
_LABEL_4BCC_:
	ld l, (ix+4)
	ld h, (ix+5)
	ld c, (ix+2)
	ld b, (ix+3)
	call _LABEL_135E_
	and a
	jr z, _LABEL_4C0A_
	bit 5, a
	jr z, +
	nop
+:
	and $DF
	ld e, $20
	cp $03
	jr z, +
	ld e, $E0
+:
	ld (ix+6), e
	ld a, (ix+1)
	cp $0F
	jr z, _LABEL_4C0A_
	ld (ix+1), $0F
	ld (ix+21), $0C
	push ix
	push ix
	pop iy
	call _LABEL_6186_
	pop ix
_LABEL_4C0A_:
	ld l, (ix+4)
	ld h, (ix+5)
	ld de, (_RAM_C7DD_)
	ld a, (ix+1)
	inc d
	inc d
	and a
	sbc hl, de
	jr nc, ++
	ld e, $00
	ld a, (_RAM_C86E_)
	and a
	jr nz, +
	ld e, $20
+:
	ld a, (ix+7)
	cp $80
	jr nc, +
	and a
	jr nz, +++
+:
	ld (ix+7), e
	jr +++

++:
	ld a, h
	cp $08
	jr c, +++
	ld a, (ix+7)
	and a
	jr z, +++
	cp $80
	jr nc, +++
	ld (ix+7), $00
+++:
	nop
	ret

_LABEL_4C4C_:
	ld de, $0006
	push ix
	pop hl
	add hl, de
	ld bc, _RAM_C82F_DirectionsPressed
	call ++
	inc hl
	inc bc
	call ++
	ld a, (_RAM_C86D_)
	and a
	ret z
	add a, (ix+6)
	ld e, a
	jp +

; Data from 4C6A to 4C82 (25 bytes)
.db $DD $7E $06 $CB $7F $28 $0A $CB $7B $20 $0E $FE $40 $38 $0A $18
.db $0B $CB $7B $28 $04 $FE $C0 $38 $03

+:
	ld (ix+6), e
	xor a
	ld (_RAM_C86D_), a
	ret

++:
	ld a, (bc)
	and a
	jp z, ++
	add a, a
	add a, (hl)
	bit 7, a
	jr z, +
	cp $D0
	ret c
	jr +++

+:
	cp $30
	ret nc
	jr +++

++:
	ld a, (hl)
	cp $04
	jr c, +
	cp $FD
	jr nc, +
	ld e, a
	and $80
	rlca
	add a, a
	dec a
	ld d, a
	add a, a
	add a, d
	add a, e
	jr +++

+:
	xor a
+++:
	ld (hl), a
	ret

_LABEL_4CB8_:
	ld a, $03
	ld (_RAM_FFFF_), a
	ld a, (ix+27)
	and a
	jp z, ++++
	dec a
	jp z, ++++
_LABEL_4CC8_:
	ld b, a
	ld a, (ix+26)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_DC52_
	add hl, de
	push hl
	push bc
	call _LABEL_688_
	pop bc
	pop hl
	cp (ix+26)
	jr nz, +
	ld a, b
	cp $02
	jr nc, ++
+:
	ld a, (hl)
	ld (ix+6), a
	inc hl
	ld a, (hl)
	ld (ix+7), a
	jr +++

++:
	ld a, (hl)
	add a, a
	ld (ix+6), a
	inc hl
	ld a, (hl)
	add a, a
	ld (ix+7), a
	dec b
+++:
	ld (ix+27), b
	ret

++++:
	ld l, (ix+38)
	ld h, (ix+39)
	ld a, (hl)
	cp $FF
	jr z, +
	ld (ix+26), a
	inc hl
	ld a, (hl)
	ld b, a
	ld (ix+27), a
	inc hl
	ld (ix+38), l
	ld (ix+39), h
	ld a, b
	jr _LABEL_4CC8_

+:
	ld a, $02
	ld (_RAM_C779_GameState), a
	ret

_LABEL_4D24_:
	ld a, b
	srl a
	srl a
	srl a
	srl a
	neg
	add a, $0E
	add a, $CA
	ld d, a
	ld e, h
	ld a, (de)
	neg
	add a, $0A
	ret

_LABEL_4D3B_:
	ld ix, _RAM_C460_
	ld b, $02
	ld de, $0030
-:
	ld a, (ix+0)
	and a
	ret z
	add ix, de
	djnz -
	or $FF
	ld ix, _RAM_C200_
	ret

_LABEL_4D54_:
	ld ix, _RAM_C4C0_
	ld b, $0A
	ld de, $0030
-:
	ld a, (ix+0)
	and a
	ret z
	add ix, de
	djnz -
	ld ix, _RAM_C200_
	or $FF
	ret

_LABEL_4D6D_:
	push ix
	pop hl
	ld de, $C4C0
	and a
	sbc hl, de
	call c, _LABEL_4DBE_
	xor a
	ld (ix+0), a
	ld (ix+1), a
	ld (ix+31), a
	ld (ix+30), a
	ret

; Data from 4D87 to 4DBD (55 bytes)
.db $DD $7E $00 $FE $10 $DA $B3 $4D $DD $6E $1E $26 $C1 $36 $02 $DD
.db $36 $00 $05 $AF $DD $77 $06 $DD $77 $07 $DD $77 $08 $DD $77 $18
.db $C5 $06 $0A $CD $C8 $56 $C1 $3E $30 $C3 $3D $6D $1E $02 $DD $6E
.db $1E $26 $C1 $73 $C3 $6D $4D

_LABEL_4DBE_:
	ld a, (ix+9)
	cp $FF
	ret z
	ld l, $00
-:
	sub $18
	jr c, +
	inc l
	jp -

+:
	ld h, $C7
	ld (hl), $00
	ret

_LABEL_4DD3_:
	ld hl, _RAM_C700_
	ld c, $00
	ld b, $08
-:
	ld a, (hl)
	cp $02
	jp nz, +
	ld (hl), c
+:
	inc hl
	djnz -
	ret

_LABEL_4DE5_:
	ld a, (ix+9)
	ld l, $00
-:
	sub $18
	jr c, +
	inc l
	jp -

+:
	ld a, l
	push af
	ld hl, _RAM_C700_
-:
	ld a, (hl)
	and a
	jp z, +
	inc l
	ld a, l
	cp $08
	jp nz, -
	pop af
	push af
	ld l, a
+:
	ld (hl), $01
	ld a, l
	add a, a
	add a, a
	add a, a
	ld l, a
	add a, a
	add a, l
	ld (ix+9), a
	ld l, a
	ld h, $7D
	ld e, (hl)
	ld (ix+10), e
	inc h
	ld a, (hl)
	add a, $20
	ld (ix+11), a
	pop af
	ld l, a
	ld h, $C7
	ld (hl), $02
	ret

_LABEL_4E27_:
	push bc
	push de
	push hl
	push ix
	pop hl
	ld d, h
	ld e, l
	inc de
	ld (hl), $00
	ld bc, $002F
	ldir
	ld (ix+9), $FF
	pop hl
	pop de
	pop bc
	ret

_LABEL_4E3F_:
	ld hl, (_RAM_C7DB_)
	ld de, $FF00
	add hl, de
	bit 7, h
	jr z, +
	ld hl, $0000
+:
	ld (_RAM_C842_), hl
	ld hl, (_RAM_C7DB_)
	ld de, $1100
	add hl, de
	ld (_RAM_C844_), hl
	ld hl, (_RAM_C7DD_)
	ld de, $0200
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ld (_RAM_C846_), hl
	ld hl, (_RAM_C7DD_)
	ld de, $0E00
	add hl, de
	ld (_RAM_C848_), hl
	ld a, (_RAM_C791_)
	and a
	jp nz, ++
	ld ix, _RAM_C400_
	ld de, _DATA_30_
	ld a, (_RAM_C841_)
	inc a
	and $03
	ld (_RAM_C841_), a
	and $01
	jr z, +
	ld ix, _RAM_C670_
	ld de, _RAM_FFD0_
+:
	ld (_RAM_C822_IntroButtonPressed), de
	ld b, $0E
-:
	ld a, (ix+0)
	and a
	call nz, _LABEL_4F3C_
	ld de, (_RAM_C822_IntroButtonPressed)
	add ix, de
	djnz -
	call _LABEL_5675_
	ret

++:
	ld hl, _RAM_C710_
	ld de, _RAM_C711_
	ld (hl), $00
	ld bc, $0040
-:
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	jp pe, -
	ld hl, _RAM_C400_
	ld de, $0030
	ld b, $0E
-:
	ld a, (hl)
	and a
	jr nz, +
	add hl, de
	djnz -
	jr ++

+:
	push hl
	push hl
	pop ix
	ld a, (ix+36)
	add a, $10
	ld l, a
	ld h, $C7
	inc (hl)
	pop hl
	add hl, de
	djnz -
++:
	ld hl, _RAM_C710_
-:
	ld a, (hl)
	and a
	jr nz, +
_LABEL_4EF7_:
	inc l
	ld a, l
	cp $51
	jp nz, -
	ret

+:
	ld c, a
	ld b, $0E
	ld ix, _RAM_C400_
	ld de, $0030
	ld a, (_RAM_C841_)
	inc a
	and $03
	ld (_RAM_C841_), a
	and $01
	jr z, _LABEL_4F1D_
	ld ix, _RAM_C670_
	ld de, $FFD0
_LABEL_4F1D_:
	ld a, (ix+0)
	and a
	jp z, +
	ld a, (ix+36)
	add a, $10
	cp l
	jr nz, +
	push de
	push hl
	call _LABEL_4F3C_
	pop hl
	pop de
	dec c
	jr z, _LABEL_4EF7_
+:
	add ix, de
	djnz _LABEL_4F1D_
	jr _LABEL_4EF7_

_LABEL_4F3C_:
	ld a, (ix+46)
	and $03
	cp $03
	ret z
	ld a, (ix+20)
	or (ix+19)
	ret z
	push bc
	ld l, (ix+2)
	ld h, (ix+3)
	ld de, (_RAM_C842_)
	and a
	sbc hl, de
	jp c, _LABEL_5058_
	add hl, de
	ld de, (_RAM_C844_)
	and a
	sbc hl, de
	jp nc, _LABEL_5058_
	ld a, (ix+2)
	and $F0
	ld l, a
	ld h, (ix+3)
	ld de, (_RAM_C7DB_)
	ld a, e
	and $F0
	ld e, a
	and a
	sbc hl, de
	ld de, $0080
	add hl, de
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	ld de, (_RAM_C846_)
	and a
	sbc hl, de
	jp c, +
	add hl, de
	ld de, (_RAM_C848_)
	and a
	sbc hl, de
	jp nc, +
	ld a, (ix+4)
	and $F0
	ld l, a
	ld h, (ix+5)
	ld de, (_RAM_C7DD_)
	ld a, e
	and $F0
	ld e, a
	and a
	sbc hl, de
	jp ++

+:
	pop hl
	jp _LABEL_5058_

++:
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b, l
	ld a, (_RAM_C791_)
	and a
	jr z, +
	ld a, (ix+36)
	neg
	add a, l
	ld b, a
+:
	push bc
	ld l, (ix+19)
	ld h, (ix+20)
	push hl
	call _LABEL_F30_
	pop hl
	ld a, (hl)
	ld (_RAM_FFFF_), a
	pop bc
	pop hl
	ld e, (ix+32)
	ld d, (ix+33)
	push de
	pop iy
	ld e, (ix+17)
	ld d, $FF
	bit 7, e
	jp nz, +
	ld d, $00
+:
	add hl, de
	ld a, (ix+18)
	add a, b
	ld b, a
	ld e, (ix+14)
	ld d, (ix+15)
	ld c, (ix+9)
	bit 7, h
	jr z, +
	ld a, e
	add a, a
	add a, a
	add a, a
	add a, l
	jr nc, _LABEL_5058_
	cp $08
	jr c, _LABEL_5058_
+:
	ld a, (ix+20)
	cp $80
	jr nc, +++
	ld a, (ix+16)
	and a
	jr z, ++
	ld a, (_RAM_C841_)
	and $02
	jp nz, +
	call _LABEL_187E_
	pop bc
	ret

+:
	call _LABEL_195A_
	pop bc
	ret

++:
	ld a, (_RAM_C841_)
	and $02
	jp nz, +
	call _LABEL_1828_
	pop bc
	ret

+:
	call _LABEL_18DF_
_LABEL_5058_:
	pop bc
	ret

+++:
	ld a, (_RAM_C841_)
	and $02
	jr nz, +
	call _LABEL_C75_
	pop bc
	ret

+:
	call _LABEL_CC7_
	pop bc
	ret

_LABEL_506B_:
	bit 7, a
	jr nz, +
	cp $06
	ret c
	xor a
	ret

+:
	ld a, $05
	ret

_LABEL_5077_:
	ld h, (ix+29)
	ld l, $80
	ld e, (ix+4)
	ld d, (ix+5)
	and a
	sbc hl, de
	jr c, +
	ld a, (ix+7)
	add a, $08
	cp $30
	jp z, ++
	ld (ix+7), a
	jp ++

+:
	ld a, (ix+7)
	sub $08
	cp $D0
	jp z, ++
	ld (ix+7), a
++:
	ld h, (ix+28)
	ld l, $00
	ld e, (ix+2)
	ld d, (ix+3)
	and a
	sbc hl, de
	jp c, +
	ld a, (ix+6)
-:
	add a, $08
	jr z, -
	cp $30
	ret z
	ld (ix+6), a
	ret

+:
	ld a, (ix+6)
-:
	sub $08
	jr z, -
	cp $D0
	ret z
	ld (ix+6), a
	ret

_LABEL_50D1_:
	ld hl, _RAM_C700_
	ld de, _RAM_C700_ + 1
	ld bc, $0007
	ld (hl), $00
	ldir
	ld hl, _RAM_C400_
	ld de, _RAM_C400_ + 1
	ld bc, $029F
	ld (hl), $00
	ldir
	ret

_LABEL_50EC_:
	push hl
	ld hl, _RAM_C768_
	ld a, (_RAM_C766_)
	and $48
	adc a, $38
	sla a
	sla a
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a, (hl)
	pop hl
	ret

; Data from 5106 to 5113 (14 bytes)
.db $21 $30 $C4 $06 $0D $11 $30 $00 $AF $77 $19 $10 $FC $C9

_LABEL_5114_:
	call _LABEL_511A_
	ret

; Data from 5118 to 5119 (2 bytes)
.db $AF $C9

_LABEL_511A_:
	call _LABEL_135E_
	ld e, a
	and $80
	jp z, _LABEL_515E_
	ld a, e
	cp $80
	jp z, +
	ld a, e
	and $1F
	jp z, _LABEL_515B_
	sub $01
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld a, $B1
	adc a, $00
	ld d, a
	ld a, c
	srl a
	srl a
	srl a
	srl a
	or e
	ld e, a
	ld a, $CE
	ld (_RAM_FFFF_), a
	ld a, (de)
	inc a
	ld e, a
	ld a, l
	srl a
	srl a
	srl a
	srl a
	cp e
	jp c, _LABEL_515E_
_LABEL_515B_:
	or $FF
	ret

_LABEL_515E_:
	xor a
	ret

+:
	ld a, l
	cp $80
	jp nc, _LABEL_515E_
	jp _LABEL_515B_

; Data from 5169 to 51AF (71 bytes)
.db $DD $21 $30 $C4 $06 $03 $11 $00 $00 $DD $22 $22 $C8 $3A $DC $C7
.db $6F $3A $DE $C7 $67 $C5 $DD $7E $00 $DD $7E $03 $95 $30 $02 $ED
.db $44 $BB $DA $A1 $51 $4F $DD $7E $05 $94 $30 $02 $ED $44 $BA $DA
.db $A1 $51 $57 $59 $DD $22 $22 $C8 $01 $30 $00 $DD $09 $C1 $10 $D5
.db $DD $2A $22 $C8 $C3 $6D $4D

_LABEL_51B0_:
	ld a, $C2
	ld (_RAM_FFFF_), a
	ld hl, _DATA_8A4D_
	ld de, $3560
	ld b, $0A
	jp _LABEL_6A7_EmitTiles

_LABEL_51C0_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3EBC0_
	ld de, $34C0
	ld b, $01
	jp _LABEL_6A7_EmitTiles

_LABEL_51D0_:
	ld a, $C2
	ld (_RAM_FFFF_), a
	ld hl, _DATA_88ED_
	ld de, $36A0
	ld b, $0B
	call _LABEL_6A7_EmitTiles
	call _LABEL_51B0_
	ld a, (_RAM_C7C0_)
	cp $01
	jp z, _LABEL_5269_
	cp $02
	jp z, _LABEL_531F_
	cp $03
	jp z, _LABEL_52EF_
	cp $04
	jp z, _LABEL_527C_
	cp $05
	jp z, _LABEL_528C_
	cp $07
	jp z, +
	ret

+:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3EF80_
	ld de, $34E0
	ld b, $04
	call _LABEL_6A7_EmitTiles
	ld a, (_RAM_C792_LevelNumber)
	cp $0B
	jr z, +
	ld hl, _DATA_3EBE0_
	ld de, $3380
	ld b, $09
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3EE80_
	ld de, $3100
	ld b, $08
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3ED00_
	ld de, $3280
	ld b, $08
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3EE00_
	ld de, $3240
	ld b, $02
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3EE00_
	ld de, $3200
	ld b, $02
	jp _LABEL_6A7_EmitTiles

+:
	ld hl, _DATA_3EF80_
	ld de, $34E0
	ld b, $04
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3FE70_
	ld de, $3460
	ld b, $04
	jp _LABEL_6A7_EmitTiles

_LABEL_5269_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3EF80_
	ld de, $34E0
	ld b, $04
	call _LABEL_6A7_EmitTiles
	jp _LABEL_51C0_

_LABEL_527C_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3CF20_
	ld de, $3000
	ld b, $23
	jp _LABEL_6A7_EmitTiles

_LABEL_528C_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3D380_
	ld de, $2E00
	ld b, $30
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3D980_
	ld de, $1C80
	ld b, $10
	call _LABEL_6A7_EmitTiles
	ld ix, _DATA_3D980_
	ld de, _RAM_DA00_
	call +
	ld ix, _DATA_3DA00_
	ld de, _RAM_DA80_
	call +
	ret

+:
	ld b, $04
-:
	push bc
	push ix
	call +
	ld bc, $0040
	add ix, bc
	call +
	pop ix
	pop bc
	inc ix
	djnz -
	ret

+:
	ld b, $08
	push ix
-:
	ld a, (ix+0)
	ld (de), a
	inc de
	ld a, (ix+32)
	ld (de), a
	inc de
	inc ix
	inc ix
	inc ix
	inc ix
	djnz -
	pop ix
	ret

_LABEL_52EF_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3C000_
	ld de, $2400
	ld b, $79
	call _LABEL_6A7_EmitTiles
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld hl, _DATA_3FEF0_
	ld de, $2F00
	ld b, $06
	call _LABEL_6A7_EmitTiles
	ld a, $0E
	ld (_RAM_FFFF_), a
	ld hl, _DATA_39748_
	ld de, $2400
	ld b, $30
	jp _LABEL_6A7_EmitTiles

_LABEL_531F_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3EF80_
	ld de, $34E0
	ld b, $04
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3F770_
	ld de, $2A00
	ld b, $18
	call _LABEL_6A7_EmitTiles
	call _LABEL_533E_
	ret

_LABEL_533E_:
	ld a, $18
	ld (_RAM_C8C2_), a
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3E380_
	ld de, $3000
	ld b, $1E
	call _LABEL_6A7_EmitTiles
	ld hl, $A380
	ld bc, $0302
	ld de, $33C0
	call _LABEL_19EF_
	ld hl, $A440
	ld bc, $0302
	ld de, $2F40
	call _LABEL_19EF_
	ld hl, $A500
	ld bc, $0303
	ld de, $2E20
	call _LABEL_19EF_
	ld hl, $A620
	ld bc, $0303
	ld de, $2D00
	jp _LABEL_19EF_

_LABEL_5383_:
	ld a, $1B
	ld (_RAM_C8C2_), a
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3FA70_
	ld de, $2D00
	ld b, $20
	call _LABEL_6A7_EmitTiles
	ld hl, $BA70
	ld bc, $0404
	ld de, $3100
	call _LABEL_19EF_
	ld hl, $BC70
	ld bc, $0404
	ld de, $3300
	jp _LABEL_19EF_

_LABEL_53B0_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3E740_
	ld de, $3000
	ld b, $08
	call _LABEL_6A7_EmitTiles
	ld hl, $A740
	ld de, $3100
	ld bc, $0402
	call _LABEL_19EF_
	ld hl, _DATA_3E8C0_
	ld de, $2E80
	ld b, $0C
	call _LABEL_6A7_EmitTiles
	ld hl, _DATA_3E840_
	ld de, $3200
	ld b, $04
	call _LABEL_6A7_EmitTiles
	ld de, $3280
	ld hl, $A840
	ld bc, $0202
	jp _LABEL_19EF_

_LABEL_53EE_:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3EA40_
	ld de, $2D00
	ld b, $0C
	call _LABEL_6A7_EmitTiles
	ld hl, $AA40
	ld de, $2E80
	ld bc, $0302
	call _LABEL_19EF_
	ld hl, $AB00
	ld de, $2F40
	ld bc, $0302
	jp _LABEL_19EF_

_LABEL_5416_:
	ld ix, _RAM_C460_
	ld b, $0C
	ld de, $0030
-:
	ld a, (ix+0)
	and a
	jr z, +
	ld (ix+6), d
	ld (ix+7), d
	ld (ix+37), d
+:
	add ix, de
	djnz -
	ret

_LABEL_5433_:
	ld a, (_RAM_C797_)
	and a
	jp z, _LABEL_54F2_
	ld hl, $7806
	ld ix, _RAM_C77B_
	ld a, (_RAM_C771_Is2Player)
	and a
	jp z, +
	ld a, (_RAM_C773_)
	xor $01
+:
	ld (_RAM_C773_), a
	jr z, +
	ld l, $32
	ld ix, _RAM_C786_
+:
	ld c, Port_VDPAddress
	ld e, $19
	di
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	dec c
	ld a, (ix+6)
	add a, $B5
	out (c), a
	nop
	ld ($0007), a
	out (c), e
	ld a, (ix+7)
	srl a
	jr nc, ++
	ld d, a
	ld a, (_RAM_C859_)
	and $20
	jr z, +
	inc d
+:
	ld a, d
++:
	ld d, $B3
	push af
	ld a, (_RAM_C764_)
	srl a
	ld b, a
	pop af
-:
	and a
	jr nz, +
	ld d, $B4
+:
	out (c), d
	nop
	ld ($0007), a
	out (c), e
	dec a
	djnz -
	ld de, $0040
	add hl, de
	ld e, $19
	ld b, $06
	inc c
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	dec c
-:
	ld a, (ix+0)
	add a, $B5
	out (c), a
	nop
	ld ($0007), a
	out (c), e
	inc ix
	djnz -
	ld a, (_RAM_C7C0_)
	cp $03
	jr nz, ++
	ld hl, $7816
	ld a, (_RAM_C773_)
	and a
	jr z, +
	ld hl, $7824
+:
	ld c, Port_VDPAddress
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	dec c
	ld b, $03
-:
	ld a, (ix+2)
	add a, $B5
	out (c), a
	ld a, $19
	inc ix
	out (c), a
	djnz -
++:
	ei
	ret

_LABEL_54F2_:
	ld a, (_RAM_C771_Is2Player)
	and a
	jp z, ++
	ld a, (_RAM_C859_)
	and $7F
	jr z, +
	ld a, (_RAM_C773_)
	jr ++

+:
	ld a, (_RAM_C773_)
	xor $01
++:
	ld (_RAM_C773_), a
	ld hl, _RAM_C774_Player1Player
	and a
	jr z, +
	inc hl
+:
	ld a, (hl)
	dec a
	add a, a
	add a, a
	add a, $AB
	ld (_RAM_C7EE_), a
	inc a
	ld (_RAM_C7F1_), a
	inc a
	ld (_RAM_C7F4_), a
	inc a
	ld (_RAM_C7F7_), a
	ld ix, _RAM_C77B_
	ld a, (_RAM_C773_)
	and a
	jr z, +
	ld ix, _RAM_C786_
+:
	ld a, (ix+6)
	add a, $B5
	ld (_RAM_C7FA_), a
	ld b, $06
	ld de, $0003
	ld hl, _RAM_C80C_
-:
	ld a, (ix+0)
	add a, $B5
	ld (hl), a
	inc ix
	add hl, de
	djnz -
	ld a, (ix+1)
	srl a
	jr nc, ++
	ld d, a
	ld a, (_RAM_C859_)
	and $20
	jr z, +
	inc d
+:
	ld a, d
++:
	ld d, $B3
	ld hl, _RAM_C7FD_
	push af
	ld a, (_RAM_C764_)
	srl a
	ld b, a
	pop af
-:
	and a
	jr nz, +
	ld d, $B4
+:
	ld (hl), d
	inc hl
	inc hl
	inc hl
	dec a
	djnz -
	ret

_LABEL_557D_:
	ld hl, (_RAM_C792_LevelNumber)
	ld h, $00
	ld de, _DATA_7251_
	add hl, de
	ld a, (hl)
	ld (_RAM_C797_), a
	and a
	jp nz, +
	di
	ld a, $36
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $80
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	ld hl, _DATA_5645_
	ld de, _RAM_C7EC_
	ld bc, $0030
	ldir
	ret

+:
	di
	ld a, $76
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ld a, $80
	out (Port_VDPAddress), a
	nop
	nop
	nop
	nop
	ei
	di
	ld hl, $7800
	ld c, Port_VDPAddress
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	nop
	ld ($0007), a
	dec c
	ld b, $40
	ld hl, $19BF
-:
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	nop
	djnz -
	ld hl, $7802
	ld a, (_RAM_C774_Player1Player)
	call ++
	ld a, (_RAM_C771_Is2Player)
	and a
	jp z, +
	ld hl, $782E
	ld a, (_RAM_C775_)
	call ++
+:
	ret

++:
	ld b, $19
	ld c, Port_VDPAddress
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	nop
	ld ($0007), a
	dec c
	dec a
	add a, a
	add a, a
	add a, $AB
	out (c), a
	nop
	ld ($0007), a
	nop
	out (c), b
	inc a
	nop
	ld ($0007), a
	out (c), a
	inc a
	ld de, $0040
	add hl, de
	inc c
	out (c), l
	nop
	ld ($0007), a
	out (c), h
	nop
	ld ($0007), a
	dec c
	out (c), a
	nop
	ld ($0007), a
	out (c), b
	inc a
	nop
	ld ($0007), a
	out (c), a
	ei
	ret

; Data from 5645 to 5674 (48 bytes)
_DATA_5645_:
.db $00 $00 $00 $00 $08 $00 $08 $00 $00 $08 $08 $00 $00 $10 $00 $00
.db $18 $00 $00 $20 $00 $00 $28 $00 $00 $30 $00 $00 $38 $00 $08 $10
.db $00 $08 $18 $00 $08 $20 $00 $08 $28 $00 $08 $30 $00 $08 $38 $00

_LABEL_5675_:
	ld a, (_RAM_C8C3_)
	and a
	ret nz
	ld a, (_RAM_C797_)
	and a
	ret nz
	ld de, (_RAM_C85A_)
	ld a, (_RAM_C773_)
	and a
	jr z, +
	ld a, $B0
+:
	add a, $08
	ld h, a
	ld l, $10
	ld ix, _RAM_C7EC_
	ld bc, $0003
-:
	ld a, e
	cp $C0
	jp nc, ++
	ld a, (ix+2)
	and a
	jr z, +
	ld a, (ix+0)
	ld (de), a
	inc de
	ld a, (ix+1)
	add a, h
	ld (de), a
	inc de
	ld a, (ix+2)
	ld (de), a
	inc de
+:
	add ix, bc
	dec l
	jp nz, -
++:
	ld a, e
	cp $C0
	jr c, +
	ld e, $C0
+:
	ld a, $D0
	ld (de), a
	ld (_RAM_C85A_), de
	ret

_LABEL_56C8_:
	push bc
	push hl
	ld c, $05
	ld hl, _RAM_C77F_
	and a
	jr z, _LABEL_56D5_
	ld hl, _RAM_C78A_
_LABEL_56D5_:
	ld a, (hl)
	add a, b
-:
	cp $0A
	jr c, +
	dec hl
	inc (hl)
	inc hl
	sub $0A
	jp -

+:
	ld (hl), a
	ld b, $00
	dec hl
	dec c
	jp nz, _LABEL_56D5_
	pop hl
	pop bc
	ret

_LABEL_56EE_:
	call _LABEL_5724_
	ld a, (ix+2)
	add a, b
	cp $0A
	jr nc, +
	ld (ix+2), a
	ret

+:
	sub $0A
	ld (ix+2), a
	ld a, (ix+1)
	inc a
	cp $0A
	jr nc, +
	ld (ix+1), a
	ret

+:
	sub $0A
	ld (ix+1), a
	ld a, (ix+0)
	inc a
	cp $0A
	jr nc, +
	ld (ix+0), a
	ret

+:
	xor a
	ld (ix+0), a
	ret

_LABEL_5724_:
	ld ix, $C783
	dec a
	ret z
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld ix, $C78E
	ret

_LABEL_5734_:
	call _LABEL_5724_
	ld a, (ix+0)
	or (ix+1)
	jr nz, +
	ld a, (ix+2)
	cp b
	jr nc, +
	ld (ix+2), $00
	ret

+:
	ld a, (ix+2)
	sub b
	jr c, +
	ld (ix+2), a
	ret

+:
	add a, $0A
	ld (ix+2), a
	ld a, (ix+1)
	sub $01
	jr c, +
	ld (ix+1), a
	ret

+:
	ld a, $09
	ld (ix+1), a
	ld a, (ix+0)
	sub $01
	jr c, +
	ld (ix+0), a
	ret

+:
	ld a, $09
	ld (ix+0), a
	ret

_ASCIIToTilemapData:
  ; Convert to uppercase ASCII
	cp $61
	jp c, +
	sub $20
+:sub $20
  ; Apply to "base" tilemap data
	ld de, (_RAM_C751_TextToVRAMBaseTilemapData)
	set 3, d
	add a, e
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ret

_LABEL_5790_TextToVRAM:
	push bc
    call _LABEL_57E7_SetTextToVRAMLocation
    call _LABEL_579B_TextToVRAM
	pop bc
	inc b
	inc b
	ret

_LABEL_579B_TextToVRAM:
-:; Get char
	ld a, (ix+0)
	inc ix
  ; Terminate on zero
	and a
	ret z
	call _ASCIIToTilemapData
	call +
	jp -

_LABEL_57AB_CharToVRAM:
	call _ASCIIToTilemapData
+:
	di
    ; Get VRAM address
    ld hl, (_RAM_C854_TextToVRAMDestPointer)
    set 6, h
    ld bc,  $0000 | Port_VDPAddress
    ; Set VRAM address
    out (c), l
;    nop
;    ld ($0007), a
    out (c), h
;    nop
;    ld ($0007), a
    dec c
    ; Write tilemap entry
    out (c), e
;    nop
;    ld ($0007), a
    out (c), d
	ei
  ; Increment pointer
	ld hl, (_RAM_C854_TextToVRAMDestPointer)
	inc hl
	inc hl
	ld (_RAM_C854_TextToVRAMDestPointer), hl
  ; Increment X, with wrapping
	ld bc, (_RAM_C856_TextToVRAM_XY)
	inc c
	ld a, c
	cp $20
	jr c, +
	ld c, $00
	inc b
+:ld (_RAM_C856_TextToVRAM_XY), bc
	ret

_LABEL_57E7_SetTextToVRAMLocation:
	ld (_RAM_C856_TextToVRAM_XY), bc
  ; Look up $7d00 + b
	ld l, b
	ld h, $7D
  ; Read word to de
	ld e, (hl)
	inc h
	ld d, (hl)
	ex de, hl
  ; Double
	add hl, hl
  ; Calculate $3800 + c*2
	ld d, $38
	ld e, c
	sla e
	add hl, de
	ld (_RAM_C854_TextToVRAMDestPointer), hl
	ret

; Data from 57FD to 5829 (45 bytes)
.db $1E $00 $01 $64 $00 $A7 $ED $42 $DA $0C $58 $1C $C3 $02 $58 $09
.db $7B $32 $9A $C7 $01 $0A $00 $1E $00 $A7 $ED $42 $DA $20 $58 $1C
.db $C3 $16 $58 $09 $7B $32 $9B $C7 $7D $32 $9C $C7 $C9

_LABEL_582A_:
	ld b, $06
-:
	push bc
	ld a, (ix+0)
	add a, $30
	call _LABEL_57AB_CharToVRAM
	inc ix
	pop bc
	djnz -
	ret

_LABEL_583B_:
	xor a
	ld (_RAM_C875_), a
	ld e, $00
	ld bc, $0064
-:
	and a
	sbc hl, bc
	jp c, +
	inc e
	jp -

+:
	add hl, bc
	call ++
	ld bc, $000A
	ld e, $00
-:
	and a
	sbc hl, bc
	jp c, +
	inc e
	jp -

+:
	add hl, bc
	call ++
	ld a, l
	add a, $30
	jp _LABEL_57AB_CharToVRAM

++:
	push hl
	ld hl, _RAM_C875_
	ld a, e
	add a, $30
	bit 0, (hl)
	jr nz, ++
	cp $30
	jr z, +
	ld (hl), $01
	jr ++

+:
	ld a, $20
++:
	call _LABEL_57AB_CharToVRAM
	pop hl
	ret

_LABEL_5885_:
	ld iy, _RAM_C400_
	ld a, (_RAM_C771_Is2Player)
	and a
	jr nz, +
	jp +++

+:
	ld a, (_RAM_C792_LevelNumber)
	and a
	jr z, +
	cp $03
	jr z, +
	cp $09
	jr nc, +
	ld a, (_RAM_C859_)
	and $01
	jp nz, +++
	jr ++

+:
	call +++
++:
	ld iy, _RAM_C430_
+++:
	ld a, (iy+1)
	cp $10
	ret z
	cp $0F
	ret z
	cp $0D
	ret z
	ld l, (iy+2)
	ld h, (iy+3)
	ld (_RAM_C822_IntroButtonPressed), hl
	ld l, (iy+4)
	ld h, (iy+5)
	ld (_RAM_C824_), hl
	ld a, (iy+36)
	ld (_RAM_C826_), a
	ld a, (iy+46)
	and a
	jr z, +
	dec a
	ld (iy+46), a
+:
	ld a, (iy+1)
	cp $05
	jp nz, +
	ld a, (iy+44)
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_140B5_
	add hl, de
	ld a, $05
	ld (_RAM_FFFF_), a
	ld b, $04
-:
	ld a, (hl)
	cp $FF
	jr z, +
	cp (iy+24)
	jp z, _LABEL_5CB1_
	inc hl
	djnz -
+:
	ld a, (iy+46)
	and a
	ret nz
	ld a, (_RAM_C792_LevelNumber)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_5926_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld ix, _RAM_C460_
	ld b, $0C
	ld de, $0030
	jp (hl)

; Jump Table from 5926 to 593D (12 entries, indexed by  $C792)
_DATA_5926_:
.dw _LABEL_5B9C_ _LABEL_5ACB_ _LABEL_593F_ _LABEL_5944_ _LABEL_5A10_ _LABEL_5A10_ _LABEL_5A10_ _LABEL_5A10_
.dw _LABEL_593F_ _LABEL_5A73_ _LABEL_5AD2_ _LABEL_5AD2_

; Data from 593E to 593E (1 bytes)
.db $C9

; 3rd entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_593F_:
	ld a, (_RAM_C82C_)
	and a
	ret z
; 4th entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_5944_:
	ld ix, _RAM_C4C0_
	ld b, $0A
_LABEL_594A_:
	ld a, (ix+0)
	cp $10
	jp c, _LABEL_59DE_
	ld a, (ix+41)
	and a
	jp nz, _LABEL_59DE_
	ld a, (_RAM_C826_)
	sub (ix+36)
	jr nc, +
	neg
+:
	sub $08
	jr c, +
	cp (ix+43)
	jp nc, _LABEL_59DE_
+:
	call _LABEL_5FB9_
	jr z, _LABEL_59DB_
	ld a, (ix+0)
	cp $27
	jr z, +
	ld (ix+41), $01
+:
	ld a, (iy+0)
	ld (ix+40), a
	ld a, (ix+0)
	ld e, a
	cp $21
	jr z, _LABEL_59D0_
	cp $22
	jr z, _LABEL_59D0_
	cp $20
	ret z
	ld a, (_RAM_C792_LevelNumber)
	cp $03
	ret nz
	ld a, e
	cp $24
	jr z, ++
	ld d, $07
	cp $25
	jr nz, +
	ld d, $06
+:
	ld a, (iy+5)
	cp d
	jr c, _LABEL_59DB_
	ld a, e
	cp $27
	jr nz, _LABEL_59E5_
	ld (iy+1), $02
	ld (iy+7), $A0
	ld (iy+8), $00
	ld (iy+29), $40
	ret

++:
	call _LABEL_4D6D_
	ld a, (_RAM_C7A2_)
	inc a
	ld (_RAM_C7A2_), a
	ld a, $3A
	jp _LABEL_6D3D_AudioPlaySFX

_LABEL_59D0_:
	ld (iy+1), $0E
	ld (iy+21), $20
	jp _LABEL_6156_

_LABEL_59DB_:
	ld de, $0030
_LABEL_59DE_:
	add ix, de
	dec b
	jp nz, _LABEL_594A_
	ret

_LABEL_59E5_:
	ld a, $01
	ld (_RAM_C86E_), a
	ld (iy+1), $10
	ld (iy+21), $40
	ld (iy+6), $40
	ld (iy+7), $C0
	ld (iy+8), $02
	ld (iy+37), $00
	ld a, (_RAM_C7AA_)
	add a, $04
	ld (_RAM_C7AA_), a
	call _LABEL_6186_
	jp _LABEL_6B61_

; 5th entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_5A10_:
	ld l, (iy+4)
	ld h, (iy+5)
	ld c, (iy+2)
	ld b, (iy+3)
	ld de, $FF80
	add hl, de
	ld a, (iy+1)
	cp $03
	jr z, +
	call _LABEL_135E_
	cp $01
	jr z, ++
+:
	inc h
	call _LABEL_135E_
	cp $01
	jr z, ++
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld a, (_RAM_C7DE_)
	sub h
	ret nc
	add a, $0E
	ret c
	call ++
	ld (iy+7), $A0
	ret

++:
	ld (iy+1), $10
	ld (iy+21), $40
	ld a, (iy+26)
	neg
	add a, a
	add a, a
	add a, a
	add a, a
	add a, a
	ld (iy+6), a
	ld (iy+7), $D0
	ld (iy+8), $06
	ld a, $01
	ld (_RAM_C86E_), a
	ld (iy+24), a
	jp _LABEL_6186_

; 10th entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_5A73_:
	ld e, (ix+38)
	ld d, (ix+39)
	ld l, (iy+38)
	ld h, (iy+39)
	and a
	sbc hl, de
	ret nz
	ld a, (iy+26)
	cp (ix+26)
	ret nz
	ld a, (iy+27)
	sub (ix+27)
	ret nz
	ld a, $01
	ld (_RAM_C86E_), a
	ld (iy+1), $10
	ld (iy+21), $46
	push iy
	pop hl
	ld de, $0006
	add hl, de
	ex de, hl
	ld a, (iy+26)
	and $FE
	add a, a
	ld c, a
	ld b, $00
	ld hl, _DATA_5ABB_
	add hl, bc
	ld bc, $0003
	ldir
	jp _LABEL_6186_

; Data from 5ABB to 5ACA (16 bytes)
_DATA_5ABB_:
.db $40 $C0 $02 $00 $C0 $C0 $00 $00 $C0 $40 $00 $00 $40 $40 $00 $00

; 2nd entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_5ACB_:
	ld a, (iy+1)
	dec a
	ret z
	dec a
	ret z
; 11th entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_5AD2_:
	ld a, (ix+0)
	cp $10
	jp c, _LABEL_5B95_
	ld a, (ix+44)
	and a
	jp z, _LABEL_5B95_
	ld a, (ix+1)
	cp $10
	jp z, _LABEL_5B95_
	call _LABEL_5FB9_
	jp z, _LABEL_5B92_
	ld hl, (_RAM_C824_)
	ld e, (ix+4)
	ld d, (ix+5)
	and a
	sbc hl, de
	jr c, +++
	ld a, h
	cp $04
	jp nc, _LABEL_5B92_
	srl h
	rr l
	srl h
	rr l
	srl l
	srl l
	ld a, (iy+1)
	cp $03
	jr nz, +
	ld a, l
	sub $02
	jp c, ++++
	jr ++

+:
	ld a, l
	sub $0E
	jp c, ++++
++:
	sub (ix+23)
	jp nc, _LABEL_5B92_
	jp ++++

+++:
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
	ld a, h
	cp $04
	jp nc, _LABEL_5B92_
	srl h
	rr l
	srl h
	rr l
	srl l
	srl l
	ld a, l
	sub $0E
	jr c, ++++
	sub (ix+23)
	jr nc, _LABEL_5B92_
++++:
	ld a, (iy+1)
	cp $05
	jp z, _LABEL_5B92_
	ld (iy+1), $0F
	sla c
	sla c
	sla c
	sla c
	sla c
	ld a, (_RAM_C792_LevelNumber)
	dec a
	jr z, +
	ld (iy+21), $00
	sra c
	ld (iy+6), c
	ld (iy+7), $D0
	ld (iy+8), $03
	jp _LABEL_6156_

+:
	ld (iy+46), $32
	ld (iy+21), $18
	xor a
	ld (iy+7), a
	ld (iy+6), c
	jp _LABEL_6156_

_LABEL_5B92_:
	ld de, $0030
_LABEL_5B95_:
	add ix, de
	dec b
	jp nz, _LABEL_5AD2_
	ret

; 1st entry of Jump Table from 5926 (indexed by _RAM_C792_LevelNumber)
_LABEL_5B9C_:
	ld a, (ix+0)
	sub $10
	jp c, _LABEL_5C84_
	jr z, ++
	dec a
	jr z, ++
	dec a
	jr z, _LABEL_5BF1_
	dec a
	jp nz, _LABEL_5C84_
	ld a, (ix+1)
	cp $10
	jp z, _LABEL_5C84_
	cp $07
	jp z, _LABEL_5C84_
	bit 7, (ix+7)
	jp nz, _LABEL_5C84_
	ld a, (iy+5)
	sub (ix+5)
	jr nc, +
	neg
+:
	cp $03
	jp c, +++
	jp _LABEL_5C84_

++:
	ld a, (ix+1)
	cp $04
	jr z, +
	cp $01
	jp nz, _LABEL_5C84_
+:
	ld a, (iy+5)
	sub (ix+5)
	jr z, +++
	cp $01
	jr z, +++
	jp _LABEL_5C84_

_LABEL_5BF1_:
	ld a, (ix+1)
	cp $03
	jp nc, _LABEL_5C84_
	and a
	jp z, _LABEL_5C84_
	ld a, (iy+5)
	sub (ix+5)
	jr nc, +
	neg
+:
	cp $03
	jp c, +++
	jp _LABEL_5C84_

+++:
	ld a, (_RAM_C826_)
	sub (ix+36)
	jr nc, +
	neg
+:
	sub $04
	jr c, +
	cp (ix+43)
	jp nc, _LABEL_5C84_
+:
	call _LABEL_5FB9_
	jp z, _LABEL_5C81_
	ld a, (ix+0)
	sub $10
	jr z, +++
	dec a
	jr z, ++
	dec a
	jr z, ++++
	dec a
	jr z, +
	jp _LABEL_5C81_

+:
	jp _LABEL_5C8B_

++:
	ld (ix+6), $00
	ld (ix+24), $03
	jr _LABEL_5C8B_

+++:
	ld a, (ix+1)
	cp $04
	jr z, _LABEL_5C8B_
	ld a, (ix+26)
	neg
	add a, a
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	ld (ix+1), $02
	ld (ix+21), $00
	jr _LABEL_5C8B_

++++:
	ld a, (ix+1)
	cp $01
	jr z, +
	cp $02
	jp nz, _LABEL_5C81_
+:
	ld e, $01
	ld a, (ix+3)
	cp (iy+3)
	jr c, +
	ld e, $FF
+:
	ld a, e
	jr _LABEL_5C8E_

_LABEL_5C81_:
	ld de, $0030
_LABEL_5C84_:
	add ix, de
	dec b
	jp nz, _LABEL_5B9C_
	ret

_LABEL_5C8B_:
	ld a, (ix+26)
_LABEL_5C8E_:
	add a, a
	add a, a
	add a, a
	add a, a
	ld (iy+6), a
	ld (iy+1), $0F
	ld (iy+7), $D0
	ld (iy+8), $03
	call _LABEL_6156_
	ld a, (_RAM_C792_LevelNumber)
	and a
	ret nz
	push iy
	pop ix
	call _LABEL_6AB9_
	ret

_LABEL_5CB1_:
	ld hl, $0280
	ld a, (_RAM_C792_LevelNumber)
	and a
	jr z, +
	ld hl, $0200
+:
	ld (_RAM_C8C4_), hl
	ld ix, _RAM_C460_
	ld b, $0C
	ld de, $0030
	ld a, (_RAM_C792_LevelNumber)
	cp $01
	jr z, _LABEL_5CDC_
	ld a, (_RAM_C776_)
	and a
	jr z, _LABEL_5CDC_
	ld ix, _RAM_C400_
	ld b, $0E
_LABEL_5CDC_:
	ld a, (ix+0)
	cp (iy+0)
	jp z, _LABEL_5FAF_
	and a
	jp z, _LABEL_5FAF_
	cp $03
	jr c, _LABEL_5D44_
	cp $10
	jp c, _LABEL_5FAF_
	jr nz, +
	ld a, (ix+1)
	cp $03
	jp z, _LABEL_5FAF_
	ld a, $10
+:
	cp $12
	jp z, _LABEL_5FAF_
	cp $14
	jp z, _LABEL_5FAF_
	cp $1D
	jp z, _LABEL_5FAF_
	cp $1E
	jp z, _LABEL_5FAF_
	cp $2A
	jp z, _LABEL_5FAF_
	cp $2B
	jp z, _LABEL_5FAF_
	cp $23
	jp z, _LABEL_5FAF_
	cp $2C
	jr z, +
	cp $13
	jr nz, _LABEL_5D44_
+:
	ld e, a
	ld a, (ix+1)
	cp $03
	jp nz, _LABEL_5FAF_
	ld a, e
	cp $2C
	jr z, _LABEL_5D44_
	ld hl, $0300
	ld (_RAM_C8C4_), hl
	ld a, (ix+29)
	and a
	jp nz, _LABEL_5FAF_
_LABEL_5D44_:
	ld a, (ix+1)
	cp $0F
	jp z, _LABEL_5FAF_
	cp $07
	jp z, _LABEL_5FAF_
	cp $10
	jp z, _LABEL_5FAF_
	ld a, (_RAM_C826_)
	sub (ix+36)
	jr nc, +
	neg
+:
	sub $04
	jr c, +
	cp (ix+43)
	jp nc, _LABEL_5FAF_
+:
	ld a, (iy+44)
	cp $0B
	jr z, _LABEL_5DE3_
	ld a, (_RAM_C798_)
	cp $02
	jr nz, +
	ld a, (_RAM_C792_LevelNumber)
	and a
	jr nz, ++
	ld a, (_RAM_C825_)
	sub (ix+5)
	jr c, ++
	cp $01
	jp nc, _LABEL_5FAF_
	jr ++

+:
	ld hl, (_RAM_C824_)
	ld e, (ix+4)
	ld d, (ix+5)
	and a
	sbc hl, de
	jp nc, +
	ld de, $00C0
	add hl, de
	jp nc, _LABEL_5FAF_
	jr ++

+:
	ld de, $0280
	and a
	sbc hl, de
	jp nc, _LABEL_5FAF_
++:
	ld l, (ix+2)
	ld h, (ix+3)
	ld e, (iy+2)
	ld d, (iy+3)
	and a
	sbc hl, de
	jr nc, +
	bit 7, (iy+26)
	jp z, _LABEL_5FAF_
	ld de, (_RAM_C8C4_)
	add hl, de
	jp nc, _LABEL_5FAF_
	jr ++

+:
	bit 7, (iy+26)
	jp nz, _LABEL_5FAF_
	ld de, (_RAM_C8C4_)
	and a
	sbc hl, de
	jp nc, _LABEL_5FAF_
	jr ++

_LABEL_5DE3_:
	ld l, (ix+2)
	ld h, (ix+3)
	ld e, (iy+2)
	ld d, (iy+3)
	and a
	sbc hl, de
	jr nc, +
	ex de, hl
	ld hl, $0000
	and a
	sbc hl, de
+:
	ld de, $0280
	and a
	sbc hl, de
	jp nc, _LABEL_5FAF_
++:
	ld a, (ix+0)
	cp $03
	jp c, _LABEL_5EA8_
	ld a, (iy+0)
	ld (ix+40), a
	ld e, (iy+44)
	ld d, $00
	ld hl, _DATA_71AA_
	add hl, de
	ld a, (ix+25)
	sub (hl)
	jr nc, +
	xor a
+:
	ld (ix+25), a
	ld e, a
	ld a, (ix+0)
	cp $13
	jp z, _LABEL_5EBD_
	cp $2C
	jp z, _LABEL_5E8E_
	ld a, e
	and a
	jp z, _LABEL_5EEB_
	ld a, (hl)
	cp $02
	jp nc, _LABEL_5EEB_
	ld a, (ix+0)
	cp $19
	jr z, +
	ld (ix+1), $07
	ld a, (iy+26)
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	ld (ix+37), $00
	ld (ix+21), $10
	jp _LABEL_5F78_

+:
	ld a, (ix+1)
	ld (ix+31), a
	ld (ix+29), $3F
	ld a, (ix+6)
	ld (ix+38), a
	ld a, (ix+7)
	ld (ix+39), a
	ld (ix+1), $07
	xor a
	ld (ix+24), a
	ld (ix+7), a
	ld (ix+44), a
	ld a, (iy+26)
	add a, a
	add a, a
	add a, a
	add a, a
	ld (ix+6), a
	jp _LABEL_5F78_

_LABEL_5E8E_:
	xor a
	ld (ix+1), a
	ld (ix+44), a
	ld a, e
	and a
	jp nz, _LABEL_5F78_
	call _LABEL_2F72_
	ld a, $02
	ld (_RAM_C779_GameState), a
	ld a, $0F
	ld (_RAM_C77A_), a
	ret

_LABEL_5EA8_:
	ld a, (ix+46)
	and a
	jp nz, _LABEL_5FAF_
	ld a, (iy+26)
	push ix
	push iy
	pop ix
	pop iy
	jp _LABEL_5C8E_

_LABEL_5EBD_:
	ld a, e
	and a
	jp z, +
	call _LABEL_6BCA_
	ld (ix+27), $07
	ld (ix+1), $07
	ld (ix+6), $00
	ld (ix+37), $00
	ld (ix+21), $05
	jp _LABEL_5FAF_

+:
	ld (ix+1), $10
	ld (ix+7), $90
	ld (ix+21), $28
	jp _LABEL_5FAF_

_LABEL_5EEB_:
	ld a, (ix+0)
	cp $19
	jr z, +
	cp $18
	jr nz, ++
	ld a, (ix+1)
	and a
	jr z, ++
+:
	ld a, (_RAM_C86E_)
	and a
	jr z, ++
	dec a
	ld (_RAM_C86E_), a
++:
	ld a, (ix+0)
	cp $29
	jr z, +
	ld (ix+1), $0F
	ld (ix+7), $C0
	ld (ix+8), $03
	ld (ix+37), $00
	ld a, (iy+44)
	cp $0B
	jr nz, ++
	ld l, (ix+2)
	ld h, (ix+3)
	ld e, (iy+2)
	ld d, (iy+3)
	and a
	sbc hl, de
	ld a, $18
	jr nc, +++
	ld a, $E8
	jr +++

+:
	ld (ix+1), $0F
	ld (ix+21), $40
	ld (ix+6), a
	ld (ix+7), $D0
	ld (ix+8), $03
++:
	ld a, (iy+26)
	add a, a
	add a, a
	add a, a
	add a, a
	add a, a
+++:
	ld (ix+6), a
	ld e, a
	ld a, (_RAM_C792_LevelNumber)
	dec a
	jr z, +
	ld a, (ix+0)
	cp $1C
	jr nz, _LABEL_5F78_
+:
	sla e
	ld (ix+6), e
	ld (ix+7), $80
	ld (ix+1), $10
	ld (ix+21), $18
_LABEL_5F78_:
	ld e, (ix+2)
	ld d, (ix+3)
	ld a, (ix+0)
	cp $2C
	jr nz, +
	ld l, (iy+2)
	ld h, (iy+3)
	and a
	sbc hl, de
	sra h
	sra l
	add hl, de
	ex de, hl
+:
	ld (_RAM_C822_IntroButtonPressed), de
	ld l, (iy+4)
	ld h, (iy+5)
	dec h
	ld (_RAM_C824_), hl
	ld a, (iy+36)
	ld (_RAM_C826_), a
	push ix
	call _LABEL_6C17_
	pop ix
_LABEL_5FAF_:
	ld de, $0030
	add ix, de
	dec b
	jp nz, _LABEL_5CDC_
	ret

_LABEL_5FB9_:
	ld c, $01
	ld hl, (_RAM_C822_IntroButtonPressed)
	ld e, (ix+2)
	ld d, (ix+3)
	and a
	sbc hl, de
	jp nc, +
	ld c, $FF
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
+:
	ld a, h
	cp $04
	jp nc, ++
	srl h
	rr l
	srl h
	rr l
	srl l
	srl l
	ld a, l
	sub $08
	jp c, +
	sub (ix+22)
	jp nc, ++
+:
	or $FF
	ret

++:
	xor a
	ret

_LABEL_5FF6_:
	ld a, (_RAM_C792_LevelNumber)
	cp $03
	ret nz
	ld iy, _RAM_C400_
	call +
	ld iy, _RAM_C430_
+:
	ld a, (iy+0)
	and a
	ret z
	ld a, (iy+1)
	cp $00
	ret nz
	ld a, (iy+5)
	cp $08
	ret nz
	ld a, (iy+4)
	cp $80
	ret c
	ld hl, (_RAM_C7A0_)
	dec hl
	ld a, (_RAM_C79F_)
	srl a
	add a, (iy+3)
	cp $10
	jr c, _LABEL_6031_
	sub $10
	inc hl
_LABEL_6031_:
	ld c, a
	cp $10
	jr z, _LABEL_6031_
	ld a, (hl)
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $CA
	ld hl, $0580
	add hl, de
	ld e, c
	ld d, $00
	add hl, de
	ld a, (hl)
	cp $01
	ret z
	jp _LABEL_59E5_

_LABEL_604D_:
	ld iy, _RAM_C4C0_
	ld de, $0030
	ld b, $0A
-:
	ld a, (iy+0)
	cp $09
	jr nz, +
	ld a, (iy+1)
	and a
	ret nz
	ld a, (ix+3)
	cp (iy+3)
	jr nz, +
	ld a, (ix+5)
	cp (iy+5)
	jr nz, +
	ld (iy+1), $01
	ld a, $02
	ld (_RAM_C8BB_), a
	ld a, (ix+0)
	ld (iy+27), a
	ld a, $01
	ld (_RAM_C8B1_), a
	ld a, $36
	jp _LABEL_6D3D_AudioPlaySFX

+:
	add iy, de
	djnz -
	ret

_LABEL_6090_:
	ld l, (ix+2)
	ld h, (ix+3)
	ld (_RAM_C822_IntroButtonPressed), hl
	ld l, (ix+4)
	ld h, (ix+5)
	ld (_RAM_C824_), hl
	push ix
	push ix
	pop iy
	ld ix, _RAM_C460_
	ld b, $0C
	ld de, $0030
_LABEL_60B1_:
	ld a, (ix+0)
	cp $18
	jp c, _LABEL_614D_
	cp $1E
	jp nc, _LABEL_614D_
	call _LABEL_5FB9_
	jp z, _LABEL_614A_
	ld a, (_RAM_C825_)
	sub (ix+5)
	jr nc, +
	neg
+:
	cp $02
	jr nc, _LABEL_614A_
	ld a, (ix+1)
	cp $10
	jp z, _LABEL_614A_
	ld (iy+44), $00
	ld a, $2F
	call _LABEL_6D3D_AudioPlaySFX
	ld l, (ix+2)
	ld h, (ix+3)
	ld (_RAM_C822_IntroButtonPressed), hl
	ld l, (ix+4)
	ld h, (ix+5)
	dec h
	ld (_RAM_C824_), hl
	xor a
	ld (_RAM_C826_), a
	push ix
	call _LABEL_6C17_
	pop ix
	ld a, (ix+25)
	sub $01
	jr nc, +
	xor a
+:
	ld (ix+25), a
	jr nz, _LABEL_6153_
	ld a, (ix+0)
	cp $19
	jr z, +
	cp $18
	jr nz, ++
	ld a, (ix+1)
	and a
	jr z, ++
+:
	ld a, (_RAM_C86E_)
	and a
	jr z, ++
	dec a
	ld (_RAM_C86E_), a
++:
	ld (ix+1), $0F
	ld (ix+8), $03
	ld a, (iy+6)
	add a, a
	ld (ix+6), a
	ld a, (iy+7)
	add a, a
	ld (ix+7), a
	ld (ix+1), $10
	ld (ix+21), $18
	jp _LABEL_6153_

_LABEL_614A_:
	ld de, $0030
_LABEL_614D_:
	add ix, de
	dec b
	jp nz, _LABEL_60B1_
_LABEL_6153_:
	pop ix
	ret

_LABEL_6156_:
	call _LABEL_61BB_
	push iy
	pop hl
	ld a, l
	and a
	jr z, +
	ld hl, _RAM_C78D_
	jr ++

+:
	ld hl, _RAM_C782_
++:
	dec (hl)
	ret nz
	call +++
	dec hl
	dec (hl)
	jr z, _LABEL_617C_
-:
	ld a, $01
	ld (_RAM_C779_GameState), a
	inc hl
	ld a, (_RAM_C764_)
	ld (hl), a
	ret

_LABEL_617C_:
	ld a, $03
	ld (_RAM_C779_GameState), a
	ld (_RAM_C8C6_CharacterDataPointer), iy
	ret

_LABEL_6186_:
	call _LABEL_61BB_
	push iy
	pop hl
	ld a, l
	and a
	jr z, +
	ld hl, _RAM_C78D_
	jr ++

+:
	ld hl, _RAM_C782_
++:
	ld a, (hl)
	sub $02
	jr nc, +
	xor a
+:
	ld (hl), a
	ret nz
	call +++
	dec hl
	dec (hl)
	jr z, _LABEL_617C_
	jr -

+++:
	push hl
	push de
	ld hl, (_RAM_C792_LevelNumber)
	ld h, $00
	ld de, _DATA_61E4_
	add hl, de
	ld a, (hl)
	ld (_RAM_C77A_), a
	pop de
	pop hl
	ret

_LABEL_61BB_:
	ld a, (_RAM_C792_LevelNumber)
	cp $03
	jr z, ++
	cp $09
	jr z, +++
	jr nc, ++
	cp $02
	jr z, +
	cp $08
	jr z, +
	ld a, $32
	jp _LABEL_6D3D_AudioPlaySFX

+:
	ld a, $37
	jp _LABEL_6D3D_AudioPlaySFX

++:
	ld a, $33
	jp _LABEL_6D3D_AudioPlaySFX

+++:
	ld a, $34
	jp _LABEL_6D3D_AudioPlaySFX

; Data from 61E4 to 61EF (12 bytes)
_DATA_61E4_:
.db $28 $28 $00 $28 $28 $28 $28 $28 $00 $28 $28 $28

_LABEL_61F0_:
	ld a, (_RAM_C7C0_)
	cp $05
	jp z, _LABEL_68BC_
	cp $06
	jp z, _LABEL_6978_
	cp $02
	jp z, _LABEL_69B9_
	cp $07
	jp z, _LABEL_69B9_
	cp $01
	jp z, _LABEL_6A33_
	ld a, (_RAM_C821_)
	and a
	jp z, ++
	dec a
	jp z, +
	ld a, (_RAM_C859_)
	and $07
	cp $07
	ret nz
	jp _LABEL_688D_

+:
	ld a, (_RAM_C86E_)
	and a
	jp nz, _LABEL_5416_
	ld a, (_RAM_C859_)
	and $07
	cp $07
	ret nz
	jp _LABEL_688D_

++:
	ld hl, (_RAM_C7D3_)
	ld de, (_RAM_C7D7_)
	and a
	sbc hl, de
	jp z, ++
	jp c, +
	call +++
	jp ++

+:
	call _LABEL_6294_
++:
	ld hl, (_RAM_C7D5_)
	ld de, (_RAM_C7D9_)
	and a
	sbc hl, de
	ret z
	jr nc, +
	add a, $03
	jp nc, _LABEL_62B5_
	ld a, (_RAM_C859_)
	and $01
	ret nz
	jp _LABEL_62B5_

+:
	cp $03
	jp nc, _LABEL_62EE_
	ld a, (_RAM_C859_)
	and $01
	ret nz
	jp _LABEL_62EE_

+++:
	ld a, (_RAM_C7DC_)
	add a, $10
	ld l, a
	add a, $02
	ld h, a
	ld (_RAM_C822_IntroButtonPressed), hl
	ld a, (_RAM_C7DE_)
	sub $01
	jr nc, +
	xor a
+:
	ld l, a
	add a, $0E
	ld h, a
	ld (_RAM_C824_), hl
	jp _LABEL_6303_

_LABEL_6294_:
	ld a, (_RAM_C7DC_)
	sub $02
	jr nc, +
	xor a
+:
	ld l, a
	add a, $02
	ld h, a
	ld (_RAM_C822_IntroButtonPressed), hl
	ld a, (_RAM_C7DE_)
	sub $01
	jr nc, +
	xor a
+:
	ld l, a
	add a, $0E
	ld h, a
	ld (_RAM_C824_), hl
	jp _LABEL_6303_

_LABEL_62B5_:
	ld a, (_RAM_C7DC_)
	sub $01
	jr nc, +
	xor a
+:
	ld l, a
	add a, $12
	ld h, a
	ld (_RAM_C822_IntroButtonPressed), hl
	ld a, (_RAM_C7DE_)
	sub $02
	jr nc, +
	xor a
+:
	ld l, a
	add a, $02
	ld h, a
	ld (_RAM_C824_), hl
	jp _LABEL_6303_

; Data from 62D6 to 62ED (24 bytes)
.db $2A $DD $C7 $7D $B4 $C2 $EE $62 $21 $00 $10 $22 $22 $C8 $21 $00
.db $0C $22 $24 $C8 $CD $03 $63 $C9

_LABEL_62EE_:
	ld hl, $1000
	ld (_RAM_C822_IntroButtonPressed), hl
	ld a, (_RAM_C7DE_)
	add a, $0C
	ld l, a
	add a, $02
	ld h, a
	ld (_RAM_C824_), hl
	jp _LABEL_6303_

_LABEL_6303_:
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C7CF_)
	ld b, $01
_LABEL_630D_:
	ld a, (hl)
	cp $FF
	ret z
	ld de, (_RAM_C824_)
	cp e
	jp c, +
	cp d
	jp nc, +
	ld de, (_RAM_C822_IntroButtonPressed)
	inc hl
	ld a, (hl)
	dec hl
	cp e
	jp c, +
	cp d
	jp nc, +
	ld e, b
	ld d, $C1
	ld a, (de)
	cp $02
	jp nc, +
	push hl
	push hl
	pop iy
	ld (_RAM_C82B_), a
	ld a, b
	ld (_RAM_C82A_), a
	call ++
	ld a, (_RAM_C82A_)
	ld b, a
	pop hl
+:
	ld de, _DATA_4_
	add hl, de
	inc b
	jp _LABEL_630D_

++:
	ld c, b
	ld hl, _RAM_C47E_
	ld de, $0030
	ld b, $0C
-:
	ld a, (hl)
	cp c
	ret z
	add hl, de
	djnz -
_LABEL_635F_:
	ld e, (iy+2)
	sla e
	ld d, $00
	ld hl, _DATA_63B9_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	push de
	pop ix
	ld a, (_RAM_C7C0_)
	cp $01
	jr z, ++
	cp $07
	jr z, +
	cp $02
	jr nz, +++
+:
	ld h, (iy+0)
	ld b, (iy+1)
	ld l, $00
	ld c, l
	jr ++++

++:
	ld b, (iy+0)
	ld h, (iy+1)
	ld l, $00
	ld c, l
	jr ++++

+++:
	ld a, (_RAM_C7DC_)
	add a, $10
	ld b, a
	ld c, $00
	ld h, (iy+0)
	ld l, c
++++:
	ld a, (_RAM_C82B_)
	and a
	jr z, +
	xor a
	jr ++

+:
	ld a, (iy+3)
++:
	ld (_RAM_C82B_), a
	ld e, (iy+2)
	ld a, (_RAM_C82A_)
	ld d, a
	jp (ix)

; Jump Table from 63B9 to 6412 (45 entries, indexed by  unknown)
_DATA_63B9_:
.dw _LABEL_6413_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_
.dw _LABEL_64E0_ _LABEL_6499_ _LABEL_6413_ _LABEL_6426_ _LABEL_6572_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_
.dw _LABEL_6630_ _LABEL_6413_ _LABEL_65DA_ _LABEL_642C_ _LABEL_65E0_ _LABEL_6413_ _LABEL_6413_ _LABEL_6413_
.dw _LABEL_65A8_ _LABEL_6531_ _LABEL_6413_ _LABEL_64EE_ _LABEL_64A8_ _LABEL_6413_ _LABEL_651D_ _LABEL_6413_
.dw _LABEL_6690_ _LABEL_66B5_ _LABEL_66D8_ _LABEL_6413_ _LABEL_6724_ _LABEL_6732_ _LABEL_673A_ _LABEL_6756_
.dw _LABEL_6413_ _LABEL_64CA_ _LABEL_6413_ _LABEL_6413_ _LABEL_6414_

; 1st entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6413_:
	ret

; 45th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6414_:
	ld a, $2C
	call _LABEL_67F9_
	ld (ix+27), $02
	ld (ix+1), $00
	ld (ix+25), $0A
	ret

; 12th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6426_:
	ld a, $02
	ld (_RAM_C779_GameState), a
	ret

; 20th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_642C_:
	ld a, $13
	push bc
	push de
	push hl
	call _LABEL_683A_
	ld (ix+1), $01
	ld (ix+44), $01
	ld (ix+5), $09
	ld (ix+36), $20
	ld (ix+25), $0A
	ld hl, $8145
	ld (ix+19), l
	ld (ix+20), h
	ld (_RAM_C8C9_), ix
	pop hl
	pop de
	pop bc
	ld a, $13
	call _LABEL_683A_
	ld (ix+29), $01
	ld (ix+5), $0B
	ld (ix+36), $20
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld ix, $2C80
	ld de, _DATA_3F020_
	call _LABEL_DDA_
	call _LABEL_51B0_
	call _LABEL_51C0_
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld hl, _DATA_3F750_
	ld de, $34E0
	ld b, $01
	call _LABEL_6A7_EmitTiles
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld a, $30
	ld (_RAM_C799_), a
	ret

; 10th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6499_:
	ld a, $09
	call _LABEL_683A_
	ld (ix+4), $80
	ld a, $01
	ld (_RAM_C8BB_), a
	ret

; 29th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_64A8_:
	ld a, $1C
	call _LABEL_67F9_
	ld a, $01
	ld (ix+44), a
	ld (ix+26), a
	ld (ix+27), a
	ld (ix+6), $10
	ld (ix+4), $60
	ld hl, $7A89
	ld (ix+19), l
	ld (ix+20), h
	ret

; 42nd entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_64CA_:
	ld a, $29
	call _LABEL_67F9_
	ld a, (ix+5)
	sub $09
	ld (ix+5), a
	ld (ix+6), $28
	ld (ix+26), $01
	ret

; 9th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_64E0_:
	ld a, $08
	call _LABEL_683A_
	ld (ix+4), $80
	ld (ix+21), $05
	ret

; 28th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_64EE_:
	ld a, $1B
	inc h
	call _LABEL_683A_
	ld e, $01
	ld hl, $80FA
	ld a, (ix+3)
	cp $08
	jr c, +
	ld e, $FF
	ld hl, $8104
+:
	ld (ix+26), e
	ld (ix+19), l
	ld (ix+20), h
	ld a, (_RAM_C8C2_)
	cp $1B
	ret z
	call _LABEL_5383_
	ld a, $C8
	ld (_RAM_FFFF_), a
	ret

; 31st entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_651D_:
	ld a, $1E
	call _LABEL_683A_
	ld e, $01
	ld a, (ix+3)
	cp $08
	jr c, +
	ld e, $FF
+:
	ld (ix+26), e
	ret

; 26th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6531_:
	ld a, $19
	call _LABEL_683A_
	ld hl, $80E6
	ld (ix+19), l
	ld (ix+20), h
	ld (ix+25), $04
	ld (ix+4), $80
	ld a, (ix+3)
	ld (ix+27), a
	ld e, $01
	cp $08
	jr c, +
	ld e, $FF
+:
	ld (ix+26), e
	ld a, (ix+5)
	ld (ix+28), a
	ld a, (_RAM_C8C2_)
	cp $19
	ret z
	ld a, $19
	ld (_RAM_C8C2_), a
	call _LABEL_53EE_
	ld a, $C8
	ld (_RAM_FFFF_), a
	ret

; 13th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6572_:
	ld a, $0C
	call _LABEL_683A_
	ld hl, $80E1
	ld e, $01
	ld a, (ix+3)
	cp $08
	jr c, +
	ld hl, $80DC
	ld e, $FF
+:
	ld (ix+19), l
	ld (ix+20), h
	ld (ix+26), e
	ld a, (_RAM_C8C2_)
	cp $1A
	ret z
	ld a, $1A
	ld (_RAM_C8C2_), a
	call _LABEL_53B0_
	ld a, $C8
	ld (_RAM_FFFF_), a
	call _LABEL_2FAE_
	ret

; 25th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_65A8_:
	ld a, $18
	call _LABEL_683A_
	ld e, $01
	ld a, (ix+3)
	cp $08
	jr c, +
	dec a
	ld (ix+3), a
	ld (ix+2), $C0
	ld e, $FF
+:
	ld (ix+26), e
	ld (ix+21), $01
	ld (ix+4), $40
	ld a, (_RAM_C8C2_)
	cp $18
	ret z
	call _LABEL_533E_
	ld a, $C8
	ld (_RAM_FFFF_), a
	ret

; 19th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_65DA_:
	ld a, $12
	call _LABEL_67F9_
	ret

; 21st entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_65E0_:
	ld a, $14
	call _LABEL_67F9_
	call _LABEL_50EC_
	and $03
	ld e, a
	ld a, (ix+5)
	add a, a
	add a, a
	add a, a
	add a, e
	ld (ix+36), a
	ld b, a
	ld l, (ix+2)
	ld h, (ix+3)
	call _LABEL_4D24_
	inc a
	ld (ix+5), a
	ld (ix+7), $C0
	ld (ix+8), $03
	ld (ix+6), $08
	ld a, (iy+3)
	ld (ix+25), a
	ld hl, (_RAM_C8C1_)
	cp l
	ret z
	ld (_RAM_C8C1_), a
	ld l, $0F
	cp $03
	jr z, +
	ld l, $36
	cp $06
	jr z, +
	ld l, $03
+:
	ld a, $1F
	jp _LABEL_1B27_SetPaletteEntry

; 17th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6630_:
	ld a, $10
	call _LABEL_67F9_
	ld a, (ix+5)
	add a, a
	add a, a
	add a, a
	ld (ix+36), a
	bit 7, (iy+3)
	jr z, +
	ld (ix+5), $06
	jr ++

+:
	ld (ix+4), $00
	ld (ix+5), $0A
	ld hl, (_RAM_C7DB_)
	ld a, (ix+3)
	sub h
	jr c, ++
	cp $0F
	jr nc, ++
	ld (ix+1), $03
++:
	ld a, (iy+3)
	and $7F
	ld (ix+25), a
	ld hl, (_RAM_C8C1_)
	cp l
	ret z
	ld (_RAM_C8C1_), a
	ld de, $0B0F
	cp $02
	jr z, +
	ld de, $2636
	cp $04
	jr z, +
	ld de, $1603
+:
	ld l, e
	ld a, $1E
	call _LABEL_1B27_SetPaletteEntry
	ld h, d
	ld a, $1F
	jp _LABEL_1B27_SetPaletteEntry

; 33rd entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6690_:
	ld a, $20
	call _LABEL_683A_
	call _LABEL_6782_
	ld hl, $8014
	ld e, $01
	ld a, (iy+3)
	and a
	jr z, +
	ld hl, $8019
	ld e, $05
+:
	ld (ix+42), e
	call +
	ld (ix+19), l
	ld (ix+20), h
	ret

; 34th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_66B5_:
	ld a, $21
	call _LABEL_683A_
	call _LABEL_6782_
	ld (ix+42), $FB
	ld hl, $801E
	call +
	ld (ix+19), l
	ld (ix+20), h
	ret

+:
	ld a, (_RAM_C771_Is2Player)
	and a
	ret z
	ld de, $0019
	add hl, de
	ret

; 35th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_66D8_:
	ld a, $22
	call _LABEL_683A_
	ld (ix+42), $05
	ld a, (ix+5)
	ld e, a
	add a, a
	add a, a
	add a, a
	ld (ix+36), a
	ld (ix+4), $80
	ld (ix+5), $0A
	ld a, (iy+3)
	and a
	jr nz, +
	ld e, $90
	jr ++

+:
	ld d, $02
	ld a, e
	and a
	jr z, +
	ld a, (ix+3)
	add a, $05
	ld (ix+3), a
	ld d, $FE
+:
	ld (ix+37), d
	ld a, $01
	ld e, $D0
++:
	ld (ix+31), a
	ld (ix+6), e
	ld hl, $8023
	ld (ix+19), l
	ld (ix+20), h
	ret

; 37th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6724_:
	ld a, $24
	exx
	ld hl, $0000
	call +
	ld (ix+43), $20
	ret

; 38th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6732_:
	ld a, $25
	exx
	ld hl, $8050
	jr +

; 39th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_673A_:
	ld a, $26
	exx
	ld hl, $8055
	call +
	ld (ix+43), $10
	ld a, (ix+36)
	and a
	ret nz
	ld hl, $805A
	ld (ix+19), l
	ld (ix+20), h
	ret

; 40th entry of Jump Table from 63B9 (indexed by unknown)
_LABEL_6756_:
	ld a, $27
	exx
	ld hl, $805F
+:
	exx
	call _LABEL_683A_
	ld a, (ix+5)
	add a, a
	add a, a
	add a, a
	ld (ix+36), a
	ld (ix+4), $80
	ld (ix+5), $08
	ld a, (ix+3)
	sub $02
	ld (ix+3), a
	exx
	ld (ix+19), l
	ld (ix+20), h
	exx
	ret

_LABEL_6782_:
	ld e, (ix+5)
	ld d, $00
	ld hl, _DATA_67C6_
	add hl, de
	ld a, (hl)
	ld (ix+6), a
	ld a, e
	add a, a
	add a, a
	add a, a
	ld (ix+36), a
	sla e
	ld hl, _DATA_67B4_
	add hl, de
	ld a, (ix+2)
	add a, (hl)
	ld (ix+2), a
	inc hl
	ld a, (ix+3)
	adc a, (hl)
	ld (ix+3), a
	ld (ix+4), $80
	ld (ix+5), $0A
	ret

; Data from 67B4 to 67C5 (18 bytes)
_DATA_67B4_:
.db $04 $06 $1A $05 $30 $04 $6D $03 $83 $02 $E7 $01 $5E $01 $24 $01
.db $88 $00

; Data from 67C6 to 67CE (9 bytes)
_DATA_67C6_:
.db $A4 $AA $B0 $B5 $BB $BF $C4 $C8 $CB

_LABEL_67CF_:
	ld a, $C3
	ld (_RAM_FFFF_), a
	ld a, (ix+0)
	sub $10
	jr c, +
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld hl, _DATA_D900_
	add hl, de
	ld a, (hl)
	inc hl
	ld (ix+22), a
	ld a, (hl)
	inc hl
	ld (ix+23), a
	ld a, (hl)
	ld (ix+43), a
+:
	ld a, $C8
	ld (_RAM_FFFF_), a
	ret

_LABEL_67F9_:
	push af
	push bc
	push de
	push hl
	call _LABEL_4D3B_
	pop hl
	pop de
	pop bc
	jp nz, ++
	call _LABEL_4E27_
	pop af
	ld (ix+0), a
	ld (ix+30), d
	ld (ix+31), e
	ld (ix+2), c
	ld (ix+3), b
	ld (ix+4), l
	ld (ix+5), h
	ld a, $01
	ld hl, (_RAM_C402_)
	and a
	sbc hl, bc
	jr nc, +
	ld a, $FF
+:
	ld (ix+26), a
	call _LABEL_67CF_
	ret

++:
	pop af
	ret

; Data from 6834 to 6839 (6 bytes)
.db $CD $69 $51 $C3 $F9 $67

_LABEL_683A_:
	push af
	push bc
	push de
	push hl
	call _LABEL_4D54_
	pop hl
	pop de
	pop bc
	jp nz, +
	call _LABEL_4E27_
	pop af
	ld (ix+0), a
	ld (ix+30), d
	ld (ix+31), e
	ld (ix+2), c
	ld (ix+3), b
	ld (ix+4), l
	ld (ix+5), h
	call _LABEL_67CF_
	ret

+:
	ld a, (_RAM_C7C0_)
	cp $02
	jr z, +
	pop af
	ret

+:
	pop af
	jp _LABEL_67F9_

; Data from 6871 to 688C (28 bytes)
.db $3A $DC $C7 $6F $C6 $30 $67 $22 $22 $C8 $3A $DE $C7 $D6 $01 $30
.db $01 $AF $6F $C6 $0E $67 $22 $24 $C8 $C3 $03 $63

_LABEL_688D_:
	ld a, (_RAM_C79E_)
	inc a
	ld (_RAM_C79E_), a
	inc a
	ld b, a
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C7CF_)
	inc hl
-:
	ld a, (hl)
	cp $FF
	ret z
	sub b
	ret nz
	push bc
	push hl
	push hl
	pop iy
	dec iy
	call _LABEL_635F_
	pop hl
	pop bc
	ld de, _DATA_4_ - 1
	add hl, de
	ld (_RAM_C7CF_), hl
	inc hl
	jp -

_LABEL_68BC_:
	ld a, (_RAM_C859_)
	and $0F
	ret nz
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C83F_)
	and a
	jp nz, ++
	ld hl, _RAM_C4C0_
	ld a, (hl)
	and a
	ret nz
	ld a, (_RAM_C405_)
	cp $20
	jr c, +
	ld hl, (_RAM_C7D1_)
	ld (_RAM_C7CF_), hl
+:
	call _LABEL_6929_
	ld a, $01
	ld (_RAM_C83F_), a
	ld a, (iy+3)
	ld (_RAM_C840_), a
++:
	ld a, (_RAM_C840_)
	sub $01
	jr c, +
	ld (_RAM_C840_), a
+:
	ld hl, _RAM_C4F0_
	ld a, (hl)
	and a
	ret nz
	call ++
	ld hl, (_RAM_C7CF_)
	ld a, (hl)
	cp $FF
	jr z, +
	ld de, $0004
	add hl, de
	ld (_RAM_C7CF_), hl
	xor a
	ld (_RAM_C83F_), a
	ret

+:
	ld hl, (_RAM_C7D1_)
	ld (_RAM_C7CF_), hl
	xor a
	ld (_RAM_C83F_), a
	ret

++:
	ld ix, _RAM_C4F0_
	ld c, $01
	jr +

_LABEL_6929_:
	ld a, $36
	call _LABEL_6D3D_AudioPlaySFX
	ld ix, _RAM_C4C0_
	ld c, $00
+:
	ld hl, (_RAM_C7CF_)
	ld a, (hl)
	cp $FF
	ret z
	push hl
	pop iy
	call _LABEL_4E27_
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld (ix+0), $03
	ld (ix+31), c
	ld a, (iy+0)
	ld (ix+3), a
	ld a, (iy+1)
	ld (ix+5), a
	ld a, c
	and a
	jr z, +
	ld a, (_RAM_C840_)
	ld (ix+27), a
+:
	ld a, (iy+2)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_20BD4_
	add hl, de
	ld a, (hl)
	ld (ix+38), a
	inc hl
	ld a, (hl)
	ld (ix+39), a
	ret

_LABEL_6978_:
	ld a, (_RAM_C460_)
	and a
	ret nz
	ld a, $40
	ld (_RAM_C404_), a
	ld a, $40
	ld (_RAM_C434_), a
	ld ix, _RAM_C460_
	call _LABEL_4E27_
	ld (ix+0), $28
	ld (ix+5), $04
	ld (ix+3), $01
	ld (ix+44), $01
	ld hl, $9C64
	ld (ix+38), l
	ld (ix+39), h
	ld (ix+27), $64
	ld (ix+26), $08
	ld hl, $7A59
	ld (ix+19), l
	ld (ix+20), h
	ret

_LABEL_69B9_:
	ld a, (_RAM_C859_)
	and $03
	ret nz
	ld a, (_RAM_C86E_)
	and a
	jr z, +
	call _LABEL_6A1D_
	and a
	ret nz
	ld (_RAM_C86E_), a
+:
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C7DE_)
	add a, $0D
	ld b, a
	ld hl, (_RAM_C7CF_)
-:
	ld a, (hl)
	cp $FF
	ret z
	cp b
	ret nc
	push bc
	push hl
	push hl
	pop iy
	call _LABEL_635F_
	pop hl
	pop bc
	ld de, _DATA_4_
	add hl, de
	ld (_RAM_C7CF_), hl
	jp -

; Data from 69F5 to 6A1C (40 bytes)
.db $3E $C8 $32 $FF $FF $3A $DE $C7 $C6 $0D $47 $2A $CF $C7 $7E $FE
.db $FF $C8 $B8 $D0 $C5 $E5 $E5 $FD $E1 $CD $5F $63 $E1 $C1 $11 $04
.db $00 $19 $22 $CF $C7 $C3 $03 $6A

_LABEL_6A1D_:
	ld hl, _RAM_C460_
	ld de, $0030
	ld b, $0C
	ld c, $00
-:
	ld a, (hl)
	cp $10
	jr c, +
	inc c
+:
	add hl, de
	djnz -
	ld a, c
	and a
	ret

_LABEL_6A33_:
	ld iy, (_RAM_C7CF_)
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C8BC_)
	and a
	jr z, +
	dec a
	ld (_RAM_C8BC_), a
	ret

+:
	ld a, (_RAM_C86E_)
	and a
	jr z, +
	ld a, (iy+2)
	cp $82
	jr nz, +
	call _LABEL_6A1D_
	ret nz
	xor a
	ld (_RAM_C86E_), a
	ld (_RAM_C83D_), a
	ld de, _DATA_4_
	add iy, de
	ld (_RAM_C7CF_), iy
+:
	ld a, $C8
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C7DC_)
	ld b, a
	inc b
-:
	ld a, (iy+0)
	cp $FF
	ret z
	ld e, a
	ld a, (iy+2)
	cp $82
	ret z
	cp $81
	jr z, +
	cp $80
	jr nz, ++
	ld a, e
	cp b
	ret nc
	ld a, $01
	ld (_RAM_C86E_), a
	xor a
	ld (_RAM_C83D_), a
	ld a, $32
	ld (_RAM_C8BC_), a
	jr +++

+:
	ld a, $64
	ld (_RAM_C8BC_), a
	jr +++

++:
	call _LABEL_635F_
	ld de, _DATA_4_
	add iy, de
	ld (_RAM_C7CF_), iy
	jr -

+++:
	ld de, $0004
	add iy, de
	ld (_RAM_C7CF_), iy
	ret

_LABEL_6AB9_:
	ld (_RAM_C822_IntroButtonPressed), ix
	call _LABEL_4D54_
	jr nz, +
	call _LABEL_4E27_
	ld (ix+0), $06
	ld hl, $810E
	ld (ix+19), l
	ld (ix+20), h
	ld hl, (_RAM_C822_IntroButtonPressed)
	ld (ix+38), l
	ld (ix+39), h
+:
	ld ix, (_RAM_C822_IntroButtonPressed)
	ret

_LABEL_6AE0_:
	push ix
	push ix
	pop iy
	call _LABEL_4D54_
	jr nz, _LABEL_6B29_
	call _LABEL_4E27_
	call _LABEL_6C40_
	ld d, $2A
	ld e, $28
	ld a, (iy+3)
	and $0F
	jr z, +
	cp $0F
	jr nz, ++
+:
	ld d, $2B
	ld e, $60
	ld hl, $812C
++:
	ld a, (ix+3)
	cp $08
	jr c, +
	ld a, e
	neg
	ld e, a
	ld hl, $8127
+:
	ld (ix+6), e
	ld (ix+0), d
	ld a, d
	cp $2B
	jr nz, +
	ld (ix+19), l
	ld (ix+20), h
+:
	call _LABEL_67CF_
_LABEL_6B29_:
	pop ix
	ret

_LABEL_6B2C_:
	push ix
	push ix
	pop iy
	call _LABEL_4D54_
	jr nz, ++
	call _LABEL_4E27_
	call _LABEL_6C40_
	ld d, $1D
	ld a, $40
	ld hl, $8131
	bit 7, (iy+26)
	jr z, +
	neg
	ld hl, $8136
+:
	ld (ix+6), a
	ld (ix+0), d
	ld (ix+19), l
	ld (ix+20), h
	call _LABEL_67CF_
++:
	pop ix
	ret

_LABEL_6B61_:
	call _LABEL_4D3B_
	ret nz
	call _LABEL_4E27_
	ld (ix+0), $07
	call _LABEL_6C40_
	ld hl, $7A35
	ld (ix+19), l
	ld (ix+20), h
	ret

_LABEL_6B79_:
	push ix
	push ix
	pop iy
	call _LABEL_4D54_
	call _LABEL_4E27_
	ld (ix+0), $1A
	ld (ix+44), $01
	call _LABEL_6C40_
	ld hl, $80C3
	ld (ix+19), l
	ld (ix+20), h
	call _LABEL_67CF_
	pop ix
	ret

_LABEL_6B9F_:
	ld a, (ix+0)
	ld (_RAM_C822_IntroButtonPressed), a
	push ix
	push iy
	pop ix
	call _LABEL_4E27_
	ld (ix+0), $04
	ld a, (_RAM_C822_IntroButtonPressed)
	ld (ix+29), a
	ld hl, $80B9
	dec a
	jr z, +
	ld hl, $80BE
+:
	ld (ix+19), l
	ld (ix+20), h
	pop ix
	ret

_LABEL_6BCA_:
	push iy
	push ix
	push ix
	pop iy
	call ++
	jr nz, +
	ld (ix+6), $D0
	ld (ix+7), $C0
	dec (ix+3)
	call ++
	jr nz, +
	ld (ix+6), $30
	ld (ix+7), $C0
	inc (ix+3)
+:
	pop ix
	pop iy
	ret

++:
	call _LABEL_4D54_
	ret nz
	call _LABEL_4E27_
	ld (ix+0), $0D
	ld (ix+21), $18
	call _LABEL_6C40_
	dec (ix+5)
	ld hl, $815E
	ld (ix+19), l
	ld (ix+20), h
	xor a
	ret

_LABEL_6C17_:
	call _LABEL_4D54_
	ret nz
	call _LABEL_4E27_
	ld (ix+0), $05
	ld hl, (_RAM_C822_IntroButtonPressed)
	ld (ix+2), l
	ld (ix+3), h
	ld hl, (_RAM_C824_)
	ld (ix+4), l
	ld (ix+5), h
	ld a, (_RAM_C826_)
	sub $01
	jr nc, +
	xor a
+:
	ld (ix+36), a
	ret

_LABEL_6C40_:
	ld l, (iy+2)
	ld h, (iy+3)
	ld (ix+2), l
	ld (ix+3), h
	ld l, (iy+4)
	ld h, (iy+5)
	ld (ix+4), l
	ld (ix+5), h
	ld a, (iy+36)
	ld (ix+36), a
	ret

_LABEL_6C5F_:
	push ix
	call _LABEL_4D3B_
	jr nz, +
	call _LABEL_4E27_
	ld (ix+0), $0A
	call _LABEL_50EC_
	and $07
	add a, $04
	ld (ix+3), a
	call _LABEL_50EC_
	and $07
	ld e, a
	ld a, (_RAM_C7DE_)
	add a, $02
	add a, e
	ld (ix+5), a
+:
	pop ix
	ret

_LABEL_6C89_:
	push bc
	push ix
	push ix
	pop iy
	call _LABEL_4D54_
	jp nz, _LABEL_6D1A_
	call _LABEL_4E27_
	ld l, (iy+4)
	ld h, (iy+5)
	ld de, $FEC0
	add hl, de
	ld (ix+4), l
	ld (ix+5), h
	ld c, h
	ld l, (iy+2)
	ld h, (iy+3)
	ld de, $FF40
	add hl, de
	ld (ix+2), l
	ld (ix+3), h
	ld b, h
	ld a, (_RAM_C771_Is2Player)
	and a
	jr z, +
	ld a, (_RAM_C8C8_)
	xor $01
	ld (_RAM_C8C8_), a
	jr z, +
	ld a, (_RAM_C433_)
	sub b
	ld e, a
	ld a, (_RAM_C435_)
	sub c
	ld d, a
	jr ++

+:
	ld a, (_RAM_C403_)
	sub b
	ld e, a
	ld a, (_RAM_C405_)
	sub c
	ld d, a
++:
	ld a, e
	bit 7, a
	jr z, +
	neg
+:
	cp $08
	jr nc, +
	sla e
	sla d
+:
	sla e
	sla e
	sla e
	sla d
	sla d
	sla d
	ld (ix+6), e
	ld (ix+7), d
	ld (ix+0), $23
	ld (ix+21), $40
	ld (ix+44), $01
	ld hl, $8168
	ld (ix+19), l
	ld (ix+20), h
	call _LABEL_67CF_
_LABEL_6D1A_:
	pop ix
	pop bc
	ret

_LABEL_6D1E_PlayMusicForLevel:
	ld a, $01
	ld (_RAM_C85C_AudioEnabled), a
	ld de, (_RAM_C792_LevelNumber)
	ld d, $00
	ld hl, _DATA_6D31_
	add hl, de
	ld a, (hl)
	jp _LABEL_6D54_AudioPlayMusic

; Data from 6D31 to 6D3C (12 bytes)
_DATA_6D31_:
.db $0D $15 $00 $00 $1B $23 $01 $0D $00 $15 $1B $01

_LABEL_6D3D_AudioPlaySFX:
; args:
; a = sequence index?
	ex af, af'
	ld a, (_RAM_FFFF_)
	push af
    ld a, $03
    ld (_RAM_FFFF_), a
    push ix
      ex af, af'
      call _LABEL_D40F_AudioPlaySFX
    pop ix
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_6D54_AudioPlayMusic:
	ex af, af'
	ld a, (_RAM_FFFF_)
	push af
    ld a, $03
    ld (_RAM_FFFF_), a
    push ix
    ex af, af'
      call _LABEL_D393_AudioPlayMusic
    pop ix
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_6D6B_AudioStop:
	ld a, $03
	ld (_RAM_FFFF_), a
	jp _LABEL_D1C4_AudioStop

; Data from 6D73 to 6DAD (59 bytes)
_DATA_6D73_Text_pimple_rash_licenced:
.db "pimple           rash", 0
.db "licensed  by  sega", 0
.db " enterprises  ltd", 0

; Data from 6DAE to 6DDD (48 bytes)
_DATA_6DAE_Text_present:
.db "       present", 0
.db "zits, rash, & pimple", 0
.db "         in", 0

; Data from 6DDE to 6DE9 (12 bytes)
_DATA_6DDE_Text_press_start:
.db "press start", 0

; Data from 6DEA to 6E0B (34 bytes)
_DATA_6DEA_Text_continue:
.db "continue credits", 0
.db 0
.db "  continue now", 0
.db 0

; Data from 6E0C to 6E18 (13 bytes)
_DATA_6E0C_Text_GameOver:
.db "   game over", 0

; Data from 6E19 to 6E41 (41 bytes)
_DATA_6E19_Text_TitleScreenMenu:
.db "1 PLAYER", 0
.db "2 PLAYERS A", 0
.db "2 PLAYERS B", 0
.db "OPTIONS", 0

; Data from 6E42 to 6E59 (24 bytes)
_DATA_6E42_Text_Difficulties:
.db "EASY   ", 0
.db "NORMAL ", 0
.db "HARD   ", 0

; Data from 6E5A to 6E7B (34 bytes)
_DATA_6E5A_Text_GameCompleted:
.db " game completed", 0
.db 0
.db "your final score", 0

_LABEL_6E7C_:
	ld bc, _DATA_10_ + 2
	add hl, bc
	scf
	ld a, (hl)
	inc hl
	adc a, a
	add a, a
	jp _LABEL_6F25_

_LABEL_6E88_:
	ld a, (hl)
	inc hl
	adc a, a
	jp _LABEL_6ECD_

_LABEL_6E8E_:
	ld a, (hl)
	inc hl
	adc a, a
	jp _LABEL_6ED2_

_LABEL_6E94_:
	ld a, (hl)
	inc hl
	adc a, a
	jp _LABEL_6ED7_

_LABEL_6E9A_:
	ld a, (hl)
	inc hl
	adc a, a
	jp _LABEL_6EE6_

---:
	ld a, (hl)
	inc hl
	adc a, a
	jp +

--:
	ld c, $04
-:
	add a, a
	jr z, ---
+:
	rl b
	dec c
	jr nz, -
	push af
	ld a, $03
	add a, b
	add a, a
	ld c, a
-:
	ld a, (hl)
	inc hl
	ld (de), a
	inc de
	ld a, (hl)
	inc hl
	ld (de), a
	inc de
	dec c
	jr nz, -
	pop af
	jp _LABEL_6F25_

_LABEL_6EC5_:
	ld a, (hl)
	inc hl
	adc a, a
	jr c, _LABEL_6F3B_
_LABEL_6ECA_:
	add a, a
	jr z, _LABEL_6E88_
_LABEL_6ECD_:
	rl c
	add a, a
	jr z, _LABEL_6E8E_
_LABEL_6ED2_:
	jr nc, _LABEL_6EE3_
	add a, a
	jr z, _LABEL_6E94_
_LABEL_6ED7_:
	dec c
	push hl
	ld h, a
	ld a, c
	adc a, a
	ld c, a
	cp $09
	ld a, h
	pop hl
	jr z, --
_LABEL_6EE3_:
	add a, a
	jr z, _LABEL_6E9A_
_LABEL_6EE6_:
	jr nc, _LABEL_6F05_
	add a, a
	jr nz, +
	ld a, (hl)
	inc hl
	adc a, a
+:
	rl b
	add a, a
	jr nz, +
	ld a, (hl)
	inc hl
	adc a, a
+:
	jr c, _LABEL_6F55_
	inc b
	dec b
	jr nz, _LABEL_6F05_
	inc b
_LABEL_6EFD_:
	add a, a
	jr nz, +
	ld a, (hl)
	inc hl
	adc a, a
+:
	rl b
_LABEL_6F05_:
	push af
	ld a, e
	sub (hl)
	push hl
	ld l, a
	ld a, d
	sbc a, b
	ld h, a
	dec hl
-:
	ld a, (hl)
	inc hl
	ld (de), a
	inc de
	dec c
	jr nz, -
	pop hl
	inc hl
	pop af
	jr _LABEL_6F25_

--:
	ld a, (hl)
	inc hl
	adc a, a
	jr c, ++
-:
	push af
	ld a, (hl)
	inc hl
	ld (de), a
	inc de
	pop af
_LABEL_6F25_:
	add a, a
	jr c, +
	push af
	ld a, (hl)
	inc hl
	ld (de), a
	inc de
	pop af
	add a, a
	jr nc, -
+:
	jr z, --
++:
	ld bc, $0002
	add a, a
	jr z, _LABEL_6EC5_
	jr nc, _LABEL_6ECA_
_LABEL_6F3B_:
	add a, a
	jr z, ++
--:
	jr nc, _LABEL_6F05_
	inc c
	add a, a
	jr z, +++
-:
	jr nc, _LABEL_6EE3_
	ld c, (hl)
	inc hl
	inc c
	dec c
	jr z, ++++
	push af
	ld a, c
	add a, $08
	ld c, a
	pop af
	jp _LABEL_6EE3_

_LABEL_6F55_:
	add a, a
	jr nz, +
	ld a, (hl)
	inc hl
	adc a, a
+:
	rl b
	set 2, b
	add a, a
	jr nz, +
	ld a, (hl)
	inc hl
	adc a, a
+:
	jr c, _LABEL_6F05_
	jp _LABEL_6EFD_

++:
	ld a, (hl)
	inc hl
	adc a, a
	jp --

+++:
	ld a, (hl)
	inc hl
	adc a, a
	jp -

++++:
	add a, a
	jr nz, +
	ld a, (hl)
	inc hl
	adc a, a
+:
	jr c, _LABEL_6F25_
	ret

_LABEL_6F7F_:
	ld a, (ix+1)
	cp $0F
	ret z
	ld a, (_RAM_C792_LevelNumber)
	cp $02
	ret z
	cp $03
	ret z
	cp $08
	ret z
	cp $09
	ret z
	cp $01
	jr z, +
	jr ++

+:
	ld a, (ix+1)
	dec a
	ret z
	dec a
	ret z
++:
	ld a, (ix+45)
	and a
	jr z, +
	ld a, (_RAM_C832_)
	ld (ix+45), a
	ret

+:
	ld a, (_RAM_C832_)
	and a
	ret z
	ld a, (ix+44)
	and a
	ret nz
	call _LABEL_706E_
	and a
	ret z
	ld e, a
	ld a, (_RAM_C792_LevelNumber)
	cp $01
	jr z, +
_LABEL_6FC5_:
	ld (ix+44), e
	ld (ix+45), $01
	ld (ix+21), $00
	ld (ix+1), $05
	ld d, $00
	ld hl, _DATA_71B7_AudioItemTable
	add hl, de
	ld a, (hl)
	jp _LABEL_6D3D_AudioPlaySFX

+:
	ld (ix+24), $00
	ld a, (_RAM_C830_)
	cp $FF
	jr nz, +
	ld a, (_RAM_C7DE_)
	sub (ix+5)
	jr nc, _LABEL_6FC5_
	add a, $02
	jr nc, _LABEL_6FC5_
	ld a, (ix+3)
	cp $03
	jr c, _LABEL_6FC5_
	cp $0D
	jr nc, _LABEL_6FC5_
	ld (ix+4), $00
	ld (ix+5), $00
	ld a, $01
	ld (_RAM_C8C3_), a
	ld e, $01
	ld d, $1E
	ld hl, $5000
	jr ++

+:
	ld h, $00
	ld d, $20
	ld a, (ix+3)
	cp $01
	jr z, +
	cp $0E
	jr nz, _LABEL_6FC5_
	ld a, (_RAM_C82F_DirectionsPressed)
	cp $01
	jr nz, _LABEL_6FC5_
	ld e, $02
	ld l, $B0
	jr ++

+:
	ld a, (_RAM_C82F_DirectionsPressed)
	cp $FF
	jr nz, _LABEL_6FC5_
	ld e, $02
	ld l, $50
++:
	ld (ix+45), $01
	ld (ix+1), e
	xor a
	ld (ix+6), a
	ld (ix+7), a
	push ix
	ld a, d
	ld de, $00C0
	add ix, de
	ld (ix+1), $01
	ld (ix+44), $01
	ld (ix+6), l
	ld (ix+7), h
	ld (ix+21), a
	ld (ix+29), a
	pop ix
	ld a, $3C
	jp _LABEL_6D3D_AudioPlaySFX

_LABEL_706E_:
	ld a, (ix+3)
	bit 7, (ix+26)
	jr nz, +
	sub $03
+:
	ld l, a
	ld h, (ix+36)
	call _LABEL_711E_
	ld (_RAM_C824_), iy
	ld a, (ix+3)
	bit 7, (ix+26)
	jr z, +
	sub $03
+:
	ld l, a
	ld h, (ix+36)
	call _LABEL_711E_
	ld (_RAM_C822_IntroButtonPressed), iy
	push iy
	pop hl
	push hl
	ld de, (_RAM_C824_)
	and a
	sbc hl, de
	jr nz, +
	ld (_RAM_C824_), hl
+:
	pop hl
	ld a, (_RAM_C792_LevelNumber)
	dec a
	jr z, +
	jr ++

+:
	ld e, $0C
	jp _LABEL_7104_

++:
	ld a, (ix+1)
	cp $02
	jr z, ++
	ld e, $09
	ld a, (_RAM_C8BD_)
	cp $03
	jr z, _LABEL_7104_
	ld e, $01
	ld a, l
	or h
	jp z, _LABEL_711C_
	ld hl, (_RAM_C824_)
	ld e, $0B
	ld a, l
	or h
	jp nz, _LABEL_711C_
	ld e, $01
	ld a, (iy+0)
	cp $10
	jr z, +
	cp $11
	jp nz, _LABEL_7104_
+:
	ld e, $07
	ld a, (iy+1)
	cp $02
	jr z, _LABEL_7104_
	ld e, $01
	jp _LABEL_7104_

++:
	ld a, (ix+7)
	ld e, $00
	bit 7, a
	jr z, _LABEL_711C_
	ld e, $03
	ld a, l
	or h
	jr z, _LABEL_711C_
_LABEL_7104_:
	ld d, $00
	push iy
	pop hl
	ld a, l
	or h
	jr z, _LABEL_711C_
	ld hl, $71AA
	add hl, de
	ld a, (iy+25)
	sub (hl)
	jr nc, +
	xor a
+:
	jp nz, _LABEL_711C_
	inc e
_LABEL_711C_:
	ld a, e
	ret

_LABEL_711E_:
	ld iy, _RAM_C460_
	ld b, $0C
	ld de, $0030
_LABEL_7127_:
	ld a, (iy+0)
	cp $10
	jr c, _LABEL_716D_
	cp $14
	jr z, _LABEL_716D_
	cp $1D
	jr z, _LABEL_716D_
	cp $1E
	jr z, _LABEL_716D_
	cp $2A
	jr z, _LABEL_716D_
	cp $2B
	jr z, _LABEL_716D_
	cp $12
	jr z, _LABEL_716D_
	ld a, (iy+36)
	sub h
	jr nc, +
	neg
+:
	cp $10
	jr nc, _LABEL_716D_
	ld a, (_RAM_C792_LevelNumber)
	and a
	jr z, +
	ld a, (ix+5)
	sub (iy+5)
	jr c, _LABEL_716D_
	cp $03
	jr nc, _LABEL_716D_
+:
	ld a, (iy+3)
	sub l
	jr c, _LABEL_716D_
	cp $04
	ret c
_LABEL_716D_:
	add iy, de
	djnz _LABEL_7127_
	ld iy, $0000
	ret

; Data from 7176 to 719D (40 bytes)
.db $85 $76 $2D $73 $79 $76 $21 $73 $A5 $76 $4D $73 $8D $76 $35 $73
.db $5D $76 $05 $73 $45 $76 $ED $72 $81 $76 $29 $73 $75 $76 $1D $73
.db $35 $76 $DD $72 $15 $78 $75 $74

; Data from 719E to 71A9 (12 bytes)
_DATA_719E_:
.db $00 $00 $02 $01 $01 $01 $01 $01 $02 $01 $01 $01

; Data from 71AA to 71B6 (13 bytes)
_DATA_71AA_:
.db $00 $01 $01 $02 $02 $01 $01 $02 $02 $02 $04 $02 $01

; Data from 71B7 to 71C4 (14 bytes)
_DATA_71B7_AudioItemTable:
.db $01 $2B $2D $2C $2E $38 $2F $3C $2D $2C $2E $2F $2C $2E

; Data from 71C5 to 71F4 (48 bytes)
_DATA_71C5_:
.db $01 $0D $01 $FA $00 $0D $01 $09 $00 $0D $01 $FA $00 $0D $01 $FA
.db $01 $1D $01 $FA $01 $1D $01 $FA $01 $1D $01 $FA $01 $1D $01 $FA
.db $00 $0D $01 $FA $00 $FA $00 $FA $00 $0D $01 $FA $00 $0D $01 $0F

; Data from 71F5 to 71FC (8 bytes)
_DATA_71F5_:
.db $00 $01 $02 $03 $00 $01 $04 $05

; Data from 71FD to 7214 (24 bytes)
_DATA_71FD_:
.db $10 $00 $00 $F0 $00 $F0 $F0 $00 $F0 $00 $00 $10 $00 $10 $10 $00
.db $00 $10 $10 $00 $00 $F0 $F0 $00

; Data from 7215 to 7220 (12 bytes)
_DATA_7215_:
.db $7D $81 $7F $87 $7E $84 $80 $86 $83 $88 $82 $85

; Data from 7221 to 7238 (24 bytes)
_DATA_7221_:
.db $64 $80 $69 $80 $69 $80 $6E $80 $6E $80 $73 $80 $73 $80 $64 $80
.db $73 $80 $64 $80 $69 $80 $6E $80

; Data from 7239 to 7250 (24 bytes)
_DATA_7239_:
.db $78 $80 $7D $80 $7D $80 $82 $80 $82 $80 $87 $80 $87 $80 $78 $80
.db $87 $80 $78 $80 $7D $80 $82 $80

; Data from 7251 to 725C (12 bytes)
_DATA_7251_:
.db $01 $00 $01 $01 $00 $00 $00 $00 $01 $00 $00 $00

; Data from 725D to 7A24 (1992 bytes)
_DATA_725D_:
.incbin "battlemaniacs.dis_DATA_725D_.inc"

; Data from 7A25 to 7A28 (4 bytes)
_DATA_7A25_:
.db $C5 $B8 $91 $00

; Data from 7A29 to 7A30 (8 bytes)
_DATA_7A29_:
.db $C5 $83 $8D $00 $C5 $19 $8F $00

; Data from 7A31 to 7EFF (1231 bytes)
_DATA_7A31_:
.incbin "battlemaniacs.dis_DATA_7A31_.inc"

; Pointer Table from 7F00 to 7F01 (1 entries, indexed by $C7C0)
_DATA_7F00_:
.db $0b $00 $80 $81 $AB $00 $00 $00 $00 $00 $80 $00
.db $0A $C3 $88 $91 $AB $00 $00 $00 $00 $00 $84 $00 
.db $0A $00 $80 $A1 $AB $00 $00 $00 $00 $00 $88 $00 
.db $0A $0A $A3 $21 $AC $00 $00 $00 $00 $00 $90 $00 
.db $0B $B5 $95 $D1 $AB $00 $00 $00 $00 $00 $93 $00 
.db $0A $B8 $94 $C1 $AB $00 $00 $00 $00 $00 $88 $00 
.db $09 $6F $AC $11 $AC $00 $00 $00 $00 $00 $8B $00
.db $0d $00 $80 $00 $00 $00 $00 $00 $09 $00 $0A $00 
.db $10 $0D $95 $84 $00 $00 $00 $00 $00 $08 $00 $06 
.db $10 $FF $0C $00 $80 $00 $00 $00 $00 $00 $04 $80 
.db $0A $10 $80 $0D $97 $90 $00 $00 $00 $00 $00 $04 
; ...
.db $80 $08 $80 $10 $0D $0B $8A $00 $00 $00 $19 $00 
.db $03 $00 $22 $20 $24 $0D $E3 $8E $00 $00 $00 $19 
.db $00 $03 $00 $21 $20 $24 $0D $15 $8D $00 $0B $00 $19 $00 $12 $00 $22 $20 $24 $0D $6F $8B $00 $0B $00 $19
.db $00 $18 $00 $22 $20 $24 $0C $00 $9B $00 $00 $00 $00 $00 $02 $00
.db $04 $80 $26 $0C $FA $9D $00 $00 $00 $00 $00 $04 $00 $03 $10 $FF
.db $0C $E7 $A2 $00 $00 $00 $00 $00 $08 $00 $00 $10 $0C $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 1 SLOT 1
.ORG $0000

; Data from 7FF0 to 7FFF (16 bytes)
.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $E9 $26 $58 $70 $20 $40

.BANK 2
.ORG $0000

; Data from 8000 to 816C (365 bytes)
_DATA_8000_:
.db $20 $04 $06 $F0 $E0 $38 $04 $06 $F0 $E0 $50 $04 $05 $F0 $E8 $64
.db $04 $05 $F0 $E8 $78 $01 $03 $FC $F8 $7B $01 $03 $FC $F8 $7E $01
.db $03 $FC $F8 $81 $03 $04 $F4 $F0 $8D $03 $04 $F4 $F0 $78 $01 $02
.db $FC $00 $7A $01 $02 $FC $00 $7C $01 $02 $FC $00 $20 $03 $04 $F4
.db $F0 $2C $03 $04 $F4 $F0 $38 $03 $04 $F4 $F0 $44 $03 $04 $F4 $F0
.db $80 $02 $05 $F8 $EC $8A $02 $04 $F8 $F4 $92 $02 $04 $00 $F4 $9A
.db $03 $03 $F4 $F8 $80 $04 $02 $00 $00 $88 $02 $04 $00 $F0 $90 $04
.db $02 $F0 $00 $98 $02 $04 $00 $00 $70 $02 $02 $00 $00 $74 $02 $02
.db $00 $00 $78 $02 $02 $00 $00 $7C $02 $02 $00 $00 $80 $03 $02 $F4
.db $FC $86 $03 $02 $F4 $FC $8C $03 $03 $F4 $F4 $95 $03 $03 $F4 $F4
.db $9E $03 $02 $F4 $FC $7A $03 $02 $F4 $FC $71 $03 $03 $F4 $F4 $68
.db $03 $03 $F4 $F4 $50 $04 $02 $F0 $F8 $58 $04 $02 $F0 $FB $60 $04
.db $02 $F0 $FB $74 $02 $02 $F8 $F8 $78 $02 $02 $F8 $F8 $7C $02 $02
.db $F8 $F8 $80 $04 $02 $F0 $F8 $88 $04 $02 $F0 $F8 $90 $02 $02 $F8
.db $F8 $94 $02 $02 $F0 $F8 $68 $03 $02 $F4 $F8 $6E $03 $02 $F4 $F8
.db $74 $03 $02 $F4 $F8 $7A $03 $02 $F4 $F8 $68 $04 $04 $F0 $F0 $78
.db $04 $04 $F0 $F0 $88 $04 $04 $F0 $F0 $98 $04 $04 $F0 $F0 $A6 $01
.db $01 $FC $06 $A7 $02 $02 $F8 $F8 $A1 $02 $02 $F8 $F8 $9D $02 $02
.db $F8 $F8 $9C $01 $01 $FC $FC $98 $04 $01 $F0 $FC $94 $04 $01 $F0
.db $FC $92 $02 $01 $F8 $FC $90 $02 $01 $F8 $FC $8C $02 $02 $00 $FC
.db $88 $02 $02 $00 $FC $64 $05 $06 $EC $E2 $82 $05 $01 $EC $F2 $87
.db $05 $02 $EC $F2 $91 $05 $02 $EC $F2 $9B $05 $02 $EC $F2 $A7 $01
.db $01 $FC $FC $A3 $01 $02 $FC $FC $A5 $01 $02 $FC $FC

; Data from 816D to 88EC (1920 bytes)
_DATA_816D_FontTiles:
.incbin "battlemaniacs.dis_DATA_816D_FontTiles.inc"

; Data from 88ED to 8A4C (352 bytes)
_DATA_88ED_:
.db $0C $00 $00 $00 $1E $00 $20 $20 $37 $48 $25 $25 $33 $00 $44 $44
.db $33 $00 $44 $44 $3F $00 $68 $68 $1E $40 $32 $32 $00 $24 $18 $18
.db $38 $00 $00 $00 $18 $20 $40 $40 $18 $00 $30 $30 $18 $00 $20 $20
.db $08 $10 $00 $00 $0E $00 $14 $14 $3E $00 $60 $60 $00 $00 $7C $7C
.db $3C $00 $00 $00 $76 $08 $50 $50 $26 $00 $5A $5A $0C $00 $34 $34
.db $18 $00 $20 $20 $2E $10 $44 $44 $7E $00 $80 $80 $00 $00 $FC $FC
.db $3C $00 $00 $00 $76 $08 $50 $50 $26 $00 $5A $5A $0C $00 $06 $06
.db $66 $00 $0A $0A $7E $00 $9A $9A $3C $00 $64 $64 $00 $00 $3C $3C
.db $12 $20 $00 $00 $3A $04 $68 $68 $36 $40 $1C $1C $66 $10 $C8 $C8
.db $7F $00 $80 $80 $0C $00 $FA $FA $0C $00 $10 $10 $00 $00 $18 $18
.db $0E $10 $04 $04 $7E $00 $40 $40 $40 $00 $BC $BC $7C $00 $84 $84
.db $06 $08 $F0 $F0 $66 $00 $4A $4A $3C $02 $64 $64 $00 $00 $3C $3C
.db $0C $10 $08 $08 $1C $20 $00 $00 $38 $00 $60 $60 $3C $40 $04 $04
.db $66 $08 $D0 $D0 $66 $00 $CA $CA $3C $02 $64 $64 $00 $04 $38 $38
.db $38 $00 $10 $10 $3E $00 $42 $42 $04 $02 $78 $78 $0C $00 $14 $14
.db $18 $04 $20 $20 $38 $00 $48 $48 $70 $08 $80 $80 $00 $00 $E0 $E0
.db $0C $00 $14 $14 $16 $08 $22 $22 $14 $00 $28 $28 $3E $00 $42 $42
.db $26 $08 $50 $50 $6E $00 $80 $80 $3C $00 $60 $60 $00 $00 $30 $30
.db $1C $00 $00 $00 $36 $00 $28 $28 $36 $00 $08 $08 $0E $10 $20 $20
.db $06 $00 $1A $1A $6C $02 $58 $58 $38 $04 $60 $60 $00 $08 $30 $30
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 8A4D to 8BB6 (362 bytes)
_DATA_8A4D_:
.db $00 $00 $1F $1F $1E $11 $62 $60 $71 $4C $93 $82 $CE $BC $31 $01
.db $BC $D0 $6F $00 $F0 $CF $3F $00 $6E $51 $B1 $80 $6E $51 $B1 $80
.db $00 $00 $18 $18 $00 $18 $E4 $E4 $18 $EC $12 $02 $E8 $EC $12 $12
.db $FA $0A $F5 $01 $8A $06 $FD $01 $64 $9C $9A $02 $64 $9C $9A $02
.db $33 $2C $5C $40 $1F $18 $27 $20 $03 $03 $7C $7C $00 $65 $FF $9A
.db $00 $55 $FF $AA $10 $75 $EF $8A $00 $45 $FF $BA $00 $00 $C5 $C5
.db $98 $68 $74 $04 $F0 $10 $E8 $08 $E0 $E0 $1C $1C $00 $2C $FE $D2
.db $80 $EA $7F $15 $42 $6E $BD $91 $00 $28 $FE $D6 $00 $00 $28 $28
.db $00 $00 $00 $00 $00 $00 $3D $3D $3D $25 $5B $42 $6E $50 $B3 $80
.db $51 $2F $EE $80 $60 $1D $FF $80 $70 $4F $BF $80 $30 $2F $5F $40
.db $00 $00 $00 $00 $00 $00 $88 $88 $00 $88 $74 $74 $C8 $00 $FC $FC
.db $BC $04 $FA $02 $00 $FC $FE $02 $E4 $1C $1A $02 $EC $14 $1A $02
.db $18 $17 $2F $20 $07 $04 $1B $18 $00 $00 $7F $7F $62 $62 $EA $9D
.db $55 $55 $FF $AA $67 $67 $FF $98 $55 $55 $FF $AA $00 $00 $75 $75
.db $18 $E8 $F4 $04 $F0 $10 $E8 $08 $00 $00 $FE $FE $2A $2A $AF $D5
.db $4A $4A $FF $B5 $2E $2E $EF $D1 $4A $4A $5F $B5 $00 $00 $6A $6A
.db $00 $00 $38 $38 $30 $30 $74 $4C $78 $48 $CA $86 $78 $58 $DA $86
.db $14 $30 $B2 $EE $08 $00 $44 $7C $00 $00 $38 $38 $00 $00 $00 $00
.db $00 $00 $38 $38 $08 $08 $74 $44 $14 $24 $FA $82 $34 $04 $FA $82
.db $6C $4C $B2 $82 $38 $38 $44 $44 $00 $00 $38 $38 $00 $00 $00 $00
.db $31 $20 $00 $32 $20 $00 $20 $20 $00 $20 $20 $00 $34 $20 $00 $35
.db $20 $00 $36 $20 $00 $37 $20 $00 $20 $20 $00 $38 $20 $00 $20 $20
.db $00 $39 $20 $00 $31 $30 $00 $31 $31 $00

; Data from 8BB7 to 8C46 (144 bytes)
_DATA_8BB7_Text_Numbers:
.db "one        ", 0
.db "two        ", 0
.db "three      ", 0
.db "four       ", 0
.db "five       ", 0
.db "six        ", 0
.db "seven      ", 0
.db "eight      ", 0
.db "nine       ", 0
.db "ten        ", 0
.db "eleven     ", 0
.db "twelve     ", 0

; Data from 8C47 to 8CA9 (99 bytes)
_DATA_8C47_Text_cheat_mode:
.db "       cheat mode", 0
.db "   converted in the UK.", 0
.db "by syrox developments ltd.", 0
.db 0
.db "      level select", 0
.db "    play ", 0

; Data from 8CAA to 8CEF (70 bytes)
_DATA_8CAA_Text_Options:
.db "DIFFICULTY :", 0
.db "SOUND TEST :", 0
.db "TRIGGERS ARE", 0
.db "      FIRE :", 0
.db "      JUMP :", 0
.db "EXIT", 0

; Data from 8CF0 to 8E99 (426 bytes)
_DATA_8CF0_Text_Splash:
.db "     @1993,1994 RARE LTD.", 0
.db "     ALL RIGHTS RESERVED.", 0
.db "  LICENSED TO TRADEWEST,INC.", 0
.db "     BY RARE COIN-IT,INC.", 0
.db "        SUBLICENSED TO", 0
.db "      VIRGIN INTERACTIVE", 0
.db "  ENTERTAINMENT (EUROPE) LTD.", 0
.db " BATTLETOADS AND BATTLEMANIACS", 0
.db "  ARE TRADEMARKS OF RARE LTD.", 0
.db "  TRADEWEST # IS A TRADEMARK OF", 0
.db "   WILLIAMS ENTERTAINMENT INC.", 0
.db "      ALL RIGHTS RESERVED.", 0
.db 0
.db "  PUBLISHED AND DISTRIBUTED BY", 0
.db "       VIRGIN INTERACTIVE", 0
.db "   ENTERTAINMENT (EUROPE) LTD.", 0
.db 0

; Data from 8E9A to BBFF (11622 bytes)
_DATA_8E9A_Text_Credits:
.db "          LICENSED BY", 0
.db "     SEGA ENTERPRISES, LTD.", 0
_DATA_8ECC_Text_BlankLine:
.db "                            ", 0
_DATA_8EE9_Text_EndCredits:
.db "   converted in the uk.", 0
.db "            by", 0
.db "  syrox developments ltd.", 0
.db 0
.db 0
.db "        programmer", 0
.db 0
.db "       dominic wood", 0
.db 0
.db 0
.db "      graphic artist", 0
.db 0
.db "        jock green", 0
.db 0
.db 0
.db "      music and sound", 0
.db 0
.db "         krisalis", 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db "    virgin interactive", 0
.db "entertainment (europe) ltd.", 0
.db 0
.db 0
.db "     product producer", 0
.db 0
.db "       matthew spall", 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
.db 0
_LABEL_9020_CreditsEnd:

.orga $bc00
_LABEL_BC00_DecompressToVRAM:
  ; de = VRAM address (may not have write bit set)
  ; 
  
  ; Set VRAM address
	ld a, e
	di
    out (Port_VDPAddress), a
    ld a, d
    or $40
    out (Port_VDPAddress), a
	ei
  ; RAM buffer?
	ld de, _RAM_D000_
	ld (_RAM_C292_), de
  ; Skip header
	ld bc, $11
	add hl, bc
	ld a, (hl)
	inc hl
	ld (_RAM_C286_), a
	ld (_RAM_C290_), hl
	ld a, (hl)
	inc hl
	ld (_RAM_C282_), a
	ld a, (hl)
	inc hl
	ld (_RAM_C283_), a
	xor a
	ld (_RAM_C287_), a
	ld a, $02
	call _LABEL_BE14_
_LABEL_BC30_:
	ld iy, _RAM_C100_
	call _LABEL_BE85_
	ld iy, _RAM_C180_
	call _LABEL_BE85_
	ld iy, _RAM_C200_
	call _LABEL_BE85_
	ld a, $10
	call _LABEL_BE14_
	ld (_RAM_C280_), bc
	jp +

_LABEL_BC51_:
	ld hl, _RAM_C180_
	call _LABEL_BDD5_
	push bc
	ld hl, _RAM_C200_
	call _LABEL_BDD5_
	ld b, c
	inc b
	inc b
	pop de
	ld hl, (_RAM_C292_)
	scf
	sbc hl, de
	ld a, h
	and $03
	or $D0
	ld h, a
	ld de, (_RAM_C292_)
-:
	ld a, (hl)
	inc hl
	res 2, h
	out (Port_VDPData), a
	ld (de), a
	inc de
	res 2, d
	djnz -
	ld (_RAM_C292_), de
+:
	ld hl, _RAM_C100_
	call _LABEL_BDD5_
	ld a, b
	or c
	jr z, _LABEL_BCDF_
	ld de, (_RAM_C292_)
	ld hl, (_RAM_C290_)
	ld b, c
-:
	ld a, (hl)
	inc hl
	out (Port_VDPData), a
	ld (de), a
	inc de
	res 2, d
	djnz -
	ld (_RAM_C292_), de
	ld (_RAM_C290_), hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld hl, (_RAM_C282_)
	ld a, (_RAM_C287_)
	or a
	jr z, ++
	sub $10
	neg
	or a
	jr z, +
-:
	sla l
	rl h
	dec a
	jp nz, -
+:
	ld a, (_RAM_C287_)
-:
	sla l
	rl h
	rl c
	rl b
	rl e
	rl d
	dec a
	jp nz, -
++:
	ld (_RAM_C282_), bc
	ld (_RAM_C284_), de
_LABEL_BCDF_:
	ld a, (_RAM_C280_)
	dec a
	ld (_RAM_C280_), a
	jp nz, _LABEL_BC51_
	ld a, (_RAM_C281_)
	dec a
	ld (_RAM_C281_), a
	jp p, _LABEL_BC51_
	ld a, (_RAM_C286_)
	dec a
	ld (_RAM_C286_), a
	jp nz, _LABEL_BC30_
	ret

; Data from BCFE to BDD4 (215 bytes)
.db $ED $53 $92 $C2 $01 $11 $00 $09 $7E $23 $32 $86 $C2 $22 $90 $C2
.db $7E $23 $32 $82 $C2 $7E $23 $32 $83 $C2 $AF $32 $87 $C2 $3E $02
.db $CD $14 $7E $FD $21 $00 $C1 $CD $85 $7E $FD $21 $80 $C1 $CD $85
.db $7E $FD $21 $00 $C2 $CD $85 $7E $3E $10 $CD $14 $7E $ED $43 $80
.db $C2 $C3 $62 $7D $21 $80 $C1 $CD $D5 $7D $C5 $21 $00 $C2 $CD $D5
.db $7D $03 $03 $D1 $2A $92 $C2 $37 $ED $52 $ED $5B $92 $C2 $ED $B0
.db $ED $53 $92 $C2 $21 $00 $C1 $CD $D5 $7D $78 $B1 $28 $4A $ED $5B
.db $92 $C2 $2A $90 $C2 $ED $B0 $ED $53 $92 $C2 $22 $90 $C2 $4E $23
.db $46 $23 $5E $23 $56 $2A $82 $C2 $3A $87 $C2 $B7 $28 $22 $D6 $10
.db $ED $44 $B7 $28 $08 $CB $25 $CB $14 $3D $C2 $93 $7D $3A $87 $C2
.db $CB $25 $CB $14 $CB $11 $CB $10 $CB $13 $CB $12 $3D $C2 $9E $7D
.db $ED $43 $82 $C2 $ED $53 $84 $C2 $3A $80 $C2 $3D $32 $80 $C2 $C2
.db $42 $7D $3A $81 $C2 $3D $32 $81 $C2 $F2 $42 $7D $3A $86 $C2 $3D
.db $32 $86 $C2 $C2 $21 $7D $C9

_LABEL_BDD5_:
	ld bc, (_RAM_C282_)
-:
	ld a, c
	and (hl)
	inc hl
	ld e, a
	ld a, b
	and (hl)
	inc hl
	ld d, a
	ld a, (hl)
	inc hl
	sub e
	ld e, a
	ld a, (hl)
	inc hl
	sbc a, d
	or e
	jp nz, -
	ld de, $003C
	add hl, de
	ld a, (hl)
	inc hl
	ex af, af'
	ld a, (hl)
	call _LABEL_BE14_
	ex af, af'
	ld b, $00
	ld c, a
	cp $02
	jr c, +
	dec a
	push af
	call _LABEL_BE14_
	ld e, c
	ld d, b
	pop bc
	ld hl, $0001
-:
	add hl, hl
	djnz -
	ld a, e
	or l
	ld c, a
	ld a, d
	or h
	ld b, a
+:
	ret

_LABEL_BE14_:
	exx
	ld c, a
	ld b, c
	ld hl, $0001
-:
	add hl, hl
	djnz -
	dec hl
	ld a, (_RAM_C282_)
	and l
	ld l, a
	ld a, (_RAM_C283_)
	and h
	ld h, a
	push hl
	ld a, (_RAM_C287_)
	sub c
	ld (_RAM_C287_), a
	jr nc, ++
	add a, c
	jr z, +
	ld b, a
	ld de, (_RAM_C282_)
	ld hl, (_RAM_C284_)
-:
	srl h
	rr l
	rr d
	rr e
	djnz -
	ld (_RAM_C282_), de
+:
	ld hl, (_RAM_C290_)
	inc hl
	inc hl
	ld (_RAM_C290_), hl
	ld a, (hl)
	inc hl
	ld (_RAM_C284_), a
	ld a, (hl)
	ld (_RAM_C285_), a
	ld a, (_RAM_C287_)
	neg
	ld c, a
	neg
	add a, $10
	ld (_RAM_C287_), a
++:
	ld b, c
	ld de, (_RAM_C282_)
	ld hl, (_RAM_C284_)
-:
	srl h
	rr l
	rr d
	rr e
	djnz -
	ld (_RAM_C282_), de
	ld (_RAM_C284_), hl
	exx
	pop bc
	ret

_LABEL_BE85_:
	ld ($C28E), sp
	ld hl, (_RAM_C28E_)
	ld de, $FFF0
	add hl, de
	ld sp, hl
	ld (_RAM_C28E_), hl
	ld a, $05
	call _LABEL_BE14_
	ld a, c
	ld (_RAM_C289_), a
	or a
	jp z, _LABEL_BF5F_
-:
	ex af, af'
	ld a, $04
	call _LABEL_BE14_
	ld (hl), c
	inc hl
	ex af, af'
	dec a
	jp nz, -
	ld ix, (_RAM_C28E_)
	ld a, $01
	ld (_RAM_C288_), a
	ld hl, $0000
	ld (_RAM_C28A_), hl
	ld hl, $8000
	ld (_RAM_C28C_), hl
_LABEL_BEC3_:
	ld a, (_RAM_C289_)
	ld b, a
	push ix
_LABEL_BEC9_:
	push bc
	ld a, (_RAM_C288_)
	cp (ix+0)
	jr nz, _LABEL_BF42_
	ld hl, (_RAM_C288_)
	push hl
	ld hl, (_RAM_C28A_)
	push hl
	ld a, (_RAM_C288_)
	ld hl, $0001
	ld b, a
-:
	add hl, hl
	djnz -
	dec hl
	ld (iy+0), l
	inc iy
	ld (iy+0), h
	inc iy
	ld a, (_RAM_C288_)
	sub $10
	neg
	ld b, a
	ld hl, (_RAM_C28A_)
-:
	srl h
	rr l
	djnz -
	ld (_RAM_C28A_), hl
	ld a, (_RAM_C288_)
	ld b, a
	ld hl, (_RAM_C28A_)
	ld de, $0000
	or a
-:
	rr h
	rr l
	rl e
	rl d
	djnz -
	ld (iy+0), e
	inc iy
	ld (iy+0), d
	inc iy
	push ix
	pop hl
	ld de, (_RAM_C28E_)
	or a
	sbc hl, de
	ld h, (ix+0)
	ld (iy+60), l
	ld (iy+61), h
	pop hl
	ld de, (_RAM_C28C_)
	add hl, de
	ld (_RAM_C28A_), hl
	pop hl
	ld (_RAM_C288_), hl
_LABEL_BF42_:
	inc ix
	pop bc
	djnz _LABEL_BEC9_
	pop ix
	ld hl, (_RAM_C28C_)
	srl h
	rr l
	ld (_RAM_C28C_), hl
	ld a, (_RAM_C288_)
	inc a
	ld (_RAM_C288_), a
	cp $11
	jp nz, _LABEL_BEC3_
_LABEL_BF5F_:
	ld hl, (_RAM_C28E_)
	ld de, $0010
	add hl, de
	ld sp, hl
	ret

; Data from BF68 to BFFF (152 bytes)
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 3
.ORG $0000

; Music engine?

; Data from C000 to C023 (36 bytes)
.db $01 $00 $00 $00 $02 $03 $00 $05 $02 $04 $03 $05 $02 $06 $03 $05
.db $07 $09 $08 $0A $0B $0C $08 $0A $0D $0E $08 $0A $0B $0C $08 $0A
.db $0D $0E $08 $0A

; Pointer Table from C024 to C025 (1 entries, indexed by $C0CF)
_DATA_C024_:
.dw $100F

; Data from C026 to C0FB (214 bytes)
.db $08 $0A $0F $10 $08 $0A $11 $10 $08 $0A $11 $12 $08 $0A $13 $14
.db $15 $16 $17 $18 $19 $16 $1A $1B $19 $16 $1A $1B $19 $16 $1A $1B
.db $19 $16 $1C $1D $19 $16 $1C $1D $19 $16 $17 $18 $1E $16 $1F $20
.db $21 $22 $1F $20 $21 $22 $23 $24 $21 $22 $23 $24 $21 $22 $25 $26
.db $21 $22 $25 $27 $21 $22 $28 $29 $2A $0A $28 $29 $2A $0A $2B $08
.db $2C $0A $2B $08 $2C $0A $2B $2D $08 $0A $2B $2D $08 $0A $28 $2E
.db $2A $0A $28 $2F $2A $0A $30 $31 $32 $22 $30 $31 $32 $22 $30 $33
.db $32 $22 $30 $33 $32 $22 $35 $34 $32 $22 $35 $36 $32 $22 $30 $37
.db $32 $22 $30 $38 $32 $22 $00 $00 $39 $3A $00 $00 $39 $3B $00 $00
.db $3C $3E $00 $00 $3D $3E $00 $00 $3F $3E $00 $00 $40 $39 $00 $00
.db $41 $39 $00 $00 $42 $39 $00 $00 $43 $44 $00 $00 $43 $45 $00 $00
.db $43 $46 $00 $00 $43 $47 $00 $00 $48 $39 $00 $00 $49 $3E $00 $00
.db $4A $39 $00 $00 $4B $39 $00 $00 $4C $39 $00 $00 $39 $4D $00 $00
.db $39 $4E $00 $00 $00 $00

; Data from C0FC to D12B (4144 bytes)
_DATA_C0FC_:
.incbin "battlemaniacs.dis_DATA_C0FC_.inc"

; Data from D12C to D1C3 (152 bytes)
_DATA_D12C_:
.db $7F $7F $00 $00 $00 $00 $00 $00 $48 $08 $00 $6F $00 $00 $00 $00
.db $38 $09 $00 $58 $00 $00 $00 $04 $28 $01 $00 $60 $00 $00 $00 $00
.db $02 $01 $00 $50 $00 $28 $86 $04 $30 $02 $38 $68 $10 $20 $86 $00
.db $7F $00 $00 $48 $00 $00 $00 $00 $78 $06 $00 $70 $00 $49 $A7 $05
.db $7F $10 $40 $68 $00 $99 $86 $00 $59 $38 $40 $70 $18 $20 $87 $00
.db $78 $00 $00 $38 $18 $20 $87 $00 $70 $11 $10 $59 $00 $00 $00 $04
.db $7F $07 $00 $7F $00 $38 $A7 $07 $7F $08 $00 $60 $00 $00 $00 $04
.db $7F $07 $00 $70 $00 $00 $00 $00 $7F $02 $00 $7F $00 $30 $A7 $07
.db $7E $01 $00 $7F $00 $21 $A7 $00 $28 $21 $00 $7F $00 $00 $00 $07
.db $00 $00 $00 $00 $00 $00 $00 $00

_LABEL_D1C4_AudioStop:
	xor a
	ld (_RAM_C0D2_AudioEnabled), a
	ld (_RAM_C0D5_), a
_LABEL_D1CB_:
	xor a
	ld (_RAM_C01C_), a
	ld (_RAM_C03D_), a
	ld (_RAM_C0CC_), a
	ld a, $9F
	out (Port_PSG), a
	ld a, $BF
	out (Port_PSG), a
	ld a, (_RAM_C0D2_AudioEnabled)
	or a
	ret nz
_LABEL_D1E2_:
	xor a
	ld (_RAM_C0D2_AudioEnabled), a
	ld a, $DF
	out (Port_PSG), a
	ld a, $FF
	out (Port_PSG), a
	xor a
	ld (_RAM_C05E_), a
	ld (_RAM_C07F_), a
	ld (_RAM_C0A0_), a
	ld (_RAM_C0C1_), a
	ret

; Data from D1FC to D209 (14 bytes)
.db $21 $00 $C0 $11 $01 $C0 $01 $DB $00 $36 $00 $ED $B0 $C9

_LABEL_D20A_:
	ld a, (_RAM_C0D5_)
	or a
	jr nz, _LABEL_D276_
	ld ix, _RAM_C000_
	call _LABEL_D740_
	ld a, (ix+1)
	and c
	or $80
	out (Port_PSG), a
	ld e, (ix+1)
	ld a, (ix+0)
	and $03
	srl e
	srl e
	srl e
	srl e
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (Port_PSG), a
	ld a, $7F
	sub (ix+28)
	rra
	rra
	rra
	and c
	or $90
	out (Port_PSG), a
	ld ix, _RAM_C021_
	call _LABEL_D740_
	ld a, (ix+1)
	and c
	or $A0
	out (Port_PSG), a
	ld e, (ix+1)
	ld a, (ix+0)
	and $03
	srl e
	srl e
	srl e
	srl e
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (Port_PSG), a
	ld a, $7F
	sub (ix+28)
	rra
	rra
	rra
	and c
	or $B0
	out (Port_PSG), a
_LABEL_D276_:
	xor a
	ld (_RAM_C0C7_), a
	ld ix, _RAM_C0A5_
	ld a, (_RAM_C0D2_AudioEnabled)
	or a
	jr nz, +
	ld ix, _RAM_C063_
	ld a, (_RAM_C0D5_)
	or a
	ret nz
+:
	call _LABEL_D740_
	ld a, $7F
	sub (ix+28)
	rra
	rra
	rra
	or $F0
	out (Port_PSG), a
	ld a, (ix+27)
	and $03
	cp $03
	ret nz
	ld (_RAM_C0C7_), a
	ld a, (ix+1)
	and c
	or $C0
	out (Port_PSG), a
	ld e, (ix+1)
	ld a, (ix+0)
	and $03
	srl e
	srl e
	srl e
	srl e
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (Port_PSG), a
	ld a, $0F
	or $D0
	out (Port_PSG), a
	ret

_LABEL_D2CD_:
	ld ix, _RAM_C084_
	ld a, (_RAM_C0D2_AudioEnabled)
	or a
	jr nz, +
	ld ix, _RAM_C042_
	ld a, (_RAM_C0D5_)
	or a
	ret nz
+:
	ld a, (_RAM_C0C7_)
	or a
	ret nz
	call _LABEL_D740_
	ld a, (ix+1)
	and c
	or $C0
	out (Port_PSG), a
	ld e, (ix+1)
	ld a, (ix+0)
	and $03
	srl e
	srl e
	srl e
	srl e
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (Port_PSG), a
	ld a, $7F
	sub (ix+28)
	rra
	rra
	rra
	and c
	or $D0
	out (Port_PSG), a
	ret

_LABEL_D315_:
	ld l, (ix+14)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	ld iy, _DATA_D12C_
	add iy, de
	ld a, (iy+4)
	ld (ix+11), a
	ld a, (iy+5)
	ld (ix+12), a
	ld a, (iy+6)
	and $07
	ld (ix+13), a
	ld a, (iy+0)
	ld (ix+4), a
	ld a, (iy+2)
	ld (ix+6), a
	ld a, (iy+1)
	ld (ix+5), a
	ld a, (iy+3)
	ld (ix+7), a
	ld a, (iy+7)
	ld (ix+27), a
	ld a, (ix+32)
	or a
	jr z, ++
	ld e, a
	ld a, (_RAM_C0D2_AudioEnabled)
	or a
	jr z, +
	ld a, e
	cp $05
	jr nz, ++
+:
	ld a, (ix+27)
	and $07
	or $E0
	out (Port_PSG), a
++:
	ld a, (iy+6)
	and $E0
	ld (ix+15), a
	ret

; Data from D37A to D392 (25 bytes)
.db $3E $01 $32 $D5 $C0 $3A $D2 $C0 $B7 $C0 $CD $C4 $91 $3E $01 $32
.db $D5 $C0 $C9 $B7 $C8 $32 $D5 $C0 $C9

_LABEL_D393_AudioPlayMusic:
	push af
    xor a
    ld (_RAM_C0CC_), a
    ld (_RAM_C0D5_), a
    ld (_RAM_C0C8_), a
    ld (_RAM_C00E_), a
    ld (_RAM_C02F_), a
    ld (_RAM_C050_), a
    ld (_RAM_C071_), a
    ld (_RAM_C01C_), a
    ld (_RAM_C03D_), a
    ld (_RAM_C05E_), a
    ld (_RAM_C07F_), a
    ld (_RAM_C01A_), a
    ld (_RAM_C03B_), a
    ld (_RAM_C05C_), a
    ld (_RAM_C07D_), a
    ld (_RAM_C016_), a
    ld (_RAM_C037_), a
    ld (_RAM_C058_), a
    ld (_RAM_C079_), a
    ld (_RAM_C017_), a
    ld (_RAM_C038_), a
    ld (_RAM_C059_), a
    ld (_RAM_C07A_), a
    ld (_RAM_C0CB_), a
    ld (_RAM_C020_), a
    ld (_RAM_C041_), a
    ld (_RAM_C062_), a
    ld (_RAM_C07E_), a
    call _LABEL_D563_
    ld a, $04
    ld (_RAM_C083_), a
	pop af
	ld (_RAM_C0C9_Audio_CurrentMusicSequence), a
	call _LABEL_D1CB_
	ld a, $06
	ld (_RAM_C0CA_), a
	ld a, $05
	ld (_RAM_C01D_), a
	ld (_RAM_C03E_), a
	ld (_RAM_C05F_), a
	ld (_RAM_C080_), a
	ld (_RAM_C0CC_), a
	ret

_LABEL_D40F_AudioPlaySFX:
	or a
	jr nz, +
	ld a, (_RAM_C0D2_AudioEnabled) ; Ignore writes when zero
	or a
	ret z
	jp _LABEL_D1E2_

+:
	push af
	xor a
	ld (_RAM_C0D2_AudioEnabled), a
	ld (_RAM_C0CE_), a
	ld (_RAM_C0A0_), a
	ld (_RAM_C0C1_), a
	ld (_RAM_C09E_), a
	ld (_RAM_C0BF_), a
	ld (_RAM_C09A_), a
	ld (_RAM_C0BB_), a
	ld (_RAM_C09B_), a
	ld (_RAM_C0BC_), a
	ld (_RAM_C0D1_), a
	ld (_RAM_C0A4_), a
	ld (_RAM_C0C0_), a
	call _LABEL_D583_
	ld a, $05
	ld (_RAM_C0C5_), a
	pop af
	ld (_RAM_C0CF_), a
	call _LABEL_D1E2_
	ld a, $06
	ld (_RAM_C0D0_), a
	ld a, $05
	ld (_RAM_C0A1_), a
	ld (_RAM_C0C2_), a
	ld (_RAM_C0D2_AudioEnabled), a
	ret

; Data from D463 to D47A (24 bytes)
.db $F5 $DB $BF $DB $C1 $C5 $E5 $D5 $DD $E5 $FD $E5 $CD $7B $94 $FD
.db $E1 $DD $E1 $D1 $E1 $C1 $F1 $C9

_LABEL_D47B_SoundEngine_Update:
	ld a, (_RAM_C0D5_)
	or a
	jr nz, _LABEL_D4C4_
	ld a, (_RAM_C0CC_)
	or a
	jr z, _LABEL_D4BA_
	ld c, $0F
	ld hl, _RAM_C0CB_
	inc (hl)
	ld e, (hl)
	ld a, (_RAM_C0CA_)
	dec a
	cp e
	jr nc, +
	xor a
	ld (hl), a
	call _LABEL_D5B6_
	ld hl, _RAM_C0C8_
	inc (hl)
	ld a, (hl)
	cp $40
	jr c, +
	xor a
	ld (hl), a
	call _LABEL_D563_
	ld hl, _RAM_C0C9_Audio_CurrentMusicSequence
	inc (hl)
+:
	ld a, (_RAM_C0D2_AudioEnabled)
	or a
	call nz, _LABEL_D526_
-:
	call _LABEL_D20A_
	call _LABEL_D2CD_
	ret

_LABEL_D4BA_:
	ld a, (_RAM_C0D2_AudioEnabled)
	or a
	ret z
	call _LABEL_D526_
	jr -

_LABEL_D4C4_:
	push af
	call _LABEL_D4BA_
	ld hl, _RAM_C0D6_
	inc (hl)
	ld a, (hl)
	ld e, $0F
	bit 0, (hl)
	jr z, +
	ld e, $00
+:
	ld a, e
	or $94
	out (Port_PSG), a
	ld a, e
	or $B4
	out (Port_PSG), a
	pop af
	dec a
	cpl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld a, l
	or $03
	ld l, a
	push hl
	ld a, l
	and $0F
	or $80
	out (Port_PSG), a
	ld e, l
	ld a, h
	and $03
	srl e
	srl e
	srl e
	srl e
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (Port_PSG), a
	pop hl
	ld de, $0006
	add hl, de
	ld a, l
	and $0F
	or $A0
	out (Port_PSG), a
	ld e, l
	ld a, h
	and $03
	srl e
	srl e
	srl e
	srl e
	add a, a
	add a, a
	add a, a
	add a, a
	or e
	out (Port_PSG), a
	ret

_LABEL_D526_:
	ld a, $01
	ld (_RAM_C0D3_), a
	ld c, $0F
	ld hl, _RAM_C0D1_
	inc (hl)
	ld e, (hl)
	ld a, (_RAM_C0D0_)
	dec a
	cp e
	jr nc, +
	xor a
	ld (hl), a
	call _LABEL_D591_
	ld hl, _RAM_C0CE_
	inc (hl)
	ld a, (hl)
	cp $40
	jr c, +
	xor a
	ld (hl), a
	call _LABEL_D583_
	ld hl, _RAM_C0CF_
	inc (hl)
	ld a, (hl)
+:
	xor a
	ld (_RAM_C0D3_), a
	ld ix, _RAM_C042_
	call _LABEL_D315_
	ld ix, _RAM_C063_
	jp _LABEL_D315_

_LABEL_D563_:
	ld a, (_RAM_C0D3_)
	or a
	jr nz, _LABEL_D583_
	xor a
	ld (_RAM_C01F_), a
	ld (_RAM_C01E_), a
	ld (_RAM_C040_), a
	ld (_RAM_C03F_), a
	ld (_RAM_C061_), a
	ld (_RAM_C060_), a
	ld (_RAM_C082_), a
	ld (_RAM_C081_), a
	ret

_LABEL_D583_:
	xor a
	ld (_RAM_C0A3_), a
	ld (_RAM_C0A2_), a
	ld (_RAM_C0C4_), a
	ld (_RAM_C0C3_), a
	ret

_LABEL_D591_:
	ld a, (_RAM_C0CE_)
	ld (_RAM_C0D4_), a
	ld a, (_RAM_C0CF_)
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, $8000
	add hl, de
	inc hl
	inc hl
	ld ix, _RAM_C084_
	push hl
	call _LABEL_D5EA_
	pop hl
	inc hl
	ld ix, _RAM_C0A5_
	jp _LABEL_D5EA_

_LABEL_D5B6_:
	ld a, (_RAM_C0C8_)
	ld (_RAM_C0D4_), a
	ld a, (_RAM_C0C9_Audio_CurrentMusicSequence)
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, $8000
	add hl, de
	ld ix, _RAM_C000_
	push hl
	call _LABEL_D5EA_
	pop hl
	inc hl
	ld ix, _RAM_C021_
	push hl
	call _LABEL_D5EA_
	pop hl
	inc hl
	ld ix, _RAM_C042_
	push hl
	call _LABEL_D5EA_
	pop hl
	inc hl
	ld ix, _RAM_C063_
_LABEL_D5EA_:
	ld a, (ix+31)
	or a
	jr z, +
	dec (ix+31)
	inc (ix+30)
	ret

+:
	ld l, (hl)
	ld h, $00
	add hl, hl
	ld de, _DATA_C0FC_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C0D4_)
	sub (ix+30)
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld e, a
	srl a
	srl a
	ld (ix+17), a
	inc hl
	ld a, (hl)
	ld d, a
	and $7F
	dec hl
	ld (ix+19), a
	rl d
	ld a, e
	rla
	and $07
	ld (ix+16), a
	ld de, _LABEL_D6F9_	; Overriding return address
	push de
	ld a, (ix+16)
	or a
	jr z, +
	dec a
	jr z, _LABEL_D694_
	dec a
	jp z, _LABEL_D6BC_
	dec a
	jp z, _LABEL_D6EE_
	dec a
	jr z, ++++
	dec a
	jr z, _LABEL_D688_
	dec a
	jr z, ++
-:
	ret

+:
	ld a, (ix+19)
	or a
	jr z, -
	ld (ix+31), a
	ret

++:
	ld a, (ix+19)
	ld d, a
	and $1F
	ld e, a
	ld a, d
	and $60
	jr z, +
	cp $20
	jr z, +++
	cp $40
	jr z, ++
+:
	xor a
	ld (ix+22), a
	ld (ix+23), a
	ld (ix+25), a
	ld (ix+26), a
	ret

++:
	ld (ix+23), e
	ret

+++:
	ld (ix+22), e
	ret

++++:
	xor a
	ld (ix+21), a
	ld a, (ix+19)
	add a, a
	ld (ix+20), a
	ret

_LABEL_D688_:
	xor a
	ld (ix+20), a
	ld a, (ix+19)
	add a, a
	ld (ix+21), a
	ret

_LABEL_D694_:
	ld hl, _RAM_C0D7_
	ld a, (_RAM_C0D3_)
	ld e, a
	ld a, (ix+19)
	or a
	jr z, ++
	cp $40
	jr nc, +++
	bit 0, e
	jr z, +
	add a, (hl)
	ld (_RAM_C0D0_), a
	ret

+:
	add a, (hl)
	ld (_RAM_C0CA_), a
++:
	ret

+++:
	sub $3F
	ld (ix+25), a
	ld (ix+26), a
	ret

_LABEL_D6BC_:
	ld a, (_RAM_C0D3_)
	ld e, a
	ld a, (ix+19)
	cp $7F
	jr z, +++
	dec a
	bit 0, e
	jr z, ++
	cp $FF
	jr z, +
	ld (_RAM_C0CF_), a
-:
	ld a, $3F
	ld (_RAM_C0CE_), a
	ret

+:
	xor a
	ld (_RAM_C0D2_AudioEnabled), a
	call _LABEL_D1E2_
	ret

++:
	ld (_RAM_C0C9_Audio_CurrentMusicSequence), a
+++:
	bit 0, e
	jr nz, -
	ld a, $3F
	ld (_RAM_C0C8_), a
	ret

_LABEL_D6EE_:
	ld a, (ix+19)
	and $1F
	ld (ix+14), a
	jp _LABEL_D315_

_LABEL_D6F9_:
	ld a, (ix+17)
	or a
	jr z, _LABEL_D73F_
	ld (ix+18), a
	ld e, a
	ld a, (ix+16)
	cp $04
	jr z, +
	ld (ix+20), $00
+:
	cp $05
	jr z, +
	ld (ix+21), $00
+:
	ld l, e
	ld h, $00
	ld (ix+8), $00
	ld (ix+9), $C0
	ld (ix+24), $03
	ld (ix+10), $00
	ld (ix+29), $01
	ld (ix+28), $00
	ld de, _DATA_D868_
	add hl, hl
	add hl, de
	ld a, (hl)
	ld (ix+3), a
	inc hl
	ld a, (hl)
	ld (ix+2), a
_LABEL_D73F_:
	ret

_LABEL_D740_:
	ld a, (ix+29)
	dec a
	jr z, +
	dec a
	jr z, ++
	cp $03
	jr z, _LABEL_D78B_
	ld a, (ix+6)
	ld (ix+28), a
	jr _LABEL_D78B_

+:
	ld a, (ix+4)
	add a, (ix+28)
	ld (ix+28), a
	cp (ix+7)
	jr c, _LABEL_D78B_
	inc (ix+29)
	ld a, (ix+7)
	ld (ix+28), a
	jr _LABEL_D78B_

++:
	ld a, (ix+28)
	sub (ix+5)
	ld (ix+28), a
	jp m, +
	ld a, (ix+6)
	cp (ix+28)
	jr c, _LABEL_D78B_
+:
	ld a, (ix+6)
	ld (ix+28), a
	inc (ix+29)
_LABEL_D78B_:
	ld a, (ix+32)
	or a
	jr z, +
	ld a, (ix+27)
	and $03
	cp $03
	ret nz
+:
	ld a, (ix+26)
	or a
	jr z, _LABEL_D7E2_
	dec (ix+25)
	jr nz, _LABEL_D7E2_
	ld a, (ix+26)
	ld (ix+25), a
-:
	ld a, (ix+24)
	inc a
	and $03
	ld (ix+24), a
	jr z, ++
	cp $03
	jr z, -
	cp $02
	jr z, +
	ld a, (ix+22)
	or a
	jr z, -
	jr +++

+:
	ld a, (ix+23)
	or a
	jr z, -
	jr +++

++:
	xor a
+++:
	add a, (ix+18)
	ld de, _DATA_D868_
	ld l, a
	ld h, $00
	add hl, hl
	add hl, de
	ld a, (hl)
	ld (ix+3), a
	inc hl
	ld a, (hl)
	ld (ix+2), a
_LABEL_D7E2_:
	ld l, (ix+3)
	ld h, (ix+2)
	ld e, (ix+21)
	ld d, $00
	add hl, de
	ld e, (ix+20)
	and a
	sbc hl, de
	ld (ix+3), l
	ld (ix+2), h
	ld (ix+1), l
	ld (ix+0), h
	ld a, (ix+15)
	and $80
	jr z, _LABEL_D867_
	ld a, (ix+8)
	cp (ix+11)
	jr nc, +
	inc (ix+8)
	jr _LABEL_D867_

+:
	ld a, (ix+12)
	add a, (ix+9)
	ld (ix+9), a
	bit 7, a
	jr z, +
	neg
+:
	sub $40
	ld e, a
	ld a, (ix+13)
	or a
	jr nz, +
	ld e, $00
+:
	ld a, $08
	sub (ix+13)
-:
	or a
	jr z, +
	sra e
	dec a
	jr -

+:
	ld l, e
	ld h, $00
	bit 7, l
	jr z, +
	dec h
+:
	ld a, (ix+15)
	and $20
	jr z, +
	add hl, hl
	add hl, hl
	add hl, hl
+:
	add hl, hl
	ld a, (ix+18)
	inc a
-:
	sra h
	rr l
	sub $0C
	jr nc, -
	ld e, (ix+1)
	ld d, (ix+0)
	add hl, de
	ld (ix+1), l
	ld (ix+0), h
_LABEL_D867_:
	ret

; Data from D868 to D8FF (152 bytes)
_DATA_D868_:
.db $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02 $AB $02
.db $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01 $AF $01
.db $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01 $0F $01
.db $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00 $AB $00
.db $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00 $6C $00
.db $66 $00 $60 $00 $5B $00 $55 $00 $51 $00 $4C $00 $48 $00 $44 $00
.db $40 $00 $3C $00 $39 $00 $36 $00 $33 $00 $30 $00 $2D $00 $2B $00
.db $28 $00 $26 $00 $24 $00 $22 $00 $20 $00 $1E $00 $1C $00 $1B $00
.db $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13 $00 $12 $00 $11 $00
.db $FF $FF $FF $FF $FF $FF $FF $FF

; Data from D900 to DC51 (850 bytes)
_DATA_D900_:
.db $0C $10 $08 $0C $10 $08 $0C $0C $08 $0E $20 $08 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $0C $0C $04 $0C $08 $04 $10 $08
.db $04 $10 $10 $04 $0A $0A $04 $08 $04 $04 $00 $00 $00 $00 $00 $00
.db $04 $08 $04 $04 $08 $04 $08 $08 $08 $04 $04 $04 $10 $10 $10 $08
.db $20 $09 $08 $10 $08 $04 $10 $08 $01 $01 $04 $0C $10 $04 $04 $04
.db $04 $0C $02 $04 $0C $10 $04 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $02 $02 $02
.db $02 $02 $02 $03 $04 $04 $04 $04 $0A $02 $02 $02 $02 $02 $03 $04
.db $04 $04 $04 $04 $04 $04 $04 $FF $80 $08 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $08 $06 $06 $06 $06 $07 $00 $00 $00 $01 $02
.db $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $09 $00 $00 $00
.db $00 $00 $00 $FF $80 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $05
.db $06 $06 $06 $06 $06 $0B $04 $04 $04 $04 $04 $04 $04 $04 $0A $02
.db $02 $02 $02 $02 $09 $00 $00 $00 $01 $02 $02 $02 $02 $02 $02 $02
.db $02 $FF $80 $08 $06 $06 $06 $06 $07 $00 $00 $00 $00 $08 $06 $06
.db $06 $06 $06 $06 $06 $07 $00 $00 $00 $00 $00 $01 $02 $02 $09 $00
.db $00 $00 $00 $00 $01 $02 $02 $02 $02 $09 $00 $FF $00 $00 $00 $00
.db $00 $00 $00 $08 $07 $00 $00 $00 $00 $01 $09 $00 $00 $00 $00 $00
.db $00 $00 $00 $08 $06 $06 $0B $04 $04 $04 $04 $04 $04 $04 $04 $0A
.db $02 $02 $09 $00 $00 $00 $01 $02 $02 $02 $02 $02 $02 $02 $02 $02
.db $03 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04
.db $04 $FF $80 $04 $00 $00 $08 $07 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $01 $02 $02 $02 $09 $00 $00 $00 $00 $00 $00 $00 $00 $FF
.db $04 $04 $04 $04 $04 $04 $04 $0A $02 $02 $09 $00 $00 $00 $00 $01
.db $02 $02 $09 $00 $00 $FF $80 $08 $04 $04 $04 $04 $04 $04 $04 $04
.db $04 $04 $05 $0B $04 $04 $04 $04 $04 $04 $04 $FF $04 $04 $04 $04
.db $04 $04 $FF $00 $00 $00 $00 $00 $00 $FF $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $08 $07 $00 $00 $00 $00 $00 $00 $08 $06 $06 $0B $04
.db $04 $04 $04 $05 $06 $07 $00 $00 $00 $00 $01 $02 $02 $02 $09 $00
.db $00 $00 $00 $00 $FF $80 $02 $02 $02 $02 $02 $02 $02 $02 $02 $03
.db $04 $04 $04 $0A $02 $02 $09 $00 $01 $02 $02 $02 $02 $02 $03 $04
.db $04 $04 $04 $04 $04 $04 $05 $06 $06 $06 $06 $06 $0B $04 $04 $04
.db $05 $0B $04 $04 $04 $FF $80 $04 $00 $00 $00 $00 $FF $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $08 $06 $07 $00 $00 $00
.db $01 $02 $09 $00 $00 $00 $00 $FF $80 $04 $04 $04 $04 $04 $04 $04
.db $04 $04 $0A $02 $02 $02 $09 $00 $01 $02 $02 $02 $02 $02 $03 $04
.db $04 $04 $0A $02 $02 $03 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04
.db $04 $FF $04 $04 $04 $04 $FF $00 $00 $00 $01 $02 $02 $09 $00 $00
.db $00 $00 $08 $07 $08 $07 $00 $00 $00 $08 $06 $06 $06 $06 $07 $00
.db $00 $00 $00 $01 $02 $02 $02 $09 $00 $00 $00 $FF $04 $04 $04 $04
.db $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $04 $0A
.db $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $03 $04 $04 $FF $80 $09
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $09
.db $00 $00 $00 $00 $00 $00 $00 $FF $80 $04 $04 $04 $04 $04 $0A $02
.db $03 $04 $04 $0A $02 $03 $04 $04 $0A $02 $03 $04 $04 $0A $02 $03
.db $04 $04 $04 $04 $04 $05 $0B $04 $04 $FF $80 $06 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $08 $06 $06 $06 $06 $06 $07 $00 $00
.db $00 $00 $01 $02 $02 $02 $02 $02 $02 $03 $04 $04 $04 $04 $04 $04
.db $0A $02 $02 $02 $03 $04 $04 $04 $04 $04 $04 $04 $04 $04 $FF $80
.db $04 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $09 $00 $00 $00 $08
.db $06 $06 $06 $0B $04 $04 $04 $04 $04 $04 $0A $02 $02 $02 $09 $00
.db $00 $00 $00 $00 $08 $07 $00 $00 $00 $00 $00 $01 $02 $09 $00 $00
.db $00 $FF

; Data from DC52 to DC65 (20 bytes)
_DATA_DC52_:
.db $10 $00 $00 $00 $00 $F0 $00 $00 $F0 $00 $00 $00 $00 $10 $00 $00
.db $00 $00 $00 $20

; Data from DC66 to DCD8 (115 bytes)
_DATA_DC66_:
.db $00 $60 $06 $40 $00 $90 $02 $40 $00 $90 $06 $80 $06 $80 $04 $F0
.db $02 $40 $04 $30 $06 $40 $04 $60 $06 $40 $00 $60 $06 $80 $00 $30
.db $02 $80 $00 $E0 $00 $40 $02 $F0 $02 $10 $00 $F0 $06 $C0 $06 $C0
.db $04 $F0 $04 $30 $06 $40 $00 $F0 $00 $60 $02 $80 $00 $90 $06 $80
.db $00 $90 $02 $C0 $04 $F0 $04 $30 $02 $F0 $02 $50 $00 $90 $06 $40
.db $00 $90 $02 $40 $00 $90 $06 $40 $00 $60 $06 $40 $00 $60 $06 $40
.db $00 $60 $06 $40 $00 $60 $06 $40 $00 $30 $02 $F0 $02 $10 $00 $F0
.db $00 $B0 $FF

; Data from DCD9 to FFFF (8999 bytes)
_DATA_DCD9_:
.incbin "battlemaniacs.dis_DATA_DCD9_.inc"

.BANK 4
.ORG $0000

; Data from 10000 to 13FFF (16384 bytes)
.incbin "battlemaniacs.dis_DATA_10000_.inc"

.BANK 5
.ORG $0000

_LABEL_14000_:
	ld ix, _RAM_C400_
	ld b, $0E
_LABEL_14006_:
	ld a, (ix+0)
	and a
	jp z, _LABEL_140AB_
	ld c, a
	ld e, (ix+6)
	ld d, $00
	bit 7, e
	jp z, +
	ld d, $FF
+:
	ld l, (ix+2)
	ld h, (ix+3)
	add hl, de
	ld a, c
	cp $03
	jp nc, +++
	ld a, (_RAM_C7A9_)
	cp h
	jp nc, ++
	ld a, (_RAM_C7AA_)
	inc a
	cp h
	jr c, +
	jr nz, +++
	ld a, l
	cp $80
	jr c, +++
+:
	bit 7, d
	jr nz, +++
	jr ++++

++:
	bit 7, d
	jr nz, ++++
+++:
	ld (ix+2), l
	ld (ix+3), h
++++:
	ld e, (ix+7)
	ld d, $00
	bit 7, e
	jp z, +
	ld d, $FF
+:
	ld l, (ix+4)
	ld h, (ix+5)
	add hl, de
	ld a, c
	cp $03
	jp nc, ++
	ld a, (_RAM_C7AB_)
	cp h
	jp c, +
	ld hl, (_RAM_C7DD_)
	ld de, $0260
	add hl, de
	bit 7, (ix+7)
	jr z, ++
	ld (ix+7), $00
	ld a, (ix+8)
	and a
	jr nz, ++
	ld (ix+8), $03
	jr ++

+:
	ld a, (_RAM_C7AC_)
	cp h
	jp c, +++
++:
	ld (ix+4), l
	ld (ix+5), h
+++:
	ld a, (ix+8)
	add a, (ix+7)
	bit 7, a
	jp nz, +
	cp $50
	jp c, +
	ld a, $50
+:
	ld (ix+7), a
_LABEL_140AB_:
	ld de, $0030
	add ix, de
	dec b
	jp nz, _LABEL_14006_
	ret

; Data from 140B5 to 140EC (56 bytes)
_DATA_140B5_:
.db $FF $FF $FF $FF $01 $02 $FF $FF $03 $04 $05 $FF $02 $03 $FF $FF
.db $02 $03 $04 $FF $02 $03 $FF $FF $01 $02 $03 $FF $03 $04 $FF $FF
.db $04 $05 $06 $FF $03 $04 $05 $FF $02 $03 $04 $05 $01 $02 $04 $FF
.db $04 $05 $FF $FF $04 $05 $06 $07

; Data from 140ED to 14140 (84 bytes)
_DATA_140ED_:
.db $00 $00 $00 $00 $00 $00 $A9 $76 $05 $02 $EE $04 $BD $76 $08 $10
.db $E8 $02 $0D $77 $07 $FF $F0 $03 $29 $77 $08 $FF $F0 $03 $B1 $77
.db $05 $0C $EC $03 $C5 $77 $06 $10 $E8 $02 $DD $76 $05 $00 $00 $00
.db $F1 $76 $07 $00 $00 $00 $49 $77 $08 $18 $EC $02 $69 $77 $08 $18
.db $EC $02 $89 $77 $0A $00 $D6 $02 $DD $77 $06 $00 $00 $00 $F5 $77
.db $08 $00 $00 $00

; Data from 14141 to 17FFF (16063 bytes)
_DATA_14141_:
.incbin "battlemaniacs.dis_DATA_14141_.inc"

.BANK 6
.ORG $0000

_LABEL_18000_Intro:
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld ix, _DATA_1808B_IntroScript
  
_LABEL_18007_IntroLoop:
  ; Buttons break out of it
	call _LABEL_E7A_CheckForButton1
	jr nz, _LABEL_18082_IntroSkipped
	call _LABEL_E81_CheckForP21Or2
	jr nz, _LABEL_18082_IntroSkipped
  
  ; Get script control byte
  ; $ff = end
  ; $fe = pause
  ; $fc, $fd = show pictures
  ; <$fa = printable character
  
	ld a, (ix+0)
	cp $FF
	jr z, _LABEL_18073_IntroEnd
	cp $FE
	jr z, _Delay
	cp $FD
	jr z, _fcfd
	cp $FC
	jr z, _fcfd

	ld bc, $0E02 ; text location
	call _LABEL_57E7_SetTextToVRAMLocation
-:call _LABEL_5790_TextToVRAM
	ld a, (ix+0) ; Loop while printable
	cp $FA
	jr c, -
	jr _LABEL_18007_IntroLoop ; loop

_Delay:
	ld b, $64
	call _LABEL_E9C_SkippableDelay
	call _LABEL_E7A_CheckForButton1
	jr nz, _LABEL_18082_IntroSkipped
	call _LABEL_E81_CheckForP21Or2
	jr nz, _LABEL_18082_IntroSkipped
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	inc ix
	jr _LABEL_18007_IntroLoop

_fcfd:
	push ix
    cp $FC
    jp z, +
    call _LABEL_38E7_IntroPicture1 ; $fd ; Functions in low code so they can page...
    jr ++
+:  call _LABEL_38C4_IntroPicture2 ; $fc
++:	ld b, $64
    call _LABEL_E9C_SkippableDelay
    call _LABEL_E7A_CheckForButton1
    jr nz, +
    call _LABEL_E81_CheckForP21Or2
    jr nz, +
    call _LABEL_4EA_ResetScrollTile0AndTilemap
	pop ix
	inc ix
	jr _LABEL_18007_IntroLoop

_LABEL_18073_IntroEnd:
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld b, $03
	call _LABEL_D43_DelaySeconds
	xor a
	ld (_RAM_C822_IntroButtonPressed), a
	ret

+:
	pop ix
_LABEL_18082_IntroSkipped:
	call _LABEL_4EA_ResetScrollTile0AndTilemap
	ld a, $01
	ld (_RAM_C822_IntroButtonPressed), a
	ret

; Data from 1808B to 18402 (888 bytes)
_DATA_1808B_IntroScript:
.db "    THE 'TOADS ARE AT THE ",0
.db "     GYACHUNG-LA FORTRESS.",0
.db $fe ; pause
.db "         LOCATED IN",0
.db "    NORTHERN TIBET",0
.db " ASIA",0
.db $fe ; pause
.db " PROFESSOR T-BIRD STARTS..",0
.db "  'TOADS I HAVE INVITED YOU",0
.db " HERE TO WITNESS THE FIRST",0
.db $fe ; pause
.db "  DEMONSTRATION OF PSICONE'S",0
.db "     NEW GAMES GENERATOR",0
.db $fe ; pause
.db "           TRIDS 21",0
.db "   TOTAL REALITY INTEGRATED",0
.db "        PLAYING SYSTEM",0
.db $fe ; pause
.db "  WE'VE NAMED ITS ARTIFICIAL",0
.db "     WORLD THE GAMESCAPE",0
.db $fe ; pause
.db "  THE APPROACHING IMAGE IS A",0
.db " PIG OF THE APOCALYPSE, ONE OF",0
.db "     THE GAMES T",0
.db $fe ; pause
.db "   BEFORE THE PROFESSOR CAN",0
.db "    FINISH THE PIG LEAPS  OUT",0
.db "         OF THE SCREEN !!",0
.db $fe ; pause
.db "  IT GRABS MICHIKO TASHOKU,",0
.db "    DAUGHTER OF PSICONE'S",0
.db "       HEAD HONCHO!!",0
.db $fc ; picture
.db "  ZITZ LEAPS TO HER RESCUE,",0
.db "BUT HE TAKES A BEASTLY BASHING",0
.db "    AND IS CAPTURED TOO!",0
.db $fd ; picture
.db " WITH MICHIKO AND ZITZ IT'S",0
.db "PRISONER THE EVIL PIG ESCAPES",0
.db "   BACK INTO THE GAMESCAPE",0
.db $fe ; pause
.db "  THE DARK QUEEN HOLDS YOUR",0
.db "    FEEBLE FRIENDS CAPTIVE",0
.db " IF YOU TRY ANYTHING, YOU'LL",0
.db "    NEVER SEE THEM AGAIN!",0
.db $fe ; pause
.db 0 ; no text
.db $ff ; end of intro

; Data from 18403 to 18702 (768 bytes)
_DATA_18403_VirginLogoTilemap:
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $02 $03 $04
.db $05 $06 $07 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $08 $09 $0A $0B $0C
.db $0D $0E $0F $10 $11 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $12 $13 $14 $15 $16
.db $17 $18 $19 $1A $1B $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $1C $1D $1E $1F $20
.db $21 $22 $23 $24 $25 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $26 $27 $28 $29 $2A
.db $2B $2C $2D $2E $2F $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $30 $31 $32 $33 $34
.db $35 $36 $37 $38 $39 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $3A $3B $3C $3D $3E
.db $3F $37 $40 $41 $42 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $43 $44 $45 $46
.db $47 $48 $49 $4A $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $4B $4C $4D $4E $4F $50
.db $51 $52 $53 $54 $55 $56 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $57 $58 $59 $5A $5B $5C
.db $5D $5E $5F $60 $61 $62 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $63 $64 $65 $66 $67 $68
.db $69 $6A $6B $6C $6D $6E $6F $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $70 $71 $72 $73 $74
.db $75 $76 $77 $78 $79 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $7A $7B $7C $7D $7E $7F $80 $81 $82
.db $83 $84 $85 $86 $87 $88 $89 $8A $8B $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $8C $8D $8E $8F $90 $91 $92 $93 $94
.db $95 $96 $97 $98 $99 $9A $9B $9C $9D $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 18703 to 1884C (330 bytes)
_DATA_18703_TitleScreenTilemap:
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $02 $03 $04 $05 $06 $07
.db $08 $09 $0A $0B $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $0C $0D $0E $0F $10 $11 $12 $13 $14 $15 $16 $17
.db $18 $19 $1A $1B $1C $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $1D $1E $1F $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $2A $2B $2C
.db $2D $2E $2F $30 $31 $32 $00 $00 $00 $00 $00 $00 $00 $33 $34 $35
.db $36 $37 $38 $39 $3A $3B $3C $3D $3E $3F $40 $41 $42 $43 $44 $45
.db $46 $47 $48 $49 $4A $00 $00 $00 $4B $4C $4D $4E $4F $50 $51 $52
.db $53 $54 $55 $56 $57 $58 $59 $5A $5B $5C $5D $5E $5F $60 $61 $62
.db $63 $64 $65 $66 $67 $00 $68 $69 $6A $6B $6C $6D $6E $6F $70 $71
.db $72 $73 $00 $00 $00 $00 $00 $74 $75 $76 $77 $78 $79 $7A $7B $7C
.db $7D $7E $7F $00 $80 $81 $82 $83 $84 $85 $86 $87 $88 $89 $8A $00
.db $00 $00 $00 $00 $00 $00 $8B $8C $8D $8E $8F $90 $91 $92 $93 $94
.db $95 $00 $96 $97 $98 $99 $9A $9B $9C $9D $9E $9F $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $A0 $A1 $A2 $A3 $A4 $A5 $A6 $A7 $A8 $A9 $00
.db $AA $AB $AC $AD $AE $AF $B0 $B1 $B2 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $B3 $B4 $B5 $B6 $B7 $B8 $B9 $BA $BB $00 $BC $BD
.db $BE $BF $C0 $C1 $C2 $C3 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $C4 $C5 $C6 $C7 $C8 $C9 $CA $CB $00 $00 $CC $CD $CE
.db $CF $D0 $D1 $8A $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $D2 $D3 $D4 $D5 $D6 $D7 $D8 $00 $00

; Data from 1884D to 188DC (144 bytes)
_DATA_1884D_:
.db $00 $00 $01 $02 $03 $04 $05 $06 $07 $08 $00 $00 $00 $09 $0A $04
.db $04 $04 $04 $04 $04 $0B $0C $00 $01 $0A $04 $04 $0D $0E $0F $10
.db $04 $04 $11 $08 $14 $04 $04 $15 $16 $17 $18 $19 $1A $04 $04 $1B
.db $22 $04 $23 $24 $25 $26 $27 $28 $29 $2A $04 $2B $04 $34 $35 $36
.db $37 $38 $39 $3A $3B $3C $3D $3E $49 $4A $4B $4C $4D $4E $4F $50
.db $51 $52 $53 $54 $5F $60 $61 $62 $63 $64 $65 $66 $67 $68 $69 $6A
.db $74 $75 $76 $77 $78 $79 $7A $7B $7C $7D $7E $7F $88 $89 $8A $8B
.db $8C $8D $8E $8F $90 $00 $91 $92 $00 $9A $9B $9C $9D $9E $9F $A0
.db $A1 $A2 $A3 $A4 $00 $00 $00 $AD $AE $AF $B0 $B1 $B2 $B3 $00 $00

; Data from 188DD to 1896C (144 bytes)
_DATA_188DD_:
.db $00 $00 $01 $02 $03 $04 $05 $06 $07 $08 $00 $00 $00 $09 $0A $04
.db $04 $04 $04 $04 $04 $0B $0C $00 $01 $0A $04 $04 $12 $13 $04 $04
.db $04 $04 $11 $08 $14 $04 $04 $1C $1D $1E $04 $1F $20 $21 $04 $1B
.db $22 $1F $2C $2D $2E $2F $04 $30 $31 $32 $33 $2B $04 $3F $40 $41
.db $42 $43 $44 $45 $46 $47 $48 $3E $49 $55 $56 $57 $58 $59 $5A $5B
.db $5C $5D $5E $54 $5F $04 $05 $6B $6C $6D $6E $6F $70 $71 $72 $73
.db $74 $04 $04 $80 $81 $82 $83 $84 $85 $86 $04 $87 $88 $89 $04 $93
.db $94 $95 $96 $97 $98 $04 $99 $00 $00 $9A $A5 $04 $A6 $A7 $A8 $A9
.db $AA $AB $AC $00 $00 $00 $88 $B4 $B5 $B6 $B7 $B8 $B9 $00 $00 $00

; Data from 1896D to 1AB10 (8612 bytes)
_DATA_1896D_:
.incbin "battlemaniacs.dis_DATA_1896D_.inc"

; Data from 1AB11 to 1AB20 (16 bytes)
_DATA_1AB11_TilePalette:
.db $00 $3F $2A $15 $25 $0B $10 $1D $17 $08 $04 $14 $05 $06 $0A $0F

; Data from 1AB21 to 1AB30 (16 bytes)
_DATA_1AB21_IntroPalette:
.db $00 $3F $2A $15 $3A $33 $25 $0F $14 $10 $01 $05 $06 $0A $0B $33

; Data from 1AB31 to 1AB40 (16 bytes)
_DATA_1AB31_:
.db $00 $1B $0F $01 $02 $16 $06 $3F $2A $15 $17 $0B $2F $0A $03 $03

; Data from 1AB41 to 1AB50 (16 bytes)
_DATA_1AB41_:
.db $00 $2B $16 $06 $01 $3F $2A $15 $1A $25 $10 $00 $00 $2A $3F $14

; Data from 1AB51 to 1AB60 (16 bytes)
_DATA_1AB51_Palette:
.db $00 $3F $05 $06 $17 $0B $0F $0C $08 $04 $15 $2A $00 $3D $2D $03

; Data from 1AB61 to 1AB70 (16 bytes)
_DATA_1AB61_:
.db $00 $3F $06 $05 $1A $0B $0F $0C $08 $04 $15 $2A $00 $3D $2D $34

; Data from 1AB71 to 1ABB0 (64 bytes)
_DATA_1AB71_TitleScreenTilePalette:
.db $00 $3F $05 $06 $17 $0B $0F $0C $08 $04 $15 $2A $00 $3D $2D $34
.db $25 $01 $02 $17 $0B $00 $0F $05 $1A $2F $3F $15 $0F $0B $03 $2F
.db $10 $00 $05 $0A $06 $1B $2A $2F $3F $3F $2A $3F $2A $3F $2A $16
.db $00 $3F $14 $28 $03 $2B $17 $0F $34 $38 $15 $2A $00 $01 $02 $20

; Data from 1ABB1 to 1AC30 (128 bytes)
_DATA_1ABB1_:
.db $00 $3F $01 $02 $03 $2B $17 $0F $34 $38 $15 $2A $00 $01 $02 $20
.db $00 $3F $05 $06 $2F $0B $0F $22 $11 $04 $15 $2A $00 $03 $02 $29
.db $14 $00 $05 $0A $1B $16 $2F $0C $08 $04 $20 $34 $38 $3F $0F $16
.db $14 $00 $05 $0A $1B $16 $2F $0C $08 $04 $20 $34 $38 $3F $0F $16
.db $14 $00 $05 $0A $1B $16 $2F $0B $02 $01 $20 $31 $32 $3F $0F $16
.db $14 $00 $15 $2A $3A $29 $3F $3C $2C $15 $20 $34 $38 $3F $3E $16
.db $00 $3F $2A $15 $2B $0A $06 $02 $0F $32 $22 $03 $08 $01 $02 $10
.db $14 $00 $05 $0A $1B $16 $2F $0C $08 $04 $20 $34 $38 $3F $0F $1A

; Data from 1AC31 to 1AC40 (16 bytes)
_DATA_1AC31_VirginLogoPalette:
.db $03 $03 $02 $02 $02 $3F $3F $2A $2A $2A $15 $15 $15 $00 $00 $00

; Data from 1AC41 to 1AC50 (16 bytes)
_DATA_1AC41_TitleScreenSpritePalette:
.db $00 $15 $15 $2A $2A $3F $00 $00 $1B $05 $11 $0C $08 $04 $14 $00

; Data from 1AC51 to 1BFFF (5039 bytes)
_DATA_1AC51_:
.incbin "battlemaniacs.dis_DATA_1AC51_.inc"

_DATA_1AD19_:
.incbin "data.rnc"

.BANK 7
.ORG $0000

; Data from 1C000 to 1F291 (12946 bytes)
_DATA_1C000_:
.incbin "battlemaniacs.dis_DATA_1C000_.inc"

; Data from 1F292 to 1FFFF (3438 bytes)
_DATA_1F292_:
.incbin "battlemaniacs.dis_DATA_1F292_.inc"

_DATA_1F332_: ; intro data

.BANK 8
.ORG $0000

; Data from 20000 to 20B23 (2852 bytes)
_DATA_20000_:
.incbin "battlemaniacs.dis_DATA_20000_.inc"

; Data from 20B24 to 20BD3 (176 bytes)
_DATA_20B24_:
.db $06 $03 $1C $00 $0A $0C $1C $00 $0F $0E $08 $00 $13 $0E $08 $00
.db $17 $01 $08 $00 $17 $0E $08 $00 $22 $02 $29 $00 $66 $04 $09 $00
.db $72 $09 $1C $00 $76 $04 $1C $00 $7B $0F $08 $00 $7F $0F $08 $00
.db $83 $00 $08 $00 $8B $0F $08 $00 $93 $00 $29 $00 $D1 $04 $09 $00
.db $FF $FF $FF $FF $02 $20 $00 $10 $02 $17 $01 $10 $17 $0A $02 $10
.db $05 $02 $03 $10 $FF $FF $FF $00 $02 $1E $04 $0C $02 $19 $05 $0C
.db $17 $11 $06 $0C $17 $0E $07 $0C $07 $0B $08 $0C $02 $08 $09 $0C
.db $02 $04 $0A $0C $FF $FF $FF $00 $13 $22 $0B $10 $02 $1B $0C $08
.db $02 $1F $0D $0C $17 $1B $0E $10 $05 $0A $0F $0C $02 $06 $10 $0C
.db $FF $FF $FF $00 $17 $1F $11 $0C $02 $17 $12 $0C $17 $13 $13 $0C
.db $02 $11 $14 $0C $02 $11 $14 $0C $02 $08 $15 $10 $FF $FF $FF $00

; Data from 20BD4 to 23FFF (13356 bytes)
_DATA_20BD4_:
.incbin "battlemaniacs.dis_DATA_20BD4_.inc"

.BANK 9
.ORG $0000

; Data from 24000 to 27FFF (16384 bytes)
.incbin "battlemaniacs.dis_DATA_24000_.inc"

.BANK 10
.ORG $0000

; Data from 28000 to 2B550 (13649 bytes)
.incbin "battlemaniacs.dis_DATA_28000_.inc"

; Data from 2B551 to 2BFFF (2735 bytes)
_DATA_2B551_:
.incbin "battlemaniacs.dis_DATA_2B551_.inc"

.BANK 11
.ORG $0000

; Data from 2C000 to 2FFFF (16384 bytes)
.incbin "battlemaniacs.dis_DATA_2C000_.inc"

.BANK 12
.ORG $0000

; Data from 30000 to 3007F (128 bytes)
_DATA_30000_:
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D8 $00 $D9 $00 $DA $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $DB $00 $D7 $00 $D7 $00 $DC $00
.db $D7 $00 $DD $00 $D7 $00 $DE $00 $DF $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $E0 $00 $D7 $00 $D7 $00 $E1 $00
.db $D7 $00 $D7 $00 $E2 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $DD $00
.db $DB $02 $DD $00 $D7 $00 $E3 $00 $E4 $00 $D7 $00 $D7 $00 $E2 $00

; Data from 30080 to 302FF (640 bytes)
_DATA_30080_:
.db $D7 $00 $E5 $00 $D8 $00 $D9 $00 $DA $00 $E0 $02 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $DD $00
.db $D7 $00 $DD $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $E0 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $E2 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $E6 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $E1 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $E7 $00 $E8 $00 $E8 $00 $E8 $00 $E8 $00 $E7 $02
.db $D7 $00 $D7 $00 $E1 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $E9 $00
.db $EA $00 $EB $00 $EC $00 $E7 $00 $E8 $00 $E8 $00 $E8 $00 $E8 $00
.db $E7 $02 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $D7 $00 $D7 $00 $E8 $00 $ED $00 $EE $00 $EF $00 $F0 $00 $E8 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00 $D7 $00
.db $F1 $00 $F2 $00 $D7 $00 $E8 $00 $ED $00 $EE $00 $EF $00 $F0 $00
.db $E8 $00 $D7 $00 $D7 $00 $E2 $00 $D7 $00 $D7 $00 $D7 $00 $DD $00
.db $D7 $00 $DB $00 $E8 $00 $F3 $00 $F4 $00 $F5 $00 $F6 $00 $E8 $00
.db $D7 $00 $D7 $00 $D7 $00 $F7 $00 $F8 $00 $F8 $02 $F7 $02 $D7 $00
.db $D7 $00 $F9 $00 $D7 $00 $E8 $00 $F3 $00 $F4 $00 $F5 $00 $F6 $00
.db $E8 $00 $DB $00 $D7 $00 $D7 $00 $F7 $00 $F8 $00 $F8 $02 $F7 $02
.db $D7 $00 $D7 $00 $E8 $00 $FA $00 $FB $00 $FC $00 $FD $00 $E8 $00
.db $D7 $00 $D7 $00 $D7 $00 $FE $00 $FF $00 $FF $02 $00 $01 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $E8 $00 $FA $00 $FB $00 $FC $00 $FD $00
.db $E8 $00 $D7 $00 $D7 $00 $D7 $00 $FE $00 $FF $00 $FF $02 $00 $01
.db $DB $00 $D7 $00 $E8 $00 $FD $06 $01 $01 $02 $01 $03 $01 $E8 $00
.db $E1 $00 $D7 $00 $E1 $00 $04 $01 $05 $01 $05 $03 $04 $03 $DD $00
.db $D7 $00 $D7 $00 $D7 $00 $E8 $00 $FD $06 $01 $01 $02 $01 $03 $01
.db $E8 $00 $D7 $00 $DD $00 $D7 $00 $04 $01 $05 $01 $05 $03 $04 $03
.db $D7 $00 $DD $00 $E8 $00 $F6 $06 $F5 $06 $F4 $06 $F3 $06 $E8 $00
.db $D7 $00 $D7 $00 $D7 $00 $D7 $00 $06 $01 $06 $03 $D7 $00 $D7 $00
.db $E1 $00 $DD $00 $D7 $00 $E8 $00 $F6 $06 $F5 $06 $F4 $06 $F3 $06
.db $E8 $00 $D7 $00 $D7 $00 $DC $00 $D7 $00 $06 $01 $06 $03 $D7 $00
.db $D7 $00 $D7 $00 $E8 $00 $F0 $06 $07 $01 $08 $01 $ED $06 $E8 $00
.db $D7 $00 $D7 $00 $D7 $00 $09 $01 $0A $01 $0A $03 $0B $01 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $E8 $00 $F0 $06 $07 $01 $08 $01 $ED $06
.db $E8 $00 $D7 $00 $DB $00 $D7 $00 $09 $01 $0A $01 $0A $03 $0B $01
.db $D7 $00 $D7 $00 $E7 $04 $E8 $00 $E8 $00 $E8 $00 $E8 $00 $E7 $06
.db $D7 $00 $D7 $00 $D7 $00 $0C $01 $0D $01 $0D $03 $0C $03 $D7 $00
.db $D7 $00 $D7 $00 $D7 $00 $E7 $04 $E8 $00 $E8 $00 $E8 $00 $E8 $00
.db $E7 $06 $D7 $00 $D7 $00 $D7 $00 $0C $01 $0D $01 $0D $03 $0C $03

; Data from 30300 to 3235E (8287 bytes)
_DATA_30300_:
.incbin "battlemaniacs.dis_DATA_30300_.inc"

; Data from 3235F to 33FFF (7329 bytes)
_DATA_3235F_:
.incbin "battlemaniacs.dis_DATA_3235F_.inc"

.BANK 13
.ORG $0000

; Data from 34000 to 37FFF (16384 bytes)
.incbin "battlemaniacs.dis_DATA_34000_.inc"

.BANK 14
.ORG $0000

; Data from 38000 to 38BB6 (2999 bytes)
.incbin "battlemaniacs.dis_DATA_38000_.inc"

; Data from 38BB7 to 39747 (2961 bytes)
_DATA_38BB7_:
.incbin "battlemaniacs.dis_DATA_38BB7_.inc"

; Data from 39748 to 3AFC5 (6270 bytes)
_DATA_39748_:
.incbin "battlemaniacs.dis_DATA_39748_.inc"

; Data from 3AFC6 to 3BFFF (4154 bytes)
_DATA_3AFC6_:
.incbin "battlemaniacs.dis_DATA_3AFC6_.inc"

.BANK 15
.ORG $0000

; Data from 3C000 to 3CF1F (3872 bytes)
_DATA_3C000_:
.incbin "battlemaniacs.dis_DATA_3C000_.inc"

; Data from 3CF20 to 3D37F (1120 bytes)
_DATA_3CF20_:
.incbin "battlemaniacs.dis_DATA_3CF20_.inc"

; Data from 3D380 to 3D97F (1536 bytes)
_DATA_3D380_:
.incbin "battlemaniacs.dis_DATA_3D380_.inc"

; Data from 3D980 to 3D9FF (128 bytes)
_DATA_3D980_:
.db $00 $00 $FF $FF $00 $FF $00 $FF $EA $FF $00 $FF $EF $3F $00 $3F
.db $F7 $1F $00 $1F $FF $0F $00 $0F $FF $00 $00 $00 $FF $00 $00 $00
.db $00 $00 $FF $FF $00 $FF $00 $FF $57 $FF $00 $FF $F7 $FC $00 $FC
.db $EF $F8 $00 $F8 $FF $F0 $00 $F0 $FF $C0 $00 $C0 $FF $00 $00 $00
.db $FF $C0 $00 $C0 $FF $F0 $00 $F0 $EF $F8 $00 $F8 $F7 $FC $00 $FC
.db $A7 $FE $00 $FE $47 $FF $00 $FF $00 $FF $00 $FF $00 $00 $FF $FF
.db $FF $03 $00 $03 $FF $0F $00 $0F $F7 $1F $00 $1F $EF $3F $00 $3F
.db $EA $BF $00 $BF $E5 $FF $00 $FF $00 $FF $00 $FF $00 $00 $FF $FF

; Data from 3DA00 to 3DB7F (384 bytes)
_DATA_3DA00_:
.db $1F $7F $80 $FF $2F $7F $80 $FF $1F $7E $80 $FE $0B $7E $80 $FE
.db $07 $7C $80 $FC $3F $78 $80 $F8 $3F $70 $80 $F0 $3F $60 $80 $E0
.db $FC $06 $01 $07 $FC $06 $01 $07 $FC $0E $01 $0F $F0 $1E $01 $1F
.db $EC $3E $01 $3F $F8 $3E $01 $3F $FC $7E $01 $7F $F8 $7E $01 $7F
.db $3F $70 $80 $F0 $3F $60 $80 $E0 $3F $78 $80 $F8 $07 $7C $80 $FC
.db $1B $7E $80 $FE $2F $7E $80 $FE $1F $7F $80 $FF $2F $7F $80 $FF
.db $F8 $7E $01 $7F $FC $7E $01 $7F $F8 $3E $01 $3F $EC $3E $01 $3F
.db $F0 $1E $01 $1F $FC $0E $01 $0F $FC $06 $01 $07 $FC $06 $01 $07
.db $7F $C0 $00 $C0 $3F $E0 $00 $E0 $5F $E0 $00 $E0 $FF $E0 $00 $E0
.db $DF $E0 $00 $E0 $BF $C0 $00 $C0 $FF $00 $00 $00 $FF $00 $00 $00
.db $F8 $7E $01 $7F $FC $7E $01 $7F $F8 $3E $01 $3F $EC $3E $01 $3F
.db $F0 $1E $01 $1F $FC $0E $01 $0F $FC $06 $01 $07 $FC $CC $02 $CE
.db $FF $03 $00 $03 $FF $0F $00 $0F $F7 $1F $00 $1F $EF $3F $00 $3F
.db $EA $3F $00 $3F $E5 $FF $00 $FF $00 $FF $00 $FF $00 $00 $FF $FF
.db $F8 $FC $02 $FE $D0 $F8 $04 $FC $F0 $F8 $04 $FC $80 $F0 $08 $F8
.db $00 $E0 $10 $F0 $00 $C0 $20 $E0 $00 $00 $C0 $C0 $00 $00 $00 $00
.db $00 $00 $FF $FF $00 $FF $00 $FF $88 $F7 $00 $F7 $99 $F7 $00 $F7
.db $FF $66 $00 $66 $FF $01 $00 $01 $FF $03 $00 $03 $FF $03 $00 $03
.db $00 $00 $00 $00 $00 $00 $C0 $C0 $00 $C0 $20 $E0 $00 $E0 $10 $F0
.db $A0 $F0 $08 $F8 $50 $F8 $04 $FC $E0 $F8 $04 $FC $F0 $FC $02 $FE
.db $FF $E3 $00 $E3 $FF $FB $00 $FB $FF $FD $00 $FD $FF $FE $00 $FE
.db $FF $FE $00 $FE $BF $FF $00 $FF $5F $FF $00 $FF $3F $FF $00 $FF
.db $E8 $FC $02 $FE $F8 $F6 $01 $F7 $F8 $CE $01 $CF $FC $0E $01 $0F
.db $FC $06 $01 $07 $FC $06 $01 $07 $F8 $0E $01 $0F $F8 $0E $01 $0F

; Data from 3DB80 to 3E37F (2048 bytes)
_DATA_3DB80_:
.incbin "battlemaniacs.dis_DATA_3DB80_.inc"

; Data from 3E380 to 3E73F (960 bytes)
_DATA_3E380_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $00 $01 $01 $00 $00 $07 $07
.db $07 $00 $6F $6F $2A $05 $7D $7D $05 $02 $3F $3F $0A $08 $77 $77
.db $00 $00 $00 $00 $14 $08 $FE $FE $21 $C0 $E1 $E1 $1A $04 $FF $FF
.db $C1 $00 $FF $FF $80 $00 $FF $FF $02 $2C $FF $FF $C5 $C2 $3E $3E
.db $04 $02 $06 $06 $28 $10 $3E $3E $44 $82 $FE $FE $08 $10 $FE $FE
.db $20 $C0 $FE $FE $00 $00 $E0 $E0 $A0 $00 $FE $FE $54 $04 $FA $F8
.db $55 $17 $EA $E2 $17 $55 $E8 $E0 $55 $17 $AA $A2 $1F $4D $F2 $F2
.db $45 $00 $FF $FF $40 $05 $EF $EF $20 $40 $F7 $F7 $90 $00 $F8 $F8
.db $24 $23 $DF $1F $93 $00 $FF $3F $40 $50 $BB $3B $90 $A0 $79 $79
.db $60 $00 $F1 $F1 $00 $00 $E3 $E3 $03 $00 $07 $07 $00 $00 $0B $0B
.db $68 $00 $FE $FE $A8 $00 $FC $FC $80 $28 $FC $FC $00 $A8 $FC $FC
.db $20 $88 $FC $FC $88 $00 $FC $FC $10 $80 $F8 $F8 $90 $00 $F8 $F8
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $00 $01 $01 $00 $00 $07 $07
.db $07 $00 $6F $6F $2A $05 $7D $7D $05 $02 $3F $3F $0A $08 $77 $77
.db $40 $20 $78 $78 $82 $41 $F3 $F3 $21 $8E $EF $EF $08 $10 $FF $FF
.db $C1 $00 $FF $FF $80 $00 $FF $FF $02 $2C $FF $FF $C5 $C2 $3E $3E
.db $50 $28 $6E $6E $20 $D0 $FE $FE $14 $08 $FE $FE $50 $20 $FE $FE
.db $80 $00 $FE $FE $12 $0C $FE $FE $A0 $00 $FE $FE $54 $04 $FA $F8
.db $55 $17 $EA $E2 $17 $55 $E8 $E0 $55 $17 $AA $A2 $1F $4D $F2 $F2
.db $45 $00 $FF $FF $40 $05 $EF $EF $20 $40 $F7 $F7 $90 $00 $F8 $F8
.db $24 $23 $DF $1F $93 $00 $FF $3F $40 $50 $BB $3B $90 $A0 $79 $79
.db $60 $00 $F1 $F1 $00 $00 $E3 $E3 $03 $00 $07 $07 $00 $00 $0B $0B
.db $68 $00 $FE $FE $A8 $00 $FC $FC $80 $28 $FC $FC $00 $A8 $FC $FC
.db $20 $88 $FC $FC $88 $00 $FC $FC $10 $80 $F8 $F8 $90 $00 $F8 $F8
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $04 $00 $05 $05 $02 $00 $03 $03
.db $00 $00 $00 $00 $00 $00 $00 $00 $20 $40 $60 $60 $20 $40 $61 $61
.db $41 $00 $E3 $E3 $82 $41 $E7 $E7 $04 $02 $FF $FF $F0 $00 $FF $FF
.db $18 $00 $3C $3C $30 $08 $6C $6C $40 $30 $FC $FC $A0 $40 $F8 $F8
.db $40 $80 $F8 $F8 $90 $00 $F8 $F8 $20 $00 $F0 $F0 $40 $00 $E0 $E0
.db $01 $00 $03 $03 $08 $00 $1F $1F $09 $01 $1E $1E $16 $0A $1D $1C
.db $02 $02 $1D $1C $02 $02 $1D $1C $17 $09 $1E $1E $04 $00 $1F $1F
.db $50 $A0 $BF $BF $A0 $45 $FF $FF $58 $18 $E7 $E7 $A5 $E4 $5B $43
.db $F3 $A0 $1F $07 $A9 $EA $57 $47 $F2 $B4 $4E $4E $AC $00 $FF $FF
.db $10 $00 $F8 $F8 $28 $10 $FC $FC $50 $28 $EC $EC $48 $30 $FC $FC
.db $30 $00 $FC $FC $30 $00 $FC $FC $48 $20 $FC $FC $80 $50 $F8 $F8
.db $00 $00 $0F $0F $04 $02 $0F $0F $00 $00 $07 $07 $00 $00 $03 $03
.db $05 $04 $03 $03 $0A $0A $05 $01 $22 $22 $1D $01 $9B $83 $7C $00
.db $00 $A3 $FF $FF $00 $01 $FF $FF $20 $12 $FF $FF $D1 $08 $FF $FF
.db $2D $C0 $FF $FF $50 $A0 $BF $BF $C0 $00 $FC $FC $00 $00 $F0 $F0
.db $20 $90 $F8 $F8 $50 $20 $F8 $F8 $A0 $40 $F0 $F0 $40 $80 $E0 $E0
.db $00 $00 $C0 $C0 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $01 $01 $01 $01 $02 $02 $01 $01 $02 $02
.db $06 $00 $0F $0F $11 $06 $3E $3E $10 $0B $2F $2F $2C $40 $FF $FF
.db $34 $34 $C8 $C0 $B0 $80 $78 $08 $00 $00 $F0 $10 $40 $40 $A0 $20
.db $00 $00 $E0 $E0 $28 $C0 $FC $FC $E8 $04 $F4 $F4 $04 $00 $FE $FE
.db $00 $00 $61 $61 $61 $00 $F3 $F3 $50 $20 $FB $FB $10 $21 $7B $7B
.db $28 $11 $7F $7F $15 $08 $3F $3F $08 $04 $1F $1F $0A $04 $1F $1F
.db $A4 $13 $DF $DF $43 $00 $FF $FF $50 $88 $EF $EF $A9 $12 $FE $FE
.db $B4 $03 $FF $FF $68 $10 $DF $DF $57 $20 $FF $FF $2C $83 $FF $FF
.db $E4 $02 $FA $FA $C2 $00 $EE $EE $24 $00 $FE $FE $24 $C2 $FA $FA
.db $EA $04 $FE $FE $1C $00 $FE $FE $D4 $08 $FE $FE $68 $80 $FC $FC
.db $06 $00 $0F $0F $01 $02 $07 $07 $00 $00 $01 $01 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $A9 $06 $FE $FE $74 $03 $FF $FF $68 $10 $DF $DF $37 $00 $7F $7F
.db $0C $03 $3F $3F $36 $11 $6F $6F $43 $00 $7F $77 $10 $00 $78 $78
.db $28 $C0 $FC $FC $D0 $08 $FC $FC $10 $08 $FC $FC $C0 $00 $F8 $F8
.db $A0 $40 $70 $70 $20 $C0 $F8 $F8 $C8 $00 $FC $EC $30 $00 $78 $78

; Data from 3E740 to 3E83F (256 bytes)
_DATA_3E740_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $02 $02 $02 $02 $0D $0D
.db $07 $05 $3A $38 $38 $38 $47 $47 $2F $12 $FD $C0 $BF $83 $7C $C0
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $01 $01 $01 $3E $3E
.db $3B $22 $DD $C4 $06 $05 $FB $F8 $3F $C0 $FF $00 $CF $33 $FC $00
.db $00 $00 $00 $00 $00 $00 $01 $01 $01 $01 $C2 $C2 $C3 $C2 $3D $3C
.db $63 $A8 $D7 $1C $EB $2A $D5 $1C $D9 $59 $A6 $3E $3A $2A $C5 $ED
.db $00 $00 $72 $72 $72 $72 $8D $8D $FF $89 $76 $00 $AB $55 $DE $00
.db $0D $F2 $FF $00 $1F $ED $F2 $00 $F3 $10 $EE $0C $0B $02 $FD $F4
.db $D9 $59 $26 $66 $E2 $A2 $1D $BD $4F $48 $B7 $B0 $37 $14 $6B $48
.db $07 $06 $39 $38 $03 $03 $04 $04 $02 $02 $01 $03 $00 $00 $00 $00
.db $FC $C4 $3B $03 $00 $00 $FF $FF $C3 $C1 $3E $3C $BE $B2 $4D $41
.db $80 $80 $7E $7E $00 $00 $80 $80 $00 $00 $00 $00 $00 $00 $00 $00
.db $72 $C9 $07 $CC $37 $74 $8B $F8 $07 $06 $F9 $F8 $04 $04 $0B $0B
.db $03 $02 $05 $04 $00 $00 $03 $03 $00 $00 $00 $00 $00 $00 $00 $00
.db $3B $C9 $F4 $04 $30 $D0 $EF $0F $EF $29 $D6 $10 $13 $12 $ED $EC
.db $E1 $21 $D2 $12 $01 $00 $E0 $E0 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 3E840 to 3E8BF (128 bytes)
_DATA_3E840_:
.db $00 $00 $7F $7F $23 $37 $48 $7F $70 $5B $84 $DF $00 $49 $B6 $FF
.db $00 $84 $7B $FF $84 $84 $7B $FF $84 $84 $7B $FF $84 $00 $7B $7B
.db $00 $00 $FF $FF $FF $01 $00 $01 $FF $FF $00 $FF $00 $FF $00 $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $84 $00 $7B $7B $84 $84 $7B $FF $84 $84 $7B $FF $00 $84 $7B $FF
.db $00 $49 $B6 $FF $70 $5B $84 $DF $23 $37 $48 $7F $00 $00 $7F $7F
.db $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $00 $FF $00 $FF $FF $FF $00 $FF $FF $81 $00 $81 $00 $00 $FF $FF

; Data from 3E8C0 to 3EA3F (384 bytes)
_DATA_3E8C0_:
.db $07 $06 $00 $06 $3F $31 $00 $31 $7F $5B $00 $5B $FF $AC $00 $AC
.db $FF $44 $00 $44 $FF $46 $00 $46 $FF $DD $00 $DD $FF $68 $00 $68
.db $C0 $40 $00 $40 $E0 $20 $00 $20 $F8 $B8 $00 $B8 $FC $EC $00 $EC
.db $FE $46 $00 $46 $FF $B7 $00 $B7 $FF $03 $00 $03 $FF $05 $00 $05
.db $FF $48 $00 $48 $FF $84 $00 $84 $FF $C6 $00 $C6 $7F $08 $00 $08
.db $7F $04 $00 $04 $7F $4B $00 $4B $3F $3E $00 $3E $03 $03 $00 $03
.db $FF $01 $00 $01 $FF $03 $00 $03 $FF $01 $00 $01 $FE $02 $00 $02
.db $FC $04 $00 $04 $FC $0C $00 $0C $F8 $D8 $00 $D8 $E0 $20 $00 $20
.db $00 $00 $00 $00 $00 $00 $00 $00 $03 $03 $00 $03 $0F $08 $00 $08
.db $1F $15 $00 $15 $3F $12 $00 $12 $3F $13 $00 $13 $3F $36 $00 $36
.db $00 $00 $00 $00 $00 $00 $00 $00 $C0 $C0 $00 $C0 $E0 $20 $00 $20
.db $F0 $B0 $00 $B0 $F8 $48 $00 $48 $F8 $A8 $00 $A8 $FC $04 $00 $04
.db $3F $14 $00 $14 $3F $22 $00 $22 $3F $33 $00 $33 $1F $02 $00 $02
.db $1F $15 $00 $15 $0F $0F $00 $0F $00 $00 $00 $00 $00 $00 $00 $00
.db $FC $04 $00 $04 $FC $04 $00 $04 $FC $04 $00 $04 $F8 $08 $00 $08
.db $F0 $10 $00 $10 $E0 $E0 $00 $E0 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $1E $1E $00 $1E $3F $21 $00 $21 $7F $4A $00 $4A $7F $0D $00 $0D
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $18 $18 $00 $18 $3C $24 $00 $24 $BE $82 $00 $82 $BE $A2 $00 $A2
.db $7F $10 $00 $10 $7F $48 $00 $48 $7F $48 $00 $48 $3F $30 $00 $30
.db $1F $1F $00 $1F $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $DC $5C $00 $5C $C0 $40 $00 $40 $C0 $40 $00 $40 $80 $80 $00 $80
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 3EA40 to 3EBBF (384 bytes)
_DATA_3EA40_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $01 $01 $25 $20 $08 $0F $3D $15 $24 $0A $07 $20 $31 $0E
.db $00 $00 $00 $00 $00 $00 $00 $00 $0A $05 $35 $3D $04 $10 $D3 $FF
.db $B5 $05 $2A $F8 $E0 $00 $1F $FF $9B $11 $00 $EE $FB $88 $11 $66
.db $00 $00 $00 $00 $00 $00 $00 $00 $10 $40 $4C $FC $D0 $30 $70 $EC
.db $78 $04 $8E $FE $08 $42 $42 $FF $17 $40 $40 $FF $D4 $02 $02 $FF
.db $30 $00 $7D $4F $06 $01 $B1 $FF $4F $10 $92 $FF $26 $10 $51 $7F
.db $10 $00 $2E $3E $0C $04 $1A $12 $0C $04 $08 $00 $08 $08 $00 $00
.db $00 $00 $99 $FF $66 $08 $08 $FF $FB $00 $20 $FF $06 $00 $F8 $FF
.db $00 $00 $07 $07 $00 $00 $01 $01 $00 $00 $00 $00 $00 $00 $00 $00
.db $25 $10 $90 $FF $59 $00 $00 $FF $AF $00 $00 $FF $A4 $10 $13 $FF
.db $48 $00 $04 $FC $00 $00 $F8 $F8 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $01 $01 $01 $00 $06 $07 $04 $01 $09 $0F
.db $02 $02 $12 $1D $00 $00 $08 $0F $04 $02 $07 $01 $04 $04 $02 $02
.db $00 $00 $3F $3F $22 $11 $D1 $FD $1A $20 $31 $FF $62 $82 $DD $FC
.db $4C $00 $03 $FF $CB $18 $18 $F7 $79 $01 $85 $FE $32 $00 $2F $1D
.db $00 $00 $80 $80 $00 $80 $F0 $F0 $00 $00 $8C $FC $80 $A0 $62 $7E
.db $58 $04 $85 $FF $AA $60 $60 $DF $15 $B0 $B0 $EF $0D $02 $82 $FF
.db $00 $00 $00 $00 $00 $00 $04 $04 $04 $02 $04 $00 $00 $05 $06 $00
.db $03 $05 $06 $00 $00 $00 $0E $0F $01 $02 $0A $0F $07 $00 $01 $06
.db $01 $01 $22 $22 $20 $20 $00 $00 $10 $32 $2F $0D $24 $01 $73 $5F
.db $0D $00 $A0 $FF $E4 $10 $51 $FF $60 $00 $1E $FE $80 $80 $60 $60
.db $45 $42 $B2 $BF $7B $10 $60 $0F $0B $10 $B0 $FF $56 $00 $00 $FF
.db $E4 $18 $18 $FF $5A $00 $81 $FF $00 $00 $FE $FE $00 $00 $00 $00

; Data from 3EBC0 to 3EBDF (32 bytes)
_DATA_3EBC0_:
.db $00 $00 $00 $00 $00 $00 $18 $18 $00 $00 $7E $7E $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $7E $7E $00 $00 $18 $18 $00 $00 $00 $00

; Data from 3EBE0 to 3ECFF (288 bytes)
_DATA_3EBE0_:
.db $00 $00 $38 $38 $18 $20 $7C $7C $3C $58 $C6 $DE $3C $58 $C6 $DE
.db $3C $58 $C6 $DE $08 $30 $7C $7C $00 $00 $38 $38 $00 $00 $00 $00
.db $00 $00 $03 $00 $03 $00 $0F $00 $0C $03 $1F $00 $14 $08 $3C $00
.db $20 $10 $70 $00 $31 $00 $71 $00 $40 $20 $E3 $00 $40 $20 $E0 $00
.db $00 $00 $E0 $00 $E0 $00 $F8 $00 $2C $D0 $FE $00 $0A $04 $0F $00
.db $01 $02 $03 $00 $43 $00 $C3 $00 $02 $01 $53 $00 $12 $00 $13 $00
.db $82 $40 $C2 $00 $00 $40 $C3 $00 $01 $40 $C1 $00 $80 $40 $C0 $00
.db $60 $00 $E0 $00 $04 $38 $7C $00 $0C $03 $3F $00 $02 $00 $0F $00
.db $02 $01 $03 $00 $00 $02 $23 $00 $41 $02 $E3 $00 $06 $00 $07 $00
.db $00 $04 $06 $00 $14 $08 $1E $00 $10 $E0 $FC $00 $60 $00 $F0 $00
.db $00 $00 $00 $00 $04 $08 $0C $00 $00 $10 $10 $00 $00 $20 $21 $00
.db $00 $40 $46 $00 $40 $00 $40 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $10 $08 $18 $00 $00 $04 $04 $00 $00 $02 $82 $00
.db $00 $01 $01 $00 $01 $00 $19 $00 $00 $00 $04 $00 $00 $00 $00 $00
.db $00 $00 $08 $00 $00 $00 $08 $00 $00 $00 $04 $00 $40 $00 $40 $00
.db $00 $40 $40 $00 $00 $20 $20 $00 $00 $10 $10 $00 $04 $08 $0C $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $00 $01 $00 $C1 $00
.db $00 $01 $01 $00 $00 $02 $02 $00 $00 $04 $04 $00 $10 $08 $18 $00

; Data from 3ED00 to 3EDFF (256 bytes)
_DATA_3ED00_:
.db $00 $00 $E0 $E0 $00 $00 $F8 $18 $00 $00 $FF $FF $7F $7F $80 $80
.db $00 $00 $FF $FF $00 $00 $F8 $18 $00 $00 $E0 $E0 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $FF $FF $FF $80 $7F $00
.db $00 $00 $FF $FF $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $FF $FF $FF $00 $FF $00
.db $00 $00 $FF $FF $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $38 $38 $18 $18 $26 $3E $0E $1A $E1 $FB $E7 $6D $90 $1D
.db $0E $1A $E1 $FB $18 $18 $26 $3E $00 $00 $38 $38 $00 $00 $00 $00
.db $00 $00 $1C $1C $18 $18 $64 $7C $70 $58 $87 $DF $E7 $B6 $09 $B8
.db $70 $58 $87 $DF $18 $18 $64 $7C $00 $00 $1C $1C $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $FF $FF $FF $00 $FF $00
.db $00 $00 $FF $FF $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $FF $FF $FF $01 $FE $00
.db $00 $00 $FF $FF $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $07 $07 $00 $00 $1F $18 $00 $00 $FF $FF $FE $FE $01 $01
.db $00 $00 $FF $FF $00 $00 $1F $18 $00 $00 $07 $07 $00 $00 $00 $00

; Data from 3EE00 to 3EE7F (128 bytes)
_DATA_3EE00_:
.db $00 $00 $00 $00 $07 $00 $04 $04 $3F $00 $23 $23 $7C $00 $5C $5C
.db $60 $00 $20 $20 $7C $00 $30 $30 $7F $00 $4D $4D $03 $00 $02 $02
.db $00 $00 $00 $00 $80 $00 $80 $80 $80 $00 $00 $00 $80 $00 $80 $80
.db $20 $00 $20 $20 $60 $00 $40 $40 $E0 $00 $20 $20 $80 $00 $80 $80
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $07 $00 $04 $04 $3F $00 $23 $23 $7C $00 $5C $5C $60 $00 $20 $20
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $80 $00 $80 $80 $80 $00 $00 $00 $80 $00 $80 $80 $20 $00 $20 $20

; Data from 3EE80 to 3EF7F (256 bytes)
_DATA_3EE80_:
.db $0F $1F $20 $3F $00 $00 $03 $03 $00 $01 $02 $03 $01 $01 $02 $03
.db $01 $00 $1E $1E $11 $1D $62 $63 $00 $3F $C0 $C0 $34 $40 $FF $80
.db $F0 $D8 $04 $DC $00 $00 $80 $80 $00 $00 $80 $80 $00 $00 $80 $80
.db $00 $00 $FF $FF $02 $7E $81 $81 $04 $F6 $09 $09 $8A $0A $F5 $15
.db $40 $00 $FF $80 $7D $00 $8A $80 $2B $00 $D4 $80 $69 $00 $D6 $80
.db $00 $00 $FF $80 $40 $00 $FF $80 $40 $00 $FF $80 $00 $00 $FF $80
.db $34 $16 $E9 $09 $EA $0A $95 $15 $54 $16 $A9 $09 $4A $0A $B5 $15
.db $14 $16 $E9 $09 $28 $0A $F5 $15 $30 $14 $EA $0A $00 $08 $F4 $14
.db $00 $00 $00 $00 $00 $00 $00 $00 $0F $1F $20 $3F $00 $00 $03 $03
.db $00 $01 $1E $1F $11 $1D $62 $63 $00 $3F $C0 $C0 $34 $40 $FF $80
.db $00 $00 $00 $00 $00 $00 $00 $00 $F0 $D8 $04 $DC $00 $00 $80 $80
.db $00 $00 $FF $FF $02 $7E $81 $81 $04 $F6 $09 $09 $8A $0A $F5 $15
.db $40 $00 $FF $80 $7D $00 $8A $80 $2B $00 $D4 $80 $69 $00 $D6 $80
.db $00 $00 $FF $80 $40 $00 $FF $80 $40 $00 $FF $80 $00 $00 $FF $80
.db $34 $16 $E9 $09 $EA $0A $95 $15 $54 $16 $A9 $09 $4A $0A $B5 $15
.db $14 $16 $E9 $09 $28 $0A $F5 $15 $30 $14 $EA $0A $00 $08 $F4 $14

; Data from 3EF80 to 3F01F (160 bytes)
_DATA_3EF80_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $02 $02 $00 $02 $07 $05 $00 $05
.db $07 $00 $00 $00 $FD $F8 $00 $F8 $7C $00 $00 $00 $60 $40 $00 $40
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $10 $10 $00 $10
.db $F0 $D0 $00 $D0 $F0 $10 $00 $10 $38 $18 $00 $18 $3C $0C $00 $0C
.db $20 $00 $00 $00 $30 $20 $00 $20 $30 $20 $00 $20 $30 $20 $00 $20
.db $3E $24 $00 $24 $33 $30 $00 $30 $03 $02 $00 $02 $01 $01 $00 $01
.db $0E $02 $00 $02 $1C $04 $00 $04 $38 $18 $00 $18 $70 $10 $00 $10
.db $F0 $50 $00 $50 $B0 $B0 $00 $B0 $00 $00 $00 $00 $00 $00 $00 $00
.db $02 $00 $00 $00 $40 $00 $00 $00 $28 $00 $00 $00 $1C $00 $00 $00
.db $B8 $00 $00 $00 $14 $00 $00 $00 $51 $00 $00 $00 $08 $00 $00 $00

; Data from 3F020 to 3F74F (1840 bytes)
_DATA_3F020_:
.incbin "battlemaniacs.dis_DATA_3F020_.inc"

; Data from 3F750 to 3F76F (32 bytes)
_DATA_3F750_:
.db $02 $30 $08 $38 $63 $71 $08 $79 $E3 $FA $04 $FE $30 $BA $04 $BE
.db $40 $22 $1C $3E $00 $14 $E3 $F7 $62 $2A $04 $2E $23 $05 $08 $0D

; Data from 3F770 to 3FA6F (768 bytes)
_DATA_3F770_:
.db $00 $00 $1F $1F $0C $00 $70 $7F $07 $3F $40 $7F $00 $00 $7F $7F
.db $00 $3C $43 $7F $00 $3A $45 $7F $02 $06 $79 $7F $02 $3A $45 $7F
.db $00 $00 $FF $FF $C0 $FF $FF $3F $FF $A0 $00 $A0 $00 $00 $FF $FF
.db $77 $F4 $08 $FC $F9 $C9 $06 $CF $7E $E6 $01 $E7 $7E $F0 $01 $F1
.db $00 $00 $FF $FF $04 $FC $FC $FB $FF $0B $00 $0B $00 $00 $FF $FF
.db $DB $5B $24 $7F $3A $2B $C4 $EF $F9 $DB $04 $DF $FC $0C $03 $0F
.db $00 $00 $F8 $F8 $30 $00 $0E $FE $F0 $FC $02 $FE $00 $00 $FE $FE
.db $00 $D4 $2A $FE $80 $D4 $2A $FE $00 $D0 $2E $FE $00 $34 $CA $FE
.db $00 $3A $45 $7F $00 $00 $7F $7F $00 $0F $10 $1F $01 $07 $08 $0F
.db $00 $01 $06 $07 $00 $00 $01 $01 $00 $00 $00 $00 $00 $00 $00 $00
.db $3E $E0 $01 $E1 $00 $00 $FF $FF $00 $BF $40 $FF $BF $B0 $40 $F0
.db $A1 $A9 $56 $FF $31 $34 $CA $FE $51 $79 $86 $FF $00 $00 $FF $FF
.db $FD $07 $00 $07 $00 $00 $FF $FF $00 $D2 $2D $FF $A4 $AE $51 $FF
.db $AF $0B $50 $5B $8E $17 $60 $77 $FC $2E $01 $2F $00 $00 $FF $FF
.db $40 $F4 $0A $FE $00 $00 $FE $FE $40 $D0 $28 $F8 $80 $E0 $10 $F0
.db $00 $80 $60 $E0 $00 $00 $80 $80 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $1F $1F $0D $01 $70 $7E $07 $3F $40 $7F $00 $00 $7F $7F
.db $00 $3C $43 $7F $00 $3A $45 $7F $02 $06 $79 $7F $02 $3A $45 $7F
.db $E0 $80 $7F $1F $EC $63 $9B $1B $FF $A0 $00 $A0 $00 $00 $FF $FF
.db $77 $F4 $08 $FC $F9 $C9 $06 $CF $7E $E6 $01 $E7 $7E $F0 $01 $F1
.db $1C $14 $EB $E3 $1E $FA $E5 $E1 $FF $0B $00 $0B $00 $00 $FF $FF
.db $DB $5B $24 $7F $3A $2B $C4 $EF $F9 $DB $04 $DF $FC $0C $03 $0F
.db $00 $00 $F8 $F8 $30 $00 $8E $FE $F0 $FC $02 $FE $00 $00 $FE $FE
.db $00 $D4 $2A $FE $80 $D4 $2A $FE $00 $D0 $2E $FE $00 $34 $CA $FE
.db $00 $3A $45 $7F $00 $00 $7F $7F $00 $0F $10 $1F $01 $07 $08 $0F
.db $00 $01 $06 $07 $00 $00 $01 $01 $00 $00 $00 $00 $00 $00 $00 $00
.db $3E $E0 $01 $E1 $00 $00 $FF $FF $00 $BF $40 $FF $BF $B0 $40 $F0
.db $A1 $A9 $56 $FF $31 $34 $CA $FE $51 $79 $86 $FF $00 $00 $FF $FF
.db $FD $07 $00 $07 $00 $00 $FF $FF $00 $D2 $2D $FF $A4 $AE $51 $FF
.db $AF $0B $50 $5B $8E $17 $60 $77 $FC $2E $01 $2F $00 $00 $FF $FF
.db $40 $F4 $0A $FE $00 $00 $FE $FE $40 $D0 $28 $F8 $80 $E0 $10 $F0
.db $00 $80 $60 $E0 $00 $00 $80 $80 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $1F $1F $0C $00 $70 $7F $07 $3F $40 $7F $00 $00 $7F $7F
.db $00 $3C $43 $7F $00 $3A $45 $7F $02 $06 $79 $7F $02 $3A $45 $7F
.db $68 $60 $E7 $9F $B0 $B3 $F7 $4F $FF $A0 $00 $A0 $00 $00 $FF $FF
.db $77 $F4 $08 $FC $F9 $C9 $06 $CF $7E $E6 $01 $E7 $7E $F0 $01 $F1
.db $38 $18 $DB $E7 $70 $30 $B4 $CF $FF $0B $00 $0B $00 $00 $FF $FF
.db $DB $5B $24 $7F $3A $2B $C4 $EF $F9 $DB $04 $DF $FC $0C $03 $0F
.db $00 $00 $F8 $F8 $30 $00 $0E $FE $F0 $FC $02 $FE $00 $00 $FE $FE
.db $00 $D4 $2A $FE $80 $D4 $2A $FE $00 $D0 $2E $FE $00 $34 $CA $FE
.db $00 $3A $45 $7F $00 $00 $7F $7F $00 $0F $10 $1F $01 $07 $08 $0F
.db $00 $01 $06 $07 $00 $00 $01 $01 $00 $00 $00 $00 $00 $00 $00 $00
.db $3E $E0 $01 $E1 $00 $00 $FF $FF $00 $BF $40 $FF $BF $B0 $40 $F0
.db $A1 $A9 $56 $FF $31 $34 $CA $FE $51 $79 $86 $FF $00 $00 $FF $FF
.db $FD $07 $00 $07 $00 $00 $FF $FF $00 $D2 $2D $FF $A4 $AE $51 $FF
.db $AF $0B $50 $5B $8E $17 $60 $77 $FC $2E $01 $2F $00 $00 $FF $FF
.db $40 $F4 $0A $FE $00 $00 $FE $FE $40 $D0 $28 $F8 $80 $E0 $10 $F0
.db $00 $80 $60 $E0 $00 $00 $80 $80 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 3FA70 to 3FE6F (1024 bytes)
_DATA_3FA70_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $01 $01 $01 $02 $02
.db $01 $01 $02 $02 $01 $01 $02 $02 $00 $00 $01 $01 $00 $00 $00 $00
.db $00 $00 $70 $70 $61 $70 $8B $8A $F1 $18 $E7 $06 $9B $08 $F7 $64
.db $CD $65 $9A $12 $88 $48 $B7 $37 $89 $8D $72 $73 $7E $46 $B9 $81
.db $00 $00 $60 $60 $20 $00 $F0 $D0 $40 $00 $F0 $B0 $E0 $40 $B0 $10
.db $90 $40 $B8 $28 $E8 $A8 $54 $1C $00 $00 $FE $FE $4C $4C $B3 $B3
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $01 $01 $00 $00 $01 $01 $00 $00 $00 $00 $00 $00 $03 $03
.db $03 $02 $05 $04 $06 $05 $0B $08 $05 $02 $0F $08 $0B $0D $16 $10
.db $C2 $BD $7F $00 $FF $86 $79 $00 $61 $61 $9E $9E $0C $08 $F7 $F3
.db $87 $8D $72 $70 $C0 $40 $BF $3F $90 $BC $43 $43 $7C $6A $91 $C1
.db $E5 $18 $FE $02 $D4 $68 $BF $03 $7C $A6 $D9 $01 $B0 $D8 $66 $06
.db $04 $06 $F9 $F9 $18 $18 $E7 $E0 $26 $26 $59 $40 $40 $40 $BF $80
.db $00 $00 $80 $80 $00 $00 $80 $80 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $FF $FF $3F $21 $C0 $01 $3F $21 $C0 $01 $3F $21 $C0 $01
.db $06 $0A $1D $11 $04 $0E $19 $11 $08 $04 $1B $13 $1E $13 $20 $33
.db $1D $06 $A0 $A6 $9D $06 $20 $26 $9C $8A $61 $EB $C0 $9E $21 $BF
.db $EE $91 $38 $80 $FF $81 $10 $80 $F7 $11 $08 $01 $6F $21 $90 $81
.db $77 $05 $88 $81 $6E $0B $90 $83 $00 $FF $00 $FF $B6 $8B $7C $41
.db $80 $80 $7F $00 $00 $00 $FF $87 $14 $16 $E9 $8F $2C $AA $51 $1B
.db $0C $08 $F2 $9A $00 $00 $FF $8F $00 $00 $FF $80 $46 $46 $B9 $80
.db $3F $21 $C0 $01 $00 $00 $FF $FF $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $FF $FF $3F $21 $C0 $01 $3F $21 $C0 $01
.db $61 $40 $9F $DE $1F $00 $7F $60 $1F $11 $0E $00 $0F $0F $30 $30
.db $1F $38 $47 $40 $3F $20 $5F $40 $07 $07 $38 $38 $00 $00 $00 $00
.db $BC $A6 $59 $43 $91 $99 $66 $6E $82 $82 $5D $5D $00 $06 $F9 $F9
.db $F7 $16 $E9 $08 $FB $08 $E7 $04 $F8 $88 $27 $07 $00 $00 $00 $00
.db $20 $20 $DF $C0 $18 $18 $A7 $A0 $00 $00 $1F $1F $00 $00 $F0 $F0
.db $F0 $10 $E8 $08 $F8 $08 $B4 $04 $78 $08 $A4 $84 $00 $00 $00 $00
.db $3F $21 $C0 $01 $3F $21 $C0 $01 $00 $00 $FF $FF $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $01 $01 $01 $00 $03 $02 $03 $02 $05 $04
.db $03 $02 $05 $04 $03 $02 $05 $04 $01 $01 $02 $02 $00 $00 $01 $01
.db $00 $00 $E0 $E0 $C2 $E0 $17 $15 $E2 $30 $CF $0D $37 $10 $EF $C8
.db $9B $CA $35 $24 $11 $91 $6E $6E $12 $1A $E5 $E7 $FC $8C $73 $03
.db $00 $00 $C0 $C0 $40 $00 $E0 $A0 $80 $00 $E0 $60 $C0 $80 $60 $20
.db $20 $80 $70 $50 $D0 $50 $A8 $38 $00 $00 $FC $FC $98 $98 $66 $66
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $01 $01 $02 $02 $01 $01 $02 $02 $00 $00 $01 $01 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $03 $03 $03 $03 $04 $04 $00 $00 $07 $07
.db $85 $7A $FF $00 $FF $0C $F3 $00 $C2 $C3 $3D $3C $19 $11 $EE $E6
.db $06 $0C $73 $71 $21 $21 $DE $DE $C9 $C2 $35 $F4 $7B $4B $04 $4C
.db $CA $30 $FD $05 $A8 $D0 $7F $07 $F8 $4C $B2 $02 $60 $B0 $CD $0D
.db $06 $00 $FF $F9 $FE $00 $FF $01 $0E $F0 $FF $01 $F8 $00 $FF $07
.db $00 $00 $78 $78 $60 $78 $04 $7C $FC $C4 $02 $C6 $7C $84 $02 $86
.db $7C $84 $02 $86 $78 $D8 $04 $DC $00 $00 $F8 $F8 $00 $00 $00 $00
.db $07 $07 $08 $08 $08 $09 $16 $11 $08 $09 $16 $11 $08 $09 $16 $11
.db $08 $09 $16 $11 $06 $07 $08 $09 $00 $00 $07 $07 $03 $02 $05 $04
.db $FA $8B $04 $8C $FC $05 $02 $07 $F2 $00 $0D $01 $FF $01 $00 $01
.db $FE $86 $01 $87 $00 $FE $01 $FF $07 $07 $F8 $F8 $FB $64 $9F $00
.db $03 $E1 $1C $1D $00 $00 $FF $FF $00 $00 $C0 $C0 $00 $40 $80 $C0
.db $00 $40 $80 $C0 $80 $80 $7F $7F $BF $A1 $40 $41 $BF $A1 $40 $41
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $02 $03 $05 $04 $03 $02 $0D $0C $0D $0D $12 $12 $0E $0A $30 $32
.db $38 $14 $43 $53 $0F $0F $30 $30 $1F $11 $2E $20 $00 $00 $00 $00
.db $F3 $4C $BF $00 $73 $CD $BE $00 $FF $63 $9C $00 $9E $9E $61 $61
.db $3F $70 $8F $80 $7D $42 $BF $80 $0F $0F $F0 $F0 $00 $00 $00 $00
.db $BF $A1 $40 $41 $3F $21 $80 $81 $00 $00 $FF $FF $00 $00 $E0 $E0
.db $E0 $20 $D8 $18 $F0 $10 $C8 $08 $F0 $10 $48 $08 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 3FE70 to 3FEEF (128 bytes)
_DATA_3FE70_:
.db $00 $00 $3E $36 $1C $3E $41 $63 $36 $3E $C1 $FF $7F $C9 $00 $C9
.db $88 $D5 $22 $F7 $C9 $6B $14 $7F $B6 $2E $41 $6F $88 $B6 $41 $F7
.db $41 $41 $BE $FF $22 $22 $5D $7F $1C $14 $22 $36 $00 $00 $1C $1C
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $1E $1E $0C $1E $21 $33 $1E $1E $61 $7F $3F $6D $00 $6D
.db $4C $6D $12 $7F $52 $1E $21 $3F $4C $5E $21 $7F $21 $21 $5E $7F
.db $12 $12 $2D $3F $0C $0C $12 $1E $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 3FEF0 to 3FFFF (272 bytes)
_DATA_3FEF0_:
.db $00 $1C $00 $1C $1C $36 $00 $36 $3E $41 $00 $41 $3E $41 $00 $41
.db $3E $63 $00 $63 $22 $22 $1C $22 $3E $63 $00 $63 $77 $41 $08 $41
.db $6F $08 $10 $00 $7F $08 $00 $00 $6B $08 $14 $00 $3E $00 $41 $00
.db $41 $41 $3E $00 $7F $00 $00 $00 $7F $41 $00 $41 $3E $22 $41 $63
.db $00 $1C $00 $1C $1C $36 $00 $36 $3E $41 $00 $41 $3E $41 $00 $41
.db $3E $63 $00 $63 $22 $3E $1C $3E $3E $63 $00 $63 $7F $41 $1C $5D
.db $7F $00 $18 $18 $7B $04 $0C $0C $7F $00 $1C $1C $7F $00 $41 $41
.db $41 $3E $7F $7F $7F $00 $00 $00 $7F $41 $00 $41 $3E $22 $41 $63
.db $00 $00 $1C $1C $10 $18 $26 $3E $10 $3C $43 $7F $20 $3C $43 $7F
.db $10 $3C $43 $7F $00 $18 $26 $3E $00 $3C $43 $7F $38 $6C $03 $6F
.db $3C $06 $41 $47 $54 $02 $29 $2B $28 $46 $11 $57 $38 $6E $01 $6F
.db $00 $6E $11 $7F $00 $7E $01 $7F $00 $38 $47 $7F $00 $00 $3E $3E
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

