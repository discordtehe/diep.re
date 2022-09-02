@implementation TJWebViewJavascriptBridge

+(void)enableLogging {
    [TJWebViewJavascriptBridgeBase enableLogging];
    return;
}

+(void)setLogMaxLength:(int)arg2 {
    [TJWebViewJavascriptBridgeBase setLogMaxLength:arg2];
    return;
}

+(void *)bridgeForWebView:(void *)arg2 {
    r0 = [self bridge:arg2];
    return r0;
}

+(void *)bridge:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [WKWebView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [[TJWKWebViewJavascriptBridge bridgeForWebView:r19] retain];
    }
    else {
            r22 = @selector(isKindOfClass:);
            [UIWebView class];
            if (objc_msgSend(r19, r22) != 0x0) {
                    r0 = [r20 alloc];
                    r0 = [r0 init];
                    r20 = r0;
                    [r0 _platformSpecificSetup:r19];
            }
            else {
                    [r19 class];
                    [NSException raise:@"BadWebViewType" format:@"Unknown web view type %@."];
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setWebViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webViewDelegate, arg2);
    return;
}

-(void)send:(void *)arg2 {
    [self send:arg2 responseCallback:0x0];
    return;
}

-(void)send:(void *)arg2 responseCallback:(void *)arg3 {
    r21 = [arg2 retain];
    [self->_base sendData:r21 responseCallback:arg3 handlerName:0x0];
    [r21 release];
    return;
}

-(void)callHandler:(void *)arg2 {
    [self callHandler:arg2 data:0x0 responseCallback:0x0];
    return;
}

-(void)callHandler:(void *)arg2 data:(void *)arg3 {
    r21 = [arg2 retain];
    [self callHandler:r21 data:arg3 responseCallback:0x0];
    [r21 release];
    return;
}

-(void)callHandler:(void *)arg2 data:(void *)arg3 responseCallback:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self->_base sendData:r20 responseCallback:arg4 handlerName:r22];
    [r20 release];
    [r22 release];
    return;
}

-(void)registerHandler:(void *)arg2 handler:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 copy];
    r0 = self->_base;
    r0 = [r0 messageHandlers];
    r0 = [r0 retain];
    [r0 setObject:r19 forKeyedSubscript:arg2];
    [r22 release];
    [r0 release];
    [r19 release];
    return;
}

-(void)disableJavscriptAlertBoxSafetyTimeout {
    [self->_base disableJavscriptAlertBoxSafetyTimeout];
    return;
}

-(void)removeHandler:(void *)arg2 {
    r20 = self->_base;
    [arg2 retain];
    r0 = [r20 messageHandlers];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r22 release];
    [r20 release];
    return;
}

-(void)dealloc {
    [self _platformSpecificDealloc];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_base));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    objc_storeWeak((int64_t *)&self->_webView, 0x0);
    objc_storeWeak((int64_t *)&self->_webViewDelegate, 0x0);
    [[&var_20 super] dealloc];
    return;
}

-(void *)_evaluateJavascript:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r21 = [[r0 stringByEvaluatingJavaScriptFromString:r20] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)_platformSpecificSetup:(void *)arg2 {
    r22 = [arg2 retain];
    [objc_storeWeak((int64_t *)&self->_webView, arg2) retain];
    [arg2 setDelegate:self];
    [r22 release];
    r0 = [TJWebViewJavascriptBridgeBase alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_base));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    [*(self + r22) setDelegate:self];
    [arg2 release];
    return;
}

-(void)_platformSpecificDealloc {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    [r0 setDelegate:0x0];
    [r0 release];
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
    r0 = objc_loadWeakRetained((int64_t *)&r20->_webView);
    [r0 release];
    if (r0 == r19) {
            r0 = [r19 stringByEvaluatingJavaScriptFromString:@"typeof WebViewJavascriptBridge == 'object'"];
            r0 = [r0 retain];
            r22 = [r0 isEqualToString:@"true"];
            [r0 release];
            r0 = r20->_base;
            if ((r22 & 0x1) != 0x0) {
                    r1 = @selector(flushStartupMessage);
            }
            else {
                    r1 = @selector(injectJavascriptFile);
            }
            objc_msgSend(r0, r1);
            r20 = objc_loadWeakRetained((int64_t *)&r20->_webViewDelegate);
            if (r20 != 0x0 && [r20 respondsToSelector:@selector(webViewDidFinishLoad:)] != 0x0) {
                    [r20 webViewDidFinishLoad:r19];
            }
            [r20 release];
    }
    [r19 release];
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r21->_webView);
    [r0 release];
    if (r0 == r19) {
            r21 = objc_loadWeakRetained((int64_t *)&r21->_webViewDelegate);
            if (r21 != 0x0 && [r21 respondsToSelector:@selector(webView:didFailLoadWithError:), r3] != 0x0) {
                    [r21 webView:r19 didFailLoadWithError:r20];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r20->_webView);
    [r0 release];
    if (r0 == r19) {
            r20 = objc_loadWeakRetained((int64_t *)&r20->_webViewDelegate);
            if (r20 != 0x0 && [r20 respondsToSelector:@selector(webViewDidStartLoad:)] != 0x0) {
                    [r20 webViewDidStartLoad:r19];
            }
            [r20 release];
    }
    [r19 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r24 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r23->_webView);
    [r0 release];
    if (r0 != r19) {
            r23 = 0x1;
    }
    else {
            r0 = [r20 URL];
            r29 = r29;
            r21 = [r0 retain];
            r22 = objc_loadWeakRetained((int64_t *)&r23->_webViewDelegate);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_base));
            if ([*(r23 + r26) isWebViewJavascriptBridgeURL:r21] != 0x0) {
                    r8 = [*(r23 + r26) isBridgeLoadedURL:r21];
                    r0 = *(r23 + r26);
                    if (r8 != 0x0) {
                            [r0 injectJavascriptFile];
                    }
                    else {
                            r8 = [r0 isQueueMessageURL:r21];
                            r0 = *(r23 + r26);
                            if (r8 != 0x0) {
                                    r24 = [[r0 webViewJavascriptFetchQueyCommand] retain];
                                    r25 = [[r23 _evaluateJavascript:r24] retain];
                                    [r24 release];
                                    [*(r23 + r26) flushMessageQueue:r25];
                                    [r25 release];
                            }
                            else {
                                    [r0 logUnkownMessage:r21];
                            }
                    }
                    r23 = 0x0;
            }
            else {
                    if (r22 != 0x0 && [r22 respondsToSelector:@selector(webView:shouldStartLoadWithRequest:navigationType:), r3, r4] != 0x0) {
                            r23 = [r22 webView:r19 shouldStartLoadWithRequest:r20 navigationType:r24];
                    }
                    else {
                            r23 = 0x1;
                    }
            }
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_base, 0x0);
    objc_destroyWeak((int64_t *)&self->_webViewDelegate);
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

@end