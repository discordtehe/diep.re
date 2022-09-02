@implementation MCAnimConcurrentAnimations

+(void *)withAnimation:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r0 = [objc_alloc() init:[NSMutableArray arrayWithObject:r2] animations:r3];
            r0 = [r0 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)withPlayDelayOffset:(float)arg2 andAnimations:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    v8 = v0;
    r20 = self;
    r19 = [NSMutableArray array];
    var_38 = &saved_fp + 0x10;
    if (r21 != 0x0) {
            do {
                    [r19 addObject:r2];
                    r8 = var_38;
                    var_38 = r8 + 0x8;
                    r21 = *r8;
            } while (r21 != 0x0);
    }
    r0 = [r19 count];
    if (r0 != 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init:r19 animations:r3];
            r0 = [r0 autorelease];
    }
    return r0;
}

+(void *)withAnimations:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [NSMutableArray array];
    var_28 = &saved_fp + 0x10;
    if (r21 != 0x0) {
            do {
                    [r19 addObject:r2];
                    r8 = var_28;
                    var_28 = r8 + 0x8;
                    r21 = *r8;
            } while (r21 != 0x0);
    }
    r0 = [r19 count];
    if (r0 != 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init:r19 animations:r3];
            r0 = [r0 autorelease];
    }
    return r0;
}

-(void)dealloc {
    [*(self + 0x10) removeAllObjects];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init:(float)arg2 animations:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(r20 + 0x8) = s8;
            *(r20 + 0x10) = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void)addAnimation:(void *)arg2 withStartOffset:(float)arg3 {
    [arg2 setTimeDelayOnPlay:r2];
    [self addAnimation:arg2];
    return;
}

-(void)addAnimation:(void *)arg2 {
    [*(self + 0x10) addObject:r2];
    return;
}

-(void)setTimeDelayOnPlay:(float)arg2 {
    *(int32_t *)(self + 0x8) = s0;
    return;
}

-(void *)addConcurrentAnimation:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            [*(r19 + 0x10) addObject:r2];
    }
    r0 = r19;
    return r0;
}

-(void *)addConcurrentAnimation:(void *)arg2 withTimeOffset:(float)arg3 {
    [arg2 setTimeDelayOnPlay:r2];
    r0 = [self addConcurrentAnimation:arg2];
    return r0;
}

-(void *)getSingleAnimations {
    r31 = r31 - 0x140;
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
    var_110 = q0;
    r19 = *(self + 0x10);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r21 = 0x0;
            r27 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r19);
                            }
                            r0 = *(var_118 + r20 * 0x8);
                            r0 = [r0 getSingleAnimations];
                            if (r0 != 0x0) {
                                    r26 = r0;
                                    if (r21 == 0x0) {
                                            r21 = [NSMutableArray array];
                                    }
                                    [r21 addObjectsFromArray:r2];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r0 = objc_msgSend(r19, var_128);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getSingleAnimationsWithTarget:(void *)arg2 {
    r31 = r31 - 0x140;
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
    var_110 = q0;
    r20 = *(self + 0x10);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r22 = 0x0;
            r28 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = *(var_118 + r21 * 0x8);
                            r0 = [r0 getSingleAnimationsWithTarget:r19];
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    if (r22 == 0x0) {
                                            r22 = [NSMutableArray array];
                                    }
                                    [r22 addObjectsFromArray:r2];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r0 = objc_msgSend(r20, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            r22 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)playWithSelectorOnStart:(void *)arg2 andSelectorOnEnd:(void *)arg3 withData:(void *)arg4 onTarget:(void *)arg5 {
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
    var_130 = arg4;
    stack[-312] = arg5;
    r21 = arg3;
    r22 = arg2;
    r23 = self;
    var_110 = q0;
    r0 = *(self + 0x10);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r26 = r0;
            r19 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(var_138);
                            }
                            [*(var_118 + r20 * 0x8) timeDelayOffsetOnPlay];
                            s0 = s0 + *(int32_t *)(r23 + 0x8);
                            objc_msgSend(r24, r28);
                            objc_msgSend(r24, r25);
                            r20 = r20 + 0x1;
                    } while (r20 < r26);
                    r0 = objc_msgSend(var_138, var_140);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)play {
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
    r19 = self;
    var_110 = q0;
    r20 = *(self + 0x10);
    r2 = &var_120;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r28 * 0x8);
                            [r26 timeDelayOffsetOnPlay];
                            s0 = s0 + *(int32_t *)(r19 + 0x8);
                            [r26 setTimeDelayOnPlay:r2];
                            [r26 play];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r2 = &var_120;
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)animationFinishedPlaying {
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
    var_110 = q0;
    r19 = *(self + 0x10);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            r21 = 0x1;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            if ((r21 & 0x1) != 0x0) {
                                    r21 = [*(var_118 + r26 * 0x8) animationFinishedPlaying];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = 0x1;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(float)timeDelayOffsetOnPlay {
    r0 = self;
    return r0;
}

-(void *)toString {
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
    r20 = [NSString stringWithFormat:@"<MCAnimAnimation> Begin Concurrent Anim:"];
    var_110 = q0;
    r21 = *(self + 0x10);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r21, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_118 + r22 * 0x8);
                            [r0 toString];
                            r20 = [NSString stringWithFormat:@"%@\n  - %@"];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(r21, var_128);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r0 = [NSString stringWithFormat:@"%@\n<MCAnimAnimation> End Concurrent Anim List"];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end