@implementation CCLayerGradient

+(void *)layerWithColor:(struct _ccColor4B)arg2 fadingTo:(struct _ccColor4B)arg3 alongVector:(struct CGPoint)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x4);
    memcpy(&r2, &arg2, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithColor:r2 & 0xffffffff fadingTo:r3 & 0xffffffff alongVector:r4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)layerWithColor:(struct _ccColor4B)arg2 fadingTo:(struct _ccColor4B)arg3 {
    memcpy(&r3, &arg3, 0x4);
    memcpy(&r2, &arg2, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithColor:r2 & 0xffffffff fadingTo:r3 & 0xffffffff];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithColor:0xffffffffff000000 fadingTo:0xffffffffff000000];
    return r0;
}

-(void *)initWithColor:(struct _ccColor4B)arg2 fadingTo:(struct _ccColor4B)arg3 {
    memcpy(&r3, &arg3, 0x4);
    memcpy(&r2, &arg2, 0x4);
    r0 = [self initWithColor:r2 & 0xffffffff fadingTo:r3 & 0xffffffff alongVector:r4];
    return r0;
}

-(struct _ccColorThreeB)startColor {
    r0 = *(int32_t *)(int64_t *)&self->_realColor;
    return r0;
}

-(void *)initWithColor:(struct _ccColor4B)arg2 fadingTo:(struct _ccColor4B)arg3 alongVector:(struct CGPoint)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x4);
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r31 = r31 - 0x20;
    asm { ubfx       x8, x2, #0x18, #0x8 };
    asm { ubfx       x9, x3, #0x8, #0x18 };
    asm { ubfx       x10, x3, #0x10, #0x10 };
    asm { ubfx       x11, x3, #0x18, #0x8 };
    r12 = sign_extend_64(*(int32_t *)ivar_offset(_endColor));
    *(int8_t *)(r0 + r12) = r3;
    *(int8_t *)(0x1 + r0 + r12) = r9;
    *(int8_t *)(0x2 + r0 + r12) = r10;
    *(int8_t *)(int64_t *)&r0->_endOpacity = r11;
    *(int8_t *)(int64_t *)&r0->_startOpacity = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_vector));
    *(int128_t *)(r0 + r8) = d0;
    *(int128_t *)(0x8 + r0 + r8) = d1;
    *(int8_t *)(int64_t *)&r0->_compressedInterpolation = 0x1;
    r1 = @selector(initWithColor:);
    asm { bfxil      x8, x2, #0x0, #0x18 };
    r0 = objc_msgSendSuper2(&var_10, r1);
    return r0;
}

-(void)setStartColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [self setColor:r2];
    return;
}

-(void)updateColor {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] updateColor];
    r20 = (int64_t *)&r19->_vector;
    d0 = *(int128_t *)r20;
    sub_1003115a8();
    asm { fcvt       s0, d0 };
    if (s0 != 0x0) {
            asm { fcvt       d0, s0 };
            d1 = *(int128_t *)r20;
            d2 = *(int128_t *)(r20 + 0x8);
            asm { fdiv       d1, d1, d0 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_compressedInterpolation));
            r8 = *(int8_t *)(r19 + r8);
            asm { fdiv       d0, d2, d0 };
            if (r8 != 0x0) {
                    asm { fcvt       s2, d1 };
                    s2 = Abs(s2);
                    asm { fcvt       s3, d0 };
                    s2 = s2 + Abs(s3);
                    asm { fdiv       s2, s3, s2 };
                    s2 = s2 * *(int32_t *)0x100bd1508;
                    asm { fcvt       d2, s2 };
                    d1 = d1 * d2;
                    d0 = d0 * d2;
            }
            asm { ucvtf      s2, s2 };
            r8 = 0x437f0000;
            asm { dup        v3.2s, w8 };
            asm { fdiv       s2, s2, s4 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
            asm { ucvtf      s5, s5 };
            asm { fdiv       s5, s5, s4 };
            asm { ucvtf      s6, s6 };
            asm { ucvtf      s7, s7 };
            asm { ucvtf      s16, s16 };
            s16 = s2 * s16;
            v7 = v16;
            asm { fdiv       s6, s6, s4 };
            asm { fdiv       v7.2s, v7.2s, v3.2s };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColor));
            asm { ucvtf      s16, s16 };
            asm { fdiv       s16, s16, s4 };
            asm { ucvtf      s17, s17 };
            asm { fdiv       s4, s17, s4 };
            asm { ucvtf      s17, s17 };
            asm { ucvtf      s18, s18 };
            s2 = s2 * s18;
            asm { fdiv       v3.2s, v17.2s, v3.2s };
            asm { fcvt       d2, s16 };
            asm { fcvt       d5, s5 };
            d16 = *0x100bd14f8;
            d17 = d1 + d16;
            asm { fdiv       d18, d18, d19 };
            asm { fcvt       s20, d20 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_squareColors));
            r8 = r19 + r8;
            asm { fcvt       d21, s4 };
            asm { fcvt       d4, s4 };
            asm { fcvt       s6, d6 };
            *(int128_t *)r8 = s20;
            *(int128_t *)(r8 + 0x4) = s6;
            asm { fcvtl      v6.2d, v3.2s };
            v3 = v7 - v3;
            asm { fcvtl      v3.2d, v3.2s };
            v7 = v3 * v18 + v6;
            asm { fcvtn      v7.2s, v7.2d };
            *(r8 + 0x8) = d7;
            d1 = d16 - d1;
            d7 = d1 + d0;
            asm { fdiv       d7, d7, d19 };
            asm { fcvt       s16, d16 };
            asm { fcvt       s18, d18 };
            *(int128_t *)(r8 + 0x10) = s16;
            *(int128_t *)(r8 + 0x14) = s18;
            asm { fcvtn      v7.2s, v7.2d };
            *(r8 + 0x18) = d7;
            d7 = d17 - d0;
            asm { fdiv       d7, d7, d19 };
            asm { fcvt       s16, d16 };
            asm { fcvt       s17, d17 };
            *(int128_t *)(r8 + 0x20) = s16;
            *(int128_t *)(r8 + 0x24) = s17;
            asm { fcvtn      v7.2s, v7.2d };
            *(r8 + 0x28) = d7;
            d0 = d1 - d0;
            asm { fdiv       d0, d0, d19 };
            asm { fcvt       s1, d1 };
            asm { fcvt       s2, d2 };
            *(int128_t *)(r8 + 0x30) = s1;
            *(int128_t *)(r8 + 0x34) = s2;
            asm { fcvtn      v0.2s, v0.2d };
            *(r8 + 0x38) = d0;
    }
    return;
}

-(void)setEndColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_endColor = r2;
    [self updateColor];
    return;
}

-(void)setStartOpacity:(unsigned char)arg2 {
    *(int8_t *)(int64_t *)&self->_startOpacity = arg2;
    [self updateColor];
    return;
}

-(void)setEndOpacity:(unsigned char)arg2 {
    *(int8_t *)(int64_t *)&self->_endOpacity = arg2;
    [self updateColor];
    return;
}

-(void)setVector:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_vector));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    [self updateColor];
    return;
}

-(bool)compressedInterpolation {
    r0 = *(int8_t *)(int64_t *)&self->_compressedInterpolation;
    return r0;
}

-(void)setCompressedInterpolation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_compressedInterpolation = arg2;
    [self updateColor];
    return;
}

-(unsigned char)startOpacity {
    r0 = *(int8_t *)(int64_t *)&self->_startOpacity;
    return r0;
}

-(struct _ccColorThreeB)endColor {
    r0 = *(int32_t *)(int64_t *)&self->_endColor;
    return r0;
}

-(unsigned char)endOpacity {
    r0 = *(int8_t *)(int64_t *)&self->_endOpacity;
    return r0;
}

-(struct CGPoint)vector {
    r0 = self;
    return r0;
}

@end