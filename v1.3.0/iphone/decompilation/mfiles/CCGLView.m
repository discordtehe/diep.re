@implementation CCGLView

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

-(void)dealloc {
    [self->_renderer release];
    [[&var_20 super] dealloc];
    return;
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
    r0 = [[CCES2Renderer alloc] initWithDepthFormat:*(int32_t *)(int64_t *)&r19->_depthFormat withPixelFormat:[r19 convertPixelFormat:*(r19 + r23)] withSharegroup:arg2 withMultiSampling:*(int8_t *)(int64_t *)&r19->_multiSampling withNumberOfSamples:*(int32_t *)(int64_t *)&r19->_requestedSamples];
    r19->_renderer = r0;
    if (r0 != 0x0) {
            r19->_context = [r0 context];
            *(int8_t *)(int64_t *)&r19->_discardFramebufferSupported = [[CCConfiguration sharedConfiguration] supportsDiscardFramebuffer];
            r0 = 0x1;
    }
    return r0;
}

-(void)layoutSubviews {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_renderer));
    r20 = *(self + r21);
    r2 = [self layer];
    [r20 resizeFromLayer:r2];
    [*(self + r21) backingSize];
    self->_size = d0;
    *((int64_t *)&self->_size + 0x8) = d1;
    [[CCDirector sharedDirector] reshapeProjection:r2];
    return;
}

-(void)lockOpenGLContext {
    return;
}

-(void)unlockOpenGLContext {
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

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self->_touchDelegate;
    if (r0 != 0x0) {
            [r0 touchesBegan:r2 withEvent:r3];
    }
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self->_touchDelegate;
    if (r0 != 0x0) {
            [r0 touchesMoved:r2 withEvent:r3];
    }
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self->_touchDelegate;
    if (r0 != 0x0) {
            [r0 touchesEnded:r2 withEvent:r3];
    }
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self->_touchDelegate;
    if (r0 != 0x0) {
            [r0 touchesCancelled:r2 withEvent:r3];
    }
    return;
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

@end