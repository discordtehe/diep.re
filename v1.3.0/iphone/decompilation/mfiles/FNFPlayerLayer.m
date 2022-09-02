@implementation FNFPlayerLayer

-(void *)initWithConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [[FNFRenderingThread renderingThreadAllowingAppInactivePlayback:*(int8_t *)(r2 + 0x3)] retain];
    r22 = [[FNFPlayerFramesBuffer alloc] initWithBufferSize:*(int32_t *)(r2 + 0x4)];
    r19 = [self initWithConfig:&var_50 renderingThread:r21 framesBuffer:r22];
    [r22 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r22 = objc_loadWeakRetained((int64_t *)&self->_displayEngineDelegate);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_decompressionSession));
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)_requestResizeDecompressionSession {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)setRenderingThreadPriority:(double)arg2 {
    [self->_renderingThread setPriority:arg2];
    return;
}

-(void)dispatchSyncOnRenderingThread:(void *)arg2 {
    [self->_renderingThread dispatchSync:arg2];
    return;
}

-(void)dispatchAsyncOnRenderingThread:(void *)arg2 {
    [self->_renderingThread performBlock:arg2];
    return;
}

-(void)_applicationDidBecomeActive:(void *)arg2 {
    [self didBecomeActive];
    return;
}

-(void *)initWithConfig:(union ?)arg2 renderingThread:(void *)arg3 framesBuffer:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
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
    r29 = &saved_fp;
    r24 = r4;
    r23 = r3;
    r20 = r2;
    r19 = [r3 retain];
    r21 = [r24 retain];
    r0 = [[&var_88 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_videoGravity, **_AVLayerVideoGravityResizeAspect);
            *(int128_t *)(int64_t *)&r22->_presentationSize = *(int128_t *)*_CGSizeZero;
            *(int8_t *)(int64_t *)&r22->_isReadyForDisplay = 0x0;
            objc_storeStrong((int64_t *)&r22->_framesBuffer, r24);
            *(int32_t *)(int64_t *)&r22->_sampleBufferRequestThreshold = [r22->_framesBuffer sampleBufferRequestThreshold];
            *(int32_t *)(int64_t *)&r22->_sampleBufferRequestThresholdVP9 = *(int32_t *)(r20 + 0xc);
            r0 = [UIScreen mainScreen];
            r29 = r29;
            r0 = [r0 retain];
            [r0 scale];
            [r22 setContentsScale:r2];
            [r0 release];
            [r22 setOpaque:0x1];
            if (*qword_1011dd808 != -0x1) {
                    dispatch_once_f(0x1011dd808, 0x1011c6bc8, 0x100a3d91c);
            }
            r24 = [**qword_1011dd810 retain];
            r0 = @(NO);
            r29 = r29;
            r25 = [r0 retain];
            if (*qword_1011dd818 != -0x1) {
                    dispatch_once_f(0x1011dd818, 0x1011c6be0, 0x100a3d91c);
            }
            r29 = r29;
            r26 = [**qword_1011dd820 retain];
            if (*qword_1011dd828 != -0x1) {
                    dispatch_once_f(0x1011dd828, 0x1011c6bf8, 0x100a3d91c);
            }
            r27 = [**qword_1011dd830 retain];
            r28 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2] retain];
            [r22 setDrawableProperties:r28];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            r22->_preferredConversion = 0x1;
            r0 = [FNFDefaultGLRenderer new];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_defaultRenderer));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            [r22 _setRenderer:*(r22 + r24)];
            r8 = *(int8_t *)(r20 + 0x3);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_allowPlayWhenInactive));
            *(int8_t *)(r22 + r25) = r8;
            *(int8_t *)(int64_t *)&r22->_blockPlayWhenNotActive = *(int8_t *)(r20 + 0x1);
            *(int8_t *)(int64_t *)&r22->_displayFirstFrame = *(int8_t *)(r20 + 0x11);
            r24 = (int64_t *)&r22->_renderingThread;
            objc_storeStrong(r24, r23);
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r8 = &@selector(wkWebView);
            if (objc_msgSend(r0, *(r8 + 0xc8)) == 0x0) {
                    r8 = &@selector(wkWebView);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_appActive));
            *(int8_t *)(r22 + r26) = r8;
            [r23 release];
            if (*(int8_t *)(r22 + r26) != 0x0 || *(int8_t *)(r22 + r25) != 0x0) {
                    objc_initWeak(&stack[-160], r22);
                    objc_copyWeak(&var_B8 + 0x20, &stack[-160]);
                    [r22 dispatchAsyncOnRenderingThread:&var_B8];
                    objc_destroyWeak(&var_B8 + 0x20);
                    objc_destroyWeak(&stack[-160]);
            }
            *(int8_t *)(int64_t *)&r22->_enableDisplaylinkControlOnRenderingThread = *(int8_t *)(r20 + 0x10);
            if (*qword_1011dcd68 != -0x1) {
                    dispatch_once_f(0x1011dcd68, 0x1011c5cf8, 0x100a3d91c);
            }
            r0 = *0x1011dcd70;
            r0 = [r0 displayLinkWithTarget:r22 selector:@selector(_displayLinkCallback:)];
            r0 = [r0 retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            [*r24 addDisplayLink:*(r22 + r23)];
            [*(r22 + r23) setFrameInterval:0x1];
            [*(r22 + r23) setPaused:0x1];
            r0 = sub_100b37780();
            r29 = r29;
            dispatch_queue_set_specific([r0 retain], sub_100b37780(), sub_100b37780(), 0x0);
            [r23 release];
            if (*(int8_t *)(r22 + r25) == 0x0) {
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r22 selector:@selector(_applicationDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
                    [r0 release];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r22 selector:@selector(_applicationWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
                    [r0 release];
            }
            *(int8_t *)(int64_t *)&r22->_optimizeMemory = *(int8_t *)r20;
            *(int8_t *)(int64_t *)&r22->_storeLastDisplayedSampleBuffer = *(int8_t *)(r20 + 0x2);
            *(int32_t *)(int64_t *)&r22->_numOfVP9DecoderThreads = *(int32_t *)(r20 + 0x8);
            r22->_decompressionSessionFactory = *(r20 + 0x18);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)didBecomeActive {
    *(int8_t *)(int64_t *)&self->_appActive = 0x1;
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    [self dispatchAsyncOnRenderingThread:&var_40];
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)willResignActive {
    *(int8_t *)(int64_t *)&self->_appActive = 0x0;
    return;
}

-(void)_applicationWillResignActive:(void *)arg2 {
    [self willResignActive];
    return;
}

-(void)setRenderer:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r20;
    r20 = [r20 retain];
    [self dispatchAsyncOnRenderingThread:&var_58];
    [var_38 release];
    [r20 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)_setRenderer:(void *)arg2 {
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
    r0 = *r23;
    if (r0 != r21) {
            *(int8_t *)(int64_t *)&r20->_shouldRenderWhilePlaybackPaused = [r0 shouldRenderWhilePlaybackPaused];
            *(int8_t *)(int64_t *)&r20->_needsToSetupGLState = 0x1;
            objc_storeStrong((int64_t *)&r20->_detachedRenderer, r22);
            *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)pause:(int)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesBuffer));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderer));
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_shouldRenderWhilePlaybackPaused));
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x173 format:@"%@ pausing for reason %d -- b:%p %@ shouldRenderWhilePlaybackPaused=%d"];
    r0 = [FNFIdleTimeoutManager sharedInstance];
    r0 = [r0 retain];
    [r0 removeNonIdlingClient:r19];
    [r0 release];
    if (arg2 == 0x2 || *(int8_t *)(r19 + r22) == 0x0) {
            [r19 _pauseDisplayLink:0x1];
    }
    return;
}

-(void)resume {
    r31 = r31 - 0x70;
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
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x15a format:@"%@ resuming display link"];
    if ([r19 _preventPlayback] != 0x0 && *(int8_t *)(int64_t *)&r19->_blockPlayWhenNotActive != 0x0) {
            var_38 = **___stack_chk_guard;
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [NSNumber numberWithInteger:[r0 applicationState]];
            r0 = [r0 retain];
            r23 = [[r0 stringValue] retain];
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
            r21 = [[NSError errorWithDomain:@"FNFGLRendering" code:0x29a userInfo:r24] retain];
            [r19 _handleError:r21];
            [r21 release];
            [r24 release];
            [r23 release];
            [r0 release];
            [r20 release];
            if (**___stack_chk_guard != var_38) {
                    __stack_chk_fail();
            }
    }
    else {
            var_38 = **___stack_chk_guard;
            r0 = [FNFIdleTimeoutManager sharedInstance];
            r0 = [r0 retain];
            [r0 addNonIdlingClient:r19];
            [r0 release];
            if (**___stack_chk_guard == var_38) {
                    [r19 _pauseDisplayLink:0x0];
            }
            else {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)pauseDisplayLink {
    [self _pauseDisplayLink:0x1];
    return;
}

-(void)_pauseDisplayLink:(bool)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_enableDisplaylinkControlOnRenderingThread != 0x0) {
            objc_initWeak(r29 - 0x28, r19);
            objc_copyWeak(&var_58 + 0x20, r29 - 0x28);
            [r19 dispatchAsyncOnRenderingThread:&var_58];
            objc_destroyWeak(&var_58 + 0x20);
            objc_destroyWeak(r29 - 0x28);
    }
    else {
            [r19->_displayLink setPaused:r20];
    }
    return;
}

-(void)layoutSublayers {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&saved_fp - 0x20 super] layoutSublayers];
    if (*(int8_t *)(int64_t *)&r19->_optimizeMemory != 0x0) {
            [r19 _requestResizeDecompressionSession];
    }
    objc_initWeak(&stack[-56], r19);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r19 dispatchAsyncOnRenderingThread:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)_displayLinkCallback:(void *)arg2 {
    [arg2 retain];
    r21 = objc_autoreleasePoolPush();
    [self _tryToMoveToNextFrameWithDrawingOn:0x1 isFirstFrame:0x0];
    objc_autoreleasePoolPop(r21);
    [r20 release];
    return;
}

-(void)requestLastDisplayedSampleBuffer:(void *)arg2 onQueue:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            objc_initWeak(r29 - 0x28, r21);
            objc_copyWeak(&var_60 + 0x30, r29 - 0x28);
            var_40 = [r19 retain];
            var_38 = [r20 retain];
            [r21 dispatchAsyncOnRenderingThread:&var_60];
            [var_38 release];
            [var_40 release];
            objc_destroyWeak(&var_60 + 0x30);
            objc_destroyWeak(r29 - 0x28);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)_requestLastDisplayedSampleBuffer:(void *)arg2 onQueue:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r21 = self->_lastDisplayedSampleBuffer;
    r19 = [arg3 retain];
    if (*qword_1011dd068 != -0x1) {
            dispatch_once_f(0x1011dd068, 0x1011c6130, 0x100a3d91c);
    }
    qword_1011dd070(r21);
    var_30 = r20;
    [r20 retain];
    dispatch_async(r19, &var_50);
    [r19 release];
    [var_30 release];
    [r20 release];
    return;
}

-(bool)flushDisplayReadySampleBuffers {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = self->_displayLink;
    r0 = [r0 isPaused];
    if (r0 != 0x0) {
            objc_initWeak(r29 - 0x18, r19);
            objc_copyWeak(&var_40 + 0x20, r29 - 0x18);
            [r19 dispatchAsyncOnRenderingThread:&var_40];
            objc_destroyWeak(&var_40 + 0x20);
            objc_destroyWeak(r29 - 0x18);
            r0 = 0x1;
    }
    return r0;
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

-(void)_setupBuffers {
    r31 = r31 - 0x90;
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
    [self bounds];
    if (d2 >= 0x3ff0000000000000) {
            asm { fccmp      d3, d0, #0x8, pl };
    }
    if (!CPU_FLAGS & NS) {
            var_38 = **___stack_chk_guard;
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x26a format:@"Attempt to set up buffers when player size is zero: (%.0lf, %.0lf)"];
            if (**___stack_chk_guard == var_38) {
                    [r19 _destroyBuffers];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            sub_100a3eb4c();
            r20 = (int64_t *)&r19->_frameBufferHandle;
            sub_100a3ed10(r20);
            sub_100a3ed6c(*(int32_t *)r20);
            r21 = (int64_t *)&r19->_colorBufferHandle;
            sub_100a3eb98(r21);
            sub_100a3ebf4(*(int32_t *)r21);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            if (([*(r19 + r22) renderbufferStorage:0x8d41 fromDrawable:r19] & 0x1) == 0x0) {
                    [FBAdLogger logAtLevel:0x2 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x275 format:@"%@ Failure getting renderbuffer storage with context: %@"];
                    r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
                    r0 = [NSError errorWithDomain:@"FNFGLRendering" code:0xd0f userInfo:r23];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 _handleError:r22];
                    [r22 release];
                    [r23 release];
            }
            sub_100a3ecac(0x8d42, (int64_t *)&r19->_backingWidth);
            sub_100a3ecac(0x8d43, (int64_t *)&r19->_backingHeight);
            sub_100a3ee70(*(int32_t *)r21);
            r0 = sub_100a3edc8();
            if (r0 != 0x8cd5) {
                    [FBAdLogger logAtLevel:0x2 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x283 format:@"%@ Failed to make complete framebuffer object: %u, colorbuffer: %u, status: %d"];
                    r20 = @class(NSError);
                    asm { sxtw       x21, w22 };
                    r22 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
                    r20 = [[r20 errorWithDomain:@"FNFGLRendering" code:r21 userInfo:r22] retain];
                    [r19 _handleError:r20];
                    [r20 release];
                    [r22 release];
            }
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)_setupGL {
    r31 = r31 - 0x80;
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
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r0 = [r0 alloc];
    r0 = [r0 initWithAPI:0x2];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    *(int8_t *)(int64_t *)&r19->_glInitialized = 0x1;
    if (*(r19 + r21) == 0x0) goto loc_100b4ba4c;

loc_100b4b980:
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r0 = [r0 setCurrentContext:r2];
    r1 = *(r19 + r21);
    if (r1 == 0x0 || r0 == 0x0) goto loc_100b4ba4c;

loc_100b4b9b0:
    r2 = (int64_t *)&r19->_videoTextureCache;
    if (*r2 == 0x0) goto loc_100b4bb6c;

loc_100b4b9c4:
    *(int8_t *)(int64_t *)&r19->_supportOpenGLTextureRg = 0x1;
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            if (**___stack_chk_guard == **___stack_chk_guard) {
                    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x25d format:@"Error setting EAGLContext to nil"];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    return;

loc_100b4bb6c:
    r0 = **_kCFAllocatorDefault;
    r0 = sub_100a3dc44(r0, r1, r2);
    if (r0 == 0x0) goto loc_100b4b9c4;

loc_100b4bb80:
    r21 = r0;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x252 format:@"%@ Error at fnf_dfl_CVOpenGLESTextureCacheCreate %d"];
    r20 = @class(NSError);
    asm { sxtw       x21, w21 };
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r20 = [[r20 errorWithDomain:@"FNFGLRendering" code:r21 userInfo:r22] retain];
    [r19 _handleError:r20];
    [r20 release];
    r0 = r22;
    goto loc_100b4bb38;

loc_100b4bb38:
    [r0 release];
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100b4ba4c:
    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x247 format:@"Error setting EAGLContext"];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x248 format:@"%@ Error initializing openGL"];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"FNFGLRendering" code:0x15b2 userInfo:r21] retain];
    [r19 _handleError:r20];
    [r20 release];
    r0 = r21;
    goto loc_100b4bb38;
}

-(void)_tryToMoveToNextFrameWithDrawingOn:(bool)arg2 isFirstFrame:(bool)arg3 {
    r31 = r31 - 0xc0;
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
    r22 = arg3;
    r21 = arg2;
    r19 = self;
    if (([self _preventPlayback] & 0x1) != 0x0) goto .l3;

loc_100b4b3b8:
    if (*(int8_t *)(int64_t *)&r19->_glInitialized == 0x0) {
            [r19 _setupGL];
    }
    [r19 frame];
    r24 = (int64_t *)&r19->_layerSize;
    if (d2 == *(int128_t *)r24) {
            asm { fccmp      d3, d1, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(int64_t *)&r19->_frameBufferHandle == 0x0 || *(int32_t *)(int64_t *)&r19->_colorBufferHandle == 0x0) goto loc_100b4b42c;

loc_100b4b4ec:
    r20 = r19->_controlTimeBase;
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r20);
    r0 = objc_loadWeakRetained((int64_t *)&r19->_displayEngineDelegate);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_framesBuffer));
    r23 = *(r19 + r24);
    r0 = [r0 retain];
    r20 = r0;
    var_70 = r0;
    r0 = [r23 findNextFrame:&var_B0 withDrawingOn:r21 isFirstFrame:r22 completion:&var_90];
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    r22 = r0;
                    if (*(int8_t *)(int64_t *)&r19->_storeLastDisplayedSampleBuffer != 0x0) {
                            CVPixelBufferRelease(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_lastDisplayedSampleBuffer))));
                            *(r19 + r21) = r22;
                            if (*qword_1011dd068 != -0x1) {
                                    dispatch_once_f(0x1011dd068, 0x1011c6130, 0x100a3d91c);
                            }
                            qword_1011dd070(r22);
                    }
                    [r19 displayPixelBuffer:r22];
                    [*(r19 + r24) setLastFrameDisplayed];
                    CVBufferRelease(r22);
            }
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_layoutChanged != 0x0 || *(int8_t *)(int64_t *)&r19->_shouldRenderWhilePlaybackPaused != 0x0) {
                    if (r19->_lumaTexture != 0x0 && r19->_chromaTexture != 0x0) {
                            if (*0x1011dd528 != -0x1) {
                                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
                            }
                            if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                                    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x20e format:@"Error setting EAGLContext"];
                            }
                            [r19 _drawFrame:0x0];
                            if (*0x1011dd528 != -0x1) {
                                    dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
                            }
                            if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
                                    [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x215 format:@"Error setting EAGLContext to nil"];
                            }
                    }
            }
    }
    if ([*(r19 + r24) shouldRequestData] != 0x0) {
            [r19 _requestData];
    }
    [*(r19 + r24) advanceFrame];
    [var_70 release];
    [r20 release];
    return;

.l3:
    return;

loc_100b4b42c:
    *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x1;
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if ([*0x1011dd530 setCurrentContext:r2] == 0x0) goto .l3;

loc_100b4b470:
    [r19 frame];
    *(int128_t *)r24 = d2;
    *(int128_t *)(r24 + 0x8) = d3;
    [r19 _destroyBuffers];
    [r19 _setupBuffers];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x1e8 format:@"Error setting EAGLContext to nil"];
    }
    goto loc_100b4b4ec;
}

-(void)_releaseTimeBase {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FNFIdleTimeoutManager sharedInstance];
    r0 = [r0 retain];
    [r0 removeNonIdlingClient:r19];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimeBase));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)invalidate {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self _releaseTimeBase];
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)_clearBuffers {
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastDisplayedSampleBuffer));
    r20 = *(self + r21);
    if (*qword_1011dd058 != -0x1) {
            dispatch_once_f(0x1011dd058, 0x1011c6118, 0x100a3d91c);
    }
    qword_1011dd060(r20);
    *(r19 + r21) = 0x0;
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    r0 = *0x1011dd530;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    if (([r0 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x2b2 format:@"Error setting EAGLContext"];
    }
    [r19 _cleanUpTextures];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r26) = 0x0;
    }
    [r19->_framesBuffer clear];
    [r19 _destroyBuffers];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x2c2 format:@"Error setting EAGLContext to nil"];
    }
    r0 = *(r19 + r21);
    *(r19 + r21) = 0x0;
    [r0 release];
    return;
}

-(void)dealloc {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x2e8 format:@"%@ deallocing FNFPlayerLayer"];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)player {
    return 0x0;
}

-(bool)flushIfError {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_layerError));
    r8 = *(r0 + r20);
    if (r8 != 0x0) {
            r19 = r0;
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x3a3 format:@"%@ setting layer error to nil prior to flush: %@"];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
            [r19 flush];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    return;
}

-(bool)allowRenderingWhileApplicationInactive {
    r0 = *(int8_t *)(int64_t *)&self->_allowPlayWhenInactive;
    return r0;
}

-(void)_drawFrame:(bool)arg2 {
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
    r20 = arg2;
    r19 = self;
    if ([self _preventPlayback] == 0x0) goto loc_100b4ccd0;

loc_100b4ccc8:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    return;

.l8:
    return;

loc_100b4ccd0:
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
    if (*(int8_t *)(r19 + r21) == 0x0) goto loc_100b4cd48;

loc_100b4cd18:
    if (*(int32_t *)(r19 + r24) == 0x0) goto .l8;

loc_100b4cd20:
    r27 = (int64_t *)&r19->_renderer;
    if (([*r27 setupGLState] & 0x1) == 0x0) goto loc_100b4ccc8;

loc_100b4cd40:
    *(int8_t *)(r19 + r21) = 0x0;
    goto loc_100b4cd54;

loc_100b4cd54:
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
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x38f format:@"%@ failed to draw frame using renderer %@"];
    }
    r0 = *(int32_t *)(int64_t *)&r19->_colorBufferHandle;
    if (r0 != 0x0) {
            sub_100a3ebf4(r0);
            [r19->_context presentRenderbuffer:0x8d41];
            *(int8_t *)(r19 + r26) = 0x0;
    }
    if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay == 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x399 format:@"%@ setting ready for display"];
            [r19 _updateReadyForDisplay:0x1];
    }
    return;

loc_100b4cd48:
    r27 = (int64_t *)&r19->_renderer;
    goto loc_100b4cd54;
}

-(bool)isReadyForDisplay {
    r0 = *(int8_t *)(int64_t *)&self->_isReadyForDisplay;
    return r0;
}

-(void *)error {
    r0 = self->_layerError;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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

-(void)setControlTimebase:(struct OpaqueCMTimebase *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimeBase));
    r19 = *(r0 + r22);
    if (r19 != r2) {
            CFRetain(r2);
            *(r21 + r22) = r2;
            if (r19 != 0x0) {
                    CFRelease(r19);
            }
    }
    return;
}

-(struct OpaqueCMTimebase *)controlTimebase {
    r0 = self->_controlTimeBase;
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

-(long long)status {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_layerError != 0x0) {
            asm { cinc       x0, x8, ne };
    }
    return r0;
}

-(void)stopRequestingMediaData {
    *(int8_t *)(int64_t *)&self->_requestingData = 0x0;
    return;
}

-(void)displayPixelBuffer:(struct __CVBuffer *)arg2 {
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
    r21 = arg2;
    r20 = self;
    [self->_renderer processPixelBuffer:r2];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) {
            r3 = "Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm";
            [FBAdLogger logAtLevel:0x3 file:r3 lineNumber:0x2f7 format:@"Error setting EAGLContext"];
    }
    if (r21 == 0x0) goto loc_100b4c6d8;

loc_100b4c4d4:
    if (*qword_1011dcf88 != -0x1) {
            dispatch_once_f(0x1011dcf88, 0x1011c5ff8, 0x100a3d91c);
    }
    r23 = qword_1011dcf90(r21);
    if (*qword_1011dcf98 != -0x1) {
            dispatch_once_f(0x1011dcf98, 0x1011c6010, 0x100a3d91c);
    }
    r24 = qword_1011dcfa0(r21);
    asm { scvtf      d0, w24 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_presentationSize));
    r8 = r20 + r8;
    d2 = *(r8 + 0x8);
    asm { scvtf      d1, w23 };
    if (d2 == d0 && *r8 == d1) {
            r22 = 0x0;
    }
    else {
            *(int128_t *)r8 = d1;
            *(int128_t *)(r8 + 0x8) = d0;
            r22 = 0x1;
    }
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_videoTextureCache));
    if (*(r20 + r27) == 0x0) goto loc_100b4c73c;

loc_100b4c560:
    [r20 _cleanUpTextures];
    if (*(int8_t *)(int64_t *)&r20->_layoutChanged != 0x0) {
            if (*qword_1011dcff8 != -0x1) {
                    dispatch_once_f(0x1011dcff8, 0x1011c6088, 0x100a3d91c);
            }
            r25 = sub_100a3dde4(r21, **0x1011dd000);
            if (*qword_1011dcfe8 != -0x1) {
                    dispatch_once_f(0x1011dcfe8, 0x1011c6070, 0x100a3d91c);
            }
            r8 = *qword_1011dcff0;
            r8 = *r8;
            if (r25 == r8) {
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r20->_preferredConversion = r8;
    }
    var_54 = r22;
    if (*qword_1011dd768 != -0x1) {
            dispatch_once_f(0x1011dd768, 0x1011c6ad8, 0x100a3d91c);
    }
    qword_1011dd770(0x84c0);
    r8 = *_kCFAllocatorDefault;
    r1 = *(r20 + r27);
    r25 = *r8;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_supportOpenGLTextureRg));
    if (*(int8_t *)(r20 + r28) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = 0x1903;
            }
            else {
                    r3 = 0x1906;
            }
    }
    r22 = (int64_t *)&r20->_lumaTexture;
    r0 = sub_100a3dd18(r25, r1, r21, r3, r23, r24, r3, 0x0, r22);
    if (r0 == 0x0) goto loc_100b4c7b4;

loc_100b4c658:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (*qword_1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l19;

loc_100b4c6b4:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4ca04;

loc_100b4ca04:
    objc_msgSend(@class(FBAdLogger), r1);
    return;

.l19:
    return;

loc_100b4c7b4:
    r26 = *r22;
    if (*qword_1011dcf58 != -0x1) {
            dispatch_once_f(0x1011dcf58, 0x1011c5fb0, 0x100a3d91c);
    }
    r26 = qword_1011dcf60(r26);
    r0 = *r22;
    if (*qword_1011dcf68 != -0x1) {
            dispatch_once_f(0x1011dcf68, 0x1011c5fc8, 0x100a3d91c);
    }
    r3 = qword_1011dcf70();
    if (*qword_1011dd758 != -0x1) {
            dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
            r3 = r3;
    }
    qword_1011dd760(r26, r3);
    sub_100a3efa8(0x2801);
    sub_100a3efa8(0x2800);
    sub_100a3ef44(0x2802);
    sub_100a3ef44(0x2803);
    if (*qword_1011dd768 != -0x1) {
            dispatch_once_f(0x1011dd768, 0x1011c6ad8, 0x100a3d91c);
    }
    (*0x1011dd770)(0x84c1);
    r1 = *(r20 + r27);
    if (*(int8_t *)(r20 + r28) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = 0x8227;
            }
            else {
                    r3 = 0x190a;
            }
    }
    if (r23 < 0x0) {
            asm { cinc       w8, w23, lt };
    }
    r4 = SAR(0x8227, 0x1);
    if (r24 < 0x0) {
            asm { cinc       w8, w24, lt };
    }
    r22 = (int64_t *)&r20->_chromaTexture;
    r0 = sub_100a3dd18(r25, r1, r21, r3, r4, SAR(0x8227, 0x1), r3, 0x1, r22);
    if (r0 == 0x0) goto loc_100b4c944;

loc_100b4c8c0:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (*qword_1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) == 0x0) goto loc_100b4c9e4;
    goto .l19;

loc_100b4c9e4:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4ca04;

loc_100b4c944:
    r21 = *r22;
    if (*qword_1011dcf58 != -0x1) {
            dispatch_once_f(0x1011dcf58, 0x1011c5fb0, 0x100a3d91c);
    }
    r21 = qword_1011dcf60(r21);
    r23 = *r22;
    if (*qword_1011dcf68 != -0x1) {
            dispatch_once_f(0x1011dcf68, 0x1011c5fc8, 0x100a3d91c);
    }
    r22 = var_54;
    r23 = qword_1011dcf70(r23);
    if (*qword_1011dd758 != -0x1) {
            dispatch_once_f(0x1011dd758, 0x1011c6ac0, 0x100a3d91c);
    }
    qword_1011dd760(r21, r23);
    sub_100a3efa8(0x2801);
    sub_100a3efa8(0x2800);
    sub_100a3ef44(0x2802);
    sub_100a3ef44(0x2803);
    goto loc_100b4c6dc;

loc_100b4c6dc:
    [r20 _drawFrame:r22];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l19;

loc_100b4c710:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4ca04;

loc_100b4c73c:
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x306 format:@"%@ No video texture cache"];
    if (*0x1011dd528 != -0x1) {
            dispatch_once_f(0x1011dd528, 0x1011c6778, 0x100a3d91c);
    }
    if (([*0x1011dd530 setCurrentContext:r2] & 0x1) != 0x0) goto .l19;

loc_100b4c790:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b4ca04;

loc_100b4c6d8:
    r22 = 0x0;
    goto loc_100b4c6dc;
}

-(void)flushAndRemoveImage {
    [self dispatchSyncOnRenderingThread:&var_38];
    [self flush];
    return;
}

-(bool)seekFrameUpdatesFinished {
    r0 = self->_framesBuffer;
    r0 = [r0 seekFrameUpdatesFinished];
    return r0;
}

-(void)setNeedsDisplayFrame {
    [self layoutSublayers];
    return;
}

-(void)_resetGLContext {
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
    if ([self _preventPlayback] != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x3fe format:@"%@ skipping remove image since we're not in active state"];
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

-(void)requestMediaDataWhenReadyOnQueue:(void *)arg2 usingBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_dataQueue));
    r19 = [arg3 retain];
    r22 = *(self + r23);
    *(self + r23) = r21;
    r21 = [r21 retain];
    [r22 release];
    r22 = objc_retainBlock(r19);
    [r19 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataBlock));
    r0 = *(self + r8);
    *(self + r8) = r22;
    [r0 release];
    *(int8_t *)(int64_t *)&self->_requestingData = 0x1;
    [self _requestData];
    [r21 release];
    return;
}

-(void)flush {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_decompressionSession));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 closeSession];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_previousDecompressionSession));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 closeSession];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
    }
    r20 = [[r19->_framesBuffer prepareFlush] retain];
    [r19 dispatchAsyncOnRenderingThread:r20];
    [r20 release];
    return;
}

-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg2 presentationTimeStamp:(union ?)arg3 presentationDuration:(union ?)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r19 = self;
    r0 = self->_framesBuffer;
    r0 = [r0 addBuffer:arg2 presentationTimeStamp:&var_40];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 dispatchAsyncOnRenderingThread:r21];
    }
    [r19 _displayFirstFrameWithPresentationTimeStamp:&var_60];
    [r21 release];
    return;
}

-(void)yieldDecompressedBuffer:(struct __CVBuffer *)arg2 presentationTimeStamp:(union ?)arg3 presentationDuration:(union ?)arg4 iFrame:(unsigned long long)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r5;
    r22 = r3;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_framesBuffer));
    r0 = *(self + r23);
    r0 = [r0 addBuffer:arg2 presentationTimeStamp:&var_50 iFrameEnqueued:r5];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 dispatchAsyncOnRenderingThread:r20];
    }
    [r19 _displayFirstFrameWithPresentationTimeStamp:&var_70];
    if (r19->_previousDecompressionSession != 0x0 && [*(r19 + r23) isFrameOnClose:r21] != 0x0) {
            r0 = sub_100b37780();
            r0 = [r0 retain];
            dispatch_async(r0, &var_98);
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)_displayFirstFrameWithPresentationTimeStamp:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_displayFirstFrame != 0x0) {
            [r0 dispatchAsyncOnRenderingThread:&var_28];
    }
    return;
}

-(struct CGSize)_decodeSizeForVideoSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    v8 = v1;
    v9 = v0;
    if (*(int8_t *)(int64_t *)&r0->_optimizeMemory != 0x0) {
            r19 = r0;
            r20 = @selector(bounds);
            asm { fdiv       d12, d9, d8 };
            objc_msgSend(r0, r20);
            objc_msgSend(r19, r20);
            asm { fdiv       d13, d10, d3 };
            objc_msgSend(r19, r20);
            if (d12 > d13) {
                    r0 = [r19 contentsScale];
                    d0 = d11 * d0;
                    if (d0 < d8) {
                            [r19 bounds];
                            objc_msgSend(r19, r21);
                            d0 = d0 * d10;
                            asm { fdiv       d0, d0, d8 };
                            asm { frintp     d9, d0 };
                            objc_msgSend(r19, r20);
                            v8 = v3;
                            r0 = objc_msgSend(r19, r21);
                    }
            }
            else {
                    r0 = [r19 contentsScale];
                    d0 = d10 * d0;
                    if (d0 < d9) {
                            [r19 bounds];
                            objc_msgSend(r19, r21);
                            d0 = d0 * d10;
                            asm { fdiv       d0, d0, d9 };
                            asm { frintp     d8, d0 };
                            objc_msgSend(r19, r20);
                            v9 = v2;
                            r0 = objc_msgSend(r19, r21);
                    }
            }
    }
    return r0;
}

-(void)_requestData {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = self;
    r0 = self->_dataQueue;
    if (r0 != 0x0) {
            dispatch_async(r0, &var_28);
    }
    return;
}

-(bool)isReadyForMoreMediaData {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->_layerError == 0x0) {
            r19 = r0;
            if (([r0 _preventPlayback] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = r19->_framesBuffer;
                    r0 = [r0 isFull];
                    r0 = r0 ^ 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)handleDecompressionSessionError:(void *)arg2 {
    [self _handleError:arg2];
    return;
}

-(void)handleDecompressionSessionError:(void *)arg2 ifIFrameStillValid:(unsigned long long)arg3 {
    [self _handleError:arg2 ifIFrameStillValid:arg3];
    return;
}

-(void)_handleError:(void *)arg2 ifIFrameStillValid:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20->_framesBuffer doesIFrameBelongsToDecompressionSession:arg3] != 0x0) {
            [r20 _handleError:r19];
    }
    [r19 release];
    return;
}

-(void)_handleError:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = objc_loadWeakRetained((int64_t *)&self->_displayEngineDelegate);
    r22 = [sub_100b37780() retain];
    var_30 = r20;
    [r20 retain];
    [r21 retain];
    dispatch_async(r22, &var_58);
    [r22 release];
    [r21 release];
    [var_30 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg2 attributes:(unsigned int)arg3 {
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
    r29 = &saved_fp;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if (([self _preventPlayback] & 0x1) == 0x0) {
            if (*qword_1011dd308 != -0x1) {
                    dispatch_once_f(0x1011dd308, 0x1011c6490, 0x100a3d91c);
            }
            r0 = qword_1011dd310(r19);
            r22 = r0;
            sub_100a3e8f4(r0);
            v9 = v0;
            v8 = v1;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_requestedResizeDecompressionSession));
            r23 = *(int8_t *)(r20 + r24);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_decompressionSession));
            r0 = *(r20 + r26);
            if (r0 != 0x0) {
                    if (CMFormatDescriptionEqual([r0 format], r22) == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r28 = 0x1;
                            }
                    }
                    r8 = &@selector(clearColorsForFlag:context:);
            }
            else {
                    r8 = 0x101174000;
                    r28 = 0x0;
            }
            if (r23 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            if ((r21 & 0x1) != 0x0 && (r8 | r28) != 0x0) {
                    r23 = (int64_t *)&r20->_previousDecompressionSession;
                    r0 = *r23;
                    if (r0 != 0x0) {
                            [r0 closeSession];
                            r0 = *r23;
                            *r23 = 0x0;
                            [r0 release];
                    }
                    objc_storeStrong(r23, *(r20 + r26));
                    [r20->_framesBuffer setFrameOnClose];
                    r0 = *(r20 + r26);
                    *(r20 + r26) = 0x0;
                    [r0 release];
                    *(int8_t *)(r20 + r24) = 0x0;
            }
            else {
                    if (r28 != 0x0) {
                            r23 = @class(FBAdLogger);
                            [*(r20 + r26) inputSize];
                            [*(r20 + r26) inputSize];
                            var_B0 = r20;
                            [r23 logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x4c5 format:@"%@ new video size but not recreating decompression session:%p existingSize:<%f,%f>, newSize:<%f,%f>, isKeyframe:%d"];
                    }
            }
            if (*(r20 + r26) != 0x0) {
                    r21 = (int64_t *)&r20->_framesBuffer;
            }
            else {
                    if ((r28 & 0x1) == 0x0) {
                            [r20->_framesBuffer resetDecompressionSessionIndex];
                    }
                    [r20 _decodeSizeForVideoSize:r2];
                    asm { ubfx       w23, w21, #0x1, #0x1 };
                    r8 = 0x10117467c;
                    if ((r21 & 0x2) == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r8 = 0x10117467c;
                            }
                            else {
                                    r8 = 0x101174678;
                            }
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d9, d0, d9, eq };
                    }
                    r7 = *(int32_t *)(r20 + sign_extend_64(*(int32_t *)r8));
                    r0 = r20->_decompressionSessionFactory;
                    r5 = *(int32_t *)(int64_t *)&r20->_numOfVP9DecoderThreads;
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d8, d1, d8, eq };
                    }
                    r21 = (int64_t *)&r20->_framesBuffer;
                    r0 = [r0 decompressionSessionWithDecoderType:r23 delegate:r20 sampleBufferFormatDescription:r22 videoSize:r5 numOfDecoderThreads:*r21 framesBuffer:r7 sampleBufferRequestThreshold:var_B0];
                    r0 = [r0 retain];
                    r8 = *(r20 + r26);
                    *(r20 + r26) = r0;
                    [r8 release];
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFNonStandardPlayerLayer/FNFNonStandardPlayerLayer/FNFPlayerLayer.mm" lineNumber:0x4e9 format:@"%@ created decompression session type %lu with width %f, height %f"];
                    r3 = *(r20 + r26);
            }
            [*r21 enqueueSampleBuffer:r19 decompressionSession:r3];
    }
    return;
}

-(void)_updateReadyForDisplay:(bool)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = [[NSString stringWithUTF8String:0x100cd985d] retain];
    [r19 willChangeValueForKey:r23];
    [r23 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isReadyForDisplay));
    *(int8_t *)(r19 + r23) = arg2;
    r0 = @class(NSString);
    r0 = [r0 stringWithUTF8String:0x100cd985d];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 didChangeValueForKey:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_displayEngineDelegate);
    r20 = r0;
    if (r0 != 0x0) {
            r19 = [[r20 callbackQueueForDisplayEngineDelegate] retain];
            var_40 = [r20 retain];
            dispatch_async(r19, &var_60);
            [r19 release];
            [var_40 release];
    }
    [r20 release];
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

-(void)setPreferredTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [NSValue valueWithCGAffineTransform:&var_50];
    [r0 retain];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_88 + 0x28, &stack[-104]);
    var_68 = r20;
    r20 = [r20 retain];
    [self dispatchAsyncOnRenderingThread:&var_88];
    [var_68 release];
    [r20 release];
    objc_destroyWeak(&var_88 + 0x28);
    objc_destroyWeak(&stack[-104]);
    return;
}

-(void)_setPreferredTransform:(void *)arg2 {
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (r2 != 0x0) {
            r1 = @selector(CGAffineTransformValue);
            r0 = objc_msgSend(r2, r1);
            d0 = stack[-72];
    }
    else {
            var_30 = q0;
            var_20 = q0;
            var_40 = q0;
            d0 = 0x0;
    }
    *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    *(int128_t *)(0x10 + r19 + r8) = var_30;
    *(int128_t *)(0x20 + r19 + r8) = var_20;
    *(int128_t *)(r19 + r8) = var_40;
    atan2(r0, r1);
    r19->_preferredRotation = -d0;
    return;
}

-(bool)_preventPlayback {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_appActive != 0x0) {
            r0 = 0x0;
    }
    else {
            if (*(int8_t *)(int64_t *)&r0->_allowPlayWhenInactive == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)displayEngineDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayEngineDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_displayEngineDelegate);
    objc_storeStrong((int64_t *)&self->_renderingThread, 0x0);
    objc_storeStrong((int64_t *)&self->_layerError, 0x0);
    objc_storeStrong((int64_t *)&self->_dataQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_dataBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_previousDecompressionSession, 0x0);
    objc_storeStrong((int64_t *)&self->_decompressionSession, 0x0);
    objc_storeStrong((int64_t *)&self->_framesBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_videoGravity, 0x0);
    objc_storeStrong((int64_t *)&self->_displayLink, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_detachedRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_renderer, 0x0);
    return;
}

-(void)setDisplayEngineDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_displayEngineDelegate, arg2);
    return;
}

@end