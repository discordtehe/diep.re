@implementation VungleInternalMRAIDViewController

-(void)resumeAdExperience {
    r0 = [self MRAIDController];
    r0 = [r0 retain];
    [r0 viewablePropertyChange:0x1];
    [r0 release];
    return;
}

-(void)pauseAdExperience:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self MRAIDController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 viewablePropertyChange:0x0];
    [r0 release];
    if (arg2 != 0x0) {
            r0 = [r19 MRAIDController];
            r0 = [r0 retain];
            [r0 finalizeAdExperience];
            [r0 release];
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
                    [r0 setOpaque:0x0];
                    [r0 release];
                    r19 = [[r19 view] retain];
                    r20 = [[UIColor clearColor] retain];
                    [r19 setBackgroundColor:r20];
                    [r20 release];
                    [r19 release];
            }
    }
    return;
}

-(void *)initWithPlacement:(void *)arg2 reportIncentivizedController:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_placement, r22);
            r23 = objc_alloc();
            r0 = [r21 view];
            r0 = [r0 retain];
            r24 = r0;
            [r0 frame];
            r0 = [r23 initWithMRAIDPlacement:r19 adFrame:r3];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_MRAIDController));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            [r24 release];
            [*(r21 + r23) setDelegate:r21];
            objc_storeWeak((int64_t *)&r21->_reportIncentivizedController, r20);
            *(int8_t *)(int64_t *)&r21->_loadingProductView = 0x0;
            [r21 setOrientationMask:0x1e];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setOpaque:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(appWillEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(appWillEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(appDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(appWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            [r24 release];
            if (s8 < 0x4020000000000000) {
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r21 selector:@selector(deviceOrientationChangeNotification:) name:**_UIDeviceOrientationDidChangeNotification object:0x0];
                    [r0 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
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

-(void)updateViewConstraints {
    r20 = objc_loadWeakRetained((int64_t *)&self->_container);
    [self setupAutoLayoutConstraintsForAdContainer:r20];
    [r20 release];
    [[&var_20 super] updateViewConstraints];
    return;
}

-(void)viewDidLoad {
    [[&var_10 super] viewDidLoad];
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

-(void)didReceiveMemoryWarning {
    [[&var_10 super] didReceiveMemoryWarning];
    return;
}

-(void)viewDidDisappear:(bool)arg2 {
    [[&var_20 super] viewDidDisappear:arg2];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)loadAdWithPlayOptions:(void *)arg2 completionBlock:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r21 != 0x0) {
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionBlock));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r20->_MRAIDController loadAdWithPlayOptions:r19];
    [r19 release];
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

-(void)appWillResignActive:(void *)arg2 {
    [self pauseAdExperience:0x0];
    return;
}

-(void)appWillEnterBackground:(void *)arg2 {
    [self pauseAdExperience:0x0];
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
            [r19 resumeAdExperience];
    }
    return;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r2 retain];
    [[&var_40 super] viewWillTransitionToSize:r21 withTransitionCoordinator:r3];
    [r21 animateAlongsideTransition:0x0 completion:&var_78];
    [r21 release];
    return;
}

-(void)deviceOrientationChangeNotification:(void *)arg2 {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    [self->_MRAIDController orientationPropertyChangeWithNewSize:arg2];
    return;
}

-(void)setupAutoLayoutConstraintsForAdContainer:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r28 = [arg2 retain];
    if ([r20 respondsToSelector:r2] != 0x0) {
            r25 = [[r28 topAnchor] retain];
            r0 = [r20 view];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            var_58 = r28;
            r28 = r0;
            r0 = [r25 constraintEqualToAnchor:r28];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            r25 = [[var_58 bottomAnchor] retain];
            r0 = [r20 view];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r27 = r0;
            r22 = [[r0 bottomAnchor] retain];
            r0 = [r25 constraintEqualToAnchor:r22];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r22 release];
            [r27 release];
            [r26 release];
            [r25 release];
            r25 = [[var_58 leftAnchor] retain];
            r0 = [r20 view];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r27 = r0;
            r22 = [[r0 leftAnchor] retain];
            r0 = [r25 constraintEqualToAnchor:r22];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            r28 = var_58;
            [r0 release];
            [r22 release];
            [r27 release];
            [r26 release];
            [r25 release];
            r25 = [[r28 rightAnchor] retain];
            r0 = [r20 view];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 rightAnchor] retain];
            r0 = [r25 constraintEqualToAnchor:r22];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r0 = r25;
    }
    else {
            r21 = [_NSDictionaryOfVariableBindings(@"adContainer", r28) retain];
            r23 = [[r20 view] retain];
            r25 = [[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[adContainer]|" options:0x0 metrics:0x0 views:r21] retain];
            [r23 addConstraints:r25];
            [r25 release];
            [r23 release];
            r20 = [[r20 view] retain];
            r22 = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[adContainer]|" options:0x0 metrics:0x0 views:r21] retain];
            [r20 addConstraints:r22];
            [r22 release];
            [r20 release];
            r0 = r21;
    }
    [r0 release];
    [r28 release];
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

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void *)controllerToPresentModalAdView {
    r0 = self;
    return r0;
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
    [arg3 retain];
    objc_storeWeak((int64_t *)&self->_container, arg3);
    r0 = [r19 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 addSubview:r22];
    [r0 release];
    [arg3 layoutIfNeeded];
    [r22 release];
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

-(void)vungleMRAIDController:(void *)arg2 setOrientationPropertiesWithForceOrientationMask:(unsigned long long)arg3 {
    [self setOrientationMask:arg3];
    [self applyInterfaceOrientationCorrectionWithMask:arg3];
    [UIViewController attemptRotationToDeviceOrientation];
    return;
}

-(unsigned long long)vungleMRAIDControllerOrientationMask {
    r0 = [self orientationMask];
    return r0;
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
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

-(void)vungleMRAIDController:(void *)arg2 prepareStoreViewWithAppStoreParams:(void *)arg3 {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r20 = self;
    r19 = [arg3 retain];
    r21 = [NSMutableDictionary new];
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = [[r19 objectForKeyedSubscript:r2] retain];
                    r22 = [[VNGStoreKitProductViewProvider numberFromAppStoreID:r24 error:0x0] retain];
                    [r24 release];
                    [r21 setValue:r22 forKey:**_SKStoreProductParameterITunesItemIdentifier];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r24 = r0;
                            r0 = [UIDevice currentDevice];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 systemVersion];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 floatValue];
                            [r0 release];
                            [r25 release];
                            [r24 release];
                            if (s8 >= 0x4026000000000000) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r21 setObject:r2 forKey:r3];
                                    [r24 release];
                            }
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r24 = r0;
                            r0 = [UIDevice currentDevice];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 systemVersion];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            [r0 floatValue];
                            asm { fcvt       d8, s0 };
                            [r26 release];
                            [r25 release];
                            [r24 release];
                            if (d8 >= *0x100bf2eb8) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r21 setObject:r2 forKey:r3];
                                    [r24 release];
                            }
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            [r0 retain];
                            [r21 setObject:r2 forKey:r3];
                            [r24 release];
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            [r0 retain];
                            [r21 setObject:r2 forKey:r3];
                            [r24 release];
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            [r0 retain];
                            [r21 setObject:r2 forKey:r3];
                            [r23 release];
                    }
                    r0 = [r20 productViewProvider];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r24 = [objc_alloc() initProductViewProviderWithWithAppStoreParams:r21];
                            [r20 setProductViewProvider:r24];
                            [r24 release];
                            r0 = [r20 productViewProvider];
                            r0 = [r0 retain];
                            [r0 setDelegate:r20];
                            [r0 release];
                    }
                    [r22 release];
            }
    }
    [r21 release];
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
    [self setLoadingProductView:0x0];
    r0 = [self productViewController];
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:&var_38];
    [r0 release];
    return;
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
    r22 = [[r0 getProductViewController] retain];
    [r19 setProductViewController:r22];
    [r22 release];
    [r0 release];
    r0 = [r19 productViewProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 MRAIDController];
            r0 = [r0 retain];
            [r0 storeViewLoadSuccessful];
            [r0 release];
    }
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

-(void *)publisherInformation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_publisherInformation)), 0x0);
    return r0;
}

-(void *)placement {
    r0 = self->_placement;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setMRAIDController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_MRAIDController, arg2);
    return;
}

-(void *)MRAIDController {
    r0 = self->_MRAIDController;
    return r0;
}

-(void)setPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placement, arg2);
    return;
}

-(void *)completionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlock)), 0x0);
    return r0;
}

-(void)setCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setContainer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_container, arg2);
    return;
}

-(void *)container {
    r0 = objc_loadWeakRetained((int64_t *)&self->_container);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)reportIncentivizedController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_reportIncentivizedController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReportIncentivizedController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_reportIncentivizedController, arg2);
    return;
}

-(void *)productViewProvider {
    r0 = self->_productViewProvider;
    return r0;
}

-(void)setProductViewProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productViewProvider, arg2);
    return;
}

-(void *)productViewController {
    r0 = self->_productViewController;
    return r0;
}

-(bool)isLoadingProductView {
    r0 = *(int8_t *)(int64_t *)&self->_loadingProductView;
    return r0;
}

-(void)setProductViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productViewController, arg2);
    return;
}

-(void)setLoadingProductView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loadingProductView = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_productViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_productViewProvider, 0x0);
    objc_destroyWeak((int64_t *)&self->_reportIncentivizedController);
    objc_destroyWeak((int64_t *)&self->_container);
    objc_storeStrong((int64_t *)&self->_completionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_MRAIDController, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    objc_storeStrong((int64_t *)&self->_publisherInformation, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end