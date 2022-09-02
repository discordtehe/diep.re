@implementation VungleSDK

-(void)setHTTPHeaderPair:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    [r0 setHTTPHeaders:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)clearAdUnitCreativesForPlacement:(void *)arg2 completionBlock:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r22 placementsCoordinator];
    r0 = [r0 retain];
    r20 = [[r0 placementWithReferenceID:r19] retain];
    [r0 release];
    r0 = [r22 playabilityCoordinator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 placementAdUnitIsFeedbased:r20];
    [r0 release];
    if (r26 != 0x0) {
            r24 = [[r22 playabilityCoordinator] retain];
            r25 = [[r20 referenceID] retain];
            r0 = [r20 adUnit];
            r0 = [r0 retain];
            r27 = [[r0 cacheKey] retain];
            [r24 updateAdPlayableState:0x3 feedBasedPlacement:r25 adCacheKey:r27];
            [r27 release];
            [r0 release];
            [r25 release];
            [r24 release];
    }
    objc_initWeak(&stack[-104], r22);
    [[r22 placementsCoordinator] retain];
    objc_copyWeak(&var_88 + 0x28, &stack[-104]);
    r0 = [r21 retain];
    [r23 resetPlacement:r20 completionBlock:&var_88];
    [r23 release];
    [r0 release];
    objc_destroyWeak(&var_88 + 0x28);
    objc_destroyWeak(&stack[-104]);
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)setEnableDebugMinimumFileSystemSizeForInit:(bool)arg2 {
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 setMinimumFileSystemSizeForInitDebugEnabled:arg2];
    [r0 release];
    return;
}

-(void)setEnableDebugMinimumFileSystemSizeForAdRequest:(bool)arg2 {
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 setMinimumFileSystemSizeForAdRequestDebugEnabled:arg2];
    [r0 release];
    return;
}

-(bool)isDebugMinimumFileSystemSizeForInitEnabled {
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 minimumFileSystemSizeForInitDebugEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setEnableDebugMinimumFileSystemSizeForAssetDownload:(bool)arg2 {
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 setMinimumFileSystemSizeForAssetDownloadDebugEnabled:arg2];
    [r0 release];
    return;
}

-(void *)getValidPlacementInfo {
    r31 = r31 - 0x1e0;
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
    r19 = [[NSMutableArray array] retain];
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    r21 = [[r0 getValidPlacmentIds] retain];
    [r0 release];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x80 forKeys:&saved_fp - 0xa0 count:0x3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_198 = r19;
    var_1C8 = r0;
    [r19 addObject:&saved_fp - 0x80];
    var_180 = q0;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1C0 = r1;
    var_1B8 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            var_1B0 = *var_180;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_180 != var_1B0) {
                                    objc_enumerationMutation(var_1B8);
                            }
                            r21 = @selector(numberWithBool:);
                            r24 = *(var_188 + r23 * 0x8);
                            r22 = [[r24 referenceID] retain];
                            r19 = [[r24 uniqueID] retain];
                            [r24 isCacheable];
                            r20 = [objc_msgSend(@class(NSNumber), r21) retain];
                            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                            r29 = r29;
                            [r0 retain];
                            [r20 release];
                            [r19 release];
                            [r22 release];
                            [var_198 addObject:r2];
                            [r24 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r25);
                    r0 = objc_msgSend(var_1B8, var_1C0);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_1B8 release];
    r20 = [var_198 copy];
    [var_1C8 release];
    [var_1B8 release];
    [var_198 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)sharedSDK {
    if (*qword_1011da890 != -0x1) {
            dispatch_once(0x1011da890, 0x100e88ed8);
    }
    r0 = *0x1011da888;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [[NSUserDefaults standardUserDefaults] retain];
    r20 = [@(YES) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r21 = [r0 retain];
    [r19 registerDefaults:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

+(void)setPublishIDFV:(bool)arg2 {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setBool:arg2 forKey:@"idfv"];
    [r0 synchronize];
    [r20 release];
    return;
}

+(bool)shouldPublishIDFV {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 boolForKey:@"idfv"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    [r0 terminateSessionWithCompletion:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)delegate {
    r0 = *(self + 0xc8);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setHeaderBiddingDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    objc_storeWeak(self + 0xf8, arg2);
    if (arg2 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r20 setHeaderBiddingEnabled:r2];
    r21 = [r20 isHeaderBiddingEnabled];
    r0 = [r20 requestAdController];
    r0 = [r0 retain];
    [r0 setHeaderBiddingEnabled:r21];
    [r0 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeStrong(self + 0xc8, arg2);
    r19 = [arg2 retain];
    r0 = [self playabilityCoordinator];
    r0 = [r0 retain];
    [r0 setSdkDelegate:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)setupEndpointControllersWithDefaults:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [objc_alloc() initWithUserDefaults:r21];
    [r21 release];
    [self setCreateNewRequestController:r20];
    [r20 release];
    r20 = [objc_alloc() initWithDelegate:0x0 delegateQueue:0x0];
    [self setRequestAdController:r20];
    [r20 release];
    r20 = [self isHeaderBiddingEnabled];
    r0 = [self requestAdController];
    r0 = [r0 retain];
    [r0 setHeaderBiddingEnabled:r20];
    [r0 release];
    r20 = objc_alloc();
    r21 = [[self requestAdController] retain];
    r20 = [r20 initWithRequestAdController:r21];
    [self setPlacementsCoordinator:r20];
    [r20 release];
    [r21 release];
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r21 = objc_alloc();
    r22 = [[self placementsCoordinator] retain];
    r23 = [[self playabilityCoordinator] retain];
    r21 = [r21 initWithPlacementsCoordinator:r22 playabilityCoordinator:r23];
    [self setAdRequestCoordinator:r21];
    [r21 release];
    [r23 release];
    [r22 release];
    r21 = objc_alloc();
    r20 = [[self placementsCoordinator] retain];
    r21 = [r21 initWithPlacementsCoordinator:r20 delegate:self];
    [self setConfigController:r21];
    [r21 release];
    [r20 release];
    r20 = objc_alloc();
    r21 = [[VungleURLConfiguration defaultReportAdURL] retain];
    r20 = [r20 initWithURL:r21];
    [self setReportingController:r20];
    [r20 release];
    [r21 release];
    r20 = objc_alloc();
    r21 = [[self configController] retain];
    r20 = [r20 initWithConfigController:r21];
    [self setReportIncentivizedController:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void *)initWithDefaults:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r20 + 0x48, r21);
            r0 = [VunglePublisherInformationProvider sharedProvider];
            r0 = [r0 retain];
            r8 = *(r20 + 0xc0);
            *(r20 + 0xc0) = r0;
            [r8 release];
            r0 = [VunglePlayabilityCoordinator new];
            r8 = *(r20 + 0xb0);
            *(r20 + 0xb0) = r0;
            [r8 release];
            [r20 setup];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)startWithAppId:(void *)arg2 placements:(void *)arg3 error:(void * *)arg4 {
    r21 = [arg2 retain];
    r19 = [self startWithAppId:r21 error:arg4];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)updateCacheWithSDKVersion:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = objc_alloc();
    r21 = [[NSUserDefaults standardUserDefaults] retain];
    r20 = [r20 initWithUserDefaults:r21];
    [r21 release];
    if (([r20 storedSDKVersionisEqualToVersion:r19] & 0x1) == 0x0) {
            if ([r20 sdkVersionStored] != 0x0) {
                    [VNGPersistenceManager cleanupFileSystemOnSDKVersionUpgrade];
            }
            [r20 storeSDKVersion:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)startWithAppId:(void *)arg2 error:(void * *)arg3 {
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
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = @class(VNGPersistenceManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    [r0 setUserDefinedMinimumFileSystemSizeThreshold];
    [r0 release];
    r0 = @class(VNGPersistenceManager);
    r0 = [r0 sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 checkFileSystemSizeAvailabilityForCase:0x0 withError:&var_48 withPlacementID:0x0];
    r20 = [var_48 retain];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_1006014a4;

loc_1006013bc:
    r23 = @class(VungleUtil);
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 systemVersion] retain];
    r0 = @class(VungleUtil);
    r0 = [r0 requiredVersion];
    r29 = r29;
    r26 = [r0 retain];
    r23 = [r23 validateOSVersion:r25 againstRequiredOSVersion:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    if ((r23 & 0x1) == 0x0) goto loc_1006014f8;

loc_100601450:
    if ([r19 length] == 0x0) goto loc_10060151c;

loc_100601464:
    *(int8_t *)(r21 + 0xc) = 0x1;
    if (r19 != 0x0) {
            r22 = [r19 copy];
            [*(r21 + 0xc0) setAppID:r22];
            [r22 release];
    }
    else {
            [*(r21 + 0xc0) setAppID:@"vungleTest"];
            [r21 log:@"WARNING: No appId passed. Setting appId to 'vungleTest', which will only get test ads."];
    }
    [r21 setupEndpointControllersWithDefaults:*(r21 + 0x48)];
    [r21 updateCacheWithSDKVersion:*0x1011c0ad8];
    [r21 setupInitialOperationChain];
    r21 = 0x1;
    goto loc_1006015f4;

loc_1006015f4:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_10060151c:
    r0 = sub_100649c48();
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 localizedDescription];
    goto loc_10060153c;

loc_10060153c:
    r24 = [r0 retain];
    [r21 log:r24];
    [r24 release];
    if (r22 != 0x0) {
            *r22 = objc_retainAutorelease(r23);
    }
    [r23 release];
    r21 = 0x0;
    goto loc_1006015f4;

loc_1006014f8:
    r0 = sub_100649984();
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 localizedDescription];
    goto loc_10060153c;

loc_1006014a4:
    r23 = [[r20 localizedDescription] retain];
    [r21 log:r23];
    [r23 release];
    if (r22 != 0x0) {
            r0 = objc_retainAutorelease(r20);
            r21 = 0x0;
            *r22 = r0;
    }
    else {
            r21 = 0x0;
    }
    goto loc_1006015f4;
}

-(void *)deviceInfo {
    r19 = [[VungleDeviceInformationProvider sharedProvider] retain];
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    r21 = [[r0 connectionQualityString] retain];
    r22 = [[r19 informationWithConnectionQuality:r21] retain];
    [r21 release];
    [r0 release];
    [r19 release];
    r19 = [[VungleDeviceInformationProvider appendToDeviceInfo:r22] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setupInitialOperationChain {
    r22 = objc_alloc();
    r20 = [[self createNewRequestController] retain];
    r21 = [[self configController] retain];
    r23 = [[self reportingController] retain];
    r24 = [[self placementsCoordinator] retain];
    r25 = [[self playabilityCoordinator] retain];
    r22 = [r22 initWithNewRequestController:r20 configController:r21 reportAdController:r23 placementsCoordinator:r24 playabilityCoordinator:r25];
    [self setSDKInitializer:r22];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = [self SDKInitializer];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r21 = [[self publisherInformation] retain];
    r0 = [self SDKInitializer];
    r0 = [r0 retain];
    [r0 setPublisherInformation:r21];
    [r0 release];
    [r21 release];
    r21 = objc_alloc();
    r22 = [[self SDKInitializer] retain];
    r23 = [[self adRequestCoordinator] retain];
    r24 = [[NSUserDefaults standardUserDefaults] retain];
    r21 = [r21 initWithSDKInitializer:r22 adRequestCoordinator:r23 userDefaults:r24];
    [self setAppLifecycleCoordinator:r21];
    [r21 release];
    [r24 release];
    [r23 release];
    [r22 release];
    objc_initWeak(&stack[-88], self);
    [[self SDKInitializer] retain];
    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
    [r20 initializeWithCompletionBlock:&var_70];
    [r20 release];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-88]);
    return;
}

-(bool)isAdPlaying {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self playabilityCoordinator];
    r0 = [r0 retain];
    r22 = r0;
    r21 = 0x1;
    r0 = [r0 placementArrayWithPlayableState:0x1];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if ([r20 count] != 0x1) {
            r0 = [r19 adRequestCoordinator];
            r0 = [r0 retain];
            r21 = [r0 adPlaying];
            [r0 release];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)placementWithID:(void *)arg2 error:(void * *)arg3 {
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
    r25 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 placementsCoordinator];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 placementWithReferenceID:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (r20 == 0x0) goto loc_100604ee0;

loc_100604be8:
    r0 = [r20 adUnit];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isExpired];
    [r0 release];
    if (r26 == 0x0) goto loc_100605000;

loc_100604c24:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r23 = [r0 retain];
    if (r25 != 0x0) {
            r26 = @selector(stringWithFormat:);
            r0 = sub_100649d48(r19);
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            *r25 = r0;
            r25 = @class(NSString);
            r27 = [[r0 localizedDescription] retain];
            r25 = [objc_msgSend(r25, r26) retain];
            r0 = [r23 stringByAppendingString:r25];
            r29 = r29;
            r26 = [r0 retain];
            [r23 release];
            [r25 release];
            [r27 release];
            r23 = r26;
    }
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r23 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r0 = [r21 playabilityCoordinator];
    r0 = [r0 retain];
    [r0 fireAdPlayable:0x0 placement:r20];
    [r0 release];
    r0 = [r21 playabilityCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 placementAdUnitIsFeedbased:r20];
    [r0 release];
    if (r27 != 0x0) {
            r25 = [[r21 playabilityCoordinator] retain];
            r26 = [[r20 referenceID] retain];
            r0 = [r20 adUnit];
            r0 = [r0 retain];
            r27 = [[r0 cacheKey] retain];
            [r25 updateAdPlayableState:0x3 feedBasedPlacement:r26 adCacheKey:r27];
            [r27 release];
            [r0 release];
            [r26 release];
            [r25 release];
    }
    objc_initWeak(&stack[-104], r21);
    [[r21 placementsCoordinator] retain];
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    [r22 resetPlacement:r20 completionBlock:&var_80];
    [r22 release];
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    r0 = r23;
    goto loc_100604ff4;

loc_100604ff4:
    [r0 release];
    r21 = 0x0;
    goto loc_10060500c;

loc_10060500c:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100605000:
    r21 = [r20 retain];
    goto loc_10060500c;

loc_100604ee0:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r25 != 0x0) {
            r22 = @selector(stringWithFormat:);
            r0 = sub_100649d48(r19);
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            *r25 = r0;
            r23 = @class(NSString);
            r24 = [[r0 localizedDescription] retain];
            r22 = [objc_msgSend(r23, r22) retain];
            r0 = [r21 stringByAppendingString:r22];
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            [r22 release];
            [r24 release];
            r21 = r23;
    }
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r21 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r0 = r21;
    goto loc_100604ff4;
}

-(bool)canProceedWithFeedBasedAdExperience:(bool)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x90;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    [@"Cannot play ad" retain];
    r0 = [VunglePublisherInformationProvider sharedProvider];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 appID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_1006047d4;

loc_1006045dc:
    r0 = [VunglePublisherInformationProvider sharedProvider];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 appID];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:r2];
    [r0 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r26 != 0x0) goto loc_1006047e4;

loc_100604644:
    r0 = [r20 adRequestCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 adPlaying];
    [r0 release];
    if (r23 == 0x0 || (r21 & 0x1) != 0x0) goto loc_100604978;

loc_100604680:
    if (r19 != 0x0) {
            r21 = objc_alloc();
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            *r19 = [[r21 initWithDomain:@"VungleSDK" code:0x4 userInfo:r22] autorelease];
            [r22 release];
            r22 = [[*r19 localizedDescription] retain];
            [r20 log:r22];
            [r22 release];
            r21 = [[*r19 localizedDescription] retain];
            r20 = [[NSString stringWithFormat:@": error message - %@"] retain];
            r0 = [@"Cannot play ad" stringByAppendingString:r20];
            r29 = r29;
            r19 = [r0 retain];
            [@"Cannot play ad" release];
            [r20 release];
            [r21 release];
    }
    else {
            r19 = @"Cannot play ad";
    }
    r0 = [VungleLogger sharedLogger];
    goto loc_100604900;

loc_100604900:
    r0 = [r0 retain];
    [r0 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r20 = 0x0;
    goto loc_100604934;

loc_100604934:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100604978:
    r0 = [r20 playabilityCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    [r0 delayInSeconds];
    [r0 release];
    if (d8 <= 0x0) goto loc_100604b08;

loc_1006049b4:
    if (r19 != 0x0) {
            r21 = objc_alloc();
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            *r19 = [[r21 initWithDomain:@"VungleSDK" code:0x5 userInfo:r22] autorelease];
            [r22 release];
            r22 = [[*r19 localizedDescription] retain];
            [r20 log:r22];
            [r22 release];
            r21 = [[*r19 localizedDescription] retain];
            r20 = [[NSString stringWithFormat:@": error message - %@"] retain];
            r0 = [@"Cannot play ad" stringByAppendingString:r20];
            r29 = r29;
            r19 = [r0 retain];
            [@"Cannot play ad" release];
            [r20 release];
            [r21 release];
    }
    else {
            r19 = @"Cannot play ad";
    }
    r0 = [VungleLogger sharedLogger];
    goto loc_100604900;

loc_100604b08:
    if (r19 != 0x0) {
            *r19 = 0x0;
    }
    r19 = @"Cannot play ad";
    r20 = 0x1;
    goto loc_100604934;

loc_1006047e4:
    if (r19 != 0x0) {
            r0 = objc_alloc();
            r0 = [r0 initWithDomain:@"VungleSDK" code:0x7 userInfo:0x0];
            r0 = [r0 autorelease];
            *r19 = r0;
            r22 = [[r0 localizedDescription] retain];
            [r20 log:r22];
            [r22 release];
            r21 = [[*r19 localizedDescription] retain];
            r20 = [[NSString stringWithFormat:@": error message - %@"] retain];
            r0 = [@"Cannot play ad" stringByAppendingString:r20];
            r29 = r29;
            r19 = [r0 retain];
            [@"Cannot play ad" release];
            [r20 release];
            [r21 release];
    }
    else {
            r19 = @"Cannot play ad";
    }
    r0 = [VungleLogger sharedLogger];
    goto loc_100604900;

loc_1006047d4:
    [r23 release];
    [r22 release];
    goto loc_1006047e4;
}

-(bool)playAd:(void *)arg2 options:(void *)arg3 placementID:(void *)arg4 error:(void * *)arg5 {
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
    r22 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [arg4 retain];
    if (([r23 isInitialized] & 0x1) != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [r20 objectForKeyedSubscript:r2];
                    r29 = r29;
                    [[r0 retain] release];
            }
            if (([VungleUtil isTopMostViewController:r19] & 0x1) == 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    var_78 = r26;
                    r26 = r0;
                    r0 = [r0 keyWindow];
                    r0 = [r0 retain];
                    r28 = [[r0 rootViewController] retain];
                    r24 = [[VungleUtil topViewControllerWithRootViewController:r28] retain];
                    [r28 release];
                    [r0 release];
                    [r26 release];
                    r0 = [NSString stringWithFormat:@"WARNING: The topmost presented ViewController %@ is not equal to the one being passed to the `playAd` method %@"];
                    r0 = [r0 retain];
                    r26 = r0;
                    r28 = [r0 copy];
                    r21 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
                    r27 = [[NSError errorWithDomain:@"VungleSDK" code:0xc userInfo:r21] retain];
                    [r21 release];
                    [r28 release];
                    r21 = [[r27 localizedDescription] retain];
                    [r23 log:r21];
                    [r21 release];
                    r0 = [VungleLogger sharedLogger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logMessage:r26 level:0xf4243 context:@"SDK Ad Lifecycle"];
                    [r0 release];
                    [r27 release];
                    r0 = r26;
                    r26 = var_78;
                    [r0 release];
                    [r24 release];
            }
            if ([r23 canProceedWithFeedBasedAdExperience:0x0 error:r22] != 0x0) {
                    r0 = [r23 placementWithID:r26 error:r22];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            var_78 = r26;
                            r0 = [r23 adRequestCoordinator];
                            r0 = [r0 retain];
                            [r0 setAdPlaying:0x1];
                            [r0 release];
                            r0 = [r23 playabilityCoordinator];
                            r0 = [r0 retain];
                            [r0 fireAdPlayable:0x0 placement:r24];
                            [r0 release];
                            r0 = [r20 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == 0x0) {
                                    r21 = [r20 mutableCopy];
                                    r0 = [NSNumber numberWithBool:[r23 muted]];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r21 setObject:r25 forKeyedSubscript:*0x100e89350];
                                    [r25 release];
                                    r25 = [r21 copy];
                                    [r20 release];
                                    [r21 release];
                                    r20 = r25;
                            }
                            r26 = [objc_alloc() initWithPlayOptionsDictionary:r20 error:&var_70];
                            r0 = [var_70 retain];
                            r28 = r0;
                            if (r0 != 0x0) {
                                    r25 = [[r28 localizedDescription] retain];
                                    [r23 log:r25];
                                    [r25 release];
                                    r25 = [[VungleLogger sharedLogger] retain];
                                    r0 = [r28 localizedDescription];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [r25 logMessage:r21 level:0xf4243 context:@"SDK Ad Lifecycle"];
                                    [r21 release];
                                    [r25 release];
                            }
                            var_88 = r28;
                            r0 = [r23 configController];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            if ([r0 shouldRequestStreamingAd] != 0x0) {
                                    r0 = [r23 playabilityCoordinator];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r25 = [r0 supportedAdTemplateTypeForStreaming:r24];
                                    [r0 release];
                            }
                            else {
                                    r25 = 0x0;
                            }
                            [r28 release];
                            r21 = [r26 copy];
                            [r23 setCurrentPlayOptions:r21];
                            [r21 release];
                            [r23 setTmpViewController:r19];
                            var_80 = r26;
                            if (r25 != 0x0) {
                                    r21 = [[r23 placementsCoordinator] retain];
                                    r0 = [r24 referenceID];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    r26 = [r21 placementIsSleeping:r28];
                                    [r28 release];
                                    [r21 release];
                                    if ((r26 & 0x1) != 0x0) {
                                            r28 = var_88;
                                            if (r22 != 0x0) {
                                                    r0 = [r24 referenceID];
                                                    r0 = [r0 retain];
                                                    *r22 = [[sub_100649e50(r0) retain] autorelease];
                                                    [r0 release];
                                                    r25 = [[*r22 localizedDescription] retain];
                                                    [r23 log:r25];
                                                    [r25 release];
                                                    r0 = *r22;
                                                    r0 = [r0 localizedDescription];
                                                    r0 = [r0 retain];
                                                    r22 = [[NSString stringWithFormat:@"Cannot play ad: error - %@"] retain];
                                                    [r0 release];
                                                    r0 = [VungleLogger sharedLogger];
                                                    r0 = [r0 retain];
                                                    [r0 logMessage:r22 level:0xf4243 context:@"SDK Ad Lifecycle"];
                                                    [r0 release];
                                                    [r22 release];
                                            }
                                            r27 = 0x0;
                                            r26 = var_78;
                                    }
                                    else {
                                            r21 = *(r23 + 0x70);
                                            r22 = [var_80 copy];
                                            [r21 sendStreamingAdRequestWithPlacement:r24 playOptions:r22];
                                            [r22 release];
                                            r27 = 0x1;
                                            r26 = var_78;
                                            r28 = var_88;
                                    }
                            }
                            else {
                                    r21 = [r26 copy];
                                    r25 = [r23 presentAdForPlacement:r24 viewController:r19 playOptions:r21];
                                    [r21 release];
                                    r26 = var_78;
                                    r28 = var_88;
                                    if ((r25 & 0x1) != 0x0) {
                                            r27 = 0x1;
                                    }
                                    else {
                                            r0 = [r23 adRequestCoordinator];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 setAdPlaying:r2];
                                            [r21 release];
                                            if (r22 != 0x0) {
                                                    r0 = objc_alloc();
                                                    r0 = [r0 initWithDomain:@"VungleSDK" code:0x3 userInfo:0x0];
                                                    r0 = [r0 autorelease];
                                                    *r22 = r0;
                                                    r25 = [[r0 localizedDescription] retain];
                                                    [r23 log:r25];
                                                    [r25 release];
                                                    r0 = *r22;
                                                    r0 = [r0 localizedDescription];
                                                    r0 = [r0 retain];
                                                    r22 = [[NSString stringWithFormat:@"Cannot play ad: error - %@"] retain];
                                                    [r0 release];
                                                    r0 = [VungleLogger sharedLogger];
                                                    r0 = [r0 retain];
                                                    [r0 logMessage:r22 level:0xf4243 context:@"SDK Ad Lifecycle"];
                                                    [r0 release];
                                                    [r22 release];
                                            }
                                            r27 = 0x0;
                                    }
                            }
                            [var_80 release];
                            [r28 release];
                    }
                    else {
                            r27 = 0x0;
                    }
                    [r24 release];
            }
            else {
                    r27 = 0x0;
            }
    }
    else {
            if (r22 != 0x0) {
                    r0 = sub_100649b20();
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    *r22 = r0;
                    r25 = [[r0 localizedDescription] retain];
                    [r23 log:r25];
                    [r25 release];
                    r0 = *r22;
                    r0 = [r0 localizedDescription];
                    r0 = [r0 retain];
                    r23 = [[NSString stringWithFormat:@"Cannot play ad: error - %@"] retain];
                    [r0 release];
                    r0 = [VungleLogger sharedLogger];
                    r0 = [r0 retain];
                    [r0 logMessage:r23 level:0xf4243 context:@"SDK Ad Lifecycle"];
                    [r0 release];
                    [r23 release];
            }
            r27 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)finishedDisplayingAd {
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
    r0 = [self customControllerDict];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 == 0x0) goto loc_100606df4;

loc_100606cac:
    r21 = @selector(count);
    r0 = [r20 playabilityCoordinator];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 placementArrayWithPlayableState:0x1];
    r29 = r29;
    r19 = [r0 retain];
    [r23 release];
    if (objc_msgSend(r19, r21) == 0x1) {
            r21 = [[r19 objectAtIndexedSubscript:0x0] retain];
            r22 = [[r20 customControllerDict] retain];
            r0 = [r21 adUnit];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 cacheKey] retain];
            r0 = [r22 objectForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r24 release];
            [r23 release];
            [r22 release];
            if (r20 != 0x0) {
                    r0 = [r20 link];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            [r20 closeFlexAdExperience:0x0];
                    }
            }
            [r20 release];
            [r21 release];
    }
    goto loc_100606e60;

loc_100606e60:
    [r19 release];
    return;

.l1:
    return;

loc_100606df4:
    if ([r20 presentationMode] != 0x1 || ([r20 isAdDismissInProgress] & 0x1) != 0x0) goto .l1;

loc_100606e34:
    r0 = [r20 customMRAIDController];
    r0 = [r0 retain];
    r19 = r0;
    [r0 closeFlexAdExperience:0x0];
    goto loc_100606e60;
}

-(void)processLoadAdErrorResponseForPlacement:(void *)arg2 loadedAd:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r24 = [arg3 retain];
    r20 = [arg4 retain];
    r25 = [[r19 referenceID] retain];
    var_88 = r20;
    r0 = [r20 localizedDescription];
    r0 = [r0 retain];
    r21 = [[NSString stringWithFormat:@"Failed to load ad for placement ID: %@, error: %@"] retain];
    [r0 release];
    [r25 release];
    r26 = [[VungleLogger sharedLogger] retain];
    r27 = @class(VungleLogger);
    r28 = [[r24 appId] retain];
    r27 = [[r27 eventIDFromAppID:r28] retain];
    [r26 setEventID:r27];
    [r27 release];
    [r28 release];
    [r26 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r21 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r0 = [r22 adRequestCoordinator];
    r0 = [r0 retain];
    [r0 setAdPlaying:0x0];
    [r0 release];
    r24 = [r24 retain];
    r0 = [r22 playabilityCoordinator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 placementAdUnitIsFeedbased:r19];
    [r0 release];
    if (r27 != 0x0) {
            r26 = [[r22 customControllerDict] retain];
            r28 = [[r24 cacheKey] retain];
            [r26 removeObjectForKey:r28];
            [r28 release];
            [r26 release];
            r26 = [[r22 playabilityCoordinator] retain];
            r23 = [[r19 referenceID] retain];
            r0 = [r24 cacheKey];
            r29 = r29;
            r27 = [r0 retain];
            [r26 updateAdPlayableState:0x3 feedBasedPlacement:r23 adCacheKey:r27];
            [r27 release];
            [r23 release];
            [r26 release];
    }
    r0 = [r22 playabilityCoordinator];
    r0 = [r0 retain];
    [r0 fireAdPlayable:0x0 placement:r19];
    [r0 release];
    objc_initWeak(&stack[-104], r22);
    [[r22 placementsCoordinator] retain];
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    [r23 resetPlacement:r19 completionBlock:&var_80];
    [r23 release];
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    [r24 release];
    [r21 release];
    [var_88 release];
    [r24 release];
    [r19 release];
    return;
}

-(bool)isAdCachedForPlacementID:(void *)arg2 {
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
    r22 = [arg2 retain];
    r0 = [r20 placementsCoordinator];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 placementWithReferenceID:r22];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    [r23 release];
    if (r19 != 0x0) {
            r20 = [[r20 placementsCoordinator] retain];
            r0 = [r19 referenceID];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r20 placementIsSleeping:r21];
            [r21 release];
            [r20 release];
            if ((r22 & 0x1) != 0x0) {
                    r21 = 0x0;
            }
            else {
                    r0 = [r19 adUnit];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 conformsToProtocol:@protocol(VungleValidatableAd)];
                    [r0 release];
                    if (r22 != 0x0) {
                            r0 = [r19 adUnit];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 isValid];
                            [r0 release];
                            r22 = r22 ^ 0x1;
                    }
                    else {
                            r22 = 0x1;
                    }
                    r0 = [r19 state];
                    r21 = 0x0;
                    if ((r22 & 0x1) == 0x0) {
                            r21 = 0x0;
                            if (r0 == 0x2) {
                                    r0 = [r19 adUnit];
                                    r0 = [r0 retain];
                                    r21 = [r0 viewed] ^ 0x1;
                                    [r0 release];
                            }
                    }
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)loadPlacementWithID:(void *)arg2 error:(void * *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (([r21 isInitialized] & 0x1) != 0x0) {
            r0 = [r21 adRequestCoordinator];
            r0 = [r0 retain];
            r20 = [r0 loadPlacementWithID:r19 error:r20];
            [r0 release];
    }
    else {
            if (r20 != 0x0) {
                    r0 = sub_100649b20();
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    *r20 = r0;
                    r23 = [[r0 localizedDescription] retain];
                    [r21 log:r23];
                    [r23 release];
                    r0 = *r20;
                    r0 = [r0 localizedDescription];
                    r0 = [r0 retain];
                    r21 = [[NSString stringWithFormat:@"Cannot play ad: error - %@"] retain];
                    [r0 release];
                    r0 = [VungleLogger sharedLogger];
                    r0 = [r0 retain];
                    [r0 logMessage:r21 level:0xf4243 context:@"SDK Ad Lifecycle"];
                    [r0 release];
                    [r21 release];
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)didGetIFA:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    [r0 setIFA:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)didGetIDFV:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([VungleSDK shouldPublishIDFV] != 0x0) {
            r0 = [r20 publisherInformation];
            r0 = [r0 retain];
            [r0 setIdentifierForVendor:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)didGetUserAgent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    [r0 setDefaultUserAgent:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)processSuccessfulLoadAdForPlacement:(void *)arg2 loadedAd:(void *)arg3 presentingController:(void *)arg4 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 campaign];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 vng_creativeID];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r22 != 0x0) {
            r0 = [r23 creativeTrackingDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 respondsToSelector:@selector(vungleCreative:readyForPlacement:), r3];
            [r0 release];
            if (r28 != 0x0) {
                    r26 = [[r23 creativeTrackingDelegate] retain];
                    r0 = [r19 referenceID];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r26 vungleCreative:r22 readyForPlacement:r27];
                    [r27 release];
                    [r26 release];
            }
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r23 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r24, @selector(vungleWillShowAdForPlacementID:));
    [r0 release];
    if (r24 != 0x0) {
            r24 = [[r23 delegate] retain];
            r0 = [r19 referenceID];
            r29 = r29;
            [r0 retain];
            [r24 vungleWillShowAdForPlacementID:r2];
            [r26 release];
            [r24 release];
    }
    if (r21 != 0x0) {
            [VungleInternalMRAIDAd class];
            r0 = [r20 isKindOfClass:r2];
            var_58 = r22;
            if (r0 != 0x0) {
                    r0 = [r20 retain];
                    r25 = r0;
                    r8 = &@selector(initWithCreationCallback:cleanCallback:cleanPhase:);
                    r26 = *(r8 + 0x638);
                    if (objc_msgSend(r0, r26) == 0x0) {
                            r8 = &@selector(initWithCreationCallback:cleanCallback:cleanPhase:);
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    var_5C = r8;
                    if (objc_msgSend(r25, r26) == 0x1) {
                            r0 = r23;
                    }
                    else {
                            r0 = r23;
                    }
                    [r0 setPresentationMode:r2];
                    r22 = r21;
                    [r25 release];
            }
            else {
                    r22 = r21;
                    var_5C = 0x0;
            }
            r0 = [r19 referenceID];
            r0 = [r0 retain];
            r25 = [[NSString stringWithFormat:@"Presenting ad for placement ID: %@"] retain];
            [r0 release];
            r27 = [[VungleLogger sharedLogger] retain];
            r28 = @class(VungleLogger);
            r24 = [[r20 appId] retain];
            r28 = [[r28 eventIDFromAppID:r24] retain];
            [r27 setEventID:r28];
            [r28 release];
            [r24 release];
            [r27 release];
            r0 = @class(VungleLogger);
            r0 = [r0 sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logMessage:r25 level:0xf4240 context:@"SDK Ad Lifecycle"];
            [r0 release];
            if ([r23 presentationMode] != 0x0) {
                    r0 = [r23 presentationMode];
                    r21 = r22;
                    r28 = var_58;
                    if (r0 == 0x1) {
                            r0 = [r23 customMRAIDController];
                            r0 = [r0 retain];
                            [r0 presentAdFromViewController:r21 isInterstitial:var_5C animated:0x1];
                            [r0 release];
                    }
            }
            else {
                    r0 = [r23 vmraidController];
                    r0 = [r0 retain];
                    r21 = r22;
                    [r0 presentAdFromViewController:r22 isInterstitial:var_5C animated:0x1];
                    [r0 release];
                    r28 = var_58;
            }
            r0 = r25;
    }
    else {
            r0 = [r19 referenceID];
            r0 = [r0 retain];
            r23 = [[NSString stringWithFormat:@"Cannot present ad for placement ID: %@, the view controller presenting the current ad unit was released ahead of time."] retain];
            [r0 release];
            r28 = r22;
            r25 = [[VungleLogger sharedLogger] retain];
            r26 = @class(VungleLogger);
            r27 = [[r20 appId] retain];
            r26 = [[r26 eventIDFromAppID:r27] retain];
            [r25 setEventID:r26];
            [r26 release];
            [r27 release];
            [r25 release];
            r0 = @class(VungleLogger);
            r21 = r21;
            r0 = [r0 sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:r23 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r0 release];
            r0 = r23;
    }
    [r0 release];
    [r28 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)didPresentInterstitialAdViewControllerForPlacement:(void *)arg2 {
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
    r21 = self;
    [arg2 retain];
    objc_initWeak(&stack[-88], r21);
    r0 = [r21 placementsCoordinator];
    r19 = &var_78 + 0x28;
    [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    var_58 = r0;
    objc_copyWeak(r19, &stack[-88]);
    [r22 refreshPlacementState:r20 completionBlock:&var_78];
    [r22 release];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(vungleDidShowAdForPlacementID:)];
    [r0 release];
    if (r25 != 0x0) {
            r21 = [[r21 delegate] retain];
            r23 = [[r20 referenceID] retain];
            [r21 vungleDidShowAdForPlacementID:r23];
            [r23 release];
            [r21 release];
    }
    objc_destroyWeak(r19);
    [var_58 release];
    objc_destroyWeak(&stack[-88]);
    [r20 release];
    return;
}

-(void)didFinishAdViewForPlacement:(void *)arg2 withSuccess:(bool)arg3 {
    r19 = arg3;
    r20 = self;
    r23 = [arg2 retain];
    r22 = [[r20 playabilityCoordinator] retain];
    r21 = [[arg2 adUnit] retain];
    [r23 release];
    [r21 preventPlayDelay];
    asm { sxtw       x2, w0 };
    [r22 delayNextPlay:r2];
    [r21 release];
    [r22 release];
    [r20 setSuccessfulAdView:r19];
    return;
}

-(void)willPresentInterstitialAdViewControllerForPlacement:(void *)arg2 reportable:(void *)arg3 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r19 adUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 adType];
    [r0 release];
    if (r24 == 0x1) {
            r0 = [r20 playabilityCoordinator];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 placementAdUnitIsFeedbased:r19];
            [r0 release];
            if (r25 != 0x0) {
                    r23 = [[r20 playabilityCoordinator] retain];
                    r24 = [[r19 referenceID] retain];
                    r0 = [r19 adUnit];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 cacheKey];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r23 updateAdPlayableState:0x1 feedBasedPlacement:r24 adCacheKey:r25];
                    [r25 release];
                    [r22 release];
                    [r24 release];
                    [r23 release];
            }
    }
    r22 = [[r20 deviceInfo] retain];
    [r21 setDeviceInformation:r22];
    [r22 release];
    r22 = [[*(r20 + 0xc0) toDictionary] retain];
    [r21 setPublisherInformation:r22];
    [r22 release];
    r0 = [r20 currentPlayOptions];
    r0 = [r0 retain];
    r23 = [[r0 extraInformation] retain];
    [r21 setExtraInformation:r23];
    [r23 release];
    [r0 release];
    [r20 updateCachedReportable:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)willDismissInterstitialAdViewControllerForPlacement:(void *)arg2 reportable:(void *)arg3 {
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
    r19 = [arg2 retain];
    r28 = [arg3 retain];
    r0 = [r19 adUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 adType];
    [r0 release];
    if (r24 != 0x1) goto loc_100608838;

loc_100608694:
    r0 = [r21 playabilityCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 placementAdUnitIsFeedbased:r19];
    [r0 release];
    if (r25 == 0x0) goto loc_100608838;

loc_1006086d4:
    r26 = [[r21 playabilityCoordinator] retain];
    r27 = [[r19 referenceID] retain];
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r25 = r28;
    r28 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r20 = [r0 retain];
    r24 = [r26 adPlaybackStateForPlacement:r27 adCacheKey:r20];
    [r20 release];
    r0 = r28;
    r28 = r25;
    [r0 release];
    [r27 release];
    [r26 release];
    if (r24 != 0x2) goto loc_1006087a0;

loc_10060878c:
    [r21 isAdDismissInProgress];
    goto loc_100608a14;

loc_100608a14:
    [r28 release];
    [r19 release];
    return;

loc_1006087a0:
    r20 = [[r21 playabilityCoordinator] retain];
    r23 = [[r19 referenceID] retain];
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r24 = [r0 retain];
    r3 = r23;
    [r20 updateAdPlayableState:0x2 feedBasedPlacement:r3 adCacheKey:r24];
    [r24 release];
    [r22 release];
    [r23 release];
    [r20 release];
    goto loc_100608838;

loc_100608838:
    if (([r21 isAdDismissInProgress] & 0x1) == 0x0) {
            [r21 setAdDismissInProgress:0x1];
            r0 = [r21 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(vungleWillCloseAdWithViewInfo:placementID:), r3];
            [r0 release];
            if (r24 != 0x0) {
                    r23 = @selector(delegate);
                    r22 = @selector(vungleWillCloseAdWithViewInfo:placementID:);
                    r24 = objc_alloc();
                    r27 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r20 = *(r27 + 0xfc0);
                    r0 = [r21 isSuccessfulAdView];
                    r26 = @selector(numberWithBool:);
                    r2 = r0;
                    r0 = objc_msgSend(r20, r26);
                    r25 = [r0 retain];
                    r20 = *(r27 + 0xfc0);
                    [r28 duration];
                    asm { ucvtf      d0, x0 };
                    asm { fdiv       d0, d0, d1 };
                    r20 = [[r20 numberWithDouble:r2] retain];
                    r27 = *(r27 + 0xfc0);
                    [r28 isAdExperienceSuccessful];
                    r26 = [objc_msgSend(r27, r26) retain];
                    [r24 initWithCompletedView:r25 playTime:r20 didDownload:r26];
                    [r26 release];
                    [r20 release];
                    [r25 release];
                    r20 = [objc_msgSend(r21, r23) retain];
                    r0 = [r19 referenceID];
                    r0 = [r0 retain];
                    [r0 copy];
                    objc_msgSend(r20, r22);
                    [r23 release];
                    [r21 release];
                    [r20 release];
                    [r24 release];
            }
    }
    goto loc_100608a14;
}

-(void)didDismissInterstitialAdViewControllerForPlacement:(void *)arg2 reportable:(void *)arg3 {
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
    r20 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r0 = [r19 adUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 adType];
    [r0 release];
    if (r25 == 0x1) {
            r0 = [r20 playabilityCoordinator];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 placementAdUnitIsFeedbased:r19];
            [r0 release];
            if (r26 != 0x0) {
                    var_A0 = r27;
                    r27 = [[r20 playabilityCoordinator] retain];
                    r28 = [[r19 referenceID] retain];
                    r0 = [r19 adUnit];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 cacheKey];
                    r29 = r29;
                    r26 = [r0 retain];
                    r21 = [r27 adPlaybackStateForPlacement:r28 adCacheKey:r26];
                    [r26 release];
                    [r25 release];
                    [r28 release];
                    [r27 release];
                    if (r21 == 0x2) {
                            r21 = [[r20 customControllerDict] retain];
                            r0 = [r19 adUnit];
                            r0 = [r0 retain];
                            r26 = [[r0 cacheKey] retain];
                            [r21 removeObjectForKey:r26];
                            [r26 release];
                            [r0 release];
                            [r21 release];
                            r21 = [[r20 playabilityCoordinator] retain];
                            r24 = [[r19 referenceID] retain];
                            r0 = [r19 adUnit];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 cacheKey];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r21 updateAdPlayableState:0x3 feedBasedPlacement:r24 adCacheKey:r26];
                            [r26 release];
                            [r25 release];
                            [r24 release];
                            [r21 release];
                            r21 = 0x0;
                    }
                    else {
                            r21 = 0x1;
                    }
                    r27 = var_A0;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = [r20 isAdDismissInProgress];
    if ((r21 & 0x1) == 0x0 && r0 != 0x0) {
            [r20 updateCachedReportable:r27];
            [*(r20 + 0x78) sendSavedReports:0x100e88fb8];
            r0 = [r20 adRequestCoordinator];
            r0 = [r0 retain];
            [r0 setAdPlaying:0x0];
            [r0 release];
            [r20 setVmraidController:0x0];
            [r20 setCustomMRAIDController:0x0];
            [r20 setCurrentPlayOptions:0x0];
            [r20 setTmpViewController:0x0];
            r0 = [r19 adUnit];
            r0 = [r0 retain];
            r22 = [r0 adType];
            [r0 release];
            if (r22 != 0x3) {
                    objc_initWeak(&stack[-104], r20);
                    [[r20 placementsCoordinator] retain];
                    objc_copyWeak(&var_98 + 0x38, &stack[-104]);
                    var_78 = [r27 retain];
                    r0 = [r19 retain];
                    [r23 resetPlacement:r0 completionBlock:&var_98];
                    [r23 release];
                    [r0 release];
                    [var_78 release];
                    objc_destroyWeak(&var_98 + 0x38);
                    objc_destroyWeak(&stack[-104]);
            }
            [r20 setAdDismissInProgress:0x0];
    }
    [r27 release];
    [r19 release];
    return;
}

-(void)willBackgroundAdViewControllerForPlacement:(void *)arg2 reportable:(void *)arg3 {
    [self updateCachedReportable:arg3];
    return;
}

-(void)updateCachedReportable:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [*(r0 + 0x78) saveReport:r2 error:&var_18];
    }
    return;
}

-(void)willLaunchURLFromAdViewControllerForPlacement:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 nativeAdsDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r23 = [r20 placementHasNativeAdsTemplateType:r19];
            [r0 release];
            if (r23 != 0x0) {
                    r20 = [[r20 nativeAdsDelegate] retain];
                    r21 = [[r19 referenceID] retain];
                    [r20 nativeAdsPlacementWillTriggerURLLaunch:r21];
                    [r21 release];
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void)log:(void *)arg2 {
    r2 = arg2;
    if (*(int8_t *)(self + 0xa) != 0x0) {
            [VungleLogCoordinator log:r2 withParameters:&var_10 + 0x10];
    }
    return;
}

-(void)placementCoordinatorWillPreparePlacement:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r21 headerBiddingDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_100609810;

loc_10060972c:
    r0 = [r21 headerBiddingDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(placementWillBeginCaching:withBidToken:), r3];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_100609818;

loc_100609774:
    r21 = [[r21 headerBiddingDelegate] retain];
    r22 = [[r19 referenceID] retain];
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r24 = [[r0 bidToken] retain];
    [r21 placementWillBeginCaching:r22 withBidToken:r24];
    [r24 release];
    [r0 release];
    [r22 release];
    r0 = r21;
    goto loc_100609814;

loc_100609814:
    [r0 release];
    goto loc_100609818;

loc_100609818:
    [r19 release];
    return;

loc_100609810:
    r0 = r23;
    goto loc_100609814;
}

-(void)streamingAdControllerFailedToLoadStreamingAdForPlacement:(void *)arg2 error:(void *)arg3 {
    return;
}

-(void)streamingAdControllerDidValidateCTA:(bool)arg2 {
    [self setValidCTAURLResolved:arg2];
    return;
}

-(bool)addAdViewToView:(void *)arg2 withOptions:(void *)arg3 placementID:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x180;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r21 = arg5;
    r23 = self;
    r22 = [arg2 retain];
    r28 = [arg3 retain];
    r27 = [arg4 retain];
    if ([r23 canProceedWithFeedBasedAdExperience:0x1 error:r21] == 0x0) goto loc_100605514;

loc_1006052e0:
    r0 = [r23 playabilityCoordinator];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 readyPlacementForFeedBasedAdWithPlacementID:r27];
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    if (r25 == 0x0) goto loc_10060551c;

loc_100605328:
    r0 = [r23 customControllerDict];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    var_128 = r22;
    var_120 = r21;
    var_140 = @selector(customControllerDict);
    if (r0 == 0x0) goto loc_100605524;

loc_100605358:
    r19 = [[r23 customControllerDict] retain];
    r0 = [r25 adUnit];
    r0 = [r0 retain];
    r22 = r23;
    r20 = [[r0 cacheKey] retain];
    r26 = [[r19 objectForKeyedSubscript:r20] retain];
    [r20 release];
    [r0 release];
    [r19 release];
    r0 = [r26 view];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 superview];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    var_148 = r22;
    if (r0 == 0x0) goto loc_100605530;

loc_10060542c:
    r20 = [[r22 playabilityCoordinator] retain];
    r0 = [r25 referenceID];
    r0 = [r0 retain];
    var_150 = r27;
    r27 = r28;
    r28 = r0;
    r0 = [r25 adUnit];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [r20 adPlaybackStateForPlacement:r28 adCacheKey:r23];
    [r23 release];
    [r24 release];
    r0 = r28;
    r28 = r27;
    r27 = var_150;
    [r0 release];
    [r20 release];
    [r21 release];
    [r19 release];
    if (r22 != 0x1) goto loc_100605540;

loc_1006054f0:
    [r26 resumeAdExperience];
    [r26 release];
    r19 = 0x1;
    r22 = var_128;
    goto loc_1006064ac;

loc_1006064ac:
    [r25 release];
    goto loc_1006064b4;

loc_1006064b4:
    var_80 = **___stack_chk_guard;
    [r27 release];
    [r28 release];
    [r22 release];
    if (**___stack_chk_guard == var_80) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100605540:
    [r26 release];
    r23 = var_148;
    r24 = @selector(playabilityCoordinator);
    r20 = @selector(objectForKeyedSubscript:);
    goto loc_100605554;

loc_100605554:
    r0 = objc_msgSend(r23, r24);
    r0 = [r0 retain];
    [r0 fireAdPlayable:0x0 placement:r25];
    [r0 release];
    var_130 = r20;
    r0 = objc_msgSend(r28, r20);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r19 = [r28 mutableCopy];
            r0 = [NSNumber numberWithBool:[r23 muted]];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setObject:r20 forKeyedSubscript:*0x100e89350];
            [r20 release];
            r20 = [r19 copy];
            [r28 release];
            [r19 release];
            r28 = r20;
    }
    var_118 = [objc_alloc() initWithPlayOptionsDictionary:r28 error:&var_C8];
    r0 = [var_C8 retain];
    r21 = r0;
    r22 = var_128;
    if (r0 != 0x0) {
            r20 = [[r21 localizedDescription] retain];
            [r23 log:r20];
            [r20 release];
            r20 = [[VungleLogger sharedLogger] retain];
            r0 = [r21 localizedDescription];
            r29 = r29;
            r19 = [r0 retain];
            [r20 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r19 release];
            [r20 release];
    }
    r19 = [var_118 copy];
    [r23 setCurrentPlayOptions:r19];
    [r19 release];
    [r23 setPresentationMode:0x2];
    r20 = [[r25 adUnit] retain];
    [r20 setIncentivized:[r25 isIncentivized]];
    r19 = [[var_118 user] retain];
    var_138 = r20;
    [r20 setUser:r19];
    [r19 release];
    r0 = [r25 adUnit];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100605a34;

loc_10060581c:
    r20 = [r25 state];
    [r19 release];
    if (r20 != 0x2) goto loc_100605a3c;

loc_100605840:
    var_158 = r21;
    objc_initWeak(&stack[-224], r23);
    r20 = var_138;
    if ([r20 adType] == 0x1 || [r20 adType] == 0x2) goto loc_100605884;

loc_1006058e8:
    if (var_120 != 0x0) {
            r19 = objc_alloc();
            r21 = [[NSDictionary dictionaryWithObjects:&stack[-200] forKeys:&var_C0 count:0x1] retain];
            *var_120 = [[r19 initWithDomain:@"VungleSDK" code:0x6 userInfo:r21] autorelease];
            [r21 release];
            r21 = [[*var_120 localizedDescription] retain];
            [r23 log:r21];
            [r21 release];
            r21 = [[VungleLogger sharedLogger] retain];
            r19 = [[*var_120 localizedDescription] retain];
            [r21 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r19 release];
            [r21 release];
    }
    r19 = 0x0;
    r21 = var_158;
    goto loc_10060648c;

loc_10060648c:
    objc_destroyWeak(&stack[-224]);
    goto loc_100606494;

loc_100606494:
    [r20 release];
    [var_118 release];
    [r21 release];
    goto loc_1006064ac;

loc_100605884:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r19 release];
    if (s8 >= 0x4022000000000000) goto loc_100605c0c;
    goto loc_1006058e8;

loc_100605c0c:
    r0 = [r20 retain];
    var_160 = r0;
    r0 = [r0 templateType];
    r21 = var_158;
    if (r0 == 0x2 || [var_160 templateType] == 0x3) goto loc_100605c48;

loc_1006061a8:
    if (var_120 != 0x0) {
            r20 = r23;
            r23 = [[NSString stringWithFormat:@"This placement does not use the correct `flexfeed` or `mrec` template type:  %@"] retain];
            r19 = objc_alloc();
            r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x98 forKeys:r29 - 0xa0 count:0x1] retain];
            *var_120 = [[r19 initWithDomain:@"VungleSDK" code:0x3 userInfo:r21] autorelease];
            [r21 release];
            r21 = [[*var_120 localizedDescription] retain];
            [r20 log:r21];
            [r21 release];
            r21 = [[VungleLogger sharedLogger] retain];
            r19 = [[*var_120 localizedDescription] retain];
            [r21 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r19 release];
            [r21 release];
            [r23 release];
            r21 = var_158;
            r20 = var_138;
    }
    goto loc_100606480;

loc_100606480:
    [var_160 release];
    r19 = 0x0;
    goto loc_10060648c;

loc_100605c48:
    if ([var_160 templateType] != 0x3) goto loc_100605e88;

loc_100605c5c:
    [r22 frame];
    if (d2 != *0x100b9b1b8 || d3 != *0x100ba2d58) goto loc_100605c8c;

loc_100605ed0:
    r0 = objc_msgSend(r23, var_140);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r19 = [NSMutableDictionary new];
            [r23 setCustomControllerDict:r19];
            [r19 release];
    }
    var_150 = r27;
    r19 = objc_alloc();
    [r22 frame];
    r21 = [[r23 reportIncentivizedController] retain];
    r27 = [r19 initWithPlacement:r25 frame:0x0 viewController:r21 reportIncentivizedController:r5];
    [r21 release];
    [r27 setDelegate:r23];
    r19 = [[r23 publisherInformation] retain];
    [r27 setPublisherInformation:r19];
    [r19 release];
    [r27 activateDisplayLinkViewabilityTracking];
    r24 = r23;
    r0 = [r23 currentPlayOptions];
    r26 = &var_110 + 0x38;
    [r0 retain];
    objc_copyWeak(r26, &stack[-224]);
    var_F0 = [r25 retain];
    var_E8 = [r22 retain];
    r0 = [r27 retain];
    r27 = r0;
    var_E0 = r0;
    [r0 loadAdWithPlayOptions:r19 completionBlock:&var_110];
    [r19 release];
    r21 = [objc_msgSend(r24, var_140) retain];
    r23 = [[var_160 cacheKey] retain];
    r0 = objc_msgSend(r21, var_130);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r21 release];
    if (r0 == 0x0) {
            r21 = [objc_msgSend(r24, var_140) retain];
            [[var_160 cacheKey] retain];
            [r21 setObject:r2 forKey:r3];
            [r19 release];
            [r21 release];
    }
    [var_E0 release];
    [var_E8 release];
    [var_F0 release];
    objc_destroyWeak(r26);
    [r27 release];
    [var_160 release];
    r19 = 0x1;
    r21 = var_158;
    r27 = var_150;
    r20 = var_138;
    goto loc_10060648c;

loc_100605c8c:
    if (var_120 != 0x0) {
            r20 = r23;
            r23 = [[NSString stringWithFormat:@"The size of the view provided cannot be used to present an ad for the `mrec` template type:  %@, please provide a view with a width of 300 and a height of 250."] retain];
            r19 = objc_alloc();
            r21 = [[NSDictionary dictionaryWithObjects:r29 - 0xa8 forKeys:r29 - 0xb0 count:0x1] retain];
            *var_120 = [[r19 initWithDomain:@"VungleSDK" code:0x3 userInfo:r21] autorelease];
            [r21 release];
            r21 = [[*var_120 localizedDescription] retain];
            [r20 log:r21];
            [r21 release];
            r21 = [[VungleLogger sharedLogger] retain];
            r0 = *var_120;
            r0 = [r0 localizedDescription];
            r29 = r29;
            r19 = [r0 retain];
            [r21 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r19 release];
            [r21 release];
            [r23 release];
            r23 = r20;
            r20 = var_138;
    }
    r19 = [objc_msgSend(r23, r24) retain];
    r21 = [[r25 referenceID] retain];
    r0 = [r25 adUnit];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 cacheKey] retain];
    [r19 updateAdPlayableState:0x0 feedBasedPlacement:r21 adCacheKey:r24];
    goto loc_10060645c;

loc_10060645c:
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r21 = var_158;
    goto loc_100606480;

loc_100605e88:
    if ([var_160 templateType] != 0x2) goto loc_100605ed0;

loc_100605e9c:
    [r22 frame];
    v0 = v2;
    v1 = v3;
    if (([VungleCustomMRAIDViewController validateFlexContainerSize:var_120 error:r3] & 0x1) == 0x0) goto loc_100606324;
    goto loc_100605ed0;

loc_100606324:
    r8 = var_120;
    if (r8 != 0x0) {
            r21 = [[*r8 localizedDescription] retain];
            [r23 log:r21];
            [r21 release];
            r21 = [[VungleLogger sharedLogger] retain];
            r0 = *var_120;
            r0 = [r0 localizedDescription];
            r29 = r29;
            r19 = [r0 retain];
            [r21 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r19 release];
            [r21 release];
    }
    r19 = [objc_msgSend(r23, r24) retain];
    r21 = [[r25 referenceID] retain];
    r0 = [r25 adUnit];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 cacheKey] retain];
    [r19 updateAdPlayableState:0x0 feedBasedPlacement:r21 adCacheKey:r24];
    goto loc_10060645c;

loc_100605a3c:
    r19 = [[r23 placementsCoordinator] retain];
    r0 = [r25 referenceID];
    r29 = r29;
    r20 = [r0 retain];
    [r19 fetchAutoCacheablePlacementWithPlacementID:r20];
    [r20 release];
    [r19 release];
    r24 = var_120;
    if (r24 != 0x0) {
            r0 = [NSString stringWithFormat:@"Ad is not loaded for this placement %@"];
            r0 = [r0 retain];
            r19 = objc_alloc();
            r20 = [[NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:r29 - 0x90 count:0x1] retain];
            *r24 = [[r19 initWithDomain:@"VungleSDK" code:0x3 userInfo:r20] autorelease];
            [r20 release];
            r20 = [[*r24 localizedDescription] retain];
            [r23 log:r20];
            [r20 release];
            r20 = [[VungleLogger sharedLogger] retain];
            r19 = [[*r24 localizedDescription] retain];
            [r20 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r19 release];
            [r20 release];
            [r0 release];
    }
    r19 = 0x0;
    r20 = var_138;
    goto loc_100606494;

loc_100605a34:
    [r19 release];
    goto loc_100605a3c;

loc_100605530:
    [r21 release];
    [r19 release];
    goto loc_100605540;

loc_100605524:
    r24 = @selector(playabilityCoordinator);
    r20 = @selector(objectForKeyedSubscript:);
    goto loc_100605554;

loc_10060551c:
    r19 = 0x0;
    goto loc_1006064ac;

loc_100605514:
    r19 = 0x0;
    goto loc_1006064b4;
}

-(void)streamingAdControllerShouldPlayAdForPlacement:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r21 tmpViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    objc_initWeak(r29 - 0x28, r21);
                    objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
                    var_38 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_58);
                    [var_38 release];
                    objc_destroyWeak(&var_58 + 0x28);
                    objc_destroyWeak(r29 - 0x28);
            }
            else {
                    [r21 setTmpViewController:0x0];
                    r0 = [r21 adRequestCoordinator];
                    r0 = [r0 retain];
                    [r0 setAdPlaying:0x0];
                    [r0 release];
                    r21 = [[r21 placementsCoordinator] retain];
                    r22 = [[r19 referenceID] retain];
                    [r21 fetchAutoCacheablePlacementWithPlacementID:r22];
                    [r22 release];
                    [r21 release];
            }
    }
    else {
            [r21 setTmpViewController:0x0];
            r0 = [r21 adRequestCoordinator];
            r0 = [r0 retain];
            [r0 setAdPlaying:0x0];
            [r0 release];
            r21 = [[r21 placementsCoordinator] retain];
            r22 = [[r19 referenceID] retain];
            [r21 fetchAutoCacheablePlacementWithPlacementID:r22];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)presentAdForPlacement:(void *)arg2 viewController:(void *)arg3 playOptions:(void *)arg4 {
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff80 - 0x230;
    r27 = [arg2 retain];
    r28 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [[r27 adUnit] retain];
    [r23 setIncentivized:[r27 isIncentivized]];
    r19 = [[r22 user] retain];
    [r23 setUser:r19];
    [r19 release];
    var_210 = self;
    r19 = [[self placementsCoordinator] retain];
    r0 = [r27 referenceID];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r19 placementIsSleeping:r20];
    [r20 release];
    [r19 release];
    if (r21 == 0x0) goto loc_100602230;

loc_10060212c:
    r0 = [r27 referenceID];
    r0 = [r0 retain];
    r19 = [[NSString stringWithFormat:@"Cannot play ad for placement ID: %@, placement is sleeping"] retain];
    [r0 release];
    r21 = [[VungleLogger sharedLogger] retain];
    r25 = r22;
    r22 = @class(VungleLogger);
    r0 = [r23 appId];
    r0 = [r0 retain];
    r26 = r23;
    r23 = r0;
    r22 = [[r22 eventIDFromAppID:r23] retain];
    [r21 setEventID:r22];
    r0 = r22;
    r22 = r25;
    [r0 release];
    r0 = r23;
    r23 = r26;
    [r0 release];
    [r21 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    goto loc_1006026d0;

loc_1006026d0:
    r0 = [r0 retain];
    [r0 logMessage:r19 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    [r19 release];
    r19 = 0x0;
    goto loc_10060270c;

loc_10060270c:
    var_80 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    [r28 release];
    [r27 release];
    if (**___stack_chk_guard == var_80) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100602230:
    r0 = [r27 adUnit];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100602570;

loc_100602250:
    r20 = [r27 state];
    [r19 release];
    if (r20 != 0x2) goto loc_100602578;

loc_100602274:
    objc_initWeak(&stack[-296], var_210);
    r0 = [r23 adType];
    var_268 = r22;
    if (r0 == 0x1 || [r23 adType] == 0x2) goto loc_1006022b4;

loc_100602318:
    if (([r23 viewed] & 0x1) != 0x0 || [r23 isValid] == 0x0 || r23 == 0x0 || [r23 adType] != 0x0 && [r23 adType] != 0x3) goto loc_100602368;

loc_100602be0:
    var_288 = r28;
    var_280 = r27;
    r0 = [r23 retain];
    var_1C0 = q0;
    var_258 = r0;
    r0 = [r0 parts];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_218 = r0;
    var_270 = r1;
    r0 = objc_msgSend(r0, r1);
    r28 = r0;
    var_290 = @selector(adType);
    var_278 = r23;
    r24 = 0x0;
    if (r0 != 0x0) {
            r24 = 0x0;
            r25 = *var_1C0;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_1C0 != r25) {
                                    objc_enumerationMutation(var_218);
                            }
                            r20 = *(var_1C8 + r21 * 0x8);
                            if ([r20 type] == 0x1) {
                                    r23 = r24;
                                    r0 = [var_258 tpatEvents];
                                    r0 = [r0 retain];
                                    r26 = [[r0 objectForKeyedSubscript:@"moat"] retain];
                                    [var_210 isViewabilityEnabled:r26];
                                    [r26 release];
                                    [r0 release];
                                    r26 = objc_alloc();
                                    r19 = [[var_210 configController] retain];
                                    r0 = [var_210 currentPlayOptions];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [var_210 muted];
                                    r24 = [r26 initWithAdPart:r2 configController:r3 playOptionsProvider:r4 viewabilityEnabled:r5 isMuted:r6];
                                    [r23 release];
                                    [r27 release];
                                    [r19 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r28);
                    r0 = objc_msgSend(var_218, var_270);
                    r28 = r0;
            } while (r0 != 0x0);
    }
    [var_218 release];
    r0 = objc_alloc();
    r25 = var_210;
    r20 = r0;
    r19 = [[r25 reportingController] retain];
    r21 = [[r25 currentPlayOptions] retain];
    r22 = [[r25 reportIncentivizedController] retain];
    r0 = [r25 configController];
    r29 = r29;
    r0 = [r0 retain];
    r3 = r19;
    r20 = [r20 initWithPlacement:var_280 reportAdController:r3 videoPlayer:r24 playOptions:r21 interstitialAdDelegate:r25 reportIncentivizedController:r22 configController:r0];
    [r25 setCurrentAdViewController:r20];
    [r20 release];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    if (objc_msgSend(var_258, var_290) == 0x3) {
            r19 = [r25 validCTAURLResolved];
            r0 = [r25 currentAdViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setValidCTAURLResolved:r19];
            r0 = r0;
    }
    else {
            r19 = [[var_258 ctaURLResolved] retain];
            r20 = [[NSURL URLWithString:r19] retain];
            r21 = [VungleUtil isValidURL:r20];
            r0 = [r25 currentAdViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setValidCTAURLResolved:r21];
            [r0 release];
            [r20 release];
            r0 = r19;
    }
    [r0 release];
    var_228 = r24;
    [[r25 currentAdViewController] retain];
    r0 = [var_288 retain];
    r26 = r0;
    var_1E8 = r0;
    r0 = [var_258 retain];
    var_220 = &var_208 + 0x30;
    var_218 = r0;
    var_1E0 = r0;
    objc_copyWeak(&var_208 + 0x30, &stack[-296]);
    [r19 setDoneWithAdBlock:&var_208];
    [r19 release];
    r0 = [var_280 adUnit];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 campaign];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 vng_creativeID];
    r29 = r29;
    r27 = [r0 retain];
    [r20 release];
    [r19 release];
    if (r27 != 0x0) {
            r0 = [r25 creativeTrackingDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 respondsToSelector:@selector(vungleCreative:readyForPlacement:), r3];
            [r0 release];
            if (r22 != 0x0) {
                    r20 = [[r25 creativeTrackingDelegate] retain];
                    r0 = [var_280 referenceID];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r20 vungleCreative:r27 readyForPlacement:r21];
                    [r21 release];
                    [r20 release];
            }
    }
    r0 = [r25 delegate];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r21 = r0;
            r0 = [r25 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(vungleWillShowAdForPlacementID:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r19 = @selector(delegate);
                    r19 = [objc_msgSend(r25, r19) retain];
                    r0 = [var_280 referenceID];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 vungleWillShowAdForPlacementID:r21];
                    [r21 release];
                    [r19 release];
            }
    }
    r0 = [var_280 referenceID];
    r0 = [r0 retain];
    r20 = [[NSString stringWithFormat:@"Presenting ad for placement ID: %@"] retain];
    [r0 release];
    r21 = [[VungleLogger sharedLogger] retain];
    r23 = @class(VungleLogger);
    r22 = [[var_218 appId] retain];
    r23 = [[r23 eventIDFromAppID:r22] retain];
    [r21 setEventID:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r20 level:0xf4240 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r0 = [r25 currentAdViewController];
    r0 = [r0 retain];
    [r0 setModalPresentationStyle:0x0];
    [r0 release];
    r19 = [[r25 currentAdViewController] retain];
    [r26 presentViewController:r19 animated:0x1 completion:0x0];
    [r19 release];
    [r20 release];
    [r27 release];
    objc_destroyWeak(var_220);
    [var_1E0 release];
    [var_1E8 release];
    [var_218 release];
    [var_228 release];
    r19 = 0x1;
    r28 = var_288;
    r27 = var_280;
    goto loc_10060299c;

loc_10060299c:
    r22 = var_268;
    r23 = var_278;
    goto loc_100603120;

loc_100603120:
    objc_destroyWeak(&stack[-296]);
    goto loc_10060270c;

loc_100602368:
    r26 = r23;
    r0 = [r27 referenceID];
    r0 = [r0 retain];
    r20 = [[NSString stringWithFormat:@"Cannot play ad for placement ID: %@"] retain];
    [r0 release];
    r21 = [[VungleLogger sharedLogger] retain];
    r23 = @class(VungleLogger);
    r22 = [[r26 appId] retain];
    r23 = [[r23 eventIDFromAppID:r22] retain];
    [r21 setEventID:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r20 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r0 = [var_210 adRequestCoordinator];
    r0 = [r0 retain];
    [r0 setAdPlaying:0x0];
    [r0 release];
    r0 = [var_210 placementsCoordinator];
    r29 = r29;
    r0 = [r0 retain];
    [r0 cleanupCache];
    [r0 release];
    if ([r27 isCacheable] != 0x0) {
            r19 = [[var_210 adRequestCoordinator] retain];
            r21 = [[r27 referenceID] retain];
            [r19 requestAutoCacheablePlacementWithID:r21];
            [r21 release];
            [r19 release];
    }
    [r20 release];
    r19 = 0x0;
    r22 = var_268;
    r23 = r26;
    goto loc_100603120;

loc_1006022b4:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r19 release];
    if (s8 >= 0x4022000000000000) goto loc_100602770;
    goto loc_100602318;

loc_100602770:
    r0 = [r23 retain];
    r25 = r0;
    if ([r0 templateType] == 0x2 || [r25 templateType] == 0x3) goto loc_1006027a8;

loc_1006029a8:
    if ([r25 templateType] == 0x0) goto loc_100602f48;

loc_1006029b8:
    if ([r25 templateType] != 0x1) goto loc_100603114;

loc_1006029cc:
    r20 = objc_alloc();
    r0 = [r28 view];
    r0 = [r0 retain];
    [r0 frame];
    r21 = [[var_210 reportIncentivizedController] retain];
    r20 = [r20 initWithPlacement:r27 frame:r28 viewController:r21 reportIncentivizedController:r5];
    [var_210 setCustomMRAIDController:r20];
    [r20 release];
    [r21 release];
    [r0 release];
    r0 = [var_210 customMRAIDController];
    r0 = [r0 retain];
    [r0 setDelegate:var_210];
    [r0 release];
    r20 = [[VunglePublisherInformationProvider sharedProvider] retain];
    r0 = [var_210 customMRAIDController];
    r0 = [r0 retain];
    [r0 setPublisherInformation:r20];
    [r0 release];
    [r20 release];
    [[var_210 customMRAIDController] retain];
    r0 = [var_210 currentPlayOptions];
    r20 = &var_188 + 0x30;
    [r0 retain];
    objc_copyWeak(r20, &stack[-296]);
    var_168 = [r27 retain];
    var_160 = [r28 retain];
    [r19 loadAdWithPlayOptions:r21 completionBlock:&var_188];
    [r21 release];
    [r19 release];
    [var_160 release];
    r0 = var_168;
    goto loc_100603108;

loc_100603108:
    [r0 release];
    objc_destroyWeak(r20);
    goto loc_100603114;

loc_100603114:
    [r25 release];
    r19 = 0x1;
    goto loc_100603120;

loc_100602f48:
    r20 = objc_alloc();
    r19 = [[var_210 reportIncentivizedController] retain];
    r20 = [r20 initWithPlacement:r27 reportIncentivizedController:r19];
    [var_210 setVmraidController:r20];
    [r20 release];
    [r19 release];
    r0 = [var_210 vmraidController];
    r0 = [r0 retain];
    [r0 setDelegate:var_210];
    [r0 release];
    r20 = [[VunglePublisherInformationProvider sharedProvider] retain];
    r0 = [var_210 vmraidController];
    r0 = [r0 retain];
    [r0 setPublisherInformation:r20];
    [r0 release];
    [r20 release];
    [[var_210 vmraidController] retain];
    r0 = [var_210 currentPlayOptions];
    r20 = &var_150 + 0x30;
    [r0 retain];
    objc_copyWeak(r20, &stack[-296]);
    var_130 = [r27 retain];
    var_128 = [r28 retain];
    [r19 loadAdWithPlayOptions:r21 completionBlock:&var_150];
    [r21 release];
    [r19 release];
    [var_128 release];
    r0 = var_130;
    goto loc_100603108;

loc_1006027a8:
    var_278 = r23;
    r0 = [r27 referenceID];
    r0 = [r0 retain];
    r20 = [[NSString stringWithFormat:@"This placement does not use the correct `fullscreen` or `flexview` template type:  %@"] retain];
    [r0 release];
    r19 = objc_alloc();
    r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:r29 - 0x90 count:0x1] retain];
    r19 = [r19 initWithDomain:@"VungleSDK" code:0x3 userInfo:r21];
    [r21 release];
    r21 = [[r19 localizedDescription] retain];
    [var_210 log:r21];
    [r21 release];
    r22 = [[VungleLogger sharedLogger] retain];
    r24 = @class(VungleLogger);
    r23 = [[r25 appId] retain];
    r24 = [[r24 eventIDFromAppID:r23] retain];
    [r22 setEventID:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r20 level:0xf4243 context:@"SDK Ad Lifecycle"];
    [r0 release];
    [r19 release];
    [r20 release];
    [r25 release];
    r19 = 0x0;
    goto loc_10060299c;

loc_100602578:
    r19 = [[var_210 placementsCoordinator] retain];
    r20 = [[r27 referenceID] retain];
    [r19 fetchAutoCacheablePlacementWithPlacementID:r20];
    [r20 release];
    [r19 release];
    r0 = [r27 referenceID];
    r0 = [r0 retain];
    r19 = [[NSString stringWithFormat:@"Cannot play ad for placement ID: %@"] retain];
    [r0 release];
    r21 = [[VungleLogger sharedLogger] retain];
    r25 = r22;
    r22 = @class(VungleLogger);
    r0 = [r23 appId];
    r0 = [r0 retain];
    r26 = r23;
    r23 = r0;
    r22 = [[r22 eventIDFromAppID:r23] retain];
    [r21 setEventID:r22];
    r0 = r22;
    r22 = r25;
    [r0 release];
    r0 = r23;
    r23 = r26;
    [r0 release];
    [r21 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    goto loc_1006026d0;

loc_100602570:
    [r19 release];
    goto loc_100602578;
}

-(void)streamingSettingsUpdateShouldStream:(bool)arg2 streamingRequestTimeout:(double)arg3 bufferingTimeout:(double)arg4 {
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    r21 = r0;
    [r0 setStreamingRequestTimeout:r2];
    r0 = [self requestStreamingAdController];
    r0 = [r0 retain];
    [r0 setShouldStream:arg2];
    [r0 release];
    [r21 release];
    return;
}

-(void)placementCoordinatorDidLoadPlacement:(void *)arg2 error:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 description];
            r0 = [r0 retain];
            r22 = [[NSString stringWithFormat:@"Failed to load placement and ad unit - error: %@"] retain];
            [r0 release];
            r24 = [[VungleLogger sharedLogger] retain];
            r25 = @class(VungleLogger);
            r0 = [r19 adUnit];
            r0 = [r0 retain];
            r27 = [[r0 appId] retain];
            r25 = [[r25 eventIDFromAppID:r27] retain];
            [r24 setEventID:r25];
            [r25 release];
            [r27 release];
            [r0 release];
            [r24 release];
            r0 = @class(VungleLogger);
            r0 = [r0 sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:r22 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r0 release];
            r0 = [r21 playabilityCoordinator];
            r0 = [r0 retain];
            [r0 fireAdPlayable:0x0 placement:r19];
            [r0 release];
            r0 = [r21 nativeAdsDelegate];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r25 = [r21 placementHasNativeAdsTemplateType:r19];
                    [r0 release];
                    if (r25 != 0x0) {
                            r21 = [[r21 nativeAdsDelegate] retain];
                            r23 = [[r19 referenceID] retain];
                            [r21 nativeAdsPlacement:r23 didFailToLoadAdWithError:r20];
                            [r23 release];
                            [r21 release];
                    }
            }
            [r22 release];
    }
    else {
            var_58 = r20;
            r0 = [r19 referenceID];
            r0 = [r0 retain];
            var_60 = [[NSString stringWithFormat:@"Ad unit successfully loaded for placement ID %@. Notifying app."] retain];
            [r0 release];
            r26 = [[VungleLogger sharedLogger] retain];
            r27 = @class(VungleLogger);
            r0 = [r19 adUnit];
            r0 = [r0 retain];
            r22 = [[r0 appId] retain];
            r27 = [[r27 eventIDFromAppID:r22] retain];
            [r26 setEventID:r27];
            [r27 release];
            [r22 release];
            [r0 release];
            [r26 release];
            r0 = @class(VungleLogger);
            r20 = var_60;
            r0 = [r0 sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:r20 level:0xf4240 context:@"SDK Ad Lifecycle"];
            [r0 release];
            r0 = [r21 playabilityCoordinator];
            r0 = [r0 retain];
            [r0 fireAdPlayable:0x1 placement:r19];
            [r0 release];
            r0 = [r21 headerBiddingDelegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = [[r21 headerBiddingDelegate] retain];
                    r25 = [[r19 referenceID] retain];
                    r0 = [r19 adUnit];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 bidToken];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r22 placementPrepared:r25 withBidToken:r26];
                    [r26 release];
                    [r24 release];
                    [r25 release];
                    [r22 release];
            }
            r0 = [r21 nativeAdsDelegate];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r22 = [r21 placementHasNativeAdsTemplateType:r19];
                    [r0 release];
                    if (r22 != 0x0) {
                            r21 = [[r21 nativeAdsDelegate] retain];
                            r22 = [[r19 referenceID] retain];
                            [r21 nativeAdsPlacementDidLoadAd:r22];
                            [r22 release];
                            [r21 release];
                    }
            }
            [r20 release];
            r20 = var_58;
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)attachLogger:(void *)arg2 {
    [VungleLogCoordinator attachLogger:arg2];
    return;
}

-(void *)debugInfo {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self publisherInformation];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 IFA];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"IFA not set yet";
            }
    }
    r19 = [r0 retain];
    [r23 release];
    [r22 release];
    r0 = [r20 publisherInformation];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 appID];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"App ID not set yet";
            }
    }
    var_38 = **___stack_chk_guard;
    r22 = [r0 retain];
    [r21 release];
    [r20 release];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_70 count:0x3];
    r20 = [r0 retain];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)detachLogger:(void *)arg2 {
    [VungleLogCoordinator detachLogger:arg2];
    return;
}

-(void)setPluginName:(void *)arg2 version:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r22 = [arg2 retain];
    r23 = @selector(copy);
    r19 = objc_msgSend(arg3, r23);
    r20 = objc_msgSend(arg2, r23);
    [r22 release];
    r22 = *0x1011da898;
    if (r22 == 0x0) {
            r0 = [NSArray arrayWithObjects:&var_C0 count:0x10];
            r29 = r29;
            r22 = [r0 retain];
            r0 = *0x1011da898;
            *0x1011da898 = r22;
            [r0 release];
    }
    r22 = [r22 indexOfObject:r20];
    r0 = *(r21 + 0x108);
    if (r0 != 0x0) {
            *(r21 + 0x108) = 0x0;
            [r0 release];
    }
    if (r22 == 0x7fffffffffffffff) {
            r0 = *(r21 + 0x108);
            *(r21 + 0x108) = 0x0;
            [r0 release];
    }
    else {
            r0 = [NSString stringWithFormat:@"%@/%@"];
            r29 = r29;
            [r0 retain];
            [r21 setPluginName:r2];
            [r23 release];
    }
    var_38 = **___stack_chk_guard;
    [[r21 pluginName] retain];
    r0 = [r21 publisherInformation];
    r0 = [r0 retain];
    [r0 setPluginName:r2];
    [r21 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setup {
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 setupLoggerWithLoggingLevel:0xf4240 maximumEntries:0x64 name:@"SDKLogger" bufferSize:0x5 defaults:*(self + 0x48)];
    [r0 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 kickstartWithError:&var_38];
    r20 = [var_38 retain];
    [r0 release];
    r21 = [[VungleLogger sharedLogger] retain];
    r23 = [[*(self + 0xc0) pluginName] retain];
    r22 = [[NSString stringWithFormat:@"Vungle/%@;%@"] retain];
    [r21 setUserAgent:r22];
    [r22 release];
    [r23 release];
    [r21 release];
    *(int8_t *)(self + 0x8) = 0x0;
    *(int8_t *)(self + 0xa) = 0x0;
    [self setUserData:**___NSDictionary0__];
    [r20 release];
    return;
}

-(void)clearSleep {
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    [r0 clearSleep];
    [r0 release];
    return;
}

-(bool)isViewabilityEnabled:(void *)arg2 {
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
    r0 = [self configController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isViewabilityTypeEnabled:0x1];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r21 = r0;
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = [r0 length];
                            [r0 release];
                            [r21 release];
                            if (r23 != 0x0) {
                                    r20 = 0x1;
                            }
                            else {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r20 = [r0 boolValue];
                                    [r0 release];
                            }
                    }
                    else {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r20 = [r0 boolValue];
                            [r0 release];
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)updateConsentStatus:(long long)arg2 consentMessageVersion:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = [arg3 retain];
    if (r20 != 0x2) {
            if (r20 == 0x1) {
                    r20 = @"opted_in";
            }
            else {
                    r20 = @"unknown";
            }
    }
    else {
            r20 = @"opted_out";
    }
    [r20 retain];
    r21 = [[VNGUserConsentInfoModel sharedModel] retain];
    r22 = [[NSDate date] retain];
    [r21 updateWithConsentStatus:r20 consentSource:@"publisher" consentMessageVersion:r19 consentTimeStamp:r22 consentRequired:0x1];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)getConsentMessageVersion {
    r0 = [VNGUserConsentInfoModel sharedModel];
    r0 = [r0 retain];
    r20 = [[r0 messageVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)getCurrentConsentStatus {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [VNGUserConsentInfoModel sharedModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 consentStatus];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r21 = @selector(isEqualToString:);
            r0 = [r19 consentStatus];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (objc_msgSend(r0, r21) != 0x0) {
                    [r22 release];
                    r20 = 0x2;
            }
            else {
                    r21 = @selector(isEqualToString:);
                    r0 = [r19 consentStatus];
                    r0 = [r0 retain];
                    r21 = objc_msgSend(r0, r21);
                    [r0 release];
                    [r22 release];
                    if (r21 != 0x0) {
                            r20 = 0x2;
                    }
                    else {
                            r20 = 0x0;
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)placementHasNativeAdsTemplateType:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 adType];
    [r0 release];
    if (r22 == 0x1) {
            r0 = [r19 adUnit];
            r0 = [r0 retain];
            r21 = [r0 templateType];
            [r0 release];
            if (r21 == 0x3) {
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)bidTokenForPlacement:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self placementsCoordinator];
    r0 = [r0 retain];
    r20 = [[r0 placementWithReferenceID:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 adUnit];
    r0 = [r0 retain];
    r21 = [[r0 bidToken] retain];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)userData {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x1);
    return r0;
}

-(void)setUserData:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)muted {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)forwardCachedBidTokens {
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
    r20 = self;
    r0 = [self headerBiddingDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(placementPrepared:withBidToken:), r3];
    [r0 release];
    if (r22 != 0x0) {
            var_138 = r20;
            r0 = [r20 placementsCoordinator];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 loadedPlacements];
            r29 = r29;
            r22 = [r0 retain];
            [r19 release];
            var_110 = q0;
            r0 = [r22 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_148 = r1;
            var_140 = r0;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r21 = *var_110;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_110 != r21) {
                                            objc_enumerationMutation(var_140);
                                    }
                                    r19 = *(var_118 + r22 * 0x8);
                                    r0 = [r19 adUnit];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 bidToken];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r20 release];
                                    if ([r23 length] != 0x0) {
                                            r20 = [[var_138 headerBiddingDelegate] retain];
                                            r0 = [r19 referenceID];
                                            r29 = r29;
                                            [r0 retain];
                                            [r20 placementPrepared:r2 withBidToken:r3];
                                            [r19 release];
                                            [r20 release];
                                    }
                                    [r23 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r24);
                            r0 = objc_msgSend(var_140, var_148);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [var_140 release];
            [var_140 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setMuted:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)isInitialized {
    r0 = *(int8_t *)(self + 0x9) & 0x1;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(unsigned long long)presentationMode {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setPresentationMode:(unsigned long long)arg2 {
    *(self + 0x20) = arg2;
    return;
}

-(bool)loggingEnabled {
    r0 = *(int8_t *)(self + 0xa) & 0x1;
    return r0;
}

-(void)setLoggingEnabled:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(double)preventPlayUntilTime {
    r0 = self;
    return r0;
}

-(void)setPreventPlayUntilTime:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

-(void *)playableEventTimer {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x1);
    return r0;
}

-(void)setPlayableEventTimer:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(bool)isPlaying {
    r0 = *(int8_t *)(self + 0xb) & 0x1;
    return r0;
}

-(void)setIsPlaying:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(void *)tmpViewController {
    r0 = objc_loadWeakRetained(self + 0x38);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTmpViewController:(void *)arg2 {
    objc_storeWeak(self + 0x38, arg2);
    return;
}

-(void *)currentAdViewController {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setCurrentAdViewController:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void)setDefaults:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)defaults {
    r0 = *(self + 0x48);
    return r0;
}

-(void *)requestAdController {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setRequestAdController:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)placementsCoordinator {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setPlacementsCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)configController {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setConfigController:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void *)createNewRequestController {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setCreateNewRequestController:(void *)arg2 {
    objc_storeStrong(self + 0x68, arg2);
    return;
}

-(void *)requestStreamingAdController {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setRequestStreamingAdController:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void *)reportingController {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setReportingController:(void *)arg2 {
    objc_storeStrong(self + 0x78, arg2);
    return;
}

-(void *)reportIncentivizedController {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setReportIncentivizedController:(void *)arg2 {
    objc_storeStrong(self + 0x80, arg2);
    return;
}

-(void *)appLifecycleCoordinator {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setAppLifecycleCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0x88, arg2);
    return;
}

-(void *)vmraidController {
    r0 = *(self + 0x90);
    return r0;
}

-(void)setVmraidController:(void *)arg2 {
    objc_storeStrong(self + 0x90, arg2);
    return;
}

-(void *)customMRAIDController {
    r0 = *(self + 0x98);
    return r0;
}

-(void)setCustomMRAIDController:(void *)arg2 {
    objc_storeStrong(self + 0x98, arg2);
    return;
}

-(bool)didStartup {
    r0 = *(int8_t *)(self + 0xc) & 0x1;
    return r0;
}

-(bool)isHeaderBiddingEnabled {
    r0 = *(int8_t *)(self + 0xd);
    return r0;
}

-(void)setDidStartup:(bool)arg2 {
    *(int8_t *)(self + 0xc) = arg2;
    return;
}

-(unsigned long long)endTaskId {
    r0 = *(self + 0xa0);
    return r0;
}

-(void)setHeaderBiddingEnabled:(bool)arg2 {
    *(int8_t *)(self + 0xd) = arg2;
    return;
}

-(void *)SDKInitializer {
    r0 = *(self + 0xa8);
    return r0;
}

-(void)setEndTaskId:(unsigned long long)arg2 {
    *(self + 0xa0) = arg2;
    return;
}

-(bool)isSuccessfulAdView {
    r0 = *(int8_t *)(self + 0xe);
    return r0;
}

-(void)setSDKInitializer:(void *)arg2 {
    objc_storeStrong(self + 0xa8, arg2);
    return;
}

-(void *)playabilityCoordinator {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setSuccessfulAdView:(bool)arg2 {
    *(int8_t *)(self + 0xe) = arg2;
    return;
}

-(void *)currentPlayOptions {
    r0 = objc_getProperty(self, _cmd, 0xb8, 0x0);
    return r0;
}

-(void)setPlayabilityCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0xb0, arg2);
    return;
}

-(void *)publisherInformation {
    r0 = *(self + 0xc0);
    return r0;
}

-(void)setCurrentPlayOptions:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_storeStrong(self + 0xc0, arg2);
    return;
}

-(void *)internalDelegate {
    r0 = *(self + 0xc8);
    return r0;
}

-(void)setInternalDelegate:(void *)arg2 {
    objc_storeStrong(self + 0xc8, arg2);
    return;
}

-(void *)presentationManager {
    r0 = *(self + 0xd0);
    return r0;
}

-(void)setPresentationManager:(void *)arg2 {
    objc_storeStrong(self + 0xd0, arg2);
    return;
}

-(void *)vngLogSender {
    r0 = *(self + 0xd8);
    return r0;
}

-(void)setVngLogSender:(void *)arg2 {
    objc_storeStrong(self + 0xd8, arg2);
    return;
}

-(bool)isAdDismissInProgress {
    r0 = *(int8_t *)(self + 0xf);
    return r0;
}

-(void *)adRequestCoordinator {
    r0 = *(self + 0xe0);
    return r0;
}

-(void)setAdDismissInProgress:(bool)arg2 {
    *(int8_t *)(self + 0xf) = arg2;
    return;
}

-(void)setAdRequestCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0xe0, arg2);
    return;
}

-(void *)customControllerDict {
    r0 = *(self + 0xe8);
    return r0;
}

-(void)setCustomControllerDict:(void *)arg2 {
    objc_storeStrong(self + 0xe8, arg2);
    return;
}

-(void *)nativeAdsDelegate {
    r0 = objc_loadWeakRetained(self + 0xf0);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setNativeAdsDelegate:(void *)arg2 {
    objc_storeWeak(self + 0xf0, arg2);
    return;
}

-(void *)headerBiddingDelegate {
    r0 = objc_loadWeakRetained(self + 0xf8);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)creativeTrackingDelegate {
    r0 = objc_loadWeakRetained(self + 0x100);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCreativeTrackingDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x100, arg2);
    return;
}

-(void)setPluginName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)validCTAURLResolved {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void *)pluginName {
    r0 = objc_getProperty(self, _cmd, 0x108, 0x0);
    return r0;
}

-(void)setValidCTAURLResolved:(bool)arg2 {
    *(int8_t *)(self + 0x10) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x108, 0x0);
    objc_destroyWeak(self + 0x100);
    objc_destroyWeak(self + 0xf8);
    objc_destroyWeak(self + 0xf0);
    objc_storeStrong(self + 0xe8, 0x0);
    objc_storeStrong(self + 0xe0, 0x0);
    objc_storeStrong(self + 0xd8, 0x0);
    objc_storeStrong(self + 0xd0, 0x0);
    objc_storeStrong(self + 0xc8, 0x0);
    objc_storeStrong(self + 0xc0, 0x0);
    objc_storeStrong(self + 0xb8, 0x0);
    objc_storeStrong(self + 0xb0, 0x0);
    objc_storeStrong(self + 0xa8, 0x0);
    objc_storeStrong(self + 0x98, 0x0);
    objc_storeStrong(self + 0x90, 0x0);
    objc_storeStrong(self + 0x88, 0x0);
    objc_storeStrong(self + 0x80, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_destroyWeak(self + 0x38);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    return;
}

@end