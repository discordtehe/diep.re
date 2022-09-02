@implementation GADJSCoreTimers

-(void *)initWithJSCoreJSContext:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_JSCoreJSContext, r19);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timers));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.jscore-timers", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void)dealloc {
    [[self->_timers retain] retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void *)JSFunctionForSetTimerWithRepeats:(bool)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r21->_JSCoreJSContext);
    if (r19 != 0x0) {
            var_40 = [r21 retain];
            r0 = objc_retainBlock(&var_60);
            r22 = objc_retainBlock(r0);
            r23 = [[r19 JSContext] retain];
            r20 = [[JSValue valueWithObject:r22 inContext:r23] retain];
            [r23 release];
            [r22 release];
            [r0 release];
            [var_40 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getSetTimeout {
    r0 = [self JSFunctionForSetTimerWithRepeats:0x0];
    return r0;
}

-(void *)getSetInterval {
    r0 = [self JSFunctionForSetTimerWithRepeats:0x1];
    return r0;
}

-(void *)JSFunctionForClearTimer {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_JSCoreJSContext);
    if (r19 != 0x0) {
            var_38 = [r20 retain];
            r0 = objc_retainBlock(&var_58);
            r22 = objc_retainBlock(r0);
            r23 = [[r19 JSContext] retain];
            r20 = [[JSValue valueWithObject:r22 inContext:r23] retain];
            [r23 release];
            [r22 release];
            [r0 release];
            [var_38 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getClearTimeout {
    r0 = [self JSFunctionForClearTimer];
    return r0;
}

-(void *)getClearInterval {
    r0 = [self JSFunctionForClearTimer];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_timers, 0x0);
    objc_destroyWeak((int64_t *)&self->_JSCoreJSContext);
    return;
}

@end