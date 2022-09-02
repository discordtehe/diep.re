@implementation Application

+(void *)sharedApplication {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011cd058;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011cd058 = r0;
    }
    return r0;
}

+(bool)isApplicationInitialized {
    r0 = self;
    if (*qword_1011cd058 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)releaseSharedApplication {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011cd058 != 0x0) {
            [*0x1011cd058 release];
            *0x1011cd058 = 0x0;
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initializeCriticalServices];
            r19->mRegisteredInputDelegates = [[NSMutableSet setWithCapacity:0x5] retain];
    }
    r0 = r19;
    return r0;
}

-(void)update:(double)arg2 {
    [[&var_10 super] update:r2];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self unscheduleUpdate];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentUserData));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_stateMachine));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mRegisteredInputDelegates));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_localizationManager));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r20 = *(r19 + r21);
    if (r20 != 0x0) {
            sub_100030a4c(r20 + 0x18);
            sub_100030afc(r20);
            operator delete(r20);
            *(r19 + r21) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_animSequencer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_userAcquisitionManager));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_gdprManager));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)start {
    r0 = self;
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mStarted));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            r19 = r0;
            sub_100012ce4(0x1, 0x0);
            [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(delayedStartCallback) selector:0x0 userInfo:0x0 repeats:r6];
            sub_10002e8b0(&var_38, "isFirstSession");
            sub_10002e8b0(&var_50, "");
            r0 = sub_100979dfc(&var_38, &var_50);
            r0 = loc_1009caf40(r0);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_totalSessions));
            *(int32_t *)(r19 + r21) = r0;
            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_50);
            }
            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_38);
            }
            *(int32_t *)(r19 + r21) = sign_extend_64(*(int32_t *)(r19 + r21)) + 0x1;
            sub_10002e8b0(&var_38, "isFirstSession");
            sub_10002e8b0(&var_50, "");
            r0 = sub_100979d94(&var_60, &var_38, &var_50);
            *(int32_t *)(r19 + r21) = r0;
            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_50);
            }
            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_38);
            }
            sub_1009ca77c(&var_60);
            *(int8_t *)(r19 + r20) = 0x1;
    }
    return;
}

-(void)initializeCriticalServices {
    sub_10002aaa0(operator new(), sub_10002f1f4());
    sub_100030f64((int64_t *)&self->_environmentSelector, r20);
    r0 = operator new();
    sub_100051738(r0);
    sub_100030f90((int64_t *)&self->_connection, r20);
    sub_100030f90(&var_18, 0x0);
    return;
}

-(void)delayedStartCallback {
    r0 = [CCScene node];
    [r0 addChild:self];
    [[CCDirector sharedDirector] runWithScene:r0];
    r0 = [CCNode node];
    self->mRootNode = r0;
    [self addChild:r0];
    [self setupNetworkEnvironment];
    r0 = operator new();
    sub_100091094(r0);
    self->_configuration = r20;
    r20 = [ConfigurationDownloader sharedConfigurationDownloader];
    [r20 setChecksums:[self checksumsForDevice]];
    [[ConfigurationDelegate new] setCryptoPassword:@"3l6r4nk4b0n6"];
    [r20 loadConfiguration:0x0];
    sub_1005cc5e0(@"diep.io");
    sub_1005cc64c();
    [[StoreView sharedStoreView] setViewController:[[[UIApplication sharedApplication] delegate] navController]];
    [self setTouchEnabled:0x1];
    [self initializeOtherServices];
    sub_100012ce4(0x0, 0x0);
    [[[Application sharedApplication] stateMachine] goToApplicationState:0x1];
    [self scheduleUpdate];
    return;
}

-(void)checkWSDataLoop {
    [[[CCDirector sharedDirector] scheduler] scheduleBlockForKey:@"NativeGameUpdate" target:self interval:0xfffffffffffffffe repeat:0x0 delay:0x100e648e0 paused:r7 block:var_10];
    return;
}

-(void)initializeOtherServices {
    r31 = r31 - 0xf0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r19->_stateMachine = [[StateMachine stateMachine] retain];
    r19->_currentUserData = [[UserData userData] retain];
    *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_gdprManager))) = [[GDPRManager gdprManager] retain];
    r0 = operator new();
    sub_1000374dc(r0);
    r20 = (int64_t *)&r19->_mcLibraHandler;
    sub_10003109c(r20, r21);
    r0 = operator new();
    sub_100083354(r0);
    sub_1000310c8((int64_t *)&r19->_adsManager, r21);
    r0 = operator new();
    sub_10003b0d4(r0);
    sub_1000310f4((int64_t *)&r19->_alarmManager, r21);
    [*(r19 + r22) initialize];
    r0 = operator new();
    var_30 = r29 - 0x48;
    var_50 = r29 - 0x68;
    var_70 = &var_88;
    var_90 = &var_A8;
    r22 = &var_C8;
    var_B0 = r22;
    sub_100031408(r0, 0x1, 0x2, 0x0, 0x0, r29 - 0x48, r29 - 0x68, &var_88, &var_A8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tcpInterface));
    r0 = *(r19 + r8);
    *(r19 + r8) = r21;
    if (r0 != 0x0) {
            (*(*r0 + 0x8))();
    }
    r0 = var_B0;
    if (r22 == r0) goto loc_10002f450;

loc_10002f440:
    if (r0 == 0x0) goto loc_10002f45c;

loc_10002f444:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10002f458;

loc_10002f458:
    (r8)();
    goto loc_10002f45c;

loc_10002f45c:
    r0 = var_90;
    if (&var_A8 == r0) goto loc_10002f47c;

loc_10002f46c:
    if (r0 == 0x0) goto loc_10002f488;

loc_10002f470:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10002f484;

loc_10002f484:
    (r8)();
    goto loc_10002f488;

loc_10002f488:
    r0 = var_70;
    if (&var_88 == r0) goto loc_10002f4a8;

loc_10002f498:
    if (r0 == 0x0) goto loc_10002f4b4;

loc_10002f49c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10002f4b0;

loc_10002f4b0:
    (r8)();
    goto loc_10002f4b4;

loc_10002f4b4:
    r0 = var_50;
    if (r29 - 0x68 == r0) goto loc_10002f4d4;

loc_10002f4c4:
    if (r0 == 0x0) goto loc_10002f4e0;

loc_10002f4c8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10002f4dc;

loc_10002f4dc:
    (r8)();
    goto loc_10002f4e0;

loc_10002f4e0:
    r0 = var_30;
    if (r29 - 0x48 == r0) goto loc_10002f500;

loc_10002f4f0:
    if (r0 == 0x0) goto loc_10002f50c;

loc_10002f4f4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10002f508;

loc_10002f508:
    (r8)();
    goto loc_10002f50c;

loc_10002f50c:
    var_28 = **___stack_chk_guard;
    sub_100037538(*r20);
    [[[Application sharedApplication] userAcquisitionManager] start];
    [r19 postInit];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10002f500:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10002f508;

loc_10002f4d4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10002f4dc;

loc_10002f4a8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10002f4b0;

loc_10002f47c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10002f484;

loc_10002f450:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10002f458;
}

-(void)uncheckWSDataLoop {
    [[[CCDirector sharedDirector] scheduler] unscheduleBlockForKey:@"NativeGameUpdate" target:self];
    return;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)getAppVersion {
    r0 = sub_10002e8b0(r8, [[[[NSBundle mainBundle] infoDictionary] objectForKey:@"AppReleaseVersion"] UTF8String]);
    return r0;
}

-(void *)checksumsForDevice {
    [[[UIApplication sharedApplication] delegate] getDesiredPack];
    r20 = [NSMutableArray array];
    [r20 addObject:[NSString stringWithFormat:@"checksums/_checksums%@.plist"]];
    r0 = [NSArray arrayWithArray:r20];
    return r0;
}

-(void)postInit {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[Application sharedApplication] serverConnection];
    sub_10002e8b0(&var_70, "event_version_mismatch");
    var_50 = r19;
    r0 = sub_10005173c(r22, &var_70, &var_58);
    r0 = &var_58;
    if (&var_58 == r0) goto loc_10002f870;

loc_10002f860:
    if (r0 == 0x0) goto loc_10002f87c;

loc_10002f864:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10002f878;

loc_10002f878:
    (r8)();
    goto loc_10002f87c;

loc_10002f87c:
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    sub_10004e9a0();
    sub_10002e8b0(&var_88, "lastChosenGameMode");
    sub_10002e8b0(&var_A0, "");
    r0 = sub_100979dfc(&var_88, &var_A0);
    sub_1009cb0b8(r0);
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    r8 = var_41;
    r10 = var_50;
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 == 0x0) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    r0 = sub_100089a5c(0x1011e2cb8, &var_58);
    sub_10005211c([[Application sharedApplication] serverConnection]);
    [r19 checkWSDataLoop];
    [[MCGoliathHandler sharedMCGoliathHandler] clientInit];
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10002f870:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10002f878;
}

-(void)configurationLoaded {
    [[NSNotificationCenter defaultCenter] postNotificationName:*0x1011a8550 object:0x0];
    sub_1000910b4();
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ValueMapMergedNotification" object:0x0];
    return;
}

-(void)fileDownloadComplete:(void *)arg2 {
    return;
}

-(int)parseSemVerStringToInt:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r8 = *(int8_t *)(r2 + 0x17);
    r10 = *(int128_t *)r2;
    r11 = *(int128_t *)(r2 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r20 = r2;
            }
            else {
                    r20 = r10;
            }
    }
    if (CPU_FLAGS & L) {
            if (!CPU_FLAGS & L) {
                    r23 = r8;
            }
            else {
                    r23 = r11;
            }
    }
    r22 = r20 + r23;
    if (r23 < 0x1) goto loc_10002fb3c;

loc_10002fad4:
    r2 = r23;
    r0 = r20;
    goto loc_10002fadc;

loc_10002fadc:
    r0 = memchr(r0, 0x2e, r2);
    if (r0 == 0x0) goto loc_10002fb04;

loc_10002fae8:
    if (*(int8_t *)r0 == 0x2e) goto loc_10002fb08;

loc_10002faf4:
    r0 = r0 + 0x1;
    r2 = r22 - r0;
    if (r2 > 0x0) goto loc_10002fadc;

loc_10002fb04:
    r0 = r22;
    goto loc_10002fb08;

loc_10002fb08:
    if (r0 != r22) {
            asm { csinv      x21, x8, xzr, ne };
    }
    if (r23 < 0x1) goto loc_10002fb40;

loc_10002fb1c:
    if (r23 == 0x0) goto loc_10002fb40;

loc_10002fb20:
    r8 = *(int8_t *)(0xffffffffffffffff + r20 + r23);
    r23 = r23 - 0x1;
    if (r8 != 0x2e) goto loc_10002fb1c;

loc_10002fb34:
    r8 = r20 + r23;
    goto loc_10002fb44;

loc_10002fb44:
    if (r8 != r22) {
            asm { csinv      x22, x9, xzr, ne };
    }
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r20 = std::__1::stoi();
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::stoi();
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r19 = std::__1::stoi();
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    r8 = 0x3e8;
    asm { madd       w8, w21, w8, w9 };
    r0 = r8 + r19;
    return r0;

loc_10002fb40:
    r8 = r22;
    goto loc_10002fb44;

loc_10002fb3c:
    r21 = 0xffffffffffffffff;
    goto loc_10002fb40;
}

-(void)showExitConfirmation {
    r0 = objc_alloc();
    r0 = [r0 initWithTitle:@"" message:@"Exit the game?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes"];
    r0 = [r0 autorelease];
    [r0 setTag:0x72a4];
    [r0 show];
    return;
}

-(void)setupNetworkEnvironment {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ((sub_10002ae70([[Application sharedApplication] environmentSelector]) & 0x1) == 0x0) {
            sub_10002afc4([[Application sharedApplication] environmentSelector]);
    }
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    [arg2 tag];
    return;
}

-(void)alertView:(void *)arg2 didDismissWithButtonIndex:(long long)arg3 {
    [arg2 tag];
    return;
}

-(void)registerInputDelegate:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0->mRegisteredInputDelegates addObject:r2];
    }
    return;
}

-(void)removeInputDelegate:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0->mRegisteredInputDelegates removeObject:r2];
    }
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    [self ccTouchesBegan:[NSSet setWithObjects:arg2] withEvent:arg3];
    return 0x1;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    [self ccTouchesMoved:[NSSet setWithObjects:arg2] withEvent:arg3];
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    [self ccTouchesEnded:[NSSet setWithObjects:arg2] withEvent:arg3];
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    [self ccTouchesCancelled:[NSSet setWithObjects:arg2] withEvent:arg3];
    return;
}

-(void)ccTouchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = arg3;
    r20 = arg2;
    var_110 = q0;
    r21 = self->mRegisteredInputDelegates;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r27 * 0x8) touchesBegan:r2 withEvent:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)ccTouchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = arg3;
    r20 = arg2;
    var_110 = q0;
    r21 = self->mRegisteredInputDelegates;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r27 * 0x8) touchesMoved:r2 withEvent:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)ccTouchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = arg3;
    r20 = arg2;
    var_110 = q0;
    r21 = self->mRegisteredInputDelegates;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r27 * 0x8) touchesEnded:r2 withEvent:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)stateMachine {
    r0 = self->_stateMachine;
    return r0;
}

-(void)ccTouchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = arg3;
    r20 = arg2;
    var_110 = q0;
    r21 = self->mRegisteredInputDelegates;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r27 * 0x8) touchesCancelled:r2 withEvent:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)userData {
    r0 = self->_currentUserData;
    return r0;
}

-(struct ConfigurationModel *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(struct AdsManager *)adsManager {
    r0 = self->_adsManager;
    return r0;
}

-(struct MCLibraHandler *)mcLibraHandler {
    r0 = self->_mcLibraHandler;
    return r0;
}

-(struct AlarmManager *)alarmManager {
    r0 = self->_alarmManager;
    return r0;
}

-(void *)gdprManager {
    r0 = self->_gdprManager;
    return r0;
}

-(void *)localizationManager {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_localizationManager));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = [objc_alloc() initWithDelegate:[LocalizationManagerDelegate localizationManagerDelegate]];
            *(r19 + r21) = r0;
    }
    return r0;
}

-(void *)animSequencer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_animSequencer));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *(r19 + r20) = r0;
    }
    return r0;
}

-(struct EnvironmentSelector *)environmentSelector {
    r0 = self->_environmentSelector;
    return r0;
}

-(struct ServerConnection *)serverConnection {
    r0 = self->_connection;
    return r0;
}

-(struct NetworkCourier<std::__1::type_index> *)tcpInterface {
    r0 = self->_tcpInterface;
    return r0;
}

-(void *)userAcquisitionManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_userAcquisitionManager));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *(r19 + r20) = r0;
    }
    return r0;
}

-(void)scheduleLocalNotifications {
    return;
}

-(void)scheduleNotificationWithType:(void *)arg2 {
    return;
}

-(void)scheduleNotificationWithType:(void *)arg2 andWithTimeIntervalInSeconds:(float)arg3 {
    r31 = r31 - 0xa0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    sub_10002e8b0(r29 - 0x38, "DIEP_NOTIF_1");
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    r0 = sub_10002e8b0(&var_88, "Diep.io Notifications");
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    var_88 = 0x0;
    sub_100032c8c(r29 - 0x38, 0x1, 0x0, &var_88 + 0x10);
    r0 = sub_100032c34(var_28, &var_70);
    r11 = var_28 + 0x38;
    var_28 = r11;
    r8 = var_88;
    r9 = 0x0;
    if (r9 != r8) {
            r10 = var_30;
            do {
                    q0 = *(int128_t *)(r9 + 0xffffffffffffffc8);
                    *(r10 + 0xffffffffffffffd8) = *(r9 + 0xffffffffffffffd8);
                    *(int128_t *)(r10 + 0xffffffffffffffc8) = q0;
                    *(int128_t *)(r9 + 0xffffffffffffffd0) = 0x0;
                    *(int128_t *)(r9 + 0xffffffffffffffd8) = 0x0;
                    *(r9 + 0xffffffffffffffc8) = 0x0;
                    q0 = *(int128_t *)(r9 + 0xffffffffffffffe0);
                    *(r10 + 0xfffffffffffffff0) = *(r9 + 0xfffffffffffffff0);
                    *(int128_t *)(r10 + 0xffffffffffffffe0) = q0;
                    *(int128_t *)(r9 + 0xffffffffffffffe8) = 0x0;
                    *(int128_t *)(r9 + 0xfffffffffffffff0) = 0x0;
                    *(r9 + 0xffffffffffffffe0) = 0x0;
                    r12 = r9 - 0x38;
                    *(int32_t *)(r10 + 0xfffffffffffffff8) = *(int32_t *)(r9 + 0xfffffffffffffff8);
                    r10 = var_30 - 0x38;
                    var_30 = r10;
                    r9 = r12;
            } while (r8 != r12);
            r8 = var_88;
            r11 = var_28;
    }
    else {
            r10 = var_30;
    }
    sub_100032d08(r29 - 0x38);
    sub_100680f40();
    sub_100032b8c(&var_88);
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    return;
}

-(unsigned long long)getRepeatIntervalFromString:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
@(0x0);
    r8 = &@selector(menu);
    if (objc_msgSend([[NSDictionary dictionaryWithObjects:&var_20 forKeys:&var_28 count:0x1] objectForKey:arg2], *(r8 + 0x330)) == 0x0) {
            r8 = &@selector(menu);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r8 << 0x8;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)rootNode {
    r0 = self->mRootNode;
    return r0;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tcpInterface));
    r0 = *(self + r8);
    *(r19 + r8) = 0x0;
    if (r0 != 0x0) {
            (*(*r0 + 0x8))();
    }
    sub_100030f64((int64_t *)&r19->_environmentSelector, 0x0);
    sub_1000310f4((int64_t *)&r19->_alarmManager, 0x0);
    sub_10003109c((int64_t *)&r19->_mcLibraHandler, 0x0);
    sub_1000310c8((int64_t *)&r19->_adsManager, 0x0);
    sub_100030f90((int64_t *)&r19->_connection, 0x0);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r0->_connection = 0x0;
    r0->_adsManager = 0x0;
    r0->_mcLibraHandler = 0x0;
    r0->_alarmManager = 0x0;
    r0->_environmentSelector = 0x0;
    r0->_tcpInterface = 0x0;
    return r0;
}

@end