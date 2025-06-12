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
	adrp	x10, l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE.165@PAGE
Lloh41:
	add	x10, x10, l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE.165@PAGEOFF
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
__ZN4core5slice4sort6shared5pivot11median3_rec17h595e299c82e9069cE:
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
	mov	x21, x4
	mov	x19, x2
	mov	x20, x1
	mov	x22, x0
	cmp	x3, #8
	b.lo	LBB22_2
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
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17h595e299c82e9069cE
	mov	x22, x0
	add	x1, x20, x24
	add	x2, x20, x25
	mov	x0, x20
	mov	x3, x23
	mov	x4, x21
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17h595e299c82e9069cE
	mov	x20, x0
	add	x1, x19, x24
	add	x2, x19, x25
	mov	x0, x19
	mov	x3, x23
	mov	x4, x21
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17h595e299c82e9069cE
	mov	x19, x0
LBB22_2:
	ldr	x24, [x21]
	ldr	x8, [x24]
	ldr	x1, [x24, #16]
	ldr	w23, [x8]
	mov	x0, sp
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w23, w8, w23
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x24]
	ldr	x1, [x24, #16]
	ldr	w24, [x8]
	mov	x0, sp
	mov	x2, x20
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w24, w8, w24
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w23, w24
	cset	w25, lt
	ldr	x26, [x21]
	ldr	x8, [x26]
	ldr	x1, [x26, #16]
	ldr	w27, [x8]
	mov	x0, sp
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w27, w8, w27
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x26]
	ldr	x1, [x26, #16]
	ldr	w26, [x8]
	mov	x0, sp
	mov	x2, x19
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w26, w8, w26
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w27, w26
	cset	w8, lt
	eor	w8, w25, w8
	tbnz	w8, #0, LBB22_4
	cmp	w23, w24
	cset	w22, lt
	ldr	x21, [x21]
	ldr	x8, [x21]
	ldr	x1, [x21, #16]
	ldr	w23, [x8]
	mov	x0, sp
	mov	x2, x20
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w23, w8, w23
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x21]
	ldr	x1, [x21, #16]
	ldr	w21, [x8]
	mov	x0, sp
	mov	x2, x19
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w21, w8, w21
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w23, w21
	cset	w8, lt
	eor	w8, w22, w8
	cmp	w8, #0
	csel	x22, x19, x20, ne
LBB22_4:
	mov	x0, x22
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
	.cfi_endproc

	.p2align	2
__ZN4core5slice4sort6shared9smallsort12sort4_stable17hcb7bbea1116986d8E:
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
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	ldr	x8, [x2]
	ldr	x1, [x2, #16]
	ldr	w22, [x8]
	mov	x0, sp
	add	x2, x21, #20
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w22, w8, w22
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w23, [x8]
	mov	x0, sp
	mov	x2, x21
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w23, w8, w23
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w22, w23
	cset	w23, ge
	cset	w22, lt
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w24, [x8]
	mov	x0, sp
	add	x2, x21, #60
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w24, w8, w24
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w25, [x8]
	mov	x0, sp
	add	x2, x21, #40
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w25, w8, w25
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	mov	w8, #20
	umaddl	x22, w22, w8, x21
	umaddl	x23, w23, w8, x21
	cmp	w24, w25
	mov	w8, #40
	mov	w9, #60
	csel	x10, x9, x8, lt
	add	x24, x21, x10
	csel	x8, x8, x9, lt
	add	x21, x21, x8
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w25, [x8]
	mov	x0, sp
	mov	x2, x24
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w26, w8, w25
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w25, [x8]
	mov	x0, sp
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w27, w8, w25
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w25, [x8]
	mov	x0, sp
	mov	x2, x21
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w28, w8, w25
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w25, [x8]
	mov	x0, sp
	mov	x2, x23
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w8, w8, w25
	cmp	w28, w8
	csel	x25, x23, x21, lt
	csel	x9, x24, x23, lt
	cmp	w26, w27
	csel	x26, x24, x22, lt
	csel	x22, x22, x9, lt
	csel	x9, x23, x24, lt
	cmp	w28, w8
	csel	x21, x21, x9, lt
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w23, [x8]
	mov	x0, sp
	mov	x2, x21
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w23, w8, w23
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x20]
	ldr	x1, [x20, #16]
	ldr	w20, [x8]
	mov	x0, sp
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #40]
	sub	w8, w9, w8
	mul	w20, w8, w20
	mov	x0, sp
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w23, w20
	csel	x8, x21, x22, lt
	csel	x9, x22, x21, lt
	ldr	q0, [x26]
	ldr	w10, [x26, #16]
	str	w10, [x19, #16]
	str	q0, [x19]
	ldr	q0, [x8]
	ldr	w8, [x8, #16]
	str	w8, [x19, #36]
	stur	q0, [x19, #20]
	ldr	q0, [x9]
	ldr	w8, [x9, #16]
	str	w8, [x19, #56]
	stur	q0, [x19, #40]
	ldr	q0, [x25]
	ldr	w8, [x25, #16]
	str	w8, [x19, #76]
	stur	q0, [x19, #60]
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
	.cfi_endproc

	.p2align	2
__ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h74615119cfbc3f74E:
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception6
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x28, x27, [sp, #128]
	stp	x26, x25, [sp, #144]
	stp	x24, x23, [sp, #160]
	stp	x22, x21, [sp, #176]
	stp	x20, x19, [sp, #192]
	stp	x29, x30, [sp, #208]
	add	x29, sp, #208
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
	mov	x21, x0
	mov	w8, #20
	madd	x8, x1, x8, x0
	stp	x8, xzr, [sp, #8]
	add	x23, x0, #20
	ldr	x25, [x2]
	add	x22, sp, #64
	mov	x26, #-1
	str	x0, [sp, #24]
	b	LBB24_4
LBB24_1:
	ldr	x8, [sp, #24]
LBB24_2:
	ldr	q0, [sp, #32]
	str	q0, [x8]
	ldr	w9, [sp, #48]
	str	w9, [x8, #16]
	ldr	x21, [sp]
LBB24_3:
	add	x23, x21, #20
	ldr	x9, [sp, #16]
	add	x9, x9, #20
	str	x9, [sp, #16]
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.eq	LBB24_27
LBB24_4:
	ldr	x8, [x25]
	ldr	x1, [x25, #16]
	ldr	w19, [x8]
	add	x0, sp, #64
	mov	x2, x23
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #80]
	ldr	w9, [sp, #104]
	sub	w8, w9, w8
	mul	w19, w8, w19
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x25]
	ldr	x1, [x25, #16]
	ldr	w20, [x8]
	add	x0, sp, #64
	mov	x2, x21
	mov	x21, x23
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldr	w8, [sp, #80]
	ldr	w9, [sp, #104]
	sub	w8, w9, w8
	mul	w20, w8, w20
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w19, w20
	b.ge	LBB24_3
	ldr	q0, [x21]
	str	q0, [sp, #32]
	str	x21, [sp]
	ldr	w8, [x21, #16]
	str	w8, [sp, #48]
	ldr	x21, [sp, #16]
	b	LBB24_7
LBB24_6:
	sub	w8, w24, w28
	mul	w8, w8, w27
	sub	w9, w23, w19
	mul	w9, w9, w20
	sub	x21, x21, #20
	cmp	w8, w9
	b.ge	LBB24_26
LBB24_7:
	ldr	x8, [sp, #24]
	add	x20, x8, x21
	ldr	q0, [x20]
	stur	q0, [x20, #20]
	ldr	w8, [x20, #16]
	str	w8, [x20, #36]
	cbz	x21, LBB24_1
	ldr	x8, [x25]
	ldr	x1, [x25, #16]
	ldr	w27, [x8]
Ltmp97:
	add	x0, sp, #64
	add	x2, sp, #32
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp98:
	ldr	w28, [sp, #80]
	ldr	w24, [sp, #104]
	ldr	x8, [sp, #64]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_11
	dmb	ishld
	add	x0, sp, #64
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB24_11:
	ldr	x8, [sp, #72]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_13
	dmb	ishld
Ltmp99:
	add	x0, x22, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp100:
LBB24_13:
	ldr	x8, [sp, #88]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_15
	dmb	ishld
	add	x0, x22, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB24_15:
	ldr	x8, [sp, #96]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_17
	dmb	ishld
Ltmp105:
	add	x0, x22, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp106:
LBB24_17:
	sub	x2, x20, #20
	ldr	x8, [x25]
	ldr	x1, [x25, #16]
	ldr	w20, [x8]
Ltmp107:
	add	x0, sp, #64
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp108:
	ldr	x23, [sp, #104]
	ldr	x19, [sp, #80]
	ldr	x8, [sp, #64]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_20
	dmb	ishld
	add	x0, sp, #64
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB24_20:
	ldr	x8, [sp, #72]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_22
	dmb	ishld
Ltmp109:
	add	x0, x22, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp110:
LBB24_22:
	ldr	x8, [sp, #88]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_24
	dmb	ishld
	add	x0, x22, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB24_24:
	ldr	x8, [sp, #96]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB24_6
	dmb	ishld
Ltmp115:
	add	x0, x22, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp116:
	b	LBB24_6
LBB24_26:
	ldr	x8, [sp, #24]
	add	x8, x8, x21
	add	x8, x8, #20
	b	LBB24_2
LBB24_27:
	.cfi_def_cfa wsp, 224
	ldp	x29, x30, [sp, #208]
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldp	x24, x23, [sp, #160]
	ldp	x26, x25, [sp, #144]
	ldp	x28, x27, [sp, #128]
	add	sp, sp, #224
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
LBB24_28:
	.cfi_restore_state
Ltmp111:
	mov	x20, x0
Ltmp112:
	add	x0, x22, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp113:
	b	LBB24_31
LBB24_29:
Ltmp114:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB24_30:
Ltmp101:
	mov	x20, x0
Ltmp102:
	add	x0, x22, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp103:
LBB24_31:
	mov	x0, x20
	b	LBB24_34
LBB24_32:
Ltmp104:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB24_33:
Ltmp117:
LBB24_34:
	ldr	x8, [sp, #24]
	add	x8, x8, x21
	ldr	q0, [sp, #32]
	str	q0, [x8]
	ldr	w9, [sp, #48]
	str	w9, [x8, #16]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table24:
Lexception6:
	.byte	255
	.byte	155
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6
	.uleb128 Ltmp97-Lfunc_begin6
	.byte	0
	.byte	0
	.uleb128 Ltmp97-Lfunc_begin6
	.uleb128 Ltmp98-Ltmp97
	.uleb128 Ltmp117-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp99-Lfunc_begin6
	.uleb128 Ltmp100-Ltmp99
	.uleb128 Ltmp101-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp105-Lfunc_begin6
	.uleb128 Ltmp108-Ltmp105
	.uleb128 Ltmp117-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp109-Lfunc_begin6
	.uleb128 Ltmp110-Ltmp109
	.uleb128 Ltmp111-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp115-Lfunc_begin6
	.uleb128 Ltmp116-Ltmp115
	.uleb128 Ltmp117-Lfunc_begin6
	.byte	0
	.uleb128 Ltmp112-Lfunc_begin6
	.uleb128 Ltmp113-Ltmp112
	.uleb128 Ltmp114-Lfunc_begin6
	.byte	1
	.uleb128 Ltmp102-Lfunc_begin6
	.uleb128 Ltmp103-Ltmp102
	.uleb128 Ltmp104-Lfunc_begin6
	.byte	1
	.uleb128 Ltmp103-Lfunc_begin6
	.uleb128 Lfunc_end6-Ltmp103
	.byte	0
	.byte	0
Lcst_end6:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase6:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6stable14driftsort_main17hcbbc127520cdfb5bE:
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception7
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
	b.hs	LBB25_2
	cmp	x1, #65
	cset	w4, lo
	mov	x2, sp
	mov	w3, #204
	mov	x5, x19
	bl	__ZN4core5slice4sort6stable5drift4sort17he115a2955ba92c5bE
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
LBB25_2:
	.cfi_restore_state
	.cfi_remember_state
	mov	x23, #0
	mov	w8, #20
	umulh	x8, x20, x8
	add	x9, x20, x20, lsl #2
	lsl	x22, x9, #2
	cmp	xzr, x8
	b.ne	LBB25_10
	mov	x8, #9223372036854775804
	cmp	x22, x8
	b.hi	LBB25_10
	cbz	x22, LBB25_7
Lloh46:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh47:
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
	cbz	x0, LBB25_10
	mov	x0, x24
	b	LBB25_8
LBB25_7:
	mov	x20, #0
	mov	w21, #4
LBB25_8:
	cmp	x1, #65
	cset	w4, lo
Ltmp118:
	mov	x2, x21
	mov	x3, x20
	mov	x5, x19
	bl	__ZN4core5slice4sort6stable5drift4sort17he115a2955ba92c5bE
Ltmp119:
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
LBB25_10:
	.cfi_restore_state
Lloh48:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.24@PAGE
Lloh49:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.24@PAGEOFF
	mov	x0, x23
	mov	x1, x22
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB25_11:
Ltmp120:
	mov	x19, x0
	add	x8, x20, x20, lsl #2
	lsl	x1, x8, #2
	mov	x0, x21
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
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
	.uleb128 Ltmp118-Lfunc_begin7
	.byte	0
	.byte	0
	.uleb128 Ltmp118-Lfunc_begin7
	.uleb128 Ltmp119-Ltmp118
	.uleb128 Ltmp120-Lfunc_begin7
	.byte	0
	.uleb128 Ltmp119-Lfunc_begin7
	.uleb128 Lfunc_end7-Ltmp119
	.byte	0
	.byte	0
Lcst_end7:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6stable5drift4sort17he115a2955ba92c5bE:
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception8
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
	sub	sp, sp, #848
	str	x5, [sp, #104]
	str	w4, [sp, #28]
	mov	x27, x3
	mov	x21, x2
	mov	x23, x1
	mov	x22, x0
	mov	x8, #4611686018427387903
	add	x19, x1, x8
	cmp	x1, #1, lsl #12
	b.hi	LBB26_2
	sub	x8, x23, x23, lsr #1
	mov	w9, #64
	cmp	x8, #64
	csel	x8, x8, x9, lo
	str	x8, [sp, #48]
	b	LBB26_3
LBB26_2:
	mov	x0, x23
	bl	__ZN4core5slice4sort6stable5drift11sqrt_approx17h433299a3f8487975E
	str	x0, [sp, #48]
LBB26_3:
	mov	x13, #0
	mov	x14, #0
	add	x9, x22, #20
	add	x8, x22, #16
	stp	x8, x9, [sp, #8]
	sub	x8, x22, #4
	str	x8, [sp]
	sub	x9, x22, #20
	mov	w20, #20
	sub	x15, x29, #218
	add	x16, sp, #176
	mov	w25, #1
	udiv	x8, x19, x23
	stp	x8, x9, [sp, #32]
	str	x21, [sp, #160]
	stp	x27, x23, [sp, #64]
	str	x22, [sp, #80]
	subs	x28, x23, x13
	str	x13, [sp, #112]
	b.hi	LBB26_5
LBB26_4:
	mov	w10, #0
	mov	w8, #1
	str	x8, [sp, #88]
	cmp	x14, #2
	b.hs	LBB26_14
	b	LBB26_74
LBB26_5:
	str	x14, [sp, #136]
	madd	x26, x13, x20, x22
	ldr	x8, [sp, #48]
	cmp	x28, x8
	b.hs	LBB26_8
LBB26_6:
	ldr	w8, [sp, #28]
	tbz	w8, #0, LBB26_11
	cmp	x28, #32
	mov	w8, #32
	csel	x24, x28, x8, lo
	mov	x0, x26
	mov	x1, x24
	mov	x2, x21
	mov	x3, x27
	mov	w4, #0
	mov	x5, #0
	ldr	x6, [sp, #104]
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h2aa3b2bff59cd193E
	mov	w8, #1
	orr	x10, x8, x24, lsl #1
	b	LBB26_12
LBB26_8:
	cmp	x28, #2
	b.hs	LBB26_76
LBB26_9:
	ldr	x13, [sp, #112]
	ldr	x14, [sp, #136]
	sub	x15, x29, #218
	add	x16, sp, #176
LBB26_10:
	mov	w8, #1
	orr	x10, x8, x28, lsl #1
	b	LBB26_13
LBB26_11:
	ldr	x8, [sp, #48]
	cmp	x28, x8
	csel	x8, x28, x8, lo
	lsl	x10, x8, #1
LBB26_12:
	ldr	x13, [sp, #112]
	ldr	x14, [sp, #136]
	sub	x15, x29, #218
	add	x16, sp, #176
LBB26_13:
	lsl	x8, x13, #1
	sub	x9, x8, x25, lsr #1
	str	x10, [sp, #88]
	add	x8, x8, x10, lsr #1
	ldr	x10, [sp, #32]
	mul	x9, x9, x10
	mul	x8, x8, x10
	eor	x8, x8, x9
	clz	x10, x8
	ldr	x22, [sp, #80]
	cmp	x14, #2
	b.lo	LBB26_74
LBB26_14:
	add	x8, x13, x13, lsl #2
	lsl	x8, x8, #2
	add	x9, x22, x8
	str	x9, [sp, #144]
	ldr	x9, [sp, #40]
	add	x8, x9, x8
	str	x8, [sp, #56]
	str	x10, [sp, #96]
	b	LBB26_16
LBB26_15:
	lsl	x25, x11, #1
	cmp	x9, #1
	b.ls	LBB26_73
LBB26_16:
	sub	x9, x14, #1
	ldrb	w8, [x15, x9]
	cmp	w8, w10
	b.lo	LBB26_74
	mov	x14, x9
	ldr	x19, [x16, x9, lsl #3]
	lsr	x28, x19, #1
	lsr	x24, x25, #1
	orr	w8, w19, w25
	and	x8, x8, #0x1
	add	x11, x28, x24
	cmp	x11, x27
	ccmp	x8, #0, #0, ls
	b.eq	LBB26_15
	stp	x9, x14, [sp, #128]
	str	x11, [sp, #120]
	sub	x8, x13, x11
	madd	x26, x8, x20, x22
	tbnz	w19, #0, LBB26_21
	orr	x8, x28, #0x1
	clz	x8, x8
	lsl	w8, w8, #1
	eor	w4, w8, #0x7e
	mov	x0, x26
	mov	x1, x28
	mov	x2, x21
	mov	x3, x27
	mov	x5, #0
	ldr	x6, [sp, #104]
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h2aa3b2bff59cd193E
	tbz	w25, #0, LBB26_22
LBB26_20:
	cmp	x25, #2
	b.hs	LBB26_23
	b	LBB26_71
LBB26_21:
	tbnz	w25, #0, LBB26_20
LBB26_22:
	madd	x0, x28, x20, x26
	orr	x8, x24, #0x1
	clz	x8, x8
	lsl	w8, w8, #1
	eor	w4, w8, #0x7e
	mov	x1, x24
	mov	x2, x21
	mov	x3, x27
	mov	x5, #0
	ldr	x6, [sp, #104]
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h2aa3b2bff59cd193E
	cmp	x25, #2
	b.lo	LBB26_71
LBB26_23:
	cmp	x19, #2
	b.lo	LBB26_71
	cmp	x24, x28
	csel	x19, x24, x28, lo
	cmp	x27, x19
	b.lo	LBB26_71
	ldr	x8, [sp, #104]
	ldr	x23, [x8]
	madd	x27, x28, x20, x26
	cmp	x28, x24
	csel	x1, x27, x26, hi
	add	x8, x19, x19, lsl #2
	lsl	x25, x8, #2
	mov	x0, x21
	mov	x2, x25
	bl	_memcpy
	add	x9, x21, x25
	cmp	x28, x24
	b.ls	LBB26_46
	ldr	x22, [sp, #56]
	b	LBB26_28
LBB26_27:
	ldp	w9, w8, [sp, #168]
	sub	w8, w9, w8
	mul	w8, w8, w19
	sub	w9, w20, w21
	mul	w9, w9, w25
	cmp	w8, w9
	cset	w8, lt
	cset	w9, ge
	csel	x10, x24, x28, lt
	ldr	q0, [x10]
	ldr	w10, [x10, #16]
	str	w10, [x22, #16]
	str	q0, [x22], #-20
	mov	w10, #20
	umaddl	x27, w9, w10, x24
	mov	w20, #20
	umaddl	x9, w8, w10, x28
	cmp	x27, x26
	ldr	x21, [sp, #160]
	ccmp	x9, x21, #4, ne
	b.eq	LBB26_67
LBB26_28:
	str	x9, [sp, #152]
	sub	x28, x9, #20
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w19, [x8]
Ltmp142:
	sub	x0, x29, #152
	mov	x2, x28
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp143:
	ldur	w20, [x29, #-136]
	ldur	w21, [x29, #-112]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_31
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_31:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_33
	dmb	ishld
Ltmp144:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp145:
LBB26_33:
	stp	w21, w20, [sp, #168]
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_35
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_35:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_37
	dmb	ishld
Ltmp150:
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp151:
LBB26_37:
	sub	x24, x27, #20
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w25, [x8]
Ltmp152:
	sub	x0, x29, #152
	mov	x2, x24
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp153:
	ldur	x20, [x29, #-112]
	ldur	x21, [x29, #-136]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_40
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_40:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_42
	dmb	ishld
Ltmp154:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp155:
LBB26_42:
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_44
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_44:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_27
	dmb	ishld
Ltmp160:
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp161:
	b	LBB26_27
LBB26_46:
	cbz	x19, LBB26_72
	mov	x28, x21
	b	LBB26_49
LBB26_48:
	ldr	w8, [sp, #172]
	sub	w8, w8, w20
	mul	w8, w8, w19
	sub	w9, w24, w25
	mul	w9, w9, w22
	cmp	w8, w9
	cset	w8, lt
	cset	w9, ge
	csel	x10, x27, x28, lt
	ldr	q0, [x10]
	ldr	w10, [x10, #16]
	str	w10, [x26, #16]
	str	q0, [x26], #20
	mov	w10, #20
	umaddl	x28, w9, w10, x28
	mov	w20, #20
	umaddl	x27, w8, w10, x27
	mov	x9, x21
	cmp	x28, x21
	ldr	x8, [sp, #144]
	ccmp	x27, x8, #4, ne
	b.eq	LBB26_68
LBB26_49:
	mov	x21, x9
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w19, [x8]
Ltmp121:
	sub	x0, x29, #152
	mov	x2, x27
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp122:
	ldur	w20, [x29, #-136]
	ldur	w22, [x29, #-112]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_52
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_52:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_54
	dmb	ishld
Ltmp123:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp124:
LBB26_54:
	str	w22, [sp, #172]
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_56
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_56:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_58
	dmb	ishld
Ltmp129:
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp130:
LBB26_58:
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w22, [x8]
Ltmp131:
	sub	x0, x29, #152
	mov	x2, x28
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp132:
	ldur	x24, [x29, #-112]
	ldur	x25, [x29, #-136]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_61
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_61:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_63
	dmb	ishld
Ltmp133:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp134:
LBB26_63:
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_65
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB26_65:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB26_48
	dmb	ishld
Ltmp139:
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp140:
	b	LBB26_48
LBB26_67:
	mov	x26, x27
	mov	x28, x21
	b	LBB26_69
LBB26_68:
	ldr	x21, [sp, #160]
LBB26_69:
	ldr	x22, [sp, #80]
LBB26_70:
	sub	x2, x9, x28
	mov	x0, x26
	mov	x1, x28
	bl	_memcpy
	ldp	x27, x23, [sp, #64]
LBB26_71:
	mov	w8, #1
	ldp	x13, x9, [sp, #112]
	orr	x25, x8, x9, lsl #1
	ldp	x9, x14, [sp, #128]
	sub	x15, x29, #218
	add	x16, sp, #176
	ldr	x10, [sp, #96]
	cmp	x9, #1
	b.hi	LBB26_16
	b	LBB26_73
LBB26_72:
	mov	x28, x21
	b	LBB26_70
LBB26_73:
	mov	w14, #1
LBB26_74:
	str	x25, [x16, x14, lsl #3]
	strb	w10, [x15, x14]
	cmp	x23, x13
	b.ls	LBB26_99
	add	x14, x14, #1
	ldr	x25, [sp, #88]
	add	x13, x13, x25, lsr #1
	subs	x28, x23, x13
	str	x13, [sp, #112]
	b.hi	LBB26_5
	b	LBB26_4
LBB26_76:
	ldr	x8, [sp, #104]
	ldr	x23, [x8]
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w19, [x8]
	sub	x0, x29, #152
	add	x2, x26, #20
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w22, w8, w19
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w19, [x8]
	sub	x0, x29, #152
	mov	x2, x26
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w19, w8, w19
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w22, w19
	b.ge	LBB26_80
	cmp	x28, #2
	b.ne	LBB26_83
	ldr	x8, [sp, #48]
	cmp	x8, #2
	ldr	x23, [sp, #72]
	b.hi	LBB26_6
	mov	w8, #1
	mov	w19, #2
	ldr	x13, [sp, #112]
	ldr	x14, [sp, #136]
	sub	x15, x29, #218
	add	x16, sp, #176
	b	LBB26_96
LBB26_80:
	cmp	x28, #2
	b.ne	LBB26_86
	ldr	x8, [sp, #48]
	cmp	x8, #2
	ldr	x23, [sp, #72]
	b.hi	LBB26_6
	mov	w28, #2
	b	LBB26_9
LBB26_83:
	stp	w19, w22, [sp, #168]
	ldr	x8, [sp, #112]
	ldr	x9, [sp, #16]
	madd	x27, x8, x20, x9
	mov	w19, #2
LBB26_84:
	add	x24, x27, #20
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w21, [x8]
	sub	x0, x29, #152
	mov	x2, x24
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w21, w8, w21
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w22, [x8]
	sub	x0, x29, #152
	mov	x2, x27
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w22, w8, w22
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w21, w22
	b.ge	LBB26_90
	add	x19, x19, #1
	mov	x27, x24
	cmp	x28, x19
	b.ne	LBB26_84
	b	LBB26_89
LBB26_86:
	stp	w19, w22, [sp, #168]
	ldr	x8, [sp, #112]
	ldr	x9, [sp, #16]
	madd	x27, x8, x20, x9
	mov	w19, #2
LBB26_87:
	add	x24, x27, #20
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w21, [x8]
	sub	x0, x29, #152
	mov	x2, x24
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w21, w8, w21
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w22, [x8]
	sub	x0, x29, #152
	mov	x2, x27
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w22, w8, w22
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w21, w22
	b.lt	LBB26_90
	add	x19, x19, #1
	mov	x27, x24
	cmp	x28, x19
	b.ne	LBB26_87
LBB26_89:
	mov	x19, x28
LBB26_90:
	ldr	x8, [sp, #48]
	cmp	x19, x8
	ldr	x21, [sp, #160]
	ldp	x27, x23, [sp, #64]
	ldr	w8, [sp, #172]
	b.lo	LBB26_6
	ldr	w9, [sp, #168]
	cmp	w8, w9
	b.ge	LBB26_94
	cmp	x19, #2
	ldr	x13, [sp, #112]
	ldr	x14, [sp, #136]
	sub	x15, x29, #218
	add	x16, sp, #176
	b.hs	LBB26_95
	mov	w28, #1
	b	LBB26_10
LBB26_94:
	mov	x28, x19
	b	LBB26_9
LBB26_95:
	lsr	x8, x19, #1
LBB26_96:
	add	x9, x13, x13, lsl #2
	lsl	x10, x9, #2
	ldp	x11, x9, [sp]
	add	x9, x9, x10
	madd	x10, x19, x20, x10
	add	x10, x11, x10
LBB26_97:
	ldur	q0, [x9, #-16]
	ldur	q1, [x10, #-16]
	stur	q1, [x9, #-16]
	stur	q0, [x10, #-16]
	ldr	w11, [x10]
	ldr	w12, [x9]
	str	w11, [x9], #20
	str	w12, [x10], #-20
	sub	x8, x8, #1
	cbnz	x8, LBB26_97
	mov	x28, x19
	b	LBB26_10
LBB26_99:
	tbnz	w25, #0, LBB26_101
	orr	x8, x23, #0x1
	clz	x8, x8
	lsl	w8, w8, #1
	eor	w4, w8, #0x7e
	mov	x0, x22
	mov	x1, x23
	mov	x2, x21
	mov	x3, x27
	mov	x5, #0
	ldr	x6, [sp, #104]
	add	sp, sp, #848
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
	b	__ZN4core5slice4sort6stable9quicksort9quicksort17h2aa3b2bff59cd193E
LBB26_101:
	.cfi_restore_state
	.cfi_remember_state
	add	sp, sp, #848
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
LBB26_102:
	.cfi_restore_state
Ltmp135:
	mov	x20, x0
Ltmp136:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp137:
	b	LBB26_111
LBB26_103:
Ltmp138:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB26_104:
Ltmp125:
	mov	x20, x0
Ltmp126:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp127:
	b	LBB26_111
LBB26_105:
Ltmp128:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB26_106:
Ltmp146:
	mov	x20, x0
Ltmp147:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp148:
	b	LBB26_113
LBB26_107:
Ltmp149:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB26_108:
Ltmp156:
	mov	x20, x0
Ltmp157:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp158:
	b	LBB26_113
LBB26_109:
Ltmp159:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB26_110:
Ltmp141:
	mov	x20, x0
LBB26_111:
	mov	x27, x26
	mov	x1, x28
	sub	x2, x21, x28
	mov	x0, x27
	bl	_memcpy
	mov	x0, x20
	bl	__Unwind_Resume
LBB26_112:
Ltmp162:
	mov	x20, x0
LBB26_113:
	ldp	x21, x1, [sp, #152]
	sub	x2, x21, x1
	mov	x0, x27
	bl	_memcpy
	mov	x0, x20
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table26:
Lexception8:
	.byte	255
	.byte	155
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8
	.uleb128 Ltmp142-Lfunc_begin8
	.byte	0
	.byte	0
	.uleb128 Ltmp142-Lfunc_begin8
	.uleb128 Ltmp143-Ltmp142
	.uleb128 Ltmp162-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp144-Lfunc_begin8
	.uleb128 Ltmp145-Ltmp144
	.uleb128 Ltmp146-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp150-Lfunc_begin8
	.uleb128 Ltmp153-Ltmp150
	.uleb128 Ltmp162-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp154-Lfunc_begin8
	.uleb128 Ltmp155-Ltmp154
	.uleb128 Ltmp156-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp160-Lfunc_begin8
	.uleb128 Ltmp161-Ltmp160
	.uleb128 Ltmp162-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp121-Lfunc_begin8
	.uleb128 Ltmp122-Ltmp121
	.uleb128 Ltmp141-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp123-Lfunc_begin8
	.uleb128 Ltmp124-Ltmp123
	.uleb128 Ltmp125-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp129-Lfunc_begin8
	.uleb128 Ltmp132-Ltmp129
	.uleb128 Ltmp141-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp133-Lfunc_begin8
	.uleb128 Ltmp134-Ltmp133
	.uleb128 Ltmp135-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp139-Lfunc_begin8
	.uleb128 Ltmp140-Ltmp139
	.uleb128 Ltmp141-Lfunc_begin8
	.byte	0
	.uleb128 Ltmp140-Lfunc_begin8
	.uleb128 Ltmp136-Ltmp140
	.byte	0
	.byte	0
	.uleb128 Ltmp136-Lfunc_begin8
	.uleb128 Ltmp137-Ltmp136
	.uleb128 Ltmp138-Lfunc_begin8
	.byte	1
	.uleb128 Ltmp126-Lfunc_begin8
	.uleb128 Ltmp127-Ltmp126
	.uleb128 Ltmp128-Lfunc_begin8
	.byte	1
	.uleb128 Ltmp147-Lfunc_begin8
	.uleb128 Ltmp148-Ltmp147
	.uleb128 Ltmp149-Lfunc_begin8
	.byte	1
	.uleb128 Ltmp157-Lfunc_begin8
	.uleb128 Ltmp158-Ltmp157
	.uleb128 Ltmp159-Lfunc_begin8
	.byte	1
	.uleb128 Ltmp158-Lfunc_begin8
	.uleb128 Lfunc_end8-Ltmp158
	.byte	0
	.byte	0
Lcst_end8:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase7:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core5slice4sort6stable9quicksort9quicksort17h2aa3b2bff59cd193E:
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception9
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	stp	x28, x27, [sp, #256]
	stp	x26, x25, [sp, #272]
	stp	x24, x23, [sp, #288]
	stp	x22, x21, [sp, #304]
	stp	x20, x19, [sp, #320]
	stp	x29, x30, [sp, #336]
	add	x29, sp, #336
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
	stp	x5, x6, [sp, #48]
	mov	x26, x3
	mov	x24, x2
	mov	x22, x1
	mov	x23, x0
	cmp	x1, #33
	str	x2, [sp, #104]
	b.hs	LBB27_5
LBB27_1:
	cmp	x22, #2
	b.lo	LBB27_131
	add	x8, x22, #16
	cmp	x26, x8
	b.lo	LBB27_134
	lsr	x10, x22, #1
	cmp	x22, #7
	str	x23, [sp, #72]
	str	x10, [sp, #32]
	b.ls	LBB27_70
	ldr	x23, [x6]
	ldr	x0, [sp, #72]
	mov	x1, x24
	mov	x2, x23
	bl	__ZN4core5slice4sort6shared9smallsort12sort4_stable17hcb7bbea1116986d8E
	ldr	x8, [sp, #32]
	add	x8, x8, x8, lsl #2
	lsl	x8, x8, #2
	ldr	x9, [sp, #72]
	add	x0, x9, x8
	add	x1, x24, x8
	mov	x2, x23
	ldr	x23, [sp, #72]
	bl	__ZN4core5slice4sort6shared9smallsort12sort4_stable17hcb7bbea1116986d8E
	ldr	x10, [sp, #32]
	ldr	x6, [sp, #56]
	mov	w12, #4
	b	LBB27_71
LBB27_5:
	mov	x25, x4
	sub	x8, x24, #20
	stp	x8, x26, [sp, #32]
	mov	w27, #20
LBB27_6:
	mov	x1, x22
	str	x23, [sp, #72]
LBB27_7:
	cbz	w25, LBB27_69
	lsr	x3, x1, #3
	mov	w8, #80
	madd	x22, x3, x8, x23
	mov	w8, #140
	madd	x28, x3, x8, x23
	str	x1, [sp, #88]
	cmp	x1, #64
	b.hs	LBB27_11
	ldr	x19, [x6]
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w20, [x8]
	sub	x0, x29, #152
	mov	x2, x23
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w20, w8, w20
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w21, [x8]
	sub	x0, x29, #152
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w21, w8, w21
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w20, w21
	cset	w23, lt
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w24, [x8]
	sub	x0, x29, #152
	ldr	x2, [sp, #72]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w24, w8, w24
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	mov	x27, x25
	ldr	w25, [x8]
	sub	x0, x29, #152
	mov	x2, x28
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w25, w8, w25
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w24, w25
	mov	x25, x27
	mov	w27, #20
	ldr	x24, [sp, #104]
	cset	w8, lt
	eor	w8, w23, w8
	ldr	x23, [sp, #72]
	mov	x0, x23
	tbnz	w8, #0, LBB27_12
	cmp	w20, w21
	cset	w20, lt
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w21, [x8]
	sub	x0, x29, #152
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w21, w8, w21
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w19, [x8]
	sub	x0, x29, #152
	mov	x2, x28
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w19, w8, w19
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	cmp	w21, w19
	cset	w8, lt
	eor	w8, w20, w8
	cmp	w8, #0
	csel	x0, x28, x22, ne
	b	LBB27_12
LBB27_11:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x28
	mov	x4, x6
	bl	__ZN4core5slice4sort6shared5pivot11median3_rec17h595e299c82e9069cE
LBB27_12:
	sub	w25, w25, #1
	sub	x8, x0, x23
	lsr	x8, x8, #2
	mov	x9, #-3689348814741910324
	movk	x9, #52429
	mul	x8, x8, x9
	str	x8, [sp, #80]
	ldr	q0, [x0]
	str	q0, [sp, #128]
	str	x0, [sp, #112]
	ldr	w8, [x0, #16]
	str	w8, [sp, #144]
	ldp	x8, x6, [sp, #48]
	ldr	x12, [sp, #88]
	str	w25, [sp, #64]
	cbz	x8, LBB27_14
	ldr	x19, [x6]
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w20, [x8]
	sub	x0, x29, #152
	ldr	x2, [sp, #48]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w20, w8, w20
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x8, [x19]
	ldr	x1, [x19, #16]
	ldr	w19, [x8]
	sub	x0, x29, #152
	ldr	x2, [sp, #112]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w8, [x29, #-136]
	ldur	w9, [x29, #-112]
	sub	w8, w9, w8
	mul	w19, w8, w19
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	ldr	x12, [sp, #88]
	ldr	x6, [sp, #56]
	cmp	w20, w19
	b.ge	LBB27_43
LBB27_14:
	cmp	x26, x12
	b.lo	LBB27_134
	mov	x22, #0
	madd	x20, x12, x27, x24
	ldr	x21, [x6]
	mov	x28, x23
	ldr	x10, [sp, #80]
LBB27_16:
	str	x10, [sp, #96]
	madd	x8, x10, x27, x23
	str	x8, [sp, #120]
	b	LBB27_18
LBB27_17:
	sub	w8, w23, w25
	mul	w8, w8, w26
	sub	w9, w19, w24
	mul	w9, w9, w27
	sub	x20, x20, #20
	cmp	w8, w9
	ldr	x24, [sp, #104]
	csel	x8, x24, x20, lt
	mov	w27, #20
	madd	x8, x22, x27, x8
	ldr	q0, [x28]
	ldr	w9, [x28, #16]
	str	w9, [x8, #16]
	str	q0, [x8]
	cinc	x22, x22, lt
	add	x28, x28, #20
	ldr	x8, [sp, #120]
LBB27_18:
	cmp	x28, x8
	b.hs	LBB27_35
	ldr	x8, [x21]
	ldr	x1, [x21, #16]
	ldr	w26, [x8]
	sub	x0, x29, #152
	mov	x2, x28
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w25, [x29, #-136]
	ldur	w23, [x29, #-112]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_21
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_21:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_23
	dmb	ishld
Ltmp163:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp164:
LBB27_23:
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_25
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_25:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_27
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB27_27:
	ldr	x8, [x21]
	ldr	x1, [x21, #16]
	ldr	w27, [x8]
	sub	x0, x29, #152
	ldr	x2, [sp, #112]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w24, [x29, #-136]
	ldur	w19, [x29, #-112]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_29
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_29:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_31
	dmb	ishld
Ltmp169:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp170:
LBB27_31:
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_33
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_33:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_17
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	b	LBB27_17
LBB27_35:
	ldp	x10, x8, [sp, #88]
	cmp	x8, x10
	b.eq	LBB27_37
	sub	x20, x20, #20
	madd	x8, x22, x27, x20
	ldr	q0, [x28]
	str	q0, [x8]
	ldr	w9, [x28, #16]
	str	w9, [x8, #16]
	add	x28, x28, #20
	ldr	x23, [sp, #72]
	b	LBB27_16
LBB27_37:
	add	x8, x22, x22, lsl #2
	lsl	x2, x8, #2
	ldr	x23, [sp, #72]
	mov	x0, x23
	mov	x1, x24
	bl	_memcpy
	ldr	x12, [sp, #88]
	subs	x1, x12, x22
	ldr	x26, [sp, #40]
	ldr	w25, [sp, #64]
	b.eq	LBB27_40
	madd	x8, x22, x27, x23
	mov	x9, x1
	ldr	x10, [sp, #32]
	madd	x10, x12, x27, x10
LBB27_39:
	ldr	q0, [x10]
	str	q0, [x8]
	ldr	w11, [x10, #16]
	str	w11, [x8, #16]
	add	x8, x8, #20
	sub	x10, x10, #20
	subs	x9, x9, #1
	b.ne	LBB27_39
LBB27_40:
	ldr	x6, [sp, #56]
	cbz	x22, LBB27_43
	cmp	x12, x22
	b.lo	LBB27_132
	madd	x0, x22, x27, x23
	add	x5, sp, #128
	mov	x2, x24
	mov	x3, x26
	mov	x4, x25
	bl	__ZN4core5slice4sort6stable9quicksort9quicksort17h2aa3b2bff59cd193E
	ldr	x6, [sp, #56]
	mov	x1, x22
	cmp	x22, #33
	b.hs	LBB27_7
	b	LBB27_1
LBB27_43:
	cmp	x26, x12
	b.lo	LBB27_134
	mov	x28, #0
	madd	x20, x12, x27, x24
	mov	x22, x23
	ldr	x10, [sp, #80]
	str	x10, [sp, #80]
	madd	x21, x10, x27, x23
	cmp	x23, x21
	b.lo	LBB27_47
	b	LBB27_63
LBB27_45:
	sub	x20, x20, #20
	ldr	q0, [x22]
	ldr	w8, [x22, #16]
	madd	x9, x28, x27, x24
	str	w8, [x9, #16]
	str	q0, [x9]
	add	x28, x28, #1
	add	x22, x22, #20
	ldr	x23, [sp, #72]
	str	x10, [sp, #80]
	madd	x21, x10, x27, x23
	cmp	x22, x21
	b.lo	LBB27_47
	b	LBB27_63
LBB27_46:
	sub	w8, w26, w25
	mul	w8, w8, w19
	sub	w9, w27, w24
	mul	w9, w9, w23
	sub	x20, x20, #20
	cmp	w8, w9
	ldr	x24, [sp, #104]
	csel	x8, x24, x20, ge
	mov	w27, #20
	madd	x8, x28, x27, x8
	ldr	q0, [x22]
	ldr	w9, [x22, #16]
	str	w9, [x8, #16]
	str	q0, [x8]
	cinc	x28, x28, ge
	add	x22, x22, #20
	cmp	x22, x21
	ldr	x6, [sp, #56]
	b.hs	LBB27_63
LBB27_47:
	ldr	x23, [x6]
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w19, [x8]
	sub	x0, x29, #152
	ldr	x2, [sp, #112]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w25, [x29, #-136]
	ldur	w26, [x29, #-112]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_49
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_49:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_51
	dmb	ishld
Ltmp175:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp176:
LBB27_51:
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_53
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_53:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_55
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB27_55:
	ldr	x8, [x23]
	ldr	x1, [x23, #16]
	ldr	w23, [x8]
	sub	x0, x29, #152
	mov	x2, x22
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w24, [x29, #-136]
	ldur	w27, [x29, #-112]
	ldur	x8, [x29, #-152]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_57
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_57:
	ldur	x8, [x29, #-144]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_59
	dmb	ishld
Ltmp181:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp182:
LBB27_59:
	ldur	x8, [x29, #-128]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_61
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_61:
	ldur	x8, [x29, #-120]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_46
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	b	LBB27_46
LBB27_63:
	ldp	x8, x10, [sp, #80]
	cmp	x8, x10
	b.ne	LBB27_45
	add	x8, x28, x28, lsl #2
	lsl	x2, x8, #2
	ldr	x23, [sp, #72]
	mov	x0, x23
	mov	x1, x24
	bl	_memcpy
	ldr	x1, [sp, #88]
	subs	x22, x1, x28
	ldr	w25, [sp, #64]
	b.eq	LBB27_131
	madd	x8, x28, x27, x23
	mov	x9, x22
	ldp	x10, x26, [sp, #32]
	madd	x10, x1, x27, x10
LBB27_66:
	ldr	q0, [x10]
	str	q0, [x8]
	ldr	w11, [x10, #16]
	str	w11, [x8, #16]
	add	x8, x8, #20
	sub	x10, x10, #20
	subs	x9, x9, #1
	b.ne	LBB27_66
	cmp	x1, x28
	b.lo	LBB27_135
	str	xzr, [sp, #48]
	madd	x23, x28, x27, x23
	cmp	x22, #33
	ldr	x6, [sp, #56]
	b.hs	LBB27_6
	b	LBB27_1
LBB27_69:
	mov	x0, x23
	mov	x2, x24
	mov	x3, x26
	mov	w4, #1
	mov	x5, x6
	bl	__ZN4core5slice4sort6stable5drift4sort17he115a2955ba92c5bE
	b	LBB27_131
LBB27_70:
	ldr	q0, [x23]
	ldr	w8, [x23, #16]
	str	w8, [x24, #16]
	str	q0, [x24]
	add	x8, x10, x10, lsl #2
	lsl	x8, x8, #2
	add	x9, x23, x8
	add	x8, x24, x8
	ldr	q0, [x9]
	ldr	w9, [x9, #16]
	str	w9, [x8, #16]
	str	q0, [x8]
	mov	w12, #1
LBB27_71:
	mov	x9, #0
	stp	xzr, x10, [sp, #128]
	mov	w8, #2
	str	x8, [sp, #152]
	sub	x10, x22, x10
	str	x10, [sp, #24]
	ldr	x11, [x6]
	add	x10, x12, #1
	stp	x12, x10, [sp, #8]
	add	x10, x12, x12, lsl #2
	lsl	x10, x10, #2
	stp	x10, x11, [sp, #112]
	mov	x24, #-1
	b	LBB27_74
LBB27_72:
	ldp	x9, x8, [sp, #144]
	ldr	x23, [sp, #72]
	ldr	x12, [sp, #8]
LBB27_73:
	cmp	x8, x9
	b.eq	LBB27_118
LBB27_74:
	add	x11, x9, #1
	str	x11, [sp, #144]
	add	x10, sp, #128
	ldr	x10, [x10, x9, lsl #3]
	cmp	x10, #0
	ldp	x13, x9, [sp, #24]
	csel	x13, x9, x13, eq
	mov	x9, x11
	str	x13, [sp, #48]
	cmp	x12, x13
	b.hs	LBB27_73
	add	x8, x10, x10, lsl #2
	lsl	x8, x8, #2
	add	x9, x23, x8
	str	x9, [sp, #40]
	ldr	x9, [sp, #104]
	add	x8, x9, x8
	str	x8, [sp, #64]
	str	x8, [sp, #96]
	mov	w8, #20
	str	x8, [sp, #88]
	ldr	x8, [sp, #16]
	mov	x9, x12
	b	LBB27_79
LBB27_76:
	ldr	x8, [sp, #64]
LBB27_77:
	ldr	q0, [sp, #160]
	str	q0, [x8]
	ldr	w9, [sp, #176]
	str	w9, [x8, #16]
LBB27_78:
	ldp	x9, x8, [sp, #80]
	sub	x10, x8, #20
	ldr	x8, [sp, #96]
	add	x8, x8, #20
	stp	x10, x8, [sp, #88]
	ldr	x8, [sp, #48]
	cmp	x9, x8
	cinc	x8, x9, lo
	b.hs	LBB27_72
LBB27_79:
	add	x9, x9, x9, lsl #2
	mov	x25, x8
	lsl	x8, x9, #2
	ldr	x9, [sp, #40]
	add	x9, x9, x8
	ldr	x10, [sp, #64]
	add	x23, x10, x8
	ldr	q0, [x9]
	ldr	w8, [x9, #16]
	str	w8, [x23, #16]
	str	q0, [x23]
	ldr	x9, [sp, #120]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w19, [x8]
	sub	x0, x29, #152
	mov	x2, x23
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w20, [x29, #-136]
	ldur	w21, [x29, #-112]
	ldur	x8, [x29, #-152]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_81
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_81:
	ldur	x8, [x29, #-144]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_83
	dmb	ishld
Ltmp187:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp188:
LBB27_83:
	ldur	x8, [x29, #-128]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_85
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_85:
	str	x25, [sp, #80]
	ldur	x8, [x29, #-120]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_87
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB27_87:
	sub	x2, x23, #20
	ldr	x9, [sp, #120]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w25, [x8]
	sub	x0, x29, #152
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
	ldur	w26, [x29, #-136]
	ldur	w27, [x29, #-112]
	ldur	x8, [x29, #-152]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_89
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_89:
	ldur	x8, [x29, #-144]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_91
	dmb	ishld
Ltmp193:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp194:
LBB27_91:
	ldur	x8, [x29, #-128]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_94
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldur	x8, [x29, #-120]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.eq	LBB27_95
LBB27_93:
	sub	w8, w21, w20
	mul	w8, w8, w19
	sub	w9, w27, w26
	mul	w9, w9, w25
	cmp	w8, w9
	b.ge	LBB27_78
	b	LBB27_96
LBB27_94:
	ldur	x8, [x29, #-120]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_93
LBB27_95:
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	sub	w8, w21, w20
	mul	w8, w8, w19
	sub	w9, w27, w26
	mul	w9, w9, w25
	cmp	w8, w9
	b.ge	LBB27_78
LBB27_96:
	ldr	q0, [x23]
	str	q0, [sp, #160]
	ldr	w8, [x23, #16]
	str	w8, [sp, #176]
	ldp	x26, x23, [sp, #88]
	b	LBB27_98
LBB27_97:
	sub	w8, w21, w20
	mul	w8, w8, w19
	sub	w9, w27, w28
	mul	w9, w9, w25
	add	x26, x26, #20
	sub	x23, x23, #20
	cmp	w8, w9
	b.ge	LBB27_117
LBB27_98:
	ldr	x9, [sp, #112]
	add	x25, x23, x9
	ldur	q0, [x25, #-20]
	str	q0, [x25]
	ldur	w8, [x25, #-4]
	str	w8, [x25, #16]
	cmp	x9, x26
	b.eq	LBB27_76
	ldr	x9, [sp, #120]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w19, [x8]
Ltmp199:
	sub	x0, x29, #152
	add	x2, sp, #160
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp200:
	ldur	w20, [x29, #-136]
	ldur	w21, [x29, #-112]
	ldur	x8, [x29, #-152]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_102
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_102:
	ldur	x8, [x29, #-144]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_104
	dmb	ishld
Ltmp201:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp202:
LBB27_104:
	ldur	x8, [x29, #-128]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_106
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_106:
	ldur	x8, [x29, #-120]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_108
	dmb	ishld
Ltmp207:
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp208:
LBB27_108:
	sub	x2, x25, #40
	ldr	x9, [sp, #120]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w25, [x8]
Ltmp209:
	sub	x0, x29, #152
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp210:
	ldur	x27, [x29, #-112]
	ldur	x28, [x29, #-136]
	ldur	x8, [x29, #-152]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_111
	dmb	ishld
	sub	x0, x29, #152
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_111:
	ldur	x8, [x29, #-144]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_113
	dmb	ishld
Ltmp211:
	sub	x8, x29, #152
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp212:
LBB27_113:
	ldur	x8, [x29, #-128]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_115
	dmb	ishld
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB27_115:
	ldur	x8, [x29, #-120]
	ldaddl	x24, x8, [x8]
	cmp	x8, #1
	b.ne	LBB27_97
	dmb	ishld
Ltmp217:
	sub	x8, x29, #152
	add	x0, x8, #32
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp218:
	b	LBB27_97
LBB27_117:
	ldr	x8, [sp, #112]
	add	x8, x23, x8
	b	LBB27_77
LBB27_118:
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	mov	w11, #20
	ldr	x9, [sp, #104]
	ldr	x10, [sp, #32]
	madd	x2, x10, x11, x9
	sub	x8, x2, #20
	stp	x23, x8, [sp, #80]
	mov	x8, #-20
	madd	x25, x22, x11, x8
	add	x8, x9, x25
	str	x8, [sp, #96]
	str	x9, [sp, #120]
LBB27_119:
	str	x10, [sp, #32]
	ldr	x9, [sp, #112]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w19, [x8]
Ltmp220:
	sub	x0, x29, #152
	str	x2, [sp, #64]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp221:
	ldur	w20, [x29, #-136]
	ldur	w21, [x29, #-112]
Ltmp222:
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp223:
	ldp	x9, x2, [sp, #112]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w23, [x8]
Ltmp224:
	sub	x0, x29, #152
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp225:
	ldur	x24, [x29, #-136]
	ldur	x26, [x29, #-112]
Ltmp226:
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp227:
	sub	w8, w21, w20
	mul	w8, w8, w19
	sub	w9, w26, w24
	mul	w9, w9, w23
	cmp	w8, w9
	cset	w19, ge
	cset	w27, lt
	ldr	x8, [sp, #64]
	ldr	x9, [sp, #120]
	csel	x8, x8, x9, lt
	ldr	q0, [x8]
	ldr	w8, [x8, #16]
	ldr	x9, [sp, #80]
	str	w8, [x9, #16]
	str	q0, [x9]
	ldr	x9, [sp, #112]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w21, [x8]
Ltmp228:
	sub	x0, x29, #152
	ldr	x2, [sp, #96]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp229:
	ldur	w28, [x29, #-136]
	ldur	w23, [x29, #-112]
Ltmp230:
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp231:
	ldr	x9, [sp, #112]
	ldr	x8, [x9]
	ldr	x1, [x9, #16]
	ldr	w20, [x8]
Ltmp232:
	sub	x0, x29, #152
	ldr	x2, [sp, #88]
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp233:
	ldur	x26, [x29, #-136]
	ldur	x24, [x29, #-112]
Ltmp234:
	sub	x0, x29, #152
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp235:
	ldp	x2, x8, [sp, #64]
	add	x8, x8, x25
	mov	w11, #20
	umaddl	x2, w27, w11, x2
	ldr	x9, [sp, #120]
	umaddl	x9, w19, w11, x9
	str	x9, [sp, #120]
	ldr	x9, [sp, #80]
	add	x9, x9, #20
	str	x9, [sp, #80]
	sub	w9, w23, w28
	mul	w9, w9, w21
	sub	w10, w24, w26
	mul	w10, w10, w20
	cmp	w9, w10
	ldp	x10, x12, [sp, #88]
	csel	x9, x10, x12, lt
	ldr	q0, [x9]
	ldr	w9, [x9, #16]
	str	w9, [x8, #16]
	str	q0, [x8]
	csetm	x8, ge
	madd	x12, x8, x11, x12
	csetm	x8, lt
	madd	x10, x8, x11, x10
	stp	x10, x12, [sp, #88]
	sub	x25, x25, #20
	ldr	x10, [sp, #32]
	subs	x10, x10, #1
	b.ne	LBB27_119
	ldp	x8, x9, [sp, #88]
	add	x8, x8, #20
	add	x9, x9, #20
	tbz	w22, #0, LBB27_130
	ldr	x13, [sp, #120]
	cmp	x13, x8
	csel	x10, x13, x2, lo
	cset	w11, hs
	cset	w12, lo
	ldr	q0, [x10]
	ldr	w10, [x10, #16]
	ldr	x14, [sp, #80]
	str	w10, [x14, #16]
	str	q0, [x14]
	mov	w10, #20
	umaddl	x13, w12, w10, x13
	str	x13, [sp, #120]
	umaddl	x2, w11, w10, x2
LBB27_130:
	ldr	x10, [sp, #120]
	cmp	x10, x8
	ccmp	x2, x9, #0, eq
	ldr	x19, [sp, #104]
	ldr	x20, [sp, #72]
	b.ne	LBB27_133
LBB27_131:
	.cfi_def_cfa wsp, 352
	ldp	x29, x30, [sp, #336]
	ldp	x20, x19, [sp, #320]
	ldp	x22, x21, [sp, #304]
	ldp	x24, x23, [sp, #288]
	ldp	x26, x25, [sp, #272]
	ldp	x28, x27, [sp, #256]
	add	sp, sp, #352
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
LBB27_132:
	.cfi_restore_state
Lloh50:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.16@PAGE
Lloh51:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.16@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [x29, #-152]
	mov	w8, #8
	stp	xzr, xzr, [x29, #-128]
	stur	x8, [x29, #-136]
Lloh52:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.18@PAGE
Lloh53:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.18@PAGEOFF
	sub	x0, x29, #152
	bl	__ZN4core9panicking9panic_fmt17h529fda7ea817ba4fE
LBB27_133:
Ltmp237:
	bl	__ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h21d0353b96c249a8E
Ltmp238:
LBB27_134:
	brk	#0x1
LBB27_135:
Lloh54:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.19@PAGE
Lloh55:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.19@PAGEOFF
	mov	x0, x28
	bl	__ZN4core5slice5index26slice_start_index_len_fail17h07f33eb5dee8df43E
LBB27_136:
Ltmp195:
	mov	x19, x0
Ltmp196:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp197:
	b	LBB27_155
LBB27_137:
Ltmp198:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_138:
Ltmp189:
	mov	x19, x0
Ltmp190:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp191:
	b	LBB27_155
LBB27_139:
Ltmp192:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_140:
Ltmp236:
	mov	x21, x0
	ldr	x19, [sp, #104]
	ldr	x20, [sp, #72]
	b	LBB27_146
LBB27_141:
Ltmp177:
	mov	x19, x0
Ltmp178:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp179:
	b	LBB27_155
LBB27_142:
Ltmp180:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_143:
Ltmp183:
	mov	x19, x0
Ltmp184:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp185:
	b	LBB27_155
LBB27_144:
Ltmp186:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_145:
Ltmp239:
	mov	x21, x0
LBB27_146:
	add	x8, x22, x22, lsl #2
	lsl	x2, x8, #2
	mov	x0, x20
	mov	x1, x19
	bl	_memcpy
	mov	x0, x21
	bl	__Unwind_Resume
LBB27_147:
Ltmp213:
	mov	x19, x0
Ltmp214:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp215:
	b	LBB27_150
LBB27_148:
Ltmp216:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_149:
Ltmp203:
	mov	x19, x0
Ltmp204:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp205:
LBB27_150:
	mov	x0, x19
	b	LBB27_158
LBB27_151:
Ltmp206:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_152:
Ltmp165:
	mov	x19, x0
Ltmp166:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp167:
	b	LBB27_155
LBB27_153:
Ltmp168:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_154:
Ltmp171:
	mov	x19, x0
Ltmp172:
	sub	x8, x29, #152
	add	x0, x8, #24
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp173:
LBB27_155:
	mov	x0, x19
	bl	__Unwind_Resume
LBB27_156:
Ltmp174:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB27_157:
Ltmp219:
LBB27_158:
	mov	w8, #20
	ldr	x9, [sp, #8]
	umaddl	x8, w9, w8, x23
	ldr	q0, [sp, #160]
	stur	q0, [x8, #-20]
	ldr	w9, [sp, #176]
	stur	w9, [x8, #-4]
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh54, Lloh55
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table27:
Lexception9:
	.byte	255
	.byte	155
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9
	.uleb128 Ltmp163-Lfunc_begin9
	.byte	0
	.byte	0
	.uleb128 Ltmp163-Lfunc_begin9
	.uleb128 Ltmp164-Ltmp163
	.uleb128 Ltmp165-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp164-Lfunc_begin9
	.uleb128 Ltmp169-Ltmp164
	.byte	0
	.byte	0
	.uleb128 Ltmp169-Lfunc_begin9
	.uleb128 Ltmp170-Ltmp169
	.uleb128 Ltmp171-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp170-Lfunc_begin9
	.uleb128 Ltmp175-Ltmp170
	.byte	0
	.byte	0
	.uleb128 Ltmp175-Lfunc_begin9
	.uleb128 Ltmp176-Ltmp175
	.uleb128 Ltmp177-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp176-Lfunc_begin9
	.uleb128 Ltmp181-Ltmp176
	.byte	0
	.byte	0
	.uleb128 Ltmp181-Lfunc_begin9
	.uleb128 Ltmp182-Ltmp181
	.uleb128 Ltmp183-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp182-Lfunc_begin9
	.uleb128 Ltmp187-Ltmp182
	.byte	0
	.byte	0
	.uleb128 Ltmp187-Lfunc_begin9
	.uleb128 Ltmp188-Ltmp187
	.uleb128 Ltmp189-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp188-Lfunc_begin9
	.uleb128 Ltmp193-Ltmp188
	.byte	0
	.byte	0
	.uleb128 Ltmp193-Lfunc_begin9
	.uleb128 Ltmp194-Ltmp193
	.uleb128 Ltmp195-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp194-Lfunc_begin9
	.uleb128 Ltmp199-Ltmp194
	.byte	0
	.byte	0
	.uleb128 Ltmp199-Lfunc_begin9
	.uleb128 Ltmp200-Ltmp199
	.uleb128 Ltmp219-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp201-Lfunc_begin9
	.uleb128 Ltmp202-Ltmp201
	.uleb128 Ltmp203-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp207-Lfunc_begin9
	.uleb128 Ltmp210-Ltmp207
	.uleb128 Ltmp219-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp211-Lfunc_begin9
	.uleb128 Ltmp212-Ltmp211
	.uleb128 Ltmp213-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp217-Lfunc_begin9
	.uleb128 Ltmp218-Ltmp217
	.uleb128 Ltmp219-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp220-Lfunc_begin9
	.uleb128 Ltmp235-Ltmp220
	.uleb128 Ltmp236-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp235-Lfunc_begin9
	.uleb128 Ltmp237-Ltmp235
	.byte	0
	.byte	0
	.uleb128 Ltmp237-Lfunc_begin9
	.uleb128 Ltmp238-Ltmp237
	.uleb128 Ltmp239-Lfunc_begin9
	.byte	0
	.uleb128 Ltmp238-Lfunc_begin9
	.uleb128 Ltmp196-Ltmp238
	.byte	0
	.byte	0
	.uleb128 Ltmp196-Lfunc_begin9
	.uleb128 Ltmp197-Ltmp196
	.uleb128 Ltmp198-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp190-Lfunc_begin9
	.uleb128 Ltmp191-Ltmp190
	.uleb128 Ltmp192-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp178-Lfunc_begin9
	.uleb128 Ltmp179-Ltmp178
	.uleb128 Ltmp180-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp184-Lfunc_begin9
	.uleb128 Ltmp185-Ltmp184
	.uleb128 Ltmp186-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp185-Lfunc_begin9
	.uleb128 Ltmp214-Ltmp185
	.byte	0
	.byte	0
	.uleb128 Ltmp214-Lfunc_begin9
	.uleb128 Ltmp215-Ltmp214
	.uleb128 Ltmp216-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp204-Lfunc_begin9
	.uleb128 Ltmp205-Ltmp204
	.uleb128 Ltmp206-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp166-Lfunc_begin9
	.uleb128 Ltmp167-Ltmp166
	.uleb128 Ltmp168-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp172-Lfunc_begin9
	.uleb128 Ltmp173-Ltmp172
	.uleb128 Ltmp174-Lfunc_begin9
	.byte	1
	.uleb128 Ltmp173-Lfunc_begin9
	.uleb128 Lfunc_end9-Ltmp173
	.byte	0
	.byte	0
Lcst_end9:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase8:
	.byte	0
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
Lloh56:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.59@PAGE
Lloh57:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.59@PAGEOFF
	stp	x8, x0, [sp]
Lloh58:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.20@PAGE
Lloh59:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.20@PAGEOFF
Lloh60:
	adrp	x6, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.60@PAGE
Lloh61:
	add	x6, x6, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.60@PAGEOFF
	mov	x1, sp
	add	x3, sp, #8
	mov	w0, #0
	mov	x4, x2
	bl	__ZN4core9panicking19assert_failed_inner17h211a35e5e4a5a4e2E
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh56, Lloh57
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI29_0:
	.quad	8
	.quad	520
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E:
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception10
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
	b.ne	LBB29_3
	ldr	x8, [x21, #8]
	cmp	x8, #1
	b.ne	LBB29_22
	stlr	x8, [x21]
	b	LBB29_33
LBB29_3:
	mov	w0, #8
	mov	w1, #520
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
	mov	x23, x0
	mov	x20, x1
	cbz	x1, LBB29_34
Lloh62:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh63:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x20
	mov	x1, x23
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x22, x0
	cbz	x0, LBB29_35
LBB29_5:
	mov	w23, #1
	dup.2d	v0, x23
	mov	x20, x22
	str	q0, [x20], #16
	str	x22, [sp, #16]
Lloh64:
	adrp	x8, lCPI29_0@PAGE
Lloh65:
	ldr	q0, [x8, lCPI29_0@PAGEOFF]
	str	q0, [sp]
	strb	w23, [sp, #24]
	str	wzr, [sp, #1064]
	add	x24, x21, #528
	stp	x24, xzr, [x29, #-112]
	sub	x0, x29, #112
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB29_28
	add	x21, x21, #16
	ldr	w22, [x24]
	sub	x24, x29, #96
	add	x25, sp, #552
	mov	x26, #-1
	b	LBB29_9
LBB29_7:
	stp	w8, w27, [x11]
	str	x10, [x11, #8]
LBB29_8:
	sub	x0, x29, #112
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB29_29
LBB29_9:
	cmp	x1, #31
	b.hi	LBB29_39
	lsl	w9, w23, w1
	tst	w9, w22
	b.eq	LBB29_39
	add	x11, x21, x1, lsl #4
	ldr	w8, [x11]
	cbz	w8, LBB29_14
	cmp	w8, #1
	ldr	x10, [x11, #8]
	ldadd	x23, x11, [x10]
	tbnz	x11, #63, LBB29_40
	ldr	w12, [sp, #1064]
	orr	w11, w12, w9
	str	w11, [sp, #1064]
	add	x11, x25, x1, lsl #4
	tst	w12, w9
	b.ne	LBB29_15
	b	LBB29_7
LBB29_14:
	ldr	x10, [x11, #8]
	ldr	w27, [x11, #4]
	ldr	w12, [sp, #1064]
	orr	w11, w12, w9
	str	w11, [sp, #1064]
	add	x11, x25, x1, lsl #4
	tst	w12, w9
	b.eq	LBB29_7
LBB29_15:
	ldr	q0, [x11]
	stur	q0, [x29, #-96]
	stp	w8, w27, [x11]
	str	x10, [x11, #8]
	ldur	w8, [x29, #-96]
	cmp	w8, #3
	b.eq	LBB29_8
	cbz	w8, LBB29_8
	cmp	w8, #1
	b.ne	LBB29_20
	ldur	x8, [x29, #-88]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB29_8
	dmb	ishld
	add	x0, x24, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	b	LBB29_8
LBB29_20:
	ldur	x8, [x29, #-88]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB29_8
	dmb	ishld
Ltmp240:
	add	x0, x24, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp241:
	b	LBB29_8
LBB29_22:
Ltmp255:
	mov	w0, #8
	mov	w1, #520
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
Ltmp256:
	mov	x22, x0
	mov	x20, x1
	cbz	x1, LBB29_36
Lloh66:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh67:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x20
	mov	x1, x22
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x23, x0
	cbz	x0, LBB29_37
LBB29_25:
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x23]
	add	x0, x23, #16
	add	x1, x21, #16
	mov	w2, #520
	bl	_memcpy
	str	x23, [x19]
	cmn	x21, #1
	b.eq	LBB29_33
	add	x8, x21, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB29_33
	dmb	ishld
	mov	x0, x21
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB29_33
LBB29_28:
	add	x0, sp, #32
	add	x1, sp, #552
	mov	w2, #520
	bl	_memcpy
	add	x1, sp, #32
	mov	x0, x20
	mov	w2, #520
	bl	_memcpy
	b	LBB29_30
LBB29_29:
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
	tbz	w21, #0, LBB29_38
LBB29_30:
	ldr	x8, [x19]
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB29_32
	dmb	ishld
Ltmp243:
	mov	x0, x19
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp244:
LBB29_32:
	str	x22, [x19]
LBB29_33:
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
LBB29_34:
	.cfi_restore_state
	mov	x22, x23
	cbnz	x23, LBB29_5
LBB29_35:
	mov	x0, x23
	mov	x1, x20
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB29_36:
	mov	x23, x22
	cbnz	x22, LBB29_25
LBB29_37:
Ltmp257:
	mov	x0, x22
	mov	x1, x20
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp258:
	b	LBB29_40
LBB29_38:
Lloh68:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.22@PAGE
Lloh69:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.22@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
LBB29_39:
Ltmp246:
Lloh70:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.34@PAGE
Lloh71:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.34@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
Ltmp247:
LBB29_40:
	brk	#0x1
LBB29_41:
Ltmp245:
	str	x22, [x19]
	bl	__Unwind_Resume
LBB29_42:
Ltmp242:
	b	LBB29_44
LBB29_43:
Ltmp248:
LBB29_44:
	mov	x20, x0
Ltmp249:
	add	x0, sp, #552
	bl	__ZN4core3ptr442drop_in_place$LT$sized_chunks..sparse_chunk..SparseChunk$LT$im..nodes..hamt..Entry$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UInt$LT$typenum..uint..UTerm$C$typenum..bit..B1$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$C$typenum..bit..B0$GT$$GT$$GT$17h6292d6af9be76657E
Ltmp250:
Ltmp252:
	mov	x0, sp
	bl	__ZN4core3ptr154drop_in_place$LT$alloc..sync..UniqueArcUninit$LT$im..nodes..hamt..Node$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$alloc..alloc..Global$GT$$GT$17h0e682d2e3b48d920E
Ltmp253:
	b	LBB29_51
LBB29_46:
Ltmp254:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB29_47:
Ltmp251:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB29_48:
Ltmp259:
	mov	x20, x0
	cmn	x21, #1
	b.eq	LBB29_51
	add	x8, x21, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB29_51
	dmb	ishld
	mov	x0, x21
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB29_51:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh62, Lloh63
	.loh AdrpLdr	Lloh64, Lloh65
	.loh AdrpLdrGot	Lloh66, Lloh67
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh70, Lloh71
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table29:
Lexception10:
	.byte	255
	.byte	155
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10
	.uleb128 Ltmp240-Lfunc_begin10
	.byte	0
	.byte	0
	.uleb128 Ltmp240-Lfunc_begin10
	.uleb128 Ltmp241-Ltmp240
	.uleb128 Ltmp242-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp255-Lfunc_begin10
	.uleb128 Ltmp256-Ltmp255
	.uleb128 Ltmp259-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp256-Lfunc_begin10
	.uleb128 Ltmp243-Ltmp256
	.byte	0
	.byte	0
	.uleb128 Ltmp243-Lfunc_begin10
	.uleb128 Ltmp244-Ltmp243
	.uleb128 Ltmp245-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp244-Lfunc_begin10
	.uleb128 Ltmp257-Ltmp244
	.byte	0
	.byte	0
	.uleb128 Ltmp257-Lfunc_begin10
	.uleb128 Ltmp258-Ltmp257
	.uleb128 Ltmp259-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp258-Lfunc_begin10
	.uleb128 Ltmp246-Ltmp258
	.byte	0
	.byte	0
	.uleb128 Ltmp246-Lfunc_begin10
	.uleb128 Ltmp247-Ltmp246
	.uleb128 Ltmp248-Lfunc_begin10
	.byte	0
	.uleb128 Ltmp247-Lfunc_begin10
	.uleb128 Ltmp249-Ltmp247
	.byte	0
	.byte	0
	.uleb128 Ltmp249-Lfunc_begin10
	.uleb128 Ltmp250-Ltmp249
	.uleb128 Ltmp251-Lfunc_begin10
	.byte	1
	.uleb128 Ltmp252-Lfunc_begin10
	.uleb128 Ltmp253-Ltmp252
	.uleb128 Ltmp254-Lfunc_begin10
	.byte	1
	.uleb128 Ltmp253-Lfunc_begin10
	.uleb128 Lfunc_end10-Ltmp253
	.byte	0
	.byte	0
Lcst_end10:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase9:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI30_0:
	.quad	8
	.quad	32
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hab1f81bc4f804459E:
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception11
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
	b.ne	LBB30_3
	ldr	x8, [x20, #8]
	cmp	x8, #1
	b.ne	LBB30_8
	stlr	x8, [x20]
	b	LBB30_20
LBB30_3:
	mov	w0, #8
	mov	w1, #32
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
	mov	x23, x0
	mov	x22, x1
Lloh72:
	adrp	x24, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh73:
	ldr	x24, [x24, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	cbz	x1, LBB30_14
	ldrb	wzr, [x24]
	mov	x0, x22
	mov	x1, x23
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x21, x0
	cbz	x0, LBB30_15
LBB30_5:
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x21]
	str	x21, [sp, #16]
Lloh74:
	adrp	x9, lCPI30_0@PAGE
Lloh75:
	ldr	q0, [x9, lCPI30_0@PAGEOFF]
	str	q0, [sp]
	strb	w8, [sp, #24]
	ldr	x26, [x20, #32]
	lsl	x22, x26, #3
	lsr	x8, x26, #61
	cmp	x8, #0
	mov	x8, #9223372036854775804
	ccmp	x22, x8, #2, eq
	b.hi	LBB30_23
	ldr	w27, [x20, #40]
	ldr	x23, [x20, #24]
	cbz	x22, LBB30_16
	ldrb	wzr, [x24]
	mov	w25, #4
	mov	x0, x22
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x24, x0
	mov	x28, x26
	cbnz	x0, LBB30_17
	b	LBB30_24
LBB30_8:
Ltmp266:
	mov	w0, #8
	mov	w1, #32
	bl	__ZN5alloc4sync32arcinner_layout_for_value_layout17hbc6246a576ef70a8E
Ltmp267:
	mov	x22, x0
	mov	x21, x1
	cbz	x1, LBB30_21
Lloh76:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh77:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x21
	mov	x1, x22
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB30_22
LBB30_11:
	mov	w8, #1
	dup.2d	v0, x8
	str	q0, [x0]
	ldp	q0, q1, [x20, #16]
	stp	q0, q1, [x0, #16]
	str	x0, [x19]
	cmn	x20, #1
	b.eq	LBB30_20
	add	x8, x20, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_20
	dmb	ishld
	mov	x0, x20
	mov	w1, #48
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB30_20
LBB30_14:
	mov	x21, x23
	cbnz	x23, LBB30_5
LBB30_15:
	mov	x0, x23
	mov	x1, x22
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB30_16:
	mov	x28, #0
	mov	w24, #4
LBB30_17:
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
	b.ne	LBB30_19
	dmb	ishld
	mov	x0, x19
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB30_19:
	str	x21, [x19]
LBB30_20:
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
LBB30_21:
	.cfi_restore_state
	mov	x0, x22
	cbnz	x22, LBB30_11
LBB30_22:
Ltmp268:
	mov	x0, x22
	mov	x1, x21
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp269:
	b	LBB30_25
LBB30_23:
	mov	x25, #0
LBB30_24:
Ltmp260:
Lloh78:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGE
Lloh79:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGEOFF
	mov	x0, x25
	mov	x1, x22
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp261:
LBB30_25:
	brk	#0x1
LBB30_26:
Ltmp262:
	mov	x19, x0
Ltmp263:
	mov	x0, sp
	bl	__ZN4core3ptr154drop_in_place$LT$alloc..sync..UniqueArcUninit$LT$im..nodes..hamt..Node$LT$im..hash..set..Value$LT$$LP$i32$C$i32$RP$$GT$$GT$$C$alloc..alloc..Global$GT$$GT$17h0e682d2e3b48d920E
Ltmp264:
	b	LBB30_31
LBB30_27:
Ltmp265:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB30_28:
Ltmp270:
	cmn	x20, #1
	b.eq	LBB30_32
	mov	x19, x0
	add	x8, x20, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB30_31
	dmb	ishld
	mov	x0, x20
	mov	w1, #48
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB30_31:
	mov	x0, x19
LBB30_32:
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh72, Lloh73
	.loh AdrpLdr	Lloh74, Lloh75
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpAdd	Lloh78, Lloh79
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table30:
Lexception11:
	.byte	255
	.byte	155
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11
	.uleb128 Ltmp266-Lfunc_begin11
	.byte	0
	.byte	0
	.uleb128 Ltmp266-Lfunc_begin11
	.uleb128 Ltmp267-Ltmp266
	.uleb128 Ltmp270-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp267-Lfunc_begin11
	.uleb128 Ltmp268-Ltmp267
	.byte	0
	.byte	0
	.uleb128 Ltmp268-Lfunc_begin11
	.uleb128 Ltmp269-Ltmp268
	.uleb128 Ltmp270-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp260-Lfunc_begin11
	.uleb128 Ltmp261-Ltmp260
	.uleb128 Ltmp262-Lfunc_begin11
	.byte	0
	.uleb128 Ltmp263-Lfunc_begin11
	.uleb128 Ltmp264-Ltmp263
	.uleb128 Ltmp265-Lfunc_begin11
	.byte	1
	.uleb128 Ltmp264-Lfunc_begin11
	.uleb128 Lfunc_end11-Ltmp264
	.byte	0
	.byte	0
Lcst_end11:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase10:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E:
	.cfi_startproc
	ldr	x0, [x0]
	cmn	x0, #1
	b.eq	LBB31_3
	add	x8, x0, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB31_3
	dmb	ishld
	mov	w1, #32
	mov	w2, #8
	b	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB31_3:
	ret
	.cfi_endproc

	.p2align	2
__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E:
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception12
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
	tbz	w0, #0, LBB32_10
	add	x20, x19, #16
	mov	x21, #-1
	b	LBB32_3
LBB32_2:
	add	x0, sp, #16
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB32_10
LBB32_3:
	cmp	x1, #31
	b.hi	LBB32_14
	add	x0, x20, x1, lsl #4
	ldr	w8, [x0]
	cbz	w8, LBB32_2
	cmp	w8, #1
	b.ne	LBB32_8
	ldr	x8, [x0, #8]!
	ldaddl	x21, x8, [x8]
	cmp	x8, #1
	b.ne	LBB32_2
	dmb	ishld
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
	b	LBB32_2
LBB32_8:
	ldr	x8, [x0, #8]!
	ldaddl	x21, x8, [x8]
	cmp	x8, #1
	b.ne	LBB32_2
	dmb	ishld
Ltmp274:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp275:
	b	LBB32_2
LBB32_10:
	cmn	x19, #1
	b.eq	LBB32_13
	add	x8, x19, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB32_13
	dmb	ishld
	mov	x0, x19
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB32_13:
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
LBB32_14:
	.cfi_restore_state
Ltmp271:
Lloh80:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35@PAGE
Lloh81:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.35@PAGEOFF
	mov	x0, x1
	mov	w1, #32
	bl	__ZN4core9panicking18panic_bounds_check17he315898ba5b8216dE
Ltmp272:
	brk	#0x1
LBB32_16:
Ltmp276:
	b	LBB32_18
LBB32_17:
Ltmp273:
LBB32_18:
	mov	x20, x0
	cmn	x19, #1
	b.eq	LBB32_21
	add	x8, x19, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB32_21
	dmb	ishld
	mov	x0, x19
	mov	w1, #536
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB32_21:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh80, Lloh81
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table32:
Lexception12:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp274-Lfunc_begin12
	.uleb128 Ltmp275-Ltmp274
	.uleb128 Ltmp276-Lfunc_begin12
	.byte	0
	.uleb128 Ltmp271-Lfunc_begin12
	.uleb128 Ltmp272-Ltmp271
	.uleb128 Ltmp273-Lfunc_begin12
	.byte	0
	.uleb128 Ltmp272-Lfunc_begin12
	.uleb128 Lfunc_end12-Ltmp272
	.byte	0
	.byte	0
Lcst_end12:
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
	cbz	x8, LBB33_2
	ldr	x0, [x19, #24]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB33_2:
	cmn	x19, #1
	b.eq	LBB33_5
	add	x8, x19, #8
	mov	x9, #-1
	ldaddl	x9, x8, [x8]
	cmp	x8, #1
	b.ne	LBB33_5
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
LBB33_5:
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
	cbz	x8, LBB34_3
	ldr	x1, [x3, #16]
	cbz	x1, LBB34_3
	ldr	x0, [x3]
	mov	x2, x21
	mov	x3, x20
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_realloc
	b	LBB34_6
LBB34_3:
	cbz	x20, LBB34_5
Lloh82:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh83:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x20
	mov	x1, x21
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	b	LBB34_6
LBB34_5:
	mov	x0, x21
LBB34_6:
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
	.loh AdrpLdrGot	Lloh82, Lloh83
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
	b.ne	LBB35_6
	add	x9, x20, x20, lsl #2
	lsl	x2, x9, #2
	mov	x9, #9223372036854775804
	cmp	x2, x9
	b.hi	LBB35_8
	cbz	x8, LBB35_4
	ldr	x9, [x19, #8]
	add	x8, x8, x8, lsl #2
	lsl	x8, x8, #2
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #4
LBB35_4:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #4
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB35_7
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
LBB35_6:
	.cfi_restore_state
Lloh84:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGE
Lloh85:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB35_7:
	ldp	x0, x1, [sp, #8]
LBB35_8:
Lloh86:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGE
Lloh87:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.58@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpAdd	Lloh86, Lloh87
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
	b.hi	LBB36_5
	mov	x20, x0
	cbz	x8, LBB36_3
	ldr	x9, [x20, #8]
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #4
LBB36_3:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #4
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB36_6
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
LBB36_5:
	.cfi_restore_state
	mov	x0, #0
	mov	x2, x19
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB36_6:
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
	b.hi	LBB37_5
	mov	x19, x0
	cbz	x8, LBB37_3
	ldr	x9, [x19, #8]
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
LBB37_5:
	.cfi_restore_state
	mov	x0, #0
Lloh88:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGE
Lloh89:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB37_6:
	ldp	x0, x1, [sp, #8]
Lloh90:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGE
Lloh91:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.10@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh90, Lloh91
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
	b.ne	LBB38_6
	add	x9, x20, x20, lsl #1
	lsl	x2, x9, #3
	mov	x9, #9223372036854775800
	cmp	x2, x9
	b.hi	LBB38_8
	cbz	x8, LBB38_4
	ldr	x9, [x19, #8]
	add	x8, x8, x8, lsl #1
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #8
LBB38_4:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #8
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB38_7
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
LBB38_6:
	.cfi_restore_state
Lloh92:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGE
Lloh93:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB38_7:
	ldp	x0, x1, [sp, #8]
LBB38_8:
Lloh94:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGE
Lloh95:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.32@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpAdd	Lloh94, Lloh95
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
	b.hi	LBB39_5
	mov	x19, x0
	cbz	x8, LBB39_3
	ldr	x9, [x19, #8]
	lsl	x8, x8, #3
	str	x9, [sp, #24]
	str	x8, [sp, #40]
	mov	w8, #8
LBB39_3:
	str	x8, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	mov	w1, #8
	bl	__ZN5alloc7raw_vec11finish_grow17hcb79b03e655f366dE
	ldr	w8, [sp]
	cmp	w8, #1
	b.eq	LBB39_6
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
LBB39_5:
	.cfi_restore_state
	mov	x0, #0
Lloh96:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGE
Lloh97:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB39_6:
	ldp	x0, x1, [sp, #8]
Lloh98:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGE
Lloh99:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.33@PAGEOFF
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh98, Lloh99
	.cfi_endproc

	.p2align	2
__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E:
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception13
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
Lloh100:
	adrp	x21, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh101:
	ldr	x21, [x21, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x21]
	mov	w0, #536
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB40_5
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
	cbz	x0, LBB40_6
	mov	x21, x0
Lloh102:
	adrp	x22, __ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h17d73f607e916528E@TLVPPAGE
Lloh103:
	ldr	x22, [x22, __ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h17d73f607e916528E@TLVPPAGEOFF]
	ldr	x23, [x22]
	mov	x0, x22
	blr	x23
	ldr	w8, [x0]
	cmp	w8, #1
	b.ne	LBB40_8
	mov	x0, x22
	blr	x23
	ldp	x8, x1, [x0, #8]
LBB40_4:
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
LBB40_5:
	.cfi_restore_state
	mov	w0, #8
	mov	w1, #536
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB40_6:
Ltmp280:
	mov	w0, #8
	mov	w1, #32
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp281:
	brk	#0x1
LBB40_8:
Ltmp277:
	bl	__ZN3std3sys6random19hashmap_random_keys17h41cca6706a38c8ffE
Ltmp278:
	mov	x8, x0
	mov	x0, x22
	blr	x23
	mov	w9, #1
	str	x9, [x0]
	str	x1, [x0, #16]
	b	LBB40_4
LBB40_10:
Ltmp279:
	mov	x20, x0
	mov	x0, x21
	mov	w1, #32
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x20
	b	LBB40_12
LBB40_11:
Ltmp282:
LBB40_12:
	mov	x8, #-1
	ldaddl	x8, x8, [x19]
	cmp	x8, #1
	b.ne	LBB40_14
	dmb	ishld
Ltmp283:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	mov	x0, x19
Ltmp284:
LBB40_14:
	bl	__Unwind_Resume
LBB40_15:
Ltmp285:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdrGot	Lloh100, Lloh101
	.loh AdrpLdr	Lloh102, Lloh103
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table40:
Lexception13:
	.byte	255
	.byte	155
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13
	.uleb128 Ltmp280-Lfunc_begin13
	.byte	0
	.byte	0
	.uleb128 Ltmp280-Lfunc_begin13
	.uleb128 Ltmp281-Ltmp280
	.uleb128 Ltmp282-Lfunc_begin13
	.byte	0
	.uleb128 Ltmp277-Lfunc_begin13
	.uleb128 Ltmp278-Ltmp277
	.uleb128 Ltmp279-Lfunc_begin13
	.byte	0
	.uleb128 Ltmp278-Lfunc_begin13
	.uleb128 Ltmp283-Ltmp278
	.byte	0
	.byte	0
	.uleb128 Ltmp283-Lfunc_begin13
	.uleb128 Ltmp284-Ltmp283
	.uleb128 Ltmp285-Lfunc_begin13
	.byte	1
	.uleb128 Ltmp284-Lfunc_begin13
	.uleb128 Lfunc_end13-Ltmp284
	.byte	0
	.byte	0
Lcst_end13:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase11:
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
	cbz	x9, LBB41_12
	mov	x8, x0
	ldr	x0, [x0, #64]
	cbz	x0, LBB41_4
	ldr	x10, [x8, #72]
	cmp	x0, x10
	b.eq	LBB41_9
	ldr	w1, [x8, #56]
	add	x10, x0, #8
	str	x10, [x8, #64]
	sub	x9, x9, #1
	str	x9, [x8, #48]
	b	LBB41_19
LBB41_4:
	mov	x19, x8
	add	x0, x8, #24
	bl	__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E
	tbz	w0, #0, LBB41_10
	cmp	x1, #32
	b.hs	LBB41_20
	mov	x8, x19
	ldr	x9, [x19, #40]
	add	x9, x9, x1, lsl #4
	mov	x0, x9
	ldr	w10, [x0], #8
	cbz	w10, LBB41_13
	cmp	w10, #1
	b.ne	LBB41_14
	ldr	x9, [x0]
	ldr	w10, [x9, #40]
	ldp	x11, x9, [x9, #24]
	add	x9, x11, x9, lsl #3
	str	w10, [x8, #56]
	stp	x11, x9, [x8, #64]
	b	LBB41_17
LBB41_9:
	str	xzr, [x8, #64]
	b	LBB41_17
LBB41_10:
	ldr	x8, [x19, #16]
	cbz	x8, LBB41_12
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
	b	LBB41_18
LBB41_12:
	mov	x0, #0
	b	LBB41_19
LBB41_13:
	ldr	x10, [x8, #48]
	sub	x10, x10, #1
	str	x10, [x8, #48]
	ldr	w1, [x9, #4]
	b	LBB41_19
LBB41_14:
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
	b.ne	LBB41_16
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9cff52ad6fbd2b2eE
	mov	x8, x19
LBB41_16:
	ldr	x9, [x8, #8]
	mov	w10, #24
	madd	x9, x20, x10, x9
	ldr	q0, [sp]
	str	q0, [x9]
	ldr	x10, [sp, #16]
	str	x10, [x9, #16]
	add	x9, x20, #1
	str	x9, [x8, #16]
LBB41_17:
	mov	x0, x8
LBB41_18:
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
LBB41_19:
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
LBB41_20:
	.cfi_restore_state
Lloh104:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.1@PAGE
Lloh105:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.1@PAGEOFF
	mov	x0, x1
	mov	w1, #32
	bl	__ZN4core9panicking18panic_bounds_check17he315898ba5b8216dE
	.loh AdrpAdd	Lloh104, Lloh105
	.cfi_endproc

	.p2align	2
__ZN90_$LT$im..nodes..hamt..Drain$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he35d10560541c8dbE:
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception14
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
	cbz	x8, LBB42_37
	mov	x20, x1
	mov	x26, #-9223372036854775808
	mov	x25, #-1
	mov	w27, #1
	mov	w9, #4
	str	x9, [sp]
	b	LBB42_4
LBB42_2:
	stur	x21, [x20, #56]
LBB42_3:
	ldr	x8, [x20, #64]
	cbz	x8, LBB42_37
LBB42_4:
	ldr	x9, [x20, #24]
	cmp	x9, x26
	b.ne	LBB42_12
	add	x0, x20, #56
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h648a73d56f0b0136E
	ldr	w8, [x0, #512]
	cbz	w8, LBB42_16
	rbit	w9, w8
	clz	w9, w9
	lsl	w10, w27, w9
	bic	w11, w8, w10
	str	w11, [x0, #512]
	tst	w10, w8
	b.eq	LBB42_16
	add	x8, x0, x9, lsl #4
	ldr	w9, [x8]
	ldr	x22, [x8, #8]
	cmp	w9, #1
	b.le	LBB42_19
	cmp	w9, #2
	b.ne	LBB42_16
	ldr	x21, [x20, #56]
	str	x22, [x20, #56]
	str	x21, [sp, #8]
	ldr	x19, [x20, #16]
	ldr	x8, [x20]
	cmp	x19, x8
	b.ne	LBB42_11
Ltmp286:
	mov	x0, x20
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hfa3fd6e08ccf8de8E
Ltmp287:
LBB42_11:
	ldr	x8, [x20, #8]
	str	x21, [x8, x19, lsl #3]
	add	x8, x19, #1
	str	x8, [x20, #16]
	b	LBB42_3
LBB42_12:
	ldr	x10, [x20, #40]
	cbnz	x10, LBB42_39
	cbz	x9, LBB42_15
	ldr	x0, [x20, #32]
	lsl	x1, x9, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB42_15:
	str	x26, [x20, #24]
	b	LBB42_3
LBB42_16:
	ldr	x8, [x20, #16]
	cbz	x8, LBB42_37
	sub	x8, x8, #1
	str	x8, [x20, #16]
	ldr	x9, [x20, #8]
	ldr	x21, [x9, x8, lsl #3]
	ldr	x8, [x20, #56]
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.ne	LBB42_2
	dmb	ishld
Ltmp295:
	add	x0, x20, #56
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp296:
	b	LBB42_2
LBB42_19:
	b.ne	LBB42_41
	mov	w8, #1
	cas	x8, xzr, [x22]
	cmp	x8, #1
	b.ne	LBB42_26
	dmb	ishld
	ldp	x28, x23, [x22, #16]
	ldr	x21, [x22, #32]
	ldr	d8, [x22, #40]
	cmn	x22, #1
	b.eq	LBB42_24
	add	x8, x22, #8
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.ne	LBB42_24
	dmb	ishld
	mov	x0, x22
	mov	w1, #48
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB42_24:
	cmp	x28, x26
	b.ne	LBB42_34
	mov	x27, x24
	mov	x22, x23
	b	LBB42_27
LBB42_26:
	mov	x27, x24
LBB42_27:
	str	x22, [sp, #8]
	ldr	x21, [x22, #32]
	lsl	x24, x21, #3
	lsr	x8, x21, #61
	cmp	x8, #0
	mov	x8, #9223372036854775804
	ccmp	x24, x8, #2, eq
	b.hi	LBB42_42
	ldr	w19, [x22, #40]
	ldr	x25, [x22, #24]
	cbz	x24, LBB42_30
Lloh106:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh107:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x24
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	mov	x23, x0
	mov	x28, x21
	cbnz	x0, LBB42_31
	b	LBB42_43
LBB42_30:
	mov	x28, #0
	mov	w23, #4
LBB42_31:
	mov	x0, x23
	mov	x1, x25
	mov	x2, x24
	bl	_memcpy
	mov	x25, #-1
	ldaddl	x25, x8, [x22]
	cmp	x8, #1
	b.ne	LBB42_33
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB42_33:
	fmov	s8, w19
	mov	x24, x27
	mov	w27, #1
LBB42_34:
	ldr	x8, [x20, #24]
	orr	x9, x8, #0x8000000000000000
	cmp	x9, x26
	b.eq	LBB42_36
	ldr	x0, [x20, #32]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB42_36:
	stp	x28, x23, [x20, #24]
	str	x21, [x20, #40]
	str	d8, [x20, #48]
	b	LBB42_3
LBB42_37:
	mov	w9, #0
LBB42_38:
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
LBB42_39:
	.cfi_restore_state
	sub	x9, x10, #1
	str	x9, [x20, #40]
	ldr	x10, [x20, #32]
	add	x9, x10, x9, lsl #3
	ldp	w22, w9, [x9]
	sub	x8, x8, #1
	str	x8, [x20, #64]
	ldr	w8, [x20, #48]
LBB42_40:
	stp	w22, w9, [x24, #4]
	mov	w9, #1
	str	w8, [x24, #12]
	b	LBB42_38
LBB42_41:
	ldr	w8, [x8, #4]
	lsr	x9, x22, #32
	ldr	x10, [x20, #64]
	sub	x10, x10, #1
	str	x10, [x20, #64]
	b	LBB42_40
LBB42_42:
	str	xzr, [sp]
LBB42_43:
Ltmp292:
Lloh108:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGE
Lloh109:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.31@PAGEOFF
	ldr	x0, [sp]
	mov	x1, x24
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp293:
	brk	#0x1
LBB42_45:
Ltmp288:
	mov	x19, x0
	mov	x8, #-1
	ldaddl	x8, x8, [x21]
	cmp	x8, #1
	b.ne	LBB42_50
	dmb	ishld
Ltmp289:
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp290:
	b	LBB42_50
LBB42_47:
Ltmp291:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB42_48:
Ltmp294:
	mov	x19, x0
	mov	x8, #-1
	ldaddl	x8, x8, [x22]
	cmp	x8, #1
	b.ne	LBB42_50
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hedf551e60eb46fe9E
LBB42_50:
	mov	x0, x19
	bl	__Unwind_Resume
LBB42_51:
Ltmp297:
	stur	x21, [x20, #56]
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh106, Lloh107
	.loh AdrpAdd	Lloh108, Lloh109
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table42:
Lexception14:
	.byte	255
	.byte	155
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14
	.uleb128 Ltmp286-Lfunc_begin14
	.byte	0
	.byte	0
	.uleb128 Ltmp286-Lfunc_begin14
	.uleb128 Ltmp287-Ltmp286
	.uleb128 Ltmp288-Lfunc_begin14
	.byte	0
	.uleb128 Ltmp295-Lfunc_begin14
	.uleb128 Ltmp296-Ltmp295
	.uleb128 Ltmp297-Lfunc_begin14
	.byte	0
	.uleb128 Ltmp296-Lfunc_begin14
	.uleb128 Ltmp292-Ltmp296
	.byte	0
	.byte	0
	.uleb128 Ltmp292-Lfunc_begin14
	.uleb128 Ltmp293-Ltmp292
	.uleb128 Ltmp294-Lfunc_begin14
	.byte	0
	.uleb128 Ltmp289-Lfunc_begin14
	.uleb128 Ltmp290-Ltmp289
	.uleb128 Ltmp291-Lfunc_begin14
	.byte	1
	.uleb128 Ltmp290-Lfunc_begin14
	.uleb128 Lfunc_end14-Ltmp290
	.byte	0
	.byte	0
Lcst_end14:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase12:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN92_$LT$bitmaps..bitmap..Iter$LT$Size$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ad63b512aff0d36E:
	.cfi_startproc
	ldr	x1, [x0, #8]
	cmp	x1, #31
	b.ls	LBB43_2
	mov	x0, #0
	ret
LBB43_2:
	ldr	x8, [x0]
	ldr	w8, [x8]
	add	x9, x1, #1
	str	x9, [x0, #8]
	lsr	w8, w8, w1
	tbz	w8, #0, LBB43_4
	mov	w0, #1
	ret
LBB43_4:
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
	b.eq	LBB44_2
	cmp	w10, #0
	cneg	w10, w10, mi
	subs	w8, w8, w9
	cneg	w8, w8, mi
	sub	w9, w10, #1
	sub	w8, w8, #1
	cmp	w8, w9
	csel	w0, w8, w9, gt
	ret
LBB44_2:
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh110:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.36@PAGE
Lloh111:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.36@PAGEOFF
Lloh112:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.38@PAGE
Lloh113:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.38@PAGEOFF
	mov	w1, #43
	bl	__ZN4core9panicking5panic17hdf8b426f88b5fed0E
	.loh AdrpAdd	Lloh112, Lloh113
	.loh AdrpAdd	Lloh110, Lloh111
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI45_0:
	.quad	0
	.quad	-9223372036854775808
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE:
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception15
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
	tbnz	x9, #63, LBB45_12
	ldr	x9, [x1, #8]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB45_12
	stp	x8, x9, [sp]
	ldp	x8, x9, [x1, #16]
	str	x8, [sp, #16]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB45_12
	ldr	x10, [x1, #32]
	mov	w11, #1
	ldadd	x11, x11, [x10]
	tbnz	x11, #63, LBB45_12
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
	b.ne	LBB45_6
	dmb	ishld
	sub	x0, x29, #64
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB45_6:
	mov	w8, #8
	stp	xzr, x8, [sp, #72]
Lloh114:
	adrp	x8, lCPI45_0@PAGE
Lloh115:
	ldr	q0, [x8, lCPI45_0@PAGEOFF]
	ldr	q1, [sp, #48]
	stur	q0, [sp, #88]
	stur	q1, [sp, #104]
	ldr	x8, [sp, #64]
	stp	x8, x21, [sp, #120]
	str	x20, [sp, #136]
LBB45_7:
Ltmp298:
	sub	x0, x29, #112
	add	x1, sp, #72
	bl	__ZN90_$LT$im..nodes..hamt..Drain$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he35d10560541c8dbE
Ltmp299:
	ldur	w8, [x29, #-112]
	cmp	w8, #1
	b.ne	LBB45_10
	ldp	w2, w3, [x29, #-108]
Ltmp303:
	sub	x0, x29, #112
	sub	x1, x29, #96
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp304:
	b	LBB45_7
LBB45_10:
Ltmp300:
	add	x0, sp, #72
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp301:
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
LBB45_12:
	.cfi_restore_state
	brk	#0x1
LBB45_13:
Ltmp302:
	mov	x19, x0
	b	LBB45_15
LBB45_14:
Ltmp305:
	mov	x19, x0
Ltmp306:
	add	x0, sp, #72
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp307:
LBB45_15:
Ltmp308:
	sub	x0, x29, #96
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp309:
	mov	x0, x19
	bl	__Unwind_Resume
LBB45_17:
Ltmp310:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdr	Lloh114, Lloh115
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table45:
Lexception15:
	.byte	255
	.byte	155
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp298-Lfunc_begin15
	.uleb128 Ltmp304-Ltmp298
	.uleb128 Ltmp305-Lfunc_begin15
	.byte	0
	.uleb128 Ltmp300-Lfunc_begin15
	.uleb128 Ltmp301-Ltmp300
	.uleb128 Ltmp302-Lfunc_begin15
	.byte	0
	.uleb128 Ltmp306-Lfunc_begin15
	.uleb128 Ltmp309-Ltmp306
	.uleb128 Ltmp310-Lfunc_begin15
	.byte	1
	.uleb128 Ltmp309-Lfunc_begin15
	.uleb128 Lfunc_end15-Ltmp309
	.byte	0
	.byte	0
Lcst_end15:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase13:
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
	b.lt	LBB46_15
	ucvtf	s8, w25, #1
	mov	w27, #1
	mov	w28, #8
	ldp	x19, x20, [x0]
Lloh116:
	adrp	x26, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.52@PAGE
Lloh117:
	add	x26, x26, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.52@PAGEOFF
	ldp	x21, x22, [x0, #24]
	fmov	s9, #0.50000000
	fmov	s10, #1.00000000
	mov	x23, x25
	b	LBB46_3
LBB46_2:
Lloh118:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.40@PAGE
Lloh119:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.40@PAGEOFF
	stp	x8, x27, [sp, #16]
	stp	xzr, xzr, [sp, #40]
	str	x28, [sp, #32]
	add	x0, sp, #16
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.le	LBB46_15
LBB46_3:
	mov	w24, #0
	str	w23, [sp, #12]
	sub	w23, w23, #1
	ucvtf	s0, w23
	fadd	s0, s0, s9
	fabd	s11, s0, s8
	b	LBB46_6
LBB46_4:
Lloh120:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.48@PAGE
Lloh121:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.48@PAGEOFF
LBB46_5:
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
	b.eq	LBB46_2
LBB46_6:
	mov	x0, x19
	mov	x1, x20
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB46_9
	mov	x0, x21
	mov	x1, x22
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB46_9
Lloh122:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.50@PAGE
Lloh123:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.50@PAGEOFF
	b	LBB46_5
LBB46_9:
	mov	x0, x19
	mov	x1, x20
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbnz	w0, #0, LBB46_4
	mov	x0, x21
	mov	x1, x22
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB46_12
Lloh124:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.46@PAGE
Lloh125:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.46@PAGEOFF
	b	LBB46_5
LBB46_12:
	ucvtf	s0, w24
	fadd	s0, s0, s9
	fabd	s0, s0, s8
	fcmp	s0, s10
	fccmp	s11, s10, #0, mi
	b.mi	LBB46_14
Lloh126:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.42@PAGE
Lloh127:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.42@PAGEOFF
	b	LBB46_5
LBB46_14:
Lloh128:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.44@PAGE
Lloh129:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.44@PAGEOFF
	b	LBB46_5
LBB46_15:
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
	.loh AdrpAdd	Lloh116, Lloh117
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpAdd	Lloh120, Lloh121
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh128, Lloh129
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
	b.ne	LBB47_8
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
	tbz	w0, #0, LBB47_15
	mov	x19, #-1
	ldaddl	x19, x8, [x20]
	cmp	x8, #1
	b.ne	LBB47_4
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB47_4:
	ldr	x8, [sp, #16]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.ne	LBB47_7
	dmb	ishld
	add	x0, x23, #8
LBB47_6:
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB47_7:
	mov	w0, #2
	b	LBB47_21
LBB47_8:
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
	cbz	w0, LBB47_21
	mov	x0, x25
	mov	x1, x26
	mov	x2, x24
	mov	x3, x23
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB47_20
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
	tbz	w0, #0, LBB47_22
	mov	x19, #-1
	ldaddl	x19, x8, [x23]
	cmp	x8, #1
	b.ne	LBB47_13
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB47_13:
	ldr	x8, [sp, #16]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.ne	LBB47_7
	dmb	ishld
	add	x0, x24, #8
	b	LBB47_6
LBB47_15:
	mov	x21, #-1
	ldaddl	x21, x8, [x20]
	cmp	x8, #1
	b.ne	LBB47_17
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB47_17:
	ldr	x8, [sp, #16]
	ldaddl	x21, x8, [x8]
	cmp	x8, #1
	b.ne	LBB47_19
	dmb	ishld
	add	x0, x23, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB47_19:
	cmp	w24, #0
	mov	w8, #24
	csel	x8, xzr, x8, ne
	add	x8, x19, x8
	ldr	w8, [x8, #16]
	sub	w8, w8, #21
	cmn	w8, #2
	mov	w8, #5
	cinc	w0, w8, le
	b	LBB47_21
LBB47_20:
	mov	w0, #1
LBB47_21:
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
LBB47_22:
	.cfi_restore_state
	mov	x25, #-1
	ldaddl	x25, x8, [x23]
	cmp	x8, #1
	b.ne	LBB47_29
	dmb	ishld
	add	x0, sp, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #16]
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.eq	LBB47_30
LBB47_24:
	tbnz	w21, #31, LBB47_31
LBB47_25:
	ldr	w8, [x19, #48]
	mov	w0, #3
	cmp	w22, w8
	b.ge	LBB47_21
	tbnz	w22, #31, LBB47_21
	cmp	w21, w8
	b.ge	LBB47_21
	mov	x0, x20
	bl	__ZN6quorum5board8Movement3gap17hf79582d8fe7e8e37E
	ldr	w8, [x19, #52]
	mov	w9, #6
	mov	w10, #4
	cmp	w0, w8
	csel	w0, w10, w9, gt
	b	LBB47_21
LBB47_29:
	ldr	x8, [sp, #16]
	ldaddl	x25, x8, [x8]
	cmp	x8, #1
	b.ne	LBB47_24
LBB47_30:
	dmb	ishld
	add	x0, x24, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	tbz	w21, #31, LBB47_25
LBB47_31:
	mov	w0, #3
	b	LBB47_21
	.cfi_endproc

	.p2align	2
__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE:
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception16
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
	b.mi	LBB48_21
	cmp	w24, w21
	b.ge	LBB48_21
	mov	x23, #0
	sub	w25, w20, #1
	mov	w8, #4
	cmp	w25, w21
	b.ge	LBB48_9
	tbnz	w25, #31, LBB48_9
	ldr	x8, [sp, #8]
	cbz	x8, LBB48_6
	mov	w8, #4
	b	LBB48_8
LBB48_6:
Ltmp311:
Lloh130:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh131:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp312:
	ldr	x8, [sp, #16]
LBB48_8:
	stp	w24, w25, [x8]
	mov	w23, #1
	str	x23, [sp, #24]
LBB48_9:
	cmp	w20, w21
	b.ge	LBB48_15
	tbnz	w20, #31, LBB48_15
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_14
Ltmp313:
Lloh132:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh133:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp314:
	ldr	x8, [sp, #16]
LBB48_14:
	add	x9, x8, x23, lsl #3
	stp	w24, w20, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB48_15:
	add	w25, w20, #1
	cmp	w25, w21
	b.ge	LBB48_21
	tbnz	w25, #31, LBB48_21
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_20
Ltmp315:
Lloh134:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh135:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp316:
	ldr	x8, [sp, #16]
LBB48_20:
	add	x9, x8, x23, lsl #3
	stp	w24, w25, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB48_21:
	tbnz	w22, #31, LBB48_35
	cmp	w22, w21
	b.ge	LBB48_35
	sub	w24, w20, #1
	cmp	w24, w21
	b.ge	LBB48_29
	tbnz	w24, #31, LBB48_29
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_28
Ltmp317:
Lloh136:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh137:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp318:
	ldr	x8, [sp, #16]
LBB48_28:
	add	x9, x8, x23, lsl #3
	stp	w22, w24, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB48_29:
	add	w24, w20, #1
	cmp	w24, w21
	b.ge	LBB48_35
	tbnz	w24, #31, LBB48_35
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_34
Ltmp319:
Lloh138:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh139:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp320:
	ldr	x8, [sp, #16]
LBB48_34:
	add	x9, x8, x23, lsl #3
	stp	w22, w24, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB48_35:
	adds	w22, w22, #1
	b.mi	LBB48_55
	cmp	w22, w21
	b.ge	LBB48_55
	sub	w24, w20, #1
	cmp	w24, w21
	b.ge	LBB48_43
	tbnz	w24, #31, LBB48_43
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_42
Ltmp321:
Lloh140:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh141:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp322:
	ldr	x8, [sp, #16]
LBB48_42:
	add	x9, x8, x23, lsl #3
	stp	w22, w24, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB48_43:
	cmp	w20, w21
	b.ge	LBB48_49
	tbnz	w20, #31, LBB48_49
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_48
Ltmp323:
Lloh142:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh143:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp324:
	ldr	x8, [sp, #16]
LBB48_48:
	add	x9, x8, x23, lsl #3
	stp	w22, w20, [x9]
	add	x23, x23, #1
	str	x23, [sp, #24]
LBB48_49:
	add	w20, w20, #1
	cmp	w20, w21
	b.ge	LBB48_55
	tbnz	w20, #31, LBB48_55
	ldr	x9, [sp, #8]
	cmp	x23, x9
	b.ne	LBB48_54
Ltmp325:
Lloh144:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGE
Lloh145:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.53@PAGEOFF
	add	x0, sp, #8
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp326:
	ldr	x8, [sp, #16]
LBB48_54:
	add	x8, x8, x23, lsl #3
	stp	w22, w20, [x8]
	add	x8, x23, #1
	str	x8, [sp, #24]
LBB48_55:
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
LBB48_56:
	.cfi_restore_state
Ltmp327:
	mov	x19, x0
	ldr	x8, [sp, #8]
	cbz	x8, LBB48_58
	ldr	x0, [sp, #16]
	lsl	x1, x8, #3
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB48_58:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh136, Lloh137
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh144, Lloh145
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table48:
Lexception16:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp311-Lfunc_begin16
	.uleb128 Ltmp326-Ltmp311
	.uleb128 Ltmp327-Lfunc_begin16
	.byte	0
	.uleb128 Ltmp326-Lfunc_begin16
	.uleb128 Lfunc_end16-Ltmp326
	.byte	0
	.byte	0
Lcst_end16:
	.p2align	2, 0x0

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI49_0:
	.quad	0
	.quad	-9223372036854775808
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E:
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception17
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
Lloh146:
	adrp	x24, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh147:
	ldr	x24, [x24, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x24]
	mov	w0, #168
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB49_41
	add	x8, x19, #16
	add	x9, x19, #528
	mov	w10, #7
	stp	x10, x0, [sp, #16]
	stp	xzr, x9, [sp, #32]
	stp	xzr, x8, [sp, #48]
	str	x22, [sp, #64]
	str	xzr, [sp, #80]
Ltmp328:
	add	x0, sp, #16
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
Ltmp329:
	cbz	x0, LBB49_37
	ldp	w19, w20, [x0]
	ldr	x8, [sp, #16]
	cbz	x8, LBB49_5
	ldr	x0, [sp, #24]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB49_5:
	ldrb	wzr, [x24]
	mov	w0, #8
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB49_38
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
	cbz	x0, LBB49_39
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
Ltmp330:
	add	x0, sp, #128
	add	x1, sp, #16
	bl	__ZN4core4iter6traits8iterator8Iterator7collect17h09f34a15da24f7f9E
Ltmp331:
	ldr	x8, [sp, #144]
	cbz	x8, LBB49_27
	add	x25, sp, #16
	mov	x26, #-1
	mov	w27, #8
Lloh148:
	adrp	x8, lCPI49_0@PAGE
Lloh149:
	ldr	q0, [x8, lCPI49_0@PAGEOFF]
	str	q0, [sp]
LBB49_10:
Ltmp332:
	sub	x0, x29, #144
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp333:
	ldr	q0, [sp, #128]
	str	q0, [sp, #16]
	ldr	x19, [sp, #144]
	str	x19, [sp, #32]
	ldp	x8, x20, [sp, #16]
	ldaddl	x26, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_13
	dmb	ishld
	add	x0, sp, #16
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB49_13:
	stp	xzr, x27, [sp, #16]
	ldr	q0, [sp]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-120]
	stur	q0, [x25, #32]
	ldur	x8, [x29, #-104]
	stur	x8, [x25, #48]
	stp	x20, x19, [sp, #72]
LBB49_14:
Ltmp337:
	sub	x0, x29, #96
	add	x1, sp, #16
	bl	__ZN90_$LT$im..nodes..hamt..Drain$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he35d10560541c8dbE
Ltmp338:
	ldur	w8, [x29, #-96]
	cmp	w8, #1
	b.ne	LBB49_25
	ldp	w21, w19, [x29, #-92]
	ldp	x0, x1, [x23]
	mov	x2, x21
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB49_14
	ldp	x0, x1, [sp, #104]
	mov	x2, x21
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbnz	w0, #0, LBB49_14
Ltmp342:
	sub	x0, x29, #96
	add	x1, sp, #104
	mov	x2, x21
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp343:
	ldrb	wzr, [x24]
	mov	w0, #32
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB49_36
	mov	x20, x0
	add	w2, w21, #1
	sub	w8, w21, #1
	add	w9, w19, #1
	stp	w2, w19, [x0]
	sub	w10, w19, #1
	stp	w8, w19, [x0, #8]
	stp	w21, w9, [x0, #16]
	stp	w21, w10, [x0, #24]
Ltmp345:
	sub	x0, x29, #96
	sub	x1, x29, #144
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp346:
	ldp	w2, w3, [x20, #8]
Ltmp347:
	sub	x0, x29, #96
	sub	x1, x29, #144
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp348:
	ldp	w2, w3, [x20, #16]
Ltmp349:
	sub	x0, x29, #96
	sub	x1, x29, #144
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp350:
	ldp	w2, w3, [x20, #24]
Ltmp351:
	sub	x0, x29, #96
	sub	x1, x29, #144
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp352:
	mov	x0, x20
	mov	w1, #32
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB49_14
LBB49_25:
Ltmp339:
	add	x0, sp, #16
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp340:
	ldur	q0, [x29, #-144]
	str	q0, [sp, #128]
	ldur	x8, [x29, #-128]
	str	x8, [sp, #144]
	cbnz	x8, LBB49_10
LBB49_27:
	ldur	q0, [sp, #104]
	str	q0, [sp, #16]
	ldp	x9, x8, [sp, #120]
	str	x9, [sp, #32]
	mov	x19, #-1
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.eq	LBB49_33
	ldr	x8, [sp, #136]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.eq	LBB49_34
LBB49_29:
	ldr	x19, [sp, #32]
	ldr	x8, [sp, #16]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.eq	LBB49_35
LBB49_30:
	ldr	x8, [sp, #24]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_32
LBB49_31:
	add	x8, sp, #16
	dmb	ishld
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
LBB49_32:
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
LBB49_33:
	.cfi_restore_state
	dmb	ishld
	add	x0, sp, #128
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #136]
	ldaddl	x19, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_29
LBB49_34:
	add	x8, sp, #128
	dmb	ishld
	orr	x0, x8, #0x8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
	ldr	x19, [sp, #32]
	ldr	x8, [sp, #16]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_30
LBB49_35:
	dmb	ishld
	add	x0, sp, #16
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
	ldr	x8, [sp, #24]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.eq	LBB49_31
	b	LBB49_32
LBB49_36:
Ltmp354:
	mov	w0, #4
	mov	w1, #32
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp355:
	b	LBB49_40
LBB49_37:
Ltmp367:
Lloh150:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.55@PAGE
Lloh151:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.55@PAGEOFF
	bl	__ZN4core6option13unwrap_failed17hee0a0365f557b127E
Ltmp368:
	b	LBB49_40
LBB49_38:
	mov	w0, #4
	mov	w1, #8
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
LBB49_39:
Ltmp361:
	mov	w0, #4
	mov	w1, #32
	bl	__ZN5alloc5alloc18handle_alloc_error17h7fdce18735b16205E
Ltmp362:
LBB49_40:
	brk	#0x1
LBB49_41:
Lloh152:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGE
Lloh153:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGEOFF
	mov	w0, #8
	mov	w1, #168
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
LBB49_42:
Ltmp341:
	mov	x19, x0
	b	LBB49_52
LBB49_43:
Ltmp334:
	mov	x19, x0
Ltmp335:
	add	x0, sp, #128
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp336:
	b	LBB49_56
LBB49_44:
Ltmp363:
	mov	x19, x0
	b	LBB49_56
LBB49_45:
Ltmp369:
	mov	x19, x0
	ldr	x8, [sp, #16]
	cbz	x8, LBB49_60
	ldr	x0, [sp, #24]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x0, x19
	bl	__Unwind_Resume
LBB49_47:
Ltmp353:
	mov	x19, x0
	mov	x0, x20
	mov	w1, #32
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB49_51
LBB49_48:
Ltmp344:
	b	LBB49_50
LBB49_49:
Ltmp356:
LBB49_50:
	mov	x19, x0
LBB49_51:
Ltmp357:
	add	x0, sp, #16
	bl	__ZN4core3ptr74drop_in_place$LT$im..hash..set..ConsumingIter$LT$$LP$i32$C$i32$RP$$GT$$GT$17hefaf5d10e2736a59E
Ltmp358:
LBB49_52:
	ldur	x8, [x29, #-144]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_54
	dmb	ishld
	sub	x0, x29, #144
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB49_54:
	ldur	x8, [x29, #-136]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_56
	sub	x8, x29, #144
	dmb	ishld
Ltmp359:
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp360:
LBB49_56:
	ldr	x8, [sp, #104]
	mov	x20, #-1
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_58
	dmb	ishld
	add	x0, sp, #104
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB49_58:
	ldr	x8, [sp, #112]
	ldaddl	x20, x8, [x8]
	cmp	x8, #1
	b.ne	LBB49_60
	add	x8, sp, #104
	dmb	ishld
Ltmp364:
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp365:
LBB49_60:
	mov	x0, x19
	bl	__Unwind_Resume
LBB49_61:
Ltmp366:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdrGot	Lloh146, Lloh147
	.loh AdrpLdr	Lloh148, Lloh149
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh152, Lloh153
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table49:
Lexception17:
	.byte	255
	.byte	155
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp328-Lfunc_begin17
	.uleb128 Ltmp329-Ltmp328
	.uleb128 Ltmp369-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp329-Lfunc_begin17
	.uleb128 Ltmp330-Ltmp329
	.byte	0
	.byte	0
	.uleb128 Ltmp330-Lfunc_begin17
	.uleb128 Ltmp331-Ltmp330
	.uleb128 Ltmp363-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp332-Lfunc_begin17
	.uleb128 Ltmp333-Ltmp332
	.uleb128 Ltmp334-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp337-Lfunc_begin17
	.uleb128 Ltmp343-Ltmp337
	.uleb128 Ltmp344-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp345-Lfunc_begin17
	.uleb128 Ltmp352-Ltmp345
	.uleb128 Ltmp353-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp339-Lfunc_begin17
	.uleb128 Ltmp340-Ltmp339
	.uleb128 Ltmp341-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp340-Lfunc_begin17
	.uleb128 Ltmp354-Ltmp340
	.byte	0
	.byte	0
	.uleb128 Ltmp354-Lfunc_begin17
	.uleb128 Ltmp355-Ltmp354
	.uleb128 Ltmp356-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp367-Lfunc_begin17
	.uleb128 Ltmp368-Ltmp367
	.uleb128 Ltmp369-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp368-Lfunc_begin17
	.uleb128 Ltmp361-Ltmp368
	.byte	0
	.byte	0
	.uleb128 Ltmp361-Lfunc_begin17
	.uleb128 Ltmp362-Ltmp361
	.uleb128 Ltmp363-Lfunc_begin17
	.byte	0
	.uleb128 Ltmp362-Lfunc_begin17
	.uleb128 Ltmp335-Ltmp362
	.byte	0
	.byte	0
	.uleb128 Ltmp335-Lfunc_begin17
	.uleb128 Ltmp336-Ltmp335
	.uleb128 Ltmp366-Lfunc_begin17
	.byte	1
	.uleb128 Ltmp336-Lfunc_begin17
	.uleb128 Ltmp357-Ltmp336
	.byte	0
	.byte	0
	.uleb128 Ltmp357-Lfunc_begin17
	.uleb128 Ltmp365-Ltmp357
	.uleb128 Ltmp366-Lfunc_begin17
	.byte	1
	.uleb128 Ltmp365-Lfunc_begin17
	.uleb128 Lfunc_end17-Ltmp365
	.byte	0
	.byte	0
Lcst_end17:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase14:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE:
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception18
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
	b.ne	LBB50_66
	ldr	d0, [x20, #48]
	str	q0, [sp, #96]
	ldr	x8, [x20]
	mov	w9, #1
	ldadd	x9, x9, [x8]
	tbnz	x9, #63, LBB50_67
	ldr	x9, [x20, #8]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB50_67
	mov	x19, x20
	ldr	x10, [x19, #24]!
	ldur	x11, [x19, #-8]
	mov	w12, #1
	ldadd	x12, x12, [x10]
	tbnz	x12, #63, LBB50_67
	ldr	x12, [x20, #32]
	mov	w13, #1
	ldadd	x13, x13, [x12]
	tbnz	x13, #63, LBB50_67
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
	b.ne	LBB50_7
	ldrb	w9, [x22, #8]
	ldp	w2, w3, [x22]
	cmp	w9, #0
	csel	x1, x8, x23, ne
Ltmp408:
	sub	x0, x29, #112
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp409:
	b	LBB50_65
LBB50_7:
	mov	x11, x9
	ldp	w25, w26, [x22]
	ldp	w8, w9, [x22, #8]
	sub	w10, w8, w25
	add	w24, w10, w8
	sub	w8, w9, w26
	add	w27, w8, w9
	str	w11, [sp, #36]
	tbz	w11, #0, LBB50_9
	add	x22, sp, #120
Ltmp372:
	sub	x0, x29, #112
	add	x1, sp, #120
	mov	x2, x24
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp373:
	b	LBB50_10
LBB50_9:
Ltmp370:
	sub	x0, x29, #112
	mov	x1, x23
	mov	x2, x24
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp371:
	mov	x22, x23
LBB50_10:
Ltmp374:
	sub	x0, x29, #112
	mov	x1, x22
	mov	x2, x25
	mov	x3, x26
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp375:
	mov	w8, #4
	stp	xzr, x8, [x29, #-136]
	stur	xzr, [x29, #-120]
	ldr	q0, [sp, #96]
	fmov	w1, s0
Ltmp376:
	sub	x0, x29, #112
	str	w1, [sp, #60]
	mov	x2, x24
	mov	x3, x27
	bl	__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE
Ltmp377:
	str	w27, [sp, #64]
	str	w24, [sp, #88]
	str	x23, [sp, #24]
	str	x21, [sp]
	ldp	x8, x25, [x29, #-112]
	str	x8, [sp, #40]
	ldur	x8, [x29, #-96]
	cbz	x8, LBB50_21
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
	b	LBB50_16
LBB50_14:
	ldr	x8, [sp, #48]
	ldr	q0, [sp, #96]
	str	d0, [x8, x21, lsl #3]
	add	x21, x21, #1
	stur	x21, [x29, #-120]
LBB50_15:
	add	x22, x22, #8
	cmp	x24, x22
	b.eq	LBB50_22
LBB50_16:
	ldr	d0, [x25, x22]
	fmov	w28, s0
	str	q0, [sp, #96]
	mov.s	w19, v0[1]
	mov	x0, x26
	mov	x1, x27
	mov	x2, x28
	mov	x3, x19
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	tbz	w0, #0, LBB50_15
	ldr	w9, [sp, #64]
	sub	w8, w19, w9
	add	w3, w9, w8, lsl #1
	ldr	w9, [sp, #88]
	sub	w8, w28, w9
	add	w2, w9, w8, lsl #1
	ldp	x0, x1, [x23]
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB50_15
	ldur	x8, [x29, #-136]
	cmp	x21, x8
	b.ne	LBB50_14
Ltmp379:
	sub	x0, x29, #136
Lloh154:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.56@PAGE
Lloh155:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.56@PAGEOFF
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp380:
	ldur	x8, [x29, #-128]
	str	x8, [sp, #48]
	b	LBB50_14
LBB50_21:
	mov	x21, #0
LBB50_22:
	ldr	x8, [sp, #40]
	cbz	x8, LBB50_24
	lsl	x1, x8, #3
	mov	x0, x25
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_24:
	ldp	x22, x25, [x29, #-136]
	ldr	x23, [sp, #24]
	cbz	x21, LBB50_34
	add	x19, x25, x21, lsl #3
	ldr	w8, [sp, #36]
	tbz	w8, #0, LBB50_30
	mov	x21, x25
LBB50_27:
	ldp	w26, w27, [x21]
Ltmp387:
	sub	x0, x29, #112
	mov	x1, x23
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp388:
Ltmp389:
	sub	x0, x29, #112
	add	x1, sp, #120
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp390:
	add	x21, x21, #8
	cmp	x21, x19
	b.ne	LBB50_27
	b	LBB50_34
LBB50_30:
	mov	x21, x25
LBB50_31:
	ldp	w26, w27, [x21]
Ltmp382:
	sub	x0, x29, #112
	add	x1, sp, #120
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp383:
Ltmp384:
	sub	x0, x29, #112
	mov	x1, x23
	mov	x2, x26
	mov	x3, x27
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp385:
	add	x21, x21, #8
	cmp	x21, x19
	b.ne	LBB50_31
LBB50_34:
	cbz	x22, LBB50_36
	lsl	x1, x22, #3
	mov	x0, x25
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_36:
	mov	w8, #4
	stp	xzr, x8, [x29, #-136]
	stur	xzr, [x29, #-120]
Ltmp392:
	sub	x0, x29, #112
	ldp	w1, w3, [sp, #60]
	ldr	w2, [sp, #88]
	bl	__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE
Ltmp393:
	ldp	x9, x8, [x29, #-112]
	stp	x9, x8, [sp, #8]
	ldur	x8, [x29, #-96]
	cbz	x8, LBB50_57
	ldr	x22, [sp, #16]
	add	x9, x22, x8, lsl #3
	ldr	w8, [sp, #36]
	tst	w8, #0x1
	mov	w8, #24
	csel	x8, x8, xzr, ne
	add	x8, x20, x8
	stp	x8, x9, [sp, #40]
	mov	x23, #-1
	b	LBB50_41
LBB50_39:
	ldur	x8, [x29, #-128]
	ldr	q0, [sp, #64]
	str	d0, [x8, x19, lsl #3]
	add	x8, x19, #1
	stur	x8, [x29, #-120]
LBB50_40:
	ldr	x8, [sp, #48]
	cmp	x22, x8
	b.eq	LBB50_57
LBB50_41:
	ldr	d0, [x22], #8
	fmov	w25, s0
	str	q0, [sp, #64]
	mov.s	w26, v0[1]
Ltmp395:
	sub	x0, x29, #112
	ldr	w1, [sp, #60]
	mov	x2, x25
	mov	x3, x26
	bl	__ZN6quorum5board5Board12neighborhood17hbfce33c45cda514dE
Ltmp396:
	ldp	x8, x21, [x29, #-112]
	stp	x21, x8, [sp, #88]
	ldur	x8, [x29, #-96]
	lsl	x27, x8, #3
	b	LBB50_44
LBB50_43:
	add	x21, x21, #8
	sub	x27, x27, #8
	tbz	w28, #0, LBB50_55
LBB50_44:
	cbz	x27, LBB50_50
	ldp	w28, w24, [x21]
Ltmp397:
	sub	x0, x29, #112
	mov	x1, x20
	bl	__ZN6quorum5board5Board10all_pieces17h22148755c81d9e6bE
Ltmp398:
	ldp	x19, x1, [x29, #-112]
	mov	x0, x19
	mov	x2, x28
	mov	x3, x24
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	mov	x28, x0
	ldaddl	x23, x8, [x19]
	cmp	x8, #1
	b.ne	LBB50_48
	dmb	ishld
	sub	x0, x29, #112
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3a3e11e573d33d33E
LBB50_48:
	ldur	x8, [x29, #-104]
	ldaddl	x23, x8, [x8]
	cmp	x8, #1
	b.ne	LBB50_43
	dmb	ishld
Ltmp399:
	sub	x8, x29, #112
	add	x0, x8, #8
	bl	__ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h451090a26c422cb1E
Ltmp400:
	b	LBB50_43
LBB50_50:
	ldr	x8, [sp, #96]
	cbz	x8, LBB50_52
	lsl	x1, x8, #3
	ldr	x0, [sp, #88]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_52:
	ldr	x8, [sp, #40]
	ldp	x0, x1, [x8]
	mov	x2, x25
	mov	x3, x26
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$8contains17h390206ee6429bdd4E
	cbz	w0, LBB50_40
	ldur	x19, [x29, #-120]
	ldur	x8, [x29, #-136]
	cmp	x19, x8
	b.ne	LBB50_39
Ltmp402:
	sub	x0, x29, #136
Lloh156:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.57@PAGE
Lloh157:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.57@PAGEOFF
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h882ab9d63c9012dbE
Ltmp403:
	b	LBB50_39
LBB50_55:
	ldr	x8, [sp, #96]
	cbz	x8, LBB50_40
	lsl	x1, x8, #3
	ldr	x0, [sp, #88]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB50_40
LBB50_57:
	ldr	x8, [sp, #8]
	cbz	x8, LBB50_59
	lsl	x1, x8, #3
	ldr	x0, [sp, #16]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_59:
	ldp	x22, x20, [x29, #-136]
	ldur	x8, [x29, #-120]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #36]
	cbz	x8, LBB50_63
	add	x19, x20, x8, lsl #3
	tst	w10, #0x1
	add	x8, sp, #120
	csel	x21, x9, x8, ne
	mov	x23, x20
LBB50_61:
	ldp	w2, w3, [x23]
Ltmp405:
	sub	x0, x29, #112
	mov	x1, x21
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6remove17h7a5d2f856a231e67E
Ltmp406:
	add	x23, x23, #8
	cmp	x23, x19
	b.ne	LBB50_61
LBB50_63:
	ldr	x21, [sp]
	cbz	x22, LBB50_65
	lsl	x1, x22, #3
	mov	x0, x20
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_65:
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
LBB50_66:
	.cfi_restore_state
	str	xzr, [sp, #120]
	sub	x0, x29, #112
	add	x1, sp, #120
	bl	__ZN4core9panicking13assert_failed17h904ffb82e0b54c04E
LBB50_67:
	brk	#0x1
LBB50_68:
Ltmp394:
	b	LBB50_70
LBB50_69:
Ltmp378:
LBB50_70:
	mov	x19, x0
	b	LBB50_86
LBB50_71:
Ltmp381:
	mov	x19, x0
	ldr	x8, [sp, #40]
	cbz	x8, LBB50_86
	ldr	x8, [sp, #40]
	lsl	x1, x8, #3
	mov	x0, x25
	b	LBB50_85
LBB50_73:
Ltmp410:
	mov	x19, x0
	b	LBB50_89
LBB50_74:
Ltmp407:
	mov	x19, x0
	cbz	x22, LBB50_89
	lsl	x1, x22, #3
	mov	x0, x20
	b	LBB50_88
LBB50_76:
Ltmp386:
	b	LBB50_78
LBB50_77:
Ltmp391:
LBB50_78:
	mov	x19, x0
	cbz	x22, LBB50_89
	lsl	x1, x22, #3
	mov	x0, x25
	b	LBB50_88
LBB50_80:
Ltmp404:
	mov	x19, x0
	b	LBB50_83
LBB50_81:
Ltmp401:
	mov	x19, x0
	ldr	x8, [sp, #96]
	cbz	x8, LBB50_83
	lsl	x1, x8, #3
	ldr	x0, [sp, #88]
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_83:
	ldr	x8, [sp, #8]
	cbz	x8, LBB50_86
	lsl	x1, x8, #3
	ldr	x0, [sp, #16]
LBB50_85:
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_86:
	ldur	x8, [x29, #-136]
	cbz	x8, LBB50_89
	ldur	x0, [x29, #-128]
	lsl	x1, x8, #3
LBB50_88:
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB50_89:
Ltmp411:
	add	x0, sp, #120
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp412:
	mov	x0, x19
	bl	__Unwind_Resume
LBB50_91:
Ltmp413:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh156, Lloh157
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table50:
Lexception18:
	.byte	255
	.byte	155
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Lfunc_begin18-Lfunc_begin18
	.uleb128 Ltmp408-Lfunc_begin18
	.byte	0
	.byte	0
	.uleb128 Ltmp408-Lfunc_begin18
	.uleb128 Ltmp375-Ltmp408
	.uleb128 Ltmp410-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp376-Lfunc_begin18
	.uleb128 Ltmp377-Ltmp376
	.uleb128 Ltmp378-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp379-Lfunc_begin18
	.uleb128 Ltmp380-Ltmp379
	.uleb128 Ltmp381-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp387-Lfunc_begin18
	.uleb128 Ltmp390-Ltmp387
	.uleb128 Ltmp391-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp382-Lfunc_begin18
	.uleb128 Ltmp385-Ltmp382
	.uleb128 Ltmp386-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp392-Lfunc_begin18
	.uleb128 Ltmp393-Ltmp392
	.uleb128 Ltmp394-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp395-Lfunc_begin18
	.uleb128 Ltmp396-Ltmp395
	.uleb128 Ltmp404-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp397-Lfunc_begin18
	.uleb128 Ltmp400-Ltmp397
	.uleb128 Ltmp401-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp402-Lfunc_begin18
	.uleb128 Ltmp403-Ltmp402
	.uleb128 Ltmp404-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp405-Lfunc_begin18
	.uleb128 Ltmp406-Ltmp405
	.uleb128 Ltmp407-Lfunc_begin18
	.byte	0
	.uleb128 Ltmp406-Lfunc_begin18
	.uleb128 Ltmp411-Ltmp406
	.byte	0
	.byte	0
	.uleb128 Ltmp411-Lfunc_begin18
	.uleb128 Ltmp412-Ltmp411
	.uleb128 Ltmp413-Lfunc_begin18
	.byte	1
	.uleb128 Ltmp412-Lfunc_begin18
	.uleb128 Lfunc_end18-Ltmp412
	.byte	0
	.byte	0
Lcst_end18:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase15:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
lCPI51_0:
	.long	9
	.long	2
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN6quorum4main17h9b8fc0a39626f413E:
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception19
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
	sub	sp, sp, #576
	add	x0, sp, #272
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp414:
	sub	x0, x29, #240
	bl	__ZN78_$LT$im..hash..set..HashSet$LT$A$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0e718fcba6ba7388E
Ltmp415:
Ltmp417:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #0
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp418:
Ltmp419:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #0
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp420:
Ltmp421:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #0
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp422:
Ltmp423:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #0
	mov	w3, #3
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp424:
Ltmp425:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #0
	mov	w3, #5
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp426:
Ltmp427:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #0
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp428:
Ltmp429:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #0
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp430:
Ltmp431:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #0
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp432:
Ltmp433:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #1
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp434:
Ltmp435:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #1
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp436:
Ltmp437:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #1
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp438:
Ltmp439:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #1
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp440:
Ltmp441:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #1
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp442:
Ltmp443:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #1
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp444:
Ltmp445:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #2
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp446:
Ltmp447:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #2
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp448:
Ltmp449:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #2
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp450:
Ltmp451:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #2
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp452:
Ltmp453:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #3
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp454:
Ltmp455:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #3
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp456:
Ltmp457:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #5
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp458:
Ltmp459:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #5
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp460:
Ltmp461:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #6
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp462:
Ltmp463:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #6
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp464:
Ltmp465:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #6
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp466:
Ltmp467:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #6
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp468:
Ltmp469:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #7
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp470:
Ltmp471:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #7
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp472:
Ltmp473:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #7
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp474:
Ltmp475:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #7
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp476:
Ltmp477:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #7
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp478:
Ltmp479:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #7
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp480:
Ltmp481:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #8
	mov	w3, #0
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp482:
Ltmp483:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #8
	mov	w3, #1
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp484:
Ltmp485:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #8
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp486:
Ltmp487:
	add	x0, sp, #128
	add	x1, sp, #272
	mov	w2, #8
	mov	w3, #3
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp488:
Ltmp489:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #8
	mov	w3, #5
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp490:
Ltmp491:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #8
	mov	w3, #6
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp492:
Ltmp493:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #8
	mov	w3, #7
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp494:
Ltmp495:
	add	x0, sp, #128
	sub	x1, x29, #240
	mov	w2, #8
	mov	w3, #8
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp496:
	ldur	q0, [x29, #-240]
	str	q0, [sp, #64]
	ldur	x8, [x29, #-224]
	str	x8, [sp, #80]
	ldr	q0, [sp, #272]
	stur	q0, [sp, #88]
	ldr	x8, [sp, #288]
	str	x8, [sp, #104]
Lloh158:
	adrp	x8, lCPI51_0@PAGE
Lloh159:
	ldr	d0, [x8, lCPI51_0@PAGEOFF]
	str	d0, [sp, #112]
	mov	w8, #1
	strb	w8, [sp, #120]
Ltmp503:
	sub	x0, x29, #240
	add	x1, sp, #64
	mov	w2, #2
	mov	w3, #2
	bl	__ZN2im4hash3set20HashSet$LT$A$C$S$GT$6insert17h18d9167394013b2fE
Ltmp504:
Ltmp505:
	add	x0, sp, #64
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp506:
	ldr	d0, [sp, #112]
	ldr	x8, [sp, #64]
	mov	w9, #1
	ldadd	x9, x9, [x8]
	tbnz	x9, #63, LBB51_142
	ldr	x9, [sp, #72]
	mov	w10, #1
	ldadd	x10, x10, [x9]
	tbnz	x10, #63, LBB51_142
	ldp	x10, x11, [sp, #80]
	mov	w12, #1
	ldadd	x12, x12, [x11]
	tbnz	x12, #63, LBB51_142
	ldr	x12, [sp, #96]
	mov	w13, #1
	ldadd	x13, x13, [x12]
	tbnz	x13, #63, LBB51_142
	ldr	x13, [sp, #104]
	ldrb	w14, [sp, #120]
	add	x22, sp, #128
	add	x15, x22, #52
	str	d0, [sp, #176]
	stp	x8, x9, [sp, #128]
	stp	x10, x11, [sp, #144]
	stp	x12, x13, [sp, #160]
	add	x8, x22, #56
	stp	x8, x15, [sp]
	strb	w14, [sp, #184]
	add	x27, sp, #384
	add	x8, sp, #272
	orr	x9, x8, #0x4
	mov	w8, #4
	stp	x8, x9, [sp, #16]
	str	wzr, [sp, #204]
LBB51_48:
Ltmp507:
	add	x0, sp, #128
	mov	w1, #0
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp508:
	tbnz	w0, #0, LBB51_127
Ltmp509:
	add	x0, sp, #128
	mov	w1, #1
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp510:
	tbnz	w0, #0, LBB51_127
	ldrb	w20, [sp, #184]
	mov	w8, #4
	stp	xzr, x8, [sp, #248]
	str	xzr, [sp, #264]
	ldr	x19, [sp, #136]
	ldr	x23, [sp, #160]
	cmp	w20, #0
	mov	w8, #40
	mov	w9, #16
	csel	x8, x9, x8, ne
	ldr	x22, [x22, x8]
Lloh160:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh161:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #168
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_137
	mov	x21, #0
	cmp	w20, #0
	csel	x8, x19, x23, ne
	mov	w9, #7
	stp	x9, x0, [sp, #272]
	add	x23, x8, #16
	add	x24, x8, #528
	stp	xzr, x24, [sp, #288]
	stp	xzr, x23, [sp, #304]
	str	x22, [sp, #320]
	str	xzr, [sp, #336]
	mov	w25, #4
LBB51_54:
Ltmp512:
	add	x0, sp, #272
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
Ltmp513:
	cbz	x0, LBB51_68
	ldr	w26, [x0, #4]
	ldr	d0, [x0]
	str	q0, [sp, #48]
Lloh162:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh163:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #168
	mov	w1, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_134
	mov	w8, #7
	stp	x8, x0, [x29, #-240]
	stp	xzr, x24, [x29, #-224]
	stp	xzr, x23, [x29, #-208]
	ldr	q0, [sp, #48]
	fmov	w28, s0
	stur	x22, [x29, #-192]
	stur	xzr, [x29, #-176]
LBB51_58:
Ltmp515:
	sub	x0, x29, #240
	bl	__ZN89_$LT$im..nodes..hamt..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd90b992d867297b8E
Ltmp516:
	cbz	x0, LBB51_66
	ldr	w19, [x0, #4]
	ldr	d1, [x0]
	ldr	q0, [sp, #48]
	str	q1, [sp, #32]
	mov.d	v0[1], v1[0]
	str	q0, [sp, #384]
	strb	w20, [sp, #400]
	ldrh	w8, [sp, #236]
	sturh	w8, [x27, #17]
	ldrb	w8, [sp, #238]
	sturb	w8, [x27, #19]
Ltmp517:
	add	x0, sp, #128
	add	x1, sp, #384
	bl	__ZN6quorum5board5Board10valid_move17h8ac4676edb7a5c81E
Ltmp518:
	and	w8, w0, #0xff
	cmp	w8, #6
	b.ne	LBB51_58
	ldr	x8, [sp, #248]
	cmp	x21, x8
	b.ne	LBB51_65
Ltmp520:
	add	x0, sp, #248
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h313df9b53e681ef5E
Ltmp521:
	ldr	x25, [sp, #256]
LBB51_65:
	mov	w8, #20
	madd	x8, x21, x8, x25
	stp	w28, w26, [x8]
	ldr	q0, [sp, #32]
	str	s0, [x8, #8]
	str	w19, [x8, #12]
	strb	w20, [x8, #16]
	ldrb	w9, [sp, #238]
	ldrh	w10, [sp, #236]
	sturh	w10, [x8, #17]
	strb	w9, [x8, #19]
	add	x21, x21, #1
	str	x21, [sp, #264]
	b	LBB51_58
LBB51_66:
	ldur	x8, [x29, #-240]
	cbz	x8, LBB51_54
	ldur	x0, [x29, #-232]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB51_54
LBB51_68:
	ldr	x8, [sp, #272]
	cbz	x8, LBB51_70
	ldr	x0, [sp, #280]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_70:
	ldr	w8, [sp, #176]
	ldp	x9, x10, [sp, #248]
	mov	w11, #20
	madd	x11, x21, x11, x10
	add	x13, sp, #210
	ldur	x12, [x13, #26]
	ldr	x14, [sp, #24]
	str	x12, [x14]
	ldr	w12, [sp, #244]
	str	w12, [x14, #8]
	str	wzr, [sp, #272]
	str	wzr, [sp, #288]
	ldr	x12, [sp, #224]
	add	x14, sp, #272
	stur	x12, [x14, #20]
	ldr	w12, [sp, #232]
	stur	w12, [x14, #28]
	add	x22, sp, #128
	str	x22, [sp, #304]
	str	wzr, [sp, #312]
	str	w8, [sp, #316]
	str	x22, [sp, #320]
	strb	w20, [sp, #328]
	ldur	w8, [x13, #7]
	ldur	w12, [x13, #10]
	stur	w12, [x14, #60]
	stur	w8, [x14, #57]
	strb	w20, [sp, #336]
	ldr	w8, [x13]
	add	x28, sp, #210
	ldur	w12, [x13, #3]
	stur	w12, [x14, #68]
	stur	w8, [x14, #65]
	stp	x10, x10, [sp, #344]
	stp	x9, x11, [sp, #360]
	str	x22, [sp, #376]
Ltmp526:
	add	x0, sp, #384
	add	x1, sp, #272
	bl	__ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde31dda6ceb1b885E
Ltmp527:
	ldrb	w8, [sp, #400]
	cmp	w8, #3
	b.ne	LBB51_75
	mov	x21, #0
	ldr	x0, [sp, #344]
	cbz	x0, LBB51_113
	ldr	x8, [sp, #360]
	mov	w20, #4
	mov	x26, x21
	cbz	x8, LBB51_114
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	mov	x21, #0
	mov	x26, #0
	mov	w20, #4
	b	LBB51_114
LBB51_75:
	ldr	x21, [sp, #344]
	ldr	w8, [sp, #272]
	cmp	w8, #2
	cbz	x21, LBB51_80
	b.eq	LBB51_88
	tbz	w8, #0, LBB51_82
LBB51_78:
	ldrsw	x8, [sp, #276]
	ldrsw	x9, [sp, #280]
	sub	x10, x9, x8
	cmp	w8, w9
	csel	x8, x10, xzr, lt
	ldr	w9, [sp, #288]
	cmp	w9, #1
	b.eq	LBB51_83
LBB51_79:
	mov	x9, #0
	ldr	x10, [sp, #304]
	cbnz	x10, LBB51_84
	b	LBB51_86
LBB51_80:
	b.eq	LBB51_88
	tbnz	w8, #0, LBB51_78
LBB51_82:
	mov	x8, #0
	ldr	w9, [sp, #288]
	cmp	w9, #1
	b.ne	LBB51_79
LBB51_83:
	ldrsw	x9, [sp, #292]
	ldrsw	x10, [sp, #296]
	sub	x11, x10, x9
	cmp	w9, w10
	csel	x9, x11, xzr, lt
	ldr	x10, [sp, #304]
	cbz	x10, LBB51_86
LBB51_84:
	ldr	w10, [sp, #312]
	ldr	w11, [sp, #316]
	cmp	w10, w11
	b.ge	LBB51_86
	mov	x8, #0
	sub	x9, x29, #240
	b	LBB51_87
LBB51_86:
	add	x8, x9, x8
	add	x9, sp, #248
LBB51_87:
	str	x8, [x9]
LBB51_88:
Lloh164:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh165:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	w0, #80
	mov	w1, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc12___rust_alloc
	cbz	x0, LBB51_141
	mov	x20, x0
	ldr	q0, [sp, #384]
	str	q0, [x0]
	ldr	w8, [sp, #400]
	str	w8, [x0, #16]
	ldp	q0, q1, [sp, #336]
	stp	q0, q1, [x29, #-176]
	ldr	q0, [sp, #368]
	stur	q0, [x29, #-144]
	ldp	q0, q1, [sp, #272]
	stp	q0, q1, [x29, #-240]
	ldp	q1, q0, [sp, #304]
	mov	w25, #20
	mov	w26, #4
	mov	w21, #1
	mov	x23, x0
	stp	q1, q0, [x29, #-208]
	b	LBB51_92
LBB51_90:
	mov	x23, x0
	mov	x26, x19
	mov	x20, x0
LBB51_91:
	add	x8, x23, x25
	ldur	q0, [x28, #38]
	ldr	w9, [sp, #264]
	str	w9, [x8, #16]
	str	q0, [x8]
	add	x21, x21, #1
	add	x25, x25, #20
LBB51_92:
Ltmp529:
	add	x0, sp, #248
	sub	x1, x29, #240
	bl	__ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde31dda6ceb1b885E
Ltmp530:
	ldrb	w8, [sp, #264]
	cmp	w8, #3
	b.eq	LBB51_110
	cmp	x21, x26
	b.ne	LBB51_91
	ldur	x22, [x29, #-168]
	ldur	w8, [x29, #-240]
	cmp	w8, #2
	cbz	x22, LBB51_100
	b.eq	LBB51_108
	tbz	w8, #0, LBB51_102
LBB51_98:
	ldpsw	x8, x9, [x29, #-236]
	sub	x10, x9, x8
	cmp	w8, w9
	csel	x8, x10, xzr, lt
	ldur	w9, [x29, #-224]
	cmp	w9, #1
	b.eq	LBB51_103
LBB51_99:
	mov	x9, #0
	ldur	x10, [x29, #-208]
	cbnz	x10, LBB51_104
	b	LBB51_106
LBB51_100:
	b.eq	LBB51_108
	tbnz	w8, #0, LBB51_98
LBB51_102:
	mov	x8, #0
	ldur	w9, [x29, #-224]
	cmp	w9, #1
	b.ne	LBB51_99
LBB51_103:
	ldpsw	x9, x10, [x29, #-220]
	sub	x11, x10, x9
	cmp	w9, w10
	csel	x9, x11, xzr, lt
	ldur	x10, [x29, #-208]
	cbz	x10, LBB51_106
LBB51_104:
	ldp	w10, w11, [x29, #-200]
	cmp	w10, w11
	b.ge	LBB51_106
	mov	x8, #0
	sub	x9, x29, #112
	b	LBB51_107
LBB51_106:
	add	x8, x9, x8
	sub	x9, x29, #120
LBB51_107:
	str	x8, [x9]
LBB51_108:
	mov	x8, #3689348814741910323
	movk	x8, #819, lsl #48
	cmp	x26, x8
	b.hi	LBB51_135
	lsl	x8, x26, #1
	cmp	x8, #4
	mov	w9, #4
	csel	x19, x8, x9, hi
	add	x8, x19, x19, lsl #2
	lsl	x24, x8, #2
	add	x8, x26, x26, lsl #2
	lsl	x1, x8, #2
	mov	x0, x20
	mov	w2, #4
	mov	x3, x24
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_realloc
	cbnz	x0, LBB51_90
	b	LBB51_136
LBB51_110:
	ldur	x0, [x29, #-168]
	ldur	x8, [x29, #-152]
	cmp	x0, #0
	ccmp	x8, #0, #4, ne
	b.eq	LBB51_112
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_112:
	add	x22, sp, #128
	b	LBB51_114
LBB51_113:
	mov	w20, #4
	mov	x26, x21
LBB51_114:
	ldrb	w8, [sp, #184]
	cmp	w8, #0
	mov	w8, #1
	cneg	w8, w8, eq
	str	w8, [sp, #248]
	add	x8, sp, #248
	stur	x8, [x29, #-240]
	sub	x8, x29, #97
	stp	x8, x22, [x29, #-232]
	sub	x8, x29, #240
	str	x8, [sp, #272]
	cmp	x21, #2
	b.hs	LBB51_122
	cbz	x21, LBB51_138
LBB51_116:
	ldr	q0, [x20]
	ldr	w8, [x20, #16]
	str	w8, [sp, #288]
	str	q0, [sp, #272]
Ltmp542:
	sub	x0, x29, #240
	add	x1, sp, #128
	add	x2, sp, #272
	bl	__ZN6quorum5board5Board5apply17h805b27c85dc12f6bE
Ltmp543:
Ltmp544:
	add	x0, sp, #128
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp545:
	ldp	q0, q1, [x29, #-240]
	stp	q0, q1, [sp, #128]
	ldp	q0, q1, [x29, #-208]
	stp	q0, q1, [sp, #160]
	ldr	w8, [sp, #204]
	add	w19, w8, #1
	str	w19, [sp, #204]
Ltmp547:
	add	x0, sp, #128
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp548:
	cmp	w19, #200
	b.gt	LBB51_125
	cbz	x26, LBB51_48
	add	x8, x26, x26, lsl #2
	lsl	x1, x8, #2
	mov	x0, x20
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
	b	LBB51_48
LBB51_122:
	cmp	x21, #21
	b.hs	LBB51_124
Ltmp540:
	add	x2, sp, #272
	mov	x0, x20
	mov	x1, x21
	bl	__ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h74615119cfbc3f74E
Ltmp541:
	b	LBB51_116
LBB51_124:
Ltmp538:
	add	x2, sp, #272
	mov	x0, x20
	mov	x1, x21
	bl	__ZN4core5slice4sort6stable14driftsort_main17hcbbc127520cdfb5bE
Ltmp539:
	b	LBB51_116
LBB51_125:
	cbz	x26, LBB51_127
	add	x8, x26, x26, lsl #2
	lsl	x1, x8, #2
	mov	x0, x20
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_127:
Lloh166:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h39bed4b042eb2dc0E@GOTPAGE
Lloh167:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h39bed4b042eb2dc0E@GOTPAGEOFF]
	add	x9, sp, #204
	stp	x9, x8, [sp, #272]
Lloh168:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.66@PAGE
Lloh169:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.66@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [x29, #-240]
	add	x8, sp, #272
	mov	w9, #1
	stur	x8, [x29, #-224]
	stp	x9, xzr, [x29, #-216]
Ltmp560:
	sub	x0, x29, #240
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
Ltmp561:
Ltmp562:
	add	x0, sp, #128
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp563:
Ltmp564:
	add	x0, sp, #128
	mov	w1, #0
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp565:
	tbnz	w0, #0, LBB51_132
Ltmp566:
	add	x0, sp, #128
	mov	w1, #1
	bl	__ZN6quorum5board5Board15color_connected17h6dcf6dc1737cede7E
Ltmp567:
LBB51_132:
Ltmp572:
	add	x0, sp, #128
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp573:
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
	add	sp, sp, #576
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
LBB51_134:
	.cfi_restore_state
Ltmp523:
Lloh170:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGE
Lloh171:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGEOFF
	mov	w0, #8
	mov	w1, #168
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp524:
	b	LBB51_142
LBB51_135:
	str	xzr, [sp, #16]
LBB51_136:
Ltmp532:
Lloh172:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26@PAGE
Lloh173:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.26@PAGEOFF
	ldr	x0, [sp, #16]
	mov	x1, x24
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp533:
	b	LBB51_142
LBB51_137:
Ltmp557:
Lloh174:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGE
Lloh175:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.54@PAGEOFF
	mov	w0, #8
	mov	w1, #168
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp558:
	b	LBB51_142
LBB51_138:
Lloh176:
	adrp	x8, __ZN57_$LT$quorum..board..Color$u20$as$u20$core..fmt..Debug$GT$3fmt17h7723673c1d605453E@PAGE
Lloh177:
	add	x8, x8, __ZN57_$LT$quorum..board..Color$u20$as$u20$core..fmt..Debug$GT$3fmt17h7723673c1d605453E@PAGEOFF
	ldp	x10, x9, [sp]
	stp	x10, x8, [sp, #272]
Lloh178:
	adrp	x8, __ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h766d077a50a692a7E@PAGE
Lloh179:
	add	x8, x8, __ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h766d077a50a692a7E@PAGEOFF
	stp	x9, x8, [sp, #288]
Lloh180:
	adrp	x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.63@PAGE
Lloh181:
	add	x8, x8, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.63@PAGEOFF
	mov	w9, #3
	stp	x8, x9, [x29, #-240]
	add	x8, sp, #272
	mov	w9, #2
	stur	x8, [x29, #-224]
	stp	x9, xzr, [x29, #-216]
Ltmp550:
	sub	x0, x29, #240
	bl	__ZN3std2io5stdio6_print17h1c7eede3aaadf56cE
Ltmp551:
Ltmp552:
	add	x0, sp, #128
	bl	__ZN6quorum5board5Board10show_board17h4edbaec252ffb7e6E
Ltmp553:
Ltmp554:
	bl	__ZN6quorum4mcts7playout19panic_cold_explicit17he90f15c63cc451bbE
Ltmp555:
	b	LBB51_142
LBB51_141:
Ltmp535:
Lloh182:
	adrp	x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.14@PAGE
Lloh183:
	add	x2, x2, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.14@PAGEOFF
	mov	w0, #4
	mov	w1, #80
	bl	__ZN5alloc7raw_vec12handle_error17h08b36af4b863e188E
Ltmp536:
LBB51_142:
	brk	#0x1
LBB51_143:
Ltmp416:
	mov	x19, x0
	b	LBB51_158
LBB51_144:
Ltmp574:
	mov	x19, x0
	b	LBB51_179
LBB51_145:
Ltmp568:
	b	LBB51_156
LBB51_146:
Ltmp537:
	mov	x19, x0
	mov	x20, x21
	b	LBB51_149
LBB51_147:
Ltmp556:
	b	LBB51_154
LBB51_148:
Ltmp528:
	mov	x19, x0
	ldr	x20, [sp, #344]
LBB51_149:
	cbz	x20, LBB51_178
	ldr	x26, [sp, #360]
	cbnz	x26, LBB51_166
	b	LBB51_178
LBB51_151:
Ltmp546:
	mov	x19, x0
	ldp	q0, q1, [x29, #-240]
	stp	q0, q1, [sp, #128]
	ldp	q0, q1, [x29, #-208]
	stp	q0, q1, [sp, #160]
	cbnz	x26, LBB51_166
	b	LBB51_178
LBB51_152:
Ltmp559:
	mov	x19, x0
	b	LBB51_175
LBB51_153:
Ltmp549:
LBB51_154:
	mov	x19, x0
	cbnz	x26, LBB51_166
	b	LBB51_178
LBB51_155:
Ltmp511:
LBB51_156:
	mov	x19, x0
	b	LBB51_178
LBB51_157:
Ltmp497:
	mov	x19, x0
Ltmp498:
	sub	x0, x29, #240
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp499:
LBB51_158:
Ltmp500:
	add	x0, sp, #272
	bl	__ZN4core3ptr68drop_in_place$LT$im..hash..set..HashSet$LT$$LP$i32$C$i32$RP$$GT$$GT$17he05b896bfc1a646eE
Ltmp501:
	b	LBB51_180
LBB51_159:
Ltmp502:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB51_160:
Ltmp522:
	b	LBB51_171
LBB51_161:
Ltmp534:
	mov	x19, x0
	b	LBB51_163
LBB51_162:
Ltmp531:
	mov	x19, x0
	ldur	x22, [x29, #-168]
LBB51_163:
	ldur	x8, [x29, #-152]
	cmp	x22, #0
	ccmp	x8, #0, #4, ne
	b.eq	LBB51_165
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
	mov	x0, x22
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_165:
	cbz	x26, LBB51_178
LBB51_166:
	add	x8, x26, x26, lsl #2
	lsl	x1, x8, #2
	mov	x0, x20
	b	LBB51_177
LBB51_167:
Ltmp525:
	b	LBB51_169
LBB51_168:
Ltmp514:
LBB51_169:
	mov	x19, x0
	b	LBB51_173
LBB51_170:
Ltmp519:
LBB51_171:
	mov	x19, x0
	ldur	x8, [x29, #-240]
	cbz	x8, LBB51_173
	ldur	x0, [x29, #-232]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_173:
	ldr	x8, [sp, #272]
	cbz	x8, LBB51_175
	ldr	x0, [sp, #280]
	add	x8, x8, x8, lsl #1
	lsl	x1, x8, #3
	mov	w2, #8
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_175:
	ldr	x8, [sp, #248]
	cbz	x8, LBB51_178
	ldr	x0, [sp, #256]
	add	x8, x8, x8, lsl #2
	lsl	x1, x8, #2
LBB51_177:
	mov	w2, #4
	bl	__RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc
LBB51_178:
Ltmp569:
	add	x0, sp, #128
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp570:
LBB51_179:
Ltmp575:
	add	x0, sp, #64
	bl	__ZN4core3ptr41drop_in_place$LT$quorum..board..Board$GT$17h1bb4456d602ad60cE
Ltmp576:
LBB51_180:
	mov	x0, x19
	bl	__Unwind_Resume
LBB51_181:
Ltmp577:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
LBB51_182:
Ltmp571:
	bl	__ZN4core9panicking16panic_in_cleanup17hd39cfd9b63d9c6c3E
	.loh AdrpLdr	Lloh158, Lloh159
	.loh AdrpLdrGot	Lloh160, Lloh161
	.loh AdrpLdrGot	Lloh162, Lloh163
	.loh AdrpLdrGot	Lloh164, Lloh165
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpLdrGot	Lloh166, Lloh167
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh182, Lloh183
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table51:
Lexception19:
	.byte	255
	.byte	155
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19
	.uleb128 Ltmp414-Lfunc_begin19
	.byte	0
	.byte	0
	.uleb128 Ltmp414-Lfunc_begin19
	.uleb128 Ltmp415-Ltmp414
	.uleb128 Ltmp416-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp417-Lfunc_begin19
	.uleb128 Ltmp496-Ltmp417
	.uleb128 Ltmp497-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp503-Lfunc_begin19
	.uleb128 Ltmp506-Ltmp503
	.uleb128 Ltmp574-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp507-Lfunc_begin19
	.uleb128 Ltmp510-Ltmp507
	.uleb128 Ltmp511-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp512-Lfunc_begin19
	.uleb128 Ltmp513-Ltmp512
	.uleb128 Ltmp514-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp515-Lfunc_begin19
	.uleb128 Ltmp518-Ltmp515
	.uleb128 Ltmp519-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp520-Lfunc_begin19
	.uleb128 Ltmp521-Ltmp520
	.uleb128 Ltmp522-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp526-Lfunc_begin19
	.uleb128 Ltmp527-Ltmp526
	.uleb128 Ltmp528-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp529-Lfunc_begin19
	.uleb128 Ltmp530-Ltmp529
	.uleb128 Ltmp531-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp542-Lfunc_begin19
	.uleb128 Ltmp543-Ltmp542
	.uleb128 Ltmp549-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp544-Lfunc_begin19
	.uleb128 Ltmp545-Ltmp544
	.uleb128 Ltmp546-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp547-Lfunc_begin19
	.uleb128 Ltmp539-Ltmp547
	.uleb128 Ltmp549-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp560-Lfunc_begin19
	.uleb128 Ltmp567-Ltmp560
	.uleb128 Ltmp568-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp572-Lfunc_begin19
	.uleb128 Ltmp573-Ltmp572
	.uleb128 Ltmp574-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp573-Lfunc_begin19
	.uleb128 Ltmp523-Ltmp573
	.byte	0
	.byte	0
	.uleb128 Ltmp523-Lfunc_begin19
	.uleb128 Ltmp524-Ltmp523
	.uleb128 Ltmp525-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp532-Lfunc_begin19
	.uleb128 Ltmp533-Ltmp532
	.uleb128 Ltmp534-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp557-Lfunc_begin19
	.uleb128 Ltmp558-Ltmp557
	.uleb128 Ltmp559-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp550-Lfunc_begin19
	.uleb128 Ltmp555-Ltmp550
	.uleb128 Ltmp556-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp535-Lfunc_begin19
	.uleb128 Ltmp536-Ltmp535
	.uleb128 Ltmp537-Lfunc_begin19
	.byte	0
	.uleb128 Ltmp498-Lfunc_begin19
	.uleb128 Ltmp501-Ltmp498
	.uleb128 Ltmp502-Lfunc_begin19
	.byte	1
	.uleb128 Ltmp569-Lfunc_begin19
	.uleb128 Ltmp570-Ltmp569
	.uleb128 Ltmp571-Lfunc_begin19
	.byte	1
	.uleb128 Ltmp575-Lfunc_begin19
	.uleb128 Ltmp576-Ltmp575
	.uleb128 Ltmp577-Lfunc_begin19
	.byte	1
	.uleb128 Ltmp576-Lfunc_begin19
	.uleb128 Lfunc_end19-Ltmp576
	.byte	0
	.byte	0
Lcst_end19:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase16:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN57_$LT$quorum..board..Color$u20$as$u20$core..fmt..Debug$GT$3fmt17h7723673c1d605453E:
	.cfi_startproc
	mov	x8, x1
Lloh184:
	adrp	x9, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.67@PAGE
Lloh185:
	add	x9, x9, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.67@PAGEOFF
Lloh186:
	adrp	x10, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.68@PAGE
Lloh187:
	add	x10, x10, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.68@PAGEOFF
	ldrb	w11, [x0]
	cmp	w11, #0
	csel	x1, x10, x9, ne
	mov	x0, x8
	mov	w2, #5
	b	__ZN4core3fmt9Formatter9write_str17hc8eef6a272ef825dE
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh184, Lloh185
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
Lloh188:
	adrp	x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.65@PAGE
Lloh189:
	add	x0, x0, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.65@PAGEOFF
	bl	__ZN4core9panicking14panic_explicit17h5dd09cd81e60d4faE
	.loh AdrpAdd	Lloh188, Lloh189
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
Lloh190:
	adrp	x8, __ZN6quorum4main17h9b8fc0a39626f413E@PAGE
Lloh191:
	add	x8, x8, __ZN6quorum4main17h9b8fc0a39626f413E@PAGEOFF
	str	x8, [sp, #8]
Lloh192:
	adrp	x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12@PAGE
Lloh193:
	add	x1, x1, l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.12@PAGEOFF
	add	x0, sp, #8
	mov	w4, #0
	bl	__ZN3std2rt19lang_start_internal17hdff9e551ec0db2eaE
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh190, Lloh191
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
l_switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7221061b4167945aE.165:
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.69
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.70
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.71
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.72
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.73
	.quad	l_anon.a26afd2a1837d3d5a1334ef1ac5d05eb.74

.subsections_via_symbols
