@implementation CCRotateBy

+(void *)actionWithDuration:(double)arg2 angle:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 angle:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 angle:(float)arg3 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_angleY = s8;
            *(int32_t *)(int64_t *)&r0->_angleX = s8;
    }
    return r0;
}

+(void *)actionWithDuration:(double)arg2 angleX:(float)arg3 angleY:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 angleX:arg3 angleY:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 angleX:(float)arg3 angleY:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_angleX = s9;
            *(int32_t *)(int64_t *)&r0->_angleY = s8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 angleX:r3 angleY:r4];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    [*(self + r20) rotationX];
    *(int32_t *)(int64_t *)&self->_startAngleX = s0;
    [*(self + r20) rotationY];
    *(int32_t *)(int64_t *)&self->_startAngleY = s0;
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r0 = *(self + r20);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [r0 setRotationX:r2];
    r0 = *(r19 + r20);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [r0 setRotationY:r2];
    return;
}

-(void *)reverse {
    r0 = [self class];
    r0 = [r0 actionWithDuration:r2 angleX:r3 angleY:r4];
    return r0;
}

@end