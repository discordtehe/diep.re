@implementation CCBezierTo

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_toConfig));
    q0 = *(int128_t *)(0x10 + self + r8);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_config));
    *(int128_t *)(0x10 + self + r10) = q0;
    *(int128_t *)(0x20 + self + r10) = *(int128_t *)(0x20 + self + r8);
    *(int128_t *)(self + r10) = *(int128_t *)(self + r8);
    return;
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
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_toConfig));
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_toConfig));
    r0 = [r19 initWithDuration:&var_40 bezier:r3];
    return r0;
}

@end