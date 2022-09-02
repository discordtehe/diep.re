@implementation FNFIOSurfacePlayerLayer

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
    r19 = r2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_videoGravity, **_AVLayerVideoGravityResizeAspect);
            *(int128_t *)(int64_t *)&r20->_presentationSize = *(int128_t *)*_CGSizeZero;
            *(int8_t *)(int64_t *)&r20->_isReadyForDisplay = 0x0;
            *(int8_t *)(int64_t *)&r20->_flushSessionInProgress = 0x0;
            r0 = [FNFPlayerFramesBuffer alloc];
            r2 = *(int32_t *)(r19 + 0x4);
            r0 = [r0 initWithBufferSize:r2];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_framesBuffer));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r20->_sampleBufferRequestThreshold = [*(r20 + r21) sampleBufferRequestThreshold];
            *(int32_t *)(int64_t *)&r20->_sampleBufferRequestThresholdVP9 = *(int32_t *)(r19 + 0xc);
            *(int8_t *)(int64_t *)&r20->_shouldApplyRotationTransform = *(int8_t *)(r19 + 0x20);
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
            [r20 setMasksToBounds:0x1];
            r8 = *(int8_t *)(r19 + 0x3);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_allowPlayWhenInactive));
            *(int8_t *)(r20 + r23) = r8;
            *(int8_t *)(int64_t *)&r20->_blockPlayWhenNotActive = *(int8_t *)(r19 + 0x1);
            r8 = *(int8_t *)(r19 + 0x11);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayFirstFrame));
            *(int8_t *)(r20 + r9) = r8;
            r0 = [FNFRenderingThread renderingThreadAllowingAppInactivePlayback:*(int8_t *)(r20 + r23)];
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_renderingThread));
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            r24 = *(int8_t *)(r19 + 0x21);
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r8 = &@selector(wkWebView);
            r0 = objc_msgSend(r0, *(r8 + 0xc8));
            if (r0 == 0x0) {
                    r8 = &@selector(wkWebView);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            if (r0 != 0x2) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            if (r24 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r9;
                    }
                    else {
                            r8 = r8;
                    }
            }
            *(int8_t *)(int64_t *)&r20->_appActive = r8;
            [r21 release];
            *(int8_t *)(int64_t *)&r20->_enableDisplaylinkControlOnRenderingThread = *(int8_t *)(r19 + 0x10);
            if (*qword_1011dcd68 != -0x1) {
                    dispatch_once_f(0x1011dcd68, 0x1011c5cf8, 0x100a3d91c);
            }
            r0 = *0x1011dcd70;
            r0 = [r0 displayLinkWithTarget:r20 selector:@selector(_displayLinkCallback:)];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_displayLink));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [*(r20 + r22) addDisplayLink:*(r20 + r21)];
            [*(r20 + r21) setFrameInterval:0x1];
            [*(r20 + r21) setPaused:0x1];
            r0 = sub_100b37780();
            r29 = r29;
            dispatch_queue_set_specific([r0 retain], sub_100b37780(), sub_100b37780(), 0x0);
            [r21 release];
            if (*(int8_t *)(r20 + r23) == 0x0) {
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r20 selector:@selector(_applicationDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
                    [r0 release];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r20 selector:@selector(_applicationWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
                    [r0 release];
            }
            *(int8_t *)(int64_t *)&r20->_optimizeMemory = *(int8_t *)r19;
            *(int8_t *)(int64_t *)&r20->_storeLastDisplayedSampleBuffer = *(int8_t *)(r19 + 0x2);
            *(int32_t *)(int64_t *)&r20->_numOfVP9DecoderThreads = *(int32_t *)(r19 + 0x8);
            r20->_decompressionSessionFactory = *(r19 + 0x18);
    }
    r0 = r20;
    return r0;
}

-(void)dispatchSyncOnRenderingThread:(void *)arg2 {
    [self->_renderingThread dispatchSync:arg2];
    return;
}

-(void)_applicationDidBecomeActive:(void *)arg2 {
    [self didBecomeActive];
    return;
}

-(void)dispatchAsyncOnRenderingThread:(void *)arg2 {
    [self->_renderingThread performBlock:arg2];
    return;
}

-(void)didBecomeActive {
    *(int8_t *)(int64_t *)&self->_appActive = 0x1;
    [self dispatchAsyncOnRenderingThread:&var_28];
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
    *(int8_t *)(int64_t *)&self->_layoutChanged = 0x1;
    return;
}

-(void)pause:(int)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesBuffer));
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_shouldRenderWhilePlaybackPaused));
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x138 format:@"%@ pausing for reason %d -- b:%p shouldRenderWhilePlaybackPaused=%d"];
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
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x11f format:@"%@ resuming display link"];
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
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x141 format:@"%@ pausing display link"];
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

-(void)_displayLinkCallback:(void *)arg2 {
    [arg2 retain];
    r21 = objc_autoreleasePoolPush();
    [self _tryToMoveToNextFrameWithDrawingOn:0x1 isFirstFrame:0x0];
    objc_autoreleasePoolPop(r21);
    [r20 release];
    return;
}

-(void)layoutSublayers {
    r31 = r31 - 0xf0;
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
    r29 = &saved_fp;
    r19 = self;
    [[r29 - 0x60 super] layoutSublayers];
    if (*(int8_t *)(int64_t *)&r19->_optimizeMemory != 0x0) {
            [r19 _requestResizeDecompressionSession];
    }
    [r19 dispatchAsyncOnRenderingThread:&var_88];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_displayEngineDelegate);
    r20 = r0;
    if (r0 != 0x0) {
            [r19 bounds];
            r21 = [[r20 callbackQueueForDisplayEngineDelegate] retain];
            var_B0 = [r20 retain];
            dispatch_async(r21, &var_D8);
            [r21 release];
            [var_B0 release];
    }
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            [r21 dispatchAsyncOnRenderingThread:&var_58];
            [var_28 release];
            [var_30 release];
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
    r19 = self;
    r0 = self->_displayLink;
    r0 = [r0 isPaused];
    if (r0 != 0x0) {
            [r19 dispatchAsyncOnRenderingThread:&var_38];
            r0 = 0x1;
    }
    return r0;
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

-(void)dealloc {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x1f8 format:@"%@ deallocing FNFIOSurfacePlayerLayer"];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)_drawFrame {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self _preventPlayback] != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x228 format:@"%@ skipping draw since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay == 0x0) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x22c format:@"%@ setting ready for display"];
                    [r19 _updateReadyForDisplay:0x1];
            }
            *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x0;
    }
    return;
}

-(void)displayPixelBuffer:(struct __CVBuffer *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (arg2 != 0x0) {
            if (*qword_1011dcf88 != -0x1) {
                    dispatch_once_f(0x1011dcf88, 0x1011c5ff8, 0x100a3d91c);
            }
            qword_1011dcf90(r20);
            if (*qword_1011dcf98 != -0x1) {
                    dispatch_once_f(0x1011dcf98, 0x1011c6010, 0x100a3d91c);
            }
            qword_1011dcfa0(r20);
            asm { scvtf      d1, w21 };
            asm { scvtf      d0, w0 };
            if (*(int8_t *)(int64_t *)&r19->_shouldApplyRotationTransform != 0x0) {
                    *(int128_t *)(int64_t *)&r19->_presentationSize = q0;
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_presentationSize));
                    *(int128_t *)(r19 + r8) = d1;
                    *(int128_t *)(0x8 + r19 + r8) = d0;
            }
    }
    [CATransaction begin];
    [CATransaction setDisableActions:0x1];
    [r19 setContents:CVPixelBufferGetIOSurface(r20)];
    [CATransaction commit];
    [r19 _drawFrame];
    return;
}

-(void)_tryToMoveToNextFrameWithDrawingOn:(bool)arg2 isFirstFrame:(bool)arg3 {
    r31 = r31 - 0xb0;
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
    if (([self _preventPlayback] & 0x1) == 0x0) {
            [r19 frame];
            r23 = (int64_t *)&r19->_layerSize;
            if (d2 == *(int128_t *)r23) {
                    asm { fccmp      d3, d1, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    *(int8_t *)(int64_t *)&r19->_layoutChanged = 0x1;
                    [r19 frame];
                    *(int128_t *)r23 = d2;
                    *(int128_t *)(r23 + 0x8) = d3;
            }
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
            var_60 = r0;
            r0 = [r23 findNextFrame:&var_A0 withDrawingOn:r21 isFirstFrame:r22 completion:&var_80];
            if (r0 != 0x0) {
                    if (r21 != 0x0) {
                            r22 = r0;
                            if (*(int8_t *)(int64_t *)&r19->_storeLastDisplayedSampleBuffer != 0x0) {
                                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_lastDisplayedSampleBuffer));
                                    r21 = *(r19 + r26);
                                    if (*0x1011dd058 != -0x1) {
                                            dispatch_once_f(0x1011dd058, 0x1011c6118, 0x100a3d91c);
                                    }
                                    (*0x1011dd060)(r21);
                                    *(r19 + r26) = r22;
                                    *(int8_t *)(int64_t *)&r19->_lastDisplayedBufferExists = 0x1;
                                    if (*qword_1011dd068 != -0x1) {
                                            dispatch_once_f(0x1011dd068, 0x1011c6130, 0x100a3d91c);
                                    }
                                    qword_1011dd070(r22);
                            }
                            [r19 displayPixelBuffer:r22];
                            [*(r19 + r24) setLastFrameDisplayed];
                            if (*0x1011dd058 != -0x1) {
                                    dispatch_once_f(0x1011dd058, 0x1011c6118, 0x100a3d91c);
                            }
                            (*0x1011dd060)(r22);
                    }
            }
            else {
                    if (*(int8_t *)(int64_t *)&r19->_layoutChanged != 0x0 || *(int8_t *)(int64_t *)&r19->_shouldRenderWhilePlaybackPaused != 0x0) {
                            if (*(int8_t *)(int64_t *)&r19->_lastDisplayedBufferExists != 0x0) {
                                    [r19 _drawFrame];
                            }
                    }
            }
            if ([*(r19 + r24) shouldRequestData] != 0x0) {
                    [r19 _requestData];
            }
            [*(r19 + r24) advanceFrame];
            [var_60 release];
            [r20 release];
    }
    return;
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
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x237 format:@"%@ setting layer error to nil prior to flush: %@"];
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

-(void *)player {
    return 0x0;
}

-(void)setPlayer:(void *)arg2 {
    return;
}

-(bool)allowRenderingWhileApplicationInactive {
    r0 = *(int8_t *)(int64_t *)&self->_allowPlayWhenInactive;
    return r0;
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
    if (r21 == r0) goto loc_100b31920;

loc_100b3186c:
    *(r20 + r22) = [r19 retain];
    [r21 release];
    *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b318c0;

loc_100b318b4:
    r8 = *_kCAGravityResizeAspect;
    goto loc_100b3190c;

loc_100b3190c:
    [r20 setContentsGravity:*r8];
    goto loc_100b31920;

loc_100b31920:
    [r19 release];
    return;

loc_100b318c0:
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b318e8;

loc_100b318dc:
    r8 = *_kCAGravityResizeAspectFill;
    goto loc_100b3190c;

loc_100b318e8:
    if ([*(r20 + r22) isEqualToString:r2] == 0x0) goto loc_100b31920;

loc_100b31904:
    r8 = *_kCAGravityResize;
    goto loc_100b3190c;
}

-(struct OpaqueCMTimebase *)controlTimebase {
    r0 = self->_controlTimeBase;
    return r0;
}

-(struct CGSize)presentationSize {
    r0 = self;
    return r0;
}

-(void *)videoGravity {
    r0 = self->_videoGravity;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)stopRequestingMediaData {
    *(int8_t *)(int64_t *)&self->_requestingData = 0x0;
    return;
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

-(void)flushAndRemoveImage {
    [self dispatchSyncOnRenderingThread:&var_38];
    [self flush];
    return;
}

-(void)_resetRendering {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self _preventPlayback] != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x29b format:@"%@ skipping remove image since we're not in active state"];
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isReadyForDisplay != 0x0) {
                    [r19 _updateReadyForDisplay:0x0];
            }
            r0 = [r19 contents];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r19 setContents:0x0];
            }
    }
    return;
}

-(void)setNeedsDisplayFrame {
    [self layoutSublayers];
    return;
}

-(bool)seekFrameUpdatesFinished {
    r0 = self->_framesBuffer;
    r0 = [r0 seekFrameUpdatesFinished];
    return r0;
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
    r19 = self;
    r0 = self->_framesBuffer;
    r0 = [r0 addBuffer:arg2 presentationTimeStamp:&var_40];
    r20 = [r0 retain];
    [r19 _displayFirstFrameWithPresentationTimeStamp:&var_60];
    if (r20 != 0x0) {
            [r19 dispatchAsyncOnRenderingThread:r20];
    }
    [r20 release];
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_framesBuffer));
    r0 = *(self + r23);
    r0 = [r0 addBuffer:arg2 presentationTimeStamp:&var_50 iFrameEnqueued:r5];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 _displayFirstFrameWithPresentationTimeStamp:&var_70];
    if (r20 != 0x0) {
            [r19 dispatchAsyncOnRenderingThread:r20];
    }
    if (r19->_previousDecompressionSession != 0x0 && [*(r19 + r23) isFrameOnClose:r21] != 0x0) {
            r0 = sub_100b37780();
            r0 = [r0 retain];
            dispatch_async(r0, &var_98);
            [r21 release];
    }
    [r20 release];
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

-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg2 attributes:(unsigned int)arg3 {
    r31 = r31 - 0xd0;
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
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_decompressionSession));
            r0 = *(r20 + r26);
            if (r0 != 0x0) {
                    if (CMFormatDescriptionEqual([r0 format], r22) == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r27 = 0x1;
                            }
                    }
                    if ((r21 & 0x1) == 0x0) {
                            if (r27 != 0x0) {
                                    r23 = @class(FBAdLogger);
                                    [*(r20 + r26) inputSize];
                                    [*(r20 + r26) inputSize];
                                    var_D0 = r20;
                                    [r23 logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x318 format:@"%@ new video size but not recreating decompression session:%p existingSize:<%f,%f>, newSize:<%f,%f>, isKeyframe:%d"];
                            }
                    }
                    else {
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_requestedResizeDecompressionSession));
                            r8 = *(int8_t *)(r20 + r24);
                            if (r8 == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r8 = 0x1;
                                    }
                            }
                            if ((r8 & !r27 & 0x1) == 0x0) {
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
                                    if (r27 != 0x0) {
                                            r23 = @class(FBAdLogger);
                                            [*(r20 + r26) inputSize];
                                            [*(r20 + r26) inputSize];
                                            var_D0 = r20;
                                            [r23 logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x318 format:@"%@ new video size but not recreating decompression session:%p existingSize:<%f,%f>, newSize:<%f,%f>, isKeyframe:%d"];
                                    }
                            }
                    }
            }
            else {
                    r27 = 0x0;
                    if ((r21 & 0x1) != 0x0) {
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_requestedResizeDecompressionSession));
                            r8 = *(int8_t *)(r20 + r24);
                            if (r8 == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r8 = 0x1;
                                    }
                            }
                            if ((r8 & !r27 & 0x1) == 0x0) {
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
                                    if (r27 != 0x0) {
                                            r23 = @class(FBAdLogger);
                                            [*(r20 + r26) inputSize];
                                            [*(r20 + r26) inputSize];
                                            var_D0 = r20;
                                            [r23 logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x318 format:@"%@ new video size but not recreating decompression session:%p existingSize:<%f,%f>, newSize:<%f,%f>, isKeyframe:%d"];
                                    }
                            }
                    }
                    else {
                            if (r27 != 0x0) {
                                    r23 = @class(FBAdLogger);
                                    [*(r20 + r26) inputSize];
                                    [*(r20 + r26) inputSize];
                                    var_D0 = r20;
                                    [r23 logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x318 format:@"%@ new video size but not recreating decompression session:%p existingSize:<%f,%f>, newSize:<%f,%f>, isKeyframe:%d"];
                            }
                    }
            }
            if (*(r20 + r26) != 0x0) {
                    r24 = (int64_t *)&r20->_framesBuffer;
            }
            else {
                    if (*(int8_t *)(int64_t *)&r20->_optimizeMemory != 0x0) {
                            r23 = @selector(bounds);
                            asm { fdiv       d12, d9, d8 };
                            objc_msgSend(r20, r23);
                            objc_msgSend(r20, r23);
                            asm { fdiv       d13, d10, d3 };
                            objc_msgSend(r20, r23);
                            if (d12 > d13) {
                                    [r20 contentsScale];
                                    d0 = d11 * d0;
                                    if (d0 < d8) {
                                            r23 = @selector(bounds);
                                            objc_msgSend(r20, r23);
                                            objc_msgSend(r20, r24);
                                            d0 = d0 * d10;
                                            asm { fdiv       d0, d0, d8 };
                                            asm { frintp     d12, d0 };
                                            objc_msgSend(r20, r23);
                                            objc_msgSend(r20, r24);
                                    }
                            }
                            else {
                                    [r20 contentsScale];
                                    d0 = d10 * d0;
                                    if (d0 < d9) {
                                            r23 = @selector(bounds);
                                            objc_msgSend(r20, r23);
                                            objc_msgSend(r20, r24);
                                            d0 = d0 * d10;
                                            asm { fdiv       d0, d0, d9 };
                                            asm { frintp     d11, d0 };
                                            objc_msgSend(r20, r23);
                                            objc_msgSend(r20, r24);
                                    }
                            }
                    }
                    r24 = (int64_t *)&r20->_framesBuffer;
                    if ((r27 & 0x1) == 0x0) {
                            [*r24 resetDecompressionSessionIndex];
                    }
                    asm { ubfx       w23, w21, #0x1, #0x1 };
                    if ((r21 & 0x2) == 0x0) {
                            asm { fcsel      d9, d12, d9, eq };
                    }
                    r8 = 0x101174384;
                    if (CPU_FLAGS & E) {
                            if (!CPU_FLAGS & E) {
                                    r8 = 0x101174384;
                            }
                            else {
                                    r8 = 0x101174380;
                            }
                    }
                    r7 = *(int32_t *)(r20 + sign_extend_64(*(int32_t *)r8));
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d8, d11, d8, eq };
                    }
                    r0 = r20->_decompressionSessionFactory;
                    r0 = [r0 decompressionSessionWithDecoderType:r23 delegate:r20 sampleBufferFormatDescription:r22 videoSize:*(int32_t *)(int64_t *)&r20->_numOfVP9DecoderThreads numOfDecoderThreads:*r24 framesBuffer:r7 sampleBufferRequestThreshold:var_D0];
                    r0 = [r0 retain];
                    r8 = *(r20 + r26);
                    *(r20 + r26) = r0;
                    [r8 release];
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFIOSurfacePlayerLayer.mm" lineNumber:0x34e format:@"%@ created decompression session type %lu with width %f, height %f"];
                    r3 = *(r20 + r26);
            }
            [*r24 enqueueSampleBuffer:r19 decompressionSession:r3];
    }
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

-(void)_updateReadyForDisplay:(bool)arg2 {
    r31 = r31 - 0x80;
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
            r21 = [[r20 callbackQueueForDisplayEngineDelegate] retain];
            var_40 = [r20 retain];
            dispatch_async(r21, &var_68);
            [r21 release];
            [var_40 release];
    }
    [r20 release];
    return;
}

-(void)setPreferredTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [NSValue valueWithCGAffineTransform:&var_50];
    r0 = [r0 retain];
    r21 = [r0 retain];
    [self dispatchAsyncOnRenderingThread:&var_80];
    [r0 release];
    [r21 release];
    return;
}

-(void)_setPreferredTransform:(void *)arg2 {
    r31 = r31 - 0xb0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 CGAffineTransformValue];
    }
    else {
            var_30 = q0;
            var_20 = q0;
            var_40 = q0;
    }
    *(int8_t *)(int64_t *)&r20->_layoutChanged = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    *(int128_t *)(r20 + r8) = var_40;
    *(int128_t *)(0x10 + r20 + r8) = var_30;
    *(int128_t *)(0x20 + r20 + r8) = var_20;
    if (*(int8_t *)(int64_t *)&r20->_shouldApplyRotationTransform != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_98);
    }
    [r19 release];
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

-(void)_clearBuffers {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastDisplayedSampleBuffer));
    r20 = *(self + r21);
    if (*qword_1011dd058 != -0x1) {
            dispatch_once_f(0x1011dd058, 0x1011c6118, 0x100a3d91c);
    }
    qword_1011dd060(r20);
    *(r19 + r21) = 0x0;
    *(int8_t *)(int64_t *)&r19->_lastDisplayedBufferExists = 0x0;
    r0 = [r19 contents];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 setContents:0x0];
    }
    [r19->_framesBuffer clear];
    return;
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
    return;
}

-(void *)displayEngineDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_displayEngineDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDisplayEngineDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_displayEngineDelegate, arg2);
    return;
}

@end