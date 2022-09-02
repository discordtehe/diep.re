@implementation AdColonyiOS

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
    if ((*(int8_t *)byte_1011d8a28 & 0x1) == 0x0) goto loc_10053fc40;

loc_10053fbe4:
    [r19 retain];
    [r20 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10053fc74;

loc_10053fc30:
    if (r0 == 0x0) goto loc_10053fc80;

loc_10053fc34:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053fc7c;

loc_10053fc7c:
    (r8)();
    goto loc_10053fc80;

loc_10053fc80:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053fc74:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053fc7c;

loc_10053fc40:
    *(int8_t *)0x1011d8a29 = 0x1;
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    goto loc_10053fc80;
}

-(bool)loadRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ((*(int8_t *)byte_1011d8a28 & 0x1) == 0x0) goto loc_10053ff50;

loc_10053fef4:
    [r19 retain];
    [r20 retain];
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10053ff84;

loc_10053ff40:
    if (r0 == 0x0) goto loc_10053ff90;

loc_10053ff44:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053ff8c;

loc_10053ff8c:
    (r8)();
    goto loc_10053ff90;

loc_10053ff90:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053ff84:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053ff8c;

loc_10053ff50:
    *(int8_t *)0x1011d8a2a = 0x1;
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    goto loc_10053ff90;
}

-(bool)showInterstitial {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self interstitialAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10053fdbc;

loc_10053fd4c:
    r0 = [r19 interstitialAd];
    r0 = [r0 retain];
    r21 = [r0 expired];
    [r0 release];
    if (r21 == 0x0) goto loc_10053fde8;

loc_10053fd80:
    loc_10098a5e8(0x0);
    [r19 setInterstitialAd:0x0];
    goto loc_10053fde0;

loc_10053fde0:
    r0 = 0x0;
    goto loc_10053fe44;

loc_10053fe44:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10053fde8:
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10053fe34;

loc_10053fe24:
    if (r0 == 0x0) goto loc_10053fe40;

loc_10053fe28:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053fe3c;

loc_10053fe3c:
    (r8)();
    goto loc_10053fe40;

loc_10053fe40:
    r0 = 0x1;
    goto loc_10053fe44;

loc_10053fe34:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053fe3c;

loc_10053fdbc:
    loc_10098a5e8(0x0);
    goto loc_10053fde0;
}

-(bool)showRewardedVideo:(void *)arg2 withUserId:(void *)arg3 withCustomData:(void *)arg4 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    var_50 = self;
    r0 = [self rewardedVideoAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1005400d0;

loc_10054005c:
    r0 = [r19 rewardedVideoAd];
    r0 = [r0 retain];
    r19 = [r0 expired];
    [r0 release];
    if (r19 == 0x0) goto loc_1005400fc;

loc_100540090:
    loc_10098a5e8(0x0);
    [var_50 setRewardedVideoAd:0x0];
    r0 = 0x0;
    goto loc_100540158;

loc_100540158:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005400fc:
    sub_10097b5f0(0x0, &var_48, 0x0, 0x0, 0x10);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_100540148;

loc_100540138:
    if (r0 == 0x0) goto loc_100540154;

loc_10054013c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100540150;

loc_100540150:
    (r8)();
    goto loc_100540154;

loc_100540154:
    r0 = 0x1;
    goto loc_100540158;

loc_100540148:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100540150;

loc_1005400d0:
    loc_10098a5e8(0x0);
    r0 = 0x0;
    goto loc_100540158;
}

-(void)onAdLoaded:(void *)arg2 forAdFormat:(int)arg3 {
    r31 = r31 - 0x130;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 setOpen:&saved_fp - 0x70];
    [r19 setClose:&var_A0];
    [r19 setClick:&var_D0];
    if (r21 == 0x1) goto loc_100540358;

loc_1005402ac:
    if (r21 != 0x0) goto loc_100540418;

loc_1005402b0:
    [r20 setInterstitialAd:r19];
    if (*0x1011e4ac8 == 0x0) goto loc_100540418;

loc_1005402d4:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100540418;

loc_1005402dc:
    r21 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_10053fb08(&var_E8, "adcolony");
            sub_10053fb08(&var_100, "");
            r0 = (*(*r20 + 0x10))(r20, &var_E8, &var_100);
            if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_100);
            }
            if ((sign_extend_64(var_D1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_E8);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1005403fc;

loc_1005403fc:
    if (r9 == 0x0) {
            (*(*r21 + 0x10))(r21);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_100540418;

loc_100540418:
    [r19 release];
    return;

loc_100540358:
    [r20 setRewardedVideoAd:r19];
    if (*0x1011e4ad8 == 0x0) goto loc_100540418;

loc_10054037c:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100540418;

loc_100540384:
    r21 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_10053fb08(&var_E8, "adcolony");
            sub_10053fb08(&var_118, "");
            r0 = (*(*r20 + 0x10))(r20, &var_E8, &var_118);
            if ((sign_extend_64(var_101) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_118);
            }
            if ((sign_extend_64(var_D1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_E8);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1005403fc;
}

-(void)onAdOpen:(int)arg2 {
    r2 = arg2;
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 == 0x1) goto loc_1005409b8;

loc_100540920:
    if (r2 != 0x0 || *0x1011e4ac8 == 0x0) goto .l1;

loc_100540934:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto .l1;

loc_10054093c:
    r19 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_10053fb08(r29 - 0x28, "adcolony");
            sub_10053fb08(&var_40, "");
            r0 = (*(*r20 + 0x20))(r20, r29 - 0x28, &var_40);
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
    goto loc_100540a48;

loc_100540a48:
    if (r9 == 0x0) {
            (*(*r19 + 0x10))(r19);
            std::__1::__shared_weak_count::__release_weak();
    }
    return;

.l1:
    return;

loc_1005409b8:
    if (*0x1011e4ad8 == 0x0) goto .l1;

loc_1005409c8:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto .l1;

loc_1005409d0:
    r19 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_10053fb08(r29 - 0x28, "adcolony");
            sub_10053fb08(&var_58, "");
            r0 = (*(*r20 + 0x20))(r20, r29 - 0x28, &var_58);
            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_58);
            }
            if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_28);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_100540a48;
}

-(void)onAdLoadFailure:(void *)arg2 forAdFormat:(int)arg3 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r21 != 0x1) {
            if (r21 == 0x0) {
                    if (*0x1011e4ac8 != 0x0) {
                            r0 = std::__1::__shared_weak_count::lock();
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (*0x1011e4ac0 != 0x0) {
                                            sub_10053fb08(&var_48, "adcolony");
                                            r0 = [r19 description];
                                            r0 = [r0 retain];
                                            r0 = objc_retainAutorelease(r0);
                                            r22 = r0;
                                            sub_10053fb08(&var_60, [r0 UTF8String]);
                                            sub_10053fb08(&var_78, "");
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
                    [r20 setInterstitialAd:0x0];
            }
    }
    else {
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r21 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_10053fb08(&var_48, "adcolony");
                                    r0 = [r19 description];
                                    r0 = [r0 retain];
                                    r0 = objc_retainAutorelease(r0);
                                    r22 = r0;
                                    sub_10053fb08(&var_60, [r0 UTF8String]);
                                    sub_10053fb08(&var_90, "");
                                    r0 = (*(*r23 + 0x18))(r23, &var_48, &var_60, &var_90);
                                    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_90);
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
            [r20 setRewardedVideoAd:0x0];
    }
    [r19 release];
    return;
}

-(void)onAdClicked:(int)arg2 {
    r2 = arg2;
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 == 0x1) goto loc_100540e50;

loc_100540db8:
    if (r2 != 0x0 || *0x1011e4ac8 == 0x0) goto .l1;

loc_100540dcc:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto .l1;

loc_100540dd4:
    r19 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_10053fb08(r29 - 0x28, "adcolony");
            sub_10053fb08(&var_40, "");
            r0 = (*(*r20 + 0x38))(r20, r29 - 0x28, &var_40);
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
    goto loc_100540ee0;

loc_100540ee0:
    if (r9 == 0x0) {
            (*(*r19 + 0x10))(r19);
            std::__1::__shared_weak_count::__release_weak();
    }
    return;

.l1:
    return;

loc_100540e50:
    if (*0x1011e4ad8 == 0x0) goto .l1;

loc_100540e60:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto .l1;

loc_100540e68:
    r19 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_10053fb08(r29 - 0x28, "adcolony");
            sub_10053fb08(&var_58, "");
            r0 = (*(*r20 + 0x30))(r20, r29 - 0x28, &var_58);
            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_58);
            }
            if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_28);
            }
    }
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_100540ee0;
}

-(void)onAdClosed:(int)arg2 {
    r2 = arg2;
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 == 0x1) goto loc_100540c0c;

loc_100540b50:
    if (r2 != 0x0) goto .l1;

loc_100540b54:
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_10053fb08(&var_38, "adcolony");
                            sub_10053fb08(&var_50, "");
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
    r8 = &@selector(setInterstitialAd:);
    goto loc_100540cc0;

loc_100540cc0:
    objc_msgSend(r19, *r8);
    return;

.l1:
    return;

loc_100540c0c:
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053fb08(&var_38, "adcolony");
                            sub_10053fb08(&var_68, "");
                            r0 = (*(*r21 + 0x38))(r21, &var_38, &var_68);
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
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r8 = &@selector(setRewardedVideoAd:);
    goto loc_100540cc0;
}

-(void)onRewardedVideoRewardedWithCurrency:(void *)arg2 andAmount:(int)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_10053fb08(&var_38, "adcolony");
                            sub_10053fb08(&var_50, [objc_retainAutorelease(r19) UTF8String]);
                            r0 = (*(*r22 + 0x40))(r22, &var_38, &var_50, r21);
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

-(void *)interstitialAd {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)rewardedVideoAd {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)setRewardedVideoAd:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)rewardedVideoRewardHandler {
    r0 = *(self + 0x20);
    return r0;
}

-(bool)debugLog {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)setRewardedVideoRewardHandler:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setDebugLog:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end