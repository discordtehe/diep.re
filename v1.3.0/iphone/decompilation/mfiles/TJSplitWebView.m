@implementation TJSplitWebView

-(void *)initWithFrame:(struct CGRect)arg2 webkitPreferred:(bool)arg3 layout:(void *)arg4 exitHosts:(void *)arg5 bridge:(void *)arg6 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    r23 = r2;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [r3 retain];
    r20 = [r4 retain];
    r21 = [r5 retain];
    r0 = [[&var_60 super] initWithFrame:r2];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 setLayout:r19];
            [r22 setBridge:r21];
            [r22 setExitHosts:r20];
            if (r23 != 0x0 && [TJCUtil isWebKitSupported] != 0x0) {
                    [r22 createWKWebViewWithFrame:r2];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
                    [*(r22 + r23) setUIDelegate:r22];
                    r0 = *(r22 + r23);
                    r1 = @selector(setNavigationDelegate:);
            }
            else {
                    [r22 createUIWebViewWithFrame:r2];
                    r0 = r22->_uiWebView;
                    r1 = @selector(setDelegate:);
            }
            objc_msgSend(r0, r1);
            r0 = [r22 webView];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r0 = [r22 webView];
            r0 = [r0 retain];
            [r0 setAutoresizesSubviews:0x1];
            [r0 release];
            r23 = [[r22 webView] retain];
            [r22 addSubview:r23];
            [r23 release];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)createWKWebViewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [WKWebView alloc];
    r0 = [r0 initWithFrame:r2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&self->_webView, *(self + r20));
    return;
}

-(void)createUIWebViewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [UIWebView alloc];
    r0 = [r0 initWithFrame:r2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&self->_webView, *(self + r20));
    return;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)updateFrameWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [TJSplitViewUtil rectWithSize:self->_layout layout:r3];
    [self setFrame:r2];
    return;
}

-(void)orientationChanged:(void *)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 superview];
            r0 = [r0 retain];
            [r0 bounds];
            [r0 release];
            [r19 updateFrameWithSize:r2];
    }
    return;
}

-(void)loadRequest:(void *)arg2 {
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
    r0 = [r0 URL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_firstURL));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r21 release];
    r0 = r20->_uiWebView;
    if (r0 != 0x0) {
            [r0 loadRequest:r19];
    }
    else {
            r0 = r20->_wkWebView;
            if (r0 != 0x0) {
                    [[[r0 loadRequest:r19] retain] release];
            }
    }
    [r19 release];
    return;
}

-(void *)getCurrentURL {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
    r8 = *(r0 + r8);
    if (r8 == 0x0) goto loc_10090de28;

loc_10090ddd0:
    r0 = [r8 request];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r19 = [[r0 absoluteString] retain];
    [r0 release];
    goto loc_10090de68;

loc_10090de68:
    [r20 release];
    goto loc_10090de70;

loc_10090de70:
    r0 = [r19 autorelease];
    return r0;

loc_10090de28:
    r0 = r0->_wkWebView;
    if (r0 == 0x0) goto loc_10090de84;

loc_10090de38:
    r0 = [r0 URL];
    r0 = [r0 retain];
    r20 = r0;
    r19 = [[r0 absoluteString] retain];
    goto loc_10090de68;

loc_10090de84:
    r19 = 0x0;
    goto loc_10090de70;
}

-(bool)shouldStartDecidePolicy:(void *)arg2 navigationType:(long long)arg3 {
    r31 = r31 - 0xa0;
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
    r22 = arg3;
    r24 = arg2;
    r19 = self;
    r23 = [r24 retain];
    r0 = [r24 URL];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 absoluteString];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = @"";
            [r21 retain];
    }
    r24 = [[r24 URL] retain];
    [r23 release];
    r0 = [r24 host];
    r29 = r29;
    r23 = [r0 retain];
    [r24 release];
    if (r23 != 0x0) {
            r0 = r19->_exitHosts;
            if (r0 != 0x0 && ([r0 containsObject:r2] & 0x1) != 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 canOpenURL:r20];
                    [r0 release];
                    r24 = 0x0;
            }
            else {
                    if (([r23 isEqualToString:r2] & 0x1) == 0x0 && [r23 isEqualToString:r2] == 0x0) {
                            if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                                    r25 = 0x0;
                                    r24 = 0x1;
                            }
                            else {
                                    r24 = [r21 hasPrefix:@"https://"];
                                    r25 = r24 ^ 0x1;
                            }
                    }
                    else {
                            r0 = [UIApplication sharedApplication];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 canOpenURL:r20];
                            [r0 release];
                            r24 = 0x0;
                    }
            }
    }
    else {
            if (([r23 isEqualToString:r2] & 0x1) == 0x0 && [r23 isEqualToString:r2] == 0x0) {
                    if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                            r25 = 0x0;
                            r24 = 0x1;
                    }
                    else {
                            r24 = [r21 hasPrefix:@"https://"];
                            r25 = r24 ^ 0x1;
                    }
            }
            else {
                    r0 = [UIApplication sharedApplication];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 canOpenURL:r20];
                    [r0 release];
                    r24 = 0x0;
            }
    }
    [TJCLog logWithLevel:0x4 format:@"[TJSplitWebView] shouldStartDecidePolicy: URL: %@, navigationType:%d external:%d shouldStart:%d"];
    if (r25 != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_68);
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r0 openURL:r2];
            [r22 release];
    }
    if (r24 != 0x0) {
            objc_storeStrong((int64_t *)&r19->_lastURL, r21);
    }
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = r24;
    return r0;
}

-(void)failLoadOrNavigationWithError:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_lastURL));
    r21 = *(r19 + r24);
    r22 = r19->_firstURL;
    r20 = [arg2 retain];
    r8 = [r21 isEqualToString:r22];
    r9 = *(r19 + r24);
    if (r8 != 0x0) {
            [TJCLog logWithLevel:r2 format:r3];
            [r20 release];
            dispatch_async(*__dispatch_main_q, &var_58);
    }
    else {
            [TJCLog logWithLevel:r2 format:r3];
            [r20 release];
    }
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    r3 = arg3;
    r0 = self;
    if (arg4 < 0x5) {
            asm { csinv      x8, x4, xzr, lo };
    }
    r0 = [r0 shouldStartDecidePolicy:r3 navigationType:r8];
    return r0;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    [self failLoadOrNavigationWithError:arg3];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    r22 = [arg3 retain];
    [arg4 retain];
    r23 = [[arg3 request] retain];
    r20 = [arg3 navigationType];
    [r22 release];
    (*(arg4 + 0x10))(arg4, [self shouldStartDecidePolicy:r23 navigationType:r20]);
    [r24 release];
    [r23 release];
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r20 = [arg2 retain];
    [arg2 evaluateJavaScript:@"document.documentElement.style.webkitTouchCallout=\"none\";" completionHandler:0x0];
    [r20 release];
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    [self failLoadOrNavigationWithError:arg4];
    return;
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
    r31 = r31 - 0x90;
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
    r19 = [arg4 retain];
    r24 = [[UIApplication sharedApplication] retain];
    r0 = [r19 request];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r24 canOpenURL:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r27 != 0x0) {
            r0 = [r19 request];
            r0 = [r0 retain];
            r26 = [[r0 URL] retain];
            [TJCLog logWithLevel:0x4 format:@"[TJSplitWebView] webView:createWebViewWithConfiguration:... URL: %@"];
            [r26 release];
            [r0 release];
            r21 = [[UIApplication sharedApplication] retain];
            r0 = [r19 request];
            r0 = [r0 retain];
            r23 = [[r0 URL] retain];
            [r21 openURL:r23];
            [r23 release];
            [r0 release];
            [r21 release];
            dispatch_async(*__dispatch_main_q, &var_78);
    }
    [r19 release];
    return 0x0;
}

-(void *)layout {
    r0 = self->_layout;
    return r0;
}

-(void)setLayout:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_layout, arg2);
    return;
}

-(void *)exitHosts {
    r0 = self->_exitHosts;
    return r0;
}

-(void)setExitHosts:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_exitHosts, arg2);
    return;
}

-(void)setBridge:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bridge, arg2);
    return;
}

-(void *)bridge {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bridge);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)wkWebView {
    r0 = self->_wkWebView;
    return r0;
}

-(void)setWkWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_wkWebView, arg2);
    return;
}

-(void *)uiWebView {
    r0 = self->_uiWebView;
    return r0;
}

-(void)setUiWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_uiWebView, arg2);
    return;
}

-(void *)firstURL {
    r0 = self->_firstURL;
    return r0;
}

-(void)setFirstURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_firstURL, arg2);
    return;
}

-(void *)lastURL {
    r0 = self->_lastURL;
    return r0;
}

-(void)setLastURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lastURL, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lastURL, 0x0);
    objc_storeStrong((int64_t *)&self->_firstURL, 0x0);
    objc_storeStrong((int64_t *)&self->_uiWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_wkWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_destroyWeak((int64_t *)&self->_bridge);
    objc_storeStrong((int64_t *)&self->_exitHosts, 0x0);
    objc_storeStrong((int64_t *)&self->_layout, 0x0);
    return;
}

@end