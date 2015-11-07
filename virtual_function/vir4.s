
vir4:     file format elf32-i386

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .interp       00000013  08048154  08048154  00000154  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  08048168  08048168  00000168  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  08048188  08048188  00000188  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     00000030  080481ac  080481ac  000001ac  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       000000b0  080481dc  080481dc  000001dc  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       00000104  0804828c  0804828c  0000028c  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  00000016  08048390  08048390  00000390  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000040  080483a8  080483a8  000003a8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rel.dyn      00000018  080483e8  080483e8  000003e8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rel.plt      00000030  08048400  08048400  00000400  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         0000002d  08048430  08048430  00000430  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000070  08048460  08048460  00000460  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text         0000049a  080484d0  080484d0  000004d0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .fini         00000019  0804896c  0804896c  0000096c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .rodata       000001d8  080489a0  080489a0  000009a0  2**5
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame_hdr 000000cc  08048b78  08048b78  00000b78  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame     00000308  08048c44  08048c44  00000c44  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .ctors        00000008  08049f08  08049f08  00001f08  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 18 .dtors        00000008  08049f10  08049f10  00001f10  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000004  08049f18  08049f18  00001f18  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000000e0  08049f1c  08049f1c  00001f1c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000004  08049ffc  08049ffc  00001ffc  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      00000024  0804a000  0804a000  00002000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000008  0804a024  0804a024  00002024  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000074  0804a040  0804a040  0000202c  2**5
                  ALLOC
 25 .comment      0000004f  00000000  00000000  0000202c  2**0
                  CONTENTS, READONLY
 26 .debug_aranges 000000c0  00000000  00000000  0000207b  2**0
                  CONTENTS, READONLY, DEBUGGING
 27 .debug_pubnames 00000154  00000000  00000000  0000213b  2**0
                  CONTENTS, READONLY, DEBUGGING
 28 .debug_info   00001310  00000000  00000000  0000228f  2**0
                  CONTENTS, READONLY, DEBUGGING
 29 .debug_abbrev 00000317  00000000  00000000  0000359f  2**0
                  CONTENTS, READONLY, DEBUGGING
 30 .debug_line   000002c8  00000000  00000000  000038b6  2**0
                  CONTENTS, READONLY, DEBUGGING
 31 .debug_str    00000557  00000000  00000000  00003b7e  2**0
                  CONTENTS, READONLY, DEBUGGING
 32 .debug_loc    0000039c  00000000  00000000  000040d5  2**0
                  CONTENTS, READONLY, DEBUGGING
 33 .debug_ranges 000000b8  00000000  00000000  00004471  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .init:

08048430 <_init>:
 8048430:	53                   	push   %ebx
 8048431:	83 ec 08             	sub    $0x8,%esp
 8048434:	e8 c7 00 00 00       	call   8048500 <__x86.get_pc_thunk.bx>
 8048439:	81 c3 c7 1b 00 00    	add    $0x1bc7,%ebx
 804843f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048445:	85 c0                	test   %eax,%eax
 8048447:	74 05                	je     804844e <_init+0x1e>
 8048449:	e8 22 00 00 00       	call   8048470 <__gmon_start__@plt>
 804844e:	e8 1d 01 00 00       	call   8048570 <frame_dummy>
 8048453:	e8 e8 04 00 00       	call   8048940 <__do_global_ctors_aux>
 8048458:	83 c4 08             	add    $0x8,%esp
 804845b:	5b                   	pop    %ebx
 804845c:	c3                   	ret    

Disassembly of section .plt:

08048460 <__gmon_start__@plt-0x10>:
 8048460:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048466:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804846c:	00 00                	add    %al,(%eax)
	...

08048470 <__gmon_start__@plt>:
 8048470:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048476:	68 00 00 00 00       	push   $0x0
 804847b:	e9 e0 ff ff ff       	jmp    8048460 <_init+0x30>

08048480 <putchar@plt>:
 8048480:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048486:	68 08 00 00 00       	push   $0x8
 804848b:	e9 d0 ff ff ff       	jmp    8048460 <_init+0x30>

08048490 <__libc_start_main@plt>:
 8048490:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048496:	68 10 00 00 00       	push   $0x10
 804849b:	e9 c0 ff ff ff       	jmp    8048460 <_init+0x30>

080484a0 <printf@plt>:
 80484a0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80484a6:	68 18 00 00 00       	push   $0x18
 80484ab:	e9 b0 ff ff ff       	jmp    8048460 <_init+0x30>

080484b0 <puts@plt>:
 80484b0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80484b6:	68 20 00 00 00       	push   $0x20
 80484bb:	e9 a0 ff ff ff       	jmp    8048460 <_init+0x30>

080484c0 <__gxx_personality_v0@plt>:
 80484c0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80484c6:	68 28 00 00 00       	push   $0x28
 80484cb:	e9 90 ff ff ff       	jmp    8048460 <_init+0x30>

Disassembly of section .text:

080484d0 <_start>:
 80484d0:	31 ed                	xor    %ebp,%ebp
 80484d2:	5e                   	pop    %esi
 80484d3:	89 e1                	mov    %esp,%ecx
 80484d5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484d8:	50                   	push   %eax
 80484d9:	54                   	push   %esp
 80484da:	52                   	push   %edx
 80484db:	68 30 89 04 08       	push   $0x8048930
 80484e0:	68 d0 88 04 08       	push   $0x80488d0
 80484e5:	51                   	push   %ecx
 80484e6:	56                   	push   %esi
 80484e7:	68 93 85 04 08       	push   $0x8048593
 80484ec:	e8 9f ff ff ff       	call   8048490 <__libc_start_main@plt>
 80484f1:	f4                   	hlt    
 80484f2:	66 90                	xchg   %ax,%ax
 80484f4:	66 90                	xchg   %ax,%ax
 80484f6:	66 90                	xchg   %ax,%ax
 80484f8:	66 90                	xchg   %ax,%ax
 80484fa:	66 90                	xchg   %ax,%ax
 80484fc:	66 90                	xchg   %ax,%ax
 80484fe:	66 90                	xchg   %ax,%ax

08048500 <__x86.get_pc_thunk.bx>:
 8048500:	8b 1c 24             	mov    (%esp),%ebx
 8048503:	c3                   	ret    
 8048504:	66 90                	xchg   %ax,%ax
 8048506:	66 90                	xchg   %ax,%ax
 8048508:	66 90                	xchg   %ax,%ax
 804850a:	66 90                	xchg   %ax,%ax
 804850c:	66 90                	xchg   %ax,%ax
 804850e:	66 90                	xchg   %ax,%ax

08048510 <__do_global_dtors_aux>:
 8048510:	55                   	push   %ebp
 8048511:	89 e5                	mov    %esp,%ebp
 8048513:	53                   	push   %ebx
 8048514:	83 ec 04             	sub    $0x4,%esp
 8048517:	80 3d ac a0 04 08 00 	cmpb   $0x0,0x804a0ac
 804851e:	75 3f                	jne    804855f <__do_global_dtors_aux+0x4f>
 8048520:	a1 b0 a0 04 08       	mov    0x804a0b0,%eax
 8048525:	bb 14 9f 04 08       	mov    $0x8049f14,%ebx
 804852a:	81 eb 10 9f 04 08    	sub    $0x8049f10,%ebx
 8048530:	c1 fb 02             	sar    $0x2,%ebx
 8048533:	83 eb 01             	sub    $0x1,%ebx
 8048536:	39 d8                	cmp    %ebx,%eax
 8048538:	73 1e                	jae    8048558 <__do_global_dtors_aux+0x48>
 804853a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048540:	83 c0 01             	add    $0x1,%eax
 8048543:	a3 b0 a0 04 08       	mov    %eax,0x804a0b0
 8048548:	ff 14 85 10 9f 04 08 	call   *0x8049f10(,%eax,4)
 804854f:	a1 b0 a0 04 08       	mov    0x804a0b0,%eax
 8048554:	39 d8                	cmp    %ebx,%eax
 8048556:	72 e8                	jb     8048540 <__do_global_dtors_aux+0x30>
 8048558:	c6 05 ac a0 04 08 01 	movb   $0x1,0x804a0ac
 804855f:	83 c4 04             	add    $0x4,%esp
 8048562:	5b                   	pop    %ebx
 8048563:	5d                   	pop    %ebp
 8048564:	c3                   	ret    
 8048565:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048570 <frame_dummy>:
 8048570:	55                   	push   %ebp
 8048571:	89 e5                	mov    %esp,%ebp
 8048573:	83 ec 18             	sub    $0x18,%esp
 8048576:	a1 18 9f 04 08       	mov    0x8049f18,%eax
 804857b:	85 c0                	test   %eax,%eax
 804857d:	74 12                	je     8048591 <frame_dummy+0x21>
 804857f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048584:	85 c0                	test   %eax,%eax
 8048586:	74 09                	je     8048591 <frame_dummy+0x21>
 8048588:	c7 04 24 18 9f 04 08 	movl   $0x8049f18,(%esp)
 804858f:	ff d0                	call   *%eax
 8048591:	c9                   	leave  
 8048592:	c3                   	ret    

08048593 <main>:
};

typedef void (*pf)(void);

int main(int argc, const char *argv[])
{
 8048593:	55                   	push   %ebp
 8048594:	89 e5                	mov    %esp,%ebp
 8048596:	83 e4 f0             	and    $0xfffffff0,%esp
 8048599:	83 ec 30             	sub    $0x30,%esp
	printf("sizeof(derived) = %zu\n\n", sizeof(derived));	// 12
 804859c:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
 80485a3:	00 
 80485a4:	c7 04 24 35 8a 04 08 	movl   $0x8048a35,(%esp)
 80485ab:	e8 f0 fe ff ff       	call   80484a0 <printf@plt>

	char *realname1 = NULL, *realname2 = NULL;
 80485b0:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 80485b7:	00 
 80485b8:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
 80485bf:	00 
	base1 b1;
 80485c0:	8d 44 24 24          	lea    0x24(%esp),%eax
 80485c4:	89 04 24             	mov    %eax,(%esp)
 80485c7:	e8 66 02 00 00       	call   8048832 <base1::base1()>
	base2 b2;
 80485cc:	8d 44 24 20          	lea    0x20(%esp),%eax
 80485d0:	89 04 24             	mov    %eax,(%esp)
 80485d3:	e8 76 02 00 00       	call   804884e <base2::base2()>
	base3 b3;
 80485d8:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80485dc:	89 04 24             	mov    %eax,(%esp)
 80485df:	e8 86 02 00 00       	call   804886a <base3::base3()>
	derived d;
 80485e4:	8d 44 24 10          	lea    0x10(%esp),%eax
 80485e8:	89 04 24             	mov    %eax,(%esp)
 80485eb:	e8 88 02 00 00       	call   8048878 <derived::derived()>

	printf("b1: %s\n", typeid(b1).name());
 80485f0:	b8 70 8b 04 08       	mov    $0x8048b70,%eax
 80485f5:	89 04 24             	mov    %eax,(%esp)
 80485f8:	e8 2b 01 00 00       	call   8048728 <std::type_info::name() const>
 80485fd:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048601:	c7 04 24 4d 8a 04 08 	movl   $0x8048a4d,(%esp)
 8048608:	e8 93 fe ff ff       	call   80484a0 <printf@plt>
	printf("b2: %s\n", typeid(b2).name());
 804860d:	b8 60 8b 04 08       	mov    $0x8048b60,%eax
 8048612:	89 04 24             	mov    %eax,(%esp)
 8048615:	e8 0e 01 00 00       	call   8048728 <std::type_info::name() const>
 804861a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804861e:	c7 04 24 55 8a 04 08 	movl   $0x8048a55,(%esp)
 8048625:	e8 76 fe ff ff       	call   80484a0 <printf@plt>
	printf("b3: %s\n", typeid(b3).name());
 804862a:	b8 50 8b 04 08       	mov    $0x8048b50,%eax
 804862f:	89 04 24             	mov    %eax,(%esp)
 8048632:	e8 f1 00 00 00       	call   8048728 <std::type_info::name() const>
 8048637:	89 44 24 04          	mov    %eax,0x4(%esp)
 804863b:	c7 04 24 5d 8a 04 08 	movl   $0x8048a5d,(%esp)
 8048642:	e8 59 fe ff ff       	call   80484a0 <printf@plt>
	printf(" d: %s\n", typeid(d).name());
 8048647:	b8 20 8b 04 08       	mov    $0x8048b20,%eax
 804864c:	89 04 24             	mov    %eax,(%esp)
 804864f:	e8 d4 00 00 00       	call   8048728 <std::type_info::name() const>
 8048654:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048658:	c7 04 24 65 8a 04 08 	movl   $0x8048a65,(%esp)
 804865f:	e8 3c fe ff ff       	call   80484a0 <printf@plt>
	printf("b1 has type %s, %s\n", realname1, realname2);
	free(realname1);
	free(realname2);
#endif

	((pf)*(*((int **)&d + 0) + 0))();
 8048664:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048668:	8b 00                	mov    (%eax),%eax
 804866a:	8b 00                	mov    (%eax),%eax
 804866c:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 0) + 1))();
 804866e:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048672:	8b 00                	mov    (%eax),%eax
 8048674:	83 c0 04             	add    $0x4,%eax
 8048677:	8b 00                	mov    (%eax),%eax
 8048679:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 0) + 2))();
 804867b:	8d 44 24 10          	lea    0x10(%esp),%eax
 804867f:	8b 00                	mov    (%eax),%eax
 8048681:	83 c0 08             	add    $0x8,%eax
 8048684:	8b 00                	mov    (%eax),%eax
 8048686:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 0) + 3))();
 8048688:	8d 44 24 10          	lea    0x10(%esp),%eax
 804868c:	8b 00                	mov    (%eax),%eax
 804868e:	83 c0 0c             	add    $0xc,%eax
 8048691:	8b 00                	mov    (%eax),%eax
 8048693:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 0) + 4))();
 8048695:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048699:	8b 00                	mov    (%eax),%eax
 804869b:	83 c0 10             	add    $0x10,%eax
 804869e:	8b 00                	mov    (%eax),%eax
 80486a0:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 0) + 5))();
 80486a2:	8d 44 24 10          	lea    0x10(%esp),%eax
 80486a6:	8b 00                	mov    (%eax),%eax
 80486a8:	83 c0 14             	add    $0x14,%eax
 80486ab:	8b 00                	mov    (%eax),%eax
 80486ad:	ff d0                	call   *%eax

	printf("\n");
 80486af:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80486b6:	e8 c5 fd ff ff       	call   8048480 <putchar@plt>

	((pf)*(*((int **)&d + 1) + 0))();
 80486bb:	8d 44 24 10          	lea    0x10(%esp),%eax
 80486bf:	83 c0 04             	add    $0x4,%eax
 80486c2:	8b 00                	mov    (%eax),%eax
 80486c4:	8b 00                	mov    (%eax),%eax
 80486c6:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 1) + 1))();
 80486c8:	8d 44 24 10          	lea    0x10(%esp),%eax
 80486cc:	83 c0 04             	add    $0x4,%eax
 80486cf:	8b 00                	mov    (%eax),%eax
 80486d1:	83 c0 04             	add    $0x4,%eax
 80486d4:	8b 00                	mov    (%eax),%eax
 80486d6:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 1) + 2))();
 80486d8:	8d 44 24 10          	lea    0x10(%esp),%eax
 80486dc:	83 c0 04             	add    $0x4,%eax
 80486df:	8b 00                	mov    (%eax),%eax
 80486e1:	83 c0 08             	add    $0x8,%eax
 80486e4:	8b 00                	mov    (%eax),%eax
 80486e6:	ff d0                	call   *%eax

	printf("\n");
 80486e8:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80486ef:	e8 8c fd ff ff       	call   8048480 <putchar@plt>

	((pf)*(*((int **)&d + 2) + 0))();
 80486f4:	8d 44 24 10          	lea    0x10(%esp),%eax
 80486f8:	83 c0 08             	add    $0x8,%eax
 80486fb:	8b 00                	mov    (%eax),%eax
 80486fd:	8b 00                	mov    (%eax),%eax
 80486ff:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 2) + 1))();
 8048701:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048705:	83 c0 08             	add    $0x8,%eax
 8048708:	8b 00                	mov    (%eax),%eax
 804870a:	83 c0 04             	add    $0x4,%eax
 804870d:	8b 00                	mov    (%eax),%eax
 804870f:	ff d0                	call   *%eax
	((pf)*(*((int **)&d + 2) + 2))();
 8048711:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048715:	83 c0 08             	add    $0x8,%eax
 8048718:	8b 00                	mov    (%eax),%eax
 804871a:	83 c0 08             	add    $0x8,%eax
 804871d:	8b 00                	mov    (%eax),%eax
 804871f:	ff d0                	call   *%eax

	return 0;
 8048721:	b8 00 00 00 00       	mov    $0x0,%eax
}
 8048726:	c9                   	leave  
 8048727:	c3                   	ret    

08048728 <std::type_info::name() const>:
     *  the runtime-mandated type_info structures in the new-abi.  */
    virtual ~type_info();

    /** Returns an @e implementation-defined byte string; this is not
     *  portable between compilers!  */
    const char* name() const
 8048728:	55                   	push   %ebp
 8048729:	89 e5                	mov    %esp,%ebp
    { return __name; }
 804872b:	8b 45 08             	mov    0x8(%ebp),%eax
 804872e:	8b 40 04             	mov    0x4(%eax),%eax
 8048731:	5d                   	pop    %ebp
 8048732:	c3                   	ret    
 8048733:	90                   	nop

08048734 <base1::f()>:
	__cxa_demangle((n), NULL, NULL, NULL)

// 多继承 无覆盖
class base1 {
public:
	virtual void f(void) { printf("base1::f()\n"); }
 8048734:	55                   	push   %ebp
 8048735:	89 e5                	mov    %esp,%ebp
 8048737:	83 ec 18             	sub    $0x18,%esp
 804873a:	c7 04 24 a8 89 04 08 	movl   $0x80489a8,(%esp)
 8048741:	e8 6a fd ff ff       	call   80484b0 <puts@plt>
 8048746:	c9                   	leave  
 8048747:	c3                   	ret    

08048748 <base1::g()>:
	virtual void g(void) { printf("base1::g()\n"); }
 8048748:	55                   	push   %ebp
 8048749:	89 e5                	mov    %esp,%ebp
 804874b:	83 ec 18             	sub    $0x18,%esp
 804874e:	c7 04 24 b3 89 04 08 	movl   $0x80489b3,(%esp)
 8048755:	e8 56 fd ff ff       	call   80484b0 <puts@plt>
 804875a:	c9                   	leave  
 804875b:	c3                   	ret    

0804875c <base1::h()>:
	virtual void h(void) { printf("base1::h()\n"); }
 804875c:	55                   	push   %ebp
 804875d:	89 e5                	mov    %esp,%ebp
 804875f:	83 ec 18             	sub    $0x18,%esp
 8048762:	c7 04 24 be 89 04 08 	movl   $0x80489be,(%esp)
 8048769:	e8 42 fd ff ff       	call   80484b0 <puts@plt>
 804876e:	c9                   	leave  
 804876f:	c3                   	ret    

08048770 <base2::f()>:
};

class base2 {
public:
	virtual void f(void) { printf("base2::f()\n"); }
 8048770:	55                   	push   %ebp
 8048771:	89 e5                	mov    %esp,%ebp
 8048773:	83 ec 18             	sub    $0x18,%esp
 8048776:	c7 04 24 c9 89 04 08 	movl   $0x80489c9,(%esp)
 804877d:	e8 2e fd ff ff       	call   80484b0 <puts@plt>
 8048782:	c9                   	leave  
 8048783:	c3                   	ret    

08048784 <base2::g()>:
	virtual void g(void) { printf("base2::g()\n"); }
 8048784:	55                   	push   %ebp
 8048785:	89 e5                	mov    %esp,%ebp
 8048787:	83 ec 18             	sub    $0x18,%esp
 804878a:	c7 04 24 d4 89 04 08 	movl   $0x80489d4,(%esp)
 8048791:	e8 1a fd ff ff       	call   80484b0 <puts@plt>
 8048796:	c9                   	leave  
 8048797:	c3                   	ret    

08048798 <base2::h()>:
	virtual void h(void) { printf("base2::h()\n"); }
 8048798:	55                   	push   %ebp
 8048799:	89 e5                	mov    %esp,%ebp
 804879b:	83 ec 18             	sub    $0x18,%esp
 804879e:	c7 04 24 df 89 04 08 	movl   $0x80489df,(%esp)
 80487a5:	e8 06 fd ff ff       	call   80484b0 <puts@plt>
 80487aa:	c9                   	leave  
 80487ab:	c3                   	ret    

080487ac <base3::f()>:
};

class base3 {
public:
	virtual void f(void) { printf("base3::f()\n"); }
 80487ac:	55                   	push   %ebp
 80487ad:	89 e5                	mov    %esp,%ebp
 80487af:	83 ec 18             	sub    $0x18,%esp
 80487b2:	c7 04 24 ea 89 04 08 	movl   $0x80489ea,(%esp)
 80487b9:	e8 f2 fc ff ff       	call   80484b0 <puts@plt>
 80487be:	c9                   	leave  
 80487bf:	c3                   	ret    

080487c0 <base3::g()>:
	virtual void g(void) { printf("base3::g()\n"); }
 80487c0:	55                   	push   %ebp
 80487c1:	89 e5                	mov    %esp,%ebp
 80487c3:	83 ec 18             	sub    $0x18,%esp
 80487c6:	c7 04 24 f5 89 04 08 	movl   $0x80489f5,(%esp)
 80487cd:	e8 de fc ff ff       	call   80484b0 <puts@plt>
 80487d2:	c9                   	leave  
 80487d3:	c3                   	ret    

080487d4 <base3::h()>:
	virtual void h(void) { printf("base3::h()\n"); }
 80487d4:	55                   	push   %ebp
 80487d5:	89 e5                	mov    %esp,%ebp
 80487d7:	83 ec 18             	sub    $0x18,%esp
 80487da:	c7 04 24 00 8a 04 08 	movl   $0x8048a00,(%esp)
 80487e1:	e8 ca fc ff ff       	call   80484b0 <puts@plt>
 80487e6:	c9                   	leave  
 80487e7:	c3                   	ret    

080487e8 <derived::f1()>:
};

class derived : public base1, public base2, public base3 {
public:
	virtual void f1(void) { printf("derived::f1()\n"); }
 80487e8:	55                   	push   %ebp
 80487e9:	89 e5                	mov    %esp,%ebp
 80487eb:	83 ec 18             	sub    $0x18,%esp
 80487ee:	c7 04 24 0b 8a 04 08 	movl   $0x8048a0b,(%esp)
 80487f5:	e8 b6 fc ff ff       	call   80484b0 <puts@plt>
 80487fa:	c9                   	leave  
 80487fb:	c3                   	ret    

080487fc <derived::g1()>:
	virtual void g1(void) { printf("derived::g1()\n"); }
 80487fc:	55                   	push   %ebp
 80487fd:	89 e5                	mov    %esp,%ebp
 80487ff:	83 ec 18             	sub    $0x18,%esp
 8048802:	c7 04 24 19 8a 04 08 	movl   $0x8048a19,(%esp)
 8048809:	e8 a2 fc ff ff       	call   80484b0 <puts@plt>
 804880e:	c9                   	leave  
 804880f:	c3                   	ret    

08048810 <derived::h1()>:
	virtual void h1(void) { printf("derived::h1()\n"); }
 8048810:	55                   	push   %ebp
 8048811:	89 e5                	mov    %esp,%ebp
 8048813:	83 ec 18             	sub    $0x18,%esp
 8048816:	c7 04 24 27 8a 04 08 	movl   $0x8048a27,(%esp)
 804881d:	e8 8e fc ff ff       	call   80484b0 <puts@plt>
 8048822:	c9                   	leave  
 8048823:	c3                   	ret    

08048824 <base1::base1()>:

#define get_realname(n)	\
	__cxa_demangle((n), NULL, NULL, NULL)

// 多继承 无覆盖
class base1 {
 8048824:	55                   	push   %ebp
 8048825:	89 e5                	mov    %esp,%ebp
 8048827:	8b 45 08             	mov    0x8(%ebp),%eax
 804882a:	c7 00 00 8b 04 08    	movl   $0x8048b00,(%eax)
 8048830:	5d                   	pop    %ebp
 8048831:	c3                   	ret    

08048832 <base1::base1()>:
 8048832:	55                   	push   %ebp
 8048833:	89 e5                	mov    %esp,%ebp
 8048835:	8b 45 08             	mov    0x8(%ebp),%eax
 8048838:	c7 00 00 8b 04 08    	movl   $0x8048b00,(%eax)
 804883e:	5d                   	pop    %ebp
 804883f:	c3                   	ret    

08048840 <base2::base2()>:
	virtual void f(void) { printf("base1::f()\n"); }
	virtual void g(void) { printf("base1::g()\n"); }
	virtual void h(void) { printf("base1::h()\n"); }
};

class base2 {
 8048840:	55                   	push   %ebp
 8048841:	89 e5                	mov    %esp,%ebp
 8048843:	8b 45 08             	mov    0x8(%ebp),%eax
 8048846:	c7 00 e8 8a 04 08    	movl   $0x8048ae8,(%eax)
 804884c:	5d                   	pop    %ebp
 804884d:	c3                   	ret    

0804884e <base2::base2()>:
 804884e:	55                   	push   %ebp
 804884f:	89 e5                	mov    %esp,%ebp
 8048851:	8b 45 08             	mov    0x8(%ebp),%eax
 8048854:	c7 00 e8 8a 04 08    	movl   $0x8048ae8,(%eax)
 804885a:	5d                   	pop    %ebp
 804885b:	c3                   	ret    

0804885c <base3::base3()>:
	virtual void f(void) { printf("base2::f()\n"); }
	virtual void g(void) { printf("base2::g()\n"); }
	virtual void h(void) { printf("base2::h()\n"); }
};

class base3 {
 804885c:	55                   	push   %ebp
 804885d:	89 e5                	mov    %esp,%ebp
 804885f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048862:	c7 00 d0 8a 04 08    	movl   $0x8048ad0,(%eax)
 8048868:	5d                   	pop    %ebp
 8048869:	c3                   	ret    

0804886a <base3::base3()>:
 804886a:	55                   	push   %ebp
 804886b:	89 e5                	mov    %esp,%ebp
 804886d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048870:	c7 00 d0 8a 04 08    	movl   $0x8048ad0,(%eax)
 8048876:	5d                   	pop    %ebp
 8048877:	c3                   	ret    

08048878 <derived::derived()>:
	virtual void f(void) { printf("base3::f()\n"); }
	virtual void g(void) { printf("base3::g()\n"); }
	virtual void h(void) { printf("base3::h()\n"); }
};

class derived : public base1, public base2, public base3 {
 8048878:	55                   	push   %ebp
 8048879:	89 e5                	mov    %esp,%ebp
 804887b:	83 ec 18             	sub    $0x18,%esp
 804887e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048881:	89 04 24             	mov    %eax,(%esp)
 8048884:	e8 9b ff ff ff       	call   8048824 <base1::base1()>
 8048889:	8b 45 08             	mov    0x8(%ebp),%eax
 804888c:	83 c0 04             	add    $0x4,%eax
 804888f:	89 04 24             	mov    %eax,(%esp)
 8048892:	e8 a9 ff ff ff       	call   8048840 <base2::base2()>
 8048897:	8b 45 08             	mov    0x8(%ebp),%eax
 804889a:	83 c0 08             	add    $0x8,%eax
 804889d:	89 04 24             	mov    %eax,(%esp)
 80488a0:	e8 b7 ff ff ff       	call   804885c <base3::base3()>
 80488a5:	8b 45 08             	mov    0x8(%ebp),%eax
 80488a8:	c7 00 88 8a 04 08    	movl   $0x8048a88,(%eax)
 80488ae:	8b 45 08             	mov    0x8(%ebp),%eax
 80488b1:	c7 40 04 a8 8a 04 08 	movl   $0x8048aa8,0x4(%eax)
 80488b8:	8b 45 08             	mov    0x8(%ebp),%eax
 80488bb:	c7 40 08 bc 8a 04 08 	movl   $0x8048abc,0x8(%eax)
 80488c2:	c9                   	leave  
 80488c3:	c3                   	ret    
 80488c4:	66 90                	xchg   %ax,%ax
 80488c6:	66 90                	xchg   %ax,%ax
 80488c8:	66 90                	xchg   %ax,%ax
 80488ca:	66 90                	xchg   %ax,%ax
 80488cc:	66 90                	xchg   %ax,%ax
 80488ce:	66 90                	xchg   %ax,%ax

080488d0 <__libc_csu_init>:
 80488d0:	55                   	push   %ebp
 80488d1:	57                   	push   %edi
 80488d2:	31 ff                	xor    %edi,%edi
 80488d4:	56                   	push   %esi
 80488d5:	53                   	push   %ebx
 80488d6:	e8 25 fc ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 80488db:	81 c3 25 17 00 00    	add    $0x1725,%ebx
 80488e1:	83 ec 0c             	sub    $0xc,%esp
 80488e4:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80488e8:	8d b3 08 ff ff ff    	lea    -0xf8(%ebx),%esi
 80488ee:	e8 3d fb ff ff       	call   8048430 <_init>
 80488f3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80488f9:	29 c6                	sub    %eax,%esi
 80488fb:	c1 fe 02             	sar    $0x2,%esi
 80488fe:	85 f6                	test   %esi,%esi
 8048900:	74 23                	je     8048925 <__libc_csu_init+0x55>
 8048902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048908:	83 ec 04             	sub    $0x4,%esp
 804890b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804890f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048913:	55                   	push   %ebp
 8048914:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804891b:	83 c7 01             	add    $0x1,%edi
 804891e:	83 c4 10             	add    $0x10,%esp
 8048921:	39 f7                	cmp    %esi,%edi
 8048923:	75 e3                	jne    8048908 <__libc_csu_init+0x38>
 8048925:	83 c4 0c             	add    $0xc,%esp
 8048928:	5b                   	pop    %ebx
 8048929:	5e                   	pop    %esi
 804892a:	5f                   	pop    %edi
 804892b:	5d                   	pop    %ebp
 804892c:	c3                   	ret    
 804892d:	8d 76 00             	lea    0x0(%esi),%esi

08048930 <__libc_csu_fini>:
 8048930:	f3 c3                	repz ret 
 8048932:	66 90                	xchg   %ax,%ax
 8048934:	66 90                	xchg   %ax,%ax
 8048936:	66 90                	xchg   %ax,%ax
 8048938:	66 90                	xchg   %ax,%ax
 804893a:	66 90                	xchg   %ax,%ax
 804893c:	66 90                	xchg   %ax,%ax
 804893e:	66 90                	xchg   %ax,%ax

08048940 <__do_global_ctors_aux>:
 8048940:	55                   	push   %ebp
 8048941:	89 e5                	mov    %esp,%ebp
 8048943:	53                   	push   %ebx
 8048944:	83 ec 04             	sub    $0x4,%esp
 8048947:	a1 08 9f 04 08       	mov    0x8049f08,%eax
 804894c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804894f:	74 13                	je     8048964 <__do_global_ctors_aux+0x24>
 8048951:	bb 08 9f 04 08       	mov    $0x8049f08,%ebx
 8048956:	66 90                	xchg   %ax,%ax
 8048958:	83 eb 04             	sub    $0x4,%ebx
 804895b:	ff d0                	call   *%eax
 804895d:	8b 03                	mov    (%ebx),%eax
 804895f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048962:	75 f4                	jne    8048958 <__do_global_ctors_aux+0x18>
 8048964:	83 c4 04             	add    $0x4,%esp
 8048967:	5b                   	pop    %ebx
 8048968:	5d                   	pop    %ebp
 8048969:	c3                   	ret    

Disassembly of section .fini:

0804896c <_fini>:
 804896c:	53                   	push   %ebx
 804896d:	83 ec 08             	sub    $0x8,%esp
 8048970:	e8 8b fb ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 8048975:	81 c3 8b 16 00 00    	add    $0x168b,%ebx
 804897b:	e8 90 fb ff ff       	call   8048510 <__do_global_dtors_aux>
 8048980:	83 c4 08             	add    $0x8,%esp
 8048983:	5b                   	pop    %ebx
 8048984:	c3                   	ret    
