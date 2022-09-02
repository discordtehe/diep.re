@implementation AdMobBannerListeneriOS

-(void)adViewWillPresentScreen:(void *)arg2 {
    return;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)findNetworkName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r8;
    r0 = [arg2 adNetworkClassName];
    r0 = [r0 retain];
    r19 = [[r0 lowercaseString] retain];
    [r0 release];
    [r19 rangeOfString:r2];
    if (r21 != 0x0) {
            sub_10053ebe4(r20, "AdColony");
    }
    else {
            [r19 rangeOfString:r2];
            if (r21 != 0x0) {
                    sub_10053ebe4(r20, "Facebook");
            }
            else {
                    [r19 rangeOfString:r2];
                    if (r21 != 0x0) {
                            sub_10053ebe4(r20, "MoPub");
                    }
                    else {
                            [r19 rangeOfString:r2];
                            if (r21 != 0x0) {
                                    sub_10053ebe4(r20, "IronSource");
                            }
                            else {
                                    [r19 rangeOfString:r2];
                                    if (r21 != 0x0) {
                                            sub_10053ebe4(r20, "Tapjoy");
                                    }
                                    else {
                                            [r19 rangeOfString:r2];
                                            if (r21 != 0x0) {
                                                    sub_10053ebe4(r20, "Unity");
                                            }
                                            else {
                                                    [r19 rangeOfString:r2];
                                                    if (r21 != 0x0) {
                                                            sub_10053ebe4(r20, "Vungle");
                                                    }
                                                    else {
                                                            [r19 rangeOfString:r2];
                                                            if (@selector(rangeOfString:) != 0x0) {
                                                                    sub_10053ebe4(r20, "Google");
                                                            }
                                                            else {
                                                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    r0 = [r19 release];
    return r0;
}

-(void)adViewWillDismissScreen:(void *)arg2 {
    return;
}

-(void)adViewDidReceiveAd:(void *)arg2 {
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
    [*0x1011d89a0 frame];
    v8 = v0;
    v9 = v1;
    if (*0x1011d89a0 != 0x0) {
            [*0x1011d89a0 adSize];
    }
    else {
            var_70 = 0x0;
    }
    [*0x1011d89a0 setFrame:r2];
    [WrapperUtilsIos adjustAdViewFrameToShowAdView:*0x1011d89a0 onPosition:*(int32_t *)0x1011d89c0];
    if (*0x1011d89a8 != 0x0) {
            [*0x1011d89a8 findNetworkName:r19];
    }
    else {
            var_70 = 0x0;
    }
    r0 = [r19 retain];
    r20 = r0;
    var_90 = r0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *(int128_t *)r0 = 0x100e844a0;
    *(int128_t *)(r0 + 0x8) = var_90;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_10051319c(&stack[-104]);
    r0 = r22;
    if (&stack[-104] == r0) goto loc_10053f008;

loc_10053eff8:
    if (r0 == 0x0) goto loc_10053f014;

loc_10053effc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053f010;

loc_10053f010:
    (r8)();
    goto loc_10053f014;

loc_10053f014:
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    [0x0 release];
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_10053f008:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053f010;
}

-(void)adView:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
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
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    if (*0x1011d89a8 != 0x0) {
            [*0x1011d89a8 findNetworkName:r20];
    }
    else {
            var_80 = 0x0;
    }
    r0 = [r19 description];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r22 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10053ebe4(&var_98, r0);
    [r22 release];
    r0 = [r20 retain];
    r21 = r0;
    var_D0 = r0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *(int128_t *)r0 = 0x100e84530;
    *(int128_t *)(r0 + 0x8) = var_D0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_10051319c(&stack[-120]);
    r0 = r22;
    if (&stack[-120] == r0) goto loc_10053f26c;

loc_10053f25c:
    if (r0 == 0x0) goto loc_10053f278;

loc_10053f260:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053f274;

loc_10053f274:
    (r8)();
    goto loc_10053f278;

loc_10053f278:
    if ((sign_extend_64(var_99) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B0);
    }
    if ((sign_extend_64(var_B1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C8);
    }
    [0x0 release];
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_10053f26c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053f274;
}

-(void)adViewDidDismissScreen:(void *)arg2 {
    return;
}

-(void)adViewWillLeaveApplication:(void *)arg2 {
    return;
}

@end