@implementation TJWKWebViewJavascriptBridge

+(void)enableLogging {
    [TJWebViewJavascriptBridgeBase enableLogging];
    return;
}

-(void)send:(void *)arg2 {
    [self send:arg2 responseCallback:0x0];
    return;
}

+(void *)bridgeForWebView:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 _setupInstance:r21];
    [r21 release];
    [r0 reset];
    r0 = [r0 autorelease];
    return r0;
}

-(void)callHandler:(void *)arg2 {
    [self callHandler:arg2 data:0x0 responseCallback:0x0];
    return;
}

-(void)send:(void *)arg2 responseCallback:(void *)arg3 {
    r21 = [arg2 retain];
    [self->_base sendData:r21 responseCallback:arg3 handlerName:0x0];
    [r21 release];
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

-(void)reset {
    [self->_base reset];
    return;
}

-(void)setWebViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webViewDelegate, arg2);
    return;
}

-(void)disableJavscriptAlertBoxSafetyTimeout {
    [self->_base disableJavscriptAlertBoxSafetyTimeout];
    return;
}

-(void)_setupInstance:(void *)arg2 {
    r22 = [arg2 retain];
    [objc_storeWeak((int64_t *)&self->_webView, arg2) retain];
    [arg2 setNavigationDelegate:self];
    [r22 release];
    r0 = [TJWebViewJavascriptBridgeBase alloc];
    r0 = [r0 init];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_base));
    r8 = *(self + r21);
    *(self + r21) = r0;
    [r8 release];
    [*(self + r21) setDelegate:self];
    [arg2 release];
    return;
}

-(void)dealloc {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_base));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    objc_storeWeak((int64_t *)&self->_webView, 0x0);
    objc_storeWeak((int64_t *)&self->_webViewDelegate, 0x0);
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    [r0 setNavigationDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)WKFlushMessageQueue {
    r20 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r21 = [[self->_base webViewJavascriptFetchQueyCommand] retain];
    [r20 evaluateJavaScript:r21 completionHandler:&var_48];
    [r21 release];
    [r20 release];
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
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
            r21 = [r19 retain];
            var_28 = [r20 retain];
            [r21 evaluateJavaScript:@"typeof WebViewJavascriptBridge == 'object'" completionHandler:&var_58];
            [var_28 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationResponse:(void *)arg3 decisionHandler:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r22->_webView);
    [r0 release];
    if (r0 == r19) {
            r22 = objc_loadWeakRetained((int64_t *)&r22->_webViewDelegate);
            if (r22 != 0x0 && [r22 respondsToSelector:@selector(webView:decidePolicyForNavigationResponse:decisionHandler:), r3, r4] != 0x0) {
                    [r22 webView:r19 decidePolicyForNavigationResponse:r20 decisionHandler:r21];
            }
            else {
                    (*(r21 + 0x10))(r21, 0x1);
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didReceiveAuthenticationChallenge:(void *)arg3 completionHandler:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r22->_webView);
    [r0 release];
    if (r0 == r19) {
            r22 = objc_loadWeakRetained((int64_t *)&r22->_webViewDelegate);
            if (r22 != 0x0 && [r22 respondsToSelector:@selector(webView:didReceiveAuthenticationChallenge:completionHandler:), r3, r4] != 0x0) {
                    [r22 webView:r19 didReceiveAuthenticationChallenge:r20 completionHandler:r21];
            }
            else {
                    (*(r21 + 0x10))(r21, 0x1, 0x0);
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didStartProvisionalNavigation:(void *)arg3 {
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
            if (r21 != 0x0 && [r21 respondsToSelector:@selector(webView:didStartProvisionalNavigation:), r3] != 0x0) {
                    [r21 webView:r19 didStartProvisionalNavigation:r20];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r22->_webView);
    [r0 release];
    if (r0 == r19) {
            r22 = objc_loadWeakRetained((int64_t *)&r22->_webViewDelegate);
            if (r22 != 0x0 && [r22 respondsToSelector:@selector(webView:didFailNavigation:withError:), r3, r4] != 0x0) {
                    [r22 webView:r19 didFailNavigation:r20 withError:r21];
            }
            [r22 release];
    }
    [r21 release];
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
    r29 = &saved_fp;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r24->_webView);
    [r0 release];
    if (r0 != r19) goto loc_100926930;

loc_1009267d4:
    r0 = [r20 request];
    r0 = [r0 retain];
    r22 = [[r0 URL] retain];
    [r0 release];
    r25 = (int64_t *)&r24->_webViewDelegate;
    r23 = objc_loadWeakRetained(r25);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_base));
    if ([*(r24 + r26) isWebViewJavascriptBridgeURL:r22] == 0x0) goto loc_100926874;

loc_100926848:
    r8 = [*(r24 + r26) isBridgeLoadedURL:r22];
    r0 = *(r24 + r26);
    if (r8 == 0x0) goto loc_1009268d4;

loc_100926868:
    r1 = @selector(injectJavascriptFile);
    goto loc_1009268f4;

loc_1009268f4:
    objc_msgSend(r0, r1);
    goto loc_100926910;

loc_100926910:
    r8 = *(r21 + 0x10);
    r0 = r21;
    r1 = 0x0;
    goto loc_10092691c;

loc_10092691c:
    (r8)(r0, r1);
    goto loc_100926920;

loc_100926920:
    [r23 release];
    [r22 release];
    goto loc_100926930;

loc_100926930:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1009268d4:
    if ([r0 isQueueMessageURL:r22] == 0x0) goto loc_1009268fc;

loc_1009268e8:
    r1 = @selector(WKFlushMessageQueue);
    r0 = r24;
    goto loc_1009268f4;

loc_1009268fc:
    [*(r24 + r26) logUnkownMessage:r22];
    goto loc_100926910;

loc_100926874:
    if (r23 == 0x0 || [r23 respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:), r3, r4] == 0x0) goto loc_1009268c4;

loc_100926898:
    r0 = objc_loadWeakRetained(r25);
    [r0 webView:r19 decidePolicyForNavigationAction:r20 decisionHandler:r21];
    [r0 release];
    goto loc_100926920;

loc_1009268c4:
    r8 = *(r21 + 0x10);
    r1 = 0x1;
    r0 = r21;
    goto loc_10092691c;
}

-(void *)_evaluateJavascript:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    [r0 evaluateJavaScript:r20 completionHandler:0x0];
    [r20 release];
    [r0 release];
    return 0x0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_base, 0x0);
    objc_destroyWeak((int64_t *)&self->_webViewDelegate);
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r22->_webView);
    [r0 release];
    if (r0 == r19) {
            r22 = objc_loadWeakRetained((int64_t *)&r22->_webViewDelegate);
            if (r22 != 0x0 && [r22 respondsToSelector:@selector(webView:didFailProvisionalNavigation:withError:), r3, r4] != 0x0) {
                    [r22 webView:r19 didFailProvisionalNavigation:r20 withError:r21];
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end