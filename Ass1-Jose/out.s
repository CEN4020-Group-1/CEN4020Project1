	.file	"ass1.cpp"
	.text
	.section	.text$_ZNSt11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6lengthEPKc
	.def	_ZNSt11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB232:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L3
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L4
.L3:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	nop
.L4:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStorSt13_Ios_OpenmodeS_,"x"
	.linkonce discard
	.globl	_ZStorSt13_Ios_OpenmodeS_
	.def	_ZStorSt13_Ios_OpenmodeS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStorSt13_Ios_OpenmodeS_
_ZStorSt13_Ios_OpenmodeS_:
.LFB1808:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	orl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.text
	.globl	_Z17is_valid_diagonalii
	.def	_Z17is_valid_diagonalii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17is_valid_diagonalii
_Z17is_valid_diagonalii:
.LFB2352:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	%ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	%ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4CellC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4CellC1Ev
	.def	_ZN4CellC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4CellC1Ev
_ZN4CellC1Ev:
.LFB2355:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4CellC1Ei,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4CellC1Ei
	.def	_ZN4CellC1Ei;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4CellC1Ei
_ZN4CellC1Ei:
.LFB2358:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "|\0"
	.section	.text$_ZN4Cell5printEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Cell5printEv
	.def	_ZN4Cell5printEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Cell5printEv
_ZN4Cell5printEv:
.LFB2359:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jg	.L12
	movl	$0, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
.L12:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4Cell7is_freeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Cell7is_freeEv
	.def	_ZN4Cell7is_freeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Cell7is_freeEv
_ZN4Cell7is_freeEv:
.LFB2360:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board11is_diagonalEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board11is_diagonalEv
	.def	_ZN5Board11is_diagonalEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board11is_diagonalEv
_ZN5Board11is_diagonalEv:
.LFB2361:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	addl	$4, %eax
	movl	%eax, -4(%rbp)
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	subl	$6, %eax
	movl	%eax, -8(%rbp)
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	addl	$6, %eax
	movl	%eax, -12(%rbp)
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	subl	$4, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L16
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	call	_Z17is_valid_diagonalii
	testl	%eax, %eax
	je	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$0, %eax
.L17:
	testb	%al, %al
	je	.L18
	movq	16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	cmpl	$0, -8(%rbp)
	jle	.L20
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	call	_Z17is_valid_diagonalii
	testl	%eax, %eax
	je	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	testb	%al, %al
	je	.L22
	movq	16(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L22
	movl	$1, %eax
	jmp	.L19
.L22:
	cmpl	$0, -12(%rbp)
	jle	.L23
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%eax, %ecx
	call	_Z17is_valid_diagonalii
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	testb	%al, %al
	je	.L25
	movq	16(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L25
	movl	$1, %eax
	jmp	.L19
.L25:
	cmpl	$0, -16(%rbp)
	jle	.L26
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	call	_Z17is_valid_diagonalii
	testl	%eax, %eax
	je	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	testb	%al, %al
	je	.L28
	movq	16(%rbp), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L28
	movl	$1, %eax
	jmp	.L19
.L28:
	movl	$0, %eax
.L19:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board11check_pointEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board11check_pointEv
	.def	_ZN5Board11check_pointEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board11check_pointEv
_ZN5Board11check_pointEv:
.LFB2362:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board11is_diagonalEv
	testb	%al, %al
	je	.L31
	movq	16(%rbp), %rax
	movl	100(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 100(%rax)
.L31:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5BoardC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5BoardC1Ev
	.def	_ZN5BoardC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5BoardC1Ev
_ZN5BoardC1Ev:
.LFB2365:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movl	$24, %ebx
	movq	%rax, %rsi
	jmp	.L33
.L34:
	movq	%rsi, %rcx
	call	_ZN4CellC1Ev
	subq	$1, %rbx
	addq	$4, %rsi
.L33:
	testq	%rbx, %rbx
	jns	.L34
	movq	32(%rbp), %rax
	movl	$0, 100(%rax)
	movq	32(%rbp), %rax
	movl	$1, 104(%rax)
	movq	32(%rbp), %rax
	movl	$0, 108(%rax)
	movq	32(%rbp), %rax
	movb	$0, 112(%rax)
	movq	32(%rbp), %rax
	movl	$0, 100(%rax)
	movq	32(%rbp), %rax
	movl	$1, 104(%rax)
	movq	32(%rbp), %rax
	movl	$0, 108(%rax)
	movl	$0, -4(%rbp)
	jmp	.L35
.L36:
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4CellC1Ev
	movq	32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -4(%rbp)
.L35:
	cmpl	$24, -4(%rbp)
	jle	.L36
	nop
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5BoardC1EPSt13basic_fstreamIcSt11char_traitsIcEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5BoardC1EPSt13basic_fstreamIcSt11char_traitsIcEE
	.def	_ZN5BoardC1EPSt13basic_fstreamIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5BoardC1EPSt13basic_fstreamIcSt11char_traitsIcEE
_ZN5BoardC1EPSt13basic_fstreamIcSt11char_traitsIcEE:
.LFB2368:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movl	$24, %ebx
	movq	%rax, %rsi
	jmp	.L38
.L39:
	movq	%rsi, %rcx
	call	_ZN4CellC1Ev
	subq	$1, %rbx
	addq	$4, %rsi
.L38:
	testq	%rbx, %rbx
	jns	.L39
	movq	32(%rbp), %rax
	movl	$0, 100(%rax)
	movq	32(%rbp), %rax
	movl	$1, 104(%rax)
	movq	32(%rbp), %rax
	movl	$0, 108(%rax)
	movq	32(%rbp), %rax
	movb	$0, 112(%rax)
	movl	$0, -4(%rbp)
	movq	40(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSirsERi
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	je	.L40
	movl	-12(%rbp), %edx
	movq	32(%rbp), %rax
	movl	%edx, 100(%rax)
.L40:
	movq	40(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSirsERi
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	je	.L41
	movl	-12(%rbp), %edx
	movq	32(%rbp), %rax
	movl	%edx, 104(%rax)
.L41:
	movq	40(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSirsERi
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	je	.L43
	movl	-12(%rbp), %edx
	movq	32(%rbp), %rax
	movl	%edx, 108(%rax)
	jmp	.L43
.L44:
	movl	-12(%rbp), %edx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4CellC1Ei
	movq	32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addl	$1, -4(%rbp)
.L43:
	movq	40(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSirsERi
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv
	testb	%al, %al
	jne	.L44
	nop
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "|\12\0"
	.section	.text$_ZN5Board5printEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board5printEv
	.def	_ZN5Board5printEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board5printEv
_ZN5Board5printEv:
.LFB2369:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L46
.L48:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZN4Cell5printEv
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	$4, %edx
	jne	.L47
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L47:
	addl	$1, -4(%rbp)
.L46:
	cmpl	$24, -4(%rbp)
	jle	.L48
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board9print_posEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board9print_posEv
	.def	_ZN5Board9print_posEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board9print_posEv
_ZN5Board9print_posEv:
.LFB2370:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L50
.L53:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmpl	$8, -4(%rbp)
	jg	.L51
	movl	$0, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
.L51:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	$4, %edx
	jne	.L52
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L52:
	addl	$1, -4(%rbp)
.L50:
	cmpl	$24, -4(%rbp)
	jle	.L53
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "POINTS: \0"
.LC3:
	.ascii "\12\0"
.LC4:
	.ascii "BOARD\0"
.LC5:
	.ascii "-----\0"
	.section	.text$_ZN5Board12print_statusEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board12print_statusEv
	.def	_ZN5Board12print_statusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board12print_statusEv
_ZN5Board12print_statusEv:
.LFB2371:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board5printEv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board7get_posEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board7get_posEv
	.def	_ZN5Board7get_posEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board7get_posEv
_ZN5Board7get_posEv:
.LFB2372:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	108(%rax), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board10get_pointsEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board10get_pointsEv
	.def	_ZN5Board10get_pointsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board10get_pointsEv
_ZN5Board10get_pointsEv:
.LFB2373:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	100(%rax), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board7startedEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board7startedEv
	.def	_ZN5Board7startedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board7startedEv
_ZN5Board7startedEv:
.LFB2374:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board7win_conEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board7win_conEv
	.def	_ZN5Board7win_conEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board7win_conEv
_ZN5Board7win_conEv:
.LFB2375:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$25, %eax
	setg	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board8lose_conEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board8lose_conEv
	.def	_ZN5Board8lose_conEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board8lose_conEv
_ZN5Board8lose_conEv:
.LFB2376:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movzbl	112(%rax), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board9next_turnEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board9next_turnEv
	.def	_ZN5Board9next_turnEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board9next_turnEv
_ZN5Board9next_turnEv:
.LFB2377:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board11check_pointEv
	movq	16(%rbp), %rax
	movl	104(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 104(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5Board5inputEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board5inputEi
	.def	_ZN5Board5inputEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board5inputEi
_ZN5Board5inputEi:
.LFB2378:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZN4Cell7is_freeEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L67
	movq	16(%rbp), %rax
	movb	$1, 112(%rax)
.L67:
	movq	16(%rbp), %rax
	movl	104(%rax), %ecx
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, 108(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii " \0"
	.section	.text$_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB2379:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$536, %rsp
	.seh_stackalloc	536
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 432(%rbp)
	movq	%rdx, 440(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	movq	440(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
	movq	432(%rbp), %rax
	movl	100(%rax), %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	432(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	432(%rbp), %rax
	movl	108(%rax), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$0, 396(%rbp)
	jmp	.L69
.L70:
	movq	432(%rbp), %rax
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, 396(%rbp)
.L69:
	cmpl	$24, 396(%rbp)
	jle	.L70
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE1:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L73
.L72:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
.L73:
	addq	$536, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2379-.LLSDACSB2379
.LLSDACSB2379:
	.uleb128 .LEHB0-.LFB2379
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2379
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L72-.LFB2379
	.uleb128 0
	.uleb128 .LEHB2-.LFB2379
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2379:
	.section	.text$_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.globl	_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB2380:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$536, %rsp
	.seh_stackalloc	536
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 432(%rbp)
	movq	432(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
.LEHE3:
	leaq	-96(%rbp), %rax
	addq	$224, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
.LEHE4:
	movl	%eax, %ebx
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %eax
	jmp	.L78
.L77:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L78:
	addq	$536, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2380:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2380-.LLSDACSB2380
.LLSDACSB2380:
	.uleb128 .LEHB3-.LFB2380
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2380
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L77-.LFB2380
	.uleb128 0
	.uleb128 .LEHB5-.LFB2380
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2380:
	.section	.text$_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.globl	_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB2381:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$536, %rsp
	.seh_stackalloc	536
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 432(%rbp)
	movq	%rdx, 440(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB6:
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev
.LEHE6:
	movl	$16, %edx
	movl	$8, %ecx
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %ecx
	movq	440(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB7:
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
	leaq	-96(%rbp), %rdx
	movq	432(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5BoardC1EPSt13basic_fstreamIcSt11char_traitsIcEE
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv
.LEHE7:
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev
	jmp	.L83
.L82:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L83:
	movq	432(%rbp), %rax
	addq	$536, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2381:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2381-.LLSDACSB2381
.LLSDACSB2381:
	.uleb128 .LEHB6-.LFB2381
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2381
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L82-.LFB2381
	.uleb128 0
	.uleb128 .LEHB8-.LFB2381
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2381:
	.section	.text$_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board,"x"
	.linkonce discard
	.globl	_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board
	.def	_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board
_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board:
.LFB2382:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE9:
	leaq	-32(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
.LEHB10:
	call	_ZN5Board9save_dataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE10:
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L87
.L86:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB11:
	call	_Unwind_Resume
	nop
.LEHE11:
.L87:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2382:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2382-.LLSDACSB2382
.LLSDACSB2382:
	.uleb128 .LEHB9-.LFB2382
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2382
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L86-.LFB2382
	.uleb128 0
	.uleb128 .LEHB11-.LFB2382
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2382:
	.section	.text$_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN6GameUI15translate_inputEii,"x"
	.linkonce discard
	.globl	_ZN6GameUI15translate_inputEii
	.def	_ZN6GameUI15translate_inputEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6GameUI15translate_inputEii
_ZN6GameUI15translate_inputEii:
.LFB2383:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$9, 16(%rbp)
	ja	.L89
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L91(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L91(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L91:
	.long	.L89-.L91
	.long	.L98-.L91
	.long	.L97-.L91
	.long	.L96-.L91
	.long	.L95-.L91
	.long	.L89-.L91
	.long	.L94-.L91
	.long	.L93-.L91
	.long	.L92-.L91
	.long	.L90-.L91
	.section	.text$_ZN6GameUI15translate_inputEii,"x"
	.linkonce discard
.L98:
	movl	24(%rbp), %eax
	addl	$4, %eax
	jmp	.L99
.L97:
	movl	24(%rbp), %eax
	addl	$5, %eax
	jmp	.L99
.L96:
	movl	24(%rbp), %eax
	addl	$6, %eax
	jmp	.L99
.L95:
	movl	24(%rbp), %eax
	subl	$1, %eax
	jmp	.L99
.L94:
	movl	24(%rbp), %eax
	addl	$1, %eax
	jmp	.L99
.L93:
	movl	24(%rbp), %eax
	subl	$6, %eax
	jmp	.L99
.L92:
	movl	24(%rbp), %eax
	subl	$5, %eax
	jmp	.L99
.L90:
	movl	24(%rbp), %eax
	subl	$4, %eax
	jmp	.L99
.L89:
	movl	$-2, %eax
.L99:
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "Type in your first position with a value from 1 - \0"
.LC8:
	.ascii ": \0"
.LC9:
	.ascii "Invalid position\12\0"
	.section	.text$_ZN6GameUI15get_first_inputEv,"x"
	.linkonce discard
	.globl	_ZN6GameUI15get_first_inputEv
	.def	_ZN6GameUI15get_first_inputEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6GameUI15get_first_inputEv
_ZN6GameUI15get_first_inputEv:
.LFB2384:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$0, -4(%rbp)
	jmp	.L101
.L103:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$25, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSirsERi
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L102
	movl	-4(%rbp), %eax
	cmpl	$25, %eax
	jle	.L101
.L102:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L101:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L103
	movl	-4(%rbp), %eax
	cmpl	$25, %eax
	jg	.L103
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "Type in which direction to go next\12\0"
.LC11:
	.ascii "COMMANDS\12\0"
.LC12:
	.ascii "1) DownLeft\12\0"
.LC13:
	.ascii "2) Down\12\0"
.LC14:
	.ascii "3) DownRight\12\0"
.LC15:
	.ascii "4) Left\12\0"
.LC16:
	.ascii "6) Right\12\0"
.LC17:
	.ascii "7) UpLeft\12\0"
.LC18:
	.ascii "8) Up\12\0"
.LC19:
	.ascii "9) UpRight\12\0"
	.align 8
.LC20:
	.ascii "(You may type -1 to save and quit)\12\0"
.LC21:
	.ascii " is not a direction\0"
.LC22:
	.ascii " is an invalid location\12\0"
	.section	.text$_ZN6GameUI14get_next_inputEi,"x"
	.linkonce discard
	.globl	_ZN6GameUI14get_next_inputEi
	.def	_ZN6GameUI14get_next_inputEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6GameUI14get_next_inputEi
_ZN6GameUI14get_next_inputEi:
.LFB2385:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	$0, -8(%rbp)
	movl	$-1, -4(%rbp)
	jmp	.L106
.L114:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSirsERi
	movl	-8(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L107
	movl	-8(%rbp), %eax
	jmp	.L115
.L107:
	movl	-8(%rbp), %eax
	cmpl	$5, %eax
	je	.L109
	movl	-8(%rbp), %eax
	cmpl	$9, %eax
	jg	.L109
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jg	.L110
.L109:
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L106
.L110:
	movl	-8(%rbp), %eax
	movl	16(%rbp), %edx
	movl	%eax, %ecx
	call	_ZN6GameUI15translate_inputEii
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L111
	cmpl	$24, -4(%rbp)
	jg	.L111
	movl	16(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	_Z17is_valid_diagonalii
	testl	%eax, %eax
	jne	.L112
.L111:
	movl	$1, %eax
	jmp	.L113
.L112:
	movl	$0, %eax
.L113:
	testb	%al, %al
	je	.L106
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L106:
	cmpl	$0, -4(%rbp)
	js	.L114
	cmpl	$24, -4(%rbp)
	jg	.L114
	movl	-4(%rbp), %eax
.L115:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "Remove current save? (Y for Yes, anything else for no)\0"
	.section	.text$_ZN6GameUI18prompt_remove_saveEv,"x"
	.linkonce discard
	.globl	_ZN6GameUI18prompt_remove_saveEv
	.def	_ZN6GameUI18prompt_remove_saveEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6GameUI18prompt_remove_saveEv
_ZN6GameUI18prompt_remove_saveEv:
.LFB2386:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-1(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	movzbl	-1(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "Enter anything to exit this game\0"
	.section	.text$_ZN6GameUI13wait_for_exitEv,"x"
	.linkonce discard
	.globl	_ZN6GameUI13wait_for_exitEv
	.def	_ZN6GameUI13wait_for_exitEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6GameUI13wait_for_exitEv
_ZN6GameUI13wait_for_exitEv:
.LFB2387:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-1(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC25:
	.ascii "save.txt\0"
.LC26:
	.ascii "Saved game\0"
.LC27:
	.ascii "Invalid position, you lose\0"
.LC28:
	.ascii "You win with \0"
.LC29:
	.ascii " points!\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2388:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$728, %rsp
	.seh_stackalloc	728
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5BoardC1Ev
	leaq	79(%rbp), %rax
	movq	%rax, 568(%rbp)
	nop
	nop
	leaq	79(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE12:
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB13:
	call	_ZN11FileManager6existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE13:
	xorl	$1, %eax
	movl	%eax, %ebx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	79(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	testb	%bl, %bl
	je	.L120
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5BoardC1Ev
	movq	80(%rbp), %rax
	movq	88(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	96(%rbp), %rax
	movq	104(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	112(%rbp), %rax
	movq	120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	128(%rbp), %rax
	movq	136(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	144(%rbp), %rax
	movq	152(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	160(%rbp), %rax
	movq	168(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	176(%rbp), %rax
	movq	184(%rbp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movzbl	192(%rbp), %eax
	movb	%al, 16(%rbp)
	jmp	.L121
.L120:
	leaq	383(%rbp), %rax
	movq	%rax, 560(%rbp)
	nop
	nop
	leaq	383(%rbp), %rdx
	leaq	336(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE14:
	leaq	208(%rbp), %rax
	leaq	336(%rbp), %rdx
	movq	%rax, %rcx
.LEHB15:
	call	_ZN11FileManager4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE15:
	movq	208(%rbp), %rax
	movq	216(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	224(%rbp), %rax
	movq	232(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	240(%rbp), %rax
	movq	248(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	256(%rbp), %rax
	movq	264(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	272(%rbp), %rax
	movq	280(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	288(%rbp), %rax
	movq	296(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	304(%rbp), %rax
	movq	312(%rbp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movzbl	320(%rbp), %eax
	movb	%al, 16(%rbp)
	leaq	336(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	383(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB16:
	call	_ZN5Board12print_statusEv
	call	_ZN6GameUI18prompt_remove_saveEv
	movb	%al, 591(%rbp)
	cmpb	$89, 591(%rbp)
	jne	.L121
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	remove
	leaq	384(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5BoardC1Ev
	movq	384(%rbp), %rax
	movq	392(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	400(%rbp), %rax
	movq	408(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	416(%rbp), %rax
	movq	424(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	464(%rbp), %rax
	movq	472(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	480(%rbp), %rax
	movq	488(%rbp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movzbl	496(%rbp), %eax
	movb	%al, 16(%rbp)
.L121:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board7startedEv
	testb	%al, %al
	je	.L123
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board9print_posEv
	call	_ZN6GameUI15get_first_inputEv
	movl	%eax, 584(%rbp)
	movl	584(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board5inputEi
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board8lose_conEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L123
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board9next_turnEv
	jmp	.L123
.L127:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board12print_statusEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board7get_posEv
	movl	%eax, %ecx
	call	_ZN6GameUI14get_next_inputEi
.LEHE16:
	movl	%eax, 580(%rbp)
	cmpl	$-1, 580(%rbp)
	jne	.L124
	leaq	551(%rbp), %rax
	movq	%rax, 552(%rbp)
	nop
	nop
	leaq	551(%rbp), %rdx
	leaq	512(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE17:
	leaq	-96(%rbp), %rdx
	leaq	512(%rbp), %rax
	movq	%rax, %rcx
.LEHB18:
	call	_ZN11FileManager4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER5Board
.LEHE18:
	leaq	512(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	551(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
.LEHB19:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	jmp	.L125
.L124:
	movl	580(%rbp), %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board5inputEi
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board9next_turnEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board8lose_conEv
	testb	%al, %al
	je	.L126
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board5printEv
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	remove
	jmp	.L125
.L126:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board7win_conEv
	testb	%al, %al
	je	.L123
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board5printEv
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board10get_pointsEv
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	remove
	jmp	.L125
.L123:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5Board8lose_conEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L127
.L125:
	call	_ZN6GameUI13wait_for_exitEv
	movl	$0, %eax
	jmp	.L141
.L136:
	movq	%rax, %rbx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L130
.L135:
	movq	%rax, %rbx
.L130:
	leaq	79(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.L138:
	movq	%rax, %rbx
	leaq	336(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L132
.L137:
	movq	%rax, %rbx
.L132:
	leaq	383(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.L140:
	movq	%rax, %rbx
	leaq	512(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L134
.L139:
	movq	%rax, %rbx
.L134:
	leaq	551(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE19:
.L141:
	addq	$728, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2388:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2388-.LLSDACSB2388
.LLSDACSB2388:
	.uleb128 .LEHB12-.LFB2388
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L135-.LFB2388
	.uleb128 0
	.uleb128 .LEHB13-.LFB2388
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L136-.LFB2388
	.uleb128 0
	.uleb128 .LEHB14-.LFB2388
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L137-.LFB2388
	.uleb128 0
	.uleb128 .LEHB15-.LFB2388
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L138-.LFB2388
	.uleb128 0
	.uleb128 .LEHB16-.LFB2388
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2388
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L139-.LFB2388
	.uleb128 0
	.uleb128 .LEHB18-.LFB2388
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L140-.LFB2388
	.uleb128 0
	.uleb128 .LEHB19-.LFB2388
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE2388:
	.text
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB2389:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L143
.L144:
	addq	$1, -8(%rbp)
.L143:
	movb	$0, -9(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-9(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L144
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB2488:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "basic_string: construction from null is not valid\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_:
.LFB2716:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	cmpq	$0, 40(%rbp)
	jne	.L148
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
.LEHB20:
	call	_ZSt19__throw_logic_errorPKc
.L148:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE20:
	jmp	.L151
.L150:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB21:
	call	_Unwind_Resume
	nop
.LEHE21:
.L151:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2716:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2716-.LLSDACSB2716
.LLSDACSB2716:
	.uleb128 .LEHB20-.LFB2716
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L150-.LFB2716
	.uleb128 0
	.uleb128 .LEHB21-.LFB2716
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE2716:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.def	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2717:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcED2Ev
	.def	_ZNSt15__new_allocatorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcED2Ev
_ZNSt15__new_allocatorIcED2Ev:
.LFB2771:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_:
.LFB2779:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev:
.LFB2782:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L158:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2782:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2782-.LLSDACSB2782
.LLSDACSB2782:
.LLSDACSE2782:
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2776:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	nop
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L163
	leaq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
.LEHB22:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE22:
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
	jmp	.L164
.L163:
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
.L164:
	movq	32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB23:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
.LEHE23:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	jmp	.L167
.L166:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB24:
	call	_Unwind_Resume
	nop
.LEHE24:
.L167:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2776:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2776-.LLSDACSB2776
.LLSDACSB2776:
	.uleb128 .LEHB22-.LFB2776
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB2776
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L166-.LFB2776
	.uleb128 0
	.uleb128 .LEHB24-.LFB2776
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE2776:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_;	.scl	2;	.type	32;	.endef
	.def	remove;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
