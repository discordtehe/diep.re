@implementation AdColony_AvidWKWebViewHolder

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)injectJavascript:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 evaluateJavaScript:r21 completionHandler:0x0];
    [r21 release];
    [r0 release];
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

@end