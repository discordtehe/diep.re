@implementation TJCUIWebPageView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:0x0 placement:r3];
    return r0;
}

-(void)layoutSubviews {
    [self positionBackButton];
    return;
}

-(void)animateCloseButton {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_backButton));
    [*(self + r20) setAlpha:r2];
    [self addSubview:*(self + r20)];
    [UIView animateWithDuration:r2 delay:r3 options:r4 animations:r5 completion:r6];
    return;
}

-(void)addBackButton {
    r0 = [UIButton buttonWithType:0x0];
    r0 = [r0 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_backButton));
    r8 = *(self + r24);
    *(self + r24) = r0;
    [r8 release];
    r21 = [[TJCUtil getPathToResource:@"TJCclose_button" ofType:@"png"] retain];
    r20 = [[UIImage imageNamed:r21] retain];
    [r21 release];
    r0 = [UIImageView alloc];
    r0 = [r0 initWithImage:r20];
    [r0 frame];
    [r0 frame];
    [*(self + r24) setFrame:r20];
    [self positionBackButton];
    [*(self + r24) addTarget:self action:@selector(backButtonTouched:) forControlEvents:0x40];
    r22 = *(self + r24);
    r23 = [[UIColor clearColor] retain];
    [r22 setBackgroundColor:r23];
    [r23 release];
    [*(self + r24) setImage:r20 forState:0x0];
    [*(self + r24) setAutoresizingMask:0x2d];
    [r0 release];
    [r20 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 placement:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
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
    r19 = [r2 retain];
    r0 = [[&var_60 super] initWithFrame:r2];
    r20 = r0;
    if (r20 != 0x0) {
            *(int8_t *)(int64_t *)&r20->_transparentWebView = 0x1;
            if (r19 != 0x0) {
                    r2 = [r19 webkitPreferred];
            }
            [r20 setWebkitPreferred:r2];
            [r20 initHelperWithFrame:r2];
            r0 = [r20 jsBridge];
            r0 = [r0 retain];
            [r0 setPlacement:r19];
            [r0 release];
            r0 = [r20 jsBridge];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setAdUnitVideoDelegate:r20];
            [r0 release];
            [r20 setForceTopView:[r19 isForcedTopView]];
            if (*(int8_t *)(int64_t *)&r20->_forceTopView != 0x0) {
                    r0 = [r19 topViewControllerClassName];
                    r29 = r29;
                    r22 = [r0 retain];
                    [NSString class];
                    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
                            r0 = [r19 topViewControllerClassName];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = [r0 length];
                            [r0 release];
                            [r22 release];
                            if (r24 != 0x0) {
                                    r0 = [r19 topViewControllerClassName];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = NSClassFromString(r0);
                                    [r0 release];
                                    if (r22 != 0x0) {
                                            r0 = [r22 alloc];
                                            r0 = [r0 init];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_topViewController));
                                            r8 = *(r20 + r9);
                                            *(r20 + r9) = r0;
                                            [r8 release];
                                            r0 = [r19 topViewControllerClassName];
                                            r29 = r29;
                                            r21 = [r0 retain];
                                            [TJCLog logWithLevel:0x4 format:@"Using Tapjoy Top View Controller class: %@"];
                                            r0 = r21;
                                    }
                                    else {
                                            r0 = [TJCTopViewController alloc];
                                            r0 = [r0 init];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_topViewController));
                                            r8 = *(r20 + r9);
                                            *(r20 + r9) = r0;
                                            r0 = r8;
                                    }
                            }
                            else {
                                    r0 = [TJCTopViewController alloc];
                                    r0 = [r0 init];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_topViewController));
                                    r8 = *(r20 + r9);
                                    *(r20 + r9) = r0;
                                    r0 = r8;
                            }
                    }
                    else {
                            [r22 release];
                            r0 = [TJCTopViewController alloc];
                            r0 = [r0 init];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_topViewController));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            r0 = r8;
                    }
                    [r0 release];
            }
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r20 selector:@selector(newOrientationChanged:) name:**_UIDeviceOrientationDidChangeNotification object:0x0];
            [r0 addObserver:r20 selector:@selector(forceClose) name:@"TJCDismissAdView" object:0x0];
            r20->_lastInterfaceOrientation = 0x0;
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)positionBackButton {
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
    r19 = self;
    r0 = [self webViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [r19 webViewController];
            r0 = [r0 retain];
            r22 = [r0 prefersStatusBarHidden];
            [r0 release];
            [r20 release];
            if (r22 != 0x0) {
                    asm { fcsel      d8, d1, d0, ne };
            }
    }
    else {
            [r20 release];
    }
    [r19 bounds];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_backButton));
    [*(r19 + r21) bounds];
    [*(r19 + r21) bounds];
    [*(r19 + r21) bounds];
    [*(r19 + r21) setFrame:r2];
    return;
}

-(void)initHelperWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_allowRedirect = 0x1;
    *(int8_t *)(int64_t *)&r19->_isOrientationLocked = 0x0;
    r0 = [TJCViewHandler alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandler));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [TJCLoadingView alloc];
    r0 = [r0 initWithFrame:r2];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadingView));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    *(int8_t *)(int64_t *)&r19->_customCloseBehavior = 0x0;
    *(int8_t *)(int64_t *)&r19->_waitingForDismiss = 0x0;
    *(int8_t *)(int64_t *)&r19->_shouldShowGenericErrorAlert = 0x1;
    [r19 addBackButton];
    [r19 setAutoresizingMask:0x12];
    objc_initWeak(&saved_fp - 0x48, r19);
    r0 = [r19 movieEnterObserver];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r2 = 0x12;
            [[NSNotificationCenter defaultCenter] retain];
            objc_copyWeak(&var_70 + 0x20, r29 - 0x48);
            r0 = [r21 addObserverForName:@"UIMoviePlayerControllerDidEnterFullscreenNotification" object:0x0 queue:0x0 usingBlock:&var_70];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setMovieEnterObserver:r22];
            [r22 release];
            [r21 release];
            objc_destroyWeak(&var_70 + 0x20);
    }
    r0 = [r19 movieExitObserver];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [[NSNotificationCenter defaultCenter] retain];
            objc_copyWeak(&var_98 + 0x20, r29 - 0x48);
            r0 = [r21 addObserverForName:@"UIMoviePlayerControllerWillExitFullscreenNotification" object:0x0 queue:0x0 usingBlock:&var_98];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setMovieExitObserver:r22];
            [r22 release];
            [r21 release];
            objc_destroyWeak(&var_98 + 0x20);
    }
    r0 = [r19 memoryWarningObserver];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [[NSNotificationCenter defaultCenter] retain];
            objc_copyWeak(&var_C0 + 0x20, r29 - 0x48);
            r0 = [r21 addObserverForName:@"UIApplicationDidReceiveMemoryWarningNotification" object:0x0 queue:0x0 usingBlock:&var_C0];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setMemoryWarningObserver:r22];
            [r22 release];
            [r21 release];
            objc_destroyWeak(&var_C0 + 0x20);
    }
    [r19 refreshWithFrame:r2];
    objc_destroyWeak(r29 - 0x48);
    return;
}

-(void)disableCommonViewElements {
    r0 = self->_loadingView;
    r0 = [r0 mainView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    [self->_backButton setHidden:0x1];
    return;
}

-(void)refreshWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_initWeak(&stack[-72], self);
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [self setComplete:&var_60];
    [self setFrame:&var_60];
    [self clearWebViewContents];
    [self refreshViewContentsWithFrame:&var_60];
    [self->_loadingView fadeIn];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void)loadViewWithHTMLString:(void *)arg2 creativeURL:(void *)arg3 {
    r21 = [arg2 retain];
    [self->_mainWebView loadHTMLCreative:r21 creativeURL:arg3];
    [r21 release];
    return;
}

-(void)loadViewWithHTMLString:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_allowRedirect = 0x1;
    r19 = self->_mainWebView;
    r23 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r24 = [[r0 serviceURL] retain];
    r21 = [[NSURL URLWithString:r24] retain];
    [r19 loadHTMLCreative:r23 creativeURL:r21];
    [r23 release];
    [r21 release];
    [r24 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)display {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setIsDisplayed:0x1];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isViewContentLoaded));
    if (*(int8_t *)(r19 + r20) == 0x0) {
            r2 = 0x1;
            if (r19->_htmlString != 0x0) {
                    r2 = 0x1;
                    [r19->_mainWebView loadHTMLCreative:r2 creativeURL:r19->_creativeURL];
                    *(int8_t *)(r19 + r20) = 0x1;
            }
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_orientationToSet));
    if (*(r19 + r20) != 0x0) {
            [r19 setOrientation:r2];
            *(r19 + r20) = 0x0;
    }
    [r19->_jsBridge display];
    [r19->_videoView setVisible];
    [r19->_mainWebView setAlpha:r2];
    [r19 animateCloseButton];
    return;
}

-(void)refreshViewContentsWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    [self removeAllSubviews];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundView));
    if (*(r19 + r20) == 0x0) {
            r0 = [TJCBasicWebView alloc];
            r0 = [r0 initWithFrame:*(int8_t *)(int64_t *)&r19->_webkitPreferred webkitPreferred:r3];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
    }
    [r19 setBackgroundViewContent:@"<!DOCTYPE html><html><head><title>Tapjoy Background Webview</title></head></html>"];
    [*(r19 + r20) setAutoresizingMask:0x12];
    [*(r19 + r20) setAutoresizesSubviews:0x1];
    [r19 addSubview:*(r19 + r20)];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoView));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [TJCVideoView alloc];
            r0 = [r0 initWithFrame:r2];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            r0 = *(r19 + r23);
    }
    [r0 setAutoresizingMask:0x12];
    [*(r19 + r23) setAutoresizesSubviews:0x1];
    [r19 addSubview:*(r19 + r23)];
    r26 = (int64_t *)&r19->_mainWebView;
    r0 = *r26;
    if (r0 == 0x0) {
            r23 = [TJCWebView alloc];
            r0 = [r19 webkitPreferred];
            r0 = [r23 initWithFrame:r0 webkitPreferred:r3];
            r8 = *r26;
            *r26 = r0;
            [r8 release];
            r0 = *r26;
    }
    [r0 setAutoresizingMask:0x12];
    if ([*r26 respondsToSelector:r2] != 0x0) {
            r23 = @selector(respondsToSelector:);
            r0 = *r26;
            r0 = [r0 scrollView];
            r0 = [r0 retain];
            [r0 setBounces:0x0];
            [r0 release];
            r0 = *r26;
            r0 = [r0 scrollView];
            r29 = r29;
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r23, @selector(setContentInsetAdjustmentBehavior:));
            [r0 release];
            if (r23 != 0x0) {
                    r0 = *r26;
                    r0 = [r0 scrollView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setContentInsetAdjustmentBehavior:r2];
                    [r22 release];
            }
    }
    [*r26 setAutoresizesSubviews:0x1];
    [*r26 setWebViewDelegate:r19];
    [r19 addSubview:*r26];
    r0 = [TJAdUnitJSBridge alloc];
    r0 = [r0 initWithAdView:r19 placement:0x0];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_jsBridge));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_loadingView));
    r0 = *(r19 + r23);
    r0 = [r0 mainView];
    r0 = [r0 retain];
    [r0 setFrame:r19];
    [r0 release];
    r21 = [[*(r19 + r23) mainView] retain];
    [r19 addSubview:r21];
    [r21 release];
    [*(r19 + r23) disable];
    [r19 animateCloseButton];
    [r19 setViewToTransparent:*(int8_t *)(int64_t *)&r19->_transparentWebView];
    return;
}

-(void)setupVideoPlayer:(void *)arg2 delegate:(void *)arg3 {
    r21 = [arg2 retain];
    [self->_videoView setupVideoPlayer:r21 delegate:arg3];
    [r21 release];
    return;
}

-(void)presentUnit:(bool)arg2 isTransparent:(bool)arg3 withCustomCloseBehavior:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = self;
    [self setViewToTransparent:arg2 ^ 0x1 | arg3];
    r0 = r21->_mainWebView;
    if (arg2 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    [r0 setAlpha:r2];
    [r21->_loadingView disable];
    *(int8_t *)(int64_t *)&r21->_customCloseBehavior = r19;
    return;
}

-(void)playVideo {
    [self->_videoView playVideo];
    return;
}

-(void)pauseVideo {
    [self->_videoView pauseVideo];
    return;
}

-(void)clearVideo {
    [self->_videoView clearVideo];
    return;
}

-(void)muteVideo:(bool)arg2 {
    [self->_videoView muteVideo:arg2];
    return;
}

-(bool)getVideoMuteStatus {
    r0 = self->_videoView;
    r0 = [r0 getMuteStatus];
    return r0;
}

-(void)customCloseCheck {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_waitingForDismiss != 0x0) {
            [r0 dismiss];
    }
    return;
}

-(void)backButtonTouched:(void *)arg2 {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)forceClose {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isDisplayed] != 0x0) {
            [r19 handleClose:0x1];
    }
    return;
}

-(void)handleClose:(bool)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_waitingForDismiss));
    if (*(int8_t *)(r19 + r8) != 0x0) {
            [r19 dismiss];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_customCloseBehavior != 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    [r19->_jsBridge viewShouldDismiss:r2];
                    [r19 performSelector:r2 withObject:r3 afterDelay:r4];
            }
            else {
                    [r19 dismiss];
            }
    }
    return;
}

-(void)dismiss {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r19->_mainWebView != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_viewClosing));
            if (*(int8_t *)(r19 + r20) == 0x0) {
                    r0 = r19->_complete;
                    if (r0 != 0x0) {
                            (*(r0 + 0x10))();
                    }
                    *(int8_t *)(r19 + r20) = 0x1;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isPrerendered));
                    if (*(int8_t *)(r19 + r20) != 0x0) {
                            [TJCViewHandler decrementPrerenderCount];
                            *(int8_t *)(r19 + r20) = 0x0;
                    }
                    [r19->_videoView dismiss];
                    [r19 clearWebViewContents];
            }
    }
    return;
}

-(void)giveBackNotification {
    *(int8_t *)(int64_t *)&self->_isViewVisible = 0x0;
    [self clearWebViewContents];
    [self removeFromSuperview];
    [self setTransform:&var_40];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r20 release];
    return;
}

-(void)setViewToTransparent:(bool)arg2 {
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
    *(int8_t *)(int64_t *)&r19->_transparentWebView = arg2;
    r20 = arg2 ^ 0x1;
    if ((arg2 & 0x1) != 0x0) {
            r0 = [UIColor clearColor];
    }
    else {
            r0 = [UIColor whiteColor];
    }
    r21 = [r0 retain];
    [r19 setBackgroundColor:r21];
    [r19 setOpaque:r20];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_mainWebView));
    [*(r19 + r24) setBackgroundColor:r21];
    [*(r19 + r24) setOpaque:r20];
    [r21 release];
    return;
}

-(void)clearWindow {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_forceTopView != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_tjAdsWindow));
            r22 = *(r19 + r21);
            if (r22 != 0x0) {
                    r0 = [NSNull null];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r22 != r0) {
                            [*(r19 + r21) setHidden:0x1];
                            r0 = *(r19 + r21);
                            *(r19 + r21) = 0x0;
                            [r0 release];
                    }
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_topViewController));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    return;
}

-(void)clearWebViewContents {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mainWebView));
    [*(self + r21) clearDelegates];
    [*(self + r21) removeFromSuperview];
    r0 = [self jsBridge];
    r0 = [r0 retain];
    [r0 clear];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_customCloseBehavior = 0x0;
    *(int8_t *)(int64_t *)&self->_waitingForDismiss = 0x0;
    *(int8_t *)(int64_t *)&self->_shouldShowGenericErrorAlert = 0x1;
    *(int8_t *)(int64_t *)&self->_viewClosing = 0x0;
    r0 = *(self + r21);
    *(self + r21) = 0x0;
    [r0 release];
    *(int8_t *)(int64_t *)&self->_isViewContentLoaded = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_htmlString));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_creativeURL));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    *(int8_t *)(int64_t *)&self->_isDisplayed = 0x0;
    return;
}

-(void)addSubview:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] addSubview:arg2];
    if (r19->_backButton != 0x0) {
            [r19 bringSubviewToFront:r2];
    }
    return;
}

-(void)handleOpenURLRequest:(void *)arg2 {
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
    r19 = [arg2 retain];
    r22 = [[UIApplication sharedApplication] retain];
    r0 = [r19 URL];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [r22 canOpenURL:r23];
    [r23 release];
    [r22 release];
    if (r24 != 0x0) {
            r20 = [[UIApplication sharedApplication] retain];
            [[r19 URL] retain];
            [r20 openURL:r2];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)setBackgroundViewColor:(void *)arg2 {
    [self->_backgroundView setWebViewBackgroundColor:arg2];
    return;
}

-(void)removeAllSubviews {
    r31 = r31 - 0x120;
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
    r0 = [self subviews];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r25 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(0x0 + r25 * 0x8) removeFromSuperview];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadURLRequest:(void *)arg2 withTimeOutInterval:(int)arg3 {
    r19 = self;
    r22 = [arg2 retain];
    [r19 setIsWebViewLoaded:0x0];
    r0 = [NSURL URLWithString:r22];
    r20 = [r0 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastClickedURL));
    r23 = *(r19 + r8);
    *(r19 + r8) = r22;
    r22 = [r22 retain];
    [r23 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_mainWebView));
    [*(r19 + r24) stopLoading];
    r23 = @class(NSMutableURLRequest);
    r3 = [TJSdkConfiguration getCachePolicy];
    asm { scvtf      d0, w21 };
    r21 = [[r23 requestWithURL:r20 cachePolicy:r3 timeoutInterval:r4] retain];
    [*(r19 + r24) loadRequest:r21];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)setBackgroundViewContent:(void *)arg2 {
    [self->_backgroundView setHTMLContent:arg2];
    return;
}

-(void)startAdContentTracking:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = self->_adContentTracker;
    if (r0 != 0x0) {
            [[[r0 startTrackingEvent:r19 dimensions:r20 values:r21] retain] release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)endAdContentTracking:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adContentTracker));
    if (*(r21 + r24) != 0x0) {
            r22 = [r22 retain];
            [r21 setAdContentTrackerDimension];
            r21 = [[*(r21 + r24) endTrackingEvent:r19 dimensions:r20 values:r22] retain];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)sendAdContentTracking:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adContentTracker));
    if (*(r21 + r24) != 0x0) {
            r22 = [r22 retain];
            [r21 setAdContentTrackerDimension];
            r21 = [[*(r21 + r24) sendTrackingEvent:r19 dimensions:r20 values:r22] retain];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setAdContentTrackerDimension {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0->_adContentTracker;
    if (r19 != 0x0) {
            r20 = [[NSNumber numberWithBool:r2] retain];
            [r19 addDimension:@"prerendered" value:r20];
            [r20 release];
    }
    return;
}

-(void)dealloc {
    r22 = [[NSNotificationCenter defaultCenter] retain];
    r23 = [[self movieEnterObserver] retain];
    [r22 removeObserver:r23];
    [r23 release];
    [r22 release];
    r22 = [[NSNotificationCenter defaultCenter] retain];
    r23 = [[self movieExitObserver] retain];
    [r22 removeObserver:r23];
    [r23 release];
    [r22 release];
    r22 = [[NSNotificationCenter defaultCenter] retain];
    r23 = [[self memoryWarningObserver] retain];
    [r22 removeObserver:r23];
    [r23 release];
    [r22 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_40 super] dealloc];
    return;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [TJCLog logWithLevel:0x4 format:@"TJC CUSTOM WEB Page View Alert Click Called (Net Error Case)"];
    if (arg3 == 0x1) {
            [r19 loadURLRequest:r19->_lastClickedURL withTimeOutInterval:0x23];
    }
    *(int8_t *)(int64_t *)&r19->_isAlertViewVisible = 0x0;
    return;
}

-(void *)connection:(void *)arg2 willCacheResponse:(void *)arg3 {
    return 0x0;
}

-(void)didStartNavigation {
    [self->_jsBridge clearVolumeCheckTimer];
    *(int8_t *)(int64_t *)&self->_isViewVisible = 0x1;
    [self->_loadingView fadeIn];
    return;
}

-(void)finishLoadOrNavigation {
    [self setIsWebViewLoaded:0x1];
    [self->_loadingView fadeOut];
    return;
}

-(bool)shouldStartDecidePolicy:(void *)arg2 navigationType:(long long)arg3 {
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
    r22 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r21 = [[r0 absoluteString] retain];
    [r0 release];
    r0 = [r19 URL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isFileURL];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 stringByReplacingOccurrencesOfString:@"file://" withString:@""];
            r29 = r29;
            r24 = [r0 retain];
            [r21 release];
            r21 = r24;
    }
    if (r21 == 0x0 || [r21 rangeOfString:@"dismiss" options:0x1] != 0x7fffffffffffffff) goto loc_10090be38;

loc_10090bdf4:
    r23 = [[r19 URL] retain];
    if (([TJCUtil shouldOpenURLInternally:r23] & 0x1) == 0x0) goto loc_10090be78;

loc_10090be2c:
    [r23 release];
    goto loc_10090bea8;

loc_10090bea8:
    r23 = 0x1;
    if (r22 != -0x1) {
            r23 = 0x1;
            *(int8_t *)(int64_t *)&r20->_allowRedirect = r23;
            *(int8_t *)(int64_t *)&r20->_customCloseBehavior = 0x0;
            *(int8_t *)(int64_t *)&r20->_waitingForDismiss = 0x0;
    }
    goto loc_10090be4c;

loc_10090be4c:
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;

loc_10090be78:
    r24 = *(int8_t *)(int64_t *)&r20->_allowRedirect;
    [r23 release];
    if (r24 == 0x0) goto loc_10090bea8;

loc_10090be90:
    [r20 handleOpenURLRequest:r19];
    goto loc_10090be48;

loc_10090be48:
    r23 = 0x0;
    goto loc_10090be4c;

loc_10090be38:
    [r20 dismiss];
    goto loc_10090be48;
}

-(void)failLoadOrNavigationWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 setIsWebViewLoaded:0x0];
    r0 = [r19 description];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [TJCLog logWithLevel:0x4 format:@"Web view loading error %@"];
    [r22 release];
    if ([r19 code] == 0x66) {
            r0 = [r19 domain];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isEqual:r2];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    if (*(int8_t *)(int64_t *)&r20->_isViewVisible != 0x0) {
                            if (([TJCUtil isGenericErrorAlertDisabled] & 0x1) == 0x0 && *(int8_t *)(int64_t *)&r20->_shouldShowGenericErrorAlert != 0x0) {
                                    [TJCUtil showGenericConnectionErrorAlertWithDelegate:r20];
                                    *(int8_t *)(int64_t *)&r20->_isAlertViewVisible = 0x1;
                            }
                            *(int8_t *)(int64_t *)&r20->_customCloseBehavior = 0x0;
                            *(int8_t *)(int64_t *)&r20->_waitingForDismiss = 0x0;
                    }
                    [r20->_loadingView fadeOut];
                    r0 = r20->_mainWebView;
                    if (r0 != 0x0) {
                            [r0 setUserInteractionEnabled:0x1];
                    }
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 postNotificationName:r2 object:r3];
                    [r20 release];
            }
    }
    else {
            if (*(int8_t *)(int64_t *)&r20->_isViewVisible != 0x0) {
                    if (([TJCUtil isGenericErrorAlertDisabled] & 0x1) == 0x0 && *(int8_t *)(int64_t *)&r20->_shouldShowGenericErrorAlert != 0x0) {
                            [TJCUtil showGenericConnectionErrorAlertWithDelegate:r20];
                            *(int8_t *)(int64_t *)&r20->_isAlertViewVisible = 0x1;
                    }
                    *(int8_t *)(int64_t *)&r20->_customCloseBehavior = 0x0;
                    *(int8_t *)(int64_t *)&r20->_waitingForDismiss = 0x0;
            }
            [r20->_loadingView fadeOut];
            r0 = r20->_mainWebView;
            if (r0 != 0x0) {
                    [r0 setUserInteractionEnabled:0x1];
            }
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:r2 object:r3];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)videoAdCompleted {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_webViewVideoDelegate;
    r21 = objc_loadWeakRetained(r19);
    if (r21 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            r23 = [r0 respondsToSelector:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r19);
                    [r0 videoAdCompleted];
                    [r0 release];
            }
    }
    return;
}

-(void)videoAdBegan {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_webViewVideoDelegate;
    r21 = objc_loadWeakRetained(r19);
    if (r21 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            r23 = [r0 respondsToSelector:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r19);
                    [r0 videoAdBegan];
                    [r0 release];
            }
    }
    return;
}

-(void)videoAdError:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = (int64_t *)&self->_webViewVideoDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            r24 = [r0 respondsToSelector:@selector(videoAdError:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 videoAdError:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void *)webViewController {
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
    r0 = [self superview];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10090c41c;

loc_10090c3b4:
    r22 = @selector(class);
    r0 = [r20 nextResponder];
    r29 = r29;
    r24 = [r0 retain];
    objc_msgSend(@class(UIViewController), r22);
    if ((objc_msgSend(r24, r23) & 0x1) != 0x0) goto loc_10090c424;

loc_10090c3ec:
    [r24 release];
    r0 = [r20 superview];
    r29 = r29;
    r24 = [r0 retain];
    [r20 release];
    r20 = r24;
    if (r24 != 0x0) goto loc_10090c3b4;

loc_10090c41c:
    r19 = 0x0;
    goto loc_10090c440;

loc_10090c440:
    r0 = [r19 autorelease];
    return r0;

loc_10090c424:
    r19 = [r24 retain];
    [r24 release];
    [r20 release];
    goto loc_10090c440;
}

-(void)showURLFullScreen:(void *)arg2 sourceView:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 canOpenURL:r19];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r0 openURL:r2];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)setRequestedOrientation:(long long)arg2 {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [r0 statusBarOrientation];
    [r0 release];
    [self angleFromOrientation:r22];
    [self angleFromOrientation:arg2];
    [self rotateToOrientationAngle:arg2];
    return;
}

-(void)setOrientation:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isDisplayed != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r22 = [r0 statusBarOrientation];
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lockedOrientation));
            r9 = *(r19 + r8);
            if (r9 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r9 = r9;
                    }
                    else {
                            r9 = r22;
                    }
            }
            if (r20 <= 0x4) {
                    if (r9 >= 0x3) {
                            *(r19 + r8) = r9;
                    }
                    else {
                            *(r19 + r8) = r20;
                            [r19 setRequestedOrientation:r20];
                    }
            }
            else {
                    if ((r9 - 0x3 | r20 - 0x1) <= 0x1) {
                            *(r19 + r8) = r20;
                            [r19 setRequestedOrientation:r20];
                    }
                    else {
                            *(r19 + r8) = r9;
                    }
            }
            *(int8_t *)(int64_t *)&r19->_isOrientationLocked = 0x1;
            [r19->_topViewController setCanRotate:0x0];
    }
    else {
            r19->_orientationToSet = r20;
    }
    return;
}

-(void)unsetOrientation {
    *(int8_t *)(int64_t *)&self->_isOrientationLocked = 0x0;
    [self->_topViewController setCanRotate:0x1];
    self->_lockedOrientation = 0x0;
    self->_lastInterfaceOrientation = 0x0;
    self->_orientationToSet = 0x0;
    [self rotateToOrientationAngle:0x1];
    return;
}

-(void)newOrientationChanged:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r19->_isOrientationLocked != 0x0 && *(int8_t *)(int64_t *)&r19->_forceTopView == 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r21 = [r0 statusBarOrientation];
            [r0 release];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_lastInterfaceOrientation));
            if (r21 != *(r19 + r23)) {
                    [r19 angleFromOrientation:r21];
                    r2 = r19->_lockedOrientation;
                    [r19 angleFromOrientation:r2];
                    [r19 rotateToOrientationAngle:r2];
                    *(r19 + r23) = r21;
            }
    }
    [r20 release];
    return;
}

-(double)angleFromOrientation:(long long)arg2 {
    r0 = self;
    r8 = arg2 - 0x2;
    return r0;
}

-(void)preloadAdUnit:(void *)arg2 creativeURL:(void *)arg3 completion:(void *)arg4 {
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
    r22 = arg3;
    r23 = arg2;
    r20 = self;
    r19 = [r23 retain];
    r21 = [r22 retain];
    r0 = [arg4 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_contentReady));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    if ([TJCViewHandler canPrerenderAdUnit] != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_isViewContentLoaded));
            if (*(int8_t *)(r20 + r25) != 0x0) {
                    [r20 fireContentReady];
            }
            else {
                    objc_storeStrong((int64_t *)&r20->_htmlString, r23);
                    objc_storeStrong((int64_t *)&r20->_creativeURL, r22);
                    [r20->_mainWebView loadHTMLCreative:r19 creativeURL:r21];
                    *(int8_t *)(r20 + r25) = 0x1;
                    [TJCViewHandler incrementPrerenderCount];
                    *(int8_t *)(int64_t *)&r20->_isPrerendered = 0x1;
            }
    }
    else {
            [r20 fireContentReady];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)fireContentReady {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_contentReady));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)rotateToOrientationAngle:(double)arg2 {
    r31 = r31 - 0x1b0;
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
    CGAffineTransformMakeRotation(self);
    q0 = var_108;
    [r19 setTransform:&var_140];
    [UIView commitAnimations];
    if (*(int8_t *)(int64_t *)&r19->_forceTopView == 0x0) goto loc_10090c8f8;

loc_10090c8bc:
    r0 = [r19 superview];
    r0 = [r0 retain];
    r20 = r0;
    [r0 bounds];
    [r19 setFrame:r2];
    goto loc_10090cb94;

loc_10090cb94:
    r0 = r20;
    goto loc_10090cb98;

loc_10090cb98:
    var_188 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard != var_188) {
            __stack_chk_fail();
    }
    return;

loc_10090c8f8:
    r20 = NSClassFromString(@"FYBUIWebView");
    r21 = NSClassFromString(@"UADSWebViewBackgroundView");
    if (r20 == 0x0) goto loc_10090c950;

loc_10090c91c:
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    if (r20 == r22) goto loc_10090cae0;

loc_10090c944:
    [r22 release];
    goto loc_10090c990;

loc_10090c990:
    var_170 = q0;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 subviews];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_190 = r1;
    r24 = objc_msgSend(r22, r1);
    if (r24 == 0x0) goto loc_10090caec;

loc_10090ca24:
    r27 = *var_170;
    r8 = 0x101137000;
    goto loc_10090ca30;

loc_10090ca30:
    r28 = 0x0;
    r23 = r8;
    r25 = *(r8 + 0xc70);
    goto loc_10090ca3c;

loc_10090ca3c:
    if (*var_170 != r27) {
            objc_enumerationMutation(r22);
    }
    r26 = *(var_178 + r28 * 0x8);
    if ((objc_msgSend(r26, r25) & 0x1) != 0x0 || (objc_msgSend(r26, r25) & 0x1) != 0x0) goto loc_10090ca84;

loc_10090cab8:
    [r26 bounds];
    [r19 setFrame:r2];
    r0 = r22;
    goto loc_10090cb98;

loc_10090ca84:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_10090ca3c;

loc_10090ca90:
    r24 = objc_msgSend(r22, var_190);
    r8 = r23;
    if (r24 != 0x0) goto loc_10090ca30;

loc_10090caec:
    [r22 release];
    goto loc_10090caf4;

loc_10090caf4:
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r0 = [r0 subviews];
    r0 = [r0 retain];
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    [r0 bounds];
    [r19 setFrame:r2];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_10090cb94;

loc_10090cae0:
    r24 = 0x1;
    if (r21 != 0x0) goto loc_10090c958;

loc_10090cae8:
    if (r24 != 0x0) {
            [r22 release];
    }
    goto loc_10090caf4;

loc_10090c958:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    if (r24 != 0x0) {
            [r22 release];
    }
    if (r21 == r23) goto loc_10090caf4;
    goto loc_10090c990;

loc_10090c950:
    r24 = 0x0;
    if (r21 == 0x0) goto loc_10090cae8;
}

-(void *)mainWebView {
    r0 = self->_mainWebView;
    return r0;
}

-(void)setupAndDisplay:(void *)arg2 placement:(void *)arg3 {
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
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    if (*(int8_t *)(int64_t *)&r19->_forceTopView != 0x0) {
            r0 = [UIWindow alloc];
            r0 = [r0 init];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_tjAdsWindow));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r24 = [[UIColor clearColor] retain];
            r2 = r24;
            [*(r19 + r25) setBackgroundColor:r2];
            [r24 release];
            [*(r19 + r25) setWindowLevel:r2];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 bounds];
            [*(r19 + r25) setFrame:r2];
            [r0 release];
            r24 = [r19->_topViewController retain];
            [r21 release];
            r21 = [[UIColor clearColor] retain];
            r0 = [r24 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setBackgroundColor:r21];
            [r0 release];
            [r21 release];
            [*(r19 + r25) setRootViewController:r24];
            [*(r19 + r25) makeKeyAndVisible];
            [*(r19 + r25) setHidden:0x0];
            r21 = r24;
    }
    if (r21 != 0x0) {
            [r20 setViewControllerBeforeRedirect:r21];
            r0 = [r21 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addSubview:r19];
            [r0 release];
    }
    else {
            r0 = [r19 viewHandler];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 viewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setSubview:r19];
            [r0 release];
            [r21 release];
            r21 = 0x0;
    }
    r0 = [r19 superview];
    r0 = [r0 retain];
    [r0 bounds];
    [r19 setFrame:r2];
    [r0 release];
    r0 = [r19 viewHandler];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 viewController];
    r0 = [r0 retain];
    [r0 setPlacementViewDelegate:r20];
    [r0 release];
    [r22 release];
    [r19 display];
    [r20 release];
    [r21 release];
    return;
}

-(void)setMainWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mainWebView, arg2);
    return;
}

-(void *)videoView {
    r0 = self->_videoView;
    return r0;
}

-(void)setVideoView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoView, arg2);
    return;
}

-(void *)backgroundView {
    r0 = self->_backgroundView;
    return r0;
}

-(void)setBackgroundView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundView, arg2);
    return;
}

-(void *)loadingView {
    r0 = self->_loadingView;
    return r0;
}

-(void)setLoadingView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loadingView, arg2);
    return;
}

-(bool)isViewVisible {
    r0 = *(int8_t *)(int64_t *)&self->_isViewVisible;
    return r0;
}

-(void)setIsViewVisible:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isViewVisible = arg2;
    return;
}

-(bool)isAlertViewVisible {
    r0 = *(int8_t *)(int64_t *)&self->_isAlertViewVisible;
    return r0;
}

-(void)setIsAlertViewVisible:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAlertViewVisible = arg2;
    return;
}

-(void *)backButton {
    r0 = self->_backButton;
    return r0;
}

-(void)setBackButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backButton, arg2);
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

-(void *)jsBridge {
    r0 = self->_jsBridge;
    return r0;
}

-(void)setJsBridge:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_jsBridge, arg2);
    return;
}

-(void *)viewHandler {
    r0 = self->_viewHandler;
    return r0;
}

-(void)setViewHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewHandler, arg2);
    return;
}

-(bool)allowRedirect {
    r0 = *(int8_t *)(int64_t *)&self->_allowRedirect;
    return r0;
}

-(void)setAllowRedirect:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowRedirect = arg2;
    return;
}

-(bool)transparentWebView {
    r0 = *(int8_t *)(int64_t *)&self->_transparentWebView;
    return r0;
}

-(void)setTransparentWebView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_transparentWebView = arg2;
    return;
}

-(bool)waitingForDismiss {
    r0 = *(int8_t *)(int64_t *)&self->_waitingForDismiss;
    return r0;
}

-(void)setWaitingForDismiss:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_waitingForDismiss = arg2;
    return;
}

-(bool)customCloseBehavior {
    r0 = *(int8_t *)(int64_t *)&self->_customCloseBehavior;
    return r0;
}

-(void)setCustomCloseBehavior:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_customCloseBehavior = arg2;
    return;
}

-(bool)viewClosing {
    r0 = *(int8_t *)(int64_t *)&self->_viewClosing;
    return r0;
}

-(void)setViewClosing:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_viewClosing = arg2;
    return;
}

-(bool)shouldShowGenericErrorAlert {
    r0 = *(int8_t *)(int64_t *)&self->_shouldShowGenericErrorAlert;
    return r0;
}

-(void)setShouldShowGenericErrorAlert:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldShowGenericErrorAlert = arg2;
    return;
}

-(void *)webViewVideoDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewVideoDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWebViewVideoDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webViewVideoDelegate, arg2);
    return;
}

-(void *)complete {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_complete)), 0x0);
    return r0;
}

-(void)setComplete:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isOrientationLocked {
    r0 = *(int8_t *)(int64_t *)&self->_isOrientationLocked;
    return r0;
}

-(void)setIsOrientationLocked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isOrientationLocked = arg2;
    return;
}

-(long long)lockedOrientation {
    r0 = self->_lockedOrientation;
    return r0;
}

-(void)setLockedOrientation:(long long)arg2 {
    self->_lockedOrientation = arg2;
    return;
}

-(long long)lastInterfaceOrientation {
    r0 = self->_lastInterfaceOrientation;
    return r0;
}

-(void)setLastInterfaceOrientation:(long long)arg2 {
    self->_lastInterfaceOrientation = arg2;
    return;
}

-(void *)contentReady {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_contentReady)), 0x0);
    return r0;
}

-(void)setContentReady:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isWebViewLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_isWebViewLoaded;
    return r0;
}

-(void)setIsWebViewLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isWebViewLoaded = arg2;
    return;
}

-(bool)isViewContentLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_isViewContentLoaded;
    return r0;
}

-(void)setIsViewContentLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isViewContentLoaded = arg2;
    return;
}

-(bool)isPrerendered {
    r0 = *(int8_t *)(int64_t *)&self->_isPrerendered;
    return r0;
}

-(void)setIsPrerendered:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPrerendered = arg2;
    return;
}

-(bool)isDisplayed {
    r0 = *(int8_t *)(int64_t *)&self->_isDisplayed;
    return r0;
}

-(void)setIsDisplayed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isDisplayed = arg2;
    return;
}

-(void *)creativeURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_creativeURL)), 0x0);
    return r0;
}

-(void)setCreativeURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)htmlString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_htmlString)), 0x0);
    return r0;
}

-(void)setHtmlString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adContentTracker {
    r0 = self->_adContentTracker;
    return r0;
}

-(void)setAdContentTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adContentTracker, arg2);
    return;
}

-(void *)lastClickedURL {
    r0 = self->_lastClickedURL;
    return r0;
}

-(void)setLastClickedURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lastClickedURL, arg2);
    return;
}

-(void *)movieEnterObserver {
    r0 = self->_movieEnterObserver;
    return r0;
}

-(void)setMovieEnterObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_movieEnterObserver, arg2);
    return;
}

-(void *)movieExitObserver {
    r0 = self->_movieExitObserver;
    return r0;
}

-(void)setMovieExitObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_movieExitObserver, arg2);
    return;
}

-(void *)memoryWarningObserver {
    r0 = self->_memoryWarningObserver;
    return r0;
}

-(void)setMemoryWarningObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_memoryWarningObserver, arg2);
    return;
}

-(bool)webkitPreferred {
    r0 = *(int8_t *)(int64_t *)&self->_webkitPreferred;
    return r0;
}

-(void)setWebkitPreferred:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webkitPreferred = arg2;
    return;
}

-(bool)forceTopView {
    r0 = *(int8_t *)(int64_t *)&self->_forceTopView;
    return r0;
}

-(void)setForceTopView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceTopView = arg2;
    return;
}

-(void *)tjAdsWindow {
    r0 = self->_tjAdsWindow;
    return r0;
}

-(void)setTjAdsWindow:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tjAdsWindow, arg2);
    return;
}

-(void *)topViewController {
    r0 = self->_topViewController;
    return r0;
}

-(void)setTopViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_topViewController, arg2);
    return;
}

-(long long)orientationToSet {
    r0 = self->_orientationToSet;
    return r0;
}

-(void)setOrientationToSet:(long long)arg2 {
    self->_orientationToSet = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_topViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_tjAdsWindow, 0x0);
    objc_storeStrong((int64_t *)&self->_memoryWarningObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_movieExitObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_movieEnterObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_lastClickedURL, 0x0);
    objc_storeStrong((int64_t *)&self->_adContentTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_htmlString, 0x0);
    objc_storeStrong((int64_t *)&self->_creativeURL, 0x0);
    objc_storeStrong((int64_t *)&self->_contentReady, 0x0);
    objc_storeStrong((int64_t *)&self->_complete, 0x0);
    objc_destroyWeak((int64_t *)&self->_webViewVideoDelegate);
    objc_storeStrong((int64_t *)&self->_viewHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_jsBridge, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_backButton, 0x0);
    objc_storeStrong((int64_t *)&self->_loadingView, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoView, 0x0);
    objc_storeStrong((int64_t *)&self->_mainWebView, 0x0);
    return;
}

@end