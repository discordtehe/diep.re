@implementation ShaderArenaBackground

-(void)createShader {
    r0 = objc_alloc();
    r0 = [r0 initWithVertexShaderByteArray:"                                               \n#ifdef GL_ES\t\t\t\t\t\t\t        \nprecision highp float;                          \n#endif                                          \n                                                \nattribute vec4 a_position;       …" fragmentShaderByteArray:"                                               \n#ifdef GL_ES                                    \nprecision highp float;                          \n#endif                                          \n                                                \nuniform floa…"];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mGridBackgroundShader));
    *(self + r21) = r0;
    [r0 addAttribute:@"a_position" index:0x0];
    [*(self + r21) link];
    [*(self + r21) updateUniforms];
    *(int32_t *)(int64_t *)&self->mZoomLocation = glGetUniformLocation([*(self + r21) program], "zoom");
    *(int32_t *)(int64_t *)&self->mOffsetLocation = glGetUniformLocation([*(self + r21) program], "offset");
    *(int32_t *)(int64_t *)&self->mTileSizeLocation = glGetUniformLocation([*(self + r21) program], "tileSize");
    *(int32_t *)(int64_t *)&self->mColorMultiplyLocation = glGetUniformLocation([*(self + r21) program], "colorMult");
    *(int32_t *)(int64_t *)&self->mDarkLocation = glGetUniformLocation([*(self + r21) program], "dark");
    return;
}

-(void)listenBackToForeground {
    [self createShader];
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
    [[&var_10 super] dealloc];
    return;
}

-(void)draw {
    r31 = r31 - 0xc0;
    var_70 = d15;
    stack[-120] = d14;
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
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[CCDirector sharedDirector] winSize];
    v9 = v1;
    r0 = [UIScreen mainScreen];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scale];
            asm { fcvt       s0, d0 };
            asm { fcvt       d10, s0 };
    }
    else {
            d10 = 0x3ff0000000000000;
    }
    r21 = @selector(respondsToSelector:);
    asm { fcvt       s13, d8 };
    asm { fcvt       s14, d9 };
    [r20 bounds];
    v8 = v3;
    if (objc_msgSend(r20, r21) != 0x0) {
            [r20 nativeBounds];
    }
    var_78 = **___stack_chk_guard;
    asm { fcvt       s0, d3 };
    asm { fdiv       s10, s0, s14 };
    s8 = *(int32_t *)(int64_t *)&r19->mInternalScale * 0x42480000;
    asm { fcvt       s0, d0 };
    asm { fcvt       s0, d1 };
    asm { fdiv       s0, s0, s1 };
    [r19 darkMode];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mGridBackgroundShader));
    [*(r19 + r24) use];
    [*(r19 + r24) setUniformsForBuiltins];
    r0 = *(r19 + r24);
    r0 = [r0 setUniformLocation:*(int32_t *)(int64_t *)&r19->mZoomLocation withF1:r3];
    fmodf(fmodf(r0, @selector(setUniformLocation:withF1:)), @selector(setUniformLocation:withF1:));
    [r22 setUniformLocation:r23 withF1:r3 f2:r4];
    [*(r19 + r24) setUniformLocation:*(int32_t *)(int64_t *)&r19->mTileSizeLocation withF1:r3];
    [*(r19 + r24) setUniformLocation:*(int32_t *)(int64_t *)&r19->mColorMultiplyLocation withF1:r3];
    [*(r19 + r24) setUniformLocation:*(int32_t *)(int64_t *)&r19->mDarkLocation withI1:r20];
    sub_10031a6f0(0x1);
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, &var_98);
    glDrawArrays(0x5, 0x0, 0x4);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    [[&var_A8 super] draw];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDarkMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_darkMode = arg2;
    return;
}

@end