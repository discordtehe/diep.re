@implementation CCResizeTo

+(void *)actionWithDuration:(double)arg2 targetWidth:(float)arg3 targetHeight:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 targetWidth:arg3 targetHeight:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 targetWidth:(float)arg3 targetHeight:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2];
    if (r0 != 0x0) {
            asm { fcvt       d0, s9 };
            asm { fcvt       d1, s8 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_targetSize));
            *(int128_t *)(r0 + r8) = d0;
            *(int128_t *)(0x8 + r0 + r8) = d1;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r2 = arg2;
    r0 = [r0 allocWithZone:r2];
    asm { fcvt       s1, d1 };
    asm { fcvt       s2, d2 };
    r0 = [r0 initWithDuration:r2 targetWidth:r3 targetHeight:r4];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [[&var_30 super] startWithTarget:r2];
            [r2 contentSize];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_startSize));
            *(r0 + r8) = d0;
            *(0x8 + r0 + r8) = d1;
    }
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    asm { fcvtn      v0.2s, v0.2d };
    asm { fcvtl      v0.2d, v0.2s };
    [r0->_target setContentSize:r2];
    return;
}

@end