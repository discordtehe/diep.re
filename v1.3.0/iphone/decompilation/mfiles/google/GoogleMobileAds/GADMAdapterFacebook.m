@implementation GADMAdapterFacebook

+(void *)adapterVersion {
    objc_retainAutorelease(@"5.4.0.0");
    return @"5.4.0.0";
}

+(void *)networkExtrasClass {
    r0 = [GADFBNetworkExtras class];
    return r0;
}

+(void *)mainAdapterClass {
    r0 = [GADMediationAdapterFacebook class];
    return r0;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 isSDKVersionAtLeastMajor:0x7 minor:0xc patch:0x0];
    [r0 release];
    if ((r22 & 0x1) != 0x0) {
            r20 = [r20 init];
            if (r20 != 0x0) {
                    r0 = [GADFBBannerAd alloc];
                    r0 = [r0 initWithGADMAdNetworkConnector:r19 adapter:r20];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerAd));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [GADFBInterstitialAd alloc];
                    r0 = [r0 initWithGADMAdNetworkConnector:r19 adapter:r20];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAd));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [GADFBNativeAd alloc];
                    r0 = [r0 initWithGADMAdNetworkConnector:r19 adapter:r20];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    objc_storeWeak((int64_t *)&r20->_connector, r19);
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    else {
            NSLog(@"Unsupported SDK. GoogleMobileAds SDK version 7.12.0 or higher is required.");
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)getInterstitial {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r20->_connector);
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r19 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    [r20->_interstitialAd getInterstitial];
    [r19 release];
    return;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r21 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r21->_connector);
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r19 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    [r21->_bannerAd getBannerWithSize:&var_50];
    [r19 release];
    return;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    [self->_interstitialAd presentInterstitialFromRootViewController:arg2];
    return;
}

-(bool)isBannerAnimationOK:(long long)arg2 {
    return 0x1;
}

-(void)stopBeingDelegate {
    [self->_bannerAd stopBeingDelegate];
    [self->_interstitialAd stopBeingDelegate];
    [self->_nativeAd stopBeingDelegate];
    return;
}

-(void)getNativeAdWithAdTypes:(void *)arg2 options:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r22->_connector);
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r21 childDirectedTreatment];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r21 childDirectedTreatment];
                    r0 = [r0 retain];
                    [FBAdSettings setIsChildDirected:[r0 boolValue]];
                    [r0 release];
            }
    }
    if ([r19 containsObject:r2] != 0x0) {
            r0 = [GADFBUnifiedNativeAd alloc];
            r0 = [r0 initWithGADMAdNetworkConnector:r21 adapter:r22];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_unifiedNativeAd));
    }
    else {
            r0 = [GADFBNativeAd alloc];
            r0 = [r0 initWithGADMAdNetworkConnector:r21 adapter:r22];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    }
    r8 = *(r22 + r23);
    *(r22 + r23) = r0;
    [r8 release];
    [*(r22 + r23) getNativeAdWithAdTypes:r19 options:r20];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)handlesUserClicks {
    return 0x1;
}

-(bool)handlesUserImpressions {
    return 0x1;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_unifiedNativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_connector);
    return;
}

@end