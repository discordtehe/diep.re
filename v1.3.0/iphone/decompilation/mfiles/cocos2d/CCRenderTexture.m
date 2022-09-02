@implementation CCRenderTexture

+(void *)renderTextureWithWidth:(int)arg2 height:(int)arg3 pixelFormat:(int)arg4 depthStencilFormat:(unsigned int)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithWidth:arg2 height:arg3 pixelFormat:arg4 depthStencilFormat:arg5];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)renderTextureWithWidth:(int)arg2 height:(int)arg3 pixelFormat:(int)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithWidth:arg2 height:arg3 pixelFormat:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)renderTextureWithWidth:(int)arg2 height:(int)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithWidth:arg2 height:arg3 pixelFormat:0x0 depthStencilFormat:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithWidth:(int)arg2 height:(int)arg3 {
    r0 = [self initWithWidth:arg2 height:arg3 pixelFormat:0x0];
    return r0;
}

-(void *)initWithWidth:(int)arg2 height:(int)arg3 pixelFormat:(int)arg4 {
    r0 = [self initWithWidth:arg2 height:arg3 pixelFormat:arg4 depthStencilFormat:0x0];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    glDeleteFramebuffers(0x1, (int64_t *)&self->_FBO);
    r1 = (int64_t *)&r19->_depthRenderBufffer;
    if (*(int32_t *)r1 != 0x0) {
            glDeleteRenderbuffers(0x1, r1);
    }
    [r19->_sprite release];
    [[&var_20 super] dealloc];
    return;
}

-(void)begin {
    sub_100357598(0x1701);
    sub_1003575dc();
    sub_100357598(0x1700);
    sub_1003575dc();
    r0 = [CCDirector sharedDirector];
    r2 = [r0 projection];
    [r0 setProjection:r2];
    [r19->_texture contentSizeInPixels];
    [r0 winSizeInPixels];
    asm { fdiv       d0, d0, d8 };
    asm { fcvt       s10, d0 };
    asm { fdiv       d0, d1, d9 };
    asm { fcvt       s11, d0 };
    asm { fcvtzs     w2, d8 };
    asm { fcvtzs     w3, d9 };
    glViewport(0x0, 0x0, r2, r3);
    asm { fdiv       s0, s4, s10 };
    asm { fdiv       s1, s5, s10 };
    asm { fdiv       s2, s4, s11 };
    asm { fdiv       s3, s5, s11 };
    sub_10035b8b0(&stack[-128]);
    sub_100357694(&stack[-128]);
    glGetIntegerv(0x8ca6, (int64_t *)&r19->_oldFBO);
    glBindFramebuffer(0x8d40, *(int32_t *)(int64_t *)&r19->_FBO);
    return;
}

-(void *)initWithWidth:(int)arg2 height:(int)arg3 pixelFormat:(int)arg4 depthStencilFormat:(unsigned int)arg5 {
    r31 = r31 - 0x80;
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
    r21 = arg5;
    r24 = arg4;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [[CCDirector sharedDirector] runningThread];
            [NSThread currentThread];
            r8 = 0x1011bc000;
            asm { scvtf      s0, w22 };
            asm { fcvtzs     w22, s0 };
            asm { scvtf      s0, w20 };
            asm { fcvtzs     w28, s0 };
            r20 = (int64_t *)&r19->_oldFBO;
            glGetIntegerv(0x8ca6, r20);
            r0 = [CCConfiguration sharedConfiguration];
            r0 = [r0 supportsNPOT];
            asm { sxtw       x25, w22 };
            if (r0 != 0x0) {
                    asm { sxtw       x23, w28 };
                    r22 = r25;
            }
            else {
                    r0 = sub_10031457c(r25);
                    r22 = r0;
                    asm { sxtw       x0, w28 };
                    r23 = sub_10031457c(r0);
            }
            asm { sxtw       x26, w8 };
            r0 = malloc(r26);
            bzero(r0, r26);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_pixelFormat));
            *(int32_t *)(r19 + r26) = r24;
            r0 = [CCTexture2D alloc];
            r3 = *(int32_t *)(r19 + r26);
            asm { scvtf      d0, w25 };
            asm { scvtf      d1, w28 };
            r0 = [r0 initWithData:r27 pixelFormat:r3 pixelsWide:r22 pixelsHigh:r23 contentSize:r6];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
            *(r19 + r25) = r0;
            free(r27);
            r0 = glGetIntegerv(0x8ca7, &var_64);
            glGenFramebuffers(0x1, (int64_t *)&r19->_FBO);
            glBindFramebuffer(0x8d40, *(int32_t *)(int64_t *)&r19->_FBO);
            glFramebufferTexture2D(0x8d40, 0x8ce0, 0xde1, [*(r19 + r25) name], 0x0);
            if (r21 != 0x0) {
                    r24 = (int64_t *)&r19->_depthRenderBufffer;
                    glGenRenderbuffers(0x1, r24);
                    glBindRenderbuffer(0x8d41, *(int32_t *)r24);
                    glRenderbufferStorage(0x8d41, r21, r22, r23);
                    glFramebufferRenderbuffer(0x8d40, 0x8d00, 0x8d41, *(int32_t *)r24);
                    if (r21 == 0x88f0) {
                            glFramebufferRenderbuffer(0x8d40, 0x8d20, 0x8d41, *(int32_t *)r24);
                    }
            }
            [*(r19 + r25) setAliasTexParameters];
            r2 = *(r19 + r25);
            r2 = [CCSprite spriteWithTexture:r2];
            [r19 setSprite:r2];
            [*(r19 + r25) release];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_sprite));
            [*(r19 + r21) setScaleY:r2];
            [*(r19 + r21) setBlendFunc:0x30300000001];
            [*(r19 + r21) setOpacityModifyRGB:0x1];
            glBindRenderbuffer(0x8d41, var_64);
            glBindFramebuffer(0x8d40, *(int32_t *)r20);
            *(int8_t *)(int64_t *)&r19->_autoDraw = 0x0;
            [r19 addChild:r2];
    }
    r0 = r19;
    return r0;
}

-(void)beginWithClear:(float)arg2 g:(float)arg3 b:(float)arg4 a:(float)arg5 {
    [self beginWithClear:0x0 g:0x4000 b:arg4 a:arg5 depth:r6 stencil:r7 flags:stack[0]];
    return;
}

-(void)beginWithClear:(float)arg2 g:(float)arg3 b:(float)arg4 a:(float)arg5 depth:(float)arg6 {
    [self beginWithClear:0x0 g:0x4100 b:arg4 a:arg5 depth:arg6 stencil:r7 flags:stack[0]];
    return;
}

-(void)beginWithClear:(float)arg2 g:(float)arg3 b:(float)arg4 a:(float)arg5 depth:(float)arg6 stencil:(int)arg7 flags:(unsigned int)arg8 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x70;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r20 = r2;
    v8 = v4;
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v0;
    r1 = @selector(begin);
    objc_msgSend(self, r1);
    if ((r19 & 0x4000) == 0x0) {
            if ((r19 & 0x100) == 0x0) {
                    if ((r19 & 0x400) != 0x0) {
                            r1 = &var_60;
                            glGetIntegerv(0xb91, r1);
                            glClearStencil(r20);
                    }
            }
            else {
                    r1 = &var_5C;
                    glClearDepthf(glGetFloatv(0xb73, r1));
                    if ((r19 & 0x400) != 0x0) {
                            r1 = &var_60;
                            glGetIntegerv(0xb91, r1);
                            glClearStencil(r20);
                    }
            }
    }
    else {
            r1 = &var_58;
            glClearColor(glGetFloatv(0xc22, r1), r1, r2, r3);
            if ((r19 & 0x100) != 0x0) {
                    r1 = &var_5C;
                    glClearDepthf(glGetFloatv(0xb73, r1));
                    if ((r19 & 0x400) != 0x0) {
                            r1 = &var_60;
                            glGetIntegerv(0xb91, r1);
                            glClearStencil(r20);
                    }
            }
            else {
                    if ((r19 & 0x400) != 0x0) {
                            r1 = &var_60;
                            glGetIntegerv(0xb91, r1);
                            glClearStencil(r20);
                    }
            }
    }
    r0 = glClear(r19);
    if ((r19 & 0x4000) == 0x0) {
            if ((r19 & 0x100) == 0x0) {
                    if ((r19 & 0x400) != 0x0) {
                            glClearStencil(var_60);
                    }
            }
            else {
                    glClearDepthf(r0);
                    if ((r19 & 0x400) != 0x0) {
                            glClearStencil(var_60);
                    }
            }
    }
    else {
            r0 = glClearColor(r0, r1, r2, r3);
            if ((r19 & 0x100) != 0x0) {
                    glClearDepthf(r0);
                    if ((r19 & 0x400) != 0x0) {
                            glClearStencil(var_60);
                    }
            }
            else {
                    if ((r19 & 0x400) != 0x0) {
                            glClearStencil(var_60);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)beginWithClear:(float)arg2 g:(float)arg3 b:(float)arg4 a:(float)arg5 depth:(float)arg6 stencil:(int)arg7 {
    [self beginWithClear:arg2 g:0x4500 b:arg4 a:arg5 depth:arg6 stencil:arg7 flags:stack[0]];
    return;
}

-(void)end {
    [CCDirector sharedDirector];
    glBindFramebuffer(0x8d40, *(int32_t *)(int64_t *)&self->_oldFBO);
    [r20 setViewport];
    loc_100357620(sub_100357598(0x1701), @selector(setViewport));
    loc_100357620(sub_100357598(0x1700), @selector(setViewport));
    return;
}

-(void)clear:(float)arg2 g:(float)arg3 b:(float)arg4 a:(float)arg5 {
    [self beginWithClear:arg2 g:arg3 b:arg4 a:arg5];
    [self end];
    return;
}

-(void)clearDepth:(float)arg2 {
    [self begin];
    r0 = glGetFloatv(0xb73, &var_24);
    glClearDepthf(r0);
    glClearDepthf(glClear(0x100));
    [self end];
    return;
}

-(void)clearStencil:(int)arg2 {
    glGetIntegerv(0xb91, &var_14);
    glClearStencil(arg2);
    glClear(0x400);
    glClearStencil(var_14);
    return;
}

-(void)visit {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_visible != 0x0) {
            r19 = r0;
            sub_1003575dc();
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_grid));
            r0 = *(r19 + r20);
            if (r0 != 0x0 && [r0 active] != 0x0) {
                    [*(r19 + r20) beforeDraw];
                    [r19 transformAncestors];
            }
            [r19 transform];
            [r19->_sprite visit];
            r1 = @selector(draw);
            objc_msgSend(r19, r1);
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    r1 = @selector(active);
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r0 = *(r19 + r20);
                            r1 = @selector(afterDraw:);
                            r0 = objc_msgSend(r0, r1);
                    }
            }
            loc_100357620(r0, r1);
            r19->_orderOfArrival = 0x0;
    }
    return;
}

-(void *)getUIImage {
    r19 = [self newCGImage];
    r0 = [UIImage alloc];
    asm { fcvt       d0, s0 };
    [r0 initWithCGImage:r19 scale:0x0 orientation:r4];
    CGImageRelease(r19);
    r0 = [r20 autorelease];
    return r0;
}

-(struct CGImage *)newCGImage {
    r31 = r31 - 0x90;
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
    r23 = self;
    [self->_texture contentSizeInPixels];
    asm { fcvtzs     w21, d0 };
    asm { fcvtzs     w22, d1 };
    asm { sxtw       x24, w8 };
    r19 = calloc(r24, 0x1);
    r20 = calloc(r24, 0x1);
    if (r19 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            free(r19);
            free(r20);
            r0 = 0x0;
    }
    else {
            [r23 begin];
            glReadPixels(0x0, 0x0, r21, r22, 0x1908, 0x1401, r19);
            [r23 end];
            r0 = CGDataProviderCreateWithData(0x0, r19, r24, 0x0);
            r23 = r0;
            var_68 = r0;
            r24 = CGColorSpaceCreateDeviceRGB();
            asm { sxtw       x25, w21 };
            asm { sxtw       x26, w22 };
            asm { sxtw       x4, w27 };
            r0 = CGImageCreate(r25, r26, 0x8, 0x20, r4, r24, 0x1, r23, 0x0, 0x0, stack[-128]);
            r28 = CGImageGetBitsPerComponent(r0);
            r23 = CGImageGetBytesPerRow(r0);
            r0 = CGImageGetColorSpace(r0);
            r1 = r25;
            r2 = r26;
            r0 = CGBitmapContextCreate(r20, r1, r2, r28, r23, r0, 0x1);
            asm { scvtf      d8, w22 };
            CGContextTranslateCTM(r0, r1, r2);
            CGContextScaleCTM(r23, r1, r2);
            asm { scvtf      d2, w21 };
            CGContextDrawImage(r23, r27, r2);
            CGBitmapContextCreateImage(r23);
            CGContextRelease(r23);
            CGImageRelease(r27);
            CGColorSpaceRelease(r24);
            CGDataProviderRelease(var_68);
            free(r20);
            free(r19);
            r0 = r21;
    }
    return r0;
}

-(struct CGSize)contentSize {
    r0 = self->_texture;
    r0 = [r0 contentSize];
    return r0;
}

-(void)draw {
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_autoDraw != 0x0) {
            r19 = r0;
            [r0 begin];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_clearFlags));
            r0 = *(int32_t *)(r19 + r20);
            if (r0 != 0x0) {
                    if ((r0 & 0x4000) == 0x0) {
                            r1 = @selector(begin);
                            if ((r0 & 0x100) == 0x0) {
                                    if ((r0 & 0x400) != 0x0) {
                                            r1 = &var_50;
                                            glGetIntegerv(0xb91, r1);
                                            glClearStencil(*(int32_t *)(int64_t *)&r19->_clearStencil);
                                            r0 = *(int32_t *)(r19 + r20);
                                    }
                            }
                            else {
                                    r1 = &var_4C;
                                    glClearDepthf(glGetFloatv(0xb73, r1));
                                    r0 = *(int32_t *)(r19 + r20);
                                    if ((r0 & 0x400) != 0x0) {
                                            r1 = &var_50;
                                            glGetIntegerv(0xb91, r1);
                                            glClearStencil(*(int32_t *)(int64_t *)&r19->_clearStencil);
                                            r0 = *(int32_t *)(r19 + r20);
                                    }
                            }
                    }
                    else {
                            r1 = &var_48;
                            r0 = glGetFloatv(0xc22, r1);
                            glClearColor(r0, r1, r2, r3);
                            r0 = *(int32_t *)(r19 + r20);
                            if ((r0 & 0x100) != 0x0) {
                                    r1 = &var_4C;
                                    glClearDepthf(glGetFloatv(0xb73, r1));
                                    r0 = *(int32_t *)(r19 + r20);
                                    if ((r0 & 0x400) != 0x0) {
                                            r1 = &var_50;
                                            glGetIntegerv(0xb91, r1);
                                            glClearStencil(*(int32_t *)(int64_t *)&r19->_clearStencil);
                                            r0 = *(int32_t *)(r19 + r20);
                                    }
                            }
                            else {
                                    if ((r0 & 0x400) != 0x0) {
                                            r1 = &var_50;
                                            glGetIntegerv(0xb91, r1);
                                            glClearStencil(*(int32_t *)(int64_t *)&r19->_clearStencil);
                                            r0 = *(int32_t *)(r19 + r20);
                                    }
                            }
                    }
                    r0 = glClear(r0);
                    r8 = *(int32_t *)(r19 + r20);
                    if ((r8 & 0x4000) == 0x0) {
                            if ((r8 & 0x100) == 0x0) {
                                    if ((r8 & 0x400) != 0x0) {
                                            glClearStencil(var_50);
                                    }
                            }
                            else {
                                    glClearDepthf(r0);
                                    if ((*(int32_t *)(r19 + r20) & 0x400) != 0x0) {
                                            glClearStencil(var_50);
                                    }
                            }
                    }
                    else {
                            r0 = glClearColor(r0, r1, r2, r3);
                            r8 = *(int32_t *)(r19 + r20);
                            if ((r8 & 0x100) != 0x0) {
                                    glClearDepthf(r0);
                                    if ((*(int32_t *)(r19 + r20) & 0x400) != 0x0) {
                                            glClearStencil(var_50);
                                    }
                            }
                            else {
                                    if ((r8 & 0x400) != 0x0) {
                                            glClearStencil(var_50);
                                    }
                            }
                    }
            }
            [r19 sortAllChildren];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
            r8 = *(r19 + r8);
            if (r8 != 0x0) {
                    r8 = r8->data;
                    r9 = *r8;
                    if (r9 != 0x0) {
                            r21 = *(r8 + 0x10);
                            r22 = r21 + r9 * 0x8 - 0x8;
                            if (r21 <= r22) {
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_sprite));
                                    do {
                                            r0 = *r21;
                                            if (*(r19 + r23) != r0) {
                                                    [r0 visit];
                                            }
                                            r21 = r21 + 0x8;
                                    } while (r21 < r22);
                            }
                    }
            }
            [r19 end];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setSprite:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

-(void *)sprite {
    r0 = self->_sprite;
    return r0;
}

-(bool)autoDraw {
    r0 = *(int8_t *)(int64_t *)&self->_autoDraw;
    return r0;
}

-(struct _ccColor4F)clearColor {
    r0 = self;
    return r0;
}

-(void)setAutoDraw:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoDraw = arg2;
    return;
}

-(void)setClearColor:(struct _ccColor4F)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_clearColor));
    *(int128_t *)(self + r8) = s0;
    *(int128_t *)(0x4 + self + r8) = s1;
    *(int128_t *)(0x8 + self + r8) = s2;
    *(int128_t *)(0xc + self + r8) = s3;
    return;
}

-(float)clearDepth {
    r0 = self;
    return r0;
}

-(void)setClearDepth:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_clearDepth = s0;
    return;
}

-(int)clearStencil {
    r0 = *(int32_t *)(int64_t *)&self->_clearStencil;
    return r0;
}

-(void)setClearStencil:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_clearStencil = arg2;
    return;
}

-(unsigned int)clearFlags {
    r0 = *(int32_t *)(int64_t *)&self->_clearFlags;
    return r0;
}

-(void)setClearFlags:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->_clearFlags = arg2;
    return;
}

-(void *)getUIImageAsDataFromBuffer:(int)arg2 {
    return 0x0;
}

-(void *)getUIImageFromBuffer {
    r0 = [self getUIImage];
    return r0;
}

@end