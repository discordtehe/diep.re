@implementation GADVideoPlayer

-(void *)initWithAdView:(void *)arg2 playerItemProvider:(void *)arg3 visibilityMessageSource:(void *)arg4 videoConfiguration:(void *)arg5 loggingContextSource:(void *)arg6 {
    r31 = r31 - 0x150;
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
    r22 = arg6;
    r25 = arg5;
    r27 = arg3;
    r24 = [arg2 retain];
    r19 = [r27 retain];
    r20 = [arg4 retain];
    r21 = [r25 retain];
    r28 = [r22 retain];
    r23 = [[r29 - 0x88 super] init];
    if (r23 == 0x0) goto loc_1007d3c6c;

loc_1007d3770:
    r26 = @selector(init);
    var_128 = r28;
    var_120 = r21;
    var_110 = r20;
    r0 = [AVPlayer alloc];
    r0 = objc_msgSend(r0, r26);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    objc_storeWeak((int64_t *)&r23->_adView, r24);
    objc_storeStrong((int64_t *)&r23->_playerItemProvider, r27);
    var_118 = r19;
    r0 = [r19 playerItem];
    r29 = r29;
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
    r8 = *(r23 + r21);
    *(r23 + r21) = r0;
    [r8 release];
    r0 = [GADObserverCollection alloc];
    r0 = objc_msgSend(r0, r26);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(r23 + r19);
    *(r23 + r19) = r0;
    [r8 release];
    r27 = (int64_t *)&r23->_loggingContextSource;
    objc_storeStrong(r27, r22);
    *(int8_t *)(int64_t *)&r23->_appActive = 0x1;
    r0 = [NSMutableArray alloc];
    r0 = objc_msgSend(r0, r26);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playbackStartObservers));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    if (*(r23 + r21) == 0x0) goto loc_1007d3c7c;

loc_1007d389c:
    r26 = @selector(init);
    var_130 = r24;
    r0 = [NSMutableArray alloc];
    r0 = objc_msgSend(r0, r26);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_periodicTimeObservers));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r23->_videoConfiguration, r25);
    r0 = sub_100860a2c("com.google.admob.n.player-action", 0x0, 0x19);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_actionLockQueue));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    r0 = *(&@class(MCConfigurationData) + 0x5a0);
    r0 = [r0 alloc];
    r0 = objc_msgSend(r0, r26);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_actionOperationQueue));
    r8 = *(r23 + r20);
    *(r23 + r20) = r0;
    [r8 release];
    [*(r23 + r20) setQualityOfService:0x11];
    [*(r23 + r20) setMaxConcurrentOperationCount:0x1];
    r0 = dispatch_semaphore_create(0x1);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_actionSemaphore));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 doubleForKey:*0x100e9b898];
    asm { fdiv       d0, d0, d1 };
    r23->_playerActionTimeoutInterval = d0;
    [r22 release];
    asm { stlrb      wzr, [x8] };
    asm { stlrb      wzr, [x8] };
    r9 = 0x100e9c000;
    asm { stlrb      wzr, [x8] };
    r22 = *(r9 + 0x5a8);
    r24 = *r27;
    [[NSNumber numberWithInteger:*0x1011db7d0] retain];
    sub_1008833e8(r22, r24, [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain]);
    [r26 release];
    [r25 release];
    objc_initWeak(r29 - 0x90, r23);
    objc_copyWeak(&var_B8 + 0x20, r29 - 0x90);
    [r22 addObserverForName:*0x100e9c030 object:var_110 queue:0x0 usingBlock:&var_B8];
    r0 = *(r21 + 0x5a0);
    r0 = [r0 mainQueue];
    [r0 retain];
    objc_copyWeak(&var_E0 + 0x20, r29 - 0x90);
    [r28 addObserverForName:r21 object:0x0 queue:r24 usingBlock:&var_E0];
    [r24 release];
    r0 = [NSOperationQueue mainQueue];
    [r0 retain];
    objc_copyWeak(&var_108 + 0x20, r29 - 0x90);
    [r28 addObserverForName:r21 object:0x0 queue:r24 usingBlock:&var_108];
    [r24 release];
    [r23 asyncLoadPlayer];
    objc_destroyWeak(&var_108 + 0x20);
    objc_destroyWeak(&var_E0 + 0x20);
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak(r29 - 0x90);
    r24 = var_130;
    r28 = var_128;
    r19 = var_118;
    r20 = var_110;
    r21 = var_120;
    goto loc_1007d3c6c;

loc_1007d3c6c:
    r22 = [r23 retain];
    goto loc_1007d3c98;

loc_1007d3c98:
    var_68 = **___stack_chk_guard;
    [r28 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r24 release];
    [r23 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1007d3c7c:
    sub_1007ce06c(0x0, @"PlayerItem must exist for loading video player.");
    r22 = 0x0;
    r19 = var_118;
    r20 = var_110;
    r28 = var_128;
    r21 = var_120;
    goto loc_1007d3c98;
}

-(void)dealloc {
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
    r31 = r31 + 0xffffffffffffff90 - 0x190;
    r19 = self;
    asm { stlrb      w9, [x8] };
    [r19->_playerItemLogger stopMonitoring];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastPlayerTimeIntervalString));
    r8 = *(r19 + r8);
    if (r8 != 0x0) {
            r20 = [[NSDictionary dictionaryWithObjects:r29 - 0x78 forKeys:r29 - 0x88 count:0x2] retain];
            r22 = objc_loadWeakRetained((int64_t *)&r19->_adView);
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r29 = r29;
            r21 = [r0 retain];
            var_118 = r22;
            [r22 retain];
            var_110 = r20;
            [r20 retain];
            dispatch_async(r21, &var_138);
            [r21 release];
            [var_110 release];
            [var_118 release];
            [r20 release];
            [r22 release];
    }
    else {
            r21 = dispatch_get_global_queue(0x0, 0x0);
    }
    r20 = [r19->_loggingContextSource retain];
    [r21 retain];
    r25 = [r20 retain];
    var_140 = r25;
    dispatch_async(r21, &var_160);
    [r22 release];
    if (*(int8_t *)(int64_t *)&r19->_isObservingPlayerRate != 0x0) {
            [r19->_player removeObserver:r19 forKeyPath:@"rate"];
    }
    if (*(int8_t *)(int64_t *)&r19->_isObservingPlayer != 0x0) {
            [r19->_player removeObserver:r19 forKeyPath:@"status"];
    }
    if (*(int8_t *)(int64_t *)&r19->_isObservingPlayerItem != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
            [*(r19 + r20) removeObserver:r19 forKeyPath:@"playbackLikelyToKeepUp"];
            [*(r19 + r20) removeObserver:r19 forKeyPath:@"playbackBufferFull"];
            [*(r19 + r20) removeObserver:r19 forKeyPath:@"duration"];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isObservingPlayerItemLoadedTimeRanges));
    r8 = *(int8_t *)(r19 + r8);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
    if (r8 != 0x0) {
            [*(r19 + r20) removeObserver:r19 forKeyPath:@"loadedTimeRanges"];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 removeObserver:r19 name:**_AVPlayerItemDidPlayToEndTimeNotification object:*(r19 + r20)];
    r0 = r19->_periodicTimeObservers;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            var_1E0 = r21;
            r21 = r25;
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_player));
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [*(r19 + r27) removeTimeObserver:r2];
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    r24 = objc_msgSend(r22, r1);
            } while (r24 != 0x0);
            r25 = r21;
            r21 = var_1E0;
    }
    else {
            r27 = *(int32_t *)ivar_offset(_player);
    }
    [r22 release];
    r0 = *(r19 + (r27 << r1));
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 currentItem];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_1A8 = [r22 retain];
            sub_100860a80();
            [var_1A8 release];
    }
    var_68 = **___stack_chk_guard;
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 audioVideoManager];
    r0 = [r0 retain];
    [r0 playerWillDealloc:r19];
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_140 release];
    [r25 release];
    [[&var_1D8 super] dealloc];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)asyncLoadPlayer {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void *)createPlayerLayer {
    r0 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
    return r0;
}

-(void)playUserInitiated:(bool)arg2 {
    r20 = self->_actionLockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(void)pauseUserInitiated:(bool)arg2 {
    r20 = self->_actionLockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(void)setMuted:(bool)arg2 userInitiated:(bool)arg3 {
    r21 = self->_actionLockQueue;
    var_30 = [self retain];
    dispatch_async(r21, &var_50);
    [var_30 release];
    return;
}

-(void)setVolume:(float)arg2 userInitiated:(bool)arg3 {
    r0 = self;
    r31 = r31 - 0x70;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (s8 < 0x0) {
            asm { fcvt       d0, s8 };
            sub_1007ce06c(0x0, @"Video volume must be positive. %f");
    }
    else {
            r20 = r0->_actionLockQueue;
            var_30 = [r0 retain];
            dispatch_async(r20, &var_50);
            [var_30 release];
    }
    return;
}

-(void)flushPlayerAction {
    r1 = _cmd;
    r31 = r31 - 0x1c0;
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
    r20 = self;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_actionSemaphore));
    r21 = [*(r20 + r19) retain];
    asm { fcvtzs     x1, d0 };
    r22 = dispatch_time(0x0, r1);
    if (dispatch_semaphore_wait(r21, r22) != 0x0) {
            sub_1007ce06c(0x0, @"Must not timeout waiting for player action to happen.");
            r0 = dispatch_semaphore_create(0x1);
            r8 = *(r20 + r19);
            *(r20 + r19) = r0;
            [r8 release];
            r19 = [*(r20 + r19) retain];
            [r21 release];
            if (dispatch_semaphore_wait(r19, r22) == 0x0) {
                    r22 = r29 - 0x90;
                    r23 = r29 - 0xc0;
                    var_B8 = r23;
                    r24 = &var_F0;
                    var_E8 = r24;
                    r25 = &var_110;
                    r21 = r20->_actionLockQueue;
                    r20 = [r20 retain];
                    var_138 = r20;
                    dispatch_sync(r21, &var_158);
                    if (*(r22 + 0x28) == 0x0) {
                            if (*(var_B8 + 0x28) == 0x0 && *(var_E8 + 0x28) == 0x0) {
                                    dispatch_semaphore_signal(r19);
                            }
                            else {
                                    var_188 = [r20 retain];
                                    var_180 = [r19 retain];
                                    dispatch_async(*__dispatch_main_q, &var_1A8);
                                    [var_180 release];
                                    [var_188 release];
                            }
                    }
                    else {
                            var_188 = [r20 retain];
                            var_180 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_1A8);
                            [var_180 release];
                            [var_188 release];
                    }
                    [var_138 release];
                    _Block_object_dispose(&var_110, 0x8);
                    _Block_object_dispose(&var_F0, 0x8);
                    [0x0 release];
                    _Block_object_dispose(r29 - 0xc0, 0x8);
                    [0x0 release];
                    _Block_object_dispose(r29 - 0x90, 0x8);
                    [0x0 release];
            }
    }
    else {
            r19 = r21;
            r22 = r29 - 0x90;
            r23 = r29 - 0xc0;
            var_B8 = r23;
            r24 = &var_F0;
            var_E8 = r24;
            r25 = &var_110;
            r21 = r20->_actionLockQueue;
            r20 = [r20 retain];
            var_138 = r20;
            dispatch_sync(r21, &var_158);
            if (*(r22 + 0x28) == 0x0) {
                    if (*(var_B8 + 0x28) == 0x0 && *(var_E8 + 0x28) == 0x0) {
                            dispatch_semaphore_signal(r19);
                    }
                    else {
                            var_188 = [r20 retain];
                            var_180 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_1A8);
                            [var_180 release];
                            [var_188 release];
                    }
            }
            else {
                    var_188 = [r20 retain];
                    var_180 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_1A8);
                    [var_180 release];
                    [var_188 release];
            }
            [var_138 release];
            _Block_object_dispose(&var_110, 0x8);
            _Block_object_dispose(&var_F0, 0x8);
            [0x0 release];
            _Block_object_dispose(r29 - 0xc0, 0x8);
            [0x0 release];
            _Block_object_dispose(r29 - 0x90, 0x8);
            [0x0 release];
    }
    [r19 release];
    return;
}

-(void)flushPlayerActionPlaying:(bool)arg2 volume:(float)arg3 muted:(bool)arg4 userInitiated:(bool)arg5 semaphore:(void *)arg6 {
    r31 = r31 - 0xc0;
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
    r19 = arg4;
    r23 = arg3;
    r20 = arg2;
    r22 = self;
    r25 = [arg5 retain];
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r8 = &@selector(fetchCompletion);
    r21 = [objc_msgSend(r0, *(r8 + 0xb90)) retain];
    [r0 release];
    objc_initWeak(&stack[-120], r22);
    objc_initWeak(&stack[-128], r21);
    if (s8 == 0x0) {
            r8 = &@selector(fetchCompletion);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_B0 + 0x28, &stack[-120]);
    [r25 retain];
    objc_copyWeak(&var_B0 + 0x30, &stack[-128]);
    [r21 player:r22 willChangeStateToPlaying:r20 muted:r8 | r23 userInitiated:r19 queue:r28 completionBlock:&var_B0];
    [*__dispatch_main_q release];
    objc_destroyWeak(&var_B0 + 0x30);
    [r25 release];
    objc_destroyWeak(&var_B0 + 0x28);
    objc_destroyWeak(&stack[-128]);
    objc_destroyWeak(&stack[-120]);
    [r21 release];
    [r25 release];
    return;
}

-(void)seekToTime:(double)arg2 {
    var_20 = [self retain];
    sub_100860a80();
    [var_20 release];
    return;
}

-(void)momentarilyPauseAndExecuteBlock:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(struct CGSize)videoSize {
    r31 = r31 - 0x190;
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
    *(&var_10 + 0xffffffffffffff78) = **___stack_chk_guard;
    r0 = [GADDevice sharedInstance];
    r0 = [r0 retain];
    [r0 mainScreenDensity];
    [r0 release];
    r0 = self->_playerItem;
    r0 = [r0 asset];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 tracksWithMediaType:**_AVMediaTypeVideo];
    r29 = &var_10;
    r19 = [r0 retain];
    [r20 release];
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            d11 = *(int128_t *)*_CGSizeZero;
            v10 = v9;
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r24 = *(0x0 + r28 * 0x8);
                            [r24 naturalSize];
                            if (d11 == d0) {
                                    asm { fccmp      d12, d1, #0x0, eq };
                            }
                            if (!CPU_FLAGS & E) {
                                    [r24 naturalSize];
                                    v9 = v0;
                                    v10 = v1;
                                    if (r24 != 0x0) {
                                            [r24 preferredTransform];
                                            d3 = var_188;
                                            d1 = stack[-384];
                                            d2 = var_178;
                                            d0 = stack[-368];
                                    }
                                    else {
                                            var_178 = 0x0;
                                            stack[-368] = 0x0;
                                            v0 = 0x0;
                                            v1 = 0x0;
                                            var_188 = 0x0;
                                            stack[-384] = 0x0;
                                    }
                                    d3 = 0xbff0000000000000 * d3;
                                    d2 = d3 + d10 * d2;
                                    d1 = 0xbff0000000000000 * d1;
                                    d0 = d1 + d10 * d0;
                                    asm { fdiv       d9, d2, d8 };
                                    asm { fdiv       d10, d0, d8 };
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    else {
            v10 = v9;
    }
    r0 = [r19 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff78)) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)hasPostedCanPlayThrough {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_canPlayThroughPosted));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(bool)hasPlaybackEnded {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hasPlaybackEnded));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)addOutput:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)removeOutput:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)addPlaybackStartListenerUsingBlock:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)addPeriodicTimeObserverForInterval:(union ?)arg2 queue:(void *)arg3 usingBlock:(void *)arg4 completionBlock:(void *)arg5 {
    memcpy(&r2, &arg2, 0x8);
    r23 = [r3 retain];
    r20 = [r4 retain];
    r19 = [r5 retain];
    var_68 = [self retain];
    [r23 retain];
    var_58 = r20;
    [r20 retain];
    var_50 = r19;
    [r19 retain];
    sub_100860a80();
    [var_50 release];
    [var_58 release];
    [r23 release];
    [var_68 release];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)removeTimeObserver:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)playerVisibilityDidChange:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 boolValue];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isVisible));
    if (r0 != *(int8_t *)(r19 + r8)) {
            *(int8_t *)(r19 + r8) = r0;
            [r19 optimizePlayerResources];
    }
    return;
}

-(void)reattachPlayersCurrentItem {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r0 = *(r19 + r21);
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            *0x1011db7d0 = *0x1011db7d0 + 0x1;
            [*(r19 + r21) replaceCurrentItemWithPlayerItem:r19->_playerItem];
    }
    return;
}

-(void)optimizePlayerResources {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isVisible == 0x0 && [r19 hasPostedCanPlayThrough] != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_player));
            [*(r19 + r22) rate];
            if (s0 > 0x0) {
                    [r19 reattachPlayersCurrentItem];
            }
            else {
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = [r0 integerForKey:*0x100e9b8a0];
                    [r0 release];
                    if (*0x1011db7d0 > r21) {
                            r0 = *(r19 + r22);
                            r0 = [r0 currentItem];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    [*(r19 + r22) replaceCurrentItemWithPlayerItem:0x0];
                                    *0x1011db7d0 = *0x1011db7d0 - 0x1;
                            }
                    }
            }
    }
    else {
            [r19 reattachPlayersCurrentItem];
    }
    return;
}

-(void)observePlayer {
    *(int8_t *)(int64_t *)&self->_isObservingPlayer = 0x1;
    *(int8_t *)(int64_t *)&self->_isObservingPlayerRate = 0x1;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    [*(self + r21) addObserver:self forKeyPath:@"rate" options:0x1 context:*0x1011c2bd8];
    [*(self + r21) addObserver:self forKeyPath:@"status" options:0x1 context:*0x1011c2bd8];
    objc_initWeak(&saved_fp - 0x28, self);
    CMTimeMake(0x1, 0x4);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_50 + 0x20, &saved_fp - 0x28);
    r21 = [[r21 addPeriodicTimeObserverForInterval:&stack[-120] queue:r22 usingBlock:&var_50] retain];
    [*__dispatch_main_q release];
    sub_100822370(self->_periodicTimeObservers, r21);
    [r21 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)handlePlayerItemDurationLoadUpdate {
    r31 = r31 - 0x1f0;
    var_40 = d9;
    stack[-72] = d8;
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
    if (*(int8_t *)(int64_t *)&r19->_playing != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_player));
            [*(r19 + r23) rate];
            if (s0 > 0x0) {
                    [r19 stopObservingPlayerItemLoadedTimeRanges];
            }
            else {
                    r0 = r19->_playerItem;
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 loadedTimeRanges];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 firstObject];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r22 release];
                    if (r21 != 0x0) {
                            [r21 CMTimeRangeValue];
                            if (r20 != 0x0) {
                                    [r20 currentTime];
                            }
                            else {
                                    var_78 = 0x0;
                            }
                            if ((var_7C & 0x1) != 0x0 && (var_58 & 0xffffffff80000000) == 0x0 && var_48 == 0x0 && (var_64 & 0x1) != 0x0 && (var_4C & 0x1) != 0x0) {
                                    r22 = &stack[-296];
                                    if (CMTimeCompare(r29 - 0xa0, r29 - 0xc0) != 0x0) {
                                            r0 = CMTimeCompare(r29 - 0xe0, &var_100);
                                            if ((r0 & 0xffffffff80000000) == 0x0) {
                                                    CMTimeRangeGetEnd(&var_150);
                                                    r0 = CMTimeCompare(&var_170, &var_190);
                                                    if ((r0 & 0xffffffff80000000) != 0x0) {
                                                            CMTimeSubtract(&var_1C0, &var_1E0);
                                                            CMTimeGetSeconds(&stack[-440]);
                                                            asm { fmaxnm     d8, d0, d1 };
                                                    }
                                            }
                                    }
                            }
                    }
                    [r21 release];
                    [r20 release];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
                    [*(r19 + r21) bufferForPlaybackTimeInterval];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_hasPlaybackStalledAtLeastOnce));
                    if (*(int8_t *)(r19 + r20) != 0x0) {
                            [*(r19 + r21) bufferForPlaybackAfterRebufferTimeInterval];
                    }
                    if (d8 >= d0) {
                            *(int8_t *)(r19 + r20) = 0x1;
                            [*(r19 + r23) play];
                    }
            }
    }
    else {
            [r19 stopObservingPlayerItemLoadedTimeRanges];
    }
    return;
}

-(void)observePlayerItemLoadedTimeRanges {
    r8 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_isObservingPlayerItemLoadedTimeRanges));
    if (*(int8_t *)(r8 + r9) == 0x0) {
            *(int8_t *)(r8 + r9) = 0x1;
            [r8->_playerItem addObserver:r8 forKeyPath:@"loadedTimeRanges" options:0x1 context:*0x1011c2bd8];
    }
    return;
}

-(void)stopObservingPlayerItemLoadedTimeRanges {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isObservingPlayerItemLoadedTimeRanges));
    if (*(int8_t *)(r19 + r20) != 0x0) {
            [r19->_playerItem removeObserver:r19 forKeyPath:@"loadedTimeRanges"];
            *(int8_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void)observePlayerItem {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isObservingPlayerItem));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            r20 = [[NSNotificationCenter defaultCenter] retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
            [*(r19 + r22) addObserver:r19 forKeyPath:@"playbackLikelyToKeepUp" options:0x1 context:*0x1011c2bd8];
            [*(r19 + r22) addObserver:r19 forKeyPath:@"playbackBufferFull" options:0x1 context:*0x1011c2bd8];
            [*(r19 + r22) addObserver:r19 forKeyPath:@"duration" options:0x1 context:*0x1011c2bd8];
            [r20 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg5;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_deallocated));
    r8 = r22 + r8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) != 0x0) goto loc_1007d751c;

loc_1007d74d8:
    if (*qword_1011c2bd8 == r23) goto loc_1007d755c;

loc_1007d74e8:
    [[&var_40 super] observeValueForKeyPath:r19 ofObject:r20 change:r21 context:r23];
    goto loc_1007d752c;

loc_1007d752c:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1007d755c:
    if (r22->_player == r20 || r22->_playerItem == r20) goto loc_1007d7594;

loc_1007d7584:
    r1 = @"This class only observes the _player and _playerCurrentItem object. Object: %@";
    goto loc_1007d7524;

loc_1007d7524:
    sub_1007ce06c(0x0, r1);
    goto loc_1007d752c;

loc_1007d7594:
    var_50 = [r19 retain];
    var_48 = [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_70);
    [var_48 release];
    [var_50 release];
    goto loc_1007d752c;

loc_1007d751c:
    r1 = @"Video player received notification from AVPlayer when being deallocated.";
    goto loc_1007d7524;
}

-(void)itemDidPlayToEnd:(void *)arg2 {
    r0 = self;
    asm { stlrb      w9, [x8] };
    var_8 = [r0 retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)handlePlayerRateChange {
    r31 = r31 - 0x110;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self notifyVideoRateChanged];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    [*(r19 + r21) rate];
    if (*(int8_t *)(int64_t *)&r19->_appActive != 0x0 && *(int8_t *)(int64_t *)&r19->_isObservingPlayerItemLoadedTimeRanges == 0x0 && ([r19->_videoConfiguration enableAVPlayerPlaybackBuffering] & 0x1) == 0x0 && s0 == 0x0 && *(int8_t *)(int64_t *)&r19->_playing != 0x0) {
            var_38 = **___stack_chk_guard;
            [r19 observePlayerItemLoadedTimeRanges];
            r0 = *(r19 + r21);
            if (**___stack_chk_guard == var_38) {
                    [r0 pause];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            [*(r19 + r21) rate];
            if (s0 > 0x0) {
                    asm { stlrb      wzr, [x8] };
                    [r19 stopObservingPlayerItemLoadedTimeRanges];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_playbackStartObservers));
                    r20 = [*(r19 + r21) copy];
                    [*(r19 + r21) removeAllObjects];
                    r0 = [r20 retain];
                    r19 = r0;
                    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r21 != 0x0) {
                            do {
                                    r23 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r0 = *(0x0 + r23 * 0x8);
                                            (*(r0 + 0x10))(r0);
                                            r23 = r23 + 0x1;
                                    } while (r23 < r21);
                                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r21 != 0x0);
                    }
                    [r19 release];
                    [r19 release];
            }
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)notifyPlayerMetadata {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    [self videoSize];
    r19 = objc_loadWeakRetained((int64_t *)&self->_adView);
    [NSStringFromCGSize() retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    sub_1008833e8(*0x100e9c5f0, r19, [r0 retain]);
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyVideoPlayerWithTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    CMTimeGetSeconds(&var_70);
    r20 = [sub_1007da734() retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2];
    r21 = [r0 retain];
    r22 = objc_loadWeakRetained((int64_t *)&r19->_adView);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_lastPlayerTimeIntervalString));
    r23 = *(r19 + r24);
    if (r23 == 0x0) {
            sub_1008833e8(*0x100e9c5d0, r22, r21);
            r23 = *(r19 + r24);
    }
    var_38 = **___stack_chk_guard;
    *(r19 + r24) = r20;
    r19 = [r20 retain];
    [r23 release];
    [r22 asyncEvaluateFunction:@"onVideoEvent" parameters:r21];
    [r19 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyVideoReadyToPlay {
    r31 = r31 - 0xf0;
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 duration];
            if ((([*(r19 + r20) isPlaybackBufferFull] & 0x1) != 0x0 || [*(r19 + r20) isPlaybackLikelyToKeepUp] != 0x0) && (var_B4 & 0x1) != 0x0 && var_B8 >= 0x1) {
                    do {
                            asm { ldaxrb     w10, [x8] };
                            asm { stlxrb     w11, w9, [x8] };
                    } while (r11 != 0x0);
                    if ((r10 & 0x1) == 0x0) {
                            [r19 videoSize];
                            CMTimeGetSeconds(&var_E0);
                            [sub_1007da734() retain];
                            r21 = [[NSNumber numberWithDouble:r2] retain];
                            r22 = [[NSNumber numberWithDouble:r2] retain];
                            r24 = @class(NSNumber);
                            r0 = [GADDevice sharedInstance];
                            r0 = [r0 retain];
                            r25 = r0;
                            [r0 mainScreenDensity];
                            r23 = [[r24 numberWithDouble:r2] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_A8 count:0x5];
                            r24 = [r0 retain];
                            [r23 release];
                            [r25 release];
                            [r22 release];
                            [r21 release];
                            sub_1008833e8(*0x100e9c5c0, objc_loadWeakRetained((int64_t *)&r19->_adView), r24);
                            [r19 asyncEvaluateFunction:@"onVideoEvent" parameters:r24];
                            [r19 release];
                            [r24 release];
                            [r20 release];
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyVideoRateChanged {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if ([self hasPostedCanPlayThrough] != 0x0) {
            r19 = objc_loadWeakRetained((int64_t *)&r20->_adView);
            [r20->_player rate];
            if (s0 == 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            }
            else {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            }
            r20 = [r0 retain];
            [r19 asyncEvaluateFunction:@"onVideoEvent" parameters:r20];
            [r20 release];
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyVideoPlayerWithNewStatus:(long long)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = r20->_playerItem;
    r0 = [r0 error];
    r0 = [r0 retain];
    r19 = [[r0 localizedDescription] retain];
    [r0 release];
    r23 = r20->_loggingContextSource;
    r0 = [NSNumber numberWithInteger:r21];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r8 = @"";
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r19;
            }
    }
    r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
    r29 = r29;
    sub_1008833e8(*0x100e9c5c8, r23, [r0 retain]);
    [r26 release];
    [r25 release];
    if ((r21 | 0x2) == 0x2) {
            r20 = objc_loadWeakRetained((int64_t *)&r20->_adView);
            r0 = @class(NSDictionary);
            r0 = [r0 dictionaryWithObjects:&stack[-144] forKeys:&var_88 count:0x1];
            r21 = [r0 retain];
            [r20 asyncEvaluateFunction:@"onVideoEvent" parameters:r21];
            [r21 release];
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_actionSemaphore, 0x0);
    objc_storeStrong((int64_t *)&self->_scheduledVolume, 0x0);
    objc_storeStrong((int64_t *)&self->_scheduledMute, 0x0);
    objc_storeStrong((int64_t *)&self->_scheduledPlay, 0x0);
    objc_storeStrong((int64_t *)&self->_actionOperationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_actionLockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_playbackStartObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItemLogger, 0x0);
    objc_storeStrong((int64_t *)&self->_lastPlayerTimeIntervalString, 0x0);
    objc_storeStrong((int64_t *)&self->_periodicTimeObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItem, 0x0);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    objc_storeStrong((int64_t *)&self->_loggingContextSource, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_videoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItemProvider, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    return;
}

@end