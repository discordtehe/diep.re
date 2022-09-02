@implementation CCGLView_MCPlatform

+(void *)layerClass {
    r0 = [CAEAGLLayer class];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2 pixelFormat:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 depthFormat:(unsigned int)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2 pixelFormat:r3 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:0x0 multiSampling:0x0 numberOfSamples:var_30];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)viewWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 depthFormat:(unsigned int)arg4 preserveBackbuffer:(bool)arg5 sharegroup:(void *)arg6 multiSampling:(bool)arg7 numberOfSamples:(unsigned int)arg8 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFrame:r2 pixelFormat:r3 depthFormat:r4 preserveBackbuffer:r5 sharegroup:r6 multiSampling:r7 numberOfSamples:var_50];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:**_kEAGLColorFormatRGB565 pixelFormat:0x0 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:0x0 multiSampling:0x0 numberOfSamples:stack[0]];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:r2 pixelFormat:0x0 depthFormat:0x0 preserveBackbuffer:0x0 sharegroup:0x0 multiSampling:0x0 numberOfSamples:stack[0]];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 pixelFormat:(void *)arg3 depthFormat:(unsigned int)arg4 preserveBackbuffer:(bool)arg5 sharegroup:(void *)arg6 multiSampling:(bool)arg7 numberOfSamples:(unsigned int)arg8 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
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
    r21 = r7;
    r23 = r6;
    r19 = r5;
    r20 = r4;
    r24 = r3;
    r25 = r2;
    r0 = [[&var_50 super] initWithFrame:r2];
    r22 = r0;
    if (r0 != 0x0) {
            r22->_pixelformat = r25;
            *(int32_t *)(int64_t *)&r22->_depthFormat = r24;
            *(int8_t *)(int64_t *)&r22->_multiSampling = r23;
            *(int32_t *)(int64_t *)&r22->_requestedSamples = r21;
            *(int8_t *)(int64_t *)&r22->_preserveBackbuffer = r20;
            if (([r22 setupSurfaceWithSharegroup:r19] & 0x1) == 0x0) {
                    [r22 release];
                    r22 = 0x0;
            }
    }
    r0 = r22;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 layer];
            r19->_pixelformat = **_kEAGLColorFormatRGB565;
            *(int32_t *)(int64_t *)&r19->_depthFormat = 0x0;
            *(int8_t *)(int64_t *)&r19->_multiSampling = 0x0;
            *(int32_t *)(int64_t *)&r19->_requestedSamples = 0x0;
            [r0 bounds];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
            *(r19 + r8) = d2;
            *(0x8 + r19 + r8) = d3;
            if (([r19 setupSurfaceWithSharegroup:0x0] & 0x1) == 0x0) {
                    [r19 release];
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(bool)setupSurfaceWithSharegroup:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self layer];
    [r0 setOpaque:0x1];
    r2 = *(int8_t *)(int64_t *)&r19->_preserveBackbuffer;
    r2 = [NSNumber numberWithBool:r2];
    r8 = *_kEAGLDrawablePropertyRetainedBacking;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_pixelformat));
    [r0 setDrawableProperties:[NSDictionary dictionaryWithObjectsAndKeys:r2]];
    r0 = [[CCES2Renderer_MCPlatform alloc] initWithDepthFormat:*(int32_t *)(int64_t *)&r19->_depthFormat withPixelFormat:[r19 convertPixelFormat:*(r19 + r23)] withSharegroup:arg2 withMultiSampling:*(int8_t *)(int64_t *)&r19->_multiSampling withNumberOfSamples:*(int32_t *)(int64_t *)&r19->_requestedSamples];
    r19->_renderer = r0;
    if (r0 != 0x0) {
            r19->_context = [r0 context];
            *(int8_t *)(int64_t *)&r19->_discardFramebufferSupported = sub_100432a8c(@"GL_EXT_discard_framebuffer");
            r0 = 0x1;
    }
    return r0;
}

-(void)dealloc {
    [self->_renderer release];
    [[&var_20 super] dealloc];
    return;
}

-(void)layoutSubviews {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_renderer));
    [*(self + r21) resizeFromLayer:[self layer]];
    [*(self + r21) backingSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    r8 = self + r8;
    asm { fcvtzs     w1, d0 };
    asm { fcvtzs     w2, d1 };
    *(int128_t *)r8 = d0;
    *(int128_t *)(r8 + 0x8) = d1;
    sub_100433670(0x1011e34d8, r1, r2);
    return;
}

-(void)lockOpenGLContext {
    return;
}

-(void)unlockOpenGLContext {
    return;
}

-(unsigned int)convertPixelFormat:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 isEqualToString:@"EAGLColorFormat565"];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x8058;
            }
            else {
                    r0 = 0x8d62;
            }
    }
    return r0;
}

-(struct CGPoint)convertPointFromViewToSurface:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = self;
    r0 = [self bounds];
    asm { fdiv       d0, d0, d2 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    asm { fdiv       d1, d1, d3 };
    return r0;
}

-(struct CGRect)convertRectFromViewToSurface:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = self;
    r0 = [self bounds];
    asm { fdiv       d0, d0, d2 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    asm { fdiv       d1, d1, d3 };
    asm { fdiv       d2, d9, d2 };
    asm { fdiv       d3, d8, d3 };
    return r0;
}

-(struct CGSize)surfaceSize {
    r0 = self;
    return r0;
}

-(void *)pixelFormat {
    r0 = self->_pixelformat;
    return r0;
}

-(unsigned int)depthFormat {
    r0 = *(int32_t *)(int64_t *)&self->_depthFormat;
    return r0;
}

-(void *)touchDelegate {
    r0 = self->_touchDelegate;
    return r0;
}

-(void)setTouchDelegate:(void *)arg2 {
    self->_touchDelegate = arg2;
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(bool)multiSampling {
    r0 = *(int8_t *)(int64_t *)&self->_multiSampling;
    return r0;
}

-(void)setMultiSampling:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_multiSampling = arg2;
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x180;
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
    var_158 = self;
    var_108 = 0x0;
    var_100 = 0x0;
    var_F8 = 0x0;
    var_140 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r1;
    var_160 = arg2;
    r0 = objc_msgSend(arg2, r1);
    r23 = r0;
    if (r0 == 0x0) goto loc_100433af8;

loc_1004339b0:
    var_170 = &var_110 + 0x8;
    r22 = *var_140;
    goto loc_1004339c4;

loc_1004339c4:
    r19 = 0x0;
    goto loc_1004339d0;

loc_1004339d0:
    if (*var_140 != r22) {
            objc_enumerationMutation(var_160);
    }
    r25 = *(var_148 + r19 * 0x8);
    [r25 locationInView:r2];
    d2 = *0x1011bd648;
    asm { fcvt       s8, d0 };
    d0 = d1 * d2;
    asm { fcvt       s9, d0 };
    r9 = var_100;
    r8 = var_F8;
    if (r9 == r8) goto loc_100433a38;

loc_100433a24:
    *r9 = r25;
    *(int128_t *)(r9 + 0x8) = s8;
    *(int128_t *)(r9 + 0xc) = s9;
    var_100 = r9 + 0x10;
    goto loc_100433ad0;

loc_100433ad0:
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_1004339d0;

loc_100433adc:
    r0 = objc_msgSend(var_160, var_168);
    r23 = r0;
    if (r0 != 0x0) goto loc_1004339c4;

loc_100433af8:
    sub_10042d08c(sub_10042ec70(), &var_110);
    r0 = var_108;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100433a38:
    r26 = var_108;
    r27 = r9 - r26;
    r21 = SAR(r27, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_100433b54;

loc_100433a50:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_100433a8c;

loc_100433a74:
    if (r20 >> 0x3c != 0x0) goto loc_100433b60;

loc_100433a7c:
    r28 = operator new();
    goto loc_100433a90;

loc_100433a90:
    *(r28 + r21 * 0x10) = r25;
    r20 = r28 + r20 * 0x10;
    *(int128_t *)(0x8 + r28 + r21 * 0x10) = s8;
    *(int128_t *)(0xc + r28 + r21 * 0x10) = s9;
    r21 = 0x10 + r28 + r21 * 0x10;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_108 = r28;
    var_100 = r21;
    var_F8 = r20;
    if (r26 != 0x0) {
            operator delete(r26);
    }
    goto loc_100433ad0;

loc_100433b60:
    sub_1004350e4();
    return;

loc_100433a8c:
    r28 = 0x0;
    goto loc_100433a90;

loc_100433b54:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x180;
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
    var_158 = self;
    var_108 = 0x0;
    var_100 = 0x0;
    var_F8 = 0x0;
    var_140 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r1;
    var_160 = arg2;
    r0 = objc_msgSend(arg2, r1);
    r23 = r0;
    if (r0 == 0x0) goto loc_100433d64;

loc_100433c1c:
    var_170 = &var_110 + 0x8;
    r22 = *var_140;
    goto loc_100433c30;

loc_100433c30:
    r19 = 0x0;
    goto loc_100433c3c;

loc_100433c3c:
    if (*var_140 != r22) {
            objc_enumerationMutation(var_160);
    }
    r25 = *(var_148 + r19 * 0x8);
    [r25 locationInView:r2];
    d2 = *0x1011bd648;
    asm { fcvt       s8, d0 };
    d0 = d1 * d2;
    asm { fcvt       s9, d0 };
    r9 = var_100;
    r8 = var_F8;
    if (r9 == r8) goto loc_100433ca4;

loc_100433c90:
    *r9 = r25;
    *(int128_t *)(r9 + 0x8) = s8;
    *(int128_t *)(r9 + 0xc) = s9;
    var_100 = r9 + 0x10;
    goto loc_100433d3c;

loc_100433d3c:
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_100433c3c;

loc_100433d48:
    r0 = objc_msgSend(var_160, var_168);
    r23 = r0;
    if (r0 != 0x0) goto loc_100433c30;

loc_100433d64:
    sub_10042d08c(sub_10042ec70(), &var_110);
    r0 = var_108;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100433ca4:
    r26 = var_108;
    r27 = r9 - r26;
    r21 = SAR(r27, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_100433dc0;

loc_100433cbc:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_100433cf8;

loc_100433ce0:
    if (r20 >> 0x3c != 0x0) goto loc_100433dcc;

loc_100433ce8:
    r28 = operator new();
    goto loc_100433cfc;

loc_100433cfc:
    *(r28 + r21 * 0x10) = r25;
    r20 = r28 + r20 * 0x10;
    *(int128_t *)(0x8 + r28 + r21 * 0x10) = s8;
    *(int128_t *)(0xc + r28 + r21 * 0x10) = s9;
    r21 = 0x10 + r28 + r21 * 0x10;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_108 = r28;
    var_100 = r21;
    var_F8 = r20;
    if (r26 != 0x0) {
            operator delete(r26);
    }
    goto loc_100433d3c;

loc_100433dcc:
    sub_1004350e4();
    return;

loc_100433cf8:
    r28 = 0x0;
    goto loc_100433cfc;

loc_100433dc0:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x180;
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
    var_158 = self;
    var_108 = 0x0;
    var_100 = 0x0;
    var_F8 = 0x0;
    var_140 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r1;
    var_160 = arg2;
    r0 = objc_msgSend(arg2, r1);
    r23 = r0;
    if (r0 == 0x0) goto loc_100433fd0;

loc_100433e88:
    var_170 = &var_110 + 0x8;
    r22 = *var_140;
    goto loc_100433e9c;

loc_100433e9c:
    r19 = 0x0;
    goto loc_100433ea8;

loc_100433ea8:
    if (*var_140 != r22) {
            objc_enumerationMutation(var_160);
    }
    r25 = *(var_148 + r19 * 0x8);
    [r25 locationInView:r2];
    d2 = *0x1011bd648;
    asm { fcvt       s8, d0 };
    d0 = d1 * d2;
    asm { fcvt       s9, d0 };
    r9 = var_100;
    r8 = var_F8;
    if (r9 == r8) goto loc_100433f10;

loc_100433efc:
    *r9 = r25;
    *(int128_t *)(r9 + 0x8) = s8;
    *(int128_t *)(r9 + 0xc) = s9;
    var_100 = r9 + 0x10;
    goto loc_100433fa8;

loc_100433fa8:
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_100433ea8;

loc_100433fb4:
    r0 = objc_msgSend(var_160, var_168);
    r23 = r0;
    if (r0 != 0x0) goto loc_100433e9c;

loc_100433fd0:
    sub_10042d08c(sub_10042ec70(), &var_110);
    r0 = var_108;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100433f10:
    r26 = var_108;
    r27 = r9 - r26;
    r21 = SAR(r27, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_10043402c;

loc_100433f28:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_100433f64;

loc_100433f4c:
    if (r20 >> 0x3c != 0x0) goto loc_100434038;

loc_100433f54:
    r28 = operator new();
    goto loc_100433f68;

loc_100433f68:
    *(r28 + r21 * 0x10) = r25;
    r20 = r28 + r20 * 0x10;
    *(int128_t *)(0x8 + r28 + r21 * 0x10) = s8;
    *(int128_t *)(0xc + r28 + r21 * 0x10) = s9;
    r21 = 0x10 + r28 + r21 * 0x10;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_108 = r28;
    var_100 = r21;
    var_F8 = r20;
    if (r26 != 0x0) {
            operator delete(r26);
    }
    goto loc_100433fa8;

loc_100434038:
    sub_1004350e4();
    return;

loc_100433f64:
    r28 = 0x0;
    goto loc_100433f68;

loc_10043402c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x180;
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
    var_158 = self;
    var_108 = 0x0;
    var_100 = 0x0;
    var_F8 = 0x0;
    var_140 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r1;
    var_160 = arg2;
    r0 = objc_msgSend(arg2, r1);
    r23 = r0;
    if (r0 == 0x0) goto loc_10043423c;

loc_1004340f4:
    var_170 = &var_110 + 0x8;
    r22 = *var_140;
    goto loc_100434108;

loc_100434108:
    r19 = 0x0;
    goto loc_100434114;

loc_100434114:
    if (*var_140 != r22) {
            objc_enumerationMutation(var_160);
    }
    r25 = *(var_148 + r19 * 0x8);
    [r25 locationInView:r2];
    d2 = *0x1011bd648;
    asm { fcvt       s8, d0 };
    d0 = d1 * d2;
    asm { fcvt       s9, d0 };
    r9 = var_100;
    r8 = var_F8;
    if (r9 == r8) goto loc_10043417c;

loc_100434168:
    *r9 = r25;
    *(int128_t *)(r9 + 0x8) = s8;
    *(int128_t *)(r9 + 0xc) = s9;
    var_100 = r9 + 0x10;
    goto loc_100434214;

loc_100434214:
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_100434114;

loc_100434220:
    r0 = objc_msgSend(var_160, var_168);
    r23 = r0;
    if (r0 != 0x0) goto loc_100434108;

loc_10043423c:
    sub_10042d08c(sub_10042ec70(), &var_110);
    r0 = var_108;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10043417c:
    r26 = var_108;
    r27 = r9 - r26;
    r21 = SAR(r27, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_100434298;

loc_100434194:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1004341d0;

loc_1004341b8:
    if (r20 >> 0x3c != 0x0) goto loc_1004342a4;

loc_1004341c0:
    r28 = operator new();
    goto loc_1004341d4;

loc_1004341d4:
    *(r28 + r21 * 0x10) = r25;
    r20 = r28 + r20 * 0x10;
    *(int128_t *)(0x8 + r28 + r21 * 0x10) = s8;
    *(int128_t *)(0xc + r28 + r21 * 0x10) = s9;
    r21 = 0x10 + r28 + r21 * 0x10;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_108 = r28;
    var_100 = r21;
    var_F8 = r20;
    if (r26 != 0x0) {
            operator delete(r26);
    }
    goto loc_100434214;

loc_1004342a4:
    sub_1004350e4();
    return;

loc_1004341d0:
    r28 = 0x0;
    goto loc_1004341d4;

loc_100434298:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

-(void)swapBuffers {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_multiSampling));
    if (*(int8_t *)(self + r22) != 0x0) {
            glBindFramebuffer(0x8ca8, [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_renderer))) msaaFrameBuffer]);
            glBindFramebuffer(0x8ca9, [*(r19 + r23) defaultFrameBuffer]);
            glResolveMultisampleFramebufferAPPLE();
    }
    if (*(int8_t *)(int64_t *)&r19->_discardFramebufferSupported != 0x0) {
            r9 = *(int8_t *)(r19 + r22);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_depthFormat));
            r8 = *(int32_t *)(r19 + r8);
            if (r9 != 0x0) {
                    glDiscardFramebufferEXT();
                    glBindRenderbuffer(0x8d41, [r19->_renderer colorRenderBuffer]);
            }
            else {
                    if (r8 != 0x0) {
                            glDiscardFramebufferEXT();
                    }
            }
    }
    [r19->_context presentRenderbuffer:0x8d41];
    if (*(int8_t *)(r19 + r22) != 0x0) {
            glBindFramebuffer(0x8d40, [r19->_renderer msaaFrameBuffer]);
    }
    return;
}

@end