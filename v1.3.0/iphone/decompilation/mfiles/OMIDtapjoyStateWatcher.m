@implementation OMIDtapjoyStateWatcher

+(void *)getInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc210 != -0x1) {
            dispatch_once(0x1011dc210, &var_28);
    }
    r0 = *0x1011dc218;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)appIsActive {
    r0 = self;
    if (r0->_appState == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)stop {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 removeObserver:self forKeyPath:@"outputVolume"];
    [r0 release];
    return;
}

-(void)start {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    self->_appState = [self appStateFromUIApplicationState:[r0 applicationState]];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppDidBecomeActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppDidEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"outputVolume" options:0x0 context:0x0];
    [r0 release];
    return;
}

-(void)adSessionDidBecomeActive:(void *)arg2 {
    r20 = [[arg2 statePublisher] retain];
    r19 = [[self appStateString] retain];
    [r20 publishAppState:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)updateAppStateWithUIApplicationState:(long long)arg2 {
    r31 = r31 - 0x140;
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
    r29 = &saved_fp;
    r19 = self;
    r0 = [self appStateFromUIApplicationState:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_appState));
    if (r0 != *(r19 + r8)) {
            *(r19 + r8) = r0;
            var_120 = r19;
            r19 = [[r19 appStateString] retain];
            r0 = [OMIDtapjoyAdSessionRegistry getInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 activeAdSessions];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    do {
                            r28 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r0 = *(0x0 + r28 * 0x8);
                                    r0 = [r0 statePublisher];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 publishAppState:r2];
                                    [r26 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r23);
                            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            [r21 release];
            r21 = [var_120 appIsActive];
            r20 = [[var_120 delegate] retain];
            if (r21 != 0x0) {
                    r1 = @selector(appDidBecomeActive);
            }
            else {
                    r1 = @selector(appDidResignActive);
            }
            objc_msgSend(r20, r1);
            [r20 release];
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)appStateString {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_appState));
    r8 = *(self + r8);
    if (r8 == 0x1) goto loc_10095f800;

loc_10095f7f0:
    if (r8 != 0x0) goto loc_10095f810;

loc_10095f7f4:
    r19 = @"foregrounded";
    goto loc_10095f808;

loc_10095f808:
    [r19 retain];
    goto loc_10095f810;

loc_10095f810:
    r0 = [r19 autorelease];
    return r0;

loc_10095f800:
    r19 = @"backgrounded";
    goto loc_10095f808;
}

-(unsigned long long)appStateFromUIApplicationState:(long long)arg2 {
    r0 = self;
    if (arg2 != 0x2) {
            asm { csinc      x0, x2, xzr, ne };
    }
    return r0;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
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
    r29 = &saved_fp;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg2 isEqual:r2];
    [r21 release];
    if (r20 != 0x0) {
            var_108 = q0;
            r0 = [OMIDtapjoyAdSessionRegistry getInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 activeAdSessions];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r27 = *var_108;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_108 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r0 = *(var_110 + r28 * 0x8);
                                    r0 = [r0 statePublisher];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    [r19 deviceVolume];
                                    [r26 publishDeviceVolume:r2];
                                    [r26 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(double)deviceVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 outputVolume];
    asm { fcvt       d8, s0 };
    r0 = [r19 release];
    return r0;
}

-(void)onAppWillResignActive {
    [self updateAppStateWithUIApplicationState:0x1];
    return;
}

-(void)onAppDidBecomeActive {
    [self updateAppStateWithUIApplicationState:0x0];
    return;
}

-(void)onAppDidEnterBackground {
    [self updateAppStateWithUIApplicationState:0x2];
    return;
}

-(unsigned long long)appState {
    r0 = self->_appState;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end