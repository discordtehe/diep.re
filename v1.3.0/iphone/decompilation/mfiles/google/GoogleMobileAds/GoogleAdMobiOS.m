@implementation GoogleAdMobiOS

-(bool)loadInterstitial:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    [self retain];
    r19 = [r20 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_1005291dc;

loc_1005291cc:
    if (r0 == 0x0) goto loc_1005291e8;

loc_1005291d0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005291e4;

loc_1005291e4:
    (r8)();
    goto loc_1005291e8;

loc_1005291e8:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005291dc:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005291e4;
}

-(bool)showInterstitial {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 == 0x0 || ([r0 isReady] & 0x1) == 0x0) goto loc_1005292e8;

loc_100529298:
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_100529314;

loc_1005292d8:
    if (r0 == 0x0) goto loc_100529320;

loc_1005292dc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052931c;

loc_10052931c:
    (r8)();
    goto loc_100529320;

loc_100529320:
    r0 = 0x1;
    goto loc_100529324;

loc_100529324:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100529314:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052931c;

loc_1005292e8:
    loc_10098a5e8(0x0);
    r0 = 0x0;
    goto loc_100529324;
}

-(void)interstitialDidReceiveAd:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x8) != r0) {
            loc_10098a5e8(0x0);
    }
    else {
            loc_10098a5e8(0x0);
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_100529548(&var_38, "admob");
                                    sub_100529548(&var_50, "");
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

-(void)interstitial:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*(r21 + 0x8) != r19) {
            loc_10098a5e8(0x0);
    }
    else {
            *(r21 + 0x8) = 0x0;
            [r19 release];
            loc_10098a5e8(0x0);
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r21 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_100529548(&var_48, "admob");
                                    r0 = [r20 description];
                                    r0 = [r0 retain];
                                    r0 = objc_retainAutorelease(r0);
                                    r22 = r0;
                                    sub_100529548(&var_60, [r0 UTF8String]);
                                    sub_100529548(&var_78, "");
                                    r0 = (*(*r23 + 0x18))(r23, &var_48, &var_60, &var_78);
                                    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_78);
                                    }
                                    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_60);
                                    }
                                    [r22 release];
                                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_48);
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
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialWillDismissScreen:(void *)arg2 {
    return;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x8) != r0) {
            loc_10098a5e8(0x0);
    }
    else {
            loc_10098a5e8(0x0);
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_100529548(&var_38, "admob");
                                    sub_100529548(&var_50, "");
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

-(void)interstitialDidDismissScreen:(void *)arg2 {
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
    if (*(r20 + 0x8) != r0) {
            loc_10098a5e8(0x0);
    }
    else {
            *(r20 + 0x8) = 0x0;
            [r19 release];
            loc_10098a5e8(0x0);
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_100529548(&var_38, "admob");
                                    sub_100529548(&var_50, "");
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

-(void)interstitialWillPresentScreen:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x8) != r0) {
            loc_10098a5e8(0x0);
    }
    else {
            loc_10098a5e8(0x0);
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_100529548(&var_38, "admob");
                                    sub_100529548(&var_50, "");
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

-(void)rewardBasedVideoAdDidReceiveAd:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    loc_10098a5e8(0x0);
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100529548(&var_28, "admob");
                            sub_100529548(&var_40, "");
                            r0 = (*(*r20 + 0x10))(r20, &var_28, &var_40);
                            if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_40);
                            }
                            if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_28);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    return;
}

-(void)rewardBasedVideoAdWillLeaveApplication:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    loc_10098a5e8(0x0);
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100529548(&var_28, "admob");
                            sub_100529548(&var_40, "");
                            r0 = (*(*r20 + 0x30))(r20, &var_28, &var_40);
                            if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_40);
                            }
                            if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_28);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    return;
}

-(void)rewardBasedVideoAdDidClose:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    loc_10098a5e8(0x0);
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100529548(&var_28, "admob");
                            sub_100529548(&var_40, "");
                            r0 = (*(*r20 + 0x38))(r20, &var_28, &var_40);
                            if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_40);
                            }
                            if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_28);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    return;
}

-(void)rewardBasedVideoAd:(void *)arg2 didFailToLoadWithError:(void *)arg3 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg3 retain];
    loc_10098a5e8(0x0);
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100529548(&var_38, "admob");
                            r0 = [r19 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_100529548(&var_50, [r0 UTF8String]);
                            sub_100529548(&var_68, "");
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

-(void)rewardBasedVideoAdDidOpen:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    loc_10098a5e8(0x0);
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100529548(&var_28, "admob");
                            sub_100529548(&var_40, "");
                            r0 = (*(*r20 + 0x20))(r20, &var_28, &var_40);
                            if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_40);
                            }
                            if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_28);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    return;
}

-(void)rewardBasedVideoAd:(void *)arg2 didRewardUserWithReward:(void *)arg3 {
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
    loc_10098a5e8(0x0);
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100529548(&var_48, "admob");
                            r0 = [r19 type];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_100529548(&var_60, [r0 UTF8String]);
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

-(void)rewardBasedVideoAdDidStartPlaying:(void *)arg2 {
    return;
}

-(void)rewardBasedVideoAdDidCompletePlaying:(void *)arg2 {
    return;
}

-(bool)loadRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    [self retain];
    r19 = [r20 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10052a810;

loc_10052a800:
    if (r0 == 0x0) goto loc_10052a81c;

loc_10052a804:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052a818;

loc_10052a818:
    (r8)();
    goto loc_10052a81c;

loc_10052a81c:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10052a810:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052a818;
}

-(void *)interstitialAd {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)rewardedVideoAd {
    r0 = *(self + 0x10);
    return r0;
}

-(bool)showRewardedVideo {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADRewardBasedVideoAd sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 isReady];
    [r0 release];
    if ((r20 & 0x1) == 0x0) goto loc_10052a934;

loc_10052a8ec:
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052a960;

loc_10052a924:
    if (r0 == 0x0) goto loc_10052a96c;

loc_10052a928:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052a968;

loc_10052a968:
    (r8)();
    goto loc_10052a96c;

loc_10052a96c:
    r0 = 0x1;
    goto loc_10052a970;

loc_10052a970:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10052a960:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052a968;

loc_10052a934:
    loc_10098a5e8(0x0);
    r0 = 0x0;
    goto loc_10052a970;
}

-(void)setRewardedVideoAd:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)userId {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end