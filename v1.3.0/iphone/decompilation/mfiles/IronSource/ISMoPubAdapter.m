@implementation ISMoPubAdapter

-(void *)initAdapter:(void *)arg2 {
    r0 = [[&var_10 super] initAdapter:arg2];
    return r0;
}

-(void *)version {
    objc_retainAutorelease(@"4.1.2");
    return @"4.1.2";
}

-(void *)sdkVersion {
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 version] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)systemFrameworks {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_58 count:0xa];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sdkName {
    objc_retainAutorelease(@"MoPub");
    return @"MoPub";
}

-(void)initRVWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r24 = [arg3 retain];
    r22 = [arg4 retain];
    [r20 addRewardedVideoDelegate:r22];
    r23 = [[arg3 settings] retain];
    [r24 release];
    r0 = [r23 objectForKeyedSubscript:@"adUnitId"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (([r20 isConfigValueValid:r21] & 0x1) != 0x0) {
            r23 = [[NSString stringWithFormat:@"ISMopubAdapter: initRVWithUserId, userId: %@"] retain];
            r0 = [r20 logger];
            r0 = [r0 retain];
            [r0 log:r23];
            [r0 release];
            [r20 addRewardedVideoDelegate:r22 forPlacement:r21];
            [r22 release];
            var_50 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            r0 = var_50;
    }
    else {
            r23 = [[r20 errorForMissingCredentialFieldWithName:@"adUnitId"] retain];
            r24 = [[r20 logger] retain];
            r26 = [[r23 description] retain];
            r25 = [[NSString stringWithFormat:@"%@"] retain];
            [r24 log:r25];
            [r25 release];
            [r26 release];
            [r24 release];
            [r20 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
            r0 = r22;
    }
    [r0 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
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
    r21 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[arg3 settings] retain];
    [r23 release];
    r0 = [r24 objectForKeyedSubscript:@"adUnitId"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r21 isConfigValueValid:r22] & 0x1) == 0x0) goto loc_100268638;

loc_100268564:
    r0 = [r21 logger];
    r29 = r29;
    r0 = [r0 retain];
    [r0 log:@"ISMopubAdapter: showRewardedVideoWithViewController"];
    [r0 release];
    if ([MPRewardedVideo hasAdAvailableForAdUnitID:r22] == 0x0) goto loc_10026870c;

loc_1002685b8:
    var_68 = [r22 retain];
    var_60 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_88);
    [r21 notifyRewardedVideoAvialbilty:0x0 forDelegate:r20];
    [var_60 release];
    r0 = var_68;
    goto loc_1002687c0;

loc_1002687c0:
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_10026870c:
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r23 = [[NSError errorWithDomain:@"ISMoPubAdapter" code:0x1fe userInfo:r24] retain];
    [r24 release];
    [r21 notifyRewardedVideoDidFailToShowWithError:r23 forDelegate:r20];
    [r21 notifyRewardedVideoAvialbilty:0x0 forDelegate:r20];
    goto loc_1002687bc;

loc_1002687bc:
    r0 = r23;
    goto loc_1002687c0;

loc_100268638:
    r23 = [[r21 errorForMissingCredentialFieldWithName:@"adUnitId"] retain];
    r24 = [[r21 logger] retain];
    r26 = [[r23 description] retain];
    r25 = [[NSString stringWithFormat:@"%@"] retain];
    [r24 log:r25];
    [r25 release];
    [r26 release];
    [r24 release];
    [r21 notifyRewardedVideoDidFailToShowWithError:r23 forDelegate:r20];
    goto loc_1002687bc;
}

-(bool)hasAvailableAdsForAdapterConfig:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 settings];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:@"adUnitId"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if ([r20 isConfigValueValid:r19] != 0x0) {
            r21 = [[NSString stringWithFormat:@"ISMopubAdapter: hasRewardedVideo, rvAdUnitId: %@"] retain];
            r0 = [r20 logger];
            r0 = [r0 retain];
            [r0 log:r21];
            [r0 release];
            r20 = [MPRewardedVideo hasAdAvailableForAdUnitID:r19];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)rewardedVideoAdDidLoadForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [r19 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:arg2] retain];
    [r0 release];
    r21 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdDidLoadForAdUnitID, adUnitID: %@"] retain];
    [r22 release];
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:r21];
    [r0 release];
    if (r20 != 0x0) {
            [r19 notifyRewardedVideoAvialbilty:0x1 forDelegate:r20];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
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
    r24 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[arg2 providerName] retain];
    r21 = [[NSString stringWithFormat:@"ISMopubAdapter: fetchVideo for %@"] retain];
    [r23 release];
    r0 = [r20 logger];
    r0 = [r0 retain];
    [r0 log:r21];
    [r0 release];
    r26 = [[arg2 settings] retain];
    [r24 release];
    r0 = [r26 objectForKeyedSubscript:@"adUnitId"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    if (([r20 isConfigValueValid:r24] & 0x1) != 0x0) {
            [r20 loadRewardedVideo:r24];
    }
    else {
            r26 = [[r20 errorForMissingCredentialFieldWithName:@"adUnitId"] retain];
            r25 = [[r20 logger] retain];
            r27 = @class(NSString);
            r28 = [[r26 description] retain];
            r22 = [[r27 stringWithFormat:@"%@"] retain];
            [r25 log:r22];
            [r22 release];
            [r28 release];
            [r25 release];
            [r20 notifyRewardedVideoAvialbilty:0x0 forDelegate:r19];
            [r26 release];
    }
    [r24 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillAppearForAdUnitID:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdWillAppearForAdUnitID, adUnitID: %@"] retain];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(void *)arg2 error:(void *)arg3 {
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
    r19 = self;
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [r19 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:arg2] retain];
    [r0 release];
    r25 = [[arg3 localizedFailureReason] retain];
    [r24 release];
    r22 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdDidFailToLoadForAdUnitID, adUnitID: %@, error: %@"] retain];
    [r21 release];
    [r25 release];
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:r22];
    [r0 release];
    if (r20 != 0x0) {
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r20];
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdDidAppearForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [r19 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:arg2] retain];
    [r0 release];
    r21 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdDidAppearForAdUnitID, adUnitID: %@"] retain];
    [r22 release];
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:r21];
    [r0 release];
    if (r20 != 0x0) {
            [r19 notifyRewardedVideoDidOpenForDelegate:r20];
            [r19 notifyRewardedVideoDidStartForDelegate:r20];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdWillDisappearForAdUnitID:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdWillDisappearForAdUnitID, adUnitID: %@"] retain];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdDidReceiveTapEventForAdUnitID, adUnitID: %@"] retain];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdDidDisappearForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [r20 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r19] retain];
    [r0 release];
    r22 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdDidDisappearForAdUnitID, adUnitID: %@"] retain];
    r0 = [r20 logger];
    r0 = [r0 retain];
    [r0 log:r22];
    [r0 release];
    if (r21 != 0x0) {
            [r20 notifyRewardedVideoDidEndForDelegate:r21];
            [r20 notifyRewardedVideoDidCloseForDelegate:r21];
    }
    [r20 loadRewardedVideo:r19];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoWillLeaveApplicationForAdUnitID:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoWillLeaveApplicationForAdUnitID, adUnitID: %@"] retain];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdDidExpireForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [r19 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:arg2] retain];
    [r0 release];
    r21 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdDidExpireForAdUnitID, adUnitID: %@"] retain];
    [r22 release];
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:r21];
    [r0 release];
    if (r20 != 0x0) {
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r20];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)rewardedVideoAdShouldRewardForAdUnitID:(void *)arg2 reward:(void *)arg3 {
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
    r19 = self;
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [r19 rewardedVideoDelegateMapHolders];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:arg2] retain];
    [r0 release];
    r25 = [[arg3 amount] retain];
    [r24 release];
    r22 = [[NSString stringWithFormat:@"ISMopubAdapter: rewardedVideoAdShouldRewardForAdUnitID, adUnitID: %@, reward: %@"] retain];
    [r21 release];
    [r25 release];
    r0 = [r19 logger];
    r0 = [r0 retain];
    [r0 log:r22];
    [r0 release];
    if (r20 != 0x0) {
            [r19 notifyRewardedVideoReceiveRewardForDelegate:r20];
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)loadRewardedVideo:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:@"ISMopubAdapter: loadRewardedVideo internal"];
    [r0 release];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_38);
    [r20 release];
    [r19 release];
    return;
}

-(void)setConsent:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[MoPub sharedInstance] retain];
    if (arg2 != 0x0) {
            r1 = @selector(grantConsent);
    }
    else {
            r1 = @selector(revokeConsent);
    }
    objc_msgSend(r19, r1);
    [r19 release];
    return;
}

@end