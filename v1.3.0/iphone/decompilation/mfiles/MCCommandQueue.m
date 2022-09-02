@implementation MCCommandQueue

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableArray arrayWithCapacity:0x14] retain];
    }
    r0 = r19;
    return r0;
}

-(void)run {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x19) == 0x0) {
            [r0 processQueue];
            *(int8_t *)(r0 + 0x19) = 0x1;
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)enqueueCommand:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r20 conformsToProtocol:@protocol(MCCommand)] != 0x0) {
                    [*(r19 + 0x8) enqueue:r20];
                    if (*(int8_t *)(r19 + 0x19) != 0x0) {
                            [r19 processQueue];
                    }
            }
    }
    return;
}

-(void)enqueueCommands:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    var_110 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005f28bc;

loc_1005f2820:
    r22 = r0;
    r26 = *var_110;
    goto loc_1005f2838;

loc_1005f2838:
    r28 = 0x0;
    goto loc_1005f2844;

loc_1005f2844:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_118 + r28 * 0x8);
    if ([r25 conformsToProtocol:r2] == 0x0) goto loc_1005f28d4;

loc_1005f2878:
    [*(r19 + 0x8) enqueue:r2];
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1005f2844;

loc_1005f2894:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1005f2838;

loc_1005f28bc:
    if (*(int8_t *)(r19 + 0x19) != 0x0) {
            [r19 processQueue];
    }
    goto loc_1005f28d4;

loc_1005f28d4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)stop {
    r0 = self;
    if (*(int8_t *)(r0 + 0x19) != 0x0 && *(int8_t *)(r0 + 0x1a) == 0x0) {
            if (*(r0 + 0x10) != 0x0) {
                    *(int8_t *)(r0 + 0x1a) = 0x1;
            }
            else {
                    *(int8_t *)(r0 + 0x19) = 0x0;
            }
    }
    return;
}

-(void)update:(double)arg2 {
    [self processQueue];
    return;
}

-(bool)isRunning {
    r0 = *(int8_t *)(self + 0x19);
    return r0;
}

-(bool)isExecutingCommand {
    r0 = self;
    if (*(r0 + 0x10) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)processQueue {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 == 0x0) goto loc_1005f2a30;

loc_1005f29c8:
    if ([r0 count] == 0x0) goto loc_1005f2a30;

loc_1005f29d4:
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) goto loc_1005f29fc;

loc_1005f29dc:
    r0 = *(r19 + 0x8);
    r0 = [r0 peekQueue];
    *(r19 + 0x10) = r0;
    [r0 execute];
    r0 = *(r19 + 0x10);
    if (r0 == 0x0) goto loc_1005f2a20;

loc_1005f29fc:
    if ([r0 isFinished] == 0x0) goto loc_1005f2a30;

loc_1005f2a08:
    [*(r19 + 0x8) dequeue];
    *(r19 + 0x10) = 0x0;
    if (*(int8_t *)(r19 + 0x1a) != 0x0) goto loc_1005f2a2c;

loc_1005f2a20:
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) goto loc_1005f29c8;

loc_1005f2a30:
    r9 = *(r19 + 0x10);
    r8 = *(int8_t *)(r19 + 0x18);
    if (r9 != 0x0) {
            if (r8 == 0x0) {
                    [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:r19 priority:0x0 paused:0x0];
                    *(int8_t *)(r19 + 0x18) = 0x1;
            }
    }
    else {
            if (r8 != 0x0) {
                    [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r2];
                    *(int8_t *)(r19 + 0x18) = 0x0;
            }
    }
    return;

loc_1005f2a2c:
    *(int16_t *)(r19 + 0x19) = 0x0;
    goto loc_1005f2a30;
}

-(void)cleanQueuedCommands {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = self + 0x10;
    r0 = *r20;
    if (r0 != 0x0) {
            [r0 retain];
            [*(r19 + 0x8) removeAllObjects];
            [*(int128_t *)(r19 + 0x8) addObject:*(int128_t *)(r19 + 0x10)];
            r8 = &@selector(release);
    }
    else {
            r20 = r19 + 0x8;
            r8 = &@selector(removeAllObjects);
    }
    objc_msgSend(*r20, *r8);
    return;
}

@end