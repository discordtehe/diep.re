@implementation APMRemoteConfig

+(void *)defaultInstance {
    if (*qword_1011d1f80 != -0x1) {
            dispatch_once(0x1011d1f80, 0x100e6e4a8);
    }
    r0 = *0x1011d1f78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)reset {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = @class(GULMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedValueByRemoteConfigKeys));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = @class(GULMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedEventConfigByEventName));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    if (*(int8_t *)(int64_t *)&r19->_isDefaultInstance == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfigProto));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    return;
}

-(void *)initWithAppID:(void *)arg2 database:(void *)arg3 {
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
    r21 = [arg3 retain];
    if ([r19 length] == 0x0) goto loc_10016be1c;

loc_10016bde8:
    if (r21 == 0x0) goto loc_10016be58;

loc_10016bdec:
    r20 = [[r20 initWithAppID:r19 database:r21 measurementConfig:0x0] retain];
    r22 = r20;
    goto loc_10016bea4;

loc_10016bea4:
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;

loc_10016be58:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10016be90;

loc_10016be90:
    [r22 logWithLevel:r2 messageCode:r3 message:r4];
    [r22 release];
    r22 = 0x0;
    goto loc_10016bea4;

loc_10016be1c:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_10016be90;
}

-(void *)initWithAppID:(void *)arg2 database:(void *)arg3 measurementConfig:(void *)arg4 {
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = [r19 copy];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_appID));
            r8 = *(r22 + r26);
            *(r22 + r26) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r22->_database, r20);
            r0 = [NSNumberFormatter alloc];
            r0 = objc_msgSend(r0, r23);
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_numberFormatter));
            r8 = *(r22 + r27);
            *(r22 + r27) = r0;
            [r8 release];
            [*(r22 + r27) setNumberStyle:0x1];
            r0 = @class(GULMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r23);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedValueByRemoteConfigKeys));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = @class(GULMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r23);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedEventConfigByEventName));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r23);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedExperimentIDs));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = sub_100185484();
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_experimentIDMap));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = objc_loadWeakRetained((int64_t *)&r22->_database);
            if (r0 != 0x0) {
                    r8 = 0x0;
            }
            else {
                    r8 = *(r22 + r26);
                    if (r8 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
            }
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_isDefaultInstance));
            *(int8_t *)(r22 + r23) = r8;
            [r0 release];
            if (*(int8_t *)(r22 + r23) == 0x0) {
                    if (r21 != 0x0) {
                            [r22 updateMeasurementConfig:r21];
                    }
                    else {
                            r0 = [r22 measurementConfigFromDatabase];
                            r0 = [r0 retain];
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfigProto));
                            r8 = *(r22 + r23);
                            *(r22 + r23) = r0;
                            [r8 release];
                            if (*(r22 + r23) != 0x0) {
                                    [r22 parseRemoteConfigFromMeasurementConfig:0x1];
                            }
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)updateMeasurementConfig:(void *)arg2 {
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
    r22 = arg2;
    r21 = self;
    r19 = [r22 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"updateMeasurementConfig:"];
    if (*(int8_t *)(int64_t *)&r21->_isDefaultInstance == 0x0) goto loc_10016c2c8;

loc_10016c278:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10016c2b0;

loc_10016c2b0:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    r21 = 0x0;
    goto loc_10016c55c;

loc_10016c55c:
    [r19 release];
    r0 = r21;
    return r0;

loc_10016c2c8:
    if (r19 == 0x0) goto loc_10016c3b8;

loc_10016c2cc:
    r20 = [sub_1001a7b3c(r19, 0x6) retain];
    r0 = [APMIdentifiers sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 origin];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 isEqual:r2] == 0x0) goto loc_10016c3f4;

loc_10016c33c:
    r26 = [r20 isEqual:r2];
    [r25 release];
    [r23 release];
    if ((r26 & 0x1) != 0x0) goto loc_10016c404;

loc_10016c36c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x715e message:@"Cannot set measurement config when AdMob App ID does not match"];
    [r0 release];
    r21 = 0x0;
    goto loc_10016c554;

loc_10016c554:
    [r20 release];
    goto loc_10016c55c;

loc_10016c404:
    r24 = @selector(isEqual:);
    r0 = sub_1001a7b3c(r19, 0x1);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ((objc_msgSend(r0, r24) & 0x1) == 0x0) goto loc_10016c4cc;

loc_10016c434:
    r0 = objc_loadWeakRetained((int64_t *)&r21->_database);
    r25 = [r0 updateRemoteConfig:r19 error:&var_48];
    r24 = [var_48 retain];
    [r0 release];
    if (r24 == 0x0 || r25 != 0x0) goto loc_10016c518;

loc_10016c480:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    [r0 logWithLevel:0x1 messageCode:0x714d message:@"Cannot store config into the database" context:r24];
    [r24 release];
    goto loc_10016c508;

loc_10016c508:
    [r21 release];
    r21 = 0x0;
    goto loc_10016c54c;

loc_10016c54c:
    [r23 release];
    goto loc_10016c554;

loc_10016c518:
    objc_storeStrong((int64_t *)&r21->_remoteConfigProto, r22);
    [r21 parseRemoteConfigFromMeasurementConfig:r19];
    [r24 release];
    r21 = 0x1;
    goto loc_10016c54c;

loc_10016c4cc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    [r0 logWithLevel:0x1 messageCode:0x714c message:@"Cannot set measurement config when Google App ID does not match"];
    goto loc_10016c508;

loc_10016c3f4:
    [r25 release];
    [r23 release];
    goto loc_10016c404;

loc_10016c3b8:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10016c2b0;
}

-(void *)eventConfigWithName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r20 = [[r20->_cachedEventConfigByEventName objectForKeyedSubscript:r19] retain];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x714e message:@"Cannot find event config with empty event name"];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isEventBlacklisted:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 eventConfigWithName:r19] retain];
    if (r21 != 0x0 && sub_1001a7578(r21, 0x1) != 0x0) {
            r22 = 0x1;
            if ((sub_1001a7698(r21, 0x1) & 0x1) == 0x0) {
                    r8 = &@selector(blacklistPublic);
                    if (sub_100195640() != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = &@selector(blacklistInternal);
                            }
                            else {
                                    r8 = &@selector(blacklistPublic);
                            }
                    }
                    r22 = objc_msgSend(r20, *r8);
            }
    }
    else {
            r8 = &@selector(blacklistPublic);
            if (sub_100195640() != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = &@selector(blacklistInternal);
                    }
                    else {
                            r8 = &@selector(blacklistPublic);
                    }
            }
            r22 = objc_msgSend(r20, *r8);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)eventHasSamplingRate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self eventConfigWithName:arg2] retain];
    if (r19 != 0x0) {
            r20 = sub_1001a7578(r19, 0x3);
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEventCustomConversion:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self eventConfigWithName:arg2] retain];
    if (r19 != 0x0 && sub_1001a7578(r19, 0x2) != 0x0) {
            r20 = sub_1001a7698(r19, 0x2);
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(int)samplingRateForEvent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self eventConfigWithName:arg2] retain];
    if (r19 != 0x0) {
            r0 = sub_1001a77c0(r19, 0x3);
            if (r0 <= *(int32_t *)0x100ba2320) {
                    asm { ccmp       w0, w8, #0x8, le };
            }
            if (CPU_FLAGS & L) {
                    if (!CPU_FLAGS & L) {
                            r20 = r0;
                    }
                    else {
                            r20 = *(int32_t *)0x100ba231c;
                    }
            }
    }
    else {
            r20 = *(int32_t *)0x100ba231c;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)version {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_remoteConfigProto));
    r0 = *(r19 + r20);
    if (r0 != 0x0 && sub_1001a7578(r0, 0x0) != 0x0) {
            r0 = *(r19 + r20);
            r0 = sub_1001a78e8(r0, 0x0);
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(bool)isExpired {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isDefaultInstance != 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x714f message:@"Cannot fetch the last update timestamp from the default configuration"];
            [r0 release];
            r0 = 0x0;
    }
    else {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            [r19 lastRemoteConfigUpdateTimestamp];
            r0 = [r19 remoteConfigCacheTimeInterval];
            if (Abs(d8 - d0) >= d8 - d0) {
                    if (CPU_FLAGS & GE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(double)lastRemoteConfigUpdateTimestamp {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(int8_t *)(int64_t *)&r0->_isDefaultInstance != 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7150 message:@"Cannot fetch the last configuration update timestamp from the default instance"];
            r0 = [r0 release];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r0->_database);
            r21 = r0;
            r0 = [r0 lastRemoteConfigUpdateTimestamp:&var_38];
            r29 = r29;
            r19 = [r0 retain];
            r20 = [var_38 retain];
            [r21 release];
            if (r19 == 0x0) {
                    asm { ccmp       x20, #0x0, #0x4, eq };
            }
            if (!CPU_FLAGS & E) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x7151 message:@"Failed to query last configuration update timestamp. Error" context:r20];
                    [r0 release];
            }
            [r19 doubleValue];
            v8 = v0;
            [r19 release];
            r0 = [r20 release];
    }
    return r0;
}

-(bool)isSearchAdReporterEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.search_ad_enabled" defaultValue:*(int32_t *)0x100ba23f8 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)remoteConfigURLWithAppInstanceID:(void *)arg2 platform:(void *)arg3 SDKVersion:(long long)arg4 {
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
    r22 = arg4;
    r19 = [arg2 retain];
    r25 = @selector(stringWithFormat:);
    r21 = [arg3 retain];
    r0 = objc_msgSend(@class(NSString), r25);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r23 = [[NSNumber numberWithLongLong:r22] retain];
            r22 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3] retain];
            [r23 release];
            r24 = [[r22 apm_queryString] retain];
            r25 = [[r20 stringByAppendingString:r24] retain];
            r23 = [[NSURL alloc] initWithString:r25];
            [r21 release];
            [r25 release];
            [r24 release];
            [r22 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7152 message:@"Cannot create a URL to fetch a configuration with empty app instance ID or empty platform (app instance, platform)" context:r19 context:r21];
            [r21 release];
            [r0 release];
            r23 = 0x0;
    }
    var_48 = **___stack_chk_guard;
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

-(double)uploadingBackoffInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.backoff_period" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(int)maxAudienceCount {
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.max_count" defaultValue:*(int32_t *)0x100ba2174 maxValue:*(int32_t *)0x100ba2178 minValue:*(int32_t *)0x100ba217c];
    return r0;
}

-(int)maxFiltersPerAudience {
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.filter_max_count_per_audience" defaultValue:*(int32_t *)0x100ba2168 maxValue:*(int32_t *)0x100ba216c minValue:*(int32_t *)0x100ba2170];
    return r0;
}

-(int)maxParametersPerFilter {
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.parameter_max_count_filter" defaultValue:*(int32_t *)0x100ba2180 maxValue:*(int32_t *)0x100ba2184 minValue:*(int32_t *)0x100ba2188];
    return r0;
}

-(int)maxFilterResultCount {
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.filter_result_max_count" defaultValue:*(int32_t *)0x100ba218c maxValue:*(int32_t *)0x100ba2190 minValue:*(int32_t *)0x100ba2194];
    return r0;
}

-(bool)isAudienceDynamicFiltersEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.dynamic_filters" defaultValue:*(int32_t *)0x100ba2198 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isAudienceSequenceFiltersEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.sequence_filters" defaultValue:*(int32_t *)0x100ba219c maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(double)databaseDeleteStaleBundlesInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.stale_data_deletion_interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(bool)isAudienceScopedFiltersEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.audience.scoped_filters" defaultValue:*(int32_t *)0x100ba21a0 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(double)maxQueueTime {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.max_queue_time" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(void *)experimentIDs {
    r0 = self->_cachedExperimentIDs;
    r0 = [r0 allObjects];
    return r0;
}

-(double)adIDCacheTime {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.ad_id_cache_time" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(bool)isIdentifierForVendorCollectionEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.identity.identifier_for_vendor_collection_enabled" defaultValue:*(int32_t *)0x100ba21f8 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isIAPSubscriptionNonConsumableReportEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.event.beta_iap_subscription_nonconsumable_report" defaultValue:*(int32_t *)0x100ba21d8 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(double)monitoringSamplePeriod {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.monitoring.sample_period_millis" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(bool)isIAPIntroductoryOfferEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.event.alpha_iap_introductory_offer_enabled" defaultValue:*(int32_t *)0x100ba21dc maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isNetworkBackgroundSessionEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.network.background_session_enabled" defaultValue:*(int32_t *)0x100ba2370 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(double)networkTimeout {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.network.network_timeout" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(double)sessionDefaultMinimumInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.session.default_minimum_interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(double)sessionDefaultTimeoutInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.session.default_timeout_interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(double)sessionEventUserEngagementInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.session.event_user_engagement_interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(bool)sessionIDEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.sessions.session_id_enabled" defaultValue:*(int32_t *)0x100ba23e0 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)sessionBackgroundEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.sessions.background_sessions_enabled" defaultValue:*(int32_t *)0x100ba23e8 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)sessionImmediateStartEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.sessions.immediate_start_enabled" defaultValue:*(int32_t *)0x100ba23e4 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)sessionNumberEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.sessions.session_number_enabled" defaultValue:*(int32_t *)0x100ba23ec maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)efficientEngagementReportingEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.collection.efficient_engagement_reporting_enabled" defaultValue:*(int32_t *)0x100ba23f0 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)redundantEngagementRemovalEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.collection.redundant_engagement_removal_enabled" defaultValue:*(int32_t *)0x100ba23f4 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)uploadWhenAppInBackgroundEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.upload_when_app_in_background_enabled" defaultValue:*(int32_t *)0x100ba22c8 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)parsePurchaseDataEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.beta_parse_purchase_data_enabled" defaultValue:*(int32_t *)0x100ba22cc maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)dedupePurchasesEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.dedupe_purchases_enabled" defaultValue:*(int32_t *)0x100ba22d0 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(int)maxConversionsPerDay {
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.max_conversions_per_day" defaultValue:*(int32_t *)0x100ba21fc maxValue:*(int32_t *)0x100ba2200 minValue:*(int32_t *)0x100ba2204];
    return r0;
}

-(int)maxEventsPerDay {
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.max_events_per_day" defaultValue:*(int32_t *)0x100ba2208 maxValue:*(int32_t *)0x100ba220c minValue:*(int32_t *)0x100ba2210];
    return r0;
}

-(int)maxPublicEventsPerDay {
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.max_public_events_per_day" defaultValue:*(int32_t *)0x100ba2214 maxValue:*(int32_t *)0x100ba2218 minValue:*(int32_t *)0x100ba221c];
    return r0;
}

-(int)maxErrorEventsPerDay {
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.max_error_events_per_day" defaultValue:*(int32_t *)0x100ba2220 maxValue:*(int32_t *)0x100ba2224 minValue:*(int32_t *)0x100ba2228];
    return r0;
}

-(int)maxTrackedCurrencies {
    r0 = [self intValueFromCacheWithKey:@"measurement.lifetimevalue.max_currency_tracked" defaultValue:*(int32_t *)0x100ba222c maxValue:*(int32_t *)0x100ba2230 minValue:*(int32_t *)0x100ba2234];
    return r0;
}

-(double)uploadingInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(int)maxEventsStored {
    r0 = [self intValueFromCacheWithKey:@"measurement.store.max_stored_events_per_app" defaultValue:*(int32_t *)0x100ba2238 maxValue:*(int32_t *)0x100ba223c minValue:*(int32_t *)0x100ba2240];
    return r0;
}

-(double)uploadingInitialDelayInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.initial_upload_delay_time" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(long long)uploadMaxBundlesLimit {
    r0 = [self int64ValueFromCacheWithKey:@"measurement.upload.max_bundles" defaultValue:sign_extend_64(*(int32_t *)0x100ba2244) maxValue:sign_extend_64(*(int32_t *)0x100ba2248) minValue:sign_extend_64(*(int32_t *)0x100ba224c)];
    return r0;
}

-(long long)uploadMaxSizeLimitBytes {
    r0 = [self int64ValueFromCacheWithKey:@"measurement.upload.max_batch_size" defaultValue:sign_extend_64(*(int32_t *)0x100ba225c) maxValue:sign_extend_64(*(int32_t *)0x100ba2260) minValue:sign_extend_64(*(int32_t *)0x100ba2264)];
    return r0;
}

-(long long)uploadMaxEventsPerBundle {
    r0 = [self int64ValueFromCacheWithKey:@"measurement.upload.max_events_per_bundle" defaultValue:sign_extend_64(*(int32_t *)0x100ba2250) maxValue:sign_extend_64(*(int32_t *)0x100ba2254) minValue:sign_extend_64(*(int32_t *)0x100ba2258)];
    return r0;
}

-(int)uploadingRetryCount {
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.retry_count" defaultValue:*(int32_t *)0x100ba22b0 maxValue:*(int32_t *)0x100ba22b4 minValue:*(int32_t *)0x100ba22b8];
    return r0;
}

-(double)uploadingRetryInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.retry_time" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(int)maxRealtimeEventCountPerDay {
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.max_realtime_events_per_day" defaultValue:*(int32_t *)0x100ba22d4 maxValue:*(int32_t *)0x100ba22d8 minValue:*(int32_t *)0x100ba22dc];
    return r0;
}

-(int)maxBundlesCreatedPerIteration {
    r0 = self;
    asm { scvtf      d0, w8 };
    asm { scvtf      d1, w8 };
    asm { scvtf      d2, w8 };
    r0 = [r0 timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.max_bundles_created_per_iteration" defaultValue:r3 maxValue:r4 minValue:r5];
    asm { fcvtzs     w0, d0 };
    return r0;
}

-(double)uploadingDebugModeInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.debug_upload_interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(double)uploadingRealTimeInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.upload.realtime_upload_interval" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(bool)blacklistPublic {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.blacklist_public" defaultValue:*(int32_t *)0x100ba2314 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)blacklistInternal {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.upload.blacklist_internal" defaultValue:*(int32_t *)0x100ba2310 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isEventSamplingEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.event_sampling_enabled" defaultValue:*(int32_t *)0x100ba2318 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isTimeZoneOffsetEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.sampling.time_zone_offset_enabled" defaultValue:*(int32_t *)0x100ba2328 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(int)analyticsAccountTimeZoneOffsetMinutes {
    r0 = [self intValueFromCacheWithKey:@"measurement.account.time_zone_offset_minutes" defaultValue:*(int32_t *)0x100ba232c maxValue:*(int32_t *)0x100ba2330 minValue:*(int32_t *)0x100ba2334];
    return r0;
}

-(bool)checksumEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.quality.checksum" defaultValue:*(int32_t *)0x100ba2338 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(double)remoteConfigCacheTimeInterval {
    r0 = [self timeIntervalInSecondsFromCacheWithKey:@"measurement.config.cache_time" defaultValue:r3 maxValue:r4 minValue:r5];
    return r0;
}

-(bool)isResetAnalyticsDataEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.api.reset_analytics_data" defaultValue:*(int32_t *)0x100ba2148 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isScreenViewReporterDelegateEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self intValueFromCacheWithKey:@"measurement.screen.firebase_performance_delegate" defaultValue:*(int32_t *)0x100ba2390 maxValue:*(int32_t *)0x100ba2140 minValue:*(int32_t *)0x100ba2144];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)measurementConfigFromDatabase {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"measurementConfigFromDatabase"];
    if (*(int8_t *)(int64_t *)&r19->_isDefaultInstance != 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7157 message:@"Cannot retrieve a measurement configuration from the database for the default instance"];
            [r0 release];
            r21 = 0x0;
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_database);
            r21 = r0;
            r0 = [r0 queryMeasurementConfigWithError:&var_28];
            r29 = r29;
            r19 = [r0 retain];
            r20 = [var_28 retain];
            [r21 release];
            if (r19 != 0x0) {
                    r21 = [r19 retain];
            }
            else {
                    r21 = [[APMMeasurement monitor] retain];
                    if (r20 != 0x0) {
                            [r21 logWithLevel:0x1 messageCode:0x7158 message:@"Cannot retrieve configuration data from database. Error" context:r20];
                    }
                    else {
                            [r21 logWithLevel:0x7 messageCode:0x7159 message:@"Configuration was not found in database. The configuration will be fetched from the network when necessary"];
                    }
                    [r21 release];
                    r21 = 0x0;
            }
            [r19 release];
            [r20 release];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)numberFromString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r20 = [[r20->_numberFormatter numberFromString:r19] retain];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x715a message:@"Cannot parse number from non-string" context:r19];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)cacheValue:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r20 length] != 0x0) {
            [r21->_cachedValueByRemoteConfigKeys setObject:r19 forKeyedSubscript:r20];
            r21 = [r19 retain];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x715b message:@"Cannot cache empty configuration value"];
            [r0 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)numberFromCacheWithKey:(void *)arg2 defaultValue:(void *)arg3 maxValue:(void *)arg4 minValue:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self numberFromCacheWithKey:r23 defaultValue:r21 maxValue:r20 minValue:arg5 block:0x0] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)parseRemoteConfigFromMeasurementConfig:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r22 = self;
    r21 = [arg2 retain];
    r0 = [APMPBSetting class];
    r0 = sub_1001a80d8(r21, 0x3, r0);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = sub_1001a7b3c(r21, 0x1);
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 isEqual:r2] != 0x0) {
                    var_1F8 = @selector(class);
                    var_228 = r19;
                    var_218 = r21;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cachedExperimentIDs));
                    var_1E0 = r8;
                    [*(r22 + r8) removeAllObjects];
                    [r22->_cachedValueByRemoteConfigKeys removeAllObjects];
                    var_188 = q0;
                    var_220 = r20;
                    r0 = [r20 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1E8 = r0;
                    var_210 = r1;
                    r27 = objc_msgSend(r0, r1);
                    if (r27 != 0x0) {
                            r24 = *var_188;
                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_experimentIDMap));
                            do {
                                    r25 = 0x0;
                                    do {
                                            if (*var_188 != r24) {
                                                    objc_enumerationMutation(var_1E8);
                                            }
                                            r28 = *(var_190 + r25 * 0x8);
                                            r23 = [sub_1001a7b3c(r28, 0x0) retain];
                                            r28 = [sub_1001a7b3c(r28, 0x1) retain];
                                            [[[r22 cacheValue:r28 forKey:r23] retain] release];
                                            [r28 release];
                                            r0 = *(r22 + r26);
                                            r0 = [r0 objectForKeyedSubscript:r23];
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            if (r28 != 0x0) {
                                                    [*(r22 + var_1E0) addObject:r2];
                                            }
                                            [r28 release];
                                            [r23 release];
                                            r25 = r25 + 0x1;
                                    } while (r25 < r27);
                                    r27 = objc_msgSend(var_1E8, var_210);
                            } while (r27 != 0x0);
                    }
                    [var_1E8 release];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cachedEventConfigByEventName));
                    var_1F0 = r8;
                    [*(r22 + r8) removeAllObjects];
                    r0 = objc_msgSend(@class(APMPBEventConfig), var_1F8);
                    r0 = sub_1001a80d8(var_218, 0x4, r0);
                    r29 = r29;
                    r0 = [r0 retain];
                    var_1F8 = r0;
                    r25 = objc_msgSend(r0, var_210);
                    if (r25 != 0x0) {
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(var_1F8);
                                            }
                                            r26 = *(0x0 + r19 * 0x8);
                                            r0 = sub_1001a7b3c(r26, 0x0);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            if ([r0 length] != 0x0) {
                                                    r0 = sub_10018cef8();
                                                    r0 = [r0 retain];
                                                    r24 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:r23];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r28 = r0;
                                                    if (r28 == 0x0) {
                                                            if (!CPU_FLAGS & E) {
                                                                    r0 = r28;
                                                            }
                                                            else {
                                                                    r0 = r23;
                                                            }
                                                    }
                                                    [r0 retain];
                                                    [r28 release];
                                                    [r24 release];
                                                    [*(r22 + var_1F0) setObject:r2 forKeyedSubscript:r3];
                                                    r0 = r21;
                                            }
                                            else {
                                                    r0 = [APMMeasurement monitor];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 logWithLevel:0x4 messageCode:0x7155 message:@"Cannot cache event configuration with an empty configuration name"];
                                                    r0 = r0;
                                            }
                                            [r0 release];
                                            [r23 release];
                                            r19 = r19 + 0x1;
                                    } while (r19 < r25);
                                    r25 = objc_msgSend(var_1F8, var_210);
                            } while (r25 != 0x0);
                    }
                    r21 = var_218;
                    if (sub_1001a7578(r21, 0x0) != 0x0) {
                            r19 = sub_1001a78e8(r21, 0x0);
                            r20 = [[APMMeasurement monitor] retain];
                            r19 = [[NSNumber numberWithLongLong:r19] retain];
                            [r20 logWithLevel:0x7 messageCode:0x7156 message:@"Successfully parsed a configuration. Version" context:r19];
                            [r19 release];
                            [r20 release];
                    }
                    [var_1F8 release];
                    r19 = var_228;
                    r20 = var_220;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            r19 = r0;
            [r0 logWithLevel:0x1 messageCode:0x7154 message:@"Cannot parse empty measurement config. Using default values"];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(double)timeIntervalInSecondsFromCacheWithKey:(void *)arg2 defaultValue:(double)arg3 maxValue:(double)arg4 minValue:(double)arg5 {
    r20 = [arg2 retain];
    r19 = objc_retainBlock(0x100e6e4e8);
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[self numberFromCacheWithKey:r20 defaultValue:r23 maxValue:r24 minValue:r22 block:r19] retain];
    [r20 release];
    [r22 release];
    [r24 release];
    [r23 release];
    [r21 doubleValue];
    [r21 release];
    r0 = [r19 release];
    return r0;
}

-(void *)numberFromCacheWithKey:(void *)arg2 defaultValue:(void *)arg3 maxValue:(void *)arg4 minValue:(void *)arg5 block:(void *)arg6 {
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    if ([r19 length] != 0x0) {
            r0 = r24->_cachedValueByRemoteConfigKeys;
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    r27 = [r25 retain];
                    [NSNumber class];
                    if ([r27 isKindOfClass:r2] != 0x0) {
                            r24 = [r27 retain];
                            r27 = r24;
                    }
                    else {
                            r0 = [r24 numberFromString:r27];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r27 release];
                            if (r23 != 0x0) {
                                    r0 = (*(r23 + 0x10))(r23, r26);
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r26 release];
                                    r26 = r27;
                            }
                            if (r26 != 0x0 && (r22 == 0x0 || [r26 compare:r22] != -0x1)) {
                                    if (r21 != 0x0) {
                                            r0 = [r26 compare:r21];
                                            r27 = r26;
                                            if (r0 == 0x1) {
                                                    r27 = [r20 retain];
                                                    [r26 release];
                                            }
                                    }
                                    else {
                                            r27 = r26;
                                    }
                            }
                            else {
                                    r27 = [r20 retain];
                                    [r26 release];
                            }
                            r24 = [[r24 cacheValue:r27 forKey:r19] retain];
                    }
                    [r27 release];
            }
            else {
                    r24 = [[r24 cacheValue:r20 forKey:r19] retain];
            }
            [r25 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x715c message:@"Cannot get setting with empty key from cache"];
            [r0 release];
            r24 = 0x0;
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(int)intValueFromCacheWithKey:(void *)arg2 defaultValue:(int)arg3 maxValue:(int)arg4 minValue:(int)arg5 {
    r23 = @class(NSNumber);
    r25 = [arg2 retain];
    r21 = [[r23 numberWithInt:arg3] retain];
    r20 = [[NSNumber numberWithInt:arg4] retain];
    r19 = [[NSNumber numberWithInt:arg5] retain];
    r22 = [[self numberFromCacheWithKey:r25 defaultValue:r21 maxValue:r20 minValue:r19 block:0x0] retain];
    [r25 release];
    [r19 release];
    [r20 release];
    [r21 release];
    r19 = [r22 intValue];
    [r22 release];
    r0 = r19;
    return r0;
}

-(long long)int64ValueFromCacheWithKey:(void *)arg2 defaultValue:(long long)arg3 {
    r23 = [arg2 retain];
    r19 = [[NSNumber numberWithLongLong:arg3] retain];
    r20 = [[self numberFromCacheWithKey:r23 defaultValue:r19 maxValue:0x0 minValue:0x0 block:0x0] retain];
    [r23 release];
    [r19 release];
    r19 = [r20 longLongValue];
    [r20 release];
    r0 = r19;
    return r0;
}

-(long long)int64ValueFromCacheWithKey:(void *)arg2 defaultValue:(long long)arg3 maxValue:(long long)arg4 minValue:(long long)arg5 {
    r23 = @class(NSNumber);
    r25 = [arg2 retain];
    r21 = [[r23 numberWithLongLong:arg3] retain];
    r20 = [[NSNumber numberWithLongLong:arg4] retain];
    r19 = [[NSNumber numberWithLongLong:arg5] retain];
    r22 = [[self numberFromCacheWithKey:r25 defaultValue:r21 maxValue:r20 minValue:r19 block:0x0] retain];
    [r25 release];
    [r19 release];
    [r20 release];
    [r21 release];
    r19 = [r22 longLongValue];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_remoteConfigProto, 0x0);
    objc_storeStrong((int64_t *)&self->_numberFormatter, 0x0);
    objc_storeStrong((int64_t *)&self->_experimentIDMap, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedExperimentIDs, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedEventConfigByEventName, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedValueByRemoteConfigKeys, 0x0);
    objc_destroyWeak((int64_t *)&self->_database);
    objc_storeStrong((int64_t *)&self->_appID, 0x0);
    return;
}

@end