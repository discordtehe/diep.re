@implementation GADUIWebViewDelegateProxy

-(void *)initWithWebViewDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_webViewDelegate, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewDelegate);
    r22 = r0;
    if ([r0 respondsToSelector:@selector(webView:shouldStartLoadWithRequest:navigationType:), r3, r4] != 0x0) {
            r21 = [r22 webView:r19 shouldStartLoadWithRequest:r20 navigationType:r21];
    }
    else {
            r21 = 0x1;
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewDelegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(webViewDidStartLoad:)] != 0x0) {
            [r20 webViewDidStartLoad:r19];
    }
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
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewDelegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(webViewDidFinishLoad:)] != 0x0) {
            [r20 webViewDidFinishLoad:r19];
    }
    [r20 release];
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewDelegate);
    r21 = r0;
    if ([r0 respondsToSelector:@selector(webView:didFailLoadWithError:), r3] != 0x0) {
            [r21 webView:r19 didFailLoadWithError:r20];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)webViewDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webViewDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWebViewDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webViewDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webViewDelegate);
    return;
}

@end