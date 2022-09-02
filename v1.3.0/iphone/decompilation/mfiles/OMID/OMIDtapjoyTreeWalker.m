@implementation OMIDtapjoyTreeWalker

+(void *)getInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc220 != -0x1) {
            dispatch_once(0x1011dc220, &var_28);
    }
    r0 = *0x1011dc228;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
            r0 = [OMIDtapjoyProcessorFactory new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_processorFactory));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r21 = [OMIDtapjoyAdViewCache alloc];
            r23 = [[OMIDtapjoyAdSessionRegistry getInstance] retain];
            r0 = [r21 initWithAdSessionRegistry:r23];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewCache));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r23 release];
            r20 = [OMIDtapjoyStatePublisher alloc];
            r21 = [[OMIDtapjoyAdSessionRegistry getInstance] retain];
            r0 = [r20 initWithAdSessionRegistry:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_statePublisher));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void)start {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self updateTreeState];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    if (*(r19 + r21) == 0x0) {
            r0 = [NSTimer timerWithTimeInterval:r19 target:@selector(onTick:) selector:0x0 userInfo:0x1 repeats:r6];
            r0 = [r0 retain];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            r0 = [NSRunLoop mainRunLoop];
            r0 = [r0 retain];
            [r0 addTimer:*(r19 + r21) forMode:**_NSRunLoopCommonModes];
            [r0 release];
    }
    return;
}

-(void)stop {
    [self pause];
    [self->_statePublisher cleanupCache];
    return;
}

-(void)pause {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    r0 = [self timeLogger];
    r0 = [r0 retain];
    [r0 didProcessObjectsCount:0x0 withTime:r3];
    [r0 release];
    return;
}

-(void)updateTreeState {
    [self beforeWalk];
    [self doWalk];
    [self afterWalk];
    return;
}

-(void)beforeWalk {
    self->_count = 0x0;
    r0 = [NSDate date];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_date1));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)afterWalk {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_date2));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    r20 = [[self timeLogger] retain];
    r21 = self->_count;
    [*(self + r22) timeIntervalSinceDate:self->_date1];
    [r20 didProcessObjectsCount:r21 withTime:r3];
    [r20 release];
    return;
}

-(void)doWalk {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_adViewCache));
    [*(r19 + r25) prepare];
    r20 = [[r19->_processorFactory rootProcessor] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r0 release];
    r0 = *(r19 + r25);
    r0 = [r0 hiddenSessionIds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 != 0x0) {
            r23 = r19->_statePublisher;
            r0 = *(r19 + r25);
            r0 = [r0 hiddenSessionIds];
            r29 = r29;
            r22 = [r0 retain];
            [r23 publishEmptyStateToSessions:r22 timestamp:r3];
            [r22 release];
    }
    r21 = @selector(count);
    r0 = *(r19 + r25);
    r0 = [r0 visibleSessionIds];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21);
    [r0 release];
    if (r21 != 0x0) {
            r21 = [[r20 stateForView:0x0] retain];
            [r19 walkChildrenForView:0x0 processor:r20 state:r21 type:0x0];
            r23 = r19->_statePublisher;
            r22 = [[*(r19 + r25) visibleSessionIds] retain];
            [r23 publishState:r21 toSessions:r22 timestamp:r21];
            [r22 release];
            [r21 release];
    }
    else {
            [r19->_statePublisher cleanupCache];
    }
    [*(r19 + r25) cleanup];
    [r20 release];
    return;
}

-(void)walkView:(void *)arg2 processor:(void *)arg3 parentState:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if (([r21 isHidden] & 0x1) == 0x0) {
            [r21 alpha];
            if (d0 != 0x0) {
                    r23 = [r22->_adViewCache typeForView:r21];
                    if (r23 != 0x2) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_count));
                            *(r22 + r8) = *(r22 + r8) + 0x1;
                            r24 = [[r19 stateForView:r21] retain];
                            [OMIDtapjoyDictionaryUtil state:r20 addChildState:r24];
                            if (([r22 handleAdView:r21 withState:r24] & 0x1) == 0x0) {
                                    [r22 checkFriendlyObstruction:r21 withState:r24];
                                    [r22 walkChildrenForView:r21 processor:r19 state:r24 type:r23];
                            }
                            [r24 release];
                    }
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)handleAdView:(void *)arg2 withState:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adViewCache));
    r21 = [[*(r20 + r22) sessionIdForView:arg2] retain];
    if (r21 != 0x0) {
            [OMIDtapjoyDictionaryUtil state:r19 addSessionId:r21];
            [*(r20 + r22) onAdViewProcessed];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)walkChildrenForView:(void *)arg2 processor:(void *)arg3 state:(void *)arg4 type:(unsigned long long)arg5 {
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
    r21 = arg2;
    r20 = self;
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    if (arg5 != 0x0) {
            r0 = [r22 childrenForView:r21];
            r29 = r29;
    }
    else {
            r0 = [r22 orderedChildrenForView:r21];
            r29 = r29;
    }
    r23 = [r0 retain];
    r21 = [[r22 processorForChildren] retain];
    [r22 release];
    var_108 = q0;
    r0 = [r23 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            r26 = *var_108;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_108 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            [r20 walkView:r2 processor:r3 parentState:r4];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)checkFriendlyObstruction:(void *)arg2 withState:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = [[self->_adViewCache friendlySessionIdsForView:arg2] retain];
    if (r20 != 0x0) {
            [OMIDtapjoyDictionaryUtil state:r19 addFriendlyObstructionForSessions:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)onTick:(void *)arg2 {
    [self updateTreeState];
    return;
}

-(void *)timeLogger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_timeLogger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTimeLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_timeLogger, arg2);
    return;
}

-(void *)processorFactory {
    r0 = self->_processorFactory;
    return r0;
}

-(void *)adViewCache {
    r0 = self->_adViewCache;
    return r0;
}

-(void *)statePublisher {
    r0 = self->_statePublisher;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_statePublisher, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewCache, 0x0);
    objc_storeStrong((int64_t *)&self->_processorFactory, 0x0);
    objc_destroyWeak((int64_t *)&self->_timeLogger);
    objc_storeStrong((int64_t *)&self->_date2, 0x0);
    objc_storeStrong((int64_t *)&self->_date1, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    return;
}

@end