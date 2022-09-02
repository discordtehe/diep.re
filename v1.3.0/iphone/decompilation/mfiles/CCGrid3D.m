@implementation CCGrid3D

-(void)dealloc {
    free(self->_texCoordinates);
    free(self->_vertices);
    free(self->_indices);
    free(self->_originalVertices);
    [[&var_20 super] dealloc];
    return;
}

-(void)blit {
    asm { fcvtzs     x20, d0 };
    sub_10031a6f0(0x5);
    [*(r19 + 0x48) use];
    [*(r19 + 0x48) setUniformsForBuiltins];
    glVertexAttribPointer(0x0, 0x3, 0x1406, 0x0, 0x0, r19->_vertices);
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x0, r19->_texCoordinates);
    glDrawElements(0x4, r20 + r20 * 0x2 << 0x1, 0x1403, r19->_indices);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;
}

-(struct _ccVertex3F)vertex:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     x8, d0 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    return r0;
}

-(struct _ccVertex3F)originalVertex:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     x8, d0 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_originalVertices));
    return r0;
}

-(void)setVertex:(struct CGPoint)arg2 vertex:(struct _ccVertex3F)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     x8, d0 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    r9 = *(r0 + r9);
    *(int128_t *)(r9 + r8 * 0x4) = s2;
    *(int128_t *)(0x4 + r9 + r8 * 0x4) = s3;
    *(int32_t *)(0x8 + r9 + r8 * 0x4) = s4;
    return;
}

-(void)reuse {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(r0 + 0xc) >= 0x1) {
            r19 = r0;
            r0 = r0->_originalVertices;
            r1 = r19->_vertices;
            asm { fcvtzu     x2, d0 };
            memcpy(r0, r1, r2);
            *(int32_t *)(r19 + 0xc) = *(int32_t *)(r19 + 0xc) - 0x1;
    }
    return;
}

-(void)calculateVertexPoints {
    r31 = r31 - 0x130;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r19 = self;
    *(r29 + 0xffffffffffffff78) = **___stack_chk_guard;
    [*(self + 0x20) pixelsWide];
    [*(r19 + 0x20) pixelsHigh];
    [*(r19 + 0x20) contentSizeInPixels];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            free(r0);
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_originalVertices));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            free(r0);
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_texCoordinates));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            free(r0);
    }
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            free(r0);
    }
    d10 = *(int128_t *)(r19 + 0x10);
    d11 = *(int128_t *)(r19 + 0x18);
    d12 = d11 + 0x3ff0000000000000;
    d9 = (d10 + 0x3ff0000000000000) * d12;
    asm { fcvtzu     x27, d9 };
    *(r19 + r24) = malloc(r27 + r27 * 0x2 << 0x2);
    *(r19 + r23) = malloc(r27 + r27 * 0x2 << 0x2);
    r0 = malloc(r27 << 0x3);
    *(r19 + r25) = r0;
    asm { fcvtzu     x0, d0 };
    *(r19 + r26) = malloc(r0);
    r1 = *(r19 + r24);
    if (d10 > 0x0) {
            r8 = 0x0;
            asm { ucvtf      s0, x20 };
            asm { ucvtf      s2, x21 };
            r9 = *(r19 + r25);
            asm { fcvt       s1, d8 };
            asm { fcvt       d0, s0 };
            asm { fcvt       d1, s1 };
            asm { fcvt       d2, s2 };
            r10 = &var_D8 + 0x8;
            r11 = &var_128 + 0x18;
            r13 = &var_A8;
            r14 = &var_E8;
            do {
                    if (d11 > 0x0) {
                            d3 = 0x0;
                            r15 = 0x0;
                            d4 = *(int128_t *)(r19 + 0x28);
                            d5 = *(int128_t *)(r19 + 0x30);
                            asm { fcvt       s6, d6 };
                            asm { fcvt       d7, s6 };
                            d4 = d4 + d7;
                            asm { fcvt       s16, d4 };
                            d17 = d12 * d3;
                            r8 = r8 + 0x1;
                            asm { scvtf      d4, w8 };
                            d18 = d12 * d4;
                            asm { fcvt       d19, s16 };
                            r16 = *(int8_t *)(r19 + 0x40);
                            d20 = 0x0;
                            do {
                                    asm { fcvtzs     x17, d21 };
                                    d21 = d20 * d5;
                                    asm { fcvtzs     w2, d22 };
                                    d20 = d18 + d20;
                                    asm { fcvtzs     w3, d20 };
                                    r15 = r15 + 0x1;
                                    asm { scvtf      d20, w15 };
                                    asm { fcvtzs     w4, d22 };
                                    asm { fcvtzs     w5, d22 };
                                    asm { madd       x17, x17, x12, x0 };
                                    *(int16_t *)r17 = r2;
                                    *(int16_t *)(r17 + 0x2) = r3;
                                    *(int16_t *)(r17 + 0x4) = r5;
                                    asm { fcvt       s22, d21 };
                                    asm { fcvt       d21, s22 };
                                    *(int16_t *)(r17 + 0x6) = r3;
                                    *(int16_t *)(r17 + 0x8) = r4;
                                    asm { fcvt       s23, d23 };
                                    *(int16_t *)(r17 + 0xa) = r5;
                                    r17 = r2 + r2 * 0x2;
                                    r2 = r2 << 0x1;
                                    asm { fcvt       d22, s23 };
                                    r3 = r11;
                                    r4 = 0x4;
                                    r5 = r10;
                                    do {
                                            if (r16 == 0x0) {
                                                    asm { fcsel      d21, d21, d23, eq };
                                            }
                                            *(int32_t *)(r1 + sign_extend_64(r17) * 0x4) = *(int32_t *)(r5 + 0xfffffffffffffff8);
                                            *(int32_t *)(0x4 + r1 + sign_extend_64(r17) * 0x4) = *(int32_t *)(r5 + 0xfffffffffffffffc);
                                            *(int32_t *)(0x8 + r1 + sign_extend_64(r17) * 0x4) = *(int32_t *)r5;
                                            asm { fdiv       d22, d22, d0 };
                                            asm { fcvt       s22, d22 };
                                            r17 = r9 + sign_extend_64(r2) * 0x4;
                                            asm { fdiv       d21, d21, d2 };
                                            asm { fcvt       s21, d21 };
                                            *(int128_t *)r17 = s22;
                                            *(int128_t *)(r17 + 0x4) = s21;
                                            if (r4 == 0x10) {
                                                break;
                                            }
                                            r17 = *(int32_t *)(r13 + r4);
                                            d21 = *(int128_t *)r3;
                                            r2 = *(int32_t *)(r14 + r4);
                                            r5 = r5 + 0xc;
                                            r4 = r4 + 0x4;
                                            r3 = r3 + 0x10;
                                    } while (true);
                            } while (d11 > d20);
                    }
                    else {
                            r8 = r8 + 0x1;
                            asm { scvtf      d4, w8 };
                    }
            } while (d10 > d4);
    }
    r0 = *(r19 + r23);
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff78)) {
            asm { fcvtzu     x2, d0 };
            memcpy(r0, r1, r2);
    }
    else {
            __stack_chk_fail();
    }
    return;
}

@end