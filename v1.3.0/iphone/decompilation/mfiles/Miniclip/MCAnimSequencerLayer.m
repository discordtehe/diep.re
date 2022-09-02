@implementation MCAnimSequencerLayer

+(void *)makeMCAnimSequencerLayerWithId:(void *)arg2 {
    r0 = objc_alloc();
    r0 = [r0 init:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) release];
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = @selector(init);
            *(r20 + 0x8) = objc_msgSend(objc_alloc(), r21);
            *(r20 + 0x10) = objc_msgSend(objc_alloc(), r21);
            *(int128_t *)(r20 + 0x18) = [r19 retain];
            *(int128_t *)(r20 + 0x20) = 0x0;
            *(int16_t *)(r20 + 0x28) = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)addToLayer:(void *)arg2 {
    [self addToLayer:arg2 withTag:@"noTag" insertAsFirst:0x0];
    return;
}

-(void)insertInLayerAsFirst:(void *)arg2 {
    [self addToLayer:arg2 withTag:@"noTag" insertAsFirst:0x1];
    return;
}

-(void)insertInLayerAsFirst:(void *)arg2 withTag:(void *)arg3 {
    [self addToLayer:arg2 withTag:arg3 insertAsFirst:0x1];
    return;
}

-(void)addToLayer:(void *)arg2 withTag:(void *)arg3 {
    [self addToLayer:arg2 withTag:arg3 insertAsFirst:0x0];
    return;
}

-(void)addToLayer:(void *)arg2 withTag:(void *)arg3 insertAsFirst:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto .l1;

loc_10028caa8:
    r22 = r4;
    r20 = r3;
    r23 = r2;
    r19 = r0;
    r24 = [NSString stringWithFormat:@"%@-%d"];
    if (([r20 isEqualToString:r2] & 0x1) != 0x0) goto loc_10028cb40;

loc_10028cb00:
    r0 = [r19 findAnimListWithTag:r24];
    if (r0 == 0x0) goto loc_10028cb40;

loc_10028cb18:
    [r0 addConcurrentAnimation:r23];
    r1 = @selector(replaceAnimListInTag:With:);
    r0 = r19;
    goto loc_10028cb7c;

loc_10028cb7c:
    objc_msgSend(r0, r1);
    goto loc_10028cb90;

loc_10028cb90:
    if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
            *(int8_t *)(r19 + 0x29) = 0x1;
    }
    return;

.l1:
    return;

loc_10028cb40:
    [[objc_alloc() initWithObjects:r24] autorelease];
    r0 = *(r19 + 0x8);
    if (r22 == 0x0) goto loc_10028cb84;

loc_10028cb70:
    r1 = @selector(insertObject:atIndex:);
    goto loc_10028cb7c;

loc_10028cb84:
    [r0 addObject:r2];
    goto loc_10028cb90;
}

-(void)addConcurrentlyToLayer:(void *)arg2 {
    [self addConcurrentlyToLayer:arg2 withTag:@"noTag"];
    return;
}

-(void)registerAnimAsCurrentlyRunning:(void *)arg2 {
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
    if (r2 != 0x0) {
            r19 = r0;
            if (*(r0 + 0x10) != 0x0) {
                    var_110 = q0;
                    r0 = [r2 getSingleAnimations];
                    r20 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r24 = *var_110;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_110 != r24) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [*(r19 + 0x10) addObject:r2];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addConcurrentlyToLayer:(void *)arg2 withTag:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto .l6;

loc_10028cbf8:
    r20 = r3;
    r22 = r2;
    r19 = r0;
    r23 = [NSString stringWithFormat:@"%@-%d"];
    if (([r20 isEqualToString:r2] & 0x1) != 0x0) goto loc_10028cc8c;

loc_10028cc4c:
    r0 = [r19 findAnimListWithTag:r23];
    if (r0 == 0x0) goto loc_10028cc8c;

loc_10028cc64:
    [r0 addConcurrentAnimation:r22];
    r1 = @selector(replaceAnimListInTag:With:);
    r0 = r19;
    goto loc_10028cd10;

loc_10028cd10:
    objc_msgSend(r0, r1);
    goto loc_10028cd50;

loc_10028cd50:
    if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
            *(int8_t *)(r19 + 0x29) = 0x1;
    }
    return;

.l6:
    return;

loc_10028cc8c:
    if ([*(r19 + 0x8) count] == 0x0) goto loc_10028cd18;

loc_10028cca0:
    r0 = *(r19 + 0x8);
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 mutableCopy];
    [r0 replaceObjectAtIndex:0x1 withObject:[[r0 objectAtIndex:0x1] addConcurrentAnimation:r22]];
    r0 = *(r19 + 0x8);
    r1 = @selector(replaceObjectAtIndex:withObject:);
    goto loc_10028cd10;

loc_10028cd18:
    [[objc_alloc() initWithObjects:r23] autorelease];
    [*(r19 + 0x8) addObject:r2];
    goto loc_10028cd50;
}

-(void)clearCurrentlyRunningList {
    [*(self + 0x10) removeAllObjects];
    return;
}

-(bool)isCurrentlyRunningDoneAnimating {
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

-(void *)getFirstAnimList {
    r0 = *(self + 0x8);
    r19 = @selector(objectAtIndex:);
    r0 = objc_msgSend(r0, r19);
    r0 = objc_msgSend(r0, r19);
    return r0;
}

-(void)stopRunningAnimations {
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
    r20 = *(r0 + 0x10);
    if (r20 != 0x0) {
            r19 = r0;
            var_110 = q0;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_118 + r26 * 0x8) stopAnimation];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            [*(r19 + 0x10) removeAllObjects];
            *(int8_t *)(r19 + 0x28) = 0x0;
            *(int32_t *)(r19 + 0x24) = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)replaceAnimListInTag:(void *)arg2 With:(void *)arg3 {
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
    var_128 = arg3;
    r20 = arg2;
    var_110 = q0;
    r21 = *(self + 0x8);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10028d394;

loc_10028d2dc:
    r23 = r0;
    r27 = *var_110;
    r8 = 0x101137000;
    goto loc_10028d2f0;

loc_10028d2f0:
    r28 = 0x0;
    r19 = r8;
    r25 = *(r8 + 0x258);
    goto loc_10028d300;

loc_10028d300:
    if (*var_110 != r27) {
            objc_enumerationMutation(r21);
    }
    r24 = @selector(objectAtIndex:);
    r26 = *(var_118 + r28 * 0x8);
    objc_msgSend(r26, r24);
    if (objc_msgSend(r20, r25) != 0x0) goto loc_10028d37c;

loc_10028d344:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_10028d300;

loc_10028d350:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    r8 = r19;
    if (r0 != 0x0) goto loc_10028d2f0;

loc_10028d394:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10028d37c:
    [r26 replaceObjectAtIndex:0x1 withObject:var_128];
    goto loc_10028d394;
}

-(void *)findAnimListWithTag:(void *)arg2 {
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
    var_110 = q0;
    r20 = *(self + 0x8);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10028d234;

loc_10028d184:
    r22 = r0;
    r26 = *var_110;
    r8 = 0x101137000;
    goto loc_10028d198;

loc_10028d198:
    r27 = 0x0;
    r28 = r8;
    r24 = *(r8 + 0x258);
    goto loc_10028d1a8;

loc_10028d1a8:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r23 = @selector(objectAtIndex:);
    r25 = *(var_118 + r27 * 0x8);
    objc_msgSend(r25, r23);
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_10028d224;

loc_10028d1ec:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_10028d1a8;

loc_10028d1f8:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    r8 = r28;
    if (r0 != 0x0) goto loc_10028d198;

loc_10028d234:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10028d224:
    r0 = [r25 objectAtIndex:r2];
    goto loc_10028d234;
}

-(void *)getFirstAnimListTag {
    r0 = *(self + 0x8);
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 componentsSeparatedByString:@"-"];
    r0 = [r0 objectAtIndex:0x0];
    return r0;
}

-(void)deleteFirstAnim {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x8) count] != 0x0) {
            [*(r19 + 0x8) removeObjectAtIndex:0x0];
    }
    return;
}

-(void)purgeLayer {
    [*(self + 0x8) removeAllObjects];
    return;
}

-(bool)isLayerEmpty {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x8);
    r0 = [r0 count];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isLockedOnTaggedStack {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[*(self + 0x8) objectAtIndex:0x0] objectAtIndex:0x0];
    [NSString stringWithFormat:@"noTag-%d"];
    if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            [NSString stringWithFormat:@"-%d"];
            r0 = [r20 hasSuffix:r2];
    }
    return r0;
}

-(int)size {
    r0 = *(self + 0x8);
    r0 = [r0 count];
    return r0;
}

-(void *)fullLayerReport {
    r19 = @class(NSString);
    [r19 stringWithFormat:@"----> Layer: %@, Ran N Cycles-[%d], Running-[%hhd], Locked-[%hhd]"];
    r23 = @class(NSString);
    [self currentlyPlayingToString];
    [r23 stringWithFormat:@"------> Currently Playing: <------%@"];
    r24 = @class(NSString);
    [self taggedAnimListToString];
    [r24 stringWithFormat:@"------> To Play Stack: <------%@\n\n"];
    r0 = [r19 stringWithFormat:@"%@\n%@\n%@"];
    return r0;
}

-(void *)layerId {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)currentlyPlayingToString {
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
    var_110 = q0;
    r19 = *(self + 0x10);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r21 = @"";
            r27 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r19);
                            }
                            r25 = @selector(stringWithFormat:);
                            r0 = *(var_118 + r20 * 0x8);
                            [r0 toString];
                            r21 = objc_msgSend(@class(NSString), r25);
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r0 = objc_msgSend(r19, var_128);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = @"";
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)taggedAnimListToString {
    r31 = r31 - 0x170;
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
    r0 = *(self + 0x8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            r8 = 0x0;
            r21 = @"";
            var_130 = *var_110;
            do {
                    r24 = 0x0;
                    r23 = r8;
                    do {
                            r22 = r23 + r24;
                            if (*var_110 != var_130) {
                                    objc_enumerationMutation(var_138);
                            }
                            r27 = @selector(stringWithFormat:);
                            r28 = *(var_118 + r24 * 0x8);
                            [r28 objectAtIndex:0x0];
                            r0 = [r28 objectAtIndex:0x1];
                            [r0 toString];
                            objc_msgSend(@class(NSString), r27);
                            r21 = objc_msgSend(@class(NSString), r27);
                            r24 = r24 + 0x1;
                    } while (r24 < var_128);
                    r0 = objc_msgSend(var_138, var_140);
                    r8 = r23 + r24;
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = @"";
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(int)cycleCounter {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(void)setCycleCounter:(int)arg2 {
    *(int32_t *)(self + 0x20) = arg2;
    return;
}

-(bool)isRunning {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(void)setIsRunning:(bool)arg2 {
    *(int8_t *)(self + 0x28) = arg2;
    return;
}

-(bool)lockedOnTaggedStack {
    r0 = *(int8_t *)(self + 0x29);
    return r0;
}

-(void)setLockedOnTaggedStack:(bool)arg2 {
    *(int8_t *)(self + 0x29) = arg2;
    return;
}

-(int)currentStackAnimsCount {
    r0 = *(int32_t *)(self + 0x24);
    return r0;
}

-(void)setCurrentStackAnimsCount:(int)arg2 {
    *(int32_t *)(self + 0x24) = arg2;
    return;
}

@end