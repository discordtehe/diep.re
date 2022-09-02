@implementation GADWebAdView

-(void *)initWithFrame:(struct CGRect)arg2 context:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [r2 retain];
    r20 = [[GADWebViewConfiguration alloc] init];
    r19 = [self initWithFrame:r20 configuration:r22 context:r4];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    if (*(r19 + r21) != 0x0) {
            r0 = [GADWebViewControllerMap sharedInstance];
            r0 = [r0 retain];
            [r0 removeWebViewController:*(r19 + r21)];
            [r0 release];
    }
    [[&var_30 super] dealloc];
    return;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)layoutSubviews {
    [[&var_20 super] layoutSubviews];
    r20 = [[self->_webViewController webView] retain];
    [self bounds];
    [r20 setFrame:r2];
    [r20 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 configuration:(void *)arg3 context:(void *)arg4 {
    r4 = arg4;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
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
    r22 = r3;
    r19 = [r2 retain];
    r20 = [r22 retain];
    r0 = [[&var_80 super] initWithFrame:r20 context:r3];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [UIScrollView alloc];
            r0 = [r0 initWithFrame:r2];
            var_90 = r0;
            [r0 setScrollsToTop:0x0];
            [r21 addSubview:r0];
            r23 = [GADWebViewController alloc];
            [r21 bounds];
            r0 = [r23 initWithFrame:r20 eventContext:r19 configuration:r4];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
            r8 = *(r21 + r28);
            *(r21 + r28) = r0;
            [r8 release];
            r0 = [GADWebViewControllerMap sharedInstance];
            r0 = [r0 retain];
            [r0 addWebViewController:*(r21 + r28)];
            [r0 release];
            [*(r21 + r28) setDelegate:r21];
            r25 = [[*(r21 + r28) webView] retain];
            var_A0 = r25;
            r0 = sub_10089f8b8();
            r0 = [r0 retain];
            [r0 addSubview:r25];
            [r0 release];
            [r25 setAutoresizingMask:0x12];
            r0 = [NSOperationQueue alloc];
            r0 = [r0 init];
            var_88 = r20;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueue));
            r8 = *(r21 + r20);
            *(r21 + r20) = r0;
            [r8 release];
            [*(r21 + r20) setMaxConcurrentOperationCount:0x1];
            [*(r21 + r20) setSuspended:0x1];
            r0 = *(r21 + r28);
            r0 = [r0 webView];
            r0 = [r0 retain];
            [r0 setOpaque:0x0];
            [r0 release];
            r26 = [[*(r21 + r28) webView] retain];
            r20 = [[UIColor clearColor] retain];
            [r26 setBackgroundColor:r20];
            [r20 release];
            [r26 release];
            r0 = *(r21 + r28);
            r0 = [r0 webView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 scrollView];
            r0 = [r0 retain];
            [r0 setBounces:0x0];
            [r0 release];
            [r20 release];
            r0 = *(r21 + r28);
            r0 = [r0 webView];
            r0 = [r0 retain];
            r25 = [[r0 scrollView] retain];
            [r25 setScrollEnabled:[r19 scrollEnabled]];
            [r25 release];
            [r0 release];
            r20 = [[r21 layer] retain];
            r0 = [UIColor clearColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r20 setBackgroundColor:[r0 CGColor]];
            [r0 release];
            [r20 release];
            r0 = *(r21 + r28);
            r0 = [r0 webView];
            r0 = [r0 retain];
            [r0 setClipsToBounds:0x1];
            [r0 release];
            r0 = [GADGestureRecognizer alloc];
            r0 = [r0 init];
            [r0 setDelegate:r21];
            [r21 addGestureRecognizer:r0];
            r0 = [GADActionURLHandler alloc];
            r0 = [r0 initWithMessageSource:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_actionURLHandler));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_context, r22);
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = r20;
            r20 = var_88;
            [r0 release];
            [var_A0 release];
            [var_90 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)willMoveToWindow:(void *)arg2 {
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
    [[&var_40 super] willMoveToWindow:r2];
    r0 = r20->_webViewController;
    r0 = [r0 webView];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (arg2 != 0x0) {
            r0 = [r19 superview];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != r20) {
                    [r20 addSubview:r2];
            }
    }
    else {
            r0 = sub_10089f8b8();
            r29 = r29;
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
    }
    r0 = sub_100841b10();
    r29 = r29;
    r21 = [r0 retain];
    if (*(int8_t *)(int64_t *)&r20->_shouldRenderTestAdLabel != 0x0) {
            r0 = [r20 subviews];
            r0 = [r0 retain];
            r23 = [r0 containsObject:r2];
            [r0 release];
            if (r23 != 0x0) {
                    r1 = @selector(bringSubviewToFront:);
                    r0 = r20;
            }
            else {
                    r1 = @selector(addSubview:);
                    r0 = r19;
            }
            objc_msgSend(r0, r1);
    }
    else {
            [r21 removeFromSuperview];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setLoadCompletionHandler:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            r0 = r2;
    }
    else {
            r0 = 0x100e8f758;
    }
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadCompletionHandler));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    return;
}

-(void)loadHTMLString:(void *)arg2 baseURL:(void *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueue));
    r23 = *(self + r25);
    r19 = [arg4 retain];
    [r23 cancelAllOperations];
    [*(self + r25) setSuspended:0x1];
    [self setLoadCompletionHandler:r19];
    [r19 release];
    [self->_webViewController loadHTMLString:r22 baseURL:r20 completionHandler:0x0];
    [r20 release];
    [r22 release];
    return;
}

-(void)loadURL:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueue));
    r22 = *(self + r24);
    r20 = [arg3 retain];
    [r22 cancelAllOperations];
    [*(self + r24) setSuspended:0x1];
    [self setLoadCompletionHandler:r20];
    [r20 release];
    r20 = [[NSURLRequest alloc] initWithURL:r21];
    [r21 release];
    [self->_webViewController loadRequest:r20];
    [r20 release];
    return;
}

-(void)loadCompletedWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_loadCompletionHandler));
    if (*(r20 + r21) != 0x0) {
            sub_1008b9904();
            r20->_loadCompletedTimestamp = d0;
            r0 = *(r20 + r21);
            (*(r0 + 0x10))(r0, r19);
            r0 = *(r20 + r21);
            *(r20 + r21) = 0x0;
            [r0 release];
            if (r19 == 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r22 = [sub_10088ce6c([r0 statusBarOrientation], 0x1) retain];
                    [r20 asyncEvaluateScript:r22];
                    [r22 release];
                    [r0 release];
            }
    }
    else {
            sub_1007ce06c(r20->_context, @"Method must not be called multiple times.");
    }
    [r19 release];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self->_webViewController;
    r0 = [r0 webView];
    r0 = [r0 retain];
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 contentSize];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void)bufferNotificationsUntilAdAvailableToDelegate:(void *)arg2 {
    [arg2 retain];
    [self->_actionURLHandler pauseBufferedActions];
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bufferObservers));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r21 addObserverForName:*0x100e9c018 object:r19 queue:0x0 usingBlock:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r19 release];
    return;
}

-(long long)contentInsetAdjustmentBehavior {
    return 0x2;
}

-(void)asyncEvaluateScript:(void *)arg2 {
    [self->_webViewController asyncEvaluateJavaScriptFromString:arg2 completionBlock:0x0];
    return;
}

-(void)asyncEvaluateFunction:(void *)arg2 parameters:(void *)arg3 {
    r0 = [arg2 retain];
    r19 = sub_1008762a4(r0, arg3);
    [r0 release];
    r19 = [r19 retain];
    [self asyncEvaluateScript:r19];
    [r19 release];
    return;
}

-(void)dispatchSDKEvent:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [NSMutableDictionary alloc];
    r0 = [GADDevice sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 deviceSubmodel] retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x58 forKeys:&var_68 count:0x2];
    r25 = [r0 retain];
    r22 = [r22 initWithDictionary:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r20 != 0x0) {
            [r22 addEntriesFromDictionary:r20];
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueue));
    if ([*(r21 + r24) isSuspended] != 0x0 && [*(r21 + r24) operationCount] >= 0x14) {
            sub_1007ce06c(r21->_context, @"Event queue is full. Dropping the event.\nname: %@\nparameters: %@");
    }
    else {
            objc_initWeak(&stack[-128], r21);
            objc_copyWeak(&var_A8 + 0x30, &stack[-128]);
            var_88 = [r19 retain];
            var_80 = [r22 retain];
            [r21 addOperationWithBlock:&var_A8];
            [var_80 release];
            [var_88 release];
            objc_destroyWeak(&var_A8 + 0x30);
            objc_destroyWeak(&stack[-128]);
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)dropWebViewController {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(self + r21);
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [GADWebViewControllerMap sharedInstance];
    r0 = [r0 retain];
    [r0 removeWebViewController:*(self + r21)];
    [r0 release];
    r0 = *(self + r21);
    *(self + r21) = 0x0;
    [r0 release];
    return;
}

-(void)webViewControllerDidStartLoad:(void *)arg2 {
    return;
}

-(bool)isNavigationValidClick:(long long)arg2 {
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
    d10 = r19->_loadCompletedTimestamp;
    sub_1008b9904();
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b4e0];
    [r0 release];
    r0 = 0x0;
    if ((arg2 & 0xfffffffffffffffe) != 0x2) {
            r0 = 0x0;
            if (d8 - d10 > d9) {
                    r0 = 0x0;
                    if (*(int8_t *)(int64_t *)&r19->_touched != 0x0) {
                            r0 = 0x0;
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
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
    r23 = arg4;
    r21 = self;
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1007d1cdc;

loc_1007d1c2c:
    r0 = [r20 scheme];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 lowercaseString];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    if (([r22 isEqual:r2] & 0x1) != 0x0) goto loc_1007d1ccc;

loc_1007d1c88:
    if (([r22 isEqual:r2] & 0x1) != 0x0 || ([r22 isEqual:r2] & 0x1) != 0x0) goto loc_1007d1cb8;

loc_1007d1d7c:
    [r21->_actionURLHandler handleActionURLRequest:r19];
    r21 = 0x0;
    goto loc_1007d1cd0;

loc_1007d1cd0:
    [r22 release];
    goto loc_1007d1ce0;

loc_1007d1ce0:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1007d1cb8:
    if (r21->_loadCompletedTimestamp != 0x0) goto loc_1007d1d08;

loc_1007d1ccc:
    r21 = 0x1;
    goto loc_1007d1cd0;

loc_1007d1d08:
    r0 = r21->_webViewController;
    r0 = [r0 mainDocumentURL];
    r0 = [r0 retain];
    r24 = r0;
    if ((sub_10089a458(r0, r20) & 0x1) == 0x0) goto loc_1007d1d40;

loc_1007d1d38:
    r21 = 0x0;
    goto loc_1007d1d68;

loc_1007d1d68:
    [r24 release];
    goto loc_1007d1cd0;

loc_1007d1d40:
    if ([r21 isNavigationValidClick:r23] == 0x0 || sub_1008b981c() != 0x0) goto loc_1007d1d64;

loc_1007d1d74:
    [r24 release];
    goto loc_1007d1d7c;

loc_1007d1d64:
    r21 = 0x1;
    goto loc_1007d1d68;

loc_1007d1cdc:
    r21 = 0x0;
    goto loc_1007d1ce0;
}

-(void)webViewControllerDidFinishLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19->_eventQueue setSuspended:0x0];
    if (r19->_loadCompletionHandler != 0x0) {
            [r19 loadCompletedWithError:0x0];
    }
    return;
}

-(void)webViewController:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([arg3 code] == -0x3e7) {
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 boolForKey:*0x100e9b3d0];
            [r0 release];
            if (r21 != 0x0) {
                    if (r19->_loadCompletionHandler != 0x0) {
                            r20 = [sub_100809600(0x2, 0x0) retain];
                            [r19 loadCompletedWithError:r20];
                            [r20 release];
                    }
            }
    }
    else {
            if (r19->_loadCompletionHandler != 0x0) {
                    r20 = [sub_100809600(0x2, 0x0) retain];
                    [r19 loadCompletedWithError:r20];
                    [r20 release];
            }
    }
    return;
}

-(void)webViewController:(void *)arg2 runJavaScriptAlertPanelWithTitle:(void *)arg3 message:(void *)arg4 completionHandler:(void *)arg5 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = @selector(delegate);
    r22 = [arg5 retain];
    r23 = [objc_msgSend(r21, r23) retain];
    if (r23 != 0x0) {
            [r23 adView:r21 runJavaScriptAlertPanelWithTitle:r19 message:r20 completionHandler:r22];
    }
    else {
            (*(r22 + 0x10))(r22);
    }
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)webViewController:(void *)arg2 runJavaScriptConfirmPanelWithTitle:(void *)arg3 message:(void *)arg4 completionHandler:(void *)arg5 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = @selector(delegate);
    r22 = [arg5 retain];
    r23 = [objc_msgSend(r21, r23) retain];
    if (r23 != 0x0) {
            [r23 adView:r21 runJavaScriptConfirmPanelWithTitle:r19 message:r20 completionHandler:r22];
    }
    else {
            (*(r22 + 0x10))(r22, 0x0);
    }
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)webViewController:(void *)arg2 runJavaScriptTextInputPanelWithTitle:(void *)arg3 defaultText:(void *)arg4 prompt:(void *)arg5 completionHandler:(void *)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r24 = @selector(delegate);
    r23 = [arg6 retain];
    r24 = [objc_msgSend(r22, r24) retain];
    if (r24 != 0x0) {
            [r24 adView:r22 runJavaScriptTextInputPanelWithTitle:r19 defaultText:r20 prompt:r21 completionHandler:r23];
    }
    else {
            (*(r23 + 0x10))(r23, 0x0);
    }
    [r23 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)webViewControllerWebContentProcessDidTerminate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_1008833e8(*0x100e9c260, r19, 0x0);
    r20 = [sub_100809600(0xb, @"Web content process terminated.") retain];
    if (r19->_loadCompletionHandler != 0x0) {
            [r19 loadCompletedWithError:r20];
    }
    [r20 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldReceiveTouch:(void *)arg3 {
    *(int8_t *)(int64_t *)&self->_touched = 0x1;
    return 0x1;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void *)webViewController {
    r0 = self->_webViewController;
    return r0;
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

-(bool)shouldRenderTestAdLabel {
    r0 = *(int8_t *)(int64_t *)&self->_shouldRenderTestAdLabel;
    return r0;
}

-(void)setShouldRenderTestAdLabel:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldRenderTestAdLabel = arg2;
    return;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_webViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_bufferObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_actionURLHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_eventQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_loadCompletionHandler, 0x0);
    return;
}

@end