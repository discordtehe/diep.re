@implementation FBAdStoriesPageView

-(void)configureWithDataModel:(void *)arg2 placementDefinition:(void *)arg3 pageIndex:(long long)arg4 pageCount:(long long)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r21 = arg4;
    r22 = self;
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    if ([r20 type] == 0x1) {
            [r22 configureAsImagePageWithDataModel:r20];
    }
    if ([r20 type] == 0x2) {
            [r22 configureAsVideoPageWithDataModel:r20 placementDefinition:r23 pageIndex:r21 pageCount:r19];
    }
    [r23 release];
    [r20 release];
    return;
}

-(void)configureAsImagePageWithDataModel:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 imageView];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 retain];
    }
    else {
            r20 = [UIImageView alloc];
            [r21 bounds];
            r0 = [r20 initWithFrame:r2];
    }
    [r22 release];
    [r21 addSubview:r0];
    objc_storeStrong((int64_t *)&r21->_imageView, r0);
    objc_initWeak(&stack[-56], r21);
    [[r19 image] retain];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r22 loadImageAsyncWithBlock:&var_50];
    [r22 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r20 release];
    [r19 release];
    return;
}

-(void)fadeInView:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setDuration:@"opacity"];
    r22 = @class(NSNumber);
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 opacity];
    r22 = [[r22 numberWithFloat:@"opacity"] retain];
    [r20 setFromValue:r22];
    [r22 release];
    [r0 release];
    r22 = [@(0x1) retain];
    [r20 setToValue:r22];
    [r22 release];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 addAnimation:r20 forKey:@"fadeInAnimation"];
    [r0 release];
    [r19 setAlpha:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void)playContent {
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
    r0 = [self window];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 videoRendererView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r19->_videoRendererView playVideo];
            }
            else {
                    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_imageViewTimer))) invalidate];
                    objc_initWeak(&stack[-72], r19);
                    [*__dispatch_main_q retain];
                    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                    r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:r22 queue:&var_60 block:r5];
                    r0 = [r0 retain];
                    r8 = *(r19 + r23);
                    *(r19 + r23) = r0;
                    [r8 release];
                    [*__dispatch_main_q release];
                    objc_destroyWeak(&var_60 + 0x20);
                    objc_destroyWeak(&stack[-72]);
            }
    }
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x70;
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
    [[&var_60 super] layoutSubviews];
    [r19 bounds];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_imageView));
    [*(r19 + r25) setFrame:r2];
    [r19 bounds];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoRendererView));
    [*(r19 + r22) setFrame:r2];
    [*(r19 + r22) wantedVideoContainerFrame];
    d1 = *(int128_t *)(*_CGPointZero + 0x8);
    [*(r19 + r22) setFrame:r2];
    r0 = *(r19 + r25);
    r0 = [r0 image];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 bounds];
            r0 = *(r19 + r25);
            r0 = [r0 image];
            r0 = [r0 retain];
            [r0 size];
            r0 = *(r19 + r25);
            r0 = [r0 image];
            r0 = [r0 retain];
            objc_msgSend(r0, r24);
            asm { fdiv       d8, d8, d0 };
            [r22 release];
            [r23 release];
            objc_msgSend(r19, r20);
            objc_msgSend(*(r19 + r25), r21);
    }
    return;
}

-(void)pauseContent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19->_videoRendererView pauseVideo];
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_imageViewTimer));
            [*(r19 + r20) invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)configureAsVideoPageWithDataModel:(void *)arg2 placementDefinition:(void *)arg3 pageIndex:(long long)arg4 pageCount:(long long)arg5 {
    r31 = r31 - 0x100;
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
    r23 = arg5;
    r24 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r22 videoRendererView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            r0 = [r25 retain];
    }
    else {
            r21 = [FBAdVideoRendererView alloc];
            [r22 bounds];
            r0 = [r21 initWithFrame:r2];
    }
    r21 = r0;
    [r25 release];
    [r21 setDelegate:r22];
    [r22 addSubview:r21];
    objc_storeStrong((int64_t *)&r22->_videoRendererView, r21);
    [r21 setAlpha:r21];
    objc_initWeak(r29 - 0x70, r22);
    r22 = &var_98 + 0x20;
    objc_copyWeak(r22, r29 - 0x70);
    [r21 setVideoReadyToDisplay:&var_98];
    [[r19 videoURL] retain];
    [r20 videoTimePollingInterval];
    sub_100a3e550(&stack[-192]);
    r26 = [[r19 inlineClientToken] retain];
    r24 = [[NSNumber numberWithInteger:r24] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:r23];
    r29 = r29;
    r23 = [r0 retain];
    [r21 loadVideoURL:r25 pollingInterval:&stack[-192] clientToken:r26 autoplayEnabled:0x0 cardIndex:r24 cardCount:r23];
    [r23 release];
    [r24 release];
    [r26 release];
    [r25 release];
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x32, 0x3e8);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_D8 + 0x20, r29 - 0x70);
    [r21 addPeriodicTimeObserverForInterval:&stack[-256] queue:r24 usingBlock:&var_D8];
    objc_unsafeClaimAutoreleasedReturnValue();
    [*__dispatch_main_q release];
    objc_destroyWeak(&var_D8 + 0x20);
    objc_destroyWeak(r22);
    objc_destroyWeak(r29 - 0x70);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)isPlaying {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 release];
    if (r20 != 0x0) {
            r0 = r19->_videoRendererView;
            r0 = [r0 isPlaying];
    }
    else {
            if (r19->_imageViewTimer != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(union ?)duration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r0 = [self videoRendererView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 videoRendererView];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 duration];
            }
            else {
                    *(int128_t *)r19 = 0x0;
                    *(int128_t *)(r19 + 0x8) = 0x0;
                    *(r19 + 0x10) = 0x0;
            }
            r0 = [r20 release];
    }
    else {
            r0 = [r20 defaultImageDisplayDuration];
    }
    return r0;
}

-(union ?)currentTime {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r0 = [self videoRendererView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 videoRendererView];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 currentTime];
            }
            else {
                    *(int128_t *)r19 = 0x0;
                    *(int128_t *)(r19 + 0x8) = 0x0;
                    *(r19 + 0x10) = 0x0;
            }
            r0 = [r20 release];
    }
    else {
            r0 = [r20 imageViewCurrentTime];
    }
    return r0;
}

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = self;
    r0 = [self videoRendererView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 videoRendererView];
            r0 = [r0 retain];
            [r0 setCurrentTime:&var_40];
            [r0 release];
    }
    else {
            [r20 setImageViewCurrentTime:&var_60];
    }
    return;
}

-(union ?)defaultImageDisplayDuration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    [r0 storiesImageDisplayDuration];
    asm { fcvtzs     x21, d0 };
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r21, 0x3e8);
    r0 = [r20 release];
    return r0;
}

-(void)videoViewDidLoad:(void *)arg2 {
    return;
}

-(void)videoView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 pageView:self didFailToPrepareContentWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)videoViewDidEnd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 pageViewDidEndDisplayingPage:self];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoRendererView, 0x0);
    objc_storeStrong((int64_t *)&self->_imageView, 0x0);
    objc_storeStrong((int64_t *)&self->_imageViewTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(double)volume {
    r0 = self;
    return r0;
}

-(void)pageTimer:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = &saved_fp - 0x38;
    r0 = [self delegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 imageViewCurrentTime];
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x32, 0x3e8);
    sub_100a3e6cc(r29 - 0x38, r29 - 0x50, &stack[-120]);
    [r19 defaultImageDisplayDuration];
    r0 = sub_100a3e318(&var_A0, &stack[-144]);
    if (r0 >= 0x1) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_imageViewTimer));
            [*(r19 + r21) invalidate];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
            [r20 pageViewDidEndDisplayingPage:r19];
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_imageViewCurrentTime));
            *(int128_t *)(r19 + r8) = *(int128_t *)r21;
            *(0x10 + r19 + r8) = var_28;
            [r20 pageView:r19 didChangeCurrentTime:&var_C0];
    }
    [r20 release];
    return;
}

-(void)setVolume:(double)arg2 {
    self->_volume = d0;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(union ?)imageViewCurrentTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_imageViewCurrentTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setImageViewCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_imageViewCurrentTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void *)imageViewTimer {
    r0 = self->_imageViewTimer;
    return r0;
}

-(void)setImageViewTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageViewTimer, arg2);
    return;
}

-(void *)imageView {
    r0 = self->_imageView;
    return r0;
}

-(void)setImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageView, arg2);
    return;
}

-(void)setVideoRendererView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoRendererView, arg2);
    return;
}

-(void *)videoRendererView {
    r0 = self->_videoRendererView;
    return r0;
}

@end