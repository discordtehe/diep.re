@implementation CCTimerBlock

+(void *)timerWithTarget:(void *)arg2 interval:(double)arg3 key:(void *)arg4 block:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 interval:0xfffffffffffffffe repeat:arg3 delay:arg4 key:r6 block:r7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 interval:(double)arg3 repeat:(unsigned int)arg4 delay:(double)arg5 key:(void *)arg6 block:(void *)arg7 {
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
    r23 = arg5;
    r22 = arg4;
    v8 = v1;
    r19 = arg3;
    v9 = v0;
    r20 = arg2;
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r21->_block = [r23 copy];
            r21->_key = [r22 copy];
            r21->_target = r20;
            [r21 setupTimerWithInterval:r19 repeat:r3 delay:r4];
    }
    r0 = r21;
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [self->_key release];
    [self->_block release];
    [[&var_20 super] dealloc];
    return;
}

-(void)trigger {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_block));
    r8 = *(self + r8);
    r1 = *(r8 + 0x10);
    (r1)(r8, r1);
    return;
}

-(void)cancel {
    [[[CCDirector sharedDirector] scheduler] unscheduleBlockForKey:self->_key target:self->_target];
    return;
}

-(void *)key {
    r0 = self->_key;
    return r0;
}

-(void *)target {
    r0 = self->_target;
    return r0;
}

@end