@implementation GADVideoActionMonitor

-(void *)initWithVideoContainerView:(void *)arg2 webAdView:(void *)arg3 messageSource:(void *)arg4 visibilityMessageSource:(void *)arg5 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x330;
    r24 = [arg2 retain];
    r28 = [arg3 retain];
    r22 = [arg4 retain];
    r19 = [arg5 retain];
    r23 = [[r29 - 0x78 super] init];
    if (r23 != 0x0) {
            objc_storeWeak((int64_t *)&r23->_adView, r28);
            var_350 = r19;
            objc_storeWeak((int64_t *)&r23->_visibilityMessageSource, r19);
            var_348 = r24;
            objc_storeWeak((int64_t *)&r23->_videoContainerView, r24);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r26);
            *(r23 + r26) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_cachedVideoPlayerFrame));
            r9 = *_CGRectZero;
            q0 = *(int128_t *)r9;
            q1 = *(int128_t *)(r9 + 0x10);
            *(int128_t *)(r23 + r8) = q0;
            *(int128_t *)(0x10 + r23 + r8) = q1;
            r21 = [GADVideoConfiguration alloc];
            r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x68 count:0x0] retain];
            r0 = [r21 initWithDictionary:r24];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            [r24 release];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r24 = [[r0 dictionaryForKey:*0x100e9b7e8] retain];
            [r0 release];
            r0 = @class(GADVideoConfiguration);
            r0 = [r0 alloc];
            var_358 = r24;
            r0 = [r0 initWithDictionary:r24];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_gcacheVideoConfiguration));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [GADPrecacheMonitor alloc];
            var_340 = r28;
            r0 = [r0 initWithWebAdView:r28 messageSource:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_precacheMonitor));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x80, r23);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xa8) + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c388 object:r22 queue:r20 usingBlock:r29 - 0xa8];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xd0) + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c390 object:r22 queue:r20 usingBlock:r29 - 0xd0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xf8) + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c398 object:r22 queue:r20 usingBlock:r29 - 0xf8];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_120 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3a0 object:r22 queue:r20 usingBlock:&var_120];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_148 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3a8 object:r22 queue:r20 usingBlock:&var_148];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_170 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3b0 object:r22 queue:r20 usingBlock:&var_170];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_198 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3b8 object:r22 queue:r20 usingBlock:&var_198];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_1C0 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3c0 object:r22 queue:r20 usingBlock:&var_1C0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_1E8 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3c8 object:r22 queue:r20 usingBlock:&var_1E8];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_210 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3d0 object:r22 queue:r20 usingBlock:&var_210];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_238 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3d8 object:r22 queue:r20 usingBlock:&var_238];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_260 + 0x20, r29 - 0x80);
            [r19 addObserverForName:*0x100e9c3e0 object:r22 queue:r20 usingBlock:&var_260];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_288 + 0x20, r29 - 0x80);
            [r20 addObserverForName:*0x100e9c3e8 object:r22 queue:r21 usingBlock:&var_288];
            [r21 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_2B0 + 0x20, r29 - 0x80);
            [r20 addObserverForName:*0x100e9c3f0 object:r22 queue:r21 usingBlock:&var_2B0];
            [r21 release];
            objc_copyWeak(&var_2D8 + 0x20, r29 - 0x80);
            r28 = var_340;
            [r21 addObserverForName:*0x100e9c690 object:r28 queue:0x0 usingBlock:&var_2D8];
            objc_copyWeak(&var_300 + 0x20, r29 - 0x80);
            [r24 addObserverForName:*0x100e9c698 object:r28 queue:0x0 usingBlock:&var_300];
            objc_destroyWeak(&var_300 + 0x20);
            objc_destroyWeak(&var_2D8 + 0x20);
            objc_destroyWeak(&var_2B0 + 0x20);
            objc_destroyWeak(&var_288 + 0x20);
            objc_destroyWeak(&var_260 + 0x20);
            objc_destroyWeak(&var_238 + 0x20);
            objc_destroyWeak(&var_210 + 0x20);
            objc_destroyWeak(&var_1E8 + 0x20);
            objc_destroyWeak(&var_1C0 + 0x20);
            objc_destroyWeak(&var_198 + 0x20);
            objc_destroyWeak(&var_170 + 0x20);
            objc_destroyWeak(&var_148 + 0x20);
            objc_destroyWeak(&var_120 + 0x20);
            objc_destroyWeak((r29 - 0xf8) + 0x20);
            objc_destroyWeak((r29 - 0xd0) + 0x20);
            objc_destroyWeak((r29 - 0xa8) + 0x20);
            objc_destroyWeak(r29 - 0x80);
            [var_358 release];
            r19 = var_350;
            r24 = var_348;
    }
    [r19 release];
    [r22 release];
    [r28 release];
    [r24 release];
    r0 = r23;
    return r0;
}

-(void)dealloc {
    [self->_videoPlayer pauseUserInitiated:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)positionVideo:(void *)arg2 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = self;
    r8 = *_CGRectZero;
    d8 = *(int128_t *)r8;
    d9 = *(int128_t *)(r8 + 0x8);
    d10 = *(int128_t *)(r8 + 0x10);
    d11 = *(int128_t *)(r8 + 0x18);
    r25 = [arg2 retain];
    r20 = [[arg2 objectForKeyedSubscript:@"x"] retain];
    r21 = [[arg2 objectForKeyedSubscript:@"y"] retain];
    r22 = [[arg2 objectForKeyedSubscript:@"w"] retain];
    r23 = [arg2 objectForKeyedSubscript:@"h"];
    [r25 release];
    r23 = [r23 retain];
    if (r22 != 0x0 && r20 != 0x0 && r21 != 0x0) {
            if (r23 != 0x0) {
                    [r20 doubleValue];
                    v8 = v0;
                    [r21 doubleValue];
                    v9 = v0;
                    [r22 doubleValue];
                    v10 = v0;
                    [r23 doubleValue];
                    v11 = v0;
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cachedVideoPlayerFrame));
    *(int128_t *)(r19 + r8) = d8;
    *(int128_t *)(0x8 + r19 + r8) = d9;
    *(int128_t *)(0x10 + r19 + r8) = d10;
    *(int128_t *)(0x18 + r19 + r8) = d11;
    sub_10082dd6c();
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)createNewVideo:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [GADVideoLoggingContextSource alloc];
    r23 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r0 = [r20 initWithWebAdView:r23];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loggingContextSource));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r23 release];
    [self positionVideo:r22];
    r20 = [[GADVideoConfiguration alloc] initWithDictionary:r22];
    [r22 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoPlayer));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cachedVolume));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cachedMuted));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void)rotateVideo:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"degrees"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r0 release];
    [CATransaction begin];
    [CATransaction setAnimationDuration:@"degrees"];
    CGAffineTransformRotate(&var_90, @selector(setAnimationDuration:));
    [r20 setTransform:&var_C0];
    [CATransaction commit];
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoContainerView);
    [r0 setNeedsLayout];
    [r0 release];
    return;
}

-(void)setVideoSource:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[arg2 objectForKeyedSubscript:@"src"] retain];
    r21 = [[NSURL URLWithString:r2] retain];
    if (r21 != 0x0) {
            if ([r21 isFileURL] != 0x0) {
                    r1 = @selector(loadPrecachedFileURL:);
            }
            else {
                    if (sub_10089a100(r21, *0x100e9f2e8) != 0x0) {
                            r1 = @selector(loadGCacheVideoURL:);
                    }
                    else {
                            r1 = @selector(loadNetworkVideoURL:);
                    }
            }
            objc_msgSend(r20, r1);
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)loadGCacheVideoURL:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r19 = [arg2 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_gcacheLoadRequestIdentifier));
    *(self + r20) = *(self + r20) + 0x1;
    objc_initWeak(&stack[-128], self);
    r20 = *(self + r20);
    r21 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r0 = [r19 absoluteString];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r8 = @"";
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r22;
            }
    }
    var_48 = **___stack_chk_guard;
    [[NSNumber numberWithInteger:r20] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2];
    sub_1008833e8(*0x100e9c600, r21, [r0 retain]);
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [[GADGCache sharedInstance] retain];
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_A8 + 0x28, &stack[-128]);
    r19 = [r19 retain];
    [r22 loadGCacheURL:r19 queue:r23 completionHandler:&var_A8];
    [*__dispatch_main_q release];
    [r22 release];
    [r19 release];
    objc_destroyWeak(&var_A8 + 0x28);
    objc_destroyWeak(&stack[-128]);
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadPrecachedFileURL:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = objc_loadWeakRetained((int64_t *)&r20->_adView);
    r0 = [r19 absoluteString];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r8 = @"";
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r24;
            }
    }
    sub_1008833e8(*0x100e9c5f8, r22, [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain]);
    [r25 release];
    [r24 release];
    [r22 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_precacheMonitor));
    r21 = [[*(r20 + r22) resourceBuffer] retain];
    r22 = [[*(r20 + r22) videoSourceURL] retain];
    r25 = [[r19 absoluteString] retain];
    r0 = [r21 fileURL];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 absoluteString];
    r29 = r29;
    r23 = [r0 retain];
    r27 = [r25 isEqual:r2];
    [r23 release];
    [r26 release];
    [r25 release];
    if ((r27 & 0x1) == 0x0) {
            [[r21 fileURL] retain];
            sub_1007ce06c(0x0, @"Can't load video from cached file without precache. Video file: %@, Precached file: %@");
            [r23 release];
    }
    if (r21 != 0x0) {
            r0 = [GADVideoAssetLoader alloc];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
            r24 = [r0 initWithVideoURL:r22 resourceBuffer:r21 videoConfiguration:*(r20 + r25)];
            r23 = [[GADAssetLoadingVideoPlayerItem alloc] initWithVideoURL:r22 assetLoader:r24 videoConfiguration:*(r20 + r25)];
            [r20 loadVideoFromVideoPlayerItemProvider:r23];
            [r23 release];
            [r24 release];
    }
    else {
            sub_1007ce06c(0x0, @"Can't load video from no precached file. File URL: %@");
            [r20 loadNetworkVideoURL:r19];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadNetworkVideoURL:(void *)arg2 {
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
    r20 = [arg2 retain];
    r22 = objc_loadWeakRetained((int64_t *)&r19->_adView);
    r0 = [r20 absoluteString];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r8 = @"";
    if (r23 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r23;
            }
    }
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    sub_1008833e8(*0x100e9c610, r22, [r0 retain]);
    [r24 release];
    [r23 release];
    [r22 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
    if ([*(r19 + r23) enableAdvanceBufferingControl] != 0x0) {
            r22 = [[GADVideoAssetLoader alloc] initWithVideoURL:r20 resourceBuffer:0x0 videoConfiguration:*(r19 + r23)];
            r0 = [GADAssetLoadingVideoPlayerItem alloc];
            r1 = @selector(initWithVideoURL:assetLoader:videoConfiguration:);
            r0 = objc_msgSend(r0, r1);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemProvider));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            r0 = r22;
    }
    else {
            r0 = [GADNetworkVideoPlayerItem alloc];
            r1 = @selector(initWithVideoURL:);
            r0 = objc_msgSend(r0, r1);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemProvider));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            r0 = r8;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r19 loadVideoFromVideoPlayerItemProvider:*(r19 + (r21 << r1))];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadVideoFromVideoPlayerItemProvider:(void *)arg2 {
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
    r20 = [arg2 retain];
    r21 = [GADVideoPlayer alloc];
    r22 = objc_loadWeakRetained((int64_t *)&r19->_adView);
    r23 = objc_loadWeakRetained((int64_t *)&r19->_visibilityMessageSource);
    r0 = [r21 initWithAdView:r22 playerItemProvider:r20 visibilityMessageSource:r23 videoConfiguration:r19->_videoConfiguration loggingContextSource:r19->_loggingContextSource];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_videoPlayer));
    r8 = *(r19 + r24);
    *(r19 + r24) = r0;
    [r8 release];
    [r23 release];
    [r22 release];
    r0 = r19->_cachedMuted;
    if (r0 != 0x0) {
            [*(r19 + r24) setMuted:[r0 boolValue] userInitiated:0x0];
    }
    r0 = r19->_cachedVolume;
    if (r0 != 0x0) {
            r21 = *(r19 + r24);
            [r0 floatValue];
            [r21 setVolume:0x0 userInitiated:r3];
    }
    [GADAssetLoadingVideoPlayerItem class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            [r20 setPlayer:*(r19 + r24)];
    }
    [r19 createVideoPlayerView];
    [r20 release];
    return;
}

-(void)createVideoPlayerView {
    r31 = r31 - 0xb0;
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
    var_58 = **___stack_chk_guard;
    [self->_videoPlayerView removeFromSuperview];
    r0 = [GADVideoPlayerView alloc];
    r0 = [r0 initWithFrame:r2];
    [[r0 retain] retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderingIdentifier));
    r22 = *(self + r8) + 0x1;
    *(self + r8) = r22;
    r25 = objc_loadWeakRetained((int64_t *)&self->_adView);
    [[NSNumber numberWithInteger:r22] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    sub_1008833e8(*0x100e9c618, r25, [r0 retain]);
    [r27 release];
    [r26 release];
    [r25 release];
    objc_storeStrong((int64_t *)&self->_videoPlayerView, r23);
    objc_storeStrong((int64_t *)&self->_videoPlayerViewLoader, r23);
    objc_initWeak(&stack[-128], self);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_A0 + 0x20, &stack[-128]);
    [r19 setUpWithPlayer:r20 queue:r23 completionBlock:&var_A0];
    [*__dispatch_main_q release];
    objc_destroyWeak(&var_A0 + 0x20);
    objc_destroyWeak(&stack[-128]);
    [r19 release];
    [r19 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)hideVideo:(void *)arg2 {
    [self->_videoPlayerView setHidden:0x1];
    return;
}

-(void)showVideo:(void *)arg2 {
    [self->_videoPlayerView setHidden:0x0];
    return;
}

-(void)updateBackground:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [[arg2 objectForKeyedSubscript:@"color"] retain];
    r0 = sub_1008964a0();
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r21->_videoContainerView);
            r21 = r0;
            r22 = [[r0 layer] retain];
            [r22 setBackgroundColor:[objc_retainAutorelease(r20) CGColor]];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r21->_adView);
            r21 = r0;
            r0 = [r0 context];
            r0 = [r0 retain];
            r22 = r0;
            sub_1007ce06c(r0, @"Error parsing hexadecimal color value %@.");
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setVolume:(void *)arg2 {
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
    r23 = [arg2 retain];
    r0 = [arg2 objectForKeyedSubscript:@"volume"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [arg2 objectForKeyedSubscript:@"user_initiated"];
    [r23 release];
    r0 = [r21 retain];
    r21 = [r0 boolValue];
    [r0 release];
    if (r20 != 0x0) {
            r22 = r19->_videoPlayer;
            [r20 floatValue];
            [r22 setVolume:r21 userInitiated:r3];
            [r20 floatValue];
            r0 = [NSNumber numberWithFloat:r21];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedVolume));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    return;
}

-(void)loadVideo:(void *)arg2 {
    return;
}

-(void)setMute:(void *)arg2 {
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
    r23 = [arg2 retain];
    r0 = [arg2 objectForKeyedSubscript:@"muted"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [arg2 objectForKeyedSubscript:@"user_initiated"];
    [r23 release];
    r0 = [r21 retain];
    r22 = [r0 boolValue];
    [r0 release];
    if (r20 != 0x0) {
            [r19->_videoPlayer setMuted:[r20 boolValue] userInitiated:r22];
            r0 = [NSNumber numberWithBool:[r20 boolValue]];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedMuted));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    return;
}

-(void)loadControl:(void *)arg2 {
    [self->_videoConfiguration updateDynamicConfigurationWithDictionary:arg2];
    return;
}

-(void)playVideo:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"user_initiated"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [self->_videoPlayer playUserInitiated:r21];
    return;
}

-(void)pauseVideo:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"user_initiated"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [self->_videoPlayer pauseUserInitiated:r21];
    return;
}

-(void)seekToTime:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[arg2 objectForKeyedSubscript:@"time"] retain];
    if (r19 != 0x0) {
            r20 = r20->_videoPlayer;
            [r19 doubleValue];
            [r20 seekToTime:r2];
    }
    [r19 release];
    return;
}

-(void)handlePrepareAnimation:(void *)arg2 {
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
    if ((CGRectEqualToRect([r0 initialFrame], @selector(initialFrame)) & 0x1) == 0x0) {
            [r19 initialFrame];
            *(int128_t *)(int64_t *)&r20->_cachedVideoPlayerFrame = d0;
            *(int128_t *)((int64_t *)&r20->_cachedVideoPlayerFrame + 0x8) = d1;
            *(int128_t *)((int64_t *)&r20->_cachedVideoPlayerFrame + 0x10) = d2;
            *(int128_t *)((int64_t *)&r20->_cachedVideoPlayerFrame + 0x18) = d3;
            sub_10082dd6c();
    }
    [r19 release];
    return;
}

-(void)handlePerformAnimation:(void *)arg2 {
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
    if ((CGRectEqualToRect([r0 finalFrame], @selector(finalFrame)) & 0x1) == 0x0) {
            [r19 finalFrame];
            *(int128_t *)(int64_t *)&r20->_cachedVideoPlayerFrame = d0;
            *(int128_t *)((int64_t *)&r20->_cachedVideoPlayerFrame + 0x8) = d1;
            *(int128_t *)((int64_t *)&r20->_cachedVideoPlayerFrame + 0x10) = d2;
            *(int128_t *)((int64_t *)&r20->_cachedVideoPlayerFrame + 0x18) = d3;
            sub_10082dd6c();
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cachedMuted, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedVolume, 0x0);
    objc_storeStrong((int64_t *)&self->_loggingContextSource, 0x0);
    objc_storeStrong((int64_t *)&self->_gcacheVideoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_videoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_precacheMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItemProvider, 0x0);
    objc_destroyWeak((int64_t *)&self->_visibilityMessageSource);
    objc_storeStrong((int64_t *)&self->_videoPlayerViewLoader, 0x0);
    objc_storeStrong((int64_t *)&self->_videoPlayerView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoPlayer, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_destroyWeak((int64_t *)&self->_videoContainerView);
    return;
}

@end