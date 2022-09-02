@implementation GADOMIDTreeWalker

+(void *)getInstance {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x10, &var_48);
    if (*0x1011dc048 != -0x1) {
            dispatch_once(0x1011dc048, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = *qword_1011dc050;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)stop {
    [self pause];
    [self->_statePublisher cleanupCache];
    return;
}

-(void)start {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    [var_8 updateTreeState];
    if (var_8->_timer == 0x0) {
            r0 = [NSTimer timerWithTimeInterval:var_8 target:@selector(onTick:) selector:0x0 userInfo:0x1 repeats:r6];
            r0 = [r0 retain];
            r10 = var_8->_timer;
            var_8->_timer = r0;
            [r10 release];
            r0 = [NSRunLoop mainRunLoop];
            r0 = [r0 retain];
            [r0 addTimer:var_8->_timer forMode:**_NSRunLoopCommonModes];
            [r0 release];
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[r29 - 0x20 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            r0 = [GADOMIDProcessorFactory new];
            r9 = var_8->_processorFactory;
            var_8->_processorFactory = r0;
            [r9 release];
            var_30 = [GADOMIDAdViewCache alloc];
            var_38 = [[GADOMIDAdSessionRegistry getInstance] retain];
            r0 = [var_30 initWithAdSessionRegistry:var_38];
            r9 = var_8->_adViewCache;
            var_8->_adViewCache = r0;
            [r9 release];
            [var_38 release];
            var_40 = [GADOMIDStatePublisher alloc];
            r0 = [GADOMIDAdSessionRegistry getInstance];
            r29 = r29;
            var_48 = [r0 retain];
            r0 = [var_40 initWithAdSessionRegistry:var_48];
            r9 = var_8->_statePublisher;
            var_8->_statePublisher = r0;
            [r9 release];
            [var_48 release];
    }
    var_50 = [var_8 retain];
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_50;
    return r0;
}

-(void)pause {
    [self->_timer invalidate];
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
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
    r9 = self->_date1;
    self->_date1 = r0;
    [r9 release];
    return;
}

-(void)afterWalk {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r9 = self->_date2;
    self->_date2 = r0;
    [r9 release];
    var_18 = [[self timeLogger] retain];
    var_20 = self->_count;
    [self->_date2 timeIntervalSinceDate:self->_date1];
    [var_18 didProcessObjectsCount:var_20 withTime:r3];
    [var_18 release];
    return;
}

-(void)doWalk {
    r31 = r31 - 0x90;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    [var_8->_adViewCache prepare];
    var_18 = [[var_8->_processorFactory rootProcessor] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    var_20 = d0;
    r0 = [var_8->_adViewCache hiddenSessionIds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_48 = [r0 count];
    [r0 release];
    if (var_48 >= 0x0) {
            var_50 = var_8->_statePublisher;
            r0 = [var_8->_adViewCache hiddenSessionIds];
            r29 = r29;
            var_58 = [r0 retain];
            [var_50 publishEmptyStateToSessions:var_58 timestamp:r3];
            [var_58 release];
    }
    r0 = [var_8->_adViewCache visibleSessionIds];
    r29 = r29;
    r0 = [r0 retain];
    var_68 = [r0 count];
    [r0 release];
    if (var_68 >= 0x0) {
            var_28 = [[var_18 stateForView:0x0] retain];
            [var_8 walkChildrenForView:0x0 processor:var_18 state:var_28 type:0x0];
            var_70 = var_8->_statePublisher;
            r0 = [var_8->_adViewCache visibleSessionIds];
            r29 = r29;
            var_80 = [r0 retain];
            [var_70 publishState:var_28 toSessions:var_80 timestamp:var_28];
            [var_80 release];
            objc_storeStrong(r29 - 0x28, 0x0);
    }
    else {
            [var_8->_statePublisher cleanupCache];
    }
    [var_8->_adViewCache cleanup];
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void)checkFriendlyObstruction:(void *)arg2 withState:(void *)arg3 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    objc_storeStrong(&var_18, arg2);
    r0 = objc_storeStrong(&var_20, arg3);
    var_28 = [[self->_adViewCache friendlySessionIdsForView:var_18] retain];
    if (var_28 != 0x0) {
            [GADOMIDDictionaryUtil state:var_20 addFriendlyObstructionForSessions:var_28];
    }
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(bool)handleAdView:(void *)arg2 withState:(void *)arg3 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    var_10 = self;
    objc_storeStrong(&var_20, arg2);
    r0 = objc_storeStrong(&var_28, arg3);
    var_30 = [[var_10->_adViewCache sessionIdForView:var_20] retain];
    if (var_30 == 0x0) {
            var_1 = 0x0;
    }
    else {
            [GADOMIDDictionaryUtil state:var_28 addSessionId:var_30];
            [var_10->_adViewCache onAdViewProcessed];
            var_1 = 0x1;
    }
    objc_storeStrong(&var_30, 0x0);
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&var_20, 0x0);
    r0 = var_1 & 0x1 & 0x1;
    return r0;
}

-(void)onTick:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    [self updateTreeState];
    objc_storeStrong(&var_18, 0x0);
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

-(void)walkView:(void *)arg2 processor:(void *)arg3 parentState:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, r2);
    objc_storeStrong(r29 - 0x20, r3);
    objc_storeStrong(r29 - 0x28, r4);
    if (([0x0 isHidden] & 0x1) == 0x0) {
            [0x0 alpha];
            if (d0 == 0x0) {
                    var_2C = 0x1;
            }
            else {
                    r2 = 0x0;
                    var_38 = [var_8->_adViewCache typeForView:r2];
                    if (var_38 == 0x2) {
                            var_2C = 0x1;
                    }
                    else {
                            var_8->_count = var_8->_count + 0x1;
                            r0 = [0x0 stateForView:0x0];
                            r29 = r29;
                            var_40 = [r0 retain];
                            [GADOMIDDictionaryUtil state:0x0 addChildState:var_40];
                            r2 = 0x0;
                            r3 = var_40;
                            if (([var_8 handleAdView:r2 withState:r3] & 0x1 & 0x1) == 0x0) {
                                    [var_8 checkFriendlyObstruction:0x0 withState:var_40];
                                    r2 = 0x0;
                                    r3 = 0x0;
                                    r4 = var_40;
                                    r5 = var_38;
                                    [var_8 walkChildrenForView:r2 processor:r3 state:r4 type:r5];
                            }
                            objc_storeStrong(&var_40, 0x0);
                            var_2C = 0x0;
                    }
            }
    }
    else {
            var_2C = 0x1;
    }
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = objc_storeStrong(r29 - 0x18, 0x0);
    r8 = var_2C - 0x1;
    if (r8 > 0x0) {
            r31 = r31 - 0x1c0;
            var_90 = r28;
            stack[-152] = r27;
            var_80 = r29;
            stack[-136] = r30;
            r29 = &var_80;
            r10 = *___stack_chk_guard;
            var_A0 = r0;
            objc_storeStrong(r29 - 0xb0, r2);
            objc_storeStrong(r29 - 0xb8, r3);
            objc_storeStrong(r29 - 0xc0, r4);
            var_159 = 0x0;
            var_169 = 0x0;
            if (r5 == 0x0) {
                    r0 = [0x0 orderedChildrenForView:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_158 = r0;
                    var_159 = 0x1;
                    var_1E8 = r0;
            }
            else {
                    r0 = [0x0 childrenForView:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_168 = r0;
                    var_169 = 0x1;
                    var_1E8 = r0;
            }
            var_D0 = [var_1E8 retain];
            if ((var_169 & 0x1 & 0x1) != 0x0) {
                    [var_168 release];
            }
            if ((var_159 & 0x1 & 0x1) != 0x0) {
                    [var_158 release];
            }
            r0 = [0x0 processorForChildren];
            r29 = r29;
            var_178 = [r0 retain];
            memset(&stack[-464], zero_extend_64(0x0), 0x40);
            r0 = [var_D0 retain];
            var_1F0 = r0;
            r0 = [r0 countByEnumeratingWithState:&stack[-464] objects:r29 - 0x98 count:0x10];
            var_1F8 = r0;
            if (r0 != 0x0) {
                    var_200 = *var_1B0;
                    var_208 = &stack[-464] + 0x10;
                    var_210 = 0x0;
                    var_218 = var_1F8;
                    do {
                            var_220 = var_218;
                            var_228 = var_210;
                            if (**var_208 != var_200) {
                                    objc_enumerationMutation(var_1F0);
                            }
                            [var_A0 walkView:*(var_1B8 + var_228 * 0x8) processor:var_178 parentState:0x0];
                            var_218 = var_220;
                            var_210 = var_228 + 0x1;
                            if (var_228 + 0x1 < var_220) {
                                continue;
                            }
                            r0 = [var_1F0 countByEnumeratingWithState:&stack[-464] objects:r29 - 0x98 count:0x10];
                            var_218 = r0;
                            var_210 = 0x0;
                    } while (r0 != 0x0);
            }
            var_18 = **___stack_chk_guard;
            [var_1F0 release];
            objc_storeStrong(&var_178, 0x0);
            objc_storeStrong(r29 - 0xd0, 0x0);
            objc_storeStrong(r29 - 0xc0, 0x0);
            objc_storeStrong(r29 - 0xb8, 0x0);
            objc_storeStrong(r29 - 0xb0, 0x0);
            if (**___stack_chk_guard != var_18) {
                    __stack_chk_fail();
            }
    }
    return;
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