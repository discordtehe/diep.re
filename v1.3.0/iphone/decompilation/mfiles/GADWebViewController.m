@implementation GADWebViewController

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([GADWebViewController class] == self) {
            r0 = [GADPlaceholderWebViewController alloc];
            r8 = *0x1011dbeb0;
            *0x1011dbeb0 = r0;
            [r8 release];
    }
    return;
}

+(void *)allocWithZone:(struct _NSZone *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([GADWebViewController class] != r20) {
            r0 = [[&var_20 super] allocWithZone:r19];
    }
    else {
            r0 = *0x1011dbeb0;
            r0 = [r0 retain];
    }
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 eventContext:(void *)arg3 configuration:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_context, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void *)underlyingWebView {
    r0 = self->_underlyingWebView;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)mainDocumentURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mainDocumentURL)), 0x0);
    return r0;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mainDocumentURL, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_underlyingWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end