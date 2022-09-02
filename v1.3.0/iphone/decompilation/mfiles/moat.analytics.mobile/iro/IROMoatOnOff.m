@implementation IROMoatOnOff

+(unsigned long long)getDebug {
    return *0x1011dae10;
}

+(void)setDebug:(unsigned long long)arg2 {
    *0x1011dae10 = arg2;
    [IROMoatLogging setLoggingType:r2];
    return;
}

+(void)load {
    r0 = [NSMutableArray new];
    r8 = *0x1011dae18;
    *0x1011dae18 = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r8 = *0x1011dae20;
    *0x1011dae20 = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r8 = *0x1011dae28;
    *0x1011dae28 = r0;
    [r8 release];
    return;
}

+(void)initialize {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffe0 - 0x30;
    r19 = self;
    if ([IROMoatOnOff class] == r19) {
            objc_sync_enter(r19);
            if (*(int8_t *)0x1011dae30 != 0x0) {
                    objc_sync_exit(r19);
            }
            else {
                    *(int8_t *)0x1011dae30 = 0x1;
                    objc_sync_exit(r19);
                    *(int8_t *)0x1011dae31 = 0x1;
                    r0 = dispatch_get_global_queue(0x0, 0x0);
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    var_30 = 0xffffffffc2000000;
                    var_28 = 0x100753580;
                    r0 = dispatch_async(r0, &var_38);
                    [r20 release];
            }
    }
    return;
}

+(void)runStatusCheckInThread {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffe0 - 0x30;
    r19 = self;
    if ((*(int8_t *)0x1011dae31 & 0x1) == 0x0) {
            [NSDate timeIntervalSinceReferenceDate];
            if (d0 - *0x1011dae38 > *0x100bf3140) {
                    *(int8_t *)0x1011dae31 = 0x1;
                    r0 = dispatch_get_global_queue(0x0, 0x0);
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    var_30 = 0xffffffffc2000000;
                    var_28 = 0x100753654;
                    r0 = dispatch_async(r0, &var_38);
                    [r20 release];
            }
    }
    return;
}

+(void)checkQueue {
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
    r20 = self;
    r0 = *0x1011dae18;
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    while ([*0x1011dae18 count] != 0x0) {
            r0 = *0x1011dae18;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r25 = [r0 retain];
            [*0x1011dae18 removeObjectAtIndex:0x0];
            [r20 enqueueResurrection:r2];
            [r25 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)resurrect {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0 - 0x30;
    r20 = self;
    r0 = [IROMoatOnOff class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r20 checkQueue];
    r0 = *0x1011dae20;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = @selector(objectForKey:);
            [@"MoatAnalytics" retain];
            r0 = *0x1011dae20;
            r0 = objc_msgSend(r0, r21);
            r29 = r29;
            r21 = [r0 retain];
            [r20 processQueue:@"MoatAnalytics" withQueue:r21];
            [r21 release];
            [@"MoatAnalytics" release];
    }
    [*0x1011dae20 enumerateKeysAndObjectsUsingBlock:&var_58];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)runEnablerCheck {
    r31 = r31 + 0xffffffffffffff90 - 0x70;
    r19 = self;
    [NSDate timeIntervalSinceReferenceDate];
    v8 = v0;
    [r19 checkQueue];
    r21 = [[@"ebcaff90301390a6b947090cb72f2c7031e20e8c" substringToIndex:0x7] retain];
    var_C0 = d8 * *0x100b9b058;
    var_D0 = @"IRO";
    stack[-216] = r21;
    r22 = [[NSString stringWithFormat:@"https://z.moatads.com/%@/ios/%@/status.json?ts=%.0f&v=%@"] retain];
    r24 = [[NSURL URLWithString:r22] retain];
    r23 = [[NSURLRequest requestWithURL:r24 cachePolicy:0x0 timeoutInterval:r4] retain];
    [r24 release];
    r0 = [NSURLConnection sendSynchronousRequest:r23 returningResponse:&var_68 error:&var_70];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r24 = [var_68 retain];
    r26 = [var_70 retain];
    if ([r19 isDevelopmentEnvironment] == 0x0) goto loc_10075380c;

loc_1007537ec:
    *(int8_t *)0x1011dae40 = 0x1;
    [r19 resurrect];
    goto loc_100753a38;

loc_100753a38:
    r20 = 0x0;
    goto loc_100753a3c;

loc_100753a3c:
    [r25 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = [IROMoatOnOff class];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if ((r20 & 0x1) == 0x0) goto loc_100753b34;

loc_100753a98:
    r9 = *(int32_t *)0x1011dae44;
    r10 = r9 + 0x1;
    *(int32_t *)0x1011dae44 = r10;
    if (r9 > 0x9 || r10 == 0x0) goto loc_100753b3c;

loc_100753ab0:
    *(int8_t *)0x1011dae31 = 0x1;
    r20 = dispatch_time(0x0, 0xdf8475800);
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r29 = r29;
    r22 = [r0 retain];
    var_90 = 0xffffffffc2000000;
    var_88 = 0x100753c1c;
    var_80 = 0x100e8eb00;
    stack[-136] = r19;
    r0 = dispatch_after(r20, r22, &var_98);
    [r22 release];
    goto loc_100753b70;

loc_100753b70:
    objc_sync_exit(r21);
    [r21 release];
    return;

loc_100753b3c:
    if (*(int32_t *)0x1011dae44 >= 0xa) {
            *(int8_t *)0x1011dae40 = 0x0;
    }
    goto loc_100753b4c;

loc_100753b4c:
    *(int32_t *)0x1011dae44 = 0x0;
    *(int8_t *)0x1011dae31 = 0x0;
    [NSDate timeIntervalSinceReferenceDate];
    *0x1011dae38 = 0x403e000000000000;
    goto loc_100753b70;

loc_100753b34:
    *(int32_t *)0x1011dae44 = 0x0;
    goto loc_100753b4c;

loc_10075380c:
    if (r25 == 0x0 || r26 != 0x0) goto loc_1007539d8;

loc_100753814:
    var_A8 = [[IROMoatConfig alloc] initWithResponse:r25];
    if ([var_A8 isDebug] != 0x0) {
            [r19 setDebug:0x2];
    }
    [IROMoatLogging setSamplingRate:[var_A8 samplingRate]];
    if (([var_A8 isOn] & 0x1) != 0x0) {
            if (*(int8_t *)byte_1011dae40 == 0x0) {
                    var_D0 = @"3.5.1";
                    [IROMoatLogging reportDevLogWithClass:r19 format:@"Moat enabled - Version %@."];
            }
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 compare:@"8.0" options:0x40];
            [r0 release];
            [r28 release];
            if (r27 != -0x1) {
                    r2 = [var_A8 isAppLocationBlacklisted];
                    [IROMoatLocationManager setLocationServicesBlacklisted:r2];
                    [var_A8 vwIntervalMillis];
                    r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
                    asm { scvtf      d0, w20 };
                    asm { fdiv       d8, d0, d9 };
                    r0 = [r0 retain];
                    [r0 setViewabilityTimerDuration:r2];
                    [r0 release];
                    *(int8_t *)0x1011dae40 = 0x1;
                    [r19 resurrect];
            }
            else {
                    *(int8_t *)0x1011dae40 = 0x0;
            }
    }
    else {
            if (*(int8_t *)byte_1011dae40 != 0x0) {
                    [IROMoatLogging reportDevLogWithClass:r19 format:@"Moat disabled."];
            }
            *(int8_t *)0x1011dae40 = 0x0;
    }
    [var_A8 release];
    goto loc_100753a38;

loc_1007539d8:
    if (r26 != 0x0) {
            var_D0 = r26;
            [IROMoatLogging reportDevLogWithClass:r19 format:@"Moat connection error: %@"];
    }
    r20 = 0x1;
    goto loc_100753a3c;
}

+(void)processQueue:(void *)arg2 withQueue:(void *)arg3 {
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
    r0 = [arg3 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            do {
                    r24 = @selector(removeObjectForKey:);
                    r27 = [[r20 firstObject] retain];
                    [r20 removeObjectAtIndex:0x0];
                    r0 = *0x1011dae28;
                    r0 = [r0 objectForKeyedSubscript:r19];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 objectForKeyedSubscript:r27];
                    r29 = r29;
                    r26 = [r0 retain];
                    objc_msgSend(r28, r24);
                    if (r26 != 0x0) {
                            dispatch_async(*__dispatch_main_q, r26);
                    }
                    r25 = @selector(count);
                    [r26 release];
                    [r28 release];
                    [r27 release];
            } while (objc_msgSend(r20, r25) != 0x0);
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)enqueueResurrection:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] == 0x3) {
            r20 = [[r19 objectAtIndexedSubscript:0x1] retain];
            r21 = [[r19 objectAtIndexedSubscript:0x2] retain];
            r0 = *0x1011dae20;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r24 = *0x1011dae20;
                    r26 = [NSMutableOrderedSet new];
                    [r24 setObject:r26 forKeyedSubscript:r20];
                    [r26 release];
            }
            r0 = *0x1011dae28;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r24 = *0x1011dae28;
                    r26 = [NSMutableDictionary new];
                    [r24 setObject:r26 forKeyedSubscript:r20];
                    [r26 release];
            }
            r23 = @selector(count);
            r24 = [[*0x1011dae20 objectForKeyedSubscript:r2] retain];
            r0 = *0x1011dae28;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            if (objc_msgSend(r24, r23) >= 0xa) {
                    r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_70 = 0xffffffffc2000000;
                    var_68 = 0x100754310;
                    var_60 = 0x100e8eb60;
                    var_58 = [r25 retain];
                    r0 = [r24 enumerateObjectsAtIndexes:r23 options:0x0 usingBlock:&var_78];
                    [r24 removeObjectsAtIndexes:r23];
                    [var_58 release];
                    [r23 release];
            }
            if (([r24 containsObject:r2] & 0x1) != 0x0) {
                    [r24 removeObject:r21];
            }
            [r24 addObject:r21];
            r0 = [r19 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r22 = [r0 retain];
            [r25 setObject:r22 forKeyedSubscript:r21];
            [r22 release];
            [r25 release];
            [r24 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

+(unsigned long long)getStatus {
    return *(int8_t *)0x1011dae40;
}

+(bool)isDevelopmentEnvironment {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 environment];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void)onResurrectionDo:(void *)arg2 withQueue:(void *)arg3 withKey:(void *)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r22 = self;
    r27 = *___stack_chk_guard;
    r27 = *r27;
    var_58 = r27;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = *0x1011dae18;
    r0 = [r0 retain];
    r23 = r0;
    objc_sync_enter(r0);
    r25 = *0x1011dae18;
    r24 = objc_retainBlock(r19);
    stack[-120] = r20;
    var_60 = r21;
    r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r25 addObject:r26];
    [r26 release];
    [r24 release];
    if ([r22 getStatus] == 0x1) {
            [r22 resurrect];
    }
    objc_sync_exit(r23);
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (r27 != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end