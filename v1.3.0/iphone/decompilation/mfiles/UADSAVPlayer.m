@implementation UADSAVPlayer

-(void)prepare:(void *)arg2 initialVolume:(float)arg3 timeout:(long long)arg4 {
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0xb0;
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
    r22 = [arg2 retain];
    [r19 stopObserving];
    r2 = r22;
    [r19 setUrl:r2];
    [r22 release];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            r0 = [r19 url];
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Preparing item: %@", @selector(url), r2, r3, r4);
            [r22 release];
    }
    r23 = [[r19 url] retain];
    r21 = [[NSURL URLWithString:r23] retain];
    [r23 release];
    r0 = [AVURLAsset URLAssetWithURL:r21 options:0x0];
    r22 = [r0 retain];
    asm { smulh      x8, x20, x8 };
    [[[AVPlayerItem playerItemWithAsset:r22] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    [r0 release];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)startObserving {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self currentItem];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 addObserver:r19 forKeyPath:@"status" options:0x0 context:*0x1011a90d8];
            [r0 release];
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 addObserver:r19 forKeyPath:@"playbackBufferEmpty" options:0x0 context:*0x1011a90e0];
            [r0 release];
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 addObserver:r19 forKeyPath:@"playbackLikelyToKeepUp" options:0x0 context:*0x1011a90e8];
            [r0 release];
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 addObserver:r19 forKeyPath:@"playbackBufferFull" options:0x0 context:*0x1011a90f0];
            [r0 release];
    }
    return;
}

-(void)setProgressEventInterval:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self progressInterval] != r20) {
            [r19 stopVideoProgressTimer];
            [r19 setProgressInterval:r20];
            [r19 startVideoProgressTimer];
    }
    return;
}

-(void)stopObserving {
    r31 = r31 - 0x60;
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
    if ([USRVDeviceLog getLogLevel] > 0x3) {
            r0 = [r19 url];
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Attempting to remove observers for item: %@", @selector(url), r2, r3, r4);
            [r21 release];
    }
    r0 = [r19 currentItem];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"status" context:*0x1011a90d8];
            [r0 release];
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"playbackBufferEmpty" context:*0x1011a90e0];
            [r0 release];
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"playbackLikelyToKeepUp" context:*0x1011a90e8];
            [r0 release];
            r0 = [r19 currentItem];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"playbackBufferFull" context:*0x1011a90f0];
            [r0 release];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_AVPlayerItemDidPlayToEndTimeNotification object:0x0];
    [r0 release];
    [r19 setIsObservingCompletion:0x0];
    return;
}

-(void)startPrepareTimeoutTimer:(long long)arg2 {
    r19 = self;
    r0 = @class(NSTimer);
    asm { scvtf      d0, x2 };
    r20 = [[r0 scheduledTimerWithTimeInterval:r19 target:@selector(onPrepareTimeoutListener:) selector:0x0 userInfo:0x0 repeats:r6] retain];
    [r19 setPrepareTimeoutTimer:r20];
    [r20 release];
    return;
}

-(void)onPrepareTimeoutListener:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Video prepare timeout", @selector(getLogLevel), r2, r3);
    }
    dispatch_async(*__dispatch_main_q, &var_38);
    return;
}

-(void)stopPrepareTimeoutTimer {
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
    if (r19 != 0x0) {
            [UADSAVPlayer class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 prepareTimeoutTimer];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r23 = @selector(isKindOfClass:);
                            r0 = [r19 prepareTimeoutTimer];
                            r29 = r29;
                            r24 = [r0 retain];
                            [NSTimer class];
                            if (objc_msgSend(r24, r23) != 0x0) {
                                    r0 = [r19 prepareTimeoutTimer];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 isValid];
                                    [r0 release];
                                    [r24 release];
                                    [r21 release];
                                    if (r23 != 0x0) {
                                            r0 = [r19 prepareTimeoutTimer];
                                            r0 = [r0 retain];
                                            [r0 invalidate];
                                            [r0 release];
                                            [r19 setPrepareTimeoutTimer:0x0];
                                    }
                            }
                            else {
                                    [r24 release];
                                    [r21 release];
                            }
                    }
            }
    }
    return;
}

-(void)onCompletionListener:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Video playback completed", @selector(getLogLevel), r2, r3);
    }
    [r19 setIsPlaying:0x0];
    [r19 stopVideoProgressTimer];
    dispatch_async(*__dispatch_main_q, &var_38);
    return;
}

-(void)startVideoProgressTimer {
    r19 = self;
    [self progressInterval];
    asm { scvtf      s0, w0 };
    asm { fdiv       s0, s0, s1 };
    r0 = @class(NSTimer);
    asm { fcvt       d0, s0 };
    r20 = [[r0 scheduledTimerWithTimeInterval:r19 target:@selector(videoProgressTimer:) selector:0x0 userInfo:0x1 repeats:r6] retain];
    [r19 setProgressTimer:r20];
    [r20 release];
    return;
}

-(void)videoProgressTimer:(void *)arg2 {
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    dispatch_async(*__dispatch_main_q, &var_40);
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)stopVideoProgressTimer {
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
    if (r19 != 0x0) {
            [UADSAVPlayer class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 progressTimer];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r23 = @selector(isKindOfClass:);
                            r0 = [r19 progressTimer];
                            r29 = r29;
                            r24 = [r0 retain];
                            [NSTimer class];
                            if (objc_msgSend(r24, r23) != 0x0) {
                                    r0 = [r19 progressTimer];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 isValid];
                                    [r0 release];
                                    [r24 release];
                                    [r21 release];
                                    if (r23 != 0x0) {
                                            r0 = [r19 progressTimer];
                                            r0 = [r0 retain];
                                            [r0 invalidate];
                                            [r0 release];
                                            [r19 setProgressTimer:0x0];
                                    }
                            }
                            else {
                                    [r24 release];
                                    [r21 release];
                            }
                    }
            }
    }
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
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Starting video playback", @selector(getLogLevel), r2, r3);
    }
    if (([r19 isObservingCompletion] & 0x1) == 0x0) {
            [r19 setIsObservingCompletion:0x1];
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [[r19 currentItem] retain];
            [r20 addObserver:r2 selector:r3 name:r4 object:r5];
            [r23 release];
            [r20 release];
    }
    [[&var_40 super] play];
    [r19 setIsPlaying:0x1];
    [r19 stopVideoProgressTimer];
    [r19 startVideoProgressTimer];
    dispatch_async(*__dispatch_main_q, &var_68);
    return;
}

-(void)pause {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Pausing video playback", @selector(getLogLevel), r2, r3);
    }
    [[r29 - 0x20 super] pause];
    [r19 setIsPlaying:0x0];
    [r19 stopVideoProgressTimer];
    dispatch_async(*__dispatch_main_q, &var_48);
    return;
}

-(void)stop {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Stopping video playback", @selector(getLogLevel), r2, r3);
    }
    [[r29 - 0x20 super] pause];
    [r19 setIsPlaying:0x0];
    [r19 stopVideoProgressTimer];
    dispatch_async(*__dispatch_main_q, &var_48);
    return;
}

-(void)seekTo:(long long)arg2 {
    r1 = _cmd;
    asm { smulh      x8, x2, x8 };
    asm { scvtf      d0, x8 };
    CMTimeMakeWithSeconds(0x1e, r1);
    [r19 seekToTime:&var_70 completionHandler:&var_50];
    return;
}

-(long long)getCurrentPosition {
    [self currentTime];
    r0 = [self getMsFromCMTime:&stack[-56]];
    return r0;
}

-(long long)getMsFromCMTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = CMTimeGetSeconds(&var_20);
    asm { fcvtzs     x0, d0 };
    return r0;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x140;
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
    r21 = arg5;
    r20 = self;
    r19 = [r4 retain];
    if (*qword_1011a90d8 == r21) goto loc_1000ba4f8;

loc_1000ba488:
    if (*qword_1011a90e8 == r21) goto loc_1000ba57c;

loc_1000ba498:
    if (*qword_1011a90e0 == r21) goto loc_1000ba640;

loc_1000ba4a8:
    if (*qword_1011a90f0 != r21) goto loc_1000ba770;

loc_1000ba4b8:
    r1 = &var_108;
    goto loc_1000ba67c;

loc_1000ba67c:
    dispatch_async(*__dispatch_main_q, r1);
    goto loc_1000ba770;

loc_1000ba770:
    [r19 release];
    return;

loc_1000ba640:
    r1 = &var_E0;
    goto loc_1000ba67c;

loc_1000ba57c:
    r1 = &var_B8;
    goto loc_1000ba67c;

loc_1000ba4f8:
    if ([USRVDeviceLog getLogLevel] > 0x3) {
            r0 = [r20 currentItem];
            r29 = r29;
            r0 = [r0 retain];
            [r0 status];
            NSLog(@"%@/UnityAds: %s (line:%d) :: VIDEOPLAYERITEM_STATUS: %li", @selector(status), r2, r3, r4);
            [r24 release];
    }
    r0 = [r20 currentItem];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 status];
    [r0 release];
    if (r23 == 0x2) goto loc_1000ba684;

loc_1000ba5f8:
    if (r23 != 0x1) goto loc_1000ba770;

loc_1000ba600:
    r1 = r29 - 0x68;
    goto loc_1000ba75c;

loc_1000ba75c:
    dispatch_async(*__dispatch_main_q, r1);
    [r20 stopPrepareTimeoutTimer];
    goto loc_1000ba770;

loc_1000ba684:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            r0 = [r20 currentItem];
            r0 = [r0 retain];
            r0 = [r0 error];
            r0 = [r0 retain];
            r0 = [r0 description];
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: VIDEOPLAYER_ERROR: %@", @selector(description), r2, r3, r4);
            [r23 release];
            [r22 release];
            [r21 release];
    }
    r1 = r29 - 0x90;
    goto loc_1000ba75c;
}

-(void *)url {
    r0 = self->_url;
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_url, arg2);
    return;
}

-(void)setProgressInterval:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_progressInterval = arg2;
    return;
}

-(int)progressInterval {
    r0 = *(int32_t *)(int64_t *)&self->_progressInterval;
    return r0;
}

-(bool)isPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_isPlaying;
    return r0;
}

-(void)setProgressTimer:(void *)arg2 {
    self->_progressTimer = arg2;
    return;
}

-(void *)progressTimer {
    r0 = self->_progressTimer;
    return r0;
}

-(void)setIsPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPlaying = arg2;
    return;
}

-(void *)prepareTimeoutTimer {
    r0 = self->_prepareTimeoutTimer;
    return r0;
}

-(bool)isObservingCompletion {
    r0 = *(int8_t *)(int64_t *)&self->_isObservingCompletion;
    return r0;
}

-(void)setPrepareTimeoutTimer:(void *)arg2 {
    self->_prepareTimeoutTimer = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

-(void)setIsObservingCompletion:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isObservingCompletion = arg2;
    return;
}

@end