@implementation GADRequestStatisticsSignals

+(void *)sharedInstance {
    if (*qword_1011db820 != -0x1) {
            dispatch_once(0x1011db820, 0x100e90df8);
    }
    r0 = *0x1011db818;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.ad-request-metrics", 0x0, 0x15);
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            asm { stlr       x9, [x8] };
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_applicationMetrics));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestMetricsBySequenceNumber));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMapTable strongToStrongObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adMetricsByAdContext));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_unfinalizedAdsBySequenceNumber));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = *(r19 + r22);
            [r19 retain];
            dispatch_async(r20, &var_68);
            [r21 observeRequests];
            [r21 observeAppEvents];
            [r21 observeAdEvents];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void)observeRequests {
    [self addSynchronizedObserverForName:*0x100e9c180 fromInstanceOfClass:[GADServerRequest class] block:0x100e90e68];
    [self addSynchronizedObserverForName:*0x100e9c170 fromInstanceOfClass:[GADServerRequest class] block:0x100e90ea8];
    return;
}

-(void)observeAppEvents {
    [self addSynchronizedObserverForName:**_UIApplicationWillEnterForegroundNotification fromInstanceOfClass:0x0 block:0x100e90ee8];
    [self addSynchronizedObserverForName:**_UIApplicationWillResignActiveNotification fromInstanceOfClass:0x0 block:0x100e90f28];
    return;
}

-(void)observeAdEvents {
    [self addSynchronizedObserverForName:*0x100e9c1a8 fromInstanceOfClass:[GADServerRequest class] block:0x100e90f68];
    [self addSynchronizedObserverForName:*0x100e9c090 fromInstanceOfClass:[GADAd class] block:0x100e90fa8];
    [self addSynchronizedObserverForName:*0x100e9bfe8 fromInstanceOfClass:[GADAd class] block:0x100e90fe8];
    [self addSynchronizedObserverForName:**_UIApplicationWillEnterForegroundNotification fromInstanceOfClass:0x0 block:0x100e91028];
    [self addSynchronizedObserverForName:*0x100e9c158 fromInstanceOfClass:0x0 block:0x100e91068];
    return;
}

-(void)addSynchronizedObserverForName:(void *)arg2 fromInstanceOfClass:(void *)arg3 block:(void *)arg4 {
    [arg2 retain];
    [arg4 retain];
    objc_initWeak(&stack[-72], self);
    objc_copyWeak(&var_70 + 0x28, &stack[-72]);
    r21 = [r23 retain];
    [r22 addObserverForName:r19 object:0x0 queue:0x0 usingBlock:&var_70];
    [r21 release];
    objc_destroyWeak(&var_70 + 0x28);
    objc_destroyWeak(&stack[-72]);
    [r21 release];
    [r19 release];
    return;
}

-(long long)nextSequenceNumber {
    r0 = self;
    do {
            asm { ldaxr      x0, [x8] };
            asm { stlxr      w10, x9, [x8] };
    } while (r10 != 0x0);
    return r0;
}

-(void)addServerRequest:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 signals];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 signals];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e95da0];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e95da8];
            r29 = r29;
            r20 = [r0 retain];
            [r25 release];
            [r23 release];
            if (r20 != 0x0) {
                    r0 = [r20 objectForKeyedSubscript:*0x100e9b340];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r28 = sign_extend_64(*(int32_t *)ivar_offset(_requestMetricsBySequenceNumber));
                            r0 = *(r21 + r28);
                            r0 = [r0 objectForKeyedSubscript:r23];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r26 = [[r19 context] retain];
                                    r0 = *(r21 + r28);
                                    r0 = [r0 objectForKeyedSubscript:r23];
                                    r29 = r29;
                                    [r0 retain];
                                    sub_1007ce06c(r26, @"Tried to add a request that already has metrics.\nRequest: %@\nMetrics: %@");
                                    [r27 release];
                                    [r26 release];
                            }
                            r26 = [[NSMutableDictionary alloc] init];
                            r0 = [r19 signals];
                            r0 = [r0 retain];
                            sub_100822058(r26, *0x100e9b368, [[r0 objectForKeyedSubscript:*0x100e95cb0] retain]);
                            [r24 release];
                            [r22 release];
                            sub_100822058(r26, *0x100e9b340, r23);
                            sub_100822058(*(r21 + r28), r23, r26);
                            r0 = r26;
                    }
                    else {
                            r0 = [r19 context];
                            r0 = [r0 retain];
                            sub_1007ce06c(r0, @"Issued a request without a sequence number.\nRequest: %@\nApp metrics: %@");
                            r0 = r21;
                    }
                    [r0 release];
                    r0 = r23;
            }
            else {
                    r0 = [r19 context];
                    r0 = [r0 retain];
                    sub_1007ce06c(r0, @"Issued a request without any quality statistics.\nRequest: %@");
                    r0 = r21;
            }
            [r0 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)setAds:(void *)arg2 forRequest:(void *)arg3 {
    r31 = r31 - 0x1e0;
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
    r22 = self;
    r21 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = sub_1007e62b4();
    r29 = &saved_fp;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_unfinalizedAdsBySequenceNumber));
            var_190 = r8;
            sub_100822058(*(r22 + r8), r27, [[NSMutableSet alloc] init]);
            [r24 release];
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r20 = r0;
            sub_100822058(r0, *0x100e9b340, r27);
            r0 = [r21 count];
            var_1C0 = r25;
            var_188 = r20;
            if (r0 != 0x0) {
                    [r22 cleanUpMetricsSentByRequest:r25];
                    r0 = [NSNumber numberWithLongLong:sub_1008b99f8()];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r22 setValue:r19 forRequest:r25 signal:*0x100e9b378];
                    r0 = r19;
            }
            else {
                    r19 = r22->_adMetricsByAdContext;
                    [r20 mutableCopy];
                    r0 = [r25 context];
                    r29 = r29;
                    [r0 retain];
                    [r19 setObject:r2 forKey:r3];
                    [r23 release];
                    r0 = r20;
            }
            [r0 release];
            var_1B8 = r21;
            r0 = [r21 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1B0 = r1;
            var_1A8 = r0;
            r0 = objc_msgSend(r0, r1);
            var_170 = r0;
            if (r0 != 0x0) {
                    r26 = &var_168 + 0x30;
                    var_1A0 = sign_extend_64(*(int32_t *)ivar_offset(_adMetricsByAdContext));
                    do {
                            r28 = 0x0;
                            do {
                                    r19 = r27;
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_1A8);
                                    }
                                    r23 = [[*(0x0 + r28 * 0x8) context] retain];
                                    r21 = *(r22 + var_1A0);
                                    r27 = [var_188 mutableCopy];
                                    [r21 setObject:r27 forKey:r23];
                                    [r27 release];
                                    r0 = *(r22 + var_190);
                                    r27 = r19;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    sub_100822430(r0, r23);
                                    [r21 release];
                                    objc_initWeak(&stack[-320], r22);
                                    objc_copyWeak(r26, &stack[-320]);
                                    var_148 = [r27 retain];
                                    [r23 retain];
                                    sub_100847da0(r24, &var_168);
                                    [r23 release];
                                    [var_148 release];
                                    objc_destroyWeak(r26);
                                    objc_destroyWeak(&stack[-320]);
                                    [r23 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < var_170);
                            r0 = objc_msgSend(var_1A8, var_1B0);
                            var_170 = r0;
                    } while (r0 != 0x0);
            }
            [var_1A8 release];
            [var_188 release];
            r25 = var_1C0;
            r21 = var_1B8;
    }
    else {
            r0 = [r25 signals];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    sub_1007ce06c(0x0, @"Request must have a sequence number by the time it finishes load. Request: %@");
            }
    }
    var_68 = **___stack_chk_guard;
    [r27 release];
    [r25 release];
    [r21 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)knownAdContexts {
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
    r19 = [[NSMutableSet alloc] init];
    r0 = self->_adMetricsByAdContext;
    r0 = [r0 keyEnumerator];
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
                            sub_100822430(r19, *(0x0 + r24 * 0x8));
                            r24 = r24 + 0x1;
                    } while (r24 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)recordClickForAd:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = r21->_adMetricsByAdContext;
    r23 = [[r0 context] retain];
    r0 = [r20 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (r20 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:*0x100e9b398];
            r0 = [r0 retain];
            r21 = r0;
            sub_100822058(r20, *0x100e9b398, [[NSNumber numberWithLong:[r0 integerValue] + 0x1] retain]);
            [r24 release];
            r22 = [[NSMutableDictionary alloc] init];
            sub_100822058(r22, *0x100e9b388, [[NSNumber numberWithLongLong:sub_1008b99f8()] retain]);
            [r27 release];
            r0 = [r20 objectForKeyedSubscript:*0x100e9b380];
            r29 = r29;
            r27 = [r0 retain];
            if (r27 != 0x0) {
                    r0 = [r27 retain];
            }
            else {
                    r0 = [NSArray alloc];
                    r0 = [r0 init];
            }
            [r27 release];
            sub_100822058(r20, *0x100e9b380, [[r0 arrayByAddingObject:r22] retain]);
            [r24 release];
            [r23 release];
            [r22 release];
            r0 = r21;
    }
    else {
            r22 = [[r19 context] retain];
            [[r21 knownAdContexts] retain];
            sub_1007ce06c(r22, @"Must collect metrics for returned ads before click time.\nAd: %@\nKnown contexts: %@");
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)resetQualitySessionIfNeeded {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b410];
    [r0 release];
    sub_1008b9904();
    r19 = [sub_1007da734() retain];
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"GADRequestStatisticsSignals.lastUserEngagementSinceBoot"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r0 release];
    r8 = &@selector(alloc);
    r21 = *(r8 + 0xbf0);
    objc_msgSend(r20, r21);
    d0 = d9 - d10;
    if (d10 > 0x0) {
            r8 = &@selector(alloc);
            if (CPU_FLAGS & G) {
                    r8 = 0x1;
            }
    }
    if (d0 > d8) {
            if (CPU_FLAGS & G) {
                    r9 = 0x1;
            }
    }
    if (d0 > 0x0) {
            asm { ccmp       w8, #0x0, #0x0, hi };
    }
    if (!CPU_FLAGS & E) {
            objc_msgSend(r20, r21);
            objc_msgSend(r20, r21);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)endClickEventForExitingAd {
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
    r19 = objc_loadWeakRetained((int64_t *)&self->_appExitingAd);
    objc_storeWeak((int64_t *)&self->_appExitingAd, 0x0);
    r20 = self->_adMetricsByAdContext;
    r21 = [[r19 context] retain];
    r0 = [r20 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_1007e8228;

loc_1007e8070:
    var_120 = r19;
    r0 = [r20 objectForKeyedSubscript:*0x100e9b380];
    r0 = [r0 retain];
    var_128 = r0;
    r0 = [r0 reverseObjectEnumerator];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    r27 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r27 == 0x0) goto loc_1007e8178;

loc_1007e8104:
    r19 = 0x0;
    goto loc_1007e8108;

loc_1007e8108:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r24);
    }
    r28 = *(0x0 + r19 * 0x8);
    r0 = [r28 objectForKeyedSubscript:*0x100e9b390];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007e81d0;

loc_1007e814c:
    r19 = r19 + 0x1;
    if (r19 < r27) goto loc_1007e8108;

loc_1007e8158:
    r27 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r27 != 0x0) goto loc_1007e8104;

loc_1007e8178:
    [r24 release];
    r22 = var_128;
    r0 = [r22 count];
    r19 = var_120;
    if (r0 == 0x0) {
            r0 = [r19 context];
            r0 = [r0 retain];
            sub_1007ce06c(r0, @"Ad that left the app must do so as part of an ongoing click.\nAd: %@\nMetrics: %@");
            [r21 release];
    }
    goto loc_1007e8220;

loc_1007e8220:
    [r22 release];
    goto loc_1007e8228;

loc_1007e8228:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1007e81d0:
    sub_100822058(r28, *0x100e9b390, [[NSNumber numberWithLongLong:sub_1008b99f8()] retain]);
    [r21 release];
    [r24 release];
    r22 = var_128;
    r19 = var_120;
    goto loc_1007e8220;
}

-(void)endClickEventsForContext:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adMetricsByAdContext));
    r0 = *(r21 + r27);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r19 retain];
    var_128 = r0;
    if (r0 == 0x0) goto loc_1007e8360;

loc_1007e82f0:
    r25 = r20;
    r24 = r0;
    goto loc_1007e8300;

loc_1007e8300:
    r22 = @selector(objectForKey:);
    r0 = *(r21 + r27);
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r20 = [r0 retain];
    [r25 release];
    if (r20 != 0x0) goto loc_1007e8358;

loc_1007e8328:
    r0 = [r24 parent];
    r29 = r29;
    r26 = [r0 retain];
    [r24 release];
    r25 = r20;
    r24 = r26;
    if (r26 != 0x0) goto loc_1007e8300;

loc_1007e8354:
    r24 = 0x0;
    goto loc_1007e8358;

loc_1007e8358:
    [r24 release];
    goto loc_1007e8360;

loc_1007e8360:
    var_130 = r20;
    r0 = [r20 objectForKeyedSubscript:*0x100e9b380];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            r27 = *(0x0 + r20 * 0x8);
                            r0 = [r27 objectForKeyedSubscript:*0x100e9b390];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == 0x0) {
                                    sub_1008b99f8();
                                    r0 = objc_msgSend(@class(NSNumber), r26);
                                    r29 = r29;
                                    sub_100822058(r27, r25, [r0 retain]);
                                    [r28 release];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r24 = objc_msgSend(r22, var_120);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [var_130 release];
    [var_128 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setValue:(void *)arg2 forRequest:(void *)arg3 signal:(void *)arg4 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = sub_1007e62b4();
    r29 = &saved_fp;
    r22 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_requestMetricsBySequenceNumber));
    if (r22 != 0x0) {
            r0 = *(r23 + r25);
            r0 = [r0 objectForKeyedSubscript:r22];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    sub_100822058(r24, r21, r19);
                    r0 = r24;
            }
            else {
                    [[*(r23 + r25) allKeys] retain];
                    sub_1007ce06c(0x0, @"Unrecognized request.\nRequest: %@\nKnown request sequence numbers: %@");
                    r0 = r23;
            }
    }
    else {
            [[*(r23 + r25) allKeys] retain];
            sub_1007ce06c(0x0, @"Unrecognized request.\nRequest: %@\nKnown request sequence numbers: %@");
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasFinalizedStatisticsForSequenceNumber:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_unfinalizedAdsBySequenceNumber));
    r0 = *(r20 + r23);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r20 + r23);
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 count] == 0x0) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)updateRequestTimeMetrics {
    sub_100822058(*(self + sign_extend_64(*(int32_t *)ivar_offset(_applicationMetrics))), *0x100e9b340, [[NSNumber numberWithLong:[self nextSequenceNumber]] retain]);
    [r22 release];
    sub_100822058(*(self + r23), *0x100e9b348, [[NSNumber numberWithInteger:*(self + sign_extend_64(*(int32_t *)ivar_offset(_previousRequestCount)))] retain]);
    [r22 release];
    *(self + r23) = *(self + r23) + 0x1;
    return;
}

-(void *)adStatistics {
    r31 = r31 - 0x190;
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
    var_140 = [[NSMutableArray alloc] init];
    r0 = r19->_adMetricsByAdContext;
    r0 = [r0 objectEnumerator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r1;
    var_168 = r0;
    r0 = objc_msgSend(r0, r1);
    var_120 = r0;
    if (r0 != 0x0) {
            var_160 = sign_extend_64(*(int32_t *)ivar_offset(_requestMetricsBySequenceNumber));
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_168);
                            }
                            r23 = *(0x0 + r21 * 0x8);
                            r26 = [[r23 objectForKeyedSubscript:*0x100e9b340] retain];
                            r22 = [[NSMutableDictionary alloc] initWithDictionary:[[*(r19 + var_160) objectForKeyedSubscript:r26] retain] copyItems:0x1];
                            r23 = [[NSDictionary alloc] initWithDictionary:r23 copyItems:0x1];
                            [r22 addEntriesFromDictionary:r23];
                            [r23 release];
                            r0 = [NSNumber numberWithBool:[r19 hasFinalizedStatisticsForSequenceNumber:r26]];
                            r29 = r29;
                            [r0 retain];
                            [r22 setObject:r2 forKeyedSubscript:r3];
                            [r23 release];
                            sub_100822370(var_140, r22);
                            [r22 release];
                            [r24 release];
                            [r26 release];
                            r21 = r21 + 0x1;
                    } while (r21 < var_120);
                    r0 = objc_msgSend(var_168, var_170);
                    var_120 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_168 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_140 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)appStatistics {
    r31 = r31 - 0x80;
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
    r19 = [[NSMutableDictionary alloc] initWithDictionary:self->_applicationMetrics copyItems:0x1];
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    sub_100822058(r19, *0x100e9b338, [[r0 sessionIdentifier] retain]);
    [r24 release];
    [r23 release];
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"GADRequestStatisticsSignals.priorRequestCountInSession"];
    r0 = [r0 retain];
    r25 = [r0 integerValue];
    [r0 release];
    sub_100822058(r19, *0x100e9b350, [[NSNumber numberWithInteger:r25] retain]);
    [r26 release];
    r24 = [[NSString alloc] initWithFormat:@"%ld"];
    [r20 setObject:r24 forKeyedSubscript:@"GADRequestStatisticsSignals.priorRequestCountInSession"];
    [r24 release];
    sub_1008b9904();
    v8 = v0;
    r0 = [r20 objectForKeyedSubscript:@"GADRequestStatisticsSignals.sessionFirstRequestTimeSinceBoot"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 doubleValue];
    [r0 release];
    if (d9 > 0x0) {
            r0 = [NSNumber numberWithDouble:@"GADRequestStatisticsSignals.sessionFirstRequestTimeSinceBoot"];
            r29 = r29;
    }
    else {
            r22 = [sub_1007da734() retain];
            [r20 setObject:r22 forKeyedSubscript:@"GADRequestStatisticsSignals.sessionFirstRequestTimeSinceBoot"];
            [r22 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInt:r2];
            r29 = r29;
    }
    sub_100822058(r19, *0x100e9b358, [r0 retain]);
    [r23 release];
    r22 = [sub_1007da734() retain];
    [r20 setObject:r22 forKeyedSubscript:@"GADRequestStatisticsSignals.lastUserEngagementSinceBoot"];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    r31 = r31 - 0x110;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    [arg2 retain];
    r21 = self->_lockQueue;
    var_E0 = [self retain];
    dispatch_sync(r21, &var_100);
    r21 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x58 forKeys:&saved_fp - 0x68 count:0x2] retain];
    r20 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x40 forKeys:&saved_fp - 0x48 count:0x1] retain];
    [r21 release];
    sub_100822140(r19, r20);
    [r20 release];
    [var_E0 release];
    _Block_object_dispose(&var_C8, 0x8);
    [0x0 release];
    _Block_object_dispose(&var_98, 0x8);
    [0x0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = [[dispatch_get_global_queue(0x0, 0x0) retain] autorelease];
    *arg3 = [objc_retainBlock(0x100e91198) autorelease];
    return;
}

-(void)cleanUpMetricsSentByRequest:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x380;
    var_3C8 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 signals];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:*0x100e95da0] retain];
    [r0 release];
    var_3B0 = r21;
    r0 = [r21 objectForKeyedSubscript:*0x100e95db0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    var_398 = [[NSMutableSet alloc] init];
    r0 = [r19 retain];
    r27 = @selector(countByEnumeratingWithState:objects:count:);
    var_380 = r0;
    r26 = objc_msgSend(r0, r27);
    var_3A8 = r27;
    if (r26 != 0x0) {
            r23 = @selector(objectForKeyedSubscript:);
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_380);
                            }
                            r19 = *(0x0 + r27 * 0x8);
                            r23 = [objc_msgSend(r19, r23) retain];
                            r0 = [r20 signals];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r22 = [r0 retain];
                            r21 = [r23 isEqual:r22];
                            [r22 release];
                            [r25 release];
                            r0 = r23;
                            r23 = @selector(objectForKeyedSubscript:);
                            [r0 release];
                            if (r21 != 0x0) {
                                    r0 = objc_msgSend(r19, r23);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = [r0 boolValue];
                                    [r0 release];
                                    if (r22 != 0x0) {
                                            r0 = objc_msgSend(r19, r23);
                                            r29 = r29;
                                            sub_100822430(var_398, [r0 retain]);
                                            [r19 release];
                                    }
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r26);
                    r27 = var_3A8;
                    r26 = objc_msgSend(var_380, r27);
            } while (r26 != 0x0);
    }
    var_390 = r20;
    [var_380 release];
    r0 = [var_398 retain];
    var_368 = r0;
    r19 = objc_msgSend(r0, r27);
    if (r19 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_unfinalizedAdsBySequenceNumber));
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_requestMetricsBySequenceNumber));
            r26 = var_3C8;
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_368);
                            }
                            sub_1008220c0(*(r26 + r22), *(0x0 + r24 * 0x8));
                            sub_1008220c0(*(r26 + r23), r21);
                            r24 = r24 + 0x1;
                    } while (r24 < r19);
                    r19 = objc_msgSend(var_368, r27);
            } while (r19 != 0x0);
    }
    else {
            r26 = var_3C8;
    }
    [var_368 release];
    var_388 = [[NSMutableSet alloc] init];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_adMetricsByAdContext));
    r0 = *(r26 + r25);
    r0 = [r0 keyEnumerator];
    r29 = r29;
    r0 = [r0 retain];
    var_378 = r0;
    r23 = objc_msgSend(r0, r27);
    if (r23 != 0x0) {
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_378);
                            }
                            r19 = @selector(objectForKey:);
                            r27 = @selector(containsObject:);
                            r28 = *(0x0 + r24 * 0x8);
                            r20 = r26;
                            r0 = *(r26 + r25);
                            r0 = objc_msgSend(r0, r19);
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r21 release];
                            if (objc_msgSend(var_368, r27) != 0x0) {
                                    sub_100822430(var_388, r28);
                            }
                            [r26 release];
                            r24 = r24 + 0x1;
                            r26 = r20;
                    } while (r24 < r23);
                    r27 = var_3A8;
                    r23 = objc_msgSend(var_378, r27);
            } while (r23 != 0x0);
    }
    [var_378 release];
    r0 = [var_388 retain];
    r19 = r0;
    r21 = objc_msgSend(r0, r27);
    if (r21 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            sub_100822100(*(r26 + r25), *(0x0 + r22 * 0x8));
                            r22 = r22 + 0x1;
                    } while (r22 < r21);
                    r21 = objc_msgSend(r19, r27);
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    [r19 release];
    [var_368 release];
    [var_380 release];
    [var_3B0 release];
    [var_390 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_appExitingAd);
    objc_storeStrong((int64_t *)&self->_unfinalizedAdsBySequenceNumber, 0x0);
    objc_storeStrong((int64_t *)&self->_adMetricsByAdContext, 0x0);
    objc_storeStrong((int64_t *)&self->_requestMetricsBySequenceNumber, 0x0);
    objc_storeStrong((int64_t *)&self->_applicationMetrics, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end