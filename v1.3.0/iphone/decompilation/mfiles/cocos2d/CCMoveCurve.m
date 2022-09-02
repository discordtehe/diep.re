@implementation CCMoveCurve

+(void *)actionWithDuration:(double)arg2 targetPosition:(struct CGPoint)arg3 firstControlPoint:(struct CGPoint)arg4 secondControlPoint:(struct CGPoint)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 targetPosition:r3 firstControlPoint:r4 secondControlPoint:r5 tension:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:r2];
    [arg2 position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(startPosition_));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 targetPosition:r3 firstControlPoint:r4 secondControlPoint:r5 tension:r6];
    return r0;
}

-(void *)initWithDuration:(double)arg2 targetPosition:(struct CGPoint)arg3 firstControlPoint:(struct CGPoint)arg4 secondControlPoint:(struct CGPoint)arg5 tension:(double)arg6 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x60;
    var_40 = d15;
    stack[-72] = d14;
    var_30 = d13;
    stack[-56] = d12;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_50 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(controlPointBeforeCurve_));
            *(int128_t *)(r0 + r8) = d14;
            *(int128_t *)(0x8 + r0 + r8) = d13;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(controlPointAfterCurve_));
            *(int128_t *)(r0 + r8) = d12;
            *(int128_t *)(0x8 + r0 + r8) = d10;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(endPosition_));
            *(int128_t *)(r0 + r8) = d11;
            *(int128_t *)(0x8 + r0 + r8) = d9;
            r0->tension_ = d8;
    }
    return r0;
}

-(void)update:(double)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(controlPointBeforeCurve_));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(startPosition_));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(endPosition_));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(controlPointAfterCurve_));
    d17 = self->tension_;
    [self->_target setPosition:r2];
    return;
}

@end