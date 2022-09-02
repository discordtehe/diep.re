@implementation GADSignals

+(void *)sharedInstance {
    if (*qword_1011dbec8 != -0x1) {
            dispatch_once(0x1011dbec8, 0x100e9c6e0);
    }
    r0 = *0x1011dbed0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)dictionaryWithSignals:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = [arg2 retain];
    r19 = [[NSMutableDictionary alloc] init];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(0x0 + r26 * 0x8) addSignalEntriesToMutableDictionary:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r21 = [sub_10084a5f0() retain];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)createSignalDictionaryWithTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [self->_signalSources mutableCopy];
    r22 = [arg2 signalSources];
    [r23 release];
    r0 = [r22 retain];
    r23 = [r0 copy];
    [r19 addEntriesFromDictionary:r23];
    [r23 release];
    [r0 release];
    r22 = [self retain];
    var_48 = r21;
    [r21 retain];
    r0 = objc_retainBlock(&var_70);
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_88 = [r22 retain];
    var_80 = r19;
    [r19 retain];
    [r0 retain];
    dispatch_async(r23, &var_A8);
    [r23 release];
    [r0 release];
    [var_80 release];
    [var_88 release];
    [r21 release];
    [var_48 release];
    [r22 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mainQueueSignalUpdateBlocks));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_signalSources));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            sub_100822058(*(r19 + r25), *0x100e92170, [sub_100868118() retain]);
            [r22 release];
            sub_100822058(*(r19 + r25), *0x100e92178, [sub_1007e9950() retain]);
            [r22 release];
            sub_100822058(*(r19 + r25), *0x100e92180, [[GADContentHashingController sharedInstance] retain]);
            [r23 release];
            sub_100822058(*(r19 + r25), *0x100e92198, [[GADDevice sharedInstance] retain]);
            [r23 release];
            sub_100822058(*(r19 + r25), *0x100e921a0, [[GADDeviceAudioSignals signalSource] retain]);
            [r24 release];
            sub_100822058(*(r19 + r25), *0x100e921a8, [sub_100862f18() retain]);
            [r24 release];
            sub_100822058(*(r19 + r25), *0x100e921b0, [[GADDeviceOrientationSignals signalSource] retain]);
            [r23 release];
            sub_100822058(*(r19 + r25), *0x100e921c0, [sub_100868228() retain]);
            [r23 release];
            sub_100822058(*(r19 + r25), *0x100e921d8, [[GADNetwork sharedInstance] retain]);
            [r20 release];
            sub_100822058(*(r19 + r25), *0x100e92210, [sub_100893a4c() retain]);
            [r22 release];
    }
    r0 = r19;
    return r0;
}

-(void)updatedSignalsWithKeys:(void *)arg2 completionHandler:(void *)arg3 {
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
    r20 = self;
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [[NSMutableDictionary alloc] init];
    r0 = [r23 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            var_160 = r21;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_signalSources));
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r26 = *(0x0 + r23 * 0x8);
                            r0 = *(r20 + r21);
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r27 != 0x0) {
                                    sub_100822058(r22, r26, r27);
                            }
                            [r27 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r24 = objc_msgSend(r19, var_158);
            } while (r24 != 0x0);
            r21 = var_160;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    [r20 retain];
    var_130 = r20;
    [r22 retain];
    var_120 = r21;
    [r21 retain];
    dispatch_async(r23, &var_150);
    [r23 release];
    [var_120 release];
    [r22 release];
    [var_130 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)updatedSignalsWithSignalSources:(void *)arg2 completionHandler:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    var_220 = self;
    r19 = [arg2 retain];
    var_218 = [arg3 retain];
    r0 = sub_100860a2c("com.google.admob.n.signals-write", 0x0, 0x19);
    r29 = &saved_fp;
    var_1E8 = [r0 retain];
    r20 = dispatch_group_create();
    var_1F0 = [[NSMutableDictionary alloc] init];
    var_208 = [[NSMutableArray alloc] init];
    r0 = [r19 retain];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_210 = r1;
    r27 = objc_msgSend(r0, r1);
    if (r27 != 0x0) {
            var_200 = r24;
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r24);
                            }
                            r22 = *(0x0 + r23 * 0x8);
                            r0 = [r24 objectForKeyedSubscript:r22];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            [r0 getSignalUpdateQueue:r2 signalCreationBlock:r3];
                            r25 = [0x0 retain];
                            r19 = [0x0 retain];
                            if (r19 == 0x0) {
                                    sub_1007ce06c(0x0, @"Signal source didn't provide a block.\nSignal source: %@");
                                    r24 = objc_retainBlock(0x100e9c7b0);
                                    [r19 release];
                                    r19 = r24;
                                    r24 = var_200;
                            }
                            dispatch_group_enter(r20);
                            r19 = [r19 retain];
                            var_160 = r19;
                            var_158 = [var_1E8 retain];
                            var_150 = [var_1F0 retain];
                            var_148 = [r22 retain];
                            var_140 = [r20 retain];
                            r0 = objc_retainBlock(&var_180);
                            r22 = r0;
                            if (r25 != 0x0) {
                                    dispatch_async(r25, r22);
                            }
                            else {
                                    sub_100822370(var_208, objc_retainBlock(r22));
                                    r0 = r24;
                                    r24 = var_200;
                                    [r0 release];
                            }
                            [r22 release];
                            [var_140 release];
                            [var_148 release];
                            [var_150 release];
                            [var_158 release];
                            [var_160 release];
                            [r19 release];
                            [r25 release];
                            [r28 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r27);
                    r27 = objc_msgSend(r24, var_210);
            } while (r27 != 0x0);
    }
    [r24 release];
    r23 = var_208;
    if ([r23 count] != 0x0) {
            var_190 = [var_220 retain];
            var_188 = [r23 retain];
            dispatch_async(*__dispatch_main_q, &var_1B0);
            [var_188 release];
            [var_190 release];
    }
    var_68 = **___stack_chk_guard;
    r19 = [dispatch_get_global_queue(0x0, 0x0) retain];
    [var_218 retain];
    [var_1F0 retain];
    dispatch_group_notify(r20, r19, &var_1E0);
    [r19 release];
    [var_1F0 release];
    [var_218 release];
    [r22 release];
    [r21 release];
    [r23 release];
    [r20 release];
    [var_1E8 release];
    [r24 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)runMainQueueSignalUpdateBlocks {
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
    r19 = self;
    sub_1008b9904();
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_mainQueueSignalUpdateBlocks));
    r0 = *(r19 + r23);
    r0 = [r0 firstObject];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            do {
                    [*(r19 + r23) removeObjectAtIndex:0x0];
                    (*(r22 + 0x10))(r22);
                    sub_1008b9904();
                    d0 = d0 - d8;
                    if (d0 >= d9) {
                        break;
                    }
                    [r22 release];
                    r0 = *(r19 + r23);
                    r0 = [r0 firstObject];
                    r29 = r29;
                    r22 = [r0 retain];
            } while (r22 != 0x0);
            [r22 release];
    }
    if ([*(r19 + r23) count] != 0x0) {
            var_48 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_68);
            [var_48 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mainQueueSignalUpdateBlocks, 0x0);
    objc_storeStrong((int64_t *)&self->_signalSources, 0x0);
    return;
}

@end