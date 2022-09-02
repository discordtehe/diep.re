@implementation AdColony

-(void *)sessionFromID {
    r0 = [self sessionMap];
    return r0;
}

-(void *)workThread {
    r0 = [self worker];
    return r0;
}

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2358 != -0x1) {
            dispatch_once(0x1011d2358, &var_28);
    }
    r0 = *0x1011d2360;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)addTimer:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [NSRunLoop currentRunLoop];
            r0 = [r0 retain];
            [r0 addTimer:r21 forMode:**_NSDefaultRunLoopMode];
            [r21 release];
            [r0 release];
    }
    return;
}

-(void *)init {
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
    r0 = [[&var_48 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_active = 0x0;
            r21 = [NSMutableArray new];
            [r19 setZoneIDs:r21];
            [r21 release];
            r21 = [NSMutableArray new];
            [r19 setZones:r21];
            [r21 release];
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_zoneFromID));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 setShowingInterstitial:0x0];
            [r19 setUseForcedController:0x0];
            [r19 setUseForcedAdUnit:0x0];
            [r19 setUseStagingLaunchServer:0x0];
            r21 = [NSObject new];
            [r19 setSessionMapLock:r21];
            [r21 release];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0] retain];
            [r19 setSessionMap:r22];
            [r22 release];
            r22 = [NSObject new];
            [r19 setRewardCallbacksLock:r22];
            [r22 release];
            r21 = [[NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0] retain];
            [r19 setRewardCallbacks:r21];
            [r21 release];
            r0 = [ADCWebServicesMPAPI new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_webServicesAPI));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [r19 webServicesAPI];
            r0 = [r0 retain];
            [r0 registerHandlers];
            [r0 release];
            [r19 setBlockRequests:0x0];
            [r19 setDismissAdOnBackground:0x0];
            [r19 setDismissAdOnBackgroundDelayMs:0x7d0];
            r20 = [ADCDynamicControls new];
            [r19 setDynamicControls:r20];
            [r20 release];
            r0 = [ADCAPIGuards sharedGuards];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 limiter];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            [r20 addEventType:0x0 withRate:0x1];
            [r20 addEventType:0x1 withRate:0x3];
            [r20 addEventType:0x3 withRate:0x3];
            r21 = [[NSThread alloc] initWithTarget:r19 selector:@selector(setupWorkerThread) object:0x0];
            [r19 setWorker:r21];
            [r21 release];
            if (*qword_1011d2370 != -0x1) {
                    dispatch_once(0x1011d2370, 0x100e76710);
            }
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setupWorkerThread {
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
    var_58 = objc_autoreleasePoolPush();
    r0 = [NSThread currentThread];
    r0 = [r0 retain];
    [r0 setName:@"AdColony Worker"];
    [r0 release];
    pthread_setname_np("AdColony Worker");
    r0 = [ADCLogManager new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_logManager));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 registerHandlers];
    [r0 release];
    r0 = [ADCAdSessionAPI new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionAPI));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [self sessionAPI];
    r0 = [r0 retain];
    [r0 registerHandlers];
    [r0 release];
    r0 = [ADCCustomNotificationAPI new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_notificationAPI));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [self notificationAPI];
    r0 = [r0 retain];
    [r0 registerHandlers];
    [r0 release];
    r21 = [[ADCNativeLayer sharedLayer] retain];
    r22 = [[NSTimer timerWithTimeInterval:r21 target:@selector(moduleUpdate) selector:0x0 userInfo:0x1 repeats:r6] retain];
    [self setModuleUpdateTimer:r22];
    [r22 release];
    [r21 release];
    r22 = [[NSRunLoop currentRunLoop] retain];
    r23 = [[self moduleUpdateTimer] retain];
    [r22 addTimer:r23 forMode:**_NSDefaultRunLoopMode];
    [r23 release];
    [r22 release];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 adColonyDisabled];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            do {
                    r26 = [[NSRunLoop currentRunLoop] retain];
                    [[NSDate distantFuture] retain];
                    [r26 runMode:r2 beforeDate:r3];
                    [r27 release];
                    [r26 release];
                    r0 = objc_msgSend(@class(ADCAPIGuards), r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = objc_msgSend(r0, r25);
                    [r0 release];
            } while (r27 == 0x0);
    }
    objc_autoreleasePoolPop(var_58);
    return;
}

-(void)disableActiveSessions {
    r31 = r31 - 0x1d0;
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
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    var_1A0 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    var_118 = q0;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r0;
    var_1B8 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_10023f2ac;

loc_10023efe4:
    r19 = *var_118;
    goto loc_10023eff4;

loc_10023eff4:
    r20 = 0x0;
    goto loc_10023f054;

loc_10023f054:
    if (*var_118 != r19) {
            objc_enumerationMutation(var_180);
    }
    r23 = *(var_120 + r20 * 0x8);
    if ([r23 isKindOfClass:[ADCInterstitialAdSession class]] == 0x0) goto loc_10023f134;

loc_10023f098:
    r0 = [r23 retain];
    r23 = r0;
    r0 = [r0 interstitialAd];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 getActive];
    [r0 release];
    if (r21 != 0x0) {
            r21 = [[var_1A0 sessionAPI] retain];
            r0 = [r23 identifier];
            r29 = r29;
            r28 = [r0 retain];
            [r21 onRequestClose:r28];
            [r28 release];
            [r21 release];
    }
    else {
            var_130 = [r23 retain];
            dispatch_async(*__dispatch_main_q, &var_150);
            [var_130 release];
    }
    r28 = *__dispatch_main_q;
    [r23 retain];
    dispatch_async(r28, &var_178);
    [r23 release];
    r0 = r21;
    goto loc_10023f27c;

loc_10023f27c:
    [r0 release];
    goto loc_10023f280;

loc_10023f280:
    r20 = r20 + 0x1;
    if (r20 < r22) goto loc_10023f054;

loc_10023f28c:
    r22 = objc_msgSend(var_180, var_1B8);
    if (r22 != 0x0) goto loc_10023eff4;

loc_10023f2ac:
    var_68 = **___stack_chk_guard;
    [var_180 release];
    [var_180 release];
    [var_1A0 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10023f134:
    if ([r23 isKindOfClass:[ADCNativeAdSession class]] == 0x0) goto loc_10023f280;

loc_10023f158:
    r0 = [r23 retain];
    r23 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 opened];
    [r0 release];
    if (r28 != 0x0) {
            r21 = [[var_1A0 sessionAPI] retain];
            r0 = [r23 identifier];
            r29 = r29;
            r28 = [r0 retain];
            [r21 onRequestClose:r28];
            [r28 release];
            [r21 release];
    }
    r0 = r23;
    goto loc_10023f27c;
}

+(void)configureWithAppID:(void *)arg2 zoneIDs:(void *)arg3 options:(void *)arg4 completion:(void *)arg5 {
    r31 = r31 - 0x110;
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
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    var_E8 = [[AdColony sharedInstance] retain];
    r0 = [ADCAPIGuards sharedGuards];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 limiter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r28 = [r0 shouldLimitEventType:0x0];
    [r0 release];
    [r26 release];
    if (r28 != 0x0) {
            r0 = [ADCAPIGuards sharedGuards];
            r0 = [r0 retain];
            r25 = [[r0 limiter] retain];
            [r0 release];
            [r25 getLimitingRate:r29 - 0x70 eventType:0x0];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Cannot configure AdColony; configuration mechanism requires %d seconds between attempts."];
            r0 = r25;
    }
    else {
            var_78 = [r22 retain];
            r0 = objc_retainBlock(&var_98);
            r24 = r0;
            if (([NSThread isMainThread] & 0x1) != 0x0) {
                    r25 = [var_E8 retain];
                    r26 = [r23 retain];
                    r27 = [r20 retain];
                    r28 = [r21 retain];
                    [r25 configureWithAppID:r26 zoneIDs:r27 options:r28 forceIt:0x0 completion:r24];
                    [r28 release];
                    [r27 release];
                    [r26 release];
                    r0 = r25;
            }
            else {
                    var_C0 = [var_E8 retain];
                    var_B8 = [r23 retain];
                    var_B0 = [r20 retain];
                    var_A8 = [r21 retain];
                    var_A0 = r24;
                    r24 = [r24 retain];
                    dispatch_async(*__dispatch_main_q, &var_E0);
                    [var_A0 release];
                    [var_A8 release];
                    [var_B0 release];
                    [var_B8 release];
                    r0 = var_C0;
            }
            [r0 release];
            [r24 release];
            r0 = var_78;
    }
    [r0 release];
    [var_E8 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)onInitialConfig:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_configured = 0x1;
    [self setAppSessionID:arg2];
    [self measureTimeTakenToConfigure];
    dispatch_async(*__dispatch_main_q, &var_38);
    [AdColonyEventTracker logQueuedEvents];
    [self checkForFirstInstall];
    return;
}

-(void)onConfigError {
    *(int8_t *)(int64_t *)&self->_configured = 0x0;
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)measureTimeTakenToConfigure {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self startTimeForConfigure];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 startTimeForConfigure];
            r0 = [r0 retain];
            [r0 timeIntervalSinceNow];
            [r0 release];
            r0 = [NSDateFormatter alloc];
            r0 = [r0 init];
            [r0 setDateFormat:@"HH:mm:ss:SSS"];
            r20 = [[r19 startTimeForConfigure] retain];
            r22 = [[r0 stringFromDate:r20] retain];
            [r20 release];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[AdColony measureTimeTakenToConfigure]" line:0x18e withFormat:@"Configure: Total Time (ms): %f and started at %@."];
            [r19 setStartTimeForConfigure:0x0];
            [r22 release];
            [r0 release];
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Unexpected call to measureTimeTakenToConfigure function"];
    }
    return;
}

-(void)checkForFirstInstall {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 stringForKey:@"installed"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r20 = [[ADCUtil getUUID] retain];
            [r21 release];
            [r19 setObject:r20 forKey:@"installed"];
            [r19 synchronize];
            r21 = [[ADCController sharedController] retain];
            r23 = @class(ADCUtil);
            r24 = [[r23 appBundleInfo] retain];
            r23 = [[r23 JSONStringFromJSONObject:r24] retain];
            r22 = [[NSString stringWithFormat:@"ADC3_on_install(%@)"] retain];
            [r21 evaluateJavascriptString:r22];
            [r22 release];
            [r23 release];
            [r24 release];
            [r21 release];
            r21 = r20;
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)configureWithAppID:(void *)arg2 zoneIDs:(void *)arg3 options:(void *)arg4 forceIt:(bool)arg5 completion:(void *)arg6 {
    r5 = arg5;
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
    r31 = r31 + 0xffffffffffffff90 - 0x2a0;
    r26 = r5;
    r25 = arg2;
    var_280 = self;
    r19 = [r25 retain];
    r22 = [arg3 retain];
    var_278 = [arg4 retain];
    var_270 = [arg6 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 adColonySupported] == 0x0 || ([r23 adColonyDisabled] & 0x1) != 0x0) goto loc_10023fa4c;

loc_10023fab0:
    if (r19 == 0x0) goto loc_10023ffdc;

loc_10023fab4:
    r0 = [var_278 getNumericOptionWithKey:@"reconfigurable"];
    r29 = r29;
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&var_280->_reconfigurable = [r0 boolValue];
    [r0 release];
    if (([var_280 reconfigurable] & 0x1) != 0x0) goto loc_10023fb80;

loc_10023fb18:
    r0 = [var_280 appID];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10023fb80;

loc_10023fb3c:
    r0 = [var_280 appID];
    r29 = r29;
    r21 = [r0 retain];
    r24 = [r19 isEqualToString:r2];
    [r21 release];
    [r20 release];
    if ((r24 & 0x1) == 0x0) goto loc_100240064;

loc_10023fb80:
    if (([r19 hasPrefix:r2] & 0x1) == 0x0) {
            r5 = @"The AdColony app ID you provided (%@) is probably not correct.";
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:r5];
    }
    if (r22 == 0x0 || [r22 count] == 0x0) goto loc_100240020;

loc_10023fbe4:
    var_2B8 = r19;
    var_288 = [NSMutableArray new];
    r21 = &stack[-504];
    *(int128_t *)(r21 + 0x60) = q0;
    *(int128_t *)(r21 + 0x70) = q0;
    *(int128_t *)(r21 + 0x40) = q0;
    *(int128_t *)(r21 + 0x50) = q0;
    r0 = [r22 retain];
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = r29 - 0xe8;
    var_290 = r0;
    r24 = objc_msgSend(r0, r20);
    if (r24 != 0x0) {
            r20 = @selector(countByEnumeratingWithState:objects:count:);
            r19 = *var_198;
            var_2C0 = r22;
            var_2D0 = r20;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_198 != r19) {
                                    objc_enumerationMutation(var_290);
                            }
                            r20 = *(var_1A0 + r22 * 0x8);
                            if (([r20 hasPrefix:r2] & 0x1) != 0x0) {
                                    r5 = @"One of the AdColony zone IDs you provided (%@) is probably not correct.";
                                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                            }
                            else {
                                    if (([r20 hasPrefix:r2] & 0x1) == 0x0 && ([r20 hasPrefix:r2] & 0x1) == 0x0) {
                                            r5 = @"One of the AdColony zone IDs you provided (%@) is probably not correct.";
                                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                                    }
                            }
                            if (([var_288 containsObject:r2] & 0x1) == 0x0) {
                                    [var_288 addObject:r2];
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r3 = r29 - 0xe8;
                    r20 = var_2D0;
                    r24 = objc_msgSend(var_290, r20);
                    r22 = var_2C0;
                    r21 = &stack[-504];
            } while (r24 != 0x0);
    }
    [var_290 release];
    if ((r26 & 0x1) != 0x0) {
            if ([var_280 active] != 0x0) {
                    r0 = [ADCAPIGuards sharedGuards];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = [r0 canReconfigure];
                    [r0 release];
                    if ((r21 & 0x1) != 0x0) {
                            if ([var_280 active] != 0x0) {
                                    r0 = [AdColony sharedInstance];
                                    r0 = [r0 retain];
                                    r3 = 0x2;
                                    [r0 performBlockOnWorkerThread:&var_210 mode:r3];
                                    [r0 release];
                                    dispatch_async(*__dispatch_main_q, &var_238);
                                    r0 = [var_280 zoneFromID];
                                    r0 = [r0 retain];
                                    [r0 removeAllObjects];
                                    [r0 release];
                                    r0 = [var_280 zones];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 removeAllObjects];
                                    [r0 release];
                            }
                            r20 = [[NSDate date] retain];
                            [var_280 setStartTimeForConfigure:r20];
                            [r20 release];
                            objc_storeStrong((int64_t *)&var_280->_appID, r25);
                            [var_280 setZoneIDs:var_288];
                            [var_280 setOptions:var_278];
                            r20 = [[ADCDevice sharedDevice] retain];
                            r0 = [var_278 userID];
                            r29 = r29;
                            r2 = [r0 retain];
                            [r20 setUserId:r2];
                            [r24 release];
                            [r20 release];
                            if (var_278 != 0x0) {
                                    [var_280 setOptions:r2];
                            }
                            else {
                                    r20 = [AdColonyAppOptions new];
                                    [var_280 setOptions:r20];
                                    [r20 release];
                            }
                            [var_280 setConfigCompletion:var_270];
                            r0 = [ADCAPIGuards sharedGuards];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 limiter];
                            r0 = [r0 retain];
                            [r0 addEventOfType:0x0];
                            [r0 release];
                            [r20 release];
                            r19 = var_278;
                            r0 = [ADCNativeLayer sharedLayer];
                            r26 = @selector(boolValue);
                            r24 = @selector(getNumericOptionWithKey:);
                            r29 = r29;
                            r25 = [r0 retain];
                            if (([var_280 active] & 0x1) != 0x0) {
                                    r0 = [ADCController sharedController];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 module];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [r25 unregisterDynamicModule:r21];
                                    [r21 release];
                                    r0 = r20;
                            }
                            else {
                                    r0 = [var_280 workThread];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 start];
                                    [r0 release];
                                    *(int8_t *)(int64_t *)&var_280->_active = 0x1;
                                    [@"64-bit" retain];
                                    NSLog(@"AdColony [Info] : AdColony library version: %d.%d.%d.%d %@ production", @selector(start), 0x0, r3, 0x10, r5);
                                    r0 = @"64-bit";
                            }
                            [r0 release];
                            r0 = objc_msgSend(r19, r24);
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = objc_msgSend(r0, r26);
                            [r0 release];
                            if (r21 != 0x0) {
                                    [var_280 setUseForcedController:0x1];
                            }
                            r0 = objc_msgSend(r19, r24);
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = objc_msgSend(r0, r26);
                            [r0 release];
                            if (r21 != 0x0) {
                                    [var_280 setUseForcedAdUnit:0x1];
                            }
                            r0 = objc_msgSend(r19, r24);
                            r0 = [r0 retain];
                            r21 = objc_msgSend(r0, r26);
                            [r0 release];
                            if (r21 != 0x0) {
                                    [var_280 setUseStagingLaunchServer:0x1];
                            }
                            [r25 loadControllerWithCompletion:&var_260];
                            [r25 release];
                    }
                    else {
                            if (var_270 != 0x0) {
                                    (*(var_270 + 0x10))(var_270, 0x0);
                            }
                    }
            }
            else {
                    if ([var_280 active] != 0x0) {
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            r3 = 0x2;
                            [r0 performBlockOnWorkerThread:&var_210 mode:r3];
                            [r0 release];
                            dispatch_async(*__dispatch_main_q, &var_238);
                            r0 = [var_280 zoneFromID];
                            r0 = [r0 retain];
                            [r0 removeAllObjects];
                            [r0 release];
                            r0 = [var_280 zones];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 removeAllObjects];
                            [r0 release];
                    }
                    r20 = [[NSDate date] retain];
                    [var_280 setStartTimeForConfigure:r20];
                    [r20 release];
                    objc_storeStrong((int64_t *)&var_280->_appID, r25);
                    [var_280 setZoneIDs:var_288];
                    [var_280 setOptions:var_278];
                    r20 = [[ADCDevice sharedDevice] retain];
                    r0 = [var_278 userID];
                    r29 = r29;
                    r2 = [r0 retain];
                    [r20 setUserId:r2];
                    [r24 release];
                    [r20 release];
                    if (var_278 != 0x0) {
                            [var_280 setOptions:r2];
                    }
                    else {
                            r20 = [AdColonyAppOptions new];
                            [var_280 setOptions:r20];
                            [r20 release];
                    }
                    [var_280 setConfigCompletion:var_270];
                    r0 = [ADCAPIGuards sharedGuards];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 limiter];
                    r0 = [r0 retain];
                    [r0 addEventOfType:0x0];
                    [r0 release];
                    [r20 release];
                    r19 = var_278;
                    r0 = [ADCNativeLayer sharedLayer];
                    r26 = @selector(boolValue);
                    r24 = @selector(getNumericOptionWithKey:);
                    r29 = r29;
                    r25 = [r0 retain];
                    if (([var_280 active] & 0x1) != 0x0) {
                            r0 = [ADCController sharedController];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 module];
                            r29 = r29;
                            r21 = [r0 retain];
                            [r25 unregisterDynamicModule:r21];
                            [r21 release];
                            r0 = r20;
                    }
                    else {
                            r0 = [var_280 workThread];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 start];
                            [r0 release];
                            *(int8_t *)(int64_t *)&var_280->_active = 0x1;
                            [@"64-bit" retain];
                            NSLog(@"AdColony [Info] : AdColony library version: %d.%d.%d.%d %@ production", @selector(start), 0x0, r3, 0x10, r5);
                            r0 = @"64-bit";
                    }
                    [r0 release];
                    r0 = objc_msgSend(r19, r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = objc_msgSend(r0, r26);
                    [r0 release];
                    if (r21 != 0x0) {
                            [var_280 setUseForcedController:0x1];
                    }
                    r0 = objc_msgSend(r19, r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = objc_msgSend(r0, r26);
                    [r0 release];
                    if (r21 != 0x0) {
                            [var_280 setUseForcedAdUnit:0x1];
                    }
                    r0 = objc_msgSend(r19, r24);
                    r0 = [r0 retain];
                    r21 = objc_msgSend(r0, r26);
                    [r0 release];
                    if (r21 != 0x0) {
                            [var_280 setUseStagingLaunchServer:0x1];
                    }
                    [r25 loadControllerWithCompletion:&var_260];
                    [r25 release];
            }
    }
    else {
            *(int128_t *)(r21 + 0x20) = q0;
            *(int128_t *)(r21 + 0x30) = q0;
            *(int128_t *)(r21 + 0x10) = q0;
            *(int128_t *)(&stack[-759] + 0xff) = q0;
            r0 = [var_288 retain];
            var_298 = r0;
            r21 = objc_msgSend(r0, r20);
            if (r21 != 0x0) {
                    var_2D0 = r20;
                    var_2C0 = r22;
                    var_290 = *var_1D8;
                    r19 = 0x1;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_1D8 != var_290) {
                                            objc_enumerationMutation(var_298);
                                    }
                                    r26 = @selector(containsObject:);
                                    r0 = [var_280 zoneIDs];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r27 = objc_msgSend(r0, r26);
                                    [r0 release];
                                    r19 = r19 & r27;
                                    r22 = r22 + 0x1;
                            } while (r22 < r21);
                            r3 = &stack[-376];
                            r21 = objc_msgSend(var_298, var_2D0);
                    } while (r21 != 0x0);
                    [var_298 release];
                    r22 = var_2C0;
                    if ((r19 & 0x1) != 0x0) {
                            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Ignoring call to configureWithAppID:zoneIDs:options:completion:, as the same zone ids were used during the previous configuration."];
                            if (var_270 != 0x0) {
                                    (*(var_270 + 0x10))(var_270, 0x0);
                            }
                    }
                    else {
                            if ([var_280 active] != 0x0) {
                                    r0 = [ADCAPIGuards sharedGuards];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r21 = [r0 canReconfigure];
                                    [r0 release];
                                    if ((r21 & 0x1) != 0x0) {
                                            if ([var_280 active] != 0x0) {
                                                    r0 = [AdColony sharedInstance];
                                                    r0 = [r0 retain];
                                                    r3 = 0x2;
                                                    [r0 performBlockOnWorkerThread:&var_210 mode:r3];
                                                    [r0 release];
                                                    dispatch_async(*__dispatch_main_q, &var_238);
                                                    r0 = [var_280 zoneFromID];
                                                    r0 = [r0 retain];
                                                    [r0 removeAllObjects];
                                                    [r0 release];
                                                    r0 = [var_280 zones];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 removeAllObjects];
                                                    [r0 release];
                                            }
                                            r20 = [[NSDate date] retain];
                                            [var_280 setStartTimeForConfigure:r20];
                                            [r20 release];
                                            objc_storeStrong((int64_t *)&var_280->_appID, r25);
                                            [var_280 setZoneIDs:var_288];
                                            [var_280 setOptions:var_278];
                                            r20 = [[ADCDevice sharedDevice] retain];
                                            r0 = [var_278 userID];
                                            r29 = r29;
                                            r2 = [r0 retain];
                                            [r20 setUserId:r2];
                                            [r24 release];
                                            [r20 release];
                                            if (var_278 != 0x0) {
                                                    [var_280 setOptions:r2];
                                            }
                                            else {
                                                    r20 = [AdColonyAppOptions new];
                                                    [var_280 setOptions:r20];
                                                    [r20 release];
                                            }
                                            [var_280 setConfigCompletion:var_270];
                                            r0 = [ADCAPIGuards sharedGuards];
                                            r0 = [r0 retain];
                                            r20 = r0;
                                            r0 = [r0 limiter];
                                            r0 = [r0 retain];
                                            [r0 addEventOfType:0x0];
                                            [r0 release];
                                            [r20 release];
                                            r19 = var_278;
                                            r0 = [ADCNativeLayer sharedLayer];
                                            r26 = @selector(boolValue);
                                            r24 = @selector(getNumericOptionWithKey:);
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            if (([var_280 active] & 0x1) != 0x0) {
                                                    r0 = [ADCController sharedController];
                                                    r0 = [r0 retain];
                                                    r20 = r0;
                                                    r0 = [r0 module];
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    [r25 unregisterDynamicModule:r21];
                                                    [r21 release];
                                                    r0 = r20;
                                            }
                                            else {
                                                    r0 = [var_280 workThread];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 start];
                                                    [r0 release];
                                                    *(int8_t *)(int64_t *)&var_280->_active = 0x1;
                                                    [@"64-bit" retain];
                                                    NSLog(@"AdColony [Info] : AdColony library version: %d.%d.%d.%d %@ production", @selector(start), 0x0, r3, 0x10, r5);
                                                    r0 = @"64-bit";
                                            }
                                            [r0 release];
                                            r0 = objc_msgSend(r19, r24);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r21 = objc_msgSend(r0, r26);
                                            [r0 release];
                                            if (r21 != 0x0) {
                                                    [var_280 setUseForcedController:0x1];
                                            }
                                            r0 = objc_msgSend(r19, r24);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r21 = objc_msgSend(r0, r26);
                                            [r0 release];
                                            if (r21 != 0x0) {
                                                    [var_280 setUseForcedAdUnit:0x1];
                                            }
                                            r0 = objc_msgSend(r19, r24);
                                            r0 = [r0 retain];
                                            r21 = objc_msgSend(r0, r26);
                                            [r0 release];
                                            if (r21 != 0x0) {
                                                    [var_280 setUseStagingLaunchServer:0x1];
                                            }
                                            [r25 loadControllerWithCompletion:&var_260];
                                            [r25 release];
                                    }
                                    else {
                                            if (var_270 != 0x0) {
                                                    (*(var_270 + 0x10))(var_270, 0x0);
                                            }
                                    }
                            }
                            else {
                                    if ([var_280 active] != 0x0) {
                                            r0 = [AdColony sharedInstance];
                                            r0 = [r0 retain];
                                            r3 = 0x2;
                                            [r0 performBlockOnWorkerThread:&var_210 mode:r3];
                                            [r0 release];
                                            dispatch_async(*__dispatch_main_q, &var_238);
                                            r0 = [var_280 zoneFromID];
                                            r0 = [r0 retain];
                                            [r0 removeAllObjects];
                                            [r0 release];
                                            r0 = [var_280 zones];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 removeAllObjects];
                                            [r0 release];
                                    }
                                    r20 = [[NSDate date] retain];
                                    [var_280 setStartTimeForConfigure:r20];
                                    [r20 release];
                                    objc_storeStrong((int64_t *)&var_280->_appID, r25);
                                    [var_280 setZoneIDs:var_288];
                                    [var_280 setOptions:var_278];
                                    r20 = [[ADCDevice sharedDevice] retain];
                                    r0 = [var_278 userID];
                                    r29 = r29;
                                    r2 = [r0 retain];
                                    [r20 setUserId:r2];
                                    [r24 release];
                                    [r20 release];
                                    if (var_278 != 0x0) {
                                            [var_280 setOptions:r2];
                                    }
                                    else {
                                            r20 = [AdColonyAppOptions new];
                                            [var_280 setOptions:r20];
                                            [r20 release];
                                    }
                                    [var_280 setConfigCompletion:var_270];
                                    r0 = [ADCAPIGuards sharedGuards];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 limiter];
                                    r0 = [r0 retain];
                                    [r0 addEventOfType:0x0];
                                    [r0 release];
                                    [r20 release];
                                    r19 = var_278;
                                    r0 = [ADCNativeLayer sharedLayer];
                                    r26 = @selector(boolValue);
                                    r24 = @selector(getNumericOptionWithKey:);
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    if (([var_280 active] & 0x1) != 0x0) {
                                            r0 = [ADCController sharedController];
                                            r0 = [r0 retain];
                                            r20 = r0;
                                            r0 = [r0 module];
                                            r29 = r29;
                                            r21 = [r0 retain];
                                            [r25 unregisterDynamicModule:r21];
                                            [r21 release];
                                            r0 = r20;
                                    }
                                    else {
                                            r0 = [var_280 workThread];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 start];
                                            [r0 release];
                                            *(int8_t *)(int64_t *)&var_280->_active = 0x1;
                                            [@"64-bit" retain];
                                            NSLog(@"AdColony [Info] : AdColony library version: %d.%d.%d.%d %@ production", @selector(start), 0x0, r3, 0x10, r5);
                                            r0 = @"64-bit";
                                    }
                                    [r0 release];
                                    r0 = objc_msgSend(r19, r24);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r21 = objc_msgSend(r0, r26);
                                    [r0 release];
                                    if (r21 != 0x0) {
                                            [var_280 setUseForcedController:0x1];
                                    }
                                    r0 = objc_msgSend(r19, r24);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r21 = objc_msgSend(r0, r26);
                                    [r0 release];
                                    if (r21 != 0x0) {
                                            [var_280 setUseForcedAdUnit:0x1];
                                    }
                                    r0 = objc_msgSend(r19, r24);
                                    r0 = [r0 retain];
                                    r21 = objc_msgSend(r0, r26);
                                    [r0 release];
                                    if (r21 != 0x0) {
                                            [var_280 setUseStagingLaunchServer:0x1];
                                    }
                                    [r25 loadControllerWithCompletion:&var_260];
                                    [r25 release];
                            }
                    }
            }
            else {
                    [var_298 release];
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Ignoring call to configureWithAppID:zoneIDs:options:completion:, as the same zone ids were used during the previous configuration."];
                    if (var_270 != 0x0) {
                            (*(var_270 + 0x10))(var_270, 0x0);
                    }
            }
    }
    [var_288 release];
    r19 = var_2B8;
    goto loc_10023fa4c;

loc_10023fa4c:
    var_268 = **___stack_chk_guard;
    [r23 release];
    [var_270 release];
    [var_278 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_268) {
            __stack_chk_fail();
    }
    return;

loc_100240020:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Cannot start AdColony; configuration mechanism requires at least one AdColony zone ID."];
    if (var_270 != 0x0) {
            (*(var_270 + 0x10))(var_270, 0x0);
    }
    goto loc_10023fa4c;

loc_100240064:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Cannot start AdColony; configuration mechanism dictates only one app ID can be used during a session."];
    if (var_270 != 0x0) {
            (*(var_270 + 0x10))(var_270, 0x0);
    }
    goto loc_10023fa4c;

loc_10023ffdc:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Cannot start AdColony; configuration mechanism requires an AdColony app ID."];
    if (var_270 != 0x0) {
            (*(var_270 + 0x10))(var_270, 0x0);
    }
    goto loc_10023fa4c;
}

+(void)requestInterstitialInZone:(void *)arg2 options:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2a0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 adColonySupported] & 0x1) == 0x0) goto loc_1002411a0;

loc_10024108c:
    if ([r23 adColonyDisabled] == 0x0) goto loc_1002412a0;

loc_1002410a0:
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:r29 - 0x98 count:0x2] retain];
    r25 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r24];
    var_178 = [r22 retain];
    var_170 = r25;
    r25 = [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_198);
    [var_170 release];
    r0 = var_178;
    goto loc_1002415a4;

loc_1002415a4:
    [r0 release];
    [r25 release];
    r0 = r24;
    goto loc_1002415b4;

loc_1002415b4:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1002412a0:
    if (([r23 adColonyConfigured] & 0x1) == 0x0) goto loc_100241380;

loc_1002412b4:
    if (r19 == 0x0) goto loc_100241480;

loc_1002412b8:
    r28 = [[AdColony sharedInstance] retain];
    r0 = @class(ADCAPIGuards);
    r0 = [r0 sharedGuards];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 limiter];
    r29 = r29;
    r25 = [r0 retain];
    [r26 release];
    if ([r25 shouldLimitEventType:0x1 inZone:r19] == 0x0) goto loc_100241618;

loc_100241330:
    if ([r25 getLimitingRate:&var_208 eventType:0x1] != 0x0) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Cannot request interstitial; you have already exceeded the limit of %lu attempt(s) per %lu second(s)"];
    }
    goto loc_100241b7c;

loc_100241b7c:
    [r25 release];
    r0 = r28;
    goto loc_1002415b4;

loc_100241618:
    var_2C8 = r28;
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 blockRequests];
    [r0 release];
    if (r28 == 0x0) goto loc_100241750;

loc_100241650:
    r26 = [[NSDictionary dictionaryWithObjects:r29 - 0xe8 forKeys:r29 - 0xf8 count:0x2] retain];
    r27 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x2 userInfo:r26];
    var_218 = [r22 retain];
    var_210 = r27;
    r27 = [r27 retain];
    dispatch_async(*__dispatch_main_q, &var_238);
    [var_210 release];
    r0 = var_218;
    goto loc_100241a20;

loc_100241a20:
    [r0 release];
    [r27 release];
    [r26 release];
    r28 = var_2C8;
    goto loc_100241b7c;

loc_100241750:
    if (r21 == 0x0) goto loc_1002418fc;

loc_100241754:
    r28 = var_2C8;
    r0 = [r28 zoneFromID];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    var_2D0 = r24;
    if (r24 != 0x0) {
            r24 = [[ADCUtil getUUID] retain];
            r0 = [ADCInterstitialAdSession new];
            [r0 setIdentifier:r24];
            [r0 setZoneID:r19];
            [r0 setRequestType:0x0];
            [r0 setRequestSuccess:r21];
            [r0 setRequestFailure:r22];
            [r0 setOptions:r20];
            r27 = [[AdColony sharedInstance] retain];
            r26 = [r0 retain];
            r28 = var_2C8;
            [r27 performBlockOnWorkerThread:&var_2C0 mode:0x1];
            [r27 release];
            [r25 addEventOfType:0x1 inZone:r19];
            [r0 release];
            [r26 release];
            r0 = r24;
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You must pass a valid zone ID to requestInterstitialInZone:options:success:failure."];
            r0 = [NSDictionary dictionaryWithObjects:&var_128 forKeys:&var_138 count:0x2];
            r27 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:[r0 retain]];
            var_278 = [r22 retain];
            var_270 = r27;
            [r27 retain];
            dispatch_async(*__dispatch_main_q, &var_298);
            [var_270 release];
            [var_278 release];
            [r27 release];
            r0 = r26;
    }
    [r0 release];
    [var_2D0 release];
    goto loc_100241b7c;

loc_1002418fc:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You must pass a valid success handler to requestInterstitialInZone:options:success:failure."];
    r0 = [NSDictionary dictionaryWithObjects:&var_108 forKeys:&var_118 count:0x2];
    r26 = [r0 retain];
    r27 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r26];
    var_248 = [r22 retain];
    var_240 = r27;
    r27 = [r27 retain];
    dispatch_async(*__dispatch_main_q, &var_268);
    [var_240 release];
    r0 = var_248;
    goto loc_100241a20;

loc_100241480:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You must pass a valid zone ID to requestInterstitialInZone:options:success:failure:."];
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0xc8 forKeys:r29 - 0xd8 count:0x2] retain];
    r25 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r24];
    var_1D8 = [r22 retain];
    var_1D0 = r25;
    r25 = [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_1F8);
    [var_1D0 release];
    r0 = var_1D8;
    goto loc_1002415a4;

loc_100241380:
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0xa8 forKeys:r29 - 0xb8 count:0x2] retain];
    r25 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r24];
    var_1A8 = [r22 retain];
    var_1A0 = r25;
    r25 = [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_1C8);
    [var_1A0 release];
    r0 = var_1A8;
    goto loc_1002415a4;

loc_1002411a0:
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain];
    r25 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r24];
    var_148 = [r22 retain];
    var_140 = r25;
    r25 = [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_168);
    [var_140 release];
    r0 = var_148;
    goto loc_1002415a4;
}

+(void)requestNativeAdViewInZone:(void *)arg2 size:(struct CGSize)arg3 options:(void *)arg4 viewController:(void *)arg5 success:(void *)arg6 failure:(void *)arg7 {
    memcpy(&r3, &arg3, 0x8);
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
    r31 = r31 + 0xffffffffffffff90 - 0x210;
    v8 = v1;
    v9 = v0;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    r22 = [r5 retain];
    r23 = [r6 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 adColonySupported] & 0x1) == 0x0) goto loc_1002420ec;

loc_100241fd8:
    if ([r24 adColonyDisabled] == 0x0) goto loc_1002421ec;

loc_100241fec:
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x98 forKeys:r29 - 0xa8 count:0x2] retain];
    r26 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r25];
    var_148 = [r23 retain];
    var_140 = r26;
    r26 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_168);
    [var_140 release];
    r0 = var_148;
    goto loc_1002424f0;

loc_1002424f0:
    [r0 release];
    goto loc_1002424f4;

loc_1002424f4:
    var_68 = **___stack_chk_guard;
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_1002421ec:
    if (([r24 adColonyConfigured] & 0x1) == 0x0) goto loc_1002422cc;

loc_100242200:
    if (r19 == 0x0) goto loc_1002423cc;

loc_100242204:
    r25 = [[AdColony sharedInstance] retain];
    r0 = @class(ADCAPIGuards);
    r0 = [r0 sharedGuards];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 limiter];
    r29 = r29;
    r26 = [r0 retain];
    [r27 release];
    if ([r26 shouldLimitEventType:0x3 inZone:r19] != 0x0) {
            if ([r26 getLimitingRate:&var_1D8 eventType:0x3] != 0x0) {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Cannot request AdColonyNativeAdView; you have already exceeded the limit of %lu attempt(s) per %lu second(s)"];
            }
    }
    else {
            var_238 = r25;
            r0 = [r25 zoneFromID];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r25 = [r0 retain];
            [r27 release];
            var_240 = r25;
            if (r25 != 0x0) {
                    r25 = [[ADCUtil getUUID] retain];
                    r0 = [ADCNativeAdSession new];
                    [r0 setIdentifier:r25];
                    [r0 setZoneID:r19];
                    [r0 setRequestType:0x2];
                    [r0 setRequestSuccess:r22];
                    [r0 setRequestFailure:r23];
                    [r0 setOptions:r20];
                    [r0 setSize:r20];
                    [r0 setAppViewController:r21];
                    r28 = [[AdColony sharedInstance] retain];
                    r27 = [r0 retain];
                    r26 = r26;
                    [r28 performBlockOnWorkerThread:&var_230 mode:0x1];
                    [r28 release];
                    [r26 addEventOfType:0x3 inZone:r19];
                    [r0 release];
                    [r27 release];
                    r0 = r25;
            }
            else {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You must pass a valid zone ID to requestNativeAdViewInZone:options:viewController:success:failure:."];
                    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xf8 forKeys:&var_108 count:0x2];
                    r28 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:[r0 retain]];
                    var_1E8 = [r23 retain];
                    var_1E0 = r28;
                    [r28 retain];
                    dispatch_async(*__dispatch_main_q, &var_208);
                    [var_1E0 release];
                    [var_1E8 release];
                    [r28 release];
                    r0 = r27;
            }
            [r0 release];
            [var_240 release];
            r25 = var_238;
    }
    goto loc_1002424f4;

loc_1002423cc:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You must pass a valid zone ID to requestNativeAdViewInZone:options:viewController:success:failure:."];
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0xd8 forKeys:r29 - 0xe8 count:0x2] retain];
    r26 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r25];
    var_1A8 = [r23 retain];
    var_1A0 = r26;
    r26 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_1C8);
    [var_1A0 release];
    r0 = var_1A8;
    goto loc_1002424f0;

loc_1002422cc:
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0xb8 forKeys:r29 - 0xc8 count:0x2] retain];
    r26 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r25];
    var_178 = [r23 retain];
    var_170 = r26;
    r26 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_198);
    [var_170 release];
    r0 = var_178;
    goto loc_1002424f0;

loc_1002420ec:
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x78 forKeys:r29 - 0x88 count:0x2] retain];
    r26 = [[AdColonyAdRequestError alloc] initWithDomain:@"ADCErrorDomain" code:0x0 userInfo:r25];
    var_118 = [r23 retain];
    var_110 = r26;
    r26 = [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_138);
    [var_110 release];
    r0 = var_118;
    goto loc_1002424f0;
}

+(void *)getUserID {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 adColonySupported] != 0x0 && ([r19 adColonyDisabled] & 0x1) == 0x0) {
            var_48 = &var_50;
            if ([NSThread isMainThread] != 0x0) {
                    r0 = [ADCDevice sharedDevice];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 userId];
                    r0 = [r0 retain];
                    r8 = *(var_48 + 0x28);
                    *(var_48 + 0x28) = r0;
                    [r8 release];
                    [r20 release];
            }
            else {
                    if ([NSThread isMainThread] != 0x0) {
                            sub_100242d94(&var_78);
                    }
                    else {
                            dispatch_sync(*__dispatch_main_q, &var_A0);
                    }
            }
            r20 = [*(var_48 + 0x28) retain];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAdvertisingID {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 adColonySupported] != 0x0 && ([r19 adColonyDisabled] & 0x1) == 0x0) {
            var_48 = &var_50;
            if ([NSThread isMainThread] != 0x0) {
                    r0 = [ADCDevice sharedDevice];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 advertiserId];
                    r0 = [r0 retain];
                    r8 = *(var_48 + 0x28);
                    *(var_48 + 0x28) = r0;
                    [r8 release];
                    [r20 release];
            }
            else {
                    if ([NSThread isMainThread] != 0x0) {
                            sub_1002430e4(&var_78);
                    }
                    else {
                            dispatch_sync(*__dispatch_main_q, &var_A0);
                    }
            }
            r20 = [*(var_48 + 0x28) retain];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setAppOptions:(void *)arg2 {
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
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r20 adColonyConfigured] != 0x0 && [r0 adColonySupported] != 0x0 && ([r20 adColonyDisabled] & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    r22 = [[AdColony sharedInstance] retain];
                    r21 = [[AdColony sharedInstance] retain];
                    var_48 = r22;
                    r22 = [r22 retain];
                    var_40 = [r19 retain];
                    var_38 = [r20 retain];
                    [r21 performBlockOnWorkerThread:&var_68 mode:0x1];
                    [r21 release];
                    [var_38 release];
                    [var_40 release];
                    [var_48 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You must pass a valid AdColonyAppOptions object to setAppOptions:. Ignoring"];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)getAppOptions {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 adColonySupported] != 0x0 && ([r19 adColonyDisabled] & 0x1) == 0x0) {
            if ([r19 adColonyConfigured] != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    r21 = [[r0 options] retain];
                    [r0 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)setUserMetadata:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 adColonySupported] != 0x0 && ([r20 adColonyDisabled] & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    r21 = [[AdColony sharedInstance] retain];
                    var_30 = [r19 retain];
                    var_28 = [r20 retain];
                    [r21 performBlockOnWorkerThread:&var_50 mode:0x1];
                    [r21 release];
                    [var_28 release];
                    [var_30 release];
            }
            else {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to set an invalid AdColonyUserMetadata object. Ignoring."];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setUserMetadata:(void *)arg2 {
    [self setUserMetadata:arg2];
    return;
}

+(void)sendCustomMessageOfType:(void *)arg2 withContent:(void *)arg3 reply:(void *)arg4 {
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
    r21 = [arg4 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r22 adColonyConfigured] != 0x0 && [r0 adColonySupported] != 0x0 && ([r22 adColonyDisabled] & 0x1) == 0x0) {
            if (r19 != 0x0 && [r19 length] < 0x81) {
                    if ([r20 length] >= 0x401) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[AdColony sendCustomMessageOfType:withContent:reply:]" line:0x326 withFormat:@"Notification content 1024 chars or less. Ignoring"];
                    }
                    if (r20 == 0x0) {
                            [@"" retain];
                            [r20 release];
                            r20 = @"";
                    }
                    r23 = [[AdColony sharedInstance] retain];
                    var_48 = [r19 retain];
                    r20 = [r20 retain];
                    var_38 = [r21 retain];
                    [r23 performBlockOnWorkerThread:&var_68 mode:0x1];
                    [r23 release];
                    [var_38 release];
                    [r20 release];
                    [var_48 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[AdColony sendCustomMessageOfType:withContent:reply:]" line:0x321 withFormat:@"Notification type must be non-nil and 128 chars or less. Ignoring"];
            }
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)registerHandler:(void *)arg2 forCustomMessagesOfType:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 adColonySupported] != 0x0 && ([r21 adColonyDisabled] & 0x1) == 0x0) {
            if ([r20 isEqualToString:r2] == 0x0 && r19 != 0x0 && r20 != 0x0) {
                    if ([r20 length] >= 0x81) {
                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                    }
                    else {
                            r22 = [[AdColony sharedInstance] retain];
                            var_30 = [r19 retain];
                            var_28 = [r20 retain];
                            [r22 performBlockOnWorkerThread:&var_50 mode:0x1];
                            [r22 release];
                            [var_28 release];
                            [var_30 release];
                    }
            }
            else {
                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)unregisterHandlerForCustomMessagesOfType:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 adColonySupported] != 0x0 && ([r20 adColonyDisabled] & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    if ([r19 isEqualToString:r2] != 0x0) {
                            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to unregister handler for invalid notification type. Ignoring"];
                    }
                    else {
                            r21 = [[AdColony sharedInstance] retain];
                            var_28 = [r19 retain];
                            [r21 performBlockOnWorkerThread:&var_48 mode:0x1];
                            [r21 release];
                            [var_28 release];
                    }
            }
            else {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to unregister handler for invalid notification type. Ignoring"];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)getSDKVersion {
    r0 = [NSString stringWithFormat:@"%d.%d.%d.%d"];
    return r0;
}

-(void)addZone:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self zones];
    r0 = [r0 retain];
    [r0 addObject:arg2];
    [r0 release];
    r20 = [[self zoneFromID] retain];
    r21 = [[arg2 identifier] retain];
    [r20 setObject:arg2 forKeyedSubscript:r21];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

+(void *)zoneForID:(void *)arg2 {
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
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r20 adColonyConfigured] == 0x0 || [r0 adColonySupported] == 0x0 || ([r20 adColonyDisabled] & 0x1) != 0x0) goto loc_100244638;

loc_1002445a4:
    if (r19 == 0x0) goto loc_100244610;

loc_1002445a8:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 zoneFromID];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:r19] retain];
    [r0 release];
    [r21 release];
    goto loc_10024463c;

loc_10024463c:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100244610:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Tried to retrieve an AdColony zone with nil identifier"];
    goto loc_100244638;

loc_100244638:
    r22 = 0x0;
    goto loc_10024463c;
}

-(void)onModuleError:(unsigned long long)arg2 {
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
    r19 = [[ADCNativeLayer sharedLayer] retain];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    r23 = [r0 nextNativeMessageID];
    r22 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
    r21 = [[ADCMessage nativeMessageWithType:@"Module.on_error" identifier:r23 contents:r24] retain];
    [r19 sendMessage:r21];
    [r21 release];
    [r24 release];
    [r22 release];
    [r0 release];
    [r19 release];
    r19 = [[ADCAPIGuards sharedGuards] retain];
    r20 = [[NSException exceptionWithName:@"AdColonyMessagePassingException" reason:@"ADCModule has no session id and returned an empty string from ADC3_update()" userInfo:0x0] retain];
    [r19 handleException:r20];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

+(void)iapCompleteWithTransactionID:(void *)arg2 productID:(void *)arg3 price:(void *)arg4 currencyCode:(void *)arg5 {
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [ADCAPIGuards sharedGuards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r23 adColonyConfigured] != 0x0 && [r0 adColonySupported] != 0x0 && ([r23 adColonyDisabled] & 0x1) == 0x0) {
            if ([r20 length] < 0x81 && r20 != 0x0 && r19 != 0x0 && [r19 length] < 0x81) {
                    if (r21 != 0x0) {
                            [r21 floatValue];
                            if (s0 < 0x0) {
                                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You are reporting an IAP event with a price that is less than zero. Sending event without an associated price."];
                                    [r21 release];
                                    r21 = 0x0;
                            }
                    }
                    if (r22 != 0x0) {
                            if ([r22 length] >= 0x4) {
                                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"You are trying to report an IAP event with a currency string containing more than 3 characters. Sending event without an associated currency code."];
                                    [r22 release];
                                    r22 = 0x0;
                            }
                    }
                    r24 = [NSMutableDictionary new];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    objc_msgSend(r24, r25);
                    if (r21 != 0x0) {
                            [r24 setObject:r2 forKeyedSubscript:r3];
                    }
                    if (r22 != 0x0) {
                            [r24 setObject:r2 forKeyedSubscript:r3];
                    }
                    r25 = [[ADCNativeLayer sharedLayer] retain];
                    r0 = @class(ADCNativeLayer);
                    r0 = [r0 sharedLayer];
                    r0 = [r0 retain];
                    r27 = [[ADCMessage nativeMessageWithType:@"AdColony.on_iap_report" identifier:[r0 nextNativeMessageID] contents:r24] retain];
                    [r25 sendMessage:r27];
                    [r27 release];
                    [r0 release];
                    [r25 release];
                    [r24 release];
            }
            else {
                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
            }
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)getSession:(void *)arg2 {
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
    r0 = [r21 sessionMapLock];
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r21 sessionMap];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 != 0x0) {
            r0 = [r21 sessionMap];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)addSession:(void *)arg2 {
    [arg2 retain];
    r0 = [self sessionMapLock];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r22 = [[self sessionMap] retain];
    r24 = [[r19 identifier] retain];
    r23 = [[ADCDataTransform dictionary:r22 addObject:r19 forKey:r24] retain];
    [self setSessionMap:r23];
    [r23 release];
    [r24 release];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    r0 = [self sessionAPI];
    r0 = [r0 retain];
    [r0 onSessionRequest:r19];
    [r0 release];
    [r19 release];
    return;
}

-(void)removeSession:(void *)arg2 {
    [arg2 retain];
    r0 = [self sessionMapLock];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r22 = [[self sessionMap] retain];
    r24 = [[r19 identifier] retain];
    r23 = [[ADCDataTransform dictionary:r22 removeObjectForKey:r24] retain];
    [self setSessionMap:r23];
    [r23 release];
    [r24 release];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)onSessionError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sessionAPI];
    r0 = [r0 retain];
    [r0 onSessionError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)rewardCallbackForZone:(void *)arg2 {
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
    r0 = [r21 rewardCallbacksLock];
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r21 rewardCallbacks];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 != 0x0) {
            r0 = [r21 rewardCallbacks];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    objc_sync_exit(r20);
    [r20 release];
    r20 = objc_retainBlock(r21);
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setRewardCallback:(void *)arg2 forZone:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r22 rewardCallbacksLock];
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = [ADCDataTransform dictionary:[[r22 rewardCallbacks] retain] removeObjectForKey:r20];
    r29 = &saved_fp;
    [r0 retain];
    [r22 setRewardCallbacks:r2];
    [r26 release];
    [r25 release];
    if (r19 != 0x0) {
            [[ADCDataTransform dictionary:[[r22 rewardCallbacks] retain] addObject:[r19 copy] forKey:r20] retain];
            [r22 setRewardCallbacks:r2];
            [r26 release];
            [r25 release];
            [r24 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)containerForAdSessionID:(void *)arg2 isFullscreen:(bool)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r20 == 0x0) goto loc_1002451c0;

loc_1002450c8:
    if (r21 == 0x0) goto loc_100245138;

loc_1002450cc:
    r0 = [r20 fullscreenContainer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10024517c;

loc_1002450f4:
    r0 = [r20 fullscreenContainer];
    goto loc_100245170;

loc_100245170:
    r22 = [r0 retain];
    if (r22 != 0x0) goto loc_1002451d0;

loc_10024517c:
    r8 = @"customizable";
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"customizable";
            }
            else {
                    r8 = @"fullscreen";
            }
    }
    goto loc_1002451c0;

loc_1002451c0:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    r22 = 0x0;
    goto loc_1002451d0;

loc_1002451d0:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100245138:
    r0 = [r20 customizableContainer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10024517c;

loc_100245160:
    r0 = [r20 customizableContainer];
    goto loc_100245170;
}

-(void *)containerForViewID:(unsigned long long)arg2 adSessionID:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 containerForAdSessionID:r2 isFullscreen:r3];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100245280;

loc_100245250:
    r0 = [r22 objectForIdentifier:r20];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100245280;

loc_100245278:
    r0 = r22;
    goto loc_1002452d8;

loc_1002452d8:
    r20 = [r0 retain];
    r21 = r20;
    goto loc_1002452ec;

loc_1002452ec:
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100245280:
    r0 = [r21 containerForAdSessionID:r2 isFullscreen:r3];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if (r21 == 0x0) goto loc_1002452e8;

loc_1002452ac:
    r0 = [r21 objectForIdentifier:r20];
    r0 = [r0 retain];
    r20 = r0;
    [r0 release];
    if (r20 == 0x0) goto loc_1002452ec;

loc_1002452d4:
    r0 = r21;
    goto loc_1002452d8;

loc_1002452e8:
    r20 = 0x0;
    goto loc_1002452ec;
}

-(void)disableAdColony {
    r0 = [ADCAPIGuards sharedGuards];
    r0 = [r0 retain];
    [r0 disableAPIUsage];
    [r0 release];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 unregisterAllDynamicModules];
    [r0 release];
    r0 = [ADCController sharedController];
    r0 = [r0 retain];
    [r0 disable];
    [r19 release];
    return;
}

-(void *)currentAdSession {
    r31 = r31 - 0x130;
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
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r21 = [[r0 allValues] retain];
    [r0 release];
    [r19 release];
    var_108 = q0;
    r0 = [r21 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 == 0x0) goto loc_100245508;

loc_100245498:
    r24 = *var_108;
    goto loc_1002454a4;

loc_1002454a4:
    r26 = 0x0;
    goto loc_1002454ac;

loc_1002454ac:
    if (*var_108 != r24) {
            objc_enumerationMutation(r19);
    }
    r23 = *(var_110 + r26 * 0x8);
    if (([r23 active] & 0x1) != 0x0) goto loc_100245518;

loc_1002454dc:
    r26 = r26 + 0x1;
    if (r26 < r21) goto loc_1002454ac;

loc_1002454e8:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1002454a4;

loc_100245508:
    [r19 release];
    r20 = 0x0;
    goto loc_10024552c;

loc_10024552c:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100245518:
    r20 = [r23 retain];
    [r19 release];
    goto loc_10024552c;
}

-(void)runBlock:(void *)arg2 {
    r1 = *(arg2 + 0x10);
    (r1)(arg2, r1, arg2);
    return;
}

-(void)performBlockOnWorkerThread:(void *)arg2 mode:(long long)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r24 = [[NSThread currentThread] retain];
    r0 = [r20 workThread];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r23 = [r24 isEqual:r2];
    [r25 release];
    [r24 release];
    if (r21 != 0x1 && r23 != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r22 = [[r20 workThread] retain];
            r24 = objc_retainBlock(r19);
            if (r21 == 0x2) {
                    if (CPU_FLAGS & E) {
                            r5 = 0x1;
                    }
            }
            [r20 performSelector:@selector(runBlock:) onThread:r22 withObject:r24 waitUntilDone:r5];
            [r24 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)applicationDidReceiveMemoryWarning:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = @selector(userInfo);
            r20 = @"none";
            [r20 retain];
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:@"pressure"] retain];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r21 intValue];
                    if (r0 != 0x4) {
                            if (r0 != 0x2) {
                                    if (r0 == 0x1) {
                                            r20 = @"normal";
                                    }
                                    else {
                                            r20 = @"unknown";
                                    }
                            }
                            else {
                                    r20 = @"warn";
                            }
                    }
                    else {
                            r20 = @"critical";
                    }
                    [r20 retain];
                    [@"none" release];
            }
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[AdColony applicationDidReceiveMemoryWarning:]" line:0x45f withFormat:@"Received a memory warning with level '%@'."];
            [r21 release];
            [r20 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[AdColony applicationDidReceiveMemoryWarning:]" line:0x44a withFormat:@"Received a memory warning."];
    }
    [r19 release];
    return;
}

-(bool)blockRequests {
    r0 = *(int8_t *)(int64_t *)&self->_blockRequests;
    return r0;
}

-(void)setBlockRequests:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_blockRequests = arg2;
    return;
}

-(void *)moduleUpdateTimer {
    r0 = self->_moduleUpdateTimer;
    return r0;
}

-(void)setModuleUpdateTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_moduleUpdateTimer, arg2);
    return;
}

-(void *)worker {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_worker)), 0x1);
    return r0;
}

-(void)setWorker:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)sessionMap {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionMap)), 0x1);
    return r0;
}

-(void)setSessionMap:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)sessionMapLock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionMapLock)), 0x1);
    return r0;
}

-(void)setSessionMapLock:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)rewardCallbacks {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardCallbacks)), 0x1);
    return r0;
}

-(void)setRewardCallbacks:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)rewardCallbacksLock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardCallbacksLock)), 0x1);
    return r0;
}

-(void)setRewardCallbacksLock:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)configured {
    r0 = *(int8_t *)(int64_t *)&self->_configured;
    return r0;
}

-(bool)active {
    r0 = *(int8_t *)(int64_t *)&self->_active & 0x1;
    return r0;
}

-(bool)reconfigurable {
    r0 = *(int8_t *)(int64_t *)&self->_reconfigurable;
    return r0;
}

-(bool)useForcedController {
    r0 = *(int8_t *)(int64_t *)&self->_useForcedController;
    return r0;
}

-(void)setUseForcedController:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useForcedController = arg2;
    return;
}

-(bool)useForcedAdUnit {
    r0 = *(int8_t *)(int64_t *)&self->_useForcedAdUnit;
    return r0;
}

-(void)setUseForcedAdUnit:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useForcedAdUnit = arg2;
    return;
}

-(bool)useStagingLaunchServer {
    r0 = *(int8_t *)(int64_t *)&self->_useStagingLaunchServer;
    return r0;
}

-(void)setUseStagingLaunchServer:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useStagingLaunchServer = arg2;
    return;
}

-(void)setDismissAdOnBackground:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_dismissAdOnBackground = arg2;
    return;
}

-(int)dismissAdOnBackgroundDelayMs {
    r0 = *(int32_t *)(int64_t *)&self->_dismissAdOnBackgroundDelayMs;
    return r0;
}

-(bool)dismissAdOnBackground {
    r0 = *(int8_t *)(int64_t *)&self->_dismissAdOnBackground;
    return r0;
}

-(void)setDismissAdOnBackgroundDelayMs:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_dismissAdOnBackgroundDelayMs = arg2;
    return;
}

-(void *)startTimeForConfigure {
    r0 = self->_startTimeForConfigure;
    return r0;
}

-(void)setStartTimeForConfigure:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_startTimeForConfigure, arg2);
    return;
}

-(void *)options {
    r0 = self->_options;
    return r0;
}

-(void)setOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_options, arg2);
    return;
}

-(void)setControllerVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerVersion, arg2);
    return;
}

-(void *)appID {
    r0 = self->_appID;
    return r0;
}

-(void *)controllerVersion {
    r0 = self->_controllerVersion;
    return r0;
}

-(void *)userMetadata {
    r0 = self->_userMetadata;
    return r0;
}

-(void *)dynamicControls {
    r0 = self->_dynamicControls;
    return r0;
}

-(bool)ringerSwitchDetectionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_ringerSwitchDetectionEnabled;
    return r0;
}

-(void)setDynamicControls:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dynamicControls, arg2);
    return;
}

-(void *)zoneIDs {
    r0 = self->_zoneIDs;
    return r0;
}

-(void)setRingerSwitchDetectionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ringerSwitchDetectionEnabled = arg2;
    return;
}

-(void *)zones {
    r0 = self->_zones;
    return r0;
}

-(void)setZoneIDs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zoneIDs, arg2);
    return;
}

-(void *)zoneFromID {
    r0 = self->_zoneFromID;
    return r0;
}

-(void)setZones:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zones, arg2);
    return;
}

-(bool)showingInterstitial {
    r0 = *(int8_t *)(int64_t *)&self->_showingInterstitial;
    return r0;
}

-(void)setShowingInterstitial:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showingInterstitial = arg2;
    return;
}

-(void *)appSessionID {
    r0 = self->_appSessionID;
    return r0;
}

-(void)setAppSessionID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appSessionID, arg2);
    return;
}

-(void *)sessionAPI {
    r0 = self->_sessionAPI;
    return r0;
}

-(void *)webServicesAPI {
    r0 = self->_webServicesAPI;
    return r0;
}

-(void *)notificationAPI {
    r0 = self->_notificationAPI;
    return r0;
}

-(void *)configCompletion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_configCompletion)), 0x0);
    return r0;
}

-(void)setConfigCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)logManager {
    r0 = self->_logManager;
    return r0;
}

-(void *)pieKey {
    r0 = self->_pieKey;
    return r0;
}

-(void)setPieKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pieKey, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_pieKey, 0x0);
    objc_storeStrong((int64_t *)&self->_logManager, 0x0);
    objc_storeStrong((int64_t *)&self->_configCompletion, 0x0);
    objc_storeStrong((int64_t *)&self->_notificationAPI, 0x0);
    objc_storeStrong((int64_t *)&self->_webServicesAPI, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionAPI, 0x0);
    objc_storeStrong((int64_t *)&self->_appSessionID, 0x0);
    objc_storeStrong((int64_t *)&self->_zoneFromID, 0x0);
    objc_storeStrong((int64_t *)&self->_zones, 0x0);
    objc_storeStrong((int64_t *)&self->_zoneIDs, 0x0);
    objc_storeStrong((int64_t *)&self->_dynamicControls, 0x0);
    objc_storeStrong((int64_t *)&self->_userMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_appID, 0x0);
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    objc_storeStrong((int64_t *)&self->_startTimeForConfigure, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardCallbacksLock, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardCallbacks, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionMapLock, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionMap, 0x0);
    objc_storeStrong((int64_t *)&self->_worker, 0x0);
    objc_storeStrong((int64_t *)&self->_moduleUpdateTimer, 0x0);
    return;
}

@end