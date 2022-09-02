@implementation TJYMoatUIWebViewBridge

-(void *)initWithDelegate:(void *)arg2 target:(void *)arg3 withWebView:(void *)arg4 forNativeAd:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [[&var_40 super] initWithDelegate:r23 target:r21 delegateProtocol:@protocol(UIWebViewDelegate) forNativeAd:arg5];
    r20 = r0;
    [r21 release];
    [r23 release];
    if (r20 != 0x0) {
            [r20 setWebView:r19];
            [r20 markMoatActive:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)markMoatActive:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = arg2;
    r21 = self;
    r20 = [r19 retain];
    if ([TJYMoatOnOff getDebug] != 0x0) {
            NSLog(@"[%@] Ready for communication (setting environment variables).", @selector(getDebug));
    }
    r21 = [[r21 getJSEnvString] retain];
    r22 = [[NSString stringWithFormat:@"javascript:window.__zMoatInit__ = window.__zMoatInit__ || true; %@"] retain];
    [r21 release];
    r19 = [r19 stringByEvaluatingJavaScriptFromString:r22];
    [r20 release];
    [[r19 retain] release];
    [r22 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"NSErrorFailingURLStringKey"] retain];
    [r0 release];
    r0 = [TJYMoatBridge logToConsole:0x100bf4a00 ofSize:0xc];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (([r22 hasPrefix:r23] & 0x1) == 0x0) {
            if (([r21 recursionFlag_didFailLoadWithError] & 0x1) != 0x0) {
                    [r21 logRecursionWarningIfNotAlreadyLogged];
            }
            else {
                    [r21 setRecursionFlag_didFailLoadWithError:0x1];
                    r0 = [r21 nested];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = [r0 respondsToSelector:@selector(webView:didFailLoadWithError:), 0xc];
                    [r0 release];
                    if (r28 != 0x0) {
                            r0 = [r21 nested];
                            r0 = [r0 retain];
                            [r0 webView:r19 didFailLoadWithError:r20];
                            [r0 release];
                    }
                    [r21 setRecursionFlag_didFailLoadWithError:0x0];
            }
    }
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
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
    [r20 markMoatActive:r19];
    if (([r20 recursionFlag_webViewDidFinishLoad] & 0x1) != 0x0) {
            [r20 logRecursionWarningIfNotAlreadyLogged];
    }
    else {
            [r20 setRecursionFlag_webViewDidFinishLoad:0x1];
            r0 = [r20 nested];
            r0 = [r0 retain];
            [r0 webViewDidFinishLoad:r19];
            [r0 release];
            [r20 setRecursionFlag_webViewDidFinishLoad:0x0];
    }
    [r19 release];
    return;
}

-(bool)hasWebView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 webView];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r0 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)recursionFlag_shouldStart {
    r0 = *(int8_t *)(int64_t *)&self->_recursionFlag_shouldStart & 0x1;
    return r0;
}

-(void)setRecursionFlag_shouldStart:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_recursionFlag_shouldStart = arg2;
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r23 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (([r22 recursionFlag_shouldStart] & 0x1) != 0x0) {
            [r22 logRecursionWarningIfNotAlreadyLogged];
            r23 = 0x1;
    }
    else {
            [r22 setRecursionFlag_shouldStart:0x1];
            r0 = [r22 nested];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            if ([r0 respondsToSelector:@selector(webView:shouldStartLoadWithRequest:navigationType:), r3, r4] != 0x0) {
                    r28 = [r22 isMoatRequest:r21];
                    [r27 release];
                    if ((r28 & 0x1) == 0x0) {
                            r0 = [r22 nested];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = [r0 webView:r19 shouldStartLoadWithRequest:r20 navigationType:r23];
                            [r0 release];
                    }
                    else {
                            r23 = 0x1;
                    }
            }
            else {
                    [r27 release];
                    r23 = 0x1;
            }
            [r22 setRecursionFlag_shouldStart:0x0];
    }
    if ([TJYMoatOnOff getStatus] != 0x0) {
            r0 = [r22 getResponseForMoatRequest:r21];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [[[r19 stringByEvaluatingJavaScriptFromString:r22] retain] release];
                    r23 = 0x0;
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)recursionFlag_didFailLoadWithError {
    r0 = *(int8_t *)(int64_t *)&self->_recursionFlag_didFailLoadWithError & 0x1;
    return r0;
}

-(void)setRecursionFlag_didFailLoadWithError:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_recursionFlag_didFailLoadWithError = arg2;
    return;
}

-(bool)recursionFlag_webViewDidFinishLoad {
    r0 = *(int8_t *)(int64_t *)&self->_recursionFlag_webViewDidFinishLoad & 0x1;
    return r0;
}

-(void)setRecursionFlag_webViewDidFinishLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_recursionFlag_webViewDidFinishLoad = arg2;
    return;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webView, arg2);
    return;
}

@end