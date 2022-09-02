@implementation SimpleArenaBackground

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->mInternalScale = 0x3f800000;
            r0 = [CCShaderCache sharedShaderCache];
            r0 = [r0 programForKey:@"ShaderPosition_uColor"];
            r19->mColorShader = r0;
            *(int32_t *)(int64_t *)&r19->mColorLocation = glGetUniformLocation([r0 program], "u_color");
    }
    r0 = r19;
    return r0;
}

-(void)onCameraChanged:(struct CGPoint)arg2 scale:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    *(int32_t *)(int64_t *)&r0->mInternalScale = s2;
    r8 = 0x447a0000;
    asm { fcvtzs     w8, s2 };
    r9 = 0x100b9b000;
    d2 = *(r9 + 0x58);
    asm { fcvtzs     w9, d0 };
    asm { scvtf      d0, w9 };
    asm { fcvtzs     w9, d1 };
    asm { scvtf      d1, w8 };
    [r0 setPosition:r2];
    return;
}

-(bool)darkMode {
    r0 = *(int8_t *)(int64_t *)&self->_darkMode;
    return r0;
}

-(void)draw {
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x20;
    r19 = self;
    [[CCDirector sharedDirector] winSize];
    s2 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(mInternalScale)));
    s11 = s2 * 0x42480000;
    s12 = s2 * 0xffffffffc2480000;
    asm { fcvt       d10, s12 };
    asm { fcvt       d13, s11 };
    d9 = d0 + d13;
    d8 = d1 + d13;
    r9 = *(int32_t *)dword_1011cc1a0 >> 0x18;
    asm { scvtf      s0, w10 };
    s1 = 0x437f0000;
    asm { fdiv       s4, s0, s1 };
    asm { ubfx       w10, w8, #0x8, #0x8 };
    asm { scvtf      s0, w10 };
    asm { fdiv       s5, s0, s1 };
    asm { ubfx       w8, w8, #0x10, #0x8 };
    asm { scvtf      s0, w8 };
    asm { fdiv       s6, s0, s1 };
    asm { scvtf      s0, w9 };
    asm { fdiv       s7, s0, s1 };
    sub_1002a2234();
    s0 = *(int32_t *)(r19 + r20);
    asm { fcvt       d0, s0 };
    if (d0 > *0x100b9b5c0) {
            r8 = 0x100b9b000;
            r22 = &var_80;
            asm { fdiv       d0, d0, d13 };
            asm { frinta     d0, d0 };
            asm { fcvtzu     w8, d0 };
            asm { fdiv       d0, d0, d13 };
            asm { frinta     d0, d0 };
            asm { fcvtzu     w9, d0 };
            r20 = r8 + r9 << 0x1;
            r21 = r31 - zero_extend_64(r8 + r9 << 0x2) * 0x4;
            r8 = 0x0;
            if (d9 > d10) {
                    r8 = 0x0;
                    asm { fcvt       s0, d8 };
                    do {
                            *(int32_t *)(r21 + r8 * 0x4) = s1;
                            *(int32_t *)(r21 + (r8 + 0x1) * 0x4) = s12;
                            r9 = r8 + 0x3;
                            *(int32_t *)(r21 + (r8 + 0x2) * 0x4) = s1;
                            r8 = r8 + 0x4;
                            *(int32_t *)(r21 + r9 * 0x4) = s0;
                            s1 = s11 + s1;
                            asm { fcvt       d2, s1 };
                    } while (d9 > d2);
            }
            if (d8 > d10) {
                    asm { fcvt       s0, d9 };
                    do {
                            *(int32_t *)(r21 + r8 * 0x4) = s12;
                            *(int32_t *)(r21 + (r8 | 0x1) * 0x4) = s1;
                            r9 = r8 | 0x3;
                            *(int32_t *)(r21 + (r8 | 0x2) * 0x4) = s0;
                            r8 = r8 + 0x4;
                            *(int32_t *)(r21 + r9 * 0x4) = s1;
                            s1 = s11 + s1;
                            asm { fcvt       d2, s1 };
                    } while (d8 > d2);
            }
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mColorShader));
            [*(r19 + r23) use];
            [*(r19 + r23) setUniformsForBuiltins];
            [*(r19 + r23) setUniformLocation:*(int32_t *)(int64_t *)&r19->mColorLocation with4fv:0x1011cc1b0 count:0x1];
            sub_10031a6f0(0x1);
            glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, r21);
            glDrawArrays(0x1, 0x0, r20);
            *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    }
    var_68 = **___stack_chk_guard;
    var_78 = r19;
    [[r29 - 0x78 super] draw];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDarkMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_darkMode = arg2;
    return;
}

@end