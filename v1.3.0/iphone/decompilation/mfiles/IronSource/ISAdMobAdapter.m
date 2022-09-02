@implementation ISAdMobAdapter

-(void *)sdkVersion {
    r0 = [GADRequest sdkVersion];
    return r0;
}

-(void *)version {
    objc_retainAutorelease(@"4.3.3");
    return @"4.3.3";
}

-(void *)systemFrameworks {
    r0 = [NSArray arrayWithObjects:&stack[-24] count:0x0];
    return r0;
}

-(void *)initAdapter:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] initAdapter:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAds));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerAds));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvAds));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bnPlacementToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvAdsAvailability));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isAdsAvailability));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)sdkName {
    objc_retainAutorelease(@"GADInterstitial");
    return @"GADInterstitial";
}

-(void)initRVWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    var_38 = r20;
    [r20 retain];
    [r22 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_28 release];
    [r22 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)setConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_consentCollectingUserData = arg2;
    *(int8_t *)(int64_t *)&self->_didSetConsentCollectingUserData = 0x1;
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    var_38 = r20;
    [r20 retain];
    [r22 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_28 release];
    [r22 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)loadRewardedVideoForAdMobWithPlacment:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 rvPlacementToDelegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r22 = @selector(objectForKey:);
            r0 = [r19 rvPlacementToDelegate];
            r0 = [r0 retain];
            r21 = [objc_msgSend(r0, r22) retain];
            [r0 release];
            r22 = [[r19 logger] retain];
            r23 = [[NSString stringWithFormat:@"ISAdMobAdapter: loadRewardedVideoWithPlacment adUnitId '%@'"] retain];
            [r22 log:r23];
            [r23 release];
            [r22 release];
            r22 = [[GADRewardedAd alloc] initWithAdUnitID:r20];
            r0 = [r19 rvAds];
            r0 = [r0 retain];
            [r0 setObject:r22 forKey:r20];
            [r0 release];
            r23 = [[r19 createGADRequest] retain];
            var_40 = [r20 retain];
            r21 = [r21 retain];
            [r22 loadRequest:r23 completionHandler:&var_68];
            [r21 release];
            [var_40 release];
            [r23 release];
    }
    else {
            r21 = [[r19 logger] retain];
            r22 = [[NSString stringWithFormat:@"ISAdMobAdapter: loadRewardedVideoWithPlacment cannot find placementID '%@'"] retain];
            [r21 log:r22];
    }
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(bool)hasAvailableAdsForAdapterConfig:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"adUnitId"] retain];
    [r0 release];
    r0 = [r19 rvAdsAvailability];
    r0 = [r0 retain];
    r22 = [[r0 objectForKey:r2] retain];
    [r0 release];
    if (r22 != 0x0) {
            r23 = [r22 boolValue];
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    var_38 = r20;
    [r20 retain];
    [r22 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_28 release];
    [r22 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    var_38 = r20;
    [r20 retain];
    [r22 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_28 release];
    [r22 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(bool)hasInterstitialWithAdapterConfig:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"adUnitId"] retain];
    [r0 release];
    r0 = [r19 isAdsAvailability];
    r0 = [r0 retain];
    r22 = [[r0 objectForKey:r2] retain];
    [r0 release];
    if (r22 != 0x0) {
            r23 = [r22 boolValue];
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void)initBNWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    var_38 = r20;
    [r20 retain];
    var_30 = r19;
    [r19 retain];
    [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [r22 release];
    [var_30 release];
    [var_38 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)reloadBanner:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)destroyBanner:(void *)arg2 {
    return;
}

-(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 adapterConfig:(void *)arg4 activeDelegate:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    var_50 = r20;
    [r20 retain];
    var_48 = r21;
    [r21 retain];
    var_40 = r19;
    [r19 retain];
    [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_78);
    [r23 release];
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r22 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)interstitialDidReceiveAd:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"interstitialDidReceiveAd with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = [[r19 isAdsAvailability] retain];
    r23 = [@(YES) retain];
    r24 = [[r20 adUnitID] retain];
    [r22 setObject:r23 forKey:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_isPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterInterstitialDidLoad];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)interstitialWillPresentScreen:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"interstitialWillPresentScreen with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_isPlacementToDelegate;
    r23 = [[r20 adUnitID] retain];
    r21 = [[r22 objectForKey:r23] retain];
    [r23 release];
    [r21 adapterInterstitialDidOpen];
    [r21 adapterInterstitialDidShow];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)interstitial:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r23 = [[r20 logger] retain];
    r24 = [[r19 adUnitID] retain];
    r25 = [[NSString stringWithFormat:@"didFailToReceiveAdWithError with adUnitID <%@>"] retain];
    [r23 log:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    r23 = r20->_isPlacementToDelegate;
    r24 = [[r19 adUnitID] retain];
    r23 = [[r23 objectForKey:r24] retain];
    [r24 release];
    r24 = [[r20 isAdsAvailability] retain];
    r25 = [@(NO) retain];
    r22 = [[r19 adUnitID] retain];
    [r24 setObject:r25 forKey:r22];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 adapterInterstitialDidFailToLoadWithError:r21];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidDismissScreen:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    [r20 isReady];
    r24 = [[NSString stringWithFormat:@"interstitialDidDismissScreen with adUnitID <%@> isReady %d"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_isPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterInterstitialDidClose];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)interstitialWillDismissScreen:(void *)arg2 {
    return;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"interstitialWillLeaveApplication with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_isPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterInterstitialDidClick];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)interstitialDidFailToPresentScreen:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"interstitialDidFailToPresentScreen with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_isPlacementToDelegate;
    r23 = [[r20 adUnitID] retain];
    r21 = [[r22 objectForKey:r23] retain];
    [r23 release];
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r22 = [[NSError errorWithDomain:@"ISAdMobAdapter" code:0x66 userInfo:r23] retain];
    [r23 release];
    [r21 adapterInterstitialDidFailToShowWithError:r22];
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedAd:(void *)arg2 userDidEarnReward:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r23 = [[r20 logger] retain];
    r24 = [[r19 adUnitID] retain];
    r25 = [[NSString stringWithFormat:@"userDidEarnReward with adUnitID <%@>"] retain];
    [r23 log:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    r23 = r20->_rvPlacementToDelegate;
    r22 = [[r19 adUnitID] retain];
    r23 = [[r23 objectForKey:r22] retain];
    [r22 release];
    [r23 adapterRewardedVideoDidReceiveReward];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedAdDidDismiss:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)rewardedAdDidPresent:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"rewardedAdDidPresent with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_rvPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterRewardedVideoDidOpen];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)rewardedAd:(void *)arg2 didFailToPresentWithError:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r23 = [[r20 logger] retain];
    r24 = [[r19 adUnitID] retain];
    r25 = [[NSString stringWithFormat:@"didFailToPresentWithError with adUnitID <%@>"] retain];
    [r23 log:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    r23 = r20->_rvPlacementToDelegate;
    r24 = [[r19 adUnitID] retain];
    r22 = [[r23 objectForKey:r24] retain];
    [r24 release];
    [r22 adapterRewardedVideoHasChangedAvailability:0x0];
    [r22 adapterRewardedVideoDidFailToShowWithError:r21];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)adViewDidReceiveAd:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"adViewDidReceiveAd with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_bnPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterBannerDidLoad:r20];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)adViewWillPresentScreen:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"adViewWillPresentScreen with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_bnPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterBannerWillPresentScreen];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)adViewDidDismissScreen:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"adViewDidDismissScreen with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_bnPlacementToDelegate;
    r21 = [[r20 adUnitID] retain];
    r22 = [[r22 objectForKey:r21] retain];
    [r21 release];
    [r22 adapterBannerDidDismissScreen];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)adView:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r23 = [[r19 logger] retain];
    r24 = [[r20 adUnitID] retain];
    r25 = [[NSString stringWithFormat:@"didFailToReceiveAdWithError with adUnitID <%@>"] retain];
    [r23 log:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    r24 = r19->_bnPlacementToDelegate;
    r23 = [[r20 adUnitID] retain];
    r0 = [r24 objectForKey:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if ([r21 code] == 0x1) {
            r0 = [ISError createError:0x25e withMessage:@"AdMob no fill"];
            r0 = [r0 retain];
    }
    else {
            r0 = [r21 retain];
    }
    [r22 adapterBannerDidFailToLoadWithError:r0];
    [r0 release];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)adViewWillLeaveApplication:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r19 logger] retain];
    r23 = [[r20 adUnitID] retain];
    r24 = [[NSString stringWithFormat:@"adViewWillLeaveApplication with adUnitID <%@>"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r22 = r19->_bnPlacementToDelegate;
    r23 = [[r20 adUnitID] retain];
    r21 = [[r22 objectForKey:r23] retain];
    [r23 release];
    [r21 adapterBannerDidClick];
    [r21 adapterBannerWillLeaveApplication];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)adViewWillDismissScreen:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[self logger] retain];
    r19 = [[arg2 adUnitID] retain];
    [r22 release];
    r21 = [[NSString stringWithFormat:@"adViewWillDismissScreen with adUnitID <%@>"] retain];
    [r20 log:r21];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)initAdMobSDK {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2408 != -0x1) {
            dispatch_once(0x1011d2408, &var_28);
    }
    return;
}

-(void *)adUnitID {
    r0 = self->_adUnitID;
    return r0;
}

-(void *)createGADRequest {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [GADRequest request];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r0 setRequestAgent:@"ironSource"];
    if (([r19 usersAge] & 0xffffffff80000000) == 0x0) {
            r2 = @"ironSource";
            r0 = [GADMobileAds sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 requestConfiguration];
            r29 = r29;
            r23 = [r0 retain];
            if ([r19 usersAge] < 0xd) {
                    r2 = @"ironSource";
                    if (CPU_FLAGS & L) {
                            r2 = 0x1;
                    }
            }
            [r23 tagForChildDirectedTreatment:r2];
            [r23 release];
            [r22 release];
    }
    if (*(int8_t *)(int64_t *)&r19->_didSetConsentCollectingUserData != 0x0 && *(int8_t *)(int64_t *)&r19->_consentCollectingUserData == 0x0) {
            r21 = [[GADExtras alloc] init];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
            r22 = [r0 retain];
            [r21 setAdditionalParameters:r22];
            [r22 release];
            [r20 registerAdNetworkExtras:r21];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adUnitID, arg2);
    return;
}

-(bool)didSetConsentCollectingUserData {
    r0 = *(int8_t *)(int64_t *)&self->_didSetConsentCollectingUserData;
    return r0;
}

-(void)setDidSetConsentCollectingUserData:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSetConsentCollectingUserData = arg2;
    return;
}

-(bool)consentCollectingUserData {
    r0 = *(int8_t *)(int64_t *)&self->_consentCollectingUserData;
    return r0;
}

-(void)setConsentCollectingUserData:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_consentCollectingUserData = arg2;
    return;
}

-(void *)interstitialAds {
    r0 = self->_interstitialAds;
    return r0;
}

-(void)setInterstitialAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialAds, arg2);
    return;
}

-(void *)bannerAds {
    r0 = self->_bannerAds;
    return r0;
}

-(void)setBannerAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerAds, arg2);
    return;
}

-(void *)rvAds {
    r0 = self->_rvAds;
    return r0;
}

-(void)setRvAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rvAds, arg2);
    return;
}

-(void *)rvPlacementToDelegate {
    r0 = self->_rvPlacementToDelegate;
    return r0;
}

-(void)setRvPlacementToDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rvPlacementToDelegate, arg2);
    return;
}

-(void *)isPlacementToDelegate {
    r0 = self->_isPlacementToDelegate;
    return r0;
}

-(void)setIsPlacementToDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isPlacementToDelegate, arg2);
    return;
}

-(void *)bnPlacementToDelegate {
    r0 = self->_bnPlacementToDelegate;
    return r0;
}

-(void)setBnPlacementToDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bnPlacementToDelegate, arg2);
    return;
}

-(void *)rvAdsAvailability {
    r0 = self->_rvAdsAvailability;
    return r0;
}

-(void)setRvAdsAvailability:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rvAdsAvailability, arg2);
    return;
}

-(void *)isAdsAvailability {
    r0 = self->_isAdsAvailability;
    return r0;
}

-(void)setIsAdsAvailability:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isAdsAvailability, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_isAdsAvailability, 0x0);
    objc_storeStrong((int64_t *)&self->_rvAdsAvailability, 0x0);
    objc_storeStrong((int64_t *)&self->_bnPlacementToDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_isPlacementToDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_rvPlacementToDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_rvAds, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerAds, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAds, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    return;
}

@end