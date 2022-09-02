@implementation GADMAdapterUnitySingleton

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011daea0 != -0x1) {
            dispatch_once(0x1011daea0, &var_28);
    }
    r0 = *0x1011dae98;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMapTable mapTableWithKeyOptions:0x0 valueOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegates));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)initializeWithGameID:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [UADSMediationMetaData alloc];
    r0 = [r0 init];
    [r0 setName:@"AdMob"];
    [r0 setVersion:@"3.0.1.0"];
    [r0 commit];
    [UnityAds initialize:r22 delegate:self];
    [r22 release];
    [r0 release];
    return;
}

-(void)addAdapterDelegate:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegates)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = *(self + r22);
    [[r19 getPlacementID] retain];
    [r21 setObject:r2 forKey:r3];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)configureRewardedAdWithGameID:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([UnityAds isSupported] != 0x0 && ([UnityAds isInitialized] & 0x1) == 0x0) {
            [r20 initializeWithGameID:r19];
    }
    [r19 release];
    return;
}

-(void)presentRewardedAdForViewController:(void *)arg2 delegate:(void *)arg3 {
    [arg2 retain];
    objc_storeWeak((int64_t *)&self->_currentShowingUnityDelegate, [arg3 retain]);
    r20 = [[r19 getPlacementID] retain];
    [r19 release];
    [UnityAds show:r21 placementId:r20];
    [r21 release];
    [r20 release];
    return;
}

-(void)requestRewardedAdWithDelegate:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 getPlacementID] retain];
    r0 = *(r22 + sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegates)));
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = *(r22 + r23);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100759d60;

loc_100759ce8:
    [@"An ad is already loading for placement ID %@" retain];
    r22 = [[NSString stringWithFormat:@"An ad is already loading for placement ID %@"] retain];
    [r19 unityAdsDidError:0x9 withMessage:r22];
    [r22 release];
    [@"An ad is already loading for placement ID %@" release];
    objc_sync_exit(r21);
    goto loc_100759d54;

loc_100759d54:
    [r21 release];
    goto loc_100759dc8;

loc_100759dc8:
    [r20 release];
    [r19 release];
    return;

loc_100759d60:
    objc_sync_exit(r21);
    [r21 release];
    [r22 addAdapterDelegate:r19];
    if ([UnityAds isInitialized] == 0x0) goto loc_100759dc8;

loc_100759d9c:
    if ([UnityAds isReady:r20] == 0x0) goto loc_100759dec;

loc_100759db4:
    [r19 unityAdsReady:r20];
    goto loc_100759dc8;

loc_100759dec:
    r21 = [NSString alloc];
    r22 = [NSStringFromClass([UnityAds class]) retain];
    r21 = [r21 initWithFormat:@"%@ failed to receive rewarded ad."];
    [r22 release];
    [r19 unityAdsDidError:0x8 withMessage:r21];
    goto loc_100759d54;
}

-(void)presentInterstitialAdForViewController:(void *)arg2 delegate:(void *)arg3 {
    [arg2 retain];
    objc_storeWeak((int64_t *)&self->_currentShowingUnityDelegate, [arg3 retain]);
    r22 = [[r19 getPlacementID] retain];
    [r19 release];
    [UnityAds show:r21 placementId:r22];
    [r21 release];
    [r22 release];
    return;
}

-(void)unityAdsBannerDidLoad:(void *)arg2 view:(void *)arg3 {
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentBannerDelegate);
    [r0 unityAdsBannerDidLoad:*0x1011e5f90 view:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)configureInterstitialAdWithGameID:(void *)arg2 delegate:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([UnityAds isSupported] == 0x0) goto loc_100759fd8;

loc_100759f78:
    if ([UnityAds isInitialized] == 0x0) goto loc_10075a054;

loc_100759f8c:
    r0 = [r20 getPlacementID];
    r29 = r29;
    r21 = [r0 retain];
    if ([UnityAds isReady:r21] != 0x0) {
            [r20 unityAdsReady:r21];
    }
    else {
            r22 = [NSString alloc];
            r23 = [NSStringFromClass([UnityAds class]) retain];
            r22 = [r22 initWithFormat:@"%@ failed to receive interstitial ad."];
            [r23 release];
            [r20 unityAdsDidError:0x8 withMessage:r22];
            [r22 release];
    }
    goto loc_10075a100;

loc_10075a100:
    [r21 release];
    goto loc_10075a108;

loc_10075a108:
    [r20 release];
    [r19 release];
    return;

loc_10075a054:
    [r21 addAdapterDelegate:r20];
    [r21 initializeWithGameID:r19];
    goto loc_10075a108;

loc_100759fd8:
    r21 = [NSString alloc];
    r22 = [NSStringFromClass([UnityAds class]) retain];
    r21 = [r21 initWithFormat:@"%@ is not supported for this device."];
    [r22 release];
    [r20 unityAdsDidError:0x0 withMessage:r21];
    goto loc_10075a100;
}

-(void)presentBannerAd:(void *)arg2 delegate:(void *)arg3 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r21 = (int64_t *)&r22->_currentBannerDelegate;
    objc_storeWeak(r21, arg3);
    if ([UnityAds isSupported] == 0x0) goto loc_10075a2bc;

loc_10075a230:
    r0 = objc_loadWeakRetained(r21);
    r24 = r0;
    r0 = [r0 getPlacementID];
    r23 = r0;
    r20 = [r0 retain];
    [r24 release];
    if (r20 == 0x0) goto loc_10075a30c;

loc_10075a264:
    objc_storeStrong(0x1011e5f90, r23);
    if (([UnityAds isInitialized] & 0x1) != 0x0) {
            [UnityAdsBanner setDelegate:r22];
            [UnityAdsBanner loadBanner:*0x1011e5f90];
    }
    else {
            [r22 initializeWithGameID:r19];
            *(int8_t *)0x1011e5f98 = 0x1;
    }
    goto loc_10075a364;

loc_10075a364:
    [r20 release];
    [r19 release];
    return;

loc_10075a30c:
    r22 = [[NSString alloc] initWithFormat:@"Tried to show banners with a nil placement ID"];
    r0 = objc_loadWeakRetained(r21);
    [r0 unityAdsBannerDidError:r22];
    [r0 release];
    r0 = r22;
    goto loc_10075a360;

loc_10075a360:
    [r0 release];
    goto loc_10075a364;

loc_10075a2bc:
    r20 = [[NSString alloc] initWithFormat:@"Unity Ads is not supported for this device."];
    r0 = objc_loadWeakRetained(r21);
    [r0 unityAdsBannerDidError:r20];
    r0 = r0;
    goto loc_10075a360;
}

-(void)unityAdsBannerDidUnload:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentBannerDelegate);
    [r0 unityAdsBannerDidUnload:*0x1011e5f90];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidShow:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentBannerDelegate);
    [r0 unityAdsBannerDidShow:*0x1011e5f90];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidHide:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentBannerDelegate);
    [r0 unityAdsBannerDidHide:*0x1011e5f90];
    [r0 release];
    return;
}

-(void)unityAdsBannerDidClick:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentBannerDelegate);
    [r0 unityAdsBannerDidClick:*0x1011e5f90];
    [r0 release];
    return;
}

-(void)unityAdsPlacementStateChanged:(void *)arg2 oldState:(long long)arg3 newState:(long long)arg4 {
    return;
}

-(void)unityAdsBannerDidError:(void *)arg2 {
    r20 = [[NSString alloc] initWithFormat:@"Internal Unity Ads banner error"];
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentBannerDelegate);
    [r0 unityAdsBannerDidError:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegates)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(self + r23) removeObjectForKey:r19];
    objc_sync_exit(r22);
    [r22 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentShowingUnityDelegate);
    [r0 unityAdsDidFinish:r19 withFinishState:arg3];
    [r0 release];
    [r19 release];
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
    r19 = [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegates)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = [[*(self + r22) objectForKey:r2] retain];
    objc_sync_exit(r20);
    [r20 release];
    if (r21 != 0x0) {
            [r21 unityAdsReady:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentShowingUnityDelegate);
    [r0 unityAdsDidStart:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)unityAdsDidClick:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentShowingUnityDelegate);
    [r0 unityAdsDidClick:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)stopTrackingDelegate:(void *)arg2 {
    r19 = self->_adapterDelegates;
    [[arg2 getPlacementID] retain];
    [r19 removeObjectForKey:r2];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_currentBannerDelegate);
    objc_destroyWeak((int64_t *)&self->_currentShowingUnityDelegate);
    objc_storeStrong((int64_t *)&self->_adapterDelegates, 0x0);
    return;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r21 == 0x8) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_currentShowingUnityDelegate);
            [r0 unityAdsDidError:0x8 withMessage:r19];
            r0 = r0;
    }
    else {
            r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegates)));
            r0 = [r0 retain];
            objc_sync_enter(r0);
            var_120 = r23;
            r0 = *(r20 + r23);
            r0 = [r0 objectEnumerator];
            r0 = [r0 retain];
            [[r0 allObjects] retain];
            [r0 release];
            objc_sync_exit(r22);
            [r22 release];
            var_108 = q0;
            r0 = [r24 retain];
            r22 = r0;
            r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r24 != 0x0) {
                    r27 = *var_108;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_108 != r27) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [*(var_110 + r26 * 0x8) unityAdsDidError:r2 withMessage:r3];
                                    r26 = r26 + 0x1;
                            } while (r26 < r24);
                            r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r24 != 0x0);
            }
            [r22 release];
            r0 = *(r20 + var_120);
            r0 = [r0 retain];
            objc_sync_enter(r0);
            [*(r20 + var_120) removeAllObjects];
            objc_sync_exit(r21);
            [r21 release];
            r0 = r22;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end