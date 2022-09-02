@implementation IronSourceSdk

+(void *)sharedInstance {
    sub_1006df814(0x1011daba0, 0x100e8b410);
    r0 = *0x1011dab98;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isRewardedVideoAvailable {
    r0 = self->_rewardedVideoManager;
    r0 = [r0 hasAvailableAds];
    return r0;
}

-(bool)isRvDemandOnlyMode {
    r0 = self->_rvDemandOnlyModeHelper;
    r0 = [r0 isDemandOnlyMode];
    return r0;
}

-(bool)isIsDemandOnlyMode {
    r0 = self->_isDemandOnlyModeHelper;
    r0 = [r0 isDemandOnlyMode];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setMediationSDKState:0x0];
            *(int8_t *)(int64_t *)&r19->_didCallLoadBeforeResponse = 0x0;
            *(int8_t *)(int64_t *)&r19->_didCallLoadBannerBeforeResponse = 0x0;
            *(int8_t *)(int64_t *)&r19->_shouldSendLoadBannerFailedEvent = 0x1;
            *(int32_t *)(int64_t *)&r19->_loadFailedDelay = 0xf;
            *(int8_t *)(int64_t *)&r19->_didReportInitialAvailabilityFalse = 0x0;
            *(int8_t *)(int64_t *)&r19->_didRevive = 0x0;
            *(int32_t *)(int64_t *)&r19->_retryInterval = 0x1;
            *(int32_t *)(int64_t *)&r19->_retryLimit = 0x3e;
            *(int32_t *)(int64_t *)&r19->_retryGrowLimit = 0xc;
            *(int32_t *)(int64_t *)&r19->_retryAvailabilityLimit = 0x5;
            *(int32_t *)(int64_t *)&r19->_retryCounter = 0x0;
            *(int8_t *)(int64_t *)&r19->_isRetryForMoreThan15Secs = 0x0;
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_rewardedVideoAdded = 0x0;
            *(int8_t *)(int64_t *)&r19->_offerwallAdded = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_bannerToLoadPlacementName));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_bannerToLoadViewController));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            objc_storeStrong((int64_t *)&r19->_serverBaseUrl, @"https://init.supersonicads.com/sdk/v");
            r0 = @(0x1);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serr));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [ISKeyValueStorageProvider getKeyValueStorageForIdentifier:@"mediation"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(storage));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_initiatedAdUnits));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_attachedAdUnits));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r19->_initCounter = 0x0;
            r0 = @class(ISDemandOnlyModeHelper);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvDemandOnlyModeHelper));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(ISDemandOnlyModeHelper);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isDemandOnlyModeHelper));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialInstanceIds));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_interstitialInitRequested = 0x0;
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(loggerManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_bannerInitRequested = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)appWillResignActive:(void *)arg2 {
    [self reportLifeCycleEvent:0x2c];
    [self sendAllEvents];
    return;
}

-(void)reportLifeCycleEvent:(long long)arg2 {
    r0 = [NSMutableDictionary dictionary];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setObject:*0x100e8cd00 forKey:@"provider"];
    r21 = [ISEventData alloc];
    r20 = [[NSNumber numberWithInteger:arg2] retain];
    r21 = [r21 initWithEventId:r20 andAdditionData:r19];
    [r20 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)appBecameActive:(void *)arg2 {
    [self reportLifeCycleEvent:0x2d];
    return;
}

-(void)removeLifecycleObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationWillTerminateNotification object:0x0];
    [r0 release];
    return;
}

-(void)appWillTerminate:(void *)arg2 {
    [self removeLifecycleObservers];
    return;
}

-(void)initLifecycleObservers {
    [self removeLifecycleObservers];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(appBecameActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(appWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(appWillTerminate:) name:**_UIApplicationWillTerminateNotification object:0x0];
    [r0 release];
    return;
}

-(void)setLogDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logDelegate, arg2);
    r19 = [arg2 retain];
    [self->loggerManager addPublisherLogger:r19];
    [r19 release];
    return;
}

-(void)setSegmentDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_segmentDelegate, arg2);
    return;
}

-(void)setRewardedVideoDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setInstRewardedVideoDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 setInstDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setOfferwallDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    objc_storeStrong((int64_t *)&self->_offerwallDelegate, arg2);
    r0 = self->_offerwallManager;
    if (r0 != 0x0) {
            [r0 setDelegate:r19];
    }
    [r19 release];
    return;
}

-(void)setInterstitialDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setInstInterstitialDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 setInstDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setRewardedInterstitialDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    objc_storeStrong((int64_t *)&self->_rewardedInterstitialDelegate, arg2);
    r0 = self->_interstitialManager;
    if (r0 != 0x0) {
            [r0 setRewardDelegate:r19];
    }
    [r19 release];
    return;
}

-(void)setBannerDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [BnDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setAge:(long long)arg2 {
    r20 = [[NSString stringWithFormat:@"IronSource: setting age to %ld"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x0];
    [r0 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setUserAge:arg2];
    [r0 release];
    [r20 release];
    return;
}

-(void *)sdkVersion {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e8cd08);
    return r0;
}

-(bool)setDynamicUserId:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([ISUtils checkLengthWithVal:[r0 length] minLength:0x1 maxLength:0x80] != 0x0) {
            r21 = [[NSString stringWithFormat:@"IronSource: setting dynamicUserId to %@"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            r20 = 0x1;
            [r0 log:r21 level:0x1 tag:0x0];
            [r0 release];
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            [r0 setDynamicUserId:r19];
            [r0 release];
            [r21 release];
    }
    else {
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:@"dynamicUserId is invalid, should be between 1-128 chars in length" level:0x3 tag:0x0];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setGender:(long long)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_40 count:0x3];
    r0 = [r0 retain];
    r20 = [[r0 objectAtIndex:arg2] retain];
    [r0 release];
    r21 = [[NSString stringWithFormat:@"IronSource: setting gender to %@"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x0];
    [r0 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setUserGender:arg2];
    [r0 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)shouldTrackReachability:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r8 = @"NO";
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"NO";
            }
            else {
                    r8 = @"YES";
            }
    }
    r20 = [[NSString stringWithFormat:r2] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x5];
    [r0 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setTrackReachability:r19];
    [r0 release];
    [r20 release];
    return;
}

-(void)setAdaptersDebug:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r8 = @"NO";
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"NO";
            }
            else {
                    r8 = @"YES";
            }
    }
    r20 = [[NSString stringWithFormat:r2] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x6];
    [r0 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setAdaptersDebug:r19];
    [r0 release];
    [r20 release];
    return;
}

-(void)setUserId:(void *)arg2 {
    [self->_configuration setUserId:r2];
    return;
}

-(void)setSegment:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (self->_mediationSDKState == 0x3) {
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            [r0 log:@"Segments must be set prior to Init. Setting a segment after the init will be ignored" level:0x1 tag:0x0];
    }
    else {
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r20 = r0;
            [r0 setSegment:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setMediationSegment:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] >= 0x41) {
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:@"Segment name is too long, segment is cut to 64 chars" level:0x1 tag:0x0];
            [r0 release];
            r0 = [r19 substringToIndex:0x40];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            r19 = r20;
    }
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setMediationSegment:r19];
    [r0 release];
    [r19 release];
    return;
}

-(void)setMediationType:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [ISUtils checkLengthWithVal:[r0 length] minLength:0x1 maxLength:0x40];
    [ISUtils checkRegWithVal:r19 pattern:@"^[0-9a-zA-Z]*$"];
    if (r20 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            [r0 log:@"Mediation Type name is not valid" level:0x1 tag:0x0];
    }
    else {
            r20 = [[NSString stringWithFormat:@"IronSource: setting mediation type to %@"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x1 tag:0x0];
            [r0 release];
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            [r0 setMediationType:r19];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)initWithAppKey:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r0 = [NSArray arrayWithObjects:&var_48 count:0x4];
    r20 = [r0 retain];
    [self initWithAppKey:r22 adUnits:r20 internal:0x1 isDemandOnly:0x0];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)initWithAppKey:(void *)arg2 adUnits:(void *)arg3 {
    r21 = [arg2 retain];
    [self initWithAppKey:r21 adUnits:arg3 internal:0x0 isDemandOnly:0x0];
    [r21 release];
    return;
}

-(void)setAndValidateUserID:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = [r0 length];
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ([ISUtils checkLengthWithVal:r22 minLength:0x1 maxLength:0x40] == 0x0) goto loc_1006ba220;

loc_1006ba1c4:
    [r21->_configuration setUserId:r19];
    r26 = @"userGenerated";
    [r26 retain];
    [r20 setObject:r26 forKey:@"userIdType"];
    [r20 synchronize];
    goto loc_1006ba4d4;

loc_1006ba4d4:
    [r26 release];
    [r20 release];
    [r19 release];
    return;

loc_1006ba220:
    r0 = [SSEDeviceStatus alloc];
    r0 = [r0 init];
    r22 = r0;
    r23 = [[r0 advertiserId] retain];
    r24 = [[r22 vendorId] retain];
    r0 = [r22 customUUID];
    r29 = r29;
    r25 = [r0 retain];
    if (([r22 isAdvertisingTrackingEnabled] & 0x1) != 0x0) goto loc_1006ba364;

loc_1006ba2a8:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 compare:@"10.0" options:0x40];
    [r0 release];
    [r26 release];
    if (r28 == -0x1) goto loc_1006ba364;

loc_1006ba314:
    if (r24 == 0x0) goto loc_1006ba3c8;

loc_1006ba318:
    r0 = [NSString stringWithFormat:@"%@IDFV %@"];
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r24 retain];
    r26 = @"IDFV";
    goto loc_1006ba414;

loc_1006ba414:
    r0 = r26;
    goto loc_1006ba418;

loc_1006ba418:
    [r0 retain];
    goto loc_1006ba41c;

loc_1006ba41c:
    [r20 setObject:r26 forKey:@"userIdType"];
    [r20 synchronize];
    [r21->_configuration setUserId:r28];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r27 level:0x1 tag:0x0];
    [r0 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_1006ba4d4;

loc_1006ba3c8:
    if (r25 == 0x0) goto loc_1006ba508;

loc_1006ba3cc:
    r0 = [NSString stringWithFormat:@"%@UUID %@"];
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r25 retain];
    r26 = @"UUID";
    goto loc_1006ba414;

loc_1006ba508:
    r27 = 0x0;
    r26 = 0x0;
    goto loc_1006ba3b8;

loc_1006ba3b8:
    r28 = @"";
    r0 = r28;
    goto loc_1006ba418;

loc_1006ba364:
    r0 = [NSString stringWithFormat:@"%@IDFA %@"];
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r23 retain];
    r26 = @"IDFA";
    [r26 retain];
    if (r28 != 0x0) goto loc_1006ba41c;
}

-(void)initWithAppKey:(void *)arg2 adUnits:(void *)arg3 internal:(bool)arg4 isDemandOnly:(bool)arg5 {
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
    r29 = &saved_fp;
    r22 = arg5;
    r23 = arg4;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([r21 containsObject:r2] != 0x0) {
            *(int8_t *)(int64_t *)&r19->_interstitialInitRequested = 0x1;
    }
    if ([r21 containsObject:r2] != 0x0) {
            *(int8_t *)(int64_t *)&r19->_bannerInitRequested = 0x1;
    }
    if (r19->_mediationSDKState == 0x0) goto loc_1006ba760;

loc_1006ba718:
    if ((r23 & 0x1) == 0x0) goto loc_1006ba974;

loc_1006ba71c:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"Multiple calls to init without ad units are not allowed" level:0x3 tag:0x0];
    r0 = r0;
    goto loc_1006ba96c;

loc_1006ba96c:
    [r0 release];
    goto loc_1006ba98c;

loc_1006ba98c:
    objc_sync_exit(r19);
    [r19 release];
    [r21 release];
    [r20 release];
    return;

loc_1006ba974:
    [r19 attachAdUnits:r21 isDemandOnly:r22];
    goto loc_1006ba98c;

loc_1006ba760:
    [r19 setMediationSDKState:0x1];
    r0 = r19->_configuration;
    r0 = [r0 userId];
    r29 = r29;
    r26 = [r0 retain];
    [r19 setAndValidateUserID:r26];
    [r26 release];
    r0 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_initiatedAdUnits)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(r19 + r27) addObjectsFromArray:r21];
    objc_sync_exit(r26);
    [r26 release];
    if ((r23 & 0x1) == 0x0) {
            if ([r21 containsObject:r2] != 0x0) {
                    *(int8_t *)(int64_t *)&r19->_rewardedVideoAdded = 0x1;
            }
            if ([r21 containsObject:r2] != 0x0) {
                    *(int8_t *)(int64_t *)&r19->_offerwallAdded = 0x1;
            }
    }
    if ((r22 & 0x1) == 0x0) {
            if ([r21 containsObject:r2] != 0x0) {
                    [r19->_rvDemandOnlyModeHelper setMediationMode];
            }
            if ([r21 containsObject:r2] != 0x0) {
                    [r19->_isDemandOnlyModeHelper setMediationMode];
            }
    }
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    [r0 addDelegate:r19];
    [r0 release];
    r25 = [dispatch_get_global_queue(0x2, 0x0) retain];
    var_68 = [r20 retain];
    var_60 = [r21 retain];
    sub_1006df8e4(r25, &var_90);
    [r25 release];
    [var_60 release];
    r0 = var_68;
    goto loc_1006ba96c;
}

-(void)handleAttachedAdUnits {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediationSDKState));
    r8 = *(r19 + r8);
    if (r8 != 0x3) {
            if (r8 == 0x2) {
                    r0 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_attachedAdUnits)));
                    r0 = [r0 retain];
                    objc_sync_enter(r0);
                    r21 = [*(r19 + r21) copy];
                    [r19 reportMediationAvailabilityFalseWithReason:@"SDK failed" forAdUnits:r21];
                    [r21 release];
                    objc_sync_exit(r20);
                    [r20 release];
            }
    }
    else {
            r0 = [ISServerResponseParser sharedInstance];
            r0 = [r0 retain];
            r21 = [r0 showIntegrationHelper];
            [r0 release];
            if (r21 != 0x0) {
                    [ISIntegrationHelper validateIntegration];
            }
            [r19 initiateAttachedAdUnits];
    }
    return;
}

-(void)initISDemandOnly:(void *)arg2 adUnits:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r20 containsObject:r2] != 0x0) {
            if ([r21->_rvDemandOnlyModeHelper setDemandOnlyMode] != 0x0) {
                    [r22 addObject:r2];
            }
            else {
                    r0 = [ISLoggerManager sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 log:@"rewardedVideo ad unit has already been initialized." level:0x3 tag:0x0];
                    [r0 release];
            }
    }
    if ([r20 containsObject:r2] != 0x0) {
            if ([r21->_isDemandOnlyModeHelper setDemandOnlyMode] != 0x0) {
                    [r22 addObject:r2];
            }
            else {
                    r0 = [ISLoggerManager sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 log:@"interstitial ad unit has already been initialized" level:0x3 tag:0x0];
                    [r0 release];
            }
    }
    if ([r20 containsObject:r2] != 0x0) {
            r0 = [ISLoggerManager sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 log:@"banner ad unit cannot be initialized in demand only mode" level:0x3 tag:0x0];
            [r0 release];
    }
    if ([r20 containsObject:r2] != 0x0) {
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:@"offerwall ad unit cannot be initialized in demand only mode" level:0x3 tag:0x0];
            [r0 release];
    }
    if ([r22 count] != 0x0) {
            r23 = [r22 copy];
            [r21 initWithAppKey:r19 adUnits:r23 internal:0x0 isDemandOnly:0x1];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)attachAdUnits:(void *)arg2 isDemandOnly:(bool)arg3 {
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
    var_14C = arg3;
    r19 = self;
    r20 = [arg2 retain];
    r27 = [NSMutableArray new];
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_148 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r21 = *0x0;
            do {
                    r23 = 0x0;
                    r26 = @selector(isEqualToString:);
                    do {
                            if (*0x0 != r21) {
                                    objc_enumerationMutation(var_120);
                            }
                            r20 = *(0x0 + r23 * 0x8);
                            if (([r19 didInitateOrAttachAdUnit:r2] & 0x1) != 0x0) {
                                    var_130 = @selector(sharedInstance);
                                    [[NSString stringWithFormat:r2] retain];
                                    r0 = objc_msgSend(@class(ISLoggerManager), var_130);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 log:r2 level:r3 tag:r4];
                                    [r22 release];
                                    [r20 release];
                            }
                            else {
                                    var_140 = @selector(addObject:);
                                    r28 = r24;
                                    r24 = r21;
                                    r0 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_attachedAdUnits)));
                                    r0 = [r0 retain];
                                    objc_sync_enter(r0);
                                    objc_msgSend(*(r19 + r27), var_140);
                                    objc_sync_exit(r22);
                                    [r22 release];
                                    r27 = r26;
                                    objc_msgSend(r27, var_140);
                                    r26 = r21;
                                    if (objc_msgSend(r20, r26) != 0x0) {
                                            *(int8_t *)(int64_t *)&r19->_rewardedVideoAdded = 0x1;
                                            r21 = r24;
                                            r24 = r28;
                                    }
                                    else {
                                            r0 = objc_msgSend(r20, r26);
                                            r21 = r24;
                                            r24 = r28;
                                            if (r0 != 0x0) {
                                                    *(int8_t *)(int64_t *)&r19->_offerwallAdded = 0x1;
                                            }
                                    }
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r24 = objc_msgSend(var_120, var_148);
            } while (r24 != 0x0);
    }
    [var_120 release];
    if ([r27 count] != 0x0) {
            [r19 sendInititateMediationSDKEventForAdUnits:r27 internal:0x0 isDemandOnly:var_14C];
    }
    var_58 = **___stack_chk_guard;
    [r19 handleAttachedAdUnits];
    [r27 release];
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)didInitateAdUnit:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_initiatedAdUnits)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(self + r22) containsObject:r2];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)initiateAttachedAdUnits {
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
    r20 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_attachedAdUnits));
    r0 = *(r20 + r24);
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([*(r20 + r24) count] != 0x0) {
            var_108 = q0;
            r0 = *(r20 + r24);
            r0 = [r0 retain];
            var_120 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    r21 = @selector(countByEnumeratingWithState:objects:count:);
                    r26 = *var_108;
                    var_138 = r19;
                    var_150 = r21;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_108 != r26) {
                                            objc_enumerationMutation(var_120);
                                    }
                                    r22 = *(var_110 + r19 * 0x8);
                                    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_initiatedAdUnits)));
                                    r0 = [r0 retain];
                                    objc_sync_enter(r0);
                                    objc_msgSend(*(r20 + r21), r28);
                                    objc_sync_exit(r25);
                                    [r25 release];
                                    if (objc_msgSend(r22, r27) != 0x0) {
                                            [r20 handleInitRewardedVideo];
                                    }
                                    else {
                                            if ([r22 isEqualToString:r2] != 0x0) {
                                                    [r20 handleInitInterstitial];
                                            }
                                            else {
                                                    if ([r22 isEqualToString:r2] != 0x0) {
                                                            [r20 handleInitBanner];
                                                    }
                                                    else {
                                                            if ([r22 isEqualToString:r2] != 0x0) {
                                                                    [r20 handleInitOfferwall];
                                                            }
                                                    }
                                            }
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r23);
                            r23 = objc_msgSend(var_120, var_150);
                            r19 = var_138;
                    } while (r23 != 0x0);
            }
            [var_120 release];
            [*(r20 + r24) removeAllObjects];
    }
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)didInitateOrAttachAdUnit:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_attachedAdUnits));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (([r21 didInitateAdUnit:r19] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r21 = [*(r21 + r22) containsObject:r2];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)initMediation {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:*0x100e8cd10 options:0x40];
    [r0 release];
    [r20 release];
    if (r22 != -0x1) {
            r20 = [[ISLoggerManager sharedInstance] retain];
            r22 = [[r19 sdkVersion] retain];
            r21 = [[NSString stringWithFormat:@"Mediation loaded (version: %@)"] retain];
            [r20 log:r21 level:0x1 tag:0x6];
            [r21 release];
            [r22 release];
            [r20 release];
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 getReachabilityObject];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 currentReachabilityStatus];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_netStatus));
            *(r19 + r22) = r0;
            [r21 release];
            [r20 release];
            if (*(r19 + r22) != 0x0) {
                    [r19 initFromServer];
            }
            else {
                    [r19 setMediationSDKState:0x1];
                    dispatch_async(*__dispatch_main_q, &var_48);
            }
    }
    else {
            [r19 setMediationSDKState:0x2];
            r0 = [ISUtils getGeneralParamsDic];
            r0 = [r0 retain];
            r20 = [[r0 objectForKey:@"deviceOSVersion"] retain];
            [r0 release];
            r19 = [[NSString stringWithFormat:@"Init Fail - iOS version %@ is not supported"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r19 level:0x3 tag:0x0];
            [r0 release];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)sendAllEvents {
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 sendEvents];
    [r0 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 sendEvents];
    [r0 release];
    return;
}

-(void)initFromServer {
    [self getProvidersFromServerWithCompletion:&var_28];
    return;
}

-(void)reportInitialAvailabilityFalseWithReason:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_didReportInitialAvailabilityFalse == 0x0) {
            r21 = [[NSOperationQueue mainQueue] retain];
            var_28 = [r19 retain];
            [r21 addOperationWithBlock:&var_50];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)serverErrorLoadIsFailed {
    r31 = r31 - 0x150;
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
    r0 = [ISError createError:0x1fc withMessage:@"Load Interstitial Fail - Adapters are out of reach"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([r20->_isDemandOnlyModeHelper isDemandOnlyMode] == 0x0) goto loc_1006bccd0;

loc_1006bcb88:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialInstanceIds));
    r0 = *(r20 + r26);
    r0 = [r0 retain];
    r25 = r0;
    objc_sync_enter(r0);
    r0 = *(r20 + r26);
    r0 = [r0 allObjects];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            var_138 = r26;
            stack[-320] = r20;
            var_128 = @selector(countByEnumeratingWithState:objects:count:);
            var_120 = r25;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            r25 = @selector(sharedInstance);
                            r0 = objc_msgSend(@class(ISDelegateThrottler), r25);
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 interstitialDidFailToLoadWithError:r2 instanceId:r3];
                            [r28 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r24 = objc_msgSend(r22, var_128);
                    r26 = var_138;
                    r20 = stack[-320];
                    r25 = var_120;
            } while (r24 != 0x0);
    }
    [r22 release];
    [*(r20 + r26) removeAllObjects];
    objc_sync_exit(r25);
    r0 = r25;
    goto loc_1006bcd90;

loc_1006bcd90:
    [r0 release];
    goto loc_1006bcd94;

loc_1006bcd94:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006bccd0:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_didCallLoadBeforeResponse));
    if (*(int8_t *)(r20 + r8) != 0x0) {
            *(int8_t *)(r20 + r8) = 0x0;
            r0 = [ISDelegateThrottler sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 interstitialDidFailToLoadWithError:r19];
            [r0 release];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_didCallLoadBannerBeforeResponse));
    if (*(int8_t *)(r20 + r8) == 0x0) goto loc_1006bcd94;

loc_1006bcd2c:
    *(int8_t *)(r20 + r8) = 0x0;
    r20 = [[ISError createError:0x1fc withMessage:@"Load Banner Fail - Adapters are out of reach"] retain];
    r0 = [BannerDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    [r0 bannerDidFailToLoadWithError:r20];
    [r0 release];
    r0 = r20;
    goto loc_1006bcd90;
}

-(void)handleInitInterstitial {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 interstitialProductSettings];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [r19 didInitateAdUnit:@"interstitial"];
            [r22 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = [ISServerResponseParser sharedInstance];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 interstitialProvidersConfig];
                    r0 = [r0 retain];
                    r22 = [r0 count];
                    [r0 release];
                    [r20 release];
                    if (r22 != 0x0) {
                            [r19 initInterstitialManager];
                    }
            }
    }
    else {
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)handleInitRewardedVideo {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 rewardedVideoProductSettings];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1006bd0ec;

loc_1006bd048:
    r23 = [r20 didInitateAdUnit:@"rewardedvideo"];
    [r22 release];
    [r21 release];
    if (r23 == 0x0) goto loc_1006bd0fc;

loc_1006bd078:
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 rewardedVideoProvidersConfig];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_1006bd150;

loc_1006bd0cc:
    [r20 initRewardedVideoManager];
    return;

.l1:
    return;

loc_1006bd150:
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoHasChangedAvailability:0x0];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 log:@"Rewarded Video availability false - Adapter initialization failure" level:0x3 tag:0x0];
    goto loc_1006bd1bc;

loc_1006bd1bc:
    [r19 release];
    return;

loc_1006bd0fc:
    if (*(int8_t *)(int64_t *)&r20->_rewardedVideoAdded == 0x0) goto .l1;

loc_1006bd10c:
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 rewardedVideoHasChangedAvailability:0x0];
    goto loc_1006bd1bc;

loc_1006bd0ec:
    [r22 release];
    [r21 release];
    goto loc_1006bd0fc;
}

-(void)handleInitBanner {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 bannerProductSettings];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [r19 didInitateAdUnit:@"banner"];
            [r22 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = [ISServerResponseParser sharedInstance];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 bannerProvidersConfig];
                    r0 = [r0 retain];
                    r22 = [r0 count];
                    [r0 release];
                    [r20 release];
                    if (r22 != 0x0) {
                            [r19 initBannerManager];
                    }
            }
    }
    else {
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)handleInitOfferwall {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 offerwallProductSettings];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [r19 didInitateAdUnit:@"offerwall"];
            [r22 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = [ISServerResponseParser sharedInstance];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 offerwallProvidersConfig];
                    r0 = [r0 retain];
                    r22 = [r0 count];
                    [r0 release];
                    [r20 release];
                    if (r22 != 0x0) {
                            [r19 initOfferwallManager];
                    }
            }
            else {
                    if (*(int8_t *)(int64_t *)&r19->_offerwallAdded != 0x0) {
                            dispatch_async(*__dispatch_main_q, &var_58);
                    }
            }
    }
    else {
            [r22 release];
            [r21 release];
            if (*(int8_t *)(int64_t *)&r19->_offerwallAdded != 0x0) {
                    dispatch_async(*__dispatch_main_q, &var_58);
            }
    }
    return;
}

-(void)sendDecryptFailedEvent {
    if (*qword_1011dabb0 != -0x1) {
            dispatch_once(0x1011dabb0, 0x100e8b610);
    }
    return;
}

-(void *)configurationsNotValidError {
    r19 = [[NSString stringWithFormat:@"Configurations from IronSource server are not valid"] retain];
    r20 = [[ISError createError:0x1f5 withMessage:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)loadFromCache {
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
    r21 = self;
    r19 = [CacheInfo new];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(storage));
    r20 = [[*(r21 + r27) objectForKey:@"APP_KEY_FOR_GET_PROVIDERS_KEY"] retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r0 = *(r21 + r26);
    r0 = [r0 appKey];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
            r24 = @selector(isEqualToString:);
            r25 = [[*(r21 + r27) objectForKey:@"USER_ID_KEY"] retain];
            r0 = *(r21 + r26);
            r0 = [r0 userId];
            r29 = r29;
            r26 = [r0 retain];
            r24 = objc_msgSend(r25, r24);
            [r26 release];
            [r25 release];
            [r23 release];
            if (r24 != 0x0) {
                    [r19 setAppId:r20];
                    r21 = [[*(r21 + r27) objectForKey:@"GET_PROVIDERS_KEY"] retain];
                    [r19 setObject:r21];
                    [r21 release];
                    r21 = [r19 retain];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            [r23 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)saveToCache:(void *)arg2 appKey:(void *)arg3 userId:(void *)arg4 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(storage));
    r24 = *(self + r27);
    r26 = [arg4 retain];
    [r24 setObject:r22 forKey:@"GET_PROVIDERS_KEY"];
    [r22 release];
    [*(self + r27) setObject:arg4 forKey:@"USER_ID_KEY"];
    [r26 release];
    [*(self + r27) setObject:arg3 forKey:@"APP_KEY_FOR_GET_PROVIDERS_KEY"];
    [r23 release];
    [*(self + r27) save];
    return;
}

-(void)getProvidersFromServerWithCompletion:(void *)arg2 {
    r31 = r31 - 0x110;
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
    var_90 = [arg2 retain];
    [r20 setMediationSDKState:0x1];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r22 = [[*(r20 + r25) appKey] retain];
    r23 = [[NSString stringWithFormat:@"getting providers from server for App ID: %@"] retain];
    [r22 release];
    r0 = [ISLoggerManager sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_88 = r23;
    [r0 log:r23 level:0x0 tag:0x6];
    [r0 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
    if (*(r20 + r21) == 0x0) {
            r0 = [NSOperationQueue alloc];
            r0 = [r0 init];
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
    }
    var_A0 = r21;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_serverBaseUrl));
    var_98 = [[NSString stringWithFormat:@"%@%@%@"] retain];
    r22 = @class(ISUtils);
    r19 = [[*(r20 + r25) appKey] retain];
    r22 = [[r22 URLEncodedString:r19] retain];
    r24 = @class(ISUtils);
    r0 = *(r20 + r25);
    r0 = [r0 userId];
    r0 = [r0 retain];
    var_B0 = r25;
    r27 = [[r24 URLEncodedString:r0] retain];
    r24 = @class(ISUtils);
    r28 = [[ISHelpers deviceType] retain];
    r23 = [[r24 URLEncodedString:r28] retain];
    r21 = [[NSMutableString stringWithFormat:@"%@=%@&%@=%@&%@=%@"] retain];
    [r23 release];
    [r28 release];
    [r27 release];
    r26 = r21;
    [r0 release];
    [r22 release];
    [r19 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_serr));
    r19 = *(r20 + r22);
    r0 = @(0x0);
    r29 = r29;
    r21 = [r0 retain];
    r19 = [r19 isEqualToNumber:r21];
    [r21 release];
    if (r19 != 0x0) {
            [r26 appendFormat:@"&%@=%@"];
    }
    r22 = var_B0;
    r0 = *(r20 + r22);
    r0 = [r0 plugin];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r28 = @selector(URLEncodedString:);
    if (r0 != 0x0) {
            r19 = [[*(r20 + r22) plugin] retain];
            r0 = objc_msgSend(@class(ISUtils), r28);
            r29 = r29;
            r21 = [r0 retain];
            [r26 appendFormat:@"&%@=%@"];
            [r21 release];
            [r19 release];
    }
    r0 = *(r20 + r22);
    r0 = [r0 pluginVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [[*(r20 + r22) pluginVersion] retain];
            r0 = objc_msgSend(@class(ISUtils), r28);
            r29 = r29;
            r21 = [r0 retain];
            [r26 appendFormat:@"&%@=%@"];
            [r21 release];
            [r19 release];
    }
    r0 = *(r20 + r22);
    r0 = [r0 pluginFrameworkVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [[*(r20 + r22) pluginFrameworkVersion] retain];
            r0 = objc_msgSend(@class(ISUtils), r28);
            r29 = r29;
            r21 = [r0 retain];
            [r26 appendFormat:@"&%@=%@"];
            [r21 release];
            [r19 release];
    }
    r0 = [r20 getAdvertiserIdInternal];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [r26 appendFormat:@"&%@=%@"];
    }
    var_B0 = r19;
    r0 = [r20 parseMandatoryParamsToURL];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 length] != 0x0) {
            [r26 appendFormat:@"%@"];
    }
    r19 = @selector(length);
    var_B8 = r21;
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 segment] retain];
    r0 = [r20 parseSegmentToUrl:r22];
    r29 = r29;
    r24 = [r0 retain];
    [r22 release];
    [r21 release];
    if (objc_msgSend(r24, r19) != 0x0) {
            [r26 appendFormat:@"%@"];
    }
    r19 = [[r26 dataUsingEncoding:0x4] retain];
    r22 = [[NSString stringWithFormat:r2] retain];
    r21 = [[r19 ISAES256EncryptWithKey:r22] retain];
    [r22 release];
    r22 = [[r21 base64EncodedStringWithOptions:0x0] retain];
    r25 = [objc_msgSend(@class(ISUtils), r28) retain];
    r23 = [[NSString stringWithFormat:r2] retain];
    r0 = [NSURLRequest alloc];
    var_A8 = r26;
    r27 = [[NSURL URLWithString:r23] retain];
    r26 = [r0 initWithURL:r27 cachePolicy:0x1 timeoutInterval:0x6];
    [r27 release];
    r27 = *(r20 + var_A0);
    r28 = [var_90 retain];
    [NSURLConnection sendAsynchronousRequest:r26 queue:r27 completionHandler:&var_80];
    [var_90 release];
    [r28 release];
    [r26 release];
    [r23 release];
    [r25 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [r24 release];
    [var_B8 release];
    [var_B0 release];
    [var_A8 release];
    [var_98 release];
    [var_88 release];
    return;
}

-(bool)isValidApplicationKey {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r0 = *(r19 + r23);
    r0 = [r0 appKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    r0 = [ISUtils checkLengthWithVal:r22 minLength:0x5 maxLength:0xa];
    if (r0 != 0x0) {
            r19 = [[*(r19 + r23) appKey] retain];
            r20 = [ISUtils checkRegWithVal:r19 pattern:@"^[0-9a-zA-Z]+$"];
            [r19 release];
            r0 = r20;
    }
    return r0;
}

-(void)onTick60Secs:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self reportInitialAvailabilityFalseWithReason:@"No internet connection"];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_countDownTimer60Secs));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)onTick15Secs:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self serverErrorLoadIsFailed];
    *(int8_t *)(int64_t *)&r19->_isRetryForMoreThan15Secs = 0x1;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_countDownTimer15Secs));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)onRetry:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int32_t *)(int64_t *)&r19->_retryCounter < *(int32_t *)(int64_t *)&r19->_retryGrowLimit) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_retryInterval));
            *(int32_t *)(r19 + r8) = *(int32_t *)(r19 + r8) << 0x1;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_retryTimer));
    [*(r19 + r20) invalidate];
    r0 = *(r19 + r20);
    *(r19 + r20) = 0x0;
    [r0 release];
    [r19 initFromServer];
    return;
}

-(void)sendInititateMediationSDKEventForAdUnits:(void *)arg2 internal:(bool)arg3 isDemandOnly:(bool)arg4 {
    r31 = r31 - 0x160;
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
    r25 = arg4;
    r22 = [arg2 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_initCounter));
    *(int32_t *)(self + r20) = *(int32_t *)(self + r20) + 0x1;
    r0 = [NSMutableDictionary dictionary];
    r0 = [r0 retain];
    r24 = r0;
    [r0 setObject:*0x100e8cd00 forKey:@"provider"];
    r20 = @selector(numberWithInt:);
    r0 = objc_msgSend(@class(NSNumber), r20);
    r29 = &saved_fp;
    r21 = [r0 retain];
    r28 = r24;
    [r24 setObject:r21 forKey:@"sessionDepth"];
    [r21 release];
    if ((arg3 & 0x1) != 0x0) goto loc_1006bedd8;

loc_1006bec3c:
    var_140 = @selector(numberWithInt:);
    var_134 = r25;
    var_108 = q0;
    var_130 = r22;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r27 = objc_msgSend(r0, r1);
    if (r27 == 0x0) goto loc_1006bedc0;

loc_1006bec88:
    r22 = *var_108;
    r26 = @"interstitial";
    goto loc_1006beca0;

loc_1006beca0:
    r20 = 0x0;
    goto loc_1006becac;

loc_1006becac:
    if (*var_108 != r22) {
            objc_enumerationMutation(var_120);
    }
    r19 = *(var_110 + r20 * 0x8);
    if ([r19 caseInsensitiveCompare:r2] == 0x0) goto loc_1006bed44;

loc_1006bece4:
    r24 = r26;
    if ([r19 caseInsensitiveCompare:r2] == 0x0) goto loc_1006bed60;

loc_1006becfc:
    if ([r19 caseInsensitiveCompare:r2] == 0x0) goto loc_1006bed80;

loc_1006bed10:
    if ([r19 caseInsensitiveCompare:r2] != 0x0) goto loc_1006bed98;

loc_1006bed28:
    r0 = r28;
    goto loc_1006bed94;

loc_1006bed94:
    [r0 setObject:r2 forKey:r3];
    goto loc_1006bed98;

loc_1006bed98:
    r20 = r20 + 0x1;
    if (r20 < r27) goto loc_1006becac;

loc_1006beda4:
    r27 = objc_msgSend(var_120, var_128);
    if (r27 != 0x0) goto loc_1006beca0;

loc_1006bedc0:
    [var_120 release];
    r22 = var_130;
    r25 = var_134;
    r20 = var_140;
    goto loc_1006bedd8;

loc_1006bedd8:
    if (r25 != 0x0) {
            [r28 setObject:@"true" forKey:@"networkInstance"];
    }
    var_58 = **___stack_chk_guard;
    r19 = [ISEventData alloc];
    r21 = [objc_msgSend(@class(NSNumber), r20) retain];
    r19 = [r19 initWithEventId:r21 andAdditionData:r28];
    [r21 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r19];
    [r0 release];
    [r19 release];
    [r28 release];
    [r22 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006bed80:
    r0 = r28;
    goto loc_1006bed94;

loc_1006bed60:
    [r28 setObject:@"true" forKey:r24];
    r26 = r24;
    goto loc_1006bed98;

loc_1006bed44:
    r0 = r28;
    goto loc_1006bed94;
}

-(void *)showErrorMessage:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(self + sign_extend_64(*(int32_t *)ivar_offset(_mediationSDKState))) == 0x3) {
            r0 = [NSString stringWithFormat:r2];
    }
    else {
            r0 = [NSString stringWithFormat:r2];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)reportMediationAvailabilityFalseWithReason:(void *)arg2 forAdUnits:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if ([r0 containsObject:r2] != 0x0) {
            r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
            r0 = [r0 retain];
            [r0 rewardedVideoHasChangedAvailability:0x0];
            [r0 release];
            r23 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:@"Rewarded Video availability false - %@"];
            r29 = r29;
            r24 = [r0 retain];
            [r23 log:r24 level:0x1 tag:0x1];
            [r24 release];
            [r23 release];
    }
    if (([r20 containsObject:r2] & 0x1) != 0x0) {
            [r21->_offerwallDelegate offerwallHasChangedAvailability:0x0];
            r24 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:@"Offerwall availability false - %@"];
            r29 = r29;
            [r0 retain];
            [r24 log:r2 level:r3 tag:r4];
            [r25 release];
            [r24 release];
    }
    [[NSString stringWithFormat:@"Mediation availability false - %@"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r2 level:r3 tag:r4];
    [r21 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)notifySegmentReceived:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_segmentDelegate));
    r0 = *(r20 + r22);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(didReceiveSegement:)] != 0x0) {
            [*(r20 + r22) didReceiveSegement:r19];
            r20 = [[ISLoggerManager sharedInstance] retain];
            r21 = [[NSString stringWithFormat:@"didReceiveSegement: %@"] retain];
            [r20 log:r21 level:0x1 tag:0x1];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)parseMandatoryParamsToURL {
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
    r19 = [[NSMutableString string] retain];
    r20 = [[SSEDeviceContext defaultDeviceContext] retain];
    r0 = [ISUtils getAppVersion];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [r19 appendFormat:r2];
    }
    [r19 appendFormat:r2];
    [[r20 deviceOSVersion] retain];
    objc_msgSend(r19, r22);
    [r24 release];
    [[r20 deviceModel] retain];
    objc_msgSend(r19, r22);
    [r24 release];
    [[r20 deviceOEM] retain];
    objc_msgSend(r19, r22);
    [r24 release];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r0 = [r0 getReachabilityObject];
    r0 = [r0 retain];
    [[r0 currentReachabilityString] retain];
    objc_msgSend(r19, r22);
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r23 = [[r0 mediationType] retain];
    [r0 release];
    if (r23 != 0x0 && [r23 length] != 0x0) {
            [r19 appendFormat:r2];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setMediationSDKState:(long long)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediationSDKState));
    if (*(r19 + r8) != r20) {
            *(r19 + r8) = r20;
            r0 = [NSArray arrayWithObjects:&var_58 count:0x4];
            r0 = [r0 retain];
            r23 = [[r0 objectAtIndex:r20] retain];
            r21 = [[NSString stringWithFormat:@"The Mediation SDK has changed its state to %@ "] retain];
            [r23 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x0 tag:0x6];
            [r0 release];
            if (r20 == 0x2) {
                    [r19 serverErrorLoadIsFailed];
            }
            [r21 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleParseSegment {
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
    r21 = self;
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 segmentName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    [r23 release];
    if (r25 != 0x0) {
            r0 = [ISServerResponseParser sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 segmentName];
            r29 = r29;
            r22 = [r0 retain];
            [r21 notifySegmentReceived:r22];
            [r22 release];
            [r23 release];
    }
    r20 = @selector(length);
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 segmentId];
    r29 = r29;
    r0 = [r0 retain];
    r20 = objc_msgSend(r0, r20);
    [r0 release];
    [r22 release];
    if (r20 != 0x0) {
            r20 = [[ISConfigurations getConfigurations] retain];
            r0 = @class(ISServerResponseParser);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 segmentId];
            r29 = r29;
            r21 = [r0 retain];
            [r20 setSegmentId:r21];
            [r21 release];
            [r22 release];
            [r20 release];
    }
    r0 = [ISServerResponseParser sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 customSegmentParams];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    [r21 release];
    if (r23 != 0x0) {
            r21 = [[ISConfigurations getConfigurations] retain];
            r0 = @class(ISServerResponseParser);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r20 = [[r0 customSegmentParams] retain];
            [r21 setCustomSegmentParams:r20];
            [r20 release];
            [r0 release];
            [r21 release];
    }
    return;
}

-(void)initRewardedVideoManager {
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    sub_1006df8e4(r0, &var_38);
    [r20 release];
    return;
}

-(void *)parseSegmentToUrl:(void *)arg2 {
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
    r25 = [arg2 retain];
    if (r25 != 0x0) {
            r0 = [NSMutableString string];
            r29 = r29;
            r28 = [r0 retain];
            if ([r25 age] >= 0x1) {
                    [r25 age];
                    [r28 appendFormat:@"&%@=%d"];
            }
            if ([r25 level] >= 0x1) {
                    [r25 level];
                    [r28 appendFormat:@"&%@=%d"];
            }
            [r25 iapTotal];
            if (d0 > 0x0) {
                    [r25 iapTotal];
                    [r28 appendFormat:@"&%@=%.02f"];
            }
            if ([r25 gender] != 0x0) {
                    r22 = [[NSArray arrayWithObjects:r29 - 0x70 count:0x3] retain];
                    r0 = [r22 objectAtIndex:[r25 gender]];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r28 appendFormat:@"&%@=%@"];
                    [r21 release];
                    [r22 release];
            }
            r0 = [r25 isUserPaying];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 length];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r25 isUserPaying];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r28 appendFormat:@"&%@=%@"];
                    [r22 release];
            }
            r0 = [r25 userCreationDate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = @class(NSString);
                    r24 = @class(NSNumber);
                    r0 = [r25 userCreationDate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 timeIntervalSince1970];
                    asm { frintp     d0, d0 };
                    r0 = [r24 numberWithDouble:r2];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 longLongValue];
                    r0 = [r23 stringWithFormat:@"%lld"];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r28 appendFormat:@"&%@=%@"];
                    [r23 release];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(length);
            r0 = [r25 segmentName];
            r29 = r29;
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r21);
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r25 segmentName];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r28 appendFormat:@"&%@=%@"];
                    [r21 release];
            }
            var_120 = q0;
            r0 = [r25 customKeys];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_148 = r1;
            var_140 = r0;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r20 = *var_120;
                    do {
                            r22 = 0x0;
                            do {
                                    r21 = r28;
                                    if (*var_120 != r20) {
                                            objc_enumerationMutation(var_140);
                                    }
                                    r28 = *(var_128 + r22 * 0x8);
                                    r0 = [r25 customKeys];
                                    r0 = [r0 retain];
                                    r0 = [r0 objectForKey:r28];
                                    r29 = r29;
                                    [r0 retain];
                                    r28 = r21;
                                    [r28 appendFormat:r2];
                                    [r19 release];
                                    [r23 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r24);
                            r24 = objc_msgSend(var_140, var_148);
                    } while (r24 != 0x0);
            }
            [var_140 release];
    }
    else {
            r28 = @"";
            [r28 retain];
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r28 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)initInterstitialManager {
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    sub_1006df8e4(r0, &var_38);
    [r20 release];
    return;
}

-(void)initOfferwallManager {
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    sub_1006df8e4(r0, &var_38);
    [r20 release];
    return;
}

-(void)initBannerManager {
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    sub_1006df8e4(r0, &var_38);
    [r20 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 {
    [self showRewardedVideoWithViewController:arg2 placement:0x0];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 {
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
    if (([r21->_rvDemandOnlyModeHelper validateMediationMode:@"showRewardedVideoWithViewController"] & 0x1) != 0x0) {
            r0 = r21->_rewardedVideoManager;
            if (r0 != 0x0) {
                    [r0 showRewardedVideoWithViewController:r19 placement:r20];
            }
            else {
                    r23 = [[r21 showErrorMessage:@"Rewarded Video"] retain];
                    r22 = [[ISError createError:0x1fc withMessage:r23] retain];
                    [r23 release];
                    r0 = objc_initWeak(&stack[-72], r21);
                    [r0 retain];
                    [r21 notifyValidDelegatesWithShowFailResponse:r21 error:r22 fromProduct:*0x100e8ccc0];
                    [r21 release];
                    objc_destroyWeak(&stack[-72]);
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
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
    r21 = [arg4 retain];
    if (([r22->_rvDemandOnlyModeHelper validateDemandOnlyMode:@"showRewardedVideoWithViewController:instanceId"] & 0x1) != 0x0) {
            r0 = r22->_rewardedVideoManager;
            if (r0 != 0x0) {
                    [r0 showRewardedVideoWithViewController:r19 placement:r20 instanceId:r21];
            }
            else {
                    r22 = [[ISError createError:0x1fc withMessage:@"showRewardedVideoWithViewController cannot be called before Init is complete"] retain];
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 logFromError:r22 level:0x1 tag:0x1];
                    [r0 release];
                    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
                    r0 = [r0 retain];
                    [r0 rewardedVideoDidFailToShowWithError:r22 instanceId:r21];
                    [r0 release];
                    [r22 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasRewardedVideo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20->_rvDemandOnlyModeHelper validateDemandOnlyMode:@"hasRewardedVideo:instanceId"] & 0x1) == 0x0) goto loc_1006c1910;

loc_1006c1874:
    r0 = r20->_rewardedVideoManager;
    if (r0 == 0x0) goto loc_1006c189c;

loc_1006c1884:
    r20 = [r0 hasAvailableAds:r19];
    goto loc_1006c1914;

loc_1006c1914:
    [r19 release];
    r0 = r20 & 0x1;
    return r0;

loc_1006c189c:
    r20 = [[ISError createError:0x1fc withMessage:@"hasRewardedVideo:instanceId cannot be called before Init is complete"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r20 level:0x3 tag:0x0];
    [r0 release];
    [r20 release];
    goto loc_1006c1910;

loc_1006c1910:
    r20 = 0x0;
    goto loc_1006c1914;
}

-(bool)hasRewardedVideo {
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
    r20 = self;
    if ([r20->_rvDemandOnlyModeHelper validateMediationMode:@"hasRewardedVideo"] != 0x0) {
            r19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:*0x100e8cd00];
            if (r20->_rewardedVideoManager != 0x0) {
                    r21 = @"false";
                    r20 = [r20 isRewardedVideoAvailable];
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r21 = @"false";
                            }
                            else {
                                    r21 = @"true";
                            }
                    }
            }
            else {
                    r21 = @"false";
                    r20 = 0x0;
            }
            [r19 setObject:r21 forKey:@"status"];
            r23 = [ISEventData alloc];
            r24 = [[NSNumber alloc] initWithInt:0x12];
            r22 = [r23 initWithEventId:r24 andAdditionData:r19];
            [r24 release];
            r0 = [ISRewardedVideoEventsEngine sharedInstance];
            r0 = [r0 retain];
            [r0 logEvent:r22];
            [r0 release];
            r21 = [[NSString stringWithFormat:@"IronSource: hasRewardedVideo %@"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x1 tag:0x0];
            [r0 release];
            [r21 release];
            [r22 release];
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = r20 & 0x1;
    return r0;
}

-(bool)isRewardedVideoCappedForPlacement:(void *)arg2 {
    r0 = [self isRVPlacementCapped:arg2 sendEvent:0x1];
    return r0;
}

-(bool)isRVPlacementCapped:(void *)arg2 sendEvent:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_rewardedVideoManager;
    if (r0 != 0x0) {
            r21 = [r0 isRewardedVideoCappedForPlacement:r19];
            if (r22 != 0x0) {
                    [r20 sendIsCappedEvent:r21 forAdUnit:*0x100e8ccc0 placement:r19];
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)rewardedVideoPlacementInfo:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_rewardedVideoManager;
    r0 = [r0 placementForName:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r19 name] retain];
            r22 = [[NSString stringWithFormat:@"IronSource: rewardedVideoPlacementInfo %@ :"] retain];
            [r21 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r22 level:0x1 tag:0x0];
            [r0 release];
            r20 = [[r19 placementInfo] retain];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setRewardedVideoServerParameters:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 count] != 0x0) {
            r20 = [[NSString stringWithFormat:@"IronSource: setting RV server params %@"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x1 tag:0x0];
            [r0 release];
            r21 = [[ISConfigurations getConfigurations] retain];
            r22 = [r19 copy];
            [r21 setRvServerParams:r22];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)clearRewardedVideoServerParameters {
    r19 = [[NSString stringWithFormat:@"IronSource: clearing RV server params"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x0];
    [r0 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setRvServerParams:0x0];
    [r0 release];
    [r19 release];
    return;
}

-(void)showOfferwallWithViewController:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_offerwallManager;
    if (r0 != 0x0) {
            [r0 showOfferwallWithViewController:r19];
    }
    else {
            r22 = [[r20 showErrorMessage:@"Offerwall"] retain];
            r21 = [[ISError createError:0x1fc withMessage:r22] retain];
            [r22 release];
            r0 = objc_initWeak(&stack[-56], r20);
            [r0 retain];
            [r20 notifyValidDelegatesWithShowFailResponse:r20 error:r21 fromProduct:*0x100e8ccc8];
            [r20 release];
            objc_destroyWeak(&stack[-56]);
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)showOfferwallWithViewController:(void *)arg2 placement:(void *)arg3 {
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
    r0 = r21->_offerwallManager;
    if (r0 != 0x0) {
            [r0 showOfferwallWithViewController:r19 placement:r20];
    }
    else {
            r23 = [[r21 showErrorMessage:@"Offerwall"] retain];
            r22 = [[ISError createError:0x1fc withMessage:r23] retain];
            [r23 release];
            r0 = objc_initWeak(&stack[-72], r21);
            [r0 retain];
            [r21 notifyValidDelegatesWithShowFailResponse:r21 error:r22 fromProduct:*0x100e8ccc8];
            [r21 release];
            objc_destroyWeak(&stack[-72]);
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasOfferwall {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = self->_offerwallManager;
    if (r0 != 0x0) {
            r20 = @"false";
            r19 = [r0 hasOfferwall];
            if (r19 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r20 = @"false";
                    }
                    else {
                            r20 = @"true";
                    }
            }
    }
    else {
            r20 = @"false";
            r19 = 0x0;
    }
    r20 = [[NSString stringWithFormat:@"IronSource: hasOfferwall %@"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x0];
    [r0 release];
    [r20 release];
    r0 = r19 & 0x1;
    return r0;
}

-(void)offerwallCredits {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [@"IronSource: offerwallCredits" retain];
    r0 = [ISLoggerManager sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 log:@"IronSource: offerwallCredits" level:0x1 tag:0x0];
    [r0 release];
    r21 = r20->_offerwallManager;
    if (r21 != 0x0) {
            r20 = [[r20->_configuration userId] retain];
            [r21 getOfferWallCreditsWithUserId:r20];
            [r20 release];
    }
    [@"IronSource: offerwallCredits" release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20->_isDemandOnlyModeHelper validateMediationMode:@"showInterstitialWithViewController"] & 0x1) != 0x0) {
            r0 = r20->_interstitialManager;
            if (r0 != 0x0) {
                    [r0 showInterstitialWithViewController:r19 placement:0x0];
            }
            else {
                    r22 = [[r20 showErrorMessage:@"Interstitial"] retain];
                    r21 = [[ISError createError:0x1fc withMessage:r22] retain];
                    [r22 release];
                    r0 = objc_initWeak(&stack[-56], r20);
                    [r0 retain];
                    [r20 notifyValidDelegatesWithShowFailResponse:r20 error:r21 fromProduct:*0x100e8ccd0];
                    [r20 release];
                    objc_destroyWeak(&stack[-56]);
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 {
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
    r22 = _cmd;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21->_isDemandOnlyModeHelper validateMediationMode:@"showInterstitialWithViewController"] != 0x0) {
            if ([r20 length] == 0x0) {
                    r22 = [NSStringFromSelector(r22) retain];
                    r23 = [[NSString stringWithFormat:@"%@ was called with a nil or empty placement, so default placement will be used."] retain];
                    [r22 release];
                    r0 = [ISLoggerManager sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 log:r23 level:0x3 tag:0x0];
                    [r0 release];
                    [r23 release];
            }
            r0 = r21->_interstitialManager;
            if (r0 != 0x0) {
                    [r0 showInterstitialWithViewController:r19 placement:r20];
            }
            else {
                    r23 = [[r21 showErrorMessage:@"Interstitial"] retain];
                    r22 = [[ISError createError:0x1fc withMessage:r23] retain];
                    [r23 release];
                    r0 = objc_initWeak(&stack[-72], r21);
                    [r0 retain];
                    [r21 notifyValidDelegatesWithShowFailResponse:r21 error:r22 fromProduct:*0x100e8ccd0];
                    [r21 release];
                    objc_destroyWeak(&stack[-72]);
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
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
    r21 = [arg4 retain];
    if (([r22->_isDemandOnlyModeHelper validateDemandOnlyMode:@"showInterstitialWithViewController:instanceId"] & 0x1) != 0x0) {
            r0 = r22->_interstitialManager;
            if (r0 != 0x0) {
                    [r0 showInterstitialWithViewController:r19 placement:r20 instanceId:r21];
            }
            else {
                    r22 = [[ISError createError:0x1fc withMessage:@"showInterstitialWithViewController:instanceId cannot be called before Init had completed"] retain];
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 logFromError:r22 level:0x3 tag:0x0];
                    [r0 release];
                    r0 = [ISInterstitialDelegateWrapper sharedInstance];
                    r0 = [r0 retain];
                    [r0 interstitialDidFailToShowWithError:r22 instanceId:r21];
                    [r0 release];
                    [r22 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadInterstitial {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([r19->_isDemandOnlyModeHelper validateMediationMode:@"loadInterstitial"] & 0x1) == 0x0) goto .l1;

loc_1006c2a04:
    if (*(int8_t *)(int64_t *)&r19->_interstitialInitRequested == 0x0) goto loc_1006c2a34;

loc_1006c2a14:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediationSDKState));
    r8 = *(r19 + r8);
    if (r8 == 0x2) goto loc_1006c2b2c;

loc_1006c2a28:
    if (r8 == 0x1) goto loc_1006c2a78;

loc_1006c2a30:
    if (r8 != 0x0) goto loc_1006c2be8;

loc_1006c2a34:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"loadInterstitial cannot be called before Init" level:0x3 tag:0x0];
    r0 = r0;
    goto loc_1006c2bd8;

loc_1006c2bd8:
    [r0 release];
    return;

.l1:
    return;

loc_1006c2be8:
    r0 = r19->_interstitialManager;
    if (r0 != 0x0) {
            [r0 loadInterstitial];
    }
    else {
            *(int8_t *)(int64_t *)&r19->_didCallLoadBeforeResponse = 0x1;
    }
    return;

loc_1006c2a78:
    if (*(int8_t *)(int64_t *)&r19->_isRetryForMoreThan15Secs == 0x0) goto loc_1006c2c08;

loc_1006c2a88:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"Load Interstitial Fail - Adapters are out of reach" level:0x3 tag:0x0];
    [r0 release];
    r20 = [[ISError createError:0x1fc withMessage:@"Load Interstitial Fail - Adapters are out of reach"] retain];
    r0 = [ISDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 interstitialDidFailToLoadWithError:r20];
    goto loc_1006c2bcc;

loc_1006c2bcc:
    [r19 release];
    r0 = r20;
    goto loc_1006c2bd8;

loc_1006c2c08:
    *(int8_t *)(int64_t *)&r19->_didCallLoadBeforeResponse = 0x1;
    return;

loc_1006c2b2c:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"Load Interstitial Fail - init() had failed" level:0x3 tag:0x0];
    [r0 release];
    r20 = [[ISError createError:0x1fc withMessage:@"Interstitial - init() had failed"] retain];
    r0 = [ISDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 interstitialDidFailToLoadWithError:r20];
    goto loc_1006c2bcc;
}

-(void)loadInterstitial:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialInstanceIds));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (([r21->_isDemandOnlyModeHelper validateDemandOnlyMode:@"loadInterstitial:instanceId"] & 0x1) == 0x0) goto loc_1006c2f88;

loc_1006c2da8:
    if (*(int8_t *)(int64_t *)&r21->_interstitialInitRequested == 0x0) goto loc_1006c2dd8;

loc_1006c2db8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediationSDKState));
    r8 = *(r21 + r8);
    if (r8 == 0x2) goto loc_1006c2ed4;

loc_1006c2dcc:
    if (r8 == 0x1) goto loc_1006c2e1c;

loc_1006c2dd4:
    if (r8 != 0x0) goto loc_1006c2fb0;

loc_1006c2dd8:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"loadInterstitial:instanceId cannot be called before Init" level:0x3 tag:0x0];
    r0 = r0;
    goto loc_1006c2f84;

loc_1006c2f84:
    [r0 release];
    goto loc_1006c2f88;

loc_1006c2f88:
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;

loc_1006c2fb0:
    r0 = r21->_interstitialManager;
    if (r0 != 0x0) {
            [r0 loadInterstitial:r19];
    }
    else {
            [*(r21 + r22) addObject:r2];
    }
    goto loc_1006c2f88;

loc_1006c2e1c:
    if (*(int8_t *)(int64_t *)&r21->_isRetryForMoreThan15Secs == 0x0) goto loc_1006c2fd4;

loc_1006c2e2c:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"loadInterstitial:instanceId Fail - Adapters are out of reach" level:0x3 tag:0x0];
    [r0 release];
    r22 = [[ISError createError:0x1fc withMessage:@"Load Interstitial Fail - Adapters are out of reach"] retain];
    r0 = [ISDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    [r0 interstitialDidFailToLoadWithError:r22 instanceId:r19];
    goto loc_1006c2f78;

loc_1006c2f78:
    [r21 release];
    r0 = r22;
    goto loc_1006c2f84;

loc_1006c2fd4:
    [*(r21 + r22) addObject:r2];
    goto loc_1006c2f88;

loc_1006c2ed4:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"loadInterstitial:instanceId Fail - init() had failed" level:0x3 tag:0x0];
    [r0 release];
    r22 = [[ISError createError:0x1fc withMessage:@"Interstitial - init() had failed"] retain];
    r0 = [ISDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    [r0 interstitialDidFailToLoadWithError:r22 instanceId:r19];
    goto loc_1006c2f78;
}

-(bool)hasInterstitial:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20->_isDemandOnlyModeHelper validateDemandOnlyMode:@"hasInterstitial:instanceId"] & 0x1) == 0x0) goto loc_1006c3470;

loc_1006c3404:
    r0 = r20->_interstitialManager;
    if (r0 == 0x0) goto loc_1006c342c;

loc_1006c3414:
    r20 = [r0 hasInterstitial:r19];
    goto loc_1006c3474;

loc_1006c3474:
    [r19 release];
    r0 = r20 & 0x1;
    return r0;

loc_1006c342c:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"hasInterstitial:instanceId cannot be called before Init is complete" level:0x3 tag:0x0];
    [r0 release];
    goto loc_1006c3470;

loc_1006c3470:
    r20 = 0x0;
    goto loc_1006c3474;
}

-(bool)hasInterstitial {
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
    r20 = self;
    if ([r20->_isDemandOnlyModeHelper validateMediationMode:@"hasInterstitial"] != 0x0) {
            r19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:*0x100e8cd00];
            r0 = r20->_interstitialManager;
            if (r0 != 0x0) {
                    r21 = @"false";
                    r20 = [r0 hasInterstitial];
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r21 = @"false";
                            }
                            else {
                                    r21 = @"true";
                            }
                    }
            }
            else {
                    r21 = @"false";
                    r20 = 0x0;
            }
            [r19 setObject:r21 forKey:@"status"];
            r23 = [ISEventData alloc];
            r24 = [[NSNumber alloc] initWithInt:0x1e];
            r22 = [r23 initWithEventId:r24 andAdditionData:r19];
            [r24 release];
            r0 = [ISInterstitialEventsEngine sharedInstance];
            r0 = [r0 retain];
            [r0 logEvent:r22];
            [r0 release];
            r21 = [[NSString stringWithFormat:@"IronSource: hasInterstitial %@"] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x1 tag:0x0];
            [r0 release];
            [r21 release];
            [r22 release];
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = r20 & 0x1;
    return r0;
}

-(bool)isInterstitialCappedForPlacement:(void *)arg2 {
    r0 = [self isISPlacementCapped:arg2 sendEvent:0x1];
    return r0;
}

-(bool)isISPlacementCapped:(void *)arg2 sendEvent:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_interstitialManager;
    if (r0 != 0x0) {
            r21 = [r0 isInterstitialCappedForPlacement:r19];
            if (r22 != 0x0) {
                    [r20 sendIsCappedEvent:r21 forAdUnit:*0x100e8ccd0 placement:r19];
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadBannerWithViewController:r21 size:arg3 placement:0x0];
    [r21 release];
    return;
}

-(void)destroyBanner:(void *)arg2 {
    [self->_bannerManager destroyBanner:arg2];
    return;
}

-(bool)isBannerCappedForPlacement:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 isPlacementCappedBN:r21];
    [r21 release];
    if (r20 != 0x4) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)advertiserId {
    r0 = [self getAdvertiserId];
    return r0;
}

-(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 placement:(void *)arg4 {
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
    r22 = arg4;
    r24 = arg3;
    r25 = arg2;
    r23 = self;
    r19 = [r25 retain];
    r20 = [r24 retain];
    r21 = [r22 retain];
    if (*(int8_t *)(int64_t *)&r23->_bannerInitRequested == 0x0) goto loc_1006c37b8;

loc_1006c366c:
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_mediationSDKState));
    if (*(r23 + r28) == 0x0) goto loc_1006c37b8;

loc_1006c367c:
    if (r20 == 0x0) goto loc_1006c3830;

loc_1006c3680:
    r0 = [r20 sizeDescription];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 isEqualToString:r2];
    [r0 release];
    if (r27 == 0x0 || [r20 height] >= 0x1 && [r20 width] > 0x0) goto loc_1006c36f0;

loc_1006c3870:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"loadBannerWithViewController: Unsupported banner size. Height and width must be bigger than 0" level:0x3 tag:0x0];
    [r0 release];
    r23 = [[ISError createError:0x267 withMessage:@"unsupported banner size"] retain];
    r0 = [BannerDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 bannerDidFailToLoadWithError:r23];
    goto loc_1006c39b4;

loc_1006c39b4:
    [r22 release];
    r0 = r23;
    goto loc_1006c37f8;

loc_1006c37f8:
    [r0 release];
    goto loc_1006c37fc;

loc_1006c37fc:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1006c36f0:
    r8 = *(r23 + r28);
    if (r8 == 0x2) goto loc_1006c3914;

loc_1006c36fc:
    if (r8 != 0x1) goto loc_1006c39c4;

loc_1006c3704:
    if (*(int8_t *)(int64_t *)&r23->_isRetryForMoreThan15Secs == 0x0) goto loc_1006c39f0;

loc_1006c3714:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"Load Banner Fail - Adapters are out of reach" level:0x3 tag:0x0];
    [r0 release];
    r23 = [[ISError createError:0x259 withMessage:@"Init had failed"] retain];
    r0 = [BannerDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 bannerDidFailToLoadWithError:r23];
    goto loc_1006c39b4;

loc_1006c39f0:
    *(int8_t *)(int64_t *)&r23->_didCallLoadBannerBeforeResponse = 0x1;
    objc_storeStrong((int64_t *)&r23->_bannerToLoadViewController, r25);
    objc_storeStrong((int64_t *)&r23->_bannerToLoadSize, r24);
    objc_storeStrong((int64_t *)&r23->_bannerToLoadPlacementName, r22);
    goto loc_1006c37fc;

loc_1006c39c4:
    r0 = r23->_bannerManager;
    if (r0 != 0x0) {
            [r0 loadBannerWithViewController:r19 size:r20 placementName:r21];
    }
    else {
            *(int8_t *)(int64_t *)&r23->_didCallLoadBannerBeforeResponse = 0x1;
            objc_storeStrong((int64_t *)&r23->_bannerToLoadViewController, r25);
            objc_storeStrong((int64_t *)&r23->_bannerToLoadSize, r24);
            objc_storeStrong((int64_t *)&r23->_bannerToLoadPlacementName, r22);
    }
    goto loc_1006c37fc;

loc_1006c3914:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:@"Load Banner Fail - init() had failed" level:0x3 tag:0x0];
    [r0 release];
    r23 = [[ISError createError:0x258 withMessage:@"init() had failed"] retain];
    r0 = [BannerDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 bannerDidFailToLoadWithError:r23];
    goto loc_1006c39b4;

loc_1006c3830:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 log:@"loadBannerWithViewController size is nil" level:0x3 tag:0x0];
    goto loc_1006c37f4;

loc_1006c37f4:
    r0 = r22;
    goto loc_1006c37f8;

loc_1006c37b8:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 log:@"loadBannerWithViewController cannot be called before init" level:0x3 tag:0x0];
    goto loc_1006c37f4;
}

-(void)sendIsCappedEvent:(bool)arg2 forAdUnit:(void *)arg3 placement:(void *)arg4 {
    r31 = r31 - 0xc0;
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
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if (arg2 == 0x0) goto loc_1006c3f38;

loc_1006c3c88:
    r23 = [@(0x1) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 mutableCopy];
    [r0 release];
    [r23 release];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006c3e20;

loc_1006c3d50:
    if ([r22->_rvDemandOnlyModeHelper isDemandOnlyMode] != 0x0) {
            [r21 setValue:@"true" forKey:@"networkInstance"];
    }
    r22 = [ISEventData alloc];
    r23 = [@(0x14) retain];
    r24 = [r21 copy];
    r22 = [r22 initWithEventId:r23 andAdditionData:r24];
    [r24 release];
    [r23 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    goto loc_1006c3f08;

loc_1006c3f08:
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    goto loc_1006c3f30;

loc_1006c3f30:
    [r21 release];
    goto loc_1006c3f38;

loc_1006c3f38:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006c3e20:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006c3f30;

loc_1006c3e3c:
    if ([r22->_isDemandOnlyModeHelper isDemandOnlyMode] != 0x0) {
            [r21 setValue:@"true" forKey:@"networkInstance"];
    }
    r22 = [ISEventData alloc];
    r23 = [@(0x22) retain];
    r24 = [r21 copy];
    r22 = [r22 initWithEventId:r23 andAdditionData:r24];
    [r24 release];
    [r23 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    goto loc_1006c3f08;
}

-(void *)getAdvertiserIdInternal {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getAdvertiserId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] == 0x0) {
            r0 = [SSEDeviceStatus alloc];
            r0 = [r0 init];
            r21 = [[r0 customUUID] retain];
            [r19 release];
            [r0 release];
            r19 = r21;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getAdvertiserId {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [SSEDeviceStatus alloc];
    r0 = [r0 init];
    r19 = r0;
    r20 = [[r0 advertiserId] retain];
    r0 = [r19 vendorId];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (([r19 isAdvertisingTrackingEnabled] & 0x1) == 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 compare:@"10.0" options:0x40];
            [r0 release];
            [r22 release];
            if (r24 != -0x1) {
                    if (r21 != 0x0) {
                            r23 = [[NSString stringWithFormat:@"IDFA No available, only IDFV %@"] retain];
                            r0 = [ISLoggerManager sharedInstance];
                            r0 = [r0 retain];
                            [r0 log:r23 level:0x1 tag:0x6];
                            [r0 release];
                            r22 = [r21 retain];
                            [r23 release];
                    }
                    else {
                            r22 = @"";
                            [r22 retain];
                    }
            }
            else {
                    r22 = [r20 retain];
            }
    }
    else {
            r22 = [r20 retain];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)reachabilityChanged:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 currentReachabilityStatus];
    r21 = [[ISLoggerManager sharedInstance] retain];
    r22 = [[NSString stringWithFormat:@"reachabilityChanged"] retain];
    [r21 log:r22 level:0x1 tag:0x4];
    [r22 release];
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_netStatus));
    if (r20 != *(r19 + r8)) {
            *(r19 + r8) = r20;
            if (r20 != 0x0 && r19->_mediationSDKState <= 0x2) {
                    *(int8_t *)(int64_t *)&r19->_shouldSendLoadBannerFailedEvent = 0x1;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_countDownTimer60Secs));
                    r0 = *(r19 + r20);
                    if (r0 != 0x0) {
                            [r0 invalidate];
                            r0 = *(r19 + r20);
                            *(r19 + r20) = 0x0;
                            [r0 release];
                    }
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_countDownTimer15Secs));
                    r0 = *(r19 + r20);
                    if (r0 != 0x0) {
                            [r0 invalidate];
                            r0 = *(r19 + r20);
                            *(r19 + r20) = 0x0;
                            [r0 release];
                    }
                    *(int8_t *)(int64_t *)&r19->_didRevive = 0x1;
                    [r19 initFromServer];
            }
    }
    return;
}

-(void)notifyValidDelegatesWithShowFailResponse:(void *)arg2 error:(void *)arg3 fromProduct:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r19 = [arg3 retain];
    r0 = [arg4 retain];
    r20 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1006c4500;

loc_1006c4494:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r19 level:0x1 tag:0x1];
    [r0 release];
    r21 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r1 = @selector(rewardedVideoDidFailToShowWithError:);
    goto loc_1006c46cc;

loc_1006c46cc:
    objc_msgSend(r21, r1);
    r0 = r21;
    goto loc_1006c46dc;

loc_1006c46dc:
    [r0 release];
    goto loc_1006c46e0;

loc_1006c46e0:
    [r20 release];
    [r19 release];
    return;

loc_1006c4500:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_offerwallDelegate));
    r0 = *(r21 + r23);
    if ([r20 isEqualToString:r2] == 0x0 || r0 == 0x0 || [r0 respondsToSelector:@selector(offerwallDidFailToShowWithError:)] == 0x0) goto loc_1006c4648;

loc_1006c4544:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r19 level:0x1 tag:0x1];
    [r0 release];
    r0 = [ISOfferwallManager new];
    [r0 setDelegate:*(r21 + r23)];
    r21 = [[NSOperationQueue mainQueue] retain];
    r22 = [r0 retain];
    var_38 = [r19 retain];
    [r21 addOperationWithBlock:&var_60];
    [r21 release];
    [var_38 release];
    [r22 release];
    r0 = r22;
    goto loc_1006c46dc;

loc_1006c4648:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1006c46e0;

loc_1006c4664:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r19 level:0x1 tag:0x1];
    [r0 release];
    r21 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r1 = @selector(interstitialDidFailToShowWithError:);
    goto loc_1006c46cc;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void)setConsent:(bool)arg2 {
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
    r19 = arg2;
    r20 = self;
    *(int8_t *)(int64_t *)&r20->_didSetConsent = 0x1;
    r8 = @"false";
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"false";
            }
            else {
                    r8 = @"true";
            }
    }
    if (CPU_FLAGS & E) {
            asm { cinc       x25, x8, eq };
    }
    r21 = [[NSString stringWithFormat:r2] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x0];
    [r0 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    [r0 setConsent:r19];
    [r0 release];
    r0 = [NSMutableDictionary dictionary];
    r0 = [r0 retain];
    r23 = r0;
    [r0 setObject:*0x100e8cd00 forKey:@"provider"];
    r26 = [ISEventData alloc];
    r27 = [[NSNumber numberWithInteger:r25] retain];
    r25 = [r26 initWithEventId:r27 andAdditionData:r23];
    [r27 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r25];
    [r0 release];
    r0 = r20->_rewardedVideoManager;
    if (r0 != 0x0) {
            [r0 setConsent:r19];
    }
    r0 = r20->_interstitialManager;
    if (r0 != 0x0) {
            [r0 setConsent:r19];
    }
    r0 = r20->_bannerManager;
    if (r0 != 0x0) {
            [r0 setConsent:r19];
    }
    r0 = r20->_offerwallManager;
    if (r0 != 0x0) {
            [r0 setConsent:r19];
    }
    [r25 release];
    [r23 release];
    [r21 release];
    return;
}

-(void *)initiatedAdUnits {
    r0 = self->_initiatedAdUnits;
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(long long)mediationSDKState {
    r0 = self->_mediationSDKState;
    return r0;
}

-(void)setInitiatedAdUnits:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_initiatedAdUnits, arg2);
    return;
}

-(void *)rewardedVideoManager {
    r0 = self->_rewardedVideoManager;
    return r0;
}

-(void)setAttachedAdUnits:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attachedAdUnits, arg2);
    return;
}

-(void *)attachedAdUnits {
    r0 = self->_attachedAdUnits;
    return r0;
}

-(void)setRewardedVideoManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoManager, arg2);
    return;
}

-(void)setInterstitialManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialManager, arg2);
    return;
}

-(void *)interstitialManager {
    r0 = self->_interstitialManager;
    return r0;
}

-(void *)offerwallManager {
    r0 = self->_offerwallManager;
    return r0;
}

-(void)setOfferwallManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offerwallManager, arg2);
    return;
}

-(void *)bannerManager {
    r0 = self->_bannerManager;
    return r0;
}

-(void)setBannerManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerManager, arg2);
    return;
}

-(void *)offerwallDelegate {
    r0 = self->_offerwallDelegate;
    return r0;
}

-(void *)rewardedInterstitialDelegate {
    r0 = self->_rewardedInterstitialDelegate;
    return r0;
}

-(void *)logDelegate {
    r0 = self->_logDelegate;
    return r0;
}

-(bool)rewardedVideoAdded {
    r0 = *(int8_t *)(int64_t *)&self->_rewardedVideoAdded;
    return r0;
}

-(void *)segmentDelegate {
    r0 = self->_segmentDelegate;
    return r0;
}

-(void)setRewardedVideoAdded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_rewardedVideoAdded = arg2;
    return;
}

-(bool)offerwallAdded {
    r0 = *(int8_t *)(int64_t *)&self->_offerwallAdded;
    return r0;
}

-(void)setOfferwallAdded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_offerwallAdded = arg2;
    return;
}

-(bool)didCallLoadBeforeResponse {
    r0 = *(int8_t *)(int64_t *)&self->_didCallLoadBeforeResponse;
    return r0;
}

-(void)setDidCallLoadBeforeResponse:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didCallLoadBeforeResponse = arg2;
    return;
}

-(bool)didCallLoadBannerBeforeResponse {
    r0 = *(int8_t *)(int64_t *)&self->_didCallLoadBannerBeforeResponse;
    return r0;
}

-(int)loadFailedDelay {
    r0 = *(int32_t *)(int64_t *)&self->_loadFailedDelay;
    return r0;
}

-(void)setDidCallLoadBannerBeforeResponse:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didCallLoadBannerBeforeResponse = arg2;
    return;
}

-(void)setLoadFailedDelay:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_loadFailedDelay = arg2;
    return;
}

-(bool)shouldSendLoadBannerFailedEvent {
    r0 = *(int8_t *)(int64_t *)&self->_shouldSendLoadBannerFailedEvent;
    return r0;
}

-(void)setShouldSendLoadBannerFailedEvent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldSendLoadBannerFailedEvent = arg2;
    return;
}

-(bool)didReportInitialAvailabilityFalse {
    r0 = *(int8_t *)(int64_t *)&self->_didReportInitialAvailabilityFalse;
    return r0;
}

-(void)setDidReportInitialAvailabilityFalse:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didReportInitialAvailabilityFalse = arg2;
    return;
}

-(bool)didRevive {
    r0 = *(int8_t *)(int64_t *)&self->_didRevive;
    return r0;
}

-(void)setDidRevive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didRevive = arg2;
    return;
}

-(void *)serverBaseUrl {
    r0 = self->_serverBaseUrl;
    return r0;
}

-(void)setServerBaseUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_serverBaseUrl, arg2);
    return;
}

-(void *)serr {
    r0 = self->_serr;
    return r0;
}

-(void)setSerr:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_serr, arg2);
    return;
}

-(void *)countDownTimer15Secs {
    r0 = self->_countDownTimer15Secs;
    return r0;
}

-(void)setCountDownTimer15Secs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countDownTimer15Secs, arg2);
    return;
}

-(void *)countDownTimer60Secs {
    r0 = self->_countDownTimer60Secs;
    return r0;
}

-(void)setCountDownTimer60Secs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countDownTimer60Secs, arg2);
    return;
}

-(void *)retryTimer {
    r0 = self->_retryTimer;
    return r0;
}

-(void)setRetryTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_retryTimer, arg2);
    return;
}

-(int)retryInterval {
    r0 = *(int32_t *)(int64_t *)&self->_retryInterval;
    return r0;
}

-(void)setRetryInterval:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryInterval = arg2;
    return;
}

-(int)retryLimit {
    r0 = *(int32_t *)(int64_t *)&self->_retryLimit;
    return r0;
}

-(void)setRetryLimit:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryLimit = arg2;
    return;
}

-(int)retryGrowLimit {
    r0 = *(int32_t *)(int64_t *)&self->_retryGrowLimit;
    return r0;
}

-(void)setRetryAvailabilityLimit:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryAvailabilityLimit = arg2;
    return;
}

-(void)setRetryGrowLimit:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryGrowLimit = arg2;
    return;
}

-(int)retryAvailabilityLimit {
    r0 = *(int32_t *)(int64_t *)&self->_retryAvailabilityLimit;
    return r0;
}

-(int)initCounter {
    r0 = *(int32_t *)(int64_t *)&self->_initCounter;
    return r0;
}

-(int)retryCounter {
    r0 = *(int32_t *)(int64_t *)&self->_retryCounter;
    return r0;
}

-(void)setRetryCounter:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryCounter = arg2;
    return;
}

-(void)setInitCounter:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_initCounter = arg2;
    return;
}

-(bool)isRetryForMoreThan15Secs {
    r0 = *(int8_t *)(int64_t *)&self->_isRetryForMoreThan15Secs;
    return r0;
}

-(void)setIsRetryForMoreThan15Secs:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRetryForMoreThan15Secs = arg2;
    return;
}

-(long long)netStatus {
    r0 = self->_netStatus;
    return r0;
}

-(void)setNetStatus:(long long)arg2 {
    self->_netStatus = arg2;
    return;
}

-(void *)bannerToLoadPlacementName {
    r0 = self->_bannerToLoadPlacementName;
    return r0;
}

-(void)setBannerToLoadPlacementName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerToLoadPlacementName, arg2);
    return;
}

-(void *)bannerToLoadSize {
    r0 = self->_bannerToLoadSize;
    return r0;
}

-(void)setBannerToLoadSize:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerToLoadSize, arg2);
    return;
}

-(void *)bannerToLoadViewController {
    r0 = self->_bannerToLoadViewController;
    return r0;
}

-(void)setBannerToLoadViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerToLoadViewController, arg2);
    return;
}

-(void *)rvDemandOnlyModeHelper {
    r0 = self->_rvDemandOnlyModeHelper;
    return r0;
}

-(void)setRvDemandOnlyModeHelper:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rvDemandOnlyModeHelper, arg2);
    return;
}

-(void *)isDemandOnlyModeHelper {
    r0 = self->_isDemandOnlyModeHelper;
    return r0;
}

-(void)setIsDemandOnlyModeHelper:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isDemandOnlyModeHelper, arg2);
    return;
}

-(void *)interstitialInstanceIds {
    r0 = self->_interstitialInstanceIds;
    return r0;
}

-(void)setInterstitialInstanceIds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialInstanceIds, arg2);
    return;
}

-(bool)interstitialInitRequested {
    r0 = *(int8_t *)(int64_t *)&self->_interstitialInitRequested;
    return r0;
}

-(void)setInterstitialInitRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_interstitialInitRequested = arg2;
    return;
}

-(bool)bannerInitRequested {
    r0 = *(int8_t *)(int64_t *)&self->_bannerInitRequested;
    return r0;
}

-(void)setBannerInitRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bannerInitRequested = arg2;
    return;
}

-(bool)didSetConsent {
    r0 = *(int8_t *)(int64_t *)&self->_didSetConsent;
    return r0;
}

-(void)setDidSetConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSetConsent = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_interstitialInstanceIds, 0x0);
    objc_storeStrong((int64_t *)&self->_isDemandOnlyModeHelper, 0x0);
    objc_storeStrong((int64_t *)&self->_rvDemandOnlyModeHelper, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerToLoadViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerToLoadSize, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerToLoadPlacementName, 0x0);
    objc_storeStrong((int64_t *)&self->_retryTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_countDownTimer60Secs, 0x0);
    objc_storeStrong((int64_t *)&self->_countDownTimer15Secs, 0x0);
    objc_storeStrong((int64_t *)&self->_serr, 0x0);
    objc_storeStrong((int64_t *)&self->_serverBaseUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_segmentDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_logDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedInterstitialDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_offerwallDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerManager, 0x0);
    objc_storeStrong((int64_t *)&self->_offerwallManager, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialManager, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoManager, 0x0);
    objc_storeStrong((int64_t *)&self->_attachedAdUnits, 0x0);
    objc_storeStrong((int64_t *)&self->_initiatedAdUnits, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->storage, 0x0);
    objc_storeStrong((int64_t *)&self->loggerManager, 0x0);
    return;
}

@end