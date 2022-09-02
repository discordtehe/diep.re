@implementation CCBezierBy

+(void *)actionWithDuration:(double)arg2 bezier:(struct _ccBezierConfig)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:&var_50 bezier:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 bezier:(struct _ccBezierConfig)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithDuration:r2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_config));
            q2 = *(int128_t *)(r19 + 0x10);
            q0 = *(int128_t *)(r19 + 0x20);
            *(int128_t *)(r0 + r8) = *(int128_t *)r19;
            *(int128_t *)(0x10 + r0 + r8) = q2;
            *(int128_t *)(0x20 + r0 + r8) = q0;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_config));
    r0 = [r19 initWithDuration:&var_40 bezier:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_target position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPosition));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    *(int128_t *)(int64_t *)&self->_previousPosition = *(int128_t *)(self + r8);
    return;
}

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_config));
    var_68 = *(int128_t *)(0x18 + r0 + r8);
    d1 = *(int128_t *)(0x20 + r0 + r8);
    var_70 = *(int128_t *)(0x28 + r0 + r8);
    d2 = *(int128_t *)(r0 + r8);
    asm { fcvt       s14, d0 };
    asm { fcvt       s15, d1 };
    asm { fcvt       s11, d2 };
    d12 = 0x3ff0000000000000 - d8;
    asm { fcvt       s9, d12 };
    r0 = powf(r0, r1);
    asm { fcvt       d13, s0 };
    d0 = d8 * 0x4008000000000000;
    asm { fcvt       d1, s1 };
    d9 = d0 * d1;
    asm { fcvt       d0, s14 };
    d1 = d9 * d0 + d13;
    asm { fcvt       s0, d8 };
    asm { fcvt       d2, s2 };
    d8 = d12 * d2;
    asm { fcvt       d2, s15 };
    powf(r0, r1);
    asm { fcvt       d1, s1 };
    d2 = var_70;
    d1 = var_68;
    asm { fcvt       s1, d1 };
    asm { fcvt       s2, d2 };
    asm { fcvt       s3, d3 };
    asm { fcvt       d1, s1 };
    d1 = d9 * d1 + d13;
    asm { fcvt       d2, s2 };
    d1 = d8 * d2 + d1;
    asm { fcvt       d0, s0 };
    r20 = r19->_target;
    [r20 position];
    d0 = d0 - *(int128_t *)(int64_t *)&r19->_previousPosition;
    d1 = d1 - *(int128_t *)((int64_t *)&r19->_previousPosition + 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPosition));
    d2 = *(int128_t *)(r19 + r8);
    d3 = *(int128_t *)(0x8 + r19 + r8);
    *(int128_t *)(r19 + r8) = d0 + d2;
    *(int128_t *)(0x8 + r19 + r8) = d1 + d3;
    [r20 setPosition:r2];
    *(int128_t *)(int64_t *)&r19->_previousPosition = d10 + d0 + d2;
    *(int128_t *)((int64_t *)&r19->_previousPosition + 0x8) = d9 + d1 + d3;
    return;
}

-(void *)reverse {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_config));
    d0 = *(int128_t *)(self + r8);
    d1 = *(int128_t *)(0x8 + self + r8);
    r20 = [self class];
    [self duration];
    r0 = [r20 actionWithDuration:&var_70 bezier:r3];
    return r0;
}

@end