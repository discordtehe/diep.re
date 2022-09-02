@implementation CCES2Renderer

-(struct CGSize)backingSize {
    r0 = self;
    asm { scvtf      d0, w8 };
    asm { scvtf      d1, w9 };
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:@"<%@ = %p | size = %ix%i>"];
    return r0;
}

-(void *)initWithDepthFormat:(unsigned int)arg2 withPixelFormat:(unsigned int)arg3 withSharegroup:(void *)arg4 withMultiSampling:(bool)arg5 withNumberOfSamples:(unsigned int)arg6 {
    r31 = r31 - 0x70;
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
    r20 = arg6;
    r21 = arg5;
    r24 = arg4;
    r22 = arg3;
    r23 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [EAGLContext alloc];
            if (r24 != 0x0) {
                    r0 = [r0 initWithAPI:0x2 sharegroup:r24];
            }
            else {
                    r0 = [r0 initWithAPI:0x2];
            }
            r2 = r0;
            *(r19 + 0x38) = r0;
            if (r0 != 0x0 && ([EAGLContext setCurrentContext:r2] & 0x1) != 0x0) {
                    *(int128_t *)(r19 + 0x18) = r23;
                    *(int128_t *)(r19 + 0x1c) = r22;
                    *(int8_t *)(r19 + 0x14) = r21;
                    glGenFramebuffers(0x1, r19 + 0x20);
                    glGenRenderbuffers(0x1, r19 + 0x24);
                    glBindFramebuffer(0x8d40, *(int32_t *)(r19 + 0x20));
                    glBindRenderbuffer(0x8d41, *(int32_t *)(r19 + 0x24));
                    glFramebufferRenderbuffer(0x8d40, 0x8ce0, 0x8d41, *(int32_t *)(r19 + 0x24));
                    if (*(int8_t *)(r19 + 0x14) != 0x0) {
                            glGetIntegerv(0x8d57, &var_54);
                            r8 = var_54;
                            if (r8 < r20) {
                                    if (!CPU_FLAGS & B) {
                                            r8 = r20;
                                    }
                                    else {
                                            r8 = r8;
                                    }
                            }
                            *(int32_t *)(r19 + 0x10) = r8;
                            glGenFramebuffers(0x1, r19 + 0x2c);
                            glBindFramebuffer(0x8d40, *(int32_t *)(r19 + 0x2c));
                    }
            }
            else {
                    [r19 release];
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(bool)resizeFromLayer:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    glBindRenderbuffer(0x8d41, *(int32_t *)(self + 0x24));
    [*(r19 + 0x38) renderbufferStorage:0x8d41 fromDrawable:arg2];
    glGetRenderbufferParameteriv(0x8d41, 0x8d42, r19 + 0x8);
    glGetRenderbufferParameteriv(0x8d41, 0x8d43, r19 + 0xc);
    if (*(int8_t *)(r19 + 0x14) != 0x0) {
            r20 = r19 + 0x30;
            if (*(int32_t *)r20 != 0x0) {
                    glDeleteRenderbuffers(0x1, r20);
                    *(int32_t *)r20 = 0x0;
            }
            glBindFramebuffer(0x8d40, *(int32_t *)(r19 + 0x2c));
            glGenRenderbuffers(0x1, r20);
            glBindRenderbuffer(0x8d41, *(int32_t *)(r19 + 0x30));
            glRenderbufferStorageMultisampleAPPLE();
            glFramebufferRenderbuffer(0x8d40, 0x8ce0, 0x8d41, *(int32_t *)(r19 + 0x30));
            if (glCheckFramebufferStatus(0x8d40) == 0x8cd5) {
                    glGetError();
                    if (*(int32_t *)(r19 + 0x18) != 0x0) {
                            r20 = r19 + 0x28;
                            r1 = *(int32_t *)r20;
                            if (r1 == 0x0) {
                                    glGenRenderbuffers(0x1, r20);
                                    r1 = *(int32_t *)r20;
                            }
                            glBindRenderbuffer(0x8d41, r1);
                            if (*(int8_t *)(r19 + 0x14) != 0x0) {
                                    glRenderbufferStorageMultisampleAPPLE();
                            }
                            else {
                                    glRenderbufferStorage(0x8d41, *(int32_t *)(r19 + 0x18), *(int128_t *)(r19 + 0x8), *(int128_t *)(r19 + 0xc));
                            }
                            glFramebufferRenderbuffer(0x8d40, 0x8d00, 0x8d41, *(int32_t *)(r19 + 0x28));
                            if (*(int32_t *)(r19 + 0x18) == 0x88f0) {
                                    glFramebufferRenderbuffer(0x8d40, 0x8d20, 0x8d41, *(int32_t *)r20);
                            }
                            glBindRenderbuffer(0x8d41, *(int32_t *)(r19 + 0x24));
                    }
                    glGetError();
                    r0 = glCheckFramebufferStatus(0x8d40);
                    if (r0 == 0x8cd5) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            glGetError();
            if (*(int32_t *)(r19 + 0x18) != 0x0) {
                    r20 = r19 + 0x28;
                    r1 = *(int32_t *)r20;
                    if (r1 == 0x0) {
                            glGenRenderbuffers(0x1, r20);
                            r1 = *(int32_t *)r20;
                    }
                    glBindRenderbuffer(0x8d41, r1);
                    if (*(int8_t *)(r19 + 0x14) != 0x0) {
                            glRenderbufferStorageMultisampleAPPLE();
                    }
                    else {
                            glRenderbufferStorage(0x8d41, *(int32_t *)(r19 + 0x18), *(int128_t *)(r19 + 0x8), *(int128_t *)(r19 + 0xc));
                    }
                    glFramebufferRenderbuffer(0x8d40, 0x8d00, 0x8d41, *(int32_t *)(r19 + 0x28));
                    if (*(int32_t *)(r19 + 0x18) == 0x88f0) {
                            glFramebufferRenderbuffer(0x8d40, 0x8d20, 0x8d41, *(int32_t *)r20);
                    }
                    glBindRenderbuffer(0x8d41, *(int32_t *)(r19 + 0x24));
            }
            glGetError();
            r0 = glCheckFramebufferStatus(0x8d40);
            if (r0 == 0x8cd5) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(unsigned int)colorRenderBuffer {
    r0 = *(int32_t *)(self + 0x24);
    return r0;
}

-(unsigned int)defaultFrameBuffer {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(unsigned int)msaaFrameBuffer {
    r0 = *(int32_t *)(self + 0x2c);
    return r0;
}

-(unsigned int)msaaColorBuffer {
    r0 = *(int32_t *)(self + 0x30);
    return r0;
}

-(void *)context {
    r0 = *(self + 0x38);
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = self + 0x20;
    if (*(int32_t *)r20 != 0x0) {
            glDeleteFramebuffers(0x1, r20);
            *(int32_t *)r20 = 0x0;
    }
    r20 = r19 + 0x24;
    if (*(int32_t *)r20 != 0x0) {
            glDeleteRenderbuffers(0x1, r20);
            *(int32_t *)r20 = 0x0;
    }
    r20 = r19 + 0x28;
    if (*(int32_t *)r20 != 0x0) {
            glDeleteRenderbuffers(0x1, r20);
            *(int32_t *)r20 = 0x0;
    }
    r20 = r19 + 0x30;
    if (*(int32_t *)r20 != 0x0) {
            glDeleteRenderbuffers(0x1, r20);
            *(int32_t *)r20 = 0x0;
    }
    r20 = r19 + 0x2c;
    if (*(int32_t *)r20 != 0x0) {
            glDeleteRenderbuffers(0x1, r20);
            *(int32_t *)r20 = 0x0;
    }
    r8 = [EAGLContext currentContext];
    r0 = *(r19 + 0x38);
    if (r8 == r0) {
            [EAGLContext setCurrentContext:0x0];
            r0 = *(r19 + 0x38);
    }
    [r0 release];
    *(r19 + 0x38) = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(unsigned int)defaultFramebuffer {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(unsigned int)colorRenderbuffer {
    r0 = *(int32_t *)(self + 0x24);
    return r0;
}

-(unsigned int)msaaColorbuffer {
    r0 = *(int32_t *)(self + 0x30);
    return r0;
}

-(unsigned int)msaaFramebuffer {
    r0 = *(int32_t *)(self + 0x2c);
    return r0;
}

@end