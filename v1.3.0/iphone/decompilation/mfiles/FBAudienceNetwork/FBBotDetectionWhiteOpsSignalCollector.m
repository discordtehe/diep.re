@implementation FBBotDetectionWhiteOpsSignalCollector

+(void)initializeSignalCollectionWithConfigDelegate:(void *)arg2 withSignalsDelegate:(void *)arg3 withLoggerDelegate:(void *)arg4 withDynamicLibraryProviderDelegate:(void *)arg5 {
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
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = [arg4 retain];
    r19 = [arg5 retain];
    var_60 = r22;
    r20 = [r22 retain];
    var_58 = r21;
    r21 = [r21 retain];
    var_50 = r23;
    r22 = [r23 retain];
    var_48 = r19;
    r0 = r19;
    if (*qword_1011dea10 == -0x1) {
            r0 = [r0 retain];
            r23 = r20;
            r24 = r21;
            r25 = r22;
    }
    else {
            [r0 retain];
            dispatch_once(0x1011dea10, &var_80);
            r25 = var_50;
            r0 = var_48;
            r23 = var_60;
            r24 = var_58;
    }
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

+(void)finalizeSignalsAndSendUsingCompletionBlock:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [r0 finalizeSignals:*0x1011dea08 withCompletionBlock:r2];
    }
    return;
}

+(void)finalizeSignals:(void *)arg2 withCompletionBlock:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*(int8_t *)byte_1011de9f8 == 0x1) {
            asm { ccmp       x21, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r21 = *0x1011dea00;
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            dispatch_async(r21, &var_58);
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)fetchUIDeviceSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalUIDeviceEnabled] != 0x0) {
            r0 = @(0x25);
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r19 containsObject:r2];
            [r23 release];
            if (r24 != 0x0) {
                    r22 = [[r22 getDeviceName] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x25];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 setObject:r22 forKeyedSubscript:r24];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x34);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r0 = [UIDevice currentDevice];
                    r0 = [r0 retain];
                    r22 = r0;
                    r23 = [[r0 systemName] retain];
                    r24 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x34];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r24 setObject:r23 forKeyedSubscript:r25];
                    [r25 release];
                    [r23 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x38);
            r29 = r29;
            r22 = [r0 retain];
            r21 = objc_msgSend(r19, r21);
            [r22 release];
            if (r21 != 0x0) {
                    r0 = objc_msgSend(@class(UIDevice), *0x101137df0);
                    r0 = [r0 retain];
                    r22 = [[r0 systemVersion] retain];
                    r23 = *qword_1011de9c8;
                    r20 = [@(0x38) retain];
                    [r23 setObject:r22 forKeyedSubscript:r20];
                    [r20 release];
                    [r22 release];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

+(void)collectSignals:(void *)arg2 withCompletionBlock:(void *)arg3 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (dispatch_queue_get_label(*__dispatch_main_q) != dispatch_queue_get_label(0x0)) {
            r0 = dispatch_group_create();
            dispatch_group_enter(r0);
            r0 = [r19 retain];
            var_A0 = r0;
            r0 = [r21 retain];
            r21 = r0;
            var_98 = r0;
            dispatch_async(*__dispatch_main_q, &var_C8);
            dispatch_group_wait(r21, 0xffffffffffffffff);
            [r22 fetchSimulatorSignals:r23];
            [r22 fetchBuildSignalsForSignalList:r23];
            [r22 fetchProcessSignalsForSignalList:r23];
            [r22 fetchBundleSignalsForSignalList:r23];
            [r22 fetchOtherBackgroudThreadSignalsForSignalList:r23];
            [r22 fetchLocalAuthSignalsForSignalsList:r23];
            [r22 fetchCameraSignalsForSignalList:r23];
            [r22 fetchMotionSensorSignalsForSignalList:r23];
            [r22 fetchLocationSignalsForSignalList:r23];
            [r22 fetchAudioSignalsForSignalList:r23];
            [r22 fetchNetworkingSignalsForSignalList:r23];
            [r22 fetchTelephonySignalsForSignalList:r23 usingDispatchGroup:r21];
            dispatch_group_wait(r21, 0xffffffffffffffff);
            r0 = @(0x40);
            r29 = r29;
            r24 = [r0 retain];
            r2 = r24;
            r23 = [r23 containsObject:r2];
            [r24 release];
            if (r23 != 0x0) {
                    r23 = @class(NSNumber);
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 timeIntervalSince1970];
                    r23 = [[r23 numberWithDouble:r2] retain];
                    r25 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x40];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r25 setObject:r23 forKeyedSubscript:r22];
                    [r22 release];
                    [r23 release];
                    [r24 release];
            }
            r22 = [*0x1011de9c8 copy];
            r23 = [*0x1011de9d0 copy];
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r24 = [r0 retain];
            if (r20 != 0x0) {
                    r25 = [dispatch_get_global_queue(0x0, 0x0) retain];
                    var_D8 = [r20 retain];
                    var_D0 = [r24 retain];
                    dispatch_async(r25, &var_F8);
                    [r25 release];
                    [var_D0 release];
                    [var_D8 release];
            }
            [*0x1011de9c8 removeAllObjects];
            objc_msgSend(*0x1011de9d0, r25);
            [r24 release];
            [r23 release];
            [r22 release];
            [var_98 release];
            [var_A0 release];
            [r21 release];
    }
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

+(void)fetchUIScreenSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalScreenEnabled] != 0x0) {
            r0 = @(0x3);
            r29 = r29;
            r22 = [r0 retain];
            r2 = r22;
            r23 = [r19 containsObject:r2];
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    [r0 brightness];
                    [[r22 numberWithDouble:r2] retain];
                    r24 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x3];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r25 release];
                    [r22 release];
                    [r23 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x4c);
            r29 = r29;
            r22 = [r0 retain];
            r2 = r22;
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    [r0 scale];
                    [[r22 numberWithDouble:r2] retain];
                    r24 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x4c];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r25 release];
                    [r22 release];
                    [r23 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x2d);
            r29 = r29;
            r22 = [r0 retain];
            r2 = r22;
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    [r0 nativeBounds];
                    [[r22 numberWithDouble:r2] retain];
                    r24 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x2d];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r25 release];
                    [r22 release];
                    [r23 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x42);
            r29 = r29;
            r22 = [r0 retain];
            r2 = r22;
            r21 = objc_msgSend(r19, r21);
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    [r0 nativeBounds];
                    [[r21 numberWithDouble:r2] retain];
                    r23 = *0x1011de9c8;
                    [@(0x42) retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r20 release];
                    [r21 release];
                    [r22 release];
            }
    }
    [r19 release];
    return;
}

+(void)fetchBuildSignalsForSignalList:(void *)arg2 {
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
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalBuildEnabled] != 0x0) {
            r0 = @(0x46);
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 containsObject:r2];
            [r21 release];
            if (r22 != 0x0) {
                    r0 = [NSDateFormatter new];
                    [r0 setDateFormat:@"MMM d yyyy H:m:s"];
                    r22 = @class(NSString);
                    r24 = [[r22 stringWithUTF8String:"Jun 17 2019"] retain];
                    r23 = [[NSString stringWithUTF8String:"13:32:28"] retain];
                    r25 = [[r22 stringWithFormat:@"%@ %@"] retain];
                    r22 = [[r0 dateFromString:r25] retain];
                    [r25 release];
                    [r23 release];
                    [r24 release];
                    r23 = @class(NSNumber);
                    [r22 timeIntervalSince1970];
                    r23 = [[r23 numberWithDouble:r25] retain];
                    r24 = *0x1011de9c8;
                    r20 = [@(0x46) retain];
                    [r24 setObject:r23 forKeyedSubscript:r20];
                    [r20 release];
                    [r23 release];
                    [r22 release];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

+(void)fetchSimulatorSignals:(void *)arg2 {
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
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalSimulatorEnabled] != 0x0) {
            r0 = @(0x27);
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 containsObject:r2];
            [r21 release];
            if (r22 != 0x0) {
                    r21 = [@(NO) retain];
                    r22 = *0x1011de9c8;
                    r20 = [@(0x27) retain];
                    [r22 setObject:r21 forKeyedSubscript:r20];
                    [r20 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

+(void)fetchUIApplicationSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalUIApplicationEnabled] == 0x0) goto loc_100b816d4;

loc_100b813cc:
    r0 = @(0x0);
    r29 = r29;
    r22 = [r0 retain];
    r23 = [r19 containsObject:r2];
    [r22 release];
    r24 = 0x101137000;
    if (r23 == 0x0) goto loc_100b81518;

loc_100b81428:
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 applicationState];
    [r0 release];
    if (r22 >= 0x3) goto loc_100b814a0;

loc_100b81468:
    r22 = [[NSNumber numberWithBool:r2] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:0x0];
    r29 = r29;
    goto loc_100b814d8;

loc_100b814d8:
    r23 = *0x1011de9c8;
    r24 = [r0 retain];
    [r23 setObject:r22 forKeyedSubscript:r24];
    r0 = r24;
    r24 = 0x101137000;
    [r0 release];
    [r22 release];
    goto loc_100b81518;

loc_100b81518:
    r21 = @selector(containsObject:);
    r0 = @(0x8);
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_msgSend(r19, r21);
    [r22 release];
    if (r23 != 0x0) {
            r22 = @class(NSNumber);
            r0 = *(&@class(MCConfigurationData) + 0x48);
            r0 = [r0 sharedApplication];
            r0 = [r0 retain];
            r23 = r0;
            [r0 isIdleTimerDisabled];
            r22 = [objc_msgSend(r22, *0x1011378a0) retain];
            r24 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x8];
            r29 = r29;
            r25 = [r0 retain];
            r0 = r24;
            r24 = 0x101137000;
            [r0 setObject:r22 forKeyedSubscript:r25];
            [r25 release];
            [r22 release];
            [r23 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x16);
    r29 = r29;
    r22 = [r0 retain];
    r21 = objc_msgSend(r19, r21);
    [r22 release];
    if (r21 != 0x0) {
            r21 = @class(NSNumber);
            r0 = *(&@class(MCConfigurationData) + 0x48);
            r0 = [r0 sharedApplication];
            r0 = [r0 retain];
            [r0 isProtectedDataAvailable];
            r21 = [objc_msgSend(r21, *(r24 + 0x8a0)) retain];
            r23 = *qword_1011de9c8;
            r20 = [@(0x16) retain];
            [r23 setObject:r21 forKeyedSubscript:r20];
            [r20 release];
            [r21 release];
            [r0 release];
    }
    goto loc_100b816d4;

loc_100b816d4:
    [r19 release];
    return;

loc_100b814a0:
    r24 = 0x101137000;
    if (r22 != 0x0) goto loc_100b81518;

loc_100b814a4:
    r22 = [[NSNumber numberWithBool:r2] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:0x0];
    r29 = r29;
    goto loc_100b814d8;
}

+(void)fetchOtherBackgroudThreadSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([*0x1011de9d8 isNativeSignalBootEnabled] & 0x1) != 0x0) {
            r22 = [[r20 getBootDate] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x22];
            r29 = r29;
            r23 = [r0 retain];
            r2 = r23;
            r24 = [r19 containsObject:r2];
            [r23 release];
            if (r24 != 0x0) {
                    r23 = @class(NSNumber);
                    [r22 timeIntervalSince1970];
                    [[r23 numberWithDouble:r2] retain];
                    r24 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x22];
                    r29 = r29;
                    r3 = [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r25 release];
                    [r23 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x1e);
            r29 = r29;
            r23 = [r0 retain];
            r2 = r23;
            r24 = objc_msgSend(r19, r21);
            [r23 release];
            if (r24 != 0x0) {
                    r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r27 = &@selector(alloc);
                    r20 = @selector(numberWithUnsignedInteger:);
                    r23 = *(r28 + 0xfc0);
                    [r22 timeIntervalSinceNow];
                    asm { frinta     d0, d0 };
                    [[r23 numberWithDouble:r2] retain];
                    r24 = *0x1011de9c8;
                    r0 = *(r28 + 0xfc0);
                    r0 = objc_msgSend(r0, r20);
                    r29 = r29;
                    r3 = [r0 retain];
                    objc_msgSend(r24, *(r27 + 0xbf0));
                    [r25 release];
                    [r23 release];
            }
            [r22 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x6);
    r29 = r29;
    r22 = [r0 retain];
    r2 = r22;
    r23 = objc_msgSend(r19, r21);
    [r22 release];
    if (r23 != 0x0) {
            [[NSNumber numberWithDouble:r2] retain];
            r23 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x6];
            r29 = r29;
            r3 = [r0 retain];
            [r23 setObject:r2 forKeyedSubscript:r3];
            [r24 release];
            [r22 release];
    }
    if ([*0x1011de9d8 isNativeSignalProxyEnabled] != 0x0) {
            r21 = @selector(containsObject:);
            r0 = @(0x17);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    CFNetworkCopySystemProxySettings();
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x17];
                    r29 = r29;
                    r3 = [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
    }
    r21 = @selector(containsObject:);
    r0 = @(0x3c);
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_msgSend(r19, r21);
    [r22 release];
    if (r23 != 0x0) {
            [@(NO) retain];
            r23 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x3c];
            r29 = r29;
            r3 = [r0 retain];
            [r23 setObject:r2 forKeyedSubscript:r3];
            [r24 release];
            [r22 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x59);
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_msgSend(r19, r21);
    [r22 release];
    if (r23 != 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            [[r0 UUIDString] retain];
            r24 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x59];
            r29 = r29;
            r3 = [r0 retain];
            [r24 setObject:r2 forKeyedSubscript:r3];
            [r25 release];
            [r23 release];
            [r22 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x5a);
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_msgSend(r19, r21);
    [r22 release];
    if (r23 != 0x0) {
            r22 = *0x1011de9c8;
            r0 = @(0x5a);
            r29 = r29;
            r3 = [r0 retain];
            [r22 setObject:r2 forKeyedSubscript:r3];
            [r23 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x35);
    r29 = r29;
    r22 = [r0 retain];
    r21 = objc_msgSend(r19, r21);
    [r22 release];
    if (r21 != 0x0) {
            [@(0x0) retain];
            r22 = *0x1011de9c8;
            r3 = [@(0x35) retain];
            [r22 setObject:r2 forKeyedSubscript:r3];
            [r20 release];
            [r21 release];
    }
    if ([*0x1011de9e0 respondsToSelector:@selector(addJailbrokenSignalsForSignalList:toDictionary:), r3] != 0x0 && [*0x1011de9d8 isNativeSignalJailbrokenEnabled] != 0x0) {
            [*0x1011de9e0 addJailbrokenSignalsForSignalList:r19 toDictionary:*0x1011de9c8];
    }
    [r19 release];
    return;
}

+(void)fetchOtherMainThreadSignalsForSignalList:(void *)arg2 {
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
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalOtherUIThreadEnabled] != 0x0) {
            r0 = @(0x7);
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 containsObject:r2];
            [r21 release];
            if (r22 != 0x0) {
                    r21 = @class(NSNumber);
                    r21 = [[r21 numberWithBool:UIAccessibilityIsGuidedAccessEnabled()] retain];
                    r22 = *0x1011de9c8;
                    r20 = [@(0x7) retain];
                    [r22 setObject:r21 forKeyedSubscript:r20];
                    [r20 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

+(void)fetchBundleSignalsForSignalList:(void *)arg2 {
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
    r28 = self;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalBundleEnabled] != 0x0) {
            r21 = [[NSBundle bundleForClass:[r28 class]] retain];
            r0 = @(0x4f);
            r29 = r29;
            r24 = [r0 retain];
            r25 = [r19 containsObject:r2];
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [@(0x4f) retain];
                    r0 = [r21 infoDictionary];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r28 populateSignal:r24 withDictionaryValue:r25];
                    [r25 release];
                    [r24 release];
            }
            r23 = @selector(containsObject:);
            r0 = @(0x44);
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [@(0x44) retain];
                    r0 = [r21 executableArchitectures];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r28 populateSignal:r24 withValue:r25];
                    [r25 release];
                    [r24 release];
            }
            r23 = @selector(containsObject:);
            r0 = @(0x28);
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[r21 bundlePath] retain];
                    r25 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x28];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 setObject:r24 forKeyedSubscript:r26];
                    [r26 release];
                    [r24 release];
            }
            r23 = @selector(containsObject:);
            r0 = @(0x2f);
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[r21 bundlePath] retain];
                    r25 = [[r28 getAppSizeForBundlePath:r24] retain];
                    r26 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x2f];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r26 setObject:r25 forKeyedSubscript:r27];
                    [r27 release];
                    [r25 release];
                    [r24 release];
            }
            r23 = @selector(containsObject:);
            r0 = @(0x3e);
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r25 = @class(NSNumber);
                    r24 = [[NSFileManager defaultManager] retain];
                    r26 = [[r21 pathForResource:@"embedded" ofType:@"mobileprovision"] retain];
                    [r24 fileExistsAtPath:r26];
                    r25 = [[r25 numberWithBool:r2] retain];
                    r27 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x3e];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r27 setObject:r25 forKeyedSubscript:r0];
                    r28 = r28;
                    r21 = r21;
                    [r0 release];
                    [r25 release];
                    [r26 release];
                    [r24 release];
            }
            r23 = @selector(containsObject:);
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x31];
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r23 = @selector(containsObject:);
                    r25 = @class(NSNumber);
                    r0 = [r21 appStoreReceiptURL];
                    r0 = [r0 retain];
                    var_58 = r0;
                    r0 = [r0 lastPathComponent];
                    r0 = [r0 retain];
                    r26 = r0;
                    [r0 isEqualToString:@"sandboxReceipt"];
                    r25 = [[r25 numberWithBool:r2] retain];
                    r27 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x31];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r27 setObject:r25 forKeyedSubscript:r0];
                    r28 = r28;
                    r21 = r21;
                    r23 = r23;
                    r19 = r19;
                    [r0 release];
                    [r25 release];
                    [r26 release];
                    [var_58 release];
            }
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x37];
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:0x37] retain];
                    r0 = [r21 bundleIdentifier];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r28 populateSignal:r24 withValue:r25];
                    [r25 release];
                    [r24 release];
            }
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x32];
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:0x32] retain];
                    r0 = [r21 infoDictionary];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r28 populateSignal:r24 withValue:r26];
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x2e];
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r23);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:0x2e] retain];
                    r0 = [r21 infoDictionary];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r28 populateSignal:r24 withValue:r26];
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x41];
            r29 = r29;
            r24 = [r0 retain];
            r23 = objc_msgSend(r19, r23);
            [r24 release];
            if (r23 != 0x0) {
                    r22 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:0x41] retain];
                    r0 = [r21 infoDictionary];
                    r0 = [r0 retain];
                    r24 = [[r0 objectForKeyedSubscript:r2] retain];
                    [r28 populateSignal:r22 withValue:r24];
                    [r24 release];
                    [r0 release];
                    [r22 release];
            }
            [*0x1011de9e0 addBuildInfoSignalsForSignalList:r19 toDictionary:*0x1011de9c8];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void)fetchProcessSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalProcessInfoEnabled] == 0x0) goto loc_100b82354;

loc_100b8194c:
    r0 = @(0x1c);
    r29 = r29;
    r23 = [r0 retain];
    r2 = r23;
    r24 = [r19 containsObject:r2];
    [r23 release];
    if (r24 != 0x0) {
            r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r20 = @selector(numberWithUnsignedInteger:);
            r23 = *(r28 + 0xfc0);
            r0 = [NSProcessInfo processInfo];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 physicalMemory];
            asm { ucvtf      d0, x0 };
            r23 = [[r23 numberWithDouble:r2] retain];
            r25 = *0x1011de9c8;
            r0 = *(r28 + 0xfc0);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r23 forKeyedSubscript:r26];
            [r26 release];
            [r23 release];
            [r24 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x58);
    r29 = r29;
    r23 = [r0 retain];
    r2 = r23;
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r20 = @selector(numberWithUnsignedInteger:);
            r23 = *(r28 + 0xfc0);
            r0 = [NSProcessInfo processInfo];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 processorCount];
            asm { ucvtf      d0, x0 };
            r23 = [[r23 numberWithDouble:r2] retain];
            r25 = *0x1011de9c8;
            r0 = *(r28 + 0xfc0);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r23 forKeyedSubscript:r26];
            [r26 release];
            [r23 release];
            [r24 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x49);
    r29 = r29;
    r23 = [r0 retain];
    r2 = r23;
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r20 = @selector(numberWithUnsignedInteger:);
            r23 = *(r28 + 0xfc0);
            r0 = [NSProcessInfo processInfo];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 activeProcessorCount];
            asm { ucvtf      d0, x0 };
            r23 = [[r23 numberWithDouble:r2] retain];
            r25 = *0x1011de9c8;
            r0 = *(r28 + 0xfc0);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r23 forKeyedSubscript:r26];
            [r26 release];
            [r23 release];
            [r24 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x48);
    r29 = r29;
    r23 = [r0 retain];
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r21 = @selector(containsObject:);
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r23 = [[r0 environment] retain];
            [r0 release];
            r24 = [@(0x48) retain];
            [r22 populateSignal:r24 withDictionaryValue:r23];
            [r24 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x50];
            r29 = r29;
            r24 = [r0 retain];
            r25 = objc_msgSend(r19, r21);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = @class(NSNumber);
                    r24 = [[r24 numberWithBool:[r22 deviceHasSimulatorProperties:r23]] retain];
                    r25 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x50];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 setObject:r24 forKeyedSubscript:r26];
                    [r26 release];
                    [r24 release];
            }
            [r23 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x9);
    r29 = r29;
    r23 = [r0 retain];
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r23 = @class(NSNumber);
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r24 = r0;
            r23 = [[r23 numberWithBool:[r0 isLowPowerModeEnabled]] retain];
            r25 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x9];
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r23 forKeyedSubscript:r26];
            [r26 release];
            [r23 release];
            [r24 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x2b);
    r29 = r29;
    r23 = [r0 retain];
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 operatingSystemVersionString] retain];
            r25 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x2b];
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r24 forKeyedSubscript:r26];
            [r26 release];
            [r24 release];
            [r23 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x55);
    r29 = r29;
    r23 = [r0 retain];
    r2 = r23;
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r20 = @selector(numberWithUnsignedInteger:);
            r23 = *(r28 + 0xfc0);
            r0 = [NSProcessInfo processInfo];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 processIdentifier];
            asm { scvtf      d0, w0 };
            r23 = [[r23 numberWithDouble:r2] retain];
            r25 = *0x1011de9c8;
            r0 = *(r28 + 0xfc0);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r23 forKeyedSubscript:r26];
            [r26 release];
            [r23 release];
            [r24 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x47);
    r29 = r29;
    r23 = [r0 retain];
    r24 = objc_msgSend(r19, r21);
    [r23 release];
    if (r24 != 0x0) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 processName] retain];
            r25 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x47];
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r24 forKeyedSubscript:r26];
            [r26 release];
            [r24 release];
            [r23 release];
    }
    r21 = @selector(containsObject:);
    r0 = @(0x15);
    r29 = r29;
    r23 = [r0 retain];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_100b82270;

loc_100b82100:
    r26 = [[NSProcessInfo processInfo] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:0x15];
    r29 = r29;
    r27 = [r0 retain];
    r22 = [r22 checkAvailabilityInObject:r26 forSelector:@selector(thermalState) forSignal:r27];
    [r27 release];
    [r26 release];
    [r23 release];
    if (r22 == 0x0) goto loc_100b82278;

loc_100b82184:
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            r22 = @class(NSNumber);
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r23 = r0;
            r22 = [[r22 numberWithInteger:[r0 thermalState]] retain];
            r24 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x15];
            r29 = r29;
            r25 = [r0 retain];
            [r24 setObject:r22 forKeyedSubscript:r25];
            [r25 release];
            [r22 release];
    }
    else {
            r22 = *0x1011de9d0;
            r0 = @(0x15);
            r29 = r29;
            r23 = [r0 retain];
            [r22 setObject:@"UNKNOWN" forKeyedSubscript:r23];
    }
    goto loc_100b82270;

loc_100b82270:
    [r23 release];
    goto loc_100b82278;

loc_100b82278:
    r21 = @selector(containsObject:);
    r0 = @(0x1a);
    r29 = r29;
    r22 = [r0 retain];
    r2 = r22;
    r21 = objc_msgSend(r19, r21);
    [r22 release];
    if (r21 != 0x0) {
            r21 = @class(NSNumber);
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            [r0 systemUptime];
            r21 = [[r21 numberWithDouble:r2] retain];
            r23 = *0x1011de9c8;
            r20 = [@(0x1a) retain];
            [r23 setObject:r21 forKeyedSubscript:r20];
            [r20 release];
            [r21 release];
            [r0 release];
    }
    goto loc_100b82354;

loc_100b82354:
    [r19 release];
    return;
}

+(void)fetchTelephonySignalsForSignalList:(void *)arg2 usingDispatchGroup:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([*0x1011de9d8 isNativeSignalTelephonyEnabled] != 0x0) {
            [*0x1011de9e0 addTelephonySignalsForSignalList:r19 toDictionary:*0x1011de9c8 usingDispatchGroup:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)fetchLocalAuthSignalsForSignalsList:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (sub_1009f77b0(0xb, 0x0, 0x1) == 0x0) goto loc_100b8353c;

loc_100b834d4:
    if ([*0x1011de9d8 isNativeSignalLocalAuthEnabled] == 0x0) goto loc_100b83860;

loc_100b834ec:
    r0 = @(0x5);
    r29 = r29;
    r21 = [r0 retain];
    if ([r19 containsObject:r2] == 0x0) goto loc_100b835d0;

loc_100b83530:
    [r21 release];
    goto loc_100b83614;

loc_100b83614:
    r0 = *0x1011de9f0;
    r0 = [r0 dynamicLoadedLAContext];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_100b836b0;

loc_100b83638:
    r22 = @selector(containsObject:);
    r0 = @(0x4);
    r29 = r29;
    r23 = [r0 retain];
    r24 = objc_msgSend(r19, r22);
    [r23 release];
    if (r24 != 0x0) {
            if ([r21 canEvaluatePolicy:0x1 error:0x0] != 0x0) {
                    if ([r21 biometryType] == 0x2) {
                    }
                    r2 = 0x1;
            }
            else {
                    r2 = 0x0;
            }
            r23 = [[NSNumber numberWithBool:r2] retain];
            r24 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x4];
            r29 = r29;
            r25 = [r0 retain];
            [r24 setObject:r23 forKeyedSubscript:r25];
            [r25 release];
            [r23 release];
    }
    r22 = @selector(containsObject:);
    r0 = @(0x5);
    r29 = r29;
    r23 = [r0 retain];
    r22 = objc_msgSend(r19, r22);
    [r23 release];
    if (r22 == 0x0) goto loc_100b83858;

loc_100b837dc:
    r22 = [[NSNumber numberWithBool:[r21 canEvaluatePolicy:0x2 error:0x0]] retain];
    r23 = *0x1011de9c8;
    r20 = [@(0x5) retain];
    [r23 setObject:r22 forKeyedSubscript:r20];
    [r20 release];
    goto loc_100b83850;

loc_100b83850:
    [r22 release];
    goto loc_100b83858;

loc_100b83858:
    [r21 release];
    goto loc_100b83860;

loc_100b83860:
    [r19 release];
    return;

loc_100b836b0:
    r22 = *0x1011de9d0;
    r23 = [@(0x5) retain];
    [r22 setObject:@"ERROR" forKeyedSubscript:r23];
    [r23 release];
    r23 = *0x1011de9d0;
    r22 = [@(0x4) retain];
    [r23 setObject:@"ERROR" forKeyedSubscript:r22];
    goto loc_100b83850;

loc_100b835d0:
    r22 = @selector(containsObject:);
    r0 = @(0x4);
    r29 = r29;
    r23 = [r0 retain];
    r24 = objc_msgSend(r19, r22);
    [r23 release];
    [r21 release];
    if (r24 == 0x0) goto loc_100b83860;
    goto loc_100b83614;

loc_100b8353c:
    r20 = *0x1011de9d0;
    r22 = [@(0x5) retain];
    [r20 setObject:@"UNKNOWN" forKeyedSubscript:r22];
    [r22 release];
    r20 = *0x1011de9d0;
    r21 = [@(0x4) retain];
    [r20 setObject:@"UNKNOWN" forKeyedSubscript:r21];
    goto loc_100b83858;
}

+(void)fetchLocationSignalsForSignalList:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalLocationEnabled] != 0x0) {
            [*0x1011de9e0 addLocationSignalsForSignalList:r19 toDictionary:*0x1011de9c8];
    }
    [r19 release];
    return;
}

+(void)fetchBatterySignalsForSignalList:(void *)arg2 {
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
    if ([*0x1011de9d8 isNativeSignalBatteryEnabled] != 0x0) {
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            r21 = [r0 isBatteryMonitoringEnabled];
            [r0 release];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            [r0 setBatteryMonitoringEnabled:0x1];
            [r0 release];
            r0 = @(0x54);
            r29 = r29;
            r25 = [r0 retain];
            r26 = [r19 containsObject:r2];
            [r25 release];
            if (r26 != 0x0) {
                    r25 = [[NSNumber numberWithBool:r21] retain];
                    r26 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x54];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r26 setObject:r25 forKeyedSubscript:r27];
                    [r27 release];
                    [r25 release];
            }
            r24 = @selector(containsObject:);
            r0 = @(0x2);
            r29 = r29;
            r25 = [r0 retain];
            r26 = objc_msgSend(r19, r24);
            [r25 release];
            if (r26 != 0x0) {
                    r25 = @class(NSNumber);
                    r0 = @class(UIDevice);
                    r0 = [r0 currentDevice];
                    r0 = [r0 retain];
                    r26 = r0;
                    r25 = [[r25 numberWithInteger:[r0 batteryState]] retain];
                    r27 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x2];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r27 setObject:r25 forKeyedSubscript:r28];
                    [r28 release];
                    [r25 release];
                    [r26 release];
            }
            r24 = @selector(containsObject:);
            r0 = @(0x1);
            r29 = r29;
            r25 = [r0 retain];
            r2 = r25;
            r24 = objc_msgSend(r19, r24);
            [r25 release];
            if (r24 != 0x0) {
                    r23 = @selector(numberWithUnsignedInteger:);
                    r22 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r24 = *(r22 + 0xfc0);
                    r0 = *(&@class(MCConfigurationData) + 0x1d8);
                    r0 = [r0 currentDevice];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 batteryLevel];
                    asm { fcvt       d0, s0 };
                    r24 = [[r24 numberWithDouble:r2] retain];
                    r26 = *0x1011de9c8;
                    r0 = *(r22 + 0xfc0);
                    r0 = objc_msgSend(r0, r23);
                    r29 = r29;
                    r23 = [r0 retain];
                    [r26 setObject:r24 forKeyedSubscript:r23];
                    [r23 release];
                    [r24 release];
                    [r25 release];
            }
            r0 = *(&@class(MCConfigurationData) + 0x1d8);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            [r0 setBatteryMonitoringEnabled:r2];
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)fetchCameraSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r26 = [arg2 retain];
    if (([*0x1011de9d8 isNativeSignalCameraEnabled] & 0x1) == 0x0) goto loc_100b83a9c;

loc_100b83954:
    r0 = @(0x23);
    r29 = r29;
    r22 = [r0 retain];
    r1 = @selector(containsObject:);
    var_140 = r1;
    if ((objc_msgSend(r26, r1) & 0x1) != 0x0) goto loc_100b839d0;

loc_100b83994:
    r0 = @(0x45);
    r29 = r29;
    r23 = [r0 retain];
    r21 = var_140;
    if ((objc_msgSend(r26, r21) & 0x1) == 0x0) goto loc_100b83ef0;

loc_100b839c8:
    [r23 release];
    goto loc_100b839d0;

loc_100b839d0:
    [r22 release];
    r0 = sub_1009f77b0(0xa, 0x0, 0x0);
    var_148 = r26;
    if (r0 != 0x0) {
            r23 = [[NSArray arrayWithObjects:r29 - 0x68 count:0x1] retain];
            r24 = [[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:r23 mediaType:**_AVMediaTypeVideo position:0x0] retain];
            [r23 release];
            r0 = [r24 devices];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
    }
    else {
            r0 = [AVCaptureDevice devicesWithMediaType:**_AVMediaTypeVideo];
            r29 = r29;
            r22 = [r0 retain];
    }
    var_120 = q0;
    r0 = [r22 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r19 = 0x0;
            r21 = 0x0;
            r23 = 0x0;
            r20 = *var_120;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_120 != r20) {
                                    objc_enumerationMutation(r22);
                            }
                            r28 = *(var_128 + r24 * 0x8);
                            if ((r23 & 0x1) != 0x0) {
                                    r23 = 0x1;
                            }
                            else {
                                    r23 = [r28 hasFlash];
                            }
                            r0 = [r28 position];
                            if (r0 != 0x1) {
                                    if (r0 == 0x2) {
                                            r19 = 0x1;
                                    }
                            }
                            else {
                                    r21 = 0x1;
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r25);
                    r0 = objc_msgSend(r22, var_138);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    else {
            r19 = 0x0;
            r21 = 0x0;
            r23 = 0x0;
    }
    [r22 release];
    r20 = @selector(numberWithUnsignedInteger:);
    r0 = objc_msgSend(@class(NSNumber), r20);
    r29 = r29;
    r24 = [r0 retain];
    r26 = var_148;
    r25 = objc_msgSend(r26, var_140);
    [r24 release];
    if (r25 != 0x0) {
            r24 = [[NSNumber numberWithBool:r2] retain];
            r25 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r24 forKeyedSubscript:r26];
            r0 = r26;
            r26 = var_148;
            [r0 release];
            [r24 release];
    }
    r0 = objc_msgSend(@class(NSNumber), r20);
    r29 = r29;
    r24 = [r0 retain];
    r19 = var_140;
    r25 = objc_msgSend(r26, r19);
    [r24 release];
    if (r25 != 0x0) {
            r24 = [[NSNumber numberWithBool:r2] retain];
            r25 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = objc_msgSend(r0, r20);
            r29 = r29;
            r26 = [r0 retain];
            [r25 setObject:r24 forKeyedSubscript:r26];
            r0 = r26;
            r26 = var_148;
            [r0 release];
            [r24 release];
    }
    r0 = objc_msgSend(@class(NSNumber), r20);
    r29 = r29;
    r24 = [r0 retain];
    r21 = objc_msgSend(r26, r19);
    [r24 release];
    if (r21 != 0x0) {
            r21 = [[NSNumber numberWithBool:r2] retain];
            r23 = *0x1011de9c8;
            r20 = [objc_msgSend(@class(NSNumber), r20) retain];
            [r23 setObject:r21 forKeyedSubscript:r20];
            [r20 release];
            [r21 release];
    }
    r0 = r22;
    goto loc_100b83eac;

loc_100b83eac:
    var_60 = **___stack_chk_guard;
    [r0 release];
    [r26 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100b83ef0:
    r0 = @(0x4a);
    r29 = r29;
    r24 = [r0 retain];
    r25 = objc_msgSend(r26, r21);
    [r24 release];
    [r23 release];
    [r22 release];
    if ((r25 & 0x1) == 0x0) {
            r21 = *0x1011de9d0;
            r22 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:r2] retain];
            [r21 setObject:@"UNKNOWN" forKeyedSubscript:r22];
            [r22 release];
            r21 = *0x1011de9d0;
            r22 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:r2] retain];
            [r21 setObject:@"UNKNOWN" forKeyedSubscript:r22];
            [r22 release];
            r21 = *0x1011de9d0;
            r20 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:r2] retain];
            [r21 setObject:@"UNKNOWN" forKeyedSubscript:r20];
            r0 = r20;
    }
    else {
            r0 = sub_1009f77b0(0xa, 0x0, 0x0);
            var_148 = r26;
            if (r0 != 0x0) {
                    r23 = [[NSArray arrayWithObjects:r29 - 0x68 count:0x1] retain];
                    r24 = [[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:r23 mediaType:**_AVMediaTypeVideo position:0x0] retain];
                    [r23 release];
                    r0 = [r24 devices];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
            }
            else {
                    r0 = [AVCaptureDevice devicesWithMediaType:**_AVMediaTypeVideo];
                    r29 = r29;
                    r22 = [r0 retain];
            }
            var_120 = q0;
            r0 = [r22 retain];
            r22 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r25 = r0;
                    r19 = 0x0;
                    r21 = 0x0;
                    r23 = 0x0;
                    r20 = *var_120;
                    do {
                            r24 = 0x0;
                            do {
                                    if (*var_120 != r20) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r28 = *(var_128 + r24 * 0x8);
                                    if ((r23 & 0x1) != 0x0) {
                                            r23 = 0x1;
                                    }
                                    else {
                                            r23 = [r28 hasFlash];
                                    }
                                    r0 = [r28 position];
                                    if (r0 != 0x1) {
                                            if (r0 == 0x2) {
                                                    r19 = 0x1;
                                            }
                                    }
                                    else {
                                            r21 = 0x1;
                                    }
                                    r24 = r24 + 0x1;
                            } while (r24 < r25);
                            r0 = objc_msgSend(r22, var_138);
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            else {
                    r19 = 0x0;
                    r21 = 0x0;
                    r23 = 0x0;
            }
            [r22 release];
            r20 = @selector(numberWithUnsignedInteger:);
            r0 = objc_msgSend(@class(NSNumber), r20);
            r29 = r29;
            r24 = [r0 retain];
            r26 = var_148;
            r25 = objc_msgSend(r26, var_140);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[NSNumber numberWithBool:r2] retain];
                    r25 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = objc_msgSend(r0, r20);
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 setObject:r24 forKeyedSubscript:r26];
                    r0 = r26;
                    r26 = var_148;
                    [r0 release];
                    [r24 release];
            }
            r0 = objc_msgSend(@class(NSNumber), r20);
            r29 = r29;
            r24 = [r0 retain];
            r19 = var_140;
            r25 = objc_msgSend(r26, r19);
            [r24 release];
            if (r25 != 0x0) {
                    r24 = [[NSNumber numberWithBool:r2] retain];
                    r25 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = objc_msgSend(r0, r20);
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 setObject:r24 forKeyedSubscript:r26];
                    r0 = r26;
                    r26 = var_148;
                    [r0 release];
                    [r24 release];
            }
            r0 = objc_msgSend(@class(NSNumber), r20);
            r29 = r29;
            r24 = [r0 retain];
            r21 = objc_msgSend(r26, r19);
            [r24 release];
            if (r21 != 0x0) {
                    r21 = [[NSNumber numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r20 = [objc_msgSend(@class(NSNumber), r20) retain];
                    [r23 setObject:r21 forKeyedSubscript:r20];
                    [r20 release];
                    [r21 release];
            }
            r0 = r22;
    }
    goto loc_100b83eac;

loc_100b83a9c:
    r21 = *0x1011de9d0;
    r22 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:r2] retain];
    [r21 setObject:@"UNKNOWN" forKeyedSubscript:r22];
    [r22 release];
    r21 = *0x1011de9d0;
    r22 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:r2] retain];
    [r21 setObject:@"UNKNOWN" forKeyedSubscript:r22];
    [r22 release];
    r21 = *0x1011de9d0;
    r20 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:r2] retain];
    [r21 setObject:@"UNKNOWN" forKeyedSubscript:r20];
    r0 = r20;
    goto loc_100b83eac;
}

+(void)fetchMotionSensorSignalsForSignalList:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalMotionEnabled] != 0x0) {
            if (*0x1011de9e8 == 0x0) {
                    r0 = [CMMotionManager new];
                    r8 = *0x1011de9e8;
                    *0x1011de9e8 = r0;
                    [r8 release];
            }
            r0 = @(0x26);
            r29 = r29;
            r22 = [r0 retain];
            r23 = [r19 containsObject:r2];
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [CMPedometer isStepCountingAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x26];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x19);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    if (sub_1009f77b0(0xa, 0x0, 0x0) != 0x0) {
                            r22 = @class(NSNumber);
                            [CMPedometer isPedometerEventTrackingAvailable];
                            r22 = [[r22 numberWithBool:r2] retain];
                            r23 = *0x1011de9c8;
                            r0 = @class(NSNumber);
                            r0 = [r0 numberWithUnsignedInteger:0x19];
                            r29 = r29;
                            [r0 retain];
                            [r23 setObject:r2 forKeyedSubscript:r3];
                            [r24 release];
                    }
                    else {
                            r23 = *0x1011de9d0;
                            r0 = @(0x19);
                            r29 = r29;
                            r22 = [r0 retain];
                            [r23 setObject:r2 forKeyedSubscript:r3];
                    }
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x3f);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [CMPedometer isDistanceAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x3f];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x33);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [CMPedometer isPaceAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x33];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x56);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [CMPedometer isStepCountingAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x56];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x3d);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [CMPedometer isFloorCountingAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x3d];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x4b);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [*0x1011de9e8 isAccelerometerAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x4b];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x30);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [*0x1011de9e8 isGyroAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x30];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x29);
            r29 = r29;
            r22 = [r0 retain];
            r23 = objc_msgSend(r19, r21);
            [r22 release];
            if (r23 != 0x0) {
                    r22 = @class(NSNumber);
                    [*0x1011de9e8 isMagnetometerAvailable];
                    [[r22 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithUnsignedInteger:0x29];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    [r22 release];
            }
            r21 = @selector(containsObject:);
            r0 = @(0x4e);
            r29 = r29;
            r22 = [r0 retain];
            r21 = objc_msgSend(r19, r21);
            [r22 release];
            if (r21 != 0x0) {
                    r21 = @class(NSNumber);
                    [CMAltimeter isRelativeAltitudeAvailable];
                    [[r21 numberWithBool:r2] retain];
                    r22 = *0x1011de9c8;
                    [@(0x4e) retain];
                    [r22 setObject:r2 forKeyedSubscript:r3];
                    [r20 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

+(void *)getIpAddresses {
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
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = getifaddrs(&var_48);
    if (r0 == 0x0) {
            r24 = var_48;
            if (r24 != 0x0) {
                    do {
                            r8 = *(r24 + 0x18);
                            if (*(int8_t *)(r8 + 0x1) == 0x2) {
                                    r22 = @class(NSString);
                                    [[r22 stringWithUTF8String:inet_ntoa(*(int32_t *)(r8 + 0x4))] retain];
                                    r0 = @class(NSString);
                                    r0 = [r0 stringWithUTF8String:*(r24 + 0x8)];
                                    r29 = r29;
                                    [r0 retain];
                                    [r19 setObject:r2 forKeyedSubscript:r3];
                                    [r23 release];
                                    [r22 release];
                            }
                            r24 = *r24;
                    } while (r24 != 0x0);
            }
    }
    freeifaddrs(var_48);
    r0 = [r19 autorelease];
    return r0;
}

+(bool)checkAvailabilityInObject:(void *)arg2 forSelector:(void *)arg3 forSignal:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [r21 respondsToSelector:r2];
    [r21 release];
    if ((r20 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            [*0x1011de9d0 setObject:@"UNKNOWN" forKeyedSubscript:r19];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)getAppSizeForBundlePath:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r20 = r0;
    var_128 = r19;
    r0 = [r0 enumeratorAtPath:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r21 = 0x0;
            r22 = 0x0;
            r25 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(var_130);
                            }
                            r23 = [[NSString stringWithFormat:@"%@/%@"] retain];
                            [r21 release];
                            r0 = [r20 attributesOfItemAtPath:r23 error:0x0];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 fileSize] + r22;
                            [r0 release];
                            r19 = r19 + 0x1;
                            r21 = r23;
                    } while (r19 < r24);
                    r0 = objc_msgSend(var_130, var_138);
                    r24 = r0;
                    r21 = r23;
            } while (r0 != 0x0);
            [r23 release];
    }
    else {
            r22 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    r21 = [[NSNumber numberWithUnsignedLongLong:r22] retain];
    [var_130 release];
    [r20 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)fetchAudioSignalsForSignalList:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    r19 = self;
    r28 = [arg2 retain];
    if ([*0x1011de9d8 isNativeSignalAudioEnabled] != 0x0) {
            var_258 = r19;
            var_248 = r28;
            var_208 = [[NSMutableArray array] retain];
            var_160 = q0;
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 currentRoute];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 outputs];
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            [r19 release];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_240 = r1;
            var_238 = r21;
            r0 = objc_msgSend(r21, r1);
            r22 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            var_1C0 = r0;
            r23 = 0x0;
            if (r0 != 0x0) {
                    r23 = 0x0;
                    r22 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r8 = *_AVAudioSessionPortHeadphones;
                    r9 = *var_160;
                    var_218 = *r8;
                    var_210 = r9;
                    do {
                            r24 = 0x0;
                            r25 = @selector(channels);
                            var_1E8 = r25;
                            do {
                                    if (*var_160 != var_210) {
                                            objc_enumerationMutation(var_238);
                                    }
                                    r20 = *(var_168 + r24 * 0x8);
                                    r0 = [r20 portType];
                                    r0 = [r0 retain];
                                    var_184 = [r0 isEqualToString:var_218];
                                    [r0 release];
                                    var_180 = [[r20 portType] retain];
                                    r21 = [[r20 portName] retain];
                                    r27 = [[r20 UID] retain];
                                    r0 = objc_msgSend(r20, r25);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r26 = *(r22 + 0xfc0);
                                    var_174 = r23;
                                    if (r0 != 0x0) {
                                            r0 = objc_msgSend(r20, r25);
                                            r0 = [r0 retain];
                                            var_1A0 = r0;
                                            r0 = [r26 numberWithUnsignedInteger:[r0 count]];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = 0x0;
                                            var_188 = 0x1;
                                            var_1B0 = r0;
                                    }
                                    else {
                                            r0 = [r26 numberWithInt:0x0];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            var_188 = 0x0;
                                            r25 = 0x1;
                                            var_220 = r0;
                                    }
                                    r0 = [r20 dataSources];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r23 = r22;
                                    r1 = @selector(dataSources);
                                    r19 = *(r22 + 0xfc0);
                                    if (r0 != 0x0) {
                                            r0 = objc_msgSend(r20, r1);
                                            r0 = [r0 retain];
                                            var_1A8 = r0;
                                            r0 = [r19 numberWithUnsignedInteger:[r0 count]];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = 0x0;
                                            r20 = 0x1;
                                            var_1B8 = r0;
                                    }
                                    else {
                                            r0 = [r19 numberWithInt:0x0];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r20 = 0x0;
                                            r22 = 0x1;
                                            var_228 = r0;
                                    }
                                    r0 = [NSDictionary dictionaryWithObjects:&var_108 forKeys:&var_130 count:0x5];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_208 addObject:r2];
                                    [r19 release];
                                    if (r22 != 0x0) {
                                            [var_228 release];
                                    }
                                    if (r20 != 0x0) {
                                            [var_1B8 release];
                                            [var_1A8 release];
                                    }
                                    [r26 release];
                                    r22 = r23;
                                    if (r25 != 0x0) {
                                            [var_220 release];
                                    }
                                    r23 = var_174 | var_184;
                                    if (var_188 != 0x0) {
                                            [var_1B0 release];
                                            [var_1A0 release];
                                    }
                                    [r28 release];
                                    [r27 release];
                                    [r21 release];
                                    [var_180 release];
                                    r24 = r24 + 0x1;
                                    r25 = var_1E8;
                            } while (r24 < var_1C0);
                            r0 = objc_msgSend(var_238, var_240);
                            var_1C0 = r0;
                    } while (r0 != 0x0);
            }
            [var_238 release];
            r0 = *(r22 + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x43];
            r29 = r29;
            r21 = [r0 retain];
            r28 = var_248;
            r0 = [r28 containsObject:r2];
            r25 = r22;
            [r21 release];
            if (r0 != 0x0) {
                    r0 = *(r25 + 0xfc0);
                    r0 = [r0 numberWithUnsignedInteger:0x43];
                    r29 = r29;
                    r21 = [r0 retain];
                    r22 = [var_208 copy];
                    [var_258 populateSignal:r21 withDictionaryValue:r22];
                    [r22 release];
                    [r21 release];
            }
            r20 = @selector(containsObject:);
            r0 = *(r25 + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x20];
            r29 = r29;
            r21 = [r0 retain];
            r22 = objc_msgSend(r28, r20);
            [r21 release];
            if (r22 != 0x0) {
                    r21 = [[*(r25 + 0xfc0) numberWithBool:r2] retain];
                    r22 = *0x1011de9c8;
                    r0 = *(r25 + 0xfc0);
                    r0 = [r0 numberWithUnsignedInteger:0x20];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 setObject:r21 forKeyedSubscript:r23];
                    [r23 release];
                    [r21 release];
            }
            r20 = @selector(containsObject:);
            r0 = *(r25 + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0xe];
            r29 = r29;
            r21 = [r0 retain];
            r22 = objc_msgSend(r28, r20);
            [r21 release];
            if (r22 != 0x0) {
                    r21 = *(r25 + 0xfc0);
                    r0 = [AVAudioSession sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 isOtherAudioPlaying];
                    r21 = [[r21 numberWithBool:r2] retain];
                    r23 = *0x1011de9c8;
                    r0 = *(r25 + 0xfc0);
                    r0 = [r0 numberWithUnsignedInteger:0xe];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 setObject:r21 forKeyedSubscript:r24];
                    [r24 release];
                    [r21 release];
                    [r22 release];
            }
            r20 = @selector(containsObject:);
            r0 = *(r25 + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x18];
            r29 = r29;
            r21 = [r0 retain];
            r20 = objc_msgSend(r28, r20);
            [r21 release];
            if (r20 != 0x0) {
                    r20 = *(r25 + 0xfc0);
                    r0 = [AVAudioSession sharedInstance];
                    r0 = [r0 retain];
                    [r0 secondaryAudioShouldBeSilencedHint];
                    r20 = [[r20 numberWithBool:r2] retain];
                    r22 = *0x1011de9c8;
                    r19 = [[*(r25 + 0xfc0) numberWithUnsignedInteger:0x18] retain];
                    [r22 setObject:r20 forKeyedSubscript:r19];
                    [r19 release];
                    [r20 release];
                    [r0 release];
            }
            [var_208 release];
    }
    var_60 = **___stack_chk_guard;
    [r28 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

+(void *)getBootDate {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = sysctl(r29 - 0x8, 0x2, &var_20, &var_10, 0x0, 0x0);
    if (r0 != -0x1) {
            r0 = @class(NSDate);
            asm { scvtf      d0, d0 };
            r0 = [r0 dateWithTimeIntervalSince1970:r2];
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getDeviceName {
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffe0 - 0x510;
    var_18 = **___stack_chk_guard;
    uname(&stack[-1320]);
    r0 = [NSString stringWithCString:&stack[-1320] + 0x400 encoding:0x4];
    if (**___stack_chk_guard != var_18) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)deviceHasSimulatorProperties:(void *)arg2 {
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
    r0 = [arg2 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 count];
    r20 = r0;
    if (r0 == 0x0) goto loc_100b862e8;

loc_100b86278:
    r2 = 0x0;
    r26 = 0x1;
    goto loc_100b86298;

loc_100b86298:
    r0 = [r19 objectAtIndex:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 hasPrefix:r2];
    [r0 release];
    if (r25 != 0x0) goto loc_100b862e4;

loc_100b862cc:
    r2 = r26;
    COND = r20 > zero_extend_64(r26);
    r26 = r26 + 0x1;
    if (COND) goto loc_100b86298;

loc_100b862dc:
    r20 = 0x0;
    goto loc_100b862e8;

loc_100b862e8:
    [r19 release];
    r0 = r20;
    return r0;

loc_100b862e4:
    r20 = 0x1;
    goto loc_100b862e8;
}

+(void)populateSignal:(void *)arg2 withValue:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            [*0x1011de9c8 setObject:r20 forKeyedSubscript:r19];
    }
    else {
            r20 = [[NSNull null] retain];
            [*0x1011de9c8 setObject:r20 forKeyedSubscript:r19];
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)populateSignal:(void *)arg2 withDictionaryValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            if ([NSJSONSerialization isValidJSONObject:r20] != 0x0) {
                    r0 = *0x1011de9c8;
            }
            else {
                    r0 = *0x1011de9d0;
            }
            [r0 setObject:r2 forKeyedSubscript:r3];
    }
    else {
            r21 = [[NSNull null] retain];
            [*0x1011de9c8 setObject:r21 forKeyedSubscript:r19];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)fetchNetworkingSignalsForSignalList:(void *)arg2 {
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
    r26 = self;
    r19 = [arg2 retain];
    if (sub_1009f77b0(0xa, 0x0, 0x0) == 0x0) goto loc_100b854bc;

loc_100b85398:
    if ([*0x1011de9d8 isNativeSignalCaptiveNetworkEnabled] == 0x0) goto loc_100b8550c;

loc_100b853ac:
    r0 = @(0x1f);
    r29 = r29;
    r20 = [r0 retain];
    r23 = [r19 containsObject:r2];
    [r20 release];
    if (r23 == 0x0) goto loc_100b8550c;

loc_100b853f8:
    r0 = CNCopySupportedInterfaces();
    if (r0 == 0x0) goto loc_100b85d58;

loc_100b85400:
    r20 = r0;
    r24 = CFArrayGetValueAtIndex(r0, 0x0);
    r23 = [CNCopyCurrentNetworkInfo() retain];
    r21 = [@(0x1f) retain];
    r0 = [r23 objectForKeyedSubscript:@"SSID"];
    r29 = r29;
    r25 = [r0 retain];
    r27 = r26;
    [r26 populateSignal:r21 withValue:r25];
    [r25 release];
    [r21 release];
    if (r24 != 0x0) {
            CFRelease(r24);
    }
    if (r23 != 0x0) {
            CFRelease(r23);
    }
    [r23 release];
    CFRelease(r20);
    r26 = r27;
    goto loc_100b8550c;

loc_100b8550c:
    if ([*0x1011de9d8 isNativeSignalNetworkEnabled] == 0x0) goto loc_100b85d00;

loc_100b85520:
    var_60 = r26;
    r22 = [[r26 getIpAddresses] retain];
    r0 = @(0x2a);
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r19 containsObject:r2];
    [r24 release];
    if (r25 != 0x0) {
            r24 = *0x1011de9c8;
            r0 = @(0x2a);
            r29 = r29;
            r25 = [r0 retain];
            [r24 setObject:r22 forKeyedSubscript:r25];
            [r25 release];
    }
    r23 = @selector(containsObject:);
    r0 = @(0x14);
    r29 = r29;
    r24 = [r0 retain];
    r25 = objc_msgSend(r19, r23);
    [r24 release];
    var_58 = r22;
    if (r25 != 0x0) {
            r0 = [r22 objectForKeyedSubscript:@"bridge100"];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r1 = @selector(numberWithBool:);
                    r0 = @class(NSNumber);
                    r28 = 0x1;
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r25 = [r0 retain];
                    r22 = 0x0;
            }
            else {
                    r1 = @selector(numberWithBool:);
                    r0 = @class(NSNumber);
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r25 = [r0 retain];
                    r28 = 0x0;
                    r22 = 0x1;
            }
            r26 = *0x1011de9c8;
            r0 = @(0x14);
            r29 = r29;
            r27 = [r0 retain];
            [r26 setObject:r25 forKeyedSubscript:r27];
            [r27 release];
            if (r22 != 0x0) {
                    [r25 release];
            }
            if (r28 != 0x0) {
                    [r25 release];
            }
            [r24 release];
    }
    r23 = @selector(containsObject:);
    r24 = [[NSLocale autoupdatingCurrentLocale] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:0x3a];
    r29 = r29;
    r25 = [r0 retain];
    r26 = objc_msgSend(r19, r23);
    [r25 release];
    if (r26 != 0x0) {
            r25 = [[r24 localeIdentifier] retain];
            r26 = *0x1011de9c8;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x3a];
            r29 = r29;
            r27 = [r0 retain];
            [r26 setObject:r25 forKeyedSubscript:r27];
            [r27 release];
            [r25 release];
    }
    r0 = sub_1009f77b0(0xa, 0x0, 0x0);
    r22 = var_60;
    if (r0 == 0x0) goto loc_100b85a6c;

loc_100b857c4:
    r23 = @selector(containsObject:);
    r0 = @(0x57);
    r29 = r29;
    r25 = [r0 retain];
    if (objc_msgSend(r19, r23) == 0x0) goto loc_100b858a0;

loc_100b857f8:
    r0 = @(0x57);
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r22 checkAvailabilityInObject:r2 forSelector:r3 forSignal:r4];
    [r27 release];
    [r25 release];
    if (r28 == 0x0) goto loc_100b858a8;

loc_100b8584c:
    r25 = [@(0x57) retain];
    r0 = [r24 countryCode];
    r29 = r29;
    r26 = [r0 retain];
    [r22 populateSignal:r25 withValue:r26];
    [r26 release];
    goto loc_100b858a0;

loc_100b858a0:
    [r25 release];
    goto loc_100b858a8;

loc_100b858a8:
    r23 = @selector(containsObject:);
    r0 = @(0x52);
    r29 = r29;
    r25 = [r0 retain];
    if (objc_msgSend(r19, r23) == 0x0) goto loc_100b85984;

loc_100b858d8:
    r0 = @(0x52);
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r22 checkAvailabilityInObject:r24 forSelector:@selector(languageCode) forSignal:r27];
    [r27 release];
    [r25 release];
    if (r28 == 0x0) goto loc_100b8598c;

loc_100b85930:
    r25 = [@(0x52) retain];
    r0 = [r24 languageCode];
    r29 = r29;
    r26 = [r0 retain];
    [r22 populateSignal:r25 withValue:r26];
    [r26 release];
    goto loc_100b85984;

loc_100b85984:
    [r25 release];
    goto loc_100b8598c;

loc_100b8598c:
    r23 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:0x53];
    r29 = r29;
    r25 = [r0 retain];
    if (objc_msgSend(r19, r23) == 0x0) goto loc_100b85b3c;

loc_100b859bc:
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:0x53];
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r22 checkAvailabilityInObject:r24 forSelector:@selector(calendarIdentifier) forSignal:r27];
    [r27 release];
    [r25 release];
    if (r28 == 0x0) goto loc_100b85b44;

loc_100b85a14:
    r25 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:0x53] retain];
    r0 = [r24 calendarIdentifier];
    r29 = r29;
    r26 = [r0 retain];
    [r22 populateSignal:r25 withValue:r26];
    [r26 release];
    goto loc_100b85b3c;

loc_100b85b3c:
    [r25 release];
    goto loc_100b85b44;

loc_100b85b44:
    r23 = @selector(containsObject:);
    var_68 = r24;
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:0x1b];
    r29 = r29;
    r22 = [r0 retain];
    r25 = objc_msgSend(r19, r23);
    [r22 release];
    if (r25 != 0x0) {
            r22 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [NSTimeZone localTimeZone];
            r0 = [r0 retain];
            r25 = r0;
            r22 = [[r22 numberWithLong:[r0 secondsFromGMT] * 0x3e8] retain];
            r26 = *0x1011de9c8;
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:0x1b];
            r29 = r29;
            r27 = [r0 retain];
            [r26 setObject:r22 forKeyedSubscript:r27];
            [r27 release];
            [r22 release];
            [r25 release];
    }
    r23 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:0x51];
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_msgSend(r19, r23);
    [r22 release];
    if (r23 != 0x0) {
            r0 = [NSTimeZone localTimeZone];
            r0 = [r0 retain];
            r23 = [[r0 name] retain];
            r25 = *0x1011de9c8;
            r21 = [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithUnsignedInteger:0x51] retain];
            [r25 setObject:r23 forKeyedSubscript:r21];
            [r21 release];
            [r23 release];
            [r0 release];
    }
    [var_68 release];
    [var_58 release];
    goto loc_100b85d00;

loc_100b85d00:
    if ([*0x1011de9d8 isNativeSignalReachabilityEnabled] != 0x0) {
            [*0x1011de9e0 addReachabilitySignalsForSignalList:r19 toDictionary:*0x1011de9c8];
    }
    [r19 release];
    return;

loc_100b85a6c:
    r22 = *0x1011de9d0;
    r25 = [@(0x57) retain];
    [r22 setObject:@"UNKNOWN" forKeyedSubscript:r25];
    [r25 release];
    r22 = *0x1011de9d0;
    r25 = [@(0x52) retain];
    [r22 setObject:@"UNKNOWN" forKeyedSubscript:r25];
    [r25 release];
    r22 = *0x1011de9d0;
    r24 = r24;
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:0x53];
    r29 = r29;
    r25 = [r0 retain];
    [r22 setObject:@"UNKNOWN" forKeyedSubscript:r25];
    goto loc_100b85b3c;

loc_100b85d58:
    r0 = @(0x1f);
    r29 = r29;
    goto loc_100b854e0;

loc_100b854e0:
    r20 = *0x1011de9d0;
    r21 = [r0 retain];
    [r20 setObject:@"UNKNOWN" forKeyedSubscript:r21];
    [r21 release];
    goto loc_100b8550c;

loc_100b854bc:
    r0 = @(0x1f);
    r29 = r29;
    goto loc_100b854e0;
}

@end