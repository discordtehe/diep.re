@implementation CCTintTo

+(void *)actionWithDuration:(double)arg2 red:(unsigned char)arg3 green:(unsigned char)arg4 blue:(unsigned char)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 red:arg3 green:arg4 blue:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 red:(unsigned char)arg3 green:(unsigned char)arg4 blue:(unsigned char)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    if (r0 != 0x0) {
            asm { bfi        w19, w21, #0x8, #0x8 };
            asm { bfi        w19, w20, #0x10, #0x8 };
            asm { bfi        w19, w20, #0x18, #0x8 };
            *(int32_t *)(int64_t *)&r0->_to = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_to));
    r0 = [r19 initWithDuration:*(int8_t *)(self + r8) red:*(int8_t *)(0x1 + self + r8) green:*(int8_t *)(0x2 + self + r8) blue:r5];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    *(int32_t *)(int64_t *)&self->_from = [self->_target color];
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r8 = *(r0 + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_from));
    r9 = r0 + r9;
    asm { ucvtf      d1, w10 };
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_to));
    asm { scvtf      d2, w10 };
    d2 = d2 * d0;
    d1 = d2 + d1;
    asm { fcvtzs     w2, d1 };
    asm { ucvtf      d1, w10 };
    asm { scvtf      d2, w10 };
    asm { fcvtzs     w10, d1 };
    asm { ucvtf      d1, w9 };
    asm { scvtf      d2, w9 };
    asm { fcvtzs     w9, d0 };
    asm { bfi        w2, w10, #0x8, #0x8 };
    asm { bfi        w2, w9, #0x10, #0x8 };
    asm { bfi        w2, w9, #0x18, #0x8 };
    [r8 setColor:r2];
    return;
}

@end