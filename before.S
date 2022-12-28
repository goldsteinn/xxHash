<XXH3_len_129to240_64b>:
	a9402c09 	ldp	x9, x11, [x0]
	d29fd70a 	mov	x10, #0xfeb8                	// #65208
	d2802f8c 	mov	x12, #0x17c                 	// #380
	f2a72d8a 	movk	x10, #0x396c, lsl #16
	f2a5902c 	movk	x12, #0x2c81, lsl #16
	f2d4846a 	movk	x10, #0xa423, lsl #32
	f2c43eec 	movk	x12, #0x21f7, lsl #32
	f2f7c96a 	movk	x10, #0xbe4b, lsl #48
	f2e395ac 	movk	x12, #0x1cad, lsl #48
	9000000d 	adrp	x13, <bench>
	ca0a0129 	eor	x9, x9, x10
	ca0c016a 	eor	x10, x11, x12
	d2880e4b 	mov	x11, #0x4072                	// #16498
	ad410800 	ldp	q0, q2, [x0, #32]
	9b097d4c 	mul	x12, x10, x9
	f2b4948b 	movk	x11, #0xa4a4, lsl #16
	9bc97d49 	umulh	x9, x10, x9
	9000000a 	adrp	x10, <bench>
	d29950e8 	mov	x8, #0xca87                	// #51847
	f2d676eb 	movk	x11, #0xb3b7, lsl #32
	ca0c0129 	eor	x9, x9, x12
	9000000c 	adrp	x12, <bench>
	f2b0bd68 	movk	x8, #0x85eb, lsl #16
	d29a9bce 	mov	x14, #0xd4de                	// #54494
	3dc001a1 	ldr	q1, [x13]
	f2e3eceb 	movk	x11, #0x1f67, lsl #48
	a9413c0d 	ldp	x13, x15, [x0, #16]
	f2cf3628 	movk	x8, #0x79b1, lsl #32
	f2bd2dae 	movk	x14, #0xe96d, lsl #16
	6e211c00 	eor	v0.16b, v0.16b, v1.16b
	3dc00141 	ldr	q1, [x10]
	3dc00183 	ldr	q3, [x12]
	f2f3c6e8 	movk	x8, #0x9e37, lsl #48
	f2d2106e 	movk	x14, #0x9083, lsl #32
	7102403f 	cmp	w1, #0x90
	6e211c41 	eor	v1.16b, v2.16b, v1.16b
	ca0b01ea 	eor	x10, x15, x11
	ad421002 	ldp	q2, q4, [x0, #64]
	9000000b 	adrp	x11, <bench>
	f2fb72ee 	movk	x14, #0xdb97, lsl #48
	9b082428 	madd	x8, x1, x8, x9
	ca0e01a9 	eor	x9, x13, x14
	4e183c0c 	mov	x12, v0.d[1]
	9e66000d 	fmov	x13, d0
	6e231c42 	eor	v2.16b, v2.16b, v3.16b
	9b097d42 	mul	x2, x10, x9
	4e183c2e 	mov	x14, v1.d[1]
	9bc97d49 	umulh	x9, x10, x9
	3dc00160 	ldr	q0, [x11]
	9000000b 	adrp	x11, <bench>
	9e66002f 	fmov	x15, d1
	9b0d7d8a 	mul	x10, x12, x13
	4e183c50 	mov	x16, v2.d[1]
	9e660051 	fmov	x17, d2
	3dc00161 	ldr	q1, [x11]
	9000000b 	adrp	x11, <bench>
	ad430803 	ldp	q3, q2, [x0, #96]
	6e201c80 	eor	v0.16b, v4.16b, v0.16b
	9bcd7d8c 	umulh	x12, x12, x13
	ca020129 	eor	x9, x9, x2
	8b090108 	add	x8, x8, x9
	9b0f7dc9 	mul	x9, x14, x15
	ca0a018a 	eor	x10, x12, x10
	9bcf7dcc 	umulh	x12, x14, x15
	4e183c12 	mov	x18, v0.d[1]
	8b0a0108 	add	x8, x8, x10
	3dc00164 	ldr	q4, [x11]
	9e66000b 	fmov	x11, d0
	6e211c60 	eor	v0.16b, v3.16b, v1.16b
	9b117e0a 	mul	x10, x16, x17
	ca090189 	eor	x9, x12, x9
	9bd17e0c 	umulh	x12, x16, x17
	6e241c41 	eor	v1.16b, v2.16b, v4.16b
	9b0b7e4e 	mul	x14, x18, x11
	8b090108 	add	x8, x8, x9
	9bcb7e49 	umulh	x9, x18, x11
	4e183c0d 	mov	x13, v0.d[1]
	9e66000f 	fmov	x15, d0
	ca0a018a 	eor	x10, x12, x10
	ca0e0129 	eor	x9, x9, x14
	4e183c30 	mov	x16, v1.d[1]
	9e660031 	fmov	x17, d1
	8b0a0108 	add	x8, x8, x10
	9b0f7dab 	mul	x11, x13, x15
	8b090108 	add	x8, x8, x9
	9bcf7dac 	umulh	x12, x13, x15
	9b117e0a 	mul	x10, x16, x17
	9bd17e0d 	umulh	x13, x16, x17
	ca0b0189 	eor	x9, x12, x11
	8b090108 	add	x8, x8, x9
	ca0a01a9 	eor	x9, x13, x10
	8b090109 	add	x9, x8, x9
	d28f3f28 	mov	x8, #0x79f9                	// #31225
	f2b3c6e8 	movk	x8, #0x9e37, lsl #16
	f2ccf228 	movk	x8, #0x6791, lsl #32
	ca499529 	eor	x9, x9, x9, lsr #37
	f2e2cac8 	movk	x8, #0x1656, lsl #48
	9b087d29 	mul	x9, x9, x8
	ca498129 	eor	x9, x9, x9, lsr #32
	54000283 	b.cc	<XXH3_len_129to240_64b+0x1dc>  // b.lo, b.ul, b.last
	d3447c2c 	ubfx	x12, x1, #4, #28
	9000000d 	adrp	x13, <bench>
	aa1f03ea 	mov	x10, xzr
	9102200b 	add	x11, x0, #0x88
	d100218c 	sub	x12, x12, #0x8
	910001ad 	add	x13, x13, #0x0
	f100058c 	subs	x12, x12, #0x1
	a97fbd6e 	ldp	x14, x15, [x11, #-8]
	9100416b 	add	x11, x11, #0x10
	a97fc5b0 	ldp	x16, x17, [x13, #-8]
	910041ad 	add	x13, x13, #0x10
	ca0e020e 	eor	x14, x16, x14
	ca0f022f 	eor	x15, x17, x15
	9b0e7df0 	mul	x16, x15, x14
	9bce7dee 	umulh	x14, x15, x14
	ca1001ce 	eor	x14, x14, x16
	8b0e014a 	add	x10, x10, x14
	54fffea1 	b.ne	<XXH3_len_129to240_64b+0x1a8>  // b.any
	14000002 	b	<XXH3_len_129to240_64b+0x1e0>
	aa1f03ea 	mov	x10, xzr
	8b01000b 	add	x11, x0, x1
	9000000c 	adrp	x12, <bench>
	8b0a0129 	add	x9, x9, x10
	3cdf0160 	ldur	q0, [x11, #-16]
	3dc00181 	ldr	q1, [x12]
	6e211c00 	eor	v0.16b, v0.16b, v1.16b
	4e183c0b 	mov	x11, v0.d[1]
	9e66000c 	fmov	x12, d0
	9b0c7d6d 	mul	x13, x11, x12
	9bcc7d6b 	umulh	x11, x11, x12
	ca0d016b 	eor	x11, x11, x13
	8b0b0129 	add	x9, x9, x11
	ca499529 	eor	x9, x9, x9, lsr #37
	9b087d28 	mul	x8, x9, x8
	ca488100 	eor	x0, x8, x8, lsr #32
	d65f03c0 	ret
