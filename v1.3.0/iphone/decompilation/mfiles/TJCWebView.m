@implementation TJCWebView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:0x0 webkitPreferred:r3];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] initWithCoder:r19];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 createUIWebViewWithCoder:r19 frame:r3];
            [r20 commonInitialization];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 webkitPreferred:(bool)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            if (r20 != 0x0 && [TJCUtil isWebKitSupported] != 0x0) {
                    [r19 createWKWebViewWithFrame:r2];
            }
            else {
                    [r19 createUIWebViewWithCoder:0x0 frame:r3];
            }
            [r19 commonInitialization];
    }
    r0 = r19;
    return r0;
}

-(void)createWKWebViewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [WKWebViewConfiguration alloc];
    r0 = [r0 init];
    r19 = r0;
    [r0 setAllowsInlineMediaPlayback:0x1];
    [r19 setMediaPlaybackRequiresUserAction:0x0];
    [r19 setMediaPlaybackAllowsAirPlay:0x0];
    r21 = [[WKWebView alloc] initWithFrame:r19 configuration:r3];
    [self setWkWebView:r21];
    [r21 release];
    r22 = [[self wkWebView] retain];
    [self setWebView:r22];
    [r22 release];
    r0 = [self wkWebView];
    r0 = [r0 retain];
    [r0 setUIDelegate:self];
    [r0 release];
    r0 = [self wkWebView];
    r0 = [r0 retain];
    [r0 setNavigationDelegate:self];
    [r0 release];
    r0 = [self wkWebView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    [TJCLog logWithLevel:0x6 format:@"Create WKWebView for TJCWebView"];
    [r19 release];
    return;
}

-(void)commonInitialization {
    r20 = [[self webView] retain];
    [self addSubview:r20];
    [r20 release];
    [self setAutoresizesSubviews:0x1];
    r20 = [[UIColor clearColor] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    [self setOpaque:0x0];
    [self setAutoresizingMask:0x12];
    [self setClipsToBounds:0x1];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 beginGeneratingDeviceOrientationNotifications];
    [r0 release];
    return;
}

-(void)createUIWebViewWithCoder:(void *)arg2 frame:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [UIWebView alloc];
    if (r19 != 0x0) {
            r0 = [r0 initWithCoder:r19];
    }
    else {
            r0 = [r0 initWithFrame:r2];
    }
    [r20 setUiWebView:r0];
    [r0 release];
    r22 = [[r20 uiWebView] retain];
    [r20 setWebView:r22];
    [r22 release];
    r0 = [r20 uiWebView];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r0 = [r20 uiWebView];
    r0 = [r0 retain];
    [r0 setAllowsInlineMediaPlayback:0x1];
    [r0 release];
    r0 = [r20 uiWebView];
    r0 = [r0 retain];
    [r0 setMediaPlaybackRequiresUserAction:0x0];
    [r0 release];
    r0 = [r20 uiWebView];
    r0 = [r0 retain];
    [r0 setMediaPlaybackAllowsAirPlay:0x0];
    [r0 release];
    r0 = [r20 uiWebView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    [TJCLog logWithLevel:0x6 format:@"Create UIWebView for TJCWebView"];
    [r19 release];
    return;
}

-(void)dealloc {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 endGeneratingDeviceOrientationNotifications];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(m_creativeURL));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    objc_storeWeak((int64_t *)&self->m_webViewDelegate, 0x0);
    [[&var_20 super] dealloc];
    return;
}

-(bool)shouldStartDecidePolicy:(void *)arg2 navigationType:(long long)arg3 {
    r31 = r31 - 0x60;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 webViewDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(shouldStartDecidePolicy:navigationType:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 webViewDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 shouldStartDecidePolicy:r19 navigationType:r20];
            [r0 release];
            if (r20 != 0x0) {
                    r20 = [[r19 URL] retain];
                    [TJCLog logWithLevel:0x6 format:@"Verify Web View should load URL: %@"];
                    r0 = [r19 URL];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 isFileURL];
                    [r0 release];
                    if ((r24 & 0x1) != 0x0) {
                            r21 = 0x0;
                    }
                    else {
                            r0 = [r19 URL];
                            r0 = [r0 retain];
                            r22 = [[r0 absoluteString] retain];
                            [r0 release];
                            if ([@"about:blank" isEqualToString:r22] != 0x0) {
                                    [TJCLog logWithLevel:0x6 format:@"IFrame Detected"];
                                    r21 = 0x0;
                            }
                            else {
                                    [TJCLog logWithLevel:0x6 format:@"Perform Normal process for URL."];
                                    r21 = 0x1;
                            }
                            [r22 release];
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r20 = [[r19 URL] retain];
            [TJCLog logWithLevel:0x6 format:@"Verify Web View should load URL: %@"];
            r0 = [r19 URL];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isFileURL];
            [r0 release];
            if ((r24 & 0x1) != 0x0) {
                    r21 = 0x0;
            }
            else {
                    r0 = [r19 URL];
                    r0 = [r0 retain];
                    r22 = [[r0 absoluteString] retain];
                    [r0 release];
                    if ([@"about:blank" isEqualToString:r22] != 0x0) {
                            [TJCLog logWithLevel:0x6 format:@"IFrame Detected"];
                            r21 = 0x0;
                    }
                    else {
                            [TJCLog logWithLevel:0x6 format:@"Perform Normal process for URL."];
                            r21 = 0x1;
                    }
                    [r22 release];
            }
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)didStartNavigation {
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
    [TJCLog logWithLevel:0x6 format:@"Web View Started Loading"];
    r0 = [r19 webViewDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 webViewDelegate];
            r0 = [r0 retain];
            [r0 didStartNavigation];
            [r0 release];
    }
    return;
}

-(void)finishLoadOrNavigation {
    [self injectJavaScriptIntoWebViewWithCompletionHandler:&var_28];
    return;
}

-(void)failLoadOrNavigationWithError:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 code] == 0x66) {
            r0 = [r19 domain];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isEqual:r2];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"Failed to load URL into Web View: %@"];
                    r0 = [r20 webViewDelegate];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [r20 webViewDelegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 respondsToSelector:@selector(failLoadOrNavigationWithError:)];
                            [r0 release];
                            [r23 release];
                            if (r25 != 0x0) {
                                    r0 = [r20 webViewDelegate];
                                    r0 = [r0 retain];
                                    [r0 failLoadOrNavigationWithError:r19];
                                    [r0 release];
                            }
                    }
            }
    }
    else {
            [TJCLog logWithLevel:0x6 format:@"Failed to load URL into Web View: %@"];
            r0 = [r20 webViewDelegate];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [r20 webViewDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 respondsToSelector:@selector(failLoadOrNavigationWithError:)];
                    [r0 release];
                    [r23 release];
                    if (r25 != 0x0) {
                            r0 = [r20 webViewDelegate];
                            r0 = [r0 retain];
                            [r0 failLoadOrNavigationWithError:r19];
                            [r0 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    [self failLoadOrNavigationWithError:arg3];
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

-(void)webViewDidFinishLoad:(void *)arg2 {
    [self finishLoadOrNavigation];
    return;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    [self didStartNavigation];
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

-(void)webView:(void *)arg2 didStartProvisionalNavigation:(void *)arg3 {
    [self didStartNavigation];
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    [self failLoadOrNavigationWithError:arg4];
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    [self failLoadOrNavigationWithError:arg4];
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r21 = [arg2 retain];
    [arg2 evaluateJavaScript:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust = 'none'; document.documentElement.style.webkitTouchCallout='none'" completionHandler:&var_48];
    [r21 release];
    return;
}

-(void)loadHTMLCreative:(void *)arg2 creativeURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self setCreativeURL:r19];
    [self setCreativeFragment:r21];
    [self setHTML:r21 baseURL:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = [arg4 retain];
    r23 = [[UIApplication sharedApplication] retain];
    r0 = [r19 request];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r23 canOpenURL:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r26 != 0x0) {
            r20 = [[UIApplication sharedApplication] retain];
            r0 = [r19 request];
            r0 = [r0 retain];
            [[r0 URL] retain];
            [r20 openURL:r2];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return 0x0;
}

-(void)executeJavascript:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    [self executeJavascript:r20 completionHandler:0x0];
    [r20 release];
    return;
}

-(void)executeJavascript:(void *)arg2 completionHandler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            [r21 evaluateJavaScript:r19 completionHandler:r20];
    }
    else {
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0, 0x0);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)showURLFullScreen:(void *)arg2 sourceView:(void *)arg3 {
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
    r0 = [r21 webViewDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(showURLFullScreen:sourceView:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 webViewDelegate];
            r0 = [r0 retain];
            [r0 showURLFullScreen:r19 sourceView:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setHTML:(void *)arg2 baseURL:(void *)arg3 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [TJCLog logWithLevel:0x6 format:@"Setting HTML fragment"];
    r0 = [r19 lowercaseString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 rangeOfString:@"/html>"] == 0x7fffffffffffffff) {
            r24 = 0x0;
    }
    else {
            r24 = [r19 retain];
    }
    r0 = [r21 path];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r21 URLByDeletingLastPathComponent];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r26 = [r0 retain];
            [r27 release];
    }
    else {
            r0 = [r21 absoluteString];
            r29 = r29;
            r26 = [r0 retain];
    }
    [r25 release];
    r25 = [[NSURL URLWithString:r26] retain];
    [TJCLog logWithLevel:0x6 format:@"calling preparedCreative: baseURL: %@ , onURL: %@"];
    [r20 preparedCreative:r24 baseURL:r25 onURL:r21];
    [r21 release];
    [r26 release];
    [r24 release];
    [r22 release];
    [r25 release];
    [r19 release];
    return;
}

-(void)preparedCreative:(void *)arg2 baseURL:(void *)arg3 onURL:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008f1660;

loc_1008f1630:
    r0 = [r21 uiWebView];
    r0 = [r0 retain];
    r21 = r0;
    [r0 loadHTMLString:r19 baseURL:r20];
    goto loc_1008f16c0;

loc_1008f16c0:
    [r21 release];
    goto loc_1008f16c8;

loc_1008f16c8:
    [r20 release];
    [r19 release];
    return;

loc_1008f1660:
    r0 = [r21 wkWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008f16c8;

loc_1008f1688:
    r0 = [r21 wkWebView];
    r0 = [r0 retain];
    r21 = r0;
    [[[r0 loadHTMLString:r19 baseURL:r20] retain] release];
    goto loc_1008f16c0;
}

-(void)injectJavaScriptIntoWebViewWithCompletionHandler:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self evaluateJavaScript:0x0 completionHandler:0x0];
    if (r19 != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    [r19 release];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(m_originalFrame));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    [[&var_10 super] setFrame:r2];
    return;
}

-(void)stopLoading {
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    return;
}

-(void *)scrollView {
    r0 = [self webView];
    r0 = [r0 retain];
    r20 = [[r0 scrollView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
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
    r19 = [arg2 retain];
    r0 = [r20 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008f1838;

loc_1008f180c:
    r0 = [r20 uiWebView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 loadRequest:r19];
    goto loc_1008f1894;

loc_1008f1894:
    [r20 release];
    goto loc_1008f189c;

loc_1008f189c:
    [r19 release];
    return;

loc_1008f1838:
    r0 = [r20 wkWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008f189c;

loc_1008f1860:
    r0 = [r20 wkWebView];
    r0 = [r0 retain];
    r20 = r0;
    [[[r0 loadRequest:r19] retain] release];
    goto loc_1008f1894;
}

-(void)clearDelegates {
    r0 = [self uiWebView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self wkWebView];
    r0 = [r0 retain];
    [r0 setUIDelegate:0x0];
    [r0 release];
    r0 = [self wkWebView];
    r0 = [r0 retain];
    [r0 setNavigationDelegate:0x0];
    [r0 release];
    [self setWebViewDelegate:0x0];
    return;
}

-(void)evaluateJavaScript:(void *)arg2 completionHandler:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008f19b8;

loc_1008f1960:
    r0 = [r21 uiWebView];
    r0 = [r0 retain];
    r21 = [[r0 stringByEvaluatingJavaScriptFromString:r19] retain];
    [r0 release];
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, r21, 0x0);
    }
    goto loc_1008f1a0c;

loc_1008f1a0c:
    [r21 release];
    goto loc_1008f1a14;

loc_1008f1a14:
    [r20 release];
    [r19 release];
    return;

loc_1008f19b8:
    r0 = [r21 wkWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008f1a34;

loc_1008f19e0:
    r0 = [r21 wkWebView];
    r0 = [r0 retain];
    r21 = r0;
    [r0 evaluateJavaScript:r19 completionHandler:r20];
    goto loc_1008f1a0c;

loc_1008f1a34:
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, 0x0, 0x0);
    }
    goto loc_1008f1a14;
}

-(void)setBackgroundColor:(void *)arg2 {
    r21 = [arg2 retain];
    [[&var_30 super] setBackgroundColor:r21];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setOpaque:(bool)arg2 {
    [[&var_30 super] setOpaque:r2];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setOpaque:arg2];
    [r0 release];
    return;
}

-(void *)webViewDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->m_webViewDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWebViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->m_webViewDelegate, arg2);
    return;
}

-(void *)creativeURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(m_creativeURL)), 0x0);
    return r0;
}

-(void)setCreativeURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)creativeFragment {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(m_creativeFragment)), 0x0);
    return r0;
}

-(void)setCreativeFragment:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_uiWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_wkWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->m_creativeFragment, 0x0);
    objc_storeStrong((int64_t *)&self->m_creativeURL, 0x0);
    objc_destroyWeak((int64_t *)&self->m_webViewDelegate);
    return;
}

@end