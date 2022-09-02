@implementation CCJumpBy

+(void *)actionWithDuration:(double)arg2 position:(struct CGPoint)arg3 height:(double)arg4 jumps:(unsigned long long)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 position:r3 height:r4 jumps:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 position:(struct CGPoint)arg3 height:(double)arg4 jumps:(unsigned long long)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_40 super] initWithDuration:r2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_delta));
            *(int128_t *)(r0 + r8) = d10;
            *(int128_t *)(0x8 + r0 + r8) = d9;
            r0->_height = d8;
            r0->_jumps = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:self->_jumps position:r3 height:r4 jumps:r5];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_target position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPosition));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    *(int128_t *)(int64_t *)&self->_previousPos = *(int128_t *)(self + r8);
    return;
}

-(void *)reverse {
    r0 = [self class];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_delta));
    r0 = [r0 actionWithDuration:self->_jumps position:r3 height:r4 jumps:r5];
    return r0;
}

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    d0 = r0->_jumps;
    asm { ucvtf      d0, d0 };
    asm { fcvt       s0, d0 };
    fmodf(r0, r1);
    asm { fcvt       d0, s0 };
    d0 = (0x3ff0000000000000 - d0) * d0 * r19->_height * 0x4010000000000000;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_delta));
    d1 = *(int128_t *)(r19 + r8);
    r20 = r19->_target;
    [r20 position];
    d0 = d0 - *(int128_t *)(int64_t *)&r19->_previousPos;
    d1 = d1 - *(int128_t *)((int64_t *)&r19->_previousPos + 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPosition));
    d2 = *(int128_t *)(r19 + r8);
    d3 = *(int128_t *)(0x8 + r19 + r8);
    *(r19 + r8) = d0 + d2;
    *(0x8 + r19 + r8) = d1 + d3;
    [r20 setPosition:r2];
    r19->_previousPos = d8 + d0 + d2;
    *((int64_t *)&r19->_previousPos + 0x8) = d9 + d1 + d3;
    return;
}

@end