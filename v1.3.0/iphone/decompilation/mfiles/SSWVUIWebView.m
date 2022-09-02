@implementation SSWVUIWebView

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
            [r19 setDelegate:r19];
            [r19 bounds];
            [r19 setFrameForCloseButton:r19];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 browsingConfiguration:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [self initWithFrame:r2];
    if (r20 != 0x0) {
            [r20 setupBrowsingConfig:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setupBrowsingConfig:(void *)arg2 {
    r22 = [arg2 retain];
    [self setAllowsInlineMediaPlayback:[arg2 mediaPlaybackAllowsInLine]];
    r19 = [arg2 mediaPlaybackRequiresUserAction];
    [r22 release];
    [self setMediaPlaybackRequiresUserAction:r19];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 connectivityConfiguration:(void *)arg3 browsingConfiguration:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r20 = [self initWithFrame:r3 browsingConfiguration:r3];
    if (r20 != 0x0) {
            r0 = [r19 messageHandlerName];
            r0 = [r0 retain];
            r22 = [r0 copy];
            [r20 setMessageHandlerName:r22];
            [r22 release];
            [r0 release];
            r0 = [r19 parser];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r19 interface];
                    r0 = [r0 retain];
                    [r0 release];
                    [r21 release];
                    if (r0 != 0x0) {
                            r21 = [[SSWVBridge alloc] initWithWebView:r20 connectivityConfiguration:r19];
                            [r20 setBridge:r21];
                            [r21 release];
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)evaluateJavaScript:(void *)arg2 {
    r0 = [[&var_10 super] stringByEvaluatingJavaScriptFromString:arg2];
    [[r0 retain] release];
    return;
}

-(void *)webViewClass {
    r0 = [UIWebView class];
    return r0;
}

-(void *)view {
    r0 = self;
    return r0;
}

-(void)loadFileRequest:(void *)arg2 allowingReadAccessToURL:(void *)arg3 {
    r20 = [arg2 retain];
    [self loadRequest:r20];
    [r20 release];
    return;
}

-(void)allowFileAccessFromFileURLs:(bool)arg2 {
    return;
}

-(long long)convertNavigationType:(long long)arg2 {
    r0 = self;
    if (arg2 < 0x5) {
            asm { csinv      x0, x2, xzr, lo };
    }
    return r0;
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
    if (r22 == 0x0) goto loc_1006fd4dc;

loc_1006fd3fc:
    var_108 = q0;
    r0 = [r19 respondingFrames];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 == 0x0) goto loc_1006fd4c4;

loc_1006fd44c:
    r23 = *var_108;
    goto loc_1006fd458;

loc_1006fd458:
    r25 = 0x0;
    goto loc_1006fd460;

loc_1006fd460:
    if (*var_108 != r23) {
            objc_enumerationMutation(r19);
    }
    if ((CGRectContainsPoint([*(var_110 + r25 * 0x8) CGRectValue], @selector(CGRectValue)) & 0x1) != 0x0) goto loc_1006fd4d4;

loc_1006fd498:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_1006fd460;

loc_1006fd4a4:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1006fd458;

loc_1006fd4c4:
    [r19 release];
    r0 = 0x0;
    goto loc_1006fd4e0;

loc_1006fd4e0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006fd4d4:
    [r19 release];
    goto loc_1006fd4dc;

loc_1006fd4dc:
    r0 = 0x1;
    goto loc_1006fd4e0;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self webViewDelegate];
    r0 = [r0 retain];
    [r0 failedToLoadWithError:r21 webView:self];
    [r21 release];
    [r0 release];
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    r0 = [self webViewDelegate];
    r0 = [r0 retain];
    [r0 loadSuccessfully:self];
    [r0 release];
    return;
}

-(void)loadHTMLContentString:(void *)arg2 baseURL:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadHTMLString:r21 baseURL:arg3];
    [r21 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r23 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 bridge];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 URL];
            r0 = [r0 retain];
            r24 = r0;
            r26 = [[r0 scheme] retain];
            r0 = [r21 messageHandlerName];
            r29 = r29;
            r27 = [r0 retain];
            r28 = [r26 isEqualToString:r2];
            [r27 release];
            [r26 release];
            [r24 release];
            if (r28 != 0x0) {
                    var_58 = r19;
                    r0 = [r20 URL];
                    r0 = [r0 retain];
                    r26 = r0;
                    r27 = [[r0 absoluteString] retain];
                    r0 = [r20 URL];
                    r0 = [r0 retain];
                    r25 = [[r0 scheme] retain];
                    r28 = [[NSString stringWithFormat:@"%@://"] retain];
                    r24 = [r27 rangeOfString:r28];
                    [r28 release];
                    [r25 release];
                    [r0 release];
                    [r27 release];
                    [r26 release];
                    r0 = [r20 URL];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 absoluteString];
                    r0 = [r0 retain];
                    r22 = [[r0 stringByReplacingCharactersInRange:r24 withString:@selector(rangeOfString:)] retain];
                    [r0 release];
                    [r19 release];
                    r23 = [[r22 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
                    [r22 release];
                    r0 = [r21 bridge];
                    r0 = [r0 retain];
                    [r0 postMessage:r23];
                    [r0 release];
                    r19 = var_58;
                    [r23 release];
                    r21 = 0x0;
            }
            else {
                    r21 = 0x1;
            }
    }
    else {
            r0 = [r21 webViewDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 respondsToSelector:@selector(shouldLoadRequestForWebview:request:navigationType:), r3, r4];
            [r0 release];
            if (r26 != 0x0) {
                    r24 = [[r21 webViewDelegate] retain];
                    r21 = [r24 shouldLoadRequestForWebview:r21 request:r20 navigationType:[r21 convertNavigationType:r23]];
                    [r24 release];
            }
            else {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
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