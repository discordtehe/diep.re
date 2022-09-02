@implementation SupersonicAdsView

-(bool)isPresented {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self superview] retain];
    if (r20 != 0x0) {
            r19 = [r19 isHidden];
            [r20 release];
            if ((r19 & 0x1) == 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            [r20 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[UIColor clearColor] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
            [r19 setOpaque:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [self tap];
    r0 = [r0 retain];
    [r0 removeTarget:self action:0x0];
    [r0 release];
    r0 = [self tap];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)VideoExitFullScreen:(void *)arg2 {
    [self setHidden:0x0];
    return;
}

-(void)VideoEnterFullScreen:(void *)arg2 {
    [self setHidden:0x1];
    return;
}

-(void)animateView {
    [UIView animateWithDuration:0x100e8de30 animations:0x0 completion:r4];
    return;
}

-(void)hideIfWKWebView:(bool)arg2 {
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
    r21 = arg2;
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 webViewClass];
    r0 = NSStringFromClass(r0);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r25 == 0x0) goto loc_10071ecf0;

loc_10071ebe4:
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setHidden:r21];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r21 == 0x0) goto .l1;

loc_10071ec58:
    r21 = [[SSAHelperMethods applicationKeyWindow] retain];
    r0 = @class(SupersonicAdsPublisher);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r22 = [[r0 view] retain];
    [r21 insertSubview:r22 atIndex:0x0];
    [r22 release];
    [r0 release];
    [r20 release];
    r0 = r21;
    goto loc_10071ed58;

loc_10071ed58:
    [r0 release];
    return;

.l1:
    return;

loc_10071ecf0:
    if (r21 == 0x0) goto .l1;

loc_10071ecf4:
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r21 release];
    [r19 release];
    r0 = r20;
    goto loc_10071ed58;
}

-(void)show:(unsigned long long)arg2 withView:(void *)arg3 {
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
    r20 = [arg3 retain];
    [r19 prepareViewForPresentation];
    if (r20 != 0x0) {
            [r20 addSubview:r2];
    }
    else {
            r0 = [r19 applicationKeyWindow];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 subviews];
            r0 = [r0 retain];
            r23 = [[r0 lastObject] retain];
            [r0 release];
            [r21 release];
            [r23 addSubview:r2];
            [r23 release];
    }
    [r19 animateView];
    [r20 release];
    return;
}

-(void)show:(unsigned long long)arg2 {
    [self show:arg2 withView:0x0];
    return;
}

-(void)hideSuperSonicAdsViewWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r20 = [arg2 retain];
    [[&var_58 super] setOrientationUpdates:0x0];
    r0 = [self forceCloseTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setForceCloseTimer:0x0];
    r21 = [[SupersonicAdsPublisher sharedInstance] retain];
    r22 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x40 forKeys:&var_48 count:0x1];
    r23 = [r0 retain];
    [r21 runCommand:@"viewableChange" andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r23 release];
    [r22 release];
    [r21 release];
    var_60 = r20;
    r20 = [r20 retain];
    [UIView animateWithDuration:0x100e8de70 animations:&var_88 completion:0x0];
    [var_60 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)prepareViewForPresentation {
    r31 = r31 - 0xa0;
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
    r19 = self;
    [[&var_88 super] setOrientationUpdates:0x1];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setSupersonicAdsView:r19];
    [r0 release];
    [r19 hideIfWKWebView:0x0];
    if (([r19 isPresented] & 0x1) != 0x0) goto loc_10071f4cc;

loc_10071ee44:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) == 0x0) goto loc_10071eefc;

loc_10071ee84:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 userInterfaceIdiom];
    [r0 release];
    [r21 release];
    if (r23 != 0x1) goto loc_10071ef04;

loc_10071eec0:
    r0 = [UIColor colorWithWhite:@selector(userInterfaceIdiom) alpha:r3];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setBackgroundColor:r21];
    goto loc_10071eefc;

loc_10071eefc:
    [r21 release];
    goto loc_10071ef04;

loc_10071ef04:
    r0 = @class(SupersonicAdsPublisher);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 webViewController] retain];
    [r0 release];
    r0 = [r21 view];
    r0 = [r0 retain];
    [r0 setAlpha:@selector(userInterfaceIdiom)];
    [r0 release];
    r25 = [[r21 view] retain];
    [r19 addSubview:r25];
    [r25 release];
    r0 = [r21 view];
    r0 = [r0 retain];
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r0 release];
    r26 = [[r21 view] retain];
    [[[ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r26] retain] release];
    [r26 release];
    r26 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(webviewTapped:)];
    [r19 setTap:r26];
    [r26 release];
    r0 = [r19 tap];
    r0 = [r0 retain];
    [r0 setNumberOfTapsRequired:0x1];
    [r0 release];
    r0 = [r19 tap];
    r0 = [r0 retain];
    [r0 setDelegate:r19];
    [r0 release];
    r0 = @class(SupersonicAdsPublisher);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r24 = [[r0 view] retain];
    r26 = [[r19 tap] retain];
    [r24 addGestureRecognizer:r26];
    [r26 release];
    [r24 release];
    [r0 release];
    [r27 release];
    r23 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0x0];
    [r19 setActivityIndicator:r23];
    [r23 release];
    [r19 center];
    r0 = [r19 activityIndicator];
    r0 = [r0 retain];
    [r0 setCenter:r23];
    [r0 release];
    r0 = [r19 activityIndicator];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x2d];
    [r0 release];
    r0 = [r19 activityIndicator];
    r0 = [r0 retain];
    [r0 setHidesWhenStopped:0x1];
    [r0 release];
    r24 = [[r19 activityIndicator] retain];
    r25 = [[UIColor lightGrayColor] retain];
    [r24 setColor:r25];
    [r25 release];
    [r24 release];
    r0 = [r19 activityIndicator];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r23 = [[r19 activityIndicator] retain];
    [r19 addSubview:r23];
    [r23 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(VideoExitFullScreen:) name:@"UIMoviePlayerControllerWillExitFullscreenNotification" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(VideoEnterFullScreen:) name:@"UIMoviePlayerControllerDidEnterFullscreenNotification" object:0x0];
    [r0 release];
    r20 = [[SupersonicAdsPublisher sharedInstance] retain];
    r22 = [@(YES) retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1] retain];
    [r20 runCommand:@"viewableChange" andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [[r0 keyWindow] retain];
    [r19 setApplicationKeyWindow:r22];
    [r22 release];
    [r0 release];
    [r21 release];
    goto loc_10071f4cc;

loc_10071f4cc:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)openSecondaryWebviewWithUrl:(void *)arg2 controlsFrames:(void *)arg3 isHidden:(bool)arg4 completion:(void *)arg5 {
    r31 = r31 - 0x120;
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
    r26 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg5 retain];
    if ([r22 hasSecondaryView] != 0x0) {
            [r22 loadSecondaryWebviewWithUrl:r19];
            [r22->secondaryViewContainer setHidden:r26];
            r22 = [[SupersonicLogManager sharedManager] retain];
            r23 = [[NSString stringWithFormat:@"%@"] retain];
            [r22 log:r23 withLevel:0x1 withTag:0x6];
            [r23 release];
            [r22 release];
    }
    else {
            var_E8 = r24;
            r0 = [SupersonicAdsPublisher sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 webViewController];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            r8 = 0x101137000;
            var_E0 = r20;
            r0 = objc_msgSend(r20, *(r8 + 0x410));
            var_F8 = r0;
            if (r0 == 0x0) {
                    r8 = 0x101137000;
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            var_EC = r8;
            r0 = [r23 view];
            r0 = [r0 retain];
            r28 = r0;
            [r0 bounds];
            r0 = [r23 view];
            r0 = [r0 retain];
            r21 = r0;
            [r0 bounds];
            r0 = [r23 view];
            r0 = [r0 retain];
            r25 = r0;
            [r0 bounds];
            r0 = [r22 createSeconderyViewContainerWithFrame:r26 makeHidden:r3];
            r0 = [r0 retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(secondaryViewContainer));
            r8 = *(r22 + r20);
            *(r22 + r20) = r0;
            [r8 release];
            [r25 release];
            [r21 release];
            [r28 release];
            r0 = [r23 view];
            r0 = [r0 retain];
            r21 = r0;
            [r0 bounds];
            r0 = [r23 view];
            r0 = [r0 retain];
            r25 = r0;
            [r0 bounds];
            v2 = v2;
            r0 = [r22 createSeconderyWebviewWithFrame:r26];
            r0 = [r0 retain];
            var_D8 = r19;
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_ssaSecondWebView));
            r8 = *(r22 + r19);
            *(r22 + r19) = r0;
            [r8 release];
            [r25 release];
            [r21 release];
            r21 = *(r22 + r20);
            r25 = [[*(r22 + r19) view] retain];
            [r21 addSubview:r25];
            [r25 release];
            r21 = *(r22 + r20);
            r25 = [[r23 view] retain];
            [r22 insertSubview:r21 aboveSubview:r25];
            [r25 release];
            r0 = [UIActivityIndicatorView alloc];
            r0 = [r0 initWithActivityIndicatorStyle:0x0];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(secondarySpinner));
            r8 = *(r22 + r26);
            *(r22 + r26) = r0;
            [r8 release];
            [*(r22 + r26) setHidesWhenStopped:0x1];
            r0 = *(r22 + r19);
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 center];
            [*(r22 + r26) setCenter:0x1];
            [r0 release];
            r21 = *(r22 + r26);
            r25 = [[UIColor blackColor] retain];
            [r21 setColor:r25];
            [r25 release];
            [*(r22 + r20) addSubview:*(r22 + r26)];
            [*(r22 + r26) setAutoresizingMask:0x3f];
            r0 = [NSURL URLWithString:var_D8];
            r29 = r29;
            r27 = [r0 retain];
            r28 = [[NSURLRequest alloc] initWithURL:r27];
            [*(r22 + r26) startAnimating];
            [*(r22 + r19) loadRequest:r28];
            if (var_F8 != 0x0) {
                    r25 = @selector(frame);
            }
            else {
                    r0 = *(r22 + r19);
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    r25 = @selector(frame);
                    objc_msgSend(r0, r25);
                    r0 = [r22 createCloseButtonWithFrame:@"X_Black.png" imageName:r3];
                    r29 = r29;
                    [r0 retain];
                    [r21 release];
                    [*(r22 + r20) addSubview:r2];
                    [r19 release];
            }
            r0 = [r23 view];
            r0 = [r0 retain];
            objc_msgSend(r0, r25);
            r20 = var_E0;
            r21 = [[r22 determineControlFramesFromButtonsData:r20 relativeToFrame:r3] retain];
            [r19 release];
            var_B0 = r23;
            r23 = [r23 retain];
            var_A8 = r21;
            r21 = [r21 retain];
            r24 = var_E8;
            var_A0 = [r24 retain];
            [UIView animateWithDuration:&var_88 animations:&var_D0 completion:r4];
            [var_A0 release];
            [var_A8 release];
            [var_B0 release];
            [r21 release];
            [r23 release];
            [r28 release];
            [r27 release];
            r19 = var_D8;
    }
    [r24 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)resizeSecondaryWebViewWithCompletion:(void *)arg2 {
    [arg2 retain];
    r8 = *_CGRectZero;
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 resizeProperties] retain];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    [r0 integerValue];
    asm { scvtf      d0, x0 };
    r0 = objc_msgSend(r21, r23);
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    asm { scvtf      d0, x0 };
    r0 = objc_msgSend(r21, r23);
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    asm { scvtf      d10, x0 };
    r0 = objc_msgSend(r21, r23);
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    asm { scvtf      d11, x0 };
    [r23 release];
    [r26 release];
    [r25 release];
    [r22 release];
    var_B8 = r20;
    r20 = [r20 retain];
    [UIView animateWithDuration:&var_A8 animations:&var_D8 completion:r4];
    [var_B8 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)loadSecondaryWebviewWithUrl:(void *)arg2 {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_ssaSecondWebView));
    if (*(r20 + r23) != 0x0 && [r19 length] != 0x0) {
            r21 = [NSURLRequest alloc];
            r22 = [[NSURL URLWithString:r19] retain];
            r21 = [r21 initWithURL:r22];
            [r22 release];
            [*(r20 + r23) loadRequest:r21];
            [r21 release];
    }
    [r19 release];
    return;
}

-(bool)hasSecondaryView {
    r0 = self;
    if (r0->_ssaSecondWebView != 0x0) {
            if (r0->secondaryViewContainer != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)handleSecondaryWebViewCallbackWithAction:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100720a0c;

loc_100720a00:
    r1 = @selector(moveSecondaryToFrontAndSendCloseMessage);
    goto loc_100720a74;

loc_100720a74:
    objc_msgSend(r20, r1);
    goto loc_100720a7c;

loc_100720a7c:
    [r19 release];
    return;

loc_100720a0c:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100720a30;

loc_100720a24:
    r1 = @selector(refreshSecondaryWebView);
    goto loc_100720a74;

loc_100720a30:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100720a54;

loc_100720a48:
    r1 = @selector(makeWebViewGoForward);
    goto loc_100720a74;

loc_100720a54:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100720a7c;

loc_100720a6c:
    r1 = @selector(makeWebViewGoBack);
    goto loc_100720a74;
}

-(void)moveSecondaryToFrontAndSendCloseMessage {
    r31 = r31 - 0x70;
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
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 respondingFrames];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r25 != 0x0) {
            r22 = r19->secondaryViewContainer;
            r0 = [SupersonicAdsPublisher sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 webViewController];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 view];
            r29 = r29;
            r24 = [r0 retain];
            [r19 insertSubview:r22 aboveSubview:r24];
            [r24 release];
            [r21 release];
            [r23 release];
    }
    var_48 = **___stack_chk_guard;
    r20 = [[SupersonicAdsPublisher sharedInstance] retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    [r20 runCommand:@"engageEnd" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r21 release];
    [r20 release];
    r0 = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(animateSecondaryClose:) selector:0x0 userInfo:0x0 repeats:0x1];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(closeSecondaryTimer));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)animateSecondaryClose:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(closeSecondaryTimer));
    r0 = *(r20 + r21);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r20 + r21);
            *(r20 + r21) = 0x0;
            [r0 release];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isAnimating));
    if (*(int8_t *)(r20 + r8) == 0x0) {
            *(int8_t *)(r20 + r8) = 0x1;
            [UIView animateWithDuration:&stack[-88] animations:&var_70 completion:r4];
    }
    [r19 release];
    return;
}

-(void)makeWebViewGoBack {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_ssaSecondWebView));
    if ([*(r19 + r20) canGoBack] != 0x0) {
            r0 = *(r19 + r20);
            r1 = @selector(goBack);
    }
    else {
            r1 = @selector(moveSecondaryToFrontAndSendCloseMessage);
            r0 = r19;
    }
    objc_msgSend(r0, r1);
    return;
}

-(void)makeWebViewGoForward {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_ssaSecondWebView));
    if ([*(r19 + r20) canGoForward] != 0x0) {
            [*(r19 + r20) goForward];
    }
    return;
}

-(void)refreshSecondaryWebView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_ssaSecondWebView));
    if ([*(r19 + r20) isLoading] != 0x0) {
            [*(r19 + r20) stopLoading];
    }
    [*(r19 + r20) reload];
    return;
}

-(void)webviewTapped:(void *)arg2 {
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = self;
    r22 = [arg2 retain];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 webViewController] retain];
    [r0 release];
    [r20 frameForCloseButton];
    r0 = [r20 view];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [arg2 locationInView:r23];
    if ((CGRectContainsPoint([r22 release], @selector(locationInView:)) & 0x1) == 0x0) goto loc_10072124c;

loc_10072119c:
    r0 = [r19 forceCloseTimer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_100721254;

loc_1007211cc:
    r0 = [r19 forceCloseTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r21 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(closeWebviewWithForce) selector:0x0 userInfo:0x0 repeats:r6] retain];
    [r19 setForceCloseTimer:r21];
    r0 = r21;
    goto loc_100721250;

loc_100721250:
    [r0 release];
    goto loc_100721254;

loc_100721254:
    [r20 release];
    return;

loc_10072124c:
    r0 = r23;
    goto loc_100721250;
}

-(void)closeWebviewWithForce {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isPresented] == 0x0) goto loc_1007213a0;

loc_1007212ac:
    if ([r19 hasSecondaryView] == 0x0) goto loc_1007212f4;

loc_1007212c0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            [r19 moveSecondaryToFrontAndSendCloseMessage];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_1007212f4:
    [r19 setOrientationUpdates:0x0];
    r19 = [[SupersonicAdsPublisher sharedInstance] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
    r20 = [r0 retain];
    [r19 runCommand:@"engageEnd" andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r20 release];
    [r19 release];
    goto loc_1007213a0;

loc_1007213a0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)createCloseButtonWithFrame:(struct CGRect)arg2 imageName:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = [r2 retain];
    r19 = [UIButton alloc];
    r0 = self->_ssaSecondWebView;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 frame];
    r19 = [r19 initWithFrame:r2];
    [r0 release];
    [r19 setAutoresizingMask:0x21];
    [r19 addTarget:self action:@selector(animateSecondaryClose:) forControlEvents:0x40];
    r0 = [UIImage imageNamed:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 != 0x0) {
            [r19 setBackgroundImage:r20 forState:0x0];
    }
    else {
            r23 = [[r19 titleLabel] retain];
            r24 = [[UIFont boldSystemFontOfSize:r2] retain];
            [r23 setFont:r24];
            [r24 release];
            [r23 release];
            r0 = [r19 titleLabel];
            r0 = [r0 retain];
            [r0 setShadowOffset:r24];
            [r0 release];
            r22 = [[r19 titleLabel] retain];
            r24 = [[UIColor blackColor] retain];
            [r22 setShadowColor:r24];
            [r24 release];
            [r22 release];
            [r19 setTitle:@"X" forState:0x0];
            r24 = [[UIColor whiteColor] retain];
            [r19 setTitleColor:r24 forState:0x0];
            [r24 release];
            r23 = [[UIColor blackColor] retain];
            [r19 setBackgroundColor:r23];
            [r23 release];
            [r19 frame];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r23];
            [r0 release];
            r0 = @class(UIColor);
            r0 = [r0 whiteColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r22 = r0;
            r23 = [r0 CGColor];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setBorderColor:r23];
            [r0 release];
            [r22 release];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setBorderWidth:r23];
            [r0 release];
    }
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)createSeconderyViewContainerWithFrame:(struct CGRect)arg2 makeHidden:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r20 = [[UIView alloc] initWithFrame:r2];
    r21 = [[UIColor blackColor] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [r20 setAutoresizingMask:0x12];
    [r20 setHidden:r2];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)createSeconderyWebviewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [SSWVBrowsingConfiguration alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setMediaPlaybackRequiresUserAction:0x0];
    [r20 setMediaPlaybackAllowsInLine:0x1];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    [r20 setUseWK:[r0 shouldUseWKWebViewWhenCreatingWebViews]];
    [r0 release];
    r0 = [SSWVWebViewFactory defaultWebViewWithFrame:r20 browsingConfiguration:r3];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [[r0 view] retain];
    r24 = [[UIColor whiteColor] retain];
    [r23 setBackgroundColor:r24];
    [r24 release];
    [r23 release];
    r0 = [r21 view];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    r0 = [r21 view];
    r0 = [r0 retain];
    [r0 setOpaque:0x0];
    [r0 release];
    r0 = [r21 scrollView];
    r0 = [r0 retain];
    [r0 setBounces:0x0];
    [r0 release];
    [r21 setWebViewDelegate:self];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)determineControlFramesFromButtonsData:(void *)arg2 relativeToFrame:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x160;
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
    r20 = [arg2 retain];
    r19 = [NSMutableArray new];
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-264];
    var_148 = r1;
    var_140 = r0;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_140);
                            }
                            r25 = @selector(addObject:);
                            r2 = *(0x0 + r20 * 0x8);
                            [SSAHelperMethods frameForButtonFromParamsDictionary:r2 relativeToFrame:r3];
                            r0 = @class(NSValue);
                            r0 = [r0 valueWithCGRect:r2];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r3 = &stack[-264];
                    r22 = objc_msgSend(var_140, var_148);
            } while (r22 != 0x0);
    }
    var_78 = **___stack_chk_guard;
    [var_140 release];
    r21 = [r19 copy];
    [r19 release];
    [var_140 release];
    if (**___stack_chk_guard == var_78) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void)loadSuccessfully:(void *)arg2 {
    r0 = [self activityIndicator];
    r0 = [r0 retain];
    [r0 stopAnimating];
    [r0 release];
    [self->secondarySpinner stopAnimating];
    return;
}

-(void)failedToLoadWithError:(void *)arg2 webView:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [[SupersonicLogManager sharedManager] retain];
    r19 = [[arg2 localizedDescription] retain];
    [r20 release];
    r20 = [[NSString stringWithFormat:@"secondaryWebView failed to load with error: %@"] retain];
    [r21 log:r20 withLevel:0x1 withTag:0x5];
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(bool)shouldLoadRequestForWebview:(void *)arg2 request:(void *)arg3 navigationType:(long long)arg4 {
    r21 = [arg3 retain];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 handleSecondaryCallbacks:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)ssaSecondWebView {
    r0 = self->_ssaSecondWebView;
    return r0;
}

-(void)setSsaSecondWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ssaSecondWebView, arg2);
    return;
}

-(void *)activityIndicator {
    r0 = self->_activityIndicator;
    return r0;
}

-(void)setActivityIndicator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activityIndicator, arg2);
    return;
}

-(void *)forceCloseTimer {
    r0 = self->_forceCloseTimer;
    return r0;
}

-(void)setForceCloseTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_forceCloseTimer, arg2);
    return;
}

-(bool)isAnimating {
    r0 = *(int8_t *)(int64_t *)&self->_isAnimating;
    return r0;
}

-(void)setIsAnimating:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAnimating = arg2;
    return;
}

-(void *)presentationManager {
    r0 = self->_presentationManager;
    return r0;
}

-(void)setPresentationManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presentationManager, arg2);
    return;
}

-(void *)tap {
    r0 = self->_tap;
    return r0;
}

-(void)setTap:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tap, arg2);
    return;
}

-(void)setApplicationKeyWindow:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_applicationKeyWindow, arg2);
    return;
}

-(void *)applicationKeyWindow {
    r0 = objc_loadWeakRetained((int64_t *)&self->_applicationKeyWindow);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_applicationKeyWindow);
    objc_storeStrong((int64_t *)&self->_tap, 0x0);
    objc_storeStrong((int64_t *)&self->_presentationManager, 0x0);
    objc_storeStrong((int64_t *)&self->_forceCloseTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_activityIndicator, 0x0);
    objc_storeStrong((int64_t *)&self->_ssaSecondWebView, 0x0);
    objc_storeStrong((int64_t *)&self->closeSecondaryTimer, 0x0);
    objc_storeStrong((int64_t *)&self->secondarySpinner, 0x0);
    objc_storeStrong((int64_t *)&self->secondaryViewContainer, 0x0);
    return;
}

@end