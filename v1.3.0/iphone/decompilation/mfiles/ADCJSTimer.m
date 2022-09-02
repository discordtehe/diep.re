@implementation ADCJSTimer

+(void *)_createTimingFunctionThatRepeats:(bool)arg2 {
    r0 = objc_retainBlock(&var_28);
    r0 = [r0 autorelease];
    return r0;
}

+(void)addTimingFunctionsToContext:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [self _createTimingFunctionThatRepeats:0x0];
    r0 = [r0 retain];
    r25 = objc_retainBlock(r0);
    [arg2 setObject:r25 forKeyedSubscript:@"setTimeout"];
    [r25 release];
    [r0 release];
    r0 = [self _createTimingFunctionThatRepeats:0x1];
    r0 = [r0 retain];
    r23 = objc_retainBlock(r0);
    [arg2 setObject:r23 forKeyedSubscript:@"setInterval"];
    [r23 release];
    [r0 release];
    r22 = objc_retainBlock(0x100e767b0);
    [arg2 setObject:r22 forKeyedSubscript:@"clearInterval"];
    [arg2 setObject:r22 forKeyedSubscript:@"clearTimeout"];
    [r20 release];
    [r22 release];
    return;
}

+(void)removeTimersForContext:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [ADCJSTimer sharedTimer];
    r0 = [r0 retain];
    [r0 removeTimersForContext:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void *)sharedTimer {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2378 != -0x1) {
            dispatch_once(0x1011d2378, &var_28);
    }
    r0 = *0x1011d2380;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 retain];
    }
    [r19 release];
    r0 = r19;
    return r0;
}

-(void)addTimer:(void *)arg2 {
    [self->_timers addObject:r2];
    return;
}

-(void)removeTimer:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timers));
    r20 = [[*(r19 + r21) member:arg2] retain];
    if (r20 != 0x0) {
            [r20 invalidate];
            [*(r19 + r21) removeObject:r20];
    }
    [r20 release];
    return;
}

-(void)timerFired:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"callback"] retain];
    [r0 release];
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"repeats"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    [r22 release];
    if ((r24 & 0x1) == 0x0) {
            [r20 removeTimer:r19];
    }
    [[[r21 callWithArguments:0x0] retain] release];
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timers, 0x0);
    return;
}

-(void)removeTimersForContext:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    var_130 = self;
    r0 = self->_timers;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_138 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r22 = *(0x0 + r28 * 0x8);
                            r0 = [r22 userInfo];
                            r0 = [r0 retain];
                            r19 = [[r0 objectForKeyedSubscript:@"callback"] retain];
                            [r0 release];
                            r0 = [r19 context];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == r20) {
                                    [var_130 removeTimer:r2];
                            }
                            [r19 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = objc_msgSend(var_120, var_138);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end