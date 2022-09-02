@implementation FNFDefaultGLRenderer

-(bool)shouldRenderWhilePlaybackPaused {
    return 0x0;
}

-(bool)setupGLState {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int32_t *)(int64_t *)&self->_backingWidth = 0x0;
    *(int32_t *)(int64_t *)&self->_backingHeight = 0x0;
    self->_rotation = 0x0;
    self->_colorConversion = 0x0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_glProgram));
    if (*(self + r20) == 0x0) {
            r0 = [r19 _loadShaders];
            if (r0 != 0x0) {
                    r0 = [r19 _setupBuffers];
                    if (r0 != 0x0) {
                            if (*qword_1011dd538 != -0x1) {
                                    dispatch_once_f(0x1011dd538, 0x1011c6790, 0x100a3d91c);
                            }
                            [*(r19 + r20) use];
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [r19 _setupBuffers];
            if (r0 != 0x0) {
                    if (*qword_1011dd538 != -0x1) {
                            dispatch_once_f(0x1011dd538, 0x1011c6790, 0x100a3d91c);
                    }
                    [*(r19 + r20) use];
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)processPixelBuffer:(struct __CVBuffer *)arg2 {
    return;
}

-(bool)_setupBuffers {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r0;
    r19 = (int64_t *)&r0->_vertexArrayObject;
    if (*(int32_t *)r19 == 0x0) {
            if (*qword_1011dd7f8 != -0x1) {
                    dispatch_once_f(0x1011dd7f8, 0x1011c6bb0, 0x100a3d91c);
            }
            r0 = qword_1011dd800(0x1, r19);
    }
    r20 = (int64_t *)&r20->_vertexBuffer;
    if (*(int32_t *)r20 == 0x0) {
            if (*qword_1011dd7d8 != -0x1) {
                    dispatch_once_f(0x1011dd7d8, 0x1011c6b80, 0x100a3d91c);
            }
            r0 = qword_1011dd7e0(0x1, r20);
    }
    if (*(int32_t *)r19 != 0x0) {
            if (*(int32_t *)r20 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)_configureVertexAttributes {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100a3f008(*(int32_t *)(int64_t *)&self->_vertexBuffer);
    if (*0x1011dd748 != -0x1) {
            dispatch_once_f(0x1011dd748, 0x1011c6aa8, 0x100a3d91c);
    }
    (*0x1011dd750)(0x0);
    sub_100a3eed4(0x0, 0x0);
    if (*0x1011dd748 != -0x1) {
            dispatch_once_f(0x1011dd748, 0x1011c6aa8, 0x100a3d91c);
    }
    (*0x1011dd750)(0x1);
    sub_100a3eed4(0x1, 0x8);
    sub_100a3f008(0x0);
    return;
}

-(void)restoreGLState {
    return;
}

-(void)invalidate {
    return;
}

-(bool)_updateVertexArrayWithPresentationRect:(struct CGSize)arg2 videoGravity:(void *)arg3 layerBounds:(struct CGRect)arg4 transform:(struct CGAffineTransform)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r31 = r31 - 0x120;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r3;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v8 = v1;
    v9 = v0;
    r19 = self;
    r0 = [r2 retain];
    r20 = r0;
    if (**_AVLayerVideoGravityResizeAspect != r0) {
            s14 = 0x3ff0000000000000;
            if (**_AVLayerVideoGravityResizeAspectFill == r20) {
                    CGRectApplyAffineTransform(&var_110, r1);
                    asm { fdiv       d0, d9, d2 };
                    asm { fdiv       d1, d8, d3 };
                    if (d1 > d0) {
                            asm { fdiv       d0, d1, d0 };
                            asm { fcvt       s0, d0 };
                    }
                    else {
                            asm { fdiv       d1, d0, d1 };
                            asm { fcvt       s14, d1 };
                    }
            }
    }
    else {
            v3 = v10;
            r0 = CGRectApplyAffineTransform(&var_E0, r1);
            AVMakeRectWithAspectRatioInsideRect(r0, r1);
            asm { fdiv       d0, d2, d10 };
            asm { fdiv       d1, d3, d11 };
            asm { fcvt       s14, d0 };
            asm { fcvt       s0, d1 };
    }
    sub_100a3f008(*(int32_t *)(int64_t *)&r19->_vertexBuffer);
    if (*qword_1011dd7c8 != -0x1) {
            dispatch_once_f(0x1011dd7c8, 0x1011c6b68, 0x100a3d91c);
    }
    var_68 = **___stack_chk_guard;
    qword_1011dd7d0(0x8892, 0x40, &var_A8, 0x88e4);
    sub_100a3f008(0x0);
    [r19 _configureVertexAttributes];
    [r20 release];
    if (**___stack_chk_guard == var_68) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)drawFrame:(bool)arg2 presentationRect:(struct CGSize)arg3 backingWidth:(int)arg4 backingHeight:(int)arg5 frameBuffer:(unsigned int)arg6 videoGravity:(void *)arg7 rotation:(double)arg8 layerBounds:(struct CGRect)arg9 transform:(struct CGAffineTransform)arg10 colorConversion:(long long)arg11 {
    r5 = arg5;
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xd0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r21 = r7;
    v8 = v6;
    v9 = v5;
    v10 = v4;
    v11 = v3;
    r23 = r4;
    r24 = r3;
    v12 = v1;
    v13 = v0;
    r22 = arg2;
    r20 = self;
    r19 = [r6 retain];
    r25 = *(int32_t *)(int64_t *)&r20->_vertexArrayObject;
    if (*0x1011dd7e8 != -0x1) {
            dispatch_once_f(0x1011dd7e8, 0x1011c6b98, 0x100a3d91c);
    }
    (*0x1011dd7f0)(r25);
    sub_100a3f008(*(int32_t *)(int64_t *)&r20->_vertexBuffer);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_backingWidth));
    if (*(int32_t *)(r20 + r25) != r24 || *(int32_t *)(int64_t *)&r20->_backingHeight != r23) {
            if (*qword_1011dd728 != -0x1) {
                    dispatch_once_f(0x1011dd728, 0x1011c6a78, 0x100a3d91c);
            }
            qword_1011dd730(0x0, 0x0, r24, r23);
            *(int32_t *)(r20 + r25) = r24;
            *(int32_t *)(int64_t *)&r20->_backingHeight = r23;
    }
    r23 = *(r29 + 0x10);
    if (*qword_1011dd548 != -0x1) {
            dispatch_once_f(0x1011dd548, 0x1011c67a8, 0x100a3d91c);
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_rotation));
    if (*(r20 + r28) != d14) {
            r24 = *(int32_t *)((int64_t *)&r20->_uniforms + 0x8);
            asm { fcvt       s15, d14 };
            if (*qword_1011dd798 != -0x1) {
                    dispatch_once_f(0x1011dd798, 0x1011c6b20, 0x100a3d91c);
            }
            qword_1011dd7a0(r24);
            *(r20 + r28) = d14;
    }
    r0 = [FNFColorConversion matrix3x3ForType:r23];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_colorConversion));
    if (*(r20 + r28) != r0) {
            r23 = r0;
            r24 = *(int32_t *)((int64_t *)&r20->_uniforms + 0xc);
            if (*qword_1011dd718 != -0x1) {
                    dispatch_once_f(0x1011dd718, 0x1011c6a60, 0x100a3d91c);
            }
            qword_1011dd720(r24, 0x1, 0x0, r23);
            *(r20 + r28) = r23;
    }
    if (r22 != 0x0 && ([r20 _updateVertexArrayWithPresentationRect:r19 videoGravity:&var_D0 layerBounds:r4 transform:r5] & 0x1) == 0x0) {
            if (*0x1011dd7e8 != -0x1) {
                    dispatch_once_f(0x1011dd7e8, 0x1011c6b98, 0x100a3d91c);
            }
            (*0x1011dd7f0)(0x0);
            r20 = 0x0;
    }
    else {
            if (*qword_1011dd7a8 != -0x1) {
                    dispatch_once_f(0x1011dd7a8, 0x1011c6b38, 0x100a3d91c);
            }
            qword_1011dd7b0(0x5, 0x0, 0x4);
            if (*0x1011dd7e8 != -0x1) {
                    dispatch_once_f(0x1011dd7e8, 0x1011c6b98, 0x100a3d91c);
            }
            (*0x1011dd7f0)(0x0);
            r20 = 0x1;
    }
    sub_100a3f008(0x0);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_glProgram, 0x0);
    return;
}

-(bool)_loadShaders {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_glProgram));
    if (*(r0 + r23) == 0x0) goto loc_100b40870;

loc_100b40868:
    r20 = 0x1;
    goto loc_100b40ae8;

loc_100b40ae8:
    r0 = r20;
    return r0;

loc_100b40870:
    r19 = r0;
    r0 = [FNFGLProgram alloc];
    r0 = [r0 initWithVertexShader:"attribute vec4 position; attribute vec2 texCoord; uniform float preferredRotation; varying vec2 texCoordVarying; void main() { mat4 rotationMatrix = mat4( cos(preferredRotation), -sin(preferredRotation), 0.0, 0.0, sin(preferredRotation), cos(preferredRotat…" fragmentShader:"varying highp vec2 texCoordVarying; precision mediump float; uniform sampler2D SamplerY; uniform sampler2D SamplerUV; uniform mat3 colorConversionMatrix; void main() { mediump vec3 yuv; lowp vec3 rgb; yuv.x = (texture2D(SamplerY, texCoordVarying).r - (16.0…"];
    r8 = *(r19 + r23);
    *(r19 + r23) = r0;
    [r8 release];
    if (([*(r19 + r23) initialized] & 0x1) == 0x0) goto loc_100b40a08;

loc_100b408c8:
    r21 = [*(r19 + r23) addAttribute:@"position"];
    [*(r19 + r23) addAttribute:@"texCoord"];
    r0 = *(r19 + r23);
    if (r21 == 0x0) {
            asm { ccmp       w8, #0x1, #0x0, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100b40adc;

loc_100b40910:
    if ([r0 link] == 0x0 || ([*(r19 + r23) validate] & 0x1) == 0x0) goto loc_100b40a80;

loc_100b40934:
    r0 = *(r19 + r23);
    r0 = [r0 uniformIndex:"SamplerY"];
    r21 = (int64_t *)&r19->_uniforms;
    *(int32_t *)r21 = r0;
    *(int32_t *)(r21 + 0x4) = [*(r19 + r23) uniformIndex:"SamplerUV"];
    *(int32_t *)(r21 + 0x8) = [*(r19 + r23) uniformIndex:"preferredRotation"];
    *(int32_t *)(r21 + 0xc) = [*(r19 + r23) uniformIndex:"colorConversionMatrix"];
    [*(r19 + r23) use];
    r19 = *(int32_t *)r21;
    if (*0x1011dd708 != -0x1) {
            dispatch_once_f(0x1011dd708, 0x1011c6a48, 0x100a3d91c);
    }
    (*0x1011dd710)(r19, 0x0);
    r19 = *(int32_t *)(r21 + 0x4);
    if (*0x1011dd708 != -0x1) {
            dispatch_once_f(0x1011dd708, 0x1011c6a48, 0x100a3d91c);
    }
    r20 = 0x1;
    (*0x1011dd710)(r19, 0x1);
    goto loc_100b40ae8;

loc_100b40a80:
    r21 = [[*(r19 + r23) programLog] retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFDefaultGLRenderer.mm" lineNumber:0x12d format:@"Failed to link program: %@"];
    goto loc_100b40ad0;

loc_100b40ad0:
    [r21 release];
    r0 = *(r19 + r23);
    goto loc_100b40adc;

loc_100b40adc:
    *(r19 + r23) = 0x0;
    [r0 release];
    r20 = 0x0;
    goto loc_100b40ae8;

loc_100b40a08:
    r21 = [[*(r19 + r23) vertexShaderLog] retain];
    r22 = [[*(r19 + r23) fragmentShaderLog] retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFDefaultGLRenderer.mm" lineNumber:0x11d format:@"Failed to compile shaders: vertex[%@] fragment[%@]"];
    [r22 release];
    goto loc_100b40ad0;
}

@end