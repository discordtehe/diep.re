@implementation CCTintBy

+(void *)actionWithDuration:(double)arg2 red:(short)arg3 green:(short)arg4 blue:(short)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 red:arg3 green:arg4 blue:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 red:(short)arg3 green:(short)arg4 blue:(short)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    if (r0 != 0x0) {
            *(int16_t *)(int64_t *)&r0->_deltaR = r21;
            *(int16_t *)(int64_t *)&r0->_deltaG = r20;
            *(int16_t *)(int64_t *)&r0->_deltaB = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:sign_extend_64(*(int16_t *)(int64_t *)&self->_deltaR) red:sign_extend_64(*(int16_t *)(int64_t *)&self->_deltaG) green:sign_extend_64(*(int16_t *)(int64_t *)&self->_deltaB) blue:r5];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    r19 = self;
    [[&var_20 super] startWithTarget:arg2];
    r8 = [r19->_target color] & 0xff;
    *(int16_t *)(int64_t *)&r19->_fromR = r8;
    asm { ubfx       w8, w0, #0x8, #0x8 };
    *(int16_t *)(int64_t *)&r19->_fromG = r8;
    asm { ubfx       w8, w0, #0x10, #0x8 };
    *(int16_t *)(int64_t *)&r19->_fromB = r8;
    return;
}

-(void)update:(double)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r8 = *(self + r8);
    asm { scvtf      d1, w9 };
    asm { scvtf      d2, w9 };
    d2 = d2 * d0;
    d1 = d2 + d1;
    asm { fcvtzs     w2, d1 };
    asm { scvtf      d1, w9 };
    asm { scvtf      d2, w9 };
    asm { fcvtzs     w9, d1 };
    asm { scvtf      d1, w10 };
    asm { scvtf      d2, w10 };
    asm { fcvtzs     w10, d0 };
    asm { bfi        w2, w9, #0x8, #0x8 };
    asm { bfi        w2, w10, #0x10, #0x8 };
    asm { bfi        w2, w10, #0x18, #0x8 };
    [r8 setColor:r2];
    return;
}

-(void *)reverse {
    r0 = self;
    r8 = @class(CCTintBy);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_deltaR));
    r9 = *(int16_t *)(r0 + r9);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_deltaG));
    r10 = *(int16_t *)(r0 + r10);
    asm { neg        w9, w9 };
    asm { neg        w10, w10 };
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_deltaB));
    r11 = *(int16_t *)(r0 + r11);
    asm { neg        w11, w11 };
    r0 = [r8 actionWithDuration:sign_extend_64(r9) red:sign_extend_64(r10) green:sign_extend_64(r11) blue:r5];
    return r0;
}

@end