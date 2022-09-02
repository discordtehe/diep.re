@implementation CCAccelDeccelAmplitude

+(void *)actionWithAction:(void *)arg2 duration:(double)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 duration:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [self->_other release];
    [[&var_20 super] dealloc];
    return;
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

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_other startWithTarget:self->_target];
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = r0;
    asm { fcvt       s0, d0 };
    if (s0 > 0x3ff0000000000000) {
            asm { fcsel      s0, s1, s0, gt };
    }
    powf(r0, r1);
    asm { fcvt       d0, s0 };
    [r20 setAmplitudeRate:r2];
    [*(r19 + r21) update:r2];
    return;
}

-(void *)reverse {
    r0 = [CCAccelDeccelAmplitude actionWithAction:[self->_other reverse] duration:r3];
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