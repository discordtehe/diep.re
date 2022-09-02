@implementation MCAdsAdMobRewardedVideosDelegate

-(void)rewardBasedVideoAdDidClose:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d88e8;
    r20 = [[GADRewardBasedVideoAd sharedInstance] retain];
    if (r19 != 0x0) {
            [*0x1011d88e8 findNetworkName:r20];
    }
    else {
            var_50 = 0x0;
    }
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83d08;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(&stack[-72]);
    r0 = r20;
    if (&stack[-72] == r0) goto loc_1005385c0;

loc_1005385b0:
    if (r0 == 0x0) goto loc_1005385cc;

loc_1005385b4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005385c8;

loc_1005385c8:
    (r8)();
    goto loc_1005385cc;

loc_1005385cc:
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

loc_1005385c0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005385c8;
}

-(void)rewardBasedVideoAdDidReceiveAd:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d88e8;
    r20 = [[GADRewardBasedVideoAd sharedInstance] retain];
    if (r19 != 0x0) {
            [*0x1011d88e8 findNetworkName:r20];
    }
    else {
            var_50 = 0x0;
    }
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83d88;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(&stack[-72]);
    r0 = r20;
    if (&stack[-72] == r0) goto loc_10053877c;

loc_10053876c:
    if (r0 == 0x0) goto loc_100538788;

loc_100538770:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100538784;

loc_100538784:
    (r8)();
    goto loc_100538788;

loc_100538788:
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

loc_10053877c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100538784;
}

-(void)rewardBasedVideoAdDidOpen:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d88e8;
    r20 = [[GADRewardBasedVideoAd sharedInstance] retain];
    if (r19 != 0x0) {
            [*0x1011d88e8 findNetworkName:r20];
    }
    else {
            var_50 = 0x0;
    }
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83c88;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(&stack[-72]);
    r0 = r20;
    if (&stack[-72] == r0) goto loc_100538404;

loc_1005383f4:
    if (r0 == 0x0) goto loc_100538410;

loc_1005383f8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053840c;

loc_10053840c:
    (r8)();
    goto loc_100538410;

loc_100538410:
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

loc_100538404:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053840c;
}

-(void)rewardBasedVideoAdDidStartPlaying:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d88e8;
    r20 = [[GADRewardBasedVideoAd sharedInstance] retain];
    if (r19 != 0x0) {
            [*0x1011d88e8 findNetworkName:r20];
    }
    else {
            var_50 = 0x0;
    }
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83e88;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(&stack[-72]);
    r0 = r20;
    if (&stack[-72] == r0) goto loc_100538bf8;

loc_100538be8:
    if (r0 == 0x0) goto loc_100538c04;

loc_100538bec:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100538c00;

loc_100538c00:
    (r8)();
    goto loc_100538c04;

loc_100538c04:
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

loc_100538bf8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100538c00;
}

-(void)rewardBasedVideoAd:(void *)arg2 didFailToLoadWithError:(void *)arg3 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = *0x1011d88e8;
    r0 = [GADRewardBasedVideoAd sharedInstance];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            [*0x1011d88e8 findNetworkName:r21];
    }
    else {
            var_60 = 0x0;
    }
    [r21 release];
    r0 = [r19 description];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r21 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_100538294(&var_78, r0);
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83e08;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(r29 - 0x48);
    r0 = r21;
    if (r29 - 0x48 == r0) goto loc_1005389b0;

loc_1005389a0:
    if (r0 == 0x0) goto loc_1005389bc;

loc_1005389a4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005389b8;

loc_1005389b8:
    (r8)();
    goto loc_1005389bc;

loc_1005389bc:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_1005389b0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005389b8;
}

-(void)rewardBasedVideoAdWillLeaveApplication:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d88e8;
    r20 = [[GADRewardBasedVideoAd sharedInstance] retain];
    if (r19 != 0x0) {
            [*0x1011d88e8 findNetworkName:r20];
    }
    else {
            var_50 = 0x0;
    }
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83f88;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(&stack[-72]);
    r0 = r20;
    if (&stack[-72] == r0) goto loc_100538f70;

loc_100538f60:
    if (r0 == 0x0) goto loc_100538f7c;

loc_100538f64:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100538f78;

loc_100538f78:
    (r8)();
    goto loc_100538f7c;

loc_100538f7c:
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

loc_100538f70:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100538f78;
}

-(void)rewardBasedVideoAdDidCompletePlaying:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d88e8;
    r20 = [[GADRewardBasedVideoAd sharedInstance] retain];
    if (r19 != 0x0) {
            [*0x1011d88e8 findNetworkName:r20];
    }
    else {
            var_50 = 0x0;
    }
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83f08;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_1005148e8(&stack[-72]);
    r0 = r20;
    if (&stack[-72] == r0) goto loc_100538db4;

loc_100538da4:
    if (r0 == 0x0) goto loc_100538dc0;

loc_100538da8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100538dbc;

loc_100538dbc:
    (r8)();
    goto loc_100538dc0;

loc_100538dc0:
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

loc_100538db4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100538dbc;
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
            sub_100538294(r20, "AdColony");
    }
    else {
            [r19 rangeOfString:r2];
            if (r21 != 0x0) {
                    sub_100538294(r20, "Facebook");
            }
            else {
                    [r19 rangeOfString:r2];
                    if (r21 != 0x0) {
                            sub_100538294(r20, "MoPub");
                    }
                    else {
                            [r19 rangeOfString:r2];
                            if (r21 != 0x0) {
                                    sub_100538294(r20, "IronSource");
                            }
                            else {
                                    [r19 rangeOfString:r2];
                                    if (r21 != 0x0) {
                                            sub_100538294(r20, "Tapjoy");
                                    }
                                    else {
                                            [r19 rangeOfString:r2];
                                            if (r21 != 0x0) {
                                                    sub_100538294(r20, "Unity");
                                            }
                                            else {
                                                    [r19 rangeOfString:r2];
                                                    if (r21 != 0x0) {
                                                            sub_100538294(r20, "Vungle");
                                                    }
                                                    else {
                                                            [r19 rangeOfString:r2];
                                                            if (@selector(rangeOfString:) != 0x0) {
                                                                    sub_100538294(r20, "Google");
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

-(void)rewardBasedVideoAd:(void *)arg2 didRewardUserWithReward:(void *)arg3 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = *0x1011d88e8;
    r0 = [GADRewardBasedVideoAd sharedInstance];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            [*0x1011d88e8 findNetworkName:r21];
    }
    else {
            var_60 = 0x0;
    }
    [r21 release];
    r0 = [r19 type];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r21 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_100538294(&var_78, r0);
    [r21 release];
    r0 = [r19 amount];
    r0 = [r0 retain];
    [r0 intValue];
    [r0 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    var_80 = r21;
    r0 = operator new();
    *r0 = 0x100e84008;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    *(int32_t *)(r21 + 0x38) = var_80;
    sub_1005148e8(r29 - 0x48);
    r0 = r21;
    if (r29 - 0x48 == r0) goto loc_1005391e4;

loc_1005391d4:
    if (r0 == 0x0) goto loc_1005391f0;

loc_1005391d8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005391ec;

loc_1005391ec:
    (r8)();
    goto loc_1005391f0;

loc_1005391f0:
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_99) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B0);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_1005391e4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005391ec;
}

@end