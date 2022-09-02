@implementation IronSourceDelegate

-(void)interstitialDidLoad {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_1005443d8(&var_28, "ironsource");
                            sub_1005443d8(&var_40, "");
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

-(void)interstitialDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_1005443d8(&var_38, "ironsource");
                            r0 = [r19 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_1005443d8(&var_50, [r0 UTF8String]);
                            sub_1005443d8(&var_68, "");
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

-(void)interstitialDidOpen {
    return;
}

-(void)interstitialDidClose {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_1005443d8(&var_28, "ironsource");
                            sub_1005443d8(&var_40, "");
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

-(void)interstitialDidShow {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_1005443d8(&var_28, "ironsource");
                            sub_1005443d8(&var_40, "");
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

-(void)interstitialDidFailToShowWithError:(void *)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 description];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r0 UTF8String];
    loc_10098a5e8(0x0);
    [r20 release];
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_1005443d8(&var_48, "ironsource");
                            r0 = [r19 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_1005443d8(&var_60, objc_msgSend(r0, r22));
                            sub_1005443d8(&var_78, "");
                            r0 = (*(*r23 + 0x28))(r23, &var_48, &var_60, &var_78);
                            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_78);
                            }
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

-(void)didClickInterstitial {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_1005443d8(&var_28, "ironsource");
                            sub_1005443d8(&var_40, "");
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

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)0x1011d8a70 == 0x1) {
            *(int8_t *)0x1011d8a70 = 0x0;
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r19 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_1005443d8(&var_28, "ironsource");
                                    sub_1005443d8(&var_40, "");
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
                            if (*(int8_t *)0x1011d8a70 == 0x0) {
                                    (*(*r19 + 0x10))(r19);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
    }
    return;
}

-(void)didReceiveRewardForPlacement:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_1005443d8(&var_48, "ironsource");
                            r0 = [r19 rewardName];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_1005443d8(&var_60, [r0 UTF8String]);
                            r0 = [r19 rewardAmount];
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

-(void)rewardedVideoDidOpen {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_1005443d8(&var_28, "ironsource");
                            sub_1005443d8(&var_40, "");
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

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_1005443d8(&var_38, "ironsource");
                            r0 = [r19 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r21 = r0;
                            sub_1005443d8(&var_50, [r0 UTF8String]);
                            sub_1005443d8(&var_68, "");
                            r0 = (*(*r22 + 0x28))(r22, &var_38, &var_50, &var_68);
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

-(void)rewardedVideoDidClose {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r19 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_1005443d8(&var_28, "ironsource");
                            sub_1005443d8(&var_40, "");
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

-(void)rewardedVideoDidStart {
    return;
}

-(void)rewardedVideoDidEnd {
    return;
}

-(void)didClickRewardedVideo:(void *)arg2 {
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
                            sub_1005443d8(&var_38, "ironsource");
                            sub_1005443d8(&var_50, "");
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

@end