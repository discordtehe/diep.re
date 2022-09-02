@implementation MPGoogleAdMobNativeAdAdapter

-(void)nativeAdDidRecordImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillLogImpression:self];
    [r0 release];
    r21 = @class(MPLogging);
    r22 = @class(MPLogEvent);
    r23 = [NSStringFromClass([self class]) retain];
    r22 = [[r22 adShowSuccessForAdapter:r23] retain];
    [r21 logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r23 release];
    r21 = @class(MPLogging);
    r22 = @class(MPLogEvent);
    r23 = [NSStringFromClass([self class]) retain];
    r22 = [[r22 adDidAppearForAdapter:r23] retain];
    [r21 logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r23 release];
    return;
}

-(void)nativeAdDidRecordClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdDidClick:self];
    [r0 release];
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r23 release];
    return;
}

-(void *)privacyInformationIconView {
    r0 = [self adMobUnifiedNativeAdView];
    r0 = [r0 retain];
    r20 = [[r0 adChoicesView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)defaultActionURL {
    return 0x0;
}

-(void *)initWithAdMobUnifiedNativeAd:(void *)arg2 unifiedNativeAdView:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setAdMobUnifiedNativeAd:r19];
            r0 = [r21 adMobUnifiedNativeAd];
            r0 = [r0 retain];
            [r0 setDelegate:r21];
            [r0 release];
            var_68 = r20;
            [r21 setAdMobUnifiedNativeAdView:r20];
            r22 = [[NSMutableDictionary dictionary] retain];
            r0 = [r19 headline];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 headline];
                    r29 = r29;
                    [r0 retain];
                    [r22 setObject:r2 forKeyedSubscript:r3];
                    [r23 release];
            }
            r0 = [r19 icon];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 imageURL];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r27 release];
            [r26 release];
            if (r0 != 0x0) {
                    r0 = [r19 icon];
                    r0 = [r0 retain];
                    r0 = [r0 imageURL];
                    r0 = [r0 retain];
                    r0 = [r0 absoluteString];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r25 release];
                    [r24 release];
                    [r23 release];
            }
            r0 = [r19 body];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 body];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r23 release];
            }
            r0 = [r19 starRating];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            r20 = var_68;
            if (r0 != 0x0) {
                    r0 = [r19 starRating];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r23 release];
            }
            r0 = [r19 callToAction];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 callToAction];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r23 release];
            }
            r0 = [r19 price];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 price];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r23 release];
            }
            r0 = [r19 store];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 store];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r23 release];
            }
            r0 = [r20 mediaView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r21 adMobUnifiedNativeAdView];
                    r0 = [r0 retain];
                    [[r0 mediaView] retain];
                    objc_msgSend(r22, *(&@selector(alloc) + 0xbf0));
                    [r23 release];
                    [r24 release];
            }
            r0 = *(r21 + 0x8);
            *(r21 + 0x8) = r22;
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)mainMediaView {
    r0 = [self adMobUnifiedNativeAdView];
    r0 = [r0 retain];
    r20 = [[r0 mediaView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)enableThirdPartyClickTracking {
    return 0x1;
}

-(void *)properties {
    r0 = *(self + 0x8);
    return r0;
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

-(void *)adMobUnifiedNativeAd {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setAdMobUnifiedNativeAd:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)adMobUnifiedNativeAdView {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setAdMobUnifiedNativeAdView:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end