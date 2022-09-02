@implementation CCOrbitCamera

+(void *)actionWithDuration:(float)arg2 radius:(float)arg3 deltaRadius:(float)arg4 angleZ:(float)arg5 deltaAngleZ:(float)arg6 angleX:(float)arg7 deltaAngleX:(float)arg8 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 radius:arg3 deltaRadius:arg4 angleZ:arg5 deltaAngleZ:arg6 angleX:arg7 deltaAngleX:var_40];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_10 = r20;
    r0 = [self class];
    r2 = arg2;
    r0 = [r0 allocWithZone:r2];
    asm { fcvt       s0, d0 };
    r0 = [r0 initWithDuration:r2 radius:r3 deltaRadius:r4 angleZ:r5 deltaAngleZ:r6 angleX:r7 deltaAngleX:var_10];
    return r0;
}

-(void *)initWithDuration:(float)arg2 radius:(float)arg3 deltaRadius:(float)arg4 angleZ:(float)arg5 deltaAngleZ:(float)arg6 angleX:(float)arg7 deltaAngleX:(float)arg8 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_30 = d13;
    stack[-56] = d12;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    asm { fcvt       d0, s0 };
    r0 = [[&var_40 super] initWithDuration:r2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_radius = s13;
            *(int32_t *)(int64_t *)&r0->_deltaRadius = s12;
            *(int32_t *)(int64_t *)&r0->_angleZ = s11;
            *(int32_t *)(int64_t *)&r0->_deltaAngleZ = s9;
            *(int32_t *)(int64_t *)&r0->_angleX = s10;
            *(int32_t *)(int64_t *)&r0->_deltaAngleX = s8;
            *(int32_t *)(int64_t *)&r0->_radDeltaZ = s9 * *(int32_t *)0x100ba3694;
            *(int32_t *)(int64_t *)&r0->_radDeltaX = s8 * *(int32_t *)0x100ba3694;
    }
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self sphericalRadius:&stack[-52] zenith:&stack[-56] azimuth:&stack[-60]];
    *(int32_t *)(int64_t *)&self->_radZ = *(int32_t *)(int64_t *)&self->_angleZ * *(int32_t *)0x100ba3694;
    *(int32_t *)(int64_t *)&self->_radX = *(int32_t *)(int64_t *)&self->_angleX * *(int32_t *)0x100ba3694;
    return;
}

-(void)update:(double)arg2 {
    r19 = self;
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    d1 = d1 * d8;
    d9 = d1 + d0;
    r0 = [CCCamera getZEye];
    asm { fcvt       d0, s0 };
    d0 = d9 * d0;
    asm { fcvt       s12, d0 };
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s9, d0 };
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s8, d0 };
    cosf(sinf(cosf(sinf(r0))));
    [[r19->_target camera] setEyeX:r2 eyeY:r3 eyeZ:r4];
    return;
}

-(void)sphericalRadius:(float *)arg2 zenith:(float *)arg3 azimuth:(float *)arg4 {
    r31 = r31 - 0x70;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r19 = arg2;
    r0 = self->_target;
    r0 = [r0 camera];
    [r0 eyeX:&var_44 eyeY:&var_48 eyeZ:&var_4C];
    r0 = [r0 centerX:&var_50 centerY:&var_54 centerZ:&var_58];
    s8 = var_44 - var_50;
    s0 = var_4C - var_58;
    s1 = s8 * s8 + (var_48 - var_54) * (var_48 - var_54);
    s2 = s1 + s0 * s0;
    asm { fsqrt      s2, s2 };
    asm { fsqrt      s1, s1 };
    if (s1 == 0x0) {
            asm { fcsel      s10, s3, s1, eq };
    }
    if (s2 == 0x0) {
            asm { fcsel      s11, s3, s2, eq };
    }
    asm { fdiv       s0, s0, s11 };
    r0 = acosf(r0);
    *(int32_t *)r21 = s0;
    asm { fdiv       s0, s9, s10 };
    asinf(r0);
    if (s8 < 0x0) {
            asm { fcsel      s0, s1, s0, mi };
    }
    *(int32_t *)r20 = s0;
    [CCCamera getZEye];
    asm { fdiv       s0, s11, s0 };
    *(int32_t *)r19 = s0;
    return;
}

@end