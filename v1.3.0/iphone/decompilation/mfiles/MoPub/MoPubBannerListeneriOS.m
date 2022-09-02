@implementation MoPubBannerListeneriOS

-(void *)viewControllerForPresentingModalView {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r21 = [[r0 rootViewController] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)adViewDidFailToLoadAd:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e832a0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_10052f394(&stack[-72]);
    r0 = r19;
    if (&stack[-72] == r0) goto loc_100531194;

loc_100531184:
    if (r0 == 0x0) goto loc_1005311a0;

loc_100531188:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053119c;

loc_10053119c:
    (r8)();
    goto loc_1005311a0;

loc_1005311a0:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100531194:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053119c;
}

-(void)adViewDidLoadAd:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [*0x1011d87f0 frame];
    [*0x1011d87f0 adContentViewSize];
    [*0x1011d87f0 setFrame:r2];
    [WrapperUtilsIos adjustAdViewFrameToShowAdView:*0x1011d87f0 onPosition:*(int32_t *)0x1011d8810];
    [self findNetworkName:r19];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83210;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_10052f394(&stack[-104]);
    r0 = r20;
    if (&stack[-104] == r0) goto loc_10053100c;

loc_100530ffc:
    if (r0 == 0x0) goto loc_100531018;

loc_100531000:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100531014;

loc_100531014:
    (r8)();
    goto loc_100531018;

loc_100531018:
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_10053100c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100531014;
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
    objc_getClass("MPBannerCustomEvent");
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100531340;

loc_10053130c:
    [r20 rangeOfString:r2];
    if (r22 != 0x0) {
            sub_100530dac(r21, "AdColony");
    }
    else {
            [r20 rangeOfString:r2];
            if (r22 != 0x0) {
                    sub_100530dac(r21, "Facebook");
            }
            else {
                    [r20 rangeOfString:r2];
                    if (r22 != 0x0) {
                            sub_100530dac(r21, "Google");
                    }
                    else {
                            [r20 rangeOfString:r2];
                            if (r22 != 0x0) {
                                    sub_100530dac(r21, "IronSource");
                            }
                            else {
                                    [r20 rangeOfString:r2];
                                    if (r22 != 0x0) {
                                            sub_100530dac(r21, "Tapjoy");
                                    }
                                    else {
                                            [r20 rangeOfString:r2];
                                            if (r22 != 0x0) {
                                                    sub_100530dac(r21, "Unity");
                                            }
                                            else {
                                                    [r20 rangeOfString:r2];
                                                    if (r22 != 0x0) {
                                                            sub_100530dac(r21, "Vungle");
                                                    }
                                                    else {
                                                            [r20 rangeOfString:r2];
                                                            if (r22 != 0x0) {
                                                                    sub_100530dac(r21, "Backfill");
                                                            }
                                                            else {
                                                                    [r20 rangeOfString:r2];
                                                                    if (r22 == 0x0) {
                                                                            [r20 rangeOfString:r2];
                                                                            if (@selector(rangeOfString:) != 0x0) {
                                                                                    sub_100530dac(r21, "MoPub");
                                                                            }
                                                                            else {
                                                                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                                                                            }
                                                                    }
                                                                    else {
                                                                            sub_100530dac(r21, "MoPub");
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    goto loc_100531658;

loc_100531658:
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_100531340:
    r0 = [r19 class];
    r0 = class_copyIvarList(r0, &var_54);
    r23 = r0;
    if (r0 == 0x0) goto loc_1005314c4;

loc_10053135c:
    if (var_54 == 0x0) goto loc_1005314bc;

loc_100531364:
    r26 = 0x0;
    var_60 = r21 + 0x1;
    goto loc_100531380;

loc_100531380:
    r28 = *(r23 + r26 * 0x8);
    r0 = ivar_getTypeEncoding(r28);
    r27 = r0;
    if (r0 == 0x0 || strcmp(r27, "@\"MPBannerCustomEvent\"") != 0x0 && strcmp(r27, "@\"MPBannerAdManager\"") != 0x0 && strcmp(r27, "@\"MPBannerCustomEventAdapter\"") != 0x0) goto loc_1005314ac;

loc_1005313d0:
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
    r10 = *(int8_t *)0x1011d87ef;
    r9 = sign_extend_64(r10);
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = *(int8_t *)0x1011d87ef;
                    r10 = r10;
            }
            else {
                    r10 = *0x1011d87e0;
            }
    }
    if (r2 != r10) goto loc_100531504;

loc_100531434:
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
                    r1 = 0x1011d87d8;
            }
            else {
                    r1 = *0x1011d87d8;
            }
    }
    if ((r10 & 0xffffffff80000000) != 0x0) goto loc_100531498;

loc_100531460:
    if (r2 == 0x0) goto loc_1005314ac;

loc_100531464:
    if (*(int8_t *)r1 != zero_extend_64(r28)) goto loc_100531504;

loc_100531470:
    r8 = r8 - 0x1;
    r9 = r1 + 0x1;
    r10 = var_60;
    goto loc_10053147c;

loc_10053147c:
    if (r8 == 0x0) goto loc_1005314ac;

loc_100531480:
    r11 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r12 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_10053147c;

loc_100531504:
    free(r23);
    goto loc_100531658;

loc_1005314ac:
    r26 = r26 + 0x1;
    if (r26 < var_54) goto loc_100531380;

loc_1005314bc:
    free(r23);
    goto loc_1005314c4;

loc_1005314c4:
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    goto loc_100531658;

loc_100531498:
    if (r2 == 0x0 || memcmp(r0, r1, r2) == 0x0) goto loc_1005314a4;
    goto loc_100531504;

loc_1005314a4:
    operator delete(r28);
    goto loc_1005314ac;
}

@end