@implementation APMAdExposureReporter

+(void *)sharedInstance {
    if (*qword_1011d1e78 != -0x1) {
            dispatch_once(0x1011d1e78, 0x100e6c6c8);
    }
    r0 = *0x1011d1e80;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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
            r20 = @selector(init);
            r0 = dispatch_queue_create("APMAdExposureReporter", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitCounts));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitStartTimes));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_reportingEnabled = 0x1;
            [r19 currentTime];
            r19->_adExposureStartTime = d0;
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)beginAdUnitExposure:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r21 = [r19 copy];
            [r19 release];
            [r20 currentTime];
            r22 = r20->_queue;
            r19 = [r21 retain];
            dispatch_async(r22, &var_68);
            r0 = r19;
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x3e8 message:@"Ignoring call to begin ad unit exposure. Received empty ad unit ID"];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)endAdUnitExposure:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r21 = [r19 copy];
            [r19 release];
            [r20 currentTime];
            r0 = [APMScreenViewReporter sharedInstance];
            r0 = [r0 retain];
            r22 = [[r0 screenParameters] retain];
            [r0 release];
            r23 = r20->_queue;
            r19 = [r21 retain];
            r20 = [r22 retain];
            dispatch_sync(r23, &var_80);
            [r22 release];
            [r19 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            r20 = r0;
            [r0 logWithLevel:0x4 messageCode:0x3eb message:@"Ignoring call to end ad unit exposure. Received empty ad unit ID"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(double)currentTime {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sysctl(&var_18, 0x2, &saved_fp - 0x10, &var_20, 0x0, 0x0);
    if (r0 != -0x1 && var_10 != 0x0) {
            r0 = gettimeofday(&var_30, 0x0);
            r8 = var_30 - var_10;
            r9 = var_28 - var_8;
            r10 = r9 + 0xf4240;
            if (r9 < 0x0) {
            }
            asm { scvtf      d0, x8 };
            asm { scvtf      d1, w10 };
    }
    return r0;
}

-(void)logExposureEventsWithScreenParameters:(void *)arg2 {
    r20 = [arg2 retain];
    [self currentTime];
    r21 = self->_queue;
    [r20 retain];
    dispatch_sync(r21, &var_58);
    [r20 release];
    [r19 release];
    return;
}

-(void)updateStartTimesOnSerialQueue:(double)arg2 {
    r31 = r31 - 0x150;
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
    v8 = v0;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitCounts));
    if ([*(r19 + r20) count] != 0x0) {
            var_118 = q0;
            r0 = *(r19 + r20);
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r1;
            var_130 = r0;
            r22 = objc_msgSend(r0, r1);
            if (r22 != 0x0) {
                    r27 = *var_118;
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitStartTimes));
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_118 != r27) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r0 = [NSNumber numberWithDouble:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [*(r19 + r21) setObject:r2 forKeyedSubscript:r3];
                                    [r26 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r22);
                            r22 = objc_msgSend(var_130, var_138);
                    } while (r22 != 0x0);
            }
            [var_130 release];
            r19->_adExposureStartTime = d8;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)logAdExposureEventOnSerialQueueWithEndTime:(double)arg2 screenParameters:(void *)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_reportingEnabled == 0x0) goto loc_100139290;

loc_100139224:
    if ((sub_10019475c() & 0x1) == 0x0) goto loc_1001392cc;

loc_10013922c:
    asm { fcvtzs     x20, d0 };
    if (r20 > 0x3e7) goto loc_10013932c;

loc_100139254:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100139304;

loc_100139304:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r20;
    goto loc_100139310;

loc_100139310:
    [r0 release];
    [r19 release];
    return;

loc_10013932c:
    r21 = [[NSMutableDictionary alloc] initWithDictionary:r19];
    r20 = [[NSNumber numberWithLongLong:r20] retain];
    [r21 setObject:r20 forKeyedSubscript:@"_xt"];
    [r20 release];
    [APMAnalytics logInternalEventWithOrigin:@"am" name:@"_xa" parameters:r21];
    r0 = r21;
    goto loc_100139310;

loc_1001392cc:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100139304;

loc_100139290:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100139304;
}

-(void)logExposureEventsOnSerialQueueWithEndTime:(double)arg2 screenParameters:(void *)arg3 {
    r31 = r31 - 0x140;
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
    v8 = v0;
    r19 = self;
    r20 = [arg2 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitCounts));
    r0 = *(r19 + r25);
    r0 = [r0 retain];
    r21 = r0;
    r2 = &var_128;
    r3 = &stack[-248];
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 logAdUnitExposureEventOnSerialQueueWithID:r2 endTime:r3 screenParameters:r4];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r2 = &var_128;
                    r3 = &stack[-248];
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    [r21 release];
    if ([*(r19 + r25) count] != 0x0) {
            [r19 logAdExposureEventOnSerialQueueWithEndTime:r20 screenParameters:r3];
    }
    var_68 = **___stack_chk_guard;
    [r19 updateStartTimesOnSerialQueue:r2];
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleScreenDidChangeFromScreen:(void *)arg2 toScreen:(void *)arg3 {
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
    if (r19 != 0x0) {
            r21 = [sub_1001901d8() retain];
            [r20 logExposureEventsWithScreenParameters:r21];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)logAdUnitExposureEventOnSerialQueueWithID:(void *)arg2 endTime:(double)arg3 screenParameters:(void *)arg4 {
    var_40 = d9;
    stack[-72] = d8;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*(int8_t *)(int64_t *)&r21->_reportingEnabled == 0x0) goto loc_1001394cc;

loc_100139418:
    if ([r19 length] == 0x0) goto loc_100139508;

loc_10013942c:
    if ((sub_10019475c() & 0x1) == 0x0) goto loc_100139544;

loc_100139434:
    r0 = r21->_adUnitStartTimes;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 doubleValue];
    [r21 release];
    asm { fcvtzs     x21, d0 };
    if (r21 > 0x3e7) goto loc_1001395b0;

loc_100139490:
    r21 = [[APMMeasurement monitor] retain];
    goto loc_10013957c;

loc_10013957c:
    [r21 logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r21;
    goto loc_100139588;

loc_100139588:
    [r0 release];
    [r20 release];
    [r19 release];
    return;

loc_1001395b0:
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 initWithDictionary:r20];
    [r0 setObject:r19 forKeyedSubscript:@"_ai"];
    r21 = [[NSNumber numberWithLongLong:r21] retain];
    [r0 setObject:r21 forKeyedSubscript:@"_xt"];
    [r21 release];
    [APMAnalytics logInternalEventWithOrigin:@"am" name:@"_xu" parameters:r0];
    r0 = r0;
    goto loc_100139588;

loc_100139544:
    r21 = [[APMMeasurement monitor] retain];
    goto loc_10013957c;

loc_100139508:
    r21 = [[APMMeasurement monitor] retain];
    goto loc_10013957c;

loc_1001394cc:
    r21 = [[APMMeasurement monitor] retain];
    goto loc_10013957c;
}

-(void)handleEngagementTimer:(void *)arg2 {
    r0 = [APMScreenViewReporter sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 screenParameters] retain];
    [r0 release];
    [self logExposureEventsWithScreenParameters:r21];
    [r21 release];
    return;
}

-(void)handleAppDidBecomeActive {
    [self currentTime];
    dispatch_sync(self->_queue, &var_40);
    return;
}

-(void)handleAppWillResignActiveWithScreen:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = sub_1001901d8();
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = 0x0;
    }
    if ([r21 count] == 0x0) {
            r0 = [APMScreenViewReporter sharedInstance];
            r0 = [r0 retain];
            r23 = [[r0 screenParameters] retain];
            [r21 release];
            [r0 release];
            r21 = r23;
    }
    [r20 currentTime];
    r22 = r20->_queue;
    [r21 retain];
    dispatch_sync(r22, &var_68);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)isReportingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_reportingEnabled;
    return r0;
}

-(void)setReportingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_reportingEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitStartTimes, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitCounts, 0x0);
    return;
}

@end