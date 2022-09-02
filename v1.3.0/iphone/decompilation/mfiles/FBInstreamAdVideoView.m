@implementation FBInstreamAdVideoView

-(void)setPlayer:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setPlayer:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)player {
    r0 = [self layer];
    r0 = [r0 retain];
    r20 = [[r0 player] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
            r9 = *_kCMTimeZero;
            r10 = *(r9 + 0x10);
            *(int128_t *)(r19 + r8) = *(int128_t *)r9;
            *(0x10 + r19 + r8) = r10;
            *(int8_t *)(int64_t *)&r19->_paused = 0x1;
            [r19 addGestureRecognizers];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    [self removeProgressTimeObserver];
    [self removeAllObservers];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(union ?)currentTime {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r0 = [self avPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 avPlayer];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 currentTime];
            }
            CMTimeMaximum(&var_50, &var_38);
            r0 = [r20 release];
    }
    else {
            r8 = *_kCMTimeZero;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(struct CGSize)naturalSize {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self avPlayerItem];
    r0 = [r0 retain];
    r19 = [[r0 asset] retain];
    [r0 release];
    r0 = [r19 tracksWithMediaType:**_AVMediaTypeVideo];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    if (r20 != 0x0) {
            [r20 naturalSize];
            v8 = v0;
            v9 = v1;
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(float)volume {
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
    r21 = r0;
    r0 = [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 avPlayer];
            r0 = [r0 retain];
            [r0 volume];
            r0 = [r0 release];
    }
    return r0;
}

-(bool)isPlaying {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self avPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    [r0 rate];
    if (s0 > 0x0) {
            r0 = [r20 avPlayer];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 error];
            r0 = [r0 retain];
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
            [r0 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)loadMovieWithURL:(void *)arg2 progressInteral:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r22 = [arg2 retain];
    [self removeAllObservers];
    [self setPaused:0x1];
    [self setProgressInterval:&var_40];
    r20 = [[AVPlayerItem playerItemWithURL:r22] retain];
    [r22 release];
    [self setAvPlayerItem:r20];
    r21 = [[AVPlayer playerWithPlayerItem:r20] retain];
    [self setAvPlayer:r21];
    [r21 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 setActionAtItemEnd:0x1];
    [r0 release];
    [self addObservers];
    [r20 release];
    return;
}

-(void)pause {
    [self setPaused:0x1];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    [self removeProgressTimeObserver];
    return;
}

-(void)play {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
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
    r21 = r0;
    if (r0 != 0x0) {
            [r21 currentTime];
    }
    r0 = [r19 avPlayer];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 currentItem];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 duration];
    }
    r0 = sub_100a3e318(&var_48, &var_60);
    [r23 release];
    [r22 release];
    [r21 release];
    if (r0 == 0x0) {
            r0 = [r19 avPlayer];
            r29 = r29;
            r21 = [r0 retain];
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [r21 seekToTime:&var_80];
            [r21 release];
    }
    [r19 setPaused:0x0];
    r21 = [[r19 avPlayer] retain];
    [r19 setPlayer:r21];
    [r21 release];
    [r19 setupNotifications];
    [r19 addProgressTimeObserver];
    r0 = [r19 avPlayer];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    return;
}

-(void)addGestureRecognizers {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self tapGestureRecognizer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [UITapGestureRecognizer alloc];
            r0 = [r0 initWithTarget:r19 action:@selector(tap:)];
            [r0 setNumberOfTapsRequired:0x1];
            [r19 addGestureRecognizer:r0];
            [r19 setTapGestureRecognizer:r0];
            [r0 release];
    }
    return;
}

-(void)startStallTimer {
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
    r0 = [self stallTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            objc_initWeak(&stack[-72], r19);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            r0 = objc_retainBlock(&var_60);
            r23 = *__dispatch_main_q;
            [r23 retain];
            r22 = [[FBAdTimer scheduledTimerWithTimeInterval:0x0 repeats:r23 queue:r0 block:r5] retain];
            [r19 setStallTimer:r22];
            [r22 release];
            [*__dispatch_main_q release];
            [r0 release];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    return;
}

-(void)setupNotifications {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    r0 = objc_retainBlock(&var_80);
    objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
    r0 = objc_retainBlock(&var_A8);
    r22 = r0;
    r24 = [[self avPlayerItem] retain];
    r25 = [[NSOperationQueue mainQueue] retain];
    r0 = @class(FBAdNotificationCenter);
    r0 = [r0 notificationCenterForObject:self];
    r0 = [r0 retain];
    [r0 addNotificationWithName:**_AVPlayerItemDidPlayToEndTimeNotification object:r24 queue:r25 block:r21];
    [r0 addNotificationWithName:**_AVPlayerItemPlaybackStalledNotification object:r24 queue:r25 block:r22];
    [r0 release];
    [r25 release];
    [r24 release];
    [r22 release];
    objc_destroyWeak(&var_A8 + 0x20);
    [r21 release];
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    return;
}

-(void)addObservers {
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"rate" options:0x1 context:*0x1011c7bf8];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"currentItem.status" options:0x1 context:*0x1011c7bf8];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"currentItem.duration" options:0x1 context:*0x1011c7bf8];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"currentItem.playbackLikelyToKeepUp" options:0x1 context:*0x1011c7bf8];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 addObserver:self forKeyPath:@"currentItem.playbackBufferFull" options:0x1 context:*0x1011c7bf8];
    [r0 release];
    return;
}

-(void)addProgressTimeObserver {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self progressTimeObserver];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            objc_initWeak(r29 - 0x28, r19);
            [r19 progressInterval];
            [*__dispatch_main_q retain];
            objc_copyWeak(&var_50 + 0x20, r29 - 0x28);
            r21 = [[r19 addPeriodicTimeObserverForInterval:&stack[-120] queue:r21 usingBlock:&var_50] retain];
            [r19 setProgressTimeObserver:r21];
            [r21 release];
            [*__dispatch_main_q release];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(r29 - 0x28);
    }
    return;
}

-(void *)addPeriodicTimeObserverForInterval:(union ?)arg2 queue:(void *)arg3 usingBlock:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [r3 retain];
    r19 = [r4 retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 addPeriodicTimeObserverForInterval:&var_50 queue:r22 usingBlock:r19];
    r20 = [r0 retain];
    [r19 release];
    [r22 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)removeAllObservers {
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 removeObserver:self forKeyPath:@"rate"];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 removeObserver:self forKeyPath:@"currentItem.status"];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 removeObserver:self forKeyPath:@"currentItem.duration"];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 removeObserver:self forKeyPath:@"currentItem.playbackLikelyToKeepUp"];
    [r0 release];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 removeObserver:self forKeyPath:@"currentItem.playbackBufferFull"];
    [r0 release];
    return;
}

-(void)removeProgressTimeObserver {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self progressTimeObserver];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 progressTimeObserver] retain];
            [r19 removeTimeObserver:r20];
            [r20 release];
            [r19 setProgressTimeObserver:0x0];
    }
    return;
}

-(void)removeTimeObserver:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self avPlayer];
    r0 = [r0 retain];
    [r0 removeTimeObserver:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)tap:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoViewTapped:self];
    [r0 release];
    return;
}

-(void)playbackStalled {
    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/views/video/FBInstreamAdVideoView.m" lineNumber:0x15d format:@"playbackStalled"];
    [self startStallTimer];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_tapGestureRecognizer);
    objc_storeStrong((int64_t *)&self->_stallTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_progressTimeObserver, 0x0);
    objc_destroyWeak((int64_t *)&self->_avPlayerItem);
    objc_storeStrong((int64_t *)&self->_avPlayer, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(union ?)duration {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0xf0;
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
    r22 = arg5;
    r23 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r28 = [arg3 retain];
    if (*qword_1011c7bf8 == r22) goto loc_100ad91bc;

loc_100ad918c:
    [[&var_C0 super] observeValueForKeyPath:r19 ofObject:r28 change:r23 context:r22];
    goto loc_100ad975c;

loc_100ad975c:
    [r28 release];
    [r19 release];
    return;

loc_100ad91bc:
    r0 = [r21 delegate];
    r29 = r29;
    r27 = [r0 retain];
    r23 = @selector(isEqualToString:);
    if (objc_msgSend(r19, r23) != 0x0) {
            var_C8 = @selector(isEqualToString:);
            r24 = r27;
            r23 = r28;
            r20 = (int64_t *)&r21->_duration;
            r0 = [r21 avPlayer];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 currentItem];
            r29 = r29;
            r0 = [r0 retain];
            r28 = r0;
            var_D0 = @selector(duration);
            if (r0 != 0x0) {
                    [r28 duration];
            }
            r0 = CMTimeCompare(&var_80, r29 - 0x68);
            [r28 release];
            [r27 release];
            r28 = r23;
            r27 = r24;
            r23 = var_C8;
            if (r0 != 0x0) {
                    r0 = [r21 avPlayer];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 currentItem];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    r22 = &var_98;
                    if (r0 != 0x0) {
                            objc_msgSend(r26, var_D0);
                    }
                    q0 = *(int128_t *)r22;
                    *(r20 + 0x10) = *(r22 + 0x10);
                    *(int128_t *)r20 = q0;
                    [r26 release];
                    [r25 release];
                    CMTimeGetSeconds(&var_B0);
                    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/views/video/FBInstreamAdVideoView.m" lineNumber:0x12b format:@"Player item duration set to %f seconds"];
            }
    }
    if (objc_msgSend(r19, r23) == 0x0) goto loc_100ad9494;

loc_100ad9388:
    r0 = [r21 avPlayer];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 currentItem];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isPlaybackLikelyToKeepUp];
    [r0 release];
    [r22 release];
    if (r26 == 0x0) goto loc_100ad9494;

loc_100ad93e4:
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/views/video/FBInstreamAdVideoView.m" lineNumber:0x133 format:@"playbackLikelyToKeepUp occurred"];
    if (([r21 loaded] & 0x1) == 0x0) goto loc_100ad972c;

loc_100ad9424:
    r0 = [r21 stallTimer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    if (([r21 paused] & 0x1) == 0x0) {
            r0 = [r21 avPlayer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 play];
            [r0 release];
    }
    goto loc_100ad9494;

loc_100ad9494:
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r21 avPlayer];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 currentItem];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 isPlaybackBufferFull];
            [r0 release];
            [r22 release];
            if (r26 != 0x0) {
                    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/views/video/FBInstreamAdVideoView.m" lineNumber:0x149 format:@"playbackBufferFull occurred"];
                    r0 = [r21 stallTimer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r21 stallTimer];
                            r0 = [r0 retain];
                            [r0 invalidate];
                            [r0 release];
                            r0 = [r21 avPlayer];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 play];
                            [r0 release];
                    }
            }
    }
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r21 avPlayer];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 currentItem];
            r0 = [r0 retain];
            [r0 status];
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/views/video/FBInstreamAdVideoView.m" lineNumber:0x151 format:@"Player status changed to %lu"];
            [r0 release];
            [r25 release];
            r0 = [r21 avPlayer];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 currentItem];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r27;
            r26 = [r0 status];
            [r0 release];
            [r22 release];
            if (r26 == 0x2) {
                    r0 = [r21 avPlayer];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 currentItem];
                    r0 = [r0 retain];
                    r24 = [[r0 error] retain];
                    [r27 videoView:r21 didFailWithError:r24];
                    [r24 release];
                    [r0 release];
                    [r22 release];
            }
    }
    goto loc_100ad9754;

loc_100ad9754:
    [r27 release];
    goto loc_100ad975c;

loc_100ad972c:
    [r21 setLoaded:0x1];
    [r27 videoViewDidLoad:r21];
    goto loc_100ad9754;
}

-(void)setAvPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_avPlayer, arg2);
    return;
}

-(void *)avPlayer {
    r0 = self->_avPlayer;
    return r0;
}

-(void *)avPlayerItem {
    r0 = objc_loadWeakRetained((int64_t *)&self->_avPlayerItem);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAvPlayerItem:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_avPlayerItem, arg2);
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

-(bool)loaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(bool)paused {
    r0 = *(int8_t *)(int64_t *)&self->_paused;
    return r0;
}

-(union ?)progressInterval {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_progressInterval));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setProgressInterval:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_progressInterval));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void *)progressTimeObserver {
    r0 = self->_progressTimeObserver;
    return r0;
}

-(void)setProgressTimeObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressTimeObserver, arg2);
    return;
}

-(void *)tapGestureRecognizer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_tapGestureRecognizer);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)stallTimer {
    r0 = self->_stallTimer;
    return r0;
}

-(void)setStallTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_stallTimer, arg2);
    return;
}

-(void)setTapGestureRecognizer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_tapGestureRecognizer, arg2);
    return;
}

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

@end