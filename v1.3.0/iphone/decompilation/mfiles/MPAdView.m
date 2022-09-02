@implementation MPAdView

-(void *)initWithAdUnitId:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[UIColor clearColor] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
            [r20 setClipsToBounds:0x1];
            [r20 setMaxAdSize:0x1];
            [r20 setAllowedNativeAdOrientation:0x0];
            if (r19 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r19;
                    }
                    else {
                            r2 = @"agltb3B1Yi1pbmNyDAsSBFNpdGUYkaoMDA";
                    }
            }
            [r20 setAdUnitId:r2];
            r21 = [objc_alloc() initWithDelegate:r20];
            [r20 setAdManager:r21];
            [r21 release];
            [r20 setUserInteractionEnabled:0x0];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithAdUnitId:(void *)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r21 = [arg2 retain];
    r0 = [self initWithAdUnitId:r21];
    r0 = [r0 retain];
    [r0 frame];
    [MPAdView sizeForContainer:r0 adSize:r21 adUnitId:r4];
    [r21 release];
    [r0 setFrame:r0];
    [r0 setMaxAdSize:r0];
    [r0 release];
    r0 = r0;
    return r0;
}

-(void)dealloc {
    r0 = [self adManager];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] layoutSubviews];
    r0 = [r19 adManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isMraidAd];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [r19 bounds];
            asm { fcvt       s0, d0 };
            asm { frintm     s0, s0 };
            asm { fcvt       d8, s0 };
            objc_msgSend(r19, r20);
            asm { fcvt       s0, d0 };
            asm { frintm     s0, s0 };
            asm { fcvt       d9, s0 };
            r0 = [r19 adContentView];
            r0 = [r0 retain];
            [r0 setCenter:r2];
            [r0 release];
    }
    return;
}

-(void)setAdContentView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 adContentView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    objc_storeWeak((int64_t *)&r20->_adContentView, r19);
    if (r19 != 0x0) {
            [r20 addSubview:r19];
            [r20 setNeedsLayout];
            r2 = 0x1;
    }
    else {
            r2 = 0x0;
    }
    [r20 setUserInteractionEnabled:r2];
    [r19 release];
    return;
}

-(struct CGSize)adContentViewSize {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adContentView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r19 adContentView];
            r29 = r29;
            r22 = [r0 retain];
            [MPClosableView class];
            r23 = [r22 isKindOfClass:r2];
            [r22 release];
            [r21 release];
            if (r23 == 0x0) {
                    r0 = [r19 adContentView];
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 bounds];
                    v8 = v2;
                    v9 = v3;
            }
            else {
                    [r19 maxAdSize];
                    r20 = [[r19 adUnitId] retain];
                    [MPAdView sizeForContainer:r19 adSize:r20 adUnitId:r4];
                    v8 = v0;
                    v9 = v1;
            }
    }
    else {
            [r21 release];
            [r19 maxAdSize];
            r20 = [[r19 adUnitId] retain];
            [MPAdView sizeForContainer:r19 adSize:r20 adUnitId:r4];
            v8 = v0;
            v9 = v1;
    }
    r0 = [r20 release];
    return r0;
}

-(void)rotateToOrientation:(long long)arg2 {
    r0 = [self adManager];
    r0 = [r0 retain];
    [r0 rotateToOrientation:arg2];
    [r0 release];
    return;
}

-(void)loadAd {
    r20 = [[self adManager] retain];
    r19 = [[self adTargeting] retain];
    [r20 loadAdWithTargeting:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)loadAdWithMaxAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setMaxAdSize:r2];
    [self loadAd];
    return;
}

-(void)refreshAd {
    [self maxAdSize];
    [self loadAdWithMaxAdSize:r2];
    return;
}

-(void)forceRefreshAd {
    r0 = [self adManager];
    r0 = [r0 retain];
    [r0 forceRefreshAd];
    [r0 release];
    return;
}

-(void)stopAutomaticallyRefreshingContents {
    r0 = [self adManager];
    r0 = [r0 retain];
    [r0 stopAutomaticallyRefreshingContents];
    [r0 release];
    return;
}

-(void)startAutomaticallyRefreshingContents {
    r0 = [self adManager];
    r0 = [r0 retain];
    [r0 startAutomaticallyRefreshingContents];
    [r0 release];
    return;
}

-(void)unlockNativeAdsOrientation {
    [self setAllowedNativeAdOrientation:0x0];
    return;
}

-(void)lockNativeAdsToOrientation:(int)arg2 {
    [self setAllowedNativeAdOrientation:arg2];
    return;
}

-(int)allowedNativeAdsOrientation {
    r0 = [self allowedNativeAdOrientation];
    return r0;
}

-(void *)bannerDelegate {
    r0 = [self delegate];
    return r0;
}

-(void *)banner {
    r0 = self;
    return r0;
}

+(struct CGSize)sizeForContainer:(void *)arg2 adSize:(struct CGSize)arg3 adUnitId:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    if (d9 == *0x100be3eb0) {
            [r19 bounds];
            if (d2 == 0x0) {
                    r24 = [[NSError frameWidthNotSetForFlexibleSize] retain];
                    r0 = [MPLogEvent error:r24 message:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r24 release];
                    [MPLogging logEvent:r23 source:r20 fromClass:[r21 class]];
                    [r23 release];
            }
            [r19 bounds];
            v9 = v2;
    }
    if (d8 == *0x100be3eb0) {
            [r19 bounds];
            if (d3 == 0x0) {
                    r24 = [[NSError frameHeightNotSetForFlexibleSize] retain];
                    r23 = [[MPLogEvent error:r24 message:0x0] retain];
                    [r24 release];
                    [MPLogging logEvent:r23 source:r20 fromClass:[r21 class]];
                    [r23 release];
            }
            [r19 bounds];
            v8 = v3;
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(struct CGSize)containerSize {
    [self maxAdSize];
    r21 = [[self adUnitId] retain];
    [MPAdView sizeForContainer:self adSize:r21 adUnitId:r4];
    r0 = [r21 release];
    return r0;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)invalidateContentView {
    [self setAdContentView:0x0];
    return;
}

-(void *)adTargeting {
    [self maxAdSize];
    r21 = [[self adUnitId] retain];
    [MPAdView sizeForContainer:self adSize:r21 adUnitId:r4];
    [r21 release];
    r20 = [[MPAdTargeting targetingWithCreativeSafeSize:self] retain];
    r21 = [[self keywords] retain];
    [r20 setKeywords:r21];
    [r21 release];
    r21 = [[self localExtras] retain];
    [r20 setLocalExtras:r21];
    [r21 release];
    r21 = [[self location] retain];
    [r20 setLocation:r21];
    [r21 release];
    r19 = [[self userDataKeywords] retain];
    [r20 setUserDataKeywords:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)managerDidFailToLoadAdWithError:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(adViewDidFailToLoadAd:)];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [MPCoreInstanceProvider sharedProvider];
            r0 = [r0 retain];
            [r0 keepObjectAliveForCurrentRunLoopIteration:r2];
            [r24 release];
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 adViewDidFailToLoadAd:r20];
            [r0 release];
    }
    r22 = @selector(respondsToSelector:);
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22, @selector(adView:didFailToLoadAdWithError:), r3);
    [r0 release];
    if (r22 != 0x0) {
            r0 = [MPCoreInstanceProvider sharedProvider];
            r0 = [r0 retain];
            [r0 keepObjectAliveForCurrentRunLoopIteration:r2];
            [r22 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 adView:r2 didFailToLoadAdWithError:r3];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)userActionWillBegin {
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
    r23 = [r0 respondsToSelector:@selector(willPresentModalViewForAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 willPresentModalViewForAd:r19];
            [r0 release];
    }
    return;
}

-(void)managerDidLoadAd:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    [r20 setAdContentView:r19];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(adViewDidLoadAd:)];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 adViewDidLoadAd:r20];
            [r0 release];
    }
    r22 = @selector(respondsToSelector:);
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22, @selector(adViewDidLoadAd:adSize:), r3);
    [r0 release];
    if (r22 != 0x0) {
            r21 = [[r20 delegate] retain];
            [r19 bounds];
            [r21 adViewDidLoadAd:r2 adSize:r3];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)userActionDidFinish {
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
    r23 = [r0 respondsToSelector:@selector(didDismissModalViewForAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 didDismissModalViewForAd:r19];
            [r0 release];
    }
    return;
}

-(void)userWillLeaveApplication {
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
    r23 = [r0 respondsToSelector:@selector(willLeaveApplicationFromAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 willLeaveApplicationFromAd:r19];
            [r0 release];
    }
    return;
}

-(void *)adUnitId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adUnitId)), 0x0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)impressionDidFireWithImpressionData:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[self adUnitId] retain];
    [MoPub sendImpressionDelegateAndNotificationFromAd:self adUnitID:r21 impressionData:r22];
    [r22 release];
    [r21 release];
    return;
}

-(void)setAdUnitId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)keywords {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_keywords)), 0x0);
    return r0;
}

-(struct CGSize)maxAdSize {
    r0 = self;
    return r0;
}

-(void)setMaxAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_maxAdSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setKeywords:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userDataKeywords {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userDataKeywords)), 0x0);
    return r0;
}

-(void)setUserDataKeywords:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)location {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_location)), 0x0);
    return r0;
}

-(void)setLocation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)localExtras {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localExtras)), 0x0);
    return r0;
}

-(void)setLocalExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adManager {
    r0 = self->_adManager;
    return r0;
}

-(void)setAdManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adManager, arg2);
    return;
}

-(int)allowedNativeAdOrientation {
    r0 = *(int32_t *)(int64_t *)&self->_allowedNativeAdOrientation;
    return r0;
}

-(void *)adContentView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adContentView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAllowedNativeAdOrientation:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_allowedNativeAdOrientation = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adContentView);
    objc_storeStrong((int64_t *)&self->_adManager, 0x0);
    objc_storeStrong((int64_t *)&self->_localExtras, 0x0);
    objc_storeStrong((int64_t *)&self->_location, 0x0);
    objc_storeStrong((int64_t *)&self->_userDataKeywords, 0x0);
    objc_storeStrong((int64_t *)&self->_keywords, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitId, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end