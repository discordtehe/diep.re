@implementation OptimizedArenaBackground

-(void)listenBackToForeground {
    [self createShader];
    return;
}

-(void)createShader {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffd0 - 0x2090;
    r19 = self;
    r0 = objc_alloc();
    r0 = [r0 initWithVertexShaderByteArray:"                                                                                                                   \n#ifdef GL_ES                                                                                                        \nprecision highp float; …" fragmentShaderByteArray:"                                                   \n#ifdef GL_ES                                        \nprecision mediump float;                            \n#endif                                              \n                                             …"];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mGridBackgroundShader));
    *(r19 + r21) = r0;
    [r0 addAttribute:@"a_position" index:0x0];
    [*(r19 + r21) link];
    [*(r19 + r21) updateUniforms];
    *(int32_t *)(int64_t *)&r19->mScaleLocation = [*(r19 + r21) uniformLocationForName:@"scale"];
    *(int32_t *)(int64_t *)&r19->mOffsetLocation = [*(r19 + r21) uniformLocationForName:@"offset"];
    r8 = 0x0;
    *(int32_t *)(int64_t *)&r19->mColorLocation = [*(r19 + r21) uniformLocationForName:@"color"];
    asm { dup        v1.4s, w10 };
    r10 = &stack[-186];
    asm { dup        v4.4s, w11 };
    do {
            v6 = 0x4;
            asm { scvtf      v7.4s, v0.4s };
            asm { st4        {v2.4s, v3.4s, v4.4s, v5.4s}, [x11] };
            v0 = v0 + v6;
            r8 = r8 + 0x40;
    } while (r8 != 0xc80);
    r8 = &stack[-186] + 0xc80;
    r9 = 0xffffffffffffec00;
    asm { dup        v1.4s, w10 };
    asm { dup        v5.4s, w10 };
    do {
            v6 = 0x4;
            asm { scvtf      v7.4s, v0.4s };
            asm { st4        {v2.4s, v3.4s, v4.4s, v5.4s}, [x11] };
            v0 = v0 + v6;
            r9 = r9 + 0x40;
    } while (r9 != 0x0);
    var_28 = **___stack_chk_guard;
    glGenBuffers(0x1, (int64_t *)&r19->mVBO);
    glBindBuffer(0x8892, *(int32_t *)(int64_t *)&r19->mVBO);
    glBufferData(0x8892, 0x2080, &stack[-186], 0x88e4);
    sub_10031a6f0(0x1);
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, 0x0);
    glBindBuffer(0x8892, 0x0);
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

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
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mInternalPosition));
            *(int128_t *)(r19 + r8) = 0x0;
            *(int128_t *)(0x8 + r19 + r8) = 0x0;
            [r19 createShader];
    }
    r0 = r19;
    return r0;
}

-(void)onCameraChanged:(struct CGPoint)arg2 scale:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
    *(int32_t *)(int64_t *)&self->mInternalScale = s2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mInternalPosition));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(bool)darkMode {
    r0 = *(int8_t *)(int64_t *)&self->_darkMode;
    return r0;
}

-(void)dealloc {
    glDeleteBuffers(0x1, (int64_t *)&self->mVBO);
    glBindBuffer(0x8892, 0x0);
    [[&var_20 super] dealloc];
    return;
}

-(void)draw {
    r31 = r31 - 0x80;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = [self darkMode];
    if (r0 != 0x0) {
            glClearColor(glLineWidth(r0), @selector(darkMode), r2, r3);
    }
    else {
            glClearColor(glLineWidth(r0), @selector(darkMode), r2, r3);
    }
    glClear(0x4000);
    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(mGridBackgroundShader))) use];
    glBindBuffer(0x8892, *(int32_t *)(int64_t *)&r19->mVBO);
    sub_10031a6f0(0x1);
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, 0x0);
    [*(r19 + r23) setUniformsForBuiltins];
    r0 = *(r19 + r23);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mInternalScale));
    r1 = @selector(setUniformLocation:withF1:);
    r0 = objc_msgSend(r0, r1);
    r25 = (int64_t *)&r19->mInternalPosition;
    asm { fcvt       d9, s10 };
    r0 = fmod(r0, r1);
    asm { fcvt       d11, s1 };
    asm { fcvt       s10, d0 };
    fmod(r0, r1);
    asm { fcvt       s1, d0 };
    [r21 setUniformLocation:r22 withF1:r3 f2:r4];
    objc_msgSend(*(r19 + r23), r20);
    glDrawArrays(0x1, 0x0, 0x410);
    glBindBuffer(0x8892, 0x0);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    [[&var_70 super] draw];
    return;
}

-(void)setDarkMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_darkMode = arg2;
    return;
}

@end