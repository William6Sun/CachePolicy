	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	calll	L0$pb
L0$pb:
	popl	%ecx
	movl	%ecx, -40(%ebp)                 ## 4-byte Spill
	leal	L_.str.1-L0$pb(%ecx), %eax
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	%esp, %eax
	leal	-32(%ebp), %edx
	movl	%edx, 8(%eax)
	leal	-24(%ebp), %edx
	movl	%edx, 4(%eax)
	leal	L_.str-L0$pb(%ecx), %ecx
	movl	%ecx, (%eax)
	calll	_scanf
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%esp, %eax
	movl	%edi, 12(%eax)
	movl	%esi, 8(%eax)
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	___udivdi3
	movl	-40(%ebp), %ecx                 ## 4-byte Reload
	movl	%eax, -36(%ebp)                 ## 4-byte Spill
	movl	%edx, %esi
	movl	-36(%ebp), %edx                 ## 4-byte Reload
	movl	%esp, %eax
	movl	%esi, 8(%eax)
	movl	%edx, 4(%eax)
	leal	L_.str.1-L0$pb(%ecx), %ecx
	movl	%ecx, (%eax)
	calll	_printf
	xorl	%eax, %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%lld %lld"

L_.str.1:                               ## @.str.1
	.asciz	"64-bit division is %lld\n"

.subsections_via_symbols
