@implementation ANSTimer

-(void *)initWithTimeInterval:(double)arg2 onQueue:(void *)arg3 timerIdentifier:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [r23 retain];
    r21 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r22->_timeInterval = d8;
            objc_storeStrong((int64_t *)&r22->_queue, r24);
            objc_storeStrong((int64_t *)&r22->_timerIdentifier, r23);
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timerBlock));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r22 scheduleTimer];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)scheduleTimer {
    [self scheduleDispatchTimer];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timerSource));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            dispatch_source_cancel(r0);
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(double)tolerance {
    r0 = [self timeInterval];
    asm { fdiv       d0, d0, d1 };
    return r0;
}

-(void)executeBlock {
    r20 = [[self queue] retain];
    r19 = [[self timerBlock] retain];
    [r20 addOperationWithBlock:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)scheduleDispatchTimer {
    r19 = self;
    r0 = *__dispatch_source_type_timer;
    r0 = dispatch_source_create(r0, 0x0, 0x0, 0x0);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_timerSource));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    [r19 timeInterval];
    asm { fcvtzs     x20, d0 };
    [r19 tolerance];
    asm { fcvtzs     x21, d0 };
    dispatch_source_set_timer(*(r19 + r22), dispatch_time(0x0, r20), r20, r21);
    objc_initWeak(&stack[-72], r19);
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    dispatch_source_set_event_handler(r21, &var_60);
    dispatch_resume(*(r19 + r22));
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void *)timerIdentifier {
    r0 = self->_timerIdentifier;
    return r0;
}

-(double)timeInterval {
    r0 = self;
    return r0;
}

-(void)setTimeInterval:(double)arg2 {
    self->_timeInterval = d0;
    return;
}

-(void *)timerBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timerBlock)), 0x0);
    return r0;
}

-(void)setTimerBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void *)timerSource {
    r0 = self->_timerSource;
    return r0;
}

-(void)setTimerSource:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timerSource, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timerSource, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_timerBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_timerIdentifier, 0x0);
    return;
}

@end