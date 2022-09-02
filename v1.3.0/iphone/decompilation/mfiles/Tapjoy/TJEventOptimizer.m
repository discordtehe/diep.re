@implementation TJEventOptimizer

+(void)startup {
    [[[self optimizer] retain] release];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setupWebView];
    }
    r0 = r19;
    return r0;
}

+(void *)optimizer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011dc208 == 0x0) {
            r0 = [TJEventOptimizer alloc];
            r0 = [r0 init];
            r8 = *0x1011dc208;
            *0x1011dc208 = r0;
            [r8 release];
    }
    r0 = *0x1011dc208;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

+(void)retryStartup {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [TJEventOptimizer optimizer];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isWebViewLoaded];
    [r0 release];
    [r20 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [TJEventOptimizer optimizer];
            r0 = [r0 retain];
            [r0 setupWebView];
            [r0 release];
    }
    return;
}

-(void)setupWebView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = (int64_t *)&r19->_webView;
    r22 = *r21;
    if (r22 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            [r0 release];
            if (r22 == r0) {
                    r0 = [TJCUIWebPageView alloc];
                    r0 = [r0 initWithFrame:r2];
                    r8 = *r21;
                    *r21 = r0;
                    [r8 release];
            }
    }
    else {
            r0 = [TJCUIWebPageView alloc];
            r0 = [r0 initWithFrame:r2];
            r8 = *r21;
            *r21 = r0;
            [r8 release];
    }
    [*r21 setShouldShowGenericErrorAlert:0x0];
    [r19 preloadURL];
    return;
}

-(void)preloadURL {
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r25 = [[r0 genericParametersWithUserID] retain];
    r20 = [[NSMutableDictionary dictionaryWithDictionary:r25] retain];
    [r25 release];
    [r0 release];
    [r23 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r24 = [[r0 createQueryStringFromDict:r20] retain];
    r23 = [[NSString stringWithFormat:@"%@events/proxy?%@"] retain];
    [r24 release];
    [r0 release];
    [r21 release];
    [self->_webView loadURLRequest:r23 withTimeOutInterval:0xa];
    [r23 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

@end