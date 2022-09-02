@implementation MoPubiOS

-(bool)showInterstitial {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 isSdkInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_10053a788;

loc_10053a6fc:
    r0 = *(r19 + 0x8);
    if (r0 == 0x0 || ([r0 ready] & 0x1) == 0x0) goto loc_10053a764;

loc_10053a714:
    [r19 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10053a7b8;

loc_10053a754:
    if (r0 == 0x0) goto loc_10053a7c4;

loc_10053a758:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053a7c0;

loc_10053a7c0:
    (r8)();
    goto loc_10053a7c4;

loc_10053a7c4:
    r0 = 0x1;
    goto loc_10053a78c;

loc_10053a78c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053a7b8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053a7c0;

loc_10053a764:
    loc_10098a5e8(0x0);
    goto loc_10053a788;

loc_10053a788:
    r0 = 0x0;
    goto loc_10053a78c;
}

-(bool)loadInterstitial:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 isSdkInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_10053a5cc;

loc_10053a570:
    [r20 retain];
    [r19 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10053a600;

loc_10053a5bc:
    if (r0 == 0x0) goto loc_10053a60c;

loc_10053a5c0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053a608;

loc_10053a608:
    (r8)();
    goto loc_10053a60c;

loc_10053a60c:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053a600:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053a608;

loc_10053a5cc:
    *(int8_t *)0x1011d8960 = 0x1;
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    goto loc_10053a60c;
}

-(void)interstitialDidLoadAd:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x8) == r0) {
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_10053a464(&var_38, "mopub");
                                    sub_10053a464(&var_50, "");
                                    r0 = (*(*r21 + 0x10))(r21, &var_38, &var_50);
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
                                    (*(*r20 + 0x10))(r20);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
    }
    [r19 release];
    return;
}

-(void)interstitialDidExpire:(void *)arg2 {
    return;
}

-(void)interstitialDidFailToLoadAd:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(r20 + 0x8) == r0) {
            *(r20 + 0x8) = 0x0;
            [r19 release];
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_10053a464(&var_38, "mopub");
                                    sub_10053a464(&var_50, "MCAds - Mopub Adapter - MoPub Interstitial Ad failed to load");
                                    sub_10053a464(&var_68, "");
                                    r0 = (*(*r21 + 0x18))(r21, &var_38, &var_50, &var_68);
                                    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_68);
                                    }
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
                                    (*(*r20 + 0x10))(r20);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
    }
    [r19 release];
    return;
}

-(void)interstitialWillAppear:(void *)arg2 {
    return;
}

-(void)interstitialDidAppear:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x8) == r0) {
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_10053a464(&var_38, "mopub");
                                    sub_10053a464(&var_50, "");
                                    r0 = (*(*r21 + 0x20))(r21, &var_38, &var_50);
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
                                    (*(*r20 + 0x10))(r20);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
    }
    [r19 release];
    return;
}

-(void)interstitialWillDisappear:(void *)arg2 {
    return;
}

-(void)interstitialDidDisappear:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(r20 + 0x8) == r0) {
            *(r20 + 0x8) = 0x0;
            [r19 release];
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_10053a464(&var_38, "mopub");
                                    sub_10053a464(&var_50, "");
                                    r0 = (*(*r21 + 0x30))(r21, &var_38, &var_50);
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
                                    (*(*r20 + 0x10))(r20);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
    }
    [r19 release];
    return;
}

-(void)interstitialDidReceiveTapEvent:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x8) == r0) {
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_10053a464(&var_38, "mopub");
                                    sub_10053a464(&var_50, "");
                                    r0 = (*(*r21 + 0x38))(r21, &var_38, &var_50);
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
                                    (*(*r20 + 0x10))(r20);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
    }
    [r19 release];
    return;
}

-(bool)loadRewardedVideo:(void *)arg2 withUserId:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r23 = [r0 isSdkInitialized];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_10053b0b0;

loc_10053b038:
    [MPRewardedVideo setDelegate:r21 forAdUnitId:r19];
    [r19 retain];
    [r20 retain];
    sub_10097b5f0(0x0, &var_58, 0x0, 0x0, 0x10);
    r0 = &var_58;
    if (&var_58 == r0) goto loc_10053b0e4;

loc_10053b0a0:
    if (r0 == 0x0) goto loc_10053b0f0;

loc_10053b0a4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053b0ec;

loc_10053b0ec:
    (r8)();
    goto loc_10053b0f0;

loc_10053b0f0:
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053b0e4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053b0ec;

loc_10053b0b0:
    *(int8_t *)0x1011d8961 = 0x1;
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    goto loc_10053b0f0;
}

-(void)rewardedVideoAdWillAppearForAdUnitID:(void *)arg2 {
    return;
}

-(bool)showRewardedVideo:(void *)arg2 withCustomData:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 isSdkInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_10053b284;

loc_10053b20c:
    if (([MPRewardedVideo hasAdAvailableForAdUnitID:r19] & 0x1) == 0x0) goto loc_10053b28c;

loc_10053b228:
    [r19 retain];
    [r20 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10053b2b8;

loc_10053b274:
    if (r0 == 0x0) goto loc_10053b2c4;

loc_10053b278:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053b2c0;

loc_10053b2c0:
    (r8)();
    goto loc_10053b2c4;

loc_10053b2c4:
    r21 = 0x1;
    goto loc_10053b2c8;

loc_10053b2c8:
    var_28 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053b2b8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053b2c0;

loc_10053b28c:
    loc_10098a5e8(0x0);
    r21 = 0x0;
    goto loc_10053b2c8;

loc_10053b284:
    r21 = 0x0;
    goto loc_10053b2c8;
}

-(void)rewardedVideoAdDidLoadForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053a464(&var_38, "mopub");
                            sub_10053a464(&var_50, "");
                            r0 = (*(*r21 + 0x10))(r21, &var_38, &var_50);
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
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg3 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053a464(&var_38, "mopub");
                            r0 = [r19 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_10053a464(&var_50, [r0 UTF8String]);
                            sub_10053a464(&var_68, "");
                            r0 = (*(*r22 + 0x18))(r22, &var_38, &var_50, &var_68);
                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_68);
                            }
                            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_50);
                            }
                            [r21 release];
                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_38);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillDisappearForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidExpireForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidAppearForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053a464(&var_38, "mopub");
                            sub_10053a464(&var_50, "");
                            r0 = (*(*r21 + 0x20))(r21, &var_38, &var_50);
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
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidDisappearForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053a464(&var_38, "mopub");
                            sub_10053a464(&var_50, "");
                            r0 = (*(*r21 + 0x38))(r21, &var_38, &var_50);
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
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillLeaveApplicationForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdShouldRewardForAdUnitID:(void *)arg2 reward:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg3 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053a464(&var_48, "mopub");
                            r0 = [r19 currencyType];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_10053a464(&var_60, [r0 UTF8String]);
                            r0 = [r19 amount];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 intValue];
                            r0 = (*(*r22 + 0x40))(r22, &var_48, &var_60, r0);
                            [r23 release];
                            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_60);
                            }
                            [r21 release];
                            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_48);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053a464(&var_38, "mopub");
                            sub_10053a464(&var_50, "");
                            r0 = (*(*r21 + 0x30))(r21, &var_38, &var_50);
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
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r19 release];
    return;
}

-(void)dealloc {
    [MPRewardedVideo removeDelegate:self];
    [[&var_20 super] dealloc];
    return;
}

-(void *)interstitialAd {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end