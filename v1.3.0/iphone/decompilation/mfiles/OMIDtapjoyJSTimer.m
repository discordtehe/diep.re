@implementation OMIDtapjoyJSTimer

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
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timerIds));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setupMethodsForJSObject:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x58, self);
    objc_copyWeak(&var_80 + 0x20, &saved_fp - 0x58);
    r0 = objc_retainBlock(&var_80);
    [r20 setObject:r0 forKeyedSubscript:@"setTimeout"];
    [r0 release];
    objc_copyWeak(&var_A8 + 0x20, &saved_fp - 0x58);
    r0 = objc_retainBlock(&var_A8);
    [r20 setObject:r0 forKeyedSubscript:@"clearTimeout"];
    [r0 release];
    objc_copyWeak(&var_D0 + 0x20, &saved_fp - 0x58);
    r0 = objc_retainBlock(&var_D0);
    [r20 setObject:r0 forKeyedSubscript:@"setInterval"];
    [r0 release];
    objc_copyWeak(&var_F8 + 0x20, &saved_fp - 0x58);
    r0 = objc_retainBlock(&var_F8);
    [r20 setObject:r0 forKeyedSubscript:@"clearInterval"];
    [r0 release];
    objc_destroyWeak(&var_F8 + 0x20);
    objc_destroyWeak(&var_D0 + 0x20);
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&saved_fp - 0x58);
    [r20 release];
    return;
}

-(void *)scheduleTimerWithTimeout:(void *)arg2 callback:(void *)arg3 repeatable:(bool)arg4 {
    r19 = arg4;
    r22 = self;
    r23 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timerIdCounter));
    r24 = *(r22 + r8) + 0x1;
    *(r22 + r8) = r24;
    r20 = [arg3 retain];
    r24 = [[NSNumber numberWithUnsignedInteger:r24] retain];
    [r22->_timerIds addObject:r24];
    [arg2 toDouble];
    [r23 release];
    asm { fmax       d0, d8, d0 };
    [r22 scheduleTimerWithId:r24 timeout:r20 callback:r19 repeatable:r5];
    [r20 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void)scheduleTimerWithId:(void *)arg2 timeout:(double)arg3 callback:(void *)arg4 repeatable:(bool)arg5 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&stack[-104], self);
    asm { fcvtzs     x1, d0 };
    dispatch_time(0x0, r1);
    r0 = [r23 jsInvoker];
    r0 = [r0 retain];
    [[r0 dispatchQueue] retain];
    objc_copyWeak(&var_A0 + 0x30, &stack[-104]);
    var_80 = r21;
    [r21 retain];
    [r20 retain];
    dispatch_after(r22, r25, &var_A0);
    [r25 release];
    [r24 release];
    [r20 release];
    [var_80 release];
    [r19 release];
    [r21 release];
    objc_destroyWeak(&var_A0 + 0x30);
    objc_destroyWeak(&stack[-104]);
    return;
}

-(void)cancelTimerWithId:(void *)arg2 {
    r19 = self->_timerIds;
    r20 = [[arg2 toNumber] retain];
    [r19 removeObject:r20];
    [r20 release];
    return;
}

-(void)handleTimerWithId:(void *)arg2 timeout:(double)arg3 callback:(void *)arg4 repeatable:(bool)arg5 {
    r5 = arg5;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg4;
    v8 = v0;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_timerIds));
    if ([*(r21 + r23) containsObject:r2] != 0x0) {
            if (r22 != 0x0) {
                    [r21 scheduleTimerWithId:r19 timeout:r20 callback:0x1 repeatable:r5];
            }
            else {
                    [*(r21 + r23) removeObject:r19];
            }
            r0 = [r21 jsInvoker];
            r0 = [r0 retain];
            [r0 invokeCallback:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)cancelAllTimers {
    [self->_timerIds removeAllObjects];
    return;
}

-(void *)jsInvoker {
    r0 = objc_loadWeakRetained((int64_t *)&self->_jsInvoker);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setJsInvoker:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_jsInvoker, arg2);
    return;
}

-(unsigned long long)timerIdCounter {
    r0 = self->_timerIdCounter;
    return r0;
}

-(void *)timerIds {
    r0 = self->_timerIds;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timerIds, 0x0);
    objc_destroyWeak((int64_t *)&self->_jsInvoker);
    return;
}

@end