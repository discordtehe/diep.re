@implementation AdColony_AvidUIWebViewHolder

-(void)injectJavascript:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self webView];
    r0 = [r0 retain];
    r20 = [r0 stringByEvaluatingJavaScriptFromString:r21];
    [r21 release];
    [[r20 retain] release];
    [r0 release];
    return;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
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