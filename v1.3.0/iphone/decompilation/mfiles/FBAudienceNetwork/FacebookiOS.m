@implementation FacebookiOS

-(void)interstitialAdDidClick:(void *)arg2 {
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
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)interstitialAdWillClose:(void *)arg2 {
    return;
}

-(void)interstitialAdDidClose:(void *)arg2 {
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
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)interstitialAdDidLoad:(void *)arg2 {
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
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(bool)loadInterstitial:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (*(r20 + 0x8) != 0x0) goto loc_10051e314;

loc_10051e278:
    r0 = objc_alloc();
    r0 = [r0 initWithPlacementID:r19];
    r8 = *(r20 + 0x8);
    *(r20 + 0x8) = r0;
    [r8 release];
    [*(r20 + 0x8) setDelegate:r20];
    [r20 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10051e308;

loc_10051e2f8:
    if (r0 == 0x0) goto loc_10051e314;

loc_10051e2fc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051e310;

loc_10051e310:
    (r8)();
    goto loc_10051e314;

loc_10051e314:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10051e308:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051e310;
}

-(void)interstitialAdWillLogImpression:(void *)arg2 {
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
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)interstitialAd:(void *)arg2 didFailWithError:(void *)arg3 {
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
    if (*(r21 + 0x8) == r19) {
            *(r21 + 0x8) = 0x0;
            [r19 release];
            if (*0x1011e4ac8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r21 = r0;
                            if (*0x1011e4ac0 != 0x0) {
                                    sub_10051db14(&var_48, "facebook");
                                    r0 = [r20 description];
                                    r0 = [r0 retain];
                                    r0 = objc_retainAutorelease(r0);
                                    r22 = r0;
                                    sub_10051db14(&var_60, [r0 UTF8String]);
                                    sub_10051db14(&var_78, "");
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

-(bool)showInterstitial {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 == 0x0 || ([r0 isAdValid] & 0x1) == 0x0) goto loc_10051e41c;

loc_10051e3cc:
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10051e448;

loc_10051e40c:
    if (r0 == 0x0) goto loc_10051e454;

loc_10051e410:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051e450;

loc_10051e450:
    (r8)();
    goto loc_10051e454;

loc_10051e454:
    r0 = 0x1;
    goto loc_10051e458;

loc_10051e458:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10051e448:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051e450;

loc_10051e41c:
    loc_10098a5e8(0x0);
    r0 = 0x0;
    goto loc_10051e458;
}

-(void)rewardedVideoAdDidLoad:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x10) == r0) {
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)rewardedVideoAdWillClose:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidClose:(void *)arg2 {
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
    if (*(r20 + 0x10) == r0) {
            *(r20 + 0x10) = 0x0;
            [r19 release];
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)rewardedVideoAdDidClick:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x10) == r0) {
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)rewardedVideoAdServerRewardDidSucceed:(void *)arg2 {
    return;
}

-(void)rewardedVideoAd:(void *)arg2 didFailWithError:(void *)arg3 {
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
    if (*(r21 + 0x10) == r19) {
            *(r21 + 0x10) = 0x0;
            [r19 release];
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r21 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10051db14(&var_48, "facebook");
                                    r0 = [r20 description];
                                    r0 = [r0 retain];
                                    r0 = objc_retainAutorelease(r0);
                                    r22 = r0;
                                    sub_10051db14(&var_60, [r0 UTF8String]);
                                    sub_10051db14(&var_78, "");
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

-(void)rewardedVideoAdWillLogImpression:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x10) == r0) {
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
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

-(void)rewardedVideoAdVideoComplete:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(self + 0x10) == r0) {
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10051db14(&var_38, "facebook");
                                    sub_10051db14(&var_50, "");
                                    r0 = (*(*r21 + 0x40))(r21, &var_38, &var_50, 0x0);
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

-(void)rewardedVideoAdServerRewardDidFail:(void *)arg2 {
    return;
}

-(void *)interstitialAd {
    r0 = *(self + 0x8);
    return r0;
}

-(bool)loadRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (*(r20 + 0x10) != 0x0) goto loc_10051ef10;

loc_10051ee74:
    r0 = objc_alloc();
    r0 = [r0 initWithPlacementID:r19];
    r8 = *(r20 + 0x10);
    *(r20 + 0x10) = r0;
    [r8 release];
    [*(r20 + 0x10) setDelegate:r20];
    [r20 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10051ef04;

loc_10051eef4:
    if (r0 == 0x0) goto loc_10051ef10;

loc_10051eef8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051ef0c;

loc_10051ef0c:
    (r8)();
    goto loc_10051ef10;

loc_10051ef10:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10051ef04:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051ef0c;
}

-(bool)showRewardedVideo:(void *)arg2 currency:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = *(r21 + 0x10);
    if (r0 == 0x0 || ([r0 isAdValid] & 0x1) == 0x0) goto loc_10051f078;

loc_10051efe8:
    if (([*(r21 + 0x10) setRewardDataWithUserID:r19 withCurrency:r20] & 0x1) == 0x0) {
            loc_10098a5e8(0x0);
    }
    [r21 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10051f0a4;

loc_10051f068:
    if (r0 == 0x0) goto loc_10051f0b0;

loc_10051f06c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051f0ac;

loc_10051f0ac:
    (r8)();
    goto loc_10051f0b0;

loc_10051f0b0:
    r21 = 0x1;
    goto loc_10051f0b4;

loc_10051f0b4:
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

loc_10051f0a4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051f0ac;

loc_10051f078:
    loc_10098a5e8(0x0);
    r21 = 0x0;
    goto loc_10051f0b4;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)rewardedVideoAd {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setRewardedVideoAd:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end