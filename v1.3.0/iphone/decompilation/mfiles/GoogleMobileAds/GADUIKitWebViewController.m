@implementation GADUIKitWebViewController

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([GADUIKitWebViewController class] == self) {
            *0x1011dbfc0 = NSClassFromString(@"UIWebView");
    }
    return;
}

+(bool)isAvailable {
    r0 = self;
    if (*qword_1011dbfc0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)dealloc {
    [self->_webView removeFromSuperview];
    [[&var_20 super] dealloc];
    return;
}

-(void *)webView {
    r0 = self->_webView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 eventContext:(void *)arg3 configuration:(void *)arg4 {
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
    r21 = [r2 retain];
    r19 = [r3 retain];
    r0 = [[&var_70 super] initWithFrame:r21 eventContext:r19 configuration:r4];
    r20 = r0;
    [r21 release];
    if (r20 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.ui-web-view-controller", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = *0x1011dbfc0;
            r0 = [r0 alloc];
            r0 = [r0 initWithFrame:r2];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
            r8 = *(r20 + r26);
            *(r20 + r26) = r0;
            [r8 release];
            r21 = [[GADUIWebViewDelegateProxy alloc] initWithWebViewDelegate:r20];
            [*(r20 + r26) setDelegate:r21];
            objc_setAssociatedObject(*(r20 + r26), 0x1011dbfc8, r21, 0x1);
            [*(r20 + r26) setAllowsInlineMediaPlayback:0x1];
            [*(r20 + r26) setMediaPlaybackAllowsAirPlay:0x1];
            [*(r20 + r26) setMediaPlaybackRequiresUserAction:0x0];
            [*(r20 + r26) setScalesPageToFit:[r19 scalesPageToFit]];
            r0 = *(r20 + r26);
            r0 = [r0 scrollView];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(setContentInsetAdjustmentBehavior:)];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = *(r20 + r26);
                    r0 = [r0 scrollView];
                    r0 = [r0 retain];
                    [r0 setContentInsetAdjustmentBehavior:0x2];
                    [r0 release];
            }
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)configuration {
    r0 = self->_configuration;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)underlyingWebView {
    r0 = self->_webView;
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
    [self->_webView loadRequest:r21];
    [r21 release];
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

-(void)loadHTMLString:(void *)arg2 baseURL:(void *)arg3 completionHandler:(void *)arg4 {
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
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r24 = [arg4 retain];
    [r20 resetLoadState];
    r21 = objc_retainBlock(arg4);
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(r20 + r8);
    *(r20 + r8) = r21;
    [r0 release];
    r21 = [r22 retain];
    r0 = sub_100894eac();
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] != 0x0) {
            r24 = [[NSString alloc] initWithFormat:@"<script>%@</script>"];
            r23 = [sub_1008c79d8(r21, r24) retain];
            [r24 release];
    }
    else {
            r23 = [r21 retain];
    }
    [r22 release];
    [r21 release];
    [r21 release];
    [r20->_webView loadHTMLString:r23 baseURL:r19];
    [r19 release];
    [r23 release];
    return;
}

-(void)updateLastMainDocumentURL:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = r20->_lockQueue;
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_sync(r21, &var_50);
            [var_28 release];
            [var_30 release];
    }
    [r19 release];
    return;
}

-(void)loadDynamicContentSize {
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:*0x100e9b708] retain];
    [[[self->_webView stringByEvaluatingJavaScriptFromString:r21] retain] release];
    [r21 release];
    [r0 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r20 = self;
    r0 = [arg3 retain];
    r19 = r0;
    r21 = [[r0 valueForHTTPHeaderField:@"User-Agent"] retain];
    r0 = [GADNetwork sharedInstance];
    r0 = [r0 retain];
    [r0 setUserAgentString:r21];
    [r0 release];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 respondsToSelector:@selector(webViewController:shouldStartLoadWithRequest:navigationType:), r3, r4] != 0x0 && [r23 webViewController:r20 shouldStartLoadWithRequest:r19 navigationType:r22] == 0x0) {
            r20 = 0x0;
    }
    else {
            [r20 updateLastMainDocumentURL:r19];
            r20 = 0x1;
    }
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)webViewDidStartLoad:(void *)arg2 {
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
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            if ([*(r20 + r23) dataDetectorType] != 0x0) {
                    [r20->_webView setDataDetectorTypes:[*(r20 + r23) dataDetectorType]];
            }
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 webViewControllerDidStartLoad:r20];
    [r0 release];
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

-(void)webViewDidFinishLoad:(void *)arg2 {
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
    if ([r20->_configuration collectDynamicContentSize] != 0x0) {
            [r20 loadDynamicContentSize];
    }
    if (([r19 isLoading] & 0x1) == 0x0) {
            [r20 didFinishLoadCompletelyWithError:0x0];
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 webViewControllerDidFinishLoad:r20];
    [r20->_webView invalidateIntrinsicContentSize];
    [r0 release];
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

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg3 retain];
    if (r20 == 0x0) {
            r0 = sub_100809600(0xb, 0x0);
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            r20 = r21;
    }
    [r19 didFinishLoadCompletelyWithError:r20];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 webViewController:r19 didFailLoadWithError:r20];
    [r0 release];
    [r20 release];
    return;
}

@end