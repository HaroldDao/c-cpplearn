	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E:/Learnnnn/ccc" "e:/Learnnnn/ccc/main.c"
	.section .rdata,"dr"
.LC0:
	.ascii "Nhap n, m: %d %d\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB101:
	.file 1 "e:/Learnnnn/ccc/main.c"
	.loc 1 3 12
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 3 12
	call	__main
	.loc 1 5 5
	leaq	-16(%rbp), %rdx
	leaq	-12(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	scanf
.LBB2:
	.loc 1 6 14
	movl	$0, -4(%rbp)
	.loc 1 6 5
	jmp	.L2
.L7:
.LBB3:
	.loc 1 7 18
	movl	$0, -8(%rbp)
	.loc 1 7 9
	jmp	.L3
.L6:
	.loc 1 8 16
	cmpl	$0, -8(%rbp)
	je	.L4
	.loc 1 8 34 discriminator 1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	.loc 1 8 24 discriminator 1
	cmpl	%eax, -8(%rbp)
	je	.L4
	.loc 1 8 38 discriminator 2
	cmpl	$0, -4(%rbp)
	je	.L4
	.loc 1 8 58 discriminator 3
	movl	-12(%rbp), %eax
	subl	$1, %eax
	.loc 1 8 48 discriminator 3
	cmpl	%eax, -4(%rbp)
	jne	.L5
.L4:
	.loc 1 9 17
	movl	$42, %ecx
	call	putchar
.L5:
	.loc 1 7 33 discriminator 2
	addl	$1, -8(%rbp)
.L3:
	.loc 1 7 27 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L6
.LBE3:
	.loc 1 12 9
	movl	$10, %ecx
	call	putchar
	.loc 1 6 29 discriminator 2
	addl	$1, -4(%rbp)
.L2:
	.loc 1 6 23 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L7
.LBE2:
	.loc 1 14 12
	movl	$0, %eax
	.loc 1 15 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.seh_endproc
.Letext0:
	.file 2 "C:/msys64/ucrt64/include/stdio.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x169
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x4
	.ascii "GNU C23 15.2.0 -mtune=generic -march=nocona -g3 -O0\0"
	.byte	0x1d
	.byte	0x3
	.long	0x31647
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x5
	.long	0x67
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x6
	.ascii "scanf\0"
	.byte	0x2
	.word	0x1d2
	.byte	0xf
	.long	0xb5
	.long	0xf2
	.uleb128 0x7
	.long	0xf2
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x6f
	.uleb128 0xa
	.ascii "main\0"
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0xb5
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.ascii "n\0"
	.byte	0x4
	.byte	0x9
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.ascii "m\0"
	.byte	0x4
	.byte	0xc
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2
	.ascii "i\0"
	.byte	0x6
	.byte	0xe
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2
	.ascii "j\0"
	.byte	0x7
	.byte	0x12
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x5
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_VERSION__ 202311L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_16__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_EMBED_NOT_FOUND__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_EMBED_FOUND__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_EMBED_EMPTY__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"15.2.0\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__pic__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PIC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-16LE\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1020\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 0x7fffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BITINT_MAXWIDTH__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD_TS_18661_3__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750796873653722224568e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MANT_DIG__ 11\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_DIG__ 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MIN_EXP__ (-13)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MIN_10_EXP__ (-4)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MAX_EXP__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MAX_10_EXP__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_DECIMAL_DIG__ 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MANT_DIG__ 113\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DIG__ 33\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DECIMAL_DIG__ 36\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_IS_IEC_60559__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MANT_DIG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_DIG__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_DECIMAL_DIG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BFLT16_IS_IEC_60559__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_MIN__ 1E-6143D64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_MAX__ 9.999999999999999999999999999999999E6144D64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_EPSILON__ 1E-33D64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64X_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143D64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_STDC_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_DESTRUCTIVE_SIZE 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_CONSTRUCTIVE_SIZE 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__HAVE_SPECULATION_SAFE_VALUE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT80__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__nocona 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__nocona__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_medium__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MMX__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE3__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FXSR__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MMX_WITH_SSE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MSVCRT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__USING_POSIXTHREAD__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_REENTRANT 1\0"
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDIO \0"
	.file 3 "C:/msys64/ucrt64/include/corecrt_stdio_config.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x8
	.ascii "_STDIO_CONFIG_DEFINED \0"
	.file 4 "C:/msys64/ucrt64/include/corecrt.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_CORECRT \0"
	.file 5 "C:/msys64/ucrt64/include/_mingw.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC__MINGW_H \0"
	.file 6 "C:/msys64/ucrt64/include/_mingw_mac.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_CRTDEFS_MACRO \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "__MINGW64_PASTE2(x,y) x ## y\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "__MINGW64_PASTE(x,y) __MINGW64_PASTE2(x, y)\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "__STRINGIFY(x) #x\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__MINGW64_STRINGIFY(x) __STRINGIFY(x)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__MINGW64_VERSION_MAJOR 14\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "__MINGW64_VERSION_MINOR 0\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "__MINGW64_VERSION_BUGFIX 0\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__MINGW64_VERSION_RC 0\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__MINGW64_VERSION_STR __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) \".\" __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) \".\" __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__MINGW64_VERSION_STATE \"alpha\"\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__MINGW32_MAJOR_VERSION 3\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__MINGW32_MINOR_VERSION 11\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_M_AMD64 100\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_M_X64 100\0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "_\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "_ 1\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__MINGW_USE_UNDERSCORE_PREFIX 0\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "_\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "__MINGW_IMP_SYMBOL(sym) __MINGW64_PASTE(__imp_,sym)\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__MINGW_IMP_LSYMBOL(sym) __MINGW64_PASTE(__imp_,sym)\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "__MINGW_USYMBOL(sym) sym\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "__MINGW_LSYMBOL(sym) __MINGW64_PASTE(_,sym)\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__MINGW_ASM_CALL(func) __asm__(__MINGW64_STRINGIFY(__MINGW_USYMBOL(func)))\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__MINGW_ASM_CRT_CALL(func) __asm__(__STRINGIFY(func))\0"
	.byte	0x2
	.uleb128 0xa7
	.ascii "__MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "__MINGW_EXTENSION __extension__\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "__C89_NAMELESS __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__C89_NAMELESSSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__C89_NAMELESSSTRUCTNAME1 \0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "__C89_NAMELESSSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__C89_NAMELESSSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0xba
	.ascii "__C89_NAMELESSSTRUCTNAME4 \0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__C89_NAMELESSSTRUCTNAME5 \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__C89_NAMELESSUNIONNAME \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "__C89_NAMELESSUNIONNAME1 \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__C89_NAMELESSUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "__C89_NAMELESSUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__C89_NAMELESSUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__C89_NAMELESSUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "__C89_NAMELESSUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "__C89_NAMELESSUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "__C89_NAMELESSUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "__GNU_EXTENSION __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "__MINGW_HAVE_ANSI_C99_PRINTF 1\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "__MINGW_HAVE_WIDE_C99_PRINTF 1\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "__MINGW_HAVE_ANSI_C99_SCANF 1\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "__MINGW_HAVE_WIDE_C99_SCANF 1\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "__MINGW_POISON_NAME(__IFACE) __IFACE ##_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "__MSABI_LONG(x) x ## l\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "__MINGW_GCC_VERSION (__GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__)\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__MINGW_GNUC_PREREQ(major,minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "__MINGW_MSC_PREREQ(major,minor) 0\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__MINGW_ATTRIB_DEPRECATED_STR(X) \0"
	.byte	0x1
	.uleb128 0x104
	.ascii "__MINGW_SEC_WARN_STR \"This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation\"\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__MINGW_MSVC2005_DEPREC_STR \"This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation\"\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__MINGW_ATTRIB_DEPRECATED_MSVC2005 __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR)\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "__MINGW_ATTRIB_DEPRECATED_SEC_WARN __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR)\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "__MINGW_MS_PRINTF(__format,__args) __attribute__((__format__(__ms_printf__, __format,__args)))\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "__MINGW_MS_SCANF(__format,__args) __attribute__((__format__(__ms_scanf__, __format,__args)))\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "__MINGW_GNU_PRINTF(__format,__args) __attribute__((__format__(__gnu_printf__,__format,__args)))\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "__MINGW_GNU_SCANF(__format,__args) __attribute__((__format__(__gnu_scanf__, __format,__args)))\0"
	.byte	0x2
	.uleb128 0x132
	.ascii "__mingw_ovr\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "__mingw_ovr static __attribute__ ((__unused__)) __inline__ __cdecl\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "__mingw_attribute_artificial __attribute__((__artificial__))\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "__MINGW_SELECTANY __attribute__((__selectany__))\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "__MINGW_FORTIFY_LEVEL 0\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "__mingw_bos_ovr __mingw_ovr\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "__MINGW_FORTIFY_VA_ARG 0\0"
	.byte	0x2
	.uleb128 0x195
	.ascii "__has_builtin\0"
	.byte	0x4
	.file 7 "C:/msys64/ucrt64/include/_mingw_secapi.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_MINGW_SECAPI \0"
	.byte	0x2
	.uleb128 0x1d
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES\0"
	.byte	0x2
	.uleb128 0x1e
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY\0"
	.byte	0x2
	.uleb128 0x1f
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES\0"
	.byte	0x2
	.uleb128 0x20
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT\0"
	.byte	0x2
	.uleb128 0x21
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES 0\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY 0\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 0\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT 0\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY 0\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__MINGW_CRT_NAME_CONCAT2(sym) ::sym ##_s\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x18
	.ascii "__LONG32 long\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__MINGW_IMPORT extern __attribute__ ((__dllimport__))\0"
	.byte	0x2
	.uleb128 0x2f
	.ascii "__USE_CRTIMP\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__USE_CRTIMP 1\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "_CRTIMP __attribute__ ((__dllimport__))\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__DECLSPEC_SUPPORTED \0"
	.byte	0x1
	.uleb128 0x46
	.ascii "USE___UUIDOF 0\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_inline __inline\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__CRT_INLINE extern inline __attribute__((__gnu_inline__))\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))\0"
	.byte	0x2
	.uleb128 0x5f
	.ascii "__CRT__NO_INLINE\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "__CRT__NO_INLINE 1\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__MINGW_CXX11_CONSTEXPR \0"
	.byte	0x1
	.uleb128 0x66
	.ascii "__MINGW_CXX14_CONSTEXPR \0"
	.byte	0x1
	.uleb128 0x76
	.ascii "__UNUSED_PARAM(x) x __attribute__ ((__unused__))\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__restrict_arr __restrict\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__MINGW_ATTRIB_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__MINGW_ATTRIB_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "__MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "__MINGW_ATTRIB_USED __attribute__ ((__used__))\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "__MINGW_ATTRIB_DEPRECATED_MSG(x) __attribute__ ((__deprecated__(x)))\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "__MINGW_NOTHROW __attribute__ ((__nothrow__))\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "__MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ (\"0\")))\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "__MINGW_PRAGMA_PARAM(x) _Pragma (#x)\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "__MINGW_BROKEN_INTERFACE(x) __MINGW_PRAGMA_PARAM(message (\"Interface \" _CRT_STRINGIZE(x) \" has unverified layout.\"))\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "__MSVCRT_VERSION__ 0xE00\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "_UCRT \0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "__MINGW_UCRT_ASM_CALL(func) __MINGW_ASM_CALL(func)\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "_WIN32_WINNT 0xA00\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "_INT128_DEFINED \0"
	.byte	0x1
	.uleb128 0x106
	.ascii "__int8 char\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__int16 short\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "__int32 int\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__ptr32 \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "__ptr64 \0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "__unaligned \0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "__w64 \0"
	.byte	0x1
	.uleb128 0x122
	.ascii "__forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "__nothrow \0"
	.file 8 "C:/msys64/ucrt64/include/vadefs.h"
	.byte	0x3
	.uleb128 0x132
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_VADEFS \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.uleb128 0xc
	.ascii "_CRT_PACKING\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "_CRT_PACKING 8\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "_VA_LIST_DEFINED \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_ADDRESSOF(v) (&(v))\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_crt_va_start(v,l) __builtin_va_start(v,l)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_crt_va_arg(v,l) __builtin_va_arg(v,l)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_crt_va_end(v) __builtin_va_end(v)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_crt_va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x135
	.ascii "__CRT_STRINGIZE(_Value) #_Value\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "_CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "__CRT_WIDE(_String) L ## _String\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "_CRT_WIDE(_String) __CRT_WIDE(_String)\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "_W64 \0"
	.byte	0x1
	.uleb128 0x146
	.ascii "_CRTIMP_NOIA64 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "_CRTIMP2 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "_CRTIMP_ALTERNATIVE _CRTIMP\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "_CRT_ALTERNATIVE_IMPORTED \0"
	.byte	0x1
	.uleb128 0x154
	.ascii "_MRTIMP2 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "_DLL \0"
	.byte	0x1
	.uleb128 0x161
	.ascii "_MT \0"
	.byte	0x1
	.uleb128 0x165
	.ascii "_MCRTIMP _CRTIMP\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "_CRTIMP_PURE _CRTIMP\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "_PGLOBAL \0"
	.byte	0x1
	.uleb128 0x171
	.ascii "_AGLOBAL \0"
	.byte	0x1
	.uleb128 0x174
	.ascii "_SECURECRT_FILL_BUFFER_PATTERN 0xFD\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "_CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "_CRT_INSECURE_DEPRECATE_MEMORY(_Replacement) \0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "_CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement) \0"
	.byte	0x1
	.uleb128 0x180
	.ascii "_CRT_MANAGED_HEAP_DEPRECATE \0"
	.byte	0x1
	.uleb128 0x184
	.ascii "_CRT_OBSOLETE(_NewItem) \0"
	.byte	0x1
	.uleb128 0x190
	.ascii "_CONST_RETURN \0"
	.byte	0x1
	.uleb128 0x195
	.ascii "UNALIGNED __unaligned\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "_CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "__CRTDECL __cdecl\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "_ARGMAX 100\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "_TRUNCATE ((size_t)-1)\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "_CRT_UNUSED(x) (void)x\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "__USE_MINGW_ANSI_STDIO 0\0"
	.byte	0x2
	.uleb128 0x1de
	.ascii "_CRT_glob\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "_CRT_glob _dowildcard\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "__ANONYMOUS_DEFINED \0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "_ANONYMOUS_UNION __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "_ANONYMOUS_STRUCT __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "_UNION_NAME(x) \0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "_STRUCT_NAME(x) \0"
	.byte	0x1
	.uleb128 0x208
	.ascii "DUMMYUNIONNAME \0"
	.byte	0x1
	.uleb128 0x209
	.ascii "DUMMYUNIONNAME1 \0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "DUMMYUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "DUMMYUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "DUMMYUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "DUMMYUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "DUMMYUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "DUMMYUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0x210
	.ascii "DUMMYUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0x211
	.ascii "DUMMYUNIONNAME9 \0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "DUMMYSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "DUMMYSTRUCTNAME1 \0"
	.byte	0x1
	.uleb128 0x220
	.ascii "DUMMYSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0x221
	.ascii "DUMMYSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0x222
	.ascii "DUMMYSTRUCTNAME4 \0"
	.byte	0x1
	.uleb128 0x223
	.ascii "DUMMYSTRUCTNAME5 \0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "__CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \0"
	.byte	0x1
	.uleb128 0x257
	.ascii "__MINGW_DEBUGBREAK_IMPL !__has_builtin(__debugbreak)\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "__MINGW_FASTFAIL_IMPL !__has_builtin(__fastfail)\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "__MINGW_PREFETCH_IMPL !__has_builtin(__prefetch)\0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "__STDC_SECURE_LIB__ 200411L\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "__GOT_SECURE_LIB__ __STDC_SECURE_LIB__\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0xd
	.ascii "_CRT_PACKING\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "_CRT_PACKING 8\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "_CRTNOALIAS \0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "_CRTRESTRICT \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x21
	.ascii "size_t\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_SSIZE_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x2b
	.ascii "ssize_t\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "_RSIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_INTPTR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__intptr_t_defined \0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "intptr_t\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_UINTPTR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__uintptr_t_defined \0"
	.byte	0x2
	.uleb128 0x49
	.ascii "uintptr_t\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_PTRDIFF_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x55
	.ascii "_PTRDIFF_T_ \0"
	.byte	0x2
	.uleb128 0x56
	.ascii "ptrdiff_t\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x67
	.ascii "_WCTYPE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x69
	.ascii "_WINT_T \0"
	.byte	0x1
	.uleb128 0x70
	.ascii "_ERRCODE_DEFINED \0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_TIME32_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_TIME64_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_TIME_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "_CRT_SECURE_CPP_NOTHROW throw()\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret,__func,__dsttype,__dst) \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret,__func,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3,__type4,__arg4) \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret,__func,__type1,__arg1,__type2,__arg2,__dsttype,__dst) \0"
	.byte	0x1
	.uleb128 0x116
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret,__func,__dsttype,__src) \0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst)\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3)\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4(__ret_type,__ret_policy,__decl_spec,__name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3,__arg4_type,__arg4) __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name ##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3, __arg4_type, __arg4)\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst) \0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1) \0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2) \0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3) \0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "__DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type,__ret_policy,__decl_spec,__name,__sec_name,__dst_attr,__dst_type,__dst,__arg1_type,__arg1,__arg2_type,__arg2,__arg3_type,__arg3,__arg4_type,__arg4) \0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "_TAGLC_ID_DEFINED \0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "_THREADLOCALEINFO \0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "__crt_typefix(ctype) \0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "_CRT_USE_WINAPI_FAMILY_DESKTOP_APP \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x13
	.ascii "_CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION 0x0001ULL\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR 0x0002ULL\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS 0x0004ULL\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "_CRT_INTERNAL_PRINTF_LEGACY_MSVCRT_COMPATIBILITY 0x0008ULL\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "_CRT_INTERNAL_PRINTF_LEGACY_THREE_DIGIT_EXPONENTS 0x0010ULL\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "_CRT_INTERNAL_PRINTF_STANDARD_ROUNDING 0x0020ULL\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "_CRT_INTERNAL_SCANF_SECURECRT 0x0001ULL\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS 0x0002ULL\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "_CRT_INTERNAL_SCANF_LEGACY_MSVCRT_COMPATIBILITY 0x0004ULL\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS (*__local_stdio_printf_options())\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_CRT_INTERNAL_LOCAL_SCANF_OPTIONS (*__local_stdio_scanf_options())\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0xe
	.ascii "snprintf\0"
	.byte	0x2
	.uleb128 0x10
	.ascii "vsnprintf\0"
	.byte	0x2
	.uleb128 0x12
	.ascii "snwprintf\0"
	.byte	0x2
	.uleb128 0x14
	.ascii "vsnwprintf\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "BUFSIZ 512\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_NFILE _NSTREAM_\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "_NSTREAM_ 512\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "_IOB_ENTRIES 20\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_FILE_DEFINED \0"
	.byte	0x1
	.uleb128 0x37
	.ascii "_P_tmpdir \"\\\\\"\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_wP_tmpdir L\"\\\\\"\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "L_tmpnam 260\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "STDIN_FILENO 0\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "STDOUT_FILENO 1\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "STDERR_FILENO 2\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "FILENAME_MAX 260\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "FOPEN_MAX 20\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "_SYS_OPEN 20\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "TMP_MAX 2147483647\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "NULL ((void *)0)\0"
	.file 9 "C:/msys64/ucrt64/include/_mingw_off_t.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_OFF_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "_OFF_T_ \0"
	.byte	0x1
	.uleb128 0xc
	.ascii "_OFF64_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_FILE_OFFSET_BITS_SET_OFFT \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x68
	.ascii "_iob __iob_func()\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "_FPOS_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "_FPOSOFF\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "_FPOSOFF(fp) ((long)(fp))\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_STDSTREAM_DEFINED \0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "stdin (__acrt_iob_func(0))\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "stdout (__acrt_iob_func(1))\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "stderr (__acrt_iob_func(2))\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_IOFBF 0x0000\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_IOLBF 0x0040\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "_IONBF 0x0004\0"
	.byte	0x2
	.uleb128 0x111
	.ascii "__MINGW_PRINTF_FORMAT\0"
	.byte	0x2
	.uleb128 0x112
	.ascii "__MINGW_SCANF_FORMAT\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "__MINGW_PRINTF_FORMAT __gnu_printf__\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "__MINGW_SCANF_FORMAT __gnu_scanf__\0"
	.byte	0x2
	.uleb128 0x1b4
	.ascii "__builtin_vsnprintf\0"
	.byte	0x2
	.uleb128 0x1b5
	.ascii "__builtin_vsprintf\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "_CRT_PERROR_DEFINED \0"
	.byte	0x1
	.uleb128 0x269
	.ascii "popen _popen\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "pclose _pclose\0"
	.byte	0x1
	.uleb128 0x272
	.ascii "_CRT_DIRECTORY_DEFINED \0"
	.byte	0x1
	.uleb128 0x37a
	.ascii "_WSTDIO_DEFINED \0"
	.byte	0x1
	.uleb128 0x456
	.ascii "WEOF (wint_t)(0xFFFF)\0"
	.file 10 "C:/msys64/ucrt64/include/swprintf.inl"
	.byte	0x3
	.uleb128 0x479
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_SWPRINTF_INL \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x491
	.ascii "_CRT_WPERROR_DEFINED \0"
	.byte	0x1
	.uleb128 0x496
	.ascii "wpopen _wpopen\0"
	.byte	0x2
	.uleb128 0x4a1
	.ascii "_CRT_GETPUTWCHAR_NOINLINE\0"
	.byte	0x1
	.uleb128 0x4a4
	.ascii "getwchar() fgetwc(stdin)\0"
	.byte	0x1
	.uleb128 0x4a5
	.ascii "putwchar(_c) fputwc((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x4ab
	.ascii "getwc(_stm) fgetwc(_stm)\0"
	.byte	0x1
	.uleb128 0x4ac
	.ascii "putwc(_c,_stm) fputwc(_c,_stm)\0"
	.byte	0x1
	.uleb128 0x4ae
	.ascii "_putwc_nolock(_c,_stm) _fputwc_nolock(_c,_stm)\0"
	.byte	0x1
	.uleb128 0x4af
	.ascii "_getwc_nolock(_c) _fgetwc_nolock(_c)\0"
	.byte	0x1
	.uleb128 0x4b3
	.ascii "_STDIO_DEFINED \0"
	.byte	0x1
	.uleb128 0x4ba
	.ascii "_getchar_nolock() _getc_nolock(stdin)\0"
	.byte	0x1
	.uleb128 0x4bb
	.ascii "_putchar_nolock(_c) _putc_nolock((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x4bc
	.ascii "_getwchar_nolock() _getwc_nolock(stdin)\0"
	.byte	0x1
	.uleb128 0x4bd
	.ascii "_putwchar_nolock(_c) _putwc_nolock((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x4ce
	.ascii "P_tmpdir _P_tmpdir\0"
	.byte	0x1
	.uleb128 0x4cf
	.ascii "SYS_OPEN _SYS_OPEN\0"
	.byte	0x1
	.uleb128 0x4e5
	.ascii "__MINGW_MBWC_CONVERT_DEFINED \0"
	.byte	0x1
	.uleb128 0x50f
	.ascii "_WSPAWN_DEFINED \0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "_P_WAIT 0\0"
	.byte	0x1
	.uleb128 0x51c
	.ascii "_P_NOWAIT 1\0"
	.byte	0x1
	.uleb128 0x51d
	.ascii "_OLD_P_OVERLAY 2\0"
	.byte	0x1
	.uleb128 0x51e
	.ascii "_P_NOWAITO 3\0"
	.byte	0x1
	.uleb128 0x51f
	.ascii "_P_DETACH 4\0"
	.byte	0x1
	.uleb128 0x520
	.ascii "_P_OVERLAY 2\0"
	.byte	0x1
	.uleb128 0x522
	.ascii "_WAIT_CHILD 0\0"
	.byte	0x1
	.uleb128 0x523
	.ascii "_WAIT_GRANDCHILD 1\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "_SPAWNV_DEFINED \0"
	.file 11 "C:/msys64/ucrt64/include/sec_api/stdio_s.h"
	.byte	0x3
	.uleb128 0x53a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDIO_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x2
	.byte	0x4
	.byte	0x1
	.uleb128 0x10
	.ascii "_SECIMP __declspec(dllimport)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "_STDIO_S_DEFINED \0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "L_tmpnam_s L_tmpnam\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "TMP_MAX_S TMP_MAX\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "_WSTDIO_S_DEFINED \0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "E:\\Learnnnn\\ccc\0"
.LASF0:
	.ascii "e:\\Learnnnn\\ccc\\main.c\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
