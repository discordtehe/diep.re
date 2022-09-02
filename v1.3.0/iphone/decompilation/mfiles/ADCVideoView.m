@implementation ADCVideoView

-(void)containerResized {
    [self updateTimerOffset];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 originNumber:(unsigned long long)arg3 context:(void *)arg4 player:(void *)arg5 timer:(bool)arg6 {
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
    r23 = r3;
    r25 = r2;
    r19 = [r23 retain];
    r20 = [r4 retain];
    v0 = v0;
    v1 = v1;
    v2 = v2;
    v3 = v3;
    r0 = [[&var_80 super] initWithFrame:r2];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r21 layer];
            r0 = [r0 retain];
            r22 = r0;
            [r0 setPlayer:r20];
            r21->_originNumber = r25;
            objc_storeStrong((int64_t *)&r21->_context, r23);
            [r21->_context setView:r21];
            r21->_elapsed = 0x0;
            r21->_watchdogTrigger = 0x0;
            [r21 setHidden:0x1];
            [r21 setAutoresizingMask:0x12];
            r21->_lastScreenWidth = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastAppliedInset));
            r9 = *_UIEdgeInsetsZero;
            q0 = *(int128_t *)r9;
            q1 = *(int128_t *)(r9 + 0x10);
            *(int128_t *)(r21 + r8) = q0;
            *(int128_t *)(0x10 + r21 + r8) = q1;
            r0 = [r20 currentItem];
            r0 = [r0 retain];
            [r0 addObserver:r21 forKeyPath:@"status" options:0x0 context:0x0];
            [r0 release];
            CMTimeMake(0x1, 0x3c);
            r25 = [r21 retain];
            var_A8 = r25;
            r27 = [r19 retain];
            var_A0 = r27;
            r0 = [r20 addPeriodicTimeObserverForInterval:&var_E0 queue:0x0 usingBlock:&var_C8];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timeObserver));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r25->_observing = 0x1;
            *(int8_t *)(int64_t *)&r25->_playing = 0x0;
            *(int8_t *)(int64_t *)&r25->_reportedReady = 0x0;
            *(int8_t *)(int64_t *)&r25->_complete = 0x0;
            if (r24 != 0x0) {
                    [r27 rect];
                    v8 = v0;
                    v9 = v1;
                    v10 = v2;
                    v11 = v3;
                    r0 = [r20 currentItem];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 asset];
                    r29 = r29;
                    r26 = [r0 retain];
                    if (r26 != 0x0) {
                            [r26 duration];
                    }
                    CMTimeGetSeconds(&var_F8);
                    r0 = [r25 createTimerInRect:r2 withDuration:0x0];
                    r0 = [r0 retain];
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
                    r8 = *(r25 + r27);
                    *(r25 + r27) = r0;
                    [r8 release];
                    [r26 release];
                    [r24 release];
                    [*(r25 + r27) setHidden:0x1];
                    [r25 updateTimerOffset];
                    [r25 addSubview:*(r25 + r27)];
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
                    [r23 release];
            }
            [var_A0 release];
            [var_A8 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)updateTimerOffset {
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [ADCUtil getSafeAreaInsets];
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lastScreenWidth));
    d0 = *(r19 + r20);
    if (d12 != d0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
            [*(r19 + r21) frame];
            if (d12 < d13) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastAppliedInset));
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastAppliedInset));
            }
            *(int128_t *)(r19 + sign_extend_64(r8)) = d8;
            *(int128_t *)(0x8 + r19 + sign_extend_64(r8)) = d11;
            *(int128_t *)(0x10 + r19 + sign_extend_64(r8)) = d9;
            *(int128_t *)(0x18 + r19 + sign_extend_64(r8)) = d10;
            *(r19 + r20) = d12;
            [*(r19 + r21) setFrame:r2];
    }
    return;
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
            r29 = r29;
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
    if (r19->_timer != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 removeObserver:r2 name:r3 object:r4];
            [r20 release];
    }
    return;
}

-(void)willMoveToSuperview:(void *)arg2 {
    r0 = self;
    if (arg2 == 0x0) {
            *(int8_t *)(int64_t *)&r0->_playing = 0x0;
            [r0 removeObservers];
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

-(void)play:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(status);
    r22 = objc_msgSend(r0, r1);
    [r0 release];
    if (r22 == 0x1) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_complete));
            if (r20 != 0x0) {
                    *(int8_t *)(r19 + r21) = 0x0;
                    r19->_elapsed = 0x0;
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_playing));
                    if (*(int8_t *)(r19 + r22) == 0x0) {
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
                            if ([*(r19 + r20) isHidden] != 0x0) {
                                    [*(r19 + r20) setAlpha:r2];
                                    [*(r19 + r20) setHidden:0x0];
                                    [UIView animateWithDuration:&var_58 animations:r3];
                            }
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoProgressTimer));
                            if (*(r19 + r23) == 0x0) {
                                    r0 = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(checkProgress) selector:0x0 userInfo:0x1 repeats:r6];
                                    r0 = [r0 retain];
                                    r8 = *(r19 + r23);
                                    *(r19 + r23) = r0;
                                    [r8 release];
                                    r0 = [NSRunLoop currentRunLoop];
                                    r0 = [r0 retain];
                                    [r0 addTimer:*(r19 + r23) forMode:**_NSDefaultRunLoopMode];
                                    [r0 release];
                            }
                            *(int8_t *)(r19 + r22) = 0x1;
                            *(int8_t *)(r19 + r21) = 0x0;
                            [r19 seekToTime:&var_80 completionHandler:r3];
                    }
            }
            else {
                    if (*(int8_t *)(r19 + r21) == 0x0) {
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_playing));
                            if (*(int8_t *)(r19 + r22) == 0x0) {
                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
                                    if ([*(r19 + r20) isHidden] != 0x0) {
                                            [*(r19 + r20) setAlpha:r2];
                                            [*(r19 + r20) setHidden:0x0];
                                            [UIView animateWithDuration:&var_58 animations:r3];
                                    }
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoProgressTimer));
                                    if (*(r19 + r23) == 0x0) {
                                            r0 = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(checkProgress) selector:0x0 userInfo:0x1 repeats:r6];
                                            r0 = [r0 retain];
                                            r8 = *(r19 + r23);
                                            *(r19 + r23) = r0;
                                            [r8 release];
                                            r0 = [NSRunLoop currentRunLoop];
                                            r0 = [r0 retain];
                                            [r0 addTimer:*(r19 + r23) forMode:**_NSDefaultRunLoopMode];
                                            [r0 release];
                                    }
                                    *(int8_t *)(r19 + r22) = 0x1;
                                    *(int8_t *)(r19 + r21) = 0x0;
                                    [r19 seekToTime:&var_80 completionHandler:r3];
                            }
                    }
            }
    }
    else {
            r0 = r19->_failHandler;
            if (r0 != 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_context));
                    r1 = *(r19 + r21);
                    (*(r0 + 0x10))();
            }
            else {
                    r21 = *(int32_t *)ivar_offset(_context);
            }
            r0 = *(r19 + (r21 << r1));
            r0 = [r0 session];
            r0 = [r0 retain];
            r21 = [[r0 identifier] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoView play:]" line:0x91 withFormat:@"ADCVideoView player not ready canceled ad session: %@"];
            [r21 release];
            [r0 release];
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

loc_10023d9f4:
    r0 = [r19 player];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 status];
    [r0 release];
    if (r22 != 0x1) goto .l1;

loc_10023da34:
    if (*(int8_t *)(int64_t *)&r19->_complete == 0x0) goto loc_10023da54;

loc_10023da44:
    r19->_watchdogTrigger = 0x0;
    return;

.l1:
    return;

loc_10023da54:
    r0 = [r19 player];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [r21 currentTime];
            asm { scvtf      d8, d0 };
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_elapsed));
    d0 = *(r19 + r23);
    if (d0 == d8) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_watchdogTrigger));
            *(r19 + r8) = *(r19 + r8) + 0x1;
    }
    else {
            if (!CPU_FLAGS & NS) {
                    r19->_watchdogTrigger = 0x0;
            }
    }
    r0 = [r19 player];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 rate];
    asm { fcvt       d0, s0 };
    if (d0 >= *0x100b9b5c0) goto loc_10023dbb4;

loc_10023db78:
    r22 = *(int8_t *)(r19 + r24);
    [r21 release];
    if (r22 == 0x0) goto loc_10023dbbc;

loc_10023db88:
    r0 = [r19 player];
    r29 = r29;
    r0 = [r0 retain];
    [r0 play];
    r0 = r0;
    goto loc_10023dbb8;

loc_10023dbb8:
    [r0 release];
    goto loc_10023dbbc;

loc_10023dbbc:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_watchdogTrigger));
    if (*(r19 + r8) >= 0x15) {
            *(r19 + r8) = 0x0;
            r1 = &var_98;
            dispatch_async(*__dispatch_main_q, r1);
            r0 = r19->_failHandler;
            if (r0 != 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_context));
                    r1 = *(r19 + r21);
                    (*(r0 + 0x10))();
            }
            else {
                    r21 = *(int32_t *)ivar_offset(_context);
            }
            r0 = *(r19 + (r21 << r1));
            r0 = [r0 session];
            r0 = [r0 retain];
            r22 = [[r0 identifier] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoView checkProgress]" line:0xd6 withFormat:@"ADCVideoView watchdog canceled ad session: %@"];
            [r22 release];
            [r0 release];
    }
    *(r19 + r23) = d8;
    dispatch_async(*__dispatch_main_q, &var_C8);
    return;

loc_10023dbb4:
    r0 = r21;
    goto loc_10023dbb8;
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

-(void)onFailedStatus {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self removeObservers];
    r0 = r19->_failHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
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
    if (r22 != r20 || [r19 isEqualToString:r2] == 0x0) goto loc_10023e168;

loc_10023df94:
    if ([r20 status] != 0x1) goto loc_10023dfc0;

loc_10023dfb0:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_reportedReady));
    if (*(int8_t *)(r21 + r26) == 0x0) goto loc_10023e104;

loc_10023dfc0:
    if ([r20 status] != 0x2) goto loc_10023e048;

loc_10023dfd4:
    r0 = [r21 player];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r23 = r0;
    r26 = [[r0 error] retain];
    goto loc_10023e0c8;

loc_10023e0c8:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    [r26 release];
    [r23 release];
    [r24 release];
    [r21 onFailedStatus];
    goto loc_10023e168;

loc_10023e168:
    [r22 release];
    [r20 release];
    [r19 release];
    return;

loc_10023e048:
    if ([r20 status] != 0x0) goto loc_10023e168;

loc_10023e058:
    r0 = [r21 player];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r23 = r0;
    r26 = [[r0 error] retain];
    goto loc_10023e0c8;

loc_10023e104:
    if (r22 != 0x0) {
            [r20 duration];
    }
    CMTimeGetSeconds(&var_58);
    r21->_duration = d0;
    r0 = r21->_readyHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    *(int8_t *)(r21 + r26) = 0x1;
    goto loc_10023e168;
}

-(void)finished {
    *(int8_t *)(int64_t *)&self->_playing = 0x0;
    *(int8_t *)(int64_t *)&self->_complete = 0x1;
    self->_elapsed = self->_duration;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoProgressTimer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_38);
    return;
}

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

-(void *)createTimerInRect:(struct CGRect)arg2 withDuration:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r8 = 0x100ba2000;
    asm { fdiv       d0, d9, d0 };
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

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCVideoView dealloc]" line:0x13b withFormat:@"dealloc called on ADCVideoView"];
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)originNumber {
    r0 = self->_originNumber;
    return r0;
}

-(void *)readyHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_readyHandler)), 0x0);
    return r0;
}

-(void)setOriginNumber:(unsigned long long)arg2 {
    self->_originNumber = arg2;
    return;
}

-(void)setReadyHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)progressHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_progressHandler)), 0x0);
    return r0;
}

-(void)setProgressHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)failHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_failHandler)), 0x0);
    return r0;
}

-(void)setFailHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)elapsed {
    r0 = self;
    return r0;
}

-(void)setElapsed:(double)arg2 {
    self->_elapsed = d0;
    return;
}

-(double)duration {
    r0 = self;
    return r0;
}

-(void)setDuration:(double)arg2 {
    self->_duration = d0;
    return;
}

-(bool)complete {
    r0 = *(int8_t *)(int64_t *)&self->_complete;
    return r0;
}

-(void)setComplete:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_complete = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_failHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_progressHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_readyHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_videoProgressTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_timeObserver, 0x0);
    return;
}

@end