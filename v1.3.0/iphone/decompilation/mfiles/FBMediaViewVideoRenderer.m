@implementation FBMediaViewVideoRenderer

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialize];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialize];
    }
    r0 = r19;
    return r0;
}

-(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_failureBlock));
    r0 = *(self + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    *(int8_t *)(int64_t *)&r19->_isSeeking = 0x0;
    *(int8_t *)(int64_t *)&r19->_isStarted = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    *(int8_t *)(int64_t *)&r19->_playingBeforeSeeked = 0x0;
    r20 = (int64_t *)&r19->_pollingInterval;
    if (*qword_1011dd148 != -0x1) {
            dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
    }
    r8 = *qword_1011dd150;
    q0 = *(int128_t *)r8;
    *(r20 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r20 = q0;
    r0 = [NSMutableSet set];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_timingObservers));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r20 = [UIView alloc];
    [r19 bounds];
    r0 = [r20 initWithFrame:r2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoContainerView));
    r8 = *(r19 + r20);
    *(r19 + r20) = r0;
    [r8 release];
    [r19 addSubview:*(r19 + r20)];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoLogger));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoView));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    *(int32_t *)(int64_t *)&r19->_volume = 0x3f800000;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
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
    r20 = self;
    [[&var_50 super] setFrame:r2];
    if (r20 != 0x0) {
            r19 = @selector(setFrame:);
            r0 = [r20 retain];
            [r0 wantedVideoContainerFrame];
            objc_msgSend(r0->_videoContainerView, r19);
            [r20->_videoContainerView bounds];
            r21 = r20->_videoView;
            [r20 release];
            objc_msgSend(r21, r19);
    }
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x60;
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
    [[&var_50 super] layoutSubviews];
    if (r19 != 0x0) {
            r0 = [r19 retain];
            [r0 wantedVideoContainerFrame];
            [r0->_videoContainerView setFrame:r2];
            [r0->_videoContainerView bounds];
            r21 = r0->_videoView;
            [r0 release];
            [r21 setFrame:r2];
    }
    return;
}

-(void *)addPeriodicTimeObserverForInterval:(union ?)arg2 queue:(void *)arg3 usingBlock:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
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
    r19 = [r3 retain];
    r20 = [r4 retain];
    r0 = [FBAdTimeObserver alloc];
    r0 = [r0 initWithInterval:&var_A0 queue:r19 usingBlock:r20];
    r21 = r0;
    if (r0 != 0x0) {
            [r22->_timingObservers addObject:r2];
            r22 = [r22 retain];
            r23 = [r21 retain];
            if (r22 != 0x0 && r22->_player != 0x0) {
                    objc_initWeak(r29 - 0x48, r23);
                    [r23 interval];
                    [[r23 queue] retain];
                    objc_copyWeak(&var_70 + 0x20, r29 - 0x48);
                    r25 = [[r25 addPeriodicTimeObserverForInterval:&stack[-152] queue:r26 usingBlock:&var_70] retain];
                    [r23 setDownstreamObserver:r25];
                    [r25 release];
                    [r26 release];
                    objc_destroyWeak(&var_70 + 0x20);
                    objc_destroyWeak(r29 - 0x48);
            }
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x180;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    var_150 = r8;
    [*(self + r8) pause];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    r20 = self->_videoLogger;
    [self currentTime];
    [r20 registerStop:&stack[-328]];
    r19 = self;
    r0 = [self retain];
    r25 = r0;
    if (r0 != 0x0) {
            var_110 = q0;
            r0 = r25->_timingObservers;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_158 = r0;
            var_170 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r26 = *var_110;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(var_158);
                                    }
                                    r28 = *(var_118 + r20 * 0x8);
                                    r27 = [r25 retain];
                                    r28 = [r28 retain];
                                    if (*(r19 + var_150) != 0x0) {
                                            r0 = [r28 downstreamObserver];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r0 != 0x0) {
                                                    r22 = *(r19 + var_150);
                                                    r0 = [r28 downstreamObserver];
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    [r22 removeTimeObserver:r21];
                                                    [r21 release];
                                                    [r28 setDownstreamObserver:r2];
                                            }
                                    }
                                    [r28 release];
                                    [r27 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r23);
                            r0 = objc_msgSend(var_158, var_170);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [var_158 release];
    }
    var_60 = **___stack_chk_guard;
    [r25 release];
    [[&var_148 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(double)aspectRatio {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = self->_playerItem;
    if (r0 != 0x0) {
            r0 = [r0 asset];
            r0 = [r0 retain];
            [r0 naturalSize];
            r0 = [r0 release];
            asm { fdiv       d0, d8, d9 };
    }
    return r0;
}

-(union ?)currentTime {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = r8;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 currentTime];
            r0 = *(r20 + r21);
            r0 = [r0 currentItem];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 duration];
            }
            else {
                    var_50 = 0x0;
                    var_40 = 0x0;
            }
            r0 = [r20 release];
            if ((var_2C & 0x1) != 0x0 && (var_44 & 0x1) != 0x0) {
                    r0 = sub_100a3e318(&var_70, &var_90);
                    if (r0 == 0x1) {
                            q0 = var_50;
                            r8 = var_40;
                    }
                    else {
                            q0 = var_38;
                            r8 = var_28;
                    }
            }
            else {
                    if (*qword_1011dd128 != -0x1) {
                            r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
                    }
                    r8 = *qword_1011dd130;
                    q0 = *(int128_t *)r8;
                    r8 = *(r8 + 0x10);
            }
    }
    else {
            if (*qword_1011dd128 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            q0 = *(int128_t *)r8;
            r8 = *(r8 + 0x10);
    }
    *(r19 + 0x10) = r8;
    *(int128_t *)r19 = q0;
    return r0;
}

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *r2;
    var_10 = *(int32_t *)(r2 + 0x8);
    var_18 = r8;
    if (r0 != 0x0) {
            r8 = *(int32_t *)(r2 + 0xc);
            if ((r8 & 0x11) == 0x1) {
                    [r0->_player seekToTime:&var_30];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(union ?)duration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = self->_playerItem;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 duration];
            if ((*(int8_t *)(r19 + 0xc) & 0x1) == 0x0) {
                    if (*qword_1011dd148 != -0x1) {
                            dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
                    }
                    r8 = *qword_1011dd150;
                    q0 = *(int128_t *)r8;
                    *(r19 + 0x10) = *(r8 + 0x10);
                    *(int128_t *)r19 = q0;
            }
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

-(void)disengageVideoSeek {
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    if (*(r0 + r21) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isFailed == 0x0 && [r19->_playerItem status] != 0x2) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isSeeking));
                    if (*(int8_t *)(r19 + r8) != 0x0) {
                            *(int8_t *)(r19 + r8) = 0x0;
                            r20 = r19->_videoLogger;
                            [r19 currentTime];
                            [r20 registerSeekEnd:&stack[-72]];
                            [r19 videoDidDisengageSeek];
                            if ((sub_100a55320() & 0x1) == 0x0 && *(int8_t *)(int64_t *)&r19->_playingBeforeSeeked != 0x0) {
                                    r20 = [r19 retain];
                                    [*(r19 + r21) rate];
                                    if (s0 <= 0x0) {
                                            [*(r19 + r21) play];
                                            *(int8_t *)(int64_t *)&r20->_isStarted = 0x1;
                                    }
                                    [r20 release];
                            }
                    }
            }
    }
    return;
}

-(void)pauseVideo {
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    if (*(r0 + r22) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isFailed == 0x0 && [r19->_playerItem status] != 0x2) {
                    [*(r19 + r22) rate];
                    if (s0 > 0x0) {
                            r20 = [r19 retain];
                            [*(r19 + r22) rate];
                            if (s0 > 0x0) {
                                    [*(r19 + r22) pause];
                            }
                            [r20 release];
                            r19 = r20->_videoLogger;
                            [r20 currentTime];
                            [r19 registerPause:&stack[-72]];
                            [r20 videoDidPause];
                    }
            }
    }
    return;
}

-(void)engageVideoSeek {
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    if (*(r0 + r22) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isFailed == 0x0 && [r19->_playerItem status] != 0x2) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isSeeking));
                    if (*(int8_t *)(r19 + r8) == 0x0) {
                            *(int8_t *)(r19 + r8) = 0x1;
                            if ((sub_100a55320() & 0x1) == 0x0) {
                                    r0 = *(r19 + r22);
                                    r8 = &@selector(wkWebView);
                                    r21 = *(r8 + 0x9b8);
                                    objc_msgSend(r0, r21);
                                    if (s0 > 0x0) {
                                            r8 = &@selector(wkWebView);
                                            if (CPU_FLAGS & G) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    *(int8_t *)(int64_t *)&r19->_playingBeforeSeeked = r8;
                                    r20 = [r19 retain];
                                    objc_msgSend(*(r19 + r22), r21);
                                    if (s0 > 0x0) {
                                            [*(r19 + r22) pause];
                                    }
                                    [r20 release];
                            }
                            r20 = r19->_videoLogger;
                            [r19 currentTime];
                            [r20 registerSeekStart:&stack[-72]];
                            [r19 videoDidEngageSeek];
                    }
            }
    }
    return;
}

-(void)playVideo {
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    if (*(r0 + r22) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isFailed == 0x0 && [r19->_playerItem status] != 0x2) {
                    [*(r19 + r22) rate];
                    if (s0 <= 0x0) {
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_isStarted));
                            if (*(int8_t *)(r19 + r23) != 0x0) {
                                    r21 = r19->_videoLogger;
                                    [r19 currentTime];
                                    [r21 registerResume:&stack[-88]];
                            }
                            r21 = [r19 retain];
                            [*(r19 + r22) rate];
                            if (s0 <= 0x0) {
                                    [*(r19 + r22) play];
                                    *(int8_t *)(r19 + r23) = 0x1;
                            }
                            [r21 release];
                            [r21 videoDidPlay];
                    }
            }
    }
    return;
}

-(bool)isPlaying {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0 != 0x0) {
            r0 = r0->_player;
            if (r0 != 0x0) {
                    r0 = [r0 rate];
                    if (s0 > 0x0) {
                            if (CPU_FLAGS & G) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(void)removeTimeObserver:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [[arg2 retain] retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_timingObservers));
    if ([*(r20 + r25) containsObject:r2] != 0x0) {
            r22 = [r20 retain];
            r21 = [r19 retain];
            if (r22->_player != 0x0) {
                    r0 = [r21 downstreamObserver];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r24 = r22->_player;
                            r23 = [[r21 downstreamObserver] retain];
                            [r24 removeTimeObserver:r23];
                            [r23 release];
                            [r21 setDownstreamObserver:0x0];
                    }
            }
            [r21 release];
            [r22 release];
            [*(r20 + r25) removeObject:r21];
    }
    [r19 release];
    [r19 release];
    return;
}

-(float)volume {
    r0 = self;
    return r0;
}

-(void)setVolume:(float)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_volume));
    if (*(int32_t *)(r0 + r8) != s0) {
            r19 = r0;
            *(int32_t *)(r0 + r8) = s0;
            r0 = r0->_player;
            if (r0 != 0x0) {
                    [r0 setVolume:r2];
            }
            [r19 videoDidChangeVolume];
    }
    return;
}

-(void)seekVideoToTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    if (*(r0 + r21) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_isFailed == 0x0) {
                    r20 = r2;
                    if ([r19->_playerItem status] != 0x2 && *(int8_t *)(int64_t *)&r19->_isSeeking != 0x0) {
                            r8 = *r20;
                            var_30 = *(int32_t *)(r20 + 0x8);
                            var_38 = r8;
                            r8 = *(int32_t *)(r20 + 0xc);
                            if ((r8 & 0x11) == 0x1) {
                                    [*(r19 + r21) seekToTime:&var_50];
                            }
                            [r19 videoDidSeek];
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadVideoURL:(void *)arg2 pollingInterval:(union ?)arg3 clientToken:(void *)arg4 autoplayEnabled:(bool)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r23 = [arg2 retain];
    [self loadVideoURL:r23 pollingInterval:&var_50 clientToken:r4 autoplayEnabled:r5 loadedBlock:0x0 failureBlock:0x0];
    [r23 release];
    return;
}

-(void)loadVideoURL:(void *)arg2 pollingInterval:(union ?)arg3 clientToken:(void *)arg4 autoplayEnabled:(bool)arg5 cardIndex:(void *)arg6 cardCount:(void *)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r25 = [arg2 retain];
    r22 = [r4 retain];
    r0 = [r6 retain];
    [self loadVideoURL:r25 pollingInterval:&var_60 clientToken:r22 autoplayEnabled:r5 loadedBlock:0x0 failureBlock:0x0 cardIndex:r0 cardCount:r7];
    [r0 release];
    [r22 release];
    [r25 release];
    return;
}

-(void)loadVideoURL:(void *)arg2 pollingInterval:(union ?)arg3 clientToken:(void *)arg4 autoplayEnabled:(bool)arg5 loadedBlock:(void *)arg6 failureBlock:(void *)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r25 = [arg2 retain];
    r22 = [r4 retain];
    r20 = [r6 retain];
    [self loadVideoURL:r25 pollingInterval:&var_60 clientToken:r22 autoplayEnabled:r5 loadedBlock:r20 failureBlock:r7 cardIndex:0x0 cardCount:0x0];
    [r20 release];
    [r22 release];
    [r25 release];
    return;
}

-(struct CGRect)wantedVideoContainerFrame {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_videoSize;
    d8 = *(int128_t *)r19;
    d10 = *(int128_t *)*_CGSizeZero;
    r0 = [self bounds];
    v4 = v0;
    v5 = v1;
    v6 = v2;
    v7 = v3;
    if (d8 == d10) {
            asm { fccmp      d9, d11, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            v2 = v4;
            v3 = v5;
            r0 = sub_100aabfa0();
            v4 = v0;
            v5 = v1;
            v6 = v2;
            v7 = v3;
    }
    return r0;
}

-(void *)extraDataForVideoFunnelLogging:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0 != 0x0) {
            [r2 retain];
            r19 = [NSMutableDictionary new];
            [r0 currentTime];
            sub_100a3e4dc(&stack[-72]);
            [r19 setNSTimeInterval:@"video_time" forKey:r3];
            [r20 volume];
            [r19 setFloat:@"volume" forKey:r3];
            r20 = [[r22 description] retain];
            [r22 release];
            [r19 setValue:r20 forKey:@"error"];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)videoDidChangeVolume {
    return;
}

-(void)videoDidLoad {
    return;
}

-(void)videoDidPause {
    return;
}

-(void)videoDidPlay {
    return;
}

-(void)videoDidEngageSeek {
    return;
}

-(void)videoDidSeek {
    return;
}

-(void)videoDidDisengageSeek {
    return;
}

-(void)loadVideoURL:(void *)arg2 pollingInterval:(union ?)arg3 clientToken:(void *)arg4 autoplayEnabled:(bool)arg5 loadedBlock:(void *)arg6 failureBlock:(void *)arg7 cardIndex:(void *)arg8 cardCount:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
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
    r31 = r31 + 0xffffffffffffff90 - 0x1b0;
    var_1DC = r5;
    r28 = r4;
    var_1D0 = r3;
    var_1E8 = [arg2 retain];
    var_1D8 = [r28 retain];
    r24 = [r6 retain];
    r26 = [r7 retain];
    r27 = [arg8 retain];
    var_1C8 = [arg9 retain];
    r0 = [self retain];
    r19 = r0;
    if (r0 != 0x0 && r19->_progressLoggingObserver != 0x0) {
            [r19 removeTimeObserver:r2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_progressLoggingObserver));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    [r19 release];
    r0 = [r19 retain];
    r21 = r0;
    var_1B8 = r0;
    if (r19 != 0x0) {
            r25 = 0x101173000;
            var_208 = r28;
            stack[-528] = r27;
            var_1F8 = r26;
            stack[-512] = r24;
            var_130 = q0;
            r0 = r21->_timingObservers;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r3 = r29 - 0xf0;
            var_1A8 = r0;
            var_1C0 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r25 = 0x101173000;
                    r19 = r0;
                    r27 = *var_130;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_130 != r27) {
                                            objc_enumerationMutation(var_1A8);
                                    }
                                    r26 = *(var_138 + r23 * 0x8);
                                    r24 = [r21 retain];
                                    r26 = [r26 retain];
                                    if (*(r24 + sign_extend_64(*(int32_t *)(r25 + 0xd6c))) != 0x0) {
                                            r0 = [r26 downstreamObserver];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r0 != 0x0) {
                                                    r28 = *(r24 + sign_extend_64(*(int32_t *)(r25 + 0xd6c)));
                                                    r0 = [r26 downstreamObserver];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r28 removeTimeObserver:r0];
                                                    r25 = r25;
                                                    r21 = var_1B8;
                                                    [r0 release];
                                                    [r26 setDownstreamObserver:r2];
                                            }
                                    }
                                    [r26 release];
                                    [r24 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r19);
                            r3 = r29 - 0xf0;
                            r0 = objc_msgSend(var_1A8, var_1C0);
                            r19 = r0;
                    } while (r0 != 0x0);
            }
            [var_1A8 release];
            [r21 release];
            r0 = [r21 retain];
            r19 = r0;
            r0 = r0->_videoView;
            if (r0 != 0x0) {
                    [r0 removeFromSuperview];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoView));
                    r0 = *(r19 + r8);
                    *(r19 + r8) = 0x0;
                    [r0 release];
            }
            r8 = sign_extend_64(*(int32_t *)(r25 + 0xd6c));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r26 = var_1F8;
            r24 = stack[-512];
            r28 = var_208;
            r27 = stack[-528];
    }
    else {
            r25 = 0x101173000;
            [r21 release];
            [r21 retain];
    }
    [r21 release];
    objc_storeStrong((int64_t *)&r21->_inlineClientToken, r28);
    r19 = [FBAdVideoPlayerView alloc];
    r0 = [r21 videoReadyToDisplay];
    r29 = r29;
    r20 = [r0 retain];
    r28 = [r19 initWithFrame:r20 videoReadyToDisplay:r3];
    [r20 release];
    if (*qword_1011dd4d8 != -0x1) {
            dispatch_once_f(0x1011dd4d8, 0x1011c6730, 0x100a3d91c);
    }
    r19 = [**qword_1011dd4e0 retain];
    r0 = [r28 playerLayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setVideoGravity:r19];
    [r0 release];
    [r19 release];
    objc_storeStrong((int64_t *)&r21->_videoView, r28);
    [r21->_videoContainerView addSubview:r21->_videoView];
    [r21 setNeedsLayout];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_pollingInterval));
    q0 = *(int128_t *)var_1D0;
    *(0x10 + r21 + r8) = *(var_1D0 + 0x10);
    *(int128_t *)(r21 + r8) = q0;
    r21 = r25;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    r9 = *(int128_t *)(r8 + 0x8);
    r19 = *(int128_t *)(r8 + 0xc);
    var_100 = *r8;
    var_F8 = r9;
    r20 = *(r8 + 0x10);
    r25 = [var_1B8 retain];
    if ((r19 & 0x11) == 0x1) {
            [*(r25 + sign_extend_64(*(int32_t *)(r21 + 0xd6c))) seekToTime:r29 - 0xf0];
    }
    var_70 = **___stack_chk_guard;
    [r25 release];
    *(int8_t *)(int64_t *)&r25->_isFailed = 0x0;
    *(int8_t *)(int64_t *)&r25->_isStarted = 0x0;
    *(int8_t *)(int64_t *)&r25->_videoOrPlaceholderImageVisible = 0x0;
    r0 = objc_retainBlock(r26);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_failureBlock));
    r8 = *(r25 + r9);
    *(r25 + r9) = r0;
    [r8 release];
    r0 = objc_retainBlock(r24);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadedBlock));
    r8 = *(r25 + r9);
    *(r25 + r9) = r0;
    [r8 release];
    objc_initWeak(r29 - 0xf0, r25);
    [FBAdVideoLogger alloc];
    objc_copyWeak(&var_168 + 0x20, r29 - 0xf0);
    r0 = [r19 initWithTargetView:r28 inlineClientToken:var_1D8 viewableImpressionBlock:0x0 targetVolumeBlock:&var_168 autoplay:var_1DC cardIndex:r27 cardCount:var_1C8];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoLogger));
    r8 = *(r25 + r9);
    *(r25 + r9) = r0;
    [r8 release];
    [[FBAdCache sharedCache] retain];
    objc_copyWeak(&var_1A0 + 0x30, r29 - 0xf0);
    r0 = [var_1D8 retain];
    var_180 = r0;
    r0 = [var_1E8 retain];
    [r22 videoURLWrapperForURL:r0 withBlock:&var_1A0];
    [r22 release];
    [r0 release];
    [var_180 release];
    objc_destroyWeak(&var_1A0 + 0x30);
    objc_destroyWeak(&var_168 + 0x20);
    objc_destroyWeak(r29 - 0xf0);
    [r28 release];
    [var_1C8 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoDidEnd {
    return;
}

-(void)videoDidFailWithError:(void *)arg2 {
    return;
}

-(bool)videoOrPlaceholderImageVisible {
    r0 = *(int8_t *)(int64_t *)&self->_videoOrPlaceholderImageVisible;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoReadyToDisplay, 0x0);
    objc_storeStrong((int64_t *)&self->_videoContainerView, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_storeStrong((int64_t *)&self->_videoView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoLogger, 0x0);
    objc_storeStrong((int64_t *)&self->_timingObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_progressLoggingObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItem, 0x0);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    objc_storeStrong((int64_t *)&self->_loadedBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_failureBlock, 0x0);
    return;
}

-(void)setVideoOrPlaceholderImageVisible:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoOrPlaceholderImageVisible = arg2;
    return;
}

-(void *)videoContainerView {
    r0 = self->_videoContainerView;
    return r0;
}

-(void *)videoReadyToDisplay {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoReadyToDisplay)), 0x0);
    return r0;
}

-(void)setVideoReadyToDisplay:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end