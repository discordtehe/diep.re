@implementation FNFPlayerGLLayer

-(void)layoutSublayers {
    [[&var_20 super] layoutSublayers];
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    [r0 displayLayerDidLayoutSublayers];
    [r0 release];
    return;
}

-(void *)player {
    return 0x0;
}

-(void)setPlayer:(void *)arg2 {
    return;
}

-(void *)initWithConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
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
    r19 = r2;
    r0 = [[&var_78 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [UIScreen mainScreen];
            r29 = r29;
            r0 = [r0 retain];
            [r0 scale];
            [r20 setContentsScale:r2];
            [r0 release];
            [r20 setOpaque:0x1];
            if (*qword_1011dd808 != -0x1) {
                    dispatch_once_f(0x1011dd808, 0x1011c6bc8, 0x100a3d91c);
            }
            r21 = [**qword_1011dd810 retain];
            r0 = @(NO);
            r29 = r29;
            r22 = [r0 retain];
            if (*qword_1011dd818 != -0x1) {
                    dispatch_once_f(0x1011dd818, 0x1011c6be0, 0x100a3d91c);
            }
            r29 = r29;
            r23 = [**qword_1011dd820 retain];
            if (*qword_1011dd828 != -0x1) {
                    dispatch_once_f(0x1011dd828, 0x1011c6bf8, 0x100a3d91c);
            }
            r24 = [**qword_1011dd830 retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2];
            r25 = [r0 retain];
            [r20 setDrawableProperties:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            r0 = [FNFDefaultGLRenderer new];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_defaultRenderer));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [r20 setRenderer:*(r20 + r21)];
            *(int8_t *)(int64_t *)&r20->_isReadyForDisplay = 0x0;
            objc_storeStrong((int64_t *)&r20->_videoGravity, **_AVLayerVideoGravityResizeAspect);
            *(int128_t *)(int64_t *)&r20->_presentationSize = *(int128_t *)*_CGSizeZero;
            r20->_preferredConversion = 0x1;
            *(int8_t *)(int64_t *)&r20->_shouldApplyRotationTransform = *(int8_t *)(r19 + 0x20);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
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
    r19 = (int64_t *)&r19->_colorBufferHandle;
    if (*(int32_t *)r19 != 0x0) {
            sub_100a3ec50(r19);
            *(int32_t *)r19 = 0x0;
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
    if (*(r19 + r23) == 0x0) goto loc_100b48680;

loc_100b485cc:
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r0 = [r0 setCurrentContext:r2];
    r1 = *(r19 + r23);
    if (r1 == 0x0 || r0 == 0x0) goto loc_100b48680;

loc_100b485fc:
    r2 = (int64_t *)&r19->_videoTextureCache;
    if (*r2 == 0x0) goto loc_100b486f0;

loc_100b48610:
    *(int8_t *)(int64_t *)&r19->_supportOpenGLTextureRg = 0x1;
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x136 format:@"Error setting EAGLContext to nil"];
    }
    return;

loc_100b486f0:
    r0 = **_kCFAllocatorDefault;
    r0 = sub_100a3dc44(r0, r1, r2);
    if (r0 == 0x0) goto loc_100b48610;

loc_100b48704:
    r0 = @class(FBAdLogger);
    goto loc_100b486d4;

loc_100b486d4:
    [r0 logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    return;

loc_100b48680:
    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x120 format:@"Error setting EAGLContext"];
    r0 = @class(FBAdLogger);
    goto loc_100b486d4;
}

-(void)_setupBuffers {
    r31 = r31 - 0x30;
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
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x143 format:@"Attempt to set up buffers when player size is zero: (%.0lf, %.0lf)"];
            [r19 _destroyBuffers];
    }
    else {
            sub_100a3eb4c();
            sub_100a3ed10((int64_t *)&r19->_frameBufferHandle);
            sub_100a3ed6c(*(int32_t *)(int64_t *)&r19->_frameBufferHandle);
            sub_100a3eb98((int64_t *)&r19->_colorBufferHandle);
            sub_100a3ebf4(*(int32_t *)(int64_t *)&r19->_colorBufferHandle);
            [r19->_context renderbufferStorage:0x8d41 fromDrawable:r19];
            sub_100a3ecac(0x8d42, (int64_t *)&r19->_backingWidth);
            sub_100a3ecac(0x8d43, (int64_t *)&r19->_backingHeight);
            sub_100a3ee70(*(int32_t *)(int64_t *)&r19->_colorBufferHandle);
            r0 = sub_100a3edc8();
            if (r0 != 0x8cd5) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x155 format:@"%@ Failed to make complete framebuffer object %x"];
            }
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
    sub_100a3dcbc(r19->_videoTextureCache);
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
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x181 format:@"Error setting EAGLContext"];
    }
    [*(r19 + r21) renderbufferStorage:0x8d41 fromDrawable:0x0];
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
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x191 format:@"Error setting EAGLContext to nil"];
    }
    r0 = *(r19 + r21);
    *(r19 + r21) = 0x0;
    [r0 release];
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
    if (CPU_FLAGS & NE || *(int32_t *)(int64_t *)&r19->_frameBufferHandle == 0x0 || *(int32_t *)(int64_t *)&r19->_colorBufferHandle == 0x0) {
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
                            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x1f3 format:@"Error setting EAGLContext to nil"];
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
            r20 = r0;
            if (r0->_lumaTexture != 0x0 && r20->_chromaTexture != 0x0) {
                    r19 = r3;
                    if (*0x1011dd528 != -0x1) {
                            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
                    }
                    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x1fe format:@"Error setting EAGLContext"];
                    }
                    [r20 _drawFrame:0x0 preventPlayback:r19];
                    if (*0x1011dd528 != -0x1) {
                            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
                    }
                    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x205 format:@"Error setting EAGLContext to nil"];
                    }
            }
    }
    return;
}

-(void)_drawFrame:(bool)arg2 preventPlayback:(bool)arg3 {
    r2 = arg2;
    r31 = r31 - 0xc0;
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
    if (arg3 == 0x0) goto loc_100b48bb4;

loc_100b48bac:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    return;

.l9:
    return;

loc_100b48bb4:
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_needsToSetupGLState));
    if (*(int8_t *)(r19 + r21) == 0x0) goto loc_100b48c30;

loc_100b48c00:
    if (*(int32_t *)(r19 + r24) == 0x0) goto .l9;

loc_100b48c08:
    r27 = (int64_t *)&r19->_renderer;
    if (([*r27 setupGLState] & 0x1) == 0x0) goto loc_100b48bac;

loc_100b48c28:
    *(int8_t *)(r19 + r21) = 0x0;
    goto loc_100b48c3c;

loc_100b48c3c:
    r21 = *r27;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_layoutChanged));
    r8 = *(int8_t *)(r19 + r26);
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r20 = r8 | r20;
    r22 = *(int32_t *)(int64_t *)&r19->_backingWidth;
    r23 = *(int32_t *)(int64_t *)&r19->_backingHeight;
    r24 = *(int32_t *)(r19 + r24);
    r25 = r19->_videoGravity;
    [r19 bounds];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    var_A0 = *(int128_t *)(r19 + r8);
    if (([r21 drawFrame:r20 presentationRect:r22 backingWidth:r23 backingHeight:r24 frameBuffer:r25 videoGravity:&var_A0 rotation:r19->_preferredConversion layerBounds:stack[-184] transform:var_A0 colorConversion:stack[-168]] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x1c8 format:@"%@ failed to draw frame using renderer %@"];
    }
    r0 = *(int32_t *)(int64_t *)&r19->_colorBufferHandle;
    if (r0 != 0x0) {
            sub_100a3ebf4(r0);
            [r19->_context presentRenderbuffer:0x8d41];
            *(int8_t *)(r19 + r26) = 0x0;
    }
    if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay == 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x1d2 format:@"%@ setting ready for display"];
            [r19 _updateReadyForDisplay:0x1];
    }
    return;

loc_100b48c30:
    r27 = (int64_t *)&r19->_renderer;
    goto loc_100b48c3c;
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

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_displayLayerDelegate);
    objc_storeStrong((int64_t *)&self->_videoGravity, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_detachedRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_renderer, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

-(void)flushDisplayLayer:(bool)arg2 {
    r31 = r31 - 0x70;
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
    if (arg2 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0x20f format:@"%@ skipping remove image since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay != 0x0) {
                    [r19 _updateReadyForDisplay:0x0];
            }
            if (*0x1011dd528 != -0x1) {
                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
            }
            r0 = *0x1011dd530;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            if (([r0 setCurrentContext:r2] & 0x1) != 0x0) {
                    if (*(r19 + r24) != 0x0) {
                            [r19 _cleanUpTextures];
                            [r19 _destroyBuffers];
                            [r19 _setupBuffers];
                            if (*0x1011dd768 != -0x1) {
                                    dispatch_once_f(0x1011dd768, 0x1011c6ad8, 0x100a3d91c);
                            }
                            (*0x1011dd770)(0x84c0);
                            if (*0x1011dd758 != -0x1) {
                                    dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
                            }
                            (*0x1011dd760)(0xde1, 0x0);
                            if (*0x1011dd768 != -0x1) {
                                    dispatch_once_f(0x1011dd768, 0x1011c6ad8, 0x100a3d91c);
                            }
                            (*0x1011dd770)(0x84c1);
                            if (*0x1011dd758 != -0x1) {
                                    dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
                            }
                            (*0x1011dd760)(0xde1, 0x0);
                            sub_100a3ed6c(*(int32_t *)(int64_t *)&r19->_frameBufferHandle);
                            if (*qword_1011dd538 != -0x1) {
                                    dispatch_once_f(0x1011dd538, 0x1011c6790, 0x100a3d91c);
                            }
                            if (*qword_1011dd548 != -0x1) {
                                    dispatch_once_f(0x1011dd548, 0x1011c67a8, 0x100a3d91c);
                            }
                            sub_100a3ebf4(*(int32_t *)(int64_t *)&r19->_colorBufferHandle);
                            [*(r19 + r24) presentRenderbuffer:0x8d41];
                            [r19 _destroyBuffers];
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

-(void *)displayLayerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayLayerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)displayPixelBuffer:(struct __CVBuffer *)arg2 preferredTransform:(struct CGAffineTransform)arg3 preventPlayback:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
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
    r26 = r4;
    r23 = r3;
    r22 = arg2;
    r20 = self;
    [self->_renderer processPixelBuffer:r2];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            r3 = "Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm";
            [FBAdLogger logAtLevel:0x3 file:r3 lineNumber:0x95 format:@"Error setting EAGLContext"];
    }
    if (r22 == 0x0) goto loc_100b47e3c;

loc_100b47d8c:
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
    var_54 = r26;
    if (!CPU_FLAGS & E) {
            *(int128_t *)r8 = d1;
            *(int128_t *)(r8 + 0x8) = d0;
            r9 = 0x1;
    }
    else {
            r9 = 0x0;
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
    if (*(r20 + r28) == 0x0) goto loc_100b4802c;

loc_100b47eb4:
    var_58 = r9;
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
    r8 = *_kCFAllocatorDefault;
    r1 = *(r20 + r28);
    r26 = *r8;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_supportOpenGLTextureRg));
    if (*(int8_t *)(r20 + r21) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = 0x1903;
            }
            else {
                    r3 = 0x1906;
            }
    }
    r23 = (int64_t *)&r20->_lumaTexture;
    r0 = sub_100a3dd18(r26, r1, r22, r3, r24, r25, r3, 0x0, r23);
    if (r0 == 0x0) goto loc_100b480a8;

loc_100b47fac:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (*qword_1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l22;

loc_100b48008:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b482f4;

loc_100b482f4:
    objc_msgSend(@class(FBAdLogger), r1);
    return;

.l22:
    return;

loc_100b480a8:
    r27 = *r23;
    if (*qword_1011dcf58 != -0x1) {
            dispatch_once_f(0x1011dcf58, 0x1011c5fb0, 0x100a3d91c);
    }
    r27 = qword_1011dcf60(r27);
    r0 = *r23;
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
    (*0x1011dd770)(0x84c1);
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
    r21 = (int64_t *)&r20->_chromaTexture;
    r0 = sub_100a3dd18(r26, r1, r22, r3, r4, SAR(0x8227, 0x1), r3, 0x1, r21);
    if (r0 == 0x0) goto loc_100b48230;

loc_100b481b4:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (*qword_1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) goto loc_100b482d4;
    goto .l22;

loc_100b482d4:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b482f4;

loc_100b48230:
    r22 = *r21;
    if (*qword_1011dcf58 != -0x1) {
            dispatch_once_f(0x1011dcf58, 0x1011c5fb0, 0x100a3d91c);
    }
    r26 = var_54;
    r22 = qword_1011dcf60(r22);
    r24 = *r21;
    if (*qword_1011dcf68 != -0x1) {
            dispatch_once_f(0x1011dcf68, 0x1011c5fc8, 0x100a3d91c);
    }
    r24 = qword_1011dcf70(r24);
    if (*qword_1011dd758 != -0x1) {
            dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
    }
    qword_1011dd760(r22, r24);
    sub_100a3efa8(0x2801);
    sub_100a3efa8(0x2800);
    sub_100a3ef44(0x2802);
    sub_100a3ef44(0x2803);
    r2 = var_58;
    goto loc_100b47e40;

loc_100b47e40:
    [r20 _drawFrame:r2 preventPlayback:r26];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l22;

loc_100b47e74:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b482f4;

loc_100b4802c:
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerGLLayer.mm" lineNumber:0xae format:@"%@ No video texture cache"];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l22;

loc_100b48084:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b482f4;

loc_100b47e3c:
    r2 = 0x0;
    goto loc_100b47e40;
}

-(void)setDisplayLayerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_displayLayerDelegate, arg2);
    return;
}

@end