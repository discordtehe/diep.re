@implementation CCDeccelAmplitude

+(void *)actionWithAction:(void *)arg2 duration:(double)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 duration:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 duration:(double)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_rate = 0x3f800000;
            r20->_other = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->_other release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_other startWithTarget:self->_target];
    return;
}

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    asm { fcvt       s0, d0 };
    powf(r0, r1);
    asm { fcvt       d0, s0 };
    [r20 setAmplitudeRate:r2];
    [*(r19 + r21) update:r2];
    return;
}

-(void *)reverse {
    r21 = [self->_other reverse];
    [self duration];
    r0 = [CCDeccelAmplitude actionWithAction:r21 duration:r3];
    return r0;
}

-(float)rate {
    r0 = self;
    return r0;
}

-(void)setRate:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_rate = s0;
    return;
}

@end