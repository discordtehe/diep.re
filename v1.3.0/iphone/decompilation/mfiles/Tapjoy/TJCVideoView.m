@implementation TJCVideoView

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

-(void *)player {
    r0 = [self layer];
    r0 = [r0 retain];
    r20 = [[r0 player] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setPlayer:r21];
    [r21 release];
    [r0 release];
    return;
}

-(double)getVideoDuration {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self player];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 asset] retain];
    if (r21 != 0x0) {
            [r21 duration];
    }
    CMTimeGetSeconds(&var_48);
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void)setVisible {
    r0 = self;
    *(int8_t *)(int64_t *)&r0->_isVisible = 0x1;
    if (r0->_queuedError != 0x0) {
            [r0 notifyVideoError:r2];
    }
    else {
            if (*(int8_t *)(int64_t *)&r0->_shouldFireReady != 0x0) {
                    [r0 notifyVideoReady];
            }
    }
    return;
}

-(void)setupVideoPlayer:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    [arg2 retain];
    objc_storeWeak((int64_t *)&self->_videoPlayerDelegate, arg3);
    *(int8_t *)(int64_t *)&self->_videoDidStart = 0x0;
    r20 = [[NSURL URLWithString:r21] retain];
    [r21 release];
    r21 = [[AVURLAsset URLAssetWithURL:r20 options:0x0] retain];
    [@"tracks" retain];
    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
    r23 = [r0 retain];
    r0 = [r21 retain];
    [r0 loadValuesAsynchronouslyForKeys:r23 completionHandler:&var_78];
    [r23 release];
    [@"tracks" release];
    [r21 release];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)playVideo {
    [self->_avplayer play];
    [self startProgressTimer];
    return;
}

-(void)pauseVideo {
    r31 = r31 - 0x60;
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_avplayer));
    [*(r19 + r20) pause];
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    CMTimeGetSeconds(&var_48);
    r20 = [[NSUserDefaults standardUserDefaults] retain];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    [r20 setObject:r21 forKey:@"TJC_STORED_VIDEO_CURRENT_TIME"];
    [r21 release];
    [r20 release];
    *(int8_t *)(int64_t *)&r19->_videoDidStart = 0x0;
    [r19 notifyVideoDidPause:r21];
    [r19 clearProgressTimer];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_avplayer));
    r0 = *(r21 + r25);
    r0 = [r0 currentItem];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != r20) {
            [r0 release];
    }
    else {
            r23 = [r19 isEqualToString:r2];
            [r20 release];
            if (r23 != 0x0) {
                    r0 = *(r21 + r25);
                    r0 = [r0 currentItem];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 status];
                    [r0 release];
                    if (r23 != 0x2) {
                            if (r23 == 0x1) {
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(addedStatusObserver));
                                    if (*(int8_t *)(r21 + r23) != 0x0) {
                                            r0 = *(r21 + r25);
                                            r0 = [r0 currentItem];
                                            r0 = [r0 retain];
                                            [r0 removeObserver:r21 forKeyPath:@"status"];
                                            [r0 release];
                                            *(int8_t *)(r21 + r23) = 0x0;
                                    }
                                    [r21 notifyVideoReady];
                            }
                    }
                    else {
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(addedStatusObserver));
                            if (*(int8_t *)(r21 + r23) != 0x0) {
                                    r0 = *(r21 + r25);
                                    r0 = [r0 currentItem];
                                    r0 = [r0 retain];
                                    [r0 removeObserver:r21 forKeyPath:@"status"];
                                    [r0 release];
                                    *(int8_t *)(r21 + r23) = 0x0;
                            }
                            [r21 notifyVideoError:@"AVPlayerItemStatusFailed--Error loading video player item"];
                    }
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)resumeVideo {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 asset];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [r23 duration];
            r20 = var_40;
    }
    else {
            r20 = 0x0;
    }
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r22 = [[r0 objectForKey:@"TJC_STORED_VIDEO_CURRENT_TIME"] retain];
    [r0 release];
    [r22 doubleValue];
    CMTimeMakeWithSeconds(r20, @selector(doubleValue));
    r8 = *_kCMTimeZero;
    [r19 seekToTime:&stack[-112] toleranceBefore:&var_80 toleranceAfter:&var_A0];
    [r22 release];
    return;
}

-(void)clearVideo {
    *(int8_t *)(int64_t *)&self->_shouldFireReady = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_queuedError));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self clearVideoObservers];
    [self clearProgressTimer];
    [self->_avplayer setMuted:0x1];
    return;
}

-(void)muteVideo:(bool)arg2 {
    [self->_avplayer setMuted:arg2];
    return;
}

-(bool)getMuteStatus {
    r0 = self->_avplayer;
    r0 = [r0 isMuted];
    return r0;
}

-(void)startProgressTimer {
    [self clearProgressTimer];
    r0 = [NSTimer scheduledTimerWithTimeInterval:self target:@selector(progressTimerChange) selector:0x0 userInfo:0x1 repeats:r6];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_progressTimer));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)clearProgressTimer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_progressTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)notifyVideoDidStart {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_videoPlayerDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 videoDidStart];
            [r0 release];
    }
    return;
}

-(void)notifyVideoReady {
    r31 = r31 - 0x80;
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
    if (*(int8_t *)(int64_t *)&r19->_isVisible != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 util];
            r0 = [r0 retain];
            r20 = [[r0 URLParamsDict] retain];
            [r0 release];
            [r21 release];
            r0 = r19->_avplayer;
            r0 = [r0 currentItem];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 asset];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [r22 duration];
            }
            CMTimeGetSeconds(&var_68);
            v8 = v0;
            [r22 release];
            [r21 release];
            r0 = [r20 objectForKey:@"display_w"];
            r0 = [r0 retain];
            r21 = [r0 intValue];
            [r0 release];
            r0 = [r20 objectForKey:@"display_h"];
            r0 = [r0 retain];
            r22 = [r0 intValue];
            [r0 release];
            r23 = (int64_t *)&r19->_videoPlayerDelegate;
            r0 = objc_loadWeakRetained(r23);
            r25 = [r0 respondsToSelector:@selector(videoReady:width:height:), r3, r4];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = objc_loadWeakRetained(r23);
                    [r0 videoReady:r21 width:r22 height:r4];
                    [r0 release];
            }
            [r20 release];
    }
    else {
            *(int8_t *)(int64_t *)&r19->_shouldFireReady = 0x1;
    }
    return;
}

-(void)notifyVideoProgress:(double)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = (int64_t *)&self->_videoPlayerDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:@selector(videoProgress:)];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 videoProgress:r2];
            [r0 release];
    }
    return;
}

-(void)notifyVideoDidPause:(double)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = (int64_t *)&self->_videoPlayerDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:@selector(videoDidPause:)];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 videoDidPause:r2];
            [r0 release];
    }
    return;
}

-(void)progressTimerChange {
    r31 = r31 - 0xa0;
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
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_avplayer));
    r0 = *(r19 + r27);
    r0 = [r0 currentItem];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1009128f8;

loc_100912894:
    r0 = *(r19 + r27);
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 error];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r20 release];
    if (r0 != 0x0) goto loc_100912900;

loc_1009128dc:
    r0 = *(r19 + r27);
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    CMTimeGetSeconds(&var_78);
    v8 = v0;
    if (d8 > 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoDidStart));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    [r19 notifyVideoDidStart];
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoObserversAdded));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r19 selector:@selector(pauseVideo) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
                    [r0 release];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r19 selector:@selector(resumeVideo) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
                    [r0 release];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r19 selector:@selector(videoDidInterrupt:) name:**_AVAudioSessionInterruptionNotification object:0x0];
                    [r0 release];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r19 selector:@selector(audioHardwareRouteChanged:) name:**_AVAudioSessionRouteChangeNotification object:0x0];
                    [r0 release];
            }
            [r19 notifyVideoProgress:r2];
    }
    return;

loc_100912900:
    [r19 clearProgressTimer];
    r22 = @"UNKNOWN_ERROR--Unable to play this video";
    [r22 retain];
    r0 = *(r19 + r27);
    r0 = [r0 currentItem];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    [r0 release];
    if (r20 == 0x0) goto loc_100912b2c;

loc_100912940:
    r0 = *(r19 + r27);
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r20 = [[r0 error] retain];
    [r0 release];
    r0 = [r20 description];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100912a38;

loc_1009129a0:
    r23 = [[r20 domain] retain];
    [r20 code];
    r25 = [[r20 description] retain];
    r22 = [[NSString stringWithFormat:r2] retain];
    [@"UNKNOWN_ERROR--Unable to play this video" release];
    [r25 release];
    r0 = r23;
    goto loc_100912b28;

loc_100912b28:
    [r0 release];
    goto loc_100912b2c;

loc_100912b2c:
    [r19 notifyVideoError:r22];
    [r22 release];
    [r20 release];
    return;

loc_100912a38:
    r0 = *(r19 + r27);
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 errorLog];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 description];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r24 release];
    if (r0 == 0x0) goto loc_100912d28;

loc_100912a98:
    r0 = *(r19 + r27);
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 errorLog];
    r0 = [r0 retain];
    r25 = [[r0 description] retain];
    r22 = [[NSString stringWithFormat:r2] retain];
    [@"UNKNOWN_ERROR--Unable to play this video" release];
    [r25 release];
    [r0 release];
    r0 = r21;
    goto loc_100912b28;

loc_100912d28:
    r22 = @"UNKNOWN_ERROR--Unable to play this video";
    goto loc_100912b2c;

loc_1009128f8:
    [r20 release];
    goto loc_100912900;
}

-(void)notifyVideoError:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (*(int8_t *)(int64_t *)&r21->_isVisible != 0x0) {
            r20 = (int64_t *)&r21->_videoPlayerDelegate;
            r0 = objc_loadWeakRetained(r20);
            r23 = [r0 respondsToSelector:@selector(videoError:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 videoError:r19];
                    [r0 release];
            }
    }
    else {
            objc_storeStrong((int64_t *)&r21->_queuedError, r20);
    }
    [r19 release];
    return;
}

-(void)dealloc {
    [self clearVideo];
    [[&var_20 super] dealloc];
    return;
}

-(void)dismiss {
    *(int8_t *)(int64_t *)&self->_isVisible = 0x0;
    [self clearVideo];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r19 release];
    return;
}

-(void)videoDidPlayToEnd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self clearVideo];
    r19 = (int64_t *)&self->_videoPlayerDelegate;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 videoDidComplete];
            [r0 release];
    }
    return;
}

-(void)clearVideoObservers {
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
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_AVPlayerItemDidPlayToEndTimeNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_AVAudioSessionInterruptionNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_AVAudioSessionRouteChangeNotification object:0x0];
    [r0 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_avplayer));
    r0 = *(r19 + r22);
    r0 = [r0 currentItem];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(addedStatusObserver));
            r23 = *(int8_t *)(r19 + r21);
            [r0 release];
            if (r23 != 0x0) {
                    r0 = *(r19 + r22);
                    r0 = [r0 currentItem];
                    r0 = [r0 retain];
                    [r0 removeObserver:r19 forKeyPath:@"status"];
                    [r0 release];
                    *(int8_t *)(r19 + r21) = 0x0;
            }
    }
    else {
            [r0 release];
    }
    *(int8_t *)(int64_t *)&r19->_videoObserversAdded = 0x0;
    return;
}

-(void)videoDidInterrupt:(void *)arg2 {
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
    r23 = [arg2 retain];
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:**_AVAudioSessionInterruptionTypeKey] retain];
    [r0 release];
    r22 = [[arg2 userInfo] retain];
    [r23 release];
    r21 = [[r22 objectForKey:**_AVAudioSessionInterruptionOptionKey] retain];
    [r22 release];
    r0 = [r20 unsignedIntegerValue];
    if (r0 == 0x0) goto loc_10091366c;

loc_100913658:
    if (r0 != 0x1) goto loc_100913690;

loc_100913660:
    r1 = @selector(pauseVideo);
    goto loc_100913688;

loc_100913688:
    objc_msgSend(r19, r1);
    goto loc_100913690;

loc_100913690:
    [r21 release];
    [r20 release];
    return;

loc_10091366c:
    if ([r21 unsignedIntegerValue] != 0x1) goto loc_100913690;

loc_100913680:
    r1 = @selector(resumeVideo);
    goto loc_100913688;
}

-(void)audioHardwareRouteChanged:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:**_AVAudioSessionRouteChangeReasonKey];
    r0 = [r0 retain];
    r22 = [r0 integerValue];
    [r0 release];
    [r20 release];
    if (r22 != 0x8) {
            asm { ccmp       x22, #0x2, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            [r19 pauseVideo];
    }
    return;
}

-(void *)avplayer {
    r0 = self->_avplayer;
    return r0;
}

-(void)setAvplayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_avplayer, arg2);
    return;
}

-(void *)playerLayer {
    r0 = self->_playerLayer;
    return r0;
}

-(void)setPlayerLayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerLayer, arg2);
    return;
}

-(void)setProgressTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressTimer, arg2);
    return;
}

-(void *)progressTimer {
    r0 = self->_progressTimer;
    return r0;
}

-(void *)videoPlayerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoPlayerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setVideoPlayerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoPlayerDelegate, arg2);
    return;
}

-(bool)videoDidStart {
    r0 = *(int8_t *)(int64_t *)&self->_videoDidStart;
    return r0;
}

-(void)setVideoDidStart:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoDidStart = arg2;
    return;
}

-(void)setVideoObserversAdded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoObserversAdded = arg2;
    return;
}

-(bool)videoObserversAdded {
    r0 = *(int8_t *)(int64_t *)&self->_videoObserversAdded;
    return r0;
}

-(void)setIsVisible:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isVisible = arg2;
    return;
}

-(bool)isVisible {
    r0 = *(int8_t *)(int64_t *)&self->_isVisible;
    return r0;
}

-(void *)queuedError {
    r0 = self->_queuedError;
    return r0;
}

-(void)setQueuedError:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queuedError, arg2);
    return;
}

-(bool)shouldFireReady {
    r0 = *(int8_t *)(int64_t *)&self->_shouldFireReady;
    return r0;
}

-(void)setShouldFireReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldFireReady = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queuedError, 0x0);
    objc_destroyWeak((int64_t *)&self->_videoPlayerDelegate);
    objc_storeStrong((int64_t *)&self->_progressTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_playerLayer, 0x0);
    objc_storeStrong((int64_t *)&self->_avplayer, 0x0);
    return;
}

@end