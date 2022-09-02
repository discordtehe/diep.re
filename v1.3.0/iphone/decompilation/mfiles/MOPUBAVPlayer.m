@implementation MOPUBAVPlayer

-(void *)initWithDelegate:(void *)arg2 playerItem:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = 0x0;
    if (r0 != 0x0) {
            r22 = 0x0;
            if (r21 != 0x0) {
                    r0 = [[&var_30 super] initWithPlayerItem:r21];
                    r20 = r0;
                    if (r0 != 0x0) {
                            objc_storeWeak((int64_t *)&r20->_delegate, r19);
                            r0 = [NSNotificationCenter defaultCenter];
                            r0 = [r0 retain];
                            [r0 addObserver:r20 selector:@selector(checkNetworkStatus:) name:*0x1011bdad8 object:0x0];
                            [r0 release];
                            r0 = [MPReachabilityManager sharedManager];
                            r0 = [r0 retain];
                            [r0 startMonitoring];
                            [r0 release];
                    }
                    r0 = [r20 retain];
                    r20 = r0;
                    r22 = r0;
            }
    }
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [self dispose];
    [[&var_20 super] dealloc];
    return;
}

-(void)play {
    [[&var_30 super] play];
    [self startTimeObserver];
    r22 = [[NSString stringWithFormat:@"start playback"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)pause {
    [[&var_30 super] pause];
    [self stopTimeObserver];
    r22 = [[NSString stringWithFormat:@"playback paused"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)setMuted:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([[self superclass] instancesRespondToSelector:@selector(setMuted:)] != 0x0) {
            [[&var_30 super] setMuted:r20];
    }
    else {
            [r19 setAudioVolume:r2];
    }
    return;
}

-(void)startTimeObserver {
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTimer));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 resume];
    }
    else {
            r0 = [MPTimer timerWithTimeInterval:r19 target:@selector(timerTick) selector:0x1 repeats:**_NSRunLoopCommonModes runLoopMode:r6];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) scheduleNow];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastContinuousPlaybackCMTime));
            r9 = *_kCMTimeZero;
            r10 = *(r9 + 0x10);
            *(int128_t *)(r19 + r8) = *(int128_t *)r9;
            *(0x10 + r19 + r8) = r10;
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [[r19 currentItem] retain];
            [r20 addObserver:r2 selector:r3 name:r4 object:r5];
            [r23 release];
            [r20 release];
    }
    return;
}

-(void)setAudioVolume:(float)arg2 {
    r31 = r31 - 0x1a0;
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
    v8 = v0;
    stack[-408] = self;
    r0 = [self currentItem];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 asset];
    r0 = [r0 retain];
    r22 = [[r0 tracksWithMediaType:**_AVMediaTypeAudio] retain];
    [r0 release];
    [r19 release];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_158 = [r0 retain];
    var_120 = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-256];
    var_180 = r1;
    var_178 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            var_160 = *var_120;
            r8 = *_kCMTimeZero;
            var_170 = *(int128_t *)r8;
            r21 = *(r8 + 0x10);
            do {
                    r22 = 0x0;
                    do {
                            if (*var_120 != var_160) {
                                    objc_enumerationMutation(var_178);
                            }
                            r19 = @selector(addObject:);
                            r20 = *(var_128 + r22 * 0x8);
                            r0 = [AVMutableAudioMixInputParameters audioMixInputParameters];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setVolume:&var_150 atTime:r3];
                            [r0 setTrackID:[r20 trackID]];
                            objc_msgSend(var_158, r19);
                            [r23 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r3 = &stack[-256];
                    r0 = objc_msgSend(var_178, var_180);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [var_178 release];
    r0 = [AVMutableAudioMix audioMix];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setInputParameters:var_158];
    r0 = [stack[-408] currentItem];
    r0 = [r0 retain];
    [r0 setAudioMix:r19];
    [r0 release];
    [r19 release];
    [var_158 release];
    [var_178 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)stopTimeObserver {
    [self->_playbackTimer pause];
    r22 = [[NSString stringWithFormat:@"AVPlayer timer stopped"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)avPlayerDidStall {
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
    if (([self playbackDidStall] & 0x1) == 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(avPlayerDidStall:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 avPlayerDidStall:r19];
                    [r0 release];
            }
    }
    [r19 setPlaybackDidStall:0x1];
    return;
}

-(void)checkNetworkStatus:(void *)arg2 {
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
    r0 = [MPReachabilityManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 currentStatus];
    [r0 release];
    [r19 rate];
    CMP(s0, 0x0);
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    [r19 play];
            }
    }
    else {
            if (!CPU_FLAGS & NE) {
                    [r19 pause];
                    r0 = [r19 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 respondsToSelector:@selector(avPlayerDidStall:)];
                    [r0 release];
                    if (r23 != 0x0) {
                            r0 = [r19 delegate];
                            r0 = [r0 retain];
                            [r0 avPlayerDidStall:r19];
                            [r0 release];
                    }
            }
    }
    return;
}

-(void)avPlayer:(void *)arg2 playbackTimeDidProgress:(double)arg3 {
    r3 = arg3;
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
    if (([self playbackDidStall] & 0x1) != 0x0) {
            [r19 setPlaybackDidStall:0x0];
            r20 = @selector(delegate);
            r0 = objc_msgSend(r19, r20);
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(avPlayerDidRecoverFromStall:)];
            [r0 release];
            if (r24 != 0x0) {
                    r20 = @selector(delegate);
                    r0 = objc_msgSend(r19, r20);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 avPlayerDidRecoverFromStall:r19];
                    [r0 release];
            }
    }
    else {
            r20 = @selector(delegate);
    }
    r21 = @selector(respondsToSelector:);
    r0 = objc_msgSend(r19, r20);
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21, @selector(avPlayer:playbackTimeDidProgress:), r3);
    [r0 release];
    if (r21 != 0x0) {
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 avPlayer:r2 playbackTimeDidProgress:r3];
            [r20 release];
    }
    return;
}

-(void)dispose {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    [r19 stopTimeObserver];
    r0 = [MPReachabilityManager sharedManager];
    r0 = [r0 retain];
    [r0 stopMonitoring];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    [r19 cancelPendingPrerolls];
    return;
}

-(void)timerTick {
    r31 = r31 - 0xf0;
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
    r0 = [self currentItem];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 currentItem];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 error];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r20 release];
            if (r0 == 0x0) {
                    [r19 currentTime];
                    [r19 lastContinuousPlaybackCMTime];
                    r0 = CMTimeCompare(&var_B0, &stack[-160]);
                    if (r0 != 0x0) {
                            [r19 setLastContinuousPlaybackCMTime:&var_D0];
                            if (r0 >= 0x1) {
                                    [r19 currentPlaybackTime];
                                    if (!OVERFLOW(d0 - d0) && Abs(d0) != 0x7ff0000000000000) {
                                            asm { fmax       d0, d0, d1 };
                                            [r19 avPlayer:r19 playbackTimeDidProgress:r3];
                                    }
                            }
                    }
                    else {
                            [r19 currentItemDuration];
                            [r19 currentPlaybackTime];
                            if (d8 > 0x0 && !OVERFLOW(d8 - d8) && d0 > 0x0) {
                                    if (!OVERFLOW(d0 - d0)) {
                                            [r19 avPlayerDidStall];
                                    }
                            }
                    }
            }
            else {
                    [r19 stopTimeObserver];
                    r0 = [r19 currentItem];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 currentItem];
                            r0 = [r0 retain];
                            r23 = @selector(error);
                            r20 = [objc_msgSend(r0, r23) retain];
                            [r0 release];
                            r0 = [r19 currentItem];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = objc_msgSend(r0, r23);
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 description];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            if (r0 != 0x0) {
                                    r21 = [r24 retain];
                            }
                            else {
                                    r0 = [r19 currentItem];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r0 = [r0 errorLog];
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = [r0 description];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [r27 release];
                                    [r26 release];
                            }
                            [r24 release];
                            [r23 release];
                    }
                    else {
                            r22 = [[r19 mediaURL] retain];
                            r0 = [NSString stringWithFormat:r2];
                            r29 = r29;
                            r21 = [r0 retain];
                            r20 = 0x0;
                    }
                    [r22 release];
                    r0 = [r19 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 respondsToSelector:@selector(avPlayer:didError:withMessage:), r3, r4];
                    [r0 release];
                    if (r25 != 0x0) {
                            r0 = [r19 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 avPlayer:r19 didError:r20 withMessage:r21];
                            [r0 release];
                    }
                    r24 = [[NSString stringWithFormat:r2] retain];
                    r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
                    [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
                    [r23 release];
                    [r24 release];
                    [r21 release];
                    [r20 release];
            }
    }
    else {
            [r20 release];
            [r19 stopTimeObserver];
            r0 = [r19 currentItem];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 currentItem];
                    r0 = [r0 retain];
                    r23 = @selector(error);
                    r20 = [objc_msgSend(r0, r23) retain];
                    [r0 release];
                    r0 = [r19 currentItem];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = objc_msgSend(r0, r23);
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 description];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            r21 = [r24 retain];
                    }
                    else {
                            r0 = [r19 currentItem];
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = [r0 errorLog];
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 description];
                            r29 = r29;
                            r21 = [r0 retain];
                            [r27 release];
                            [r26 release];
                    }
                    [r24 release];
                    [r23 release];
            }
            else {
                    r22 = [[r19 mediaURL] retain];
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r21 = [r0 retain];
                    r20 = 0x0;
            }
            [r22 release];
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(avPlayer:didError:withMessage:), r3, r4];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [r19 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 avPlayer:r19 didError:r20 withMessage:r21];
                    [r0 release];
            }
            r24 = [[NSString stringWithFormat:r2] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r24 release];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)playbackDidFinish {
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
    [self stopTimeObserver];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(avPlayerDidFinishPlayback:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 avPlayerDidFinishPlayback:r19];
            [r0 release];
    }
    r22 = [[NSString stringWithFormat:@"playback finished"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    [r22 release];
    return;
}

-(double)currentItemDuration {
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self currentItem];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 duration];
    }
    CMTimeGetSeconds(&var_38);
    r0 = [r19 release];
    if (Abs(d8) != 0x7ff0000000000000) {
            asm { fccmp      d8, d8, #0x1, ne };
    }
    if (CPU_FLAGS & O) {
            asm { fcsel      d0, d0, d8, vs };
    }
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(double)currentPlaybackTime {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    [self currentTime];
    r0 = CMTimeGetSeconds(&stack[-40]);
    if (Abs(d0) != 0x7ff0000000000000) {
            asm { fccmp      d0, d0, #0x1, ne };
    }
    if (CPU_FLAGS & O) {
            asm { fcsel      d0, d1, d0, vs };
    }
    return r0;
}

-(void *)mediaURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediaURL)), 0x0);
    return r0;
}

-(void)setMediaURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPlaybackTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playbackTimer, arg2);
    return;
}

-(void *)playbackTimer {
    r0 = self->_playbackTimer;
    return r0;
}

-(union ?)lastContinuousPlaybackCMTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastContinuousPlaybackCMTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setLastContinuousPlaybackCMTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastContinuousPlaybackCMTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void)setPlaybackDidStall:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playbackDidStall = arg2;
    return;
}

-(bool)playbackDidStall {
    r0 = *(int8_t *)(int64_t *)&self->_playbackDidStall;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_playbackTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaURL, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end