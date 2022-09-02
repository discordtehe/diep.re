@implementation CCBRotateTo

+(void *)actionWithDuration:(double)arg2 angle:(float)arg3 {
    r0 = [CCBRotateTo alloc];
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
            *(int32_t *)(int64_t *)&r0->dstAngle_ = s8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 angle:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:r2];
    [arg2 rotation];
    *(int32_t *)(int64_t *)&self->startAngle_ = s0;
    *(int32_t *)(int64_t *)&self->diffAngle_ = *(int32_t *)(int64_t *)&self->dstAngle_ - s0;
    return;
}

-(void)update:(double)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r8 = *(self + r8);
    asm { fcvt       d1, s1 };
    asm { fcvt       d2, s2 };
    asm { fcvt       s0, d0 };
    [r8 setRotation:r2];
    return;
}

@end