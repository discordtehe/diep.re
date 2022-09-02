@implementation APMMonitoringSampledData

-(void *)initWithArray:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            if ([APMMonitoringSampledData isValidUserDefaultsArrayEntry:r19] != 0x0) {
                    r0 = [NSMutableArray alloc];
                    r0 = [r0 initWithArray:r19];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_sampledData));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    r0 = r8;
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_sampledData));
                    r0 = *(r20 + r8);
                    *(r20 + r8) = 0x0;
            }
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)insertOrUpdateSampledDataWithKey:(void *)arg2 encodedContext:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_sampledData));
    if ([*(r21 + r25) count] == 0x4) {
            r0 = *(r21 + r25);
            r0 = [r0 objectAtIndexedSubscript:0x1];
            r0 = [r0 retain];
            r23 = [r0 intValue] + 0x1;
            [r0 release];
            [[NSNumber numberWithInt:r23] retain];
            [*(r21 + r25) setObject:r2 atIndexedSubscript:r3];
            [r24 release];
            if (arc4random_uniform(r23) == 0x0) {
                    [*(r21 + r25) setObject:r2 atIndexedSubscript:r3];
                    [*(r21 + r25) setObject:r2 atIndexedSubscript:r3];
            }
    }
    else {
            r23 = [[NSDate date] retain];
            r24 = [@(0x1) retain];
            r0 = [APMMonitoringSampledData sampledDataEntryWithKey:r19 timestamp:r23 context:r20 population:r24];
            r0 = [r0 retain];
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            [r24 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)sampledData {
    r0 = self->_sampledData;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)monitoringDataForDispatchWithSamplePeriod:(double)arg2 lastSampledTimestamp:(double)arg3 {
    r2 = arg2;
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r0 = [NSDate date];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_sampledData));
    if ([*(r20 + r28) count] == 0x4) {
            r21 = [[r19 dateByAddingTimeInterval:r2] retain];
            r0 = *(r20 + r28);
            r0 = [r0 objectAtIndexedSubscript:0x3];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 compare:r21] != -0x1) {
                    r23 = 0x0;
            }
            else {
                    r25 = [[*(r20 + r28) objectAtIndexedSubscript:0x2] retain];
                    r26 = [[*(r20 + r28) objectAtIndexedSubscript:0x1] retain];
                    r27 = [[*(r20 + r28) objectAtIndexedSubscript:0x0] retain];
                    r23 = [[APMMonitoringSampledData monitoringURLParamWithKey:r25 population:r26 context:r27] retain];
                    [r27 release];
                    [r26 release];
                    [r25 release];
                    r0 = *(r20 + r28);
                    *(r20 + r28) = 0x0;
                    [r0 release];
            }
            [r22 release];
            [r21 release];
    }
    else {
            if (d9 > 0x0) {
                    [r19 timeIntervalSince1970];
                    if (Abs(d9 - d0) > d8) {
                            r23 = @"0:";
                            [r23 retain];
                    }
                    else {
                            r23 = 0x0;
                    }
            }
            else {
                    r23 = 0x0;
            }
    }
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)monitoringURLParamWithKey:(void *)arg2 population:(void *)arg3 context:(void *)arg4 {
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
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [arg4 retain];
    r19 = r0;
    r24 = [r0 length];
    r22 = [arg3 intValue];
    [r23 release];
    if (r24 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
    }
    else {
            r0 = [NSString stringWithFormat:r2];
    }
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)isValidUserDefaultsArrayEntry:(void *)arg2 {
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
    [NSArray class];
    if ([r19 isKindOfClass:r2] != 0x0 && [r19 count] == 0x4) {
            r21 = @selector(isKindOfClass:);
            r0 = [r19 objectAtIndexedSubscript:r2];
            r29 = r29;
            r23 = [r0 retain];
            [NSString class];
            r24 = objc_msgSend(r23, r21);
            [r23 release];
            if (r24 != 0x0) {
                    r21 = @selector(isKindOfClass:);
                    r0 = [r19 objectAtIndexedSubscript:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [NSNumber class];
                    r24 = objc_msgSend(r23, r21);
                    [r23 release];
                    if (r24 != 0x0) {
                            r21 = @selector(isKindOfClass:);
                            r0 = [r19 objectAtIndexedSubscript:r2];
                            r29 = r29;
                            r23 = [r0 retain];
                            [NSString class];
                            r24 = objc_msgSend(r23, r21);
                            [r23 release];
                            if (r24 != 0x0) {
                                    r21 = @selector(isKindOfClass:);
                                    r22 = [[r19 objectAtIndexedSubscript:r2] retain];
                                    [NSDate class];
                                    r20 = objc_msgSend(r22, r21);
                                    [r22 release];
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r20 = 0x0;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sampledData, 0x0);
    return;
}

+(void *)sampledDataEntryWithKey:(void *)arg2 timestamp:(void *)arg3 context:(void *)arg4 population:(void *)arg5 {
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
    r22 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = 0x0;
    if (r19 != 0x0) {
            r23 = 0x0;
            if (r20 != 0x0) {
                    r23 = 0x0;
                    if (r21 != 0x0) {
                            r23 = 0x0;
                            if (r22 != 0x0) {
                                    r25 = [r22 retain];
                                    r0 = [NSMutableArray alloc];
                                    r0 = [r0 initWithCapacity:0x4];
                                    r23 = r0;
                                    [r0 setObject:r21 atIndexedSubscript:0x0];
                                    [r23 setObject:r22 atIndexedSubscript:0x1];
                                    [r25 release];
                                    [r23 setObject:r19 atIndexedSubscript:0x2];
                                    [r23 setObject:r20 atIndexedSubscript:0x3];
                            }
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

@end