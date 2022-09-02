@implementation TapjoyiOS

-(void)setupConnectcallbacks {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(tjcConnectSuccess:) name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(tjcConnectFail:) name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    return;
}

-(void)tjcConnectFail:(void *)arg2 {
    NSLog(@"Tapjoy connect Failed");
    return;
}

-(void)tjcConnectSuccess:(void *)arg2 {
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    NSLog(@"Tapjoy connect Succeeded");
    if (*(int8_t *)0x1011e4b20 != 0x0) {
            if (sign_extend_64(*(int8_t *)0x1011e4b1f) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = 0x1011e4b08;
                    }
                    else {
                            r2 = *0x1011e4b08;
                    }
            }
            r0 = [NSString stringWithUTF8String:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r19 loadInterstitial:r21];
            [r21 release];
            *(int8_t *)0x1011e4b01 = 0x0;
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            if (*(int8_t *)0x1011e4b20 != 0x0) {
                    if (sign_extend_64(*(int8_t *)0x1011e4b3f) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r2 = 0x1011e4b28;
                            }
                            else {
                                    r2 = *0x1011e4b28;
                            }
                    }
                    r20 = [[NSString stringWithUTF8String:r2] retain];
                    [r19 loadRewardedVideo:r20];
                    [r20 release];
                    *(int8_t *)0x1011e4b20 = 0x0;
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            }
    }
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
    if (([Tapjoy isConnected] & 0x1) == 0x0) goto loc_10051820c;

loc_1005181b0:
    [r20 retain];
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_100518240;

loc_1005181fc:
    if (r0 == 0x0) goto loc_10051824c;

loc_100518200:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100518248;

loc_100518248:
    (r8)();
    goto loc_10051824c;

loc_10051824c:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100518240:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100518248;

loc_10051820c:
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    *(int8_t *)0x1011e4b01 = 0x1;
    goto loc_10051824c;
}

-(bool)showInterstitial {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 == 0x0) goto loc_10051837c;

loc_1005182f4:
    if ([r0 isContentReady] == 0x0) goto loc_100518368;

loc_100518304:
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_100518394;

loc_100518344:
    if (r0 == 0x0) goto loc_1005183a0;

loc_100518348:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051839c;

loc_10051839c:
    (r8)();
    goto loc_1005183a0;

loc_1005183a0:
    r0 = 0x1;
    goto loc_1005183a4;

loc_1005183a4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100518394:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051839c;

loc_100518368:
    r0 = 0x0;
    goto loc_10051837c;

loc_10051837c:
    loc_10098a5e8(r0);
    r0 = 0x0;
    goto loc_1005183a4;
}

-(bool)loadRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([Tapjoy isConnected] & 0x1) == 0x0) goto loc_1005184d8;

loc_10051844c:
    if (*(r20 + 0x10) == 0x0) {
            r0 = [TJPlacement placementWithName:r19 delegate:r20];
            r0 = [r0 retain];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
    }
    [r20 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10051850c;

loc_1005184c8:
    if (r0 == 0x0) goto loc_100518518;

loc_1005184cc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100518514;

loc_100518514:
    (r8)();
    goto loc_100518518;

loc_100518518:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10051850c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100518514;

loc_1005184d8:
    [objc_retainAutorelease(r19) UTF8String];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    *(int8_t *)0x1011e4b20 = 0x1;
    goto loc_100518518;
}

-(bool)showRewardedVideo {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 == 0x0) goto loc_100518648;

loc_1005185c0:
    if ([r0 isContentReady] == 0x0) goto loc_100518634;

loc_1005185d0:
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_100518660;

loc_100518610:
    if (r0 == 0x0) goto loc_10051866c;

loc_100518614:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100518668;

loc_100518668:
    (r8)();
    goto loc_10051866c;

loc_10051866c:
    r0 = 0x1;
    goto loc_100518670;

loc_100518670:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100518660:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100518668;

loc_100518634:
    r0 = 0x0;
    goto loc_100518648;

loc_100518648:
    loc_10098a5e8(r0);
    r0 = 0x0;
    goto loc_100518670;
}

-(void)requestDidSucceed:(void *)arg2 {
    return;
}

-(void)contentIsReady:(void *)arg2 {
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
    if (*(r20 + 0x8) == r0) goto loc_100518b54;

loc_100518ab4:
    if (*(r20 + 0x10) != r19 || *0x1011e4ad8 == 0x0) goto loc_100518c00;

loc_100518ad0:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100518c00;

loc_100518ad8:
    r20 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_100517e88(&var_38, "tapjoy");
            sub_100517e88(&var_68, "");
            r0 = (*(*r21 + 0x10))(r21, &var_38, &var_68);
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
    goto loc_100518be4;

loc_100518be4:
    if (r9 == 0x0) {
            (*(*r20 + 0x10))(r20);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_100518c00;

loc_100518c00:
    [r19 release];
    return;

loc_100518b54:
    if (*0x1011e4ac8 == 0x0) goto loc_100518c00;

loc_100518b64:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100518c00;

loc_100518b6c:
    r20 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_100517e88(&var_38, "tapjoy");
            sub_100517e88(&var_50, "");
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
    goto loc_100518be4;
}

-(void)contentDidAppear:(void *)arg2 {
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
    if (*(r20 + 0x8) == r0) goto loc_100518db0;

loc_100518d10:
    if (*(r20 + 0x10) != r19 || *0x1011e4ad8 == 0x0) goto loc_100518e5c;

loc_100518d2c:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100518e5c;

loc_100518d34:
    r20 = r0;
    if (*0x1011e4ad0 != 0x0) {
            sub_100517e88(&var_38, "tapjoy");
            sub_100517e88(&var_68, "");
            r0 = (*(*r21 + 0x20))(r21, &var_38, &var_68);
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
    goto loc_100518e40;

loc_100518e40:
    if (r9 == 0x0) {
            (*(*r20 + 0x10))(r20);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_100518e5c;

loc_100518e5c:
    [r19 release];
    return;

loc_100518db0:
    if (*0x1011e4ac8 == 0x0) goto loc_100518e5c;

loc_100518dc0:
    r0 = std::__1::__shared_weak_count::lock();
    if (r0 == 0x0) goto loc_100518e5c;

loc_100518dc8:
    r20 = r0;
    if (*0x1011e4ac0 != 0x0) {
            sub_100517e88(&var_38, "tapjoy");
            sub_100517e88(&var_50, "");
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
    goto loc_100518e40;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = r22 + 0x8;
    r8 = *r24;
    if (r8 == r19) goto loc_100518830;

loc_10051871c:
    r22 = r22 + 0x10;
    r8 = *r22;
    if (r8 != r19) goto loc_100518940;

loc_100518728:
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r21 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100517e88(&var_48, "tapjoy");
                            r0 = [r20 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r23 = r0;
                            sub_100517e88(&var_60, [r0 UTF8String]);
                            sub_100517e88(&var_90, "");
                            r0 = (*(*r24 + 0x18))(r24, &var_48, &var_60, &var_90);
                            if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_90);
                            }
                            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_60);
                            }
                            [r23 release];
                            r8 = sign_extend_64(var_31);
                            if ((r8 & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_48);
                            }
                    }
                    do {
                            asm { ldaxr      x8, [x9] };
                            asm { stlxr      w11, x10, [x9] };
                    } while (r11 != 0x0);
                    if (r8 == 0x0) {
                            (*(*r21 + 0x10))(r21);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r24 = r22;
    goto loc_100518934;

loc_100518934:
    r0 = *r24;
    *r22 = 0x0;
    [r0 release];
    goto loc_100518940;

loc_100518940:
    [r20 release];
    [r19 release];
    return;

loc_100518830:
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r21 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_100517e88(&var_48, "tapjoy");
                            r0 = [r20 description];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r23 = r0;
                            sub_100517e88(&var_60, [r0 UTF8String]);
                            sub_100517e88(&var_78, "");
                            r0 = (*(*r22 + 0x18))(r22, &var_48, &var_60, &var_78);
                            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_78);
                            }
                            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_60);
                            }
                            [r23 release];
                            r8 = sign_extend_64(var_31);
                            if ((r8 & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_48);
                            }
                    }
                    do {
                            asm { ldaxr      x8, [x9] };
                            asm { stlxr      w11, x10, [x9] };
                    } while (r11 != 0x0);
                    if (r8 == 0x0) {
                            (*(*r21 + 0x10))(r21);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r22 = r24;
    goto loc_100518934;
}

-(void)contentDidDisappear:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = r21 + 0x8;
    r8 = *r22;
    if (r8 == r0) goto loc_100519030;

loc_100518f70:
    r21 = r21 + 0x10;
    r8 = *r21;
    if (r8 != r19) goto loc_1005190ec;

loc_100518f7c:
    if (*0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_100517e88(&var_38, "tapjoy");
                            sub_100517e88(&var_68, "");
                            r0 = (*(*r22 + 0x38))(r22, &var_38, &var_68);
                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_68);
                            }
                            r8 = sign_extend_64(var_21);
                            if ((r8 & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_38);
                            }
                    }
                    do {
                            asm { ldaxr      x8, [x9] };
                            asm { stlxr      w11, x10, [x9] };
                    } while (r11 != 0x0);
                    if (r8 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r22 = r21;
    goto loc_1005190e0;

loc_1005190e0:
    r0 = *r22;
    *r21 = 0x0;
    [r0 release];
    goto loc_1005190ec;

loc_1005190ec:
    [r19 release];
    return;

loc_100519030:
    if (*0x1011e4ac8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r20 = r0;
                    if (*0x1011e4ac0 != 0x0) {
                            sub_100517e88(&var_38, "tapjoy");
                            sub_100517e88(&var_50, "");
                            r0 = (*(*r21 + 0x30))(r21, &var_38, &var_50);
                            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_50);
                            }
                            r8 = sign_extend_64(var_21);
                            if ((r8 & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_38);
                            }
                    }
                    do {
                            asm { ldaxr      x8, [x9] };
                            asm { stlxr      w11, x10, [x9] };
                    } while (r11 != 0x0);
                    if (r8 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r21 = r22;
    goto loc_1005190e0;
}

-(void)applicationWillEnterForeground:(void *)arg2 {
    [Tapjoy startSession];
    return;
}

-(void *)interstitialAd {
    r0 = *(self + 0x8);
    return r0;
}

-(void)applicationDidEnterBackground:(void *)arg2 {
    [Tapjoy endSession];
    return;
}

-(void)placement:(void *)arg2 didRequestReward:(void *)arg3 itemId:(void *)arg4 quantity:(int)arg5 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg5;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = *(self + 0x10);
    [r22 release];
    if (r20 == r22) {
            if (*0x1011e4ad8 != 0x0) {
                    r0 = std::__1::__shared_weak_count::lock();
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (*0x1011e4ad0 != 0x0) {
                                    sub_100517e88(&var_38, "tapjoy");
                                    sub_100517e88(&var_50, [objc_retainAutorelease(r19) UTF8String]);
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
    }
    [r19 release];
    return;
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