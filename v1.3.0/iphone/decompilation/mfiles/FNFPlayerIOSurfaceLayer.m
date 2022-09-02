@implementation FNFPlayerIOSurfaceLayer

-(void *)initWithConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r19->_videoGravity, **_AVLayerVideoGravityResizeAspect);
            *(int128_t *)(int64_t *)&r19->_presentationSize = *(int128_t *)*_CGSizeZero;
            *(int8_t *)(int64_t *)&r19->_isReadyForDisplay = 0x0;
            *(int8_t *)(int64_t *)&r19->_shouldApplyRotationTransform = *(int8_t *)(r20 + 0x20);
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 scale];
            [r19 setContentsScale:r2];
            [r0 release];
            [r19 setOpaque:0x1];
            [r19 setContentsGravity:**_kCAGravityResizeAspect];
            r0 = [UIColor blackColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r19 setBackgroundColor:[r0 CGColor]];
            [r0 release];
            [r19 setMasksToBounds:0x1];
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

-(void)initializeDisplayLayer {
    return;
}

-(void)setRenderer:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_layoutChanged = 0x1;
    return;
}

-(void)displayEmptyBuffer:(bool)arg2 preventPlayback:(bool)arg3 lastDisplayedSampleBuffer:(struct __CVBuffer *)arg4 {
    r3 = arg3;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg4 != 0x0) {
            if (*(int8_t *)(int64_t *)&r0->_layoutChanged == 0x0) {
                    asm { ccmp       w2, #0x0, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    [r0 _drawFrameWithPreventPlayback:r3];
            }
    }
    return;
}

-(void)displayPixelBuffer:(struct __CVBuffer *)arg2 preferredTransform:(struct CGAffineTransform)arg3 preventPlayback:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r4;
    r21 = arg2;
    r20 = self;
    if (arg2 != 0x0) {
            r22 = r3;
            if (*qword_1011dcf88 != -0x1) {
                    dispatch_once_f(0x1011dcf88, 0x1011c5ff8, 0x100a3d91c);
            }
            qword_1011dcf90(r21);
            if (*qword_1011dcf98 != -0x1) {
                    dispatch_once_f(0x1011dcf98, 0x1011c6010, 0x100a3d91c);
            }
            qword_1011dcfa0(r21);
            asm { scvtf      d1, w23 };
            asm { scvtf      d0, w0 };
            if (*(int8_t *)(int64_t *)&r20->_shouldApplyRotationTransform != 0x0) {
                    *(int128_t *)(int64_t *)&r20->_presentationSize = q0;
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_presentationSize));
                    *(int128_t *)(r20 + r8) = d1;
                    *(int128_t *)(0x8 + r20 + r8) = d0;
            }
    }
    [CATransaction begin];
    [CATransaction setDisableActions:0x1];
    [r20 setContents:CVPixelBufferGetIOSurface(r21)];
    [CATransaction commit];
    [r20 _drawFrameWithPreventPlayback:r19];
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
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (arg2 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerIOSurfaceLayer.mm" lineNumber:0x7a format:@"%@ skipping remove image since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r0->_isReadyForDisplay != 0x0) {
                    [r0 _updateReadyForDisplay:0x0];
            }
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
    r0 = [self contents];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 setContents:0x0];
    }
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

-(void)setPlayer:(void *)arg2 {
    return;
}

-(void *)player {
    return 0x0;
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
    if (r21 == r0) goto loc_100b49ce4;

loc_100b49c30:
    *(r20 + r22) = [r19 retain];
    [r21 release];
    *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b49c84;

loc_100b49c78:
    r8 = *_kCAGravityResizeAspect;
    goto loc_100b49cd0;

loc_100b49cd0:
    [r20 setContentsGravity:*r8];
    goto loc_100b49ce4;

loc_100b49ce4:
    [r19 release];
    return;

loc_100b49c84:
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b49cac;

loc_100b49ca0:
    r8 = *_kCAGravityResizeAspectFill;
    goto loc_100b49cd0;

loc_100b49cac:
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b49ce4;

loc_100b49cc8:
    r8 = *_kCAGravityResize;
    goto loc_100b49cd0;
}

-(void)_drawFrameWithPreventPlayback:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerIOSurfaceLayer.mm" lineNumber:0xc4 format:@"%@ skipping draw since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay == 0x0) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerIOSurfaceLayer.mm" lineNumber:0xc8 format:@"%@ setting ready for display"];
                    [r19 _updateReadyForDisplay:0x1];
            }
            *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x0;
    }
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

-(void)setPreferredTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(int64_t *)&r0->_layoutChanged = 0x1;
    if (*(int8_t *)(int64_t *)&r0->_shouldApplyRotationTransform != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_58);
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_displayLayerDelegate);
    objc_storeStrong((int64_t *)&self->_videoGravity, 0x0);
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