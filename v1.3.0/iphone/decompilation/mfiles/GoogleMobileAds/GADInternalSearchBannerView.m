@implementation GADInternalSearchBannerView

-(void)loadRequest:(void *)arg2 {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ((sub_100818a24() & 0x1) != 0x0) {
            r0 = r20->_dynamicHeightAdView;
            if (r0 != 0x0) {
                    [r0 loadRequest:r19];
            }
            else {
                    [[&var_48 super] loadRequest:r19];
            }
    }
    else {
            var_18 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_38);
            [var_18 release];
    }
    [r19 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 adSize:(struct GADAdSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = [[&saved_fp - 0x40 super] initWithFrame:&var_60 adSize:r3];
    if (r19 != 0x0) {
            r0 = sub_100845ac0(&var_80, &var_A0);
            if (r0 != 0x0) {
                    [GADDynamicHeightSearchBannerView alloc];
                    CGRectGetWidth([r19 bounds]);
                    CGRectGetHeight([r19 bounds]);
                    r0 = [r20 initWithFrame:r2];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dynamicHeightAdView));
                    r8 = *(r19 + r20);
                    *(r19 + r20) = r0;
                    [r8 release];
                    [*(r19 + r20) setAutoresizingMask:0x2];
                    [*(r19 + r20) setDelegate:r19];
                    [r19 addSubview:r2];
            }
    }
    r0 = r19;
    return r0;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [[&var_30 super] setFrame:r2];
    r0 = self->_dynamicHeightAdView;
    [r0 setHidden:r2];
    return;
}

-(void)setAdUnitID:(void *)arg2 {
    r21 = [arg2 retain];
    [[&var_30 super] setAdUnitID:r21];
    [self->_dynamicHeightAdView setAdUnitID:r21];
    [r21 release];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = self;
    r0 = r8->_dynamicHeightAdView;
    if (r0 != 0x0) {
            r0 = [r0 frame];
            r0 = CGRectGetHeight(r0);
    }
    else {
            r0 = [[&var_20 super] intrinsicContentSize];
            v8 = v0;
    }
    return r0;
}

-(void)bannerViewDidReceiveAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidReceiveAd:)] != 0x0) {
            [r20 adViewDidReceiveAd:r19];
    }
    [r20 release];
    return;
}

-(void)bannerView:(void *)arg2 didReceiveLandingPageURL:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg3 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r0 openURL:r22];
    [r22 release];
    [r0 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillLeaveApplication:)] != 0x0) {
            [r20 adViewWillLeaveApplication:r19];
    }
    [r20 release];
    return;
}

-(void)bannerView:(void *)arg2 didUpdateDesiredContentSize:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19->_dynamicHeightAdView setFrame:arg2];
    r0 = [r19 adSizeDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewIntrinsicContentSizeDidChange:)] != 0x0) {
            [r20 adViewIntrinsicContentSizeDidChange:r19];
    }
    [r20 release];
    return;
}

-(void)bannerView:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
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
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adView:didFailToReceiveAdWithError:), r3] != 0x0) {
            r23 = [sub_100809bcc() retain];
            [r21 adView:r20 didFailToReceiveAdWithError:r23];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dynamicHeightAdView, 0x0);
    return;
}

@end