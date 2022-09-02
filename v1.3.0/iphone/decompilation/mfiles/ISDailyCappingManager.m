@implementation ISDailyCappingManager

-(void)increaseShowCounter:(void *)arg2 {
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
    r21 = [[r19 getSmashId:r20] retain];
    r0 = r19->_smashIdToMaxAdsPerDay;
    r0 = [r0 objectForKey:r2];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 saveCounter:r21 count:[r19 getTodayShowCount:r21] + 0x1];
    }
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(bool)isCapped:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
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
    r21 = [[r19 getSmashId:r20] retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_smashIdToMaxAdsPerDay));
    r0 = *(r19 + r24);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = @selector(objectForKey:);
            r0 = *(r19 + r24);
            r0 = objc_msgSend(r0, r22);
            r0 = [r0 retain];
            r22 = [r0 integerValue];
            [r0 release];
            if (r22 <= [r19 getTodayShowCount:r21]) {
                    if (CPU_FLAGS & LE) {
                            r22 = 0x1;
                    }
            }
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(long long)getTodayShowCount:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 getTodayDate] retain];
    r22 = [[r20 getCounterDate:r19] retain];
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) {
            [r20 zeroCounter:r19];
    }
    r20 = [r20 getCounter:r19];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldSendCapReleasedEvent:(void *)arg2 {
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
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r21 = [[r19 getSmashId:r20] retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_smashIdToMaxAdsPerDay));
    r0 = *(r19 + r25);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r19 getTodayDate] retain];
            r0 = [r19 getCounterDate:r21];
            r29 = r29;
            r24 = [r0 retain];
            if (([r22 isEqualToString:r2] & 0x1) != 0x0) {
                    r23 = 0x0;
            }
            else {
                    r23 = @selector(objectForKey:);
                    r0 = *(r19 + r25);
                    r0 = objc_msgSend(r0, r23);
                    r0 = [r0 retain];
                    r23 = [r0 integerValue];
                    [r0 release];
                    if (r23 <= [r19 getCounter:r21]) {
                            if (CPU_FLAGS & LE) {
                                    r23 = 0x1;
                            }
                    }
            }
            [r24 release];
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void *)initWithAdUnit:(void *)arg2 smashes:(void *)arg3 {
    r31 = r31 - 0x180;
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
    r22 = [r19 retain];
    r20 = [arg3 retain];
    r0 = [[&var_E8 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            var_160 = r22;
            objc_storeStrong((int64_t *)&r21->_adIUnitName, r19);
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_smashIdToMaxAdsPerDay));
            r8 = *(r21 + r9);
            var_150 = r9;
            var_148 = r21;
            *(r21 + r9) = r0;
            [r8 release];
            var_118 = q0;
            var_168 = r20;
            r0 = [r20 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r0;
            var_158 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r21 = *var_118;
                    r28 = var_148;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_118 != r21) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r20 = *(var_120 + r27 * 0x8);
                                    r0 = [r20 adapterConfig];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = [r0 maxAdsPerDay];
                                    [r0 release];
                                    if (r22 != 0x63) {
                                            [[r28 getSmashId:r2] retain];
                                            r0 = [r20 adapterConfig];
                                            r0 = [r0 retain];
                                            r0 = [NSNumber numberWithInteger:[r0 maxAdsPerDay]];
                                            r29 = r29;
                                            [r0 retain];
                                            [*(r28 + var_150) setObject:r2 forKeyedSubscript:r3];
                                            [r23 release];
                                            [r20 release];
                                            [r22 release];
                                    }
                                    r27 = r27 + 0x1;
                            } while (r27 < r24);
                            r24 = objc_msgSend(var_130, var_158);
                    } while (r24 != 0x0);
            }
            [var_130 release];
            r21 = var_148;
            r0 = *(r21 + var_150);
            r0 = [r0 allKeys];
            r0 = [r0 retain];
            r20 = [r0 count];
            [r0 release];
            if (r20 != 0x0) {
                    [r21 scheduleTimer];
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
                    r0 = *(r21 + r8);
                    *(r21 + r8) = 0x0;
                    [r0 release];
            }
            r20 = var_168;
            r22 = var_160;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)saveCounter:(void *)arg2 count:(long long)arg3 {
    r23 = @class(NSUserDefaults);
    r20 = [arg2 retain];
    r23 = [[r23 standardUserDefaults] retain];
    r24 = [[self getCounterKey:r20] retain];
    [r23 setInteger:arg3 forKey:r24];
    [r24 release];
    [r23 release];
    r22 = [[NSUserDefaults standardUserDefaults] retain];
    r23 = [[self getTodayDate] retain];
    r21 = [[self getDateKey:r20] retain];
    [r20 release];
    [r22 setObject:r23 forKey:r21];
    [r21 release];
    [r23 release];
    [r22 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

-(void *)getCounterKey:(void *)arg2 {
    r0 = [NSString stringWithFormat:@"%@_%@_counter"];
    return r0;
}

-(void *)getSmashId:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[arg2 instanceId] retain];
    r19 = [[arg2 adapterConfig] retain];
    [r22 release];
    r22 = [[r19 providerName] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)zeroCounter:(void *)arg2 {
    r22 = @class(NSUserDefaults);
    r20 = [arg2 retain];
    r22 = [[r22 standardUserDefaults] retain];
    r23 = [[self getDateKey:r20] retain];
    [r22 removeObjectForKey:r23];
    [r23 release];
    [r22 release];
    r22 = [[NSUserDefaults standardUserDefaults] retain];
    r21 = [[self getCounterKey:r20] retain];
    [r20 release];
    [r22 removeObjectForKey:r21];
    [r21 release];
    [r22 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

-(void *)getDateKey:(void *)arg2 {
    r0 = [NSString stringWithFormat:@"%@_%@_day"];
    return r0;
}

-(void *)getCounterDate:(void *)arg2 {
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
    r22 = [arg2 retain];
    r21 = [[NSUserDefaults standardUserDefaults] retain];
    r23 = [[r19 getDateKey:r22] retain];
    [r22 release];
    r0 = [r21 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r20 retain];
    }
    else {
            r0 = [r19 getTodayDate];
            r0 = [r0 retain];
    }
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)getTodayDate {
    r0 = [NSDateFormatter alloc];
    r0 = [r0 init];
    [r0 setDateFormat:@"yyyy-MM-dd"];
    r20 = [[NSTimeZone timeZoneWithAbbreviation:@"UTC"] retain];
    [r0 setTimeZone:r20];
    [r20 release];
    r20 = [[NSDate date] retain];
    r21 = [[r0 stringFromDate:r20] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(long long)getCounter:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r20 = [[NSUserDefaults standardUserDefaults] retain];
    r21 = [[self getCounterKey:r22] retain];
    [r22 release];
    r19 = [[r20 objectForKey:r2] retain];
    [r21 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 integerValue];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)onTick:(void *)arg2 {
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
    r24 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r24 invalidate];
    var_108 = q0;
    r0 = r19->_smashIdToMaxAdsPerDay;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_128 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            r20 = @selector(countByEnumeratingWithState:objects:count:);
            var_120 = *var_108;
            var_138 = r24;
            var_130 = r20;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_108 != var_120) {
                                    objc_enumerationMutation(var_128);
                            }
                            r26 = @selector(removeObjectForKey:);
                            r24 = @selector(standardUserDefaults);
                            r20 = [objc_msgSend(@class(NSUserDefaults), r24) retain];
                            [[r19 getDateKey:r2] retain];
                            objc_msgSend(r20, r26);
                            [r22 release];
                            [r20 release];
                            r20 = [objc_msgSend(@class(NSUserDefaults), r24) retain];
                            r0 = objc_msgSend(r19, r27);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r26);
                            [r22 release];
                            [r20 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r23 = objc_msgSend(var_128, var_130);
                    r24 = var_138;
            } while (r23 != 0x0);
    }
    [var_128 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r0 = [r19 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 dailyCapReleased];
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 scheduleTimer];
    objc_sync_exit(r19);
    [r19 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)scheduleTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(double)getSecondsToUtcMidnight {
    r19 = [[NSCalendar alloc] initWithCalendarIdentifier:**_NSGregorianCalendar];
    r21 = [[NSTimeZone timeZoneWithName:@"UTC"] retain];
    [r19 setTimeZone:r21];
    [r21 release];
    r23 = [[NSDate date] retain];
    r21 = [[r19 components:0x1c fromDate:r23] retain];
    [r23 release];
    [r21 setHour:0x0];
    [r21 setMinute:arc4random_uniform(0xa)];
    [r21 setSecond:arc4random_uniform(0x3c)];
    r23 = [[r19 dateFromComponents:r21] retain];
    r0 = [NSDateComponents alloc];
    r0 = [r0 init];
    [r0 setDay:0x1];
    r24 = [[r19 dateByAddingComponents:r0 toDate:r23 options:0x0] retain];
    r22 = [[NSDate date] retain];
    [r24 timeIntervalSinceDate:r22];
    [r22 release];
    [r24 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [r19 release];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_smashIdToMaxAdsPerDay, 0x0);
    objc_storeStrong((int64_t *)&self->_adIUnitName, 0x0);
    return;
}

@end