@implementation VNGMoatOnOff

+(unsigned long long)getDebug {
    return *0x1011da9f8;
}

+(void)load {
    r0 = [NSMutableArray new];
    r8 = *0x1011daa00;
    *0x1011daa00 = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r8 = *0x1011daa08;
    *0x1011daa08 = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r8 = *0x1011daa10;
    *0x1011daa10 = r0;
    [r8 release];
    return;
}

+(void)setDebug:(unsigned long long)arg2 {
    r2 = arg2;
    if (*0x1011da9f8 != 0x2) {
            *0x1011da9f8 = r2;
            [VNGMoatLogging setLoggingType:r2];
    }
    return;
}

+(void)initialize {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([VNGMoatOnOff class] == r19) {
            objc_sync_enter(r19);
            if (*(int8_t *)0x1011daa18 != 0x0) {
                    objc_sync_exit(r19);
            }
            else {
                    *(int8_t *)0x1011daa18 = 0x1;
                    objc_sync_exit(r19);
                    *(int8_t *)0x1011daa19 = 0x1;
                    r0 = dispatch_get_global_queue(0x0, 0x0);
                    r0 = [r0 retain];
                    dispatch_async(r0, &var_38);
                    [r20 release];
            }
    }
    return;
}

+(void)runStatusCheckInThread {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ((*(int8_t *)0x1011daa19 & 0x1) == 0x0) {
            [NSDate timeIntervalSinceReferenceDate];
            if (d0 - *0x1011daa20 > *0x100bf3140) {
                    *(int8_t *)0x1011daa19 = 0x1;
                    r0 = dispatch_get_global_queue(0x0, 0x0);
                    r0 = [r0 retain];
                    dispatch_async(r0, &var_38);
                    [r20 release];
            }
    }
    return;
}

+(void)resurrect {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [VNGMoatOnOff class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r20 checkQueue];
    r0 = *0x1011daa08;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = @selector(objectForKey:);
            [@"MoatAnalytics" retain];
            r21 = [objc_msgSend(*0x1011daa08, r21) retain];
            [r20 processQueue:@"MoatAnalytics" withQueue:r21];
            [r21 release];
            [@"MoatAnalytics" release];
    }
    [*0x1011daa08 enumerateKeysAndObjectsUsingBlock:&var_58];
    objc_sync_exit(r19);
    [r19 release];
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
    r0 = *0x1011daa00;
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    while ([*0x1011daa00 count] != 0x0) {
            r0 = *0x1011daa00;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r29 = r29;
            [r0 retain];
            [*0x1011daa00 removeObjectAtIndex:0x0];
            [r20 enqueueResurrection:r2];
            [r25 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)runEnablerCheck {
    r31 = r31 - 0xe0;
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
    r19 = self;
    [NSDate timeIntervalSinceReferenceDate];
    v8 = v0;
    [r19 checkQueue];
    r21 = [[@"fe8a38d01af3d533b53f4a904cdfe24324c4913f" substringToIndex:0x7] retain];
    r22 = [[NSString stringWithFormat:@"https://z.moatads.com/%@/ios/%@/status.json?ts=%.0f&v=%@"] retain];
    r24 = [[NSURL URLWithString:r22] retain];
    r23 = [[NSURLRequest requestWithURL:r24 cachePolicy:0x0 timeoutInterval:r4] retain];
    [r24 release];
    r0 = [NSURLConnection sendSynchronousRequest:r23 returningResponse:&var_68 error:&var_70];
    r29 = &saved_fp;
    r25 = [r0 retain];
    var_A0 = [var_68 retain];
    r26 = [var_70 retain];
    r27 = [[VNGMoatConfig alloc] initWithResponse:r25];
    if ([r27 isDebug] != 0x0) {
            [r19 setDebug:0x2];
    }
    [VNGMoatLogging setSamplingRate:[r27 samplingRate]];
    if ([r19 isDevelopmentEnvironment] == 0x0) goto loc_10067a950;

loc_10067a92c:
    *(int8_t *)0x1011daa28 = 0x1;
    [r19 resurrect];
    goto loc_10067a948;

loc_10067a948:
    r20 = 0x0;
    goto loc_10067aacc;

loc_10067aacc:
    [r27 release];
    [r25 release];
    [r26 release];
    [var_A0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = [VNGMoatOnOff class];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if ((r20 & 0x1) == 0x0) goto loc_10067abd4;

loc_10067ab34:
    r9 = *(int32_t *)0x1011daa2c;
    r10 = r9 + 0x1;
    *(int32_t *)0x1011daa2c = r10;
    if (r9 > 0x9 || r10 == 0x0) goto loc_10067ac30;

loc_10067ab4c:
    *(int8_t *)0x1011daa19 = 0x1;
    dispatch_after(dispatch_time(0x0, 0xdf8475800), [dispatch_get_global_queue(0x0, 0x0) retain], &var_98);
    [r22 release];
    goto loc_10067abfc;

loc_10067abfc:
    objc_sync_exit(r21);
    [r21 release];
    return;

loc_10067ac30:
    if (*(int32_t *)0x1011daa2c >= 0xa) {
            *(int8_t *)0x1011daa28 = 0x0;
    }
    goto loc_10067abd8;

loc_10067abd8:
    *(int32_t *)0x1011daa2c = 0x0;
    *(int8_t *)0x1011daa19 = 0x0;
    [NSDate timeIntervalSinceReferenceDate];
    *0x1011daa20 = 0x403e000000000000;
    goto loc_10067abfc;

loc_10067abd4:
    *(int32_t *)0x1011daa2c = 0x0;
    goto loc_10067abd8;

loc_10067a950:
    if (r25 == 0x0 || r26 != 0x0) goto loc_10067aa74;

loc_10067a958:
    if (([r27 isOn] & 0x1) == 0x0) goto loc_10067aaa0;

loc_10067a974:
    if (*(int8_t *)byte_1011daa28 == 0x0) {
            [VNGMoatLogging reportDevLogWithClass:r19 format:@"Moat enabled - Version %@."];
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r28 release];
    if (r24 == -0x1) goto loc_10067aac0;

loc_10067aa04:
    r2 = @"8.0";
    [r27 vwIntervalMillis];
    r0 = [VNGMoatJSUpdateTimer sharedJSUpdateTimer];
    asm { scvtf      d0, w20 };
    asm { fdiv       d8, d0, d9 };
    r0 = [r0 retain];
    [r0 setViewabilityTimerDuration:r2];
    [r0 release];
    *(int8_t *)0x1011daa28 = 0x1;
    [r19 resurrect];
    goto loc_10067a948;

loc_10067aac0:
    r20 = 0x0;
    *(int8_t *)0x1011daa28 = 0x0;
    goto loc_10067aacc;

loc_10067aaa0:
    if (*(int8_t *)byte_1011daa28 != 0x0) {
            [VNGMoatLogging reportDevLogWithClass:r19 format:@"Moat disabled."];
    }
    goto loc_10067aac0;

loc_10067aa74:
    if (r26 != 0x0) {
            [VNGMoatLogging reportDevLogWithClass:r19 format:@"Moat connection error: %@"];
    }
    r20 = 0x1;
    goto loc_10067aacc;
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
                    r0 = *0x1011daa10;
                    r0 = [r0 objectForKeyedSubscript:r19];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 objectForKeyedSubscript:r27];
                    r29 = r29;
                    r26 = [r0 retain];
                    objc_msgSend(r28, r24);
                    if (r26 != 0x0) {
                            dispatch_async(*__dispatch_main_q, r26);
                            [r26 release];
                    }
                    r25 = @selector(count);
                    [r28 release];
                    [r27 release];
            } while (objc_msgSend(r20, r25) != 0x0);
    }
    [r20 release];
    [r19 release];
    return;
}

+(unsigned long long)getStatus {
    return *(int8_t *)0x1011daa28;
}

+(void)enqueueResurrection:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] == 0x3) {
            r20 = [[r19 objectAtIndexedSubscript:0x1] retain];
            r21 = [[r19 objectAtIndexedSubscript:0x2] retain];
            r0 = *0x1011daa08;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r24 = *0x1011daa08;
                    r26 = [NSMutableOrderedSet new];
                    [r24 setObject:r26 forKeyedSubscript:r20];
                    [r26 release];
            }
            r0 = *0x1011daa10;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r24 = *0x1011daa10;
                    r26 = [NSMutableDictionary new];
                    [r24 setObject:r26 forKeyedSubscript:r20];
                    [r26 release];
            }
            r23 = @selector(count);
            r24 = [[*0x1011daa08 objectForKeyedSubscript:r2] retain];
            r0 = *0x1011daa10;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            if (objc_msgSend(r24, r23) >= 0xa) {
                    r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_58 = [r25 retain];
                    [r24 enumerateObjectsAtIndexes:r23 options:0x0 usingBlock:&var_78];
                    [r24 removeObjectsAtIndexes:r23];
                    [var_58 release];
                    [r23 release];
            }
            if (([r24 containsObject:r2] & 0x1) != 0x0) {
                    [r24 removeObject:r21];
            }
            [r24 addObject:r21];
            r22 = [[r19 objectAtIndexedSubscript:0x0] retain];
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
    r31 = r31 - 0x70;
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
    r21 = [arg4 retain];
    r0 = *0x1011daa00;
    r0 = [r0 retain];
    r23 = r0;
    objc_sync_enter(r0);
    r25 = *0x1011daa00;
    r24 = objc_retainBlock(r19);
    r0 = [NSArray arrayWithObjects:&var_60 count:0x3];
    r26 = [r0 retain];
    [r25 addObject:r26];
    [r26 release];
    [r24 release];
    if ([r22 getStatus] == 0x1) {
            [r22 resurrect];
    }
    var_48 = **___stack_chk_guard;
    objc_sync_exit(r23);
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end