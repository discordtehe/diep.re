@implementation MCInputDispatcher

-(void *)initWithListener:(void *)arg2 delay:(double)arg3 minDistance:(float)arg4 maxDistance:(float)arg5 {
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v2;
    v9 = v1;
    v10 = v0;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [[NSMutableArray array] retain];
            *(int128_t *)(r19 + 0x18) = [[NSMutableDictionary dictionary] retain];
            *(int128_t *)(r19 + 0x20) = 0x0;
            *(int8_t *)(r19 + 0x28) = 0x0;
            [r19 addListener:r20];
            [r19 setDelay:r20 minDistance:r3 maxDistance:r4];
    }
    r0 = r19;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [[NSMutableArray array] retain];
            *(int128_t *)(r19 + 0x18) = [[NSMutableDictionary dictionary] retain];
            *(int128_t *)(r19 + 0x20) = 0x0;
            *(int8_t *)(r19 + 0x28) = 0x0;
            *(int32_t *)(r19 + 0x8) = 0x0;
            *(r19 + 0x40) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setDelay:(double)arg2 minDistance:(float)arg3 maxDistance:(float)arg4 {
    *(self + 0x30) = d0;
    *(int128_t *)(self + 0x38) = s1;
    *(int128_t *)(self + 0x3c) = s2;
    return;
}

-(void)removeTouch:(void *)arg2 {
    [NSValue valueWithPointer:arg2];
    [*(self + 0x18) removeObjectForKey:r2];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x10) release];
    [*(r19 + 0x18) release];
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)addTouches:(void *)arg2 {
    r31 = r31 - 0x1b0;
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
    r23 = [NSMutableDictionary dictionary];
    v0 = 0x0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = arg2;
    var_198 = r1;
    r0 = objc_msgSend(arg2, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r26 = *var_120;
            r27 = &@class(MCConfigurationData);
            r28 = &@class(MCConfigurationData);
            do {
                    r24 = 0x0;
                    r22 = @selector(initWithTouch:);
                    var_178 = r22;
                    do {
                            if (*var_120 != r26) {
                                    objc_enumerationMutation(var_170);
                            }
                            var_148 = @selector(setTimeStamp:);
                            var_150 = @selector(valueWithPointer:);
                            var_158 = @selector(timeStamp);
                            r0 = objc_alloc();
                            r0 = objc_msgSend(r0, r22);
                            r0 = [r0 autorelease];
                            r20 = r0;
                            [r0 touchPoint];
                            [r20 previousTouchPoint];
                            v0 = v0;
                            v1 = v1;
                            sub_1003115c4();
                            asm { fcvt       s0, d0 };
                            s0 = *(int128_t *)(r19 + 0x3c) - s0;
                            d2 = *(r19 + 0x30);
                            asm { fdiv       s0, s0, s1 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       s0, d0 };
                            asm { fcvt       s2, d2 };
                            sub_10031169c();
                            asm { fcvt       d0, s0 };
                            d0 = d8 + d0;
                            objc_msgSend(r20, var_148);
                            r21 = objc_msgSend(*(r28 + 0x68), var_150);
                            objc_msgSend(r20, var_158);
                            if (d0 == 0x0) {
                                    [r23 setObject:[NSArray arrayWithObject:r2] forKey:r21];
                            }
                            else {
                                    r22 = r28;
                                    r28 = r27;
                                    r27 = r26;
                                    r26 = r25;
                                    r25 = r23;
                                    r0 = *(r19 + 0x18);
                                    r0 = [r0 objectForKey:r21];
                                    r23 = r0;
                                    if (r0 == 0x0) {
                                            r23 = [NSMutableArray array];
                                            [*(r19 + 0x18) setObject:r23 forKey:r21];
                                    }
                                    [r23 addObject:r20];
                                    r23 = r25;
                                    r25 = r26;
                                    r26 = r27;
                                    r27 = r28;
                                    r28 = r22;
                                    r22 = var_178;
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r25);
                    r0 = objc_msgSend(var_170, var_198);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    if ([r23 count] != 0x0) {
            [r19 applyTouchesToListeners:r23];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeListener:(void *)arg2 {
    [*(self + 0x10) removeObject:arg2];
    return;
}

-(void)addListener:(void *)arg2 {
    [*(self + 0x10) addObject:r2];
    return;
}

-(void)enable {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x28) == 0x0) {
            *(r0 + 0x20) = 0x0;
            [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:r0 priority:0x0 paused:0x0];
            *(int8_t *)(r0 + 0x28) = 0x1;
    }
    return;
}

-(void)disable {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x28) != 0x0) {
            *(int8_t *)(r0 + 0x28) = 0x0;
            [r0 cancelAllTouches];
            [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r2];
    }
    return;
}

-(unsigned int)getNumTouches {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void)applyTouchesToListeners:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    var_110 = q0;
    r21 = *(self + 0x10);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 getNumTouches];
                            objc_msgSend(r26, r25);
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)cancelAllTouches {
    [*(self + 0x18) count];
    [*(self + 0x18) removeAllObjects];
    return;
}

-(void)touchesBegan:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    var_1F0 = arg2;
    var_1E8 = self;
    if (*(int8_t *)(self + 0x28) != 0x0) {
            *(int32_t *)(var_1E8 + 0x8) = *(int32_t *)(var_1E8 + 0x8) + [var_1F0 count];
            var_190 = q0;
            r23 = *(var_1E8 + 0x10);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1F8 = r1;
            r0 = objc_msgSend(r23, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r19 = *var_190;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_190 != r19) {
                                            objc_enumerationMutation(r23);
                                    }
                                    [var_1E8 getNumTouches];
                                    objc_msgSend(r27, r26);
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r0 = objc_msgSend(r23, var_1F8);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [*(var_1E8 + 0x40) release];
            [var_1F0 count];
            *(var_1E8 + 0x40) = [[NSMutableArray arrayWithCapacity:r2] retain];
            var_1D0 = q0;
            r0 = objc_msgSend(var_1F0, var_1F8);
            if (r0 != 0x0) {
                    r22 = r0;
                    r19 = *var_1D0;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_1D0 != r19) {
                                            objc_enumerationMutation(var_1F0);
                                    }
                                    r26 = @selector(addObject:);
                                    r27 = *(var_1D8 + r20 * 0x8);
                                    r28 = *(var_1E8 + 0x40);
                                    r2 = [r27 view];
                                    [r27 locationInView:r2];
                                    [NSValue valueWithCGPoint:r2];
                                    objc_msgSend(r28, r26);
                                    r20 = r20 + 0x1;
                            } while (r20 < r22);
                            r0 = objc_msgSend(var_1F0, var_1F8);
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)touchesMoved:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x28) != 0x0) {
            r20 = r2;
            r19 = r0;
            r21 = [NSMutableSet set];
            var_110 = q0;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r25 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r25) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [r21 addObject:r2];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r19 addTouches:r21];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)update:(double)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x200;
    r19 = self;
    d0 = *(self + 0x20) + d0;
    *(self + 0x20) = d0;
    var_248 = [NSMutableArray array];
    var_230 = [NSMutableDictionary dictionary];
    var_190 = q0;
    r0 = *(r19 + 0x18);
    var_238 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1F8 = r0;
    if (r0 != 0x0) {
            var_220 = *var_190;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_190 != var_220) {
                                    objc_enumerationMutation(var_238);
                            }
                            r24 = @selector(countByEnumeratingWithState:objects:count:);
                            r2 = *(var_198 + r20 * 0x8);
                            var_1F0 = r2;
                            var_1E8 = r20;
                            r22 = [*(r19 + 0x18) objectForKey:r2];
                            r28 = [NSMutableArray array];
                            var_1D0 = q0;
                            r0 = objc_msgSend(r22, r24);
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    r27 = *var_1D0;
                                    do {
                                            r23 = 0x0;
                                            do {
                                                    if (*var_1D0 != r27) {
                                                            objc_enumerationMutation(r22);
                                                    }
                                                    r20 = *(var_1D8 + r23 * 0x8);
                                                    [r20 timeStamp];
                                                    if (d0 <= *(r19 + 0x20)) {
                                                            [r28 addObject:r2];
                                                    }
                                                    r23 = r23 + 0x1;
                                            } while (r23 < r21);
                                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r21 = r0;
                                    } while (r0 != 0x0);
                            }
                            r21 = @selector(count);
                            if (objc_msgSend(r28, r21) != 0x0) {
                                    [var_230 setObject:r2 forKey:r3];
                            }
                            [r22 removeObjectsInArray:r28];
                            r0 = objc_msgSend(r22, r21);
                            r20 = var_1E8;
                            if (r0 == 0x0) {
                                    [var_248 addObject:r2];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < var_1F8);
                    r0 = [var_238 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    var_1F8 = r0;
            } while (r0 != 0x0);
    }
    r20 = var_230;
    if ([r20 count] != 0x0) {
            [r19 applyTouchesToListeners:r20];
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + 0x18) removeObjectsForKeys:var_248];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)touchesEnded:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1f0;
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
    if (*(int8_t *)(r0 + 0x28) != 0x0) {
            r19 = r2;
            r20 = r0;
            *(int32_t *)(r20 + 0x8) = *(int32_t *)(r20 + 0x8) - [r2 count];
            var_190 = q0;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_190;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_190 != r24) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [r20 removeTouch:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            r21 = @selector(countByEnumeratingWithState:objects:count:);
            var_1D0 = q0;
            r22 = *(r20 + 0x10);
            r0 = objc_msgSend(r22, r21);
            if (r0 != 0x0) {
                    r23 = r0;
                    r27 = *var_1D0;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_1D0 != r27) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [r20 getNumTouches];
                                    objc_msgSend(r26, r25);
                                    r28 = r28 + 0x1;
                            } while (r28 < r23);
                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)touchesCancelled:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1f0;
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
    if (*(int8_t *)(r0 + 0x28) != 0x0) {
            r19 = r2;
            r20 = r0;
            *(int32_t *)(r20 + 0x8) = *(int32_t *)(r20 + 0x8) - [r2 count];
            var_190 = q0;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_190;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_190 != r24) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [r20 removeTouch:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            r21 = @selector(countByEnumeratingWithState:objects:count:);
            var_1D0 = q0;
            r22 = *(r20 + 0x10);
            r0 = objc_msgSend(r22, r21);
            if (r0 != 0x0) {
                    r23 = r0;
                    r27 = *var_1D0;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_1D0 != r27) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [r20 getNumTouches];
                                    objc_msgSend(r26, r25);
                                    r28 = r28 + 0x1;
                            } while (r28 < r23);
                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end