
test4:     file format elf32-i386

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .interp       00000013  08048134  08048134  00000134  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  08048148  08048148  00000148  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .hash         00000048  08048168  08048168  00000168  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .dynsym       000000d0  080481b0  080481b0  000001b0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynstr       00000128  08048280  08048280  00000280  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .gnu.version  0000001a  080483a8  080483a8  000003a8  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version_r 00000070  080483c4  080483c4  000003c4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .rel.dyn      00000008  08048434  08048434  00000434  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rel.plt      00000040  0804843c  0804843c  0000043c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .init         00000023  0804847c  0804847c  0000047c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .plt          00000090  080484a0  080484a0  000004a0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .text         00000342  08048530  08048530  00000530  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .fini         00000014  08048874  08048874  00000874  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .rodata       00000008  08048888  08048888  00000888  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 14 .eh_frame_hdr 00000054  08048890  08048890  00000890  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame     00000184  080488e4  080488e4  000008e4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .gcc_except_table 00000034  08048a68  08048a68  00000a68  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000004  08049a9c  08049a9c  00000a9c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000004  08049aa0  08049aa0  00000aa0  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000004  08049aa4  08049aa4  00000aa4  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      00000100  08049aa8  08049aa8  00000aa8  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000004  08049ba8  08049ba8  00000ba8  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      0000002c  08049bac  08049bac  00000bac  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000008  08049bd8  08049bd8  00000bd8  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000004  08049be0  08049be0  00000be0  2**2
                  ALLOC
 25 .comment      0000009d  00000000  00000000  00000be0  2**0
                  CONTENTS, READONLY
 26 .debug_pubnames 0000009c  00000000  00000000  00000c7d  2**0
                  CONTENTS, READONLY, DEBUGGING
 27 .debug_info   00000c44  00000000  00000000  00000d19  2**0
                  CONTENTS, READONLY, DEBUGGING
 28 .debug_abbrev 000001bf  00000000  00000000  0000195d  2**0
                  CONTENTS, READONLY, DEBUGGING
 29 .debug_line   000002c4  00000000  00000000  00001b1c  2**0
                  CONTENTS, READONLY, DEBUGGING
 30 .debug_str    0000048b  00000000  00000000  00001de0  2**0
                  CONTENTS, READONLY, DEBUGGING
 31 .debug_pubtypes 0000016a  00000000  00000000  0000226b  2**0
                  CONTENTS, READONLY, DEBUGGING
 32 .debug_ranges 00000030  00000000  00000000  000023d5  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .init:

0804847c <_init>:
 804847c:	53                   	push   %ebx
 804847d:	83 ec 08             	sub    $0x8,%esp
 8048480:	e8 db 00 00 00       	call   8048560 <__x86.get_pc_thunk.bx>
 8048485:	81 c3 27 17 00 00    	add    $0x1727,%ebx
 804848b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048491:	85 c0                	test   %eax,%eax
 8048493:	74 05                	je     804849a <_init+0x1e>
 8048495:	e8 16 00 00 00       	call   80484b0 <__gmon_start__@plt>
 804849a:	83 c4 08             	add    $0x8,%esp
 804849d:	5b                   	pop    %ebx
 804849e:	c3                   	ret    

Disassembly of section .plt:

080484a0 <__gmon_start__@plt-0x10>:
 80484a0:	ff 35 b0 9b 04 08    	pushl  0x8049bb0
 80484a6:	ff 25 b4 9b 04 08    	jmp    *0x8049bb4
 80484ac:	00 00                	add    %al,(%eax)
	...

080484b0 <__gmon_start__@plt>:
 80484b0:	ff 25 b8 9b 04 08    	jmp    *0x8049bb8
 80484b6:	68 00 00 00 00       	push   $0x0
 80484bb:	e9 e0 ff ff ff       	jmp    80484a0 <_init+0x24>

080484c0 <operator delete(void*)@plt>:
 80484c0:	ff 25 bc 9b 04 08    	jmp    *0x8049bbc
 80484c6:	68 08 00 00 00       	push   $0x8
 80484cb:	e9 d0 ff ff ff       	jmp    80484a0 <_init+0x24>

080484d0 <__libc_start_main@plt>:
 80484d0:	ff 25 c0 9b 04 08    	jmp    *0x8049bc0
 80484d6:	68 10 00 00 00       	push   $0x10
 80484db:	e9 c0 ff ff ff       	jmp    80484a0 <_init+0x24>

080484e0 <std::terminate()@plt>:
 80484e0:	ff 25 c4 9b 04 08    	jmp    *0x8049bc4
 80484e6:	68 18 00 00 00       	push   $0x18
 80484eb:	e9 b0 ff ff ff       	jmp    80484a0 <_init+0x24>

080484f0 <operator new(unsigned int)@plt>:
 80484f0:	ff 25 c8 9b 04 08    	jmp    *0x8049bc8
 80484f6:	68 20 00 00 00       	push   $0x20
 80484fb:	e9 a0 ff ff ff       	jmp    80484a0 <_init+0x24>

08048500 <__cxa_begin_catch@plt>:
 8048500:	ff 25 cc 9b 04 08    	jmp    *0x8049bcc
 8048506:	68 28 00 00 00       	push   $0x28
 804850b:	e9 90 ff ff ff       	jmp    80484a0 <_init+0x24>

08048510 <__gxx_personality_v0@plt>:
 8048510:	ff 25 d0 9b 04 08    	jmp    *0x8049bd0
 8048516:	68 30 00 00 00       	push   $0x30
 804851b:	e9 80 ff ff ff       	jmp    80484a0 <_init+0x24>

08048520 <_Unwind_Resume@plt>:
 8048520:	ff 25 d4 9b 04 08    	jmp    *0x8049bd4
 8048526:	68 38 00 00 00       	push   $0x38
 804852b:	e9 70 ff ff ff       	jmp    80484a0 <_init+0x24>

Disassembly of section .text:

08048530 <_start>:
 8048530:	31 ed                	xor    %ebp,%ebp
 8048532:	5e                   	pop    %esi
 8048533:	89 e1                	mov    %esp,%ecx
 8048535:	83 e4 f0             	and    $0xfffffff0,%esp
 8048538:	50                   	push   %eax
 8048539:	54                   	push   %esp
 804853a:	52                   	push   %edx
 804853b:	68 70 88 04 08       	push   $0x8048870
 8048540:	68 10 88 04 08       	push   $0x8048810
 8048545:	51                   	push   %ecx
 8048546:	56                   	push   %esi
 8048547:	68 30 86 04 08       	push   $0x8048630
 804854c:	e8 7f ff ff ff       	call   80484d0 <__libc_start_main@plt>
 8048551:	f4                   	hlt    
 8048552:	66 90                	xchg   %ax,%ax
 8048554:	66 90                	xchg   %ax,%ax
 8048556:	66 90                	xchg   %ax,%ax
 8048558:	66 90                	xchg   %ax,%ax
 804855a:	66 90                	xchg   %ax,%ax
 804855c:	66 90                	xchg   %ax,%ax
 804855e:	66 90                	xchg   %ax,%ax

08048560 <__x86.get_pc_thunk.bx>:
 8048560:	8b 1c 24             	mov    (%esp),%ebx
 8048563:	c3                   	ret    
 8048564:	66 90                	xchg   %ax,%ax
 8048566:	66 90                	xchg   %ax,%ax
 8048568:	66 90                	xchg   %ax,%ax
 804856a:	66 90                	xchg   %ax,%ax
 804856c:	66 90                	xchg   %ax,%ax
 804856e:	66 90                	xchg   %ax,%ax

08048570 <deregister_tm_clones>:
 8048570:	b8 e3 9b 04 08       	mov    $0x8049be3,%eax
 8048575:	2d e0 9b 04 08       	sub    $0x8049be0,%eax
 804857a:	83 f8 06             	cmp    $0x6,%eax
 804857d:	76 1a                	jbe    8048599 <deregister_tm_clones+0x29>
 804857f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048584:	85 c0                	test   %eax,%eax
 8048586:	74 11                	je     8048599 <deregister_tm_clones+0x29>
 8048588:	55                   	push   %ebp
 8048589:	89 e5                	mov    %esp,%ebp
 804858b:	83 ec 14             	sub    $0x14,%esp
 804858e:	68 e0 9b 04 08       	push   $0x8049be0
 8048593:	ff d0                	call   *%eax
 8048595:	83 c4 10             	add    $0x10,%esp
 8048598:	c9                   	leave  
 8048599:	f3 c3                	repz ret 
 804859b:	90                   	nop
 804859c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080485a0 <register_tm_clones>:
 80485a0:	b8 e0 9b 04 08       	mov    $0x8049be0,%eax
 80485a5:	2d e0 9b 04 08       	sub    $0x8049be0,%eax
 80485aa:	c1 f8 02             	sar    $0x2,%eax
 80485ad:	89 c2                	mov    %eax,%edx
 80485af:	c1 ea 1f             	shr    $0x1f,%edx
 80485b2:	01 d0                	add    %edx,%eax
 80485b4:	d1 f8                	sar    %eax
 80485b6:	74 1b                	je     80485d3 <register_tm_clones+0x33>
 80485b8:	ba 00 00 00 00       	mov    $0x0,%edx
 80485bd:	85 d2                	test   %edx,%edx
 80485bf:	74 12                	je     80485d3 <register_tm_clones+0x33>
 80485c1:	55                   	push   %ebp
 80485c2:	89 e5                	mov    %esp,%ebp
 80485c4:	83 ec 10             	sub    $0x10,%esp
 80485c7:	50                   	push   %eax
 80485c8:	68 e0 9b 04 08       	push   $0x8049be0
 80485cd:	ff d2                	call   *%edx
 80485cf:	83 c4 10             	add    $0x10,%esp
 80485d2:	c9                   	leave  
 80485d3:	f3 c3                	repz ret 
 80485d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080485e0 <__do_global_dtors_aux>:
 80485e0:	80 3d e0 9b 04 08 00 	cmpb   $0x0,0x8049be0
 80485e7:	75 13                	jne    80485fc <__do_global_dtors_aux+0x1c>
 80485e9:	55                   	push   %ebp
 80485ea:	89 e5                	mov    %esp,%ebp
 80485ec:	83 ec 08             	sub    $0x8,%esp
 80485ef:	e8 7c ff ff ff       	call   8048570 <deregister_tm_clones>
 80485f4:	c6 05 e0 9b 04 08 01 	movb   $0x1,0x8049be0
 80485fb:	c9                   	leave  
 80485fc:	f3 c3                	repz ret 
 80485fe:	66 90                	xchg   %ax,%ax

08048600 <frame_dummy>:
 8048600:	b8 a4 9a 04 08       	mov    $0x8049aa4,%eax
 8048605:	8b 10                	mov    (%eax),%edx
 8048607:	85 d2                	test   %edx,%edx
 8048609:	75 05                	jne    8048610 <frame_dummy+0x10>
 804860b:	eb 93                	jmp    80485a0 <register_tm_clones>
 804860d:	8d 76 00             	lea    0x0(%esi),%esi
 8048610:	ba 00 00 00 00       	mov    $0x0,%edx
 8048615:	85 d2                	test   %edx,%edx
 8048617:	74 f2                	je     804860b <frame_dummy+0xb>
 8048619:	55                   	push   %ebp
 804861a:	89 e5                	mov    %esp,%ebp
 804861c:	83 ec 14             	sub    $0x14,%esp
 804861f:	50                   	push   %eax
 8048620:	ff d2                	call   *%edx
 8048622:	83 c4 10             	add    $0x10,%esp
 8048625:	c9                   	leave  
 8048626:	e9 75 ff ff ff       	jmp    80485a0 <register_tm_clones>
 804862b:	66 90                	xchg   %ax,%ax
 804862d:	66 90                	xchg   %ax,%ax
 804862f:	90                   	nop

08048630 <main>:
	keyboard *pkb;		// 指针类型的成员变量
	int mval_;	// 对象类型的成员变量
};

int main(int argc, const char *argv[])
{
 8048630:	55                   	push   %ebp
 8048631:	89 e5                	mov    %esp,%ebp
 8048633:	83 ec 48             	sub    $0x48,%esp
 8048636:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048639:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804863c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048643:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 8048646:	89 45 f4             	mov    %eax,-0xc(%ebp)
	computer c1;
 8048649:	89 e0                	mov    %esp,%eax
 804864b:	8d 4d e8             	lea    -0x18(%ebp),%ecx
 804864e:	89 08                	mov    %ecx,(%eax)
 8048650:	e8 ab 00 00 00       	call   8048700 <computer::computer()>
	keyboard *pkb = new keyboard;
 8048655:	89 e0                	mov    %esp,%eax
 8048657:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
 804865d:	e8 8e fe ff ff       	call   80484f0 <operator new(unsigned int)@plt>
 8048662:	89 45 c8             	mov    %eax,-0x38(%ebp)
 8048665:	e9 00 00 00 00       	jmp    804866a <main+0x3a>
 804866a:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804866d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
	c1.set_keyboard(pkb);
 8048670:	89 e1                	mov    %esp,%ecx
 8048672:	89 41 04             	mov    %eax,0x4(%ecx)
 8048675:	8d 55 e8             	lea    -0x18(%ebp),%edx
 8048678:	89 11                	mov    %edx,(%ecx)
 804867a:	e8 a1 00 00 00       	call   8048720 <computer::set_keyboard(keyboard*)>
 804867f:	e9 00 00 00 00       	jmp    8048684 <main+0x54>

	computer c2 = c1;	// 调用拷贝构造函数
 8048684:	89 e0                	mov    %esp,%eax
 8048686:	8d 4d e8             	lea    -0x18(%ebp),%ecx
 8048689:	89 48 04             	mov    %ecx,0x4(%eax)
 804868c:	8d 4d d0             	lea    -0x30(%ebp),%ecx
 804868f:	89 08                	mov    %ecx,(%eax)
 8048691:	e8 aa 00 00 00       	call   8048740 <computer::computer(computer const&)>
 8048696:	e9 00 00 00 00       	jmp    804869b <main+0x6b>
//	computer c2(c1);

	return 0;	
 804869b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80486a2:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
 80486a9:	89 e0                	mov    %esp,%eax
 80486ab:	8d 4d d0             	lea    -0x30(%ebp),%ecx
 80486ae:	89 08                	mov    %ecx,(%eax)
 80486b0:	e8 fb 00 00 00       	call   80487b0 <computer::~computer()>
 80486b5:	e9 17 00 00 00       	jmp    80486d1 <main+0xa1>
}
 80486ba:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80486bd:	89 55 dc             	mov    %edx,-0x24(%ebp)
 80486c0:	89 e0                	mov    %esp,%eax
 80486c2:	8d 55 e8             	lea    -0x18(%ebp),%edx
 80486c5:	89 10                	mov    %edx,(%eax)
 80486c7:	e8 e4 00 00 00       	call   80487b0 <computer::~computer()>
 80486cc:	e9 13 00 00 00       	jmp    80486e4 <main+0xb4>
 80486d1:	8d 45 e8             	lea    -0x18(%ebp),%eax
	c1.set_keyboard(pkb);

	computer c2 = c1;	// 调用拷贝构造函数
//	computer c2(c1);

	return 0;	
 80486d4:	89 04 24             	mov    %eax,(%esp)
 80486d7:	e8 d4 00 00 00       	call   80487b0 <computer::~computer()>
}
 80486dc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80486df:	83 c4 48             	add    $0x48,%esp
 80486e2:	5d                   	pop    %ebp
 80486e3:	c3                   	ret    
 80486e4:	e9 00 00 00 00       	jmp    80486e9 <main+0xb9>
 80486e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80486ec:	89 04 24             	mov    %eax,(%esp)
 80486ef:	e8 2c fe ff ff       	call   8048520 <_Unwind_Resume@plt>
 80486f4:	89 04 24             	mov    %eax,(%esp)
 80486f7:	89 55 c4             	mov    %edx,-0x3c(%ebp)
 80486fa:	e8 f1 00 00 00       	call   80487f0 <__clang_call_terminate>
 80486ff:	90                   	nop

08048700 <computer::computer()>:
class computer {
public:
	// default constructor
	computer()
		:pkb(NULL), mval_(0) 
	{}
 8048700:	55                   	push   %ebp
 8048701:	89 e5                	mov    %esp,%ebp
 8048703:	50                   	push   %eax
 8048704:	8b 45 08             	mov    0x8(%ebp),%eax
 8048707:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804870a:	8b 45 fc             	mov    -0x4(%ebp),%eax

class computer {
public:
	// default constructor
	computer()
		:pkb(NULL), mval_(0) 
 804870d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8048713:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
	{}
 804871a:	83 c4 04             	add    $0x4,%esp
 804871d:	5d                   	pop    %ebp
 804871e:	c3                   	ret    
 804871f:	90                   	nop

08048720 <computer::set_keyboard(keyboard*)>:
		delete pkb;
		pkb = NULL; 
	}

	void set_keyboard(keyboard *pkb) 
	{
 8048720:	55                   	push   %ebp
 8048721:	89 e5                	mov    %esp,%ebp
 8048723:	83 ec 08             	sub    $0x8,%esp
 8048726:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048729:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804872c:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 804872f:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048732:	8b 45 fc             	mov    -0x4(%ebp),%eax
		this->pkb = pkb;
 8048735:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 8048738:	89 08                	mov    %ecx,(%eax)
	}
 804873a:	83 c4 08             	add    $0x8,%esp
 804873d:	5d                   	pop    %ebp
 804873e:	c3                   	ret    
 804873f:	90                   	nop

08048740 <computer::computer(computer const&)>:

#if 1
	// copy constructor
	computer(const computer &com)
			:mval_(com.mval_)
	{
 8048740:	55                   	push   %ebp
 8048741:	89 e5                	mov    %esp,%ebp
 8048743:	83 ec 18             	sub    $0x18,%esp
 8048746:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048749:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804874c:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 804874f:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048752:	8b 45 fc             	mov    -0x4(%ebp),%eax
	{}

#if 1
	// copy constructor
	computer(const computer &com)
			:mval_(com.mval_)
 8048755:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 8048758:	8b 49 04             	mov    0x4(%ecx),%ecx
 804875b:	89 48 04             	mov    %ecx,0x4(%eax)
			this->pkb = new keyboard(*oldpkb);	// call keyboard default copy constructor
		} else {
			this->pkb = NULL;
		}	
#endif
		delete this->pkb;
 804875e:	8b 08                	mov    (%eax),%ecx
 8048760:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
 8048766:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048769:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804876c:	0f 84 0b 00 00 00    	je     804877d <computer::computer(computer const&)+0x3d>
 8048772:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048775:	89 04 24             	mov    %eax,(%esp)
 8048778:	e8 43 fd ff ff       	call   80484c0 <operator delete(void*)@plt>
 804877d:	b8 04 00 00 00       	mov    $0x4,%eax
		this->pkb = new keyboard(*com.pkb);
 8048782:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048789:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804878c:	e8 5f fd ff ff       	call   80484f0 <operator new(unsigned int)@plt>
 8048791:	89 c1                	mov    %eax,%ecx
 8048793:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048796:	8b 12                	mov    (%edx),%edx
 8048798:	8b 12                	mov    (%edx),%edx
 804879a:	89 10                	mov    %edx,(%eax)
 804879c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804879f:	89 08                	mov    %ecx,(%eax)
	}
 80487a1:	83 c4 18             	add    $0x18,%esp
 80487a4:	5d                   	pop    %ebp
 80487a5:	c3                   	ret    
 80487a6:	66 90                	xchg   %ax,%ax
 80487a8:	66 90                	xchg   %ax,%ax
 80487aa:	66 90                	xchg   %ax,%ax
 80487ac:	66 90                	xchg   %ax,%ax
 80487ae:	66 90                	xchg   %ax,%ax

080487b0 <computer::~computer()>:
#endif

	// destructor
	~computer()  
	{
 80487b0:	55                   	push   %ebp
 80487b1:	89 e5                	mov    %esp,%ebp
 80487b3:	83 ec 18             	sub    $0x18,%esp
 80487b6:	8b 45 08             	mov    0x8(%ebp),%eax
 80487b9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80487bc:	8b 45 fc             	mov    -0x4(%ebp),%eax
		delete pkb;
 80487bf:	8b 08                	mov    (%eax),%ecx
 80487c1:	81 f9 00 00 00 00    	cmp    $0x0,%ecx
 80487c7:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80487ca:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 80487cd:	0f 84 0b 00 00 00    	je     80487de <computer::~computer()+0x2e>
 80487d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80487d6:	89 04 24             	mov    %eax,(%esp)
 80487d9:	e8 e2 fc ff ff       	call   80484c0 <operator delete(void*)@plt>
		pkb = NULL; 
 80487de:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80487e1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
	}
 80487e7:	83 c4 18             	add    $0x18,%esp
 80487ea:	5d                   	pop    %ebp
 80487eb:	c3                   	ret    
 80487ec:	66 90                	xchg   %ax,%ax
 80487ee:	66 90                	xchg   %ax,%ax

080487f0 <__clang_call_terminate>:
 80487f0:	55                   	push   %ebp
 80487f1:	89 e5                	mov    %esp,%ebp
 80487f3:	83 ec 08             	sub    $0x8,%esp
 80487f6:	8b 45 08             	mov    0x8(%ebp),%eax
 80487f9:	89 04 24             	mov    %eax,(%esp)
 80487fc:	e8 ff fc ff ff       	call   8048500 <__cxa_begin_catch@plt>
 8048801:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048804:	e8 d7 fc ff ff       	call   80484e0 <std::terminate()@plt>
 8048809:	66 90                	xchg   %ax,%ax
 804880b:	66 90                	xchg   %ax,%ax
 804880d:	66 90                	xchg   %ax,%ax
 804880f:	90                   	nop

08048810 <__libc_csu_init>:
 8048810:	55                   	push   %ebp
 8048811:	57                   	push   %edi
 8048812:	31 ff                	xor    %edi,%edi
 8048814:	56                   	push   %esi
 8048815:	53                   	push   %ebx
 8048816:	e8 45 fd ff ff       	call   8048560 <__x86.get_pc_thunk.bx>
 804881b:	81 c3 91 13 00 00    	add    $0x1391,%ebx
 8048821:	83 ec 0c             	sub    $0xc,%esp
 8048824:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048828:	8d b3 f4 fe ff ff    	lea    -0x10c(%ebx),%esi
 804882e:	e8 49 fc ff ff       	call   804847c <_init>
 8048833:	8d 83 f0 fe ff ff    	lea    -0x110(%ebx),%eax
 8048839:	29 c6                	sub    %eax,%esi
 804883b:	c1 fe 02             	sar    $0x2,%esi
 804883e:	85 f6                	test   %esi,%esi
 8048840:	74 23                	je     8048865 <__libc_csu_init+0x55>
 8048842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048848:	83 ec 04             	sub    $0x4,%esp
 804884b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804884f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048853:	55                   	push   %ebp
 8048854:	ff 94 bb f0 fe ff ff 	call   *-0x110(%ebx,%edi,4)
 804885b:	83 c7 01             	add    $0x1,%edi
 804885e:	83 c4 10             	add    $0x10,%esp
 8048861:	39 f7                	cmp    %esi,%edi
 8048863:	75 e3                	jne    8048848 <__libc_csu_init+0x38>
 8048865:	83 c4 0c             	add    $0xc,%esp
 8048868:	5b                   	pop    %ebx
 8048869:	5e                   	pop    %esi
 804886a:	5f                   	pop    %edi
 804886b:	5d                   	pop    %ebp
 804886c:	c3                   	ret    
 804886d:	8d 76 00             	lea    0x0(%esi),%esi

08048870 <__libc_csu_fini>:
 8048870:	f3 c3                	repz ret 

Disassembly of section .fini:

08048874 <_fini>:
 8048874:	53                   	push   %ebx
 8048875:	83 ec 08             	sub    $0x8,%esp
 8048878:	e8 e3 fc ff ff       	call   8048560 <__x86.get_pc_thunk.bx>
 804887d:	81 c3 2f 13 00 00    	add    $0x132f,%ebx
 8048883:	83 c4 08             	add    $0x8,%esp
 8048886:	5b                   	pop    %ebx
 8048887:	c3                   	ret    
