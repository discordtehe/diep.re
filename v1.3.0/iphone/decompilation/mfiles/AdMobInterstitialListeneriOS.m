@implementation AdMobInterstitialListeneriOS

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
            sub_100547368(r20, "AdColony");
    }
    else {
            [r19 rangeOfString:r2];
            if (r21 != 0x0) {
                    sub_100547368(r20, "Facebook");
            }
            else {
                    [r19 rangeOfString:r2];
                    if (r21 != 0x0) {
                            sub_100547368(r20, "MoPub");
                    }
                    else {
                            [r19 rangeOfString:r2];
                            if (r21 != 0x0) {
                                    sub_100547368(r20, "IronSource");
                            }
                            else {
                                    [r19 rangeOfString:r2];
                                    if (r21 != 0x0) {
                                            sub_100547368(r20, "Tapjoy");
                                    }
                                    else {
                                            [r19 rangeOfString:r2];
                                            if (r21 != 0x0) {
                                                    sub_100547368(r20, "Unity");
                                            }
                                            else {
                                                    [r19 rangeOfString:r2];
                                                    if (r21 != 0x0) {
                                                            sub_100547368(r20, "Vungle");
                                                    }
                                                    else {
                                                            [r19 rangeOfString:r2];
                                                            if (@selector(rangeOfString:) != 0x0) {
                                                                    sub_100547368(r20, "Google");
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

-(void)interstitialDidReceiveAd:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e84e98;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_100547790(&stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_1005476c4;

loc_1005476b4:
    if (r0 == 0x0) goto loc_1005476d0;

loc_1005476b8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005476cc;

loc_1005476cc:
    (r8)();
    goto loc_1005476d0;

loc_1005476d0:
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

loc_1005476c4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005476cc;
}

-(void)interstitial:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    [arg3 retain];
    [self findNetworkName:r20];
    [r20 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = [r19 retain];
    r20 = r0;
    var_68 = r0;
    r0 = operator new();
    *r0 = 0x100e84f28;
    *(int128_t *)(r0 + 0x8) = var_80;
    var_80 = var_80;
    *(int128_t *)(r0 + 0x18) = var_70;
    *(int128_t *)(r0 + 0x20) = r20;
    sub_100547790(&stack[-88]);
    r0 = r0;
    if (&stack[-88] == r0) goto loc_100547b20;

loc_100547b10:
    if (r0 == 0x0) goto loc_100547b2c;

loc_100547b14:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100547b28;

loc_100547b28:
    (r8)();
    goto loc_100547b2c;

loc_100547b2c:
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

loc_100547b20:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100547b28;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e84fa8;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_100547790(&stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100547cb0;

loc_100547ca0:
    if (r0 == 0x0) goto loc_100547cbc;

loc_100547ca4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100547cb8;

loc_100547cb8:
    (r8)();
    goto loc_100547cbc;

loc_100547cbc:
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

loc_100547cb0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100547cb8;
}

-(void)interstitialDidDismissScreen:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e85028;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_100547790(&stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100547e14;

loc_100547e04:
    if (r0 == 0x0) goto loc_100547e20;

loc_100547e08:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100547e1c;

loc_100547e1c:
    (r8)();
    goto loc_100547e20;

loc_100547e20:
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

loc_100547e14:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100547e1c;
}

-(void)interstitialWillPresentScreen:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self findNetworkName:arg2];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e850a8;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_100547790(&stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100547f78;

loc_100547f68:
    if (r0 == 0x0) goto loc_100547f84;

loc_100547f6c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100547f80;

loc_100547f80:
    (r8)();
    goto loc_100547f84;

loc_100547f84:
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

loc_100547f78:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100547f80;
}

-(void)interstitialWillDismissScreen:(void *)arg2 {
    return;
}

@end