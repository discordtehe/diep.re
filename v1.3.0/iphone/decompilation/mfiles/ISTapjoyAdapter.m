@implementation ISTapjoyAdapter

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initAdapter:(void *)arg2 {
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
    r0 = [[&var_40 super] initAdapter:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(tjcConnectSuccess:) name:@"TJC_Connect_Success" object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(tjcConnectFail:) name:@"TJC_Connect_Failed" object:0x0];
            [r0 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementNameToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementNameToDelegate));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementNameToPlacement));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementNameToPlacement));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToIsReady));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToIsReady));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_programmaticPlacementNames));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_initState = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void *)version {
    objc_retainAutorelease(@"4.1.4");
    return @"4.1.4";
}

-(void *)sdkVersion {
    r0 = [Tapjoy getVersion];
    return r0;
}

-(void *)systemFrameworks {
    r31 = r31 - 0xc0;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_A8 count:0x14];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sdkName {
    objc_retainAutorelease(@"Tapjoy");
    return @"Tapjoy";
}

-(void)setConsent:(bool)arg2 {
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [Tapjoy setUserConsent:r2];
    return;
}

-(void *)getRvBiddingData:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [Tapjoy getUserToken];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r8 = @"nil";
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"nil";
            }
            else {
                    r8 = r21;
            }
    }
    [r20 log:@"getRvBiddingData token=%@"];
    if (r21 != 0x0) {
            r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    else {
            r22 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r22 autorelease];
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
    r22 = [[r0 objectForKeyedSubscript:@"placementName"] retain];
    [r0 release];
    r0 = [r20 getPlacementForBidding:r22 serverData:r21];
    r0 = [r0 retain];
    [r0 setVideoDelegate:r20];
    [r20->_rvPlacementNameToPlacement setObject:r0 forKey:r22];
    [r0 requestContent];
    [r0 release];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
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
    r23 = [[r0 objectForKeyedSubscript:@"sdkKey"] retain];
    [r0 release];
    r0 = [r21 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementName"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1008e7968;

loc_1008e7898:
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1008e79e4;

loc_1008e78ac:
    r25 = r19->_rvPlacementToIsReady;
    r27 = [@(NO) retain];
    [r25 setObject:r27 forKey:r24];
    [r27 release];
    [r19->_rvPlacementNameToDelegate setObject:r22 forKey:r24];
    [r19 initWithUserId:r20 appId:r23];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
    r8 = *(r19 + r8);
    if (r8 != 0x2) {
            if (r8 == 0x3) {
                    [r19 loadVideoInternal:r24];
            }
    }
    else {
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
    }
    goto loc_1008e7a64;

loc_1008e7a64:
    [r24 release];
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;

loc_1008e79e4:
    r0 = [r19 errorForMissingCredentialFieldWithName:@"placementName"];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedDescription] retain];
    [r19 log:@"initRVWithUserId error=%@"];
    [r26 release];
    [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
    goto loc_1008e7a5c;

loc_1008e7a5c:
    [r25 release];
    goto loc_1008e7a64;

loc_1008e7968:
    r0 = [r19 errorForMissingCredentialFieldWithName:@"sdkKey"];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedDescription] retain];
    [r19 log:@"initRVWithUserId error=%@"];
    [r26 release];
    [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r22];
    goto loc_1008e7a5c;
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
    r23 = [[r0 objectForKeyedSubscript:@"sdkKey"] retain];
    [r0 release];
    r0 = [r21 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementName"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1008e7424;

loc_1008e733c:
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1008e749c;

loc_1008e7350:
    r26 = r19->_rvPlacementToIsReady;
    r0 = @(NO);
    r29 = r29;
    r27 = [r0 retain];
    [r26 setObject:r27 forKey:r24];
    [r27 release];
    [r19->_programmaticPlacementNames addObject:r24];
    [r19->_rvPlacementNameToDelegate setObject:r22 forKey:r24];
    [r19 initWithUserId:r20 appId:r23];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
    r8 = *(r19 + r8);
    if (r8 == 0x2) goto loc_1008e7514;

loc_1008e7408:
    if (r8 == 0x3) {
            [r22 adapterRewardedVideoInitSuccess];
    }
    goto loc_1008e75b0;

loc_1008e75b0:
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

loc_1008e7514:
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r25 = [[NSError errorWithDomain:@"Tapjoy" code:0x1fa userInfo:r26] retain];
    [r26 release];
    [r22 adapterRewardedVideoInitFailed:r25];
    goto loc_1008e75a8;

loc_1008e75a8:
    [r25 release];
    goto loc_1008e75b0;

loc_1008e749c:
    r0 = [r19 errorForMissingCredentialFieldWithName:@"placementName"];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedDescription] retain];
    [r19 log:@"initRvForBidding error=%@"];
    [r26 release];
    [r22 adapterRewardedVideoInitFailed:r25];
    goto loc_1008e75a8;

loc_1008e7424:
    r0 = [r19 errorForMissingCredentialFieldWithName:@"sdkKey"];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedDescription] retain];
    [r19 log:@"initRvForBidding error=%@"];
    [r26 release];
    [r22 adapterRewardedVideoInitFailed:r25];
    goto loc_1008e75a8;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"placementName"] retain];
    [r0 release];
    r24 = r21->_rvPlacementToIsReady;
    r25 = [@(NO) retain];
    [r24 setObject:r25 forKey:r22];
    [r25 release];
    r0 = r21->_rvPlacementNameToPlacement;
    r0 = [r0 objectForKeyedSubscript:r22];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_48 = [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [var_48 release];
    }
    else {
            if (r20 != 0x0) {
                    [r21 notifyRewardedVideoAvialbilty:0x0 forDelegate:r20];
            }
    }
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)initInterstitialForBidding:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [r22 initISWithUserId:r19 adapterConfig:r20 delegate:r21];
    objc_sync_exit(r22);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasAvailableAdsForAdapterConfig:(void *)arg2 {
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
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementToIsReady));
    r25 = *(r20 + r27);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 objectForKeyedSubscript:@"placementName"] retain];
    r0 = [r25 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r24 release];
    if (r0 != 0x0) {
            r23 = @selector(objectForKey:);
            r24 = *(r20 + r27);
            r0 = [r19 settings];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 objectForKeyedSubscript:@"placementName"] retain];
            r0 = objc_msgSend(r24, r23);
            r0 = [r0 retain];
            r23 = [r0 boolValue];
            [r0 release];
            [r22 release];
            [r21 release];
    }
    else {
            r23 = 0x0;
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)getIsBiddingData:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [Tapjoy getUserToken];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r8 = @"nil";
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"nil";
            }
            else {
                    r8 = r21;
            }
    }
    [r20 log:@"getIsBiddingData token=%@"];
    if (r21 != 0x0) {
            r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    else {
            r22 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)loadInterstitial:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r21 settings];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:@"sdkKey"] retain];
    [r0 release];
    r0 = [r21 settings];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placementName"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1008e8a74;

loc_1008e89f4:
    if (([r19 isConfigValueValid:r2] & 0x1) == 0x0) goto loc_1008e8ab4;

loc_1008e8a08:
    [r19->_isPlacementNameToDelegate setObject:r22 forKey:r24];
    [r19 initWithUserId:r20 appId:r23];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
    r8 = *(r19 + r8);
    if (r8 == 0x2) goto loc_1008e8af4;

loc_1008e8a54:
    if (r8 == 0x3) {
            [r19 notifyInterstitialInitSuccessForDelegate:r22];
    }
    goto loc_1008e8b94;

loc_1008e8b94:
    var_48 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1008e8af4:
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r25 = [[NSError errorWithDomain:@"ISTapjoyAdapter" code:0x1fc userInfo:r26] retain];
    [r26 release];
    [r19 notifyInterstitialInitFailedWithError:r25 forDelegate:r22];
    goto loc_1008e8b8c;

loc_1008e8b8c:
    [r25 release];
    goto loc_1008e8b94;

loc_1008e8ab4:
    r25 = [[r19 errorForMissingCredentialFieldWithName:@"placementName"] retain];
    [r19 notifyInterstitialInitFailedWithError:r25 forDelegate:r22];
    goto loc_1008e8b8c;

loc_1008e8a74:
    r25 = [[r19 errorForMissingCredentialFieldWithName:@"sdkKey"] retain];
    [r19 notifyInterstitialInitFailedWithError:r25 forDelegate:r22];
    goto loc_1008e8b8c;
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

-(void)loadVideoInternal:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(bool)hasInterstitialWithAdapterConfig:(void *)arg2 {
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
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementToIsReady));
    r25 = *(r20 + r27);
    r0 = [r19 settings];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 objectForKeyedSubscript:@"placementName"] retain];
    r0 = [r25 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r24 release];
    if (r0 != 0x0) {
            r23 = @selector(objectForKey:);
            r24 = *(r20 + r27);
            r0 = [r19 settings];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 objectForKeyedSubscript:@"placementName"] retain];
            r0 = objc_msgSend(r24, r23);
            r0 = [r0 retain];
            r23 = [r0 boolValue];
            [r0 release];
            [r22 release];
            [r21 release];
    }
    else {
            r23 = 0x0;
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)getPlacement:(void *)arg2 {
    r0 = [TJPlacement placementWithName:arg2 mediationAgent:@"ironsource" mediationId:0x0 delegate:self];
    r0 = [r0 retain];
    [r0 setAdapterVersion:@"4.1.4"];
    r0 = [r0 autorelease];
    return r0;
}

-(void)requestDidSucceed:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void *)getPlacementForBidding:(void *)arg2 serverData:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    var_58 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[self getPlacement:r19] retain];
    r23 = [[r20 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r23 options:0x0 error:0x0];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 objectForKey:@"id"] retain];
    r26 = [[r24 objectForKey:@"ext_data"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2];
    r27 = [r0 retain];
    [r22 setAuctionData:r27];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    [r21 log:@"requestDidFail: %@ error: %@"];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementNameToDelegate));
    r26 = *(r21 + r27);
    r25 = [[r19 placementName] retain];
    r0 = [r26 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    if (r0 == 0x0) goto loc_1008e9eb0;

loc_1008e9e5c:
    r25 = *(r21 + r27);
    r22 = [[r19 placementName] retain];
    r23 = [[r25 objectForKeyedSubscript:r2] retain];
    [r21 notifyRewardedVideoAvialbilty:0x0 forDelegate:r23];
    goto loc_1008e9f50;

loc_1008e9f50:
    [r23 release];
    r0 = r22;
    goto loc_1008e9f5c;

loc_1008e9f5c:
    [r0 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008e9eb0:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementNameToDelegate));
    r26 = *(r21 + r27);
    r25 = [[r19 placementName] retain];
    r0 = [r26 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    if (r0 == 0x0) goto loc_1008e9f9c;

loc_1008e9f00:
    r25 = *(r21 + r27);
    r22 = [[r19 placementName] retain];
    r23 = [[r25 objectForKeyedSubscript:r2] retain];
    [r21 notifyInterstitialDidLoadFailedWithError:r20 forDelegate:r23];
    goto loc_1008e9f50;

loc_1008e9f9c:
    r23 = [[r19 placementName] retain];
    [r21 log:@"requestDidFail: unknown placement %@"];
    r0 = r23;
    goto loc_1008e9f5c;
}

-(void)contentIsReady:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r21 = [[r19 placementName] retain];
    [r20 log:@"contentIsReady: %@"];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementNameToDelegate));
    r0 = *(r20 + r25);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008ea120;

loc_1008ea098:
    r22 = [[*(r20 + r25) objectForKeyedSubscript:r2] retain];
    [r20 notifyRewardedVideoAvialbilty:0x1 forDelegate:r22];
    [r22 release];
    r22 = r20->_rvPlacementToIsReady;
    r23 = [@(YES) retain];
    [r22 setObject:r2 forKey:r3];
    goto loc_1008ea1cc;

loc_1008ea1cc:
    [r23 release];
    goto loc_1008ea1d4;

loc_1008ea1d4:
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;

loc_1008ea120:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_isPlacementNameToDelegate));
    r0 = *(r20 + r25);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008ea20c;

loc_1008ea14c:
    r22 = [[*(r20 + r25) objectForKeyedSubscript:r2] retain];
    [r20 notifyInterstitialDidLoadForDelegate:r22];
    [r22 release];
    r22 = r20->_isPlacementToIsReady;
    r23 = [@(YES) retain];
    [r22 setObject:r2 forKey:r3];
    goto loc_1008ea1cc;

loc_1008ea20c:
    [r20 log:@"contentIsReady: unknown placement %@"];
    goto loc_1008ea1d4;
}

-(void)contentDidAppear:(void *)arg2 {
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
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"contentDidAppear: %@"];
    r21 = r19->_rvPlacementNameToDelegate;
    r25 = [[r20 placementName] retain];
    r21 = [[r21 objectForKeyedSubscript:r25] retain];
    [r25 release];
    r26 = r19->_isPlacementNameToDelegate;
    r25 = [[r20 placementName] retain];
    r0 = [r26 objectForKeyedSubscript:r25];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r25 release];
    if (r21 != 0x0) {
            [r19 notifyRewardedVideoDidOpenForDelegate:r21];
            [r19 notifyRewardedVideoDidStartForDelegate:r21];
            [r19 notifyRewardedVideoAvialbilty:0x0 forDelegate:r21];
    }
    else {
            if (r23 != 0x0) {
                    [r19 notifyInterstitialDidOpenForDelegate:r23];
                    [r19 notifyInterstitialDidShowForDelegate:r23];
            }
            else {
                    r24 = [[r20 placementName] retain];
                    [r19 log:@"contentDidAppear: unknown placement %@"];
                    [r24 release];
            }
    }
    [r23 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)placement:(void *)arg2 didRequestPurchase:(void *)arg3 productId:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self log:@"didRequestPurchase placement=%@, request=%@, productId=%@"];
    [r20 release];
    [r22 release];
    return;
}

-(void)contentDidDisappear:(void *)arg2 {
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
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"contentDidDisappear: %@"];
    r0 = [r20 placementName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 length];
    [r0 release];
    if (r24 != 0x0) {
            r21 = r19->_rvPlacementNameToDelegate;
            r25 = [[r20 placementName] retain];
            r21 = [[r21 objectForKeyedSubscript:r25] retain];
            [r25 release];
            r26 = r19->_isPlacementNameToDelegate;
            r25 = [[r20 placementName] retain];
            r0 = [r26 objectForKeyedSubscript:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            if (r21 != 0x0) {
                    r23 = r19->_programmaticPlacementNames;
                    r0 = [r20 placementName];
                    r29 = r29;
                    r25 = [r0 retain];
                    r23 = [r23 containsObject:r2];
                    [r25 release];
                    if ((r23 & 0x1) == 0x0) {
                            r22 = [[r20 placementName] retain];
                            [r19 loadVideoInternal:r22];
                            [r22 release];
                    }
                    [r19 notifyRewardedVideoDidCloseForDelegate:r21];
            }
            else {
                    if (r24 != 0x0) {
                            [r19 notifyInterstitialDidCloseForDelegate:r24];
                    }
                    else {
                            r22 = [[r20 placementName] retain];
                            [r19 log:@"contentDidDisappear: unknown placement %@"];
                            [r22 release];
                    }
            }
            [r24 release];
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)placement:(void *)arg2 didRequestReward:(void *)arg3 itemId:(void *)arg4 quantity:(int)arg5 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self log:@"didRequestReward placement=%@, request=%@, itemId=%@"];
    [r20 release];
    [r22 release];
    return;
}

-(void)videoDidStart:(void *)arg2 {
    [self log:@"videoDidStart"];
    return;
}

-(void)videoDidComplete:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"videoDidComplete"];
    r21 = r19->_rvPlacementNameToDelegate;
    r22 = [[r20 placementName] retain];
    r21 = [[r21 objectForKey:r2] retain];
    [r22 release];
    if (r21 != 0x0) {
            [r19 notifyRewardedVideoReceiveRewardForDelegate:r21];
    }
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)videoDidFail:(void *)arg2 error:(void *)arg3 {
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"videoDidFail"];
    r22 = r19->_rvPlacementNameToDelegate;
    r23 = [[r20 placementName] retain];
    r0 = [r22 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r23 = [[NSString stringWithFormat:@"videoDidFail invalid placement: %@"] retain];
            [r19 log:r23];
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r24 = [[NSError errorWithDomain:@"ISTapjoyAdapter" code:0x1fe userInfo:r25] retain];
            [r25 release];
            [r19 notifyRewardedVideoDidFailToShowWithError:r24 forDelegate:r22];
            [r24 release];
            [r23 release];
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)initWithUserId:(void *)arg2 appId:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initState));
    if (*(r21 + r8) == 0x0) {
            *(r21 + r8) = 0x1;
            [r21 log:@"initWithUserId appID=%@, userId=%@"];
            if ([r21 adaptersDebug] != 0x0) {
                    [Tapjoy enableLogging:[r21 adaptersDebug]];
                    [Tapjoy setDebugEnabled:[r21 adaptersDebug]];
            }
            var_40 = [r19 retain];
            var_38 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_60);
            [var_38 release];
            [var_40 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)log:(void *)arg2 {
    r20 = @class(NSString);
    r22 = [arg2 retain];
    r20 = [[r20 alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    r19 = [[self logger] retain];
    r21 = [[NSString stringWithFormat:@"ISTapjoyAdapter %@"] retain];
    [r19 log:r21];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_programmaticPlacementNames, 0x0);
    objc_storeStrong((int64_t *)&self->_rvPlacementToIsReady, 0x0);
    objc_storeStrong((int64_t *)&self->_isPlacementToIsReady, 0x0);
    objc_storeStrong((int64_t *)&self->_isPlacementNameToPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_rvPlacementNameToPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_isPlacementNameToDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_rvPlacementNameToDelegate, 0x0);
    return;
}

-(void)tjcConnectSuccess:(void *)arg2 {
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
    r27 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r19->_initState = 0x3;
    [r19 log:@"tjcConnectSuccess"];
    var_188 = q0;
    r0 = r19->_isPlacementNameToDelegate;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            r21 = *var_188;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_188 != r21) {
                                    objc_enumerationMutation(r22);
                            }
                            [r19 notifyInterstitialInitSuccessForDelegate:r2];
                            r25 = r25 + 0x1;
                    } while (r25 < r23);
                    r23 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    r26 = @selector(countByEnumeratingWithState:objects:count:);
    [r22 release];
    var_1C8 = q0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementNameToDelegate));
    r0 = *(r19 + r21);
    r0 = [r0 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r23 = objc_msgSend(r0, r26);
    var_1F0 = r26;
    if (r23 != 0x0) {
            r26 = *var_1C8;
            var_1F8 = r27;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_1C8 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            r25 = @selector(containsObject:);
                            r24 = @selector(objectForKey:);
                            r28 = *(var_1D0 + r27 * 0x8);
                            r0 = *(r19 + r21);
                            r0 = objc_msgSend(r0, r24);
                            r29 = r29;
                            r20 = [r0 retain];
                            if (objc_msgSend(r19->_programmaticPlacementNames, r25) != 0x0) {
                                    [r20 adapterRewardedVideoInitSuccess];
                            }
                            else {
                                    [r19 loadVideoInternal:r2];
                            }
                            [r20 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = objc_msgSend(r22, var_1F0);
                    r27 = var_1F8;
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r27 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)tjcConnectFail:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x200;
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r19->_initState = 0x2;
    [r19 log:@"tjcConnectFail"];
    var_210 = r20;
    var_1A8 = q0;
    var_200 = r19;
    r0 = r19->_isPlacementNameToDelegate;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r0;
    r20 = objc_msgSend(r0, r21);
    if (r20 != 0x0) {
            r21 = @selector(countByEnumeratingWithState:objects:count:);
            r23 = *var_1A8;
            var_228 = r21;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_1A8 != r23) {
                                    objc_enumerationMutation(var_208);
                            }
                            r24 = @selector(dictionaryWithObjects:forKeys:count:);
                            r28 = [objc_msgSend(@class(NSDictionary), r24) retain];
                            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                            r29 = r29;
                            [r0 retain];
                            [r28 release];
                            [var_200 notifyInterstitialInitFailedWithError:r2 forDelegate:r3];
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r20);
                    r21 = var_228;
                    r20 = objc_msgSend(var_208, r21);
            } while (r20 != 0x0);
    }
    [var_208 release];
    var_1E8 = q0;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacementNameToDelegate));
    r19 = var_200;
    r0 = *(r19 + r27);
    r0 = [r0 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    var_208 = r0;
    r23 = objc_msgSend(r0, r21);
    if (r23 != 0x0) {
            r28 = *var_1E8;
            r20 = 0x101171000;
            var_228 = r21;
            do {
                    r22 = 0x0;
                    r25 = @selector(objectForKey:);
                    r26 = @selector(containsObject:);
                    var_248 = r25;
                    do {
                            if (*var_1E8 != r28) {
                                    objc_enumerationMutation(var_208);
                            }
                            r0 = *(r19 + r27);
                            r0 = objc_msgSend(r0, r25);
                            r29 = r29;
                            r21 = [r0 retain];
                            if (objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)(r20 + 0xca0))), r26) != 0x0) {
                                    var_218 = @selector(dictionaryWithObjects:forKeys:count:);
                                    r20 = [objc_msgSend(@class(NSDictionary), var_218) retain];
                                    r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 release];
                                    [r21 adapterRewardedVideoInitFailed:r2];
                                    [r24 release];
                                    r20 = r28;
                                    r28 = r27;
                                    r27 = r23;
                                    r23 = r26;
                                    r26 = r25;
                                    r25 = var_248;
                            }
                            else {
                                    [r19 notifyRewardedVideoAvialbilty:r2 forDelegate:r3];
                            }
                            [r21 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(var_208, var_228);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_208 release];
    objc_sync_exit(r19);
    [r19 release];
    [var_210 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end