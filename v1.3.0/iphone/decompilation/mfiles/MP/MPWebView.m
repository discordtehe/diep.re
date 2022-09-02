@implementation MPWebView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setUpStepsForceUIWebView:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setUpStepsForceUIWebView:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 forceUIWebView:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_20 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setUpStepsForceUIWebView:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setUpStepsForceUIWebView:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)cleanUpOffscreenView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d8458;
    r0 = [r0 subviews];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    if (r20 == 0x0) {
            [*0x1011d8458 removeFromSuperview];
            r0 = *0x1011d8458;
            *0x1011d8458 = 0x0;
            [r0 release];
    }
    return;
}

-(void)retainWKWebViewOffscreen:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*0x1011d8458 == 0x0) {
            r0 = [r20 constructOffscreenView];
            r0 = [r0 retain];
            r8 = *0x1011d8458;
            *0x1011d8458 = r0;
            [r8 release];
    }
    [*0x1011d8458 addSubview:r2];
    [r19 release];
    return;
}

-(void *)constructOffscreenView {
    r0 = objc_alloc();
    r0 = [r0 initWithFrame:r2];
    [r0 setClipsToBounds:0x1];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [[r0 keyWindow] retain];
    [r0 release];
    [r21 addSubview:r2];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setUpStepsForceUIWebView:(bool)arg2 {
    r2 = arg2;
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)byte_1011d8450 == 0x0) {
            asm { ccmp       w2, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & NE && [WKWebView class] != 0x0) {
            r20 = [objc_alloc() init];
            r0 = objc_alloc();
            r0 = [r0 init];
            r22 = r0;
            [r0 setAllowsInlineMediaPlayback:0x1];
            [r22 setRequiresUserActionForMediaPlayback:0x0];
            [r22 setUserContentController:r20];
            if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
                    r3 = 0x0;
                    r21 = [[WKContentRuleListStore defaultStore] retain];
                    r0 = [MPContentBlocker blockedResourcesList];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_38 = [r22 retain];
                    [r21 compileContentRuleListForIdentifier:@"ContentBlockingRules" encodedContentRuleList:r23 completionHandler:&var_58];
                    [r23 release];
                    [r21 release];
                    [var_38 release];
            }
            r21 = objc_alloc();
            [r19 bounds];
            r0 = [r21 initWithFrame:r22 configuration:r3];
            [r0 setUIDelegate:r19];
            [r0 setNavigationDelegate:r19];
            r21 = [r0 retain];
            [r19 setWkWebView:r21];
            [r19 retainWKWebViewOffscreen:r21];
            [r21 release];
            [r22 release];
            r0 = r20;
    }
    else {
            r20 = objc_alloc();
            [r19 bounds];
            r0 = [r20 initWithFrame:r2];
            [r0 setAllowsInlineMediaPlayback:0x1];
            [r0 setMediaPlaybackRequiresUserAction:0x0];
            [r0 setDelegate:r19];
            r21 = [r0 retain];
            [r19 setUiWebView:r21];
            [r19 addSubview:r2];
            r0 = r21;
    }
    [r0 release];
    r22 = [[UIColor clearColor] retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    [r21 setOpaque:0x0];
    [r21 setAutoresizingMask:0x12];
    [r19 setScalesPageToFit:0x0];
    [r19 setShouldConformToSafeArea:0x0];
    r20 = [[UIColor clearColor] retain];
    [r19 setBackgroundColor:r20];
    [r20 release];
    [r19 setOpaque:0x0];
    [r19 setAllowsLinkPreview:0x0];
    r0 = [r19 wkWebView];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 addObserver:r19 forKeyPath:@"frame" options:0x2 context:0x0];
    }
    [r21 release];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    r0 = [arg2 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 superview];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isEqual:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
                            [*0x1011d8458 safeAreaInsets];
                            v8 = v1;
                            [*0x1011d8458 safeAreaInsets];
                            v9 = v0;
                            CGRectGetWidth([r19 bounds]);
                            v10 = v0;
                            CGRectGetHeight([r19 bounds]);
                            v11 = v0;
                            r0 = [r19 wkWebView];
                    }
                    else {
                            [r19 bounds];
                            v8 = v0;
                            v9 = v1;
                            v10 = v2;
                            v11 = v3;
                            r0 = [r19 wkWebView];
                    }
                    r0 = [r0 retain];
                    [r0 setFrame:r2];
                    [r19 release];
            }
    }
    return;
}

-(void)didMoveToWindow {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self wkWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0 && ([r19 hasMovedToWindow] & 0x1) == 0x0) {
            r0 = [r19 window];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r22 = r0;
                    r0 = [r19 wkWebView];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 superview];
                    r29 = r29;
                    r0 = [r0 retain];
                    r2 = *0x1011d8458;
                    r25 = [r0 isEqual:r2];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    [r21 release];
                    if (r25 != 0x0) {
                            r2 = *0x1011d8458;
                            [r19 bounds];
                            r0 = [r19 wkWebView];
                            r0 = [r0 retain];
                            [r0 setFrame:r2];
                            [r0 release];
                            r21 = [[r19 wkWebView] retain];
                            [r19 addSubview:r21];
                            [r21 release];
                            r20 = [[r19 wkWebView] retain];
                            [r19 constrainView:r20 shouldUseSafeArea:[r19 shouldConformToSafeArea]];
                            [r20 release];
                            [r19 setHasMovedToWindow:0x1];
                            [r19 cleanUpOffscreenView];
                    }
                    else {
                            r0 = [r19 uiWebView];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = r0;
                            if (r0 != 0x0) {
                                    r22 = [r19 hasMovedToWindow];
                                    [r21 release];
                                    if ((r22 & 0x1) == 0x0) {
                                            [r19 bounds];
                                            r0 = [r19 uiWebView];
                                            r0 = [r0 retain];
                                            [r0 setFrame:r2];
                                            [r0 release];
                                            r20 = [[r19 uiWebView] retain];
                                            [r19 constrainView:r20 shouldUseSafeArea:[r19 shouldConformToSafeArea]];
                                            [r20 release];
                                            [r19 setHasMovedToWindow:0x1];
                                    }
                            }
                            else {
                                    [r21 release];
                            }
                    }
            }
            else {
                    [r21 release];
                    r0 = [r19 uiWebView];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if (r0 != 0x0) {
                            r22 = [r19 hasMovedToWindow];
                            [r21 release];
                            if ((r22 & 0x1) == 0x0) {
                                    [r19 bounds];
                                    r0 = [r19 uiWebView];
                                    r0 = [r0 retain];
                                    [r0 setFrame:r2];
                                    [r0 release];
                                    r20 = [[r19 uiWebView] retain];
                                    [r19 constrainView:r20 shouldUseSafeArea:[r19 shouldConformToSafeArea]];
                                    [r20 release];
                                    [r19 setHasMovedToWindow:0x1];
                            }
                    }
                    else {
                            [r21 release];
                    }
            }
    }
    else {
            [r21 release];
            r0 = [r19 uiWebView];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r22 = [r19 hasMovedToWindow];
                    [r21 release];
                    if ((r22 & 0x1) == 0x0) {
                            [r19 bounds];
                            r0 = [r19 uiWebView];
                            r0 = [r0 retain];
                            [r0 setFrame:r2];
                            [r0 release];
                            r20 = [[r19 uiWebView] retain];
                            [r19 constrainView:r20 shouldUseSafeArea:[r19 shouldConformToSafeArea]];
                            [r20 release];
                            [r19 setHasMovedToWindow:0x1];
                    }
            }
            else {
                    [r21 release];
            }
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self wkWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 removeObserver:r19 forKeyPath:@"frame"];
    }
    r0 = [r19 wkWebView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [r21 release];
    r0 = [r19 wkWebView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [r19 cleanUpOffscreenView];
    [[&var_30 super] dealloc];
    return;
}

-(void)setShouldConformToSafeArea:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    *(int8_t *)(int64_t *)&self->_shouldConformToSafeArea = arg2;
    if ([self hasMovedToWindow] != 0x0) {
            r0 = [r20 uiWebView];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r0 = [r20 uiWebView];
            }
            else {
                    r0 = [r20 wkWebView];
            }
            r22 = [r0 retain];
            [r21 release];
            [r20 constrainView:r22 shouldUseSafeArea:r19];
            [r22 release];
    }
    return;
}

+(void)forceWKWebView:(bool)arg2 {
    *(int8_t *)0x1011d8450 = arg2;
    return;
}

+(bool)isForceWKWebView {
    return *(int8_t *)0x1011d8450;
}

-(void)loadData:(void *)arg2 MIMEType:(void *)arg3 textEncodingName:(void *)arg4 baseURL:(void *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [r23 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r23 uiWebView];
            r0 = [r0 retain];
            r23 = r0;
            [r0 loadData:r19 MIMEType:r20 textEncodingName:r21 baseURL:r22];
    }
    else {
            r0 = [r23 wkWebView];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 loadData:r19 MIMEType:r20 characterEncodingName:r21 baseURL:r22] retain];
            [r22 release];
            r22 = r21;
            r21 = r20;
            r20 = r19;
            r19 = r24;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    return;
}

-(bool)isLoading {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = r20;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r20;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r21 = [r0 isLoading];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)stopLoading {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = r19;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r19;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    return;
}

-(void)loadHTMLString:(void *)arg2 baseURL:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 uiWebView];
            r0 = [r0 retain];
            r21 = r0;
            [r0 loadHTMLString:r19 baseURL:r20];
    }
    else {
            r0 = [r21 wkWebView];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 loadHTMLString:r19 baseURL:r20] retain];
            [r20 release];
            r20 = r19;
            r19 = r22;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)loadRequest:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 uiWebView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 loadRequest:r19];
    }
    else {
            r0 = [r20 wkWebView];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [[r0 loadRequest:r19] retain];
            [r19 release];
            r19 = r21;
    }
    [r19 release];
    [r20 release];
    return;
}

-(void)constrainView:(void *)arg2 shouldUseSafeArea:(bool)arg3 {
    r31 = r31 - 0x100;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r26 = @selector(webViewLayoutConstraints);
            r0 = objc_msgSend(r20, r26);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r26 = @selector(webViewLayoutConstraints);
                    r0 = objc_msgSend(r20, r26);
                    r29 = r29;
                    r23 = [r0 retain];
                    [NSLayoutConstraint deactivateConstraints:r23];
                    [r23 release];
            }
            r0 = [r19 topAnchor];
            r29 = r29;
            r23 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 safeAreaLayoutGuide];
                    r0 = [r0 retain];
                    var_A8 = r0;
                    var_B0 = [[r0 topAnchor] retain];
                    var_B8 = [[r23 constraintEqualToAnchor:0x0] retain];
                    r22 = [[r19 leadingAnchor] retain];
                    r0 = [r20 safeAreaLayoutGuide];
                    r0 = [r0 retain];
                    var_C8 = r0;
                    r0 = [r0 leadingAnchor];
                    r0 = [r0 retain];
                    var_E8 = r0;
                    var_C0 = r22;
                    var_D0 = [[r22 constraintEqualToAnchor:r0] retain];
                    r21 = [[r19 trailingAnchor] retain];
                    r0 = [r20 safeAreaLayoutGuide];
                    r0 = [r0 retain];
                    var_F0 = r0;
                    r24 = [[r0 trailingAnchor] retain];
                    var_D8 = r21;
                    r25 = [[r21 constraintEqualToAnchor:r24] retain];
                    r28 = [[r19 bottomAnchor] retain];
                    r0 = [r20 safeAreaLayoutGuide];
                    r0 = [r0 retain];
                    r26 = r0;
                    r22 = [[r0 bottomAnchor] retain];
                    r27 = [[r28 constraintEqualToAnchor:r22] retain];
                    r0 = [NSArray arrayWithObjects:&var_80 count:0x4];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r20 setWebViewLayoutConstraints:r0];
                    r23 = r23;
                    r21 = var_E8;
                    [r0 release];
                    [r27 release];
                    r0 = r22;
                    r22 = var_F0;
                    [r0 release];
                    r0 = r26;
                    r26 = @selector(webViewLayoutConstraints);
                    [r0 release];
            }
            else {
                    var_A8 = [[r20 topAnchor] retain];
                    var_B0 = [[r23 constraintEqualToAnchor:0x0] retain];
                    r22 = [[r19 leadingAnchor] retain];
                    var_C0 = [[r20 leadingAnchor] retain];
                    var_B8 = r22;
                    var_C8 = [[r22 constraintEqualToAnchor:0x0] retain];
                    r21 = [[r19 trailingAnchor] retain];
                    var_D0 = [[r20 trailingAnchor] retain];
                    var_D8 = [[r21 constraintEqualToAnchor:0x0] retain];
                    r22 = [[r19 bottomAnchor] retain];
                    r24 = [[r20 bottomAnchor] retain];
                    r25 = [[r22 constraintEqualToAnchor:r24] retain];
                    r0 = [NSArray arrayWithObjects:&var_A0 count:0x4];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r20 setWebViewLayoutConstraints:r28];
            }
            [r28 release];
            [r25 release];
            [r24 release];
            [r22 release];
            [var_D8 release];
            [var_D0 release];
            [r21 release];
            [var_C8 release];
            [var_C0 release];
            [var_B8 release];
            [var_B0 release];
            [var_A8 release];
            [r23 release];
            r21 = @class(NSLayoutConstraint);
            r20 = [objc_msgSend(r20, r26) retain];
            [r21 activateConstraints:r20];
            [r20 release];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)reload {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            [r0 reload];
    }
    else {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            [[[r0 reload] retain] release];
    }
    [r19 release];
    return;
}

-(bool)canGoBack {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = r20;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r20;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r21 = [r0 canGoBack];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)goBack {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            [r0 goBack];
    }
    else {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            [[[r0 goBack] retain] release];
    }
    [r19 release];
    return;
}

-(bool)canGoForward {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = r20;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r20;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r21 = [r0 canGoForward];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)goForward {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            [r0 goForward];
    }
    else {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            [[[r0 goForward] retain] release];
    }
    [r19 release];
    return;
}

-(void)setAllowsLinkPreview:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = r20;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r20;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    [r0 setAllowsLinkPreview:r19];
    [r0 release];
    return;
}

-(bool)allowsLinkPreview {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = r19;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r19;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r20 = [r0 allowsLinkPreview];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setScalesPageToFit:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            [r0 setScalesPageToFit:r21];
    }
    else {
            r0 = [r20 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 scrollView];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r21 != 0x0) {
                    [r0 setDelegate:r2];
                    [r23 release];
                    [r19 release];
                    r0 = [r20 wkWebView];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 configuration];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 userContentController];
                    r0 = [r0 retain];
                    [r0 removeAllUserScripts];
                    [r0 release];
                    r0 = r20;
            }
            else {
                    [r0 setDelegate:r2];
                    r0 = r23;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

-(bool)scalesPageToFit {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r21 = @selector(uiWebView);
    r0 = objc_msgSend(self, r21);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 uiWebView];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [r0 scalesPageToFit];
    }
    else {
            r0 = [r20 scrollView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 delegate];
            r0 = [r0 retain];
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)evaluateJavaScript:(void *)arg2 completionHandler:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r21 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 uiWebView];
            r0 = [r0 retain];
            r21 = [[r0 stringByEvaluatingJavaScriptFromString:r20] retain];
            [r20 release];
            [r0 release];
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, r21, 0x0);
            }
    }
    else {
            r0 = [r21 wkWebView];
            r0 = [r0 retain];
            r21 = r0;
            [r0 evaluateJavaScript:r20 completionHandler:r19];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)scrollView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = r20;
            r1 = @selector(uiWebView);
    }
    else {
            r1 = @selector(wkWebView);
            r0 = r20;
    }
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r21 = [[r0 scrollView] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)allowsInlineMediaPlayback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 uiWebView];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [r0 allowsInlineMediaPlayback];
    }
    else {
            r0 = [r20 wkWebView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r21 = [r0 allowsInlineMediaPlayback];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)stringByEvaluatingJavaScriptFromString:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 uiWebView];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [[r0 stringByEvaluatingJavaScriptFromString:r19] retain];
    }
    else {
            r0 = [r20 wkWebView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 evaluateJavaScript:r19 completionHandler:0x0];
            r21 = @"";
    }
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)mediaPlaybackAllowsAirPlay {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            r20 = [r0 mediaPlaybackAllowsAirPlay];
    }
    else {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r20 = [r0 allowsAirPlayForMediaPlayback];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)mediaPlaybackRequiresUserAction {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            r20 = [r0 mediaPlaybackRequiresUserAction];
    }
    else {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r20 = [r0 requiresUserActionForMediaPlayback];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(webView:shouldStartLoadWithRequest:navigationType:), r3, r4];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r20 = [r0 webView:r21 shouldStartLoadWithRequest:r19 navigationType:r20];
            [r0 release];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)allowsPictureInPictureMediaPlayback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 uiWebView];
            r0 = [r0 retain];
            r19 = r0;
            r20 = [r0 allowsPictureInPictureMediaPlayback];
    }
    else {
            r0 = [r19 wkWebView];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r20 = [r0 allowsPictureInPictureMediaPlayback];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(webViewDidStartLoad:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 webViewDidStartLoad:r19];
            [r0 release];
    }
    return;
}

-(void)mp_setScrollable:(bool)arg2 {
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:arg2];
    [r0 setBounces:arg2];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(webView:didFailLoadWithError:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 webView:r20 didFailLoadWithError:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(webViewDidFinishLoad:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 webViewDidFinishLoad:r19];
            [r0 release];
    }
    return;
}

-(void)disableJavaScriptDialogs {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [[[r19 stringByEvaluatingJavaScriptFromString:@"window.alert = function() { }; window.prompt = function() { }; window.confirm = function() { };"] retain] release];
    }
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg4 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(webView:didFailLoadWithError:), arg3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 webView:r20 didFailLoadWithError:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didStartProvisionalNavigation:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(webViewDidStartLoad:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 webViewDidStartLoad:r19];
            [r0 release];
    }
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg4 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(webView:didFailLoadWithError:), arg3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 webView:r20 didFailLoadWithError:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(webViewDidFinishLoad:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 webViewDidFinishLoad:r19];
            [r0 release];
    }
    return;
}

-(void *)viewForZoomingInScrollView:(void *)arg2 {
    return 0x0;
}

-(void)webView:(void *)arg2 runJavaScriptAlertPanelWithMessage:(void *)arg3 initiatedByFrame:(void *)arg4 completionHandler:(void *)arg5 {
    r1 = *(arg5 + 0x10);
    (r1)(arg5, r1, arg2, arg3, arg4, arg5);
    return;
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [arg4 retain];
    r20 = r0;
    r0 = [r0 targetFrame];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isMainFrame];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r21 = [[r20 request] retain];
            [[[r19 loadRequest:r21] retain] release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return 0x0;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(webView:shouldStartLoadWithRequest:navigationType:), r3, r4];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r19 request];
            r29 = r29;
            r24 = [r0 retain];
            r0 = [r19 navigationType];
            if (r0 < 0x5) {
                    if (!CPU_FLAGS & B) {
                            r25 = 0x5;
                    }
                    else {
                            r25 = r0;
                    }
            }
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r21 = [r0 webView:r21 shouldStartLoadWithRequest:r24 navigationType:r25];
            [r0 release];
            [r24 release];
    }
    else {
            r21 = 0x1;
    }
    (*(r20 + 0x10))(r20, r21);
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 runJavaScriptConfirmPanelWithMessage:(void *)arg3 initiatedByFrame:(void *)arg4 completionHandler:(void *)arg5 {
    r2 = *(arg5 + 0x10);
    (r2)(arg5, 0x0, r2, arg3, arg4, arg5);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)webView:(void *)arg2 runJavaScriptTextInputPanelWithPrompt:(void *)arg3 defaultText:(void *)arg4 initiatedByFrame:(void *)arg5 completionHandler:(void *)arg6 {
    r2 = *(arg6 + 0x10);
    (r2)(arg6, 0x0, r2, arg3, arg4, arg5, arg6);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)shouldConformToSafeArea {
    r0 = *(int8_t *)(int64_t *)&self->_shouldConformToSafeArea;
    return r0;
}

-(void *)wkWebView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_wkWebView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWkWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_wkWebView, arg2);
    return;
}

-(void *)uiWebView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_uiWebView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setUiWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_uiWebView, arg2);
    return;
}

-(void)setWebViewLayoutConstraints:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewLayoutConstraints, arg2);
    return;
}

-(void *)webViewLayoutConstraints {
    r0 = self->_webViewLayoutConstraints;
    return r0;
}

-(bool)hasMovedToWindow {
    r0 = *(int8_t *)(int64_t *)&self->_hasMovedToWindow;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewLayoutConstraints, 0x0);
    objc_destroyWeak((int64_t *)&self->_uiWebView);
    objc_destroyWeak((int64_t *)&self->_wkWebView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setHasMovedToWindow:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasMovedToWindow = arg2;
    return;
}

-(void *)containedWebView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self uiWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 uiWebView];
    }
    else {
            r0 = [r20 wkWebView];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end