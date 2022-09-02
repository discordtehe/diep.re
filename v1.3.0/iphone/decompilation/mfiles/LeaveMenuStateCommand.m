@implementation LeaveMenuStateCommand

+(void *)commandWithMenuStateManager:(void *)arg2 delegate:(void *)arg3 stackEntry:(void *)arg4 newStackEntry:(void *)arg5 toStack:(bool)arg6 ignoreVisibilityStack:(bool)arg7 {
    r0 = [LeaveMenuStateCommand object];
    [r0 setupWithMenuStateManager:arg2 delegate:arg3 stackEntry:arg4 newStackEntry:arg5 toStack:arg6 ignoreVisibilityStack:arg7];
    r0 = r0;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setupWithMenuStateManager:(void *)arg2 delegate:(void *)arg3 stackEntry:(void *)arg4 newStackEntry:(void *)arg5 toStack:(bool)arg6 ignoreVisibilityStack:(bool)arg7 {
    r7 = arg7;
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r21 = r0;
            if (*(int8_t *)(r0 + 0x11) == 0x0) {
                    r19 = r7;
                    r20 = r6;
                    r22 = r5;
                    r23 = r4;
                    r24 = r3;
                    r25 = r2;
                    r0 = *(r21 + 0x18);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r21 + 0x18) = 0x0;
                    }
                    r0 = *(r21 + 0x20);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r21 + 0x20) = 0x0;
                    }
                    r0 = *(r21 + 0x28);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r21 + 0x28) = 0x0;
                    }
                    r0 = *(r21 + 0x30);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r21 + 0x30) = 0x0;
                    }
                    *(r21 + 0x18) = [r25 retain];
                    *(r21 + 0x20) = [r24 retain];
                    *(r21 + 0x28) = [r23 retain];
                    *(r21 + 0x30) = [r22 retain];
                    *(int8_t *)(r21 + 0x12) = r20;
                    *(int8_t *)(r21 + 0x13) = r19;
            }
    }
    return;
}

-(void)execute {
    r0 = self;
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x10) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(r0 + 0x11) == 0x0) {
                    *(int8_t *)(r19 + 0x10) = 0x1;
                    r0 = *(r19 + 0x28);
                    if (r0 != 0x0) {
                            r0 = [r0 instance];
                            r20 = r0;
                            [r0 disableInput];
                            if (*(int8_t *)(r19 + 0x12) == 0x0 && *(int8_t *)(r19 + 0x13) == 0x0) {
                                    if ([r20 occupiesFullScreen] != 0x0) {
                                            [*(r19 + 0x18) leftFullscreenState];
                                    }
                            }
                            r0 = *(r19 + 0x30);
                            if (r0 != 0x0) {
                                    r2 = [[r0 menuState] theId];
                            }
                            else {
                                    r2 = 0x0;
                            }
                            [r20 leaveWithNewState:r2 toStack:*(int8_t *)(r19 + 0x12)];
                            if (d0 > 0x0) {
                                    r0 = [CCDirector sharedDirector];
                                    r0 = [r0 scheduler];
                                    var_50 = *__NSConcreteStackBlock;
                                    [r0 scheduleBlockForKey:@"LeaveMenuStateCommandFinishHelper" target:r19 interval:0x0 repeat:0x0 delay:&var_50 paused:r7 block:var_50];
                            }
                            else {
                                    [r19 finish];
                            }
                    }
                    else {
                            [r19 finish];
                    }
            }
    }
    return;
}

-(bool)isFinished {
    r0 = *(int8_t *)(self + 0x11);
    return r0;
}

-(void)finish {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r20 = [r0 instance];
            if (*(int8_t *)(r19 + 0x12) != 0x0) {
                    r2 = 0x1;
            }
            else {
                    [r20 hide];
                    if (*(int8_t *)(r19 + 0x12) != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
            }
            [r20 finishLeave:r2];
            if ([*(r19 + 0x20) respondsToSelector:@selector(didLeaveState:toStack:), r3] != 0x0) {
                    [*(int128_t *)(r19 + 0x20) didLeaveState:[[*(int128_t *)(r19 + 0x28) menuState] theId] toStack:*(int8_t *)(r19 + 0x12)];
            }
    }
    *(int16_t *)(r19 + 0x10) = 0x100;
    return;
}

@end