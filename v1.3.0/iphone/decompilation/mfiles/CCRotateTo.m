@implementation CCRotateTo

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
            *(int32_t *)(int64_t *)&r0->_dstAngleY = s8;
            *(int32_t *)(int64_t *)&r0->_dstAngleX = s8;
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
            *(int32_t *)(int64_t *)&r0->_dstAngleX = s9;
            *(int32_t *)(int64_t *)&r0->_dstAngleY = s8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 angleX:r3 angleY:r4];
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
    [r0 setRotationX:r2];
    r0 = *(r19 + r20);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [r0 setRotationY:r2];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = self;
    [[&var_50 super] startWithTarget:arg2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r0 = *(r19 + r20);
    r0 = [r0 rotationX];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_startAngleX));
    if (s0 > 0x0) {
            asm { fcsel      s1, s9, s8, gt };
    }
    fmodf(r0, @selector(rotationX));
    *(int32_t *)(r19 + r21) = s0;
    s0 = *(int32_t *)(int64_t *)&r19->_dstAngleX - s0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_diffAngleX));
    if (s0 > 0x43340000) {
            asm { fcsel      s0, s1, s0, gt };
    }
    if (s0 < 0xffffffffc3340000) {
            asm { fcsel      s0, s1, s0, mi };
    }
    *(int32_t *)(r19 + r8) = s0;
    r0 = *(r19 + r20);
    r0 = [r0 rotationY];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_startAngleY));
    if (s0 > 0x0) {
            asm { fcsel      s1, s9, s8, gt };
    }
    fmodf(r0, @selector(rotationY));
    *(int32_t *)(r19 + r20) = s0;
    s0 = *(int32_t *)(int64_t *)&r19->_dstAngleY - s0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_diffAngleY));
    if (s0 > 0x43340000) {
            asm { fcsel      s0, s1, s0, gt };
    }
    if (s0 < 0xffffffffc3340000) {
            asm { fcsel      s0, s1, s0, mi };
    }
    *(int32_t *)(r19 + r8) = s0;
    return;
}

@end