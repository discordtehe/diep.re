@implementation AdColony_AvidBridge

-(void *)webView {
    r0 = self->_webViewHolder;
    r0 = [r0 webView];
    return r0;
}

-(void)setWebView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_webViewHolder));
    r0 = *(r20 + r22);
    r0 = [r0 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            r0 = [AdColony_AvidWebViewHolderFactory holderForWebView:r19];
            r0 = [r0 retain];
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r20->_isAvidJsInjected = 0x0;
            [r20 injectAvid];
    }
    [r19 release];
    return;
}

-(void)publishCommand:(void *)arg2 {
    [self->_webViewHolder injectJavascript:arg2];
    return;
}

-(void)injectJavaScriptResource:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r20 = [[NSString stringWithFormat:@"var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%@\");document.body.appendChild(script);"] retain];
            [r19->_webViewHolder injectJavascript:r20];
            [r20 release];
    }
    return;
}

-(void)publishNativeViewState:(void *)arg2 {
    r19 = self->_webViewHolder;
    r20 = [[AdColony_AvidCommand setNativeViewState:arg2] retain];
    [r19 injectJavascript:r20];
    [r20 release];
    return;
}

-(void)onAvidJsReady {
    [self injectAvid];
    return;
}

-(void)publishAppState:(long long)arg2 {
    r19 = self->_webViewHolder;
    r20 = [[AdColony_AvidCommand setAppState:arg2] retain];
    [r19 injectJavascript:r20];
    [r20 release];
    return;
}

-(void)publishReadyEvent {
    r19 = self->_webViewHolder;
    r20 = [[AdColony_AvidCommand publishReadyEventForDeferredAdSession] retain];
    [r19 injectJavascript:r20];
    [r20 release];
    return;
}

-(void)publishVideoEvent:(void *)arg2 data:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            r0 = [AdColony_AvidDictionaryUtil jsonStringFromDictionary:r20];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = 0x0;
    }
    r21 = r21->_webViewHolder;
    r22 = [[AdColony_AvidCommand publishVideoEvent:r19 data:r20] retain];
    [r21 injectJavascript:r22];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)injectAvid {
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_webViewHolder));
    r0 = *(r19 + r24);
    r0 = [r0 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [AdColony_AvidProvider getInstance];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isReady];
            [r0 release];
            r21 = *(r19 + r24);
            if (r22 != 0x0) {
                    r0 = [AdColony_AvidProvider getInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 avidScript];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 injectJavascript:r23];
                    [r23 release];
                    [r22 release];
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_isAvidJsInjected));
                    *(int8_t *)(r19 + r25) = 0x1;
            }
            else {
                    [r21 injectJavascript:@"(function () {var avid = window.avid = {},avidbridge = window.avidbridge = {};avidbridge.avidAdSessionContext = {};avid.getAvidAdSessionContext = function () {var avidAdSessionContext = avidbridge.avidAdSessionContext;avidAdSessionContext.avidApiLevel = '2…"];
                    r25 = *(int32_t *)ivar_offset(_isAvidJsInjected);
            }
            r0 = [r19 avidAdSessionContext];
            r0 = [r0 retain];
            r23 = [[r0 fullContext] retain];
            r21 = [[AdColony_AvidDictionaryUtil jsonStringFromDictionary:r23] retain];
            [r23 release];
            [r0 release];
            r22 = *(r19 + r24);
            r0 = [AdColony_AvidCommand setAvidAdSessionContext:r21];
            r29 = r29;
            r23 = [r0 retain];
            [r22 injectJavascript:r23];
            [r23 release];
            if (*(int8_t *)(r19 + (r25 << @selector(injectJavascript:))) != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 avidBridgeDidInjectAvid];
                    [r0 release];
            }
            [r21 release];
    }
    return;
}

-(bool)isAvidJsInjected {
    r0 = *(int8_t *)(int64_t *)&self->_isAvidJsInjected;
    return r0;
}

-(void *)avidAdSessionContext {
    r0 = self->_avidAdSessionContext;
    return r0;
}

-(void)setAvidAdSessionContext:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_avidAdSessionContext));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
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

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_avidAdSessionContext, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewHolder, 0x0);
    return;
}

@end