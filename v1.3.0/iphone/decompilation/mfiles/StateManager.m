@implementation StateManager

+(void *)sharedStateManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da558;
    if (r0 == 0x0) {
            r0 = [StateManager alloc];
            r0 = [r0 init];
            *0x1011da558 = r0;
    }
    return r0;
}

+(bool)isStateManagerInitialized {
    r0 = self;
    if (*qword_1011da558 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)releaseSharedStateManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da558 != 0x0) {
            [*0x1011da558 release];
            *0x1011da558 = 0x0;
    }
    return;
}

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
            *(r19 + 0x8) = [[NSMutableArray arrayWithCapacity:0x1] retain];
            r0 = @class(NSMutableDictionary);
            r21 = @selector(dictionaryWithCapacity:);
            *(r19 + 0x10) = [objc_msgSend(r0, r21) retain];
            *(r19 + 0x18) = [objc_msgSend(@class(NSMutableDictionary), r21) retain];
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
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)removeState:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = *(r0 + 0x10);
            [NSNumber numberWithUnsignedInt:[r2 stateId]];
            [r21 removeObjectForKey:r2];
            r20 = *(r20 + 0x18);
            [NSNumber numberWithUnsignedInt:[r19 stateId]];
            objc_msgSend(r20, r22);
    }
    return;
}

-(void)addState:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [*(r0 + 0x10) setObject:r2 forKey:[NSNumber numberWithUnsignedInt:[r2 stateId]]];
            [*(r0 + 0x18) setObject:[BufferedTasksScheduler object] forKey:[NSNumber numberWithUnsignedInt:[r2 stateId]]];
    }
    return;
}

-(void)removeAllStates {
    [*(self + 0x10) removeAllObjects];
    objc_msgSend(*(self + 0x18), r20);
    return;
}

-(void *)getAllStates {
    r0 = [NSArray arrayWithArray:*(self + 0x8)];
    return r0;
}

-(unsigned int)getCurrentStateId {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x8);
    r0 = [r0 lastObject];
    if (r0 != 0x0) {
            r0 = [r0 stateId];
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(bool)isStateOnStack:(unsigned int)arg2 {
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
    if (r0 == 0x0) goto loc_1005eea70;

loc_1005ee9f4:
    r22 = r0;
    r24 = *var_110;
    goto loc_1005eea04;

loc_1005eea04:
    r26 = 0x0;
    goto loc_1005eea0c;

loc_1005eea0c:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    if ([*(var_118 + r26 * 0x8) stateId] == r19) goto loc_1005eea6c;

loc_1005eea3c:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_1005eea0c;

loc_1005eea48:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1005eea04;

loc_1005eea70:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005eea6c:
    r0 = 0x1;
    goto loc_1005eea70;
}

-(unsigned int)getStateStackSize {
    r0 = *(self + 0x8);
    r0 = [r0 count];
    return r0;
}

-(unsigned int)getPushedStateId:(unsigned int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x8);
    r0 = [r0 count];
    if (r0 >= r19) {
            r0 = [*(r20 + 0x8) objectAtIndex:r2];
            r0 = [r0 stateId];
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(void)pushState:(unsigned int)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r22 = self;
    r20 = [*(self + 0x8) lastObject];
    r21 = *(r22 + 0x10);
    [NSNumber numberWithUnsignedInt:r19];
    r0 = [r21 objectForKey:r2];
    if (r0 != 0x0) {
            r21 = r0;
            [*(r22 + 0x8) addObject:r2];
            if (r20 != 0x0) {
                    [r20 leaveStateByPush:r19];
                    r2 = [r20 stateId];
            }
            else {
                    r2 = 0xffffffffffffffff;
            }
            [r21 enterStateByPush:r2];
    }
    return;
}

-(void)setState:(unsigned int)arg2 {
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
    r21 = arg2;
    r20 = self;
    r0 = *(self + 0x8);
    r0 = [r0 lastObject];
    r19 = r0;
    if (r0 != 0x0) {
            [*(r20 + 0x8) removeLastObject];
            [r19 stateId];
            r22 = @selector(numberWithUnsignedInt:);
            objc_msgSend(r23, r22);
            r23 = @selector(objectForKey:);
            [objc_msgSend(r24, r23) unscheduleAll];
            [r19 leaveStateByPop:r21];
    }
    else {
            r22 = @selector(numberWithUnsignedInt:);
            r23 = @selector(objectForKey:);
    }
    objc_msgSend(@class(NSNumber), r22);
    r0 = objc_msgSend(r24, r23);
    if (r0 != 0x0) {
            r21 = r0;
            [*(r20 + 0x8) addObject:r2];
            if (r19 != 0x0) {
                    r2 = [r19 stateId];
            }
            else {
                    r2 = 0xffffffffffffffff;
            }
            [r21 enterStateByPush:r2];
    }
    return;
}

-(void)popToFirstState {
    [self popToFirstState:0x0];
    return;
}

-(void)popState {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = *(self + 0x8);
    r0 = [r0 lastObject];
    if (r0 != 0x0) {
            r19 = r0;
            [*(r21 + 0x8) removeLastObject];
            [[*(r21 + 0x18) objectForKey:[NSNumber numberWithUnsignedInt:[r19 stateId]]] unscheduleAll];
            r0 = *(r21 + 0x8);
            r0 = [r0 lastObject];
            if (r0 != 0x0) {
                    [r19 leaveStateByPop:0xffffffffffffffff];
                    [r19 stateId];
                    r1 = @selector(enterStateByPop:);
                    r0 = r0;
            }
            else {
                    [r0 stateId];
                    r1 = @selector(leaveStateByPop:);
                    r0 = r19;
            }
            objc_msgSend(r0, r1);
    }
    return;
}

-(void)popToFirstState:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    if ([*(self + 0x8) count] >= 0x2) {
            if (r21 != 0x0) {
                    r20 = @selector(count);
                    r0 = [NSMutableArray arrayWithArray:*(r19 + 0x8)];
                    r21 = r0;
                    if (objc_msgSend(r0, r20) != 0x1) {
                            r23 = 0x0;
                            do {
                                    [r19 popState];
                                    r23 = r23 + 0x1;
                            } while (objc_msgSend(r21, r20) - 0x1 > r23);
                    }
            }
            else {
                    r20 = [*(r19 + 0x8) lastObject];
                    r21 = [*(r19 + 0x8) objectAtIndex:0x0];
                    [r19 clearStateStack];
                    [*(r19 + 0x8) addObject:r21];
                    [r20 leaveStateByPop:[r21 stateId]];
                    [r21 enterStateByPop:[r20 stateId]];
            }
    }
    return;
}

-(void *)getBufferedTasksSchedulerForState:(void *)arg2 {
    r19 = *(self + 0x18);
    [NSNumber numberWithUnsignedInt:[arg2 stateId]];
    r0 = [r19 objectForKey:r2];
    return r0;
}

-(void *)getBufferedTasksScheduler {
    r19 = *(self + 0x18);
    [NSNumber numberWithUnsignedInt:[self getCurrentStateId]];
    r0 = [r19 objectForKey:r2];
    return r0;
}

-(void)clearStateStack {
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
    r19 = self;
    var_110 = q0;
    r0 = *(self + 0x8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r21 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(var_128);
                            }
                            [[*(r19 + 0x18) objectForKey:[NSNumber numberWithUnsignedInt:[*(var_118 + r20 * 0x8) stateId]]] unscheduleAll];
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r0 = objc_msgSend(var_128, var_130);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + 0x8) removeAllObjects];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

@end