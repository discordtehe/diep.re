@implementation ADCBrowser

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    return 0x1e;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(void)closeOnAppear {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shouldCloseOnAppear));
    if (*(int8_t *)(r19 + r20) != 0x0) {
            [r19 close];
            *(int8_t *)(r19 + r20) = 0x0;
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
    }
    return;
}

-(void *)initWithDict:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100238358;

loc_100237fcc:
    r23 = @class(UIImage);
    r24 = [[r19 objectForKeyedSubscript:@"logo"] retain];
    r0 = [r23 imageWithContentsOfFile:r24];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_logo));
    r8 = *(r20 + r9);
    var_A0 = r9;
    *(r20 + r9) = r0;
    [r8 release];
    [r24 release];
    r23 = @class(UIImage);
    r24 = [[r19 objectForKeyedSubscript:@"background_bar"] retain];
    r0 = [r23 imageWithContentsOfFile:r24];
    r0 = [r0 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundBar));
    r8 = *(r20 + r27);
    *(r20 + r27) = r0;
    [r8 release];
    [r24 release];
    r23 = @class(UIImage);
    r24 = [[r19 objectForKeyedSubscript:@"background_tile"] retain];
    r0 = [r23 imageWithContentsOfFile:r24];
    r0 = [r0 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundTile));
    r8 = *(r20 + r28);
    *(r20 + r28) = r0;
    [r8 release];
    [r24 release];
    r23 = @class(UIImage);
    r21 = [[r19 objectForKeyedSubscript:@"tiny_glow"] retain];
    r23 = [[r23 imageWithContentsOfFile:r21] retain];
    [r21 release];
    r22 = [r20 retain];
    var_78 = r22;
    var_70 = [r19 retain];
    r0 = [r23 retain];
    r26 = r0;
    var_68 = r0;
    dispatch_async(*__dispatch_main_q, &var_98);
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = &@class(MCConfigurationData);
            r0 = *(r21 + 0x1d8);
            r0 = [r0 currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 userInterfaceIdiom];
            [r0 release];
            if (r25 == 0x1) {
                    r21 = &@class(MCConfigurationData);
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
    }
    else {
            r21 = 0x0;
    }
    r25 = var_A0;
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundLogoWidth));
    r9 = 0x12c;
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r9 = 0x12c;
            }
            else {
                    r9 = 0x190;
            }
    }
    r10 = 0x3c;
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r10 = 0x3c;
            }
            else {
                    r10 = 0x50;
            }
    }
    *(int32_t *)(r22 + r8) = r9;
    *(int32_t *)(int64_t *)&r22->_backgroundLogoHeight = r10;
    *(int8_t *)(int64_t *)&r22->_shouldCloseOnAppear = 0x0;
    *(int8_t *)(int64_t *)&r22->_lastRequestWasCanceled = 0x0;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r22 selector:@selector(closeOnAppear) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    if (*(r20 + r25) == 0x0 || r22->_stopButton == 0x0 || r22->_closeButton == 0x0 || r22->_reloadButton == 0x0 || r22->_forwardButton == 0x0 || r22->_backButton == 0x0 || *(r20 + r27) == 0x0 || *(r20 + r28) == 0x0) goto loc_100238368;

loc_100238338:
    [var_68 release];
    [var_70 release];
    [var_78 release];
    [r26 release];
    goto loc_100238358;

loc_100238358:
    r21 = [r20 retain];
    goto loc_10023838c;

loc_10023838c:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100238368:
    [var_68 release];
    [var_70 release];
    [var_78 release];
    [r26 release];
    r21 = 0x0;
    goto loc_10023838c;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [[&var_20 super] viewWillAppear:arg2];
    r0 = self->_openHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

-(void)prepareWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    asm { fdiv       d0, d9, d0 };
    asm { fmin       d0, d0, d1 };
    if (d8 != *0x100ba1e80) {
            asm { fccmp      d8, d1, #0x4, ne };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d0, d1, d0, eq };
    }
    var_60 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_88);
    [var_60 release];
    [r19 release];
    return;
}

-(void)showWebView:(void *)arg2 {
    r0 = [arg2 retain];
    [r0 setHidden:0x0];
    r19 = [r0 retain];
    [UIView animateWithDuration:&var_48 animations:r3];
    [r0 release];
    [r19 release];
    return;
}

-(void)showControls {
    [self layoutControl:self->_backButton withPosition:0x0];
    [self layoutControl:self->_forwardButton withPosition:0x1];
    [self layoutControl:self->_reloadButton withPosition:0x2];
    [self layoutControl:self->_stopButton withPosition:0x2];
    [self layoutControl:self->_closeButton withPosition:0x3];
    return;
}

-(void)layoutControl:(void *)arg2 withPosition:(int)arg3 {
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
    r29 = &saved_fp;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_browserBar));
    r8 = &@selector(menu);
    objc_msgSend(*(r20 + r25), *(r8 + 0x738));
    asm { fcvtzs     w26, d3 };
    objc_msgSend(*(r20 + r25), r21);
    asm { fcvtzs     w8, d2 };
    asm { scvtf      d12, w8 };
    if (r8 != 0x400 && &@selector(menu) != 0x300) {
            d0 = *0x100ba2a98;
            asm { fdiv       d0, d12, d0 };
            asm { fmin       d13, d0, d1 };
    }
    else {
            d13 = 0x3ff8000000000000;
    }
    r21 = @selector(button);
    r23 = [objc_msgSend(r19, r21) retain];
    r24 = [[UIColor clearColor] retain];
    r2 = r24;
    [r23 setBackgroundColor:r2];
    [r24 release];
    [r23 release];
    r0 = objc_msgSend(r19, r21);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    asm { scvtf      d0, w26 };
    v3 = v2;
    [r0 setFrame:r2];
    [r24 release];
    r0 = r19;
    r1 = r21;
    if (r22 > 0x2) goto loc_100239620;

loc_100239600:
    r0 = objc_msgSend(r0, r1);
    r29 = r29;
    r24 = [r0 retain];
    r2 = 0x5;
    goto loc_100239644;

loc_100239644:
    r0 = r24;
    goto loc_100239654;

loc_100239654:
    [r0 setAutoresizingMask:r2];
    [r24 release];
    r0 = [r19 button];
    r29 = r29;
    r0 = [r0 retain];
    [r0 frame];
    v8 = v1;
    v9 = v2;
    v10 = v3;
    [r24 release];
    if (r22 > 0x3) goto loc_10023970c;

loc_1002396a4:
    goto *0x10023985c[sign_extend_64(*(int32_t *)(0x10023985c + r22 * 0x4)) + 0x10023985c];

loc_10023970c:
    r0 = [r19 button];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r22 = [[r19 button] retain];
    r23 = [[r19 imageNormal] retain];
    [r22 setImage:r23 forState:0x0];
    [r23 release];
    [r22 release];
    r22 = [[r19 button] retain];
    r23 = [[r19 imageDown] retain];
    [r22 setImage:r23 forState:0x1];
    [r23 release];
    [r22 release];
    r20 = *(r20 + r25);
    [[r19 button] retain];
    [r20 addSubview:r2];
    [r21 release];
    [r19 release];
    return;

loc_1002396c8:
    d0 = d13 * *0x100ba2a58;
    d1 = 0x4034000000000000;
    goto loc_10023970c;

loc_1002396dc:
    d0 = d13 * *0x100ba2a50;
    d1 = *0x100ba29f0;
    goto loc_10023970c;

loc_100239620:
    r0 = objc_msgSend(r0, r1);
    r29 = r29;
    r24 = [r0 retain];
    if (r22 != 0x3) goto loc_10023964c;

loc_100239640:
    r2 = 0x1;
    goto loc_100239644;

loc_10023964c:
    r0 = r24;
    r2 = 0x0;
    goto loc_100239654;
}

-(void)browserControlButtonPushed:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_backButton != r19) {
            if (r20->_forwardButton != r19) {
                    if (r20->_reloadButton != r19) {
                            if (r20->_stopButton != r19) {
                                    r1 = @selector(close);
                            }
                            else {
                                    r1 = @selector(stop);
                            }
                    }
                    else {
                            r1 = @selector(reload);
                    }
            }
            else {
                    r1 = @selector(forward);
            }
    }
    else {
            r1 = @selector(back);
    }
    objc_msgSend(r20, r1);
    [r19 release];
    return;
}

-(void)back {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
            if ([*(r19 + r20) canGoBack] != 0x0) {
                    [[[*(r19 + r20) goBack] retain] release];
            }
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
            if ([*(r19 + r20) canGoBack] != 0x0) {
                    [*(r19 + r20) goBack];
            }
    }
    [r19 setLoadingState];
    return;
}

-(void)loadRequest:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequestURL));
    r25 = *(r20 + r26);
    r0 = [r0 URL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if ([r25 isEqualToString:r2] == 0x0) goto loc_100239ab0;

loc_1002399d0:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequestWasCanceled));
    r27 = *(int8_t *)(r20 + r25);
    [r24 release];
    [r23 release];
    if (r27 == 0x0) goto loc_100239ac0;

loc_1002399f0:
    r21 = [[r19 URL] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0] retain];
    [ADCSystemAPI openURL:r21 options:r23 completionHandler:0x0];
    [r23 release];
    [r21 release];
    *(int8_t *)(int64_t *)&r20->_shouldCloseOnAppear = 0x1;
    *(int8_t *)(r20 + r25) = 0x1;
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    r0 = r0;
    goto loc_100239b90;

loc_100239b90:
    [r0 release];
    goto loc_100239bb4;

loc_100239bb4:
    [r19 release];
    return;

loc_100239ac0:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r23 release];
    if (r25 == -0x1) goto loc_100239b98;

loc_100239b2c:
    [[[r20->_wkWebView loadRequest:r19] retain] release];
    r0 = [r19 URL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 absoluteString];
    r0 = [r0 retain];
    r8 = *(r20 + r26);
    *(r20 + r26) = r0;
    [r8 release];
    r0 = r21;
    goto loc_100239b90;

loc_100239b98:
    [r20->_uiWebView loadRequest:r19];
    goto loc_100239bb4;

loc_100239ab0:
    [r24 release];
    [r23 release];
    goto loc_100239ac0;
}

-(void)forward {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
            if ([*(r19 + r20) canGoForward] != 0x0) {
                    [[[*(r19 + r20) goForward] retain] release];
            }
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
            if ([*(r19 + r20) canGoForward] != 0x0) {
                    [*(r19 + r20) goForward];
            }
    }
    return;
}

-(void)reload {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            [[[r19->_wkWebView reload] retain] release];
    }
    else {
            [r19->_uiWebView reload];
    }
    [r19 setLoadingState];
    return;
}

-(void)stop {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
    }
    [*(r19 + r8) stopLoading];
    [r19->_spinner setHidden:0x1];
    [r19->_stopButton setVisible:0x0];
    [r19->_reloadButton setVisible:0x1];
    return;
}

-(void)close {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
            if ([*(r19 + r20) isLoading] != 0x0) {
                    [*(r19 + r20) stopLoading];
            }
            r0 = *(r19 + r20);
            r1 = @selector(setNavigationDelegate:);
    }
    else {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
            if ([*(r19 + r23) isLoading] != 0x0) {
                    [*(r19 + r23) stopLoading];
            }
            r20 = *(r19 + r23);
            r22 = [[NSURL URLWithString:@"about:blank"] retain];
            r0 = [NSURLRequest requestWithURL:r22 cachePolicy:0x1 timeoutInterval:r4];
            r29 = r29;
            r21 = [r0 retain];
            [r20 loadRequest:r21];
            [r21 release];
            [r22 release];
            r0 = *(r19 + r23);
            r1 = @selector(setDelegate:);
    }
    objc_msgSend(r0, r1);
    r0 = [r19 presentingViewController];
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x0 completion:&var_58];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    [self->_spinner setHidden:0x1];
    return;
}

-(void)setLoadingState {
    [self->_spinner setHidden:0x0];
    [self->_stopButton setVisible:0x1];
    [self->_reloadButton setVisible:0x0];
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    r20 = self->_spinner;
    r22 = [arg2 retain];
    [r20 setHidden:0x1];
    [self->_stopButton setVisible:0x0];
    [self->_reloadButton setVisible:0x1];
    [self showWebView:r22];
    [r22 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    [self setLoadingState];
    return 0x1;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r20 = [arg2 retain];
    [self->_spinner setHidden:0x1];
    [self->_stopButton setVisible:0x0];
    [self->_reloadButton setVisible:0x1];
    [self showWebView:r20];
    [r20 release];
    return;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0x70;
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
    r21 = self;
    r19 = [r3 retain];
    r20 = [r4 retain];
    [r21 setLoadingState];
    r0 = [r19 request];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 rangeOfString:@"itms-appss"];
    [r0 release];
    [r25 release];
    [r24 release];
    if (r27 == 0x7fffffffffffffff) {
            r2 = @"itms-appss";
            r8 = *(r20 + 0x10);
            r1 = 0x1;
            r0 = r20;
    }
    else {
            r0 = [r19 request];
            r0 = [r0 retain];
            r23 = [[r0 URL] retain];
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0] retain];
            r3 = r25;
            r4 = 0x0;
            [ADCSystemAPI openURL:r23 options:r3 completionHandler:r4];
            [r25 release];
            [r23 release];
            [r0 release];
            *(int8_t *)(int64_t *)&r21->_shouldCloseOnAppear = 0x1;
            *(int8_t *)(int64_t *)&r21->_lastRequestWasCanceled = 0x1;
            r0 = [r21 view];
            r0 = [r0 retain];
            r2 = 0x1;
            [r0 setHidden:r2];
            [r0 release];
            r8 = *(r20 + 0x10);
            r0 = r20;
            r1 = 0x0;
    }
    (r8)(r0, r1, r2, r3, r4);
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    [self->_spinner setHidden:0x1];
    return;
}

-(void *)openHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_openHandler)), 0x0);
    return r0;
}

-(void)setOpenHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDismissalHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dismissalHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dismissalHandler)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_openHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_lastRequestURL, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_dismissalHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_browserBarBackgroundImage, 0x0);
    objc_storeStrong((int64_t *)&self->_spinner, 0x0);
    objc_storeStrong((int64_t *)&self->_browserBar, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundLogo, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewBackground, 0x0);
    objc_storeStrong((int64_t *)&self->_uiWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_wkWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundTile, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundBar, 0x0);
    objc_storeStrong((int64_t *)&self->_logo, 0x0);
    objc_storeStrong((int64_t *)&self->_stopButton, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_reloadButton, 0x0);
    objc_storeStrong((int64_t *)&self->_forwardButton, 0x0);
    objc_storeStrong((int64_t *)&self->_backButton, 0x0);
    return;
}

@end