@implementation GADOverlayView

-(void *)initWithContext:(void *)arg2 JSContext:(void *)arg3 {
    r31 = r31 - 0x150;
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
    r24 = arg3;
    r23 = arg2;
    r20 = [r23 retain];
    r28 = [r24 retain];
    r21 = [[r29 - 0x70 super] init];
    if (r21 != 0x0) {
            [r21 setHidden:0x1];
            objc_storeStrong((int64_t *)&r21->_context, r23);
            r23 = (int64_t *)&r21->_JSContext;
            objc_storeStrong(r23, r24);
            r0 = [GADActionURLHandler alloc];
            r0 = [r0 initWithMessageSource:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_actionURLHandler));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            if (*r23 != 0x0) {
                    r22 = @selector(init);
                    r0 = [GADObserverCollection alloc];
                    r0 = objc_msgSend(r0, r22);
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_JSContextObservers));
                    r8 = *(r21 + r26);
                    *(r21 + r26) = r0;
                    [r8 release];
                    objc_initWeak(r29 - 0x78, r21);
                    r0 = [NSOperationQueue mainQueue];
                    var_138 = r28;
                    [r0 retain];
                    objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
                    [r27 addObserverForName:*0x100e9c638 object:r24 queue:r22 usingBlock:&var_A0];
                    [r22 release];
                    [[NSOperationQueue mainQueue] retain];
                    objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
                    [r28 addObserverForName:*0x100e9c640 object:r27 queue:r22 usingBlock:&var_C8];
                    [r22 release];
                    [[NSOperationQueue mainQueue] retain];
                    objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
                    [r22 addObserverForName:*0x100e9c630 object:r28 queue:r19 usingBlock:&var_F0];
                    [r19 release];
                    r0 = [NSOperationQueue mainQueue];
                    r20 = r20;
                    [r0 retain];
                    objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
                    [r22 addObserverForName:*0x100e9c648 object:r23 queue:r28 usingBlock:&var_118];
                    [r28 release];
                    objc_destroyWeak(&var_118 + 0x20);
                    objc_destroyWeak(&var_F0 + 0x20);
                    objc_destroyWeak(&var_C8 + 0x20);
                    objc_destroyWeak(&var_A0 + 0x20);
                    objc_destroyWeak(r29 - 0x78);
                    r28 = var_138;
            }
    }
    [r28 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_JSContextObservers));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_overlayViewObservers));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)removeOverlaySubview {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_overlayViewObservers));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_overlayWebViewController)));
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r20 release];
    r0 = *(self + r21);
    *(self + r21) = 0x0;
    [r0 release];
    return;
}

-(void)addOverlaySubview {
    [self removeOverlaySubview];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 dictionaryForKey:*0x100e9b4c8] retain];
    [r0 release];
    r0 = [GADWebViewConfiguration alloc];
    var_C0 = r20;
    r20 = [r0 initWithConfiguration:r20];
    r0 = [GADWebViewController alloc];
    r2 = self->_context;
    var_C8 = r20;
    r0 = [r0 initWithFrame:r2 eventContext:r20 configuration:r4];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_overlayWebViewController));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [*(self + r20) setDelegate:self];
    r0 = *(self + r20);
    r0 = [r0 webView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setBounces:0x0];
    [r0 release];
    [r22 setOpaque:0x0];
    r24 = [[UIColor clearColor] retain];
    [r22 setBackgroundColor:r24];
    [r24 release];
    [r22 setHidden:0x0];
    [self addSubview:r22];
    [r22 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    sub_1008897a8();
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_overlayViewObservers));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_initWeak(&stack[-120], self);
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_90 + 0x20, &stack[-120]);
    [r26 addObserverForName:*0x100e9c630 object:self queue:r27 usingBlock:&var_90];
    [r27 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
    [r26 addObserverForName:*0x100e9c628 object:self queue:r27 usingBlock:&var_B8];
    [r27 release];
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak(&var_90 + 0x20);
    objc_destroyWeak(&stack[-120]);
    [r22 release];
    [var_C8 release];
    [var_C0 release];
    return;
}

-(void)handleShowOverlayView {
    sub_1008833e8(*0x100e9c060, self, 0x0);
    [self setHidden:0x0];
    return;
}

-(void)handleHideOverlayView {
    sub_1008833e8(*0x100e9c068, self, 0x0);
    [self setHidden:0x1];
    return;
}

-(void)handleLoadOverlayWebViewWithUserInfo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 objectForKeyedSubscript:*0x100e95340];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 objectForKeyedSubscript:@"overlayHtml"] retain];
    r0 = [r19 objectForKeyedSubscript:@"baseUrl"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) {
            r22 = @"about:blank";
            [r22 retain];
    }
    r23 = [[NSURL URLWithString:r2] retain];
    if (r21 != 0x0) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            sub_1007ce06c(0x0, @"Ignoring overlay view load. Missing or invalid argument. %@");
    }
    else {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_overlayWebViewController));
            r0 = *(r20 + r24);
            if (r0 == 0x0) {
                    [r20 addOverlaySubview];
                    r0 = *(r20 + r24);
            }
            [r0 loadHTMLString:r21 baseURL:r23 completionHandler:0x0];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadOverlayUserInfo));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleSendMessageToOverlayWebViewWithUserInfo:(void *)arg2 {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_overlayWebViewController));
    if (*(r20 + r23) == 0x0) {
            [r20 addOverlaySubview];
    }
    r21 = [[r19 objectForKeyedSubscript:*0x100e95340] retain];
    r22 = [sub_1008762a4(@"sendMessageToSdk", r21) retain];
    [*(r20 + r23) asyncEvaluateJavaScriptFromString:r22 completionBlock:0x0];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleSendMessageToNativeJSWithUserInfo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    [r0 release];
            }
            else {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_overlayIdentifier));
                    if (*(r19 + r22) != 0x0) {
                            r0 = [NSMutableDictionary alloc];
                            r0 = [r0 initWithDictionary:r20];
                            sub_100822058(r0, @"id", *(r19 + r22));
                            [r20 release];
                            r20 = r21;
                    }
            }
    }
    [r19->_JSContext asyncEvaluateFunction:@"sendMessageToNativeJs" parameters:r20];
    [r20 release];
    return;
}

-(bool)webViewController:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 scheme];
            r0 = [r0 retain];
            r22 = [[r0 lowercaseString] retain];
            [r0 release];
            if ([r22 isEqual:r2] != 0x0) {
                    [r21->_actionURLHandler handleActionURLRequest:r19];
                    r21 = 0x0;
            }
            else {
                    r21 = 0x1;
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)webViewControllerDidStartLoad:(void *)arg2 {
    return;
}

-(void)webViewControllerDidFinishLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_loadOverlayUserInfo));
    r0 = *(r19 + r21);
    r0 = [r0 objectForKeyedSubscript:@"id"];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 copy];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_overlayIdentifier));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    [r20 release];
    r0 = *(r19 + r21);
    *(r19 + r21) = 0x0;
    [r0 release];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r20 = r0;
    sub_100822058(r0, @"messageType", @"htmlLoaded");
    r2 = *(r19 + r22);
    if (r2 != 0x0) {
            sub_100822058(r20, @"id", r2);
    }
    [r19->_JSContext asyncEvaluateFunction:@"sendMessageToNativeJs" parameters:r20];
    [r20 release];
    return;
}

-(void)webViewController:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    [self webViewDidFailWithError:arg3];
    return;
}

-(void)webViewControllerWebContentProcessDidTerminate:(void *)arg2 {
    r20 = [sub_100809600(0xb, @"Web content process terminated.") retain];
    [self webViewDidFailWithError:r20];
    [r20 release];
    return;
}

-(void)webViewDidFailWithError:(void *)arg2 {
    sub_1007ce06c(0x0, @"Failed to load overlay view load. %@");
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_overlayIdentifier));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadOverlayUserInfo));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_actionURLHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_overlayIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_loadOverlayUserInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_overlayWebViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_overlayViewObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_JSContextObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_JSContext, 0x0);
    return;
}

@end