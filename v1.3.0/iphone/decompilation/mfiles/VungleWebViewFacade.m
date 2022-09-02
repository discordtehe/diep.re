@implementation VungleWebViewFacade

-(void *)init {
    [self release];
    return 0x0;
}

-(void)dealloc {
    var_18 = [[self webView] retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    _Block_object_dispose(&var_40, 0x8);
    [var_18 release];
    [[&var_78 super] dealloc];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = @selector(init);
            r20 = objc_msgSend(objc_alloc(), r21);
            r21 = objc_msgSend(objc_alloc(), r21);
            [r20 setUserContentController:r21];
            [r21 release];
            [r20 setMediaPlaybackRequiresUserAction:0x0];
            [r20 setAllowsInlineMediaPlayback:0x1];
            [r20 setMediaPlaybackAllowsAirPlay:0x1];
            r0 = objc_alloc();
            r0 = [r0 initWithFrame:r20 configuration:r3];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            r22 = [[UIColor clearColor] retain];
            [*(r19 + 0x8) setBackgroundColor:r22];
            r0 = *(r19 + 0x8);
            r0 = [r0 scrollView];
            r0 = [r0 retain];
            [r0 setBackgroundColor:r22];
            [r0 release];
            [r22 release];
            [*(r19 + 0x8) setAllowsLinkPreview:0x0];
            [*(r19 + 0x8) setOpaque:0x0];
            [*(r19 + 0x8) setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = *(r19 + 0x8);
            r0 = [r0 scrollView];
            r0 = [r0 retain];
            [r0 setMinimumZoomScale:0x0];
            [r0 release];
            r0 = *(r19 + 0x8);
            r0 = [r0 scrollView];
            r0 = [r0 retain];
            [r0 setBounces:0x0];
            [r0 release];
            r0 = *(r19 + 0x8);
            r0 = [r0 scrollView];
            r0 = [r0 retain];
            [r0 setScrollEnabled:0x0];
            [r0 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)contentView {
    r0 = [self webView];
    return r0;
}

-(void)resetWebContent {
    [self loadHTMLString:@""];
    return;
}

-(void)loadFileURL:(void *)arg2 baseURL:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_60 + 0x30, &saved_fp - 0x28);
    var_40 = r21;
    [r21 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    objc_destroyWeak(&var_60 + 0x30);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)loadHTMLString:(void *)arg2 {
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    dispatch_async(*__dispatch_main_q, &var_40);
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)evaluateJavaScript:(void *)arg2 completionHandler:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_60 + 0x30, &saved_fp - 0x28);
    var_40 = r21;
    [r21 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    objc_destroyWeak(&var_60 + 0x30);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

+(bool)supportsWebKitFeatures {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = NSClassFromString(@"WKWebView");
    if (r0 != 0x0) {
            r0 = [WKWebView instancesRespondToSelector:@selector(loadFileURL:allowingReadAccessToURL:), r3];
    }
    return r0;
}

-(void *)webView {
    r0 = *(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

@end