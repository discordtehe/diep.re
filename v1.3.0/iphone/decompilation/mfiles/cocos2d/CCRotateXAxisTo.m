@implementation CCRotateXAxisTo

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
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] startWithTarget:arg2];
    r0 = r19->_target;
    r0 = [r0 xAxisRotation];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(startAngle_));
    if (s0 > 0x0) {
            asm { fcsel      s1, s9, s8, gt };
    }
    fmodf(r0, @selector(xAxisRotation));
    *(int32_t *)(r19 + r20) = s0;
    s0 = *(int32_t *)(int64_t *)&r19->dstAngle_ - s0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(diffAngle_));
    if (s0 > 0x43340000) {
            asm { fcsel      s0, s1, s0, gt };
    }
    if (s0 < 0xffffffffc3340000) {
            asm { fcsel      s0, s1, s0, mi };
    }
    *(int32_t *)(r19 + r8) = s0;
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r8 = *(self + r8);
    asm { fcvt       d1, s1 };
    asm { fcvt       d2, s2 };
    asm { fcvt       s0, d0 };
    [r8 setXAxisRotation:r2];
    return;
}

@end