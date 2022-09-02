@implementation GADWebKitWebViewController

+(bool)isAvailable {
    r0 = sub_100818968(0x9, 0x0, 0x0);
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    r0 = self->_webView;
    r0 = [r0 retain];
    r20 = r0;
    [r0 setNavigationDelegate:0x0];
    [r20 setUIDelegate:0x0];
    [r20 removeFromSuperview];
    r0 = [r20 configuration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 userContentController];
    r0 = [r0 retain];
    [r0 removeScriptMessageHandlerForName:@"gad_iframe_did_load"];
    [r0 release];
    [r22 release];
    r0 = [r20 configuration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 userContentController];
    r0 = [r0 retain];
    [r0 removeScriptMessageHandlerForName:@"gadGMSGHandler"];
    [r20 release];
    [r0 release];
    [r21 release];
    [[&var_50 super] dealloc];
    return;
}

-(void *)underlyingWebView {
    r0 = self->_webView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)configuration {
    r0 = self->_configuration;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)mainDocumentURL {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)updateLastMainDocumentURL:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 mainDocumentURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 mainDocumentURL];
            r0 = [r0 retain];
            [r0 copy];
            [r0 release];
            objc_initWeak(r29 - 0x28, r20);
            objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
            var_38 = r22;
            [r22 retain];
            dispatch_sync(r20, &var_58);
            [var_38 release];
            [r22 release];
            objc_destroyWeak(&var_58 + 0x28);
            objc_destroyWeak(r29 - 0x28);
    }
    [r19 release];
    return;
}

-(void)addUserScript:(void *)arg2 injectionTime:(long long)arg3 forMainFrameOnly:(bool)arg4 {
    r21 = self->_webView;
    r23 = [arg2 retain];
    r0 = [r21 configuration];
    r0 = [r0 retain];
    r22 = [[r0 userContentController] retain];
    [r0 release];
    r19 = [[WKUserScript alloc] initWithSource:r23 injectionTime:arg3 forMainFrameOnly:arg4];
    [r23 release];
    [r22 addUserScript:r19];
    [r19 release];
    [r22 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 eventContext:(void *)arg3 configuration:(void *)arg4 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
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
    r21 = [r2 retain];
    r19 = [r3 retain];
    r0 = [[&var_80 super] initWithFrame:r21 eventContext:r19 configuration:r4];
    r20 = r0;
    [r21 release];
    if (r20 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.wk-web-view-controller", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r21 = [[WKWebViewConfiguration alloc] init];
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 boolForKey:*0x100e9b4e8];
            [r0 release];
            [r21 setSuppressesIncrementalRendering:r24];
            [r21 setAllowsInlineMediaPlayback:0x1];
            if (*qword_1011dbf20 != -0x1) {
                    dispatch_once(0x1011dbf20, 0x100e9dd68);
            }
            [r21 setProcessPool:*0x1011dbf28];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
            if ([*(r20 + r22) respondsToSelector:@selector(setDataDetectorTypes:)] != 0x0) {
                    [r21 setDataDetectorTypes:[r19 dataDetectorType]];
            }
            if ([r21 respondsToSelector:@selector(setAllowsAirPlayForMediaPlayback:)] != 0x0) {
                    r0 = r21;
                    r1 = @selector(setAllowsAirPlayForMediaPlayback:);
            }
            else {
                    r1 = @selector(setMediaPlaybackAllowsAirPlay:);
                    r0 = r21;
            }
            objc_msgSend(r0, r1);
            r23 = [r19 mediaPlaybackRequiresUserAction];
            if (objc_msgSend(r21, r24, @selector(setMediaTypesRequiringUserActionForPlayback:)) != 0x0) {
                    r26 = @selector(setMediaTypesRequiringUserActionForPlayback:);
                    asm { sbfx       x2, x23, #0x0, #0x1 };
                    objc_msgSend(r21, r26);
            }
            if ([r21 respondsToSelector:@selector(setRequiresUserActionForMediaPlayback:)] != 0x0) {
                    r0 = r21;
                    r1 = @selector(setRequiresUserActionForMediaPlayback:);
            }
            else {
                    r1 = @selector(setMediaPlaybackRequiresUserAction:);
                    r0 = r21;
            }
            objc_msgSend(r0, r1);
            r23 = [[GADWKScriptMessageHandler alloc] initWithWebViewController:r20];
            if ([r19 GMSGScriptHandlerEnabled] != 0x0) {
                    r0 = [r21 userContentController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addScriptMessageHandler:r23 name:@"gadGMSGHandler"];
                    [r0 release];
            }
            if ([r19 loadOnIframeScriptEnabled] != 0x0) {
                    r26 = [[WKUserScript alloc] initWithSource:@"window.addEventListener('load', function(){window.webkit.messageHandlers.gad_iframe_did_load.postMessage('loaded');});" injectionTime:0x0 forMainFrameOnly:0x0];
                    r0 = [r21 userContentController];
                    r0 = [r0 retain];
                    [r0 addUserScript:r26];
                    [r0 release];
                    r0 = [r21 userContentController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addScriptMessageHandler:r23 name:@"gad_iframe_did_load"];
                    [r0 release];
                    [r26 release];
            }
            r24 = @selector(respondsToSelector:);
            r0 = [WKWebView alloc];
            r0 = [r0 initWithFrame:r21 configuration:r3];
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            [*(r20 + r22) setUIDelegate:r20];
            [*(r20 + r22) setNavigationDelegate:r20];
            r0 = *(r20 + r22);
            r0 = [r0 scrollView];
            r29 = r29;
            r0 = [r0 retain];
            r28 = objc_msgSend(r0, r24, @selector(setContentInsetAdjustmentBehavior:));
            [r0 release];
            if (r28 != 0x0) {
                    r0 = *(r20 + r22);
                    r0 = [r0 scrollView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setContentInsetAdjustmentBehavior:r2];
                    [r26 release];
            }
            r24 = @selector(respondsToSelector:);
            r0 = [r19 copy];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r20 + r27);
            *(r20 + r27) = r0;
            [r8 release];
            if (objc_msgSend(*(r20 + r22), r24, @selector(setAllowsLinkPreview:)) != 0x0) {
                    [*(r20 + r22) setAllowsLinkPreview:r2];
            }
            r0 = [r19 MRAIDURLString];
            r29 = r29;
            r24 = [r0 retain];
            [r20 loadMRAID:r24];
            [r24 release];
            [r20 loadViewport];
            if (([r19 resizeScriptEnabled] & 0x1) != 0x0) {
                    r22 = @selector(sharedInstance);
                    r0 = objc_msgSend(@class(GADSettings), r22);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 stringForKey:*0x100e9b510];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 release];
                    if ([r26 length] != 0x0) {
                            [r20 addUserScript:r26 injectionTime:0x1 forMainFrameOnly:0x0];
                    }
                    [r26 release];
            }
            else {
                    r22 = @selector(sharedInstance);
            }
            r25 = @selector(length);
            r0 = objc_msgSend(@class(GADSettings), r22);
            r0 = [r0 retain];
            r22 = [[r0 stringForKey:*0x100e9b4f0] retain];
            [r0 release];
            if (objc_msgSend(r22, r25) != 0x0 && ([r22 isEqual:r2] & 0x1) == 0x0) {
                    [r20 addUserScript:r22 injectionTime:0x1 forMainFrameOnly:0x0];
            }
            if ([*(r20 + r27) collectDynamicContentSize] != 0x0) {
                    [r20 loadDynamicContentSize];
            }
            [r22 release];
            [r23 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)loadMRAID:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r22 = @selector(length);
            r0 = sub_100894eac();
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (objc_msgSend(r0, r22) != 0x0) {
                    [r20 addUserScript:r2 injectionTime:r3 forMainFrameOnly:r4];
            }
            r23 = [sub_10084a40c(0x100bf4630, 0x1fd) retain];
            r0 = [NSString alloc];
            r0 = [r0 initWithData:r23 encoding:0x4];
            [[r0 stringByReplacingOccurrencesOfString:@"@MRAID_URL@" withString:r19] retain];
            [r0 release];
            [r20 addUserScript:r2 injectionTime:r3 forMainFrameOnly:r4];
            [r25 release];
            [r23 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)loadViewport {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:*0x100e9b5d0] retain];
    [r0 release];
    if ([r20 length] != 0x0) {
            [r19 addUserScript:r20 injectionTime:0x1 forMainFrameOnly:0x1];
    }
    [r20 release];
    return;
}

-(void)loadDynamicContentSize {
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:*0x100e9b708] retain];
    [self addUserScript:r21 injectionTime:0x1 forMainFrameOnly:0x1];
    [r21 release];
    [r0 release];
    return;
}

-(void)resetLoadState {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            r20 = [sub_100809600(0xb, @"Load cancelled.") retain];
            r0 = *(r19 + r21);
            (*(r0 + 0x10))(r0, r20);
            [r20 release];
            r0 = *(r19 + r21);
    }
    *(r19 + r21) = 0x0;
    [r0 release];
    return;
}

-(void)loadRequest:(void *)arg2 {
    r21 = [arg2 retain];
    [self resetLoadState];
    r19 = [self->_webView loadRequest:r21];
    [r21 release];
    [[r19 retain] release];
    return;
}

-(void)loadHTMLString:(void *)arg2 baseURL:(void *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    [self resetLoadState];
    r19 = objc_retainBlock(arg4);
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(self + r8);
    *(self + r8) = r19;
    [r0 release];
    r19 = [self->_webView loadHTMLString:r22 baseURL:r20];
    [r20 release];
    [r22 release];
    [[r19 retain] release];
    return;
}

-(void)asyncEvaluateJavaScriptFromString:(void *)arg2 completionBlock:(void *)arg3 {
    r31 = r31 - 0x80;
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
    if ([r19 length] != 0x0) {
            objc_initWeak(&stack[-72], r21->_webView);
            CFRunLoopGetMain();
            objc_copyWeak(&var_70 + 0x30, &stack[-72]);
            var_50 = [r19 retain];
            var_48 = [r20 retain];
            CFRunLoopPerformBlock(r22, r23, &var_70);
            [var_48 release];
            [var_50 release];
            objc_destroyWeak(&var_70 + 0x30);
            objc_destroyWeak(&stack[-72]);
    }
    else {
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0, [sub_1008098f8(0x5, 0x0) retain]);
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)didFinishLoadCompletelyWithError:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)webView:(void *)arg2 didCommitNavigation:(void *)arg3 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 webViewControllerDidStartLoad:self];
    [r0 release];
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
    r29 = &saved_fp;
    r23 = arg3;
    r20 = self;
    r21 = [r23 retain];
    r19 = [arg4 retain];
    r8 = [r23 navigationType] + 0x1;
    if (r8 <= 0x5) {
            r22 = *(0x100bf4830 + r8 * 0x8);
    }
    else {
            r22 = 0x5;
    }
    r23 = [r23 request];
    [r21 release];
    r0 = [r23 retain];
    r21 = r0;
    r23 = [[r0 valueForHTTPHeaderField:@"User-Agent"] retain];
    r0 = [GADNetwork sharedInstance];
    r0 = [r0 retain];
    [r0 setUserAgentString:r23];
    [r0 release];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 respondsToSelector:@selector(webViewController:shouldStartLoadWithRequest:navigationType:), r3, r4] == 0x0 || [r24 webViewController:r20 shouldStartLoadWithRequest:r21 navigationType:r22] != 0x0) {
            [r20 updateLastMainDocumentURL:r21];
    }
    (*(r19 + 0x10))(r19);
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    [self didFinishLoadCompletelyWithError:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 webViewControllerDidFinishLoad:self];
    [self->_webView invalidateIntrinsicContentSize];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    r21 = [arg4 retain];
    [self didFinishLoadCompletelyWithError:r21];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 webViewController:self didFailLoadWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    r21 = [arg4 retain];
    [self didFinishLoadCompletelyWithError:r21];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 webViewController:self didFailLoadWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)webViewWebContentProcessDidTerminate:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 webViewControllerWebContentProcessDidTerminate:self];
    [r0 release];
    return;
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
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
    r19 = [arg4 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r8 = [r19 navigationType] + 0x1;
    if (r8 <= 0x5) {
            r24 = *(0x100bf4830 + r8 * 0x8);
    }
    else {
            r24 = 0x5;
    }
    r0 = [r19 request];
    r29 = r29;
    r22 = [r0 retain];
    if ([r20 webViewController:r21 shouldStartLoadWithRequest:r22 navigationType:r24] != 0x0) {
            r21 = r21->_webView;
            r23 = [[r19 request] retain];
            [[[r21 loadRequest:r23] retain] release];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return 0x0;
}

-(void)webView:(void *)arg2 runJavaScriptAlertPanelWithMessage:(void *)arg3 initiatedByFrame:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [arg5 retain];
    [[[self delegate] retain] retain];
    var_50 = r23;
    [r23 retain];
    var_48 = [self retain];
    var_40 = r20;
    [r20 retain];
    [r22 retain];
    sub_100860a80();
    [r22 release];
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r0 release];
    [r21 release];
    [r20 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 runJavaScriptConfirmPanelWithMessage:(void *)arg3 initiatedByFrame:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [arg5 retain];
    [[[self delegate] retain] retain];
    var_50 = r23;
    [r23 retain];
    var_48 = [self retain];
    var_40 = r20;
    [r20 retain];
    [r22 retain];
    sub_100860a80();
    [r22 release];
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r0 release];
    [r21 release];
    [r20 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 runJavaScriptTextInputPanelWithPrompt:(void *)arg3 defaultText:(void *)arg4 initiatedByFrame:(void *)arg5 completionHandler:(void *)arg6 {
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r24 = [arg5 retain];
    r20 = [arg6 retain];
    [[[self delegate] retain] retain];
    var_58 = r20;
    [r20 retain];
    var_50 = [self retain];
    [r24 retain];
    var_40 = r22;
    [r22 retain];
    var_38 = r21;
    [r21 retain];
    sub_100860a80();
    [var_38 release];
    [var_40 release];
    [r24 release];
    [var_50 release];
    [var_58 release];
    [r0 release];
    [r21 release];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_lastMainDocumentURL, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end