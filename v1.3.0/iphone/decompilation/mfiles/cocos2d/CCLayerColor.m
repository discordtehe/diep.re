@implementation CCLayerColor

+(void *)layerWithColor:(struct _ccColor4B)arg2 width:(float)arg3 height:(float)arg4 {
    memcpy(&r2, &arg2, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithColor:r2 & 0xffffffff width:r3 height:r4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r19 = self;
    [[CCDirector sharedDirector] winSize];
    asm { fcvt       s0, d0 };
    asm { fcvt       s1, d1 };
    r0 = [r19 initWithColor:0x0 width:r3 height:r4];
    return r0;
}

+(void *)layerWithColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithColor:r2 & 0xffffffff];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithColor:(struct _ccColor4B)arg2 width:(float)arg3 height:(float)arg4 {
    memcpy(&r2, &arg2, 0x4);
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_blendFunc = *0x100ba36a8;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_realColor));
            *(int8_t *)(r19 + r10) = r20;
            r12 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
            *(int8_t *)(r19 + r12) = r20;
            *(int8_t *)(0x1 + r19 + r10) = r20 >> 0x8;
            *(int8_t *)(0x1 + r19 + r12) = r20 >> 0x8;
            *(int8_t *)(0x2 + r19 + r10) = r20 >> 0x10;
            *(int8_t *)(0x2 + r19 + r12) = r20 >> 0x10;
            *(int8_t *)(int64_t *)&r19->_realOpacity = r20 >> 0x18;
            *(int8_t *)(int64_t *)&r19->_displayedOpacity = r20 >> 0x18;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_squareVertices));
            *(int128_t *)(r19 + r8) = q0;
            *(int128_t *)(0x10 + r19 + r8) = q0;
            [r19 updateColor];
            asm { fcvt       d0, s9 };
            asm { fcvt       d1, s8 };
            [r19 setContentSize:r2];
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    sub_100292530();
                    sub_100358a48(&var_48, [@"ShaderPositionColor" UTF8String]);
                    r0 = sub_10037ec20(r20, &var_48);
                    r20 = (int64_t *)&r19->_mcRenderJob;
                    *(r20 + 0x140) = r0;
                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_48);
                    }
                    q0 = *(int128_t *)0x1011e2ec0;
                    q1 = *(int128_t *)0x1011e2ed0;
                    q2 = *(int128_t *)0x1011e2ea0;
                    q3 = *(int128_t *)0x1011e2eb0;
                    *(int128_t *)r20 = q2;
                    *(int128_t *)(r20 + 0x10) = q3;
                    *(int128_t *)(r20 + 0x20) = q0;
                    *(int128_t *)(r20 + 0x30) = q1;
                    *(r20 + 0x18) = *0x100bd14f0;
                    *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
            }
            else {
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionColor"]];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)initWithColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r19 = r2;
    r20 = self;
    [[CCDirector sharedDirector] winSize];
    asm { fcvt       s0, d0 };
    asm { fcvt       s1, d1 };
    r0 = [r20 initWithColor:r19 & 0xffffffff width:r3 height:r4];
    return r0;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x20;
    asm { fcvt       s2, d0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_squareVertices));
    r8 = r0 + r8;
    *(int32_t *)(r8 + 0x8) = s2;
    asm { fcvt       s3, d1 };
    *(int128_t *)(r8 + 0x14) = s3;
    *(int128_t *)(r8 + 0x18) = s2;
    *(int32_t *)(r8 + 0x1c) = s3;
    *(int8_t *)(int64_t *)&r0->_mcRenderJobIsDirty = 0x1;
    [[&var_10 super] setContentSize:r2];
    return;
}

-(void)changeWidth:(float)arg2 height:(float)arg3 {
    r0 = self;
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    [r0 setContentSize:r2];
    return;
}

-(void)changeWidth:(float)arg2 {
    r0 = self;
    asm { fcvt       d0, s0 };
    [r0 setContentSize:r2];
    return;
}

-(void)changeHeight:(float)arg2 {
    r0 = self;
    asm { fcvt       d1, s0 };
    [r0 setContentSize:r2];
    return;
}

-(void)updateColor {
    r8 = 0x0;
    r0 = *(int8_t *)(int64_t *)&self->_displayedColor;
    asm { ucvtf      s0, s0 };
    asm { fdiv       s0, s0, s2 };
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_squareColors));
    asm { ucvtf      s1, s1 };
    asm { fdiv       s1, s1, s2 };
    asm { ucvtf      s3, s3 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
    r11 = 0x8 + r11 + r0;
    asm { fdiv       s2, s3, s2 };
    do {
            r12 = r11 + r8;
            *(int128_t *)(r12 + 0xfffffffffffffff8) = s0;
            *(int128_t *)(r12 + 0xfffffffffffffffc) = s1;
            *(int32_t *)r12 = 0x437f0000;
            asm { ucvtf      s3, s3 };
            asm { fdiv       s3, s3, s4 };
            *(int32_t *)(r12 + 0x4) = s3;
            r8 = r8 + 0x10;
    } while (r8 != 0x40);
    *(int8_t *)(int64_t *)&r0->_mcRenderJobIsDirty = 0x1;
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_20 super] setOpacity:arg2];
    [self updateColor];
    return;
}

-(void)cascadeColor {
    [[&var_20 super] cascadeColor];
    [self updateColor];
    return;
}

-(void)cascadeOpacity {
    [[&var_20 super] cascadeOpacity];
    [self updateColor];
    return;
}

-(void)didLoadFromCCB {
    [[&var_20 super] didLoadFromCCB];
    [self updateColor];
    return;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    [[&var_20 super] updateDisplayedOpacity:arg2];
    [self updateColor];
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

-(void)draw {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x240;
    r27 = self;
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] == 0x0) goto loc_100358fe4;

loc_100358cd8:
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJobIsDirty));
    if (*(int8_t *)(r27 + r9) == 0x0) goto loc_100359184;

loc_100358ce8:
    var_270 = r9;
    r23 = 0x0;
    r8 = 0x0;
    r9 = 0x0;
    r28 = 0x0;
    var_278 = (r29 - 0xe8) + 0x8;
    var_60 = 0x0;
    *(int128_t *)((r29 - 0xe8) + 0x78) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x68) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x58) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x48) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x38) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x28) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x18) = q0;
    var_268 = (int64_t *)&r27->_squareVertices;
    r11 = (r29 - 0xe8) + 0x78;
    var_288 = r11;
    var_280 = (r29 - 0xe8) + 0x30;
    *(int128_t *)((r29 - 0xe8) + 0x8) = q0;
    r20 = r27;
    goto loc_100358d5c;

loc_100358d5c:
    r22 = *(int128_t *)(var_268 + r28 * 0x8);
    r21 = *(int128_t *)(0x4 + var_268 + r28 * 0x8);
    if (r9 >= r8) goto loc_100358d84;

loc_100358d70:
    *(int128_t *)r9 = r22;
    *(int128_t *)(r9 + 0x4) = r21;
    var_B0 = r9 + 0x8;
    r23 = var_68;
    goto loc_100358e1c;

loc_100358e1c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_squareColors));
    asm { fcvtzs     w21, s0 };
    asm { fcvtzs     w25, s1 };
    asm { fcvtzs     w22, s0 };
    asm { fcvtzs     w26, s1 };
    r8 = var_60;
    if (r23 >= r8) goto loc_100358e6c;

loc_100358e50:
    *(int8_t *)r23 = r21;
    *(int8_t *)(r23 + 0x1) = r25;
    *(int8_t *)(r23 + 0x2) = r22;
    *(int8_t *)(r23 + 0x3) = r26;
    r26 = r23 + 0x4;
    var_68 = r26;
    goto loc_100358f2c;

loc_100358f2c:
    r9 = var_D8;
    r8 = var_D0;
    if (r9 >= r8) goto loc_100358f44;

loc_100358f38:
    *(int16_t *)r9 = r28;
    r9 = r9 + 0x2;
    var_D8 = r9;
    goto loc_100358fcc;

loc_100358fcc:
    r28 = r28 + 0x1;
    if (r28 == 0x4) goto loc_1003590b0;

loc_100358fd8:
    r9 = var_B0;
    r8 = var_A8;
    r23 = r26;
    goto loc_100358d5c;

loc_1003590b0:
    r0 = sub_1003812ec();
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJob));
    *(int32_t *)(0x18 + r27 + r21) = r0;
    *(int32_t *)(0x1c + r27 + r21) = sub_1003812ec();
    sub_100382ea4(0x40 + r27 + r21, r29 - 0xe8);
    *(int8_t *)(r27 + var_270) = 0x0;
    r0 = var_70;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_88;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_A0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_B8;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r20 = var_C0;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r12 = 0x5;
    r0 = var_E0;
    if (r0 != 0x0) {
            r12 = 0x5;
            operator delete(r0);
    }
    goto loc_100359190;

loc_100359190:
    r8 = r27 + r21;
    r9 = &var_260;
    *(r9 + 0x128) = *(r8 + 0x128);
    r10 = *(r8 + 0x130);
    var_130 = r10;
    if (r10 != 0x0) {
            do {
                    asm { ldxr       x11, [x10] };
                    r11 = r11 + 0x1;
                    asm { stxr       w12, x11, [x10] };
            } while (r12 != 0x0);
    }
    r1 = r8 + 0x150;
    sub_1002c5700(r9 + 0x150, r1);
    sub_1003805bc(&var_260);
    sub_1002c59fc(&var_260 + 0x150);
    r19 = var_130;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    loc_100381804(&var_260 + 0xe8, r1);
    loc_100381804(&var_260 + 0xb0, r1);
    loc_100381804(&var_260 + 0x78, r1);
    loc_100381804(&var_260 + 0x40, r1);
    return;

loc_100358f44:
    r23 = var_E0;
    r24 = r9 - r23;
    if (r24 <= -0x3) goto loc_1003592fc;

loc_100358f54:
    r21 = SAR(r24, 0x1);
    r9 = r21 + 0x1;
    r8 = r8 - r23;
    if (r8 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r8;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x3fffffffffffffff > r8 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x7fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_100358f90;

loc_100358f7c:
    if ((r19 & 0xffffffff80000000) != 0x0) goto loc_100359318;

loc_100358f80:
    r25 = operator new();
    goto loc_100358f94;

loc_100358f94:
    r19 = r25 + r19 * 0x2;
    *(int16_t *)(r25 + r21 * 0x2) = r28;
    r21 = 0x2 + r25 + r21 * 0x2;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_E0 = r25;
    var_D8 = r21;
    var_D0 = r19;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_100358fcc;

loc_100359318:
    sub_100359f4c();
    return;

loc_100358f90:
    r25 = 0x0;
    goto loc_100358f94;

loc_1003592fc:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_100358e6c:
    r24 = var_70;
    r27 = SAR(r23 - r24, 0x2);
    r9 = r27 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1003592f0;

loc_100358e84:
    r8 = r8 - r24;
    r10 = SAR(r8, 0x1);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x3fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_100358ebc;

loc_100358ea8:
    if (r19 >> 0x3e != 0x0) goto loc_100359310;

loc_100358eb0:
    r0 = operator new();
    goto loc_100358ec0;

loc_100358ec0:
    r8 = r0 + r27 * 0x4;
    *(int8_t *)r8 = r21;
    *(int8_t *)(r8 + 0x1) = r25;
    r9 = r0 + r19 * 0x4;
    *(int8_t *)(r8 + 0x2) = r22;
    *(int8_t *)(r8 + 0x3) = r26;
    r26 = r8 + 0x4;
    r27 = r20;
    if (r23 != r24) {
            do {
                    r23 = r23 + 0xfffffffffffffffc;
                    *(int8_t *)(r8 + 0xfffffffffffffffc) = *(int8_t *)r23;
                    *(int8_t *)(r8 + 0xfffffffffffffffd) = *(int8_t *)(r23 + 0x1);
                    *(int8_t *)(r8 + 0xfffffffffffffffe) = *(int8_t *)(r23 + 0x2);
                    *(int8_t *)(r8 + 0xffffffffffffffff) = *(int8_t *)(r23 + 0x3);
                    r8 = r8 - 0x4;
            } while (r24 != r23);
            r23 = var_70;
    }
    var_70 = r8;
    var_68 = r26;
    var_60 = r9;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_100358f2c;

loc_100359310:
    sub_100359f4c();
    return;

loc_100358ebc:
    r0 = 0x0;
    goto loc_100358ec0;

loc_1003592f0:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_100358d84:
    r24 = var_B8;
    r25 = r9 - r24;
    r27 = SAR(r25, 0x3);
    r9 = r27 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1003592e4;

loc_100358d9c:
    r8 = r8 - r24;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x1fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_100358dd8;

loc_100358dc0:
    if (r19 >> 0x3d != 0x0) goto loc_100359308;

loc_100358dc8:
    r26 = operator new();
    goto loc_100358ddc;

loc_100358ddc:
    r19 = r26 + r19 * 0x8;
    *(int128_t *)(r26 + r27 * 0x8) = r22;
    *(int128_t *)(0x4 + r26 + r27 * 0x8) = r21;
    r21 = 0x8 + r26 + r27 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_B8 = r26;
    var_B0 = r21;
    var_A8 = r19;
    r27 = r20;
    if (r24 != 0x0) {
            operator delete(r24);
    }
    goto loc_100358e1c;

loc_100359308:
    sub_100359f4c();
    return;

loc_100358dd8:
    r26 = 0x0;
    goto loc_100358ddc;

loc_1003592e4:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_100359184:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJob));
    goto loc_100359190;

loc_100358fe4:
    sub_10031a6c4();
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r27 + r19) use];
    [*(r27 + r19) setUniformsForBuiltins];
    sub_10031a6f0(0x3);
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, (int64_t *)&r27->_squareVertices);
    glVertexAttribPointer(0x1, 0x4, 0x1406, 0x0, 0x0, (int64_t *)&r27->_squareColors);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(r27 + r8), *(int128_t *)(0x4 + r27 + r8));
    glDrawArrays(0x5, 0x0, 0x4);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;
}

@end