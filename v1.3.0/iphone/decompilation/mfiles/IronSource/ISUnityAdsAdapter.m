@implementation ISUnityAdsAdapter

-(void *)initAdapter:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] initAdapter:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_firstAvailabilitySemaphore));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r0 = [NSMutableSet set];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mZoneReceivedFirstStatus));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)sdkVersion {
    r0 = [UnityAds getVersion];
    return r0;
}

-(void *)version {
    objc_retainAutorelease(@"4.1.3");
    return @"4.1.3";
}

-(void *)sdkName {
    objc_retainAutorelease(@"UnityAds");
    return @"UnityAds";
}

-(void *)systemFrameworks {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_20 count:0x3];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)initRVWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r23 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [arg3 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"sourceId"] retain];
    [r0 release];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r20 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_10028a2bc;

loc_10028a220:
    if (([r20 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_10028a344;

loc_10028a234:
    [r20 addRewardedVideoDelegate:r19 forPlacement:r22];
    if ([r20->_mZoneReceivedFirstStatus containsObject:r2] != 0x0) {
            [r20 notifyRewardedVideoAvialbilty:[UnityAds isReady:r22] forDelegate:r19];
    }
    [r20 initWithSourceId:r21 block:0x100e77c68];
    goto loc_10028a41c;

loc_10028a41c:
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_10028a344:
    r23 = [[r20 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
    r24 = [[r20 logger] retain];
    r26 = [[r23 description] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_10028a3c8;

loc_10028a3c8:
    r25 = [r0 retain];
    [r24 log:r25];
    [r25 release];
    [r26 release];
    [r24 release];
    [r20 notifyRewardedVideoAvialbilty:0x0 forDelegate:r19];
    [r23 release];
    goto loc_10028a41c;

loc_10028a2bc:
    r23 = [[r20 errorForMissingCredentialFieldWithName:@"sourceId"] retain];
    r24 = [[r20 logger] retain];
    r26 = [[r23 description] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_10028a3c8;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
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
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    [r21 setRewardedVideoActiveDelegate:r20];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r21 isConfigValueValid:r22] & 0x1) != 0x0) {
            var_38 = [r20 retain];
            [r21 showAdWithZoneId:r22 viewController:r19 block:&var_60];
            r0 = var_38;
    }
    else {
            r23 = [[r21 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
            [r21 notifyRewardedVideoDidFailToShowWithError:r23 forDelegate:r20];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r22 = [[arg2 settings] retain];
    [r21 release];
    r19 = [[r22 objectForKeyedSubscript:@"zoneId"] retain];
    [r22 release];
    r21 = [[self logger] retain];
    r22 = [[NSString stringWithFormat:@"fetchRewardedVideoWithAdapterConfig: placement <%@>"] retain];
    [r21 log:r22];
    [r22 release];
    [r21 release];
    r0 = [self rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    if (r20 != 0x0) {
            if ([UnityAds isReady:r19] != 0x0) {
                    [r20 adapterRewardedVideoHasChangedAvailability:r2];
            }
            else {
                    if ([UnityAds getPlacementState:r2] == 0x4 || [UnityAds getPlacementState:r2] == 0x2) {
                            [r20 adapterRewardedVideoHasChangedAvailability:r2];
                    }
            }
    }
    [r20 release];
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 settings];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
    }
    else {
            r22 = @"";
            [r22 retain];
    }
    [r21 release];
    [r20 release];
    r20 = [UnityAds isReady:r22];
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r23 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [arg3 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"sourceId"] retain];
    [r0 release];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r20 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_10028aa9c;

loc_10028aa14:
    if (([r20 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_10028aabc;

loc_10028aa28:
    [r20 addInterstititalDelegate:r19 forPlacement:r22];
    var_48 = [r19 retain];
    [r20 initWithSourceId:r21 block:&var_70];
    r0 = var_48;
    goto loc_10028aafc;

loc_10028aafc:
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_10028aabc:
    r0 = [r20 errorForMissingCredentialFieldWithName:@"zoneId"];
    goto loc_10028aad8;

loc_10028aad8:
    r23 = [r0 retain];
    [r20 notifyInterstitialInitFailedWithError:r23 forDelegate:r19];
    r0 = r23;
    goto loc_10028aafc;

loc_10028aa9c:
    r0 = [r20 errorForMissingCredentialFieldWithName:@"sourceId"];
    goto loc_10028aad8;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
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
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    [r21 setInterstititalActiveDelegate:r20];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"zoneId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r21 isConfigValueValid:r22] & 0x1) != 0x0) {
            var_38 = [r20 retain];
            [r21 showAdWithZoneId:r22 viewController:r19 block:&var_60];
            r0 = var_38;
    }
    else {
            r23 = [[r21 errorForMissingCredentialFieldWithName:@"zoneId"] retain];
            [r21 notifyInterstitialDidLoadFailedWithError:r23 forDelegate:r20];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
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
    r21 = [arg2 retain];
    r22 = [[arg2 settings] retain];
    [r21 release];
    r19 = [[r22 objectForKeyedSubscript:@"zoneId"] retain];
    [r22 release];
    r21 = [[r20 logger] retain];
    r25 = [[NSString stringWithFormat:@"loadInterstitialWithAdapterConfig: placement <%@>"] retain];
    [r21 log:r25];
    [r25 release];
    [r21 release];
    r0 = [r20 interstitialDelegateMapHolders];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    if (r21 == 0x0) goto loc_10028ad08;

loc_10028acd4:
    if ([UnityAds isReady:r19] == 0x0) goto loc_10028ad60;

loc_10028acf0:
    [r20 notifyInterstitialDidLoadForDelegate:r21];
    goto loc_10028ae80;

loc_10028ae80:
    [r21 release];
    [r19 release];
    return;

loc_10028ad60:
    if ([UnityAds getPlacementState:r2] == 0x4) {
            r24 = [[r20 placementStateToString:0x4] retain];
            r0 = [ISError createError:0x1fd withMessage:r24];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            [r20 notifyInterstitialDidLoadFailedWithError:r23 forDelegate:r21];
            [r23 release];
    }
    if ([UnityAds getPlacementState:r2] != 0x2) goto loc_10028ae80;

loc_10028ae0c:
    r23 = [[r20 placementStateToString:0x2] retain];
    r22 = [[ISError createError:0x1fd withMessage:r23] retain];
    [r23 release];
    [r20 notifyInterstitialDidLoadFailedWithError:r22 forDelegate:r21];
    r0 = r22;
    goto loc_10028ae7c;

loc_10028ae7c:
    [r0 release];
    goto loc_10028ae80;

loc_10028ad08:
    r20 = [[r20 logger] retain];
    r22 = [[NSString stringWithFormat:@"loadInterstitialWithAdapterConfig error: null listener"] retain];
    [r20 log:r22];
    [r22 release];
    r0 = r20;
    goto loc_10028ae7c;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 settings];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
    }
    else {
            r22 = @"";
            [r22 retain];
    }
    [r21 release];
    [r20 release];
    r20 = [UnityAds isReady:r22];
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)initWithSourceId:(void *)arg2 block:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    var_28 = r19;
    r0 = r19;
    if (*qword_1011d2428 == -0x1) {
            r22 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011d2428, &var_50);
            r22 = var_28;
    }
    (*(r21 + 0x10))(r20);
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)showAdWithZoneId:(void *)arg2 viewController:(void *)arg3 block:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (([UnityAds isReady:r19] & 0x1) != 0x0) {
            r0 = [r22 logger];
            r0 = [r0 retain];
            [r0 log:@"ISUnityAdsAdapter: show ad"];
            [r0 release];
            r23 = [[r22 dispatcher] retain];
            var_50 = [r20 retain];
            var_40 = [r19 retain];
            r22 = [r21 retain];
            [r23 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_70];
            [r23 release];
            (*(r22 + 0x10))(r22, 0x0);
            [r22 release];
            [var_40 release];
            r0 = var_50;
    }
    else {
            (*(r21 + 0x10))(r21, [[ISError createError:0x1fd withMessage:[[NSString stringWithFormat:@"ISUnityAdsAdapters: no ad available for zoneId %@"] retain]] retain]);
            [r23 release];
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsReady:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self logger] retain];
    r20 = [[NSString stringWithFormat:@"unityAdsReady: placement <%@>"] retain];
    [r21 release];
    [r19 log:r20];
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
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
    r24 = [arg3 retain];
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"ISUnityAdsAdapter" code:arg2 userInfo:r22] retain];
    [r22 release];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 logFromError:r19];
    [r24 release];
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 logger] retain];
    r25 = [[NSString stringWithFormat:@"unityAdsDidStart: placement <%@>"] retain];
    [r21 log:r25];
    [r25 release];
    [r21 release];
    r0 = [r20 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r26 release];
    if (r21 != 0x0) {
            [r20 notifyRewardedVideoDidOpenForDelegate:r21];
            [r20 notifyRewardedVideoDidStartForDelegate:r21];
    }
    else {
            r25 = @selector(objectForKey:);
            r0 = [r20 interstitialDelegateMapHolders];
            r0 = [r0 retain];
            r26 = r0;
            r0 = objc_msgSend(r0, r25);
            r29 = r29;
            r25 = [r0 retain];
            [r26 release];
            if (r25 != 0x0) {
                    [r20 notifyInterstitialDidOpenForDelegate:r25];
                    [r20 notifyInterstitialDidShowForDelegate:r25];
            }
            else {
                    r20 = [[r20 logger] retain];
                    r22 = [[NSString stringWithFormat:@"unityAdsDidStart: unknown placement %@"] retain];
                    [r20 log:r22];
                    [r22 release];
                    [r20 release];
            }
            [r25 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setConsent:(bool)arg2 {
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
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r20 = [[UADSMetaData alloc] init];
    if (arg2 != 0x0) {
            r21 = [[NSNumber numberWithBool:r2] retain];
            r23 = 0x0;
            r22 = 0x1;
    }
    else {
            r21 = [[NSNumber numberWithBool:r2] retain];
            r22 = 0x0;
            r23 = 0x1;
    }
    [r20 set:@"gdpr.consent" value:r21];
    if (r23 != 0x0) {
            [r21 release];
    }
    if (r22 != 0x0) {
            [r21 release];
    }
    [r20 commit];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
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
    r26 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [[r21 logger] retain];
    r22 = [[NSString stringWithFormat:@"unityAdsDidFinish: placement <%@>"] retain];
    [r20 log:r22];
    [r22 release];
    [r20 release];
    r0 = [r21 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r19] retain];
    [r0 release];
    r0 = [r21 interstitialDelegateMapHolders];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectForKey:r19];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r28 release];
    if (r26 == 0x2) goto loc_10028c088;

loc_10028bfe4:
    if (r26 == 0x1) goto loc_10028c0b8;

loc_10028bfec:
    if (r26 != 0x0) goto loc_10028c178;

loc_10028bff0:
    r27 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"ISUnityAdsAdapter" code:0x0 userInfo:r27];
    r29 = r29;
    r26 = [r0 retain];
    [r27 release];
    if (r20 == 0x0) goto loc_10028c0ec;

loc_10028c070:
    r1 = @selector(notifyRewardedVideoDidFailToShowWithError:forDelegate:);
    r0 = r21;
    goto loc_10028c104;

loc_10028c104:
    objc_msgSend(r0, r1);
    r0 = r26;
    goto loc_10028c174;

loc_10028c174:
    [r0 release];
    goto loc_10028c178;

loc_10028c178:
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10028c0ec:
    if (r22 == 0x0) goto loc_10028c110;

loc_10028c0f0:
    r1 = @selector(notifyInterstitialDidFailToShowWithError:forDelegate:);
    r0 = r21;
    goto loc_10028c104;

loc_10028c110:
    [r26 release];
    goto loc_10028c118;

loc_10028c118:
    r21 = [[r21 logger] retain];
    r23 = [[NSString stringWithFormat:@"unityAdsDidFinish: unknown placement %@"] retain];
    [r21 log:r23];
    [r23 release];
    r0 = r21;
    goto loc_10028c174;

loc_10028c0b8:
    if (r20 == 0x0) goto loc_10028c0d0;

loc_10028c0bc:
    r1 = @selector(notifyRewardedVideoDidCloseForDelegate:);
    r0 = r21;
    goto loc_10028c0e4;

loc_10028c0e4:
    objc_msgSend(r0, r1);
    goto loc_10028c178;

loc_10028c0d0:
    if (r22 == 0x0) goto loc_10028c118;

loc_10028c0d4:
    r1 = @selector(notifyInterstitialDidCloseForDelegate:);
    r0 = r21;
    goto loc_10028c0e4;

loc_10028c088:
    if (r20 == 0x0) goto loc_10028c0d0;

loc_10028c08c:
    [r21 notifyRewardedVideoDidEndForDelegate:r20];
    [r21 notifyRewardedVideoReceiveRewardForDelegate:r20];
    goto loc_10028c0bc;
}

-(void)unityAdsDidClick:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r24 = [[r20 logger] retain];
    r25 = [[NSString stringWithFormat:@"unityAdsDidClick: placement <%@>"] retain];
    [r24 log:r25];
    [r25 release];
    [r24 release];
    r0 = [r20 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    if (r24 != 0x0) {
            [r20 notifyRewardedVideoDidClickForDelegate:r24];
    }
    else {
            r25 = @selector(objectForKey:);
            r0 = [r20 interstitialDelegateMapHolders];
            r0 = [r0 retain];
            r26 = r0;
            r0 = objc_msgSend(r0, r25);
            r29 = r29;
            r25 = [r0 retain];
            [r26 release];
            if (r25 != 0x0) {
                    [r20 notifyInterstitialDidClickForDelegate:r25];
            }
            else {
                    r20 = [[r20 logger] retain];
                    r21 = [[NSString stringWithFormat:@"unityAdsDidClick: unknown placement %@"] retain];
                    [r20 log:r21];
                    [r21 release];
                    [r20 release];
            }
            [r25 release];
    }
    [r24 release];
    [r19 release];
    return;
}

-(void *)placementStateToString:(long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    switch (sign_extend_64(*(int32_t *)(0x10028c858 + r2 * 0x4)) + 0x10028c858) {
        case 0:
            r19 = @"READY";
            break;
        case 1:
            r19 = @"NOT_AVAILABLE";
            break;
        case 2:
            r19 = @"DISABLED";
            break;
        case 3:
            r19 = @"WAITING";
            break;
        case 4:
            r19 = @"NO_FILL";
            break;
        default:
            r19 = @"Unexpected FormatType";

    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void)unityAdsPlacementStateChanged:(void *)arg2 oldState:(long long)arg3 newState:(long long)arg4 {
    r31 = r31 - 0x90;
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
    r21 = arg4;
    r23 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r27 = [[r20 logger] retain];
    [[r20 placementStateToString:r23] retain];
    [[r20 placementStateToString:r21] retain];
    r0 = [NSString stringWithFormat:@"unityAdsPlacementStateChanged: placement <%@> from %@ to %@"];
    r29 = &saved_fp;
    [r0 retain];
    [r27 log:r2];
    [r25 release];
    [r22 release];
    [r28 release];
    [r27 release];
    if (r21 == 0x3 || r23 == r21) goto loc_10028c7b0;

loc_10028c5f0:
    [r20->_mZoneReceivedFirstStatus addObject:r19];
    r0 = [r20 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r22 = r0;
    r2 = r19;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    if (r23 == 0x0) goto loc_10028c674;

loc_10028c654:
    if (r21 == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r20 notifyRewardedVideoAvialbilty:r2 forDelegate:r23];
    goto loc_10028c7a8;

loc_10028c7a8:
    [r23 release];
    goto loc_10028c7b0;

loc_10028c7b0:
    [r19 release];
    return;

loc_10028c674:
    r27 = @selector(objectForKey:);
    r0 = [r20 interstitialDelegateMapHolders];
    r0 = [r0 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r27 = [r0 retain];
    [r22 release];
    if (r27 == 0x0) goto loc_10028c728;

loc_10028c6b4:
    if (r21 == 0x0) goto loc_10028c78c;

loc_10028c6b8:
    r21 = [[r20 placementStateToString:r21] retain];
    r22 = [[ISError createError:0x1fd withMessage:r21] retain];
    [r21 release];
    [r20 notifyInterstitialDidLoadFailedWithError:r22 forDelegate:r27];
    r0 = r22;
    goto loc_10028c784;

loc_10028c784:
    [r0 release];
    goto loc_10028c7a0;

loc_10028c7a0:
    [r27 release];
    goto loc_10028c7a8;

loc_10028c78c:
    [r20 notifyInterstitialDidLoadForDelegate:r27];
    goto loc_10028c7a0;

loc_10028c728:
    r20 = [[r20 logger] retain];
    [[NSString stringWithFormat:r2] retain];
    [r20 log:r2];
    [r21 release];
    r0 = r20;
    goto loc_10028c784;
}

-(void *)firstAvailabilitySemaphore {
    r0 = self->_firstAvailabilitySemaphore;
    return r0;
}

-(void)setFirstAvailabilitySemaphore:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_firstAvailabilitySemaphore, arg2);
    return;
}

-(bool)didCallLoad {
    r0 = *(int8_t *)(int64_t *)&self->_didCallLoad;
    return r0;
}

-(void)setDidCallLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didCallLoad = arg2;
    return;
}

-(void *)readyZoneId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_readyZoneId)), 0x0);
    return r0;
}

-(void)setReadyZoneId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_readyZoneId, 0x0);
    objc_storeStrong((int64_t *)&self->_firstAvailabilitySemaphore, 0x0);
    objc_storeStrong((int64_t *)&self->_mZoneReceivedFirstStatus, 0x0);
    return;
}

@end