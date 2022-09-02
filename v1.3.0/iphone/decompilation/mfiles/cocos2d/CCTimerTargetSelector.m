@implementation CCTimerTargetSelector

+(void *)timerWithTarget:(void *)arg2 selector:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3 interval:0xfffffffffffffffe repeat:r5 delay:r6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)timerWithTarget:(void *)arg2 selector:(void *)arg3 interval:(double)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3 interval:0xfffffffffffffffe repeat:r5 delay:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 {
    r0 = [self initWithTarget:arg2 selector:arg3 interval:0xfffffffffffffffe repeat:r5 delay:r6];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 interval:(double)arg4 repeat:(unsigned int)arg5 delay:(double)arg6 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    r19 = arg4;
    v9 = v0;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_target = r22;
            r20->_selector = r21;
            r20->_impMethod = [r22 methodForSelector:r21];
            [r20 setupTimerWithInterval:r19 repeat:r3 delay:r4];
    }
    r0 = r20;
    return r0;
}

-(void *)description {
    [self class];
    [self->_target class];
    r0 = self->_selector;
    NSStringFromSelector(r0);
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)trigger {
    r2 = self->_impMethod;
    (r2)(*(self + sign_extend_64(*(int32_t *)ivar_offset(_target))), self->_selector, r2);
    return;
}

-(void)cancel {
    [[[CCDirector sharedDirector] scheduler] unscheduleSelector:self->_selector forTarget:self->_target];
    return;
}

-(void *)selector {
    r0 = self->_selector;
    return r0;
}

@end