@implementation State

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            *(r19 + 0x10) = [StateSelectors new];
            *(int32_t *)(r19 + 0x18) = 0xffffffffffffffff;
    }
    r0 = r19;
    return r0;
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
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)initState:(unsigned int)arg2 {
    *(int32_t *)(self + 0x18) = arg2;
    return;
}

+(void *)createState:(unsigned int)arg2 {
    r0 = [State object];
    [r0 initState:arg2];
    r0 = r0;
    return r0;
}

-(int)stateId {
    r0 = *(int32_t *)(self + 0x18);
    return r0;
}

-(void *)description {
    r0 = [NSString stringWithFormat:@"State id: %d"];
    return r0;
}

-(void)setEnterStateSelector:(void *)arg2 target:(void *)arg3 {
    [*(self + 0x10) setEnterStateByPushSelector:r2];
    [*(self + 0x10) setEnterStateByPopSelector:arg2];
    [*(self + 0x10) setEnterStateByPushTarget:arg3];
    [*(self + 0x10) setEnterStateByPopTarget:arg3];
    return;
}

-(void)setEnterStateSelector:(void *)arg2 target:(void *)arg3 fromStateId:(unsigned int)arg4 {
    r0 = [self getSpecificSelectors:arg4 create:0x1];
    [r0 setEnterStateByPushSelector:arg2];
    [r0 setEnterStateByPopSelector:arg2];
    [r0 setEnterStateByPushTarget:arg3];
    [r0 setEnterStateByPopTarget:arg3];
    return;
}

-(void *)getSpecificSelectors:(unsigned int)arg2 create:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [NSNumber numberWithUnsignedInt:arg2];
    r0 = *(r19 + 0x8);
    r0 = [r0 objectForKey:r2];
    r21 = r0;
    if (r0 == 0x0) {
            asm { ccmp       w22, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r21 = [StateSelectors new];
            [*(r19 + 0x8) setObject:r21 forKey:r20];
            [r21 release];
    }
    r0 = r21;
    return r0;
}

-(void)setEnterStateByPushSelector:(void *)arg2 target:(void *)arg3 {
    [*(self + 0x10) setEnterStateByPushSelector:arg2];
    [*(self + 0x10) setEnterStateByPushTarget:arg3];
    return;
}

-(void)setEnterStateByPushSelector:(void *)arg2 target:(void *)arg3 fromStateId:(unsigned int)arg4 {
    r0 = [self getSpecificSelectors:arg4 create:0x1];
    [r0 setEnterStateByPushSelector:arg2];
    [r0 setEnterStateByPushTarget:arg3];
    return;
}

-(void)setEnterStateByPopSelector:(void *)arg2 target:(void *)arg3 fromStateId:(unsigned int)arg4 {
    r0 = [self getSpecificSelectors:arg4 create:0x1];
    [r0 setEnterStateByPopSelector:arg2];
    [r0 setEnterStateByPopTarget:arg3];
    return;
}

-(void)setEnterStateByPopSelector:(void *)arg2 target:(void *)arg3 {
    [*(self + 0x10) setEnterStateByPopSelector:arg2];
    [*(self + 0x10) setEnterStateByPopTarget:arg3];
    return;
}

-(void)setLeaveStateByPushSelector:(void *)arg2 target:(void *)arg3 toStateId:(unsigned int)arg4 {
    r0 = [self getSpecificSelectors:arg4 create:0x1];
    [r0 setLeaveStateByPushSelector:arg2];
    [r0 setLeaveStateByPushTarget:arg3];
    return;
}

-(void)setLeaveStateSelector:(void *)arg2 target:(void *)arg3 {
    [*(self + 0x10) setLeaveStateByPushSelector:r2];
    [*(self + 0x10) setLeaveStateByPopSelector:arg2];
    [*(self + 0x10) setLeaveStateByPushTarget:arg3];
    [*(self + 0x10) setLeaveStateByPopTarget:arg3];
    return;
}

-(void)setLeaveStateSelector:(void *)arg2 target:(void *)arg3 toStateId:(unsigned int)arg4 {
    r0 = [self getSpecificSelectors:arg4 create:0x1];
    [r0 setLeaveStateByPushSelector:arg2];
    [r0 setLeaveStateByPopSelector:arg2];
    [r0 setLeaveStateByPushTarget:arg3];
    [r0 setLeaveStateByPopTarget:arg3];
    return;
}

-(void)setLeaveStateByPushSelector:(void *)arg2 target:(void *)arg3 {
    [*(self + 0x10) setLeaveStateByPushSelector:arg2];
    [*(self + 0x10) setLeaveStateByPushTarget:arg3];
    return;
}

-(void)setLeaveStateByPopSelector:(void *)arg2 target:(void *)arg3 toStateId:(unsigned int)arg4 {
    r0 = [self getSpecificSelectors:arg4 create:0x1];
    [r0 setLeaveStateByPopSelector:arg2];
    [r0 setLeaveStateByPopTarget:arg3];
    return;
}

-(void)setParam:(void *)arg2 {
    [*(self + 0x10) setEnterStateByPushParam:r2];
    [*(self + 0x10) setEnterStateByPopParam:arg2];
    [*(self + 0x10) setLeaveStateByPushParam:arg2];
    [*(self + 0x10) setLeaveStateByPopParam:arg2];
    return;
}

-(void)setEnterStateParam:(void *)arg2 {
    [*(self + 0x10) setEnterStateByPushParam:r2];
    [*(self + 0x10) setEnterStateByPopParam:arg2];
    return;
}

-(void)setLeaveStateByPopSelector:(void *)arg2 target:(void *)arg3 {
    [*(self + 0x10) setLeaveStateByPopSelector:arg2];
    [*(self + 0x10) setLeaveStateByPopTarget:arg3];
    return;
}

-(void)setEnterStateByPushParam:(void *)arg2 fromStateId:(unsigned int)arg3 {
    [[self getSpecificSelectors:arg3 create:0x1] setEnterStateByPushParam:arg2];
    return;
}

-(void)setEnterStateByPushParam:(void *)arg2 {
    [*(self + 0x10) setEnterStateByPushParam:arg2];
    return;
}

-(void)setEnterStateParam:(void *)arg2 fromStateId:(unsigned int)arg3 {
    r0 = [self getSpecificSelectors:arg3 create:0x1];
    [r0 setEnterStateByPushParam:arg2];
    [r0 setEnterStateByPopParam:arg2];
    return;
}

-(void)setEnterStateByPopParam:(void *)arg2 {
    [*(self + 0x10) setEnterStateByPopParam:arg2];
    return;
}

-(void)setEnterStateByPopParam:(void *)arg2 fromStateId:(unsigned int)arg3 {
    [[self getSpecificSelectors:arg3 create:0x1] setEnterStateByPopParam:arg2];
    return;
}

-(void)setLeaveStateParam:(void *)arg2 {
    [*(self + 0x10) setLeaveStateByPushParam:r2];
    [*(self + 0x10) setLeaveStateByPopParam:arg2];
    return;
}

-(void)setLeaveStateByPushParam:(void *)arg2 {
    [*(self + 0x10) setLeaveStateByPushParam:arg2];
    return;
}

-(void)setLeaveStateParam:(void *)arg2 toStateId:(unsigned int)arg3 {
    r0 = [self getSpecificSelectors:arg3 create:0x1];
    [r0 setLeaveStateByPushParam:arg2];
    [r0 setLeaveStateByPopParam:arg2];
    return;
}

-(void)setLeaveStateByPopParam:(void *)arg2 {
    [*(self + 0x10) setLeaveStateByPopParam:arg2];
    return;
}

-(void)setLeaveStateByPopParam:(void *)arg2 toStateId:(unsigned int)arg3 {
    [[self getSpecificSelectors:arg3 create:0x1] setLeaveStateByPopParam:arg2];
    return;
}

-(void)setLeaveStateByPushParam:(void *)arg2 toStateId:(unsigned int)arg3 {
    [[self getSpecificSelectors:arg3 create:0x1] setLeaveStateByPushParam:arg2];
    return;
}

-(void)enterStateByPush:(unsigned int)arg2 {
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
    r19 = self;
    r0 = [self getSpecificSelectors:arg2 create:0x0];
    if (r0 != 0x0) {
            r20 = [r0 enterStateByPushSelector];
            r22 = [r0 enterStateByPushTarget];
            r0 = [r0 enterStateByPushParam];
            if (r20 == 0x0) {
                    r20 = [*(r19 + 0x10) enterStateByPushSelector];
                    r22 = [*(r19 + 0x10) enterStateByPushTarget];
                    r0 = *(r19 + 0x10);
                    r0 = [r0 enterStateByPushParam];
            }
    }
    else {
            r20 = [*(r19 + 0x10) enterStateByPushSelector];
            r22 = [*(r19 + 0x10) enterStateByPushTarget];
            r0 = *(r19 + 0x10);
            r0 = [r0 enterStateByPushParam];
    }
    r3 = r0;
    if (r20 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            if (r3 != 0x0) {
                    [r22 performSelector:r2 withObject:r3];
            }
            else {
                    [r22 performSelector:r2];
            }
    }
    return;
}

-(void)leaveStateByPush:(unsigned int)arg2 {
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
    r19 = self;
    r0 = [self getSpecificSelectors:arg2 create:0x0];
    if (r0 != 0x0) {
            r20 = [r0 leaveStateByPushSelector];
            r22 = [r0 leaveStateByPushTarget];
            r0 = [r0 leaveStateByPushParam];
            if (r20 == 0x0) {
                    r20 = [*(r19 + 0x10) leaveStateByPushSelector];
                    r22 = [*(r19 + 0x10) leaveStateByPushTarget];
                    r0 = *(r19 + 0x10);
                    r0 = [r0 leaveStateByPushParam];
            }
    }
    else {
            r20 = [*(r19 + 0x10) leaveStateByPushSelector];
            r22 = [*(r19 + 0x10) leaveStateByPushTarget];
            r0 = *(r19 + 0x10);
            r0 = [r0 leaveStateByPushParam];
    }
    r3 = r0;
    if (r20 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            if (r3 != 0x0) {
                    [r22 performSelector:r2 withObject:r3];
            }
            else {
                    [r22 performSelector:r2];
            }
    }
    return;
}

-(void)enterStateByPop:(unsigned int)arg2 {
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
    r19 = self;
    r0 = [self getSpecificSelectors:arg2 create:0x0];
    if (r0 != 0x0) {
            r20 = [r0 enterStateByPopSelector];
            r22 = [r0 enterStateByPopTarget];
            r0 = [r0 enterStateByPopParam];
            if (r20 == 0x0) {
                    r20 = [*(r19 + 0x10) enterStateByPopSelector];
                    r22 = [*(r19 + 0x10) enterStateByPopTarget];
                    r0 = *(r19 + 0x10);
                    r0 = [r0 enterStateByPopParam];
            }
    }
    else {
            r20 = [*(r19 + 0x10) enterStateByPopSelector];
            r22 = [*(r19 + 0x10) enterStateByPopTarget];
            r0 = *(r19 + 0x10);
            r0 = [r0 enterStateByPopParam];
    }
    r3 = r0;
    if (r20 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            if (r3 != 0x0) {
                    [r22 performSelector:r2 withObject:r3];
            }
            else {
                    [r22 performSelector:r2];
            }
    }
    return;
}

-(void)leaveStateByPop:(unsigned int)arg2 {
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
    r19 = self;
    r0 = [self getSpecificSelectors:arg2 create:0x0];
    if (r0 != 0x0) {
            r20 = [r0 leaveStateByPopSelector];
            r22 = [r0 leaveStateByPopTarget];
            r0 = [r0 leaveStateByPopParam];
            if (r20 == 0x0) {
                    r20 = [*(r19 + 0x10) leaveStateByPopSelector];
                    r22 = [*(r19 + 0x10) leaveStateByPopTarget];
                    r0 = *(r19 + 0x10);
                    r0 = [r0 leaveStateByPopParam];
            }
    }
    else {
            r20 = [*(r19 + 0x10) leaveStateByPopSelector];
            r22 = [*(r19 + 0x10) leaveStateByPopTarget];
            r0 = *(r19 + 0x10);
            r0 = [r0 leaveStateByPopParam];
    }
    r3 = r0;
    if (r20 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            if (r3 != 0x0) {
                    [r22 performSelector:r2 withObject:r3];
            }
            else {
                    [r22 performSelector:r2];
            }
    }
    return;
}

@end