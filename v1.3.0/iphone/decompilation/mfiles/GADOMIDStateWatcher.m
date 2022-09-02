@implementation GADOMIDStateWatcher

+(void *)getInstance {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x10, &var_48);
    if (*0x1011dc038 != -0x1) {
            dispatch_once(0x1011dc038, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = *qword_1011dc040;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)appIsActive {
    r31 = r31 - 0x10;
    if (self->_appState == 0x0) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r0 = r9 & 0x1;
    return r0;
}

-(void)start {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    self->_appState = [self appStateFromUIApplicationState:[r0 applicationState]];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppDidBecomeActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppDidEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"outputVolume" options:0x0 context:0x0];
    [r0 release];
    return;
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

-(void)adSessionDidBecomeActive:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    var_20 = [[var_18 statePublisher] retain];
    var_28 = [[self appStateString] retain];
    [var_20 publishAppState:var_28];
    [var_28 release];
    [var_20 release];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void *)appStateString {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_appState;
    var_20 = r0;
    if (r0 != 0x0) {
            if (r9 == 0x0) {
                    var_8 = [@"backgrounded" retain];
            }
    }
    else {
            var_8 = [@"foregrounded" retain];
    }
    r0 = [var_8 autorelease];
    return r0;
}

-(unsigned long long)appStateFromUIApplicationState:(long long)arg2 {
    r31 = r31 - 0x40;
    var_28 = arg2;
    if (arg2 != 0x0) {
            if (r9 != 0x0) {
                    if (r9 == 0x0) {
                            var_8 = 0x1;
                    }
            }
            else {
                    var_8 = 0x1;
            }
    }
    else {
            var_8 = 0x0;
    }
    r0 = var_8;
    return r0;
}

-(void)updateAppStateWithUIApplicationState:(long long)arg2 {
    r31 = r31 - 0x190;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r9 = *___stack_chk_guard;
    var_A0 = self;
    var_B8 = [var_A0 appStateFromUIApplicationState:arg2];
    if (var_B8 != var_A0->_appState) {
            var_A0->_appState = var_B8;
            var_C0 = [[var_A0 appStateString] retain];
            memset(&stack[-280], zero_extend_64(0x0), 0x40);
            r0 = [GADOMIDAdSessionRegistry getInstance];
            r0 = [r0 retain];
            var_128 = r0;
            r0 = [r0 activeAdSessions];
            r29 = r29;
            var_130 = [r0 retain];
            [var_128 release];
            r0 = [var_130 countByEnumeratingWithState:&stack[-280] objects:r29 - 0x98 count:0x10];
            var_138 = r0;
            if (r0 != 0x0) {
                    var_140 = *var_F8;
                    var_148 = &stack[-280] + 0x10;
                    var_150 = 0x0;
                    var_158 = var_138;
                    do {
                            do {
                                    var_160 = var_158;
                                    var_168 = var_150;
                                    if (**var_148 != var_140) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r0 = [*(var_100 + var_168 * 0x8) statePublisher];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 publishAppState:var_C0];
                                    [r0 release];
                                    var_158 = var_160;
                                    var_150 = var_168 + 0x1;
                            } while (var_168 + 0x1 < var_160);
                            r0 = [var_130 countByEnumeratingWithState:&stack[-280] objects:r29 - 0x98 count:0x10];
                            var_158 = r0;
                            var_150 = 0x0;
                    } while (r0 != 0x0);
            }
            [var_130 release];
            if (([var_A0 appIsActive] & 0x1) != 0x0) {
                    r0 = [var_A0 delegate];
                    r0 = [r0 retain];
                    [r0 appDidBecomeActive];
                    [r0 release];
            }
            else {
                    r0 = [var_A0 delegate];
                    r0 = [r0 retain];
                    [r0 appDidResignActive];
                    [r0 release];
            }
            objc_storeStrong(&var_C0, 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0x1a0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r10 = *___stack_chk_guard;
    var_A0 = self;
    objc_storeStrong(r29 - 0xb0, arg2);
    objc_storeStrong(r29 - 0xb8, arg3);
    objc_storeStrong(r29 - 0xc0, arg4);
    if (([0x0 isEqual:@"outputVolume"] & 0x1) != 0x0) {
            memset(&stack[-288], zero_extend_64(0x0), 0x40);
            r0 = [GADOMIDAdSessionRegistry getInstance];
            r0 = [r0 retain];
            var_148 = r0;
            r0 = [r0 activeAdSessions];
            r29 = r29;
            var_150 = [r0 retain];
            [var_148 release];
            r2 = &stack[-288];
            r0 = [var_150 countByEnumeratingWithState:r2 objects:r29 - 0x98 count:0x10];
            var_158 = r0;
            if (r0 != 0x0) {
                    var_160 = *var_100;
                    var_168 = &stack[-288] + 0x10;
                    var_170 = 0x0;
                    var_178 = var_158;
                    do {
                            do {
                                    var_180 = var_178;
                                    var_188 = var_170;
                                    if (**var_168 != var_160) {
                                            objc_enumerationMutation(var_150);
                                    }
                                    r0 = [*(var_108 + var_188 * 0x8) statePublisher];
                                    r29 = r29;
                                    var_190 = [r0 retain];
                                    [var_A0 deviceVolume];
                                    [var_190 publishDeviceVolume:r2];
                                    [var_190 release];
                                    var_178 = var_180;
                                    var_170 = var_188 + 0x1;
                            } while (var_188 + 0x1 < var_180);
                            r2 = &stack[-288];
                            r0 = [var_150 countByEnumeratingWithState:r2 objects:r29 - 0x98 count:0x10];
                            var_178 = r0;
                            var_170 = 0x0;
                    } while (r0 != 0x0);
            }
            [var_150 release];
    }
    var_18 = **___stack_chk_guard;
    objc_storeStrong(r29 - 0xc0, 0x0);
    objc_storeStrong(r29 - 0xb8, 0x0);
    objc_storeStrong(r29 - 0xb0, 0x0);
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(double)deviceVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    var_18 = r0;
    [r0 outputVolume];
    asm { fcvt       d0, s0 };
    r0 = [var_18 release];
    return r0;
}

-(void)onAppDidBecomeActive {
    [self updateAppStateWithUIApplicationState:0x0];
    return;
}

-(void)onAppWillResignActive {
    [self updateAppStateWithUIApplicationState:0x1];
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