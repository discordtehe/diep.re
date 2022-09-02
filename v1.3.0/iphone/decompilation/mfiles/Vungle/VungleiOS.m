@implementation VungleiOS

-(bool)showInterstitial:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [VungleSDK sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100535650;

loc_1005355ec:
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 isAdCachedForPlacementID:r19];
    [r0 release];
    if (r21 == 0x0) goto loc_100535658;

loc_100535624:
    loc_10098a5e8(0x0);
    r20 = 0x0;
    goto loc_1005356b8;

loc_1005356b8:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100535658:
    [r19 retain];
    sub_10097b5f0(0x0, &var_58, 0x0, 0x0, 0x10);
    r0 = &var_58;
    if (&var_58 == r0) goto loc_1005356a8;

loc_100535698:
    if (r0 == 0x0) goto loc_1005356b4;

loc_10053569c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005356b0;

loc_1005356b0:
    (r8)();
    goto loc_1005356b4;

loc_1005356b4:
    r20 = 0x1;
    goto loc_1005356b8;

loc_1005356a8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005356b0;

loc_100535650:
    r20 = 0x0;
    goto loc_1005356b8;
}

-(bool)loadInterstitial:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 isInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_1005354a8;

loc_100535458:
    [r19 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_1005354dc;

loc_100535498:
    if (r0 == 0x0) goto loc_1005354e8;

loc_10053549c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005354e4;

loc_1005354e4:
    (r8)();
    goto loc_1005354e8;

loc_1005354e8:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005354dc:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005354e4;

loc_1005354a8:
    *(int8_t *)0x1011d88c0 = 0x1;
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    goto loc_1005354e8;
}

-(bool)loadRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 isInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100535814;

loc_1005357c4:
    [r19 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_100535848;

loc_100535804:
    if (r0 == 0x0) goto loc_100535854;

loc_100535808:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100535850;

loc_100535850:
    (r8)();
    goto loc_100535854;

loc_100535854:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100535848:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100535850;

loc_100535814:
    *(int8_t *)0x1011d88c1 = 0x1;
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    goto loc_100535854;
}

-(bool)showRewardedVideo:(void *)arg2 withUserId:(void *)arg3 withCustomData:(void *)arg4 {
    r31 = r31 - 0x80;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [VungleSDK sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isInitialized];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_1005359e0;

loc_10053597c:
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r22 = [r0 isAdCachedForPlacementID:r19];
    [r0 release];
    if (r22 == 0x0) goto loc_1005359e8;

loc_1005359b4:
    loc_10098a5e8(0x0);
    r22 = 0x0;
    goto loc_100535a74;

loc_100535a74:
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005359e8:
    r25 = [r20 retain];
    r23 = [r21 retain];
    r24 = [r19 retain];
    r0 = operator new();
    *(int128_t *)r0 = 0x100e83b28;
    *(int128_t *)(r0 + 0x8) = r25;
    *(int128_t *)(r0 + 0x10) = r23;
    *(int128_t *)(r0 + 0x18) = r24;
    sub_10097b5f0(0x0, &stack[-120], 0x0, 0x0, 0x10);
    r0 = r0;
    if (&stack[-120] == r0) goto loc_100535a64;

loc_100535a54:
    if (r0 == 0x0) goto loc_100535a70;

loc_100535a58:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100535a6c;

loc_100535a6c:
    (r8)();
    goto loc_100535a70;

loc_100535a70:
    r22 = 0x1;
    goto loc_100535a74;

loc_100535a64:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100535a6c;

loc_1005359e0:
    r22 = 0x0;
    goto loc_100535a74;
}

-(void)vungleWillCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
    return;
}

-(void)vungleWillShowAdForPlacementID:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    sub_100536164(&var_38, [r0 UTF8String]);
    r0 = sub_100537e2c(0x1011d8890, &var_38);
    r21 = r0;
    if ((sign_extend_64(var_21) & 0xffffffff80000000) == 0x0) {
            if (r21 != 0x0) {
                    if (*0x1011e4ac8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ac0 != 0x0) {
                                            sub_100536164(&var_38, "vungle");
                                            sub_100536164(&var_50, "");
                                            r0 = (*(*r22 + 0x20))(r22, &var_38, &var_50);
                                            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_50);
                                            }
                                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_38);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r21 + 0x10))(r21);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    else {
            operator delete(var_38);
            if (r21 != 0x0) {
                    if (*0x1011e4ac8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ac0 != 0x0) {
                                            sub_100536164(&var_38, "vungle");
                                            sub_100536164(&var_50, "");
                                            r0 = (*(*r22 + 0x20))(r22, &var_38, &var_50);
                                            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_50);
                                            }
                                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_38);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r21 + 0x10))(r21);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    r0 = objc_retainAutorelease(r19);
    r21 = r0;
    sub_100536164(&var_38, [r0 UTF8String]);
    r0 = sub_100537e2c(0x1011d88a8, &var_38);
    r20 = r0;
    if ((sign_extend_64(var_21) & 0xffffffff80000000) == 0x0) {
            if (r20 != 0x0) {
                    if (*0x1011e4ad8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    if (*0x1011e4ad0 != 0x0) {
                                            sub_100536164(&var_38, "vungle");
                                            sub_100536164(&var_68, "");
                                            r0 = (*(*r20 + 0x20))(r20, &var_38, &var_68);
                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_68);
                                            }
                                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_38);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r22 + 0x10))(r22);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    else {
            operator delete(var_38);
            if (r20 != 0x0) {
                    if (*0x1011e4ad8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    if (*0x1011e4ad0 != 0x0) {
                                            sub_100536164(&var_38, "vungle");
                                            sub_100536164(&var_68, "");
                                            r0 = (*(*r20 + 0x20))(r20, &var_38, &var_68);
                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_68);
                                            }
                                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_38);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r22 + 0x10))(r22);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    [r21 release];
    return;
}

-(void)vungleSDKDidInitialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)0x1011d88c0 == 0x1) {
            *(int8_t *)0x1011d88c0 = 0x0;
            if (sign_extend_64(*(int8_t *)0x1011d8877) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = 0x1011d8860;
                    }
                    else {
                            r2 = *0x1011d8860;
                    }
            }
            r0 = [NSString stringWithUTF8String:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r19 loadInterstitial:r20];
            [r20 release];
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    if (*(int8_t *)0x1011d88c1 == 0x1) {
            *(int8_t *)0x1011d88c1 = 0x0;
            if (sign_extend_64(*(int8_t *)0x1011d888f) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = 0x1011d8878;
                    }
                    else {
                            r2 = *0x1011d8878;
                    }
            }
            r20 = [[NSString stringWithUTF8String:r2] retain];
            [r19 loadRewardedVideo:r20];
            [r20 release];
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    return;
}

-(void)vungleSDKFailedToInitializeWithError:(void *)arg2 {
    r0 = [arg2 description];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r0 UTF8String];
    loc_10098a5e8(0x0);
    [r19 release];
    return;
}

-(void)vungleSDKLog:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    if (*(int8_t *)(self + 0x8) != 0x0) {
            r0 = objc_retainAutorelease(r20);
            r0 = [r0 UTF8String];
            r21 = &var_38;
            r0 = sub_100536164(&var_38, r0);
            r8 = sign_extend_64(var_21);
            r9 = var_38;
            if (r8 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r8 = r21;
                    }
                    else {
                            r8 = r9;
                    }
            }
            loc_10098a5e8(0x0);
            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_38);
            }
    }
    [r20 release];
    return;
}

-(bool)debugLog {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)setDebugLog:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)vungleAdPlayabilityUpdate:(bool)arg2 placementID:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0xe0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = objc_retainAutorelease(r21);
    r19 = r0;
    sub_100536164(r29 - 0x48, [r0 UTF8String]);
    r23 = sub_100537e2c(0x1011d8890, r29 - 0x48);
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) goto loc_100535c68;

loc_100535bcc:
    if (r23 == 0x0) goto loc_100535c74;

loc_100535bd0:
    if (r22 == 0x0) goto loc_100535d4c;

loc_100535be0:
    if (*0x1011e4ac8 == 0x0) goto loc_100535f5c;

loc_100535be4:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100535f5c;

loc_100535bec:
    r22 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_100536164(r29 - 0x48, "vungle");
            sub_100536164(r29 - 0x60, "");
            (*(*r21 + 0x10))(r21, r29 - 0x48, r29 - 0x60);
            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_60);
            }
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_100535f40;

loc_100535f40:
    if (r9 == 0x0) {
            (*(*r22 + 0x10))(r22);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_100535f5c;

loc_100535f5c:
    [r20 release];
    [r19 release];
    return;

loc_100535d4c:
    if (*0x1011e4ac8 == 0x0) goto loc_100535f5c;

loc_100535d50:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100535f5c;

loc_100535d58:
    r22 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_100536164(r29 - 0x48, "vungle");
            r0 = [r20 description];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r23 = r0;
            sub_100536164(&var_78, [r0 UTF8String]);
            sub_100536164(&var_90, "");
            r0 = (*(*r24 + 0x18))(r24, r29 - 0x48, &var_78, &var_90);
            if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_90);
            }
            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_78);
            }
            [r23 release];
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_100535f40;

loc_100535c74:
    r0 = objc_retainAutorelease(r19);
    r23 = r0;
    sub_100536164(r29 - 0x48, [r0 UTF8String]);
    r24 = sub_100537e2c(0x1011d88a8, r29 - 0x48);
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) goto loc_100535e24;

loc_100535cb0:
    if (r24 == 0x0) goto loc_100535e30;

loc_100535cb4:
    if (r22 == 0x0) goto loc_100535e6c;

loc_100535cc4:
    if (*0x1011e4ad8 == 0x0) goto loc_100535f5c;

loc_100535cc8:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100535f5c;

loc_100535cd0:
    r22 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_100536164(r29 - 0x48, "vungle");
            sub_100536164(&var_A8, "");
            r0 = (*(*r21 + 0x10))(r21, r29 - 0x48, &var_A8);
            if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_A8);
            }
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_100535f40;

loc_100535e6c:
    if (*0x1011e4ad8 == 0x0) goto loc_100535f5c;

loc_100535e70:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100535f5c;

loc_100535e78:
    r22 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_100536164(r29 - 0x48, "vungle");
            r0 = [r20 description];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r23 = r0;
            sub_100536164(&var_78, [r0 UTF8String]);
            sub_100536164(&var_C0, "");
            r0 = (*(*r24 + 0x18))(r24, r29 - 0x48, &var_78, &var_C0);
            if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_C0);
            }
            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_78);
            }
            [r23 release];
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_100535f40;

loc_100535e30:
    [objc_retainAutorelease(r23) UTF8String];
    loc_10098a5e8(0x0);
    goto loc_100535f5c;

loc_100535e24:
    operator delete(var_48);
    if (r24 != 0x0) goto loc_100535cb4;
    goto loc_100535e30;

loc_100535c68:
    operator delete(var_48);
    if (r23 != 0x0) goto loc_100535bd0;
}

-(void)vungleDidCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
    r31 = r31 - 0xe0;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = r0;
    sub_100536164(r29 - 0x58, [r0 UTF8String]);
    r21 = sub_100537e2c(0x1011d8890, r29 - 0x58);
    if ((sign_extend_64(var_41) & 0xffffffff80000000) == 0x0) {
            if (r21 != 0x0) {
                    if (*0x1011e4ac8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ac0 != 0x0) {
                                            r0 = [r19 didDownload];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = [r0 boolValue];
                                            [r0 release];
                                            if (r25 != 0x0) {
                                                    sub_100536164(r29 - 0x58, "vungle");
                                                    sub_100536164(&var_70, "");
                                                    r0 = (*(*r22 + 0x38))(r22, r29 - 0x58, &var_70);
                                                    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_70);
                                                    }
                                                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_58);
                                                    }
                                            }
                                            sub_100536164(r29 - 0x58, "vungle");
                                            sub_100536164(&var_88, "");
                                            r0 = (*(*r22 + 0x30))(r22, r29 - 0x58, &var_88);
                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_88);
                                            }
                                            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_58);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r21 + 0x10))(r21);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    else {
            operator delete(var_58);
            if (r21 != 0x0) {
                    if (*0x1011e4ac8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ac0 != 0x0) {
                                            r0 = [r19 didDownload];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = [r0 boolValue];
                                            [r0 release];
                                            if (r25 != 0x0) {
                                                    sub_100536164(r29 - 0x58, "vungle");
                                                    sub_100536164(&var_70, "");
                                                    r0 = (*(*r22 + 0x38))(r22, r29 - 0x58, &var_70);
                                                    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_70);
                                                    }
                                                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_58);
                                                    }
                                            }
                                            sub_100536164(r29 - 0x58, "vungle");
                                            sub_100536164(&var_88, "");
                                            r0 = (*(*r22 + 0x30))(r22, r29 - 0x58, &var_88);
                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_88);
                                            }
                                            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_58);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r21 + 0x10))(r21);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    r0 = objc_retainAutorelease(r20);
    r22 = r0;
    sub_100536164(r29 - 0x58, [r0 UTF8String]);
    r21 = sub_100537e2c(0x1011d88a8, r29 - 0x58);
    if ((sign_extend_64(var_41) & 0xffffffff80000000) == 0x0) {
            if (r21 != 0x0) {
                    if (*0x1011e4ad8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ad0 != 0x0) {
                                            r0 = [r19 didDownload];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r26 = [r0 boolValue];
                                            [r0 release];
                                            if (r26 != 0x0) {
                                                    sub_100536164(r29 - 0x58, "vungle");
                                                    sub_100536164(&var_A0, "");
                                                    r0 = (*(*r23 + 0x30))(r23, r29 - 0x58, &var_A0);
                                                    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_A0);
                                                    }
                                                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_58);
                                                    }
                                            }
                                            r0 = [r19 completedView];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r24 = [r0 boolValue];
                                            [r0 release];
                                            if (r24 != 0x0) {
                                                    sub_100536164(r29 - 0x58, "vungle");
                                                    sub_100536164(&var_B8, "");
                                                    r0 = (*(*r23 + 0x40))(r23, r29 - 0x58, &var_B8, 0x0);
                                                    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_B8);
                                                    }
                                                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_58);
                                                    }
                                            }
                                            sub_100536164(r29 - 0x58, "vungle");
                                            sub_100536164(&var_D0, "");
                                            r0 = (*(*r23 + 0x38))(r23, r29 - 0x58, &var_D0);
                                            if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_D0);
                                            }
                                            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_58);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r21 + 0x10))(r21);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    else {
            operator delete(var_58);
            if (r21 != 0x0) {
                    if (*0x1011e4ad8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ad0 != 0x0) {
                                            r0 = [r19 didDownload];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r26 = [r0 boolValue];
                                            [r0 release];
                                            if (r26 != 0x0) {
                                                    sub_100536164(r29 - 0x58, "vungle");
                                                    sub_100536164(&var_A0, "");
                                                    r0 = (*(*r23 + 0x30))(r23, r29 - 0x58, &var_A0);
                                                    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_A0);
                                                    }
                                                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_58);
                                                    }
                                            }
                                            r0 = [r19 completedView];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r24 = [r0 boolValue];
                                            [r0 release];
                                            if (r24 != 0x0) {
                                                    sub_100536164(r29 - 0x58, "vungle");
                                                    sub_100536164(&var_B8, "");
                                                    r0 = (*(*r23 + 0x40))(r23, r29 - 0x58, &var_B8, 0x0);
                                                    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_B8);
                                                    }
                                                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_58);
                                                    }
                                            }
                                            sub_100536164(r29 - 0x58, "vungle");
                                            sub_100536164(&var_D0, "");
                                            r0 = (*(*r23 + 0x38))(r23, r29 - 0x58, &var_D0);
                                            if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_D0);
                                            }
                                            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_58);
                                            }
                                    }
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r21 + 0x10))(r21);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                    }
            }
    }
    [r22 release];
    [r19 release];
    return;
}

@end