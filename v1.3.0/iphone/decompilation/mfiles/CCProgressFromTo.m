@implementation CCProgressFromTo

+(void *)actionWithDuration:(double)arg2 from:(float)arg3 to:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 from:arg3 to:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 from:(float)arg3 to:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_to = s9;
            *(int32_t *)(int64_t *)&r0->_from = s8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:arg2 from:r3 to:r4];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_10 super] startWithTarget:arg2];
    return;
}

-(void *)reverse {
    r0 = [self class];
    r0 = [r0 actionWithDuration:r2 from:r3 to:r4];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r8 = *(self + r8);
    asm { fcvt       d2, s1 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s0, d0 };
    [r8 setPercentage:r2];
    return;
}

@end