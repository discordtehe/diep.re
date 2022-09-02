@implementation FBAdBotDetector

-(void)loadBotDetectionModule {
    dispatch_async(*0x1011dcbb8, &var_28);
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = dispatch_queue_create("com.facebook.botdetection.init", 0x0);
            r8 = *0x1011dcbb8;
            *0x1011dcbb8 = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)performBotDetectionForEvent:(void *)arg2 withEventType:(void *)arg3 withBDSessionIds:(void *)arg4 {
    r31 = r31 - 0x70;
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
    if (r19 != 0x0 && *(int8_t *)byte_1011dcbb0 != 0x0) {
            r22 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_38 = [r19 retain];
            var_30 = [r20 retain];
            var_28 = [r21 retain];
            dispatch_async(r22, &var_58);
            [r22 release];
            [var_28 release];
            [var_30 release];
            [var_38 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)dealloc {
    [self stopTimer];
    [[&var_20 super] dealloc];
    return;
}

-(void)addLocationSignalsForSignalList:(void *)arg2 toDictionary:(void *)arg3 {
    return;
}

-(void)addReachabilitySignalsForSignalList:(void *)arg2 toDictionary:(void *)arg3 {
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
    r0 = @(0x12);
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [r19 containsObject:r2];
    [r23 release];
    if (r24 != 0x0) {
            r23 = @class(NSNumber);
            [[r23 numberWithUnsignedInteger:[FBAdConnectionInfo currentReachabilityStatus]] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x12];
            r29 = r29;
            [r0 retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r24 release];
            [r23 release];
    }
    r22 = @selector(containsObject:);
    r0 = @(0xf);
    r29 = r29;
    r23 = [r0 retain];
    r22 = objc_msgSend(r19, r22);
    [r23 release];
    if (r22 != 0x0) {
            if ([FBAdConnectionInfo currentReachabilityStatus] != 0x0) {
                    r1 = @selector(numberWithBool:);
                    r0 = @class(NSNumber);
                    r23 = 0x1;
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r22 = [r0 retain];
                    r24 = 0x0;
            }
            else {
                    r1 = @selector(numberWithBool:);
                    r0 = @class(NSNumber);
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r22 = [r0 retain];
                    r23 = 0x0;
                    r24 = 0x1;
            }
            [@(0xf) retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r21 release];
            if (r23 != 0x0) {
                    [r22 release];
            }
            if (r24 != 0x0) {
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)addBuildInfoSignalsForSignalList:(void *)arg2 toDictionary:(void *)arg3 {
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
    r0 = [NSBundle bundleForClass:[self class]];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 infoDictionary] retain];
    r0 = @(0x21);
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r19 containsObject:r2];
    [r25 release];
    if (r26 != 0x0) {
            r25 = [[r22 stringForKeyOrNil:@"CFBundleShortVersionString"] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInteger:0x21];
            r29 = r29;
            r26 = [r0 retain];
            [r20 setObject:r25 forKeyedSubscript:r26];
            [r26 release];
            [r25 release];
    }
    r24 = @selector(containsObject:);
    r0 = @(0x24);
    r29 = r29;
    r25 = [r0 retain];
    r24 = objc_msgSend(r19, r24);
    [r25 release];
    if (r24 != 0x0) {
            r24 = [[r22 stringForKeyOrNil:@"CFBundleVersion"] retain];
            r23 = [@(0x24) retain];
            [r20 setObject:r24 forKeyedSubscript:r23];
            [r23 release];
            [r24 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startTimerWithTimeInterval:(double)arg2 queue:(void *)arg3 block:(void *)arg4 {
    r20 = [arg2 retain];
    r0 = [arg3 retain];
    var_38 = r0;
    r19 = [r0 retain];
    r0 = objc_retainBlock(&var_58);
    r21 = r0;
    r22 = [[FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:r20 queue:r21 block:r5] retain];
    [r20 release];
    r0 = *0x1011dcba8;
    *0x1011dcba8 = r22;
    [r0 release];
    [r21 release];
    [var_38 release];
    [r19 release];
    return;
}

-(void)addJailbrokenSignalsForSignalList:(void *)arg2 toDictionary:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = @(0x5b);
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r21 containsObject:r2];
    [r21 release];
    [r22 release];
    if (r23 != 0x0) {
            if (sub_100aab9b0() != 0x0) {
                    r1 = @selector(numberWithBool:);
                    r0 = @class(NSNumber);
                    r22 = 0x1;
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r21 = [r0 retain];
                    r23 = 0x0;
            }
            else {
                    r1 = @selector(numberWithBool:);
                    r0 = @class(NSNumber);
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r21 = [r0 retain];
                    r22 = 0x0;
                    r23 = 0x1;
            }
            r20 = [@(0x5b) retain];
            [r19 setObject:r21 forKeyedSubscript:r20];
            [r20 release];
            if (r23 != 0x0) {
                    [r21 release];
            }
            if (r22 != 0x0) {
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void *)bdTelephonySignals {
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
    r19 = [NSMutableDictionary new];
    if (*qword_1011dd108 != -0x1) {
            dispatch_once_f(0x1011dd108, 0x1011c61c0, 0x100a3d91c);
    }
    r0 = *0x1011dd110;
    r0 = [r0 new];
    r20 = r0;
    r0 = [r0 subscriberCellularProvider];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 carrierName];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r28 = 0x0;
                    r25 = r24;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r25 = [r0 retain];
                    r28 = 0x1;
            }
            r0 = @(0x4e98);
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKeyedSubscript:r3];
            [r26 release];
            if (r28 != 0x0) {
                    [r25 release];
            }
            [r24 release];
            r0 = [r21 isoCountryCode];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r28 = 0x0;
                    r25 = r24;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r25 = [r0 retain];
                    r28 = 0x1;
            }
            r0 = @(0x4e99);
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKeyedSubscript:r3];
            [r26 release];
            if (r28 != 0x0) {
                    [r25 release];
            }
            [r24 release];
            r0 = [r21 mobileCountryCode];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r28 = 0x0;
                    r25 = r24;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r25 = [r0 retain];
                    r28 = 0x1;
            }
            r0 = @(0x4e9a);
            r29 = r29;
            [r0 retain];
            [r19 setObject:r2 forKeyedSubscript:r3];
            [r26 release];
            if (r28 != 0x0) {
                    [r25 release];
            }
            [r24 release];
            r0 = [r21 mobileNetworkCode];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r26 = 0x0;
                    r25 = r24;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r25 = [r0 retain];
                    r26 = 0x1;
            }
            [@(0x4e9b) retain];
            [r19 setObject:r2 forKeyedSubscript:r3];
            [r22 release];
            if (r26 != 0x0) {
                    [r25 release];
            }
            [r24 release];
    }
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)stopTimer {
    [*0x1011dcba8 invalidate];
    r0 = *0x1011dcba8;
    *0x1011dcba8 = 0x0;
    [r0 release];
    return;
}

-(bool)isNativeSignalCollectionEventModeEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isBotDetectionEnabledForProductType:(unsigned long long)arg2 {
    if (arg2 == 0x3) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r20 = [r0 isWONetworkSignalEnabled];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isWONetworkSignalLargePayloadEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isWONetworkSignalLargePayloadEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)payloadSize {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 getWONetworkSignalLargePayloadSize];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)largePayloadSamplingRate {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 getWONetworkSignalLargePayloadSamplingRate];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)networkSignalSamplingRateForProductType:(unsigned long long)arg2 {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 getWONetworkSignalSamplingRate];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)woNetworkSignalUrlString {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 woNetworkSignalUrl] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isNativeSignalAudioEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsAudioSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)addTelephonySignalsForSignalList:(void *)arg2 toDictionary:(void *)arg3 usingDispatchGroup:(void *)arg4 {
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
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    if (*qword_1011dd108 != -0x1) {
            dispatch_once_f(0x1011dd108, 0x1011c61c0, 0x100a3d91c);
    }
    r0 = *0x1011dd110;
    r0 = [r0 new];
    r28 = r0;
    if (r0 != 0x0) {
            r0 = [NSNumber numberWithUnsignedInteger:r2];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r19 containsObject:r2];
            [r23 release];
            if (r24 != 0x0) {
                    r0 = [r28 currentRadioAccessTechnology];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 != 0x0) {
                            r21 = 0x0;
                            r24 = r23;
                    }
                    else {
                            r0 = [NSNull null];
                            r29 = r29;
                            r24 = [r0 retain];
                            r21 = 0x1;
                    }
                    r0 = [NSNumber numberWithUnsignedInteger:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r27 setObject:r24 forKeyedSubscript:r22];
                    [r22 release];
                    if (r21 != 0x0) {
                            [r24 release];
                    }
                    [r23 release];
            }
    }
    r0 = [r28 subscriberCellularProvider];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100a0c10c;

loc_100a0bae0:
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r25 = [r0 retain];
    r26 = [r19 containsObject:r2];
    [r25 release];
    if (r26 == 0x0) goto loc_100a0bca8;

loc_100a0bb28:
    var_60 = r28;
    var_58 = r27;
    r0 = [r22 mobileCountryCode];
    r29 = r29;
    r0 = [r0 retain];
    var_68 = r0;
    if (r0 == 0x0) goto loc_100a0bbe8;

loc_100a0bb54:
    r0 = [r22 mobileNetworkCode];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a0bbf0;

loc_100a0bb74:
    r26 = r0;
    r21 = [[r22 mobileCountryCode] retain];
    var_78 = [[r22 mobileNetworkCode] retain];
    var_70 = r21;
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r27 = [r0 retain];
    r21 = 0x0;
    r28 = 0x1;
    r25 = 0x1;
    goto loc_100a0bc20;

loc_100a0bc20:
    r0 = [NSNumber numberWithUnsignedInteger:r2];
    r29 = r29;
    r20 = [r0 retain];
    [var_58 setObject:r27 forKeyedSubscript:r20];
    [r20 release];
    if (r21 != 0x0) {
            [r27 release];
    }
    r20 = var_68;
    if (r25 != 0x0) {
            [r27 release];
            [var_78 release];
            [var_70 release];
    }
    if (r28 != 0x0) {
            [r26 release];
    }
    [r20 release];
    r28 = var_60;
    r27 = var_58;
    goto loc_100a0bca8;

loc_100a0bca8:
    r24 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r20 = [r0 retain];
    r25 = objc_msgSend(r19, r24);
    [r20 release];
    if (r25 != 0x0) {
            r0 = [r22 carrierName];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    r21 = 0x0;
                    r26 = r25;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r26 = [r0 retain];
                    r21 = 0x1;
            }
            r0 = [NSNumber numberWithUnsignedInteger:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r27 setObject:r26 forKeyedSubscript:r20];
            [r20 release];
            if (r21 != 0x0) {
                    [r26 release];
            }
            [r25 release];
    }
    r24 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r20 = [r0 retain];
    r25 = objc_msgSend(r19, r24);
    [r20 release];
    if (r25 != 0x0) {
            r0 = [r22 isoCountryCode];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    r21 = 0x0;
                    r26 = r25;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r26 = [r0 retain];
                    r21 = 0x1;
            }
            r0 = [NSNumber numberWithUnsignedInteger:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r27 setObject:r26 forKeyedSubscript:r20];
            [r20 release];
            if (r21 != 0x0) {
                    [r26 release];
            }
            [r25 release];
    }
    r24 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r20 = [r0 retain];
    r25 = objc_msgSend(r19, r24);
    [r20 release];
    if (r25 != 0x0) {
            r0 = [r22 carrierName];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    r21 = 0x0;
                    r26 = r25;
            }
            else {
                    r0 = [NSNull null];
                    r29 = r29;
                    r26 = [r0 retain];
                    r21 = 0x1;
            }
            r0 = [NSNumber numberWithUnsignedInteger:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r27 setObject:r26 forKeyedSubscript:r20];
            [r20 release];
            if (r21 != 0x0) {
                    [r26 release];
            }
            [r25 release];
    }
    r24 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r20 = [r0 retain];
    r25 = objc_msgSend(r19, r24);
    [r20 release];
    if (r25 != 0x0) {
            r20 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r20 = [[r20 numberWithBool:[r22 allowsVOIP]] retain];
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r0 = [r0 numberWithUnsignedInteger:r2];
            r29 = r29;
            r25 = [r0 retain];
            [r27 setObject:r20 forKeyedSubscript:r25];
            [r25 release];
            [r20 release];
    }
    r24 = @selector(containsObject:);
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r20 = [r0 retain];
    r24 = objc_msgSend(r19, r24);
    [r20 release];
    if (r24 != 0x0) {
            r0 = [r22 mobileNetworkCode];
            r29 = r29;
            r24 = [r0 retain];
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            if (r24 != 0x0) {
                    r26 = 0x1;
                    r0 = [r0 numberWithBool:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    r21 = 0x0;
            }
            else {
                    r0 = [r0 numberWithBool:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    r26 = 0x0;
                    r21 = 0x1;
            }
            r20 = [[NSNumber numberWithUnsignedInteger:r2] retain];
            [r27 setObject:r25 forKeyedSubscript:r20];
            [r20 release];
            if (r21 != 0x0) {
                    [r25 release];
            }
            if (r26 != 0x0) {
                    [r25 release];
            }
            [r24 release];
    }
    goto loc_100a0c10c;

loc_100a0c10c:
    [r22 release];
    [r28 release];
    [r27 release];
    [r19 release];
    return;

loc_100a0bbf0:
    r28 = 0x1;
    goto loc_100a0bbf4;

loc_100a0bbf4:
    r0 = [NSNull null];
    r29 = r29;
    r27 = [r0 retain];
    r26 = 0x0;
    r25 = 0x0;
    r21 = 0x1;
    goto loc_100a0bc20;

loc_100a0bbe8:
    r28 = 0x0;
    goto loc_100a0bbf4;
}

-(bool)isNativeSignalBatteryEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsBatterySignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalBootEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsBootSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalBuildEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsBuildSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalCameraEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsCameraSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalBundleEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsBundleSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalLocalAuthEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsLocalAuthSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalLocationEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsLocationSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalNetworkEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isWONetworkSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalMotionEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsMotionSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalOtherUIThreadEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsOtherUiSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalProcessInfoEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsProcessSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalProxyEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsProxySignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalScreenEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsScreenSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalSimulatorEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsSimulatorSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalTelephonyEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsTelephonySignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalUIApplicationEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsApplicationInfoSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalUIDeviceEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsDeviceSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalCaptiveNetworkEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsCaptiveSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalReachabilityEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsReachabilitySignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalTouchEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsTouchSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalJailbrokenEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 woNativeSignalsJailbrokenSignalEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isNativeSignalIntervalModeEnabled {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isBDIntervalModeEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)nativeSignalsBufferSize {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 bdBufferSize];
    [r0 release];
    r0 = r20;
    return r0;
}

-(long long)signalCollectionIntervalTime {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 bdIntervalTime];
    [r0 release];
    r0 = r20;
    return r0;
}

-(long long)staticSignalsBufferCapacity {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 bdStaticSignalsBufferCapacity];
    [r0 release];
    r0 = r20;
    return r0;
}

-(long long)dynamicSignalsBufferCapacity {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 bdDynamicSignalsBufferCapacity];
    [r0 release];
    r0 = r20;
    return r0;
}

-(long long)biometricSignalsBufferCapacity {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 bdBiometricSignalsBufferCapacity];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)signalConfig {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 bdSignalsConfig] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(int)reputationTier {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 bdReputationTier];
    [r0 release];
    r0 = r20;
    return r0;
}

-(double)minDistanceBetweenTouches {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    [r0 bdMinDistanceBetweenTouches];
    r0 = [r0 release];
    return r0;
}

-(int)surfaceFlag {
    return 0x8000;
}

-(void *)dynamicLoadedLAContext {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dd838 != -0x1) {
            dispatch_once_f(0x1011dd838, 0x1011c6c10, 0x100a3d91c);
    }
    r0 = *0x1011dd840;
    r0 = [r0 new];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)dynamicLoadedWKWebView {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dd858 != -0x1) {
            dispatch_once_f(0x1011dd858, 0x1011c6c28, 0x100a3d91c);
    }
    r0 = *0x1011dd860;
    r0 = [r0 new];
    r0 = [r0 autorelease];
    return r0;
}

-(void)logBotDetectionSignalData:(void *)arg2 forProductName:(void *)arg3 forLoggerEventName:(void *)arg4 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [arg4 retain];
    r20 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100a0d188;

loc_100a0d0d8:
    r21 = [NSMutableDictionary new];
    [@"wo_bd_" retain];
    var_48 = r21;
    r21 = [r21 retain];
    [r19 enumerateKeysAndObjectsUsingBlock:&var_70];
    [FBAdDebugLogging logDebugEventWithType:@"bot_detection_wo_signal_data_logging" code:0x0 info:r21];
    [var_48 release];
    r0 = @"wo_bd_";
    goto loc_100a0d2dc;

loc_100a0d2dc:
    [r0 release];
    [r21 release];
    goto loc_100a0d2e8;

loc_100a0d2e8:
    [r20 release];
    [r19 release];
    return;

loc_100a0d188:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100a0d1c8;

loc_100a0d1a0:
    [FBAdDebugLogging logDebugEventWithType:@"bd_data_logging" code:0xc81 info:r19];
    goto loc_100a0d2e8;

loc_100a0d1c8:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100a0d2e8;

loc_100a0d1e0:
    r21 = [r19 mutableCopy];
    r22 = [[r19 objectForKeyedSubscript:@"oi"] retain];
    r0 = [NSJSONSerialization dataWithJSONObject:r22 options:0x0 error:&var_78];
    r24 = [r0 retain];
    r25 = [var_78 retain];
    r26 = [[NSString alloc] initWithData:r24 encoding:0x4];
    [r21 setObject:r26 forKeyedSubscript:@"oi"];
    [FBAdDebugLogging logDebugEventWithType:@"bd_data_logging" code:0xc82 info:r21];
    [r25 release];
    [r26 release];
    [r24 release];
    r0 = r22;
    goto loc_100a0d2dc;
}

+(void *)appSessionId {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011dcbd0 == 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 UUIDString];
            r0 = [r0 retain];
            r8 = *0x1011dcbd0;
            *0x1011dcbd0 = r0;
            [r8 release];
            [r19 release];
    }
    r0 = *0x1011dcbd0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)botDetector {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dcbc0 != -0x1) {
            dispatch_once(0x1011dcbc0, 0x100ea7e60);
    }
    r0 = *0x1011dcbc8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)eventId {
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r20 = [[r0 UUIDString] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

@end