	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde31dda6ceb1b885E:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x28, x27, [sp, #64]
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	stp	x29, x30, [sp, #144]
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	mov	x20, x1
	mov	x19, x0
	ldr	x21, [x1, #72]
	cbz	x21, LBB0_10
	ldr	x23, [x20, #96]
	ldr	x24, [x20, #80]
	cmp	x24, x23
	b.eq	LBB0_7
	ldr	x22, [x20, #104]
	add	x25, sp, #32
	b	LBB0_4
LBB0_3:
	cmp	x24, x23
	b.eq	LBB0_7
LBB0_4:
	ldr	q0, [x24]
	str	q0, [sp, #32]
	ldr	w8, [x24, #16]
	str	w8, [sp, #48]
	add	x24, x24, #20
	str	x24, [x20, #80]
	add	x1, sp, #32
	mov	x0, x22
	bl	__ZN6quorum5board5Board10valid_move17h8ac4676edb7a5c81E
	and	w8, w0, #0xff
	cmp	w8, #6
	b.ne	LBB0_3
	ldr	q0, [sp, #32]
	str	q0, [sp, #16]
	ldrb	w8, [sp, #48]
	ldurh	w9, [x25, #17]
	strh	w9, [sp, #12]
	ldurb	w9, [x25, #19]
	strb	w9, [sp, #14]
	cmp	w8, #3
	b.eq	LBB0_3
	ldr	q0, [sp, #16]
	str	q0, [x19]
	ldrh	w9, [sp, #12]
	sturh	w9, [x19, #17]
	ldrb	w9, [sp, #14]
	strb	w9, [x19, #19]
	b	LBB0_52
LBB0_7:
	ldr	x8, [x20, #88]
	cbz	x8, LBB0_9
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x21
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB0_9:
	str	xzr, [x20, #72]
LBB0_10:
	ldr	w8, [x20]
	cmp	w8, #2
	b.eq	LBB0_51
	ldr	x21, [x20, #48]
	ldrb	w9, [x20, #56]
	str	w9, [sp, #8]
	tbz	w8, #0, LBB0_22
	ldp	w22, w8, [x20, #4]
	cmp	w22, w8
	b.ge	LBB0_22
	add	x26, sp, #32
	ldr	w9, [sp, #8]
	tst	w9, #0x1
	mov	w9, #24
	csel	x9, xzr, x9, ne
	add	x27, x21, x9
	mov	x28, #-1
	b	LBB0_15
LBB0_14:
	mov	x22, x9
	cmp	w9, w8
	b.ge	LBB0_22
LBB0_15:
	add	w9, w22, #1
	str	w9, [x20, #4]
	ldr	w10, [x27, #16]
	sub	w10, w10, #21
	cmn	w10, #2
	b.gt	LBB0_14
	ldr	w23, [x20, #12]
	add	x0, sp, #32
	mov	x1, x21
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
	ldp	x25, x1, [sp, #32]
	mov	x0, x25
	mov	x2, x23
	mov	x3, x22
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	mov	x24, x0
	ldaddl	x28, x8, [x25]
	cmp	x8, #1
	b.eq	LBB0_19
	ldr	x8, [sp, #40]
	ldaddl	x28, x8, [x8]
	cmp	x8, #1
	b.eq	LBB0_20
LBB0_18:
	cbnz	w24, LBB0_21
	b	LBB0_53
LBB0_19:
	dmb	ishld
	add	x0, sp, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #40]
	ldaddl	x28, x8, [x8]
	cmp	x8, #1
	b.ne	LBB0_18
LBB0_20:
	dmb	ishld
	add	x0, x26, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	cbz	w24, LBB0_53
LBB0_21:
	ldp	w9, w8, [x20, #4]
	b	LBB0_14
LBB0_22:
	ldr	x10, [x20, #32]
	cbz	x10, LBB0_39
	ldp	w9, w8, [x20, #40]
	cmp	w9, w8
	b.ge	LBB0_39
	ldr	w10, [x10, #48]
	cmp	w10, #1
	b.lt	LBB0_38
	add	x28, x21, #16
	ldr	w10, [sp, #8]
	tst	w10, #0x1
	mov	w10, #24
	csel	x26, xzr, x10, ne
	mov	w12, #1
	mov	x27, #-1
	b	LBB0_27
LBB0_26:
	ldp	w9, w8, [x20, #40]
	mov	w12, #1
	cmp	w9, w8
	b.ge	LBB0_39
LBB0_27:
	add	w11, w9, #1
	str	w11, [x20, #40]
	ldr	x10, [x20, #32]
	ldr	w10, [x10, #48]
	str	w12, [x20]
	stp	w10, w9, [x20, #8]
	cmp	w10, #1
	b.lt	LBB0_37
	mov	w22, #0
	b	LBB0_30
LBB0_29:
	mov	x22, x8
	cmp	w8, w10
	b.ge	LBB0_26
LBB0_30:
	add	w8, w22, #1
	str	w8, [x20, #4]
	ldr	w9, [x28, x26]
	sub	w9, w9, #21
	cmn	w9, #2
	b.gt	LBB0_29
	ldr	w23, [x20, #12]
	add	x0, sp, #32
	mov	x1, x21
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
	ldp	x25, x1, [sp, #32]
	mov	x0, x25
	mov	x2, x23
	mov	x3, x22
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	mov	x24, x0
	ldaddl	x27, x8, [x25]
	cmp	x8, #1
	b.eq	LBB0_34
	ldr	x8, [sp, #40]
	ldaddl	x27, x8, [x8]
	cmp	x8, #1
	b.eq	LBB0_35
LBB0_33:
	cbnz	w24, LBB0_36
	b	LBB0_53
LBB0_34:
	dmb	ishld
	add	x0, sp, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #40]
	ldaddl	x27, x8, [x8]
	cmp	x8, #1
	b.ne	LBB0_33
LBB0_35:
	dmb	ishld
	add	x8, sp, #32
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	cbz	w24, LBB0_53
LBB0_36:
	ldp	w8, w10, [x20, #4]
	b	LBB0_29
LBB0_37:
	mov	x9, x11
	cmp	w9, w8
	b.lt	LBB0_27
	b	LBB0_39
LBB0_38:
	str	w8, [x20, #40]
LBB0_39:
	str	wzr, [x20]
	ldr	x8, [sp, #16]
	stur	x8, [x20, #4]
	ldr	w8, [sp, #24]
	stur	w8, [x20, #12]
	ldr	w8, [x20, #16]
	cmp	w8, #1
	b.ne	LBB0_50
	ldp	w22, w8, [x20, #20]
	cmp	w22, w8
	b.ge	LBB0_50
	add	x26, sp, #32
	ldr	w9, [sp, #8]
	tst	w9, #0x1
	mov	w9, #24
	csel	x9, xzr, x9, ne
	add	x27, x21, x9
	mov	x28, #-1
	b	LBB0_43
LBB0_42:
	mov	x22, x9
	cmp	w9, w8
	b.ge	LBB0_50
LBB0_43:
	add	w9, w22, #1
	str	w9, [x20, #20]
	ldr	w10, [x27, #16]
	sub	w10, w10, #21
	cmn	w10, #2
	b.gt	LBB0_42
	ldr	w23, [x20, #28]
	add	x0, sp, #32
	mov	x1, x21
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
	ldp	x25, x1, [sp, #32]
	mov	x0, x25
	mov	x2, x23
	mov	x3, x22
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	mov	x24, x0
	ldaddl	x28, x8, [x25]
	cmp	x8, #1
	b.eq	LBB0_47
	ldr	x8, [sp, #40]
	ldaddl	x28, x8, [x8]
	cmp	x8, #1
	b.eq	LBB0_48
LBB0_46:
	cbnz	w24, LBB0_49
	b	LBB0_53
LBB0_47:
	dmb	ishld
	add	x0, sp, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #40]
	ldaddl	x28, x8, [x8]
	cmp	x8, #1
	b.ne	LBB0_46
LBB0_48:
	dmb	ishld
	add	x0, x26, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	cbz	w24, LBB0_53
LBB0_49:
	ldp	w9, w8, [x20, #20]
	b	LBB0_42
LBB0_50:
	str	wzr, [x20, #16]
	ldr	x8, [sp, #16]
	stur	x8, [x20, #20]
	ldr	w8, [sp, #24]
	str	w8, [x20, #28]
LBB0_51:
	mov	w8, #3
LBB0_52:
	strb	w8, [x19, #16]
	.cfi_def_cfa wsp, 160
	ldp	x29, x30, [sp, #144]
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB0_53:
	.cfi_restore_state
	ldrb	w8, [x20, #64]
	stp	w23, w22, [x19]
	strb	w8, [x19, #8]
	mov	w8, #2
	b	LBB0_52
	.cfi_endproc

	.p2align	2
__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE:
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception0
	stp	d9, d8, [sp, #-112]!
	.cfi_def_cfa_offset 112
	stp	x28, x27, [sp, #16]
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_remember_state
	sub	sp, sp, #576
	mov	x21, x3
	mov	x22, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, x1
	ldr	x8, [x0], #8
	ldp	x9, x8, [x8, #16]
	mov	w10, w2
	mov	x11, #29281
	movk	x11, #28261, lsl #16
	movk	x11, #26469, lsl #32
	movk	x11, #27769, lsl #48
	eor	x11, x9, x11
	mov	x12, #28525
	movk	x12, #28260, lsl #16
	movk	x12, #29281, lsl #32
	movk	x12, #25711, lsl #48
	eor	x12, x8, x12
	mov	x13, #25973
	movk	x13, #28787, lsl #16
	movk	x13, #28005, lsl #32
	movk	x13, #29551, lsl #48
	eor	x9, x9, x13
	orr	x10, x10, x3, lsl #32
	mov	x13, #25971
	movk	x13, #31092, lsl #16
	movk	x13, #25698, lsl #32
	movk	x13, #29797, lsl #48
	eor	x13, x10, x13
	eor	x8, x13, x8
	add	x9, x12, x9
	eor	x12, x9, x12, ror #51
	add	x11, x8, x11
	add	x13, x12, x11
	eor	x8, x11, x8, ror #48
	ror	x9, x9, #32
	eor	x11, x13, x12, ror #47
	ror	x12, x13, #32
	add	x9, x8, x9
	eor	x10, x9, x10
	eor	x8, x9, x8, ror #43
	eor	x8, x8, #0x800000000000000
	add	x9, x10, x11
	eor	x10, x9, x11, ror #51
	ror	x9, x9, #32
	add	x11, x8, x12
	add	x12, x11, x10
	eor	x8, x11, x8, ror #48
	add	x9, x8, x9
	eor	x10, x12, x10, ror #47
	eor	x8, x9, x8, ror #43
	ror	x11, x12, #32
	eor	x9, x9, #0x800000000000000
	eor	x11, x11, #0xff
	add	x9, x9, x10
	eor	x10, x9, x10, ror #51
	add	x11, x8, x11
	add	x12, x10, x11
	eor	x8, x11, x8, ror #48
	ror	x9, x9, #32
	eor	x10, x12, x10, ror #47
	add	x9, x8, x9
	add	x11, x10, x9
	eor	x8, x9, x8, ror #43
	ror	x9, x12, #32
	eor	x10, x11, x10, ror #51
	add	x9, x8, x9
	add	x12, x10, x9
	eor	x8, x9, x8, ror #48
	ror	x9, x11, #32
	eor	x10, x12, x10, ror #47
	add	x9, x8, x9
	add	x11, x10, x9
	eor	x8, x9, x8, ror #43
	ror	x9, x12, #32
	eor	x10, x11, x10, ror #51
	add	x9, x8, x9
	add	x11, x10, x9
	eor	x8, x9, x8, ror #48
	ror	x8, x8, #43
	eor	x8, x8, x10, ror #47
	eor	x8, x8, x11, lsr #32
	eor	x23, x8, x11
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E
	and	x8, x23, #0x1f
	ldr	w9, [x0, #512]
	mov	w26, #1
	lsl	w10, w26, w23
	add	x25, x0, x8, lsl #4
	tst	w10, w9
	b.eq	LBB1_4
	mov	w24, #5
LBB1_2:
	mov	x8, x25
	ldr	w11, [x8], #8
	cmp	w11, #2
	b.ne	LBB1_7
	mov	x0, x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E
	lsr	w8, w23, w24
	and	w11, w8, #0x1f
	ldr	w9, [x0, #512]
	lsl	w10, w26, w8
	add	x25, x0, w11, uxtw #4
	add	x24, x24, #5
	tst	w9, w10
	b.ne	LBB1_2
LBB1_4:
	orr	w8, w10, w9
	str	w8, [x0, #512]
	stp	wzr, w23, [x25]
	stp	w22, w21, [x25, #8]
LBB1_5:
	mov	w8, #0
	ldr	x9, [x20, #16]
	add	x9, x9, #1
	str	x9, [x20, #16]
LBB1_6:
	str	w8, [x19]
	add	sp, sp, #576
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	d9, d8, [sp], #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore b8
	.cfi_restore b9
	ret
LBB1_7:
	.cfi_restore_state
	cbnz	w11, LBB1_14
	ldp	w8, w11, [x25, #8]
	cmp	w8, w22
	ccmp	w11, w21, #0, eq
	b.eq	LBB1_21
	ldr	q0, [x25]
	str	q0, [sp]
	cmp	x24, #31
	b.ls	LBB1_25
	ldr	q0, [x25]
	str	q0, [sp, #16]
	ldr	w8, [sp, #16]
	cbnz	w8, LBB1_29
	ldr	d8, [sp, #24]
Lloh0:
	adrp	x26, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh1:
	ldr	x26, [x26, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x26]
	mov	w0, #16
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB1_32
	mov	x24, x0
	str	d8, [x0]
	stp	w22, w21, [x0, #8]
	ldrb	wzr, [x26]
	mov	w0, #48
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB1_34
	mov	x21, x0
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x0]
	mov	w9, #2
	stp	x9, x24, [x0, #16]
	str	x9, [x0, #32]
	str	w23, [x0, #40]
	b	LBB1_28
LBB1_14:
	mov	x0, x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hab1f81bc4f804459E
	ldp	x8, x24, [x0, #8]
	lsl	x9, x24, #3
	mov	x11, x8
LBB1_15:
	cbz	x9, LBB1_18
	add	x10, x11, #8
	ldp	w12, w11, [x11]
	sub	x9, x9, #8
	cmp	w22, w12
	ccmp	w21, w11, #0, eq
	mov	x11, x10
	b.ne	LBB1_15
	stp	w22, w21, [x10, #-8]
	b	LBB1_24
LBB1_18:
	ldr	x9, [x0]
	cmp	x24, x9
	b.ne	LBB1_20
	mov	x23, x0
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9c599be77ed25323E
	mov	x0, x23
	ldr	x8, [x23, #8]
LBB1_20:
	add	x8, x8, x24, lsl #3
	stp	w22, w21, [x8]
	add	x8, x24, #1
	str	x8, [x0, #16]
	b	LBB1_5
LBB1_21:
	orr	w8, w9, w10
	str	w8, [x0, #512]
	ldr	w8, [x25]
	ldur	x9, [x25, #4]
	str	x9, [sp, #16]
	ldr	w9, [x25, #12]
	str	w9, [sp, #24]
	stp	wzr, w23, [x25]
	stp	w22, w21, [x25, #8]
	cmp	w8, #3
	b.eq	LBB1_5
	stur	w8, [x29, #-112]
	ldr	x9, [sp, #16]
	stur	x9, [x29, #-108]
	ldr	w9, [sp, #24]
	stur	w9, [x29, #-100]
	cbnz	w8, LBB1_30
	ldp	w22, w21, [x29, #-104]
LBB1_24:
	stp	w22, w21, [x19, #4]
	mov	w8, #1
	b	LBB1_6
LBB1_25:
	ldr	w8, [sp]
	cbnz	w8, LBB1_31
	ldp	w1, w2, [sp, #8]
	add	x26, sp, #16
	ldr	w3, [sp, #4]
	add	x0, x26, #16
	mov	x4, x22
	mov	x5, x21
	mov	x6, x23
	mov	x7, x24
	bl	__ZN2im5nodes4hamt13Node$LT$A$GT$12merge_values17hacbae2fe9a09f627E
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [sp, #16]
Lloh2:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #536
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB1_33
	mov	x21, x0
	add	x1, sp, #16
	mov	w2, #536
	bl	_memcpy
	mov	w8, #2
LBB1_28:
	str	w8, [x25]
	str	x21, [x25, #8]
	b	LBB1_5
LBB1_29:
Ltmp12:
Lloh4:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8@PAGE
Lloh5:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8@PAGEOFF
Lloh6:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9@PAGE
Lloh7:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9@PAGEOFF
	mov	w1, #55
	bl	__ZN3std9panicking11begin_panic17h74fddde4128cd9c3E
Ltmp13:
	b	LBB1_35
LBB1_30:
Ltmp21:
Lloh8:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8@PAGE
Lloh9:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8@PAGEOFF
Lloh10:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9@PAGE
Lloh11:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9@PAGEOFF
	mov	w1, #55
	bl	__ZN3std9panicking11begin_panic17h74fddde4128cd9c3E
Ltmp22:
	b	LBB1_35
LBB1_31:
Ltmp0:
Lloh12:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.5@PAGE
Lloh13:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.5@PAGEOFF
Lloh14:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.6@PAGE
Lloh15:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.6@PAGEOFF
	mov	w1, #40
	bl	__ZN4core9panicking5panic17hdf8b426f88b5fed0E
Ltmp1:
	b	LBB1_35
LBB1_32:
	mov	w0, #4
	mov	w1, #16
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB1_33:
Ltmp6:
	mov	w0, #8
	mov	w1, #536
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp7:
	b	LBB1_35
LBB1_34:
Ltmp18:
	mov	w0, #8
	mov	w1, #48
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp19:
LBB1_35:
	brk	#0x1
LBB1_36:
Ltmp20:
	mov	x19, x0
	mov	x0, x24
	mov	w1, #16
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_37:
Ltmp8:
	mov	x19, x0
Ltmp9:
	add	x0, x26, #16
	bl	__ZN4core3ptr442drop_in_place$LT$sized_chunks..sparse_chunk..SparseChunk$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UTerm$C$typenum..bit..B1$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$GT$$GT$17h6292d6af9be76657E
Ltmp10:
	b	LBB1_44
LBB1_38:
Ltmp11:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB1_39:
Ltmp2:
	mov	x19, x0
Ltmp3:
	mov	x0, sp
	bl	__ZN4core3ptr96drop_in_place$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$17hb673f3388f78129cE
Ltmp4:
	b	LBB1_44
LBB1_40:
Ltmp5:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB1_41:
Ltmp23:
	mov	x19, x0
Ltmp24:
	sub	x0, x29, #112
	bl	__ZN4core3ptr96drop_in_place$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$17hb673f3388f78129cE
Ltmp25:
	b	LBB1_44
LBB1_42:
Ltmp26:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB1_43:
Ltmp14:
	mov	x19, x0
Ltmp15:
	add	x0, sp, #16
	bl	__ZN4core3ptr96drop_in_place$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$17hb673f3388f78129cE
Ltmp16:
LBB1_44:
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_45:
Ltmp17:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255
	.byte	155
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0
	.uleb128 Ltmp12-Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 Ltmp12-Lfunc_begin0
	.uleb128 Ltmp13-Ltmp12
	.uleb128 Ltmp14-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp21-Lfunc_begin0
	.uleb128 Ltmp22-Ltmp21
	.uleb128 Ltmp23-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp0-Lfunc_begin0
	.uleb128 Ltmp1-Ltmp0
	.uleb128 Ltmp2-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp1-Lfunc_begin0
	.uleb128 Ltmp6-Ltmp1
	.byte	0
	.byte	0
	.uleb128 Ltmp6-Lfunc_begin0
	.uleb128 Ltmp7-Ltmp6
	.uleb128 Ltmp8-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp18-Lfunc_begin0
	.uleb128 Ltmp19-Ltmp18
	.uleb128 Ltmp20-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp19-Lfunc_begin0
	.uleb128 Ltmp9-Ltmp19
	.byte	0
	.byte	0
	.uleb128 Ltmp9-Lfunc_begin0
	.uleb128 Ltmp10-Ltmp9
	.uleb128 Ltmp11-Lfunc_begin0
	.byte	1
	.uleb128 Ltmp3-Lfunc_begin0
	.uleb128 Ltmp4-Ltmp3
	.uleb128 Ltmp5-Lfunc_begin0
	.byte	1
	.uleb128 Ltmp24-Lfunc_begin0
	.uleb128 Ltmp25-Ltmp24
	.uleb128 Ltmp26-Lfunc_begin0
	.byte	1
	.uleb128 Ltmp15-Lfunc_begin0
	.uleb128 Ltmp16-Ltmp15
	.uleb128 Ltmp17-Lfunc_begin0
	.byte	1
	.uleb128 Ltmp16-Lfunc_begin0
	.uleb128 Lfunc_end0-Ltmp16
	.byte	0
	.byte	0
Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x21, x3
	mov	x22, x2
	mov	x20, x1
	mov	x19, x0
	add	x0, x1, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E
	mov	x1, x0
	ldr	x8, [x20]
	ldp	x9, x8, [x8, #16]
	mov	w10, w22
	mov	x11, #29281
	movk	x11, #28261, lsl #16
	movk	x11, #26469, lsl #32
	movk	x11, #27769, lsl #48
	eor	x11, x9, x11
	mov	x12, #28525
	movk	x12, #28260, lsl #16
	movk	x12, #29281, lsl #32
	movk	x12, #25711, lsl #48
	eor	x12, x8, x12
	mov	x13, #25973
	movk	x13, #28787, lsl #16
	movk	x13, #28005, lsl #32
	movk	x13, #29551, lsl #48
	eor	x9, x9, x13
	orr	x10, x10, x21, lsl #32
	mov	x13, #25971
	movk	x13, #31092, lsl #16
	movk	x13, #25698, lsl #32
	movk	x13, #29797, lsl #48
	eor	x13, x10, x13
	eor	x8, x13, x8
	add	x9, x12, x9
	eor	x12, x9, x12, ror #51
	add	x11, x8, x11
	add	x13, x12, x11
	eor	x8, x11, x8, ror #48
	ror	x9, x9, #32
	eor	x11, x13, x12, ror #47
	ror	x12, x13, #32
	add	x9, x8, x9
	eor	x10, x9, x10
	eor	x8, x9, x8, ror #43
	eor	x8, x8, #0x800000000000000
	add	x9, x10, x11
	eor	x10, x9, x11, ror #51
	add	x11, x8, x12
	add	x12, x11, x10
	eor	x8, x11, x8, ror #48
	ror	x9, x9, #32
	add	x9, x8, x9
	eor	x10, x12, x10, ror #47
	eor	x8, x9, x8, ror #43
	ror	x11, x12, #32
	eor	x9, x9, #0x800000000000000
	eor	x11, x11, #0xff
	add	x9, x9, x10
	eor	x10, x9, x10, ror #51
	ror	x9, x9, #32
	add	x11, x8, x11
	add	x12, x10, x11
	eor	x8, x11, x8, ror #48
	eor	x10, x12, x10, ror #47
	ror	x11, x12, #32
	add	x9, x8, x9
	add	x12, x10, x9
	eor	x8, x9, x8, ror #43
	eor	x9, x12, x10, ror #51
	ror	x10, x12, #32
	add	x11, x8, x11
	add	x12, x9, x11
	eor	x8, x11, x8, ror #48
	eor	x9, x12, x9, ror #47
	ror	x11, x12, #32
	add	x10, x8, x10
	add	x12, x9, x10
	eor	x8, x10, x8, ror #43
	eor	x9, x12, x9, ror #51
	add	x10, x8, x11
	add	x11, x9, x10
	ror	x9, x9, #47
	eor	x8, x10, x8, ror #48
	ror	x8, x8, #43
	lsr	x10, x11, #32
	eor	w9, w9, w10
	eor	w8, w8, w9
	add	x0, sp, #4
	eor	w2, w8, w11
	mov	x3, #0
	mov	x4, x22
	mov	x5, x21
	bl	__ZN2im5nodes4hamt13Node$LT$A$GT$6remove17ha3956cf6bac0aa95E
	ldr	w8, [sp, #4]
	cbz	w8, LBB2_2
	ldr	x8, [x20, #16]
	sub	x8, x8, #1
	str	x8, [x20, #16]
	ldur	d0, [sp, #8]
	stur	d0, [x19, #4]
	mov	w8, #1
LBB2_2:
	str	w8, [x19]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
	.cfi_endproc

	.p2align	2
__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E:
	.cfi_startproc
	ldp	x8, x9, [x0, #16]
	mov	w10, w2
	mov	x11, #29281
	movk	x11, #28261, lsl #16
	movk	x11, #26469, lsl #32
	movk	x11, #27769, lsl #48
	eor	x11, x8, x11
	mov	x12, #28525
	movk	x12, #28260, lsl #16
	movk	x12, #29281, lsl #32
	movk	x12, #25711, lsl #48
	eor	x12, x9, x12
	mov	x13, #25973
	movk	x13, #28787, lsl #16
	movk	x13, #28005, lsl #32
	movk	x13, #29551, lsl #48
	eor	x8, x8, x13
	orr	x10, x10, x3, lsl #32
	eor	x9, x10, x9
	mov	x13, #25971
	movk	x13, #31092, lsl #16
	movk	x13, #25698, lsl #32
	movk	x13, #29797, lsl #48
	eor	x9, x9, x13
	add	x8, x12, x8
	eor	x12, x8, x12, ror #51
	add	x11, x9, x11
	add	x13, x12, x11
	eor	x9, x11, x9, ror #48
	ror	x8, x8, #32
	eor	x11, x13, x12, ror #47
	ror	x12, x13, #32
	add	x8, x9, x8
	eor	x10, x8, x10
	eor	x8, x8, x9, ror #43
	eor	x8, x8, #0x800000000000000
	add	x9, x10, x11
	eor	x10, x9, x11, ror #51
	add	x11, x8, x12
	add	x12, x11, x10
	eor	x8, x11, x8, ror #48
	ror	x9, x9, #32
	add	x9, x8, x9
	eor	x10, x12, x10, ror #47
	eor	x8, x9, x8, ror #43
	ror	x11, x12, #32
	eor	x9, x9, #0x800000000000000
	eor	x11, x11, #0xff
	add	x9, x9, x10
	eor	x10, x9, x10, ror #51
	add	x11, x8, x11
	add	x12, x10, x11
	eor	x8, x11, x8, ror #48
	ror	x9, x9, #32
	eor	x10, x12, x10, ror #47
	add	x9, x8, x9
	add	x11, x10, x9
	eor	x8, x9, x8, ror #43
	ror	x9, x12, #32
	eor	x10, x11, x10, ror #51
	add	x9, x8, x9
	add	x12, x10, x9
	eor	x8, x9, x8, ror #48
	ror	x9, x11, #32
	eor	x10, x12, x10, ror #47
	add	x9, x8, x9
	add	x11, x10, x9
	eor	x8, x9, x8, ror #43
	ror	x9, x12, #32
	eor	x10, x11, x10, ror #51
	add	x9, x8, x9
	add	x11, x10, x9
	eor	x8, x9, x8, ror #48
	ror	x8, x8, #43
	eor	x8, x8, x10, ror #47
	eor	x8, x8, x11, lsr #32
	eor	x8, x8, x11
	ldr	w9, [x1, #528]
	lsr	w9, w9, w8
	tbz	w9, #0, LBB3_11
	and	x9, x8, #0x1f
	add	x9, x1, x9, lsl #4
	add	x9, x9, #16
	mov	w10, #5
LBB3_2:
	ldr	w11, [x9]
	cmp	w11, #2
	b.ne	LBB3_4
	ldr	x9, [x9, #8]
	lsr	w11, w8, w10
	and	w12, w11, #0x1f
	add	x12, x9, w12, uxtw #4
	ldr	w13, [x9, #528]
	add	x9, x12, #16
	add	w10, w10, #5
	lsr	w11, w13, w11
	tbnz	w11, #0, LBB3_2
	b	LBB3_11
LBB3_4:
	cbnz	w11, LBB3_6
	ldp	w8, w9, [x9, #8]
	cmp	w2, w8
	ccmp	w3, w9, #0, eq
	cset	w0, eq
	ret
LBB3_6:
	ldr	x8, [x9, #8]
	ldr	x9, [x8, #32]
	cbz	x9, LBB3_11
	ldr	x8, [x8, #24]
	add	x9, x8, x9, lsl #3
LBB3_8:
	ldp	w10, w11, [x8]
	cmp	w2, w10
	ccmp	w3, w11, #0, eq
	cset	w0, eq
	b.eq	LBB3_10
	add	x8, x8, #8
	cmp	x8, x9
	b.ne	LBB3_8
LBB3_10:
	ret
LBB3_11:
	mov	w0, #0
	ret
	.cfi_endproc

	.p2align	2
__ZN2im5nodes4hamt13Node$LT$A$GT$12merge_values17hacbae2fe9a09f627E:
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception1
	stp	x28, x27, [sp, #-96]!
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	sub	sp, sp, #1600
	str	xzr, [sp]
	lsr	w8, w3, w7
	and	w21, w8, #0x1f
	lsr	w8, w6, w7
	and	w8, w8, #0x1f
	cmp	w21, w8
	b.ne	LBB4_5
	mov	x19, x0
	cmp	x7, #26
	b.ls	LBB4_11
	mov	x27, x1
	mov	x26, x2
	mov	x25, x4
	mov	x22, x3
	mov	x24, x5
Lloh16:
	adrp	x23, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh17:
	ldr	x23, [x23, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x23]
	mov	w0, #16
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB4_19
	mov	x20, x0
	stp	w27, w26, [x0]
	stp	w25, w24, [x0, #8]
	ldrb	wzr, [x23]
	mov	w0, #48
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB4_21
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x0]
	mov	w9, #2
	stp	x9, x20, [x0, #16]
	str	x9, [x0, #32]
	str	w22, [x0, #40]
	lsl	w9, w8, w21
	str	w9, [sp, #1592]
	add	x9, sp, #1080
	add	x9, x9, x21, lsl #4
	str	w8, [x9]
	str	x0, [x9, #8]
	add	x1, sp, #1080
	b	LBB4_13
LBB4_5:
	mov	w9, #1
	lsl	w10, w9, w21
	mov	x11, sp
	add	x12, x11, x21, lsl #4
	stp	wzr, w3, [x12]
	stp	w1, w2, [x12, #8]
	lsl	w9, w9, w8
	orr	w12, w10, w9
	str	w12, [sp, #512]
	add	x8, x11, w8, uxtw #4
	tst	w10, w9
	b.eq	LBB4_14
	ldr	q0, [x8]
	str	q0, [sp, #544]
	stp	wzr, w6, [x8]
	stp	w4, w5, [x8, #8]
	ldr	w8, [sp, #544]
	cmp	w8, #3
	b.eq	LBB4_15
	cbz	w8, LBB4_15
	cmp	w8, #1
	b.ne	LBB4_17
	ldr	x8, [sp, #552]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB4_15
	add	x8, sp, #544
	dmb	ishld
	mov	x19, x0
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	mov	x0, x19
	b	LBB4_15
LBB4_11:
	mov	x22, sp
	add	x0, x22, #16
	add	x7, x7, #5
	bl	__ZN2im5nodes4hamt13Node$LT$A$GT$12merge_values17hacbae2fe9a09f627E
	mov	w23, #1
	dup.2d	v0, x23
	str	q0, [sp]
Lloh18:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh19:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #536
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB4_20
	mov	x20, x0
	mov	x1, sp
	mov	w2, #536
	bl	_memcpy
	lsl	w8, w23, w21
	str	w8, [sp, #1072]
	add	x8, sp, #560
	add	x8, x8, x21, lsl #4
	mov	w9, #2
	str	w9, [x8]
	str	x20, [x8, #8]
	add	x1, sp, #560
LBB4_13:
	mov	x0, x19
	b	LBB4_16
LBB4_14:
	stp	wzr, w6, [x8]
	stp	w4, w5, [x8, #8]
LBB4_15:
	mov	x1, sp
LBB4_16:
	mov	w2, #520
	bl	_memcpy
	add	sp, sp, #1600
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB4_17:
	.cfi_restore_state
	ldr	x8, [sp, #552]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB4_15
	add	x8, sp, #544
	dmb	ishld
Ltmp27:
	mov	x19, x0
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	mov	x0, x19
Ltmp28:
	b	LBB4_15
LBB4_19:
	mov	w0, #4
	mov	w1, #16
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB4_20:
Ltmp33:
	mov	w0, #8
	mov	w1, #536
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp34:
	b	LBB4_22
LBB4_21:
Ltmp39:
	mov	w0, #8
	mov	w1, #48
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp40:
LBB4_22:
	brk	#0x1
LBB4_23:
Ltmp29:
	mov	x19, x0
Ltmp30:
	mov	x0, sp
	bl	__ZN4core3ptr442drop_in_place$LT$sized_chunks..sparse_chunk..SparseChunk$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UTerm$C$typenum..bit..B1$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$GT$$GT$17h6292d6af9be76657E
Ltmp31:
	b	LBB4_27
LBB4_24:
Ltmp32:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB4_25:
Ltmp41:
	mov	x19, x0
	mov	x0, x20
	mov	w1, #16
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
LBB4_26:
Ltmp35:
	mov	x19, x0
Ltmp36:
	add	x0, x22, #16
	bl	__ZN4core3ptr442drop_in_place$LT$sized_chunks..sparse_chunk..SparseChunk$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UTerm$C$typenum..bit..B1$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$GT$$GT$17h6292d6af9be76657E
Ltmp37:
LBB4_27:
	mov	x0, x19
	bl	__Unwind_Resume
LBB4_28:
Ltmp38:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh18, Lloh19
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception1:
	.byte	255
	.byte	155
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1
	.uleb128 Ltmp27-Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 Ltmp27-Lfunc_begin1
	.uleb128 Ltmp28-Ltmp27
	.uleb128 Ltmp29-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp28-Lfunc_begin1
	.uleb128 Ltmp33-Ltmp28
	.byte	0
	.byte	0
	.uleb128 Ltmp33-Lfunc_begin1
	.uleb128 Ltmp34-Ltmp33
	.uleb128 Ltmp35-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp39-Lfunc_begin1
	.uleb128 Ltmp40-Ltmp39
	.uleb128 Ltmp41-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp30-Lfunc_begin1
	.uleb128 Ltmp31-Ltmp30
	.uleb128 Ltmp32-Lfunc_begin1
	.byte	1
	.uleb128 Ltmp31-Lfunc_begin1
	.uleb128 Ltmp36-Ltmp31
	.byte	0
	.byte	0
	.uleb128 Ltmp36-Lfunc_begin1
	.uleb128 Ltmp37-Ltmp36
	.uleb128 Ltmp38-Lfunc_begin1
	.byte	1
	.uleb128 Ltmp37-Lfunc_begin1
	.uleb128 Lfunc_end1-Ltmp37
	.byte	0
	.byte	0
Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN2im5nodes4hamt13Node$LT$A$GT$3pop17he6af8e8b0fba3bc7E:
	.cfi_startproc
	ldr	w8, [x1, #512]
	cbz	w8, LBB5_4
	rbit	w9, w8
	clz	w9, w9
	mov	w10, #1
	lsl	w10, w10, w9
	bic	w11, w8, w10
	str	w11, [x1, #512]
	tst	w10, w8
	b.eq	LBB5_4
	add	x8, x1, x9, lsl #4
	ldr	w9, [x8]
	cmp	w9, #3
	b.eq	LBB5_4
	str	w9, [x0]
	ldur	x9, [x8, #4]
	stur	x9, [x0, #4]
	ldr	w8, [x8, #12]
	str	w8, [x0, #12]
	ret
LBB5_4:
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh20:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.4@PAGE
Lloh21:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.4@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
	.loh AdrpAdd	Lloh20, Lloh21
	.cfi_endproc

	.p2align	2
__ZN2im5nodes4hamt13Node$LT$A$GT$6remove17ha3956cf6bac0aa95E:
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception2
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x28, x27, [sp, #80]
	stp	x26, x25, [sp, #96]
	stp	x24, x23, [sp, #112]
	stp	x22, x21, [sp, #128]
	stp	x20, x19, [sp, #144]
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	mov	x25, x3
	mov	x20, x1
	mov	x19, x0
	lsr	w8, w2, w25
	and	w9, w8, #0x1f
	mov	w10, #3
	str	w10, [sp]
	ldr	w10, [x1, #512]
	mov	w11, #1
	lsl	w27, w11, w8
	add	x26, x1, w9, uxtw #4
	tst	w10, w27
	b.eq	LBB6_11
	mov	x21, x5
	mov	x22, x4
	mov	x0, x26
	ldr	w8, [x0], #8
	cbz	w8, LBB6_10
	cmp	w8, #1
	b.ne	LBB6_15
Ltmp54:
	mov	w28, #0
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hab1f81bc4f804459E
Ltmp55:
	ldr	x23, [x0, #16]
	cbz	x23, LBB6_23
	mov	w10, #0
	mov	x12, #0
	ldr	x9, [x0, #8]
	add	x11, x9, x23, lsl #3
	mov	x13, x9
LBB6_6:
	ldp	w14, w15, [x13], #8
	cmp	w22, w14
	cset	w14, eq
	cmp	w21, w15
	cset	w15, eq
	ands	w14, w14, w15
	csel	x8, x12, x8, ne
	add	x12, x12, #1
	orr	w10, w14, w10
	cmp	x13, x11
	b.ne	LBB6_6
	tbz	w10, #0, LBB6_24
	cmp	x8, x23
	b.hs	LBB6_41
	mov	x22, x0
	add	x0, x9, x8, lsl #3
	mov	x1, x0
	ldr	x21, [x1], #8
	mvn	x8, x8
	add	x8, x23, x8
	lsl	x2, x8, #3
	bl	_memmove
	sub	x23, x23, #1
	mov	x0, x22
	str	x23, [x22, #16]
	mov	w22, #1
	cmp	x23, #1
	b.eq	LBB6_25
	b	LBB6_36
LBB6_10:
	ldp	w8, w9, [x26, #8]
	cmp	w22, w8
	ccmp	w21, w9, #0, eq
	b.ne	LBB6_22
LBB6_11:
	ldr	w8, [x20, #512]
	bic	w9, w8, w27
	str	w9, [x20, #512]
	tst	w8, w27
	b.eq	LBB6_22
	ldr	w8, [x26]
	cmp	w8, #3
	b.eq	LBB6_22
	str	w8, [sp, #64]
	ldur	x9, [x26, #4]
	stur	x9, [sp, #68]
	ldr	w9, [x26, #12]
	str	w9, [sp, #76]
	cbnz	w8, LBB6_40
	ldr	d0, [sp, #72]
	stur	d0, [x19, #4]
	mov	w8, #1
	str	w8, [x19]
	b	LBB6_37
LBB6_15:
Ltmp42:
	mov	x24, x2
	mov	w28, #0
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E
Ltmp43:
Ltmp44:
	mov	x23, x0
	mov	w28, #0
	add	x0, sp, #20
	add	x3, x25, #5
	mov	x1, x23
	mov	x2, x24
	mov	x4, x22
	mov	x5, x21
	bl	__ZN2im5nodes4hamt13Node$LT$A$GT$6remove17ha3956cf6bac0aa95E
Ltmp45:
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.ne	LBB6_22
	ldp	w21, w22, [sp, #24]
	ldr	w8, [x23, #512]
	sub	w9, w8, #1
	eor	w10, w8, w9
	cmp	w10, w9
	b.ls	LBB6_21
	rbit	w9, w8
	clz	w9, w9
	lsr	w8, w8, w9
	tbz	w8, #0, LBB6_42
	ubfiz	x8, x9, #4, #32
	ldr	w8, [x23, x8]
	cbz	w8, LBB6_31
LBB6_21:
	stp	w21, w22, [x19, #4]
	mov	w8, #1
	str	w8, [x19]
	b	LBB6_37
LBB6_22:
	str	wzr, [x19]
	b	LBB6_37
LBB6_23:
	mov	w22, #0
	b	LBB6_36
LBB6_24:
	mov	w22, #0
	cmp	x23, #1
	b.ne	LBB6_36
LBB6_25:
	str	xzr, [x0, #16]
	ldr	w8, [x0, #24]
	ldr	x9, [x0, #8]
	stp	wzr, w8, [sp]
	ldr	d0, [x9]
	str	d0, [sp, #8]
	ldr	w8, [x20, #512]
	orr	w9, w8, w27
	str	w9, [x20, #512]
	tst	w8, w27
	b.eq	LBB6_35
LBB6_26:
	ldr	q0, [x26]
	str	q0, [sp, #48]
	ldr	q0, [sp]
	str	q0, [x26]
	ldr	w8, [sp, #48]
	cmp	w8, #3
	b.eq	LBB6_36
	cbz	w8, LBB6_36
	cmp	w8, #1
	b.ne	LBB6_38
	ldr	x8, [sp, #56]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB6_36
	add	x8, sp, #48
	dmb	ishld
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	b	LBB6_36
LBB6_31:
Ltmp46:
	add	x0, sp, #48
	mov	x1, x23
	bl	__ZN2im5nodes4hamt13Node$LT$A$GT$3pop17he6af8e8b0fba3bc7E
Ltmp47:
	ldr	q0, [sp, #48]
	str	q0, [sp, #32]
Ltmp48:
	mov	x0, sp
	bl	__ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$$GT$17h0cdc06d33e8b2ba9E
Ltmp49:
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	w8, [sp]
	cmp	w8, #3
	b.eq	LBB6_11
	orr	x21, x21, x22, lsl #32
	mov	w22, #1
	ldr	w8, [x20, #512]
	orr	w9, w8, w27
	str	w9, [x20, #512]
	tst	w8, w27
	b.ne	LBB6_26
LBB6_35:
	ldr	q0, [sp]
	str	q0, [x26]
LBB6_36:
	str	w22, [x19]
	stur	x21, [x19, #4]
LBB6_37:
	.cfi_def_cfa wsp, 176
	ldp	x29, x30, [sp, #160]
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	add	sp, sp, #176
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB6_38:
	.cfi_restore_state
	ldr	x8, [sp, #56]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB6_36
	add	x8, sp, #48
	dmb	ishld
	mov	w28, #1
Ltmp58:
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp59:
	b	LBB6_36
LBB6_40:
Ltmp61:
Lloh22:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8@PAGE
Lloh23:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8@PAGEOFF
Lloh24:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9@PAGE
Lloh25:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9@PAGEOFF
	mov	w1, #55
	bl	__ZN3std9panicking11begin_panic17h74fddde4128cd9c3E
Ltmp62:
	b	LBB6_43
LBB6_41:
Ltmp56:
	mov	w28, #0
Lloh26:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.11@PAGE
Lloh27:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.11@PAGEOFF
	mov	x0, x8
	mov	x1, x23
	bl	__ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17h47300a936982dd33E
Ltmp57:
	b	LBB6_43
LBB6_42:
Ltmp51:
Lloh28:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.7@PAGE
Lloh29:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.7@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
Ltmp52:
LBB6_43:
	brk	#0x1
LBB6_44:
Ltmp50:
	mov	x19, x0
	mov	w28, #0
	ldr	q0, [sp, #32]
	str	q0, [sp]
	b	LBB6_49
LBB6_45:
Ltmp53:
	mov	x19, x0
	b	LBB6_48
LBB6_46:
Ltmp60:
	mov	x19, x0
	b	LBB6_49
LBB6_47:
Ltmp63:
	mov	x19, x0
Ltmp64:
	add	x0, sp, #64
	bl	__ZN4core3ptr96drop_in_place$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$17hb673f3388f78129cE
Ltmp65:
LBB6_48:
	mov	w28, #0
LBB6_49:
	tbnz	w28, #0, LBB6_52
	ldr	w8, [sp]
	cmp	w8, #3
	b.eq	LBB6_52
Ltmp67:
	mov	x0, sp
	bl	__ZN4core3ptr96drop_in_place$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$17hb673f3388f78129cE
Ltmp68:
LBB6_52:
	mov	x0, x19
	bl	__Unwind_Resume
LBB6_53:
Ltmp69:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB6_54:
Ltmp66:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception2:
	.byte	255
	.byte	155
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp54-Lfunc_begin2
	.uleb128 Ltmp55-Ltmp54
	.uleb128 Ltmp60-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp55-Lfunc_begin2
	.uleb128 Ltmp42-Ltmp55
	.byte	0
	.byte	0
	.uleb128 Ltmp42-Lfunc_begin2
	.uleb128 Ltmp45-Ltmp42
	.uleb128 Ltmp60-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp46-Lfunc_begin2
	.uleb128 Ltmp47-Ltmp46
	.uleb128 Ltmp53-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp48-Lfunc_begin2
	.uleb128 Ltmp49-Ltmp48
	.uleb128 Ltmp50-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp58-Lfunc_begin2
	.uleb128 Ltmp59-Ltmp58
	.uleb128 Ltmp60-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp61-Lfunc_begin2
	.uleb128 Ltmp62-Ltmp61
	.uleb128 Ltmp63-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp56-Lfunc_begin2
	.uleb128 Ltmp57-Ltmp56
	.uleb128 Ltmp60-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp51-Lfunc_begin2
	.uleb128 Ltmp52-Ltmp51
	.uleb128 Ltmp53-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp64-Lfunc_begin2
	.uleb128 Ltmp65-Ltmp64
	.uleb128 Ltmp66-Lfunc_begin2
	.byte	1
	.uleb128 Ltmp67-Lfunc_begin2
	.uleb128 Ltmp68-Ltmp67
	.uleb128 Ltmp69-Lfunc_begin2
	.byte	1
	.uleb128 Ltmp68-Lfunc_begin2
	.uleb128 Lfunc_end2-Ltmp68
	.byte	0
	.byte	0
Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZN3std2rt10lang_start17hff3344049660b48eE
	.globl	__ZN3std2rt10lang_start17hff3344049660b48eE
	.p2align	2
__ZN3std2rt10lang_start17hff3344049660b48eE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	str	x0, [sp, #8]
Lloh30:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12@PAGE
Lloh31:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12@PAGEOFF
	add	x0, sp, #8
	bl	__ZN3std2rt19lang_start_internal17hdff9e551ec0db2eaE
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.loh AdrpAdd	Lloh30, Lloh31
	.cfi_endproc

	.p2align	2
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd6412a47944dbbd5E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0ce4e63d329b9ab8E
	mov	w0, #0
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0ce4e63d329b9ab8E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	blr	x0
	; InlineAsm Start
	; InlineAsm End
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h59f49bb9a8b1f1f0E:
	.cfi_startproc
	mov	x8, x1
	ldr	x9, [x0]
	ldrb	w10, [x9]
	cmp	w10, #6
	b.ne	LBB10_2
Lloh32:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.27@PAGE
Lloh33:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.27@PAGEOFF
	mov	x0, x8
	mov	w2, #4
	b	__ZN4core3fmt9Formatter9write_str17hc8eef6a272ef825dE
LBB10_2:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x9, [sp, #8]
Lloh34:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.29@PAGE
Lloh35:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.29@PAGEOFF
Lloh36:
	adrp	x4, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.28@PAGE
Lloh37:
	add	x4, x4, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.28@PAGEOFF
	add	x3, sp, #8
	mov	x0, x8
	mov	w2, #4
	bl	__ZN4core3fmt9Formatter25debug_tuple_field1_finish17ha86d8d497f676a50E
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc

	.p2align	2
__ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE:
	.cfi_startproc
	mov	x8, x1
	ldr	x9, [x0]
	ldrb	w9, [x9]
Lloh38:
	adrp	x10, l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE@PAGE
Lloh39:
	add	x10, x10, l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE@PAGEOFF
	ldr	x2, [x10, x9, lsl #3]
Lloh40:
	adrp	x10, l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE.169@PAGE
Lloh41:
	add	x10, x10, l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE.169@PAGEOFF
	ldr	x1, [x10, x9, lsl #3]
	mov	x0, x8
	b	__ZN4core3fmt9Formatter9write_str17hc8eef6a272ef825dE
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.cfi_endproc

	.p2align	2
__ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h766d077a50a692a7E:
	.cfi_startproc
	ldr	w8, [x1, #16]
	tbnz	w8, #25, LBB12_3
	tbnz	w8, #26, LBB12_4
	b	__ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h39bed4b042eb2dc0E
LBB12_3:
	b	__ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h171a5740f7482657E
LBB12_4:
	b	__ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h0ed90d9531dac682E
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbfd7ac674791d732E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0ce4e63d329b9ab8E
	mov	w0, #0
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$$GT$17h0cdc06d33e8b2ba9E:
	.cfi_startproc
	ldr	w8, [x0]
	cmp	w8, #3
	ccmp	w8, #0, #4, ne
	b.ne	LBB14_2
LBB14_1:
	ret
LBB14_2:
	cmp	w8, #1
	b.ne	LBB14_5
	ldr	x8, [x0, #8]!
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB14_1
	dmb	ishld
	b	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB14_5:
	ldr	x8, [x0, #8]!
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB14_1
	dmb	ishld
	b	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	.cfi_endproc

	.p2align	2
__ZN4core3ptr154drop_in_place$LT$alloc..sync..UniqueArcUninit$LT$im..nodes..hamt..Node$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$alloc..alloc..Global$GT$$GT$17h0e682d2e3b48d920E:
	.cfi_startproc
	stp	x20, x19, [sp, #-32]!
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldrb	w8, [x0, #24]
	strb	wzr, [x0, #24]
	cmp	w8, #1
	b.ne	LBB15_4
	ldp	x1, x19, [x0, #8]
	ldr	x8, [x0]
	mov	x0, x8
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
	cbz	x1, LBB15_3
	mov	x2, x0
	mov	x0, x19
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB15_3:
	.cfi_restore_state
	.cfi_remember_state
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB15_4:
	.cfi_restore_state
Lloh42:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.30@PAGE
Lloh43:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.30@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
	.loh AdrpAdd	Lloh42, Lloh43
	.cfi_endproc

	.p2align	2
__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE:
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception3
	stp	x20, x19, [sp, #-32]!
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	mov	x19, x0
	ldr	x8, [x0]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB16_2
	dmb	ishld
	mov	x0, x19
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB16_2:
	mov	x0, x19
	ldr	x8, [x0, #8]!
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB16_4
	dmb	ishld
Ltmp70:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp71:
LBB16_4:
	mov	x0, x19
	ldr	x8, [x0, #24]!
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB16_6
	dmb	ishld
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB16_6:
	ldr	x8, [x19, #32]!
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB16_8
	dmb	ishld
	mov	x0, x19
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	b	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB16_8:
	.cfi_restore_state
	.cfi_remember_state
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB16_9:
	.cfi_restore_state
Ltmp72:
	mov	x20, x0
Ltmp73:
	add	x0, x19, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp74:
	mov	x0, x20
	bl	__Unwind_Resume
LBB16_11:
Ltmp75:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
Lexception3:
	.byte	255
	.byte	155
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp70-Lfunc_begin3
	.uleb128 Ltmp71-Ltmp70
	.uleb128 Ltmp72-Lfunc_begin3
	.byte	0
	.uleb128 Ltmp71-Lfunc_begin3
	.uleb128 Ltmp73-Ltmp71
	.byte	0
	.byte	0
	.uleb128 Ltmp73-Lfunc_begin3
	.uleb128 Ltmp74-Ltmp73
	.uleb128 Ltmp75-Lfunc_begin3
	.byte	1
	.uleb128 Ltmp74-Lfunc_begin3
	.uleb128 Lfunc_end3-Ltmp74
	.byte	0
	.byte	0
Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core3ptr442drop_in_place$LT$sized_chunks..sparse_chunk..SparseChunk$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UTerm$C$typenum..bit..B1$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$GT$$GT$17h6292d6af9be76657E:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x20, x19, [sp, #32]
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	mov	x19, x0
	ldr	w8, [x0, #512]
	str	w8, [sp, #12]
	add	x8, sp, #12
	stp	x8, xzr, [sp, #16]
	add	x0, sp, #16
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB17_10
	mov	x20, #-1
	b	LBB17_3
LBB17_2:
	add	x0, sp, #16
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB17_10
LBB17_3:
	cmp	x1, #31
	b.hi	LBB17_11
	add	x0, x19, x1, lsl #4
	ldr	w8, [x0]
	cbz	w8, LBB17_2
	cmp	w8, #1
	b.ne	LBB17_8
	ldr	x8, [x0, #8]!
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB17_2
	dmb	ishld
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	b	LBB17_2
LBB17_8:
	ldr	x8, [x0, #8]!
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB17_2
	dmb	ishld
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	b	LBB17_2
LBB17_10:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	ldp	x20, x19, [sp, #32]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB17_11:
	.cfi_restore_state
Lloh44:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35@PAGE
Lloh45:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35@PAGEOFF
	mov	x0, x1
	mov	w1, #32
	bl	__ZN4core9panicking18panic_bounds_check17he315898ba5b8216dE
	.loh AdrpAdd	Lloh44, Lloh45
	.cfi_endproc

	.p2align	2
__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE:
	.cfi_startproc
	stp	x20, x19, [sp, #-32]!
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldr	x8, [x0]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB18_2
	dmb	ishld
	mov	x19, x0
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	mov	x0, x19
LBB18_2:
	ldr	x8, [x0, #8]!
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB18_4
	dmb	ishld
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	b	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB18_4:
	.cfi_restore_state
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E:
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception4
	stp	x24, x23, [sp, #-64]!
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_remember_state
	mov	x19, x0
	ldp	x20, x8, [x0, #8]
	cbz	x8, LBB19_5
	mov	x22, #0
	mov	w9, #1
	sub	x21, x9, x8
	mov	x23, #-1
	b	LBB19_3
LBB19_2:
	add	x22, x22, #8
	add	x21, x21, #1
	cmp	x21, #1
	b.eq	LBB19_5
LBB19_3:
	ldr	x8, [x20, x22]
	ldaddl	x23, x8, [x8]
	cmp	x8, #1
	b.ne	LBB19_2
	dmb	ishld
Ltmp76:
	add	x0, x20, x22
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp77:
	b	LBB19_2
LBB19_5:
	ldr	x8, [x19]
	cbz	x8, LBB19_7
	lsl	x1, x8, #3
	mov	x0, x20
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB19_7:
	mov	x0, x19
	ldr	x8, [x0, #56]!
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB19_9
	dmb	ishld
Ltmp85:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp86:
LBB19_9:
	ldr	x8, [x19, #24]
	orr	x9, x8, #0x8000000000000000
	mov	x10, #-9223372036854775808
	cmp	x9, x10
	b.ne	LBB19_11
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x24, x23, [sp], #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	ret
LBB19_11:
	.cfi_restore_state
	.cfi_remember_state
	ldr	x0, [x19, #32]
	lsl	x1, x8, #3
	mov	w2, #4
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x24, x23, [sp], #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB19_12:
	.cfi_restore_state
Ltmp87:
	mov	x21, x0
	b	LBB19_18
LBB19_13:
Ltmp78:
	mov	x9, x21
	mov	x21, x0
	cbnz	x9, LBB19_21
LBB19_14:
	ldr	x8, [x19]
	cbz	x8, LBB19_16
	lsl	x1, x8, #3
	mov	x0, x20
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB19_16:
	mov	x0, x19
	ldr	x8, [x0, #56]!
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB19_18
	dmb	ishld
Ltmp82:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp83:
LBB19_18:
	ldr	x8, [x19, #24]
	orr	x9, x8, #0x8000000000000000
	mov	x10, #-9223372036854775808
	cmp	x9, x10
	b.eq	LBB19_20
	ldr	x0, [x19, #32]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB19_20:
	mov	x0, x21
	bl	__Unwind_Resume
LBB19_21:
	mov	x8, x9
	add	x9, x20, x22
	add	x22, x9, #8
	neg	x23, x8
	mov	x24, #-1
	b	LBB19_23
LBB19_22:
	add	x22, x22, #8
	subs	x23, x23, #1
	b.eq	LBB19_14
LBB19_23:
	ldr	x8, [x22]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB19_22
	dmb	ishld
Ltmp79:
	mov	x0, x22
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp80:
	b	LBB19_22
LBB19_25:
Ltmp81:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB19_26:
Ltmp84:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception4:
	.byte	255
	.byte	155
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp76-Lfunc_begin4
	.uleb128 Ltmp77-Ltmp76
	.uleb128 Ltmp78-Lfunc_begin4
	.byte	0
	.uleb128 Ltmp85-Lfunc_begin4
	.uleb128 Ltmp86-Ltmp85
	.uleb128 Ltmp87-Lfunc_begin4
	.byte	0
	.uleb128 Ltmp82-Lfunc_begin4
	.uleb128 Ltmp83-Ltmp82
	.uleb128 Ltmp84-Lfunc_begin4
	.byte	1
	.uleb128 Ltmp83-Lfunc_begin4
	.uleb128 Ltmp79-Ltmp83
	.byte	0
	.byte	0
	.uleb128 Ltmp79-Lfunc_begin4
	.uleb128 Ltmp80-Ltmp79
	.uleb128 Ltmp81-Lfunc_begin4
	.byte	1
Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase4:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core3ptr96drop_in_place$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$GT$17hb673f3388f78129cE:
	.cfi_startproc
	ldr	w8, [x0]
	cbz	w8, LBB20_6
	cmp	w8, #1
	b.ne	LBB20_4
	ldr	x8, [x0, #8]!
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB20_6
	dmb	ishld
	b	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB20_4:
	ldr	x8, [x0, #8]!
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB20_6
	dmb	ishld
	b	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB20_6:
	ret
	.cfi_endproc

	.p2align	2
__ZN4core4iter6traits8iterator8Iterator7collect17h09f34a15da24f7f9E:
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception5
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_remember_state
	mov	x20, x0
	ldp	x19, x22, [x1]
	ldp	x21, x23, [x1, #16]
Ltmp88:
	add	x0, sp, #8
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp89:
	cmp	x22, x23
	b.eq	LBB21_4
LBB21_2:
	ldp	w2, w3, [x22]
Ltmp91:
	add	x0, sp, #36
	add	x1, sp, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp92:
	add	x22, x22, #8
	cmp	x22, x23
	b.ne	LBB21_2
LBB21_4:
	cbz	x21, LBB21_6
	lsl	x1, x21, #3
	mov	x0, x19
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB21_6:
	ldur	q0, [sp, #8]
	str	q0, [x20]
	ldr	x8, [sp, #24]
	str	x8, [x20, #16]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	ret
LBB21_7:
	.cfi_restore_state
Ltmp90:
	mov	x20, x0
	cbz	x21, LBB21_12
	lsl	x1, x21, #3
	mov	x0, x19
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x20
	bl	__Unwind_Resume
LBB21_9:
Ltmp93:
	mov	x20, x0
	cbz	x21, LBB21_11
	lsl	x1, x21, #3
	mov	x0, x19
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB21_11:
Ltmp94:
	add	x0, sp, #8
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp95:
LBB21_12:
	mov	x0, x20
	bl	__Unwind_Resume
LBB21_13:
Ltmp96:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table21:
Lexception5:
	.byte	255
	.byte	155
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp88-Lfunc_begin5
	.uleb128 Ltmp89-Ltmp88
	.uleb128 Ltmp90-Lfunc_begin5
	.byte	0
	.uleb128 Ltmp91-Lfunc_begin5
	.uleb128 Ltmp92-Ltmp91
	.uleb128 Ltmp93-Lfunc_begin5
	.byte	0
	.uleb128 Ltmp92-Lfunc_begin5
	.uleb128 Ltmp94-Ltmp92
	.byte	0
	.byte	0
	.uleb128 Ltmp94-Lfunc_begin5
	.uleb128 Ltmp95-Ltmp94
	.uleb128 Ltmp96-Lfunc_begin5
	.byte	1
	.uleb128 Ltmp95-Lfunc_begin5
	.uleb128 Lfunc_end5-Ltmp95
	.byte	0
	.byte	0
Lcst_end5:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase5:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core4iter6traits8iterator8Iterator7collect17h12b32afc1eebdbf0E:
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception6
	sub	sp, sp, #400
	.cfi_def_cfa_offset 400
	stp	x28, x27, [sp, #320]
	stp	x24, x23, [sp, #336]
	stp	x22, x21, [sp, #352]
	stp	x20, x19, [sp, #368]
	stp	x29, x30, [sp, #384]
	add	x29, sp, #384
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_remember_state
	mov	x19, x0
	ldp	q0, q1, [x1, #64]
	stp	q0, q1, [sp, #64]
	ldr	q0, [x1, #96]
	str	q0, [sp, #96]
	ldp	q0, q1, [x1]
	stp	q0, q1, [sp]
	ldp	q1, q0, [x1, #32]
	stp	q1, q0, [sp, #32]
Ltmp97:
	add	x0, sp, #140
	mov	x1, sp
	bl	__ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde31dda6ceb1b885E
Ltmp98:
	ldrb	w8, [sp, #156]
	cmp	w8, #3
	b.ne	LBB22_5
	mov	w8, #4
	stp	xzr, x8, [x19]
	str	xzr, [x19, #16]
	ldr	x0, [sp, #72]
	cbz	x0, LBB22_42
	ldr	x8, [sp, #88]
	cbz	x8, LBB22_42
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	.cfi_def_cfa wsp, 400
	ldp	x29, x30, [sp, #384]
	ldp	x20, x19, [sp, #368]
	ldp	x22, x21, [sp, #352]
	ldp	x24, x23, [sp, #336]
	ldp	x28, x27, [sp, #320]
	add	sp, sp, #400
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w27
	.cfi_restore w28
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB22_5:
	.cfi_restore_state
	.cfi_remember_state
	ldr	x20, [sp, #72]
	ldr	w8, [sp]
	cmp	w8, #2
	cbz	x20, LBB22_10
	b.eq	LBB22_18
	tbz	w8, #0, LBB22_12
LBB22_8:
	ldpsw	x8, x9, [sp, #4]
	sub	x10, x9, x8
	cmp	w8, w9
	csel	x8, x10, xzr, lt
	ldr	w9, [sp, #16]
	cmp	w9, #1
	b.eq	LBB22_13
LBB22_9:
	mov	x9, #0
	ldr	x10, [sp, #32]
	cbnz	x10, LBB22_14
	b	LBB22_16
LBB22_10:
	b.eq	LBB22_18
	tbnz	w8, #0, LBB22_8
LBB22_12:
	mov	x8, #0
	ldr	w9, [sp, #16]
	cmp	w9, #1
	b.ne	LBB22_9
LBB22_13:
	ldpsw	x9, x10, [sp, #20]
	sub	x11, x10, x9
	cmp	w9, w10
	csel	x9, x11, xzr, lt
	ldr	x10, [sp, #32]
	cbz	x10, LBB22_16
LBB22_14:
	ldp	w10, w11, [sp, #40]
	cmp	w10, w11
	b.ge	LBB22_16
	mov	x8, #0
	add	x9, sp, #160
	b	LBB22_17
LBB22_16:
	add	x8, x9, x8
	sub	x9, x29, #104
LBB22_17:
	str	x8, [x9]
LBB22_18:
Lloh46:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh47:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #80
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB22_43
	mov	x21, x0
	add	x22, sp, #140
	ldr	q0, [x22]
	str	q0, [x0]
	ldr	w8, [sp, #156]
	str	w8, [x0, #16]
	mov	w8, #4
	stp	x8, x0, [sp, #112]
	mov	w8, #1
	str	x8, [sp, #128]
	ldp	q0, q1, [sp, #64]
	stp	q0, q1, [sp, #224]
	ldr	q0, [sp, #96]
	str	q0, [sp, #256]
	ldp	q0, q1, [sp]
	stp	q0, q1, [sp, #160]
	ldp	q1, q0, [sp, #32]
	mov	w23, #2
	mov	w24, #20
	stp	q1, q0, [sp, #192]
	b	LBB22_21
LBB22_20:
	add	x8, x21, x24
	ldur	q0, [x22, #140]
	ldur	w9, [x29, #-88]
	str	w9, [x8, #16]
	str	q0, [x8]
	str	x23, [sp, #128]
	add	x23, x23, #1
	add	x24, x24, #20
LBB22_21:
Ltmp100:
	sub	x0, x29, #104
	add	x1, sp, #160
	bl	__ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde31dda6ceb1b885E
Ltmp101:
	ldurb	w8, [x29, #-88]
	cmp	w8, #3
	b.eq	LBB22_39
	sub	x1, x23, #1
	ldr	x8, [sp, #112]
	cmp	x1, x8
	b.ne	LBB22_20
	ldr	x20, [sp, #232]
	ldr	w8, [sp, #160]
	cmp	w8, #2
	cbz	x20, LBB22_29
	b.eq	LBB22_37
	tbz	w8, #0, LBB22_31
LBB22_27:
	ldpsw	x8, x9, [sp, #164]
	sub	x10, x9, x8
	cmp	w8, w9
	csel	x8, x10, xzr, lt
	ldr	w9, [sp, #176]
	cmp	w9, #1
	b.eq	LBB22_32
LBB22_28:
	mov	x9, #0
	ldr	x10, [sp, #192]
	cbnz	x10, LBB22_33
	b	LBB22_35
LBB22_29:
	b.eq	LBB22_37
	tbnz	w8, #0, LBB22_27
LBB22_31:
	mov	x8, #0
	ldr	w9, [sp, #176]
	cmp	w9, #1
	b.ne	LBB22_28
LBB22_32:
	ldpsw	x9, x10, [sp, #180]
	sub	x11, x10, x9
	cmp	w9, w10
	csel	x9, x11, xzr, lt
	ldr	x10, [sp, #192]
	cbz	x10, LBB22_35
LBB22_33:
	ldp	w10, w11, [sp, #200]
	cmp	w10, w11
	b.ge	LBB22_35
	mov	x8, #0
	sub	x9, x29, #72
	b	LBB22_36
LBB22_35:
	add	x8, x9, x8
	sub	x9, x29, #80
LBB22_36:
	str	x8, [x9]
LBB22_37:
Ltmp103:
	add	x0, sp, #112
	mov	w2, #1
	bl	__ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf1340d61125a9398E
Ltmp104:
	ldr	x21, [sp, #120]
	b	LBB22_20
LBB22_39:
	ldr	x0, [sp, #232]
	ldr	x8, [sp, #248]
	cmp	x0, #0
	ccmp	x8, #0, #4, ne
	b.eq	LBB22_41
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB22_41:
	ldr	q0, [sp, #112]
	str	q0, [x19]
	ldr	x8, [sp, #128]
	str	x8, [x19, #16]
LBB22_42:
	.cfi_def_cfa wsp, 400
	ldp	x29, x30, [sp, #384]
	ldp	x20, x19, [sp, #368]
	ldp	x22, x21, [sp, #352]
	ldp	x24, x23, [sp, #336]
	ldp	x28, x27, [sp, #320]
	add	sp, sp, #400
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB22_43:
	.cfi_restore_state
Ltmp106:
Lloh48:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.14@PAGE
Lloh49:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.14@PAGEOFF
	mov	w0, #4
	mov	w1, #80
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp107:
	brk	#0x1
LBB22_45:
Ltmp108:
	mov	x19, x0
	b	LBB22_47
LBB22_46:
Ltmp99:
	mov	x19, x0
	ldr	x20, [sp, #72]
LBB22_47:
	cbz	x20, LBB22_54
	ldr	x8, [sp, #88]
	cbnz	x8, LBB22_56
	b	LBB22_54
LBB22_49:
Ltmp105:
	mov	x19, x0
	b	LBB22_51
LBB22_50:
Ltmp102:
	mov	x19, x0
	ldr	x20, [sp, #232]
LBB22_51:
	ldr	x8, [sp, #248]
	cmp	x20, #0
	ccmp	x8, #0, #4, ne
	b.eq	LBB22_53
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x20
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB22_53:
	ldr	x8, [sp, #112]
	cbnz	x8, LBB22_55
LBB22_54:
	mov	x0, x19
	bl	__Unwind_Resume
LBB22_55:
	ldr	x20, [sp, #120]
LBB22_56:
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x20
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table22:
Lexception6:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp97-Lfunc_begin6
	.uleb128 Ltmp98-Ltmp97
	.uleb128 Ltmp99-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp100-Lfunc_begin6
	.uleb128 Ltmp101-Ltmp100
	.uleb128 Ltmp102-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp103-Lfunc_begin6
	.uleb128 Ltmp104-Ltmp103
	.uleb128 Ltmp105-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp106-Lfunc_begin6
	.uleb128 Ltmp107-Ltmp106
	.uleb128 Ltmp108-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp107-Lfunc_begin6
	.uleb128 Lfunc_end6-Ltmp107
	.byte	0
	.byte	0
Lcst_end6:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6shared5pivot11median3_rec17hd393996d487e6859E:
	.cfi_startproc
	stp	x28, x27, [sp, #-96]!
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x21, x4
	mov	x19, x2
	mov	x20, x1
	mov	x22, x0
	cmp	x3, #8
	b.lo	LBB23_2
	lsr	x23, x3, #3
	add	x8, x23, x23, lsl #2
	lsl	x24, x8, #4
	mov	w8, #140
	mul	x25, x23, x8
	add	x1, x22, x24
	add	x2, x22, x25
	mov	x0, x22
	mov	x3, x23
	mov	x4, x21
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17hd393996d487e6859E
	mov	x22, x0
	add	x1, x20, x24
	add	x2, x20, x25
	mov	x0, x20
	mov	x3, x23
	mov	x4, x21
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17hd393996d487e6859E
	mov	x20, x0
	add	x1, x19, x24
	add	x2, x19, x25
	mov	x0, x19
	mov	x3, x23
	mov	x4, x21
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17hd393996d487e6859E
	mov	x19, x0
LBB23_2:
	ldr	x24, [x21]
	ldr	x0, [x24]
	ldr	x1, [x24, #16]
	mov	x2, x22
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x24]
	ldr	x1, [x24, #16]
	mov	x2, x20
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x24, x0
	cmp	w23, w0
	cset	w26, lt
	ldr	x27, [x21]
	ldr	x0, [x27]
	ldr	x1, [x27, #16]
	mov	x2, x22
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x25, x0
	ldr	x0, [x27]
	ldr	x1, [x27, #16]
	mov	x2, x19
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w25, w0
	cset	w8, lt
	eor	w8, w26, w8
	tbnz	w8, #0, LBB23_4
	cmp	w23, w24
	cset	w22, lt
	ldr	x23, [x21]
	ldr	x0, [x23]
	ldr	x1, [x23, #16]
	mov	x2, x20
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x21, x0
	ldr	x0, [x23]
	ldr	x1, [x23, #16]
	mov	x2, x19
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w21, w0
	cset	w8, lt
	eor	w8, w22, w8
	cmp	w8, #0
	csel	x22, x19, x20, ne
LBB23_4:
	mov	x0, x22
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
	.cfi_endproc

	.p2align	2
__ZN4core5slice4sort6shared9smallsort12sort4_stable17h8cc200dbf3a96eeeE:
	.cfi_startproc
	stp	x28, x27, [sp, #-96]!
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	ldr	x0, [x2]
	ldr	x1, [x2, #16]
	add	x2, x21, #20
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x22, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x21
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w22, w0
	cset	w24, ge
	cset	w23, lt
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	add	x2, x21, #60
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x22, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	add	x2, x21, #40
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	w8, #20
	umaddl	x23, w23, w8, x21
	umaddl	x24, w24, w8, x21
	cmp	w22, w0
	mov	w8, #40
	mov	w9, #60
	csel	x10, x9, x8, lt
	add	x22, x21, x10
	csel	x8, x8, x9, lt
	add	x21, x21, x8
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x22
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x25, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x23
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x26, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x21
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x27, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w27, w0
	csel	x8, x22, x24, lt
	cmp	w25, w26
	csel	x25, x22, x23, lt
	csel	x23, x23, x8, lt
	csel	x8, x24, x22, lt
	cmp	w27, w0
	csel	x24, x24, x21, lt
	csel	x21, x21, x8, lt
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x21
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x22, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x23
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w22, w0
	csel	x8, x21, x23, lt
	csel	x9, x23, x21, lt
	ldr	q0, [x25]
	ldr	w10, [x25, #16]
	str	w10, [x19, #16]
	str	q0, [x19]
	ldr	w10, [x8, #16]
	ldr	q0, [x8]
	stur	q0, [x19, #20]
	str	w10, [x19, #36]
	ldr	w8, [x9, #16]
	ldr	q0, [x9]
	stur	q0, [x19, #40]
	str	w8, [x19, #56]
	ldr	w8, [x24, #16]
	ldr	q0, [x24]
	stur	q0, [x19, #60]
	str	w8, [x19, #76]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
	.cfi_endproc

	.p2align	2
__ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h909d53c8b1d19033E:
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception7
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_remember_state
	mov	x20, x2
	mov	x19, x0
	mov	x24, #0
	mov	w8, #20
	madd	x25, x1, x8, x0
	add	x8, x0, #20
	mov	x21, x0
	b	LBB25_4
LBB25_1:
	mov	x8, x19
LBB25_2:
	ldr	q0, [sp]
	str	q0, [x8]
	ldr	w9, [sp, #16]
	str	w9, [x8, #16]
LBB25_3:
	add	x8, x21, #20
	add	x24, x24, #20
	cmp	x8, x25
	b.eq	LBB25_11
LBB25_4:
	mov	x22, x21
	mov	x21, x8
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x8
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x22
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w23, w0
	b.ge	LBB25_3
	ldr	q0, [x21]
	str	q0, [sp]
	ldr	w8, [x21, #16]
	str	w8, [sp, #16]
	mov	x23, x24
LBB25_6:
	add	x26, x19, x23
	ldr	q0, [x26]
	stur	q0, [x26, #20]
	ldr	w8, [x26, #16]
	str	w8, [x26, #36]
	cbz	x23, LBB25_1
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
Ltmp109:
	mov	x2, sp
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp110:
	mov	x22, x0
	sub	x2, x26, #20
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
Ltmp111:
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp112:
	sub	x23, x23, #20
	cmp	w22, w0
	b.lt	LBB25_6
	add	x8, x19, x23
	add	x8, x8, #20
	b	LBB25_2
LBB25_11:
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	ret
LBB25_12:
	.cfi_restore_state
Ltmp113:
	add	x8, x19, x23
	ldr	q0, [sp]
	str	q0, [x8]
	ldr	w9, [sp, #16]
	str	w9, [x8, #16]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table25:
Lexception7:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7
	.uleb128 Ltmp109-Lfunc_begin7
	.byte	0
	.byte	0
	.uleb128 Ltmp109-Lfunc_begin7
	.uleb128 Ltmp112-Ltmp109
	.uleb128 Ltmp113-Lfunc_begin7
	.byte	0
	.uleb128 Ltmp112-Lfunc_begin7
	.uleb128 Lfunc_end7-Ltmp112
	.byte	0
	.byte	0
Lcst_end7:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6stable14driftsort_main17h64100529e2ae971cE:
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception8
	stp	x28, x27, [sp, #-80]!
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_remember_state
	sub	sp, sp, #1, lsl #12
	str	xzr, [sp]
	mov	x19, x2
	sub	x8, x1, x1, lsr #1
	mov	w9, #6784
	movk	w9, #6, lsl #16
	cmp	x1, x9
	csel	x9, x1, x9, lo
	cmp	x9, x8
	csel	x8, x9, x8, hi
	mov	w9, #48
	cmp	x8, #48
	csel	x20, x8, x9, hi
	cmp	x8, #205
	b.hs	LBB26_2
	cmp	x1, #65
	cset	w4, lo
	mov	x2, sp
	mov	w3, #204
	mov	x5, x19
	bl	__ZN4core5slice4sort6stable5drift4sort17hf8b3a52ff121b903E
	add	sp, sp, #1, lsl #12
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x28, x27, [sp], #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB26_2:
	.cfi_restore_state
	.cfi_remember_state
	mov	x23, #0
	mov	w8, #20
	umulh	x8, x20, x8
	add	x9, x20, x20, lsl #2
	lsl	x22, x9, #2
	cmp	xzr, x8
	b.ne	LBB26_10
	mov	x8, #9223372036854775804
	cmp	x22, x8
	b.hi	LBB26_10
	cbz	x22, LBB26_7
Lloh50:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh51:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w23, #4
	mov	x24, x0
	mov	x0, x22
	mov	x21, x1
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x1, x21
	mov	x21, x0
	cbz	x0, LBB26_10
	mov	x0, x24
	b	LBB26_8
LBB26_7:
	mov	x20, #0
	mov	w21, #4
LBB26_8:
	cmp	x1, #65
	cset	w4, lo
Ltmp114:
	mov	x2, x21
	mov	x3, x20
	mov	x5, x19
	bl	__ZN4core5slice4sort6stable5drift4sort17hf8b3a52ff121b903E
Ltmp115:
	add	x8, x20, x20, lsl #2
	lsl	x1, x8, #2
	mov	x0, x21
	mov	w2, #4
	add	sp, sp, #1, lsl #12
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x28, x27, [sp], #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w27
	.cfi_restore w28
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB26_10:
	.cfi_restore_state
Lloh52:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.24@PAGE
Lloh53:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.24@PAGEOFF
	mov	x0, x23
	mov	x1, x22
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB26_11:
Ltmp116:
	mov	x19, x0
	add	x8, x20, x20, lsl #2
	lsl	x1, x8, #2
	mov	x0, x21
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpAdd	Lloh52, Lloh53
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table26:
Lexception8:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8
	.uleb128 Ltmp114-Lfunc_begin8
	.byte	0
	.byte	0
	.uleb128 Ltmp114-Lfunc_begin8
	.uleb128 Ltmp115-Ltmp114
	.uleb128 Ltmp116-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp115-Lfunc_begin8
	.uleb128 Lfunc_end8-Ltmp115
	.byte	0
	.byte	0
Lcst_end8:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6stable5drift4sort17hf8b3a52ff121b903E:
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception9
	stp	x28, x27, [sp, #-96]!
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	sub	sp, sp, #768
	mov	x27, x5
	str	w4, [sp, #36]
	mov	x25, x2
	str	x0, [sp, #120]
	mov	x8, #4611686018427387903
	add	x19, x1, x8
	cmp	x1, #1, lsl #12
	str	x3, [sp, #144]
	b.hi	LBB27_2
	sub	x8, x1, x1, lsr #1
	mov	w9, #64
	cmp	x8, #64
	csel	x8, x8, x9, lo
	str	x8, [sp, #64]
	b	LBB27_3
LBB27_2:
	mov	x0, x1
	mov	x20, x1
	bl	__ZN4core5slice4sort6stable5drift11sqrt_approx17h433299a3f8487975E
	mov	x1, x20
	ldr	x3, [sp, #144]
	str	x0, [sp, #64]
LBB27_3:
	mov	x20, #0
	mov	x13, #0
	ldr	x8, [sp, #120]
	add	x10, x8, #20
	add	x9, x8, #16
	stp	x9, x10, [sp, #16]
	sub	x9, x8, #4
	str	x9, [sp, #8]
	sub	x9, x8, #20
	mov	w21, #20
	sub	x14, x29, #154
	add	x15, sp, #160
	mov	w22, #1
	udiv	x8, x19, x1
	stp	x8, x9, [sp, #40]
	str	x25, [sp, #152]
	stp	x1, x27, [sp, #88]
	subs	x28, x1, x20
	b.hi	LBB27_5
LBB27_4:
	mov	w10, #0
	mov	w11, #1
	cmp	x13, #2
	b.hs	LBB27_14
	b	LBB27_42
LBB27_5:
	str	x13, [sp, #136]
	ldr	x8, [sp, #120]
	madd	x26, x20, x21, x8
	ldr	x8, [sp, #64]
	cmp	x28, x8
	b.hs	LBB27_8
LBB27_6:
	ldr	w8, [sp, #36]
	tbz	w8, #0, LBB27_11
	cmp	x28, #32
	mov	w8, #32
	csel	x24, x28, x8, lo
	mov	x0, x26
	mov	x1, x24
	mov	x2, x25
	ldr	x3, [sp, #144]
	mov	w4, #0
	mov	x5, #0
	mov	x6, x27
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h0738e046c6097daaE
	ldr	x3, [sp, #144]
	mov	w8, #1
	orr	x11, x8, x24, lsl #1
	b	LBB27_12
LBB27_8:
	cmp	x28, #2
	b.hs	LBB27_44
LBB27_9:
	ldr	x13, [sp, #136]
	sub	x14, x29, #154
	add	x15, sp, #160
LBB27_10:
	mov	w8, #1
	orr	x11, x8, x28, lsl #1
	ldr	x1, [sp, #88]
	b	LBB27_13
LBB27_11:
	ldr	x8, [sp, #64]
	cmp	x28, x8
	csel	x8, x28, x8, lo
	lsl	x11, x8, #1
LBB27_12:
	ldr	x1, [sp, #88]
	ldr	x13, [sp, #136]
	sub	x14, x29, #154
	add	x15, sp, #160
LBB27_13:
	lsl	x8, x20, #1
	sub	x9, x8, x22, lsr #1
	add	x8, x8, x11, lsr #1
	ldr	x10, [sp, #40]
	mul	x9, x9, x10
	mul	x8, x8, x10
	eor	x8, x8, x9
	clz	x10, x8
	cmp	x13, #2
	b.lo	LBB27_42
LBB27_14:
	add	x8, x20, x20, lsl #2
	lsl	x8, x8, #2
	ldr	x9, [sp, #120]
	add	x9, x9, x8
	str	x9, [sp, #56]
	ldr	x9, [sp, #48]
	add	x8, x9, x8
	stp	x8, x11, [sp, #72]
	stp	x10, x20, [sp, #104]
	b	LBB27_16
LBB27_15:
	lsl	x22, x9, #1
	cmp	x23, #1
	b.ls	LBB27_40
LBB27_16:
	sub	x23, x13, #1
	ldrb	w8, [x14, x23]
	cmp	w8, w10
	b.lo	LBB27_41
	mov	x13, x23
	ldr	x19, [x15, x23, lsl #3]
	lsr	x28, x19, #1
	lsr	x24, x22, #1
	orr	w8, w19, w22
	and	x8, x8, #0x1
	add	x9, x28, x24
	cmp	x9, x3
	ccmp	x8, #0, #0, ls
	b.eq	LBB27_15
	stp	x9, x13, [sp, #128]
	sub	x8, x20, x9
	ldr	x9, [sp, #120]
	madd	x26, x8, x21, x9
	tbnz	w19, #0, LBB27_21
	orr	x8, x28, #0x1
	clz	x8, x8
	lsl	w8, w8, #1
	eor	w4, w8, #0x7e
	mov	x0, x26
	mov	x1, x28
	mov	x2, x25
	ldr	x3, [sp, #144]
	mov	x5, #0
	mov	x6, x27
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h0738e046c6097daaE
	ldr	x3, [sp, #144]
	tbz	w22, #0, LBB27_22
LBB27_20:
	cmp	x22, #2
	b.hs	LBB27_23
	b	LBB27_39
LBB27_21:
	tbnz	w22, #0, LBB27_20
LBB27_22:
	madd	x0, x28, x21, x26
	orr	x8, x24, #0x1
	clz	x8, x8
	lsl	w8, w8, #1
	eor	w4, w8, #0x7e
	mov	x1, x24
	mov	x2, x25
	ldr	x3, [sp, #144]
	mov	x5, #0
	mov	x6, x27
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h0738e046c6097daaE
	ldr	x3, [sp, #144]
	cmp	x22, #2
	b.lo	LBB27_39
LBB27_23:
	cmp	x19, #2
	b.lo	LBB27_39
	cmp	x24, x28
	csel	x20, x24, x28, lo
	cmp	x3, x20
	b.lo	LBB27_39
	ldr	x19, [x27]
	madd	x27, x28, x21, x26
	cmp	x28, x24
	csel	x1, x27, x26, hi
	add	x8, x20, x20, lsl #2
	lsl	x25, x8, #2
	ldr	x0, [sp, #152]
	mov	x2, x25
	bl	_memcpy
	ldr	x8, [sp, #152]
	add	x22, x8, x25
	ldr	x25, [sp, #152]
	cmp	x28, x24
	b.ls	LBB27_31
	ldr	x20, [sp, #72]
LBB27_27:
	sub	x24, x22, #20
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
Ltmp122:
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp123:
	mov	x28, x0
	sub	x25, x27, #20
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
Ltmp124:
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp125:
	cmp	w28, w0
	cset	w8, lt
	cset	w9, ge
	csel	x10, x25, x24, lt
	ldr	q0, [x10]
	ldr	w10, [x10, #16]
	str	w10, [x20, #16]
	str	q0, [x20], #-20
	mov	w10, #20
	umaddl	x27, w9, w10, x25
	mov	w21, #20
	umaddl	x22, w8, w10, x24
	cmp	x27, x26
	ldr	x25, [sp, #152]
	ccmp	x22, x25, #4, ne
	b.ne	LBB27_27
	mov	x26, x27
	b	LBB27_37
LBB27_31:
	cbz	x20, LBB27_37
	mov	x24, x25
	ldr	x20, [sp, #56]
LBB27_33:
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
Ltmp117:
	mov	x2, x27
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp118:
	mov	x25, x0
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
Ltmp119:
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp120:
	cmp	w25, w0
	cset	w8, lt
	cset	w9, ge
	csel	x10, x27, x24, lt
	ldr	q0, [x10]
	ldr	w10, [x10, #16]
	str	w10, [x26, #16]
	str	q0, [x26], #20
	mov	w10, #20
	umaddl	x24, w9, w10, x24
	mov	w21, #20
	umaddl	x27, w8, w10, x27
	cmp	x24, x22
	ccmp	x27, x20, #4, ne
	b.ne	LBB27_33
	ldr	x25, [sp, #152]
	b	LBB27_38
LBB27_37:
	mov	x24, x25
LBB27_38:
	sub	x2, x22, x24
	mov	x0, x26
	mov	x1, x24
	bl	_memcpy
	ldr	x27, [sp, #96]
	ldr	x3, [sp, #144]
LBB27_39:
	mov	w8, #1
	ldp	x9, x13, [sp, #128]
	orr	x22, x8, x9, lsl #1
	ldp	x10, x20, [sp, #104]
	sub	x14, x29, #154
	add	x15, sp, #160
	cmp	x23, #1
	b.hi	LBB27_16
LBB27_40:
	mov	w13, #1
LBB27_41:
	ldp	x11, x1, [sp, #80]
LBB27_42:
	str	x22, [x15, x13, lsl #3]
	strb	w10, [x14, x13]
	cmp	x1, x20
	b.ls	LBB27_67
	add	x13, x13, #1
	add	x20, x20, x11, lsr #1
	mov	x22, x11
	subs	x28, x1, x20
	b.hi	LBB27_5
	b	LBB27_4
LBB27_44:
	ldr	x19, [x27]
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
	add	x2, x26, #20
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
	mov	x2, x26
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w23, w0
	b.ge	LBB27_48
	cmp	x28, #2
	b.ne	LBB27_51
	ldr	x8, [sp, #64]
	cmp	x8, #2
	ldr	x3, [sp, #144]
	b.hi	LBB27_6
	mov	w8, #1
	mov	w23, #2
	ldr	x13, [sp, #136]
	sub	x14, x29, #154
	add	x15, sp, #160
	b	LBB27_64
LBB27_48:
	cmp	x28, #2
	b.ne	LBB27_54
	ldr	x8, [sp, #64]
	cmp	x8, #2
	ldr	x3, [sp, #144]
	b.hi	LBB27_6
	mov	w28, #2
	b	LBB27_9
LBB27_51:
	str	w0, [sp, #104]
	str	w23, [sp, #128]
	ldr	x8, [sp, #24]
	madd	x24, x20, x21, x8
	mov	w23, #2
LBB27_52:
	add	x25, x24, #20
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x27, x0
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w27, w0
	b.ge	LBB27_58
	add	x23, x23, #1
	mov	x24, x25
	cmp	x28, x23
	b.ne	LBB27_52
	b	LBB27_57
LBB27_54:
	str	w0, [sp, #104]
	str	w23, [sp, #128]
	ldr	x8, [sp, #24]
	madd	x25, x20, x21, x8
	mov	w23, #2
LBB27_55:
	add	x24, x25, #20
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x27, x0
	ldr	x0, [x19]
	ldr	x1, [x19, #16]
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w27, w0
	b.lt	LBB27_58
	add	x23, x23, #1
	mov	x25, x24
	cmp	x28, x23
	b.ne	LBB27_55
LBB27_57:
	mov	x23, x28
LBB27_58:
	ldr	x27, [sp, #96]
	ldr	x8, [sp, #64]
	cmp	x23, x8
	ldp	x3, x25, [sp, #144]
	b.lo	LBB27_6
	ldr	w8, [sp, #128]
	ldr	w9, [sp, #104]
	cmp	w8, w9
	b.ge	LBB27_62
	cmp	x23, #2
	ldr	x13, [sp, #136]
	sub	x14, x29, #154
	add	x15, sp, #160
	b.hs	LBB27_63
	mov	w28, #1
	b	LBB27_10
LBB27_62:
	mov	x28, x23
	b	LBB27_9
LBB27_63:
	lsr	x8, x23, #1
LBB27_64:
	add	x9, x20, x20, lsl #2
	lsl	x10, x9, #2
	ldp	x11, x9, [sp, #8]
	add	x9, x9, x10
	madd	x10, x23, x21, x10
	add	x10, x11, x10
LBB27_65:
	ldur	q0, [x9, #-16]
	ldur	q1, [x10, #-16]
	stur	q1, [x9, #-16]
	stur	q0, [x10, #-16]
	ldr	w11, [x10]
	ldr	w12, [x9]
	str	w11, [x9], #20
	str	w12, [x10], #-20
	sub	x8, x8, #1
	cbnz	x8, LBB27_65
	mov	x28, x23
	b	LBB27_10
LBB27_67:
	tbnz	w22, #0, LBB27_69
	orr	x8, x1, #0x1
	clz	x8, x8
	lsl	w8, w8, #1
	eor	w4, w8, #0x7e
	ldr	x0, [sp, #120]
	mov	x2, x25
	mov	x5, #0
	mov	x6, x27
	add	sp, sp, #768
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	b	__ZN4core5slice4sort6stable9quicksort9quicksort17h0738e046c6097daaE
LBB27_69:
	.cfi_restore_state
	.cfi_remember_state
	add	sp, sp, #768
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB27_70:
	.cfi_restore_state
Ltmp121:
	mov	x20, x0
	mov	x27, x26
	mov	x1, x24
	sub	x2, x22, x24
	mov	x0, x27
	bl	_memcpy
	mov	x0, x20
	bl	__Unwind_Resume
LBB27_71:
Ltmp126:
	mov	x20, x0
	ldr	x1, [sp, #152]
	sub	x2, x22, x1
	mov	x0, x27
	bl	_memcpy
	mov	x0, x20
	bl	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table27:
Lexception9:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9
	.uleb128 Ltmp122-Lfunc_begin9
	.byte	0
	.byte	0
	.uleb128 Ltmp122-Lfunc_begin9
	.uleb128 Ltmp125-Ltmp122
	.uleb128 Ltmp126-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp117-Lfunc_begin9
	.uleb128 Ltmp120-Ltmp117
	.uleb128 Ltmp121-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp120-Lfunc_begin9
	.uleb128 Lfunc_end9-Ltmp120
	.byte	0
	.byte	0
Lcst_end9:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6stable9quicksort9quicksort17h0738e046c6097daaE:
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception10
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x28, x27, [sp, #144]
	stp	x26, x25, [sp, #160]
	stp	x24, x23, [sp, #176]
	stp	x22, x21, [sp, #192]
	stp	x20, x19, [sp, #208]
	stp	x29, x30, [sp, #224]
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	mov	x26, x6
	str	x5, [sp, #8]
	str	x3, [sp, #24]
	mov	x19, x2
	mov	x21, x1
	mov	x25, x0
	cmp	x1, #33
	b.hs	LBB28_5
LBB28_1:
	cmp	x21, #2
	b.lo	LBB28_69
	add	x8, x21, #16
	ldr	x9, [sp, #24]
	cmp	x9, x8
	b.lo	LBB28_72
	ldr	x22, [x26]
	lsr	x28, x21, #1
	add	x20, x28, x28, lsl #2
	cmp	x21, #7
	str	x20, [sp, #48]
	b.ls	LBB28_36
	mov	x0, x25
	mov	x1, x19
	mov	x2, x22
	bl	__ZN4core5slice4sort6shared9smallsort12sort4_stable17h8cc200dbf3a96eeeE
	lsl	x8, x20, #2
	add	x0, x25, x8
	add	x1, x19, x8
	mov	x2, x22
	bl	__ZN4core5slice4sort6shared9smallsort12sort4_stable17h8cc200dbf3a96eeeE
	mov	w8, #4
	str	x8, [sp, #8]
	cmp	x8, x28
	str	x28, [sp, #32]
	b.lo	LBB28_37
	b	LBB28_48
LBB28_5:
	mov	x22, x4
	sub	x8, x19, #20
	str	x8, [sp]
	mov	w24, #20
	str	x26, [sp, #16]
LBB28_6:
	mov	x1, x21
	str	x25, [sp, #56]
LBB28_7:
	cbz	w22, LBB28_35
	lsr	x3, x1, #3
	mov	w8, #80
	madd	x21, x3, x8, x25
	mov	w8, #140
	madd	x28, x3, x8, x25
	str	x1, [sp, #48]
	cmp	x1, #64
	b.hs	LBB28_11
	ldr	x20, [x26]
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x21
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x26, x0
	cmp	w23, w0
	str	w22, [sp, #32]
	cset	w22, lt
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x27, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x28
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w27, w0
	cset	w8, lt
	eor	w8, w22, w8
	ldr	w22, [sp, #32]
	mov	x27, x25
	tbnz	w8, #0, LBB28_12
	cmp	w23, w26
	cset	w22, lt
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x21
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x28
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w23, w0
	cset	w8, lt
	eor	w8, w22, w8
	ldr	w22, [sp, #32]
	cmp	w8, #0
	csel	x27, x28, x21, ne
	b	LBB28_12
LBB28_11:
	mov	x0, x25
	mov	x1, x21
	mov	x2, x28
	mov	x4, x26
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17hd393996d487e6859E
	mov	x27, x0
LBB28_12:
	sub	w22, w22, #1
	sub	x8, x27, x25
	lsr	x8, x8, #2
	mov	x9, #-3689348814741910324
	movk	x9, #52429
	mul	x8, x8, x9
	str	x8, [sp, #40]
	ldr	q0, [x27]
	str	q0, [sp, #64]
	ldr	w8, [x27, #16]
	str	w8, [sp, #80]
	ldp	x8, x26, [sp, #8]
	ldr	x23, [sp, #48]
	str	w22, [sp, #32]
	cbz	x8, LBB28_14
	ldr	x20, [x26]
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	ldr	x2, [sp, #8]
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x21, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x27
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w21, w0
	b.ge	LBB28_25
LBB28_14:
	ldr	x8, [sp, #24]
	cmp	x8, x23
	b.lo	LBB28_72
	mov	x21, #0
	ldr	x20, [x26]
	madd	x26, x23, x24, x19
	mov	x28, x25
	ldr	x25, [sp, #40]
	ldr	x8, [sp, #56]
	madd	x22, x25, x24, x8
	cmp	x28, x22
	b.hs	LBB28_17
LBB28_16:
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x28
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x20]
	ldr	x1, [x20, #16]
	mov	x2, x27
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	sub	x26, x26, #20
	cmp	w23, w0
	csel	x8, x19, x26, lt
	madd	x8, x21, x24, x8
	ldr	w9, [x28, #16]
	ldr	q0, [x28], #20
	str	q0, [x8]
	str	w9, [x8, #16]
	cinc	x21, x21, lt
	cmp	x28, x22
	b.lo	LBB28_16
LBB28_17:
	ldr	x23, [sp, #48]
	cmp	x25, x23
	b.eq	LBB28_19
	sub	x26, x26, #20
	madd	x8, x21, x24, x26
	ldr	q0, [x28]
	str	q0, [x8]
	ldr	w9, [x28, #16]
	str	w9, [x8, #16]
	add	x28, x28, #20
	mov	x25, x23
	ldr	x8, [sp, #56]
	madd	x22, x23, x24, x8
	cmp	x28, x22
	b.lo	LBB28_16
	b	LBB28_17
LBB28_19:
	add	x8, x21, x21, lsl #2
	lsl	x2, x8, #2
	ldr	x25, [sp, #56]
	mov	x0, x25
	mov	x1, x19
	bl	_memcpy
	subs	x1, x23, x21
	b.eq	LBB28_22
	madd	x8, x21, x24, x25
	mov	x9, x1
	ldr	x10, [sp]
	madd	x10, x23, x24, x10
LBB28_21:
	ldr	q0, [x10]
	str	q0, [x8]
	ldr	w11, [x10, #16]
	str	w11, [x8, #16]
	add	x8, x8, #20
	sub	x10, x10, #20
	subs	x9, x9, #1
	b.ne	LBB28_21
LBB28_22:
	ldr	x26, [sp, #16]
	ldr	w22, [sp, #32]
	cbz	x21, LBB28_25
	cmp	x23, x21
	b.lo	LBB28_70
	madd	x0, x21, x24, x25
	add	x5, sp, #64
	mov	x2, x19
	ldr	x3, [sp, #24]
	mov	x4, x22
	mov	x6, x26
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h0738e046c6097daaE
	mov	x1, x21
	cmp	x21, #33
	b.hs	LBB28_7
	b	LBB28_1
LBB28_25:
	ldr	x8, [sp, #24]
	cmp	x8, x23
	b.lo	LBB28_72
	mov	x28, #0
	madd	x20, x23, x24, x19
	mov	x21, x25
	ldr	x23, [sp, #40]
	str	x23, [sp, #40]
	madd	x25, x23, x24, x25
	cmp	x21, x25
	b.hs	LBB28_28
LBB28_27:
	ldr	x22, [x26]
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
	mov	x2, x27
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x23, x0
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
	mov	x2, x21
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	sub	x20, x20, #20
	cmp	w23, w0
	csel	x8, x19, x20, ge
	madd	x8, x28, x24, x8
	ldr	w9, [x21, #16]
	ldr	q0, [x21], #20
	str	q0, [x8]
	str	w9, [x8, #16]
	cinc	x28, x28, ge
	cmp	x21, x25
	b.lo	LBB28_27
LBB28_28:
	ldp	x8, x23, [sp, #40]
	cmp	x8, x23
	b.eq	LBB28_30
	sub	x20, x20, #20
	ldr	q0, [x21]
	ldr	w8, [x21, #16]
	madd	x9, x28, x24, x19
	str	w8, [x9, #16]
	str	q0, [x9]
	add	x28, x28, #1
	add	x21, x21, #20
	ldr	x25, [sp, #56]
	str	x23, [sp, #40]
	madd	x25, x23, x24, x25
	cmp	x21, x25
	b.lo	LBB28_27
	b	LBB28_28
LBB28_30:
	add	x8, x28, x28, lsl #2
	lsl	x2, x8, #2
	ldr	x25, [sp, #56]
	mov	x0, x25
	mov	x1, x19
	bl	_memcpy
	subs	x21, x23, x28
	ldr	w22, [sp, #32]
	b.eq	LBB28_69
	madd	x8, x28, x24, x25
	mov	x9, x21
	ldr	x10, [sp]
	madd	x10, x23, x24, x10
LBB28_32:
	ldr	q0, [x10]
	str	q0, [x8]
	ldr	w11, [x10, #16]
	str	w11, [x8, #16]
	add	x8, x8, #20
	sub	x10, x10, #20
	subs	x9, x9, #1
	b.ne	LBB28_32
	cmp	x23, x28
	b.lo	LBB28_73
	str	xzr, [sp, #8]
	madd	x25, x28, x24, x25
	cmp	x21, #33
	b.hs	LBB28_6
	b	LBB28_1
LBB28_35:
	mov	x0, x25
	mov	x2, x19
	ldr	x3, [sp, #24]
	mov	w4, #1
	mov	x5, x26
	bl	__ZN4core5slice4sort6stable5drift4sort17hf8b3a52ff121b903E
	b	LBB28_69
LBB28_36:
	ldr	q0, [x25]
	ldr	w8, [x25, #16]
	str	w8, [x19, #16]
	str	q0, [x19]
	lsl	x8, x20, #2
	add	x9, x25, x8
	add	x8, x19, x8
	ldr	q0, [x9]
	ldr	w9, [x9, #16]
	str	w9, [x8, #16]
	str	q0, [x8]
	mov	w8, #1
	str	x8, [sp, #8]
	cmp	x8, x28
	str	x28, [sp, #32]
	b.hs	LBB28_48
LBB28_37:
	ldr	x20, [sp, #8]
	add	x8, x20, #1
	add	x9, x20, x20, lsl #2
	lsl	x27, x9, #2
	b	LBB28_41
LBB28_38:
	mov	x8, x19
LBB28_39:
	ldr	q0, [sp, #96]
	str	q0, [x8]
	ldr	w9, [sp, #112]
	str	w9, [x8, #16]
	ldr	x28, [sp, #32]
LBB28_40:
	add	x27, x27, #20
	cmp	x20, x28
	cinc	x8, x20, lo
	mov	x25, x26
	b.hs	LBB28_48
LBB28_41:
	add	x9, x20, x20, lsl #2
	mov	x20, x8
	lsl	x8, x9, #2
	mov	x26, x25
	add	x9, x25, x8
	add	x23, x19, x8
	ldr	q0, [x9]
	ldr	w8, [x9, #16]
	str	w8, [x23, #16]
	str	q0, [x23]
	sub	x24, x23, #20
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
	mov	x2, x23
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x25, x0
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w25, w0
	b.ge	LBB28_40
	ldr	q0, [x23]
	str	q0, [sp, #96]
	ldr	w8, [x23, #16]
	str	w8, [sp, #112]
	mov	x24, x27
LBB28_43:
	add	x28, x19, x24
	ldur	q0, [x28, #-20]
	str	q0, [x28]
	ldur	w8, [x28, #-4]
	str	w8, [x28, #16]
	subs	x25, x24, #20
	b.eq	LBB28_38
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp127:
	add	x2, sp, #96
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp128:
	mov	x23, x0
	sub	x2, x28, #40
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp129:
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp130:
	mov	x24, x25
	cmp	w23, w0
	b.lt	LBB28_43
	add	x8, x19, x25
	b	LBB28_39
LBB28_48:
	str	x25, [sp, #56]
	ldr	x8, [sp, #48]
	lsl	x8, x8, #2
	add	x20, x19, x8
	sub	x23, x21, x28
	ldr	x9, [sp, #8]
	cmp	x9, x23
	b.hs	LBB28_60
	ldr	x9, [sp, #56]
	add	x8, x9, x8
	stp	x23, x8, [sp, #16]
	ldr	x10, [sp, #8]
	add	x8, x10, #1
	add	x9, x10, x10, lsl #2
	lsl	x27, x9, #2
	mov	w9, #20
	str	x9, [sp, #48]
	mov	x28, x20
	mov	x9, x10
	b	LBB28_53
LBB28_50:
	mov	x20, x26
	mov	x8, x26
LBB28_51:
	ldr	q0, [sp, #96]
	str	q0, [x8]
	ldr	w9, [sp, #112]
	str	w9, [x8, #16]
	ldr	x23, [sp, #16]
LBB28_52:
	ldp	x9, x8, [sp, #40]
	sub	x8, x8, #20
	str	x8, [sp, #48]
	add	x28, x28, #20
	cmp	x9, x23
	cinc	x8, x9, lo
	b.hs	LBB28_60
LBB28_53:
	add	x9, x9, x9, lsl #2
	str	x8, [sp, #40]
	lsl	x8, x9, #2
	ldr	x9, [sp, #24]
	add	x9, x9, x8
	add	x24, x20, x8
	ldr	q0, [x9]
	ldr	w8, [x9, #16]
	str	w8, [x24, #16]
	str	q0, [x24]
	sub	x25, x24, #20
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
	mov	x2, x24
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	mov	x26, x0
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
	cmp	w26, w0
	b.ge	LBB28_52
	mov	x26, x20
	ldr	q0, [x24]
	str	q0, [sp, #96]
	ldr	w8, [x24, #16]
	str	w8, [sp, #112]
	ldr	x25, [sp, #48]
	mov	x20, x28
LBB28_55:
	add	x23, x20, x27
	ldur	q0, [x23, #-20]
	str	q0, [x23]
	ldur	w8, [x23, #-4]
	str	w8, [x23, #16]
	cmp	x27, x25
	b.eq	LBB28_50
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp132:
	add	x2, sp, #96
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp133:
	mov	x24, x0
	sub	x2, x23, #40
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp134:
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp135:
	sub	x20, x20, #20
	add	x25, x25, #20
	cmp	w24, w0
	b.lt	LBB28_55
	add	x8, x20, x27
	mov	x20, x26
	b	LBB28_51
LBB28_60:
	sub	x25, x20, #20
	mov	w9, #20
	mov	x8, #-20
	madd	x28, x21, x9, x8
	add	x26, x19, x28
	ldr	x8, [sp, #56]
	stp	x8, x19, [sp, #40]
LBB28_61:
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp137:
	mov	x24, x20
	mov	x2, x20
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp138:
	mov	x27, x0
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp139:
	ldr	x2, [sp, #48]
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp140:
	cmp	w27, w0
	cset	w23, ge
	cset	w20, lt
	ldp	x9, x8, [sp, #40]
	csel	x8, x24, x8, lt
	ldr	q0, [x8]
	ldr	w8, [x8, #16]
	str	w8, [x9, #16]
	str	q0, [x9]
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp141:
	mov	x2, x26
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp142:
	mov	x27, x0
	ldr	x0, [x22]
	ldr	x1, [x22, #16]
Ltmp143:
	mov	x2, x25
	bl	__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E
Ltmp144:
	ldp	x9, x8, [sp, #48]
	add	x8, x8, x28
	mov	w10, #20
	umaddl	x20, w20, w10, x24
	umaddl	x11, w23, w10, x9
	ldr	x9, [sp, #40]
	add	x9, x9, #20
	stp	x9, x11, [sp, #40]
	cmp	w27, w0
	csel	x9, x25, x26, lt
	ldr	q0, [x9]
	ldr	w9, [x9, #16]
	str	w9, [x8, #16]
	str	q0, [x8]
	csetm	x8, ge
	madd	x26, x8, x10, x26
	csetm	x8, lt
	madd	x25, x8, x10, x25
	sub	x28, x28, #20
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	str	x8, [sp, #32]
	b.ne	LBB28_61
	add	x8, x25, #20
	add	x9, x26, #20
	tbz	w21, #0, LBB28_68
	ldp	x14, x13, [sp, #40]
	cmp	x13, x8
	csel	x10, x13, x20, lo
	cset	w11, hs
	cset	w12, lo
	ldr	q0, [x10]
	ldr	w10, [x10, #16]
	str	w10, [x14, #16]
	str	q0, [x14]
	mov	w10, #20
	umaddl	x13, w12, w10, x13
	str	x13, [sp, #48]
	umaddl	x20, w11, w10, x20
LBB28_68:
	ldr	x10, [sp, #48]
	cmp	x10, x8
	ccmp	x20, x9, #0, eq
	ldr	x20, [sp, #56]
	b.ne	LBB28_71
LBB28_69:
	.cfi_def_cfa wsp, 240
	ldp	x29, x30, [sp, #224]
	ldp	x20, x19, [sp, #208]
	ldp	x22, x21, [sp, #192]
	ldp	x24, x23, [sp, #176]
	ldp	x26, x25, [sp, #160]
	ldp	x28, x27, [sp, #144]
	add	sp, sp, #240
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB28_70:
	.cfi_restore_state
Lloh54:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.16@PAGE
Lloh55:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.16@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [sp, #96]
	mov	w8, #8
	stp	xzr, xzr, [sp, #120]
	str	x8, [sp, #112]
Lloh56:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.18@PAGE
Lloh57:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.18@PAGEOFF
	add	x0, sp, #96
	bl	__ZN4core9panicking9panic_fmt17h529fda7ea817ba4fE
LBB28_71:
Ltmp146:
	bl	__ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h21d0353b96c249a8E
Ltmp147:
LBB28_72:
	brk	#0x1
LBB28_73:
Lloh58:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.19@PAGE
Lloh59:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.19@PAGEOFF
	mov	x0, x28
	mov	x1, x23
	bl	__ZN4core5slice5index26slice_start_index_len_fail17h07f33eb5dee8df43E
LBB28_74:
Ltmp145:
	mov	x22, x0
	ldr	x20, [sp, #56]
	b	LBB28_78
LBB28_75:
Ltmp136:
	mov	w8, #20
	ldr	x9, [sp, #8]
	umaddl	x8, w9, w8, x20
	ldr	q0, [sp, #96]
	str	q0, [x8, #-20]!
	ldr	w9, [sp, #112]
	str	w9, [x8, #16]
	bl	__Unwind_Resume
LBB28_76:
Ltmp131:
	add	x8, x19, x24
	ldr	q0, [sp, #96]
	str	q0, [x8, #-20]!
	ldr	w9, [sp, #112]
	str	w9, [x8, #16]
	bl	__Unwind_Resume
LBB28_77:
Ltmp148:
	mov	x22, x0
LBB28_78:
	add	x8, x21, x21, lsl #2
	lsl	x2, x8, #2
	mov	x0, x20
	mov	x1, x19
	bl	_memcpy
	mov	x0, x22
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh58, Lloh59
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception10:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10
	.uleb128 Ltmp127-Lfunc_begin10
	.byte	0
	.byte	0
	.uleb128 Ltmp127-Lfunc_begin10
	.uleb128 Ltmp130-Ltmp127
	.uleb128 Ltmp131-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp130-Lfunc_begin10
	.uleb128 Ltmp132-Ltmp130
	.byte	0
	.byte	0
	.uleb128 Ltmp132-Lfunc_begin10
	.uleb128 Ltmp135-Ltmp132
	.uleb128 Ltmp136-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp137-Lfunc_begin10
	.uleb128 Ltmp144-Ltmp137
	.uleb128 Ltmp145-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp144-Lfunc_begin10
	.uleb128 Ltmp146-Ltmp144
	.byte	0
	.byte	0
	.uleb128 Ltmp146-Lfunc_begin10
	.uleb128 Ltmp147-Ltmp146
	.uleb128 Ltmp148-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp147-Lfunc_begin10
	.uleb128 Lfunc_end10-Ltmp147
	.byte	0
	.byte	0
Lcst_end10:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core9panicking13assert_failed17h904ffb82e0b54c04E:
	.cfi_startproc
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x5, x1
Lloh60:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.59@PAGE
Lloh61:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.59@PAGEOFF
	stp	x8, x0, [sp]
Lloh62:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.20@PAGE
Lloh63:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.20@PAGEOFF
Lloh64:
	adrp	x6, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.60@PAGE
Lloh65:
	add	x6, x6, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.60@PAGEOFF
	mov	x1, sp
	add	x3, sp, #8
	mov	w0, #0
	mov	x4, x2
	bl	__ZN4core9panicking19assert_failed_inner17h211a35e5e4a5a4e2E
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI30_0:
	.quad	8
	.quad	520
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E:
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception11
	stp	x28, x27, [sp, #-96]!
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	sub	sp, sp, #1104
	str	xzr, [sp]
	mov	x19, x0
	ldr	x8, [x0]
	mov	w9, #1
	casa	x9, xzr, [x8]
	ldr	x21, [x0]
	cmp	x9, #1
	b.ne	LBB30_3
	ldr	x8, [x21, #8]
	cmp	x8, #1
	b.ne	LBB30_22
	stlr	x8, [x21]
	b	LBB30_33
LBB30_3:
	mov	w0, #8
	mov	w1, #520
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
	mov	x23, x0
	mov	x20, x1
	cbz	x1, LBB30_34
Lloh66:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh67:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x20
	mov	x1, x23
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x22, x0
	cbz	x0, LBB30_35
LBB30_5:
	mov	w23, #1
	dup.2d	v0, x23
	mov	x20, x22
	str	q0, [x20], #16
	str	x22, [sp, #16]
Lloh68:
	adrp	x8, lCPI30_0@PAGE
Lloh69:
	ldr	q0, [x8, lCPI30_0@PAGEOFF]
	str	q0, [sp]
	strb	w23, [sp, #24]
	str	wzr, [sp, #1064]
	add	x24, x21, #528
	stp	x24, xzr, [x29, #-112]
	sub	x0, x29, #112
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB30_28
	add	x21, x21, #16
	ldr	w22, [x24]
	sub	x24, x29, #96
	add	x25, sp, #552
	mov	x26, #-1
	b	LBB30_9
LBB30_7:
	stp	w8, w27, [x11]
	str	x10, [x11, #8]
LBB30_8:
	sub	x0, x29, #112
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB30_29
LBB30_9:
	cmp	x1, #31
	b.hi	LBB30_39
	lsl	w9, w23, w1
	tst	w9, w22
	b.eq	LBB30_39
	add	x11, x21, x1, lsl #4
	ldr	w8, [x11]
	cbz	w8, LBB30_14
	cmp	w8, #1
	ldr	x10, [x11, #8]
	ldadd	x23, x11, [x10]
	tbnz	x11, #63, LBB30_40
	ldr	w12, [sp, #1064]
	orr	w11, w12, w9
	str	w11, [sp, #1064]
	add	x11, x25, x1, lsl #4
	tst	w12, w9
	b.ne	LBB30_15
	b	LBB30_7
LBB30_14:
	ldr	x10, [x11, #8]
	ldr	w27, [x11, #4]
	ldr	w12, [sp, #1064]
	orr	w11, w12, w9
	str	w11, [sp, #1064]
	add	x11, x25, x1, lsl #4
	tst	w12, w9
	b.eq	LBB30_7
LBB30_15:
	ldr	q0, [x11]
	stur	q0, [x29, #-96]
	stp	w8, w27, [x11]
	str	x10, [x11, #8]
	ldur	w8, [x29, #-96]
	cmp	w8, #3
	b.eq	LBB30_8
	cbz	w8, LBB30_8
	cmp	w8, #1
	b.ne	LBB30_20
	ldur	x8, [x29, #-88]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_8
	dmb	ishld
	add	x0, x24, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	b	LBB30_8
LBB30_20:
	ldur	x8, [x29, #-88]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_8
	dmb	ishld
Ltmp149:
	add	x0, x24, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp150:
	b	LBB30_8
LBB30_22:
Ltmp164:
	mov	w0, #8
	mov	w1, #520
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
Ltmp165:
	mov	x22, x0
	mov	x20, x1
	cbz	x1, LBB30_36
Lloh70:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh71:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x20
	mov	x1, x22
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x23, x0
	cbz	x0, LBB30_37
LBB30_25:
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x23]
	add	x0, x23, #16
	add	x1, x21, #16
	mov	w2, #520
	bl	_memcpy
	str	x23, [x19]
	cmn	x21, #1
	b.eq	LBB30_33
	add	x8, x21, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_33
	dmb	ishld
	mov	x0, x21
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB30_33
LBB30_28:
	add	x0, sp, #32
	add	x1, sp, #552
	mov	w2, #520
	bl	_memcpy
	add	x1, sp, #32
	mov	x0, x20
	mov	w2, #520
	bl	_memcpy
	b	LBB30_30
LBB30_29:
	ldr	x22, [sp, #16]
	ldrb	w21, [sp, #24]
	add	x0, sp, #32
	add	x1, sp, #552
	mov	w2, #520
	bl	_memcpy
	add	x1, sp, #32
	mov	x0, x20
	mov	w2, #520
	bl	_memcpy
	tbz	w21, #0, LBB30_38
LBB30_30:
	ldr	x8, [x19]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_32
	dmb	ishld
Ltmp152:
	mov	x0, x19
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp153:
LBB30_32:
	str	x22, [x19]
LBB30_33:
	ldr	x8, [x19]
	add	x0, x8, #16
	add	sp, sp, #1104
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x26, x25, [sp, #16]
	ldp	x28, x27, [sp], #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB30_34:
	.cfi_restore_state
	mov	x22, x23
	cbnz	x23, LBB30_5
LBB30_35:
	mov	x0, x23
	mov	x1, x20
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB30_36:
	mov	x23, x22
	cbnz	x22, LBB30_25
LBB30_37:
Ltmp166:
	mov	x0, x22
	mov	x1, x20
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp167:
	b	LBB30_40
LBB30_38:
Lloh72:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.22@PAGE
Lloh73:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.22@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
LBB30_39:
Ltmp155:
Lloh74:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.34@PAGE
Lloh75:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.34@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
Ltmp156:
LBB30_40:
	brk	#0x1
LBB30_41:
Ltmp154:
	str	x22, [x19]
	bl	__Unwind_Resume
LBB30_42:
Ltmp151:
	b	LBB30_44
LBB30_43:
Ltmp157:
LBB30_44:
	mov	x20, x0
Ltmp158:
	add	x0, sp, #552
	bl	__ZN4core3ptr442drop_in_place$LT$sized_chunks..sparse_chunk..SparseChunk$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UTerm$C$typenum..bit..B1$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$GT$$GT$17h6292d6af9be76657E
Ltmp159:
Ltmp161:
	mov	x0, sp
	bl	__ZN4core3ptr154drop_in_place$LT$alloc..sync..UniqueArcUninit$LT$im..nodes..hamt..Node$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$alloc..alloc..Global$GT$$GT$17h0e682d2e3b48d920E
Ltmp162:
	b	LBB30_51
LBB30_46:
Ltmp163:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB30_47:
Ltmp160:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB30_48:
Ltmp168:
	mov	x20, x0
	cmn	x21, #1
	b.eq	LBB30_51
	add	x8, x21, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_51
	dmb	ishld
	mov	x0, x21
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB30_51:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh66, Lloh67
	.loh AdrpLdr	Lloh68, Lloh69
	.loh AdrpLdrGot	Lloh70, Lloh71
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh74, Lloh75
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table30:
Lexception11:
	.byte	255
	.byte	155
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11
	.uleb128 Ltmp149-Lfunc_begin11
	.byte	0
	.byte	0
	.uleb128 Ltmp149-Lfunc_begin11
	.uleb128 Ltmp150-Ltmp149
	.uleb128 Ltmp151-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp164-Lfunc_begin11
	.uleb128 Ltmp165-Ltmp164
	.uleb128 Ltmp168-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp165-Lfunc_begin11
	.uleb128 Ltmp152-Ltmp165
	.byte	0
	.byte	0
	.uleb128 Ltmp152-Lfunc_begin11
	.uleb128 Ltmp153-Ltmp152
	.uleb128 Ltmp154-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp153-Lfunc_begin11
	.uleb128 Ltmp166-Ltmp153
	.byte	0
	.byte	0
	.uleb128 Ltmp166-Lfunc_begin11
	.uleb128 Ltmp167-Ltmp166
	.uleb128 Ltmp168-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp167-Lfunc_begin11
	.uleb128 Ltmp155-Ltmp167
	.byte	0
	.byte	0
	.uleb128 Ltmp155-Lfunc_begin11
	.uleb128 Ltmp156-Ltmp155
	.uleb128 Ltmp157-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp156-Lfunc_begin11
	.uleb128 Ltmp158-Ltmp156
	.byte	0
	.byte	0
	.uleb128 Ltmp158-Lfunc_begin11
	.uleb128 Ltmp159-Ltmp158
	.uleb128 Ltmp160-Lfunc_begin11
	.byte	1
	.uleb128 Ltmp161-Lfunc_begin11
	.uleb128 Ltmp162-Ltmp161
	.uleb128 Ltmp163-Lfunc_begin11
	.byte	1
	.uleb128 Ltmp162-Lfunc_begin11
	.uleb128 Lfunc_end11-Ltmp162
	.byte	0
	.byte	0
Lcst_end11:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase6:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI31_0:
	.quad	8
	.quad	32
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hab1f81bc4f804459E:
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception12
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x28, x27, [sp, #32]
	stp	x26, x25, [sp, #48]
	stp	x24, x23, [sp, #64]
	stp	x22, x21, [sp, #80]
	stp	x20, x19, [sp, #96]
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	mov	x19, x0
	ldr	x8, [x0]
	mov	w9, #1
	casa	x9, xzr, [x8]
	ldr	x20, [x0]
	cmp	x9, #1
	b.ne	LBB31_3
	ldr	x8, [x20, #8]
	cmp	x8, #1
	b.ne	LBB31_8
	stlr	x8, [x20]
	b	LBB31_20
LBB31_3:
	mov	w0, #8
	mov	w1, #32
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
	mov	x23, x0
	mov	x22, x1
Lloh76:
	adrp	x24, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh77:
	ldr	x24, [x24, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	cbz	x1, LBB31_14
	ldrb	wzr, [x24]
	mov	x0, x22
	mov	x1, x23
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x21, x0
	cbz	x0, LBB31_15
LBB31_5:
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x21]
	str	x21, [sp, #16]
Lloh78:
	adrp	x9, lCPI31_0@PAGE
Lloh79:
	ldr	q0, [x9, lCPI31_0@PAGEOFF]
	str	q0, [sp]
	strb	w8, [sp, #24]
	ldr	x26, [x20, #32]
	lsl	x22, x26, #3
	lsr	x8, x26, #61
	cmp	x8, #0
	mov	x8, #9223372036854775804
	ccmp	x22, x8, #2, eq
	b.hi	LBB31_23
	ldr	w27, [x20, #40]
	ldr	x23, [x20, #24]
	cbz	x22, LBB31_16
	ldrb	wzr, [x24]
	mov	w25, #4
	mov	x0, x22
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x24, x0
	mov	x28, x26
	cbnz	x0, LBB31_17
	b	LBB31_24
LBB31_8:
Ltmp175:
	mov	w0, #8
	mov	w1, #32
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
Ltmp176:
	mov	x22, x0
	mov	x21, x1
	cbz	x1, LBB31_21
Lloh80:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh81:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x21
	mov	x1, x22
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB31_22
LBB31_11:
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x0]
	ldp	q0, q1, [x20, #16]
	stp	q0, q1, [x0, #16]
	str	x0, [x19]
	cmn	x20, #1
	b.eq	LBB31_20
	add	x8, x20, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB31_20
	dmb	ishld
	mov	x0, x20
	mov	w1, #48
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB31_20
LBB31_14:
	mov	x21, x23
	cbnz	x23, LBB31_5
LBB31_15:
	mov	x0, x23
	mov	x1, x22
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB31_16:
	mov	x28, #0
	mov	w24, #4
LBB31_17:
	mov	x0, x24
	mov	x1, x23
	mov	x2, x22
	bl	_memcpy
	stp	x28, x24, [x21, #16]
	str	x26, [x21, #32]
	str	w27, [x21, #40]
	mov	x8, #-1
	ldaddl	x8, x8, [x20]
	cmp	x8, #1
	b.ne	LBB31_19
	dmb	ishld
	mov	x0, x19
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB31_19:
	str	x21, [x19]
LBB31_20:
	ldr	x8, [x19]
	add	x0, x8, #16
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB31_21:
	.cfi_restore_state
	mov	x0, x22
	cbnz	x22, LBB31_11
LBB31_22:
Ltmp177:
	mov	x0, x22
	mov	x1, x21
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp178:
	b	LBB31_25
LBB31_23:
	mov	x25, #0
LBB31_24:
Ltmp169:
Lloh82:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGE
Lloh83:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGEOFF
	mov	x0, x25
	mov	x1, x22
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp170:
LBB31_25:
	brk	#0x1
LBB31_26:
Ltmp171:
	mov	x19, x0
Ltmp172:
	mov	x0, sp
	bl	__ZN4core3ptr154drop_in_place$LT$alloc..sync..UniqueArcUninit$LT$im..nodes..hamt..Node$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$alloc..alloc..Global$GT$$GT$17h0e682d2e3b48d920E
Ltmp173:
	b	LBB31_31
LBB31_27:
Ltmp174:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB31_28:
Ltmp179:
	cmn	x20, #1
	b.eq	LBB31_32
	mov	x19, x0
	add	x8, x20, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB31_31
	dmb	ishld
	mov	x0, x20
	mov	w1, #48
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB31_31:
	mov	x0, x19
LBB31_32:
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpLdr	Lloh78, Lloh79
	.loh AdrpLdrGot	Lloh80, Lloh81
	.loh AdrpAdd	Lloh82, Lloh83
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table31:
Lexception12:
	.byte	255
	.byte	155
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12
	.uleb128 Ltmp175-Lfunc_begin12
	.byte	0
	.byte	0
	.uleb128 Ltmp175-Lfunc_begin12
	.uleb128 Ltmp176-Ltmp175
	.uleb128 Ltmp179-Lfunc_begin12
	.byte	0
	.uleb128 Ltmp176-Lfunc_begin12
	.uleb128 Ltmp177-Ltmp176
	.byte	0
	.byte	0
	.uleb128 Ltmp177-Lfunc_begin12
	.uleb128 Ltmp178-Ltmp177
	.uleb128 Ltmp179-Lfunc_begin12
	.byte	0
	.uleb128 Ltmp169-Lfunc_begin12
	.uleb128 Ltmp170-Ltmp169
	.uleb128 Ltmp171-Lfunc_begin12
	.byte	0
	.uleb128 Ltmp172-Lfunc_begin12
	.uleb128 Ltmp173-Ltmp172
	.uleb128 Ltmp174-Lfunc_begin12
	.byte	1
	.uleb128 Ltmp173-Lfunc_begin12
	.uleb128 Lfunc_end12-Ltmp173
	.byte	0
	.byte	0
Lcst_end12:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase7:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E:
	.cfi_startproc
	ldr	x0, [x0]
	cmn	x0, #1
	b.eq	LBB32_3
	add	x8, x0, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB32_3
	dmb	ishld
	mov	w1, #32
	mov	w2, #8
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB32_3:
	ret
	.cfi_endproc

	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E:
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception13
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_remember_state
	ldr	x19, [x0]
	ldr	w8, [x19, #528]
	str	w8, [sp, #12]
	add	x8, sp, #12
	stp	x8, xzr, [sp, #16]
	add	x0, sp, #16
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB33_10
	add	x20, x19, #16
	mov	x21, #-1
	b	LBB33_3
LBB33_2:
	add	x0, sp, #16
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB33_10
LBB33_3:
	cmp	x1, #31
	b.hi	LBB33_14
	add	x0, x20, x1, lsl #4
	ldr	w8, [x0]
	cbz	w8, LBB33_2
	cmp	w8, #1
	b.ne	LBB33_8
	ldr	x8, [x0, #8]!
	ldaddl	x21, x8, [x8]
	cmp	x8, #1
	b.ne	LBB33_2
	dmb	ishld
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	b	LBB33_2
LBB33_8:
	ldr	x8, [x0, #8]!
	ldaddl	x21, x8, [x8]
	cmp	x8, #1
	b.ne	LBB33_2
	dmb	ishld
Ltmp183:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp184:
	b	LBB33_2
LBB33_10:
	cmn	x19, #1
	b.eq	LBB33_13
	add	x8, x19, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB33_13
	dmb	ishld
	mov	x0, x19
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB33_13:
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
LBB33_14:
	.cfi_restore_state
Ltmp180:
Lloh84:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35@PAGE
Lloh85:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35@PAGEOFF
	mov	x0, x1
	mov	w1, #32
	bl	__ZN4core9panicking18panic_bounds_check17he315898ba5b8216dE
Ltmp181:
	brk	#0x1
LBB33_16:
Ltmp185:
	b	LBB33_18
LBB33_17:
Ltmp182:
LBB33_18:
	mov	x20, x0
	cmn	x19, #1
	b.eq	LBB33_21
	add	x8, x19, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB33_21
	dmb	ishld
	mov	x0, x19
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB33_21:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh84, Lloh85
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table33:
Lexception13:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp183-Lfunc_begin13
	.uleb128 Ltmp184-Ltmp183
	.uleb128 Ltmp185-Lfunc_begin13
	.byte	0
	.uleb128 Ltmp180-Lfunc_begin13
	.uleb128 Ltmp181-Ltmp180
	.uleb128 Ltmp182-Lfunc_begin13
	.byte	0
	.uleb128 Ltmp181-Lfunc_begin13
	.uleb128 Lfunc_end13-Ltmp181
	.byte	0
	.byte	0
Lcst_end13:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E:
	.cfi_startproc
	stp	x20, x19, [sp, #-32]!
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldr	x19, [x0]
	ldr	x8, [x19, #16]
	cbz	x8, LBB34_2
	ldr	x0, [x19, #24]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB34_2:
	cmn	x19, #1
	b.eq	LBB34_5
	add	x8, x19, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB34_5
	dmb	ishld
	mov	x0, x19
	mov	w1, #48
	mov	w2, #8
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB34_5:
	.cfi_restore_state
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x20, x19, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE:
	.cfi_startproc
	stp	x22, x21, [sp, #-48]!
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	ldr	x8, [x3, #8]
	cbz	x8, LBB35_3
	ldr	x1, [x3, #16]
	cbz	x1, LBB35_3
	ldr	x0, [x3]
	mov	x2, x21
	mov	x3, x20
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_realloc
	b	LBB35_6
LBB35_3:
	cbz	x20, LBB35_5
Lloh86:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh87:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x20
	mov	x1, x21
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	b	LBB35_6
LBB35_5:
	mov	x0, x21
LBB35_6:
	cmp	x0, #0
	csel	x8, x21, x0, eq
	stp	x8, x20, [x19, #8]
	cset	w9, eq
	str	x9, [x19]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	ldp	x20, x19, [sp, #16]
	ldp	x22, x21, [sp], #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
	.loh AdrpLdrGot	Lloh86, Lloh87
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h313df9b53e681ef5E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	mov	x19, x0
	mov	x0, #0
	ldr	x8, [x19]
	lsl	x9, x8, #1
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	mov	w9, #20
	umulh	x9, x20, x9
	cmp	xzr, x9
	b.ne	LBB36_6
	add	x9, x20, x20, lsl #2
	lsl	x2, x9, #2
	mov	x9, #9223372036854775804
	cmp	x2, x9
	b.hi	LBB36_8
	cbz	x8, LBB36_4
	ldr	x9, [x19, #8]
	add	x8, x8, x8, lsl #2
	lsl	x8, x8, #2
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #4
LBB36_4:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #4
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB36_7
	ldr	x8, [sp, #8]
	stp	x20, x8, [x19]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB36_6:
	.cfi_restore_state
Lloh88:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGE
Lloh89:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB36_7:
	ldp	x0, x1, [sp, #8]
LBB36_8:
Lloh90:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGE
Lloh91:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh90, Lloh91
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_remember_state
	mov	x19, x1
	ldr	x8, [x0]
	lsl	x9, x8, #1
	mov	w10, #4
	cmp	x9, #4
	csel	x21, x9, x10, hi
	lsl	x2, x21, #3
	lsr	x9, x8, #60
	cmp	x9, #0
	mov	x9, #9223372036854775804
	ccmp	x2, x9, #2, eq
	b.hi	LBB37_5
	mov	x20, x0
	cbz	x8, LBB37_3
	ldr	x9, [x20, #8]
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #4
LBB37_3:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #4
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB37_6
	ldr	x8, [sp, #8]
	stp	x21, x8, [x20]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
LBB37_5:
	.cfi_restore_state
	mov	x0, #0
	mov	x2, x19
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB37_6:
	ldp	x0, x1, [sp, #8]
	mov	x2, x19
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9c599be77ed25323E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldr	x8, [x0]
	lsl	x9, x8, #1
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	lsl	x2, x20, #3
	lsr	x9, x8, #60
	cmp	x9, #0
	mov	x9, #9223372036854775804
	ccmp	x2, x9, #2, eq
	b.hi	LBB38_5
	mov	x19, x0
	cbz	x8, LBB38_3
	ldr	x9, [x19, #8]
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #4
LBB38_3:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #4
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB38_6
	ldr	x8, [sp, #8]
	stp	x20, x8, [x19]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB38_5:
	.cfi_restore_state
	mov	x0, #0
Lloh92:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGE
Lloh93:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB38_6:
	ldp	x0, x1, [sp, #8]
Lloh94:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGE
Lloh95:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpAdd	Lloh94, Lloh95
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9cff52ad6fbd2b2eE:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	mov	x19, x0
	mov	x0, #0
	ldr	x8, [x19]
	lsl	x9, x8, #1
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	mov	w9, #24
	umulh	x9, x20, x9
	cmp	xzr, x9
	b.ne	LBB39_6
	add	x9, x20, x20, lsl #1
	lsl	x2, x9, #3
	mov	x9, #9223372036854775800
	cmp	x2, x9
	b.hi	LBB39_8
	cbz	x8, LBB39_4
	ldr	x9, [x19, #8]
	add	x8, x8, x8, lsl #1
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #8
LBB39_4:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #8
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB39_7
	ldr	x8, [sp, #8]
	stp	x20, x8, [x19]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB39_6:
	.cfi_restore_state
Lloh96:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGE
Lloh97:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB39_7:
	ldp	x0, x1, [sp, #8]
LBB39_8:
Lloh98:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGE
Lloh99:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh98, Lloh99
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hfa3fd6e08ccf8de8E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldr	x8, [x0]
	lsl	x9, x8, #1
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	lsl	x2, x20, #3
	lsr	x9, x8, #60
	cmp	x9, #0
	mov	x9, #9223372036854775800
	ccmp	x2, x9, #2, eq
	b.hi	LBB40_5
	mov	x19, x0
	cbz	x8, LBB40_3
	ldr	x9, [x19, #8]
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #8
LBB40_3:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #8
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB40_6
	ldr	x8, [sp, #8]
	stp	x20, x8, [x19]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB40_5:
	.cfi_restore_state
	mov	x0, #0
Lloh100:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGE
Lloh101:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB40_6:
	ldp	x0, x1, [sp, #8]
Lloh102:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGE
Lloh103:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh102, Lloh103
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf1340d61125a9398E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	cmn	x1, x2
	b.hs	LBB41_7
	mov	x19, x0
	mov	x0, #0
	ldr	x8, [x19]
	lsl	x9, x8, #1
	add	x10, x2, x1
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	mov	w9, #20
	umulh	x9, x20, x9
	cmp	xzr, x9
	b.ne	LBB41_8
	add	x9, x20, x20, lsl #2
	lsl	x2, x9, #2
	mov	x9, #9223372036854775804
	cmp	x2, x9
	b.hi	LBB41_10
	cbz	x8, LBB41_5
	ldr	x9, [x19, #8]
	add	x8, x8, x8, lsl #2
	lsl	x8, x8, #2
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #4
LBB41_5:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #4
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB41_9
	ldr	x8, [sp, #8]
	stp	x20, x8, [x19]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB41_7:
	.cfi_restore_state
	mov	x0, #0
LBB41_8:
Lloh104:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26@PAGE
Lloh105:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB41_9:
	ldp	x0, x1, [sp, #8]
LBB41_10:
Lloh106:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26@PAGE
Lloh107:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh106, Lloh107
	.cfi_endproc

	.p2align	2
__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E:
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception14
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_remember_state
	mov	x20, x0
Lloh108:
	adrp	x21, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh109:
	ldr	x21, [x21, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x21]
	mov	w0, #536
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB42_5
	mov	x19, x0
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x0]
	str	wzr, [x0, #528]
	str	x0, [sp, #8]
	ldrb	wzr, [x21]
	mov	w0, #32
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB42_6
	mov	x21, x0
Lloh110:
	adrp	x22, __ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h17d73f607e916528E@TLVPPAGE
Lloh111:
	ldr	x22, [x22, __ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h17d73f607e916528E@TLVPPAGEOFF]
	ldr	x23, [x22]
	mov	x0, x22
	blr	x23
	ldr	w8, [x0]
	cmp	w8, #1
	b.ne	LBB42_8
	mov	x0, x22
	blr	x23
	ldp	x8, x1, [x0, #8]
LBB42_4:
	add	x9, x8, #1
	mov	x0, x22
	blr	x23
	str	x9, [x0, #8]
	mov	w9, #1
	dup.2d	v0, x9
	str	q0, [x21]
	stp	x8, x1, [x21, #16]
	stp	x21, x19, [x20]
	str	xzr, [x20, #16]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	ret
LBB42_5:
	.cfi_restore_state
	mov	w0, #8
	mov	w1, #536
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB42_6:
Ltmp189:
	mov	w0, #8
	mov	w1, #32
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp190:
	brk	#0x1
LBB42_8:
Ltmp186:
	bl	__ZN3std3sys6random19hashmap_random_keys17h41cca6706a38c8ffE
Ltmp187:
	mov	x8, x0
	mov	x0, x22
	blr	x23
	mov	w9, #1
	str	x9, [x0]
	str	x1, [x0, #16]
	b	LBB42_4
LBB42_10:
Ltmp188:
	mov	x20, x0
	mov	x0, x21
	mov	w1, #32
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x20
	b	LBB42_12
LBB42_11:
Ltmp191:
LBB42_12:
	mov	x8, #-1
	ldaddl	x8, x8, [x19]
	cmp	x8, #1
	b.ne	LBB42_14
	dmb	ishld
Ltmp192:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	mov	x0, x19
Ltmp193:
LBB42_14:
	bl	__Unwind_Resume
LBB42_15:
Ltmp194:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdrGot	Lloh108, Lloh109
	.loh AdrpLdr	Lloh110, Lloh111
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table42:
Lexception14:
	.byte	255
	.byte	155
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14
	.uleb128 Ltmp189-Lfunc_begin14
	.byte	0
	.byte	0
	.uleb128 Ltmp189-Lfunc_begin14
	.uleb128 Ltmp190-Ltmp189
	.uleb128 Ltmp191-Lfunc_begin14
	.byte	0
	.uleb128 Ltmp186-Lfunc_begin14
	.uleb128 Ltmp187-Ltmp186
	.uleb128 Ltmp188-Lfunc_begin14
	.byte	0
	.uleb128 Ltmp187-Lfunc_begin14
	.uleb128 Ltmp192-Ltmp187
	.byte	0
	.byte	0
	.uleb128 Ltmp192-Lfunc_begin14
	.uleb128 Ltmp193-Ltmp192
	.uleb128 Ltmp194-Lfunc_begin14
	.byte	1
	.uleb128 Ltmp193-Lfunc_begin14
	.uleb128 Lfunc_end14-Ltmp193
	.byte	0
	.byte	0
Lcst_end14:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase8:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x20, x19, [sp, #32]
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldr	x9, [x0, #48]
	cbz	x9, LBB43_12
	mov	x8, x0
	ldr	x0, [x0, #64]
	cbz	x0, LBB43_4
	ldr	x10, [x8, #72]
	cmp	x0, x10
	b.eq	LBB43_9
	ldr	w1, [x8, #56]
	add	x10, x0, #8
	str	x10, [x8, #64]
	sub	x9, x9, #1
	str	x9, [x8, #48]
	b	LBB43_19
LBB43_4:
	mov	x19, x8
	add	x0, x8, #24
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB43_10
	cmp	x1, #32
	b.hs	LBB43_20
	mov	x8, x19
	ldr	x9, [x19, #40]
	add	x9, x9, x1, lsl #4
	mov	x0, x9
	ldr	w10, [x0], #8
	cbz	w10, LBB43_13
	cmp	w10, #1
	b.ne	LBB43_14
	ldr	x9, [x0]
	ldr	w10, [x9, #40]
	ldp	x11, x9, [x9, #24]
	add	x9, x11, x9, lsl #3
	str	w10, [x8, #56]
	stp	x11, x9, [x8, #64]
	b	LBB43_17
LBB43_9:
	str	xzr, [x8, #64]
	b	LBB43_17
LBB43_10:
	ldr	x8, [x19, #16]
	cbz	x8, LBB43_12
	sub	x8, x8, #1
	str	x8, [x19, #16]
	ldr	x9, [x19, #8]
	mov	w10, #24
	madd	x8, x8, x10, x9
	ldr	x9, [x8, #16]
	ldr	q0, [x8]
	stur	q0, [x19, #24]
	stur	x9, [x19, #40]
	mov	x0, x19
	b	LBB43_18
LBB43_12:
	mov	x0, #0
	b	LBB43_19
LBB43_13:
	ldr	x10, [x8, #48]
	sub	x10, x10, #1
	str	x10, [x8, #48]
	ldr	w1, [x9, #4]
	b	LBB43_19
LBB43_14:
	ldr	x9, [x0]
	add	x10, x9, #16
	add	x9, x9, #528
	ldur	q0, [x8, #24]
	str	q0, [sp]
	ldur	x11, [x8, #40]
	str	x11, [sp, #16]
	stp	x9, xzr, [x8, #24]
	str	x10, [x8, #40]
	ldr	x20, [x8, #16]
	ldr	x9, [x8]
	cmp	x20, x9
	b.ne	LBB43_16
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9cff52ad6fbd2b2eE
	mov	x8, x19
LBB43_16:
	ldr	x9, [x8, #8]
	mov	w10, #24
	madd	x9, x20, x10, x9
	ldr	q0, [sp]
	str	q0, [x9]
	ldr	x10, [sp, #16]
	str	x10, [x9, #16]
	add	x9, x20, #1
	str	x9, [x8, #16]
LBB43_17:
	mov	x0, x8
LBB43_18:
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
LBB43_19:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	ldp	x20, x19, [sp, #32]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB43_20:
	.cfi_restore_state
Lloh112:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.1@PAGE
Lloh113:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.1@PAGEOFF
	mov	x0, x1
	mov	w1, #32
	bl	__ZN4core9panicking18panic_bounds_check17he315898ba5b8216dE
	.loh AdrpAdd	Lloh112, Lloh113
	.cfi_endproc

	.p2align	2
__ZN90_$LT$im..nodes..hamt..Drain$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he35d10560541c8dbE:
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception15
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	d9, d8, [sp, #16]
	stp	x28, x27, [sp, #32]
	stp	x26, x25, [sp, #48]
	stp	x24, x23, [sp, #64]
	stp	x22, x21, [sp, #80]
	stp	x20, x19, [sp, #96]
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_remember_state
	mov	x24, x0
	ldr	x8, [x1, #64]
	cbz	x8, LBB44_37
	mov	x20, x1
	mov	x26, #-9223372036854775808
	mov	x25, #-1
	mov	w27, #1
	mov	w9, #4
	str	x9, [sp]
	b	LBB44_4
LBB44_2:
	stur	x21, [x20, #56]
LBB44_3:
	ldr	x8, [x20, #64]
	cbz	x8, LBB44_37
LBB44_4:
	ldr	x9, [x20, #24]
	cmp	x9, x26
	b.ne	LBB44_12
	add	x0, x20, #56
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E
	ldr	w8, [x0, #512]
	cbz	w8, LBB44_16
	rbit	w9, w8
	clz	w9, w9
	lsl	w10, w27, w9
	bic	w11, w8, w10
	str	w11, [x0, #512]
	tst	w10, w8
	b.eq	LBB44_16
	add	x8, x0, x9, lsl #4
	ldr	w9, [x8]
	ldr	x22, [x8, #8]
	cmp	w9, #1
	b.le	LBB44_19
	cmp	w9, #2
	b.ne	LBB44_16
	ldr	x21, [x20, #56]
	str	x22, [x20, #56]
	str	x21, [sp, #8]
	ldr	x19, [x20, #16]
	ldr	x8, [x20]
	cmp	x19, x8
	b.ne	LBB44_11
Ltmp195:
	mov	x0, x20
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hfa3fd6e08ccf8de8E
Ltmp196:
LBB44_11:
	ldr	x8, [x20, #8]
	str	x21, [x8, x19, lsl #3]
	add	x8, x19, #1
	str	x8, [x20, #16]
	b	LBB44_3
LBB44_12:
	ldr	x10, [x20, #40]
	cbnz	x10, LBB44_39
	cbz	x9, LBB44_15
	ldr	x0, [x20, #32]
	lsl	x1, x9, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB44_15:
	str	x26, [x20, #24]
	b	LBB44_3
LBB44_16:
	ldr	x8, [x20, #16]
	cbz	x8, LBB44_37
	sub	x8, x8, #1
	str	x8, [x20, #16]
	ldr	x9, [x20, #8]
	ldr	x21, [x9, x8, lsl #3]
	ldr	x8, [x20, #56]
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.ne	LBB44_2
	dmb	ishld
Ltmp204:
	add	x0, x20, #56
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp205:
	b	LBB44_2
LBB44_19:
	b.ne	LBB44_41
	mov	w8, #1
	cas	x8, xzr, [x22]
	cmp	x8, #1
	b.ne	LBB44_26
	dmb	ishld
	ldp	x28, x23, [x22, #16]
	ldr	x21, [x22, #32]
	ldr	d8, [x22, #40]
	cmn	x22, #1
	b.eq	LBB44_24
	add	x8, x22, #8
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.ne	LBB44_24
	dmb	ishld
	mov	x0, x22
	mov	w1, #48
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB44_24:
	cmp	x28, x26
	b.ne	LBB44_34
	mov	x27, x24
	mov	x22, x23
	b	LBB44_27
LBB44_26:
	mov	x27, x24
LBB44_27:
	str	x22, [sp, #8]
	ldr	x21, [x22, #32]
	lsl	x24, x21, #3
	lsr	x8, x21, #61
	cmp	x8, #0
	mov	x8, #9223372036854775804
	ccmp	x24, x8, #2, eq
	b.hi	LBB44_42
	ldr	w19, [x22, #40]
	ldr	x25, [x22, #24]
	cbz	x24, LBB44_30
Lloh114:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh115:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x24
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x23, x0
	mov	x28, x21
	cbnz	x0, LBB44_31
	b	LBB44_43
LBB44_30:
	mov	x28, #0
	mov	w23, #4
LBB44_31:
	mov	x0, x23
	mov	x1, x25
	mov	x2, x24
	bl	_memcpy
	mov	x25, #-1
	ldaddl	x25, x8, [x22]
	cmp	x8, #1
	b.ne	LBB44_33
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB44_33:
	fmov	s8, w19
	mov	x24, x27
	mov	w27, #1
LBB44_34:
	ldr	x8, [x20, #24]
	orr	x9, x8, #0x8000000000000000
	cmp	x9, x26
	b.eq	LBB44_36
	ldr	x0, [x20, #32]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB44_36:
	stp	x28, x23, [x20, #24]
	str	x21, [x20, #40]
	str	d8, [x20, #48]
	b	LBB44_3
LBB44_37:
	mov	w9, #0
LBB44_38:
	str	w9, [x24]
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	d9, d8, [sp, #16]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore b8
	.cfi_restore b9
	ret
LBB44_39:
	.cfi_restore_state
	sub	x9, x10, #1
	str	x9, [x20, #40]
	ldr	x10, [x20, #32]
	add	x9, x10, x9, lsl #3
	ldp	w22, w9, [x9]
	sub	x8, x8, #1
	str	x8, [x20, #64]
	ldr	w8, [x20, #48]
LBB44_40:
	stp	w22, w9, [x24, #4]
	mov	w9, #1
	str	w8, [x24, #12]
	b	LBB44_38
LBB44_41:
	ldr	w8, [x8, #4]
	lsr	x9, x22, #32
	ldr	x10, [x20, #64]
	sub	x10, x10, #1
	str	x10, [x20, #64]
	b	LBB44_40
LBB44_42:
	str	xzr, [sp]
LBB44_43:
Ltmp201:
Lloh116:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGE
Lloh117:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGEOFF
	ldr	x0, [sp]
	mov	x1, x24
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp202:
	brk	#0x1
LBB44_45:
Ltmp197:
	mov	x19, x0
	mov	x8, #-1
	ldaddl	x8, x8, [x21]
	cmp	x8, #1
	b.ne	LBB44_50
	dmb	ishld
Ltmp198:
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp199:
	b	LBB44_50
LBB44_47:
Ltmp200:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB44_48:
Ltmp203:
	mov	x19, x0
	mov	x8, #-1
	ldaddl	x8, x8, [x22]
	cmp	x8, #1
	b.ne	LBB44_50
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB44_50:
	mov	x0, x19
	bl	__Unwind_Resume
LBB44_51:
Ltmp206:
	stur	x21, [x20, #56]
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh114, Lloh115
	.loh AdrpAdd	Lloh116, Lloh117
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table44:
Lexception15:
	.byte	255
	.byte	155
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Lfunc_begin15-Lfunc_begin15
	.uleb128 Ltmp195-Lfunc_begin15
	.byte	0
	.byte	0
	.uleb128 Ltmp195-Lfunc_begin15
	.uleb128 Ltmp196-Ltmp195
	.uleb128 Ltmp197-Lfunc_begin15
	.byte	0
	.uleb128 Ltmp204-Lfunc_begin15
	.uleb128 Ltmp205-Ltmp204
	.uleb128 Ltmp206-Lfunc_begin15
	.byte	0
	.uleb128 Ltmp205-Lfunc_begin15
	.uleb128 Ltmp201-Ltmp205
	.byte	0
	.byte	0
	.uleb128 Ltmp201-Lfunc_begin15
	.uleb128 Ltmp202-Ltmp201
	.uleb128 Ltmp203-Lfunc_begin15
	.byte	0
	.uleb128 Ltmp198-Lfunc_begin15
	.uleb128 Ltmp199-Ltmp198
	.uleb128 Ltmp200-Lfunc_begin15
	.byte	1
	.uleb128 Ltmp199-Lfunc_begin15
	.uleb128 Lfunc_end15-Ltmp199
	.byte	0
	.byte	0
Lcst_end15:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase9:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E:
	.cfi_startproc
	ldr	x1, [x0, #8]
	cmp	x1, #31
	b.ls	LBB45_2
	mov	x0, #0
	ret
LBB45_2:
	ldr	x8, [x0]
	ldr	w8, [x8]
	add	x9, x1, #1
	str	x9, [x0, #8]
	lsr	w8, w8, w1
	tbz	w8, #0, LBB45_4
	mov	w0, #1
	ret
LBB45_4:
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN6quorum5board8Movement3gap17hf79582d8fe7e8e37E:
	.cfi_startproc
	ldp	w10, w8, [x0]
	ldp	w11, w9, [x0, #8]
	subs	w10, w10, w11
	ccmp	w8, w9, #0, eq
	b.eq	LBB46_2
	cmp	w10, #0
	cneg	w10, w10, mi
	subs	w8, w8, w9
	cneg	w8, w8, mi
	sub	w9, w10, #1
	sub	w8, w8, #1
	cmp	w8, w9
	csel	w0, w8, w9, gt
	ret
LBB46_2:
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh118:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.36@PAGE
Lloh119:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.36@PAGEOFF
Lloh120:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.38@PAGE
Lloh121:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.38@PAGEOFF
	mov	w1, #43
	bl	__ZN4core9panicking5panic17hdf8b426f88b5fed0E
	.loh AdrpAdd	Lloh120, Lloh121
	.loh AdrpAdd	Lloh118, Lloh119
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI47_0:
	.quad	0
	.quad	-9223372036854775808
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE:
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception16
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x22, x21, [sp, #224]
	stp	x20, x19, [sp, #240]
	stp	x29, x30, [sp, #256]
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_remember_state
	ldr	x8, [x1]
	mov	w9, #1
	ldadd	x9, x9, [x8]
	tbnz	x9, #63, LBB47_12
	ldr	x9, [x1, #8]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB47_12
	stp	x8, x9, [sp]
	ldp	x8, x9, [x1, #16]
	str	x8, [sp, #16]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB47_12
	ldr	x10, [x1, #32]
	mov	w11, #1
	ldadd	x11, x11, [x10]
	tbnz	x11, #63, LBB47_12
	mov	x19, x0
	ldr	x11, [x1, #40]
	stp	x9, x10, [sp, #24]
	str	x11, [sp, #40]
	mov	x9, sp
	add	x10, sp, #24
	cmp	x8, x11
	csel	x8, x10, x9, lo
	csel	x9, x9, x10, lo
	ldr	q0, [x8]
	stur	q0, [x29, #-96]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-80]
	ldr	q0, [x9]
	stur	q0, [x29, #-64]
	ldr	x20, [x9, #16]
	stur	x20, [x29, #-48]
	ldp	x8, x21, [x29, #-64]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB47_6
	dmb	ishld
	sub	x0, x29, #64
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB47_6:
	mov	w8, #8
	stp	xzr, x8, [sp, #72]
Lloh122:
	adrp	x8, lCPI47_0@PAGE
Lloh123:
	ldr	q0, [x8, lCPI47_0@PAGEOFF]
	ldr	q1, [sp, #48]
	stur	q0, [sp, #88]
	stur	q1, [sp, #104]
	ldr	x8, [sp, #64]
	stp	x8, x21, [sp, #120]
	str	x20, [sp, #136]
LBB47_7:
Ltmp207:
	sub	x0, x29, #112
	add	x1, sp, #72
	bl	__ZN90_$LT$im..nodes..hamt..Drain$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he35d10560541c8dbE
Ltmp208:
	ldur	w8, [x29, #-112]
	cmp	w8, #1
	b.ne	LBB47_10
	ldp	w2, w3, [x29, #-108]
Ltmp212:
	sub	x0, x29, #112
	sub	x1, x29, #96
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp213:
	b	LBB47_7
LBB47_10:
Ltmp209:
	add	x0, sp, #72
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp210:
	ldur	q0, [x29, #-96]
	str	q0, [x19]
	ldur	x8, [x29, #-80]
	str	x8, [x19, #16]
	.cfi_def_cfa wsp, 272
	ldp	x29, x30, [sp, #256]
	ldp	x20, x19, [sp, #240]
	ldp	x22, x21, [sp, #224]
	add	sp, sp, #272
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
LBB47_12:
	.cfi_restore_state
	brk	#0x1
LBB47_13:
Ltmp211:
	mov	x19, x0
	b	LBB47_15
LBB47_14:
Ltmp214:
	mov	x19, x0
Ltmp215:
	add	x0, sp, #72
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp216:
LBB47_15:
Ltmp217:
	sub	x0, x29, #96
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp218:
	mov	x0, x19
	bl	__Unwind_Resume
LBB47_17:
Ltmp219:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdr	Lloh122, Lloh123
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table47:
Lexception16:
	.byte	255
	.byte	155
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp207-Lfunc_begin16
	.uleb128 Ltmp213-Ltmp207
	.uleb128 Ltmp214-Lfunc_begin16
	.byte	0
	.uleb128 Ltmp209-Lfunc_begin16
	.uleb128 Ltmp210-Ltmp209
	.uleb128 Ltmp211-Lfunc_begin16
	.byte	0
	.uleb128 Ltmp215-Lfunc_begin16
	.uleb128 Ltmp218-Ltmp215
	.uleb128 Ltmp219-Lfunc_begin16
	.byte	1
	.uleb128 Ltmp218-Lfunc_begin16
	.uleb128 Lfunc_end16-Ltmp218
	.byte	0
	.byte	0
Lcst_end16:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase10:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E:
	.cfi_startproc
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	d11, d10, [sp, #64]
	stp	d9, d8, [sp, #80]
	stp	x28, x27, [sp, #96]
	stp	x26, x25, [sp, #112]
	stp	x24, x23, [sp, #128]
	stp	x22, x21, [sp, #144]
	stp	x20, x19, [sp, #160]
	stp	x29, x30, [sp, #176]
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	ldr	w25, [x0, #48]
	cmp	w25, #1
	b.lt	LBB48_15
	ucvtf	s8, w25, #1
	mov	w27, #1
	mov	w28, #8
	ldp	x19, x20, [x0]
Lloh124:
	adrp	x26, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.52@PAGE
Lloh125:
	add	x26, x26, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.52@PAGEOFF
	ldp	x21, x22, [x0, #24]
	fmov	s9, #0.50000000
	fmov	s10, #1.00000000
	mov	x23, x25
	b	LBB48_3
LBB48_2:
Lloh126:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.40@PAGE
Lloh127:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.40@PAGEOFF
	stp	x8, x27, [sp, #16]
	stp	xzr, xzr, [sp, #40]
	str	x28, [sp, #32]
	add	x0, sp, #16
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.le	LBB48_15
LBB48_3:
	mov	w24, #0
	str	w23, [sp, #12]
	sub	w23, w23, #1
	ucvtf	s0, w23
	fadd	s0, s0, s9
	fabd	s11, s0, s8
	b	LBB48_6
LBB48_4:
Lloh128:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.48@PAGE
Lloh129:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.48@PAGEOFF
LBB48_5:
	stp	x8, x27, [sp, #16]
	stp	xzr, xzr, [sp, #40]
	str	x28, [sp, #32]
	add	x0, sp, #16
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
	add	w24, w24, #1
	stp	x26, x27, [sp, #16]
	stp	xzr, xzr, [sp, #40]
	str	x28, [sp, #32]
	add	x0, sp, #16
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
	cmp	w25, w24
	b.eq	LBB48_2
LBB48_6:
	mov	x0, x19
	mov	x1, x20
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB48_9
	mov	x0, x21
	mov	x1, x22
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB48_9
Lloh130:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.50@PAGE
Lloh131:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.50@PAGEOFF
	b	LBB48_5
LBB48_9:
	mov	x0, x19
	mov	x1, x20
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbnz	w0, #0, LBB48_4
	mov	x0, x21
	mov	x1, x22
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB48_12
Lloh132:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.46@PAGE
Lloh133:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.46@PAGEOFF
	b	LBB48_5
LBB48_12:
	ucvtf	s0, w24
	fadd	s0, s0, s9
	fabd	s0, s0, s8
	fcmp	s0, s10
	fccmp	s11, s10, #0, mi
	b.mi	LBB48_14
Lloh134:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.42@PAGE
Lloh135:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.42@PAGEOFF
	b	LBB48_5
LBB48_14:
Lloh136:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.44@PAGE
Lloh137:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.44@PAGEOFF
	b	LBB48_5
LBB48_15:
	.cfi_def_cfa wsp, 192
	ldp	x29, x30, [sp, #176]
	ldp	x20, x19, [sp, #160]
	ldp	x22, x21, [sp, #144]
	ldp	x24, x23, [sp, #128]
	ldp	x26, x25, [sp, #112]
	ldp	x28, x27, [sp, #96]
	ldp	d9, d8, [sp, #80]
	ldp	d11, d10, [sp, #64]
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	ret
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh136, Lloh137
	.cfi_endproc

	.p2align	2
__ZN6quorum5board5Board10valid_move17h8ac4676edb7a5c81E:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_remember_state
	mov	x19, x0
	ldrb	w8, [x1, #16]
	cmp	w8, #2
	b.ne	LBB49_8
	ldrb	w24, [x1, #8]
	ldp	w21, w22, [x1]
	add	x23, sp, #8
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
	ldp	x20, x1, [sp, #8]
	mov	x0, x20
	mov	x2, x21
	mov	x3, x22
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB49_15
	mov	x19, #-1
	ldaddl	x19, x8, [x20]
	cmp	x8, #1
	b.ne	LBB49_4
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB49_4:
	ldr	x8, [sp, #16]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_7
	dmb	ishld
	add	x0, x23, #8
LBB49_6:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB49_7:
	mov	w0, #2
	b	LBB49_21
LBB49_8:
	ldp	w21, w22, [x1]
	ldp	w24, w23, [x1, #8]
	mov	x20, x1
	cmp	w8, #0
	mov	w8, #24
	csel	x8, x8, xzr, eq
	add	x8, x19, x8
	ldp	x25, x26, [x8]
	mov	x0, x25
	mov	x1, x26
	mov	x2, x21
	mov	x3, x22
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB49_21
	mov	x0, x25
	mov	x1, x26
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB49_20
	sub	w8, w24, w21
	add	w21, w8, w24
	sub	w8, w23, w22
	add	w22, w8, w23
	add	x24, sp, #8
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
	ldp	x23, x1, [sp, #8]
	mov	x0, x23
	mov	x2, x21
	mov	x3, x22
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB49_22
	mov	x19, #-1
	ldaddl	x19, x8, [x23]
	cmp	x8, #1
	b.ne	LBB49_13
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB49_13:
	ldr	x8, [sp, #16]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_7
	dmb	ishld
	add	x0, x24, #8
	b	LBB49_6
LBB49_15:
	mov	x21, #-1
	ldaddl	x21, x8, [x20]
	cmp	x8, #1
	b.ne	LBB49_17
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB49_17:
	ldr	x8, [sp, #16]
	ldaddl	x21, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_19
	dmb	ishld
	add	x0, x23, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB49_19:
	cmp	w24, #0
	mov	w8, #24
	csel	x8, xzr, x8, ne
	add	x8, x19, x8
	ldr	w8, [x8, #16]
	sub	w8, w8, #21
	cmn	w8, #2
	mov	w8, #5
	cinc	w0, w8, le
	b	LBB49_21
LBB49_20:
	mov	w0, #1
LBB49_21:
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	ret
LBB49_22:
	.cfi_restore_state
	mov	x25, #-1
	ldaddl	x25, x8, [x23]
	cmp	x8, #1
	b.ne	LBB49_29
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #16]
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.eq	LBB49_30
LBB49_24:
	tbnz	w21, #31, LBB49_31
LBB49_25:
	ldr	w8, [x19, #48]
	mov	w0, #3
	cmp	w22, w8
	b.ge	LBB49_21
	tbnz	w22, #31, LBB49_21
	cmp	w21, w8
	b.ge	LBB49_21
	mov	x0, x20
	bl	__ZN6quorum5board8Movement3gap17hf79582d8fe7e8e37E
	ldr	w8, [x19, #52]
	mov	w9, #6
	mov	w10, #4
	cmp	w0, w8
	csel	w0, w10, w9, gt
	b	LBB49_21
LBB49_29:
	ldr	x8, [sp, #16]
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_24
LBB49_30:
	dmb	ishld
	add	x0, x24, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	tbz	w21, #31, LBB49_25
LBB49_31:
	mov	w0, #3
	b	LBB49_21
	.cfi_endproc

	.p2align	2
__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE:
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception17
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_remember_state
	mov	x20, x3
	mov	x22, x2
	mov	x21, x1
	mov	x19, x0
	mov	x23, #0
	mov	w8, #4
	stp	xzr, x8, [sp, #8]
	str	xzr, [sp, #24]
	subs	w24, w2, #1
	b.mi	LBB50_21
	cmp	w24, w21
	b.ge	LBB50_21
	mov	x23, #0
	sub	w25, w20, #1
	mov	w8, #4
	cmp	w25, w21
	b.ge	LBB50_9
	tbnz	w25, #31, LBB50_9
	ldr	x8, [sp, #8]
	cbz	x8, LBB50_6
	mov	w8, #4
	b	LBB50_8
LBB50_6:
Ltmp220:
Lloh138:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh139:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp221:
	ldr	x8, [sp, #16]
LBB50_8:
	stp	w24, w25, [x8]
	mov	w23, #1
	str	x23, [sp, #24]
LBB50_9:
	cmp	w20, w21
	b.ge	LBB50_15
	tbnz	w20, #31, LBB50_15
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_14
Ltmp222:
Lloh140:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh141:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp223:
	ldr	x8, [sp, #16]
LBB50_14:
	add	x9, x8, x23, lsl #3
	stp	w24, w20, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB50_15:
	add	w25, w20, #1
	cmp	w25, w21
	b.ge	LBB50_21
	tbnz	w25, #31, LBB50_21
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_20
Ltmp224:
Lloh142:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh143:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp225:
	ldr	x8, [sp, #16]
LBB50_20:
	add	x9, x8, x23, lsl #3
	stp	w24, w25, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB50_21:
	tbnz	w22, #31, LBB50_35
	cmp	w22, w21
	b.ge	LBB50_35
	sub	w24, w20, #1
	cmp	w24, w21
	b.ge	LBB50_29
	tbnz	w24, #31, LBB50_29
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_28
Ltmp226:
Lloh144:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh145:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp227:
	ldr	x8, [sp, #16]
LBB50_28:
	add	x9, x8, x23, lsl #3
	stp	w22, w24, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB50_29:
	add	w24, w20, #1
	cmp	w24, w21
	b.ge	LBB50_35
	tbnz	w24, #31, LBB50_35
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_34
Ltmp228:
Lloh146:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh147:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp229:
	ldr	x8, [sp, #16]
LBB50_34:
	add	x9, x8, x23, lsl #3
	stp	w22, w24, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB50_35:
	adds	w22, w22, #1
	b.mi	LBB50_55
	cmp	w22, w21
	b.ge	LBB50_55
	sub	w24, w20, #1
	cmp	w24, w21
	b.ge	LBB50_43
	tbnz	w24, #31, LBB50_43
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_42
Ltmp230:
Lloh148:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh149:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp231:
	ldr	x8, [sp, #16]
LBB50_42:
	add	x9, x8, x23, lsl #3
	stp	w22, w24, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB50_43:
	cmp	w20, w21
	b.ge	LBB50_49
	tbnz	w20, #31, LBB50_49
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_48
Ltmp232:
Lloh150:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh151:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp233:
	ldr	x8, [sp, #16]
LBB50_48:
	add	x9, x8, x23, lsl #3
	stp	w22, w20, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB50_49:
	add	w20, w20, #1
	cmp	w20, w21
	b.ge	LBB50_55
	tbnz	w20, #31, LBB50_55
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB50_54
Ltmp234:
Lloh152:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh153:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp235:
	ldr	x8, [sp, #16]
LBB50_54:
	add	x8, x8, x23, lsl #3
	stp	w22, w20, [x8]
	add	x8, x23, #1
	str	x8, [sp, #24]
LBB50_55:
	ldur	q0, [sp, #8]
	str	q0, [x19]
	ldr	x8, [sp, #24]
	str	x8, [x19, #16]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	ret
LBB50_56:
	.cfi_restore_state
Ltmp236:
	mov	x19, x0
	ldr	x8, [sp, #8]
	cbz	x8, LBB50_58
	ldr	x0, [sp, #16]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_58:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh146, Lloh147
	.loh AdrpAdd	Lloh148, Lloh149
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh152, Lloh153
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table50:
Lexception17:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp220-Lfunc_begin17
	.uleb128 Ltmp235-Ltmp220
	.uleb128 Ltmp236-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp235-Lfunc_begin17
	.uleb128 Lfunc_end17-Ltmp235
	.byte	0
	.byte	0
Lcst_end17:
	.p2align	2, 0x0

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI51_0:
	.quad	0
	.quad	-9223372036854775808
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E:
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception18
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x28, x27, [sp, #224]
	stp	x26, x25, [sp, #240]
	stp	x24, x23, [sp, #256]
	stp	x22, x21, [sp, #272]
	stp	x20, x19, [sp, #288]
	stp	x29, x30, [sp, #304]
	add	x29, sp, #304
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	cmp	w1, #0
	mov	w8, #24
	csel	x8, xzr, x8, ne
	add	x23, x0, x8
	ldp	x19, x22, [x23, #8]
Lloh154:
	adrp	x24, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh155:
	ldr	x24, [x24, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x24]
	mov	w0, #168
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_41
	add	x8, x19, #16
	add	x9, x19, #528
	mov	w10, #7
	stp	x10, x0, [sp, #16]
	stp	xzr, x9, [sp, #32]
	stp	xzr, x8, [sp, #48]
	str	x22, [sp, #64]
	str	xzr, [sp, #80]
Ltmp237:
	add	x0, sp, #16
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
Ltmp238:
	cbz	x0, LBB51_37
	ldp	w19, w20, [x0]
	ldr	x8, [sp, #16]
	cbz	x8, LBB51_5
	ldr	x0, [sp, #24]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_5:
	ldrb	wzr, [x24]
	mov	w0, #8
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_38
	stp	w19, w20, [x0]
	add	x8, x0, #8
	mov	w9, #1
	stp	x0, x0, [sp, #16]
	stp	x9, x8, [sp, #32]
	add	x0, sp, #104
	add	x1, sp, #16
	bl	__ZN4core4iter6traits8iterator8Iterator7collect17h09f34a15da24f7f9E
	ldrb	wzr, [x24]
	mov	w0, #32
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_39
	add	w8, w19, #1
	sub	w9, w19, #1
	add	w10, w20, #1
	stp	w8, w20, [x0]
	sub	w8, w20, #1
	stp	w9, w20, [x0, #8]
	stp	w19, w10, [x0, #16]
	stp	w19, w8, [x0, #24]
	add	x8, x0, #32
	mov	w9, #4
	stp	x0, x0, [sp, #16]
	stp	x9, x8, [sp, #32]
Ltmp239:
	add	x0, sp, #128
	add	x1, sp, #16
	bl	__ZN4core4iter6traits8iterator8Iterator7collect17h09f34a15da24f7f9E
Ltmp240:
	ldr	x8, [sp, #144]
	cbz	x8, LBB51_27
	add	x25, sp, #16
	mov	x26, #-1
	mov	w27, #8
Lloh156:
	adrp	x8, lCPI51_0@PAGE
Lloh157:
	ldr	q0, [x8, lCPI51_0@PAGEOFF]
	str	q0, [sp]
LBB51_10:
Ltmp241:
	sub	x0, x29, #144
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp242:
	ldr	q0, [sp, #128]
	str	q0, [sp, #16]
	ldr	x19, [sp, #144]
	str	x19, [sp, #32]
	ldp	x8, x20, [sp, #16]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_13
	dmb	ishld
	add	x0, sp, #16
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB51_13:
	stp	xzr, x27, [sp, #16]
	ldr	q0, [sp]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-120]
	stur	q0, [x25, #32]
	ldur	x8, [x29, #-104]
	stur	x8, [x25, #48]
	stp	x20, x19, [sp, #72]
LBB51_14:
Ltmp246:
	sub	x0, x29, #96
	add	x1, sp, #16
	bl	__ZN90_$LT$im..nodes..hamt..Drain$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he35d10560541c8dbE
Ltmp247:
	ldur	w8, [x29, #-96]
	cmp	w8, #1
	b.ne	LBB51_25
	ldp	w21, w19, [x29, #-92]
	ldp	x0, x1, [x23]
	mov	x2, x21
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB51_14
	ldp	x0, x1, [sp, #104]
	mov	x2, x21
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbnz	w0, #0, LBB51_14
Ltmp251:
	sub	x0, x29, #96
	add	x1, sp, #104
	mov	x2, x21
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp252:
	ldrb	wzr, [x24]
	mov	w0, #32
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_36
	mov	x20, x0
	add	w2, w21, #1
	sub	w8, w21, #1
	add	w9, w19, #1
	stp	w2, w19, [x0]
	sub	w10, w19, #1
	stp	w8, w19, [x0, #8]
	stp	w21, w9, [x0, #16]
	stp	w21, w10, [x0, #24]
Ltmp254:
	sub	x0, x29, #96
	sub	x1, x29, #144
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp255:
	ldp	w2, w3, [x20, #8]
Ltmp256:
	sub	x0, x29, #96
	sub	x1, x29, #144
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp257:
	ldp	w2, w3, [x20, #16]
Ltmp258:
	sub	x0, x29, #96
	sub	x1, x29, #144
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp259:
	ldp	w2, w3, [x20, #24]
Ltmp260:
	sub	x0, x29, #96
	sub	x1, x29, #144
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp261:
	mov	x0, x20
	mov	w1, #32
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB51_14
LBB51_25:
Ltmp248:
	add	x0, sp, #16
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp249:
	ldur	q0, [x29, #-144]
	str	q0, [sp, #128]
	ldur	x8, [x29, #-128]
	str	x8, [sp, #144]
	cbnz	x8, LBB51_10
LBB51_27:
	ldur	q0, [sp, #104]
	str	q0, [sp, #16]
	ldp	x9, x8, [sp, #120]
	str	x9, [sp, #32]
	mov	x19, #-1
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.eq	LBB51_33
	ldr	x8, [sp, #136]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.eq	LBB51_34
LBB51_29:
	ldr	x19, [sp, #32]
	ldr	x8, [sp, #16]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.eq	LBB51_35
LBB51_30:
	ldr	x8, [sp, #24]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_32
LBB51_31:
	add	x8, sp, #16
	dmb	ishld
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB51_32:
	cmp	x19, x22
	cset	w0, eq
	.cfi_def_cfa wsp, 320
	ldp	x29, x30, [sp, #304]
	ldp	x20, x19, [sp, #288]
	ldp	x22, x21, [sp, #272]
	ldp	x24, x23, [sp, #256]
	ldp	x26, x25, [sp, #240]
	ldp	x28, x27, [sp, #224]
	add	sp, sp, #320
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB51_33:
	.cfi_restore_state
	dmb	ishld
	add	x0, sp, #128
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #136]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_29
LBB51_34:
	add	x8, sp, #128
	dmb	ishld
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	ldr	x19, [sp, #32]
	ldr	x8, [sp, #16]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_30
LBB51_35:
	dmb	ishld
	add	x0, sp, #16
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #24]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.eq	LBB51_31
	b	LBB51_32
LBB51_36:
Ltmp263:
	mov	w0, #4
	mov	w1, #32
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp264:
	b	LBB51_40
LBB51_37:
Ltmp276:
Lloh158:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.55@PAGE
Lloh159:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.55@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
Ltmp277:
	b	LBB51_40
LBB51_38:
	mov	w0, #4
	mov	w1, #8
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB51_39:
Ltmp270:
	mov	w0, #4
	mov	w1, #32
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp271:
LBB51_40:
	brk	#0x1
LBB51_41:
Lloh160:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGE
Lloh161:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGEOFF
	mov	w0, #8
	mov	w1, #168
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB51_42:
Ltmp250:
	mov	x19, x0
	b	LBB51_52
LBB51_43:
Ltmp243:
	mov	x19, x0
Ltmp244:
	add	x0, sp, #128
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp245:
	b	LBB51_56
LBB51_44:
Ltmp272:
	mov	x19, x0
	b	LBB51_56
LBB51_45:
Ltmp278:
	mov	x19, x0
	ldr	x8, [sp, #16]
	cbz	x8, LBB51_60
	ldr	x0, [sp, #24]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
LBB51_47:
Ltmp262:
	mov	x19, x0
	mov	x0, x20
	mov	w1, #32
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB51_51
LBB51_48:
Ltmp253:
	b	LBB51_50
LBB51_49:
Ltmp265:
LBB51_50:
	mov	x19, x0
LBB51_51:
Ltmp266:
	add	x0, sp, #16
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp267:
LBB51_52:
	ldur	x8, [x29, #-144]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_54
	dmb	ishld
	sub	x0, x29, #144
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB51_54:
	ldur	x8, [x29, #-136]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_56
	sub	x8, x29, #144
	dmb	ishld
Ltmp268:
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp269:
LBB51_56:
	ldr	x8, [sp, #104]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_58
	dmb	ishld
	add	x0, sp, #104
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB51_58:
	ldr	x8, [sp, #112]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB51_60
	add	x8, sp, #104
	dmb	ishld
Ltmp273:
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp274:
LBB51_60:
	mov	x0, x19
	bl	__Unwind_Resume
LBB51_61:
Ltmp275:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdrGot	Lloh154, Lloh155
	.loh AdrpLdr	Lloh156, Lloh157
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpAdd	Lloh160, Lloh161
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table51:
Lexception18:
	.byte	255
	.byte	155
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp237-Lfunc_begin18
	.uleb128 Ltmp238-Ltmp237
	.uleb128 Ltmp278-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp238-Lfunc_begin18
	.uleb128 Ltmp239-Ltmp238
	.byte	0
	.byte	0
	.uleb128 Ltmp239-Lfunc_begin18
	.uleb128 Ltmp240-Ltmp239
	.uleb128 Ltmp272-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp241-Lfunc_begin18
	.uleb128 Ltmp242-Ltmp241
	.uleb128 Ltmp243-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp246-Lfunc_begin18
	.uleb128 Ltmp252-Ltmp246
	.uleb128 Ltmp253-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp254-Lfunc_begin18
	.uleb128 Ltmp261-Ltmp254
	.uleb128 Ltmp262-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp248-Lfunc_begin18
	.uleb128 Ltmp249-Ltmp248
	.uleb128 Ltmp250-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp249-Lfunc_begin18
	.uleb128 Ltmp263-Ltmp249
	.byte	0
	.byte	0
	.uleb128 Ltmp263-Lfunc_begin18
	.uleb128 Ltmp264-Ltmp263
	.uleb128 Ltmp265-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp276-Lfunc_begin18
	.uleb128 Ltmp277-Ltmp276
	.uleb128 Ltmp278-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp277-Lfunc_begin18
	.uleb128 Ltmp270-Ltmp277
	.byte	0
	.byte	0
	.uleb128 Ltmp270-Lfunc_begin18
	.uleb128 Ltmp271-Ltmp270
	.uleb128 Ltmp272-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp271-Lfunc_begin18
	.uleb128 Ltmp244-Ltmp271
	.byte	0
	.byte	0
	.uleb128 Ltmp244-Lfunc_begin18
	.uleb128 Ltmp245-Ltmp244
	.uleb128 Ltmp275-Lfunc_begin18
	.byte	1
	.uleb128 Ltmp245-Lfunc_begin18
	.uleb128 Ltmp266-Ltmp245
	.byte	0
	.byte	0
	.uleb128 Ltmp266-Lfunc_begin18
	.uleb128 Ltmp274-Ltmp266
	.uleb128 Ltmp275-Lfunc_begin18
	.byte	1
	.uleb128 Ltmp274-Lfunc_begin18
	.uleb128 Lfunc_end18-Ltmp274
	.byte	0
	.byte	0
Lcst_end18:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase11:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board8moves_of17h1e15998cda840442E:
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception19
	sub	sp, sp, #400
	.cfi_def_cfa_offset 400
	stp	x28, x27, [sp, #304]
	stp	x26, x25, [sp, #320]
	stp	x24, x23, [sp, #336]
	stp	x22, x21, [sp, #352]
	stp	x20, x19, [sp, #368]
	stp	x29, x30, [sp, #384]
	add	x29, sp, #384
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	mov	x19, x2
	mov	x21, x1
	str	x0, [sp, #8]
	mov	w8, #4
	stp	xzr, x8, [sp, #64]
	str	xzr, [sp, #80]
	cmp	w2, #0
	mov	w8, #24
	csel	x8, xzr, x8, ne
	add	x8, x1, x8
	ldp	x20, x27, [x8, #8]
Lloh162:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh163:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #168
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB52_21
	mov	x22, #0
	sub	x25, x29, #131
	mov	w8, #7
	stp	x8, x0, [sp, #88]
	add	x8, x20, #16
	add	x9, x20, #528
	stp	xzr, x9, [sp, #104]
	stp	x9, x8, [sp, #16]
	stp	xzr, x8, [sp, #120]
	sub	x20, x29, #128
	mov	w26, #4
	str	x27, [sp, #136]
	str	xzr, [sp, #152]
	b	LBB52_3
LBB52_2:
	mov	x27, x28
LBB52_3:
Ltmp279:
	add	x0, sp, #88
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
Ltmp280:
	cbz	x0, LBB52_17
	ldr	w24, [x0, #4]
	ldr	d0, [x0]
	str	q0, [sp, #48]
Lloh164:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh165:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #168
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB52_20
	mov	w8, #7
	stp	x8, x0, [sp, #168]
	ldp	x9, x8, [sp, #16]
	stp	xzr, x9, [sp, #184]
	stp	xzr, x8, [sp, #200]
	ldr	q0, [sp, #48]
	fmov	w23, s0
	mov	x28, x27
	str	x27, [sp, #216]
	str	xzr, [sp, #232]
LBB52_7:
Ltmp282:
	add	x0, sp, #168
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
Ltmp283:
	cbz	x0, LBB52_15
	ldr	w27, [x0, #4]
	ldr	d1, [x0]
	ldr	q0, [sp, #48]
	str	q1, [sp, #32]
	mov.d	v0[1], v1[0]
	stur	q0, [x29, #-128]
	sturb	w19, [x29, #-112]
	ldrh	w8, [x25]
	sturh	w8, [x20, #17]
	ldurb	w8, [x29, #-129]
	sturb	w8, [x20, #19]
Ltmp284:
	sub	x1, x29, #128
	mov	x0, x21
	bl	__ZN6quorum5board5Board10valid_move17h8ac4676edb7a5c81E
Ltmp285:
	and	w8, w0, #0xff
	cmp	w8, #6
	b.ne	LBB52_7
	ldr	x8, [sp, #64]
	cmp	x22, x8
	b.ne	LBB52_14
Ltmp287:
	add	x0, sp, #64
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h313df9b53e681ef5E
Ltmp288:
	ldr	x26, [sp, #72]
LBB52_14:
	mov	w8, #20
	madd	x8, x22, x8, x26
	stp	w23, w24, [x8]
	ldr	q0, [sp, #32]
	str	s0, [x8, #8]
	str	w27, [x8, #12]
	strb	w19, [x8, #16]
	ldurb	w9, [x29, #-129]
	ldrh	w10, [x25]
	sturh	w10, [x8, #17]
	strb	w9, [x8, #19]
	add	x22, x22, #1
	str	x22, [sp, #80]
	b	LBB52_7
LBB52_15:
	ldr	x8, [sp, #168]
	cbz	x8, LBB52_2
	ldr	x0, [sp, #176]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB52_2
LBB52_17:
	ldr	x8, [sp, #88]
	cbz	x8, LBB52_19
	ldr	x0, [sp, #96]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB52_19:
	ldr	w8, [x21, #48]
	ldp	x9, x10, [sp, #64]
	mov	w11, #20
	madd	x11, x22, x11, x10
	ldr	x12, [sp, #8]
	stp	x11, x21, [x12, #96]
	stp	x10, x10, [x12, #72]
	str	x9, [x12, #88]
	str	wzr, [x12]
	str	wzr, [x12, #16]
	str	x21, [x12, #32]
	stp	wzr, w8, [x12, #40]
	str	x21, [x12, #48]
	strb	w19, [x12, #56]
	strb	w19, [x12, #64]
	.cfi_def_cfa wsp, 400
	ldp	x29, x30, [sp, #384]
	ldp	x20, x19, [sp, #368]
	ldp	x22, x21, [sp, #352]
	ldp	x24, x23, [sp, #336]
	ldp	x26, x25, [sp, #320]
	ldp	x28, x27, [sp, #304]
	add	sp, sp, #400
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB52_20:
	.cfi_restore_state
Ltmp290:
Lloh166:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGE
Lloh167:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGEOFF
	mov	w0, #8
	mov	w1, #168
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp291:
	b	LBB52_22
LBB52_21:
Ltmp293:
Lloh168:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGE
Lloh169:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGEOFF
	mov	w0, #8
	mov	w1, #168
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp294:
LBB52_22:
	brk	#0x1
LBB52_23:
Ltmp295:
	mov	x19, x0
	ldr	x8, [sp, #64]
	cbz	x8, LBB52_33
	b	LBB52_35
LBB52_24:
Ltmp289:
	b	LBB52_29
LBB52_25:
Ltmp292:
	b	LBB52_27
LBB52_26:
Ltmp281:
LBB52_27:
	mov	x19, x0
	b	LBB52_31
LBB52_28:
Ltmp286:
LBB52_29:
	mov	x19, x0
	ldr	x8, [sp, #168]
	cbz	x8, LBB52_31
	ldr	x0, [sp, #176]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB52_31:
	ldr	x8, [sp, #88]
	cbnz	x8, LBB52_34
	ldr	x8, [sp, #64]
	cbnz	x8, LBB52_35
LBB52_33:
	mov	x0, x19
	bl	__Unwind_Resume
LBB52_34:
	ldr	x0, [sp, #96]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	ldr	x8, [sp, #64]
	cbz	x8, LBB52_33
LBB52_35:
	ldr	x0, [sp, #72]
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh162, Lloh163
	.loh AdrpLdrGot	Lloh164, Lloh165
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpAdd	Lloh168, Lloh169
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table52:
Lexception19:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp279-Lfunc_begin19
	.uleb128 Ltmp280-Ltmp279
	.uleb128 Ltmp281-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp282-Lfunc_begin19
	.uleb128 Ltmp285-Ltmp282
	.uleb128 Ltmp286-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp287-Lfunc_begin19
	.uleb128 Ltmp288-Ltmp287
	.uleb128 Ltmp289-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp290-Lfunc_begin19
	.uleb128 Ltmp291-Ltmp290
	.uleb128 Ltmp292-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp293-Lfunc_begin19
	.uleb128 Ltmp294-Ltmp293
	.uleb128 Ltmp295-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp294-Lfunc_begin19
	.uleb128 Lfunc_end19-Ltmp294
	.byte	0
	.byte	0
Lcst_end19:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE:
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception20
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x28, x27, [sp, #240]
	stp	x26, x25, [sp, #256]
	stp	x24, x23, [sp, #272]
	stp	x22, x21, [sp, #288]
	stp	x20, x19, [sp, #304]
	stp	x29, x30, [sp, #320]
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	mov	x22, x2
	mov	x20, x1
	mov	x21, x0
	mov	x0, x1
	mov	x1, x2
	bl	__ZN6quorum5board5Board10valid_move17h8ac4676edb7a5c81E
	and	w8, w0, #0xff
	sturb	w8, [x29, #-112]
	cmp	w8, #6
	b.ne	LBB53_66
	ldr	d0, [x20, #48]
	str	q0, [sp, #96]
	ldr	x8, [x20]
	mov	w9, #1
	ldadd	x9, x9, [x8]
	tbnz	x9, #63, LBB53_67
	ldr	x9, [x20, #8]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB53_67
	mov	x19, x20
	ldr	x10, [x19, #24]!
	ldur	x11, [x19, #-8]
	mov	w12, #1
	ldadd	x12, x12, [x10]
	tbnz	x12, #63, LBB53_67
	ldr	x12, [x20, #32]
	mov	w13, #1
	ldadd	x13, x13, [x12]
	tbnz	x13, #63, LBB53_67
	ldr	x13, [x20, #40]
	ldrb	w14, [x20, #56]
	ldr	q0, [sp, #96]
	str	d0, [sp, #168]
	stp	x8, x9, [sp, #120]
	add	x8, sp, #120
	add	x23, x8, #24
	stp	x11, x10, [sp, #136]
	stp	x12, x13, [sp, #152]
	strb	w14, [sp, #176]
	ldrb	w9, [x22, #16]
	cmp	w9, #2
	b.ne	LBB53_7
	ldrb	w9, [x22, #8]
	ldp	w2, w3, [x22]
	cmp	w9, #0
	csel	x1, x8, x23, ne
Ltmp334:
	sub	x0, x29, #112
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp335:
	b	LBB53_65
LBB53_7:
	mov	x11, x9
	ldp	w25, w26, [x22]
	ldp	w8, w9, [x22, #8]
	sub	w10, w8, w25
	add	w24, w10, w8
	sub	w8, w9, w26
	add	w27, w8, w9
	str	w11, [sp, #36]
	tbz	w11, #0, LBB53_9
	add	x22, sp, #120
Ltmp298:
	sub	x0, x29, #112
	add	x1, sp, #120
	mov	x2, x24
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp299:
	b	LBB53_10
LBB53_9:
Ltmp296:
	sub	x0, x29, #112
	mov	x1, x23
	mov	x2, x24
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp297:
	mov	x22, x23
LBB53_10:
Ltmp300:
	sub	x0, x29, #112
	mov	x1, x22
	mov	x2, x25
	mov	x3, x26
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp301:
	mov	w8, #4
	stp	xzr, x8, [x29, #-136]
	stur	xzr, [x29, #-120]
	ldr	q0, [sp, #96]
	fmov	w1, s0
Ltmp302:
	sub	x0, x29, #112
	str	w1, [sp, #60]
	mov	x2, x24
	mov	x3, x27
	bl	__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE
Ltmp303:
	str	w27, [sp, #64]
	str	w24, [sp, #88]
	str	x23, [sp, #24]
	str	x21, [sp]
	ldp	x8, x25, [x29, #-112]
	str	x8, [sp, #40]
	ldur	x8, [x29, #-96]
	cbz	x8, LBB53_21
	mov	x22, #0
	mov	x21, #0
	ldr	w9, [sp, #36]
	tst	w9, #0x1
	mov	w9, #24
	csel	x9, x9, xzr, ne
	csel	x10, x19, x20, ne
	ldr	x26, [x20, x9]
	ldr	x27, [x10, #8]
	csel	x23, x20, x19, ne
	lsl	x24, x8, #3
	mov	w8, #4
	str	x8, [sp, #48]
	b	LBB53_16
LBB53_14:
	ldr	x8, [sp, #48]
	ldr	q0, [sp, #96]
	str	d0, [x8, x21, lsl #3]
	add	x21, x21, #1
	stur	x21, [x29, #-120]
LBB53_15:
	add	x22, x22, #8
	cmp	x24, x22
	b.eq	LBB53_22
LBB53_16:
	ldr	d0, [x25, x22]
	fmov	w28, s0
	str	q0, [sp, #96]
	mov.s	w19, v0[1]
	mov	x0, x26
	mov	x1, x27
	mov	x2, x28
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB53_15
	ldr	w9, [sp, #64]
	sub	w8, w19, w9
	add	w3, w9, w8, lsl #1
	ldr	w9, [sp, #88]
	sub	w8, w28, w9
	add	w2, w9, w8, lsl #1
	ldp	x0, x1, [x23]
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB53_15
	ldur	x8, [x29, #-136]
	cmp	x21, x8
	b.ne	LBB53_14
Ltmp305:
	sub	x0, x29, #136
Lloh170:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.56@PAGE
Lloh171:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.56@PAGEOFF
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp306:
	ldur	x8, [x29, #-128]
	str	x8, [sp, #48]
	b	LBB53_14
LBB53_21:
	mov	x21, #0
LBB53_22:
	ldr	x8, [sp, #40]
	cbz	x8, LBB53_24
	lsl	x1, x8, #3
	mov	x0, x25
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_24:
	ldp	x22, x25, [x29, #-136]
	ldr	x23, [sp, #24]
	cbz	x21, LBB53_34
	add	x19, x25, x21, lsl #3
	ldr	w8, [sp, #36]
	tbz	w8, #0, LBB53_30
	mov	x21, x25
LBB53_27:
	ldp	w26, w27, [x21]
Ltmp313:
	sub	x0, x29, #112
	mov	x1, x23
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp314:
Ltmp315:
	sub	x0, x29, #112
	add	x1, sp, #120
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp316:
	add	x21, x21, #8
	cmp	x21, x19
	b.ne	LBB53_27
	b	LBB53_34
LBB53_30:
	mov	x21, x25
LBB53_31:
	ldp	w26, w27, [x21]
Ltmp308:
	sub	x0, x29, #112
	add	x1, sp, #120
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp309:
Ltmp310:
	sub	x0, x29, #112
	mov	x1, x23
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp311:
	add	x21, x21, #8
	cmp	x21, x19
	b.ne	LBB53_31
LBB53_34:
	cbz	x22, LBB53_36
	lsl	x1, x22, #3
	mov	x0, x25
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_36:
	mov	w8, #4
	stp	xzr, x8, [x29, #-136]
	stur	xzr, [x29, #-120]
Ltmp318:
	sub	x0, x29, #112
	ldp	w1, w3, [sp, #60]
	ldr	w2, [sp, #88]
	bl	__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE
Ltmp319:
	ldp	x9, x8, [x29, #-112]
	stp	x9, x8, [sp, #8]
	ldur	x8, [x29, #-96]
	cbz	x8, LBB53_57
	ldr	x22, [sp, #16]
	add	x9, x22, x8, lsl #3
	ldr	w8, [sp, #36]
	tst	w8, #0x1
	mov	w8, #24
	csel	x8, x8, xzr, ne
	add	x8, x20, x8
	stp	x8, x9, [sp, #40]
	mov	x23, #-1
	b	LBB53_41
LBB53_39:
	ldur	x8, [x29, #-128]
	ldr	q0, [sp, #64]
	str	d0, [x8, x19, lsl #3]
	add	x8, x19, #1
	stur	x8, [x29, #-120]
LBB53_40:
	ldr	x8, [sp, #48]
	cmp	x22, x8
	b.eq	LBB53_57
LBB53_41:
	ldr	d0, [x22], #8
	fmov	w25, s0
	str	q0, [sp, #64]
	mov.s	w26, v0[1]
Ltmp321:
	sub	x0, x29, #112
	ldr	w1, [sp, #60]
	mov	x2, x25
	mov	x3, x26
	bl	__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE
Ltmp322:
	ldp	x8, x21, [x29, #-112]
	stp	x21, x8, [sp, #88]
	ldur	x8, [x29, #-96]
	lsl	x27, x8, #3
	b	LBB53_44
LBB53_43:
	add	x21, x21, #8
	sub	x27, x27, #8
	tbz	w28, #0, LBB53_55
LBB53_44:
	cbz	x27, LBB53_50
	ldp	w28, w24, [x21]
Ltmp323:
	sub	x0, x29, #112
	mov	x1, x20
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
Ltmp324:
	ldp	x19, x1, [x29, #-112]
	mov	x0, x19
	mov	x2, x28
	mov	x3, x24
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	mov	x28, x0
	ldaddl	x23, x8, [x19]
	cmp	x8, #1
	b.ne	LBB53_48
	dmb	ishld
	sub	x0, x29, #112
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB53_48:
	ldur	x8, [x29, #-104]
	ldaddl	x23, x8, [x8]
	cmp	x8, #1
	b.ne	LBB53_43
	dmb	ishld
Ltmp325:
	sub	x8, x29, #112
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp326:
	b	LBB53_43
LBB53_50:
	ldr	x8, [sp, #96]
	cbz	x8, LBB53_52
	lsl	x1, x8, #3
	ldr	x0, [sp, #88]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_52:
	ldr	x8, [sp, #40]
	ldp	x0, x1, [x8]
	mov	x2, x25
	mov	x3, x26
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB53_40
	ldur	x19, [x29, #-120]
	ldur	x8, [x29, #-136]
	cmp	x19, x8
	b.ne	LBB53_39
Ltmp328:
	sub	x0, x29, #136
Lloh172:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.57@PAGE
Lloh173:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.57@PAGEOFF
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp329:
	b	LBB53_39
LBB53_55:
	ldr	x8, [sp, #96]
	cbz	x8, LBB53_40
	lsl	x1, x8, #3
	ldr	x0, [sp, #88]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB53_40
LBB53_57:
	ldr	x8, [sp, #8]
	cbz	x8, LBB53_59
	lsl	x1, x8, #3
	ldr	x0, [sp, #16]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_59:
	ldp	x22, x20, [x29, #-136]
	ldur	x8, [x29, #-120]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #36]
	cbz	x8, LBB53_63
	add	x19, x20, x8, lsl #3
	tst	w10, #0x1
	add	x8, sp, #120
	csel	x21, x9, x8, ne
	mov	x23, x20
LBB53_61:
	ldp	w2, w3, [x23]
Ltmp331:
	sub	x0, x29, #112
	mov	x1, x21
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp332:
	add	x23, x23, #8
	cmp	x23, x19
	b.ne	LBB53_61
LBB53_63:
	ldr	x21, [sp]
	cbz	x22, LBB53_65
	lsl	x1, x22, #3
	mov	x0, x20
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_65:
	ldrb	w8, [sp, #176]
	eor	w8, w8, #0x1
	strb	w8, [sp, #176]
	ldur	q0, [sp, #120]
	ldur	q1, [sp, #136]
	stp	q0, q1, [x21]
	ldur	q0, [sp, #152]
	ldur	q1, [sp, #168]
	stp	q0, q1, [x21, #32]
	.cfi_def_cfa wsp, 336
	ldp	x29, x30, [sp, #320]
	ldp	x20, x19, [sp, #304]
	ldp	x22, x21, [sp, #288]
	ldp	x24, x23, [sp, #272]
	ldp	x26, x25, [sp, #256]
	ldp	x28, x27, [sp, #240]
	add	sp, sp, #336
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB53_66:
	.cfi_restore_state
	str	xzr, [sp, #120]
	sub	x0, x29, #112
	add	x1, sp, #120
	bl	__ZN4core9panicking13assert_failed17h904ffb82e0b54c04E
LBB53_67:
	brk	#0x1
LBB53_68:
Ltmp320:
	b	LBB53_70
LBB53_69:
Ltmp304:
LBB53_70:
	mov	x19, x0
	b	LBB53_86
LBB53_71:
Ltmp307:
	mov	x19, x0
	ldr	x8, [sp, #40]
	cbz	x8, LBB53_86
	ldr	x8, [sp, #40]
	lsl	x1, x8, #3
	mov	x0, x25
	b	LBB53_85
LBB53_73:
Ltmp336:
	mov	x19, x0
	b	LBB53_89
LBB53_74:
Ltmp333:
	mov	x19, x0
	cbz	x22, LBB53_89
	lsl	x1, x22, #3
	mov	x0, x20
	b	LBB53_88
LBB53_76:
Ltmp312:
	b	LBB53_78
LBB53_77:
Ltmp317:
LBB53_78:
	mov	x19, x0
	cbz	x22, LBB53_89
	lsl	x1, x22, #3
	mov	x0, x25
	b	LBB53_88
LBB53_80:
Ltmp330:
	mov	x19, x0
	b	LBB53_83
LBB53_81:
Ltmp327:
	mov	x19, x0
	ldr	x8, [sp, #96]
	cbz	x8, LBB53_83
	lsl	x1, x8, #3
	ldr	x0, [sp, #88]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_83:
	ldr	x8, [sp, #8]
	cbz	x8, LBB53_86
	lsl	x1, x8, #3
	ldr	x0, [sp, #16]
LBB53_85:
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_86:
	ldur	x8, [x29, #-136]
	cbz	x8, LBB53_89
	ldur	x0, [x29, #-128]
	lsl	x1, x8, #3
LBB53_88:
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB53_89:
Ltmp337:
	add	x0, sp, #120
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp338:
	mov	x0, x19
	bl	__Unwind_Resume
LBB53_91:
Ltmp339:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh172, Lloh173
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table53:
Lexception20:
	.byte	255
	.byte	155
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20
	.uleb128 Ltmp334-Lfunc_begin20
	.byte	0
	.byte	0
	.uleb128 Ltmp334-Lfunc_begin20
	.uleb128 Ltmp301-Ltmp334
	.uleb128 Ltmp336-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp302-Lfunc_begin20
	.uleb128 Ltmp303-Ltmp302
	.uleb128 Ltmp304-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp305-Lfunc_begin20
	.uleb128 Ltmp306-Ltmp305
	.uleb128 Ltmp307-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp313-Lfunc_begin20
	.uleb128 Ltmp316-Ltmp313
	.uleb128 Ltmp317-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp308-Lfunc_begin20
	.uleb128 Ltmp311-Ltmp308
	.uleb128 Ltmp312-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp318-Lfunc_begin20
	.uleb128 Ltmp319-Ltmp318
	.uleb128 Ltmp320-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp321-Lfunc_begin20
	.uleb128 Ltmp322-Ltmp321
	.uleb128 Ltmp330-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp323-Lfunc_begin20
	.uleb128 Ltmp326-Ltmp323
	.uleb128 Ltmp327-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp328-Lfunc_begin20
	.uleb128 Ltmp329-Ltmp328
	.uleb128 Ltmp330-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp331-Lfunc_begin20
	.uleb128 Ltmp332-Ltmp331
	.uleb128 Ltmp333-Lfunc_begin20
	.byte	0
	.uleb128 Ltmp332-Lfunc_begin20
	.uleb128 Ltmp337-Ltmp332
	.byte	0
	.byte	0
	.uleb128 Ltmp337-Lfunc_begin20
	.uleb128 Ltmp338-Ltmp337
	.uleb128 Ltmp339-Lfunc_begin20
	.byte	1
	.uleb128 Ltmp338-Lfunc_begin20
	.uleb128 Lfunc_end20-Ltmp338
	.byte	0
	.byte	0
Lcst_end20:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase12:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum4mcts7playout28_$u7b$$u7b$closure$u7d$$u7d$17h39297a2b36d05765E:
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception21
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x22, x21, [sp, #224]
	stp	x20, x19, [sp, #240]
	stp	x29, x30, [sp, #256]
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_remember_state
	ldr	w19, [x0]
	mov	x0, sp
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp340:
	add	x0, sp, #112
	mov	x1, sp
	mov	w2, #1
	bl	__ZN6quorum5board5Board8moves_of17h1e15998cda840442E
Ltmp341:
Ltmp342:
	add	x0, sp, #64
	add	x1, sp, #112
	bl	__ZN4core4iter6traits8iterator8Iterator7collect17h12b32afc1eebdbf0E
Ltmp343:
Ltmp345:
	add	x0, sp, #112
	mov	x1, sp
	mov	w2, #0
	bl	__ZN6quorum5board5Board8moves_of17h1e15998cda840442E
Ltmp346:
Ltmp347:
	add	x0, sp, #88
	add	x1, sp, #112
	bl	__ZN4core4iter6traits8iterator8Iterator7collect17h12b32afc1eebdbf0E
Ltmp348:
	ldp	x20, x8, [sp, #80]
	ldr	x21, [sp, #104]
	cbz	x8, LBB54_6
	ldr	x0, [sp, #96]
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB54_6:
	ldr	x8, [sp, #64]
	cbz	x8, LBB54_8
	ldr	x0, [sp, #72]
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB54_8:
	sub	w8, w21, w20
	mul	w19, w8, w19
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	mov	x0, x19
	.cfi_def_cfa wsp, 272
	ldp	x29, x30, [sp, #256]
	ldp	x20, x19, [sp, #240]
	ldp	x22, x21, [sp, #224]
	add	sp, sp, #272
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
LBB54_9:
	.cfi_restore_state
Ltmp349:
	mov	x19, x0
	ldr	x8, [sp, #64]
	cbz	x8, LBB54_12
	ldr	x0, [sp, #72]
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB54_12
LBB54_11:
Ltmp344:
	mov	x19, x0
LBB54_12:
Ltmp350:
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp351:
	mov	x0, x19
	bl	__Unwind_Resume
LBB54_14:
Ltmp352:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table54:
Lexception21:
	.byte	255
	.byte	155
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21
	.uleb128 Ltmp340-Lfunc_begin21
	.byte	0
	.byte	0
	.uleb128 Ltmp340-Lfunc_begin21
	.uleb128 Ltmp343-Ltmp340
	.uleb128 Ltmp344-Lfunc_begin21
	.byte	0
	.uleb128 Ltmp345-Lfunc_begin21
	.uleb128 Ltmp348-Ltmp345
	.uleb128 Ltmp349-Lfunc_begin21
	.byte	0
	.uleb128 Ltmp348-Lfunc_begin21
	.uleb128 Ltmp350-Ltmp348
	.byte	0
	.byte	0
	.uleb128 Ltmp350-Lfunc_begin21
	.uleb128 Ltmp351-Ltmp350
	.uleb128 Ltmp352-Lfunc_begin21
	.byte	1
	.uleb128 Ltmp351-Lfunc_begin21
	.uleb128 Lfunc_end21-Ltmp351
	.byte	0
	.byte	0
Lcst_end21:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase13:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
lCPI55_0:
	.long	9
	.long	2
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum4main17h9b8fc0a39626f413E:
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception22
	sub	sp, sp, #448
	.cfi_def_cfa_offset 448
	stp	x28, x27, [sp, #352]
	stp	x26, x25, [sp, #368]
	stp	x24, x23, [sp, #384]
	stp	x22, x21, [sp, #400]
	stp	x20, x19, [sp, #416]
	stp	x29, x30, [sp, #432]
	add	x29, sp, #432
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	add	x0, sp, #64
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp353:
	add	x0, sp, #168
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp354:
Ltmp356:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #0
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp357:
Ltmp358:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #0
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp359:
Ltmp360:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #0
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp361:
Ltmp362:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #0
	mov	w3, #3
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp363:
Ltmp364:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #0
	mov	w3, #5
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp365:
Ltmp366:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #0
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp367:
Ltmp368:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #0
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp369:
Ltmp370:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #0
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp371:
Ltmp372:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #1
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp373:
Ltmp374:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #1
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp375:
Ltmp376:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #1
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp377:
Ltmp378:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #1
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp379:
Ltmp380:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #1
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp381:
Ltmp382:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #1
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp383:
Ltmp384:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #2
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp385:
Ltmp386:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #2
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp387:
Ltmp388:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #2
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp389:
Ltmp390:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #2
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp391:
Ltmp392:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #3
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp393:
Ltmp394:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #3
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp395:
Ltmp396:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #5
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp397:
Ltmp398:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #5
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp399:
Ltmp400:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #6
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp401:
Ltmp402:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #6
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp403:
Ltmp404:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #6
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp405:
Ltmp406:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #6
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp407:
Ltmp408:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #7
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp409:
Ltmp410:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #7
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp411:
Ltmp412:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #7
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp413:
Ltmp414:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #7
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp415:
Ltmp416:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #7
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp417:
Ltmp418:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #7
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp419:
Ltmp420:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #8
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp421:
Ltmp422:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #8
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp423:
Ltmp424:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #8
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp425:
Ltmp426:
	mov	x0, sp
	add	x1, sp, #64
	mov	w2, #8
	mov	w3, #3
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp427:
Ltmp428:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #8
	mov	w3, #5
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp429:
Ltmp430:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #8
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp431:
Ltmp432:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #8
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp433:
Ltmp434:
	mov	x0, sp
	add	x1, sp, #168
	mov	w2, #8
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp435:
	add	x20, sp, #168
	ldr	q0, [x20]
	str	q0, [sp]
	ldr	x8, [sp, #184]
	str	x8, [sp, #16]
	ldr	q0, [sp, #64]
	stur	q0, [sp, #24]
	ldr	x8, [sp, #80]
	str	x8, [sp, #40]
Lloh174:
	adrp	x8, lCPI55_0@PAGE
Lloh175:
	ldr	d0, [x8, lCPI55_0@PAGEOFF]
	str	d0, [sp, #48]
	mov	w8, #1
	strb	w8, [sp, #56]
Ltmp442:
	add	x0, sp, #168
	mov	x1, sp
	mov	w2, #2
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp443:
Ltmp444:
	mov	x0, sp
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp445:
	ldr	d0, [sp, #48]
	ldr	x8, [sp]
	mov	w9, #1
	ldadd	x9, x9, [x8]
	tbnz	x9, #63, LBB55_78
	ldr	x9, [sp, #8]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB55_78
	ldp	x10, x11, [sp, #16]
	mov	w12, #1
	ldadd	x12, x12, [x11]
	tbnz	x12, #63, LBB55_78
	ldr	x12, [sp, #32]
	mov	w21, #1
	ldadd	x21, x13, [x12]
	tbnz	x13, #63, LBB55_78
	ldr	x13, [sp, #40]
	ldrb	w14, [sp, #56]
	add	x23, sp, #64
	add	x22, x23, #52
	str	d0, [sp, #112]
	stp	x8, x9, [sp, #64]
	stp	x10, x11, [sp, #80]
	stp	x12, x13, [sp, #96]
	add	x24, x23, #56
	strb	w14, [sp, #120]
	add	x25, sp, #168
	sub	x26, x29, #148
	sub	x27, x29, #97
	mov	w28, #1
	str	wzr, [sp, #140]
	b	LBB55_49
LBB55_48:
	add	w28, w28, #1
LBB55_49:
Ltmp446:
	add	x0, sp, #64
	mov	w1, #0
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp447:
	tbnz	w0, #0, LBB55_68
Ltmp448:
	add	x0, sp, #64
	mov	w1, #1
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp449:
	tbnz	w0, #0, LBB55_68
	ldrb	w2, [sp, #120]
Ltmp450:
	add	x0, sp, #168
	add	x1, sp, #64
	bl	__ZN6quorum5board5Board8moves_of17h1e15998cda840442E
Ltmp451:
Ltmp452:
	add	x0, sp, #144
	add	x1, sp, #168
	bl	__ZN4core4iter6traits8iterator8Iterator7collect17h12b32afc1eebdbf0E
Ltmp453:
	ldrb	w8, [sp, #120]
	cmp	w8, #0
	cneg	w8, w21, eq
	stur	w8, [x29, #-148]
	ldp	x19, x1, [sp, #152]
	stp	x26, x27, [sp, #168]
	str	x23, [sp, #184]
	stur	x25, [x29, #-144]
	cmp	x1, #2
	b.hs	LBB55_63
	cbz	x1, LBB55_75
LBB55_57:
	ldr	q0, [x19]
	stur	q0, [x29, #-144]
	ldr	w8, [x19, #16]
	stur	w8, [x29, #-128]
Ltmp459:
	add	x0, sp, #168
	add	x1, sp, #64
	sub	x2, x29, #144
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp460:
Ltmp461:
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp462:
	ldp	q0, q1, [x20]
	stp	q0, q1, [sp, #64]
	ldp	q0, q1, [x20, #32]
	stp	q0, q1, [sp, #96]
	str	w28, [sp, #140]
Ltmp464:
	add	x0, sp, #64
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp465:
	ldr	x8, [sp, #144]
	cmp	w28, #201
	b.eq	LBB55_66
	cbz	x8, LBB55_48
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x19
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB55_48
LBB55_63:
	cmp	x1, #21
	b.hs	LBB55_65
Ltmp457:
	add	x2, sp, #168
	mov	x0, x19
	bl	__ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h909d53c8b1d19033E
Ltmp458:
	b	LBB55_57
LBB55_65:
Ltmp455:
	sub	x2, x29, #144
	mov	x0, x19
	bl	__ZN4core5slice4sort6stable14driftsort_main17h64100529e2ae971cE
Ltmp456:
	b	LBB55_57
LBB55_66:
	cbz	x8, LBB55_68
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x19
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB55_68:
Lloh176:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h39bed4b042eb2dc0E@GOTPAGE
Lloh177:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h39bed4b042eb2dc0E@GOTPAGEOFF]
	add	x9, sp, #140
	stp	x9, x8, [x29, #-144]
Lloh178:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.66@PAGE
Lloh179:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.66@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [sp, #168]
	sub	x8, x29, #144
	mov	w9, #1
	str	x8, [sp, #184]
	stp	x9, xzr, [sp, #192]
Ltmp474:
	add	x0, sp, #168
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
Ltmp475:
Ltmp476:
	add	x0, sp, #64
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp477:
Ltmp478:
	add	x0, sp, #64
	mov	w1, #0
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp479:
	tbnz	w0, #0, LBB55_73
Ltmp480:
	add	x0, sp, #64
	mov	w1, #1
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp481:
LBB55_73:
Ltmp486:
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp487:
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	.cfi_def_cfa wsp, 448
	ldp	x29, x30, [sp, #432]
	ldp	x20, x19, [sp, #416]
	ldp	x22, x21, [sp, #400]
	ldp	x24, x23, [sp, #384]
	ldp	x26, x25, [sp, #368]
	ldp	x28, x27, [sp, #352]
	add	sp, sp, #448
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB55_75:
	.cfi_restore_state
Lloh180:
	adrp	x8, __ZN57_$LT$quorum..board..Color$u20$as$u20$core..fmt..Debug$GT$3fmt17h7723673c1d605453E@PAGE
Lloh181:
	add	x8, x8, __ZN57_$LT$quorum..board..Color$u20$as$u20$core..fmt..Debug$GT$3fmt17h7723673c1d605453E@PAGEOFF
	stp	x24, x8, [x29, #-144]
Lloh182:
	adrp	x8, __ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h766d077a50a692a7E@PAGE
Lloh183:
	add	x8, x8, __ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h766d077a50a692a7E@PAGEOFF
	stp	x22, x8, [x29, #-128]
Lloh184:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.63@PAGE
Lloh185:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.63@PAGEOFF
	mov	w9, #3
	stp	x8, x9, [sp, #168]
	sub	x8, x29, #144
	mov	w9, #2
	str	x8, [sp, #184]
	stp	x9, xzr, [sp, #192]
Ltmp467:
	add	x0, sp, #168
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
Ltmp468:
Ltmp469:
	add	x0, sp, #64
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp470:
Ltmp471:
	bl	__ZN6quorum4mcts7playout19panic_cold_explicit17he90f15c63cc451bbE
Ltmp472:
LBB55_78:
	brk	#0x1
LBB55_79:
Ltmp355:
	mov	x20, x0
	b	LBB55_89
LBB55_80:
Ltmp488:
	mov	x20, x0
	b	LBB55_94
LBB55_81:
Ltmp482:
	b	LBB55_92
LBB55_82:
Ltmp473:
	b	LBB55_85
LBB55_83:
Ltmp463:
	add	x8, sp, #168
	mov	x20, x0
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #64]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [sp, #96]
	b	LBB55_86
LBB55_84:
Ltmp466:
LBB55_85:
	mov	x20, x0
LBB55_86:
	ldr	x8, [sp, #144]
	cbz	x8, LBB55_93
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x19
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB55_93
LBB55_88:
Ltmp436:
	mov	x20, x0
Ltmp437:
	add	x0, sp, #168
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp438:
LBB55_89:
Ltmp439:
	add	x0, sp, #64
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp440:
	b	LBB55_95
LBB55_90:
Ltmp441:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB55_91:
Ltmp454:
LBB55_92:
	mov	x20, x0
LBB55_93:
Ltmp483:
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp484:
LBB55_94:
Ltmp489:
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp490:
LBB55_95:
	mov	x0, x20
	bl	__Unwind_Resume
LBB55_96:
Ltmp491:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB55_97:
Ltmp485:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdr	Lloh174, Lloh175
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpLdrGot	Lloh176, Lloh177
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh180, Lloh181
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table55:
Lexception22:
	.byte	255
	.byte	155
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Lfunc_begin22-Lfunc_begin22
	.uleb128 Ltmp353-Lfunc_begin22
	.byte	0
	.byte	0
	.uleb128 Ltmp353-Lfunc_begin22
	.uleb128 Ltmp354-Ltmp353
	.uleb128 Ltmp355-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp356-Lfunc_begin22
	.uleb128 Ltmp435-Ltmp356
	.uleb128 Ltmp436-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp442-Lfunc_begin22
	.uleb128 Ltmp445-Ltmp442
	.uleb128 Ltmp488-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp446-Lfunc_begin22
	.uleb128 Ltmp453-Ltmp446
	.uleb128 Ltmp454-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp459-Lfunc_begin22
	.uleb128 Ltmp460-Ltmp459
	.uleb128 Ltmp466-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp461-Lfunc_begin22
	.uleb128 Ltmp462-Ltmp461
	.uleb128 Ltmp463-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp464-Lfunc_begin22
	.uleb128 Ltmp456-Ltmp464
	.uleb128 Ltmp466-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp474-Lfunc_begin22
	.uleb128 Ltmp481-Ltmp474
	.uleb128 Ltmp482-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp486-Lfunc_begin22
	.uleb128 Ltmp487-Ltmp486
	.uleb128 Ltmp488-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp487-Lfunc_begin22
	.uleb128 Ltmp467-Ltmp487
	.byte	0
	.byte	0
	.uleb128 Ltmp467-Lfunc_begin22
	.uleb128 Ltmp472-Ltmp467
	.uleb128 Ltmp473-Lfunc_begin22
	.byte	0
	.uleb128 Ltmp437-Lfunc_begin22
	.uleb128 Ltmp440-Ltmp437
	.uleb128 Ltmp441-Lfunc_begin22
	.byte	1
	.uleb128 Ltmp483-Lfunc_begin22
	.uleb128 Ltmp484-Ltmp483
	.uleb128 Ltmp485-Lfunc_begin22
	.byte	1
	.uleb128 Ltmp489-Lfunc_begin22
	.uleb128 Ltmp490-Ltmp489
	.uleb128 Ltmp491-Lfunc_begin22
	.byte	1
	.uleb128 Ltmp490-Lfunc_begin22
	.uleb128 Lfunc_end22-Ltmp490
	.byte	0
	.byte	0
Lcst_end22:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase14:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN57_$LT$quorum..board..Color$u20$as$u20$core..fmt..Debug$GT$3fmt17h7723673c1d605453E:
	.cfi_startproc
	mov	x8, x1
Lloh186:
	adrp	x9, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.67@PAGE
Lloh187:
	add	x9, x9, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.67@PAGEOFF
Lloh188:
	adrp	x10, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.68@PAGE
Lloh189:
	add	x10, x10, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.68@PAGEOFF
	ldrb	w11, [x0]
	cmp	w11, #0
	csel	x1, x10, x9, ne
	mov	x0, x8
	mov	w2, #5
	b	__ZN4core3fmt9Formatter9write_str17hc8eef6a272ef825dE
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh186, Lloh187
	.cfi_endproc

	.p2align	2
__ZN6quorum4mcts7playout19panic_cold_explicit17he90f15c63cc451bbE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh190:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.65@PAGE
Lloh191:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.65@PAGEOFF
	bl	__ZN4core9panicking14panic_explicit17h5dd09cd81e60d4faE
	.loh AdrpAdd	Lloh190, Lloh191
	.cfi_endproc

	.globl	_main
	.p2align	2
_main:
	.cfi_startproc
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x3, x1
	sxtw	x2, w0
Lloh192:
	adrp	x8, __ZN6quorum4main17h9b8fc0a39626f413E@PAGE
Lloh193:
	add	x8, x8, __ZN6quorum4main17h9b8fc0a39626f413E@PAGEOFF
	str	x8, [sp, #8]
Lloh194:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12@PAGE
Lloh195:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12@PAGEOFF
	add	x0, sp, #8
	mov	w4, #0
	bl	__ZN3std2rt19lang_start_internal17hdff9e551ec0db2eaE
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh192, Lloh193
	.cfi_endproc

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.0:
	.ascii	"/Users/eszter/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sized-chunks-0.6.5/src/sparse_chunk/iter.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.1:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.0
	.asciz	"n\000\000\000\000\000\000\000\020\000\000\000*\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.2:
	.ascii	"/Users/eszter/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sized-chunks-0.6.5/src/sparse_chunk/mod.rs"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3:
	.ascii	"/Users/eszter/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/im-15.1.0/src/nodes/hamt.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.4:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000\245\000\000\000\031\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.5:
	.ascii	"internal error: entered unreachable code"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.6:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000C\001\000\000\025\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.7:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000x\001\000\000.\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.8:
	.ascii	"nodes::hamt::Entry::unwrap_value: unwrapped a non-value"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.9:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000m\000\000\000\022\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000\273\001\000\000\023\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.11:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000\313\001\000\000\034\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbfd7ac674791d732E
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd6412a47944dbbd5E
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd6412a47944dbbd5E

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.13:
	.ascii	"/Users/eszter/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/iter/traits/iterator.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.14:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.13
	.asciz	"z\000\000\000\000\000\000\000\301\007\000\000\t\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.15:
	.ascii	"mid > len"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.16:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.15
	.asciz	"\t\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.17:
	.ascii	"/Users/eszter/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.18:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.17
	.asciz	"\201\000\000\000\000\000\000\000N\000\000\000\037\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.19:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.17
	.asciz	"\201\000\000\000\000\000\000\000H\000\000\000\027\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.20:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h59f49bb9a8b1f1f0E

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.21:
	.ascii	"/Users/eszter/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/sync.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.22:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.21
	.asciz	"k\000\000\000\000\000\000\000\272\017\000\000'\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.23:
	.ascii	"/Users/eszter/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/slice.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.24:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.23
	.asciz	"l\000\000\000\000\000\000\000b\003\000\000\t\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.25:
	.ascii	"/Users/eszter/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.25
	.asciz	"r\000\000\000\000\000\000\000.\002\000\000\021\000\000"

	.section	__TEXT,__literal4,4byte_literals
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.27:
	.ascii	"None"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.28:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE

	.section	__TEXT,__literal4,4byte_literals
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.29:
	.ascii	"Some"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.30:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.21
	.asciz	"k\000\000\000\000\000\000\000\311\017\000\000\037\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.23
	.asciz	"l\000\000\000\000\000\000\000\276\001\000\000\035\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000\013\002\000\000\034\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000\263\002\000\000\034\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.34:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.2
	.asciz	"m\000\000\000\000\000\000\000W\000\000\000#\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.2
	.asciz	"m\000\000\000\000\000\000\000M\000\000\0002\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.36:
	.ascii	"assertion failed: self.active != self.pivot"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37:
	.ascii	"src/board.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.38:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000)\000\000\000\t\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.39:
	.byte	10

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.40:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.39
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.41:
	.ascii	"\302\267"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.42:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.41
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.43:
	.byte	43

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.44:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.43
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.45:
	.ascii	"\342\227\213"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.46:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.45
	.asciz	"\003\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.47:
	.ascii	"\342\227\217"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.48:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.47
	.asciz	"\003\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.49:
	.ascii	"\342\230\257"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.50:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.49
	.asciz	"\003\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.51:
	.byte	32

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.52:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.51
	.asciz	"\001\000\000\000\000\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000\277\000\000\000\033\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.3
	.asciz	"^\000\000\000\000\000\000\000\346\001\000\000\024\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.55:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000\333\000\000\000A\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.56:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000\355\000\000\000\036\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.57:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000\370\000\000\000\035\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000\004\001\000\000\033\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.59:
	.byte	6

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.60:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.37
	.asciz	"\f\000\000\000\000\000\000\000\027\001\000\000\t\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.61:
	.ascii	"Board with no winner and no moves, on "

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.62:
	.ascii	"'s turn with max gap "

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.63:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.61
	.asciz	"&\000\000\000\000\000\000"
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.62
	.asciz	"\025\000\000\000\000\000\000"
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.39
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.64:
	.ascii	"src/mcts.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.65:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.64
	.asciz	"\013\000\000\000\000\000\000\000(\000\000\000\r\000\000"

	.p2align	3, 0x0
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.66:
	.quad	1
	.space	8
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.39
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.67:
	.ascii	"Black"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.68:
	.ascii	"White"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.69:
	.ascii	"ActiveNotOwned"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.70:
	.ascii	"PivotNotOwned"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.71:
	.ascii	"DestNotEmpty"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.72:
	.ascii	"DestNotInBounds"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.73:
	.ascii	"GapTooBig"

l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.74:
	.ascii	"EmptyReserve"

	.p2align	3, 0x0
l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE:
	.quad	14
	.quad	13
	.quad	12
	.quad	15
	.quad	9
	.quad	12

	.section	__DATA,__const
	.p2align	3, 0x0
l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE.169:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.69
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.70
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.71
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.72
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.73
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.74

.subsections_via_symbols
