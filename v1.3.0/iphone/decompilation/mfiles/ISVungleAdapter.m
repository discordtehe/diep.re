@implementation ISVungleAdapter

-(void *)sdkVersion {
    r0 = *0x1011c0ad8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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
    r0 = [[&var_30 super] initAdapter:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_initState = 0x0;
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_programmaticRvPlacements));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementForBidding));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void *)version {
    objc_retainAutorelease(@"4.1.7");
    return @"4.1.7";
}

-(void *)sdkName {
    objc_retainAutorelease(@"VungleSDK");
    return @"VungleSDK";
}

-(void *)systemFrameworks {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_50 count:0x9];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setConsent:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (arg2 != 0x0) {
            r0 = [VungleSDK sharedSDK];
            r0 = [r0 retain];
            r20 = r0;
            [r0 updateConsentStatus:0x1 consentMessageVersion:@""];
    }
    else {
            r0 = [VungleSDK sharedSDK];
            r0 = [r0 retain];
            r20 = r0;
            [r0 updateConsentStatus:0x2 consentMessageVersion:@""];
    }
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void *)getRvBiddingData:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [r20 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"PlacementId"] retain];
    [r0 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 bidTokenForPlacement:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r23 = [[[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain] autorelease];
    }
    else {
            r23 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)loadVideo:(void *)arg2 serverData:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:@"PlacementId"] retain];
    [r0 release];
    [r21 loadRewardedVideoWithPlacment:r23];
    [r23 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)initRvForBidding:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r21 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:@"AppID"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r26 release];
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_10026e99c;

loc_10026e8cc:
    r0 = [r21 settings];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKeyedSubscript:@"PlacementId"];
    r29 = r29;
    r24 = [r0 retain];
    [r27 release];
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_10026ea14;

loc_10026e91c:
    [r19->_rvPlacementToDelegate setObject:r22 forKey:r24];
    [r19->_programmaticRvPlacements addObject:r24];
    [r19 initSDK:r23];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
    r8 = *(r19 + r8);
    if (r8 == 0x3) goto loc_10026ea8c;

loc_10026e980:
    if (r8 == 0x2) {
            [r22 adapterRewardedVideoInitSuccess];
    }
    goto loc_10026eb28;

loc_10026eb28:
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10026ea8c:
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r25 = [[NSError errorWithDomain:@"ISVungleAdapter" code:0x1771 userInfo:r26] retain];
    [r26 release];
    [r22 adapterRewardedVideoInitFailed:r25];
    goto loc_10026eb20;

loc_10026eb20:
    [r25 release];
    goto loc_10026eb28;

loc_10026ea14:
    r0 = [r19 errorForMissingCredentialFieldWithName:@"PlacementId"];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 description] retain];
    [r19 log:@"initRVWithUserId %@"];
    [r26 release];
    [r22 adapterRewardedVideoInitFailed:r25];
    goto loc_10026eb20;

loc_10026e99c:
    r0 = [r19 errorForMissingCredentialFieldWithName:@"AppID"];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 description] retain];
    [r19 log:@"initRVWithUserId %@"];
    [r25 release];
    [r22 adapterRewardedVideoInitFailed:r24];
    goto loc_10026eb28;
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r21 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:@"AppID"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r26 release];
    if (([r19 isConfigValueValid:r2] & 0x1) != 0x0) {
            r0 = [r21 settings];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKeyedSubscript:@"PlacementId"];
            r29 = r29;
            r24 = [r0 retain];
            [r27 release];
            if (([r19 isConfigValueValid:r2] & 0x1) != 0x0) {
                    [r19->_rvPlacementToDelegate setObject:r22 forKey:r24];
                    [r19 initSDK:r23];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
                    r8 = *(r19 + r8);
                    if (r8 != 0x3) {
                            if (r8 == 0x2) {
                                    [r19 loadRewardedVideoWithPlacment:r24];
                            }
                    }
                    else {
                            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
                    }
            }
            else {
                    r0 = [r19 errorForMissingCredentialFieldWithName:@"PlacementId"];
                    r0 = [r0 retain];
                    r26 = [[r0 description] retain];
                    [r19 log:@"initRVWithUserId %@"];
                    [r26 release];
                    [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
                    [r0 release];
            }
    }
    else {
            r0 = [r19 errorForMissingCredentialFieldWithName:@"AppID"];
            r0 = [r0 retain];
            r24 = r0;
            r25 = [[r0 description] retain];
            [r19 log:@"initRVWithUserId %@"];
            [r25 release];
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
    }
    [r24 release];
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 settings];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"PlacementId"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r25 = [r0 isAdCachedForPlacementID:r23];
    [r0 release];
    if ((r25 & 0x1) == 0x0) {
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r24 = [[NSError errorWithDomain:@"ISVungleAdapter" code:0x1770 userInfo:r25] retain];
            [r25 release];
            [r19 notifyRewardedVideoDidFailToShowWithError:r24 forDelegate:r21];
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    var_70 = r22;
    [r22 retain];
    var_68 = r23;
    [r23 retain];
    var_60 = r21;
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_98);
    [var_60 release];
    [var_68 release];
    [var_70 release];
    [r21 release];
    [r23 release];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(bool)hasAvailableAdsForAdapterConfig:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"PlacementId"] retain];
    [r0 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    [r0 isAdCachedForPlacementID:r21];
    [r0 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"PlacementId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r25 = [r0 loadPlacementWithID:r22 error:&var_48];
    r23 = [var_48 retain];
    [r0 release];
    if ((r25 & 0x1) == 0x0) {
            r24 = [[r23 localizedDescription] retain];
            [r20 log:@"Cannot load %@, error=%@"];
            [r24 release];
            [r20 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
    }
    [r23 release];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)getIsBiddingData:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [r20 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"PlacementId"] retain];
    [r0 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 bidTokenForPlacement:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    r8 = @"nil";
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"nil";
            }
            else {
                    r8 = r22;
            }
    }
    [r19 log:@"getIsBiddingData token=%@"];
    if (r22 != 0x0) {
            r23 = [[[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain] autorelease];
    }
    else {
            r23 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)loadInterstitial:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r21 = [arg3 retain];
    [self loadInterstitialWithAdapterConfig:r21 activeDelegate:arg4];
    [r21 release];
    return;
}

-(void)initInterstitialForBidding:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    [r21 log:@"initInterstitialForBidding"];
    if (([r21 initIsInternal:r19 adapterConfig:r20 delegate:r22] & 0x1) != 0x0) {
            r0 = [r20 settings];
            r0 = [r0 retain];
            r25 = [r0 objectForKeyedSubscript:@"PlacementId"];
            r29 = r29;
            r23 = [r25 retain];
            [r0 release];
            objc_storeStrong((int64_t *)&r21->_isPlacementForBidding, r25);
            if (r21->_initState == 0x2) {
                    r0 = [VungleSDK sharedSDK];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 isAdCachedForPlacementID:r23];
                    [r0 release];
                    if ((r26 & 0x1) == 0x0) {
                            r0 = [VungleSDK sharedSDK];
                            r0 = [r0 retain];
                            [r0 loadPlacementWithID:r23 error:&var_58];
                            [r0 release];
                    }
            }
            [r23 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [self retain];
    r22 = r0;
    objc_sync_enter(r0);
    if (([r22 initIsInternal:r19 adapterConfig:r20 delegate:r21] & 0x1) != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
            r8 = *(r22 + r8);
            if (r8 != 0x3) {
                    if (r8 == 0x2) {
                            [r22 notifyInterstitialInitSuccessForDelegate:r21];
                    }
            }
            else {
                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
                    r23 = [[NSError errorWithDomain:@"ISVungleAdapter" code:0x1fc userInfo:r24] retain];
                    [r24 release];
                    [r22 notifyInterstitialInitFailedWithError:r23 forDelegate:r21];
                    [r23 release];
            }
    }
    var_38 = **___stack_chk_guard;
    objc_sync_exit(r22);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(bool)initIsInternal:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r19 settings];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:@"AppID"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    if (([r22 isConfigValueValid:r2] & 0x1) != 0x0) {
            r0 = [r19 settings];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:@"PlacementId"];
            r29 = r29;
            r23 = [r0 retain];
            [r26 release];
            if (([r22 isConfigValueValid:r2] & 0x1) != 0x0) {
                    [r22->_isPlacementToDelegate setObject:r20 forKey:r23];
                    [r22 initSDK:r21];
                    r22 = 0x1;
            }
            else {
                    r0 = [r22 errorForMissingCredentialFieldWithName:@"PlacementId"];
                    r0 = [r0 retain];
                    r25 = [[r0 description] retain];
                    [r22 log:@"initISWithUserId %@"];
                    [r25 release];
                    [r22 notifyInterstitialInitFailedWithError:r0 forDelegate:r20];
                    [r0 release];
                    r22 = 0x0;
            }
            [r23 release];
    }
    else {
            r0 = [r22 errorForMissingCredentialFieldWithName:@"AppID"];
            r0 = [r0 retain];
            r24 = [[r0 description] retain];
            [r22 log:@"initISWithUserId %@"];
            [r24 release];
            [r22 notifyInterstitialInitFailedWithError:r0 forDelegate:r20];
            [r0 release];
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"PlacementId"] retain];
    [r0 release];
    r0 = [VungleSDK sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isAdCachedForPlacementID:r22];
    [r0 release];
    if (r25 != 0x0) {
            [r20 notifyInterstitialDidLoadForDelegate:r21];
    }
    else {
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 loadPlacementWithID:r22 error:&var_48];
            r23 = [var_48 retain];
            [r0 release];
            if ((r25 & 0x1) == 0x0) {
                    r24 = [[r23 localizedDescription] retain];
                    [r20 log:@"loadPlacementWithID %@, error=%@"];
                    [r24 release];
                    [r20 notifyInterstitialDidLoadFailedWithError:r23 forDelegate:r21];
            }
            [r23 release];
    }
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 settings];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"PlacementId"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r25 = [r0 isAdCachedForPlacementID:r23];
    [r0 release];
    if ((r25 & 0x1) == 0x0) {
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r24 = [[NSError errorWithDomain:@"ISVungleAdapter" code:0x1770 userInfo:r25] retain];
            [r25 release];
            [r19 notifyInterstitialDidFailToShowWithError:r24 forDelegate:r21];
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    var_70 = r22;
    [r22 retain];
    var_68 = r23;
    [r23 retain];
    var_60 = r21;
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_98);
    [var_60 release];
    [var_68 release];
    [var_70 release];
    [r21 release];
    [r23 release];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(bool)hasInterstitialWithAdapterConfig:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"PlacementId"] retain];
    [r0 release];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    [r0 isAdCachedForPlacementID:r21];
    [r0 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)vungleWillShowAdForPlacementID:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    [r20 log:@"vungleWillShowAdForPlacementID, placementID: %@"];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
    r0 = *(r20 + r23);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100271080;

loc_100271014:
    r21 = @selector(objectForKey:);
    r22 = [objc_msgSend(*(r20 + r23), r21) retain];
    [r20 notifyRewardedVideoDidOpenForDelegate:r22];
    [r22 release];
    r21 = [objc_msgSend(*(r20 + r23), r21) retain];
    [r20 notifyRewardedVideoDidStartForDelegate:r21];
    goto loc_100271114;

loc_100271114:
    [r21 release];
    goto loc_10027111c;

loc_10027111c:
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;

loc_100271080:
    r21 = @selector(objectForKey:);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToDelegate));
    r0 = *(r20 + r23);
    r0 = objc_msgSend(r0, r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10027111c;

loc_1002710ac:
    r21 = @selector(objectForKey:);
    r22 = [objc_msgSend(*(r20 + r23), r21) retain];
    [r20 notifyInterstitialDidOpenForDelegate:r22];
    [r22 release];
    r21 = [objc_msgSend(*(r20 + r23), r21) retain];
    [r20 notifyInterstitialDidShowForDelegate:r21];
    goto loc_100271114;
}

-(void)vungleAdPlayabilityUpdate:(bool)arg2 placementID:(void *)arg3 error:(void *)arg4 {
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
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r21 localizedDescription];
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r24 = @"false";
            }
            else {
                    r24 = @"true";
            }
    }
    r23 = [r0 retain];
    [r20 log:@"vungleAdPlayabilityUpdate, placementId: %@, isAdPlayable: %@, error=%@ "];
    [r23 release];
    if (r22 != 0x0) {
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isAdCachedForPlacementID:r19];
            [r0 release];
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
    r0 = *(r20 + r25);
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100270e9c;

loc_100270e60:
    r23 = @selector(objectForKey:);
    r23 = [objc_msgSend(*(r20 + r25), r23) retain];
    [r20 notifyRewardedVideoAvialbilty:r22 forDelegate:r23];
    r0 = r23;
    goto loc_100270f34;

loc_100270f34:
    [r0 release];
    goto loc_100270f38;

loc_100270f38:
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;

loc_100270e9c:
    r23 = @selector(objectForKey:);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToDelegate));
    r0 = *(r20 + r25);
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100270f38;

loc_100270ec8:
    r0 = *(r20 + r25);
    if (r22 != 0x0) {
            r22 = [[r0 objectForKey:r2] retain];
            [r20 notifyInterstitialDidLoadForDelegate:r22];
    }
    else {
            r22 = [[r0 objectForKey:r2] retain];
            [r20 notifyInterstitialDidLoadFailedWithError:r21 forDelegate:r22];
    }
    r0 = r22;
    goto loc_100270f34;
}

-(void)vungleSDKDidInitialize {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r19->_initState = 0x2;
    [r19 log:@"ISVungleAdapter:vungleSDKDidInitialize"];
    var_188 = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
    var_1E8 = r8;
    r0 = *(r19 + r8);
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r26 = @selector(countByEnumeratingWithState:objects:count:);
    r22 = objc_msgSend(r0, r26);
    if (r22 != 0x0) {
            r26 = @selector(countByEnumeratingWithState:objects:count:);
            r20 = *var_188;
            var_1F0 = r26;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_188 != r20) {
                                    objc_enumerationMutation(r21);
                            }
                            r23 = @selector(containsObject:);
                            r27 = *(var_190 + r28 * 0x8);
                            if (objc_msgSend(r19->_programmaticRvPlacements, r23) != 0x0) {
                                    r24 = @selector(objectForKey:);
                                    r0 = *(r19 + var_1E8);
                                    r0 = objc_msgSend(r0, r24);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 adapterRewardedVideoInitSuccess];
                                    [r27 release];
                            }
                            else {
                                    [r19 loadRewardedVideoWithPlacment:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r26 = var_1F0;
                    r22 = objc_msgSend(r21, r26);
            } while (r22 != 0x0);
    }
    [r21 release];
    var_1C8 = q0;
    r0 = r19->_isPlacementToDelegate;
    r0 = [r0 allValues];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r22 = objc_msgSend(r0, r26);
    if (r22 != 0x0) {
            r20 = *var_1C8;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_1C8 != r20) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 notifyInterstitialInitSuccessForDelegate:r2];
                            r25 = r25 + 0x1;
                    } while (r25 < r22);
                    r22 = objc_msgSend(r21, r26);
            } while (r22 != 0x0);
    }
    [r21 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementForBidding));
    if (*(r19 + r23) != 0x0) {
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isAdCachedForPlacementID:*(r19 + r23)];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [VungleSDK sharedSDK];
                    r0 = [r0 retain];
                    [r0 loadPlacementWithID:*(r19 + r23) error:&var_1E0];
                    [r0 release];
            }
    }
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)vungleSDKFailedToInitializeWithError:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r26 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r19->_initState = 0x3;
    r21 = [[r26 localizedDescription] retain];
    [r19 log:@"vungleSDKFailedToInitializeWithError %@"];
    [r21 release];
    var_188 = q0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
    r0 = *(r19 + r21);
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r27 = @selector(countByEnumeratingWithState:objects:count:);
    r23 = objc_msgSend(r0, r27);
    if (r23 != 0x0) {
            r27 = @selector(countByEnumeratingWithState:objects:count:);
            r20 = *var_188;
            var_1E0 = r26;
            var_1F0 = r27;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_188 != r20) {
                                    objc_enumerationMutation(r22);
                            }
                            r24 = @selector(containsObject:);
                            r28 = *(var_190 + r26 * 0x8);
                            r8 = objc_msgSend(r19->_programmaticRvPlacements, r24);
                            r0 = *(r19 + r21);
                            if (r8 != 0x0) {
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    [r0 adapterRewardedVideoInitFailed:r2];
                            }
                            else {
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    [r0 adapterRewardedVideoHasChangedAvailability:r2];
                            }
                            [r28 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    r27 = var_1F0;
                    r23 = objc_msgSend(r22, r27);
                    r26 = var_1E0;
            } while (r23 != 0x0);
    }
    [r22 release];
    var_1C8 = q0;
    r0 = r19->_isPlacementToDelegate;
    r0 = [r0 allValues];
    r0 = [r0 retain];
    r22 = r0;
    r23 = objc_msgSend(r0, r27);
    if (r23 != 0x0) {
            r20 = *var_1C8;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_1C8 != r20) {
                                    objc_enumerationMutation(r22);
                            }
                            [r19 notifyInterstitialInitFailedWithError:r2 forDelegate:r3];
                            r25 = r25 + 0x1;
                    } while (r25 < r23);
                    r23 = objc_msgSend(r22, r27);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r26 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)placementWillBeginCaching:(void *)arg2 withBidToken:(void *)arg3 {
    r21 = [arg2 retain];
    [self log:@"placementWillBeginCaching placement:%@, bidToken:%@"];
    [r21 release];
    return;
}

-(void)vungleWillCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
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
    r21 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"vungleWillCloseAdWithViewInfo, placementId: %@"];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
    r0 = *(r19 + r24);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100271334;

loc_100271200:
    r22 = @selector(objectForKey:);
    r22 = [objc_msgSend(*(r19 + r24), r22) retain];
    [r19 notifyRewardedVideoDidEndForDelegate:r22];
    r0 = [r20 didDownload];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 boolValue];
    [r0 release];
    if (r25 != 0x0) {
            [r19 notifyRewardedVideoDidClickForDelegate:r22];
    }
    r0 = [r20 completedView];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 boolValue];
    [r0 release];
    if (r23 != 0x0) {
            [r19 notifyRewardedVideoReceiveRewardForDelegate:r22];
    }
    [r19 notifyRewardedVideoDidCloseForDelegate:r22];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r24 = [r0 isAdCachedForPlacementID:r21];
    [r0 release];
    if ((r24 & 0x1) == 0x0) {
            [r19 loadRewardedVideoWithPlacment:r21];
    }
    goto loc_100271478;

loc_100271478:
    [r22 release];
    goto loc_100271480;

loc_100271480:
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    return;

loc_100271334:
    r22 = @selector(objectForKey:);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToDelegate));
    r0 = *(r19 + r24);
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100271480;

loc_100271360:
    r22 = @selector(objectForKey:);
    r22 = [objc_msgSend(*(r19 + r24), r22) retain];
    r0 = [r20 didDownload];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if (r24 != 0x0) {
            [r19 notifyInterstitialDidClickForDelegate:r22];
    }
    [r19 notifyInterstitialDidCloseForDelegate:r22];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementForBidding));
    if ([r21 isEqualToString:r2] != 0x0) {
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 isAdCachedForPlacementID:*(r19 + r26)];
            [r0 release];
            if ((r25 & 0x1) == 0x0) {
                    r0 = [VungleSDK sharedSDK];
                    r0 = [r0 retain];
                    [r0 loadPlacementWithID:*(r19 + r26) error:&var_58];
                    [r0 release];
            }
    }
    goto loc_100271478;
}

-(void)placementPrepared:(void *)arg2 withBidToken:(void *)arg3 {
    r21 = [arg2 retain];
    [self log:@"placementPrepared placement:%@, bidToken:%@"];
    [r21 release];
    return;
}

-(void)initSDK:(void *)arg2 {
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
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
    if (*(r19 + r25) == 0x0) {
            *(r19 + r25) = 0x1;
            [r19 log:@"initSDK appId:%@"];
            r0 = @class(VungleSDK);
            r0 = [r0 sharedSDK];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            r0 = @class(VungleSDK);
            r0 = [r0 sharedSDK];
            r0 = [r0 retain];
            [r0 setHeaderBiddingDelegate:r19];
            [r0 release];
            r23 = [[VungleSDK sharedSDK] retain];
            [r23 setLoggingEnabled:[r19 adaptersDebug]];
            [r23 release];
            r0 = @class(VungleSDK);
            r0 = [r0 sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 startWithAppId:r20 error:&var_48];
            r22 = [var_48 retain];
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    *(r19 + r25) = 0x3;
                    r23 = [[r22 localizedDescription] retain];
                    [r19 log:@"startWithAppId error=%@"];
                    [r23 release];
            }
            [r22 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)log:(void *)arg2 {
    r20 = @class(NSString);
    r22 = [arg2 retain];
    r20 = [[r20 alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    r19 = [[self logger] retain];
    r21 = [[NSString stringWithFormat:@"ISVungleAdapter %@"] retain];
    [r19 log:r21];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)loadRewardedVideoWithPlacment:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToDelegate));
    r0 = *(r20 + r23);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = @selector(objectForKey:);
            r21 = [objc_msgSend(*(r20 + r23), r21) retain];
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 loadPlacementWithID:r19 error:&var_38];
            r22 = [var_38 retain];
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    r23 = [[r22 localizedDescription] retain];
                    [r20 log:@"loadPlacementWithID :%@, Error %@"];
                    [r23 release];
                    [r20 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
            }
            [r22 release];
            [r21 release];
    }
    else {
            [r20 log:@"loadRewardedVideoWithPlacment :%@, cannot find placement"];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_programmaticRvPlacements, 0x0);
    objc_storeStrong((int64_t *)&self->_isPlacementForBidding, 0x0);
    objc_storeStrong((int64_t *)&self->_isPlacementToDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_rvPlacementToDelegate, 0x0);
    return;
}

@end