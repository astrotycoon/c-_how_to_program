
vir4:     file format elf32-i386

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .interp       00000013  08048134  08048134  00000134  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  08048148  08048148  00000148  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .hash         00000050  08048168  08048168  00000168  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .dynsym       000000f0  080481b8  080481b8  000001b8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynstr       00000178  080482a8  080482a8  000002a8  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .gnu.version  0000001e  08048420  08048420  00000420  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version_r 00000070  08048440  08048440  00000440  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .rel.dyn      00000018  080484b0  080484b0  000004b0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rel.plt      00000040  080484c8  080484c8  000004c8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .init         00000023  08048508  08048508  00000508  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .plt          00000090  08048530  08048530  00000530  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .text         000003f2  080485c0  080485c0  000005c0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .fini         00000014  080489b4  080489b4  000009b4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .rodata       000000a4  080489c8  080489c8  000009c8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 14 .eh_frame_hdr 00000064  08048a6c  08048a6c  00000a6c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame     000001c8  08048ad0  08048ad0  00000ad0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .gcc_except_table 000000c0  08048c98  08048c98  00000c98  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000004  08049d58  08049d58  00000d58  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000004  08049d5c  08049d5c  00000d5c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000004  08049d60  08049d60  00000d60  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      00000100  08049d64  08049d64  00000d64  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000004  08049e64  08049e64  00000e64  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      0000002c  08049e68  08049e68  00000e68  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000008  08049e94  08049e94  00000e94  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000070  08049ea0  08049ea0  00000e9c  2**5
                  ALLOC
 25 .comment      0000009d  00000000  00000000  00000e9c  2**0
                  CONTENTS, READONLY
 26 .debug_pubnames 0000007f  00000000  00000000  00000f39  2**0
                  CONTENTS, READONLY, DEBUGGING
 27 .debug_info   00000811  00000000  00000000  00000fb8  2**0
                  CONTENTS, READONLY, DEBUGGING
 28 .debug_abbrev 00000193  00000000  00000000  000017c9  2**0
                  CONTENTS, READONLY, DEBUGGING
 29 .debug_line   00000270  00000000  00000000  0000195c  2**0
                  CONTENTS, READONLY, DEBUGGING
 30 .debug_str    000002a2  00000000  00000000  00001bcc  2**0
                  CONTENTS, READONLY, DEBUGGING
 31 .debug_pubtypes 000000c1  00000000  00000000  00001e6e  2**0
                  CONTENTS, READONLY, DEBUGGING
 32 .debug_ranges 00000040  00000000  00000000  00001f2f  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .init:

08048508 <_init>:
 8048508:	53                   	push   %ebx
 8048509:	83 ec 08             	sub    $0x8,%esp
 804850c:	e8 df 00 00 00       	call   80485f0 <__x86.get_pc_thunk.bx>
 8048511:	81 c3 57 19 00 00    	add    $0x1957,%ebx
 8048517:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804851d:	85 c0                	test   %eax,%eax
 804851f:	74 05                	je     8048526 <_init+0x1e>
 8048521:	e8 1a 00 00 00       	call   8048540 <__gmon_start__@plt>
 8048526:	83 c4 08             	add    $0x8,%esp
 8048529:	5b                   	pop    %ebx
 804852a:	c3                   	ret    

Disassembly of section .plt:

08048530 <__gmon_start__@plt-0x10>:
 8048530:	ff 35 6c 9e 04 08    	pushl  0x8049e6c
 8048536:	ff 25 70 9e 04 08    	jmp    *0x8049e70
 804853c:	00 00                	add    %al,(%eax)
	...

08048540 <__gmon_start__@plt>:
 8048540:	ff 25 74 9e 04 08    	jmp    *0x8049e74
 8048546:	68 00 00 00 00       	push   $0x0
 804854b:	e9 e0 ff ff ff       	jmp    8048530 <_init+0x28>

08048550 <operator delete(void*)@plt>:
 8048550:	ff 25 78 9e 04 08    	jmp    *0x8049e78
 8048556:	68 08 00 00 00       	push   $0x8
 804855b:	e9 d0 ff ff ff       	jmp    8048530 <_init+0x28>

08048560 <__libc_start_main@plt>:
 8048560:	ff 25 7c 9e 04 08    	jmp    *0x8049e7c
 8048566:	68 10 00 00 00       	push   $0x10
 804856b:	e9 c0 ff ff ff       	jmp    8048530 <_init+0x28>

08048570 <std::terminate()@plt>:
 8048570:	ff 25 80 9e 04 08    	jmp    *0x8049e80
 8048576:	68 18 00 00 00       	push   $0x18
 804857b:	e9 b0 ff ff ff       	jmp    8048530 <_init+0x28>

08048580 <printf@plt>:
 8048580:	ff 25 84 9e 04 08    	jmp    *0x8049e84
 8048586:	68 20 00 00 00       	push   $0x20
 804858b:	e9 a0 ff ff ff       	jmp    8048530 <_init+0x28>

08048590 <__cxa_begin_catch@plt>:
 8048590:	ff 25 88 9e 04 08    	jmp    *0x8049e88
 8048596:	68 28 00 00 00       	push   $0x28
 804859b:	e9 90 ff ff ff       	jmp    8048530 <_init+0x28>

080485a0 <__gxx_personality_v0@plt>:
 80485a0:	ff 25 8c 9e 04 08    	jmp    *0x8049e8c
 80485a6:	68 30 00 00 00       	push   $0x30
 80485ab:	e9 80 ff ff ff       	jmp    8048530 <_init+0x28>

080485b0 <_Unwind_Resume@plt>:
 80485b0:	ff 25 90 9e 04 08    	jmp    *0x8049e90
 80485b6:	68 38 00 00 00       	push   $0x38
 80485bb:	e9 70 ff ff ff       	jmp    8048530 <_init+0x28>

Disassembly of section .text:

080485c0 <_start>:
 80485c0:	31 ed                	xor    %ebp,%ebp
 80485c2:	5e                   	pop    %esi
 80485c3:	89 e1                	mov    %esp,%ecx
 80485c5:	83 e4 f0             	and    $0xfffffff0,%esp
 80485c8:	50                   	push   %eax
 80485c9:	54                   	push   %esp
 80485ca:	52                   	push   %edx
 80485cb:	68 b0 89 04 08       	push   $0x80489b0
 80485d0:	68 50 89 04 08       	push   $0x8048950
 80485d5:	51                   	push   %ecx
 80485d6:	56                   	push   %esi
 80485d7:	68 c0 86 04 08       	push   $0x80486c0
 80485dc:	e8 7f ff ff ff       	call   8048560 <__libc_start_main@plt>
 80485e1:	f4                   	hlt    
 80485e2:	66 90                	xchg   %ax,%ax
 80485e4:	66 90                	xchg   %ax,%ax
 80485e6:	66 90                	xchg   %ax,%ax
 80485e8:	66 90                	xchg   %ax,%ax
 80485ea:	66 90                	xchg   %ax,%ax
 80485ec:	66 90                	xchg   %ax,%ax
 80485ee:	66 90                	xchg   %ax,%ax

080485f0 <__x86.get_pc_thunk.bx>:
 80485f0:	8b 1c 24             	mov    (%esp),%ebx
 80485f3:	c3                   	ret    
 80485f4:	66 90                	xchg   %ax,%ax
 80485f6:	66 90                	xchg   %ax,%ax
 80485f8:	66 90                	xchg   %ax,%ax
 80485fa:	66 90                	xchg   %ax,%ax
 80485fc:	66 90                	xchg   %ax,%ax
 80485fe:	66 90                	xchg   %ax,%ax

08048600 <deregister_tm_clones>:
 8048600:	b8 9f 9e 04 08       	mov    $0x8049e9f,%eax
 8048605:	2d 9c 9e 04 08       	sub    $0x8049e9c,%eax
 804860a:	83 f8 06             	cmp    $0x6,%eax
 804860d:	76 1a                	jbe    8048629 <deregister_tm_clones+0x29>
 804860f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048614:	85 c0                	test   %eax,%eax
 8048616:	74 11                	je     8048629 <deregister_tm_clones+0x29>
 8048618:	55                   	push   %ebp
 8048619:	89 e5                	mov    %esp,%ebp
 804861b:	83 ec 14             	sub    $0x14,%esp
 804861e:	68 9c 9e 04 08       	push   $0x8049e9c
 8048623:	ff d0                	call   *%eax
 8048625:	83 c4 10             	add    $0x10,%esp
 8048628:	c9                   	leave  
 8048629:	f3 c3                	repz ret 
 804862b:	90                   	nop
 804862c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048630 <register_tm_clones>:
 8048630:	b8 9c 9e 04 08       	mov    $0x8049e9c,%eax
 8048635:	2d 9c 9e 04 08       	sub    $0x8049e9c,%eax
 804863a:	c1 f8 02             	sar    $0x2,%eax
 804863d:	89 c2                	mov    %eax,%edx
 804863f:	c1 ea 1f             	shr    $0x1f,%edx
 8048642:	01 d0                	add    %edx,%eax
 8048644:	d1 f8                	sar    %eax
 8048646:	74 1b                	je     8048663 <register_tm_clones+0x33>
 8048648:	ba 00 00 00 00       	mov    $0x0,%edx
 804864d:	85 d2                	test   %edx,%edx
 804864f:	74 12                	je     8048663 <register_tm_clones+0x33>
 8048651:	55                   	push   %ebp
 8048652:	89 e5                	mov    %esp,%ebp
 8048654:	83 ec 10             	sub    $0x10,%esp
 8048657:	50                   	push   %eax
 8048658:	68 9c 9e 04 08       	push   $0x8049e9c
 804865d:	ff d2                	call   *%edx
 804865f:	83 c4 10             	add    $0x10,%esp
 8048662:	c9                   	leave  
 8048663:	f3 c3                	repz ret 
 8048665:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048670 <__do_global_dtors_aux>:
 8048670:	80 3d 0c 9f 04 08 00 	cmpb   $0x0,0x8049f0c
 8048677:	75 13                	jne    804868c <__do_global_dtors_aux+0x1c>
 8048679:	55                   	push   %ebp
 804867a:	89 e5                	mov    %esp,%ebp
 804867c:	83 ec 08             	sub    $0x8,%esp
 804867f:	e8 7c ff ff ff       	call   8048600 <deregister_tm_clones>
 8048684:	c6 05 0c 9f 04 08 01 	movb   $0x1,0x8049f0c
 804868b:	c9                   	leave  
 804868c:	f3 c3                	repz ret 
 804868e:	66 90                	xchg   %ax,%ax

08048690 <frame_dummy>:
 8048690:	b8 60 9d 04 08       	mov    $0x8049d60,%eax
 8048695:	8b 10                	mov    (%eax),%edx
 8048697:	85 d2                	test   %edx,%edx
 8048699:	75 05                	jne    80486a0 <frame_dummy+0x10>
 804869b:	eb 93                	jmp    8048630 <register_tm_clones>
 804869d:	8d 76 00             	lea    0x0(%esi),%esi
 80486a0:	ba 00 00 00 00       	mov    $0x0,%edx
 80486a5:	85 d2                	test   %edx,%edx
 80486a7:	74 f2                	je     804869b <frame_dummy+0xb>
 80486a9:	55                   	push   %ebp
 80486aa:	89 e5                	mov    %esp,%ebp
 80486ac:	83 ec 14             	sub    $0x14,%esp
 80486af:	50                   	push   %eax
 80486b0:	ff d2                	call   *%edx
 80486b2:	83 c4 10             	add    $0x10,%esp
 80486b5:	c9                   	leave  
 80486b6:	e9 75 ff ff ff       	jmp    8048630 <register_tm_clones>
 80486bb:	66 90                	xchg   %ax,%ax
 80486bd:	66 90                	xchg   %ax,%ax
 80486bf:	90                   	nop

080486c0 <main>:
//	~student() { printf("destroy student class\n"); }
	virtual ~student() { printf("destroy student class\n"); }
};

int main(int argc, const char *argv[])
{
 80486c0:	55                   	push   %ebp
 80486c1:	89 e5                	mov    %esp,%ebp
 80486c3:	83 ec 28             	sub    $0x28,%esp
 80486c6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80486c9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80486cc:	8d 55 e8             	lea    -0x18(%ebp),%edx
 80486cf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80486d6:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 80486d9:	89 45 f4             	mov    %eax,-0xc(%ebp)
	// 没咋看懂反汇编
//	printf("sizeof(human) = %zu\n", sizeof(human));
//	printf("sizeof(student) = %zu\n", sizeof(student));
	human *ph = NULL;
 80486dc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
#if 0
	ph = new student; 
	delete ph;
#else
	student st;
 80486e3:	89 14 24             	mov    %edx,(%esp)
 80486e6:	e8 35 00 00 00       	call   8048720 <student::student()>
 80486eb:	8d 45 e8             	lea    -0x18(%ebp),%eax
	ph = &st;
 80486ee:	89 c1                	mov    %eax,%ecx
 80486f0:	89 4d f0             	mov    %ecx,-0x10(%ebp)
#endif

	return 0;
 80486f3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80486fa:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8048701:	89 04 24             	mov    %eax,(%esp)
 8048704:	e8 97 00 00 00       	call   80487a0 <student::~student()>
}
 8048709:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804870c:	83 c4 28             	add    $0x28,%esp
 804870f:	5d                   	pop    %ebp
 8048710:	c3                   	ret    
 8048711:	66 90                	xchg   %ax,%ax
 8048713:	66 90                	xchg   %ax,%ax
 8048715:	66 90                	xchg   %ax,%ax
 8048717:	66 90                	xchg   %ax,%ax
 8048719:	66 90                	xchg   %ax,%ax
 804871b:	66 90                	xchg   %ax,%ax
 804871d:	66 90                	xchg   %ax,%ax
 804871f:	90                   	nop

08048720 <student::student()>:
};


class student : public human {
public:
	student() { printf("student constructor\n"); }
 8048720:	55                   	push   %ebp
 8048721:	89 e5                	mov    %esp,%ebp
 8048723:	83 ec 28             	sub    $0x28,%esp
 8048726:	8b 45 08             	mov    0x8(%ebp),%eax
 8048729:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804872c:	89 c1                	mov    %eax,%ecx
 804872e:	89 e2                	mov    %esp,%edx
 8048730:	89 02                	mov    %eax,(%edx)
 8048732:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048735:	89 4d ec             	mov    %ecx,-0x14(%ebp)
 8048738:	e8 d3 01 00 00       	call   8048910 <human::human()>
 804873d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048740:	c7 00 d8 89 04 08    	movl   $0x80489d8,(%eax)
 8048746:	89 e1                	mov    %esp,%ecx
 8048748:	c7 01 0c 8a 04 08    	movl   $0x8048a0c,(%ecx)
 804874e:	e8 2d fe ff ff       	call   8048580 <printf@plt>
 8048753:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048756:	e9 00 00 00 00       	jmp    804875b <student::student()+0x3b>
 804875b:	83 c4 28             	add    $0x28,%esp
 804875e:	5d                   	pop    %ebp
 804875f:	c3                   	ret    
 8048760:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048763:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048766:	89 e0                	mov    %esp,%eax
 8048768:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804876b:	89 10                	mov    %edx,(%eax)
 804876d:	e8 0e 01 00 00       	call   8048880 <human::~human()>
 8048772:	e9 00 00 00 00       	jmp    8048777 <student::student()+0x57>
 8048777:	e9 00 00 00 00       	jmp    804877c <student::student()+0x5c>
 804877c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804877f:	89 04 24             	mov    %eax,(%esp)
 8048782:	e8 29 fe ff ff       	call   80485b0 <_Unwind_Resume@plt>
 8048787:	89 04 24             	mov    %eax,(%esp)
 804878a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 804878d:	e8 7e 00 00 00       	call   8048810 <__clang_call_terminate>
 8048792:	66 90                	xchg   %ax,%ax
 8048794:	66 90                	xchg   %ax,%ax
 8048796:	66 90                	xchg   %ax,%ax
 8048798:	66 90                	xchg   %ax,%ax
 804879a:	66 90                	xchg   %ax,%ax
 804879c:	66 90                	xchg   %ax,%ax
 804879e:	66 90                	xchg   %ax,%ax

080487a0 <student::~student()>:
//	~student() { printf("destroy student class\n"); }
	virtual ~student() { printf("destroy student class\n"); }
 80487a0:	55                   	push   %ebp
 80487a1:	89 e5                	mov    %esp,%ebp
 80487a3:	83 ec 28             	sub    $0x28,%esp
 80487a6:	8b 45 08             	mov    0x8(%ebp),%eax
 80487a9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80487ac:	89 c1                	mov    %eax,%ecx
 80487ae:	c7 00 d8 89 04 08    	movl   $0x80489d8,(%eax)
 80487b4:	89 e0                	mov    %esp,%eax
 80487b6:	c7 00 e0 89 04 08    	movl   $0x80489e0,(%eax)
 80487bc:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 80487bf:	e8 bc fd ff ff       	call   8048580 <printf@plt>
 80487c4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80487c7:	e9 00 00 00 00       	jmp    80487cc <student::~student()+0x2c>
 80487cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80487cf:	89 04 24             	mov    %eax,(%esp)
 80487d2:	e8 a9 00 00 00       	call   8048880 <human::~human()>
 80487d7:	83 c4 28             	add    $0x28,%esp
 80487da:	5d                   	pop    %ebp
 80487db:	c3                   	ret    
 80487dc:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80487df:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80487e2:	89 e0                	mov    %esp,%eax
 80487e4:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80487e7:	89 10                	mov    %edx,(%eax)
 80487e9:	e8 92 00 00 00       	call   8048880 <human::~human()>
 80487ee:	e9 00 00 00 00       	jmp    80487f3 <student::~student()+0x53>
 80487f3:	e9 00 00 00 00       	jmp    80487f8 <student::~student()+0x58>
 80487f8:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80487fb:	89 04 24             	mov    %eax,(%esp)
 80487fe:	e8 ad fd ff ff       	call   80485b0 <_Unwind_Resume@plt>
 8048803:	89 04 24             	mov    %eax,(%esp)
 8048806:	89 55 e8             	mov    %edx,-0x18(%ebp)
 8048809:	e8 02 00 00 00       	call   8048810 <__clang_call_terminate>
 804880e:	66 90                	xchg   %ax,%ax

08048810 <__clang_call_terminate>:
 8048810:	55                   	push   %ebp
 8048811:	89 e5                	mov    %esp,%ebp
 8048813:	83 ec 08             	sub    $0x8,%esp
 8048816:	8b 45 08             	mov    0x8(%ebp),%eax
 8048819:	89 04 24             	mov    %eax,(%esp)
 804881c:	e8 6f fd ff ff       	call   8048590 <__cxa_begin_catch@plt>
 8048821:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048824:	e8 47 fd ff ff       	call   8048570 <std::terminate()@plt>
 8048829:	66 90                	xchg   %ax,%ax
 804882b:	66 90                	xchg   %ax,%ax
 804882d:	66 90                	xchg   %ax,%ax
 804882f:	90                   	nop

08048830 <student::~student()>:
 8048830:	55                   	push   %ebp
 8048831:	89 e5                	mov    %esp,%ebp
 8048833:	83 ec 18             	sub    $0x18,%esp
 8048836:	8b 45 08             	mov    0x8(%ebp),%eax
 8048839:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804883c:	89 c1                	mov    %eax,%ecx
 804883e:	89 e2                	mov    %esp,%edx
 8048840:	89 02                	mov    %eax,(%edx)
 8048842:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 8048845:	e8 56 ff ff ff       	call   80487a0 <student::~student()>
 804884a:	e9 00 00 00 00       	jmp    804884f <student::~student()+0x1f>
 804884f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048852:	89 04 24             	mov    %eax,(%esp)
 8048855:	e8 f6 fc ff ff       	call   8048550 <operator delete(void*)@plt>
 804885a:	83 c4 18             	add    $0x18,%esp
 804885d:	5d                   	pop    %ebp
 804885e:	c3                   	ret    
 804885f:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048862:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048865:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048868:	89 04 24             	mov    %eax,(%esp)
 804886b:	e8 e0 fc ff ff       	call   8048550 <operator delete(void*)@plt>
 8048870:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048873:	89 04 24             	mov    %eax,(%esp)
 8048876:	e8 35 fd ff ff       	call   80485b0 <_Unwind_Resume@plt>
 804887b:	66 90                	xchg   %ax,%ax
 804887d:	66 90                	xchg   %ax,%ax
 804887f:	90                   	nop

08048880 <human::~human()>:

class human {	// 抽象类 abstract class -- 不能创建抽象类的对象
public:
	human() { printf("human constructor\n"); }
//	~human() { printf("destroy human class\n"); }
	virtual ~human() { printf("destroy human class\n"); }
 8048880:	55                   	push   %ebp
 8048881:	89 e5                	mov    %esp,%ebp
 8048883:	83 ec 18             	sub    $0x18,%esp
 8048886:	8b 45 08             	mov    0x8(%ebp),%eax
 8048889:	8d 0d f7 89 04 08    	lea    0x80489f7,%ecx
 804888f:	8d 15 5c 8a 04 08    	lea    0x8048a5c,%edx
 8048895:	81 c2 08 00 00 00    	add    $0x8,%edx
 804889b:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804889e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80488a1:	89 10                	mov    %edx,(%eax)
 80488a3:	89 0c 24             	mov    %ecx,(%esp)
 80488a6:	e8 d5 fc ff ff       	call   8048580 <printf@plt>
 80488ab:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80488ae:	83 c4 18             	add    $0x18,%esp
 80488b1:	5d                   	pop    %ebp
 80488b2:	c3                   	ret    
 80488b3:	66 90                	xchg   %ax,%ax
 80488b5:	66 90                	xchg   %ax,%ax
 80488b7:	66 90                	xchg   %ax,%ax
 80488b9:	66 90                	xchg   %ax,%ax
 80488bb:	66 90                	xchg   %ax,%ax
 80488bd:	66 90                	xchg   %ax,%ax
 80488bf:	90                   	nop

080488c0 <human::~human()>:
 80488c0:	55                   	push   %ebp
 80488c1:	89 e5                	mov    %esp,%ebp
 80488c3:	83 ec 18             	sub    $0x18,%esp
 80488c6:	8b 45 08             	mov    0x8(%ebp),%eax
 80488c9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80488cc:	89 c1                	mov    %eax,%ecx
 80488ce:	89 e2                	mov    %esp,%edx
 80488d0:	89 02                	mov    %eax,(%edx)
 80488d2:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 80488d5:	e8 a6 ff ff ff       	call   8048880 <human::~human()>
 80488da:	e9 00 00 00 00       	jmp    80488df <human::~human()+0x1f>
 80488df:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80488e2:	89 04 24             	mov    %eax,(%esp)
 80488e5:	e8 66 fc ff ff       	call   8048550 <operator delete(void*)@plt>
 80488ea:	83 c4 18             	add    $0x18,%esp
 80488ed:	5d                   	pop    %ebp
 80488ee:	c3                   	ret    
 80488ef:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80488f2:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80488f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80488f8:	89 04 24             	mov    %eax,(%esp)
 80488fb:	e8 50 fc ff ff       	call   8048550 <operator delete(void*)@plt>
 8048900:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048903:	89 04 24             	mov    %eax,(%esp)
 8048906:	e8 a5 fc ff ff       	call   80485b0 <_Unwind_Resume@plt>
 804890b:	66 90                	xchg   %ax,%ax
 804890d:	66 90                	xchg   %ax,%ax
 804890f:	90                   	nop

08048910 <human::human()>:
#include <cstdio>

class human {	// 抽象类 abstract class -- 不能创建抽象类的对象
public:
	human() { printf("human constructor\n"); }
 8048910:	55                   	push   %ebp
 8048911:	89 e5                	mov    %esp,%ebp
 8048913:	83 ec 18             	sub    $0x18,%esp
 8048916:	8b 45 08             	mov    0x8(%ebp),%eax
 8048919:	8d 0d 21 8a 04 08    	lea    0x8048a21,%ecx
 804891f:	8d 15 5c 8a 04 08    	lea    0x8048a5c,%edx
 8048925:	81 c2 08 00 00 00    	add    $0x8,%edx
 804892b:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804892e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048931:	89 10                	mov    %edx,(%eax)
 8048933:	89 0c 24             	mov    %ecx,(%esp)
 8048936:	e8 45 fc ff ff       	call   8048580 <printf@plt>
 804893b:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804893e:	83 c4 18             	add    $0x18,%esp
 8048941:	5d                   	pop    %ebp
 8048942:	c3                   	ret    
 8048943:	66 90                	xchg   %ax,%ax
 8048945:	66 90                	xchg   %ax,%ax
 8048947:	66 90                	xchg   %ax,%ax
 8048949:	66 90                	xchg   %ax,%ax
 804894b:	66 90                	xchg   %ax,%ax
 804894d:	66 90                	xchg   %ax,%ax
 804894f:	90                   	nop

08048950 <__libc_csu_init>:
 8048950:	55                   	push   %ebp
 8048951:	57                   	push   %edi
 8048952:	31 ff                	xor    %edi,%edi
 8048954:	56                   	push   %esi
 8048955:	53                   	push   %ebx
 8048956:	e8 95 fc ff ff       	call   80485f0 <__x86.get_pc_thunk.bx>
 804895b:	81 c3 0d 15 00 00    	add    $0x150d,%ebx
 8048961:	83 ec 0c             	sub    $0xc,%esp
 8048964:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048968:	8d b3 f4 fe ff ff    	lea    -0x10c(%ebx),%esi
 804896e:	e8 95 fb ff ff       	call   8048508 <_init>
 8048973:	8d 83 f0 fe ff ff    	lea    -0x110(%ebx),%eax
 8048979:	29 c6                	sub    %eax,%esi
 804897b:	c1 fe 02             	sar    $0x2,%esi
 804897e:	85 f6                	test   %esi,%esi
 8048980:	74 23                	je     80489a5 <__libc_csu_init+0x55>
 8048982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048988:	83 ec 04             	sub    $0x4,%esp
 804898b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804898f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048993:	55                   	push   %ebp
 8048994:	ff 94 bb f0 fe ff ff 	call   *-0x110(%ebx,%edi,4)
 804899b:	83 c7 01             	add    $0x1,%edi
 804899e:	83 c4 10             	add    $0x10,%esp
 80489a1:	39 f7                	cmp    %esi,%edi
 80489a3:	75 e3                	jne    8048988 <__libc_csu_init+0x38>
 80489a5:	83 c4 0c             	add    $0xc,%esp
 80489a8:	5b                   	pop    %ebx
 80489a9:	5e                   	pop    %esi
 80489aa:	5f                   	pop    %edi
 80489ab:	5d                   	pop    %ebp
 80489ac:	c3                   	ret    
 80489ad:	8d 76 00             	lea    0x0(%esi),%esi

080489b0 <__libc_csu_fini>:
 80489b0:	f3 c3                	repz ret 

Disassembly of section .fini:

080489b4 <_fini>:
 80489b4:	53                   	push   %ebx
 80489b5:	83 ec 08             	sub    $0x8,%esp
 80489b8:	e8 33 fc ff ff       	call   80485f0 <__x86.get_pc_thunk.bx>
 80489bd:	81 c3 ab 14 00 00    	add    $0x14ab,%ebx
 80489c3:	83 c4 08             	add    $0x8,%esp
 80489c6:	5b                   	pop    %ebx
 80489c7:	c3                   	ret    
