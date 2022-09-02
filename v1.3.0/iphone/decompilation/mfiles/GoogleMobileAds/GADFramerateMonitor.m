@implementation GADFramerateMonitor

+(void *)sharedInstance {
    if (*qword_1011dbe48 != -0x1) {
            dispatch_once(0x1011dbe48, 0x100e98f38);
    }
    r0 = *0x1011dbe40;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSHashTable weakObjectsHashTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
    r0 = *(self + r21);
    r0 = [r0 retain];
    *(self + r21) = 0x0;
    [r0 release];
    [r0 retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_58 super] dealloc];
    return;
}

-(void)startIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
    if (*(r19 + r20) == 0x0 && [r19->_observers count] != 0x0) {
            r0 = [CADisplayLink displayLinkWithTarget:r19 selector:@selector(handleRenderForDisplayLink:)];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r20 = *(r19 + r20);
            r21 = [[NSRunLoop mainRunLoop] retain];
            [r20 addToRunLoop:r21 forMode:**_NSDefaultRunLoopMode];
            [r21 release];
            *(int8_t *)(int64_t *)&r19->_hasFirstFrameInfo = 0x0;
    }
    return;
}

-(void)stopIfNeeded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
    if (*(r19 + r20) != 0x0 && [r19->_observers count] == 0x0) {
            [*(r19 + r20) invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)addFramerateObserver:(void *)arg2 {
    sub_1008224f0(self->_observers, arg2);
    [self startIfNeeded];
    return;
}

-(void)removeFramerateObserver:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    sub_1008b9904();
    r21 = [r19 droppedFrameCountBetweenLastRenderAndTimestamp:r2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    if (r21 >= 0x1 && [*(r19 + r22) containsObject:r2] != 0x0) {
            [r20 framerateMonitorDidDetectDroppedFrames:r21];
    }
    sub_100822550(*(r19 + r22), r20);
    [r19 stopIfNeeded];
    [r20 release];
    return;
}

-(long long)droppedFrameCountBetweenLastRenderAndTimestamp:(double)arg2 {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_hasFirstFrameInfo != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_frameDuration));
            asm { fdiv       d0, d0, d2 };
            asm { fcvtas     x8, d0 };
            r0 = r8 - 0x1 & !((r8 - 0x1) / 0xffffffff80000000);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(double)frameDuration {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_displayLink, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleRenderForDisplayLink:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r0 = [arg2 retain];
    r20 = r0;
    [r0 timestamp];
    v8 = v0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_hasFirstFrameInfo));
    if (*(int8_t *)(r19 + r24) != 0x0) {
            r21 = [r19 droppedFrameCountBetweenLastRenderAndTimestamp:r2];
            if (r21 >= 0x1) {
                    r0 = r19->_observers;
                    r0 = [r0 retain];
                    r22 = r0;
                    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r24 != 0x0) {
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r22);
                                            }
                                            r0 = *(0x0 + r28 * 0x8);
                                            if (r0 != 0x0) {
                                                    [r0 framerateMonitorDidDetectDroppedFrames:r2];
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r24);
                                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r24 != 0x0);
                    }
                    [r22 release];
            }
            r19->_lastDrawTimestamp = d8;
    }
    else {
            r19->_lastDrawTimestamp = d8;
            if ([UIScreen instancesRespondToSelector:@selector(maximumFramesPerSecond)] != 0x0) {
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    r23 = r0;
                    [r0 maximumFramesPerSecond];
                    asm { scvtf      d0, x0 };
                    asm { fdiv       d0, d1, d0 };
                    r19->_frameDuration = d0;
                    [r23 release];
            }
            else {
                    [r20 duration];
                    r19->_frameDuration = d0;
            }
            [r20 timestamp];
            sub_1008b9904();
            r19->_secondsSinceBootAtDisplayLinkReferenceDate = d0 - d8;
            *(int8_t *)(r19 + r24) = 0x1;
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

@end