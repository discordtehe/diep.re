@implementation MPNativeAd

-(void)updateAdViewSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self associatedView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void *)retrieveAdViewForSizeCalculationWithError:(void * *)arg2 {
    r21 = [[self renderer] retain];
    r22 = [[self adAdapter] retain];
    r19 = [[r21 retrieveViewWithAdapter:r22 error:arg2] retain];
    [r22 release];
    [r21 release];
    r0 = [self associatedView];
    r0 = [r0 retain];
    [r0 bounds];
    [r19 setFrame:r2];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)properties {
    r0 = [self adAdapter];
    r0 = [r0 retain];
    r20 = [[r0 properties] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithAdAdapter:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = r20 + 0x48;
            objc_storeStrong(r21, r22);
            if ([*(r20 + 0x48) respondsToSelector:@selector(setDelegate:)] != 0x0) {
                    [*(r20 + 0x48) setDelegate:r20];
            }
            r24 = @selector(init);
            r22 = @selector(respondsToSelector:);
            *(int32_t *)0x1011d8528 = *(int32_t *)0x1011d8528 + 0x1;
            r0 = [NSString stringWithFormat:@"%d"];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 copy];
            r8 = *(r20 + 0x50);
            *(r20 + 0x50) = r0;
            [r8 release];
            [r25 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r24);
            r8 = *(r20 + 0x40);
            *(r20 + 0x40) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r24);
            r8 = *(r20 + 0x38);
            *(r20 + 0x38) = r0;
            [r8 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r24);
            r8 = *(r20 + 0x58);
            *(r20 + 0x58) = r0;
            [r8 release];
            [*(r20 + 0x58) setClipsToBounds:0x1];
            [*(r20 + 0x58) setDelegate:r20];
            if (objc_msgSend(*(r20 + 0x48), r22) == 0x0 || ([*r21 enableThirdPartyClickTracking] & 0x1) == 0x0) {
                    r21 = [objc_alloc() initWithTarget:r20 action:@selector(adViewTapped)];
                    [*(r20 + 0x58) addGestureRecognizer:r21];
                    [r21 release];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)trackImpression {
    r31 = r31 - 0x50;
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
    if ([self hasTrackedImpression] != 0x0) {
            r21 = [[NSString stringWithFormat:@"Impression already tracked."] retain];
            r22 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    }
    else {
            r21 = [[r19 adIdentifier] retain];
            r23 = [[NSString stringWithFormat:@"Tracking an impression for %@."] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
            [r22 release];
            [r23 release];
            [r21 release];
            [r19 setHasTrackedImpression:0x1];
            r20 = [[r19 impressionTrackerURLs] retain];
            [r19 trackMetricsForURLs:r20];
            [r20 release];
            r21 = [[r19 adUnitID] retain];
            r0 = [r19 configuration];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 impressionData] retain];
            [MoPub sendImpressionDelegateAndNotificationFromAd:r19 adUnitID:r21 impressionData:r23];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    return;
}

-(void *)retrieveAdViewWithError:(void * *)arg2 {
    r31 = r31 - 0x140;
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
    var_128 = arg2;
    r19 = self;
    var_110 = q0;
    r0 = [self associatedView];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 subviews];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    r2 = &var_120;
    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r27 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r23);
                            }
                            [*(var_118 + r22 * 0x8) removeFromSuperview];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r2 = &var_120;
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    [r23 release];
    r0 = [r19 associatedView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 subviews];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) {
            [r19 setHasAttachedToView:0x0];
    }
    r23 = [[r19 renderer] retain];
    r24 = [[r19 adAdapter] retain];
    r0 = [r23 retrieveViewWithAdapter:r24 error:var_128];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r22 != 0x0) {
            if (([r19 hasAttachedToView] & 0x1) == 0x0) {
                    r23 = [[r19 associatedView] retain];
                    r0 = [r22 subviews];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 willAttachToView:r23 withAdContentViews:r21];
                    [r21 release];
                    [r23 release];
                    [r19 setHasAttachedToView:0x1];
            }
            r0 = [r19 associatedView];
            r0 = [r0 retain];
            [r0 bounds];
            [r22 setFrame:r2];
            [r0 release];
            r0 = [r19 associatedView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            r19 = [[r19 associatedView] retain];
    }
    else {
            r19 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)trackMetricsForURLs:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 trackMetricForURL:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)trackClick {
    r31 = r31 - 0x50;
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
    if ([self hasTrackedClick] == 0x0) goto loc_10050527c;

loc_1005051fc:
    r21 = [[NSString stringWithFormat:@"Click already tracked."] retain];
    r22 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    goto loc_100505408;

loc_100505408:
    [r21 release];
    return;

.l1:
    return;

loc_10050527c:
    r21 = [[r19 adIdentifier] retain];
    r23 = [[NSString stringWithFormat:@"Tracking a click for %@."] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    [r23 release];
    [r21 release];
    [r19 setHasTrackedClick:0x1];
    r20 = [[r19 clickTrackerURLs] retain];
    [r19 trackMetricsForURLs:r20];
    [r20 release];
    r0 = [r19 adAdapter];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] == 0x0) goto loc_100505408;

loc_1005053b0:
    r23 = [r19 isThirdPartyHandlingClicks];
    [r21 release];
    if ((r23 & 0x1) == 0x0) goto loc_1005053e8;
    goto .l1;

loc_1005053e8:
    r0 = [r19 adAdapter];
    r0 = [r0 retain];
    r21 = r0;
    [r0 trackClick];
    goto loc_100505408;
}

-(void)trackMetricForURL:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_alloc() initWithURL:r20];
    [r20 release];
    [[[MPHTTPNetworkSession startTaskWithHttpRequest:r19 responseHandler:0x0 errorHandler:0x0] retain] release];
    [r19 release];
    return;
}

-(void)willAttachToView:(void *)arg2 withAdContentViews:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 adAdapter];
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(willAttachToView:withAdContentViews:), r3];
    [r0 release];
    r0 = [r21 adAdapter];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r26 == 0x0) goto loc_100505678;

loc_100505660:
    [r23 willAttachToView:r19 withAdContentViews:r20];
    goto loc_1005056c4;

loc_1005056c4:
    [r23 release];
    goto loc_1005056cc;

loc_1005056cc:
    [r20 release];
    [r19 release];
    return;

loc_100505678:
    r25 = @selector(respondsToSelector:);
    r25 = objc_msgSend(r23, r25, @selector(willAttachToView:));
    [r23 release];
    if (r25 == 0x0) goto loc_1005056cc;

loc_1005056a0:
    r0 = [r21 adAdapter];
    r0 = [r0 retain];
    r23 = r0;
    [r0 willAttachToView:r2];
    goto loc_1005056c4;
}

-(bool)isThirdPartyHandlingClicks {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self adAdapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r20 adAdapter];
            r0 = [r0 retain];
            r20 = [r0 enableThirdPartyClickTracking];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)adViewTapped {
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
    [self displayAdContent];
    r0 = [r19 renderer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 renderer];
            r0 = [r0 retain];
            [r0 nativeAdTapped];
            [r0 release];
    }
    return;
}

-(void)nativeViewWillMoveToSuperview:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 renderer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(adViewWillMoveToSuperview:)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 renderer];
            r0 = [r0 retain];
            [r0 adViewWillMoveToSuperview:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)displayAdContent {
    r31 = r31 - 0x60;
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
    [self trackClick];
    r0 = [r20 adAdapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(displayContentForURL:rootViewController:), r3];
    [r0 release];
    if (r23 != 0x0) {
            r19 = [[r20 adAdapter] retain];
            r0 = [r20 adAdapter];
            r0 = [r0 retain];
            r21 = r0;
            r23 = [[r0 defaultActionURL] retain];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r24 = [[r0 viewControllerForPresentingModalView] retain];
            [r19 displayContentForURL:r23 rootViewController:r24];
            [r24 release];
            [r0 release];
    }
    else {
            r0 = [r20 adAdapter];
            r0 = [r0 retain];
            r19 = r0;
            [r0 class];
            r21 = [[NSString stringWithFormat:@"Cannot display native ad content. -displayContentForURL:rootViewController:completion: not implemented by native ad adapter: %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
    }
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)nativeAdWillLogImpression:(void *)arg2 {
    [self trackImpression];
    return;
}

-(void)nativeAdDidClick:(void *)arg2 {
    r21 = [[MPLogEvent adTapped] retain];
    r22 = [[self adIdentifier] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    [self trackClick];
    return;
}

-(void)nativeAdWillPresentModalForAdapter:(void *)arg2 {
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
    r21 = [[MPLogEvent adWillPresentModal] retain];
    r22 = [[r19 adIdentifier] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[r19 class]];
    [r22 release];
    [r21 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(willPresentModalForNativeAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 willPresentModalForNativeAd:r19];
            [r0 release];
    }
    return;
}

-(void)nativeAdDidDismissModalForAdapter:(void *)arg2 {
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
    r21 = [[MPLogEvent adDidDismissModal] retain];
    r22 = [[r19 adIdentifier] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[r19 class]];
    [r22 release];
    [r21 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(didDismissModalForNativeAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 didDismissModalForNativeAd:r19];
            [r0 release];
    }
    return;
}

-(void)nativeAdWillLeaveApplicationFromAdapter:(void *)arg2 {
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
    r21 = [[MPLogEvent adWillLeaveApplication] retain];
    r22 = [[r19 adIdentifier] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[r19 class]];
    [r22 release];
    [r21 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(willLeaveApplicationFromNativeAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 willLeaveApplicationFromNativeAd:r19];
            [r0 release];
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)renderer {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setRenderer:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)configuration {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)adUnitID {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)creationDate {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setCreationDate:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)clickTrackerURLs {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setClickTrackerURLs:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)impressionTrackerURLs {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setImpressionTrackerURLs:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)adAdapter {
    r0 = *(self + 0x48);
    return r0;
}

-(bool)hasTrackedImpression {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setHasTrackedImpression:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)hasTrackedClick {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setHasTrackedClick:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void *)adIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setAdIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)associatedView {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setAssociatedView:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(bool)hasAttachedToView {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setHasAttachedToView:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end