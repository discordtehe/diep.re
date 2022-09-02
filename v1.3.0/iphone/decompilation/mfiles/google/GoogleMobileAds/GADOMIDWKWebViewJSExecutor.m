@implementation GADOMIDWKWebViewJSExecutor

-(bool)supportBackgroundThread {
    r0 = 0x0 & 0x1;
    return r0;
}

-(void *)initWithWebView:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    r0 = [[&var_28 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            objc_storeWeak((int64_t *)&var_8->_webView, 0x0);
    }
    var_40 = [var_8 retain];
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_40;
    return r0;
}

-(void *)jsEnvironment {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)injectJavaScriptFromString:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    [r0 evaluateJavaScript:var_18 completionHandler:0x0];
    [r0 release];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

@end