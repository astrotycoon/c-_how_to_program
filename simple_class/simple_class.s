	.file	"simple_class.cpp"
	.section	.text._ZN8my_classC2Ev,"axG",@progbits,_ZN8my_classC5Ev,comdat
	.align 2
	.weak	_ZN8my_classC2Ev
	.type	_ZN8my_classC2Ev, @function
_ZN8my_classC2Ev:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$1, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8my_classC2Ev, .-_ZN8my_classC2Ev
	.weak	_ZN8my_classC1Ev
	.set	_ZN8my_classC1Ev,_ZN8my_classC2Ev
	.section	.text._ZN8my_class6methodEi,"axG",@progbits,_ZN8my_class6methodEi,comdat
	.align 2
	.weak	_ZN8my_class6methodEi
	.type	_ZN8my_class6methodEi, @function
_ZN8my_class6methodEi:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN8my_class6methodEi, .-_ZN8my_class6methodEi
	.section	.text._ZN8my_classD2Ev,"axG",@progbits,_ZN8my_classD5Ev,comdat
	.align 2
	.weak	_ZN8my_classD2Ev
	.type	_ZN8my_classD2Ev, @function
_ZN8my_classD2Ev:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN8my_classD2Ev, .-_ZN8my_classD2Ev
	.weak	_ZN8my_classD1Ev
	.set	_ZN8my_classD1Ev,_ZN8my_classD2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	subl	$32, %esp
	movl	%ecx, %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	subl	$12, %esp
	leal	-16(%ebp), %eax
	pushl	%eax
	call	_ZN8my_classC1Ev
	addl	$16, %esp
	subl	$8, %esp
	pushl	$10
	leal	-16(%ebp), %eax
	pushl	%eax
	call	_ZN8my_class6methodEi
	addl	$16, %esp
	movl	$0, %ebx
	subl	$12, %esp
	leal	-16(%ebp), %eax
	pushl	%eax
	call	_ZN8my_classD1Ev
	addl	$16, %esp
	movl	%ebx, %eax
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L7
	call	__stack_chk_fail
.L7:
	leal	-8(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.1-16ubuntu6) 4.9.1"
	.section	.note.GNU-stack,"",@progbits
