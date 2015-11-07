
simple_class2:     file format elf32-i386


Disassembly of section .text:

080484d0 <_start>:
 80484d0:	31 ed                	xor    %ebp,%ebp
 80484d2:	5e                   	pop    %esi
 80484d3:	89 e1                	mov    %esp,%ecx
 80484d5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484d8:	50                   	push   %eax
 80484d9:	54                   	push   %esp
 80484da:	52                   	push   %edx
 80484db:	68 20 88 04 08       	push   $0x8048820
 80484e0:	68 b0 87 04 08       	push   $0x80487b0
 80484e5:	51                   	push   %ecx
 80484e6:	56                   	push   %esi
 80484e7:	68 d0 85 04 08       	push   $0x80485d0
 80484ec:	e8 8f ff ff ff       	call   8048480 <__libc_start_main@plt>
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

08048510 <deregister_tm_clones>:
 8048510:	b8 97 9b 04 08       	mov    $0x8049b97,%eax
 8048515:	2d 94 9b 04 08       	sub    $0x8049b94,%eax
 804851a:	83 f8 06             	cmp    $0x6,%eax
 804851d:	76 1a                	jbe    8048539 <deregister_tm_clones+0x29>
 804851f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048524:	85 c0                	test   %eax,%eax
 8048526:	74 11                	je     8048539 <deregister_tm_clones+0x29>
 8048528:	55                   	push   %ebp
 8048529:	89 e5                	mov    %esp,%ebp
 804852b:	83 ec 14             	sub    $0x14,%esp
 804852e:	68 94 9b 04 08       	push   $0x8049b94
 8048533:	ff d0                	call   *%eax
 8048535:	83 c4 10             	add    $0x10,%esp
 8048538:	c9                   	leave  
 8048539:	f3 c3                	repz ret 
 804853b:	90                   	nop
 804853c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048540 <register_tm_clones>:
 8048540:	b8 94 9b 04 08       	mov    $0x8049b94,%eax
 8048545:	2d 94 9b 04 08       	sub    $0x8049b94,%eax
 804854a:	c1 f8 02             	sar    $0x2,%eax
 804854d:	89 c2                	mov    %eax,%edx
 804854f:	c1 ea 1f             	shr    $0x1f,%edx
 8048552:	01 d0                	add    %edx,%eax
 8048554:	d1 f8                	sar    %eax
 8048556:	74 1b                	je     8048573 <register_tm_clones+0x33>
 8048558:	ba 00 00 00 00       	mov    $0x0,%edx
 804855d:	85 d2                	test   %edx,%edx
 804855f:	74 12                	je     8048573 <register_tm_clones+0x33>
 8048561:	55                   	push   %ebp
 8048562:	89 e5                	mov    %esp,%ebp
 8048564:	83 ec 10             	sub    $0x10,%esp
 8048567:	50                   	push   %eax
 8048568:	68 94 9b 04 08       	push   $0x8049b94
 804856d:	ff d2                	call   *%edx
 804856f:	83 c4 10             	add    $0x10,%esp
 8048572:	c9                   	leave  
 8048573:	f3 c3                	repz ret 
 8048575:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048580 <__do_global_dtors_aux>:
 8048580:	80 3d 94 9b 04 08 00 	cmpb   $0x0,0x8049b94
 8048587:	75 13                	jne    804859c <__do_global_dtors_aux+0x1c>
 8048589:	55                   	push   %ebp
 804858a:	89 e5                	mov    %esp,%ebp
 804858c:	83 ec 08             	sub    $0x8,%esp
 804858f:	e8 7c ff ff ff       	call   8048510 <deregister_tm_clones>
 8048594:	c6 05 94 9b 04 08 01 	movb   $0x1,0x8049b94
 804859b:	c9                   	leave  
 804859c:	f3 c3                	repz ret 
 804859e:	66 90                	xchg   %ax,%ax

080485a0 <frame_dummy>:
 80485a0:	b8 5c 9a 04 08       	mov    $0x8049a5c,%eax
 80485a5:	8b 10                	mov    (%eax),%edx
 80485a7:	85 d2                	test   %edx,%edx
 80485a9:	75 05                	jne    80485b0 <frame_dummy+0x10>
 80485ab:	eb 93                	jmp    8048540 <register_tm_clones>
 80485ad:	8d 76 00             	lea    0x0(%esi),%esi
 80485b0:	ba 00 00 00 00       	mov    $0x0,%edx
 80485b5:	85 d2                	test   %edx,%edx
 80485b7:	74 f2                	je     80485ab <frame_dummy+0xb>
 80485b9:	55                   	push   %ebp
 80485ba:	89 e5                	mov    %esp,%ebp
 80485bc:	83 ec 14             	sub    $0x14,%esp
 80485bf:	50                   	push   %eax
 80485c0:	ff d2                	call   *%edx
 80485c2:	83 c4 10             	add    $0x10,%esp
 80485c5:	c9                   	leave  
 80485c6:	e9 75 ff ff ff       	jmp    8048540 <register_tm_clones>
 80485cb:	66 90                	xchg   %ax,%ax
 80485cd:	66 90                	xchg   %ax,%ax
 80485cf:	90                   	nop

080485d0 <main>:
 80485d0:	55                   	push   %ebp
 80485d1:	89 e5                	mov    %esp,%ebp
 80485d3:	83 ec 48             	sub    $0x48,%esp
 80485d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80485d9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80485dc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80485e3:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 80485e6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80485e9:	89 e0                	mov    %esp,%eax
 80485eb:	8d 4d e8             	lea    -0x18(%ebp),%ecx
 80485ee:	89 08                	mov    %ecx,(%eax)
 80485f0:	c7 40 08 04 00 00 00 	movl   $0x4,0x8(%eax)
 80485f7:	c7 40 04 03 00 00 00 	movl   $0x3,0x4(%eax)
 80485fe:	e8 dd 00 00 00       	call   80486e0 <_ZN5pointC2Eii>
 8048603:	89 e0                	mov    %esp,%eax
 8048605:	8d 4d e0             	lea    -0x20(%ebp),%ecx
 8048608:	89 08                	mov    %ecx,(%eax)
 804860a:	c7 40 08 06 00 00 00 	movl   $0x6,0x8(%eax)
 8048611:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8048618:	e8 c3 00 00 00       	call   80486e0 <_ZN5pointC2Eii>
 804861d:	e9 00 00 00 00       	jmp    8048622 <main+0x52>
 8048622:	89 e0                	mov    %esp,%eax
 8048624:	8d 4d e8             	lea    -0x18(%ebp),%ecx
 8048627:	89 08                	mov    %ecx,(%eax)
 8048629:	c7 40 08 0a 00 00 00 	movl   $0xa,0x8(%eax)
 8048630:	c7 40 04 0a 00 00 00 	movl   $0xa,0x4(%eax)
 8048637:	e8 e4 00 00 00       	call   8048720 <_ZN5point4moveEii>
 804863c:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804863f:	e9 00 00 00 00       	jmp    8048644 <main+0x74>
 8048644:	e8 17 01 00 00       	call   8048760 <_ZN5point13get_instancesEv>
 8048649:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804864c:	e9 00 00 00 00       	jmp    8048651 <main+0x81>
 8048651:	8b 45 c8             	mov    -0x38(%ebp),%eax
 8048654:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8048657:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804865e:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%ebp)
 8048665:	89 e1                	mov    %esp,%ecx
 8048667:	8d 55 e0             	lea    -0x20(%ebp),%edx
 804866a:	89 11                	mov    %edx,(%ecx)
 804866c:	e8 ff 00 00 00       	call   8048770 <_ZN5pointD2Ev>
 8048671:	e9 22 00 00 00       	jmp    8048698 <main+0xc8>
 8048676:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8048679:	89 55 d8             	mov    %edx,-0x28(%ebp)
 804867c:	e9 2f 00 00 00       	jmp    80486b0 <main+0xe0>
 8048681:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8048684:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8048687:	89 e0                	mov    %esp,%eax
 8048689:	8d 55 e0             	lea    -0x20(%ebp),%edx
 804868c:	89 10                	mov    %edx,(%eax)
 804868e:	e8 dd 00 00 00       	call   8048770 <_ZN5pointD2Ev>
 8048693:	e9 13 00 00 00       	jmp    80486ab <main+0xdb>
 8048698:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804869b:	89 04 24             	mov    %eax,(%esp)
 804869e:	e8 cd 00 00 00       	call   8048770 <_ZN5pointD2Ev>
 80486a3:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80486a6:	83 c4 48             	add    $0x48,%esp
 80486a9:	5d                   	pop    %ebp
 80486aa:	c3                   	ret    
 80486ab:	e9 00 00 00 00       	jmp    80486b0 <main+0xe0>
 80486b0:	89 e0                	mov    %esp,%eax
 80486b2:	8d 4d e8             	lea    -0x18(%ebp),%ecx
 80486b5:	89 08                	mov    %ecx,(%eax)
 80486b7:	e8 b4 00 00 00       	call   8048770 <_ZN5pointD2Ev>
 80486bc:	e9 00 00 00 00       	jmp    80486c1 <main+0xf1>
 80486c1:	e9 00 00 00 00       	jmp    80486c6 <main+0xf6>
 80486c6:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80486c9:	89 04 24             	mov    %eax,(%esp)
 80486cc:	e8 ef fd ff ff       	call   80484c0 <_Unwind_Resume@plt>
 80486d1:	89 04 24             	mov    %eax,(%esp)
 80486d4:	89 55 c4             	mov    %edx,-0x3c(%ebp)
 80486d7:	e8 b4 00 00 00       	call   8048790 <__clang_call_terminate>
 80486dc:	66 90                	xchg   %ax,%ax
 80486de:	66 90                	xchg   %ax,%ax

080486e0 <_ZN5pointC2Eii>:
 80486e0:	55                   	push   %ebp
 80486e1:	89 e5                	mov    %esp,%ebp
 80486e3:	83 ec 0c             	sub    $0xc,%esp
 80486e6:	8b 45 10             	mov    0x10(%ebp),%eax
 80486e9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 80486ec:	8b 55 08             	mov    0x8(%ebp),%edx
 80486ef:	89 55 fc             	mov    %edx,-0x4(%ebp)
 80486f2:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 80486f5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80486f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80486fb:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 80486fe:	89 08                	mov    %ecx,(%eax)
 8048700:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048703:	89 48 04             	mov    %ecx,0x4(%eax)
 8048706:	a1 90 9b 04 08       	mov    0x8049b90,%eax
 804870b:	05 01 00 00 00       	add    $0x1,%eax
 8048710:	a3 90 9b 04 08       	mov    %eax,0x8049b90
 8048715:	83 c4 0c             	add    $0xc,%esp
 8048718:	5d                   	pop    %ebp
 8048719:	c3                   	ret    
 804871a:	66 90                	xchg   %ax,%ax
 804871c:	66 90                	xchg   %ax,%ax
 804871e:	66 90                	xchg   %ax,%ax

08048720 <_ZN5point4moveEii>:
 8048720:	55                   	push   %ebp
 8048721:	89 e5                	mov    %esp,%ebp
 8048723:	83 ec 0c             	sub    $0xc,%esp
 8048726:	8b 45 10             	mov    0x10(%ebp),%eax
 8048729:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804872c:	8b 55 08             	mov    0x8(%ebp),%edx
 804872f:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048732:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 8048735:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048738:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804873b:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 804873e:	8b 10                	mov    (%eax),%edx
 8048740:	01 ca                	add    %ecx,%edx
 8048742:	89 10                	mov    %edx,(%eax)
 8048744:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048747:	8b 50 04             	mov    0x4(%eax),%edx
 804874a:	01 ca                	add    %ecx,%edx
 804874c:	89 50 04             	mov    %edx,0x4(%eax)
 804874f:	83 c4 0c             	add    $0xc,%esp
 8048752:	5d                   	pop    %ebp
 8048753:	c3                   	ret    
 8048754:	66 90                	xchg   %ax,%ax
 8048756:	66 90                	xchg   %ax,%ax
 8048758:	66 90                	xchg   %ax,%ax
 804875a:	66 90                	xchg   %ax,%ax
 804875c:	66 90                	xchg   %ax,%ax
 804875e:	66 90                	xchg   %ax,%ax

08048760 <_ZN5point13get_instancesEv>:
 8048760:	55                   	push   %ebp
 8048761:	89 e5                	mov    %esp,%ebp
 8048763:	a1 90 9b 04 08       	mov    0x8049b90,%eax
 8048768:	5d                   	pop    %ebp
 8048769:	c3                   	ret    
 804876a:	66 90                	xchg   %ax,%ax
 804876c:	66 90                	xchg   %ax,%ax
 804876e:	66 90                	xchg   %ax,%ax

08048770 <_ZN5pointD2Ev>:
 8048770:	55                   	push   %ebp
 8048771:	89 e5                	mov    %esp,%ebp
 8048773:	50                   	push   %eax
 8048774:	8b 45 08             	mov    0x8(%ebp),%eax
 8048777:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804877a:	a1 90 9b 04 08       	mov    0x8049b90,%eax
 804877f:	05 ff ff ff ff       	add    $0xffffffff,%eax
 8048784:	a3 90 9b 04 08       	mov    %eax,0x8049b90
 8048789:	83 c4 04             	add    $0x4,%esp
 804878c:	5d                   	pop    %ebp
 804878d:	c3                   	ret    
 804878e:	66 90                	xchg   %ax,%ax

08048790 <__clang_call_terminate>:
 8048790:	55                   	push   %ebp
 8048791:	89 e5                	mov    %esp,%ebp
 8048793:	83 ec 08             	sub    $0x8,%esp
 8048796:	8b 45 08             	mov    0x8(%ebp),%eax
 8048799:	89 04 24             	mov    %eax,(%esp)
 804879c:	e8 ff fc ff ff       	call   80484a0 <__cxa_begin_catch@plt>
 80487a1:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80487a4:	e8 e7 fc ff ff       	call   8048490 <_ZSt9terminatev@plt>
 80487a9:	66 90                	xchg   %ax,%ax
 80487ab:	66 90                	xchg   %ax,%ax
 80487ad:	66 90                	xchg   %ax,%ax
 80487af:	90                   	nop

080487b0 <__libc_csu_init>:
 80487b0:	55                   	push   %ebp
 80487b1:	57                   	push   %edi
 80487b2:	31 ff                	xor    %edi,%edi
 80487b4:	56                   	push   %esi
 80487b5:	53                   	push   %ebx
 80487b6:	e8 45 fd ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 80487bb:	81 c3 a9 13 00 00    	add    $0x13a9,%ebx
 80487c1:	83 ec 1c             	sub    $0x1c,%esp
 80487c4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80487c8:	8d b3 f4 fe ff ff    	lea    -0x10c(%ebx),%esi
 80487ce:	e8 61 fc ff ff       	call   8048434 <_init>
 80487d3:	8d 83 f0 fe ff ff    	lea    -0x110(%ebx),%eax
 80487d9:	29 c6                	sub    %eax,%esi
 80487db:	c1 fe 02             	sar    $0x2,%esi
 80487de:	85 f6                	test   %esi,%esi
 80487e0:	74 27                	je     8048809 <__libc_csu_init+0x59>
 80487e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80487e8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80487ec:	89 2c 24             	mov    %ebp,(%esp)
 80487ef:	89 44 24 08          	mov    %eax,0x8(%esp)
 80487f3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80487f7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80487fb:	ff 94 bb f0 fe ff ff 	call   *-0x110(%ebx,%edi,4)
 8048802:	83 c7 01             	add    $0x1,%edi
 8048805:	39 f7                	cmp    %esi,%edi
 8048807:	75 df                	jne    80487e8 <__libc_csu_init+0x38>
 8048809:	83 c4 1c             	add    $0x1c,%esp
 804880c:	5b                   	pop    %ebx
 804880d:	5e                   	pop    %esi
 804880e:	5f                   	pop    %edi
 804880f:	5d                   	pop    %ebp
 8048810:	c3                   	ret    
 8048811:	eb 0d                	jmp    8048820 <__libc_csu_fini>
 8048813:	90                   	nop
 8048814:	90                   	nop
 8048815:	90                   	nop
 8048816:	90                   	nop
 8048817:	90                   	nop
 8048818:	90                   	nop
 8048819:	90                   	nop
 804881a:	90                   	nop
 804881b:	90                   	nop
 804881c:	90                   	nop
 804881d:	90                   	nop
 804881e:	90                   	nop
 804881f:	90                   	nop

08048820 <__libc_csu_fini>:
 8048820:	f3 c3                	repz ret 
