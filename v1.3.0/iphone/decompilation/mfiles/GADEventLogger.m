@implementation GADEventLogger

+(void *)sharedInstance {
    if (*qword_1011db7f8 != -0x1) {
            dispatch_once(0x1011db7f8, 0x100e90790);
    }
    r0 = *0x1011db800;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.event_logger", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r22 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r0 = *(r22 + 0xf98);
            r21 = @selector(alloc);
            r0 = objc_msgSend(r0, r21);
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventObserversMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = objc_msgSend(@class(NSMutableArray), r21);
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_enqueuedEvents));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            asm { stlrb      wzr, [x8] };
            r0 = *(r22 + 0xf98);
            r0 = objc_msgSend(r0, r21);
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestEventsMap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r19->_shouldBatchRequestEvents = [r0 boolForKey:*0x100e9b8e8];
            [r0 release];
            r0 = objc_msgSend(@class(GADObserverCollection), r21);
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r19);
            r20 = &var_80 + 0x20;
            objc_copyWeak(r20, &stack[-104]);
            [r21 addObserverForName:*0x100e9c400 object:0x0 queue:0x0 usingBlock:&var_80];
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b8b8];
            [r0 release];
            r0 = arc4random_uniform(0x3e8);
            r8 = 0x100b9b000;
            asm { fcvtzs     w8, d0 };
            if (r0 < r8) {
                    [r19 enableLogging];
            }
            objc_destroyWeak(r20);
            objc_destroyWeak(&stack[-104]);
    }
    r0 = r19;
    return r0;
}

-(bool)enabled {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_enabled));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    asm { stlrb      w2, [x8] };
    return;
}

-(bool)isNotificationLogged:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([self enabled] != 0x0) {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r21 = [[r0 arrayForKey:*0x100e9b8c8] retain];
            [r0 release];
            r20 = [r21 containsObject:r2];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)enableLogging {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)disableLogging {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)startScheduler {
    r31 = r31 - 0x80;
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_scheduler));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b8d8];
            [r0 release];
            r0 = [GADScheduler alloc];
            r0 = [r0 initWithInterval:*0x100e9b8d8];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r19);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r21 scheduleOnQueue:r22 block:&var_70];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
            r0 = *(r19 + r23);
    }
    [r0 start];
    return;
}

-(void)updateLoggingState {
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b8b8];
    [r0 release];
    if (d8 <= 0x3ff0000000000000) goto loc_1007e2130;

loc_1007e2124:
    r1 = @selector(enableLogging);
    goto loc_1007e2140;

loc_1007e2140:
    objc_msgSend(r19, r1);
    goto loc_1007e2148;

loc_1007e2148:
    r20 = r19->_lockQueue;
    [r19 retain];
    dispatch_async(r20, &var_48);
    [r19 release];
    return;

loc_1007e2130:
    if (d8 >= 0x0) goto loc_1007e2148;

loc_1007e2138:
    r1 = @selector(disableLogging);
    goto loc_1007e2140;
}

-(void)updateBatchEvents {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 boolForKey:*0x100e9b8e8];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_shouldBatchRequestEvents));
    *(int8_t *)(r19 + r21) = r0;
    [r20 release];
    if (*(int8_t *)(r19 + r21) == 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_requestEventsMap));
            r20 = *(r19 + r21);
            var_28 = [r19 retain];
            [r20 enumerateKeysAndObjectsUsingBlock:&var_48];
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [var_28 release];
    }
    return;
}

-(void)updateEventObservers {
    r31 = r31 - 0x1a0;
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
    r19 = self;
    if ([self enabled] != 0x0) {
            r20 = [[NSMutableDictionary alloc] init];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 arrayForKey:*0x100e9b8c8];
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            r0 = [r23 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_160 = r0;
            var_180 = r1;
            r26 = objc_msgSend(r0, r1);
            if (r26 != 0x0) {
                    r25 = &var_158 + 0x20;
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_eventObserversMap));
                    do {
                            r28 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_160);
                                    }
                                    r24 = *(0x0 + r28 * 0x8);
                                    r0 = *(r19 + r22);
                                    r0 = [r0 objectForKeyedSubscript:r24];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    if (r21 == 0x0) {
                                            r21 = [[GADObserverCollection alloc] init];
                                            objc_initWeak(&stack[-320], r19);
                                            objc_copyWeak(r25, &stack[-320]);
                                            [r21 addObserverForName:r2 object:r3 queue:r4 usingBlock:r5];
                                            objc_destroyWeak(r25);
                                            objc_destroyWeak(&stack[-320]);
                                    }
                                    sub_100822058(r20, r24, r21);
                                    [r21 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r26);
                            r1 = var_180;
                            r26 = objc_msgSend(var_160, r1);
                    } while (r26 != 0x0);
            }
            else {
                    r22 = *(int32_t *)ivar_offset(_eventObserversMap);
            }
            [var_160 release];
            r0 = *(r19 + (r22 << r1));
            *(r19 + (r22 << r1)) = r20;
            [r0 release];
            [var_160 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateScheduler {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self enabled] != 0x0) {
            var_18 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_38);
            [var_18 release];
    }
    return;
}

-(bool)flushEventsQueue {
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
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_enqueuedEvents));
    if ([*(r19 + r21) count] == 0x0) goto loc_1007e2b20;

loc_1007e2a80:
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b8e0];
    [r0 release];
    sub_1008b9904();
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_flushBufferTimestamp));
    if (*(r19 + r8) > 0x0) {
            asm { fccmp      d2, d8, #0x0, gt };
    }
    if (CPU_FLAGS & S) goto loc_1007e2b28;

loc_1007e2ae4:
    *(r19 + r8) = d0;
    sub_10085c884();
    r0 = [NSMutableArray alloc];
    r0 = [r0 init];
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    goto loc_1007e2b20;

loc_1007e2b20:
    r0 = 0x1;
    return r0;

loc_1007e2b28:
    r0 = 0x0;
    return r0;
}

-(void)handleNotificationName:(void *)arg2 context:(void *)arg3 userInfo:(void *)arg4 {
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
    r21 = self;
    [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r22 = r0;
    sub_100822058(r0, *0x1011c2d60, arg2);
    [r24 release];
    if (r20 != 0x0) {
            r23 = *0x1011c2d70;
            r0 = sub_10084a5f0();
            r29 = r29;
            sub_100822058(r22, r23, [r0 retain]);
            [r24 release];
    }
    if (r19 != 0x0) {
            r0 = sub_1007e2d44(r19);
            r29 = r29;
            sub_100822058(r22, *0x1011c2d68, [r0 retain]);
            [r23 release];
    }
    if (*(int8_t *)(int64_t *)&r21->_shouldBatchRequestEvents != 0x0) {
            r0 = [r19 componentName];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isEqual:r2];
            [r0 release];
            if (r24 != 0x0) {
                    [r21 addEventToRequestMap:r22];
            }
            else {
                    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
                    r23 = [r0 retain];
                    [r21 addEventsToQueue:r23];
                    [r23 release];
            }
    }
    else {
            r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
            r23 = [r0 retain];
            [r21 addEventsToQueue:r23];
            [r23 release];
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)addEventsToQueue:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 integerForKey:*0x100e9b8d0];
    [r0 release];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_enqueuedEvents));
    if ([*(r20 + r25) count] >= r23 && ([r20 flushEventsQueue] & 0x1) == 0x0) {
            do {
                    asm { ldaxrb     w10, [x8] };
                    asm { stlxrb     w11, w9, [x8] };
            } while (r11 != 0x0);
            if ((r10 & 0x1) == 0x0) {
                    r0 = [GADApplication sharedInstance];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 context];
                    r0 = [r0 retain];
                    r23 = [sub_1007e2d44(r0) retain];
                    r24 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r23 release];
                    [r0 release];
                    [r21 release];
                    sub_100822370(*(r20 + r25), r24);
                    [r24 release];
            }
    }
    else {
            [*(r20 + r25) addObjectsFromArray:r19];
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)addEventToRequestMap:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x1011c2d68];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x1011c2d78];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_requestEventsMap));
            r0 = *(r20 + r25);
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    sub_100822058(*(r20 + r25), r21, [[NSMutableArray alloc] init]);
                    [r24 release];
            }
            r0 = *(r20 + r25);
            r0 = [r0 objectForKeyedSubscript:r21];
            r0 = [r0 retain];
            sub_100822370(r0, r19);
            [r23 release];
            r0 = [r19 objectForKeyedSubscript:*0x1011c2d60];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isEqual:r2];
            [r0 release];
            if (r24 != 0x0) {
                    [r20 addEventsToQueue:[[*(r20 + r25) objectForKeyedSubscript:r21] retain]];
                    sub_1008220c0(*(r20 + r25), r21);
                    [r22 release];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestEventsMap, 0x0);
    objc_storeStrong((int64_t *)&self->_scheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_enqueuedEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_eventObserversMap, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end