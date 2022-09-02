@implementation SSWVWKWebView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setNavigationDelegate:r19];
            [r19 setUIDelegate:r19];
            [r19 bounds];
            [r19 setFrameForCloseButton:r19];
    }
    r0 = r19;
    return r0;
}

-(void *)webViewClass {
    r0 = [WKWebView class];
    return r0;
}

-(void)evaluateJavaScript:(void *)arg2 {
    [[&var_10 super] evaluateJavaScript:arg2 completionHandler:0x0];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 browsingConfiguration:(void *)arg3 {
    r3 = arg3;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r21 = self;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            r20 = [[WKWebViewConfiguration alloc] init];
            [r20 setAllowsInlineMediaPlayback:[r19 mediaPlaybackAllowsInLine]];
            [r20 setRequiresUserActionForMediaPlayback:[r19 mediaPlaybackRequiresUserAction]];
            r0 = [r19 allowFileAccessFromFileURLs];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 allowFileAccessFromFileURLs];
                    r0 = [r0 retain];
                    r23 = [r0 boolValue];
                    [r0 release];
                    r0 = [r20 preferences];
                    r29 = r29;
                    r22 = [r0 retain];
                    if ((r23 & 0x1) != 0x0) {
                            r2 = 0x1;
                            r0 = [NSNumber numberWithInt:r2];
                    }
                    else {
                            r2 = 0x0;
                            r0 = [NSNumber numberWithInt:r2];
                    }
                    r23 = [r0 retain];
                    [r22 setValue:r23 forKey:@"allowFileAccessFromFileURLs"];
                    [r23 release];
                    [r22 release];
            }
            v2 = v9;
            r0 = [[&var_60 super] initWithFrame:r20 configuration:r3];
            r21 = r0;
            if (r21 != 0x0) {
                    [r21 bounds];
                    [r21 setFrameForCloseButton:r2];
                    [r21 setNavigationDelegate:r21];
                    [r21 setUIDelegate:r21];
            }
            [r20 release];
            [r19 release];
            r0 = r21;
    }
    else {
            r0 = [NSException alloc];
            r0 = [r0 initWithName:**_NSInvalidArgumentException reason:@"browsingConfiguration is nil" userInfo:0x0];
            r0 = [r0 autorelease];
            r0 = objc_exception_throw(r0);
    }
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 connectivityConfiguration:(void *)arg3 browsingConfiguration:(void *)arg4 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r23 = self;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if (r20 != 0x0) {
            r21 = [[WKWebViewConfiguration alloc] init];
            [r21 setAllowsInlineMediaPlayback:[r20 mediaPlaybackAllowsInLine]];
            [r21 setRequiresUserActionForMediaPlayback:[r20 mediaPlaybackRequiresUserAction]];
            r0 = [r20 allowFileAccessFromFileURLs];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 allowFileAccessFromFileURLs];
                    r0 = [r0 retain];
                    r26 = [r0 boolValue];
                    [r0 release];
                    r0 = [r21 preferences];
                    r29 = r29;
                    r25 = [r0 retain];
                    if ((r26 & 0x1) != 0x0) {
                            r2 = 0x1;
                            r0 = [NSNumber numberWithInt:r2];
                            r29 = r29;
                    }
                    else {
                            r2 = 0x0;
                            r0 = [NSNumber numberWithInt:r2];
                            r29 = r29;
                    }
                    r26 = [r0 retain];
                    [r25 setValue:r26 forKey:@"allowFileAccessFromFileURLs"];
                    [r26 release];
                    [r25 release];
            }
            r0 = [r19 messageHandlerName];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = [[WKUserContentController alloc] init];
                    r0 = [r19 messageHandlerName];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r24 addScriptMessageHandler:r23 name:r26];
                    [r26 release];
                    [r21 setUserContentController:r24];
                    [r24 release];
            }
            v2 = v9;
            r0 = [[&var_70 super] initWithFrame:r21 configuration:r3];
            r23 = r0;
            if (r23 != 0x0) {
                    [r23 bounds];
                    [r23 setFrameForCloseButton:r2];
                    [r23 setNavigationDelegate:r23];
                    [r23 setUIDelegate:r23];
                    r0 = [r19 messageHandlerName];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 messageHandlerName];
                            r0 = [r0 retain];
                            r25 = [r0 copy];
                            [r23 setMessageHandlerName:r25];
                            [r25 release];
                            [r0 release];
                            r0 = [r19 parser];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = [r19 interface];
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r24 release];
                                    if (r0 != 0x0) {
                                            r22 = [[SSWVBridge alloc] initWithWebView:r23 connectivityConfiguration:r19];
                                            [r23 setBridge:r22];
                                            [r22 release];
                                    }
                            }
                    }
            }
            [r21 release];
            [r20 release];
            [r19 release];
            r0 = r23;
    }
    else {
            r0 = [NSException alloc];
            r0 = [r0 initWithName:**_NSInvalidArgumentException reason:@"browsingConfiguration is nil" userInfo:0x0];
            r0 = [r0 autorelease];
            r0 = objc_exception_throw(r0);
    }
    return r0;
}

-(void *)view {
    r0 = self;
    return r0;
}

-(void)allowFileAccessFromFileURLs:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self configuration];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 preferences];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ((arg2 & 0x1) != 0x0) {
            r0 = [NSNumber numberWithInt:r2];
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
    }
    r21 = [r0 retain];
    [r20 setValue:r21 forKey:@"allowFileAccessFromFileURLs"];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)pointInside:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x130;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r0 = [self respondingFrames];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) goto loc_1006fe6e4;

loc_1006fe604:
    var_108 = q0;
    r0 = [r19 respondingFrames];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 == 0x0) goto loc_1006fe6cc;

loc_1006fe654:
    r23 = *var_108;
    goto loc_1006fe660;

loc_1006fe660:
    r25 = 0x0;
    goto loc_1006fe668;

loc_1006fe668:
    if (*var_108 != r23) {
            objc_enumerationMutation(r19);
    }
    if ((CGRectContainsPoint([*(var_110 + r25 * 0x8) CGRectValue], @selector(CGRectValue)) & 0x1) != 0x0) goto loc_1006fe6dc;

loc_1006fe6a0:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_1006fe668;

loc_1006fe6ac:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1006fe660;

loc_1006fe6cc:
    [r19 release];
    r0 = 0x0;
    goto loc_1006fe6e8;

loc_1006fe6e8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006fe6dc:
    [r19 release];
    goto loc_1006fe6e4;

loc_1006fe6e4:
    r0 = 0x1;
    goto loc_1006fe6e8;
}

-(void)stopLoading {
    [[&var_10 super] stopLoading];
    return;
}

-(void)goBack {
    r0 = [[&var_10 super] goBack];
    [[r0 retain] release];
    return;
}

-(void)reload {
    r0 = [[&var_10 super] reload];
    [[r0 retain] release];
    return;
}

-(void)goForward {
    r0 = [[&var_10 super] goForward];
    [[r0 retain] release];
    return;
}

-(long long)convertNavigationType:(long long)arg2 {
    r0 = self;
    if (arg2 < 0x5) {
            asm { csinv      x0, x2, xzr, lo };
    }
    return r0;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r0 = [self webViewDelegate];
    r0 = [r0 retain];
    [r0 loadSuccessfully:self];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    r21 = [arg4 retain];
    r0 = [self webViewDelegate];
    r0 = [r0 retain];
    [r0 failedToLoadWithError:r21 webView:self];
    [r21 release];
    [r0 release];
    return;
}

-(void)loadFileRequest:(void *)arg2 allowingReadAccessToURL:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[arg2 URL] retain];
    [r22 release];
    r21 = [[self loadFileURL:r20 allowingReadAccessToURL:r19] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
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
    r0 = [arg3 retain];
    r20 = r0;
    r22 = [[r0 name] retain];
    r0 = [r21 messageHandlerName];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [r22 isEqualToString:r2];
    [r23 release];
    [r22 release];
    if (r24 != 0x0) {
            r0 = [r21 bridge];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = [[r21 bridge] retain];
                    r22 = [[r20 body] retain];
                    [r21 postMessage:r22];
                    [r22 release];
                    r0 = r21;
            }
            else {
                    r22 = [[r20 body] retain];
                    r24 = [[NSURL URLWithString:r22] retain];
                    r23 = [[NSURLRequest requestWithURL:r24] retain];
                    [r24 release];
                    [r22 release];
                    r0 = [r21 webViewDelegate];
                    r0 = [r0 retain];
                    [r0 shouldLoadRequestForWebview:r21 request:r23 navigationType:0xffffffffffffffff];
                    [r0 release];
                    r0 = r23;
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 webViewDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(shouldLoadRequestForWebview:request:navigationType:), r3, r4];
    [r0 release];
    if (r25 != 0x0) {
            r23 = [[r21 webViewDelegate] retain];
            r24 = [[r19 request] retain];
            r21 = [r23 shouldLoadRequestForWebview:r21 request:r24 navigationType:[r21 convertNavigationType:[r19 navigationType]]];
            [r24 release];
            [r23 release];
            r8 = *(r20 + 0x10);
            if (r21 == 0x0) {
                    r0 = r20;
                    r1 = 0x0;
            }
            else {
                    r1 = 0x1;
                    r0 = r20;
            }
    }
    else {
            r8 = *(r20 + 0x10);
            r1 = 0x1;
            r0 = r20;
    }
    (r8)(r0, r1);
    [r20 release];
    [r19 release];
    return;
}

-(void)loadHTMLContentString:(void *)arg2 baseURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self loadHTMLString:r21 baseURL:arg3] retain];
    [r21 release];
    [r19 release];
    return;
}

-(void *)stringByEvaluatingJavaScriptFromString:(void *)arg2 {
    objc_retainAutorelease(@"");
    return @"";
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
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
    r0 = [arg4 retain];
    r20 = r0;
    r0 = [r0 request];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r25 != 0x0) {
            r0 = [r20 targetFrame];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isMainFrame];
            [r0 release];
            if ((r23 & 0x1) == 0x0) {
                    r21 = [[r20 request] retain];
                    [[[r19 loadRequest:r21] retain] release];
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return 0x0;
}

-(struct CGRect)frameForCloseButton {
    r0 = self;
    return r0;
}

-(void)setFrameForCloseButton:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(frameForCloseButton));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void *)respondingFrames {
    r0 = self->respondingFrames;
    return r0;
}

-(void)setRespondingFrames:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->respondingFrames, arg2);
    return;
}

-(void *)webViewDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWebViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webViewDelegate, arg2);
    return;
}

-(void *)messageHandlerName {
    r0 = self->_messageHandlerName;
    return r0;
}

-(void)setMessageHandlerName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageHandlerName, arg2);
    return;
}

-(void *)bridge {
    r0 = self->_bridge;
    return r0;
}

-(void)setBridge:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bridge, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bridge, 0x0);
    objc_storeStrong((int64_t *)&self->_messageHandlerName, 0x0);
    objc_destroyWeak((int64_t *)&self->_webViewDelegate);
    objc_storeStrong((int64_t *)&self->respondingFrames, 0x0);
    return;
}

@end