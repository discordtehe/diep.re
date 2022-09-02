@implementation APMSessionReporter

-(void)dealloc {
    [self->_sessionStartTimer cancel];
    [self->_userEngagementTimer cancel];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPersistedConfig:(void *)arg2 {
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
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_persistedConfig, r22);
            r0 = @class(APMMeasurement);
            r0 = [r0 remoteConfig];
            r0 = [r0 retain];
            [r0 sessionDefaultMinimumInterval];
            r20->_minimumSessionInterval = d0;
            [r0 release];
            r0 = @class(APMMeasurement);
            r0 = [r0 remoteConfig];
            r0 = [r0 retain];
            [r0 sessionDefaultTimeoutInterval];
            r20->_timeoutSessionInterval = d0;
            [r0 release];
            [r20 currentUptime];
            r20->_engagementStartUptime = d0;
            r20->_freerideEngagementStartUptime = d0;
            r2 = [r20 shouldStartNewSession];
            [r20->_persistedConfig setStartNewSession:r2];
            [r20->_persistedConfig setEngagementTimeBeforeSessionStart:r2];
            r0 = @class(APMAlarm);
            r0 = [r0 alloc];
            r23 = *__dispatch_main_q;
            r0 = [r0 initWithDispatchQueue:r23 name:@"Session timer"];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionStartTimer));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(APMAlarm);
            r0 = [r0 alloc];
            r0 = [r0 initWithDispatchQueue:r23 name:@"Engagement timer"];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userEngagementTimer));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setReportingEnabled:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_reportingEnabled = arg2;
    if (arg2 != 0x0) {
            if ([r19->_persistedConfig startNewSession] != 0x0) {
                    r0 = r19->_sessionStartTimer;
                    r0 = [r0 scheduledTimestamp];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            [r19 rescheduleSessionStartTimer];
                    }
            }
            if (sub_10019475c() != 0x0) {
                    r0 = r19->_userEngagementTimer;
                    r0 = [r0 scheduledTimestamp];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            [r19 rescheduleUserEngagementTimer];
                    }
            }
    }
    return;
}

-(void)setMinimumSessionInterval:(double)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (d0 < 0x0) {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x80e8 message:@"Received negative minimum session duration. Setting to 0.0 instead."];
            [r0 release];
            d0 = 0x0;
    }
    r19->_minimumSessionInterval = d0;
    if ([r19->_persistedConfig startNewSession] != 0x0) {
            r0 = r19->_sessionStartTimer;
            r0 = [r0 scheduledTimestamp];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r19 rescheduleSessionStartTimer];
            }
    }
    return;
}

-(void)setTimeoutSessionInterval:(double)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (d0 < 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x80e9 message:@"Received negative timeout session duration. Setting to 0.0 instead."];
            [r0 release];
            d0 = 0x0;
    }
    r19->_timeoutSessionInterval = d0;
    return;
}

-(bool)shouldStartNewSession {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = sub_10019475c();
    if (r0 != 0x0) {
            r0 = [r19 isSessionExpired];
    }
    return r0;
}

-(bool)isSessionExpired {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self currentClockTime];
    r0 = self->_persistedConfig;
    r0 = [r0 lastSessionActivityClockTime];
    if (Abs(d8 - d0) > self->_timeoutSessionInterval) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)sessionIDPropertyWithTimestamp:(double)arg2 {
    r2 = arg2;
    r19 = @selector(alloc);
    r0 = objc_msgSend(@class(APMValue), r19);
    asm { fcvtzs     x2, d8 };
    r20 = [r0 initWithInt64:r2];
    r19 = [objc_msgSend(@class(APMUserAttribute), r19) initWithOrigin:@"auto" name:@"_sid" value:r20 lastSetTimestamp:r5];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)extendSession {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [APMMeasurement remoteConfig];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 sessionBackgroundEnabled] != 0x0) {
            r21 = [r19 isSessionExpired];
            [r20 release];
            if ((r21 & 0x1) == 0x0) {
                    [r19 currentClockTime];
                    [r19->_persistedConfig setLastSessionActivityClockTime:r2];
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            [r20 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)sessionNumberProperty {
    [self currentClockTime];
    r19 = [[APMValue alloc] initWithInt64:[self->_persistedConfig sessionNumber]];
    r20 = [[APMUserAttribute alloc] initWithOrigin:@"auto" name:@"_sno" value:r19 lastSetTimestamp:r5];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)logSessionStartEvent {
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
    r19 = self;
    if ((sub_10019475c() & 0x1) == 0x0) goto loc_10016ff6c;

loc_10016fe64:
    [r19 updatePropertiesForNewSessionStart];
    if (*(int8_t *)(int64_t *)&r19->_reportingEnabled == 0x0) goto .l1;

loc_10016fe84:
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 sessionIDEnabled];
    [r0 release];
    if (r23 != 0x0) {
            r21 = @class(NSNumber);
            [r19 currentClockTime];
            asm { fcvtzs     x2, d0 };
            r21 = [[r21 numberWithLongLong:r2] retain];
            r0 = [APMValue valueFromObject:r21];
            r29 = r29;
            r23 = [r0 retain];
            [r20 setObject:r23 forKeyedSubscript:@"_sid"];
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 sessionNumberEnabled];
    [r0 release];
    if (r23 != 0x0) {
            r22 = [[NSNumber numberWithLongLong:[r19->_persistedConfig sessionNumber]] retain];
            r23 = [[APMValue valueFromObject:r22] retain];
            [r20 setObject:r23 forKeyedSubscript:@"_sno"];
            [r23 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 setSessionID:r21 withSessionNumber:r22];
    [APMAnalytics logInternalEventWithOrigin:@"auto" name:@"_s" parameters:r20];
    [r22 release];
    [r21 release];
    r0 = r20;
    goto loc_1001700e0;

loc_1001700e0:
    [r0 release];
    return;

.l1:
    return;

loc_10016ff6c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x80ed message:@"Session start event not logged. Application is not active"];
    r0 = r0;
    goto loc_1001700e0;
}

-(void)logUserEngagementEvent {
    [self logUserEngagementEventWithScreen:0x0 isRedundant:0x0];
    return;
}

-(void)handleAppDidBecomeActive {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self currentUptime];
    r19->_engagementStartUptime = d0;
    r19->_freerideEngagementStartUptime = d0;
    [r19 rescheduleUserEngagementTimer];
    r0 = [r19 shouldStartNewSession];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    if (r0 != 0x0) {
            [*(r19 + r20) setStartNewSession:0x1];
            [*(r19 + r20) setEngagementTimeBeforeSessionStart:0x1];
    }
    if ([*(r19 + r20) startNewSession] != 0x0) {
            [r19 setSessionID:0x0 withSessionNumber:0x0];
            r0 = [APMMeasurement remoteConfig];
            r0 = [r0 retain];
            r21 = [r0 sessionImmediateStartEnabled];
            [r0 release];
            if (r21 != 0x0) {
                    r1 = @selector(logSessionStartEvent);
            }
            else {
                    r1 = @selector(rescheduleSessionStartTimer);
            }
            objc_msgSend(r19, r1);
    }
    return;
}

-(void)logUserEngagementEventWithScreen:(void *)arg2 isRedundant:(bool)arg3 {
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
    r28 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if ((sub_10019475c() & 0x1) != 0x0) {
            if (*(int8_t *)(int64_t *)&r20->_reportingEnabled != 0x0) {
                    var_54 = r28;
                    [r20 incurredEngagementTime];
                    d0 = d0 * *0x100b9b058;
                    asm { fcvtzs     x24, d0 };
                    r22 = [[NSMutableDictionary alloc] init];
                    r2 = [[APMValue alloc] initWithInt64:r24];
                    [r22 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
                    if (r19 != 0x0) {
                            r0 = sub_1001901d8();
                            r29 = r29;
                            r24 = [r0 retain];
                            [r22 addEntriesFromDictionary:r24];
                            [r24 release];
                    }
                    r0 = [APMMeasurement remoteConfig];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = [r0 efficientEngagementReportingEnabled];
                    [r0 release];
                    r28 = var_54;
                    if (r21 != 0x0 && r28 != 0x0) {
                            r2 = [[APMValue alloc] initWithInt64:0x1];
                            [r22 setObject:r2 forKeyedSubscript:r3];
                            [r21 release];
                    }
                    [APMAnalytics logInternalEventWithOrigin:@"auto" name:@"_e" parameters:r22];
                    [r22 release];
            }
            [r20 currentUptime];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_engagementStartUptime));
            *(r20 + r23) = d0;
            r0 = [APMMeasurement remoteConfig];
            r0 = [r0 retain];
            r22 = [r0 efficientEngagementReportingEnabled];
            [r0 release];
            if (r22 != 0x0 && (r28 & 0x1) == 0x0) {
                    r20->_freerideEngagementStartUptime = *(r20 + r23);
            }
            [r20 currentClockTime];
            [r20->_persistedConfig setLastSessionActivityClockTime:r2];
            [r20 rescheduleUserEngagementTimer];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x80ee message:@"User engagement event not logged. Application is not active"];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)handleAppWillResignActiveWithScreen:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self logUserEngagementEventWithScreen:arg2 isRedundant:0x0];
    [r19->_userEngagementTimer cancel];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    if ([*(r19 + r21) startNewSession] != 0x0) {
            [r19->_sessionStartTimer cancel];
            r20 = *(r19 + r21);
            [r19 incurredEngagementTime];
            [r20 engagementTimeBeforeSessionStart];
            [r20 setEngagementTimeBeforeSessionStart:r2];
    }
    return;
}

-(void)handleScreenDidChangeFromScreen:(void *)arg2 toScreen:(void *)arg3 {
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
    r20 = self;
    r19 = [arg2 retain];
    [r20 incurredEngagementTime];
    if (r19 != 0x0 && d0 >= 0x3ff0000000000000) {
            r0 = [APMMeasurement remoteConfig];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 efficientEngagementReportingEnabled];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [APMMeasurement remoteConfig];
                    r0 = [r0 retain];
                    r22 = [r0 redundantEngagementRemovalEnabled];
                    [r0 release];
                    if ((r22 & 0x1) == 0x0) {
                            [r20 logUserEngagementEventWithScreen:r2 isRedundant:r3];
                    }
            }
            else {
                    [r20 logUserEngagementEventWithScreen:r2 isRedundant:r3];
            }
    }
    [r19 release];
    return;
}

-(void)rescheduleSessionStartTimer {
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x80ea message:@"Scheduling session start timer"];
    [r0 release];
    objc_initWeak(&stack[-56], self);
    [self->_persistedConfig engagementTimeBeforeSessionStart];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r19 runAfterDelay:&var_50 withBlock:0x80ea];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)rescheduleUserEngagementTimer {
    r0 = @class(APMMeasurement);
    r0 = [r0 monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x80eb message:@"Scheduling user engagement timer"];
    [r0 release];
    objc_initWeak(&stack[-72], self);
    r0 = @class(APMMeasurement);
    r0 = [r0 remoteConfig];
    r0 = [r0 retain];
    [r0 sessionEventUserEngagementInterval];
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r19 runAfterDelay:&var_60 withBlock:0x80eb];
    [r20 release];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    return;
}

-(double)currentClockTime {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    r0 = [r19 release];
    return r0;
}

-(double)currentUptime {
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

-(double)incurredEngagementTime {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self currentUptime];
    r0 = [APMMeasurement remoteConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r8 = 0x10116a960;
    if ([r0 efficientEngagementReportingEnabled] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x10116a960;
            }
            else {
                    r8 = 0x10116a964;
            }
    }
    d9 = *(r19 + sign_extend_64(*(int32_t *)r8));
    r0 = [r20 release];
    if (d8 < d9) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x80ec message:@"Incurred engagement time is negative. Setting to 0.0 instead"];
            r0 = [r0 release];
    }
    return r0;
}

-(long long)cutFreerideEngagementTimeMillis {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [APMMeasurement remoteConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 efficientEngagementReportingEnabled];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            [r19 incurredEngagementTime];
            r0 = [r19 currentUptime];
            r19->_freerideEngagementStartUptime = d0;
            asm { fcvtzs     x0, d0 };
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x5 messageCode:0x80ef message:@"Returning zero engagement time. Efficient engagement reporting is disabled."];
            [r0 release];
            r0 = 0x0;
    }
    return r0;
}

-(void)updatePropertiesForNewSessionStart {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [APMMeasurement remoteConfig];
    r0 = [r0 retain];
    r21 = [r0 sessionNumberEnabled];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    if (r21 != 0x0) {
            [*(r19 + r20) setSessionNumber:[*(r19 + r20) sessionNumber] + 0x1];
    }
    [*(r19 + r20) setStartNewSession:0x0];
    [r19 currentClockTime];
    [*(r19 + r20) setLastSessionActivityClockTime:0x0];
    return;
}

-(bool)isReportingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_reportingEnabled;
    return r0;
}

-(void)setSessionID:(void *)arg2 withSessionNumber:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(APMAnalytics);
    r24 = [arg3 retain];
    r0 = [r22 sharedInstance];
    r0 = [r0 retain];
    [r0 setInternalUserProperty:arg2 forName:@"_sid" withOrigin:@"auto"];
    [r21 release];
    [r0 release];
    r0 = @class(APMAnalytics);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setInternalUserProperty:arg3 forName:@"_sno" withOrigin:@"auto"];
    [r24 release];
    [r0 release];
    return;
}

-(double)minimumSessionInterval {
    r0 = self;
    return r0;
}

-(double)timeoutSessionInterval {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userEngagementTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionStartTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_persistedConfig, 0x0);
    return;
}

@end