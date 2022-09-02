@implementation VungleCustomMRAIDViewController

-(void)updateViewConstraints {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self presenterController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r20 = [[r19 container] retain];
            [r19 setupAutoLayoutConstraintsForAdContainer:r20];
            [r20 release];
    }
    [[&var_20 super] updateViewConstraints];
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] viewDidAppear:arg2];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(didPresentInterstitialAdViewControllerForPlacement:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r19 = [[r19 placement] retain];
            [r21 didPresentInterstitialAdViewControllerForPlacement:r19];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_30 super] viewWillAppear:arg2];
    if ([r19 isViewLoaded] != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 window];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            if (r0 != 0x0) {
                    r0 = [r19 view];
                    r0 = [r0 retain];
                    [r0 setOpaque:0x1];
                    [r0 release];
                    r21 = [[r19 view] retain];
                    r0 = [UIColor blackColor];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 setBackgroundColor:r22];
                    [r22 release];
                    [r21 release];
            }
    }
    r0 = [r19 view];
    r0 = [r0 retain];
    [r0 setNeedsLayout];
    [r0 release];
    return;
}

-(void)viewDidLoad {
    [[&var_10 super] viewDidLoad];
    return;
}

-(void *)initWithPlacement:(void *)arg2 frame:(struct CGRect)arg3 viewController:(void *)arg4 reportIncentivizedController:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x90;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r26 = arg2;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    r0 = [[&var_80 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r0 release];
            objc_storeStrong((int64_t *)&r22->_placement, r26);
            r0 = objc_alloc();
            v0 = v11;
            r0 = [r0 initWithMRAIDPlacement:r19 adFrame:r3];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_MRAIDController));
            r8 = *(r22 + r27);
            *(r22 + r27) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r25);
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_tapPassingView));
            r8 = *(r22 + r28);
            *(r22 + r28) = r0;
            [r8 release];
            if (r20 != 0x0) {
                    r25 = @selector(init);
                    r25 = objc_msgSend(objc_alloc(), r25);
                    [r22 setParentPresentationController:r25];
                    [r25 release];
                    r0 = [r22 parentPresentationController];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x1];
                    [r0 release];
                    [r25 release];
                    [r22 setPresenterController:r20];
                    r0 = [r22 presenterController];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 view];
                    r29 = r29;
                    r25 = [r0 retain];
                    [*(r22 + r28) setForwardView:r25];
                    [r25 release];
                    [r24 release];
            }
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewConstraints));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [*(r22 + r27) setDelegate:r22];
            objc_storeWeak((int64_t *)&r22->_reportIncentivizedController, r21);
            *(int8_t *)(int64_t *)&r22->_loadingProductView = 0x0;
            [r22 setOrientationMask:0x1e];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 setOpaque:0x0];
            [r0 release];
            r23 = [[CADisplayLink displayLinkWithTarget:r22 selector:@selector(adViewabilityChange:)] retain];
            [r22 setLink:r23];
            [r23 release];
            r0 = [r22 link];
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:r2];
            [r0 release];
            r0 = [r22 link];
            r29 = r29;
            r23 = [r0 retain];
            if ((r25 & 0x1) != 0x0) {
                    r1 = @selector(setPreferredFramesPerSecond:);
                    r0 = r23;
            }
            else {
                    r1 = @selector(setFrameInterval:);
                    r0 = r23;
            }
            objc_msgSend(r0, r1);
            [r23 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appWillEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appWillEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            [r25 release];
            if (s8 < 0x4020000000000000) {
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r22 selector:@selector(deviceOrientationChangeNotification:) name:**_UIDeviceOrientationDidChangeNotification object:0x0];
                    [r0 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)viewDidDisappear:(bool)arg2 {
    [[&var_20 super] viewDidDisappear:arg2];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)didReceiveMemoryWarning {
    [[&var_10 super] didReceiveMemoryWarning];
    return;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)activateDisplayLinkViewabilityTracking {
    r19 = [[self link] retain];
    r20 = [[NSRunLoop currentRunLoop] retain];
    [r19 addToRunLoop:r20 forMode:**_NSDefaultRunLoopMode];
    [r20 release];
    [r19 release];
    return;
}

-(void)resumeAdExperience {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self flexCloseTimeValue];
    if (d0 != 0x0) {
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r19 setFlexCloseTimerStartTimestamp:r2];
            [r0 release];
            [r19 flexCloseTimeValue];
            [r19 flexCloseTimerElapsedTime];
            d0 = d8 - d0;
            if (d0 > 0x0) {
                    [r19 flexCloseTimeValue];
                    [r19 flexCloseTimerElapsedTime];
                    r0 = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(closeFlexAdExperienceFromTimer) selector:0x0 userInfo:0x0 repeats:r6];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 setFlexCloseTimer:r20];
                    [r20 release];
            }
            else {
                    [r19 closeFlexAdExperienceFromTimer];
            }
    }
    [r19 setAdPaused:0x0];
    r0 = [r19 MRAIDController];
    r0 = [r0 retain];
    [r0 viewablePropertyChange:0x1];
    [r0 release];
    return;
}

-(void)pauseAdExperience:(bool)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [self flexCloseTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r19 flexCloseTimerStartTimestamp];
            [r19 flexCloseTimerElapsedTime];
            [r19 setFlexCloseTimerElapsedTime:r2];
            [r0 release];
            r0 = [r19 flexCloseTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setFlexCloseTimer:0x0];
    }
    [r19 setAdPaused:0x1];
    r0 = [r19 MRAIDController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 viewablePropertyChange:0x0];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [r19 MRAIDController];
            r0 = [r0 retain];
            [r0 finalizeAdExperience];
            [r0 release];
    }
    return;
}

-(void)adViewabilityChange:(void *)arg2 {
    var_70 = d13;
    stack[-120] = d12;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r0 = [self view];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 VNG_getParentWindow];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 superview] retain];
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 frame];
            [r23 convertRect:r20 toView:r3];
            [r0 release];
            [r23 release];
            [r22 release];
            CGRectGetHeight(CGRectGetWidth(CGRectIntersection([r20 frame], @selector(frame))));
            r0 = [r19 view];
            r0 = [r0 retain];
            r22 = r0;
            CGRectGetWidth([r0 bounds]);
            r0 = [r19 view];
            r29 = r29;
            r0 = [r0 retain];
            CGRectGetHeight([r0 bounds]);
            [r24 release];
            [r22 release];
            if (d12 * d0 < *0x100b9e2d0 * d8 * d0) {
                    if (CPU_FLAGS & L) {
                            r22 = 0x1;
                    }
            }
    }
    else {
            r22 = 0x1;
    }
    r0 = [r19 view];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 VNG_isVisible];
    if ((r22 & 0x1) == 0x0 && r0 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r23 = [r0 applicationState];
            [r0 release];
            [r21 release];
            if (r23 == 0x0) {
                    if ([r19 isAdPaused] != 0x0) {
                            if (([r19 isLoadingProductView] & 0x1) == 0x0) {
                                    [r19 resumeAdExperience];
                            }
                    }
            }
            else {
                    [r19 pauseAdExperience:0x0];
            }
    }
    else {
            [r21 release];
            [r19 pauseAdExperience:0x0];
    }
    [r20 release];
    return;
}

+(bool)validateFlexContainerSize:(struct CGSize)arg2 error:(void * *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    if (d10 < d11) {
            asm { fcsel      d0, d11, d10, mi };
    }
    d10 = *0x100bf2ea8 * d0 * 0x3fe0000000000000;
    if (d9 < d8) {
            asm { fcsel      d11, d9, d8, mi };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      d8, d8, d9, mi };
    }
    r8 = 0x100bf2000;
    if (r19 != 0x0) {
            r8 = 0x100bf2000;
            if (d8 < d10) {
                    r20 = [[NSString stringWithFormat:@"The longer side of the containing view is too short. It was %.0f and it must be at least %.0f."] retain];
                    r22 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    r8 = &@selector(alloc);
                    r0 = objc_msgSend(@class(NSError), *(r8 + 0x8e8));
                    r29 = r29;
                    *r19 = [[r0 retain] autorelease];
                    [r22 release];
                    [r20 release];
            }
    }
    d9 = d8 * *0x100bf2ea8;
    if (r19 != 0x0 && d11 < d9) {
            r20 = [[NSString stringWithFormat:@"The shorter side of the containing view is too short. It was %.0f and it must be at least %.0f."] retain];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            r8 = &@selector(alloc);
            *r19 = [[objc_msgSend(@class(NSError), *(r8 + 0x8e8)) retain] autorelease];
            [r22 release];
            [r20 release];
    }
    if (d11 >= d9) {
            if (CPU_FLAGS & GE) {
                    r8 = 0x1;
            }
    }
    if (d8 >= d10) {
            if (CPU_FLAGS & GE) {
                    r9 = 0x1;
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r8 & r9;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)closeFlexAdExperienceFromTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self flexCloseTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 flexCloseTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setFlexCloseTimer:0x0];
    }
    [r19 setFlexCloseTimeValue:r2];
    [r19 setFlexCloseTimerElapsedTime:r2];
    [r19 setFlexCloseTimerStartTimestamp:r2];
    [r19 closeFlexAdExperience:0x1];
    return;
}

-(void)closeFlexAdExperience:(bool)arg2 {
    r0 = [self MRAIDController];
    r0 = [r0 retain];
    [r0 calculateAdDurationForNativeClose];
    [r0 release];
    [self pauseAdExperience:0x1];
    r0 = [self MRAIDController];
    r0 = [r0 retain];
    [r0 injectCloseEvent:arg2];
    [r0 release];
    return;
}

-(void)loadAdWithPlayOptions:(void *)arg2 completionBlock:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionBlock));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r21->_MRAIDController loadAdWithPlayOptions:r19];
    r0 = [r21 placement];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adUnit];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if ([r22 templateType] == 0x1) {
            [r19 flexAutoCloseTime];
            if (d0 > 0x3ff0000000000000) {
                    [r19 flexAutoCloseTime];
                    [r21 setFlexCloseTimeValue:r2];
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    [r21 setFlexCloseTimerStartTimestamp:r2];
                    [r0 release];
                    [r19 flexAutoCloseTime];
                    r23 = [[NSTimer scheduledTimerWithTimeInterval:r21 target:@selector(closeFlexAdExperienceFromTimer) selector:0x0 userInfo:0x0 repeats:r6] retain];
                    [r21 setFlexCloseTimer:r23];
                    [r23 release];
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)appWillResignActive:(void *)arg2 {
    [self pauseAdExperience:0x0];
    return;
}

-(void)appDidBecomeActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isLoadingProductView] & 0x1) == 0x0) {
            [r19 resumeAdExperience];
    }
    return;
}

-(void)setupAutoLayoutConstraintsForAdContainer:(void *)arg2 {
    r20 = [arg2 retain];
    r25 = [[arg2 topAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 topAnchor] retain];
    r0 = [r25 constraintEqualToAnchor:r27];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r26 = [[arg2 bottomAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r25 = [[r0 bottomAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r27 release];
    [r26 release];
    r26 = [[arg2 leftAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r25 = [[r0 leftAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r27 release];
    [r26 release];
    r21 = [[arg2 rightAnchor] retain];
    [r20 release];
    r0 = [self view];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 rightAnchor] retain];
    r0 = [r21 constraintEqualToAnchor:r20];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)appWillEnterBackground:(void *)arg2 {
    [self setAdPaused:0x1];
    [self->_MRAIDController viewablePropertyChange:0x0];
    return;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [[&saved_fp - 0x30 super] viewWillTransitionToSize:[r2 retain] withTransitionCoordinator:r3];
    objc_initWeak(&stack[-72], self);
    objc_copyWeak(&var_70 + 0x20, &stack[-72]);
    [r19 animateAlongsideTransition:0x0 completion:&var_70];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r19 release];
    return;
}

-(void)appWillEnterForeground:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isLoadingProductView] & 0x1) == 0x0) {
            [r19 setAdPaused:0x0];
            [r19->_MRAIDController viewablePropertyChange:0x1];
    }
    return;
}

-(void)deviceOrientationChangeNotification:(void *)arg2 {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = [self MRAIDController];
    r0 = [r0 retain];
    [r0 orientationPropertyChangeWithNewSize:arg2];
    [r0 release];
    [self rotate];
    return;
}

-(void)didPresentInterstitialAd {
    r0 = [self placement];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adUnit];
    r0 = [r0 retain];
    [r0 setViewed:0x1];
    [r0 release];
    [r20 release];
    [self->_MRAIDController setPresenterViewController:self];
    return;
}

-(void)rotate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self presenterController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 setNeedsUpdateConstraints];
            [r0 release];
    }
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void *)controllerToPresentModalAdView {
    r0 = self;
    return r0;
}

-(void)vungleMRAIDController:(void *)arg2 setOrientationPropertiesWithForceOrientationMask:(unsigned long long)arg3 {
    [self setOrientationMask:arg3];
    [self applyInterfaceOrientationCorrectionWithMask:arg3];
    [UIViewController attemptRotationToDeviceOrientation];
    return;
}

-(void)vungleMRAIDController:(void *)arg2 didFailToLoadAd:(void *)arg3 error:(void *)arg4 {
    r4 = arg4;
    r0 = self;
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
    r19 = r0->_completionBlock;
    if (r19 != 0x0) {
            r23 = [r4 retain];
            r0 = [r0 placement];
            r0 = [r0 retain];
            r22 = [[r0 adUnit] retain];
            r20 = [r4 copy];
            [r23 release];
            (*(r19 + 0x10))(r19, r22, r20);
            [r20 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)vungleMRAIDController:(void *)arg2 didLoadAdInContainerView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setContainer:arg3];
    r0 = [r19 presenterController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 tapPassingView] retain];
            r0 = [r19 parentPresentationController];
            r0 = [r0 retain];
            [r0 setTapPassingView:r21];
            [r0 release];
            [r21 release];
            r21 = [[r19 container] retain];
            r0 = [r19 parentPresentationController];
            r0 = [r0 retain];
            [r0 setAdContainer:r21];
            [r0 release];
            [r21 release];
            r21 = [[r19 MRAIDController] retain];
            r0 = [r19 parentPresentationController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setMRAIDController:r21];
            [r0 release];
            r0 = r21;
    }
    else {
            r20 = [[r19 view] retain];
            r0 = [r19 container];
            r29 = r29;
            r21 = [r0 retain];
            [r20 insertSubview:r21 atIndex:0x0];
            [r21 release];
            r0 = r20;
    }
    [r0 release];
    r20 = r19->_completionBlock;
    if (r20 != 0x0) {
            r0 = [r19 placement];
            r0 = [r0 retain];
            (*(r20 + 0x10))(r20, [[r0 adUnit] retain], 0x0);
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)applyInterfaceOrientationCorrectionWithMask:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 == 0x2) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r2 == 0x18) {
            if (!CPU_FLAGS & E) {
                    r19 = r8;
            }
            else {
                    r19 = 0x4;
            }
    }
    if (r19 != 0x0) {
            r20 = [[UIDevice currentDevice] retain];
            r19 = [[NSNumber numberWithInteger:r19] retain];
            [r20 setValue:r19 forKey:@"orientation"];
            [r19 release];
            [r20 release];
    }
    return;
}

-(unsigned long long)vungleMRAIDControllerOrientationMask {
    r0 = [self orientationMask];
    return r0;
}

-(void)vungleMRAIDController:(void *)arg2 prepareStoreViewWithAppStoreParams:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg3 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 productViewProvider];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r22 = [objc_alloc() initProductViewProviderWithWithAppStoreParams:r19];
                    [r20 setProductViewProvider:r22];
                    [r22 release];
                    r0 = [r20 productViewProvider];
                    r0 = [r0 retain];
                    [r0 setDelegate:r20];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)vungleMRAIDControllerPresentStoreView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self productViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0 && ([r19 isLoadingProductView] & 0x1) == 0x0) {
            r0 = [r19 productViewProvider];
            r0 = [r0 retain];
            r22 = [[r0 getProductViewController] retain];
            [r19 setProductViewController:r22];
            [r22 release];
            [r0 release];
            [r19 setLoadingProductView:0x1];
            [r19 pauseAdExperience:0x0];
            r0 = [r19 productViewController];
            r0 = [r0 retain];
            [r0 setModalPresentationStyle:0x0];
            [r0 release];
            r20 = [[r19 productViewController] retain];
            [r19 presentViewController:r20 animated:0x1 completion:0x0];
            [r20 release];
    }
    return;
}

-(void)vungleMRAIDControllerWillLaunchURL {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(willLaunchURLFromAdViewControllerForPlacement:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r19 = [[r19 placement] retain];
            [r21 willLaunchURLFromAdViewControllerForPlacement:r19];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)vungleMRAIDController:(void *)arg2 executeRequestWithTPATURLArray:(void *)arg3 {
    r31 = r31 - 0x1c0;
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
    var_188 = self;
    r0 = [arg3 retain];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A0 = r1;
    var_198 = r0;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            var_190 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != var_190) {
                                    objc_enumerationMutation(var_198);
                            }
                            r28 = *(var_118 + r26 * 0x8);
                            r0 = [r28 absoluteString];
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"Dispatching TPAT /GET to %@"] retain];
                            [r0 release];
                            r20 = [[VungleLogger sharedLogger] retain];
                            r23 = @class(VungleLogger);
                            r0 = [var_188 placement];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 adUnit];
                            r0 = [r0 retain];
                            r22 = [[r0 appId] retain];
                            r23 = [[r23 eventIDFromAppID:r22] retain];
                            [r20 setEventID:r23];
                            [r23 release];
                            [r22 release];
                            [r0 release];
                            [r24 release];
                            [r20 release];
                            r0 = @class(VungleLogger);
                            r0 = [r0 sharedLogger];
                            r0 = [r0 retain];
                            [r0 logMessage:r21 level:0xf4240 context:@"Ad lifecycle"];
                            [r0 release];
                            r0 = [VNGNetworkManager sharedManager];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 TPATRequestOperationWithURL:r28 complete:0x0];
                            r29 = r29;
                            [r0 retain];
                            [r19 sendVungleOperation:r2];
                            [r20 release];
                            [r19 release];
                            [r21 release];
                            r26 = r26 + 0x1;
                    } while (r26 < var_128);
                    r0 = objc_msgSend(var_198, var_1A0);
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_198 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)vungleMRAIDControllerPresentStoreViewController {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self productViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 pauseAdExperience:0x0];
            r0 = [r19 productViewController];
            r0 = [r0 retain];
            [r0 setModalPresentationStyle:0x0];
            [r0 release];
            r20 = [[r19 productViewController] retain];
            [r19 presentViewController:r20 animated:0x1 completion:0x0];
            [r20 release];
    }
    return;
}

-(void)vungleMRAIDController:(void *)arg2 expandWith:(void *)arg3 {
    return;
}

-(void)vungleMRAIDController:(void *)arg2 resizeWith:(void *)arg3 {
    return;
}

-(void)vungleMRAIDControllerWillStartAdExperienceWithReportable:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r22);
    r24 = [r0 respondsToSelector:@selector(willPresentInterstitialAdViewControllerForPlacement:reportable:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r22 = objc_loadWeakRetained(r22);
            r20 = [[r20 placement] retain];
            [r22 willPresentInterstitialAdViewControllerForPlacement:r20 reportable:r19];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)vungleMRAIDControllerWillCloseAdExperienceWithReportable:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r22);
    r24 = [r0 respondsToSelector:@selector(willDismissInterstitialAdViewControllerForPlacement:reportable:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r22 = objc_loadWeakRetained(r22);
            r20 = [[r20 placement] retain];
            [r22 willDismissInterstitialAdViewControllerForPlacement:r20 reportable:r19];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)vungleMRAIDControllerSuccessfulView:(bool)arg2 reportable:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    if ((r20 & 0x1) != 0x0) {
            r0 = [r21 reportIncentivizedController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 sendReportIncentivized:r19];
            [r0 release];
    }
    r23 = (int64_t *)&r21->_delegate;
    r0 = objc_loadWeakRetained(r23);
    r25 = [r0 respondsToSelector:@selector(didFinishAdViewForPlacement:withSuccess:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r23 = objc_loadWeakRetained(r23);
            r21 = [[r21 placement] retain];
            [r23 didFinishAdViewForPlacement:r21 withSuccess:r20];
            [r21 release];
            [r23 release];
    }
    [r19 release];
    return;
}

-(void)vungleMRAIDControllerDidCloseAdExperienceWithReportable:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 presenterController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 parentPresentationController];
            r29 = r29;
            r0 = [r0 retain];
            r3 = 0x0;
            [r0 dismissViewControllerAnimated:0x1 completion:r3];
            [r0 release];
    }
    r0 = [r20 link];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 link];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r20 setLink:0x0];
    }
    r22 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r22);
    r24 = [r0 respondsToSelector:@selector(didDismissInterstitialAdViewControllerForPlacement:reportable:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r22 = objc_loadWeakRetained(r22);
            r20 = [[r20 placement] retain];
            [r22 didDismissInterstitialAdViewControllerForPlacement:r20 reportable:r19];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)vungleMRAIDControllerIsEnteringBackgroundWithReportable:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r22);
    r24 = [r0 respondsToSelector:@selector(willBackgroundAdViewControllerForPlacement:reportable:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r22 = objc_loadWeakRetained(r22);
            r20 = [[r20 placement] retain];
            [r22 willBackgroundAdViewControllerForPlacement:r20 reportable:r19];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)productViewControllerDidDismiss:(void *)arg2 {
    r0 = [self productViewController];
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:&var_38];
    [r0 release];
    return;
}

-(void)productViewControllerLoadingDidFailWithError:(void *)arg2 {
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)productViewControllerBecameReady {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self productViewProvider];
    r0 = [r0 retain];
    r21 = [[r0 getProductViewController] retain];
    [r19 setProductViewController:r21];
    [r21 release];
    [r0 release];
    r0 = [r19 productViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 MRAIDController];
            r0 = [r0 retain];
            [r0 storeViewLoadSuccessful];
            [r0 release];
    }
    return;
}

-(void *)publisherInformation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_publisherInformation)), 0x0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)link {
    r0 = self->_link;
    return r0;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLink:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_link, arg2);
    return;
}

-(void *)placement {
    r0 = self->_placement;
    return r0;
}

-(void)setPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placement, arg2);
    return;
}

-(void *)MRAIDController {
    r0 = self->_MRAIDController;
    return r0;
}

-(void *)completionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlock)), 0x0);
    return r0;
}

-(void)setMRAIDController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_MRAIDController, arg2);
    return;
}

-(void)setCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)container {
    r0 = objc_loadWeakRetained((int64_t *)&self->_container);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReportIncentivizedController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_reportIncentivizedController, arg2);
    return;
}

-(void)setContainer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_container, arg2);
    return;
}

-(void *)productViewProvider {
    r0 = self->_productViewProvider;
    return r0;
}

-(void *)reportIncentivizedController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_reportIncentivizedController);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)productViewController {
    r0 = self->_productViewController;
    return r0;
}

-(void)setProductViewProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productViewProvider, arg2);
    return;
}

-(void)setProductViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productViewController, arg2);
    return;
}

-(bool)isLoadingProductView {
    r0 = *(int8_t *)(int64_t *)&self->_loadingProductView;
    return r0;
}

-(void)setLoadingProductView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loadingProductView = arg2;
    return;
}

-(bool)isAdPaused {
    r0 = *(int8_t *)(int64_t *)&self->_adPaused;
    return r0;
}

-(void)setAdPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adPaused = arg2;
    return;
}

-(void *)flexCloseTimer {
    r0 = self->_flexCloseTimer;
    return r0;
}

-(void)setFlexCloseTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_flexCloseTimer, arg2);
    return;
}

-(double)flexCloseTimeValue {
    r0 = self;
    return r0;
}

-(void)setFlexCloseTimeValue:(double)arg2 {
    self->_flexCloseTimeValue = d0;
    return;
}

-(double)flexCloseTimerStartTimestamp {
    r0 = self;
    return r0;
}

-(void)setFlexCloseTimerStartTimestamp:(double)arg2 {
    self->_flexCloseTimerStartTimestamp = d0;
    return;
}

-(double)flexCloseTimerElapsedTime {
    r0 = self;
    return r0;
}

-(void)setFlexCloseTimerElapsedTime:(double)arg2 {
    self->_flexCloseTimerElapsedTime = d0;
    return;
}

-(void *)tapPassingView {
    r0 = self->_tapPassingView;
    return r0;
}

-(void)setTapPassingView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tapPassingView, arg2);
    return;
}

-(void *)adViewConstraints {
    r0 = self->_adViewConstraints;
    return r0;
}

-(void)setAdViewConstraints:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adViewConstraints, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adViewConstraints, 0x0);
    objc_storeStrong((int64_t *)&self->_tapPassingView, 0x0);
    objc_storeStrong((int64_t *)&self->_flexCloseTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_productViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_productViewProvider, 0x0);
    objc_destroyWeak((int64_t *)&self->_reportIncentivizedController);
    objc_destroyWeak((int64_t *)&self->_container);
    objc_storeStrong((int64_t *)&self->_completionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_MRAIDController, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    objc_storeStrong((int64_t *)&self->_link, 0x0);
    objc_storeStrong((int64_t *)&self->_publisherInformation, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end