	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_matmult                        ; -- Begin function matmult
	.p2align	2
_matmult:                               ; @matmult
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #20]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #16]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #16]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	mov	x10, #12
	mul	x9, x9, x10
	add	x9, x8, x9
	ldrsw	x10, [sp, #16]
	mov	w8, #0
	str	w8, [x9, x10, lsl #2]
	str	wzr, [sp, #12]
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_1 Depth=1
                                        ;     Parent Loop BB0_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #12]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=3
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	mov	x11, #12
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	mul	w10, w8, w9
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp, #16]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_5
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=2
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB0_3
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_1
LBB0_12:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_matadd                         ; -- Begin function matadd
	.p2align	2
_matadd:                                ; @matadd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB1_1
LBB1_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
	ldr	w8, [sp, #4]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB1_8
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	str	wzr, [sp]
	b	LBB1_3
LBB1_3:                                 ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB1_6
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	mov	x11, #12
	mul	x9, x9, x11
	add	x8, x8, x9
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldrsw	x10, [sp]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB1_3
LBB1_6:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_7
LBB1_7:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB1_1
LBB1_8:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_printMatrix                    ; -- Begin function printMatrix
	.p2align	2
_printMatrix:                           ; @printMatrix
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #20]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #28]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #68]
	sub	x0, x29, #44
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x1, l___const.main.A@PAGE
	add	x1, x1, l___const.main.A@PAGEOFF
	mov	x2, #36
	str	x2, [sp, #24]                   ; 8-byte Folded Spill
	bl	_memcpy
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	sub	x0, x29, #80
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	adrp	x1, l___const.main.B@PAGE
	add	x1, x1, l___const.main.B@PAGEOFF
	bl	_memcpy
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, sp, #108
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	_matmult
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, sp, #72
	bl	_matadd
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printMatrix
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printMatrix
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #72]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldr	w8, [sp, #76]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w9, [sp, #80]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	w8, [sp, #84]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldr	w8, [sp, #88]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w9, [sp, #92]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	w8, [sp, #96]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldr	w8, [sp, #100]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w9, [sp, #104]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	bl	_printf
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	bl	___stack_chk_fail
LBB3_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"    [%d %d %d]\n"

l_.str.2:                               ; @.str.2
	.asciz	"    |%d %d %d|\n"

l_.str.3:                               ; @.str.3
	.asciz	"    [%d %d %d]\n\n"

	.section	__TEXT,__const
	.p2align	2                               ; @__const.main.A
l___const.main.A:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6
	.long	7                               ; 0x7
	.long	8                               ; 0x8
	.long	9                               ; 0x9

	.p2align	2                               ; @__const.main.B
l___const.main.B:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	0                               ; 0x0
	.long	6                               ; 0x6
	.long	7                               ; 0x7

	.section	__TEXT,__cstring,cstring_literals
l_.str.4:                               ; @.str.4
	.asciz	"A =\n"

l_.str.5:                               ; @.str.5
	.asciz	"B =\n"

l_.str.6:                               ; @.str.6
	.asciz	"A*B+A =\n"

l_.str.7:                               ; @.str.7
	.asciz	"        [%d %d %d]\n"

l_.str.8:                               ; @.str.8
	.asciz	"        |%d %d %d|\n"

.subsections_via_symbols
