@implementation CCCardinalSplineTo

-(void)dealloc {
    [self->_points release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithDuration:(double)arg2 points:(void *)arg3 tension:(double)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setPoints:r19];
            r20->_tension = d8;
    }
    r0 = r20;
    return r0;
}

+(void *)actionWithDuration:(double)arg2 points:(void *)arg3 tension:(double)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 points:arg3 tension:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    r19 = arg2;
    r20 = self;
    [[&var_20 super] startWithTarget:r2];
    [r20->_points count] - 0x1;
    asm { ucvtf      d0, x8 };
    d1 = 0x3ff0000000000000;
    asm { fdiv       d0, d1, d0 };
    r20->_deltaT = d0;
    [r19 position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousPosition));
    *(r20 + r8) = d0;
    *(0x8 + r20 + r8) = d1;
    *(int128_t *)(int64_t *)&r20->_accumulatedDiff = *(int128_t *)*_CGPointZero;
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:self->_points points:r3 tension:r4];
    return r0;
}

-(void)updatePosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self->_target setPosition:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousPosition));
    *(int128_t *)(self + r8) = d9;
    *(int128_t *)(0x8 + self + r8) = d8;
    return;
}

-(void *)reverse {
    r20 = [self->_points reverse];
    r0 = [self class];
    r0 = [r0 actionWithDuration:r20 points:r3 tension:r4];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    var_60 = d15;
    stack[-104] = d14;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d13;
    stack[-88] = d12;
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
    if (d0 == 0x3ff0000000000000) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_points));
            r20 = [*(r19 + r22) count] - 0x1;
    }
    else {
            d1 = r19->_deltaT;
            asm { fdiv       d2, d0, d1 };
            asm { fcvtzu     x20, d2 };
            asm { ucvtf      d2, x20 };
            d0 = d0 - d1 * d2;
            asm { fdiv       d15, d0, d1 };
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_points));
    }
    [*(r19 + r22) getControlPointAtIndex:r20 - 0x1];
    v8 = v0;
    v9 = v1;
    [*(r19 + r22) getControlPointAtIndex:r20];
    [*(r19 + r22) getControlPointAtIndex:r20 + 0x1];
    [*(r19 + r22) getControlPointAtIndex:r20 + 0x2];
    d2 = r19->_tension;
    d8 = d0 * (d15 * d15 * d15 - d15 * d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 + d12 * ((0x4008000000000000 * d15 * d15 - d15 * d15 * d15 + d15 * d15 * d15) + (d15 + (d15 * d15 * d15 - d15 * d15 + d15 * d15)) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000) + d8 * (d15 * d15 + d15 * d15 - d15 * d15 * d15 - d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 + d10 * ((d15 * d15 - d15 * d15 * d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 + (d15 * d15 * d15 + d15 * d15 * d15 - 0x4008000000000000 * d15 * d15) + 0x3ff0000000000000);
    d0 = d13 * ((0x4008000000000000 * d15 * d15 - d15 * d15 * d15 + d15 * d15 * d15) + (d15 + (d15 * d15 * d15 - d15 * d15 + d15 * d15)) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000) + d9 * (d15 * d15 + d15 * d15 - d15 * d15 * d15 - d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 + d11 * ((d15 * d15 - d15 * d15 * d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 + (d15 * d15 * d15 + d15 * d15 * d15 - 0x4008000000000000 * d15 * d15) + 0x3ff0000000000000);
    d9 = d1 * (d15 * d15 * d15 - d15 * d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 + d0;
    [r19->_target position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousPosition));
    d0 = d0 - *(int128_t *)(r19 + r8);
    d1 = d1 * (d15 * d15 * d15 - d15 * d15) * (0x3ff0000000000000 - d2) * 0x3fe0000000000000 - *(int128_t *)(0x8 + r19 + r8);
    if (d0 != 0x0 || d1 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_accumulatedDiff));
            d2 = *(int128_t *)(r19 + r8);
            d3 = *(int128_t *)(0x8 + r19 + r8);
            *(int128_t *)(r19 + r8) = d0 + d2;
            *(int128_t *)(0x8 + r19 + r8) = d1 + d3;
    }
    [r19 updatePosition:r2];
    return;
}

-(void *)points {
    r0 = self->_points;
    return r0;
}

-(void)setPoints:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end