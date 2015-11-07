	.text
	.file	"lt.cpp"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp0:
	.cfi_def_cfa_offset 8
.Ltmp1:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp2:
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
.Ltmp3:
	.cfi_offset %esi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	-24(%ebp), %edx
	movl	$100, %esi
	movl	$0, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	%eax, -16(%ebp)
	movl	%edx, (%esp)
	movl	$100, 4(%esp)
	movl	%esi, -28(%ebp)         # 4-byte Spill
	calll	_ZN7CjdBaseC2Ei
	movl	$0, %eax
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	retl
.Ltmp4:
	.size	main, .Ltmp4-main
	.cfi_endproc

	.section	.text._ZN7CjdBaseC2Ei,"axG",@progbits,_ZN7CjdBaseC2Ei,comdat
	.weak	_ZN7CjdBaseC2Ei
	.align	16, 0x90
	.type	_ZN7CjdBaseC2Ei,@function
_ZN7CjdBaseC2Ei:                        # @_ZN7CjdBaseC2Ei
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp5:
	.cfi_def_cfa_offset 8
.Ltmp6:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp7:
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
.Ltmp8:
	.cfi_offset %esi, -12
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -8(%ebp)
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -20(%ebp)         # 4-byte Spill
	calll	_ZN11CInnerClassC2Ei
	leal	-16(%ebp), %eax
	movl	$10, %ecx
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %esi         # 4-byte Reload
	movl	%edx, 4(%esi)
	movl	%eax, (%esp)
	movl	$10, 4(%esp)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
	calll	_ZN11CInnerClassC2Ei
	leal	-16(%ebp), %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_ZN11CInnerClassaSERKS_
	movl	%eax, -28(%ebp)         # 4-byte Spill
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	retl
.Ltmp9:
	.size	_ZN7CjdBaseC2Ei, .Ltmp9-_ZN7CjdBaseC2Ei
	.cfi_endproc

	.section	.text._ZN11CInnerClassC2Ei,"axG",@progbits,_ZN11CInnerClassC2Ei,comdat
	.weak	_ZN11CInnerClassC2Ei
	.align	16, 0x90
	.type	_ZN11CInnerClassC2Ei,@function
_ZN11CInnerClassC2Ei:                   # @_ZN11CInnerClassC2Ei
# BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	%ecx, (%eax)
	addl	$8, %esp
	popl	%ebp
	retl
.Ltmp10:
	.size	_ZN11CInnerClassC2Ei, .Ltmp10-_ZN11CInnerClassC2Ei

	.section	.text._ZN11CInnerClassaSERKS_,"axG",@progbits,_ZN11CInnerClassaSERKS_,comdat
	.weak	_ZN11CInnerClassaSERKS_
	.align	16, 0x90
	.type	_ZN11CInnerClassaSERKS_,@function
_ZN11CInnerClassaSERKS_:                # @_ZN11CInnerClassaSERKS_
# BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, (%eax)
	addl	$8, %esp
	popl	%ebp
	retl
.Ltmp11:
	.size	_ZN11CInnerClassaSERKS_, .Ltmp11-_ZN11CInnerClassaSERKS_


	.ident	"Ubuntu clang version 3.5.0-4ubuntu2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"
	.section	".note.GNU-stack","",@progbits
