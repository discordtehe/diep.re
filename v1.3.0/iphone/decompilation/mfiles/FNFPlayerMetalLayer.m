@implementation FNFPlayerMetalLayer

-(void *)initWithConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r20 = r2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 scale];
            [r19 setContentsScale:r2];
            [r0 release];
            [r19 setOpaque:0x1];
            r0 = [UIColor blackColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r19 setBackgroundColor:[r0 CGColor]];
            [r0 release];
            [r19 setMasksToBounds:0x1];
            r21 = MTLCreateSystemDefaultDevice();
            [r19 setDevice:r21];
            [r21 release];
            [r19 setPixelFormat:0x50];
            r21 = [FNFDefaultMetalRenderer alloc];
            r22 = [[r19 device] retain];
            r0 = [r21 initWithDevice:r22];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_defaultRenderer));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r22 release];
            *(int8_t *)(int64_t *)&r19->_isReadyForDisplay = 0x0;
            objc_storeStrong((int64_t *)&r19->_videoGravity, **_AVLayerVideoGravityResizeAspect);
            *(int128_t *)(int64_t *)&r19->_presentationSize = *(int128_t *)*_CGSizeZero;
            r19->_preferredConversion = 0x1;
            *(int8_t *)(int64_t *)&r19->_shouldApplyRotationTransform = *(int8_t *)(r20 + 0x20);
            [r19 setRenderer:*(r19 + r21)];
    }
    r0 = r19;
    return r0;
}

-(void)layoutSublayers {
    [[&var_20 super] layoutSublayers];
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    [r0 displayLayerDidLayoutSublayers];
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
            if ([r19 conformsToProtocol:@protocol(FNFPlayerMetalRenderer)] != 0x0) {
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
            objc_storeStrong((int64_t *)&r20->_detachedRenderer, r22);
            *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)initializeDisplayLayer {
    CVMetalTextureCacheCreate(**_kCFAllocatorDefault, 0x0, [[self device] retain], 0x0, (int64_t *)&self->_videoTextureCache);
    [r21 release];
    return;
}

-(void)updateDisplayLayer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self frame];
    r21 = (int64_t *)&r19->_layerSize;
    if (d2 == *(int128_t *)r21) {
            asm { fccmp      d3, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x1;
            [r19 frame];
            *r21 = d2;
            *(r21 + 0x8) = d3;
    }
    return;
}

-(void)flushDisplayLayer:(bool)arg2 {
    [self _resetMetalContext:arg2];
    return;
}

-(void)displayEmptyBuffer:(bool)arg2 preventPlayback:(bool)arg3 lastDisplayedSampleBuffer:(struct __CVBuffer *)arg4 {
    r3 = arg3;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_layoutChanged == 0x0) {
            asm { ccmp       w2, #0x0, #0x0, eq };
    }
    if (!CPU_FLAGS & E && r0->_lumaTexture != 0x0 && r0->_chromaTexture != 0x0) {
            [r0 _drawFrame:0x0 preventPlayback:r3];
    }
    return;
}

-(void)displayPixelBuffer:(struct __CVBuffer *)arg2 preferredTransform:(struct CGAffineTransform)arg3 preventPlayback:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
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
    r20 = r4;
    r24 = r3;
    r21 = arg2;
    r19 = self;
    [self->_renderer processPixelBuffer:r2];
    if (r21 != 0x0) {
            r22 = CVPixelBufferGetWidth(r21);
            r23 = CVPixelBufferGetHeight(r21);
            asm { ucvtf      d1, x22 };
            asm { ucvtf      d0, x0 };
            if (*(int8_t *)(int64_t *)&r19->_shouldApplyRotationTransform != 0x0) {
                    d2 = *(int128_t *)r24;
                    d1 = *(int128_t *)(r24 + 0x8) * d1;
                    d0 = d1 + *(int128_t *)(r24 + 0x18) * d0;
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_presentationSize));
            r8 = r19 + r8;
            if (d1 == *(int128_t *)r8) {
                    asm { fccmp      d0, d3, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    *(int128_t *)r8 = d1;
                    *(int128_t *)(r8 + 0x8) = d0;
                    r24 = 0x1;
            }
            else {
                    r24 = 0x0;
            }
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
            if (*(r19 + r26) != 0x0) {
                    [r19 _cleanUpTextures];
                    if (*(int8_t *)(int64_t *)&r19->_layoutChanged != 0x0) {
                            r0 = CVBufferGetAttachment(r21, **_kCVImageBufferYCbCrMatrixKey, 0x0);
                            r8 = *_kCVImageBufferYCbCrMatrix_ITU_R_601_4;
                            r8 = *r8;
                            if (r0 == r8) {
                                    if (CPU_FLAGS & E) {
                                            r8 = 0x1;
                                    }
                            }
                            r19->_preferredConversion = r8;
                    }
                    if (CVMetalTextureCacheCreateTextureFromImage(**_kCFAllocatorDefault, *(r19 + r26), r21, 0x0, 0xa, r22, r23, 0x0, (int64_t *)&r19->_lumaTexture) == 0x0 && CVMetalTextureCacheCreateTextureFromImage(**_kCFAllocatorDefault, *(r19 + r26), r21, 0x0, 0x1e, r22 >> 0x1, r23 >> 0x1, 0x1, (int64_t *)&r19->_chromaTexture) == 0x0) {
                            [r19 _drawFrame:r24 preventPlayback:r20];
                    }
                    else {
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    }
            }
            else {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            }
    }
    else {
            r24 = 0x0;
            [r19 _drawFrame:r24 preventPlayback:r20];
    }
    return;
}

-(void)clearBuffers {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self _cleanUpTextures];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)resetRendering {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_isReadyForDisplay != 0x0) {
            [r0 _updateReadyForDisplay:0x0];
    }
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

-(void)setVideoGravity:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoGravity));
    r8 = *(r19 + r9);
    if (r8 != r0) {
            *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x1;
            r8 = *(r19 + r9);
    }
    *(r19 + r9) = r0;
    [r8 release];
    return;
}

-(bool)isReadyForDisplay {
    r0 = *(int8_t *)(int64_t *)&self->_isReadyForDisplay;
    return r0;
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

-(void *)player {
    return 0x0;
}

-(void)setPlayer:(void *)arg2 {
    return;
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

-(void)_resetMetalContext:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerMetalLayer.mm" lineNumber:0x10a format:@"%@ skipping remove image since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay != 0x0) {
                    [r19 _updateReadyForDisplay:0x0];
            }
            [r19 _cleanUpTextures];
    }
    return;
}

-(void)_cleanUpTextures {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lumaTexture));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_chromaTexture));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r20) = 0x0;
    }
    CVMetalTextureCacheFlush(r19->_videoTextureCache, 0x0);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_displayLayerDelegate);
    objc_storeStrong((int64_t *)&self->_videoGravity, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_detachedRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_renderer, 0x0);
    return;
}

-(void)_drawFrame:(bool)arg2 preventPlayback:(bool)arg3 {
    r2 = arg2;
    r31 = r31 - 0xa0;
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
    r29 = &saved_fp;
    r19 = self;
    if (arg3 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerMetalLayer.mm" lineNumber:0x129 format:@"%@ skipping draw since we're not in active state"];
    }
    else {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_renderer));
            r20 = *(r19 + r26);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_layoutChanged));
            r8 = *(int8_t *)(r19 + r25);
            if (r8 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            r21 = r8 | r2;
            r22 = [CVMetalTextureGetTexture(r19->_lumaTexture) retain];
            r23 = [CVMetalTextureGetTexture(r19->_chromaTexture) retain];
            r24 = [[r19 nextDrawable] retain];
            r6 = r19->_videoGravity;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
            var_80 = *(int128_t *)(r19 + r8);
            r20 = [r20 drawFrame:r21 presentationRect:r22 lumaTexture:r23 chromaTexture:r24 drawable:r6 videoGravity:&var_80 rotation:r19->_preferredConversion transform:stack[-152] colorConversion:var_80];
            [r24 release];
            [r23 release];
            [r22 release];
            if ((r20 & 0x1) == 0x0) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerMetalLayer.mm" lineNumber:0x136 format:@"%@ failed to draw frame using renderer %@"];
            }
            *(int8_t *)(r19 + r25) = 0x0;
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay == 0x0) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerMetalLayer.mm" lineNumber:0x13c format:@"%@ setting ready for display"];
                    [r19 _updateReadyForDisplay:0x1];
            }
    }
    return;
}

-(void *)displayLayerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDisplayLayerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_displayLayerDelegate, arg2);
    return;
}

@end