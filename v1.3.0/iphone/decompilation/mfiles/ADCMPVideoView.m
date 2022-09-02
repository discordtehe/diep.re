@implementation ADCMPVideoView

-(void *)initWithFrame:(struct CGRect)arg2 originNumber:(unsigned long long)arg3 context:(void *)arg4 player:(void *)arg5 timer:(bool)arg6 videoDelegate:(void *)arg7 {
    memcpy(&r2, &arg2, 0x8);
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
    r29 = &saved_fp;
    r24 = r5;
    r25 = r3;
    r26 = r2;
    r19 = [r25 retain];
    r20 = [r4 retain];
    r21 = [r6 retain];
    v1 = v1;
    v2 = v2;
    v3 = v3;
    r0 = [[&var_80 super] initWithFrame:r2];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = [r22 layer];
            r0 = [r0 retain];
            r23 = r0;
            [r0 setPlayer:r20];
            [r22 setOriginNumber:r26];
            objc_storeStrong((int64_t *)&r22->_context, r25);
            [r22->_context setView:r22];
            objc_storeWeak((int64_t *)&r22->_delegate, r21);
            r22->_watchdogTrigger = 0x0;
            [r22 setElapsed:r22];
            [r22 setHidden:0x1];
            [r22 setAutoresizingMask:0x12];
            r0 = [r20 currentItem];
            r0 = [r0 retain];
            [r0 addObserver:r22 forKeyPath:@"status" options:0x0 context:0x0];
            [r0 release];
            CMTimeMake(0x1, 0x3c);
            r26 = [r22 retain];
            var_A8 = r26;
            r28 = [r19 retain];
            var_A0 = r28;
            r0 = [r20 addPeriodicTimeObserverForInterval:&var_E0 queue:0x0 usingBlock:&var_C8];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timeObserver));
            r8 = *(r26 + r9);
            *(r26 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r26->_observing = 0x1;
            *(int8_t *)(int64_t *)&r26->_playing = 0x0;
            *(int8_t *)(int64_t *)&r26->_reportedReady = 0x0;
            [r26 setComplete:0x0];
            if (r24 != 0x0) {
                    [r28 rect];
                    v9 = v1;
                    v10 = v2;
                    v11 = v3;
                    r0 = [r20 currentItem];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 asset];
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            [r27 duration];
                    }
                    CMTimeGetSeconds(&var_F8);
                    r0 = [r26 createTimerInRect:0x0 withDuration:0x0];
                    r0 = [r0 retain];
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
                    r8 = *(r26 + r28);
                    *(r26 + r28) = r0;
                    [r8 release];
                    [r27 release];
                    [r24 release];
                    [*(r26 + r28) setHidden:0x1];
                    [r26 addSubview:r2];
            }
            [var_A0 release];
            [var_A8 release];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)removeObservers {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_observing));
    if (*(int8_t *)(r19 + r23) != 0x0) {
            r0 = [r19 player];
            r0 = [r0 retain];
            [r0 pause];
            [r0 release];
            r0 = [r19 player];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 currentItem];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"status"];
            [r0 release];
            [r21 release];
            r0 = [r19 player];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_timeObserver));
            [r0 removeTimeObserver:*(r19 + r21)];
            [r0 release];
            [*(r19 + r21) invalidate];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
            *(int8_t *)(r19 + r23) = 0x0;
    }
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

-(void)willMoveToSuperview:(void *)arg2 {
    r0 = self;
    if (arg2 == 0x0) {
            *(int8_t *)(int64_t *)&r0->_playing = 0x0;
            [r0 removeObservers];
    }
    return;
}

-(void)play:(bool)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ((arg2 & 0x1) != 0x0) {
            [r19 setComplete:0x0];
            [r19 setElapsed:0x0];
    }
    if (([r19 complete] & 0x1) == 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_playing));
            if (*(int8_t *)(r19 + r21) == 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
                    if ([*(r19 + r20) isHidden] != 0x0) {
                            [*(r19 + r20) setAlpha:r2];
                            [*(r19 + r20) setHidden:0x0];
                            [UIView animateWithDuration:&var_48 animations:r3];
                    }
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoProgressTimer));
                    if (*(r19 + r22) == 0x0) {
                            r0 = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(checkProgress) selector:0x0 userInfo:0x1 repeats:r6];
                            r0 = [r0 retain];
                            r8 = *(r19 + r22);
                            *(r19 + r22) = r0;
                            [r8 release];
                            r0 = [NSRunLoop currentRunLoop];
                            r0 = [r0 retain];
                            [r0 addTimer:*(r19 + r22) forMode:**_NSDefaultRunLoopMode];
                            [r0 release];
                    }
                    *(int8_t *)(r19 + r21) = 0x1;
                    [r19 setComplete:0x0];
                    [r19 elapsed];
                    [r19 seekToTime:&var_70 completionHandler:r3];
            }
    }
    return;
}

-(void)checkProgress {
    r31 = r31 - 0xe0;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_playing));
    if (*(int8_t *)(r19 + r24) == 0x0) goto .l1;

loc_10023c2a0:
    r0 = [r19 player];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 status];
    [r0 release];
    if (r22 != 0x1) goto .l1;

loc_10023c2e0:
    if ([r19 complete] == 0x0) goto loc_10023c304;

loc_10023c2f4:
    r19->_watchdogTrigger = 0x0;
    return;

.l1:
    return;

loc_10023c304:
    r0 = [r19 player];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [r21 currentTime];
            asm { scvtf      d8, d0 };
    }
    else {
            v8 = 0x0;
    }
    r0 = [r19 player];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [r23 currentTime];
            asm { scvtf      d9, w8 };
    }
    [r23 release];
    asm { fmaxnm     d0, d9, d0 };
    asm { fdiv       d8, d8, d0 };
    [r21 release];
    [r19 elapsed];
    if (d0 == d8) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_watchdogTrigger));
            *(r19 + r8) = *(r19 + r8) + 0x1;
    }
    else {
            [r19 elapsed];
            if (*0x100b9e278 < d8) {
                    r19->_watchdogTrigger = 0x0;
            }
    }
    d0 = *0x100b9e278;
    r0 = [r19 player];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 rate];
    asm { fcvt       d0, s0 };
    if (d0 >= *0x100b9b5c0) goto loc_10023c47c;

loc_10023c440:
    r22 = *(int8_t *)(r19 + r24);
    [r21 release];
    if (r22 == 0x0) goto loc_10023c484;

loc_10023c450:
    r0 = [r19 player];
    r29 = r29;
    r0 = [r0 retain];
    [r0 play];
    r0 = r0;
    goto loc_10023c480;

loc_10023c480:
    [r0 release];
    goto loc_10023c484;

loc_10023c484:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_watchdogTrigger));
    if (*(r19 + r8) >= 0x15) {
            *(r19 + r8) = 0x0;
            dispatch_async(*__dispatch_main_q, &var_98);
            r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            [r0 onVideoViewDidFail:*(r19 + r21)];
            [r0 release];
            r0 = *(r19 + r21);
            r0 = [r0 session];
            r0 = [r0 retain];
            r22 = [[r0 identifier] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPVideoView checkProgress]" line:0xa3 withFormat:@"ADCVideoView watchdog canceled ad session: %@"];
            [r22 release];
            [r0 release];
    }
    [r19 setElapsed:r2];
    dispatch_async(*__dispatch_main_q, &var_C8);
    return;

loc_10023c47c:
    r0 = r21;
    goto loc_10023c480;
}

-(void)pause {
    r0 = [self player];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_playing = 0x0;
    return;
}

-(void)seekToTime:(double)arg2 completionHandler:(void *)arg3 {
    [arg2 retain];
    [[self player] retain];
    CMTimeMakeWithSeconds(0x1, @selector(player));
    r8 = *_kCMTimeZero;
    [r19 seekToTime:&stack[-88] toleranceBefore:&var_60 toleranceAfter:&var_80 completionHandler:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)setVolume:(float)arg2 {
    r0 = [self player];
    r0 = [r0 retain];
    [r0 setVolume:arg2];
    [r0 release];
    return;
}

-(void)finished {
    *(int8_t *)(int64_t *)&self->_playing = 0x0;
    [self setComplete:0x1];
    [self duration];
    [self setElapsed:0x1];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoProgressTimer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_38);
    [self removeObservers];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 player];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 currentItem];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r25 release];
    if (r22 == r20 && [r19 isEqualToString:r2] != 0x0) {
            if ([r20 status] == 0x1) {
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_reportedReady));
                    if (*(int8_t *)(r21 + r26) != 0x0) {
                            if ([r20 status] == 0x2) {
                                    r0 = [r21 player];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 currentItem];
                                    r0 = [r0 retain];
                                    r26 = [[r0 error] retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPVideoView observeValueForKeyPath:ofObject:change:context:]" line:0xc1 withFormat:@"Player item failed with error: %@"];
                                    [r26 release];
                                    [r0 release];
                                    [r23 release];
                                    [r21 removeObservers];
                                    r0 = objc_loadWeakRetained((int64_t *)&r21->_delegate);
                                    [r0 onVideoViewDidFail:r21->_context];
                                    [r0 release];
                            }
                    }
                    else {
                            if (r22 != 0x0) {
                                    [r20 duration];
                            }
                            CMTimeGetSeconds(&var_58);
                            [r21 setDuration:@"status"];
                            r0 = objc_loadWeakRetained((int64_t *)&r21->_delegate);
                            [r0 onVideoViewReady:r21->_context];
                            [r0 release];
                            *(int8_t *)(r21 + r26) = 0x1;
                    }
            }
            else {
                    if ([r20 status] == 0x2) {
                            r0 = [r21 player];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 currentItem];
                            r0 = [r0 retain];
                            r26 = [[r0 error] retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCMPVideoView observeValueForKeyPath:ofObject:change:context:]" line:0xc1 withFormat:@"Player item failed with error: %@"];
                            [r26 release];
                            [r0 release];
                            [r23 release];
                            [r21 removeObservers];
                            r0 = objc_loadWeakRetained((int64_t *)&r21->_delegate);
                            [r0 onVideoViewDidFail:r21->_context];
                            [r0 release];
                    }
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)createTimerInRect:(struct CGRect)arg2 withDuration:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r8 = 0x100ba2000;
    asm { fdiv       d0, d10, d0 };
    r0 = [ADCVideoTimer new];
    [r0 sizeThatFits:r2];
    [r0 sizeThatFits:r2];
    [r0 sizeThatFits:r2];
    [r0 setFrame:r2];
    [r0 setAutoresizingMask:0xc];
    [r0 update:0xc withTotal:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCMPVideoView dealloc]" line:0xf8 withFormat:@"dealloc called on ADCVideoView"];
    [self removeObservers];
    [[&var_20 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoProgressTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_timeObserver, 0x0);
    return;
}

@end