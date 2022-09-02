@implementation APMAnalytics

+(void)load {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    *0x1011d1e88 = d0;
    [r0 release];
    return;
}

+(void)initialize {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ([APMAEU isOSSupported] != 0x0 && *qword_1011d1e90 != -0x1) {
            dispatch_once(0x1011d1e90, 0x100e6c828);
    }
    return;
}

+(void *)sharedInstance {
    if (*qword_1011d1ea8 != -0x1) {
            dispatch_once(0x1011d1ea8, 0x100e6c868);
    }
    r0 = *0x1011d1ea0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)startWithAppID:(void *)arg2 origin:(void *)arg3 options:(void *)arg4 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (([APMAEU isOSSupported] & 0x1) == 0x0) goto loc_10013a69c;

loc_10013a644:
    if (NSClassFromString(@"FIRADatabase") == 0x0) goto loc_10013a728;

loc_10013a654:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10013a68c;

loc_10013a68c:
    [r22 logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r22;
    goto loc_10013a6f4;

loc_10013a6f4:
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10013a728:
    if (NSClassFromString(@"FIRAnalytics") == 0x0) goto loc_10013a794;

loc_10013a738:
    if (([r20 isEqual:r2] & 0x1) != 0x0) goto loc_10013a80c;

loc_10013a758:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10013a68c;

loc_10013a80c:
    if (NSClassFromString(@"GADMobileAds") != 0x0) {
            r0 = [APMInfoPlistFileUtil dictionaryFromGoogleServiceInfoPlist];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [APMIdentity sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 appIDFromAdMob];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 length];
                    [r0 release];
                    [r24 release];
                    [r23 release];
                    if (r26 == 0x0) {
                            r0 = [APMMeasurement monitor];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x4 messageCode:0x61c4 message:@"AdMob and Firebase are in use in this app, but are not linked. For analytics data consistency and integrity, it is highly recommended that you link your AdMob app to the corresponding Firebase app and re-download the GoogleServices-Info.plist file. See htt…"];
                            [r0 release];
                    }
            }
    }
    if ([r21 count] != 0x0) {
            r0 = [r21 objectForKeyedSubscript:*0x100e6cf38];
            r29 = r29;
            r23 = [r0 retain];
            [NSString class];
            if ([r23 isKindOfClass:r2] != 0x0 && [r23 length] != 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 setLogTag:r23];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 logWithLevel:0x1 messageCode:0x61c6 message:@"Invalid monitor tag. It must be a non-empty string."];
            }
            [r24 release];
            [r23 release];
    }
    r23 = [r20 retain];
    var_60 = r23;
    r24 = [r19 retain];
    var_58 = r24;
    r0 = [r21 retain];
    var_50 = r0;
    if (*qword_1011d1eb0 != -0x1) {
            dispatch_once(0x1011d1eb0, &var_80);
            r24 = var_58;
            r0 = var_50;
            r23 = var_60;
    }
    [r0 release];
    [r24 release];
    goto loc_10013a6f0;

loc_10013a6f0:
    r0 = r23;
    goto loc_10013a6f4;

loc_10013a794:
    r0 = [APMInfoPlistFileUtil googleServiceInfoPlistPath];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 length];
    [r0 release];
    if (r24 == 0x0) goto loc_10013a80c;

loc_10013a7d0:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10013a68c;

loc_10013a69c:
    r23 = [[NSString stringWithFormat:@"I-ACS%06ld"] retain];
    sub_1000abe24(*0x100e6cf88, 0x1, r23, @"App Measurement only supports iOS 7 and above. App Measurement is disabled.");
    goto loc_10013a6f0;
}

+(void)resetAnalyticsData {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    *0x1011d1e88 = d0;
    [r0 release];
    [self queueOperationWithBlock:0x100e6c948];
    return;
}

+(void)dispatchAsyncOnSerialQueue:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *0x1011d1ec8;
    r19 = [arg2 retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011d1ec8, 0x100e6c988);
    }
    dispatch_async(*0x1011d1ec0, r19);
    [r19 release];
    return;
}

+(void)queueOperationWithBlock:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            r21 = *0x1011d1e98;
            var_28 = [r19 retain];
            [r21 addOperationWithBlock:&var_50];
            [var_28 release];
    }
    [r19 release];
    return;
}

+(void)unsuspendOperationQueue {
    [*0x1011d1e98 setSuspended:0x0];
    return;
}

+(bool)isCurrentQueueSerialQueue {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = dispatch_queue_get_label(0x0);
    if (r0 != 0x0) {
            r0 = strcmp(r0, "APMAnalyticsQueue");
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

+(void)setAnalyticsEnabled:(bool)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([APMAEU isOSSupported] != 0x0) {
            [r19 dispatchAsyncOnSerialQueue:&var_38];
    }
    return;
}

+(void)setScreenName:(void *)arg2 screenClass:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            if ([NSThread isMainThread] != 0x0) {
                    r0 = [APMScreenViewReporter sharedInstance];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 setScreenName:r19 screenClass:r20];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 logWithLevel:0x3 messageCode:0x61c1 message:@"setScreenName:screenClass: must be called from the main thread to ensure that events are associated with the intended screen."];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)appInstanceID {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([APMAEU isOSSupported] != 0x0) {
            r0 = [APMIdentity sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 appInstanceID];
            r0 = [r0 retain];
            r19 = [r0 copy];
            [r0 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(double)loadTimestamp {
    r0 = self;
    return r0;
}

+(void)observeNotificationsForAnalyticsConfiguration:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    r21 = r0;
    [r0 removeObserver:r2];
    if (r19 != 0x0) {
            [r21 addObserver:r20 selector:@selector(handleSetEnabled:) name:*0x100e6cef8 object:r19];
            [r21 addObserver:r20 selector:@selector(handleSetMinimumSessionInterval:) name:*0x100e6cf00 object:r19];
            [r21 addObserver:r20 selector:@selector(handleSetSessionTimeoutInterval:) name:*0x100e6cf08 object:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void)handleSetEnabled:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e6cef8];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    [NSNumber class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            [APMAnalytics setAnalyticsEnabled:[r19 boolValue]];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x61a8 message:@"Received setEnabled notification without NSNumber" context:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

+(void)handleSetMinimumSessionInterval:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e6cf00];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [NSNumber class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            [r19 doubleValue];
            [r20 dispatchAsyncOnSerialQueue:&var_48];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x61a9 message:@"Received setMinimumSessionInterval notification without NSNumber" context:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

+(void)handleSetSessionTimeoutInterval:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e6cf08];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [NSNumber class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            [r19 doubleValue];
            [r20 dispatchAsyncOnSerialQueue:&var_48];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x61aa message:@"Received setSessionTimeoutInterval notification without NSNumber" context:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

+(void)handleEventsForBackgroundURLSession:(void *)arg2 completionHandler:(void *)arg3 {
    r20 = [arg2 retain];
    [GULNetwork handleEventsForBackgroundURLSessionID:r20 completionHandler:arg3];
    [r20 release];
    return;
}

+(void)logEventsOnWorkerQueue:(void *)arg2 notifyEventListeners:(bool)arg3 {
    r31 = r31 - 0x140;
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
    r19 = arg3;
    r0 = [arg2 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r26 = *(0x0 + r20 * 0x8);
                            r0 = [APMMeasurement sharedInstance];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 logEvent:r26];
                            [r0 release];
                            if (r19 != 0x0) {
                                    [APMAnalytics notifyEventListenersOnSerialQueue:r2];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r22 = objc_msgSend(var_120, var_128);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)logEventWithName:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    [self logEventWithOrigin:@"app" name:r21 parameters:arg3];
    [r21 release];
    return;
}

+(void)logInternalEventWithOrigin:(void *)arg2 name:(void *)arg3 parameters:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self logEventWithOrigin:r22 isPublicEvent:0x0 name:r20 parameters:arg4];
    [r20 release];
    [r22 release];
    return;
}

+(void)logEventWithOrigin:(void *)arg2 name:(void *)arg3 parameters:(void *)arg4 {
    r31 = r31 - 0x40;
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
    if ([APMAEU isOSSupported] != 0x0) {
            if (([APMDataTypeValidator isValidPublicEventName:r20 failureCode:&var_28] & 0x1) != 0x0) {
                    [r22 logEventWithOrigin:r19 isPublicEvent:0x1 name:r20 parameters:r21];
            }
            else {
                    if (var_28 == 0x4) {
                            r0 = 0xd;
                    }
                    else {
                            r0 = 0x2;
                    }
                    sub_100194dd8(r0, r20, *(int32_t *)0x100ba2010, r20);
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logEventWithOrigin:(void *)arg2 isPublicEvent:(bool)arg3 name:(void *)arg4 parameters:(void *)arg5 {
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
    r29 = &saved_fp;
    r22 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            if ((sub_100197214() & 0x1) != 0x0) {
                    r24 = 0x0;
            }
            else {
                    r0 = [APMScreenViewReporter sharedInstance];
                    r0 = [r0 retain];
                    r24 = [[r0 screenParameters] retain];
                    [r0 release];
            }
            if (*qword_1011d1ed8 != -0x1) {
                    dispatch_once(0x1011d1ed8, 0x100e6ca58);
            }
            r25 = *0x1011d1ed0;
            var_68 = [r19 retain];
            var_60 = [r20 retain];
            var_58 = [r21 retain];
            [r24 retain];
            dispatch_sync(r25, &var_90);
            [r24 release];
            [var_58 release];
            [var_60 release];
            [var_68 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logEventWithOrigin:(void *)arg2 isPublicEvent:(bool)arg3 name:(void *)arg4 parameters:(void *)arg5 timestamp:(double)arg6 ignoreEnabled:(bool)arg7 ignoreInterceptor:(bool)arg8 {
    r31 = r31 - 0xb0;
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
    r23 = arg7;
    r24 = arg6;
    r25 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            var_78 = [r19 retain];
            var_70 = [r20 retain];
            var_68 = [r21 retain];
            [r22 queueOperationWithBlock:&var_A0];
            [var_68 release];
            [var_70 release];
            [var_78 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)createAppDelegateProxy {
    if (*qword_1011d1ee8 != -0x1) {
            dispatch_once(0x1011d1ee8, 0x100e6cb28);
    }
    return;
}

+(void *)eventsToLogWithEventID:(long long)arg2 origin:(void *)arg3 isPublic:(bool)arg4 name:(void *)arg5 timestamp:(double)arg6 parameters:(void *)arg7 {
    r7 = arg7;
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r22 = arg4;
    r23 = arg2;
    r19 = [arg3 retain];
    r20 = [arg5 retain];
    r21 = [arg6 retain];
    if ((sub_100195844() & 0x1) != 0x0) {
            r23 = [sub_100196a00(r23, r20, r19, r21, r22) retain];
    }
    else {
            r22 = [[APMEvent alloc] initWithOrigin:r19 isPublic:r22 name:r20 timestamp:r21 previousTimestamp:r6 parameters:r7];
            if (r22 != 0x0) {
                    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
                    r23 = [r0 retain];
            }
            else {
                    r23 = [[APMMeasurement monitor] retain];
                    r24 = [sub_100197c2c() retain];
                    [r23 logWithLevel:0x1 messageCode:0x61be message:@"Attempted to log nil event. Origin, name, parameters" context:r19 context:r24 context:r21];
                    [r24 release];
                    [r23 release];
                    r23 = 0x0;
            }
            [r22 release];
    }
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)handleOpenURL:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            var_40 = [r19 retain];
            [r20 dispatchAsyncOnSerialQueue:&var_60];
            [var_40 release];
    }
    [r19 release];
    return;
}

+(void)handleUserActivity:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            var_40 = [r19 retain];
            [r20 dispatchAsyncOnSerialQueue:&var_60];
            [var_40 release];
    }
    [r19 release];
    return;
}

+(void)logEventOnSerialQueueWithOrigin:(void *)arg2 isPublicEvent:(bool)arg3 name:(void *)arg4 parameters:(void *)arg5 timestamp:(double)arg6 ignoreEnabled:(bool)arg7 ignoreInterceptor:(bool)arg8 addedScreenParameters:(void *)arg9 {
    r31 = r31 - 0x170;
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
    r24 = arg7;
    r25 = arg6;
    v8 = v0;
    r26 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg8 retain];
    if ([APMAEU isOSSupported] == 0x0) goto loc_10013ca20;

loc_10013c658:
    r0 = [APMDataTypeValidator isValidForwardedEventOrigin:r19 failureCode:0x0];
    r28 = r24 ^ 0x1;
    if ([r22 count] == 0x0 && (r28 & 0x1) == 0x0 && r0 != 0x0) {
            r27 = @selector(count);
            r0 = sub_1001972dc();
            r29 = r29;
            r24 = [r0 retain];
            [r22 release];
            if (objc_msgSend(r24, r27) != 0x0) {
                    r23 = [r21 mutableCopy];
                    r0 = [r24 allKeys];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r23 removeObjectsForKeys:r22];
                    [r22 release];
                    [r21 release];
                    r22 = r24;
                    r21 = r23;
            }
            else {
                    r22 = r24;
            }
    }
    r27 = @selector(count);
    r0 = [APMAnalytics eventsToLogWithEventID:[APMNumericUtil randomInt64] origin:r19 isPublic:r26 name:r20 timestamp:r21 parameters:r7];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, r27) == 0x0) goto loc_10013c884;

loc_10013c780:
    r27 = @selector(count);
    if (objc_msgSend(r22, r27) != 0x0) {
            var_14C = r28;
            var_148 = @selector(count);
            var_140 = r25;
            stack[-332] = r26;
            var_138 = r20;
            stack[-320] = r19;
            var_118 = q0;
            r0 = [r24 retain];
            r27 = r0;
            r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r25 != 0x0) {
                    r20 = *var_118;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_118 != r20) {
                                            objc_enumerationMutation(r27);
                                    }
                                    [*(var_120 + r19 * 0x8) addScreenParameters:r2];
                                    r19 = r19 + 0x1;
                            } while (r19 < r25);
                            r25 = [r27 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r25 != 0x0);
            }
            [r27 release];
            r20 = var_138;
            r19 = stack[-320];
            r25 = var_140;
            r26 = stack[-332];
            r27 = var_148;
            r28 = var_14C;
    }
    if (*(int8_t *)byte_1011d1eb9 != 0x0 || r25 != 0x0) goto loc_10013c8f4;

loc_10013c92c:
    [APMAnalytics logEventsOnWorkerQueue:r24 notifyEventListeners:0x0];
    goto loc_10013ca18;

loc_10013ca18:
    [r24 release];
    goto loc_10013ca20;

loc_10013ca20:
    var_68 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_10013c8f4:
    r23 = [[r24 firstObject] retain];
    r25 = sub_10013a130();
    [r23 release];
    if (r25 == 0x0) goto loc_10013c944;
    goto loc_10013c92c;

loc_10013c944:
    r8 = 0x1011d1000;
    r25 = objc_retainBlock(*(r8 + 0xee0));
    if (r25 != 0x0) {
            r8 = 0x1011d1000;
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    if ((r8 & r28) == 0x1 && r26 != 0x0) {
            if (objc_msgSend(r22, r27) != 0x0) {
                    if (r21 == 0x0) {
                            r21 = [[NSDictionary alloc] init];
                    }
                    r0 = [r21 mutableCopy];
                    [r0 addEntriesFromDictionary:r22];
                    [r21 release];
                    r21 = r0;
            }
            (*(r25 + 0x10))(r25, r19, r20, r21);
    }
    else {
            [APMAnalytics logEventsOnWorkerQueue:r24 notifyEventListeners:0x1];
    }
    r0 = r25;
    goto loc_10013ca14;

loc_10013ca14:
    [r0 release];
    goto loc_10013ca18;

loc_10013c884:
    r23 = [[APMMeasurement monitor] retain];
    r25 = [sub_100197c2c() retain];
    [r23 logWithLevel:0x1 messageCode:0x61b9 message:@"No events to log. Invalid event(s). Name, origin, parameters" context:r25 context:r19 context:r21];
    [r25 release];
    r0 = r23;
    goto loc_10013ca14;
}

+(void)setOpenURLListener:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            var_18 = [r19 retain];
            [r20 dispatchAsyncOnSerialQueue:&var_38];
            [var_18 release];
    }
    [r19 release];
    return;
}

+(void)setUserPropertyString:(void *)arg2 forName:(void *)arg3 {
    r31 = r31 - 0x40;
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
    if ([APMAEU isOSSupported] != 0x0) {
            if (r19 != 0x0) {
                    if (([APMDataTypeValidator isValidPublicUserAttributeName:r20 failureCode:&var_28] & 0x1) != 0x0) {
                            [NSString class];
                            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                                    r21 = [[APMValue alloc] initWithString:r19];
                                    if (([APMDataTypeValidator isValidPublicUserAttributeValue:r21 failureCode:&var_28] & 0x1) != 0x0) {
                                            r0 = [APMAnalytics sharedInstance];
                                            r0 = [r0 retain];
                                            [r0 setInternalUserProperty:r21 forName:r20 withOrigin:@"app"];
                                            [r0 release];
                                    }
                                    else {
                                            if (var_28 == 0x2) {
                                                    sub_100194dd8(0x7, r20, *(int32_t *)0x100ba2030, r19);
                                            }
                                    }
                            }
                            else {
                                    r0 = [APMMeasurement monitor];
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    [r0 logWithLevel:0x0 messageCode:0x61ab message:@"User property must be NSString. Value" context:r19];
                            }
                            [r21 release];
                    }
                    else {
                            if (var_28 == 0x4) {
                                    r0 = 0xf;
                            }
                            else {
                                    r0 = 0x6;
                            }
                            sub_100194dd8(r0, r20, *(int32_t *)0x100ba2030, r20);
                    }
            }
            else {
                    [r21 removeUserAttributeForName:r20];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)setUserID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            if (r19 != 0x0) {
                    [NSString class];
                    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                            r0 = [APMAnalytics sharedInstance];
                            r0 = [r0 retain];
                            r20 = r0;
                            [r0 setInternalUserProperty:r19 forName:@"_id" withOrigin:@"app"];
                    }
                    else {
                            r0 = [APMMeasurement monitor];
                            r0 = [r0 retain];
                            r20 = r0;
                            [r0 logWithLevel:0x0 messageCode:0x61ac message:@"User ID must be NSString. User ID" context:r19];
                    }
                    [r20 release];
            }
            else {
                    [r20 removeInternalUserAttributeForName:@"_id"];
            }
    }
    [r19 release];
    return;
}

+(void)removeUserAttributeForName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMDataTypeValidator isValidPublicUserAttributeName:r19 failureCode:0x0] != 0x0) {
            [r20 removeInternalUserAttributeForName:r19];
    }
    [r19 release];
    return;
}

+(void)setUserAttributeNumber:(void *)arg2 forName:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            if (([APMDataTypeValidator isValidPublicUserAttributeName:r20 failureCode:&var_28] & 0x1) != 0x0) {
                    r2 = [NSNumber class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r22 = CFNumberIsFloatType(r19);
                            r21 = [APMValue alloc];
                            if (r22 != 0x0) {
                                    [r19 doubleValue];
                                    r0 = [r21 initWithDouble:r2];
                            }
                            else {
                                    r0 = [r21 initWithInt64:[r19 longLongValue]];
                            }
                            r21 = r0;
                            r0 = [APMAnalytics sharedInstance];
                            r0 = [r0 retain];
                            [r0 setInternalUserProperty:r21 forName:r20 withOrigin:@"auto"];
                            [r0 release];
                            [r21 release];
                    }
            }
            else {
                    if (var_28 == 0x4) {
                            r0 = 0xf;
                    }
                    else {
                            r0 = 0x6;
                    }
                    sub_100194dd8(r0, r20, *(int32_t *)0x100ba2030, r20);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)setInternalUserProperty:(void *)arg2 forName:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [APMAnalytics sharedInstance];
    r0 = [r0 retain];
    [r0 setInternalUserProperty:r20 forName:r19 withOrigin:@"auto"];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)removeInternalUserAttributeForName:(void *)arg2 {
    r31 = r31 - 0x80;
    var_40 = d9;
    stack[-72] = d8;
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
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            r22 = [[APMValue alloc] initWithDouble:r2];
            r0 = [APMUserAttribute alloc];
            r0 = [r0 initWithOrigin:@"" name:r19 value:r22 lastSetTimestamp:r5];
            r23 = [r0 retain];
            [r20 queueOperationWithBlock:&var_68];
            [r0 release];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)setInternalUserProperty:(void *)arg2 forName:(void *)arg3 withOrigin:(void *)arg4 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([APMAEU isOSSupported] == 0x0) goto loc_10013d82c;

loc_10013d768:
    if (([APMDataTypeValidator isValidInternalUserAttributeName:r20 failureCode:0x0] & 0x1) == 0x0) goto loc_10013d810;

loc_10013d788:
    if ([r21 length] == 0x0 || [r21 length] >= sign_extend_64(*(int32_t *)0x100ba2014)) goto loc_10013d7c0;

loc_10013d864:
    if (r19 == 0x0) goto loc_10013d984;

loc_10013d868:
    r0 = [APMValue valueFromObject:r19];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_10013d804;

loc_10013d890:
    if (([APMDataTypeValidator isValidInternalUserAttributeValue:r22 name:r20 failureCode:&var_58] & 0x1) == 0x0) goto loc_10013d9a0;

loc_10013d8b4:
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = [APMUserAttribute alloc];
    r0 = [r0 initWithOrigin:r21 name:r20 value:r22 lastSetTimestamp:r5];
    r25 = [r0 retain];
    [APMAnalytics queueOperationWithBlock:&var_80];
    [r0 release];
    r0 = r25;
    goto loc_10013da48;

loc_10013da48:
    [r0 release];
    goto loc_10013d804;

loc_10013d804:
    [r22 release];
    goto loc_10013d82c;

loc_10013d82c:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10013d9a0:
    if (var_58 != 0x2) goto loc_10013d804;

loc_10013d9ac:
    if ([r22 isString] == 0x0) goto loc_10013d9d8;

loc_10013d9c0:
    r0 = [r22 stringValue];
    goto loc_10013da18;

loc_10013da18:
    r23 = [r0 retain];
    goto loc_10013da28;

loc_10013da28:
    sub_100194dd8(0x7, r20, *(int32_t *)0x100ba2030, r23);
    r0 = r23;
    goto loc_10013da48;

loc_10013d9d8:
    [NSNumber class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10013da24;

loc_10013da04:
    r0 = [r19 stringValue];
    goto loc_10013da18;

loc_10013da24:
    r23 = 0x0;
    goto loc_10013da28;

loc_10013d984:
    [APMAnalytics removeInternalUserAttributeForName:r20];
    goto loc_10013d82c;

loc_10013d7c0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r22 = r0;
    [r0 logWithLevel:0x1 messageCode:0x61ad message:@"Unable to set user property. Origin is invalid. Origin, name" context:r21 context:r20];
    goto loc_10013d804;

loc_10013d810:
    sub_100194dd8(0x6, r20, *(int32_t *)0x100ba2030, r20);
    goto loc_10013d82c;
}

+(void)userPropertiesIncludingInternal:(bool)arg2 queue:(void *)arg3 callback:(void *)arg4 {
    r22 = [arg3 retain];
    r0 = [arg4 retain];
    r19 = [r0 retain];
    var_30 = r22;
    r22 = [r22 retain];
    [self queueOperationWithBlock:&var_58];
    [var_30 release];
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)maxUserPropertiesForOrigin:(void *)arg2 queue:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0x80;
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
    if ([r19 length] == 0x0) goto loc_10013e384;

loc_10013e2d8:
    if (r20 == 0x0) goto loc_10013e3c4;

loc_10013e2dc:
    if (r21 == 0x0) goto loc_10013e400;

loc_10013e2e0:
    r22 = [r21 copy];
    var_48 = [r19 retain];
    var_40 = [r20 retain];
    var_38 = r22;
    r22 = [r22 retain];
    [APMAnalytics queueOperationWithBlock:&var_68];
    [var_38 release];
    [var_40 release];
    [var_48 release];
    goto loc_10013e444;

loc_10013e444:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10013e400:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10013e438;

loc_10013e438:
    [r22 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    goto loc_10013e444;

loc_10013e3c4:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10013e438;

loc_10013e384:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r22 = r0;
    [r0 logWithLevel:0x1 messageCode:0x61b1 message:@"Cannot query Analytics for max user properties. Origin must be a non-empty string"];
    goto loc_10013e444;
}

+(void)setLogEventInterceptor:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            var_28 = [r19 retain];
            r0 = objc_retainBlock(&var_48);
            r21 = r0;
            if ([r20 isCurrentQueueSerialQueue] != 0x0) {
                    (*(r21 + 0x10))(r21);
            }
            else {
                    [r20 queueOperationWithBlock:r21];
            }
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

+(void *)addLogEventListener:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r20 = [r2 copy];
            r21 = [[[NSValue valueWithNonretainedObject:r20] retain] retain];
            var_30 = r21;
            r20 = [r20 retain];
            var_28 = r20;
            r0 = objc_retainBlock(&var_50);
            r22 = r0;
            if ([r19 isCurrentQueueSerialQueue] != 0x0) {
                    (*(r22 + 0x10))(r22);
            }
            else {
                    [r19 queueOperationWithBlock:r22];
            }
            r19 = [r21 retain];
            [r22 release];
            [var_28 release];
            [var_30 release];
            [r19 release];
            [r20 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x2 messageCode:0x61b4 message:@"Attempted addition of nil log event listener."];
            [r0 release];
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void)removeLogEventListener:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            if (r19 != 0x0) {
                    var_18 = [r19 retain];
                    [r20 queueOperationWithBlock:&var_38];
                    r0 = var_18;
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x2 messageCode:0x61b5 message:@"Attempted removal of nil log event."];
                    r0 = r0;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

+(void)notifyEventListeners:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [r0 retain];
    [self queueOperationWithBlock:&var_50];
    [r0 release];
    [r21 release];
    return;
}

+(void)maybeEnableTagManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = NSClassFromString(@"TAGManager");
    r20 = NSSelectorFromString(@"initializeSharedInstance");
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            r2 = [r19 methodForSelector:r20];
            if (r2 != 0x0) {
                    (r2)(r19, r20, r2);
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x2 messageCode:0x61b8 message:@"TAGManager class doesn't define initializeSharedInstance"];
                    [r0 release];
            }
    }
    return;
}

+(void)notifyEventListenersOnSerialQueue:(void *)arg2 {
    r31 = r31 - 0x120;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = *0x1011d1ef8;
    r0 = [r0 allValues];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = *(0x0 + r24 * 0x8);
                            (*(r0 + 0x10))(r0, r19);
                            r24 = r24 + 0x1;
                    } while (r24 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)logInternalEventWithOrigin:(void *)arg2 name:(void *)arg3 parameters:(void *)arg4 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            if ([r19 isEqualToString:r2] != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:@"_aeid"];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            [NSString class];
                            if ([r22 isKindOfClass:r2] != 0x0) {
                                    r0 = [APMMeasurement monitor];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 logWithLevel:r2 messageCode:r3 message:r4];
                                    [r25 release];
                                    if (sub_10019949c() != 0x0) {
                                            r23 = [APMValue alloc];
                                            r23 = [r23 initWithInt64:[r22 longLongValue]];
                                            r0 = [r21 mutableCopy];
                                            [r0 setObject:r23 forKeyedSubscript:@"_aeid"];
                                            [r21 release];
                                            [r23 release];
                                            r21 = r0;
                                    }
                                    else {
                                            r0 = [APMMeasurement monitor];
                                            r0 = [r0 retain];
                                            [r0 logWithLevel:r2 messageCode:r3 message:r4];
                                            [r24 release];
                                    }
                            }
                    }
                    [r22 release];
            }
            [APMAnalytics logInternalEventWithOrigin:r19 name:r20 parameters:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)paymentQueue:(void *)arg2 updatedTransactions:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([APMAEU isOSSupported] != 0x0) {
            r0 = [r20 copy];
            r22 = [r0 retain];
            var_28 = [r19 retain];
            [r21 queueOperationWithBlock:&var_50];
            [var_28 release];
            [r0 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)paymentQueue:(void *)arg2 updatedTransactions:(void *)arg3 {
    r20 = [arg2 retain];
    [APMAnalytics paymentQueue:r20 updatedTransactions:arg3];
    [r20 release];
    return;
}

-(void)dealloc {
    r0 = [SKPaymentQueue defaultQueue];
    r0 = [r0 retain];
    [r0 removeTransactionObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

@end