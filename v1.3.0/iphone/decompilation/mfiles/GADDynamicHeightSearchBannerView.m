@implementation GADDynamicHeightSearchBannerView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 configureBannerView];
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
    if (r19 != 0x0) {
            [r19 configureBannerView];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adWebView));
    [*(self + r20) setDelegate:0x0];
    r0 = *(self + r20);
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)configureBannerView {
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 dictionaryForKey:*0x100e9b4a0] retain];
    [r0 release];
    r21 = [[GADWebViewConfiguration alloc] initWithConfiguration:r20];
    r23 = [GADWebViewController alloc];
    r24 = [[GADEventContext rootContext] retain];
    r0 = [r23 initWithFrame:r24 eventContext:r21 configuration:r4];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adWebView));
    r8 = *(self + r26);
    *(self + r26) = r0;
    [r8 release];
    [r24 release];
    [[*(self + r26) webView] retain];
    CGRectGetWidth([self bounds]);
    [r24 setFrame:r2];
    [r24 release];
    r0 = *(self + r26);
    r0 = [r0 webView];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    [r24 release];
    [*(self + r26) setDelegate:self];
    r23 = [[*(self + r26) webView] retain];
    [self addSubview:r23];
    [r23 release];
    r0 = [GADGestureRecognizer alloc];
    r0 = [r0 init];
    [r0 setDelegate:self];
    [self addGestureRecognizer:r0];
    [self setClipsToBounds:0x1];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)loadRequest:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r20 = self;
    r19 = [arg2 retain];
    [GADDynamicHeightSearchRequest class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1007f87a4;

loc_1007f8780:
    r0 = [r19 childDirectedTreatment];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1007f87a4;

loc_1007f879c:
    [r0 release];
    goto loc_1007f8820;

loc_1007f8820:
    r22 = [NSString alloc];
    [GADDynamicHeightSearchRequest class];
    [r22 initWithFormat:@"Child directed treatment is not supported for request type: %@"];
    NSLog(@"<Google> %@", @selector(initWithFormat:));
    objc_initWeak(r29 - 0x58, r20);
    var_70 = r21;
    [r21 retain];
    objc_copyWeak(&var_90 + 0x30, r29 - 0x58);
    var_68 = [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_90);
    [var_68 release];
    objc_destroyWeak(&var_90 + 0x30);
    [var_70 release];
    [r21 release];
    goto loc_1007f890c;

loc_1007f890c:
    objc_destroyWeak(r29 - 0x58);
    goto loc_1007f8914;

loc_1007f8914:
    [r19 release];
    return;

loc_1007f87a4:
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 requestConfiguration];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 tagForChildDirectedTreatment];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 boolValue];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r26 == 0x0) goto loc_1007f893c;
    goto loc_1007f8820;

loc_1007f893c:
    r22 = @selector(isKindOfClass:);
    [GADDynamicHeightSearchRequest class];
    if (objc_msgSend(r19, r22) == 0x0) goto loc_1007f89ec;

loc_1007f895c:
    r20->_adState = 0x1;
    r22 = [[r19 CSADynamicHeightSearchRequestURLWithAdUnitID:r20->_adUnitID] retain];
    r21 = [[NSMutableURLRequest requestWithURL:r22] retain];
    [r22 release];
    [r20->_adWebView loadRequest:r21];
    [r21 release];
    goto loc_1007f8914;

loc_1007f89ec:
    r22 = [NSString alloc];
    [GADDynamicHeightSearchRequest class];
    [r22 initWithFormat:@"Unexpected request type while expecting a request of type: %@"];
    NSLog(@"<Google> %@", @selector(initWithFormat:));
    objc_initWeak(r29 - 0x58, r20);
    objc_copyWeak(&var_C8 + 0x30, r29 - 0x58);
    var_A8 = r21;
    [r21 retain];
    var_A0 = [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_C8);
    [var_A0 release];
    [var_A8 release];
    [r21 release];
    objc_destroyWeak(&var_C8 + 0x30);
    goto loc_1007f890c;
}

-(struct CGSize)currentAdSize {
    r0 = self->_adWebView;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = [r0 release];
    return r0;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    r20 = [arg2 retain];
    [GADGestureRecognizer class];
    r19 = [arg2 isKindOfClass:r2];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)webViewControllerDidStartLoad:(void *)arg2 {
    return;
}

-(void)webViewControllerDidFinishLoad:(void *)arg2 {
    return;
}

-(void)webViewControllerWebContentProcessDidTerminate:(void *)arg2 {
    return;
}

-(void)webViewController:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [r3 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 boolForKey:*0x100e9b3d0];
    [r0 release];
    if ((r22 & 0x1) != 0x0 || [r19 code] != -0x3e7) {
            r20->_adState = 0x3;
            [r20 updateInternalAdViewHeightAndNotifyDelegateWithHeight:*0x100e9b3d0];
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r21 = r0;
            if ([r0 respondsToSelector:@selector(bannerView:didFailToReceiveAdWithError:), r3] != 0x0) {
                    [r21 bannerView:r20 didFailToReceiveAdWithError:r19];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(bool)webViewController:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r23 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    if ([r21 hasPrefix:r2] == 0x0) goto loc_1007f8ef8;

loc_1007f8e60:
    r0 = [r20 URL];
    r0 = [r0 retain];
    r23 = [sub_100899990(r0, @"height") retain];
    [r0 release];
    [r23 floatValue];
    asm { fcvt       d8, s0 };
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adState));
    if (s0 > 0x0 && *(r22 + r24) != 0x2) {
            [r22 handleBannerViewDidReceiveAd];
    }
    *(r22 + r24) = 0x2;
    [r22 updateInternalAdViewHeightAndNotifyDelegateWithHeight:@"gmsg://adResized"];
    goto loc_1007f8f74;

loc_1007f8f74:
    [r23 release];
    goto loc_1007f8f7c;

loc_1007f8f7c:
    r22 = 0x0;
    goto loc_1007f8f80;

loc_1007f8f80:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1007f8ef8:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_1007f8f28;

loc_1007f8f10:
    r0 = sub_100809600(0x1, @"No ads are available");
    goto loc_1007f8f54;

loc_1007f8f54:
    r23 = [r0 retain];
    [r22 webViewController:r19 didFailLoadWithError:r23];
    goto loc_1007f8f74;

loc_1007f8f28:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_1007f8fb8;

loc_1007f8f40:
    r0 = sub_100809600(0x2, @"Failed to load resources over the network");
    goto loc_1007f8f54;

loc_1007f8fb8:
    if (([r21 hasPrefix:r2] & 0x1) != 0x0) goto loc_1007f8f7c;

loc_1007f8fd0:
    if (r23 == 0x0) goto loc_1007f8fdc;

loc_1007f8fd4:
    r22 = 0x1;
    goto loc_1007f8f80;

loc_1007f8fdc:
    r23 = [[r20 URL] retain];
    [r22 handleUserDidTapAdDestinationURL:r23];
    goto loc_1007f8f74;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_50 super] setFrame:r2];
    [[*(self + sign_extend_64(*(int32_t *)ivar_offset(_adWebView))) webView] retain];
    CGRectGetWidth([self bounds]);
    r0 = *(self + r24);
    r0 = [r0 webView];
    r0 = [r0 retain];
    CGRectGetHeight([r0 bounds]);
    [r22 setFrame:r2];
    [r20 release];
    [r22 release];
    return;
}

-(void)updateInternalAdViewHeightAndNotifyDelegateWithHeight:(double)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adWebView));
    [[*(r19 + r22) webView] retain];
    r0 = *(r19 + r22);
    r0 = [r0 webView];
    r0 = [r0 retain];
    CGRectGetWidth([r0 bounds]);
    [r21 setFrame:arg2];
    [r20 release];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(bannerView:didUpdateDesiredContentSize:), r3] != 0x0) {
            [r19 currentAdSize];
            [r20 bannerView:r19 didUpdateDesiredContentSize:r3];
    }
    [r20 release];
    return;
}

-(void)handleBannerViewDidReceiveAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(bannerViewDidReceiveAd:)] != 0x0) {
            [r20 bannerViewDidReceiveAd:r19];
    }
    [r20 release];
    return;
}

-(void *)adUnitID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adUnitID)), 0x0);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)handleUserDidTapAdDestinationURL:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r21->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(bannerView:didReceiveLandingPageURL:), r3] != 0x0) {
            r0 = sub_100899990(r19, @"ai");
            r29 = r29;
            r23 = [r0 retain];
            if (r23 == 0x0) {
                    [@"" retain];
                    [r23 release];
                    r23 = @"";
            }
            r24 = [[NSMutableString alloc] init];
            if (sub_100774bfc(r23, r24) != 0x0) {
                    r0 = [r24 componentsSeparatedByString:@"="];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if ([r0 count] == 0x2) {
                            r26 = [[r25 firstObject] retain];
                            r0 = [r25 lastObject];
                            r29 = r29;
                            r27 = [r0 retain];
                    }
                    else {
                            r26 = 0x0;
                            r27 = 0x0;
                    }
                    if ([r26 length] != 0x0 && [r27 length] != 0x0) {
                            r28 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                            var_70 = [sub_100899534(r19, r28) retain];
                            [r19 release];
                            [r28 release];
                            r19 = var_70;
                    }
                    else {
                            sub_1007ce06c(0x0, @"Invalid internal system value encountered.");
                    }
                    [r27 release];
                    [r26 release];
                    [r25 release];
            }
            else {
                    sub_1007ce06c(0x0, @"Unable to collect internal system value.");
            }
            [r20 bannerView:r21 didReceiveLandingPageURL:r19];
            [r24 release];
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(long long)adState {
    r0 = self->_adState;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_adWebView, 0x0);
    return;
}

@end