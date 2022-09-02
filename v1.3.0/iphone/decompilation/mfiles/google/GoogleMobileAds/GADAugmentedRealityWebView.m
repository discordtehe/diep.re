@implementation GADAugmentedRealityWebView

-(void *)initWithWebView:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 bounds];
    r0 = [[&var_30 super] initWithFrame:r2];
    r20 = r0;
    if (r20 == 0x0) goto loc_100871b7c;

loc_100871b08:
    r22 = [NSClassFromString(@"GARArWebView") alloc];
    [r19 bounds];
    r0 = [r22 initWithFrame:r19 webView:r3];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_webViewContainer));
    r8 = *(r20 + r21);
    *(r20 + r21) = r0;
    [r8 release];
    if (*(r20 + r21) == 0x0) goto loc_100871b8c;

loc_100871b64:
    [r20 addSubview:r2];
    sub_1008897a8();
    goto loc_100871b7c;

loc_100871b7c:
    r21 = [r20 retain];
    goto loc_100871b90;

loc_100871b90:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100871b8c:
    r21 = 0x0;
    goto loc_100871b90;
}

-(bool)canGoBack {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    r20 = [r0 canGoBack];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)canGoForward {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    r20 = [r0 canGoForward];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)goBack {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [[[r0 goBack] retain] release];
    [r0 release];
    return;
}

-(void)goForward {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [[[r0 goForward] retain] release];
    [r0 release];
    return;
}

-(bool)isLoading {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    r20 = [r0 isLoading];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)reload {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [[[r0 reload] retain] release];
    [r0 release];
    return;
}

-(void *)scrollView {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    r20 = [[r0 scrollView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)stopLoading {
    r0 = self->_webViewContainer;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewContainer, 0x0);
    return;
}

@end