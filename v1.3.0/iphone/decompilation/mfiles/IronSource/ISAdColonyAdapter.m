@implementation ISAdColonyAdapter

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
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onBecameActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_zonesToInterstitialAdsMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_zonesToRewardedAdsMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_pendingRVZones));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [AdColonyAppOptions new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adColonyOptions));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_didSDKFinishInitiating = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)version {
    objc_retainAutorelease(@"4.1.4");
    return @"4.1.4";
}

-(void *)sdkVersion {
    r0 = [AdColony getSDKVersion];
    return r0;
}

-(void *)sdkName {
    objc_retainAutorelease(@"AdColony");
    return @"AdColony";
}

-(void *)systemFrameworks {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_70 count:0xd];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setConsent:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adColonyOptions));
    r0 = *(r20 + r22);
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    [*(r20 + r22) setGdprRequired:0x1];
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [*(r20 + r22) setGdprConsentString:r2];
    if (*(int8_t *)(int64_t *)&r20->_didSDKFinishInitiating != 0x0) {
            [AdColony setAppOptions:*(r20 + r22)];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
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
    r21 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r21 isConfigValueValid:r22] & 0x1) != 0x0) {
            [r21 showRVAdWithViewController:r19 zone:r22];
    }
    else {
            r23 = [[r21 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
            r24 = [[r21 logger] retain];
            r26 = [[r23 description] retain];
            r25 = [[NSString stringWithFormat:@"%@"] retain];
            [r24 log:r25];
            [r25 release];
            [r26 release];
            [r24 release];
            [r21 notifyRewardedVideoDidFailToShowWithError:r23 forDelegate:r20];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasAvailableAdsForAdapterConfig:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 settings];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:@"zoneId"] retain];
    [r0 release];
    r20 = [[self->_zonesToRewardedAdsMap objectForKey:r2] retain];
    if (r20 != 0x0 && [r20 expired] == 0x0) {
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)initRVWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r25 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [arg3 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"appID"] retain];
    [r0 release];
    r0 = [arg3 settings];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:@"zoneId"] retain];
    [r0 release];
    r27 = [[arg3 settings] retain];
    [r25 release];
    r0 = [r27 objectForKeyedSubscript:@"zoneIds"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r27 release];
    if (([r22 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1000b4744;

loc_1000b466c:
    if (([r22 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1000b47cc;

loc_1000b4680:
    if (([r22 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1000b4854;

loc_1000b4694:
    [r22 addRewardedVideoDelegate:r20 forPlacement:r23];
    r25 = [[r22 logger] retain];
    r0 = [NSString stringWithFormat:@"ISAdColonyAdapter:appId:%@ userId:%@ zoneId:%@"];
    r29 = r29;
    r26 = [r0 retain];
    [r25 log:r26];
    [r26 release];
    [r25 release];
    if (*(int8_t *)(int64_t *)&r22->_didSDKFinishInitiating == 0x0) goto loc_1000b4970;

loc_1000b472c:
    [r22 setRewardAndLoadRVZone:r23];
    goto loc_1000b492c;

loc_1000b492c:
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000b4970:
    [r22->_pendingRVZones addObject:r23];
    if (*(int8_t *)(int64_t *)&r22->_didSDKStartInitiate != 0x0) goto loc_1000b492c;

loc_1000b499c:
    r25 = [[r24 componentsSeparatedByString:@","] retain];
    [r22 initWithAppId:r21 userId:r19 allZoneIds:r25];
    goto loc_1000b4924;

loc_1000b4924:
    [r25 release];
    goto loc_1000b492c;

loc_1000b4854:
    r25 = [[r22 errorForMissingCredentialFieldWithName:@"zoneIds"] retain];
    r26 = [[r22 logger] retain];
    r28 = [[r25 description] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_1000b48d8;

loc_1000b48d8:
    r27 = [r0 retain];
    [r26 log:r27];
    [r27 release];
    [r28 release];
    [r26 release];
    [r22 notifyRewardedVideoAvialbilty:0x0 forDelegate:r20];
    goto loc_1000b4924;

loc_1000b47cc:
    r25 = [[r22 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
    r26 = [[r22 logger] retain];
    r28 = [[r25 description] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_1000b48d8;

loc_1000b4744:
    r25 = [[r22 errorForMissingCredentialFieldWithName:@"appID"] retain];
    r26 = [[r22 logger] retain];
    r28 = [[r25 description] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_1000b48d8;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[arg2 settings] retain];
    [r22 release];
    r0 = [r23 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (([r21 isConfigValueValid:r20] & 0x1) != 0x0) {
            r0 = r21->_zonesToInterstitialAdsMap;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0 && ([r22 expired] & 0x1) == 0x0) {
                    [r21 notifyInterstitialDidLoadForDelegate:r19];
            }
            else {
                    r23 = [[r21 dispatcher] retain];
                    var_38 = [r20 retain];
                    [r23 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_60];
                    [r23 release];
                    [var_38 release];
            }
    }
    else {
            r22 = [[r21 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
            [r21 notifyInterstitialDidLoadFailedWithError:r22 forDelegate:r19];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r25 = [arg3 retain];
    r20 = [arg4 retain];
    [r22 addInterstititalDelegate:r20];
    r0 = [arg3 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"appID"] retain];
    [r0 release];
    r0 = [arg3 settings];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:@"zoneId"] retain];
    [r0 release];
    r27 = [[arg3 settings] retain];
    [r25 release];
    r0 = [r27 objectForKeyedSubscript:@"zoneIds"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r27 release];
    if (([r22 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1000b4ea4;

loc_1000b4dd4:
    if (([r22 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1000b4ec4;

loc_1000b4de8:
    if (([r22 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1000b4ee4;

loc_1000b4dfc:
    [r22 addInterstititalDelegate:r20 forPlacement:r23];
    r25 = [[r22 logger] retain];
    r0 = [NSString stringWithFormat:@"ISAdColonyAdapter:appId:%@ userId:%@"];
    r29 = r29;
    r26 = [r0 retain];
    [r25 log:r26];
    [r26 release];
    [r25 release];
    if (*(int8_t *)(int64_t *)&r22->_didSDKFinishInitiating == 0x0) goto loc_1000b4f6c;

loc_1000b4e90:
    [r22 notifyInterstitialInitSuccess];
    goto loc_1000b4f28;

loc_1000b4f28:
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000b4f6c:
    *(int8_t *)(int64_t *)&r22->_interstitialInitPending = 0x1;
    if (*(int8_t *)(int64_t *)&r22->_didSDKStartInitiate != 0x0) goto loc_1000b4f28;

loc_1000b4f8c:
    r25 = [[r24 componentsSeparatedByString:@","] retain];
    [r22 initWithAppId:r21 userId:r19 allZoneIds:r25];
    goto loc_1000b4f20;

loc_1000b4f20:
    [r25 release];
    goto loc_1000b4f28;

loc_1000b4ee4:
    r0 = [r22 errorForMissingCredentialFieldWithName:@"zoneIds"];
    goto loc_1000b4f00;

loc_1000b4f00:
    r25 = [r0 retain];
    [r22 notifyInterstitialInitFailedWithError:r25 forDelegate:r20];
    goto loc_1000b4f20;

loc_1000b4ec4:
    r0 = [r22 errorForMissingCredentialFieldWithName:@"zoneId"];
    goto loc_1000b4f00;

loc_1000b4ea4:
    r0 = [r22 errorForMissingCredentialFieldWithName:@"appID"];
    goto loc_1000b4f00;
}

-(bool)hasInterstitialWithAdapterConfig:(void *)arg2 {
    r0 = [self interstitialReady];
    return r0;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r21 isConfigValueValid:r22] & 0x1) != 0x0) {
            [r21 showISAdWithViewController:r19 zone:r22];
            [r21 setInterstitialReady:0x0];
    }
    else {
            r23 = [[r21 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
            [r21 notifyInterstitialDidFailToShowWithError:r23 forDelegate:r20];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)initWithAppId:(void *)arg2 userId:(void *)arg3 allZoneIds:(void *)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_didSDKStartInitiate));
    if (*(int8_t *)(r22 + r8) == 0x0) {
            *(int8_t *)(r22 + r8) = 0x1;
            r22 = [r20 retain];
            var_48 = r22;
            r23 = [r19 retain];
            var_40 = r23;
            r0 = [r21 retain];
            var_38 = r0;
            if (*qword_1011d1a20 != -0x1) {
                    dispatch_once(0x1011d1a20, &var_70);
                    r23 = var_40;
                    r0 = var_38;
                    r22 = var_48;
            }
            [r0 release];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setRewardAndLoadRVZone:(void *)arg2 {
    r31 = r31 - 0x170;
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
    var_150 = self;
    r0 = self->_initedZones;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_1000b5d2c;

loc_1000b5c98:
    r22 = 0x0;
    goto loc_1000b5ca4;

loc_1000b5ca4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r25 = @selector(isEqualToString:);
    r26 = *(0x0 + r22 * 0x8);
    r0 = [r26 identifier];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r25);
    [r0 release];
    if (r28 != 0x0) goto loc_1000b5d3c;

loc_1000b5cf8:
    r22 = r22 + 0x1;
    if (r22 < r23) goto loc_1000b5ca4;

loc_1000b5d04:
    r23 = objc_msgSend(r21, var_158);
    if (r23 != 0x0) goto loc_1000b5c98;

loc_1000b5d2c:
    [r21 release];
    r19 = var_150;
    goto loc_1000b5da0;

loc_1000b5da0:
    var_58 = **___stack_chk_guard;
    [r19 requestRVWithZoneId:r20];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1000b5d3c:
    r19 = var_150;
    var_120 = [r20 retain];
    [r26 setReward:&var_148];
    [var_120 release];
    [r21 release];
    goto loc_1000b5da0;
}

-(void)requestISWithZoneId:(void *)arg2 {
    r0 = [arg2 retain];
    r0 = [r0 retain];
    r21 = [r0 retain];
    [AdColony requestInterstitialInZone:r21 options:0x0 success:&var_60 failure:&var_90];
    [r0 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)requestRVWithZoneId:(void *)arg2 {
    r0 = [arg2 retain];
    r0 = [r0 retain];
    r21 = [r0 retain];
    [AdColony requestInterstitialInZone:r21 options:0x0 success:&var_60 failure:&var_90];
    [r0 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)showISAdWithViewController:(void *)arg2 zone:(void *)arg3 {
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
    r21 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    if (r20 == 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 keyWindow];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 rootViewController];
            r29 = r29;
            r24 = [r0 retain];
            [r20 release];
            [r23 release];
            [r22 release];
            r20 = r24;
    }
    r0 = r21->_zonesToInterstitialAdsMap;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0 && ([r22 expired] & 0x1) == 0x0) {
            [r22 showWithPresentingViewController:r20];
    }
    else {
            r23 = @selector(objectForKey:);
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r24 = [[NSError errorWithDomain:@"ISAdColonyAdapter" code:0x1fd userInfo:r25] retain];
            [r25 release];
            r0 = [r21 interstitialDelegateMapHolders];
            r0 = [r0 retain];
            r25 = r0;
            r0 = objc_msgSend(r0, r23);
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
            [r21 notifyInterstitialDidFailToShowWithError:r24 forDelegate:r23];
            [r23 release];
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    r21 = [[r21 logger] retain];
    r23 = [[NSString stringWithFormat:@"ISAdColonyAdapter:playVideoAdForZone:%@"] retain];
    [r21 log:r23];
    [r23 release];
    [r21 release];
    [r22 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(bool)didSDKStartInitiate {
    r0 = *(int8_t *)(int64_t *)&self->_didSDKStartInitiate;
    return r0;
}

-(void)showRVAdWithViewController:(void *)arg2 zone:(void *)arg3 {
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
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    if (r20 == 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 keyWindow];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 rootViewController];
            r29 = r29;
            r24 = [r0 retain];
            [r20 release];
            [r23 release];
            [r22 release];
            r20 = r24;
    }
    r0 = r21->_zonesToRewardedAdsMap;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0 && ([r22 expired] & 0x1) == 0x0) {
            [r22 showWithPresentingViewController:r20];
    }
    r21 = [[r21 logger] retain];
    r23 = [[NSString stringWithFormat:@"ISAdColonyAdapter:playVideoAdForZone:%@"] retain];
    [r21 log:r23];
    [r23 release];
    [r21 release];
    [r22 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)setDidSDKStartInitiate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSDKStartInitiate = arg2;
    return;
}

-(void)onBecameActive {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_zonesToInterstitialAdsMap));
    var_1E0 = r8;
    r0 = *(r19 + r8);
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r0;
    var_208 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1E8);
                            }
                            r2 = *(0x0 + r28 * 0x8);
                            r0 = *(r19 + var_1E0);
                            r0 = [r0 objectForKey:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    if ([r26 expired] != 0x0) {
                                            r0 = [r26 zoneID];
                                            r29 = r29;
                                            [r0 retain];
                                            [r19 requestISWithZoneId:r2];
                                            [r27 release];
                                    }
                            }
                            else {
                                    r0 = [r26 zoneID];
                                    r29 = r29;
                                    [r0 retain];
                                    [r19 requestISWithZoneId:r2];
                                    [r27 release];
                            }
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r22 = objc_msgSend(var_1E8, var_208);
            } while (r22 != 0x0);
    }
    [var_1E8 release];
    var_1C8 = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_zonesToRewardedAdsMap));
    var_1E0 = r8;
    r0 = *(r19 + r8);
    r0 = [r0 retain];
    var_200 = r0;
    r22 = objc_msgSend(r0, var_208);
    if (r22 != 0x0) {
            r24 = *var_1C8;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_1C8 != r24) {
                                    objc_enumerationMutation(var_200);
                            }
                            r21 = *(var_1D0 + r25 * 0x8);
                            r0 = *(r19 + var_1E0);
                            r0 = [r0 objectForKey:r21];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r20 == 0x0 || [r20 expired] != 0x0) {
                                    r0 = [r19 rewardedVideoDelegateMapHolders];
                                    r0 = [r0 retain];
                                    r21 = [[r0 objectForKey:r21] retain];
                                    [r0 release];
                                    [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
                                    r0 = [r20 zoneID];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r19 requestRVWithZoneId:r28];
                                    [r28 release];
                                    [r21 release];
                            }
                            [r20 release];
                            r25 = r25 + 0x1;
                    } while (r25 < r22);
                    r22 = objc_msgSend(var_200, var_208);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_200 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDidSDKFinishInitiating:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSDKFinishInitiating = arg2;
    return;
}

-(bool)didSDKFinishInitiating {
    r0 = *(int8_t *)(int64_t *)&self->_didSDKFinishInitiating;
    return r0;
}

-(bool)interstitialInitPending {
    r0 = *(int8_t *)(int64_t *)&self->_interstitialInitPending;
    return r0;
}

-(void)setInterstitialInitPending:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_interstitialInitPending = arg2;
    return;
}

-(void *)adColonyOptions {
    r0 = self->_adColonyOptions;
    return r0;
}

-(void)setAdColonyOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adColonyOptions, arg2);
    return;
}

-(void *)pendingRVZones {
    r0 = self->_pendingRVZones;
    return r0;
}

-(void)setInitedZones:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_initedZones, arg2);
    return;
}

-(void)setPendingRVZones:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pendingRVZones, arg2);
    return;
}

-(void *)initedZones {
    r0 = self->_initedZones;
    return r0;
}

-(void *)zonesToInterstitialAdsMap {
    r0 = self->_zonesToInterstitialAdsMap;
    return r0;
}

-(void *)zonesToRewardedAdsMap {
    r0 = self->_zonesToRewardedAdsMap;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_zonesToRewardedAdsMap, 0x0);
    objc_storeStrong((int64_t *)&self->_zonesToInterstitialAdsMap, 0x0);
    objc_storeStrong((int64_t *)&self->_initedZones, 0x0);
    objc_storeStrong((int64_t *)&self->_pendingRVZones, 0x0);
    objc_storeStrong((int64_t *)&self->_adColonyOptions, 0x0);
    return;
}

@end