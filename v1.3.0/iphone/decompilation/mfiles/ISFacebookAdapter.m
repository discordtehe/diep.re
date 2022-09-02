@implementation ISFacebookAdapter

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
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoAds));
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
    }
    r0 = r19;
    return r0;
}

-(void *)version {
    objc_retainAutorelease(@"4.3.3");
    return @"4.3.3";
}

-(void *)sdkVersion {
    objc_retainAutorelease(@"5.1.1");
    return @"5.1.1";
}

-(void *)systemFrameworks {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_10 count:0x1];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sdkName {
    objc_retainAutorelease(@"FBInterstitialAd");
    return @"FBInterstitialAd";
}

-(void)initRVWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isSupported] & 0x1) != 0x0) {
            r0 = [r21 settings];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:@"placementId"];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (([r19 isConfigValueValid:r23] & 0x1) != 0x0) {
                    [r19 addRewardedVideoDelegate:r22 forPlacement:r23];
                    [FBAdSettings setMediationService:@"IronSource"];
                    NSSelectorFromString(@"adaptersDebug");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            if ([r19 adaptersDebug] != 0x0) {
                                    [FBAdSettings setLogLevel:r2];
                            }
                            else {
                                    [FBAdSettings setLogLevel:r2];
                            }
                    }
                    r24 = [[r19 logger] retain];
                    r25 = [[NSString stringWithFormat:@"ISFacebookAdapter:initRVWithUserId with placementID '%@' and userId '%@'."] retain];
                    [r24 log:r25];
                    [r25 release];
                    [r24 release];
                    [r19 loadRewardedVideoAdWithPlacment:r23];
            }
            else {
                    r24 = [[r19 errorForMissingCredentialFieldWithName:@"placementId"] retain];
                    r25 = [[r19 logger] retain];
                    r26 = [[r24 description] retain];
                    r27 = [[NSString stringWithFormat:@"%@"] retain];
                    [r25 log:r27];
                    [r27 release];
                    [r26 release];
                    [r25 release];
                    [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
                    [r24 release];
            }
    }
    else {
            r23 = [[r19 errorForUnsupportedAdapter:@"RV"] retain];
            r24 = [[r19 logger] retain];
            r25 = [[r23 description] retain];
            r26 = [[NSString stringWithFormat:@"RV: %@"] retain];
            [r24 log:r26];
            [r26 release];
            [r25 release];
            [r24 release];
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
    }
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isSupported] & 0x1) != 0x0) {
            r0 = [r20 settings];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:@"placementId"];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (([r19 isConfigValueValid:r22] & 0x1) != 0x0) {
                    r24 = [[r20 providerName] retain];
                    r23 = [[NSString stringWithFormat:@"ISFacebookAdapter: fetchVideo for %@"] retain];
                    [r24 release];
                    r0 = [r19 logger];
                    r0 = [r0 retain];
                    [r0 log:r23];
                    [r0 release];
                    [r19 loadRewardedVideoAdWithPlacment:r22];
            }
            else {
                    r23 = [[r19 errorForMissingCredentialFieldWithName:@"placementId"] retain];
                    r24 = [[r19 logger] retain];
                    r25 = [[r23 description] retain];
                    r26 = [[NSString stringWithFormat:@"%@"] retain];
                    [r24 log:r26];
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
            }
            [r23 release];
            [r22 release];
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 log:@"ISFacebookAdapter: fetch failed due to unsupported IOS version for the SDK"];
            [r0 release];
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r24 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 setRewardedVideoActiveDelegate:r21];
    r0 = [r20 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementId"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r26 release];
    if (([r19 isConfigValueValid:r23] & 0x1) != 0x0) {
            r0 = [r19 logger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 log:r2];
            [r28 release];
            r22 = r24;
            if (r24 == 0x0) {
                    r0 = [r19 topMostController];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
            }
            if ([r19 hasAvailableAdsForAdapterConfig:r20] != 0x0) {
                    r0 = r19->_rewardedVideoAds;
                    r0 = [r0 objectForKeyedSubscript:r23];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            r0 = [r19 dynamicUserId];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r25 = [[r19 dynamicUserId] retain];
                                    [r24 setRewardDataWithUserID:r25 withCurrency:@"1"];
                                    [r25 release];
                            }
                            [r24 showAdFromRootViewController:r22];
                    }
                    else {
                            r25 = [[r19 logger] retain];
                            [[NSString stringWithFormat:@"showRewardedVideo: unknown placement %@"] retain];
                            [r25 log:r2];
                            [r27 release];
                            [r25 release];
                            r25 = [[NSError errorWithDomain:@"ISFacebookAdapter" code:0x64 userInfo:0x0] retain];
                            [r19 notifyRewardedVideoDidFailToShowWithError:r25 forDelegate:r21];
                            [r25 release];
                    }
            }
            else {
                    r24 = [[NSError errorWithDomain:@"ISFacebookAdapter" code:0x64 userInfo:0x0] retain];
                    [r19 notifyRewardedVideoDidFailToShowWithError:r24 forDelegate:r21];
            }
            [r24 release];
            [r23 release];
    }
    else {
            r22 = [[r19 errorForMissingCredentialFieldWithName:@"placementId"] retain];
            r25 = [[r19 logger] retain];
            r26 = [[r22 description] retain];
            r27 = [[NSString stringWithFormat:@"%@"] retain];
            [r25 log:r27];
            [r27 release];
            [r26 release];
            [r25 release];
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
            [r22 release];
            [r23 release];
            r22 = r24;
    }
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    [r22 release];
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isSupported] & 0x1) != 0x0) {
            r0 = [r20 settings];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:@"placementId"];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            if (([r19 isConfigValueValid:r21] & 0x1) != 0x0) {
                    r23 = [[r19->_rewardedVideoAds objectForKeyedSubscript:r21] retain];
                    if (r23 != 0x0) {
                            r22 = [r23 isAdValid];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r23 release];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
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
    r21 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 setInterstititalActiveDelegate:r21];
    r0 = [r20 settings];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (([r19 isConfigValueValid:r22] & 0x1) != 0x0) {
            var_40 = [r22 retain];
            var_38 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_68);
            [var_38 release];
            r0 = var_40;
    }
    else {
            r23 = [[r19 errorForMissingCredentialFieldWithName:@"placementId"] retain];
            [r19 notifyInterstitialDidLoadFailedWithError:r23 forDelegate:r21];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isSupported] & 0x1) != 0x0) {
            r0 = [r21 settings];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:@"placementId"];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (([r19 isConfigValueValid:r23] & 0x1) != 0x0) {
                    [r19 addInterstititalDelegate:r22 forPlacement:r23];
                    [FBAdSettings setMediationService:@"IronSource"];
                    NSSelectorFromString(@"adaptersDebug");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            if ([r19 adaptersDebug] != 0x0) {
                                    [FBAdSettings setLogLevel:r2];
                            }
                            else {
                                    [FBAdSettings setLogLevel:r2];
                            }
                    }
                    r24 = [[r19 logger] retain];
                    r25 = [[NSString stringWithFormat:@"ISFacebookAdapter:initISWithUserId with placementID '%@' and userId '%@'."] retain];
                    [r24 log:r25];
                    [r25 release];
                    [r24 release];
                    [r19 notifyInterstitialInitSuccessForDelegate:r22];
            }
            else {
                    r24 = [[r19 errorForMissingCredentialFieldWithName:@"placementId"] retain];
                    [r19 notifyInterstitialInitFailedWithError:r24 forDelegate:r22];
                    [r24 release];
            }
    }
    else {
            r23 = [[r19 errorForUnsupportedAdapter:@"IS"] retain];
            [r19 notifyInterstitialInitFailedWithError:r23 forDelegate:r22];
    }
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    [r20 setInterstititalActiveDelegate:r22];
    r0 = [r21 settings];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementId"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    if (([r20 isConfigValueValid:r23] & 0x1) != 0x0) {
            var_48 = [r23 retain];
            var_40 = [r19 retain];
            var_38 = [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [var_38 release];
            [var_40 release];
            r0 = var_48;
    }
    else {
            r24 = [[r20 errorForMissingCredentialFieldWithName:@"placementId"] retain];
            [r20 notifyInterstitialDidFailToShowWithError:r24 forDelegate:r22];
            r0 = r24;
    }
    [r0 release];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 release];
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isSupported] & 0x1) != 0x0) {
            r0 = [r20 settings];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:@"placementId"];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            if (([r19 isConfigValueValid:r21] & 0x1) != 0x0) {
                    r23 = [[r19->_interstitialAds objectForKeyedSubscript:r21] retain];
                    if (r23 != 0x0) {
                            r22 = [r23 isAdValid];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r23 release];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)reloadBanner:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)initBNWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r21 settings];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementId"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    if (([r20 isSupported] & 0x1) == 0x0) goto loc_10026b4a4;

loc_10026b404:
    if (([r20 isConfigValueValid:r23] & 0x1) == 0x0) goto loc_10026b4e4;

loc_10026b41c:
    [r20 addBannerDelegate:r22 forPlacement:r23];
    [FBAdSettings setMediationService:@"IronSource"];
    NSSelectorFromString(@"adaptersDebug");
    if ([r20 respondsToSelector:r2] != 0x0) {
            if ([r20 adaptersDebug] != 0x0) {
                    [FBAdSettings setLogLevel:r2];
            }
            else {
                    [FBAdSettings setLogLevel:r2];
            }
    }
    [r20 notifyBannerInitSuccessForDelegate:r22];
    goto loc_10026b548;

loc_10026b548:
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_10026b4e4:
    r24 = [[r20 errorForMissingCredentialFieldWithName:@"placementId"] retain];
    [r20 notifyBannerInitFailedWithError:r24 forDelegate:r22];
    goto loc_10026b520;

loc_10026b520:
    [r24 release];
    goto loc_10026b548;

loc_10026b4a4:
    r24 = [[r20 errorForUnsupportedAdapter:@"BN"] retain];
    [r20 notifyBannerInitFailedWithError:r24 forDelegate:r22];
    goto loc_10026b520;
}

-(void)destroyBanner:(void *)arg2 {
    return;
}

-(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 adapterConfig:(void *)arg4 activeDelegate:(void *)arg5 {
    r31 = r31 - 0xa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [arg5 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    [r21 setBannerActiveDelegate:r23];
    r0 = [r22 settings];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementId"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    if (([r21 isConfigValueValid:r24] & 0x1) != 0x0) {
            var_60 = [r24 retain];
            var_58 = [r20 retain];
            var_50 = [r19 retain];
            var_48 = [r23 retain];
            dispatch_async(*__dispatch_main_q, &var_88);
            [var_48 release];
            [var_50 release];
            [var_58 release];
            r0 = var_60;
    }
    else {
            r25 = [[r21 errorForMissingCredentialFieldWithName:@"placementId"] retain];
            [r21 notifyBannerDidFailToLoadWithError:r25 forDelegate:r23];
            r0 = r25;
    }
    [r0 release];
    [r24 release];
    objc_sync_exit(r21);
    [r21 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adViewDidFinishHandlingClick:(void *)arg2 {
    return;
}

-(void)adViewDidClick:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026c298;

loc_10026c1a4:
    r25 = [[r19 bannerDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026c2a0;

loc_10026c220:
    r24 = @selector(objectForKey:);
    r22 = [[r19 bannerDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyBannerDidClickForDelegate:r21];
    r0 = r21;
    goto loc_10026c29c;

loc_10026c29c:
    [r0 release];
    goto loc_10026c2a0;

loc_10026c2a0:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026c298:
    r0 = r22;
    goto loc_10026c29c;
}

-(void)adViewDidLoad:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026c454;

loc_10026c35c:
    r25 = [[r19 bannerDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026c45c;

loc_10026c3d8:
    r24 = @selector(objectForKey:);
    r22 = [[r19 bannerDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyBannerDidLoad:r20 forDelegate:r21];
    r0 = r21;
    goto loc_10026c458;

loc_10026c458:
    [r0 release];
    goto loc_10026c45c;

loc_10026c45c:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026c454:
    r0 = r22;
    goto loc_10026c458;
}

-(void)adView:(void *)arg2 didFailWithError:(void *)arg3 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 length] == 0x0) goto loc_10026c658;

loc_10026c524:
    r26 = [[r20 bannerDelegateMapHolders] retain];
    r27 = [[r19 placementID] retain];
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r23 release];
    if (r0 == 0x0) goto loc_10026c660;

loc_10026c5a0:
    r25 = @selector(objectForKey:);
    r24 = [[r20 bannerDelegateMapHolders] retain];
    r26 = [[r19 placementID] retain];
    r23 = [objc_msgSend(r24, r25) retain];
    [r26 release];
    [r24 release];
    [r20 notifyBannerDidFailToLoadWithError:r21 forDelegate:r23];
    r24 = r20->_bannerAds;
    r22 = [[r19 placementID] retain];
    [r24 setObject:0x0 forKeyedSubscript:r22];
    [r22 release];
    goto loc_10026c658;

loc_10026c658:
    [r23 release];
    goto loc_10026c660;

loc_10026c660:
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)adViewWillLogImpression:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidLoad:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: RewardedVideo ad was loaded. Can present now."];
    [r0 release];
    r21 = r19->_rewardedVideoAds;
    r23 = [[r20 placementID] retain];
    r0 = [r21 objectForKeyedSubscript:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            r23 = [r21 isAdValid];
    }
    else {
            r23 = 0x0;
    }
    r0 = [r20 placementID];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 length] == 0x0) goto loc_10026cb34;

loc_10026ca38:
    r27 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r28 = [[r20 placementID] retain];
    r0 = [r27 objectForKey:r2];
    var_54 = r23;
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    [r27 release];
    [r24 release];
    if (r0 == 0x0) goto loc_10026cb3c;

loc_10026cab8:
    r26 = @selector(objectForKey:);
    r24 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r25 = [[r20 placementID] retain];
    r22 = [objc_msgSend(r24, r26) retain];
    [r25 release];
    [r24 release];
    [r19 notifyRewardedVideoAvialbilty:var_54 forDelegate:r22];
    r0 = r22;
    goto loc_10026cb38;

loc_10026cb38:
    [r0 release];
    goto loc_10026cb3c;

loc_10026cb3c:
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026cb34:
    r0 = r24;
    goto loc_10026cb38;
}

-(void)rewardedVideoAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r22 = [[r20 logger] retain];
    r23 = [[r21 description] retain];
    r24 = [[NSString stringWithFormat:@"ISFacebookAdapter: RewardedVideo failed to load with error: %@"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = [r19 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 length] == 0x0) goto loc_10026c8c4;

loc_10026c7cc:
    r26 = [[r20 rewardedVideoDelegateMapHolders] retain];
    r27 = [[r19 placementID] retain];
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r23 release];
    if (r0 == 0x0) goto loc_10026c8cc;

loc_10026c848:
    r25 = @selector(objectForKey:);
    r23 = [[r20 rewardedVideoDelegateMapHolders] retain];
    r24 = [[r19 placementID] retain];
    r22 = [objc_msgSend(r23, r25) retain];
    [r24 release];
    [r23 release];
    [r20 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
    r0 = r22;
    goto loc_10026c8c8;

loc_10026c8c8:
    [r0 release];
    goto loc_10026c8cc;

loc_10026c8cc:
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;

loc_10026c8c4:
    r0 = r23;
    goto loc_10026c8c8;
}

-(void)rewardedVideoAdDidClick:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: RewardedVideo was clicked."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026cd30;

loc_10026cc3c:
    r25 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026cd38;

loc_10026ccb8:
    r24 = @selector(objectForKey:);
    r22 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyRewardedVideoDidClickForDelegate:r21];
    r0 = r21;
    goto loc_10026cd34;

loc_10026cd34:
    [r0 release];
    goto loc_10026cd38;

loc_10026cd38:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026cd30:
    r0 = r22;
    goto loc_10026cd34;
}

-(void)rewardedVideoAdVideoComplete:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026cef8;

loc_10026cdf0:
    r25 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026cf00;

loc_10026ce6c:
    r24 = @selector(objectForKey:);
    r22 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyRewardedVideoReceiveRewardForDelegate:r21];
    [r19 notifyRewardedVideoDidEndForDelegate:r21];
    r0 = r21;
    goto loc_10026cefc;

loc_10026cefc:
    [r0 release];
    goto loc_10026cf00;

loc_10026cf00:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026cef8:
    r0 = r22;
    goto loc_10026cefc;
}

-(void)rewardedVideoAdWillClose:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidClose:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: RewardedVideo closed."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026d0e4;

loc_10026cff0:
    r25 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026d0ec;

loc_10026d06c:
    r24 = @selector(objectForKey:);
    r22 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r25 = [[r20 placementID] retain];
    r0 = objc_msgSend(r22, r24);
    r29 = r29;
    r23 = [r0 retain];
    [r25 release];
    [r22 release];
    [r19 notifyRewardedVideoDidCloseForDelegate:r23];
    r0 = r23;
    goto loc_10026d0e8;

loc_10026d0e8:
    [r0 release];
    goto loc_10026d0ec;

loc_10026d0ec:
    r21 = [[r20 placementID] retain];
    [r19 loadRewardedVideoAdWithPlacment:r21];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026d0e4:
    r0 = r22;
    goto loc_10026d0e8;
}

-(void)rewardedVideoAdWillLogImpression:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: RewardedVideo ad opened."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026d31c;

loc_10026d214:
    r25 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026d324;

loc_10026d290:
    r24 = @selector(objectForKey:);
    r22 = [[r19 rewardedVideoDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyRewardedVideoDidOpenForDelegate:r21];
    [r19 notifyRewardedVideoDidStartForDelegate:r21];
    r0 = r21;
    goto loc_10026d320;

loc_10026d320:
    [r0 release];
    goto loc_10026d324;

loc_10026d324:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026d31c:
    r0 = r22;
    goto loc_10026d320;
}

-(void)interstitialAdDidLoad:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 setInterstitialReady:0x1];
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: Interstitial ad was loaded. Can present now."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026d51c;

loc_10026d428:
    r25 = [[r19 interstitialDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026d524;

loc_10026d4a4:
    r24 = @selector(objectForKey:);
    r22 = [[r19 interstitialDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyInterstitialDidLoadForDelegate:r21];
    r0 = r21;
    goto loc_10026d520;

loc_10026d520:
    [r0 release];
    goto loc_10026d524;

loc_10026d524:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026d51c:
    r0 = r22;
    goto loc_10026d520;
}

-(void)interstitialAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    [r20 setInterstitialReady:0x0];
    r22 = [[r20 logger] retain];
    r23 = [[r21 description] retain];
    r24 = [[NSString stringWithFormat:@"ISFacebookAdapter: Interstitial failed to load with error: %@"] retain];
    [r22 log:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = [r19 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 length] == 0x0) goto loc_10026d790;

loc_10026d698:
    r26 = [[r20 interstitialDelegateMapHolders] retain];
    r27 = [[r19 placementID] retain];
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r23 release];
    if (r0 == 0x0) goto loc_10026d798;

loc_10026d714:
    r25 = @selector(objectForKey:);
    r23 = [[r20 interstitialDelegateMapHolders] retain];
    r24 = [[r19 placementID] retain];
    r22 = [objc_msgSend(r23, r25) retain];
    [r24 release];
    [r23 release];
    [r20 notifyInterstitialDidLoadFailedWithError:r21 forDelegate:r22];
    r0 = r22;
    goto loc_10026d794;

loc_10026d794:
    [r0 release];
    goto loc_10026d798;

loc_10026d798:
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;

loc_10026d790:
    r0 = r23;
    goto loc_10026d794;
}

-(void)interstitialAdWillLogImpression:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: ad opened."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026d99c;

loc_10026d894:
    r25 = [[r19 interstitialDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026d9a4;

loc_10026d910:
    r24 = @selector(objectForKey:);
    r22 = [[r19 interstitialDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyInterstitialDidOpenForDelegate:r21];
    [r19 notifyInterstitialDidShowForDelegate:r21];
    r0 = r21;
    goto loc_10026d9a0;

loc_10026d9a0:
    [r0 release];
    goto loc_10026d9a4;

loc_10026d9a4:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026d99c:
    r0 = r22;
    goto loc_10026d9a0;
}

-(void)interstitialAdDidClick:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: Interstitial was clicked."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026db88;

loc_10026da94:
    r25 = [[r19 interstitialDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026db90;

loc_10026db10:
    r24 = @selector(objectForKey:);
    r22 = [[r19 interstitialDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyInterstitialDidClickForDelegate:r21];
    r0 = r21;
    goto loc_10026db8c;

loc_10026db8c:
    [r0 release];
    goto loc_10026db90;

loc_10026db90:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026db88:
    r0 = r22;
    goto loc_10026db8c;
}

-(void)interstitialAdDidClose:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:@"ISFacebookAdapter: Interstitial closed."];
    [r0 release];
    r0 = [r20 placementID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] == 0x0) goto loc_10026dd74;

loc_10026dc80:
    r25 = [[r19 interstitialDelegateMapHolders] retain];
    r26 = [[r20 placementID] retain];
    r0 = [r25 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10026dd7c;

loc_10026dcfc:
    r24 = @selector(objectForKey:);
    r22 = [[r19 interstitialDelegateMapHolders] retain];
    r23 = [[r20 placementID] retain];
    r21 = [objc_msgSend(r22, r24) retain];
    [r23 release];
    [r22 release];
    [r19 notifyInterstitialDidCloseForDelegate:r21];
    r0 = r21;
    goto loc_10026dd78;

loc_10026dd78:
    [r0 release];
    goto loc_10026dd7c;

loc_10026dd7c:
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10026dd74:
    r0 = r22;
    goto loc_10026dd78;
}

-(void)loadRewardedVideoAdWithPlacment:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void *)errorForUnsupportedAdapter:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r19 = [[self adapterName] retain];
    r20 = [[NSString stringWithFormat:@"init failed due to unsupported OS version for %@ %@"] retain];
    [r22 release];
    [r19 release];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"Facebook" code:0x65 userInfo:r21] retain];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)errorForAd:(void *)arg2 withCode:(long long)arg3 {
    r23 = [arg2 retain];
    r20 = [[NSMutableDictionary dictionary] retain];
    r22 = [[arg2 name] retain];
    [r20 setObject:r22 forKeyedSubscript:@"ExceptionName"];
    [r22 release];
    r21 = [[arg2 reason] retain];
    [r23 release];
    [r20 setObject:r21 forKeyedSubscript:@"ExceptionReason"];
    [r21 release];
    r19 = [[NSError errorWithDomain:@"Facebook" code:arg3 userInfo:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)interstitialAds {
    r0 = self->_interstitialAds;
    return r0;
}

-(bool)isSupported {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = sub_1009f77b0(0x9, 0x0, 0x0);
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setInterstitialAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialAds, arg2);
    return;
}

-(void)setRewardedVideoAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoAds, arg2);
    return;
}

-(void *)rewardedVideoAds {
    r0 = self->_rewardedVideoAds;
    return r0;
}

-(void *)bannerAds {
    r0 = self->_bannerAds;
    return r0;
}

-(void)setBannerAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerAds, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bannerAds, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoAds, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAds, 0x0);
    return;
}

@end