@implementation OMIDtapjoyUIWebViewJSExecutor

-(void *)initWithWebView:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_webView, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)supportBackgroundThread {
    return 0x0;
}

-(void *)jsEnvironment {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)injectJavaScriptFromString:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r21 = [[r0 stringByEvaluatingJavaScriptFromString:r20] retain];
    [r20 release];
    [r21 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

@end