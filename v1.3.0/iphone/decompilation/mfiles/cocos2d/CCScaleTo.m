@implementation CCScaleTo

+(void *)actionWithDuration:(double)arg2 scale:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 scale:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 scale:(float)arg3 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_endScaleX = s8;
            *(int32_t *)(int64_t *)&r0->_endScaleY = s8;
    }
    return r0;
}

+(void *)actionWithDuration:(double)arg2 scaleX:(float)arg3 scaleY:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 scaleX:arg3 scaleY:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 scaleX:(float)arg3 scaleY:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_endScaleX = s9;
            *(int32_t *)(int64_t *)&r0->_endScaleY = s8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 scaleX:r3 scaleY:r4];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r0 = *(self + r20);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [r0 setScaleX:r2];
    r0 = *(r19 + r20);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [r0 setScaleY:r2];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_30 super] startWithTarget:arg2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    [*(self + r20) scaleX];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_startScaleX));
    *(int32_t *)(self + r21) = s0;
    [*(self + r20) scaleY];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startScaleY));
    *(int32_t *)(self + r8) = s0;
    *(int32_t *)(int64_t *)&self->_deltaX = *(int32_t *)(int64_t *)&self->_endScaleX - *(int32_t *)(self + r21);
    *(int32_t *)(int64_t *)&self->_deltaY = *(int32_t *)(int64_t *)&self->_endScaleY - *(int32_t *)(self + r8);
    return;
}

@end