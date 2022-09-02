@implementation AppDelegate

-(void *)getResourcePacksInfo {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sub_1005d9684(@"resourcePacksConfig.json", 0x3, 0x0, 0x0);
    if (r0 != 0x0) {
            r19 = [NSJSONSerialization JSONObjectWithData:r0 options:0x0 error:&var_18];
            r0 = 0x0;
            if (var_18 == 0x0) {
                    r0 = [NSDictionary class];
                    r0 = sub_1005d8554(r19, r0, 0x0);
            }
    }
    return r0;
}

-(void *)getDesiredPack {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sub_1005cb7c8(0x1) - 0x1;
    if (r8 <= 0x6) {
            r0 = (0x100059e0c + *(int8_t *)(0x100b9e168 + r8) * 0x4)(@"iPhone6Plus");
    }
    else {
            r0 = @"SD";
    }
    return r0;
}

-(void *)getDeviceCategoryConfig {
    r0 = sub_1005d8554(sub_1005d980c(@"deviceCategoriesConfig.plist", 0x3, 0x0, 0x0), [NSDictionary class], 0x0);
    return r0;
}

-(unsigned long long)application:(void *)arg2 supportedInterfaceOrientationsForWindow:(void *)arg3 {
    return 0x1a;
}

-(void *)getDeviceCategory {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = sub_1005cb7c8(0x1);
    r9 = @"";
    if (r0 > 0x7) {
            if (!CPU_FLAGS & A) {
                    r9 = @"iPad";
            }
            else {
                    r9 = @"";
            }
    }
    if (r0 < 0x5) {
            if (!CPU_FLAGS & B) {
                    r0 = r9;
            }
            else {
                    r0 = @"iPhone";
            }
    }
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    return 0x18;
}

-(bool)shouldAutorotateToInterfaceOrientation:(long long)arg2 {
    r0 = self;
    if (arg2 < 0x5) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)resumeDirector {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = [*(self + 0x10) visibleViewController];
    r0 = *(self + 0x18);
    if (r8 == r0) {
            [r0 resume];
    }
    return;
}

-(void)applicationWillResignActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [[KeyboardInput sharedKeyboardInput] hideKeyboardInput];
    r8 = [*(self + 0x10) visibleViewController];
    r0 = *(self + 0x18);
    if (r8 == r0) {
            [r0 pause];
    }
    return;
}

-(void)applicationDidReceiveMemoryWarning:(void *)arg2 {
    [[CCDirector sharedDirector] purgeCachedData];
    return;
}

-(void)applicationDidBecomeActive:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_100052c70([[Application sharedApplication] serverConnection]);
    [[[[Application sharedApplication] userData] info] setDeathsThisSession:0x0];
    [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(resumeDirector) selector:0x0 userInfo:0x0 repeats:r6];
    if (*(int32_t *)(r19 + 0x20) != 0x0) {
            sub_100012ce4(0x0, 0x0);
    }
    [[MCGoliathHandler sharedMCGoliathHandler] clientInit];
    *(int32_t *)(r19 + 0x20) = *(int32_t *)(r19 + 0x20) + 0x1;
    sub_1005cc7bc();
    return;
}

-(void)applicationDidEnterBackground:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100052c14([[Application sharedApplication] serverConnection]);
    r8 = [*(self + 0x10) visibleViewController];
    r0 = *(self + 0x18);
    if (r8 == r0) {
            [r0 stopAnimation];
    }
    [[MCGoliathHandler sharedMCGoliathHandler] session];
    sub_100012ce4(0x1, 0x0);
    return;
}

-(void)applicationWillEnterForeground:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100083570([[Application sharedApplication] adsManager]);
    r8 = [*(self + 0x10) visibleViewController];
    r0 = *(self + 0x18);
    if (r8 == r0) {
            [r0 startAnimation];
    }
    [[[Application sharedApplication] userData] generateNewSessionToken];
    sub_1005cc7bc();
    return;
}

-(void)applicationWillTerminate:(void *)arg2 {
    [[CCDirector sharedDirector] end];
    return;
}

-(void)applicationSignificantTimeChange:(void *)arg2 {
    [[CCDirector sharedDirector] setNextDeltaTimeZero:0x1];
    return;
}

-(bool)application:(void *)arg2 didFinishLaunchingWithOptions:(void *)arg3 {
    r31 = r31 - 0xd0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    *(int8_t *)0x1011e4f18 = 0x1;
    if (sub_1005cb7c8(0x1) == 0x4 && [r19 statusBarOrientation] >= 0x5) {
            [r19 setStatusBarOrientation:0x3];
    }
    r22 = objc_alloc();
    [[UIScreen mainScreen] bounds];
    *(r20 + 0x8) = [r22 initWithFrame:r2];
    *(r20 + 0x18) = [CCDirector sharedDirector];
    [[CCConfiguration sharedConfiguration] setUseNewTextureLoadingCode:0x1];
    [[CCConfiguration sharedConfiguration] setUseNewTTFRenderingCode:0x1];
    r8 = 0x100b9e000;
    [*(r20 + 0x18) setAnimationInterval:0x1];
    r0 = sub_1005cb7c8(0x1);
    if (r0 == 0x7) {
            r8 = 0x100b9e000;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    r9 = r0 - 0x2;
    if (r9 < 0x4) {
            if (CPU_FLAGS & B) {
                    r9 = 0x1;
            }
    }
    r23 = &@class(MCConfigurationData);
    r22 = r8 | r9;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r23 = 0x0;
            }
            else {
                    r23 = 0x2;
            }
    }
    [*(r20 + 0x8) bounds];
    r0 = [CCGLView viewWithFrame:**_kEAGLColorFormatRGB565 pixelFormat:0x0 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:r22 multiSampling:r23 numberOfSamples:var_C0];
    [r0 setMultipleTouchEnabled:0x1];
    [*(r20 + 0x18) setView:r0];
    [*(r20 + 0x18) setProjection:0x1];
    [CCTexture2D setDefaultAlphaPixelFormat:0x0];
    [*(r20 + 0x18) setDelegate:r20];
    [*(r20 + 0x18) setWantsFullScreenLayout:0x1];
    [*(r20 + 0x18) enableRetinaDisplay:0x1];
    r0 = objc_alloc();
    r0 = [r0 initWithRootViewController:*(r20 + 0x18)];
    *(r20 + 0x10) = r0;
    [r0 setNavigationBarHidden:0x1];
    [*(int128_t *)(r20 + 0x8) setRootViewController:*(int128_t *)(r20 + 0x10)];
    [*(r20 + 0x8) makeKeyAndVisible];
    r8 = 0x101137000;
    objc_msgSend(*(r20 + 0x18), *(r8 + 0x4b0));
    asm { fcvtzs     w8, d0 };
    *(int32_t *)0x1011dec00 = r8;
    objc_msgSend(*(r20 + 0x18), r21);
    asm { fcvtzs     w8, d1 };
    *(int32_t *)(r22 + 0x4) = r8;
    r0 = [CCFileUtils sharedFileUtils];
    [r0 setiPadRetinaDisplaySuffix:@"-ipadhd"];
    [r0 setiPadSuffix:@"-ipad"];
    [r0 setiPhoneRetinaDisplaySuffix:@"-hd"];
    [r0 setSearchPath:[NSArray arrayWithObjects:[NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1) objectAtIndex:0x0]]];
    sub_1005cb618();
    sub_1009d0950(r29 - 0x50);
    sub_100059ca0(&var_98, "resourcePacksConfig.json");
    r0 = sub_10042b6e0(&var_98, r29 - 0x50);
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    sub_1009d0ee4(r29 - 0x50);
    r0 = sub_10097dce0(&var_98);
    sub_100059ca0(&var_78, [[r20 getDesiredPack] UTF8String]);
    r0 = sub_10042cc24(&stack[-112], &var_78);
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    sub_1009ca77c(&stack[-112]);
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    sub_1009d0950(&var_98);
    sub_100059ca0(&var_78, "deviceCategoriesConfig.plist");
    r0 = sub_10042b6e0(&var_78, &var_98);
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    sub_1009917fc(&var_98);
    sub_100059ca0(&var_78, [[r20 getDeviceCategory] UTF8String]);
    r0 = sub_10042cdc8(&stack[-112], &var_78);
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    sub_1009ca77c(&stack[-112]);
    sub_1005f0088(time(0x0));
    [r19 setIdleTimerDisabled:0x1];
    sub_100011420();
    sub_1000114a0();
    r0 = operator new();
    r19 = r0;
    *(r0 + 0x8) = 0x0;
    *(r0 + 0x10) = 0x0;
    *r0 = 0x100e66878;
    *(int128_t *)(r0 + 0x18) = q0;
    *(int128_t *)(r19 + 0x28) = q0;
    *(int128_t *)(r19 + 0x38) = q0;
    *(int128_t *)(r19 + 0x48) = q0;
    *(int128_t *)(r19 + 0x58) = q0;
    *(int128_t *)(r19 + 0x68) = q0;
    *(int128_t *)(r19 + 0x78) = q0;
    *(int128_t *)(r19 + 0x88) = q0;
    *(int128_t *)(r19 + 0x98) = q0;
    *(int128_t *)(r19 + 0xa8) = q0;
    *(int128_t *)(r19 + 0xb8) = q0;
    *(int128_t *)(r19 + 0xc8) = q0;
    *(int128_t *)(r19 + 0xd8) = q0;
    *(int128_t *)(r19 + 0xe8) = q0;
    *(int128_t *)(r19 + 0xf8) = q0;
    *(int128_t *)(r0 + 0x108) = q0;
    *(int128_t *)(r0 + 0x118) = q0;
    *(int128_t *)(r0 + 0x128) = q0;
    *(int128_t *)(r0 + 0x138) = q0;
    sub_1003d8f2c(r0 + 0x18);
    r8 = 0x100e64238;
    *(r19 + 0x18) = r8;
    var_A0 = r19;
    do {
            asm { ldxr       x8, [x22] };
            r8 = r8 + 0x1;
            asm { stxr       w9, x8, [x22] };
    } while (r9 != 0x0);
    sub_1003d934c(&var_A8);
    r20 = var_A0;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    [CDAudioManager configure:0x0];
    sub_100094bcc();
    [[Application sharedApplication] start];
    do {
            asm { ldaxr      x8, [x22] };
            asm { stlxr      w10, x9, [x22] };
    } while (r10 != 0x0);
    if (&@selector(menu) == 0x0) {
            (*(*r19 + 0x10))(r19);
            std::__1::__shared_weak_count::__release_weak();
    }
    sub_1009d0b44(&var_98);
    sub_1009d0b44(r29 - 0x50);
    return 0x1;
}

-(void)dealloc {
    [[CCDirector sharedDirector] end];
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(bool)application:(void *)arg2 handleOpenURL:(void *)arg3 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg3 scheme];
    if (r0 != 0x0) {
            [r0 isEqualToString:r2];
    }
    return 0x0;
}

-(bool)application:(void *)arg2 openURL:(void *)arg3 sourceApplication:(void *)arg4 annotation:(void *)arg5 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg3 scheme];
    if (r0 != 0x0) {
            r19 = r0;
            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = [r19 rangeOfString:@"twitter"];
                    if (r0 != 0x7fffffffffffffff) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(void)application:(void *)arg2 didRegisterUserNotificationSettings:(void *)arg3 {
    return;
}

-(void)application:(void *)arg2 didReceiveLocalNotification:(void *)arg3 {
    r3 = arg3;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r3 != 0x0) {
            r0 = [r3 userInfo];
            if (r0 != 0x0) {
                    [r0 count];
            }
    }
    return;
}

-(void *)window {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setWindow:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)navController {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)director {
    r0 = *(self + 0x18);
    return r0;
}

-(unsigned int)numBecameActive {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(unsigned int)interstitialBackgroundMinGames {
    r0 = *(int32_t *)(self + 0x28);
    return r0;
}

@end