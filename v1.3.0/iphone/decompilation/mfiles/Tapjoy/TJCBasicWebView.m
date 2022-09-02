@implementation TJCBasicWebView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:0x0 webkitPreferred:r3];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 webkitPreferred:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            if (r20 != 0x0 && [TJCUtil isWebKitSupported] != 0x0) {
                    r1 = @selector(createWKWebViewWithFrame:);
            }
            else {
                    r1 = @selector(createUIWebViewWithFrame:);
            }
            objc_msgSend(r19, r1);
            [r19 commonInitialization];
    }
    r0 = r19;
    return r0;
}

-(void)createWKWebViewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [WKWebView alloc];
    r0 = [r0 initWithFrame:r2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&self->_webView, *(self + r20));
    return;
}

-(void)createUIWebViewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [UIWebView alloc];
    r0 = [r0 initWithFrame:r2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&self->_webView, *(self + r20));
    return;
}

-(void)setWebViewBackgroundColor:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_uiWebView;
    if (r0 == 0x0) {
            r0 = r20->_wkWebView;
            if (r0 != 0x0) {
                    [r0 setBackgroundColor:r19];
            }
    }
    else {
            [r0 setBackgroundColor:r19];
    }
    [r19 release];
    return;
}

-(void)commonInitialization {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
    [*(self + r22) setAutoresizingMask:0x12];
    r20 = *(self + r22);
    r21 = [[UIColor clearColor] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [*(self + r22) setOpaque:0x0];
    [*(self + r22) setAutoresizesSubviews:0x1];
    [self disableScrolling];
    [self addSubview:r2];
    return;
}

-(void)disableScrolling {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_uiWebView));
    r0 = *(r19 + r22);
    if (r0 == 0x0) goto loc_1009506a4;

loc_10095062c:
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    r0 = *(r19 + r22);
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setShowsVerticalScrollIndicator:0x0];
    [r0 release];
    r0 = *(r19 + r22);
    r0 = [r0 scrollView];
    goto loc_100950728;

loc_100950728:
    r0 = [r0 retain];
    [r0 setShowsHorizontalScrollIndicator:0x0];
    [r0 release];
    return;

.l1:
    return;

loc_1009506a4:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_wkWebView));
    r0 = *(r19 + r22);
    if (r0 == 0x0) goto .l1;

loc_1009506b4:
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    r0 = *(r19 + r22);
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setShowsVerticalScrollIndicator:0x0];
    [r0 release];
    r0 = *(r19 + r22);
    r0 = [r0 scrollView];
    goto loc_100950728;
}

-(void)setHTMLContent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_uiWebView;
    if (r0 != 0x0) {
            [r0 loadHTMLString:r19 baseURL:0x0];
    }
    else {
            r0 = r20->_wkWebView;
            if (r0 != 0x0) {
                    [[[r0 loadHTMLString:r19 baseURL:0x0] retain] release];
            }
    }
    [r19 release];
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)wkWebView {
    r0 = self->_wkWebView;
    return r0;
}

-(void)setWkWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_wkWebView, arg2);
    return;
}

-(void *)uiWebView {
    r0 = self->_uiWebView;
    return r0;
}

-(void)setUiWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_uiWebView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_uiWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_wkWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end