@implementation FBAdVideoAdViewController

-(void)dealloc {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoAdView);
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isAutoRotateEnabled] & 0x1) != 0x0) {
            r0 = 0x1e;
    }
    else {
            r0 = [r19 preferredInterfaceOrientationForPresentation];
            if (r0 < 0x5) {
                    if (!CPU_FLAGS & B) {
                            r0 = 0x2;
                    }
                    else {
                            r0 = 0x18;
                    }
            }
    }
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 adDataModel:(void *)arg3 placementDefinition:(void *)arg4 useNewLayout:(bool)arg5 useNewToolbar:(bool)arg6 showCta:(bool)arg7 autoplay:(bool)arg8 isRewardedAd:(bool)arg9 forcedViewTime:(union ?)arg10 rootViewController:(void *)arg11 {
    var_8 = arg9;
    var_0 = arg8;
    r31 = r31 - 0x130;
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
    r27 = arg7;
    r25 = arg6;
    r26 = arg5;
    r24 = arg4;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [r24 retain];
    r23 = [arg10 retain];
    r0 = [[r29 - 0x78 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            var_F8 = r19;
            var_F0 = r21;
            *(int8_t *)(int64_t *)&r22->_autoplay = var_0;
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 rvAutoRotate];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r22->_isAutoRotateEnabled = [r0 isEqualToString:@"autorotate_enabled"];
            [r0 release];
            [r19 release];
            objc_storeStrong((int64_t *)&r22->_placementDefinition, r24);
            r0 = [r20 inlineClientToken];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_token));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r22->_funnelLogger, [[[[FBAdFunnelLogging sharedFunnelLogger] retain] funnelLoggerForToken:[[r20 inlineClientToken] retain]] retain]);
            [r28 release];
            [r19 release];
            [r24 release];
            objc_initWeak(r29 - 0x80, r22);
            [FBAdVideoAdView alloc];
            objc_copyWeak(&var_A8 + 0x20, r29 - 0x80);
            r23 = r23;
            [r19 initWithPlacementID:var_F0 adDataModel:r20 placementDefinition:var_F8 videoReadyToDisplayBlock:&var_A8 useNewLayout:r26 useNewToolbar:r25 showCta:r27 isRewardedAd:&var_C0 forcedViewTime:r23 rootViewController:stack[-280]];
            objc_copyWeak(&var_E8 + 0x20, r29 - 0x80);
            [r25 setOnInfo:&var_E8];
            [r25 setDelegate:r22];
            r19 = [[r22 funnelLogger] retain];
            [r25 setFunnelLoggingDelegate:r19];
            [r19 release];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 addSubview:r25];
            [r0 release];
            objc_storeWeak((int64_t *)&r22->_videoAdView, r25);
            r19 = [[FBAdReportingCoordinator alloc] initWithData:r20 viewController:r22];
            [r22 setReportingCoordinator:r19];
            [r19 release];
            r0 = [r22 reportingCoordinator];
            r0 = [r0 retain];
            [r0 setDelegate:r22];
            [r0 release];
            objc_destroyWeak(&var_E8 + 0x20);
            [r25 release];
            objc_destroyWeak(&var_A8 + 0x20);
            objc_destroyWeak(r29 - 0x80);
            r19 = var_F8;
            r21 = var_F0;
    }
    [r23 release];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(long long)preferredInterfaceOrientationForPresentation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [FBAdScreen orientation];
    if (([self isAutoRotateEnabled] & 0x1) == 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r20 = [[r0 objectForInfoDictionaryKey:@"UISupportedInterfaceOrientations"] retain];
            [r0 release];
            if (r19 == 0x1) {
                    if (([r20 containsObject:r2] & 0x1) != 0x0) {
                            r19 = 0x3;
                    }
                    else {
                            if (([r20 containsObject:r2] & 0x1) != 0x0) {
                                    r19 = 0x4;
                            }
                    }
            }
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setupViewabilityValidation {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 stopViewabilityValidation];
    }
    r20 = [[r19 placementDefinition] retain];
    r21 = [[r19 videoAdView] retain];
    if (r20 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r22 = [FBAdViewabilityValidator alloc];
            [r20 viewabilityCheckInterval];
            [r20 viewabilityCheckInitialDelay];
            r0 = [r22 initWithView:r21 withInterval:[r20 minViewabilityPercentage] withInitialDelay:[r20 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
            [r0 setDelegate:r19];
            [r0 scheduleViewabilityCheck];
            [r19 setViewabilityValidator:r0];
            [r0 release];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)stopViewabilityValidation {
    r0 = [self viewabilityValidator];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self viewabilityValidator];
    r0 = [r0 retain];
    [r0 stopViewabilityCheck];
    [r0 release];
    [self setViewabilityValidator:0x0];
    return;
}

-(void)tellDelegateToLogImpressionIfCriteriasAreMet {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self toldDelegateToLogImpression] & 0x1) == 0x0) goto loc_100ab3240;

.l1:
    return;

loc_100ab3240:
    r0 = [r19 viewabilityValidator];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 currentStatus] != 0x1) goto loc_100ab32e8;

loc_100ab3270:
    r21 = [r19 criteriasForLoggingImpressionForVideoIsMet];
    [r20 release];
    if ((r21 & 0x1) == 0x0) goto .l1;

loc_100ab3290:
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 videoAdViewControllerWantsToLogImpression:r19];
            [r19 setToldDelegateToLogImpression:0x1];
            [r19 stopViewabilityValidation];
    }
    goto loc_100ab32e8;

loc_100ab32e8:
    [r20 release];
    return;
}

-(bool)criteriasForLoggingImpressionForVideoIsMet {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self autoplay] & 0x1) == 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r21 = [r0 clickToPlayShouldFireImpressionOnVideoStart];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r19 videoReadyToDisplay];
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = [r19 videoReadyToDisplay];
    }
    return r0;
}

-(void)showWaitingToast {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    [r0 showWaitingToast];
    [r0 release];
    return;
}

-(void)viewWillLayoutSubviews {
    [[&var_40 super] viewWillLayoutSubviews];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = [self videoAdView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [[&var_20 super] viewWillAppear:arg2];
    if (([self hasAppearedBefore] & 0x1) == 0x0) {
            [FBAdUtility setApplicationStatusBarHidden:0x1];
    }
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] viewDidAppear:arg2];
    r20 = [[r19 videoAdView] retain];
    [r19 hasAppearedBefore];
    if (r20 != 0x0) {
            asm { ccmp       w0, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & NE) {
            [r19 setHasAppearedBefore:0x1];
            [r20 setupViewAndStartVideo:[r19 autoplay]];
    }
    [r19 setupViewabilityValidation];
    [r20 prepareViewToBecomeActive];
    [r20 release];
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    [self stopViewabilityValidation];
    r0 = [self videoAdView];
    r0 = [r0 retain];
    [r0 prepareViewToBecomeInactive];
    [r0 release];
    [[&var_30 super] viewWillDisappear:arg2];
    return;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r20 = [[self funnelLogger] retain];
    r0 = [self videoAdView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 videoDataForFunnelLogging];
    r0 = [r0 retain];
    r21 = r0;
    r8 = *___NSDictionary0__;
    r8 = *r8;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = r8;
            }
    }
    [r20 logDeviceRotationWithData:r2 newSize:r3];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)videoAdViewDidLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setIsLoaded:0x1];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 videoAdViewControllerDidLoad:r19];
    }
    [r20 release];
    return;
}

-(void)videoAdView:(void *)arg2 didEndWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r21 = [[r20 delegate] retain];
    if (r19 == 0x0) goto loc_100ab3808;

loc_100ab37d0:
    [r21 videoAdViewController:r20 didFailWithError:r19];
    if ([r20 isLoaded] == 0x0) goto loc_100ab3820;

loc_100ab37fc:
    r8 = &@selector(videoAdViewControllerWillClose:);
    goto loc_100ab3810;

loc_100ab3810:
    objc_msgSend(r21, *r8);
    goto loc_100ab3820;

loc_100ab3820:
    [r21 release];
    [r19 release];
    return;

loc_100ab3808:
    r8 = &@selector(videoAdViewControllerComplete:);
    goto loc_100ab3810;
}

-(void)videoAdView:(void *)arg2 skippedWithTouchData:(void *)arg3 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoAdViewControllerSkipped:self];
    [r0 release];
    return;
}

-(void)videoAdViewIsSkippable:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 videoAdViewControllerDidBecomeSkippable:r19];
    }
    [r20 release];
    return;
}

-(void)videoAdView:(void *)arg2 didTouchCTAWithEvent:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[r21 delegate] retain];
    r0 = [r21 videoAdView];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 videoDataForFunnelLogging];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    r8 = *___NSDictionary0__;
    r8 = *r8;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = r8;
            }
    }
    r23 = [r0 retain];
    [r25 release];
    [r24 release];
    r0 = [r21 funnelLogger];
    r0 = [r0 retain];
    [r0 logCTAClickedWithData:r23];
    [r0 release];
    if (r22 != 0x0) {
            [r22 videoAdViewControllerWantsToProcessCTA:r21 withEvent:r20 isDoneOrSkippable:[r19 videoIsDoneOrSkippable]];
    }
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(void *)arg2 {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x1];
    [r0 resumeVideo];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCompleteFlow:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x1];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoAdViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCancelFlow:(void *)arg2 {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    [r0 setCanPlayVideo:0x1];
    [r0 resumeVideo];
    [r0 release];
    return;
}

-(void *)adDetailsAndCTAButtonContainerView {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    r20 = [[r0 adDetailsAndCTAButtonContainerView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)targetImage {
    return 0x0;
}

-(void *)mainView {
    r0 = [self view];
    return r0;
}

-(void *)targetView {
    return 0x0;
}

-(void *)toolbarView {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    r20 = [[r0 toolbarView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(struct CGRect)targetFrame {
    r0 = [self videoAdView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 videoRendererView];
    r0 = [r0 retain];
    [r0 wantedVideoContainerFrame];
    [r0 release];
    r0 = [r19 release];
    return r0;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r21 == 0x1 && ([r20 toldDelegateToLogImpression] & 0x1) == 0x0) {
            [r20 tellDelegateToLogImpressionIfCriteriasAreMet];
    }
    if (([r20 isLoggedShowOrFailure] & 0x1) == 0x0) {
            [r20 setLoggedShowOrFailure:0x1];
            if (r21 == 0x1) {
                    r21 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
                    r20 = [[r20 token] retain];
                    [r21 logUXFunnelEventOfSubtype:@"ad_shown" withToken:r20 withExtraData:0x0];
                    [r20 release];
                    [r21 release];
            }
    }
    [r19 release];
    return 0x0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_funnelLogger);
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_destroyWeak((int64_t *)&self->_videoAdView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
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

-(void *)videoAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setVideoAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoAdView, arg2);
    return;
}

-(bool)isAutoRotateEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isAutoRotateEnabled;
    return r0;
}

-(void)setIsAutoRotateEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAutoRotateEnabled = arg2;
    return;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_isLoaded;
    return r0;
}

-(void)setIsLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLoaded = arg2;
    return;
}

-(bool)hasAppearedBefore {
    r0 = *(int8_t *)(int64_t *)&self->_hasAppearedBefore;
    return r0;
}

-(void)setHasAppearedBefore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasAppearedBefore = arg2;
    return;
}

-(bool)processCommandOnVideoDoneOrBecomingSkippable {
    r0 = *(int8_t *)(int64_t *)&self->_processCommandOnVideoDoneOrBecomingSkippable;
    return r0;
}

-(void)setProcessCommandOnVideoDoneOrBecomingSkippable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_processCommandOnVideoDoneOrBecomingSkippable = arg2;
    return;
}

-(bool)autoplay {
    r0 = *(int8_t *)(int64_t *)&self->_autoplay;
    return r0;
}

-(void)setAutoplay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoplay = arg2;
    return;
}

-(bool)toldDelegateToLogImpression {
    r0 = *(int8_t *)(int64_t *)&self->_toldDelegateToLogImpression;
    return r0;
}

-(void)setToldDelegateToLogImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_toldDelegateToLogImpression = arg2;
    return;
}

-(void)setVideoReadyToDisplay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoReadyToDisplay = arg2;
    return;
}

-(bool)videoReadyToDisplay {
    r0 = *(int8_t *)(int64_t *)&self->_videoReadyToDisplay & 0x1;
    return r0;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x0);
    return r0;
}

-(void *)funnelLogger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_funnelLogger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setFunnelLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_funnelLogger, arg2);
    return;
}

-(bool)isLoggedShowOrFailure {
    r0 = *(int8_t *)(int64_t *)&self->_loggedShowOrFailure;
    return r0;
}

-(void)setLoggedShowOrFailure:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loggedShowOrFailure = arg2;
    return;
}

@end