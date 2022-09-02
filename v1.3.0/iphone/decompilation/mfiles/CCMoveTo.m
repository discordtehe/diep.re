@implementation CCMoveTo

+(void *)actionWithDuration:(double)arg2 position:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 position:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 position:r3];
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
            *(int128_t *)(int64_t *)&r0->_endPosition = d9;
            *(int128_t *)((int64_t *)&r0->_endPosition + 0x8) = d8;
    }
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_30 super] startWithTarget:arg2];
    d8 = *(int128_t *)(int64_t *)&self->_endPosition;
    d9 = *(int128_t *)((int64_t *)&self->_endPosition + 0x8);
    [self->_target position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_positionDelta));
    *(self + r8) = d8 - d0;
    *(0x8 + self + r8) = d9 - d1;
    return;
}

@end