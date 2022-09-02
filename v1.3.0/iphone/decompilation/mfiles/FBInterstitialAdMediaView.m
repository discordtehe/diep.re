@implementation FBInterstitialAdMediaView

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_volume = 0x3f800000;
    }
    return r0;
}

-(void)setVideoReadyToDisplay:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoReadyToDisplay));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    [r0 setVideoReadyToDisplay:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)initWithDelegate:(void *)arg2 audioMuted:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_delegate, r19);
            if (r20 != 0x0) {
                    asm { fcsel      s0, s1, s0, ne };
            }
            *(int32_t *)(int64_t *)&r21->_volume = 0x3ff0000000000000;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)isVideoStopped {
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    r20 = [r0 isPlaying] ^ 0x1;
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)skippable {
    [self unskippableTime];
    r0 = var_C & 0x1;
    return r0;
}

-(void)terminateAd {
    r31 = r31 - 0xb0;
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
    r21 = self;
    r19 = [[self dataModel] retain];
    r0 = [r21 videoRendererView];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ([r19 type] == 0x2) {
            [r21 pauseVideo];
            [r21 skipRemainingTime];
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r0 = sub_100a3e318(&stack[-120], &var_80);
            if (r0 <= 0x0 && ([r21 videoEnded] & 0x1) == 0x0) {
                    r0 = [r19 videoAutoplayEnabled];
                    r0 = [r0 retain];
                    [r0 boolValue];
                    [r21 currentTime];
                    sub_100a3e4dc(&stack[-168]);
                    r25 = [[r21 cardIndex] retain];
                    r26 = [[r21 cardCount] retain];
                    r0 = [FBAdVideoLoggingEvent loggingEventWithAction:0x1 targetView:r20 autoplay:r24 currentTime:r25 cardIndex:r26 cardCount:r7];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r26 release];
                    [r25 release];
                    [r22 release];
                    if (r21 != 0x0) {
                            r22 = [[FBAdEventManager sharedManager] retain];
                            r23 = [[r19 inlineClientToken] retain];
                            r24 = [[r21 loggingParams] retain];
                            [r22 logVideoEventForToken:r23 withExtraData:r24];
                            [r24 release];
                            [r23 release];
                            [r22 release];
                    }
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(union ?)skipRemainingTime {
    r31 = r31 - 0x90;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = r8;
    r0 = [self skippable];
    if (r0 != 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [r20 unskippableTime];
            [r20 currentTime];
            sub_100a3e440(&stack[-88], &stack[-112], &stack[-136]);
            r0 = sub_100a3e3a4(r19, r29 - 0x30, &stack[-88]);
    }
    else {
            if (*qword_1011dd158 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
            }
            r8 = *qword_1011dd160;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(void)addVideoProgressTimingObserver {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_initWeak(&saved_fp - 0x28, r19);
    [r19 removeVideoProgressTimingObserver];
    r0 = [r19 videoRendererView];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x64, 0xbb8);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_50 + 0x20, r29 - 0x28);
    r22 = [[r20 addPeriodicTimeObserverForInterval:&stack[-120] queue:r22 usingBlock:&var_50] retain];
    [r19 setVideoProgressTimingObserver:r22];
    [r22 release];
    [*__dispatch_main_q release];
    [r20 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(r29 - 0x28);
    return;
}

-(void)setPlayPauseButtonVisible:(bool)arg2 {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            asm { fcsel      d8, d1, d0, ne };
    }
    r0 = [r0 playPauseButton];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r19 release];
    return;
}

-(double)getNaturalHeightForWidth:(double)arg2 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self aspectRatio];
    if (d0 > 0x0) {
            asm { fdiv       d0, d8, d0 };
            asm { frinta     d0, d0 };
    }
    return r0;
}

-(double)getNaturalWidthForHeight:(double)arg2 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self aspectRatio];
    asm { frinta     d1, d1 };
    if (d0 > 0x0) {
            asm { fcsel      d0, d1, d0, gt };
    }
    return r0;
}

-(void)applyNaturalWidth {
    CGRectGetHeight([self frame]);
    [self getNaturalWidthForHeight:r2];
    [self setFrame:r2];
    return;
}

-(void)applyNaturalHeight {
    CGRectGetWidth([self frame]);
    [self getNaturalHeightForWidth:r2];
    [self setFrame:r2];
    return;
}

-(double)aspectRatio {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self imageView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 image];
            r29 = r29;
            r0 = [r0 retain];
            [r0 size];
            [r22 release];
            if (d9 > 0x0) {
                    r21 = @selector(size);
                    r0 = [r19 image];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r21);
                    v8 = v0;
                    r0 = [r19 image];
                    r0 = [r0 retain];
                    objc_msgSend(r0, r21);
                    asm { fdiv       d8, d8, d1 };
                    [r20 release];
                    [r22 release];
            }
    }
    r0 = [r19 release];
    return r0;
}

-(void)cancelAnimation {
    r0 = [self animationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setAnimationTimer:0x0];
    return;
}

-(union ?)currentTime {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = r8;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r1 = @selector(currentTime);
            r0 = r20;
    }
    else {
            r1 = @selector(viewOnScreenTime);
            r0 = r21;
    }
    objc_msgSend(r0, r1);
    r0 = [r20 release];
    return r0;
}

-(void)dealloc {
    [self removeVideoProgressTimingObserver];
    r0 = [self viewOnScreenTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setViewOnScreenTimer:0x0];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(union ?)duration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 duration];
    }
    else {
            if (*qword_1011dd148 != -0x1) {
                    dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
            }
            r8 = *qword_1011dd150;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    r0 = [r20 release];
    return r0;
}

-(void)willBePresented {
    [self initOnScreenTimer];
    return;
}

-(void)hidePlayPauseButtonAnimated:(bool)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (([self animating] & 0x1) == 0x0) {
            [r20 cancelAnimation];
            r0 = [r20 playPauseButton];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (r0 != 0x0) {
                    asm { ccmp       w21, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    [r19 setHidden:0x1];
                    [r19 setAlpha:r2];
            }
            else {
                    [r20 setAnimating:0x1];
                    objc_initWeak(&stack[-72], r20);
                    [[NSArray arrayWithObjects:r29 - 0x30 count:0x1] retain];
                    objc_copyWeak(&var_68 + 0x28, &stack[-72]);
                    var_48 = [r19 retain];
                    [FBAdUtility animateWithFadeOut:r22 duration:&var_68 completion:r4];
                    [r22 release];
                    [var_48 release];
                    objc_destroyWeak(&var_68 + 0x28);
                    objc_destroyWeak(&stack[-72]);
            }
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)didBecomeInvisible {
    [self setVisible:r2];
    return;
}

-(void)didBecomeVisible {
    [self setVisible:r2];
    return;
}

-(void)setVisible:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_visible));
    if (*(int8_t *)(r0 + r22) != r2) {
            r19 = r2;
            r20 = r0;
            if (r2 != 0x0) {
                    [r20 initOnScreenTimer];
            }
            else {
                    r0 = [r20 viewOnScreenTimer];
                    r0 = [r0 retain];
                    [r0 invalidate];
                    [r0 release];
            }
            *(int8_t *)(r20 + r22) = r19;
    }
    return;
}

-(void)setupNotifications {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    objc_initWeak(&stack[-56], self);
    [[NSOperationQueue mainQueue] retain];
    [[FBAdNotificationCenter notificationCenterForObject:self] retain];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r20 addNotificationWithName:r22 object:0x0 queue:r19 block:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    [r20 release];
    [r19 release];
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)initOnScreenTimer {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self dataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 type];
    [r0 release];
    if (r21 == 0x1) {
            r0 = [r19 viewOnScreenTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            objc_initWeak(&stack[-56], r19);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_50 block:r4];
            r22 = [r0 retain];
            [r21 release];
            [r19 setViewOnScreenTimer:r22];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
            [r22 release];
    }
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x90;
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
    r20 = self;
    r19 = [[self imageView] retain];
    [r20 bounds];
    [r19 setFrame:r2];
    r21 = [[r20 videoRendererView] retain];
    [r20 bounds];
    [r21 setFrame:r2];
    r24 = [[r20 dataModel] retain];
    r0 = [r20 playPauseButton];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r0 = [r24 type];
    if (r25 == 0x0 && r0 == 0x2) {
            r26 = [[FBAdVideoPlayPauseButton videoPlayPauseButton] retain];
            [r25 release];
            [r26 setStyle:0x1];
            [r26 addTarget:r20 action:@selector(playPauseButtonTapped:) forControlEvents:0x40];
            [r20 addSubview:r26];
            [r20 setPlayPauseButton:r26];
            r0 = [r24 videoAutoplayEnabled];
            r0 = [r0 retain];
            r27 = [r0 boolValue];
            [r0 release];
            if (r27 != 0x0) {
                    r1 = @selector(hidePlayPauseButtonAnimated:);
            }
            else {
                    [r26 setHighlighted:0x1];
                    r1 = @selector(showPlayPauseButtonAnimated:);
            }
            r2 = 0x0;
            objc_msgSend(r20, r1);
            r25 = r26;
    }
    CGRectGetWidth([r20 bounds]);
    CGRectGetHeight([r20 bounds]);
    [r25 setFrame:r2];
    [r20 bringSubviewToFront:r21];
    [r20 bringSubviewToFront:r19];
    [r20 bringSubviewToFront:r25];
    [[&var_80 super] layoutSubviews];
    [r25 release];
    [r24 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadAdFromDataModel:r21 placementDefinition:arg3 cardIndex:0x0 cardCount:0x0];
    [r21 release];
    return;
}

-(void)pauseVideo {
    [self cancelAnimation];
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    [r0 pauseVideo];
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_38);
    return;
}

-(void)playPauseButtonTapped:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self delegate] retain];
    r0 = [r19 videoRendererView];
    r0 = [r0 retain];
    r22 = [r0 isPlaying];
    [r0 release];
    if (r22 != 0x0) {
            [r19 pauseVideo];
            r21 = @selector(interstitialAdMediaViewDidPauseVideo:);
    }
    else {
            [r19 playVideo];
            r21 = @selector(interstitialAdMediaViewDidStartVideo:);
    }
    if ([r20 respondsToSelector:r2] != 0x0) {
            objc_msgSend(r20, r21);
    }
    [r20 release];
    return;
}

-(void)playVideo {
    r0 = [self imageView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    [r0 playVideo];
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_38);
    return;
}

-(void)registerLoaded {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdMediaViewDidLoad:self];
    [r0 release];
    return;
}

-(void)setVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_volume = s0;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    [r0 setVolume:arg2];
    [r0 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 cardIndex:(void *)arg4 cardCount:(void *)arg5 {
    r31 = r31 - 0x120;
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
    r22 = self;
    r25 = [arg2 retain];
    r27 = [arg3 retain];
    var_F0 = [arg4 retain];
    var_F8 = [arg5 retain];
    objc_storeWeak((int64_t *)&r22->_dataModel, r25);
    objc_storeStrong((int64_t *)&r22->_cardIndex, arg4);
    objc_storeStrong((int64_t *)&r22->_cardCount, arg5);
    r19 = (int64_t *)&r22->_viewOnScreenTime;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    q0 = *(int128_t *)r8;
    *(r19 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r19 = q0;
    r0 = [r22 imageView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [UIImageView new];
    [r0 setContentMode:0x1];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r22 setBackgroundColor:r21];
    [r21 release];
    [r22 addSubview:r0];
    [r22 setImageView:r0];
    r24 = [[r25 image] retain];
    objc_initWeak(r29 - 0x60, r22);
    r23 = &var_98 + 0x30;
    objc_copyWeak(r23, r29 - 0x60);
    r0 = [r20 retain];
    r26 = r0;
    var_78 = r0;
    r0 = [r25 retain];
    r25 = r0;
    var_70 = r0;
    [r24 loadImageAsyncWithBlock:&var_98];
    r0 = [r22 videoRendererView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [FBNativeAdDataModel class];
    if ([r25 isKindOfClass:r2] != 0x0) {
            if (r25 != 0x0) {
                    [r25 forcedViewTime];
                    r8 = &var_B0;
            }
            else {
                    r8 = &var_B0;
            }
            [r22 setUnskippableTime:&var_D0];
    }
    if ([r25 type] == 0x2) {
            r0 = [r25 videoURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    var_100 = r27;
                    r21 = [FBAdVideoRendererView alloc];
                    r27 = [[r25 image] retain];
                    r28 = [r21 initWithBackgroundImage:r27];
                    [r27 release];
                    r21 = [[r22 videoReadyToDisplay] retain];
                    [r28 setVideoReadyToDisplay:r21];
                    [r21 release];
                    [r28 setDelegate:r22];
                    [r28 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:r22 action:@selector(videoViewTapped:)]];
                    [[r25 videoURL] retain];
                    [var_100 videoTimePollingInterval];
                    sub_100a3e550(&stack[-248]);
                    r21 = [[r25 inlineClientToken] retain];
                    r0 = [r25 videoAutoplayEnabled];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r28 loadVideoURL:r19 pollingInterval:&stack[-248] clientToken:r21 autoplayEnabled:[r0 boolValue] cardIndex:var_F0 cardCount:var_F8];
                    [r0 release];
                    [r21 release];
                    [r19 release];
                    [r22 addSubview:r28];
                    [r22 setVideoRendererView:r28];
                    [r20 release];
                    [r28 release];
                    r27 = var_100;
            }
    }
    [r22 setupNotifications];
    [var_70 release];
    [var_78 release];
    objc_destroyWeak(r23);
    objc_destroyWeak(r29 - 0x60);
    [r24 release];
    [r26 release];
    [var_F8 release];
    [var_F0 release];
    [r27 release];
    [r25 release];
    return;
}

-(void)scheduleHidePlayPauseButton {
    [self cancelAnimation];
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x0 repeats:&var_50 block:r4];
    r21 = [r0 retain];
    [self setAnimationTimer:r21];
    [r21 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)removeVideoProgressTimingObserver {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoProgressTimingObserver];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 videoRendererView] retain];
            r20 = [[r19 videoProgressTimingObserver] retain];
            [r21 removeTimeObserver:r20];
            [r20 release];
            [r21 release];
            [r19 setVideoProgressTimingObserver:0x0];
    }
    return;
}

-(float)volume {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 volume];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(void)videoViewTapped:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self togglePlayPauseButton];
    r0 = [r19 onTap];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 onTap];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r19 release];
    }
    return;
}

-(void)showPlayPauseButtonAnimated:(bool)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (([self animating] & 0x1) == 0x0) {
            [r20 cancelAnimation];
            r0 = [r20 playPauseButton];
            r0 = [r0 retain];
            r19 = r0;
            [r0 setHidden:0x0];
            if (r19 != 0x0) {
                    asm { ccmp       w21, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    [r19 setAlpha:r2];
            }
            else {
                    [r20 setAnimating:0x1];
                    objc_initWeak(&stack[-72], r20);
                    [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
                    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                    [FBAdUtility animateWithFadeIn:r22 duration:&var_60 completion:r4];
                    [r22 release];
                    objc_destroyWeak(&var_60 + 0x20);
                    objc_destroyWeak(&stack[-72]);
            }
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)togglePlayPauseButton {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoRendererView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isPlaying];
    [r0 release];
    if (r21 != 0x0) {
            r20 = [[r19 delegate] retain];
            r0 = [r19 playPauseButton];
            r0 = [r0 retain];
            [r0 alpha];
            [r0 release];
            if (d8 < 0x3ff0000000000000) {
                    [r19 showPlayPauseButtonAnimated:0x1];
                    r21 = @selector(interstitialAdMediaViewDidShowPlayButton:);
            }
            else {
                    [r19 hidePlayPauseButtonAnimated:0x1];
                    r21 = @selector(interstitialAdMediaViewDidHidePlayButton:);
            }
            if ([r20 respondsToSelector:r2] != 0x0) {
                    objc_msgSend(r20, r21);
            }
            [r20 release];
    }
    return;
}

-(void)videoViewDidLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setVideoLoaded:0x1];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 audioMuted] != 0x0) {
            asm { fcsel      s0, s1, s0, ne };
    }
    [r19 setVolume:0x1];
    [r20 release];
    [r19 addVideoProgressTimingObserver];
    [r19 registerLoaded];
    return;
}

-(void)videoView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdMediaView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cardCount, 0x0);
    objc_storeStrong((int64_t *)&self->_cardIndex, 0x0);
    objc_destroyWeak((int64_t *)&self->_videoRendererView);
    objc_storeStrong((int64_t *)&self->_videoProgressTimingObserver, 0x0);
    objc_destroyWeak((int64_t *)&self->_playPauseButton);
    objc_storeStrong((int64_t *)&self->_viewOnScreenTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_animationTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_videoReadyToDisplay, 0x0);
    objc_storeStrong((int64_t *)&self->_onTap, 0x0);
    objc_destroyWeak((int64_t *)&self->_imageView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_dataModel);
    return;
}

-(void)videoViewDidEnd:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self playPauseButton];
    r0 = [r0 retain];
    [r0 setHighlighted:0x1];
    [r0 release];
    r0 = [r19 imageView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    [r19 setVideoEnded:0x1];
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    [r19 setUnskippableTime:&var_30];
    [r19 showPlayPauseButtonAnimated:0x0];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 interstitialAdMediaViewDidEnd:r19];
    [r0 release];
    [r19 setNeedsLayout];
    return;
}

-(void *)dataModel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_dataModel);
    r0 = [r0 autorelease];
    return r0;
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

-(void *)imageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_imageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_imageView, arg2);
    return;
}

-(void *)onTap {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onTap)), 0x0);
    return r0;
}

-(void)setOnTap:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)videoReadyToDisplay {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoReadyToDisplay)), 0x0);
    return r0;
}

-(bool)animating {
    r0 = *(int8_t *)(int64_t *)&self->_animating;
    return r0;
}

-(void)setAnimating:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animating = arg2;
    return;
}

-(void)setAnimationTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_animationTimer, arg2);
    return;
}

-(void *)animationTimer {
    r0 = self->_animationTimer;
    return r0;
}

-(void *)viewOnScreenTimer {
    r0 = self->_viewOnScreenTimer;
    return r0;
}

-(void)setViewOnScreenTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewOnScreenTimer, arg2);
    return;
}

-(union ?)viewOnScreenTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewOnScreenTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setViewOnScreenTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewOnScreenTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void *)playPauseButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_playPauseButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayPauseButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_playPauseButton, arg2);
    return;
}

-(void)setVideoLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoLoaded = arg2;
    return;
}

-(bool)videoLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_videoLoaded;
    return r0;
}

-(void *)videoProgressTimingObserver {
    r0 = self->_videoProgressTimingObserver;
    return r0;
}

-(void)setVideoProgressTimingObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoProgressTimingObserver, arg2);
    return;
}

-(void)setVideoRendererView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoRendererView, arg2);
    return;
}

-(void *)videoRendererView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoRendererView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setUnskippableTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_unskippableTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(union ?)unskippableTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_unskippableTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setVideoEnded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoEnded = arg2;
    return;
}

-(bool)videoEnded {
    r0 = *(int8_t *)(int64_t *)&self->_videoEnded;
    return r0;
}

-(void)setCardIndex:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cardIndex, arg2);
    return;
}

-(void *)cardIndex {
    r0 = self->_cardIndex;
    return r0;
}

-(void)setCardCount:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cardCount, arg2);
    return;
}

-(void *)cardCount {
    r0 = self->_cardCount;
    return r0;
}

-(bool)visible {
    r0 = *(int8_t *)(int64_t *)&self->_visible;
    return r0;
}

@end