@implementation MOPUBPlayerViewController

-(void *)initWithVideoConfig:(void *)arg2 nativeVideoAdConfig:(void *)arg3 {
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
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = [r21 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 mediaURL];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mediaURL));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = [r0 initWithFrame:r22 delegate:r3];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerView));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r22 setDisplayMode:0x0];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(applicationDidEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 addObserver:r22 selector:@selector(applicationDidEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            objc_storeStrong((int64_t *)&r22->_nativeVideoAdConfig, r21);
            r22->_videoAspectRatio = 0x3ffc71c720000000;
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r20 = [[self view] retain];
    r21 = [[self playerView] retain];
    [r20 addSubview:r21];
    [r21 release];
    [r20 release];
    [self startLoadingIndicator];
    return;
}

-(void)viewWillLayoutSubviews {
    [[&var_50 super] viewWillLayoutSubviews];
    r21 = [[self view] retain];
    r22 = [[self muteButton] retain];
    [r21 bringSubviewToFront:r22];
    [r22 release];
    [r21 release];
    r0 = [self view];
    r0 = [r0 retain];
    r20 = r0;
    [r0 bounds];
    r0 = [self playerView];
    r0 = [r0 retain];
    [r0 setFrame:r22];
    [r0 release];
    [r20 release];
    [self layoutLoadingIndicator];
    return;
}

-(void)dispose {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 dispose];
    [r0 release];
    [self setAvPlayer:0x0];
    [self setDisposed:0x1];
    return;
}

-(void)layoutLoadingIndicator {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_loadingIndicator));
    if (*(r0 + r22) != 0x0) {
            r0 = [r0 view];
            r0 = [r0 retain];
            CGRectGetWidth([r0 bounds]);
            CGRectGetWidth([*(r19 + r22) bounds]);
            [*(r19 + r22) setMp_x:r2];
            [r20 release];
            [*(r19 + r22) setMp_y:r2];
    }
    return;
}

-(void)handleVideoInitError {
    r20 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r20 handleVideoEvent:0xc videoTimeOffset:r3];
    [r0 release];
    [r20 release];
    [self stopLoadingIndicator];
    r0 = [self playerView];
    r0 = [r0 retain];
    [r0 handleVideoInitFailure];
    [r0 release];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    r0 = [r19 avPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 avPlayer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeObserver:r2 forKeyPath:r3];
            [r20 release];
    }
    r0 = [r19 playerItem];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 playerItem];
            r0 = [r0 retain];
            [r0 removeObserver:r2 forKeyPath:r3];
            [r21 release];
            r0 = [r19 playerItem];
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            [r20 release];
    }
    r22 = [[NSString stringWithFormat:@"playerViewController dealloc called"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    [r22 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)loadAndPlayVideo {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [self setStartedLoading:0x1];
    r19 = objc_alloc();
    r0 = [r20 mediaURL];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r19 = [r19 initWithURL:r21 options:0x0];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
            r21 = [r0 retain];
            r0 = [r19 retain];
            var_50 = r21;
            r21 = [r21 retain];
            [r0 loadValuesAsynchronouslyForKeys:r21 completionHandler:&var_80];
            [var_50 release];
            [r0 release];
            [r21 release];
    }
    else {
            r22 = [[r20 mediaURL] retain];
            r24 = [[NSString stringWithFormat:@"failed to initialize video asset for URL %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
            [r24 release];
            [r22 release];
            [r20 handleVideoInitError];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setVideoAspectRatioWithAsset:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 tracksWithMediaType:**_AVMediaTypeVideo];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 count];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r19 tracksWithMediaType:**_AVMediaTypeVideo];
                    r0 = [r0 retain];
                    r21 = [[r0 objectAtIndexedSubscript:0x0] retain];
                    [r0 release];
                    [r21 naturalSize];
                    if (r21 != 0x0) {
                            [r21 preferredTransform];
                            d2 = var_70;
                            d1 = stack[-120];
                            d3 = var_60;
                            d0 = stack[-104];
                    }
                    else {
                            d0 = 0x0;
                            d1 = 0x0;
                            d3 = 0x0;
                            d2 = 0x0;
                    }
                    d2 = d8 * d2 + d9 * d3;
                    if (d2 != 0x0 && !CPU_FLAGS & O) {
                            d0 = d8 * d1 + d9 * d0;
                            if (d0 != 0x0 && !CPU_FLAGS & O) {
                                    d0 = Abs(d0);
                                    asm { fdiv       d0, d1, d0 };
                                    r20->_videoAspectRatio = d0;
                            }
                    }
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)createView {
    r0 = [self playerView];
    r0 = [r0 retain];
    [r0 createPlayerView];
    [r0 release];
    [self createMuteButton];
    return;
}

-(void)initOnVideoReady {
    [self startPlayer];
    return;
}

-(void)prepareToPlayAsset:(void *)arg2 withKeys:(void *)arg3 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isPlayable] & 0x1) != 0x0) {
            r22 = [r19 statusOfValueForKey:@"tracks" error:&var_38];
            r21 = [var_38 retain];
            if (r22 != 0x2) {
                    if (r22 == 0x3) {
                            r24 = [[NSString stringWithFormat:@"AVKeyValueStatusFailed"] retain];
                            r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
                            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
                            [r23 release];
                            [r24 release];
                            [r20 handleVideoInitError];
                    }
            }
            else {
                    [r20 setVideoAspectRatioWithAsset:r19];
                    r22 = [[AVPlayerItem playerItemWithAsset:r19] retain];
                    [r20 setPlayerItem:r22];
                    [r22 release];
                    r22 = objc_alloc();
                    r23 = [[r20 playerItem] retain];
                    r24 = [r22 initWithDelegate:r20 playerItem:r23];
                    [r20 setAvPlayer:r24];
                    [r24 release];
                    [r23 release];
                    r0 = [r20 avPlayer];
                    r0 = [r0 retain];
                    [r0 setMuted:0x1];
                    [r0 release];
                    r24 = [[r20 playerView] retain];
                    r20 = [[r20 avPlayer] retain];
                    [r24 setAvPlayer:r20];
                    [r20 release];
                    [r24 release];
            }
    }
    else {
            r23 = [[NSString stringWithFormat:@"asset is not playable"] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
            [r20 handleVideoInitError];
            r21 = 0x0;
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)displayAgent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayAgent));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = [MPAdDestinationDisplayAgent agentWithDelegate:r19];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)startPlayer {
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
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    [r19 setPlaying:0x1];
    [r19 setIsReadyToPlay:0x1];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(playerPlaybackDidStart:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 playerPlaybackDidStart:r19];
            [r0 release];
    }
    return;
}

-(void)createMuteButton {
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
    r0 = [self muteButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r21 = [[MPExtendedHitBoxButton buttonWithType:0x0] retain];
            [r19 setMuteButton:r21];
            [r21 release];
            r21 = [[r19 muteButton] retain];
            r22 = @class(UIImage);
            r23 = [sub_1004af7bc() retain];
            r22 = [[r22 imageNamed:r23] retain];
            [r21 setImage:r22 forState:0x0];
            [r22 release];
            [r23 release];
            [r21 release];
            r21 = [[r19 muteButton] retain];
            r22 = @class(UIImage);
            r23 = [sub_1004af7bc() retain];
            r22 = [[r22 imageNamed:r23] retain];
            [r21 setImage:r22 forState:0x4];
            [r22 release];
            [r23 release];
            [r21 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(muteButtonTapped) forControlEvents:0x40];
            [r0 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            [r0 setTouchAreaInsets:r19];
            [r0 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            [r0 sizeToFit];
            [r0 release];
            r22 = [[r19 view] retain];
            r23 = [[r19 muteButton] retain];
            [r22 addSubview:r23];
            [r23 release];
            [r22 release];
            r0 = [r19 view];
            r0 = [r0 retain];
            CGRectGetMaxY([r0 bounds]);
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            CGRectGetHeight([r0 bounds]);
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            CGRectGetWidth([r0 bounds]);
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            CGRectGetHeight([r0 bounds]);
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r19 release];
            [r25 release];
            [r24 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)setPlayerItem:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r22 = (int64_t *)&r19->_playerItem;
    r0 = *r22;
    if (r0 != 0x0) {
            [r0 removeObserver:r19 forKeyPath:@"status"];
            [*r22 removeObserver:r19 forKeyPath:@"loadedTimeRanges"];
    }
    r20 = [r20 retain];
    r0 = *r22;
    *r22 = r20;
    [r0 release];
    if (r20 != 0x0) {
            [*r22 addObserver:r19 forKeyPath:@"status" options:0x5 context:0x0];
            [*r22 addObserver:r19 forKeyPath:@"loadedTimeRanges" options:0x5 context:*0x1011bdae0];
    }
    [r20 release];
    return;
}

-(void)setAvPlayer:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [arg2 retain];
    r22 = (int64_t *)&r20->_avPlayer;
    r0 = *r22;
    if (r0 != 0x0) {
            [r0 removeObserver:r20 forKeyPath:@"status"];
    }
    objc_storeStrong(r22, r21);
    r0 = *r22;
    if (r0 != 0x0) {
            [r0 addObserver:r20 forKeyPath:@"status" options:0x5 context:0x0];
    }
    [r19 release];
    return;
}

-(void)setMuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_muted = arg2;
    r0 = [self muteButton];
    r0 = [r0 retain];
    [r0 setSelected:arg2 ^ 0x1];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 setMuted:arg2];
    [r0 release];
    return;
}

-(unsigned long long)displayMode {
    r0 = [self playerView];
    r0 = [r0 retain];
    r20 = [r0 displayMode];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setDisplayMode:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self playerView];
    r0 = [r0 retain];
    [r0 setDisplayMode:arg2];
    [r0 release];
    if (arg2 == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r20 setMuted:r2];
    return;
}

-(void *)loadingIndicator {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_loadingIndicator));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 initWithActivityIndicatorStyle:0x1];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [*(r19 + r21) setHidesWhenStopped:0x1];
            r20 = [[UIColor whiteColor] retain];
            [*(r19 + r21) setColor:r20];
            [r20 release];
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)startLoadingIndicator {
    r0 = [self loadingIndicator];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 superview];
    r0 = [r0 retain];
    [r0 bringSubviewToFront:self->_loadingIndicator];
    [r0 release];
    [r21 release];
    r0 = [self loadingIndicator];
    r0 = [r0 retain];
    [r0 startAnimating];
    [r0 release];
    return;
}

-(void)stopLoadingIndicator {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loadingIndicator));
    r0 = *(self + r20);
    if (r0 != 0x0 && [r0 isAnimating] != 0x0) {
            [*(r19 + r20) stopAnimating];
    }
    return;
}

-(void)removeLoadingIndicator {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loadingIndicator));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 stopAnimating];
            [*(r19 + r20) removeFromSuperview];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)pause {
    [self setPaused:0x1];
    [self setPlaying:0x0];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    r21 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:0x3 videoTimeOffset:r3];
    [r0 release];
    [r21 release];
    return;
}

-(void)muteButtonTapped {
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
    r0 = [self muteButton];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 isSelected] ^ 0x1;
    r0 = [r19 muteButton];
    r0 = [r0 retain];
    [r0 setSelected:r23];
    [r0 release];
    [r21 release];
    r0 = [r19 muteButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r19 setMuted:[r0 isSelected] ^ 0x1];
    [r20 release];
    if ([r19 muted] == 0x0) {
            asm { cinc       x20, x8, eq };
    }
    r21 = [[r19 vastTracking] retain];
    r0 = [r19 avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:r20 videoTimeOffset:r3];
    [r0 release];
    [r21 release];
    return;
}

-(void)resume {
    [self setPaused:0x0];
    [self setPlaying:0x1];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    r21 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:0x4 videoTimeOffset:r3];
    [r0 release];
    [r21 release];
    return;
}

-(void)seekToTime:(double)arg2 {
    [[self avPlayer] retain];
    CMTimeMakeWithSeconds(0x3b9aca00, @selector(avPlayer));
    r8 = *_kCMTimeZero;
    [r19 seekToTime:&stack[-72] toleranceBefore:&var_50 toleranceAfter:&var_70];
    [r19 release];
    return;
}

-(bool)shouldStartNewPlayer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 applicationState];
    [r0 release];
    if (([r19 startedLoading] & 0x1) == 0x0 && ([r19 playing] & 0x1) == 0x0) {
            [r19 paused];
            if (r20 == 0x0) {
                    asm { ccmp       w0, #0x0, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)shouldResumePlayer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 applicationState];
    [r0 release];
    if ([r19 startedLoading] != 0x0 && [r19 paused] != 0x0) {
            if (([r19 displayMode] | r20) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)shouldPausePlayer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self playing] != 0x0 && [r19 displayMode] == 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)willEnterFullscreen {
    [self setDisplayMode:0x1];
    r21 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:0x5 videoTimeOffset:r3];
    [r0 release];
    [r21 release];
    r20 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r20 handleVideoEvent:0x7 videoTimeOffset:r3];
    [r0 release];
    [r20 release];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0x110;
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
    r25 = arg5;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 avPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r20) goto loc_10046b4e0;

loc_10046b484:
    r0 = [r22 playerItem];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r20) goto loc_10046b618;

loc_10046b4b0:
    [[&var_100 super] observeValueForKeyPath:r19 ofObject:r20 change:r21 context:r25];
    goto loc_10046b978;

loc_10046b978:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10046b618:
    if (*qword_1011bdae0 == r25) {
            r0 = [r22 playerItem];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 loadedTimeRanges];
            r29 = r29;
            r25 = [r0 retain];
            [r26 release];
            if (r25 != 0x0 && [r25 count] != 0x0) {
                    r0 = [r25 objectAtIndex:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            [r26 CMTimeRangeValue];
                    }
                    else {
                            v0 = 0x0;
                            var_90 = q0;
                            var_A0 = q0;
                    }
                    [r26 release];
                    CMTimeGetSeconds(&var_C0);
                    CMTimeGetSeconds(&var_C0);
                    r0 = objc_msgSend(r22, r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            [r26 duration];
                    }
                    CMTimeGetSeconds(&var_D8);
                    [r26 release];
                    if (*0x100b9b5c0 + d8 + d9 >= d10 && ([r22 downloadFinishedEventFired] & 0x1) == 0x0) {
                            [r22 setDownloadFinishedEventFired:0x1];
                    }
            }
            [r25 release];
    }
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10046b978;

loc_10046b7b4:
    r0 = [r22 playerItem];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 status];
    [r0 release];
    if (r25 == 0x2) goto loc_10046b828;

loc_10046b7ec:
    if (r25 == 0x1) {
            r0 = [r22 playerItem];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    [r23 duration];
            }
            CMTimeGetSeconds(&var_F0);
            r0 = [r22 vastTracking];
            r0 = [r0 retain];
            [r0 setVideoDuration:@"status"];
            [r0 release];
            [r23 release];
            if (([r22 alreadyInitialized] & 0x1) == 0x0) {
                    [r22 setAlreadyInitialized:0x1];
                    [r22 initOnVideoReady];
            }
    }
    goto loc_10046b978;

loc_10046b828:
    r26 = [[NSString stringWithFormat:@"avPlayerItem status failed"] retain];
    r25 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r22 class]];
    [r25 release];
    [r26 release];
    r24 = [[r22 vastTracking] retain];
    r0 = [r22 avPlayer];
    goto loc_10046b5dc;

loc_10046b5dc:
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r24 handleVideoEvent:0xc videoTimeOffset:0x0];
    [r0 release];
    [r24 release];
    goto loc_10046b978;

loc_10046b4e0:
    r0 = [r22 avPlayer];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 status];
    [r0 release];
    if (r25 != 0x2) goto loc_10046b978;

loc_10046b518:
    r26 = [[NSString stringWithFormat:@"avPlayer status failed"] retain];
    r25 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r22 class]];
    [r25 release];
    [r26 release];
    r24 = [[r22 vastTracking] retain];
    r0 = [r22 avPlayer];
    goto loc_10046b5dc;
}

-(void)willExitFullscreen {
    [self setDisplayMode:0x0];
    r21 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:0x6 videoTimeOffset:r3];
    [r0 release];
    [r21 release];
    r20 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r20 handleVideoEvent:0x8 videoTimeOffset:r3];
    [r0 release];
    [r20 release];
    return;
}

-(void)avPlayer:(void *)arg2 playbackTimeDidProgress:(double)arg3 {
    r2 = arg2;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r19 = self;
    [self stopLoadingIndicator];
    if (([r19 alreadyCreatedPlayerView] & 0x1) == 0x0) {
            [r19 createView];
            [r19 setAlreadyCreatedPlayerView:0x1];
    }
    r0 = [r19 playerView];
    r0 = [r0 retain];
    [r0 playbackTimeDidProgress];
    [r0 release];
    r0 = [r19 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(playerDidProgressToTime:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 playerDidProgressToTime:r2];
            [r0 release];
    }
    return;
}

-(void)avPlayer:(void *)arg2 didError:(void *)arg3 withMessage:(void *)arg4 {
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    r21 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:0xc videoTimeOffset:arg3];
    [r0 release];
    [r21 release];
    return;
}

-(void)avPlayerDidRecoverFromStall:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 displayMode] != 0x0) {
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(playerViewController:didRecoverFromStall:), r3];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 playerViewController:r20 didRecoverFromStall:r19];
                    [r0 release];
            }
    }
    else {
            [r20 removeLoadingIndicator];
    }
    [NSObject cancelPreviousPerformRequestsWithTarget:r2 selector:r3 object:r4];
    [r19 release];
    return;
}

-(void)playerViewDidTapReplayButton:(void *)arg2 {
    r0 = [self muteButton];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    [self setFinishedPlaying:0x0];
    r0 = [self playerView];
    r0 = [r0 retain];
    [r0 setProgressBarVisible:0x1];
    [r0 release];
    [self seekToTime:0x1];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    return;
}

-(void)avPlayerDidFinishPlayback:(void *)arg2 {
    [self setFinishedPlaying:0x1];
    [self removeLoadingIndicator];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    r0 = [self playerView];
    r0 = [r0 retain];
    [r0 playbackDidFinish];
    [r0 release];
    r21 = [[self vastTracking] retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    [r21 handleVideoEvent:0x9 videoTimeOffset:r3];
    [r0 release];
    [r21 release];
    return;
}

-(void)avPlayerDidStall:(void *)arg2 {
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
    if ([self displayMode] != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(playerViewController:didStall:), r3];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = [[r19 delegate] retain];
                    r22 = [[r19 avPlayer] retain];
                    [r21 playerViewController:r19 didStall:r22];
                    [r22 release];
                    [r21 release];
            }
    }
    else {
            [r19 startLoadingIndicator];
    }
    [r19 performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(void)playerViewWillEnterFullscreen:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(willEnterFullscreen:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 willEnterFullscreen:r19];
            [r0 release];
    }
    return;
}

-(void)applicationDidEnterBackground:(void *)arg2 {
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
    r0 = [self avPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 avPlayer];
            r0 = [r0 retain];
            [r0 rate];
            [r0 release];
            [r20 release];
            if (s8 > 0x0) {
                    [r19 pause];
            }
    }
    else {
            [r20 release];
    }
    return;
}

-(void)playerViewWillShowReplayView:(void *)arg2 {
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
    r0 = [self muteButton];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r0 = [r19 playerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setProgressBarVisible:0x0];
    [r0 release];
    if ([r19 displayMode] == 0x1) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(playerViewController:didTapReplayButton:), r3];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = [[r19 delegate] retain];
                    r20 = [[r19 playerView] retain];
                    [r21 playerViewController:r19 willShowReplayView:r20];
                    [r20 release];
                    [r21 release];
            }
    }
    return;
}

-(void)applicationDidEnterForeground:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[self playerView] retain];
    r0 = [r19 nativeVideoAdConfig];
    r0 = [r0 retain];
    r22 = r0;
    [r0 playVisiblePercent];
    asm { scvtf      s0, x0 };
    asm { fdiv       s0, s0, s1 };
    asm { fcvt       d0, s0 };
    r20 = sub_1004af650();
    [r22 release];
    [r21 release];
    r0 = [r19 avPlayer];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0 && [r19 isReadyToPlay] != 0x0) {
            r22 = [r19 finishedPlaying];
            [r21 release];
            if ((r22 & 0x1) == 0x0) {
                    if (((r20 ^ 0x1) & 0x1) == 0x0) {
                            [r19 resume];
                    }
            }
    }
    else {
            [r21 release];
    }
    return;
}

-(void)displayAgentWillPresentModal {
    [self pause];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)displayAgentWillLeaveApplication {
    [self pause];
    return;
}

-(void)displayAgentDidDismissModal {
    [self resume];
    return;
}

-(void *)mediaURL {
    r0 = self->_mediaURL;
    return r0;
}

-(void *)playerView {
    r0 = self->_playerView;
    return r0;
}

-(void *)playerItem {
    r0 = self->_playerItem;
    return r0;
}

-(void *)avPlayer {
    r0 = self->_avPlayer;
    return r0;
}

-(void *)vastTracking {
    r0 = self->_vastTracking;
    return r0;
}

-(void)setVastTracking:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_vastTracking, arg2);
    return;
}

-(double)videoAspectRatio {
    r0 = self;
    return r0;
}

-(void *)nativeVideoAdConfig {
    r0 = self->_nativeVideoAdConfig;
    return r0;
}

-(bool)muted {
    r0 = *(int8_t *)(int64_t *)&self->_muted;
    return r0;
}

-(bool)startedLoading {
    r0 = *(int8_t *)(int64_t *)&self->_startedLoading;
    return r0;
}

-(void)setStartedLoading:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_startedLoading = arg2;
    return;
}

-(bool)playing {
    r0 = *(int8_t *)(int64_t *)&self->_playing;
    return r0;
}

-(void)setPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playing = arg2;
    return;
}

-(bool)paused {
    r0 = *(int8_t *)(int64_t *)&self->_paused;
    return r0;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(bool)isReadyToPlay {
    r0 = *(int8_t *)(int64_t *)&self->_isReadyToPlay;
    return r0;
}

-(void)setIsReadyToPlay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isReadyToPlay = arg2;
    return;
}

-(bool)disposed {
    r0 = *(int8_t *)(int64_t *)&self->_disposed;
    return r0;
}

-(void)setDisposed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_disposed = arg2;
    return;
}

-(void *)defaultActionURL {
    r0 = self->_defaultActionURL;
    return r0;
}

-(void)setDefaultActionURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_defaultActionURL, arg2);
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

-(void *)muteButton {
    r0 = self->_muteButton;
    return r0;
}

-(void)setMuteButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_muteButton, arg2);
    return;
}

-(void)setLoadingIndicator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loadingIndicator, arg2);
    return;
}

-(void)setDisplayAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_displayAgent, arg2);
    return;
}

-(bool)alreadyInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_alreadyInitialized;
    return r0;
}

-(void)setAlreadyInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_alreadyInitialized = arg2;
    return;
}

-(bool)downloadFinishedEventFired {
    r0 = *(int8_t *)(int64_t *)&self->_downloadFinishedEventFired;
    return r0;
}

-(void)setDownloadFinishedEventFired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_downloadFinishedEventFired = arg2;
    return;
}

-(bool)alreadyCreatedPlayerView {
    r0 = *(int8_t *)(int64_t *)&self->_alreadyCreatedPlayerView;
    return r0;
}

-(void)setAlreadyCreatedPlayerView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_alreadyCreatedPlayerView = arg2;
    return;
}

-(bool)finishedPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_finishedPlaying;
    return r0;
}

-(void)setFinishedPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finishedPlaying = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_displayAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_loadingIndicator, 0x0);
    objc_storeStrong((int64_t *)&self->_muteButton, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_defaultActionURL, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeVideoAdConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_vastTracking, 0x0);
    objc_storeStrong((int64_t *)&self->_avPlayer, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItem, 0x0);
    objc_storeStrong((int64_t *)&self->_playerView, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaURL, 0x0);
    return;
}

@end