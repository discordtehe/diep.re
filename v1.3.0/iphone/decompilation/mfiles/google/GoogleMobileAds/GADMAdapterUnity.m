@implementation GADMAdapterUnity

+(void *)mainAdapterClass {
    r0 = [GADMediationAdapterUnity class];
    return r0;
}

+(void *)adapterVersion {
    objc_retainAutorelease(@"3.0.1.0");
    return @"3.0.1.0";
}

+(void *)networkExtrasClass {
    return 0x0;
}

-(void)stopBeingDelegate {
    r0 = [GADMAdapterUnitySingleton sharedInstance];
    r0 = [r0 retain];
    [r0 stopTrackingDelegate:self];
    [r0 release];
    return;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    objc_storeWeak((int64_t *)&r20->_networkConnector, r19);
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_networkConnector);
    [r0 adapterWillPresentInterstitial:self];
    [r0 release];
    r0 = [GADMAdapterUnitySingleton sharedInstance];
    r0 = [r0 retain];
    [r0 presentInterstitialAdForViewController:r21 delegate:self];
    [r21 release];
    [r0 release];
    return;
}

-(void)getInterstitial {
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
    r0 = objc_loadWeakRetained((int64_t *)&r20->_networkConnector);
    r19 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"gameId"];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r23 release];
    r0 = [r19 credentials];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:@"zoneId"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 copy];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
    r8 = *(r20 + r24);
    *(r20 + r24) = r0;
    [r8 release];
    [r23 release];
    [r22 release];
    if (r21 != 0x0 && *(r20 + r24) != 0x0) {
            *(int8_t *)(int64_t *)&r20->_isLoading = 0x1;
            r0 = [GADMAdapterUnitySingleton sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r1 = @selector(configureInterstitialAdWithGameID:delegate:);
    }
    else {
            r22 = [sub_100758728() retain];
            r1 = @selector(adapter:didFailAd:);
            r0 = r19;
    }
    objc_msgSend(r0, r1);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r0 = objc_loadWeakRetained((int64_t *)&r20->_networkConnector);
    r19 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"gameId"];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r23 release];
    r0 = [r19 credentials];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:@"zoneId"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 copy];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
    r8 = *(r20 + r24);
    *(r20 + r24) = r0;
    [r8 release];
    [r23 release];
    [r22 release];
    if (r21 != 0x0 && *(r20 + r24) != 0x0) {
            r0 = [GADMAdapterUnitySingleton sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r1 = @selector(presentBannerAd:delegate:);
    }
    else {
            r22 = [sub_100758728() retain];
            r1 = @selector(adapter:didFailAd:);
            r0 = r19;
    }
    objc_msgSend(r0, r1);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)isBannerAnimationOK:(long long)arg2 {
    return 0x1;
}

-(void *)getPlacementID {
    r0 = self->_placementID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)unityAdsPlacementStateChanged:(void *)arg2 oldState:(long long)arg3 newState:(long long)arg4 {
    return;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_networkConnector);
    if (r20 != 0x0) {
            [r20 adapterWillDismissInterstitial:r19];
            [r20 adapterDidDismissInterstitial:r19];
    }
    [r20 release];
    return;
}

-(void)unityAdsReady:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_networkConnector);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isLoading));
    if (*(int8_t *)(r19 + r21) != 0x0) {
            if (r20 != 0x0) {
                    [r20 adapterDidReceiveInterstitial:r19];
            }
            *(int8_t *)(r19 + r21) = 0x0;
    }
    [r20 release];
    return;
}

-(void)unityAdsDidClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_networkConnector);
    if (r20 != 0x0) {
            [r20 adapterDidGetAdClick:r19];
            [r20 adapterWillLeaveApplication:r19];
    }
    [r20 release];
    return;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
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
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r21 = objc_loadWeakRetained((int64_t *)&r20->_networkConnector);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isLoading));
    if (*(int8_t *)(r20 + r23) != 0x0) {
            r22 = [sub_100758728() retain];
            if (r21 != 0x0) {
                    [r21 adapter:r20 didFailAd:r22];
            }
            *(int8_t *)(r20 + r23) = 0x0;
            [r22 release];
    }
    else {
            if (r22 == 0x8 && r21 != 0x0) {
                    [r21 adapterWillDismissInterstitial:r20];
                    [r21 adapterDidDismissInterstitial:r20];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
    return;
}

-(void)unityAdsBannerDidClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_networkConnector);
    if (r20 != 0x0) {
            [r20 adapterDidGetAdClick:r19];
            [r20 adapterWillLeaveApplication:r19];
    }
    [r20 release];
    return;
}

-(void)unityAdsBannerDidError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_networkConnector);
    if (r19 != 0x0) {
            r21 = [sub_100758728() retain];
            [r19 adapter:r20 didFailAd:r21];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)unityAdsBannerDidHide:(void *)arg2 {
    NSLog(@"Unity Ads Banner did hide.");
    return;
}

-(void)unityAdsBannerDidLoad:(void *)arg2 view:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r21 = objc_loadWeakRetained((int64_t *)&r20->_networkConnector);
    if (r21 != 0x0) {
            [r21 adapter:r20 didReceiveAdView:r19];
    }
    else {
            NSLog(@"ERROR: Network connector for UnityAds banner adapter not found.");
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)unityAdsBannerDidShow:(void *)arg2 {
    NSLog(@"Unity Ads Banner is showing.");
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_destroyWeak((int64_t *)&self->_networkConnector);
    return;
}

-(void)unityAdsBannerDidUnload:(void *)arg2 {
    NSLog(@"Unity Ads Banner has unloaded.");
    return;
}

@end