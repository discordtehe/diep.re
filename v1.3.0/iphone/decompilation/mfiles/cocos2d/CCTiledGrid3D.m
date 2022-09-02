@implementation CCTiledGrid3D

-(void)dealloc {
    free(self->_texCoordinates);
    free(self->_vertices);
    free(self->_indices);
    free(self->_originalVertices);
    [[&var_20 super] dealloc];
    return;
}

-(void)blit {
    r0 = self;
    r19 = r0;
    asm { fcvtzs     x20, d0 };
    [*(r0 + 0x48) use];
    [*(r19 + 0x48) setUniformsForBuiltins];
    sub_10031a6f0(0x5);
    glVertexAttribPointer(0x0, 0x3, 0x1406, 0x0, 0x0, r19->_vertices);
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x0, r19->_texCoordinates);
    glDrawElements(0x4, r20 + r20 * 0x2 << 0x1, 0x1403, r19->_indices);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;
}

-(void)setTile:(struct CGPoint)arg2 coords:(struct _ccQuad3)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     x8, d0 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    r9 = *(r0 + r9);
    q2 = *(int128_t *)(r2 + 0x10);
    q0 = *(int128_t *)(r2 + 0x20);
    *(int128_t *)(r9 + r8 * 0x4) = *(int128_t *)r2;
    *(int128_t *)(0x10 + r9 + r8 * 0x4) = q2;
    *(int128_t *)(0x20 + r9 + r8 * 0x4) = q0;
    return;
}

-(struct _ccQuad3)originalTile:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     x9, d0 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_originalVertices));
    r10 = *(r0 + r10);
    q2 = *(int128_t *)(0x10 + r10 + r9 * 0x4);
    q0 = *(int128_t *)(0x20 + r10 + r9 * 0x4);
    *(int128_t *)r8 = *(int128_t *)(r10 + r9 * 0x4);
    *(int128_t *)(r8 + 0x10) = q2;
    *(int128_t *)(r8 + 0x20) = q0;
    return r0;
}

-(struct _ccQuad3)tile:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     x9, d0 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    r10 = *(r0 + r10);
    q2 = *(int128_t *)(0x10 + r10 + r9 * 0x4);
    q0 = *(int128_t *)(0x20 + r10 + r9 * 0x4);
    *(int128_t *)r8 = *(int128_t *)(r10 + r9 * 0x4);
    *(int128_t *)(r8 + 0x10) = q2;
    *(int128_t *)(r8 + 0x20) = q0;
    return r0;
}

-(void)calculateVertexPoints {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x20) pixelsWide];
    [*(r19 + 0x20) pixelsHigh];
    [*(r19 + 0x20) contentSizeInPixels];
    d9 = *(int128_t *)(r19 + 0x10);
    d10 = *(int128_t *)(r19 + 0x18);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            free(r0);
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_originalVertices));
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            free(r0);
    }
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_texCoordinates));
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            free(r0);
    }
    asm { fcvtzs     x25, d9 };
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
    r0 = *(r19 + r27);
    if (r0 != 0x0) {
            free(r0);
    }
    r20 = r25 + r25 * 0x2 << 0x4;
    *(r19 + r23) = malloc(r20);
    *(r19 + r24) = malloc(r20);
    *(r19 + r26) = malloc(r25 << 0x5);
    r0 = malloc(r25 + r25 * 0x2 << 0x2);
    *(r19 + r27) = r0;
    d0 = *(r19 + 0x10);
    if (d0 > 0x0) {
            r8 = 0x0;
            asm { ucvtf      s1, x21 };
            asm { ucvtf      s2, x22 };
            asm { fcvt       s3, d8 };
            r9 = *(r19 + r26);
            r10 = *(r19 + r23);
            d6 = 0x0;
            d4 = *(r19 + 0x18);
            do {
                    if (d4 > 0x0) {
                            d7 = *(int128_t *)(r19 + 0x28);
                            d5 = *(int128_t *)(r19 + 0x30);
                            d6 = d6 * d7;
                            asm { fcvt       s6, d6 };
                            asm { fcvt       d16, s6 };
                            asm { fcvt       s7, d7 };
                            r11 = *(int8_t *)(r19 + 0x40);
                            asm { fdiv       s16, s6, s1 };
                            asm { fdiv       s17, s7, s1 };
                            d18 = 0x0;
                            r12 = 0x1;
                            do {
                                    d18 = d18 * d5;
                                    asm { fcvt       s18, d18 };
                                    asm { fcvt       d19, s18 };
                                    d19 = d5 + d19;
                                    asm { fcvt       s19, d19 };
                                    *(int128_t *)r10 = s6;
                                    *(int128_t *)(r10 + 0x4) = s18;
                                    *(int32_t *)(r10 + 0x8) = 0x0;
                                    *(int128_t *)(r10 + 0xc) = s7;
                                    *(int128_t *)(r10 + 0x10) = s18;
                                    *(int32_t *)(r10 + 0x14) = 0x0;
                                    *(int128_t *)(r10 + 0x18) = s6;
                                    *(int128_t *)(r10 + 0x1c) = s19;
                                    *(int32_t *)(r10 + 0x20) = 0x0;
                                    *(int128_t *)(r10 + 0x24) = s7;
                                    *(int128_t *)(r10 + 0x28) = s19;
                                    r13 = r10 + 0x30;
                                    *(int32_t *)(r10 + 0x2c) = 0x0;
                                    if (r11 == 0x0) {
                                            asm { fcsel      s18, s18, s20, eq };
                                    }
                                    if (CPU_FLAGS & E) {
                                            asm { fcsel      s19, s19, s21, eq };
                                    }
                                    asm { fdiv       s18, s18, s2 };
                                    *(int128_t *)r9 = s16;
                                    *(int128_t *)(r9 + 0x4) = s18;
                                    *(int128_t *)(r9 + 0x8) = s17;
                                    *(int128_t *)(r9 + 0xc) = s18;
                                    asm { fdiv       s18, s19, s2 };
                                    *(int128_t *)(r9 + 0x10) = s16;
                                    *(int128_t *)(r9 + 0x14) = s18;
                                    r14 = r9 + 0x20;
                                    *(int128_t *)(r9 + 0x18) = s17;
                                    *(int128_t *)(r9 + 0x1c) = s18;
                                    asm { scvtf      d18, w12 };
                                    r12 = r12 + 0x1;
                                    r10 = r13;
                                    r9 = r14;
                            } while (d4 > d18);
                            r9 = r14;
                            r10 = r13;
                    }
                    r8 = r8 + 0x1;
                    asm { scvtf      d6, w8 };
            } while (d0 > d6);
    }
    if (r25 >= 0x1) {
            r8 = 0x0;
            r9 = 0x5;
            do {
                    *(int16_t *)(r0 + (r9 - 0x5) * 0x2) = r8 << 0x2;
                    r10 = 0x1;
                    asm { bfi        w10, w8, #0x2, #0x1e };
                    *(int16_t *)(r0 + (r9 - 0x4) * 0x2) = r10;
                    r11 = 0x2;
                    asm { bfi        w11, w8, #0x2, #0x1e };
                    *(int16_t *)(r0 + (r9 - 0x3) * 0x2) = r11;
                    *(int16_t *)(r0 + (r9 - 0x2) * 0x2) = r10;
                    *(int16_t *)(r0 + (r9 - 0x1) * 0x2) = r11;
                    r10 = 0x3;
                    asm { bfi        w10, w8, #0x2, #0x1e };
                    r8 = r8 + 0x1;
                    *(int16_t *)(r0 + r9 * 0x2) = r10;
                    r9 = r9 + 0x6;
            } while (r25 != r8);
    }
    memcpy(*(r19 + r24), *(r19 + r23), r20);
    return;
}

-(void)reuse {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(int32_t *)(r0 + 0xc);
    if (r8 >= 0x1) {
            r19 = r0;
            asm { fcvtzs     x8, d0 };
            memcpy(r0->_originalVertices, r19->_vertices, r8 + r8 * 0x2 << 0x4);
            *(int32_t *)(r19 + 0xc) = *(int32_t *)(r19 + 0xc) - 0x1;
    }
    return;
}

@end