@implementation FBAdEndCardViewController

-(void)dealloc {
    r0 = objc_loadWeakRetained((int64_t *)&self->_endCardScreenshotView);
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_endCardNoMediaView);
    [r0 setDelegate:0x0];
    [r0 release];
    [FBAdUtility stopObservingBackgroundNotifications:self];
    [[&var_30 super] dealloc];
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

-(void *)initWithPlacementID:(void *)arg2 adDataModel:(void *)arg3 useNewLayout:(bool)arg4 useNewToolbar:(bool)arg5 rootViewController:(void *)arg6 {
    r31 = r31 - 0xf0;
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
    r23 = arg5;
    r25 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg6 retain];
    r0 = [[r29 - 0x60 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r22->_useNewToolbar = r23;
            r0 = @class(FBAdConfigManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 rvAutoRotate];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r22->_isAutoRotateEnabled = [r0 isEqualToString:@"autorotate_enabled"];
            [r0 release];
            [r24 release];
            r0 = [r20 inlineClientToken];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_token));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = @class(FBAdConfigManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 shouldUseAppStoreEndCard];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_isAppStoreEndCard));
            *(int8_t *)(r22 + r24) = r0;
            [r23 release];
            [r22 setupToolbarViewWithRootViewController:r21 adDataModel:r20];
            r0 = [r22 toolbarView];
            r29 = r29;
            r23 = [r0 retain];
            if (*(int8_t *)(r22 + r24) != 0x0) {
                    [[FBAdEndCardAppStoreView alloc] initWithDataModel:r20 toolbarView:r23];
                    objc_initWeak(r29 - 0x68, r22);
                    objc_copyWeak(&var_90 + 0x20, r29 - 0x68);
                    [r27 setOnInfo:&var_90];
                    [r22 setView:r27];
                    [r27 setDelegate:r22];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_endCardAppStoreView));
                    r0 = *(r22 + r8);
                    *(r22 + r8) = r27;
                    [r0 release];
                    objc_destroyWeak(&var_90 + 0x20);
                    objc_destroyWeak(r29 - 0x68);
            }
            else {
                    r0 = [r20 screenshots];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [FBAdEndCardScreenshotView alloc];
                            r0 = [r0 initWithPlacementID:r19 adDataModel:r20 rootViewController:r21 toolbarView:r23 useNewLayout:r25];
                            r26 = r0;
                            [r0 setAccessibilityIdentifier:@"ad-end-card-screenshot-view"];
                            objc_initWeak(r29 - 0x68, r22);
                            r27 = &var_B8 + 0x20;
                            objc_copyWeak(r27, r29 - 0x68);
                            [r26 setOnInfo:&var_B8];
                            [r22 setView:r26];
                            [r26 setDelegate:r22];
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_endCardScreenshotView));
                    }
                    else {
                            r0 = [FBAdEndCardNoMediaView alloc];
                            r0 = [r0 initWithPlacementID:r19 adDataModel:r20 rootViewController:r21 toolbarView:r23];
                            r26 = r0;
                            [r0 setAccessibilityIdentifier:@"ad-end-card-nomedia-view"];
                            objc_initWeak(r29 - 0x68, r22);
                            r27 = &var_E0 + 0x20;
                            objc_copyWeak(r27, r29 - 0x68);
                            [r26 setOnInfo:&var_E0];
                            [r22 setView:r26];
                            [r26 setDelegate:r22];
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_endCardNoMediaView));
                    }
                    objc_storeWeak(r22 + r8, r26);
                    objc_destroyWeak(r27);
                    objc_destroyWeak(r29 - 0x68);
                    [r26 release];
            }
            r24 = [[FBAdReportingCoordinator alloc] initWithData:r20 viewController:r22];
            [r22 setReportingCoordinator:r24];
            [r24 release];
            r0 = [r22 reportingCoordinator];
            r0 = [r0 retain];
            [r0 setDelegate:r22];
            [r0 release];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)viewWillLayoutSubviews {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isAutoRotateEnabled] != 0x0) {
            [FBAdScreen boundsInOrientation];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
    }
    else {
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 bounds];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [r0 release];
    }
    r0 = objc_loadWeakRetained((int64_t *)&r19->_endCardScreenshotView);
    [r0 setFrame:r2];
    [r0 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_endCardNoMediaView);
    [r0 setFrame:r2];
    [r0 release];
    return;
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

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x50;
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
    [[&var_40 super] viewWillAppear:arg2];
    if (([r19 hasAppearedBefore] & 0x1) == 0x0) {
            [FBAdUtility setApplicationStatusBarHidden:0x1];
            if ([r19 isAppStoreEndCard] != 0x0) {
                    r0 = [r19 endCardAppStoreView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 endCardAppStoreView];
                            r0 = [r0 retain];
                            r23 = [[r0 productVC] retain];
                            [r0 release];
                            [r19 addChildViewController:r23];
                            [r23 release];
                            r0 = [r19 endCardAppStoreView];
                            r0 = [r0 retain];
                            [r0 addAppStoreViewToSubview];
                            [r0 release];
                            r0 = [r19 endCardAppStoreView];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 productVC];
                            r0 = [r0 retain];
                            [r0 didMoveToParentViewController:r19];
                            [r0 release];
                            [r20 release];
                    }
            }
    }
    if ([r19 shouldFadeInCloseButton] != 0x0) {
            [r19 hideCloseButton];
    }
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_30 super] viewDidAppear:arg2];
    if (([r19 hasAppearedBefore] & 0x1) == 0x0) {
            r20 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
            r21 = [[r19 token] retain];
            [r20 logUXFunnelEventOfSubtype:@"end_card_shown" withToken:r21 withExtraData:0x0];
            [r21 release];
            [r20 release];
            [r19 setupNotifications];
            [r19 setHasAppearedBefore:0x1];
    }
    if ([r19 shouldFadeInCloseButton] != 0x0) {
            [r19 fadeInCloseButtonWithDuration:r2 delay:r3];
    }
    return;
}

-(void)hideCloseButton {
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r20 = [[r0 closeButton] retain];
    [r0 release];
    [r20 setAlpha:r2];
    [r20 release];
    return;
}

-(void)fadeInCloseButtonWithDuration:(double)arg2 delay:(double)arg3 {
    r31 = r31 - 0x60;
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r1 = @selector(closeButton);
    r20 = [objc_msgSend(r0, r1) retain];
    [r0 release];
    asm { fcvtzs     x1, d0 };
    r19 = dispatch_time(0x0, r1);
    var_30 = r20;
    [r20 retain];
    dispatch_after(r19, *__dispatch_main_q, &var_50);
    [var_30 release];
    [r20 release];
    return;
}

-(void)setupToolbarViewWithRootViewController:(void *)arg2 adDataModel:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = r21->_toolbarView;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r22 = r23;
    }
    else {
            if (([r21 useNewToolbar] & 0x1) != 0x0) {
                    r0 = [FBInterstitialAdToolbarView newDesign];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            else {
                    r0 = [FBInterstitialAdToolbarView oldDesign];
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = [r0 retain];
            }
            r22 = r0;
            [r23 release];
            [r22 release];
            [r22 setForcedViewTime:&var_70];
            r23 = [[r22 adChoicesButton] retain];
            r24 = [[r20 adChoicesText] retain];
            r25 = [[r20 localizedCancelText] retain];
            r26 = [[r20 adChoicesLinkURL] retain];
            r0 = [r20 inlineClientToken];
            r29 = r29;
            r27 = [r0 retain];
            if (r19 != 0x0) {
                    [r23 configureWithText:r24 cancelText:r25 url:r26 inlineClientToken:r27 rootViewController:r19];
            }
            else {
                    r28 = [[FBAdViewControllerProxy viewController] retain];
                    [r23 configureWithText:r24 cancelText:r25 url:r26 inlineClientToken:r27 rootViewController:r28];
                    [r28 release];
            }
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 setAlpha:r2];
            [r22 setAdIconType:[FBInterstitialAdToolbarView toolbarIconTypeForDataModel:r20]];
            [r22 configureToolbarColorsForType:0x0];
            [r21 setToolbarView:r22];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)endCardScreenshotViewClicked:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerDidClick:self];
    [r0 release];
    return;
}

-(void)endCardScreenshotViewWillClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)endCardScreenshotView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewController:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)endCardScreenshotViewDidTerminate:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerDidTerminate:self];
    [r0 release];
    return;
}

-(void)endCardNoMediaViewClicked:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerDidClick:self];
    [r0 release];
    return;
}

-(void)endCardNoMediaViewWillClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)endCardNoMediaView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewController:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)endCardNoMediaViewDidTerminate:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerDidTerminate:self];
    [r0 release];
    return;
}

-(void)endCardAppStoreView:(void *)arg2 didFailWithError:(void *)arg3 {
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
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 endCardViewController:r20 didFailWithError:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)endCardAppStoreViewWillClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void)adReportingCoordinatorDidCancelFlow:(void *)arg2 {
    return;
}

-(void)adReportingCoordinatorDidCompleteFlow:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardViewControllerWillClose:self];
    [r0 release];
    return;
}

-(void *)adDetailsAndCTAButtonContainerView {
    r0 = [self endCardScreenshotView];
    r0 = [r0 retain];
    r20 = [[r0 adDetailsAndCTAButtonContainerView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setupNotifications {
    [FBAdUtility stopObservingBackgroundNotifications:self];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    [r22 startObservingBackgroundNotifications:self usingBackgroundBlock:&var_70 usingForegroundBlock:&var_98];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_storeStrong((int64_t *)&self->_toolbarView, 0x0);
    objc_destroyWeak((int64_t *)&self->_endCardNoMediaView);
    objc_destroyWeak((int64_t *)&self->_endCardScreenshotView);
    objc_storeStrong((int64_t *)&self->_endCardAppStoreView, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(bool)shouldFadeInCloseButton {
    r0 = *(int8_t *)(int64_t *)&self->_shouldFadeInCloseButton;
    return r0;
}

-(void)setShouldFadeInCloseButton:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldFadeInCloseButton = arg2;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)endCardAppStoreView {
    r0 = self->_endCardAppStoreView;
    return r0;
}

-(void)setEndCardAppStoreView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_endCardAppStoreView, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)endCardScreenshotView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_endCardScreenshotView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setEndCardScreenshotView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_endCardScreenshotView, arg2);
    return;
}

-(void *)endCardNoMediaView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_endCardNoMediaView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setEndCardNoMediaView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_endCardNoMediaView, arg2);
    return;
}

-(void *)toolbarView {
    r0 = self->_toolbarView;
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_toolbarView, arg2);
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

-(bool)hasAppearedBefore {
    r0 = *(int8_t *)(int64_t *)&self->_hasAppearedBefore;
    return r0;
}

-(void)setHasAppearedBefore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasAppearedBefore = arg2;
    return;
}

-(bool)useNewToolbar {
    r0 = *(int8_t *)(int64_t *)&self->_useNewToolbar;
    return r0;
}

-(bool)isAppStoreEndCard {
    r0 = *(int8_t *)(int64_t *)&self->_isAppStoreEndCard;
    return r0;
}

-(void)setUseNewToolbar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useNewToolbar = arg2;
    return;
}

-(void)setIsAppStoreEndCard:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAppStoreEndCard = arg2;
    return;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
    return;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x0);
    return r0;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end