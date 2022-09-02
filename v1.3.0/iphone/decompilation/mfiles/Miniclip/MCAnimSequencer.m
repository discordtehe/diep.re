@implementation MCAnimSequencer

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionary] retain];
            *(r19 + 0x10) = [[NSMutableDictionary dictionary] retain];
            *(int128_t *)(r19 + 0x18) = [[NSMutableArray array] retain];
            *(int128_t *)(r19 + 0x20) = @"";
            *(r19 + 0x28) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setBoardName:(void *)arg2 {
    *(self + 0x20) = arg2;
    return;
}

-(void)addToStack:(void *)arg2 {
    [self addToStack:arg2 toAnimLayer:@"main"];
    return;
}

-(void)addToStack:(void *)arg2 toAnimLayer:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [[r0 getOrCreateMCAnimSequencerLayerWithId:r3] addToLayer:r2];
            [r0 start];
    }
    return;
}

-(void)addToStack:(void *)arg2 withTag:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (([arg3 isEqual:r2] & 0x1) == 0x0) {
            [r21 addToStack:r20 withTag:r19 toAnimLayer:@"main"];
    }
    return;
}

-(void)addToStack:(void *)arg2 withTag:(void *)arg3 toAnimLayer:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r22 = r4;
            r21 = r3;
            r20 = r2;
            r19 = r0;
            if (([r3 isEqual:r2] & 0x1) == 0x0) {
                    r0 = [r19 getOrCreateMCAnimSequencerLayerWithId:r22];
                    if (r21 != 0x0) {
                            [r0 addToLayer:r20 withTag:r21];
                    }
                    else {
                            [r0 addToLayer:r20];
                    }
                    [r19 start];
            }
    }
    return;
}

-(void *)addToStack:(void *)arg2 triggeredByMainWithTag:(void *)arg3 {
    r0 = [self addToStack:arg2 triggeredByLayer:@"main" andTag:arg3];
    return r0;
}

-(void *)addToStack:(void *)arg2 triggeredByMainWithTag:(void *)arg3 withInternalTag:(void *)arg4 {
    r0 = [self addToStack:arg2 triggeredByLayer:@"main" andTag:arg3 withInternalTag:arg4];
    return r0;
}

-(void *)addToStack:(void *)arg2 triggeredByLayer:(void *)arg3 andTag:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [NSString stringWithFormat:@"%@-%@-%@"];
            [[r0 getOrCreateTriggeredMCAnimSequencerLayerWithId:r21] addToLayer:r2];
            r0 = r21;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)addToStack:(void *)arg2 triggeredByLayer:(void *)arg3 andTag:(void *)arg4 withInternalTag:(void *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r22 = [NSString stringWithFormat:@"%@-%@-%@"];
            [[r0 getOrCreateTriggeredMCAnimSequencerLayerWithId:r22] addToLayer:r2 withTag:r5];
            r0 = r22;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)addConcurrentlyToStack:(void *)arg2 triggeredByMainWithTag:(void *)arg3 {
    r0 = [self addConcurrentlyToStack:arg2 triggeredByLayer:@"main" andTag:arg3];
    return r0;
}

-(void *)addConcurrentlyToStack:(void *)arg2 triggeredByLayer:(void *)arg3 andTag:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [NSString stringWithFormat:@"%@-%@-%@"];
            [[r0 getOrCreateTriggeredMCAnimSequencerLayerWithId:r21] addConcurrentlyToLayer:r2];
            r0 = r21;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)playAnimationNow:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            r21 = [NSString stringWithFormat:@"%@-%d"];
            if ([r19 getMCAnimSequencerLayerWithId:r2] != 0x0) {
                    r27 = 0x1;
                    do {
                            r21 = [NSString stringWithFormat:@"%@-%d"];
                            r0 = [r19 getMCAnimSequencerLayerWithId:r2];
                            r27 = r27 + 0x1;
                    } while (r0 != 0x0);
            }
            r22 = [r19 getOrCreateMCAnimSequencerLayerWithId:r21];
            [*(r19 + 0x18) addObject:r21];
            [r22 addToLayer:r20];
            [r19 startSingleLayer:r21];
    }
    else {
            r21 = 0x0;
    }
    r0 = r21;
    return r0;
}

-(void *)getOrCreateMCAnimSequencerLayerWithId:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [MCAnimSequencerLayer makeMCAnimSequencerLayerWithId:r19];
            [*(r20 + 0x8) setObject:r2 forKey:r3];
    }
    r0 = r21;
    return r0;
}

-(void *)getMCAnimSequencerLayerWithId:(void *)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)getOrCreateTriggeredMCAnimSequencerLayerWithId:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x10);
    r0 = [r0 objectForKey:r2];
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [MCAnimSequencerLayer makeMCAnimSequencerLayerWithId:r19];
            [*(r20 + 0x10) setObject:r2 forKey:r3];
    }
    r0 = r21;
    return r0;
}

-(void *)getTriggeredMCAnimSequencerLayerWithId:(void *)arg2 {
    r0 = *(self + 0x10);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(bool)isLayerRunning:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = @selector(getMCAnimSequencerLayerWithId:);
    if (objc_msgSend(self, r21) == 0x0) {
            r21 = @selector(getTriggeredMCAnimSequencerLayerWithId:);
            r0 = objc_msgSend(r20, r21);
            if (r0 != 0x0) {
                    r0 = objc_msgSend(r20, r21);
                    r0 = [r0 isRunning];
            }
    }
    else {
            r0 = objc_msgSend(r20, r21);
            r0 = [r0 isRunning];
    }
    return r0;
}

-(void)stopLayerAndPlayNext:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self getMCAnimSequencerLayerWithId:r2];
    if (r0 == 0x0) goto loc_10028e324;

loc_10028e308:
    r21 = r0;
    [r0 stopRunningAnimations];
    r22 = &@selector(startSingleLayer:);
    goto loc_10028e354;

loc_10028e354:
    [r21 deleteFirstAnim];
    objc_msgSend(r20, *r22);
    return;

.l1:
    return;

loc_10028e324:
    r0 = [r20 getTriggeredMCAnimSequencerLayerWithId:r19];
    if (r0 == 0x0) goto .l1;

loc_10028e33c:
    r21 = r0;
    [r0 stopRunningAnimations];
    r22 = &@selector(startTriggeredLayer:);
    goto loc_10028e354;
}

-(void)stopLayer:(void *)arg2 andPlayAnimBeforeNext:(void *)arg3 {
    [self stopLayer:arg2 andPlayAnimBeforeNext:arg3 withTag:@"noTag"];
    return;
}

-(void)stopMainLayerAndPlayAnimBeforeNext:(void *)arg2 {
    [self stopLayer:@"main" andPlayAnimBeforeNext:arg2 withTag:@"noTag"];
    return;
}

-(void)stopLayer:(void *)arg2 andPlayAnimBeforeNext:(void *)arg3 withTag:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r19 = arg2;
    r20 = self;
    r0 = [self getMCAnimSequencerLayerWithId:r2];
    if (r0 != 0x0) {
            r23 = r0;
            if ([r0 isRunning] != 0x0) {
                    [r23 stopRunningAnimations];
                    [r23 deleteFirstAnim];
                    [r23 insertInLayerAsFirst:r22 withTag:r21];
                    [r20 startSingleLayer:r19];
            }
    }
    r0 = [r20 getTriggeredMCAnimSequencerLayerWithId:r19];
    if (r0 != 0x0) {
            r23 = r0;
            if ([r0 isRunning] != 0x0) {
                    [r23 stopRunningAnimations];
                    [r23 deleteFirstAnim];
                    [r23 insertInLayerAsFirst:r22 withTag:r21];
                    [r20 startTriggeredLayer:r19];
            }
    }
    return;
}

-(void)stopMainLayerAndPlayAnimBeforeNext:(void *)arg2 withTag:(void *)arg3 {
    [self stopLayer:@"main" andPlayAnimBeforeNext:arg2 withTag:arg3];
    return;
}

-(void)stopAndPurgeMainLayer {
    [self stopAndPurgeLayer:@"main"];
    return;
}

-(void)stopAndPurgeLayer:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self getMCAnimSequencerLayerWithId:r2];
    if (r0 != 0x0) {
            r21 = r0;
            if ([r0 isRunning] != 0x0) {
                    [r21 stopRunningAnimations];
                    [r21 deleteFirstAnim];
            }
            [r21 purgeLayer];
    }
    else {
            r0 = [r20 getTriggeredMCAnimSequencerLayerWithId:r19];
            if (r0 != 0x0) {
                    r21 = r0;
                    if ([r0 isRunning] != 0x0) {
                            [r21 stopRunningAnimations];
                            [r21 deleteFirstAnim];
                    }
                    [r21 purgeLayer];
                    [*(r20 + 0x10) removeObjectForKey:r2];
            }
    }
    return;
}

-(void)start {
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
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r28 * 0x8) layerId];
                            objc_msgSend(r19, r24);
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)startSingleLayer:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r0 = [self getMCAnimSequencerLayerWithId:r2];
    if (r0 != 0x0) {
            r20 = r0;
            if (([r20 isLockedOnTaggedStack] & 0x1) == 0x0 && ([r0 isLayerEmpty] & 0x1) == 0x0 && ([r20 isRunning] & 0x1) == 0x0) {
                    [r20 setIsRunning:0x1];
                    r22 = [r20 getFirstAnimList];
                    [r20 getFirstAnimListTag];
                    r21 = [NSString stringWithFormat:@"%@-%@-%@"];
                    if ([r19 getTriggeredMCAnimSequencerLayerWithId:r21] != 0x0) {
                            [r19 startTriggeredLayer:r21];
                    }
                    [r19 playAnim:r22 ofLayer:r20];
            }
    }
    [r19 animationSequencerFullReport:0x0];
    return;
}

-(void)stopAndPurgeAllLayers {
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
    r19 = self;
    var_190 = q0;
    r0 = *(self + 0x8);
    r0 = [r0 allKeys];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r26 = *var_190;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_190 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            [r19 stopAndPurgeLayer:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = q0;
    r0 = *(r19 + 0x10);
    r0 = [r0 allKeys];
    r21 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_1D0;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_1D0 != r24) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 stopAndPurgeLayer:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)endCycleAndRunAllPendingAnimations {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    var_190 = q0;
    var_1E8 = self;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r21 = *var_190;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_190 != r21) {
                                    objc_enumerationMutation(r22);
                            }
                            [*(var_198 + r19 * 0x8) setLockedOnTaggedStack:r2];
                            objc_msgSend(r27, r25) + 0x1;
                            objc_msgSend(r27, r26);
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = q0;
    r0 = *(var_1E8 + 0x10);
    r0 = [r0 allValues];
    r21 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_1D0;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_1D0 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_1D8 + r19 * 0x8) setLockedOnTaggedStack:r2];
                            objc_msgSend(r26, r24) + 0x1;
                            objc_msgSend(r26, r25);
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_1E8 start];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)startTriggeredLayer:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self getTriggeredMCAnimSequencerLayerWithId:arg2];
    if (r0 != 0x0) {
            r20 = r0;
            if (([r0 isLayerEmpty] & 0x1) == 0x0 && ([r20 isRunning] & 0x1) == 0x0) {
                    if (([r20 isLockedOnTaggedStack] & 0x1) == 0x0) {
                            [r20 setIsRunning:0x1];
                            [r19 playAnim:[r20 getFirstAnimList] ofLayer:r20];
                    }
            }
    }
    [r19 animationSequencerFullReport:0x0];
    return;
}

-(void)playAnim:(void *)arg2 ofLayer:(void *)arg3 {
    [arg3 registerAnimAsCurrentlyRunning:r2];
    [arg2 playWithSelectorOnStart:@selector(animationStart:data:) andSelectorOnEnd:@selector(animationEnded:data:) withData:[arg3 layerId] onTarget:self];
    return;
}

-(void)animationStart:(void *)arg2 data:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = self;
    r0 = [self getMCAnimSequencerLayerWithId:arg3];
    r20 = r0;
    if (r0 == 0x0) {
            r20 = [r21 getTriggeredMCAnimSequencerLayerWithId:r19];
    }
    [r20 setCurrentStackAnimsCount:[r20 currentStackAnimsCount] + 0x1];
    return;
}

-(void)animationEnded:(void *)arg2 data:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r0 = [self getMCAnimSequencerLayerWithId:arg3];
    r20 = r0;
    if (r0 == 0x0) {
            r20 = [r19 getTriggeredMCAnimSequencerLayerWithId:r21];
    }
    [r20 setCurrentStackAnimsCount:[r20 currentStackAnimsCount] - 0x1];
    if ([r20 isCurrentlyRunningDoneAnimating] != 0x0) {
            [r19 transitToNextStack:r20];
    }
    return;
}

-(void)animationTimeout:(void *)arg2 data:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r0 = [self getMCAnimSequencerLayerWithId:arg3];
    r20 = r0;
    if (r0 == 0x0) {
            r20 = [r19 getTriggeredMCAnimSequencerLayerWithId:r21];
    }
    [r20 setCurrentStackAnimsCount:[r20 currentStackAnimsCount] - 0x1];
    if ([r20 isCurrentlyRunningDoneAnimating] != 0x0) {
            [r19 transitToNextStack:r20];
    }
    return;
}

-(void *)getAnimationSequencerReport {
    r20 = @class(NSString);
    r21 = @selector(stringWithFormat:);
    objc_msgSend(r20, r21);
    r23 = @class(NSString);
    [self layersInfoToString];
    objc_msgSend(r23, r21);
    r0 = objc_msgSend(r20, r21);
    return r0;
}

-(void)animationSequencerFullReport:(void *)arg2 {
    return;
}

-(void)transitToNextStack:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [arg2 setIsRunning:0x0];
    [r20 clearCurrentlyRunningList];
    [r20 deleteFirstAnim];
    r23 = *(r19 + 0x18);
    [r20 layerId];
    if ([r23 containsObject:r2] != 0x0) {
            [*(r19 + 0x18) removeObject:[r20 layerId]];
            r23 = *(r19 + 0x8);
            [r20 layerId];
            [r23 removeObjectForKey:r2];
    }
    if ([[*(r19 + 0x10) allValues] containsObject:r2] == 0x0) goto loc_10028f0ec;

loc_10028f084:
    if (([r20 isLayerEmpty] & 0x1) == 0x0) goto loc_10028f0cc;

loc_10028f098:
    r19 = *(r19 + 0x10);
    [r20 layerId];
    [r19 removeObjectForKey:r2];
    return;

loc_10028f0cc:
    [r19 startTriggeredLayer:[r20 layerId]];
    goto loc_10028f0ec;

loc_10028f0ec:
    [r19 start];
    return;
}

-(void *)layersInfoToString {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r21 = self;
    var_190 = q0;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            stack[-512] = r21;
            r21 = *var_190;
            r20 = @"";
            do {
                    r22 = 0x0;
                    do {
                            if (*var_190 != r21) {
                                    objc_enumerationMutation(r23);
                            }
                            r27 = @selector(stringWithFormat:);
                            r0 = *(var_198 + r22 * 0x8);
                            [r0 fullLayerReport];
                            r20 = objc_msgSend(@class(NSString), r27);
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(r23, var_1E8);
                    r24 = r0;
            } while (r0 != 0x0);
            r22 = @selector(allValues);
            r21 = stack[-512];
    }
    else {
            r22 = @selector(allValues);
            r20 = @"";
    }
    var_1D0 = q0;
    r0 = *(r21 + 0x10);
    r0 = objc_msgSend(r0, r22);
    r19 = r0;
    r0 = objc_msgSend(r0, var_1E8);
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_1D0;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_1D0 != r28) {
                                    objc_enumerationMutation(r19);
                            }
                            r0 = *(var_1D8 + r21 * 0x8);
                            [r0 fullLayerReport];
                            [NSString stringWithFormat:@"%@\n\n%@"];
                            r20 = [r20 stringByAppendingString:r2];
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r0 = objc_msgSend(r19, var_1E8);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end