@implementation FNFPlayerGLIOSurfaceLayer

-(void)layoutSublayers {
    [[&var_20 super] layoutSublayers];
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    [r0 displayLayerDidLayoutSublayers];
    [r0 release];
    return;
}

-(void *)initWithConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r2;
    r0 = [[r29 - 0x40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 scale];
            [r20 setContentsScale:r2];
            [r0 release];
            [r20 setOpaque:0x1];
            [r20 setContentsGravity:**_kCAGravityResizeAspect];
            r0 = [UIColor blackColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r20 setBackgroundColor:[r0 CGColor]];
            [r0 release];
            CGAffineTransformMakeScale([r20 setMasksToBounds:0x1], @selector(setMasksToBounds:));
            [r20 setAffineTransform:&var_A0];
            *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_preferredConversion))) = 0x1;
            r0 = [FNFDefaultGLRenderer new];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_defaultRenderer));
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            [r20 setRenderer:*(r20 + r23)];
            *(int8_t *)(int64_t *)&r20->_isReadyForDisplay = 0x0;
            objc_storeStrong((int64_t *)&r20->_videoGravity, **_AVLayerVideoGravityResizeAspect);
            *(int128_t *)(int64_t *)&r20->_presentationSize = *(int128_t *)*_CGSizeZero;
            *(r20 + r21) = 0x1;
            *(int8_t *)(int64_t *)&r20->_shouldApplyRotationTransform = *(int8_t *)(r19 + 0x20);
    }
    r0 = r20;
    return r0;
}

-(void *)player {
    return 0x0;
}

-(void)setPlayer:(void *)arg2 {
    return;
}

-(void *)videoGravity {
    r0 = self->_videoGravity;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(struct CGSize)presentationSize {
    r0 = self;
    return r0;
}

-(bool)isReadyForDisplay {
    r0 = *(int8_t *)(int64_t *)&self->_isReadyForDisplay;
    return r0;
}

-(void)setVideoGravity:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoGravity));
    r21 = *(r20 + r22);
    if (r21 == r0) goto loc_100b459ac;

loc_100b458f8:
    *(r20 + r22) = [r19 retain];
    [r21 release];
    *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b4594c;

loc_100b45940:
    r8 = *_kCAGravityResizeAspect;
    goto loc_100b45998;

loc_100b45998:
    [r20 setContentsGravity:*r8];
    goto loc_100b459ac;

loc_100b459ac:
    [r19 release];
    return;

loc_100b4594c:
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b45974;

loc_100b45968:
    r8 = *_kCAGravityResizeAspectFill;
    goto loc_100b45998;

loc_100b45974:
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b459ac;

loc_100b45990:
    r8 = *_kCAGravityResize;
    goto loc_100b45998;
}

-(void)_updateReadyForDisplay:(bool)arg2 {
    r23 = [[NSString stringWithUTF8String:0x100cd985d] retain];
    [self willChangeValueForKey:r23];
    [r23 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isReadyForDisplay));
    *(int8_t *)(self + r23) = arg2;
    r20 = [[NSString stringWithUTF8String:0x100cd985d] retain];
    [self didChangeValueForKey:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    [r0 displayLayerIsReadyForDisplay:*(int8_t *)(self + r23)];
    [r0 release];
    return;
}

-(void)setRenderer:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = arg2;
    r20 = self;
    r19 = [arg2 retain];
    r23 = (int64_t *)&r20->_renderer;
    r22 = *r23;
    r21 = [r22 retain];
    if (r19 != 0x0) {
            if ([r19 conformsToProtocol:@protocol(FNFPlayerGLRenderer)] != 0x0) {
                    r0 = r23;
                    r1 = r24;
            }
            else {
                    r1 = r20->_defaultRenderer;
                    r0 = r23;
            }
            objc_storeStrong(r0, r1);
    }
    else {
            *r23 = [r20->_defaultRenderer retain];
            [r21 release];
    }
    if (*r23 != r21) {
            *(int8_t *)(int64_t *)&r20->_needsToSetupGLState = 0x1;
            objc_storeStrong((int64_t *)&r20->_detachedRenderer, r22);
            *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)_destroyBuffers {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_frameBufferHandle;
    if (*(int32_t *)r20 != 0x0) {
            sub_100a3ee14(r20);
            *(int32_t *)r20 = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_pixelBufferPool));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            CVPixelBufferPoolRelease(r0);
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)_setupBuffers {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    if (d2 >= 0x3ff0000000000000) {
            asm { fccmp      d3, d0, #0x8, pl };
    }
    if (!CPU_FLAGS & NS) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x163 format:@"Attempt to set up buffers when player size is zero: (%.0lf, %.0lf)"];
            [r19 _destroyBuffers];
    }
    else {
            sub_100a3eb4c();
            sub_100a3ed10((int64_t *)&r19->_frameBufferHandle);
            [r19 bounds];
            [r19 contentsScale];
            [r19 bounds];
            [r19 contentsScale];
            r19->_pixelBufferPool = [FNFPlayerGLIOSurfaceLayer pixelBufferPoolWithPixelFormat:0x42475241 size:r3];
    }
    return;
}

-(void)initializeDisplayLayer {
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
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r0 = [r0 alloc];
    r0 = [r0 initWithAPI:0x2];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r8 = *(r19 + r23);
    *(r19 + r23) = r0;
    [r8 release];
    *(int8_t *)(int64_t *)&r19->_glInitialized = 0x1;
    if (*(r19 + r23) == 0x0) goto loc_100b46538;

loc_100b46484:
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r0 = [r0 setCurrentContext:r2];
    r1 = *(r19 + r23);
    if (r1 == 0x0 || r0 == 0x0) goto loc_100b46538;

loc_100b464b4:
    r2 = (int64_t *)&r19->_videoTextureCache;
    if (*r2 == 0x0) goto loc_100b465a8;

loc_100b464c8:
    *(int8_t *)(int64_t *)&r19->_supportOpenGLTextureRg = 0x1;
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x156 format:@"Error setting EAGLContext to nil"];
    }
    return;

loc_100b465a8:
    r0 = **_kCFAllocatorDefault;
    r0 = sub_100a3dc44(r0, r1, r2);
    if (r0 == 0x0) goto loc_100b464c8;

loc_100b465bc:
    r0 = @class(FBAdLogger);
    goto loc_100b4658c;

loc_100b4658c:
    [r0 logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    return;

loc_100b46538:
    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x140 format:@"Error setting EAGLContext"];
    r0 = @class(FBAdLogger);
    goto loc_100b4658c;
}

-(void)_cleanUpTextures {
    sub_100a3dcbc(self->_videoTextureCache);
    CVPixelBufferPoolFlush(self->_pixelBufferPool, 0x0);
    return;
}

-(void)resetRendering {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isReadyForDisplay != 0x0) {
            [r19 _updateReadyForDisplay:0x0];
    }
    [r19 setContents:0x0];
    return;
}

-(void)clearBuffers {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    if (([r0 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x18a format:@"Error setting EAGLContext"];
    }
    [r19 _cleanUpTextures];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r26) = 0x0;
    }
    [r19 _destroyBuffers];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x198 format:@"Error setting EAGLContext to nil"];
    }
    r0 = *(r19 + r21);
    *(r19 + r21) = 0x0;
    [r0 release];
    return;
}

-(void)drawPixelBuffer:(struct __CVBuffer *)arg2 {
    [CATransaction begin];
    [CATransaction setDisableActions:0x1];
    [self setContents:CVPixelBufferGetIOSurface(arg2)];
    [CATransaction commit];
    return;
}

-(void)updateDisplayLayer {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_glInitialized == 0x0) {
            [r19 initializeDisplayLayer];
    }
    [r19 frame];
    r22 = (int64_t *)&r19->_layerSize;
    if (d2 == *(int128_t *)r22) {
            asm { fccmp      d3, d1, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(int64_t *)&r19->_frameBufferHandle == 0x0) {
            *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x1;
            if (*0x1011dd528 != -0x1) {
                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
            }
            if ([*0x1011dd530 setCurrentContext:r2] != 0x0) {
                    [r19 frame];
                    *(int128_t *)r22 = d2;
                    *(int128_t *)(r22 + 0x8) = d3;
                    [r19 _destroyBuffers];
                    [r19 _setupBuffers];
                    if (*0x1011dd528 != -0x1) {
                            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
                    }
                    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x25b format:@"Error setting EAGLContext to nil"];
                    }
            }
    }
    return;
}

-(void)displayEmptyBuffer:(bool)arg2 preventPlayback:(bool)arg3 lastDisplayedSampleBuffer:(struct __CVBuffer *)arg4 {
    r3 = arg3;
    r0 = self;
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_layoutChanged == 0x0) {
            asm { ccmp       w2, #0x0, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r19 = r3;
            r20 = r0;
            if (*0x1011dd528 != -0x1) {
                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
            }
            if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x265 format:@"Error setting EAGLContext"];
            }
            [r20 _drawFrame:0x0 preventPlayback:r19];
            if (*0x1011dd528 != -0x1) {
                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
            }
            if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x26c format:@"Error setting EAGLContext to nil"];
            }
    }
    return;
}

-(struct CGAffineTransform)preferredTransform {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    q2 = *(int128_t *)(0x10 + r0 + r9);
    q0 = *(int128_t *)(0x20 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(int128_t *)(r8 + 0x10) = q2;
    *(int128_t *)(r8 + 0x20) = q0;
    return r0;
}

-(void)flushDisplayLayer:(bool)arg2 {
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
    if (arg2 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x275 format:@"%@ skipping remove image since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay != 0x0) {
                    [r19 _updateReadyForDisplay:0x0];
            }
            if (*0x1011dd528 != -0x1) {
                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
            }
            r0 = *0x1011dd530;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            if (([r0 setCurrentContext:r2] & 0x1) != 0x0) {
                    if (*(r19 + r23) != 0x0) {
                            [r19 _cleanUpTextures];
                            if (*0x1011dd528 != -0x1) {
                                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
                            }
                            if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                            }
                    }
            }
            else {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            }
    }
    return;
}

-(void)_drawFrame:(bool)arg2 preventPlayback:(bool)arg3 {
    r2 = arg2;
    r31 = r31 - 0xe0;
    var_70 = d11;
    stack[-120] = d10;
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
    if (arg3 == 0x0) goto loc_100b46a24;

loc_100b46a1c:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    return;

.l5:
    return;

loc_100b46a24:
    r20 = r2;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_frameBufferHandle));
    sub_100a3ed6c(*(int32_t *)(r19 + r24));
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_detachedRenderer));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 restoreGLState];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
    }
    r0 = CVPixelBufferPoolCreatePixelBuffer(**_kCFAllocatorDefault, r19->_pixelBufferPool, &var_80);
    if (r0 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0x1d4 format:@"%@ Error at CVPixelBufferPoolCreatePixelBuffer %d"];
    }
    r21 = CVPixelBufferGetWidth(var_80);
    r22 = CVPixelBufferGetHeight(var_80);
    var_C8 = 0x0;
    stack[-208] = &var_78;
    r0 = CVOpenGLESTextureCacheCreateTextureFromImage();
    if (r0 != 0x0) {
            var_C8 = r0;
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            if (([EAGLContext setCurrentContext:0x0] & 0x1) == 0x0) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            }
    }
    glFramebufferTexture2D(0x8d40, 0x8ce0, 0xde1, CVOpenGLESTextureGetName(), 0x0);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_needsToSetupGLState));
    if (*(int8_t *)(r19 + r23) == 0x0) goto loc_100b46bf4;

loc_100b46bc0:
    if (*(int32_t *)(r19 + r24) == 0x0) goto .l5;

loc_100b46bc8:
    r26 = (int64_t *)&r19->_renderer;
    if (([*r26 setupGLState] & 0x1) == 0x0) goto loc_100b46a1c;

loc_100b46be8:
    *(int8_t *)(r19 + r23) = 0x0;
    goto loc_100b46c04;

loc_100b46c04:
    r23 = *r26;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_layoutChanged));
    r8 = *(int8_t *)(r19 + r28);
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r20 = r8 | r20;
    r24 = *(int32_t *)(r19 + r24);
    r25 = r19->_videoGravity;
    [r19 bounds];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    if (([r23 drawFrame:r20 presentationRect:r21 backingWidth:r22 backingHeight:r24 frameBuffer:r25 videoGravity:&var_B0 rotation:r19->_preferredConversion layerBounds:var_C8 transform:stack[-208] colorConversion:stack[-200]] & 0x1) == 0x0) {
            objc_msgSend(@class(FBAdLogger), *(&@selector(getTemplateForKey:) + 0xae0));
    }
    glFinish();
    glFramebufferTexture2D(0x8d40, 0x8ce0, 0xde1, 0x0, 0x0);
    glBindTexture(0xde1, 0x0);
    [r19 drawPixelBuffer:var_80];
    if (0x0 != 0x0) {
            CFRelease(0x0);
    }
    r0 = var_80;
    if (r0 != 0x0) {
            CVPixelBufferRelease(r0);
    }
    if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay == 0x0) {
            objc_msgSend(@class(FBAdLogger), *(&@selector(getTemplateForKey:) + 0xae0));
            [r19 _updateReadyForDisplay:0x1];
    }
    *(int8_t *)(r19 + r28) = 0x0;
    return;

loc_100b46bf4:
    r26 = (int64_t *)&r19->_renderer;
    goto loc_100b46c04;
}

-(void)setPreferredTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int8_t *)(int64_t *)&self->_layoutChanged = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    q0 = *(int128_t *)r2;
    q1 = *(int128_t *)(r2 + 0x10);
    q2 = *(int128_t *)(r2 + 0x20);
    *(int128_t *)(0x10 + self + r8) = q1;
    *(int128_t *)(0x20 + self + r8) = q2;
    *(int128_t *)(self + r8) = q0;
    atan2(self, _cmd);
    self->_preferredRotation = -d0;
    return;
}

-(void *)displayLayerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_displayLayerDelegate);
    objc_storeStrong((int64_t *)&self->_videoGravity, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_detachedRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_renderer, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

+(void)_flushBuffer:(struct __CVBuffer *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    CVPixelBufferLockBaseAddress(arg2, 0x0);
    r0 = CVPixelBufferGetBaseAddress(r19);
    if (r0 != 0x0) {
            r20 = r0;
            r21 = CVPixelBufferGetWidth(r19);
            r22 = CVPixelBufferGetHeight(r19);
            r0 = CVPixelBufferGetBytesPerRow(r19);
            if (r22 != 0x0) {
                    r23 = r0;
                    r24 = 0x0;
                    do {
                            glReadPixels(0x0, r24, r21, 0x1, 0x80e1, 0x1401, r20);
                            r20 = r20 + r23;
                            r24 = r24 + 0x1;
                    } while (r22 != r24);
            }
    }
    CVPixelBufferUnlockBaseAddress(r19, 0x0);
    return;
}

-(void)setDisplayLayerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_displayLayerDelegate, arg2);
    return;
}

-(void)displayPixelBuffer:(struct __CVBuffer *)arg2 preferredTransform:(struct CGAffineTransform)arg3 preventPlayback:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x90;
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
    r26 = r4;
    r23 = r3;
    r22 = arg2;
    r20 = self;
    [self->_renderer processPixelBuffer:r2];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            r3 = "Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm";
            [FBAdLogger logAtLevel:0x3 file:r3 lineNumber:0xb2 format:@"Error setting EAGLContext"];
    }
    if (r22 == 0x0) goto loc_100b45d28;

loc_100b45c78:
    if (*qword_1011dcf88 != -0x1) {
            dispatch_once_f(0x1011dcf88, 0x1011c5ff8, 0x100a3d91c);
    }
    r24 = qword_1011dcf90(r22);
    if (*qword_1011dcf98 != -0x1) {
            dispatch_once_f(0x1011dcf98, 0x1011c6010, 0x100a3d91c);
    }
    r25 = qword_1011dcfa0(r22);
    asm { scvtf      d1, w24 };
    asm { scvtf      d0, w25 };
    if (*(int8_t *)(int64_t *)&r20->_shouldApplyRotationTransform != 0x0) {
            d2 = *(int128_t *)r23;
            d1 = *(int128_t *)(r23 + 0x8) * d1;
            d0 = d1 + *(int128_t *)(r23 + 0x18) * d0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_presentationSize));
    r8 = r20 + r8;
    if (d1 == *(int128_t *)r8) {
            asm { fccmp      d0, d3, #0x0, eq };
    }
    var_64 = r26;
    if (!CPU_FLAGS & E) {
            *(int128_t *)r8 = d1;
            *(int128_t *)(r8 + 0x8) = d0;
            r23 = 0x1;
    }
    else {
            r23 = 0x0;
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
    if (*(r20 + r28) == 0x0) goto loc_100b45f10;

loc_100b45da4:
    [r20 _cleanUpTextures];
    if (*(int8_t *)(int64_t *)&r20->_layoutChanged != 0x0) {
            if (*qword_1011dcff8 != -0x1) {
                    dispatch_once_f(0x1011dcff8, 0x1011c6088, 0x100a3d91c);
            }
            r26 = sub_100a3dde4(r22, **0x1011dd000);
            if (*qword_1011dcfe8 != -0x1) {
                    dispatch_once_f(0x1011dcfe8, 0x1011c6070, 0x100a3d91c);
            }
            r8 = *qword_1011dcff0;
            r8 = *r8;
            if (r26 == r8) {
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r20->_preferredConversion = r8;
    }
    if (*qword_1011dd768 != -0x1) {
            dispatch_once_f(0x1011dd768, 0x1011c6ad8, 0x100a3d91c);
    }
    qword_1011dd770(0x84c0);
    r1 = *(r20 + r28);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_supportOpenGLTextureRg));
    if (*(int8_t *)(r20 + r21) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = 0x1903;
            }
            else {
                    r3 = 0x1906;
            }
    }
    r0 = sub_100a3dd18(**_kCFAllocatorDefault, r1, r22, r3, r24, r25, r3, 0x0, &var_58);
    if (r0 == 0x0) goto loc_100b45f8c;

loc_100b45e90:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (*qword_1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l31;

loc_100b45eec:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4610c;

loc_100b4610c:
    objc_msgSend(@class(FBAdLogger), r1);
    return;

.l31:
    return;

loc_100b45f8c:
    if (*qword_1011dcf58 != -0x1) {
            dispatch_once_f(0x1011dcf58, 0x1011c5fb0, 0x100a3d91c);
    }
    r27 = qword_1011dcf60(0x0);
    if (*qword_1011dcf68 != -0x1) {
            dispatch_once_f(0x1011dcf68, 0x1011c5fc8, 0x100a3d91c);
    }
    r3 = qword_1011dcf70();
    if (*qword_1011dd758 != -0x1) {
            dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
            r3 = r3;
    }
    qword_1011dd760(r27, r3);
    sub_100a3efa8(0x2801);
    sub_100a3efa8(0x2800);
    sub_100a3ef44(0x2802);
    sub_100a3ef44(0x2803);
    if (*qword_1011dd768 != -0x1) {
            dispatch_once_f(0x1011dd768, 0x1011c6ad8, 0x100a3d91c);
    }
    qword_1011dd770(0x84c1);
    r1 = *(r20 + r28);
    if (*(int8_t *)(r20 + r21) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = 0x8227;
            }
            else {
                    r3 = 0x190a;
            }
    }
    if (r24 < 0x0) {
            asm { cinc       w8, w24, lt };
    }
    r4 = SAR(0x8227, 0x1);
    if (r25 < 0x0) {
            asm { cinc       w8, w25, lt };
    }
    r0 = sub_100a3dd18(**_kCFAllocatorDefault, r1, r22, r3, r4, SAR(0x8227, 0x1), r3, 0x1, &var_60);
    if (r0 == 0x0) goto loc_100b46130;

loc_100b46090:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (*qword_1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l31;

loc_100b460ec:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4610c;

loc_100b46130:
    if (*qword_1011dcf58 != -0x1) {
            dispatch_once_f(0x1011dcf58, 0x1011c5fb0, 0x100a3d91c);
    }
    r26 = var_64;
    r22 = qword_1011dcf60(0x0);
    if (*qword_1011dcf68 != -0x1) {
            dispatch_once_f(0x1011dcf68, 0x1011c5fc8, 0x100a3d91c);
    }
    r24 = qword_1011dcf70(0x0);
    if (*qword_1011dd758 != -0x1) {
            dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
    }
    qword_1011dd760(r22, r24);
    sub_100a3efa8(0x2801);
    sub_100a3efa8(0x2800);
    sub_100a3ef44(0x2802);
    sub_100a3ef44(0x2803);
    goto loc_100b45d2c;

loc_100b45d2c:
    [r20 _drawFrame:r23 preventPlayback:r26];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l31;

loc_100b45d64:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4610c;

loc_100b45f10:
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLIOSurfaceLayer.mm" lineNumber:0xce format:@"%@ No video texture cache"];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l31;

loc_100b45f68:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4610c;

loc_100b45d28:
    r23 = 0x0;
    goto loc_100b45d2c;
}

+(struct __CVPixelBufferPool *)pixelBufferPoolWithPixelFormat:(unsigned int)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x90;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r8 = *_kCVPixelBufferIOSurfacePropertiesKey;
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r20 = [[NSNumber numberWithUnsignedInt:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_78 count:0x4];
    r22 = [r0 retain];
    [r20 release];
    [r21 release];
    [r19 release];
    CVPixelBufferPoolCreate(**_kCFAllocatorDefault, 0x0, r22, &var_80);
    r19 = var_80;
    [r22 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end