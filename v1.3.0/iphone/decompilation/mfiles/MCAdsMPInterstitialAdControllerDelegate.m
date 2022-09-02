@implementation MCAdsMPInterstitialAdControllerDelegate

-(void *)initWithMoPubInterstitialWrapperImpl:(struct MoPubInterstitialWrapperImplIos *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = r19;
    }
    return r0;
}

-(void)interstitialDidLoadAd:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83598;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10052d05c(r19, &stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100532fd4;

loc_100532fc4:
    if (r0 == 0x0) goto loc_100532fe0;

loc_100532fc8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100532fdc;

loc_100532fdc:
    (r8)();
    goto loc_100532fe0;

loc_100532fe0:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100532fd4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100532fdc;
}

-(void)interstitialDidFailToLoadAd:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83628;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10052d05c(r19, &stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100533140;

loc_100533130:
    if (r0 == 0x0) goto loc_10053314c;

loc_100533134:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100533148;

loc_100533148:
    (r8)();
    goto loc_10053314c;

loc_10053314c:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100533140:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100533148;
}

-(void)interstitialDidFailToLoadAd:(void *)arg2 withError:(void *)arg3 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    [arg3 retain];
    [self findNetworkName:r21];
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = [r19 retain];
    r20 = r0;
    var_68 = r0;
    r0 = operator new();
    *r0 = 0x100e836a8;
    *(int128_t *)(r0 + 0x8) = var_80;
    var_80 = var_80;
    *(int128_t *)(r0 + 0x18) = var_70;
    *(int128_t *)(r0 + 0x20) = r20;
    sub_10052d05c(r21, &stack[-88]);
    r0 = r0;
    if (&stack[-88] == r0) goto loc_1005332ec;

loc_1005332dc:
    if (r0 == 0x0) goto loc_1005332f8;

loc_1005332e0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005332f4;

loc_1005332f4:
    (r8)();
    goto loc_1005332f8;

loc_1005332f8:
    [var_68 release];
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_1005332ec:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005332f4;
}

-(void)interstitialWillAppear:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83728;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10052d05c(r19, &stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100533484;

loc_100533474:
    if (r0 == 0x0) goto loc_100533490;

loc_100533478:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053348c;

loc_10053348c:
    (r8)();
    goto loc_100533490;

loc_100533490:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100533484:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053348c;
}

-(void)interstitialDidDisappear:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e837a8;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10052d05c(r19, &stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_1005335f0;

loc_1005335e0:
    if (r0 == 0x0) goto loc_1005335fc;

loc_1005335e4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005335f8;

loc_1005335f8:
    (r8)();
    goto loc_1005335fc;

loc_1005335fc:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005335f0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005335f8;
}

-(void)interstitialDidReceiveTapEvent:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83828;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10052d05c(r19, &stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_10053375c;

loc_10053374c:
    if (r0 == 0x0) goto loc_100533768;

loc_100533750:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100533764;

loc_100533764:
    (r8)();
    goto loc_100533768;

loc_100533768:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10053375c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100533764;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)findNetworkName:(void *)arg2 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r22 = self;
    r21 = r8;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 class];
    r0 = NSStringFromClass(r0);
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 lowercaseString];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r24 release];
    objc_getClass("MPInterstitialCustomEvent");
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1005338f0;

loc_1005338bc:
    [r20 rangeOfString:r2];
    if (r22 != 0x0) {
            sub_100532a3c(r21, "AdColony");
    }
    else {
            [r20 rangeOfString:r2];
            if (r22 != 0x0) {
                    sub_100532a3c(r21, "AppLovin");
            }
            else {
                    [r20 rangeOfString:r2];
                    if (r22 != 0x0) {
                            sub_100532a3c(r21, "Facebook");
                    }
                    else {
                            [r20 rangeOfString:r2];
                            if (r22 != 0x0) {
                                    sub_100532a3c(r21, "Google");
                            }
                            else {
                                    [r20 rangeOfString:r2];
                                    if (r22 != 0x0) {
                                            sub_100532a3c(r21, "IronSource");
                                    }
                                    else {
                                            [r20 rangeOfString:r2];
                                            if (r22 != 0x0) {
                                                    sub_100532a3c(r21, "Tapjoy");
                                            }
                                            else {
                                                    [r20 rangeOfString:r2];
                                                    if (r22 != 0x0) {
                                                            sub_100532a3c(r21, "Unity");
                                                    }
                                                    else {
                                                            [r20 rangeOfString:r2];
                                                            if (r22 != 0x0) {
                                                                    sub_100532a3c(r21, "Vungle");
                                                            }
                                                            else {
                                                                    [r20 rangeOfString:r2];
                                                                    if (r22 != 0x0) {
                                                                            sub_100532a3c(r21, "Backfill");
                                                                    }
                                                                    else {
                                                                            [r20 rangeOfString:r2];
                                                                            if (r22 == 0x0) {
                                                                                    [r20 rangeOfString:r2];
                                                                                    if (@selector(rangeOfString:) != 0x0) {
                                                                                            sub_100532a3c(r21, "MoPub");
                                                                                    }
                                                                                    else {
                                                                                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    sub_100532a3c(r21, "MoPub");
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    goto loc_100533c34;

loc_100533c34:
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_1005338f0:
    r0 = [r19 class];
    r0 = class_copyIvarList(r0, &var_54);
    r23 = r0;
    if (r0 == 0x0) goto loc_100533a74;

loc_10053390c:
    if (var_54 == 0x0) goto loc_100533a6c;

loc_100533914:
    r26 = 0x0;
    var_60 = r21 + 0x1;
    goto loc_100533930;

loc_100533930:
    r28 = *(r23 + r26 * 0x8);
    r0 = ivar_getTypeEncoding(r28);
    r27 = r0;
    if (r0 == 0x0 || strcmp(r27, "@\"MPInterstitialCustomEvent\"") != 0x0 && strcmp(r27, "@\"MPInterstitialAdManager\"") != 0x0 && strcmp(r27, "@\"MPBaseInterstitialAdapter\"") != 0x0) goto loc_100533a5c;

loc_100533980:
    r0 = object_getIvar(r19, r28);
    r29 = r29;
    r27 = [r0 retain];
    r1 = @selector(findNetworkName:);
    r2 = r27;
    objc_msgSend(r22, r1);
    r0 = [r27 release];
    r8 = *(int8_t *)(r21 + 0x17);
    r10 = *(r21 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r10;
            }
    }
    r10 = *(int8_t *)0x1011d885f;
    r9 = sign_extend_64(r10);
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = *(int8_t *)0x1011d885f;
                    r10 = r10;
            }
            else {
                    r10 = *0x1011d8850;
            }
    }
    if (r2 != r10) goto loc_100533ab4;

loc_1005339e4:
    r10 = sign_extend_64(r8);
    r28 = *r21;
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r21;
            }
            else {
                    r0 = r28;
            }
    }
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r1 = 0x1011d8848;
            }
            else {
                    r1 = *0x1011d8848;
            }
    }
    if ((r10 & 0xffffffff80000000) != 0x0) goto loc_100533a48;

loc_100533a10:
    if (r2 == 0x0) goto loc_100533a5c;

loc_100533a14:
    if (*(int8_t *)r1 != zero_extend_64(r28)) goto loc_100533ab4;

loc_100533a20:
    r8 = r8 - 0x1;
    r9 = r1 + 0x1;
    r10 = var_60;
    goto loc_100533a2c;

loc_100533a2c:
    if (r8 == 0x0) goto loc_100533a5c;

loc_100533a30:
    r11 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r12 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_100533a2c;

loc_100533ab4:
    free(r23);
    goto loc_100533c34;

loc_100533a5c:
    r26 = r26 + 0x1;
    if (r26 < var_54) goto loc_100533930;

loc_100533a6c:
    free(r23);
    goto loc_100533a74;

loc_100533a74:
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    goto loc_100533c34;

loc_100533a48:
    if (r2 == 0x0 || memcmp(r0, r1, r2) == 0x0) goto loc_100533a54;
    goto loc_100533ab4;

loc_100533a54:
    operator delete(r28);
    goto loc_100533a5c;
}

@end