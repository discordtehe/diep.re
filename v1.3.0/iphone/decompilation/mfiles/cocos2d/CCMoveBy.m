@implementation CCMoveBy

+(void *)actionWithDuration:(double)arg2 position:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 position:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 position:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_positionDelta));
            *(int128_t *)(r0 + r8) = d9;
            *(int128_t *)(0x8 + r0 + r8) = d8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 position:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:r2];
    [arg2 position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPos));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(int64_t *)&self->_previousPos = *(int128_t *)(self + r8);
    return;
}

-(void *)reverse {
    r0 = [self class];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_positionDelta));
    r0 = [r0 actionWithDuration:r2 position:r3];
    return r0;
}

-(void)update:(double)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    [*(self + r20) position];
    d0 = d0 - *(int128_t *)(int64_t *)&self->_previousPos;
    d1 = d1 - *(int128_t *)((int64_t *)&self->_previousPos + 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPos));
    d0 = d0 + *(int128_t *)(self + r8);
    d1 = d1 + *(int128_t *)(0x8 + self + r8);
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_positionDelta));
    [*(self + r20) setPosition:r2];
    *(int128_t *)(int64_t *)&self->_previousPos = d0 + d2 * d8;
    *(int128_t *)((int64_t *)&self->_previousPos + 0x8) = d9;
    return;
}

@end