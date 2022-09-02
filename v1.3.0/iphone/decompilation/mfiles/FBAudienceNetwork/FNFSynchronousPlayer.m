@implementation FNFSynchronousPlayer

-(void)dealloc {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x43 format:@"%@ deallocing FNFPlayer"];
    r0 = *((int64_t *)&self->_playerInternalState + 0x98);
    *((int64_t *)&self->_playerInternalState + 0x98) = 0x0;
    [r0 release];
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    *((int64_t *)&self->_playerInternalState + 0x130) = 0x0;
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    [*(self + r20) setDisplayEngineDelegate:0x0];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self removeTimeObserver:*((int64_t *)&self->_playerInternalState + 0xb8)];
    r0 = *((int64_t *)&self->_playerInternalState + 0xb8);
    *((int64_t *)&self->_playerInternalState + 0xb8) = 0x0;
    [r0 release];
    [self removeTimeObserver:*((int64_t *)&self->_playerInternalState + 0xa8)];
    r0 = *((int64_t *)&self->_playerInternalState + 0xa8);
    *((int64_t *)&self->_playerInternalState + 0xa8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_audioLevelCallback));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r20 = [self->_audioEngine retain];
    r21 = [self->_runningQueue retain];
    var_28 = r20;
    [r20 retain];
    dispatch_async(r21, &var_48);
    [var_28 release];
    [r21 release];
    [r20 release];
    [[&var_58 super] dealloc];
    return;
}

-(void *)description {
    [self class];
    r22 = [[*((int64_t *)&self->_playerInternalState + 0x130) videoID] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithDisplayEngine:(void *)arg2 config:(union ?)arg3 audioEngine:(void *)arg4 audioDecoder:(void *)arg5 clock:(void *)arg6 runningQueue:(void *)arg7 muted:(bool)arg8 asyncTimebase:(bool)arg9 {
    var_0 = arg8;
    memcpy(&r3, &arg3, 0x8);
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r25 = r7;
    r26 = r6;
    r28 = r5;
    r19 = r4;
    r27 = r3;
    r20 = arg2;
    r21 = [arg2 retain];
    r22 = [r19 retain];
    r24 = [r28 retain];
    var_1D8 = [r26 retain];
    var_1E0 = [r25 retain];
    r0 = [[&saved_fp - 0x68 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r23->_skipAudioQueueFlush = *(int8_t *)r27;
            *(int8_t *)(int64_t *)&r23->_endFrameSeekIfNoMoreFrames = *(int8_t *)(r27 + 0x1);
            *(int8_t *)(int64_t *)&r23->_useLastCallbackInBackToBackFrameSeek = *(int8_t *)(r27 + 0x2);
            *(int8_t *)(int64_t *)&r23->_flushAudioQueueOnPause = *(int8_t *)(r27 + 0x3);
            *(int32_t *)(int64_t *)&r23->_minSampleAudioFrameSize = *(int32_t *)(r27 + 0x8);
            *(int8_t *)(int64_t *)&r23->_enableASRCaptions = *(int8_t *)(r27 + 0x4);
            *(int8_t *)(int64_t *)&r23->_setPlayingRequestedFalseWhenUpdatePause = *(int8_t *)(r27 + 0xe);
            *(int8_t *)(int64_t *)&r23->_checkActiveBeforeStallResume = *(int8_t *)(r27 + 0x13);
            r27 = (int64_t *)&r23->_displayEngine;
            objc_storeStrong(r27, r20);
            objc_storeStrong((int64_t *)&r23->_audioEngine, r19);
            objc_storeStrong((int64_t *)&r23->_audioDecoder, r28);
            sub_100b36d20(&stack[-480]);
            sub_100b3fd4c((int64_t *)&r23->_playerInternalState, &stack[-480]);
            [var_88 release];
            [var_90 release];
            [var_98 release];
            [var_A0 release];
            [var_A8 release];
            [var_F0 release];
            [var_118 release];
            [var_120 release];
            [var_128 release];
            [var_130 release];
            [var_138 release];
            [var_140 release];
            *(int8_t *)((int64_t *)&r23->_playerInternalState + 0xb) = var_0;
            *(int32_t *)(int64_t *)&r23->_volume = 0x3f800000;
            r19 = (int64_t *)&r23->_clock;
            objc_storeStrong(r19, r26);
            objc_storeStrong((int64_t *)&r23->_runningQueue, r25);
            [*r27 setDisplayEngineDelegate:r23];
            [*r27 flushIfError];
            if ((arg_1 & 0x1) == 0x0) {
                    [*r19 syncWithLayer:*r27];
            }
    }
    [var_1E0 release];
    [var_1D8 release];
    [r24 release];
    [r22 release];
    [r21 release];
    r0 = r23;
    return r0;
}

-(void)play {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x96 format:@"%@ Play called"];
    r21 = (int64_t *)&r19->_playerInternalState;
    if (*(int8_t *)(r21 + 0x1) != 0x0) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    }
    else {
            if (*(int8_t *)(r21 + 0x2) != 0x0) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            }
            else {
                    *(int8_t *)r21 = 0x1;
                    if ([r19 _readyToPlay] != 0x0) {
                            [r19 _setupAudio];
                            if (*(r21 + 0xa0) == 0x0) {
                                    r0 = [r19 _addStallTimer];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r8 = *(r21 + 0xa0);
                                    *(r21 + 0xa0) = r0;
                                    [r8 release];
                            }
                            r0 = r19->_clock;
                            if (r0 != 0x0) {
                                    [r0 currentTime];
                            }
                            else {
                                    var_38 = 0x0;
                                    var_28 = 0x0;
                            }
                            *(r21 + 0x34) = var_28;
                            *(int128_t *)(r21 + 0x24) = var_38;
                            if (*(int32_t *)(r21 + 0x84) == 0x0) {
                                    *(int32_t *)(r21 + 0x84) = 0x3f800000;
                            }
                            [r19 _resumePlayback];
                            if (*(r21 + 0x90) == 0x0) {
                                    r0 = [r19 _addPlaybackTimerForAsset];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r8 = *(r21 + 0x90);
                                    *(r21 + 0x90) = r0;
                                    [r8 release];
                            }
                            if (*(r21 + 0x98) == 0x0) {
                                    r0 = [r19 _addDurationTimerForAsset];
                                    r0 = [r0 retain];
                                    r8 = *(r21 + 0x98);
                                    *(r21 + 0x98) = r0;
                                    [r8 release];
                            }
                            if (*(int8_t *)(r21 + 0xf8) == 0x0) {
                                    [r19 _updateStatus:0x1];
                            }
                    }
            }
    }
    return;
}

-(void)pause {
    [self _pause:0x1];
    return;
}

-(void)_pause:(int)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0xcd format:@"%@ Pause called"];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_setPlayingRequestedFalseWhenUpdatePause));
    if (*(int8_t *)(r20 + r22) != 0x0) {
            *(int8_t *)(int64_t *)&r20->_playerInternalState = 0x0;
    }
    [r20 _updateTimersOnPause];
    [r20 _pausePlayback:r19];
    if (*(int8_t *)(r20 + r22) == 0x0) {
            *(int8_t *)(int64_t *)&r20->_playerInternalState = 0x0;
    }
    [r20->_playerAsset playbackPauseRequested:r19];
    return;
}

-(void)setRenderer:(void *)arg2 {
    r22 = [arg2 retain];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0xdf format:@"%@ setRenderer called with renderer:%@"];
    [self->_displayEngine setRenderer:r22];
    [r22 release];
    return;
}

-(void)setCaptionParser:(void *)arg2 {
    r20 = [arg2 retain];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0xe7 format:@"%@ setCaptionParser called with captionParser:%@"];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_captionParser));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void)setAudioEngine:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0xef format:@"%@ setAudioEngine called with audioEngine:%@"];
    r22 = (int64_t *)&r20->_audioEngine;
    r0 = *r22;
    if (r0 != r19) {
            [r0 stop];
            [*r22 invalidate];
            [r20 removeLevelMeterCallback];
            objc_storeStrong(r22, r21);
            if (([r20 isMuted] & 0x1) == 0x0) {
                    [r20 _syncVolume];
                    [r20 _setupAudio];
            }
    }
    [r19 release];
    return;
}

-(void)setAudioDecoder:(void *)arg2 {
    r20 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x102 format:@"%@ setAudioDecoder called with audioDecoder:%@"];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_audioDecoder));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void)setLiveTraceManager:(void *)arg2 {
    r20 = [arg2 retain];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x10a format:@"%@ setLiveTraceManager called with liveTraceManager:%@"];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_liveTraceManager));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void)replaceCurrentItemWithPlayerItem:(void *)arg2 {
    [self replaceCurrentItemWithPlayerItem:arg2 loggingContext:0x0];
    return;
}

-(void *)createPeriodicTimeObserverForInterval:(union ?)arg2 followMasterClock:(bool)arg3 usingBlock:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_clock;
    r0 = [r0 createTimeObserverWithInterval:&var_20 block:r4 fireOnceAtExactTime:0x0 followMasterClock:r3];
    return r0;
}

-(void)addTimeObserver:(void *)arg2 {
    [self->_clock addTimeObserver:arg2];
    return;
}

-(void)removeTimeObserver:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0->_clock removeTimeObserver:r2];
    }
    return;
}

-(void *)currentItem {
    r0 = self->_playerAsset;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(float)rate {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)((int64_t *)&r0->_playerInternalState + 0x1) != 0x0) {
            r0 = r0->_clock;
            r0 = [r0 currentPlayRate];
    }
    return r0;
}

-(void)setRate:(float)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (s0 >= 0x0) {
            asm { fccmp      s0, s1, #0x0, ge };
    }
    if (CPU_FLAGS & S) goto loc_100b38be8;

loc_100b38b98:
    if (s0 < 0x4000000000000000) goto loc_100b38bf4;

loc_100b38ba4:
    asm { fcvt       d0, s0 };
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x1a8 format:@"Audio is only supported at a play rate range from 0.5 to 2.0; current play rate is %f"];
    return;

loc_100b38bf4:
    *(int32_t *)((int64_t *)&r19->_playerInternalState + 0x84) = s0;
    [r19->_clock setRate:r2];
    [r19 _syncAudioEngineWithClock];
    r1 = @selector(play);
    goto loc_100b38c34;

loc_100b38c34:
    objc_msgSend(r19, r1);
    return;

loc_100b38be8:
    r1 = @selector(pause);
    goto loc_100b38c34;
}

-(void)_syncAudioEngineWithClock {
    r19 = self->_audioEngine;
    [self->_clock currentPlayRate];
    [r19 setRate:r2];
    return;
}

-(union ?)currentTime {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_clock;
    if (r0 != 0x0) {
            r0 = [r0 currentTime];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
    }
    return r0;
}

-(void)replaceCurrentItemWithPlayerItem:(void *)arg2 loggingContext:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x3a0;
    r26 = arg3;
    r25 = arg2;
    r21 = self;
    r19 = [arg2 retain];
    r23 = [r26 retain];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x118 format:@"%@ replaceItem called with asset:%@"];
    r24 = (int64_t *)&r21->_playerAsset;
    r8 = *r24;
    if (r8 != r19) {
            if (r8 == 0x0) {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
                    if ([*(r21 + r22) status] == 0x2) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
                            r8 = r21 + r8;
                            if (*(int8_t *)(r8 + 0x7) != 0x0) {
                                    r0 = *(r21 + r22);
                                    r0 = [r0 error];
                                    r0 = [r0 retain];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerError));
                                    r8 = *(r21 + r9);
                                    *(r21 + r9) = r0;
                                    [r8 release];
                                    [r21 _updateStatus:0x2];
                            }
                            else {
                                    *(int8_t *)(r8 + 0x7) = 0x1;
                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                    [*(r21 + r22) flushIfError];
                                    [r21 _setupLayer];
                                    [r21 replaceCurrentItemWithPlayerItem:r19 loggingContext:r23];
                            }
                    }
                    else {
                            var_3D8 = r23;
                            r23 = (int64_t *)&r21->_playerInternalState;
                            *(int8_t *)(r23 + 0x7) = 0x0;
                            [r21 _updateStatus:0x0];
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_audioEngine));
                            [*(r21 + r22) stop];
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
                            [*(r21 + r20) stopRequestingMediaData];
                            [r21->_audioDecoder reset];
                            [*(r21 + r22) invalidate];
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                            [*(r21 + r22) pause];
                            [*(r21 + r20) pause:0x1];
                            [*(r21 + r20) pauseDisplayLink];
                            r28 = *(r21 + r22);
                            if (*qword_1011dd128 != -0x1) {
                                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
                            }
                            r8 = *qword_1011dd130;
                            q0 = *(int128_t *)r8;
                            [r28 set:r29 - 0x80];
                            [*(r21 + r20) flushAndRemoveImage];
                            [r21->_captionParser reset];
                            [r21 removeTimeObserver:*(r23 + 0x90)];
                            r0 = *(r23 + 0x90);
                            *(r23 + 0x90) = 0x0;
                            [r0 release];
                            [r21 removeTimeObserver:*(r23 + 0x98)];
                            r0 = *(r23 + 0x98);
                            *(r23 + 0x98) = 0x0;
                            [r0 release];
                            [r21 removeTimeObserver:*(r23 + 0xa0)];
                            r0 = *(r23 + 0xa0);
                            *(r23 + 0xa0) = 0x0;
                            [r0 release];
                            [r21 _handleSeekCancellation];
                            [r21 removeTimeObserver:*(r23 + 0xa8)];
                            r0 = *(r23 + 0xa8);
                            *(r23 + 0xa8) = 0x0;
                            [r0 release];
                            [r19 resetAssetToBeginningIfNeeded];
                            sub_100b36d20(&stack[-504]);
                            sub_100b3fd4c(r23, &stack[-504]);
                            [var_A0 release];
                            [var_A8 release];
                            [var_B0 release];
                            [var_B8 release];
                            [var_C0 release];
                            [var_108 release];
                            [var_130 release];
                            [var_138 release];
                            [var_140 release];
                            [var_148 release];
                            [var_150 release];
                            [var_158 release];
                            objc_storeStrong(r23 + 0x130, r26);
                            *(int8_t *)(r23 + 0xb) = r28;
                            *(int8_t *)r23 = r22;
                            objc_storeStrong(r24, r25);
                            r0 = objc_initWeak(&stack[-504], r21);
                            r25 = *r24;
                            [r0 retain];
                            [r25 setAssetEventListener:r21];
                            [r21 release];
                            [*r24 requestErrorNotificationIfNeeded];
                            [*r24 requestTimeLoadedUpdate];
                            if (r27 != 0x0) {
                                    if (r19 != 0x0) {
                                            [r19 timeAfterSeek];
                                    }
                                    [r21 seekToTime:&var_200 completionHandler:0x0];
                            }
                            r25 = &var_3D0;
                            r0 = *r24;
                            if (r0 != 0x0) {
                                    r22 = &var_230;
                                    [r0 preferredTransform];
                            }
                            else {
                                    r22 = &var_230;
                            }
                            [*(r21 + r20) setPreferredTransform:&var_260];
                            objc_loadWeakRetained((int64_t *)&r21->_delegate);
                            [*(r23 + 0x90) retain];
                            [*(r23 + 0x98) retain];
                            [*(r23 + 0xa0) retain];
                            [*(r23 + 0xa8) retain];
                            [*(r23 + 0xb0) retain];
                            [*(r23 + 0xb8) retain];
                            *(int128_t *)(r25 + 0xcc) = *(int128_t *)(r23 + 0xcc);
                            [*(r23 + 0xe0) retain];
                            q0 = *(int128_t *)(r23 + 0xf8);
                            q1 = *(int128_t *)(r23 + 0xe8);
                            q2 = *(int128_t *)(r23 + 0x108);
                            q3 = *(int128_t *)(r23 + 0x118);
                            *(int128_t *)(&var_3D0 + 0x108) = q2;
                            *(int128_t *)(&var_3D0 + 0x118) = q3;
                            *(int128_t *)(r25 + 0xe8) = q1;
                            *(int128_t *)(r25 + 0xf8) = q0;
                            objc_retainBlock(*(r23 + 0x128));
                            r0 = *(r23 + 0x130);
                            r0 = [r0 retain];
                            [*(r23 + 0x138) retain];
                            [*(r23 + 0x140) retain];
                            [*(r23 + 0x148) retain];
                            [r24 synchronousPlayer:r21 stateUpdated:0x1 playerState:&var_3D0 loggingContext:r0];
                            [r24 release];
                            if ([r19 shouldBufferVideoAsSoonAsPossible] != 0x0 && [r21 _readyToPlay] != 0x0) {
                                    [r21 _startVideo];
                                    [r21 _setupAudio];
                            }
                            if (*(int8_t *)r23 != 0x0 && [r21 _readyToPlay] != 0x0) {
                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                    [r21 setRate:0x6];
                            }
                            objc_destroyWeak(&stack[-504]);
                            r23 = var_3D8;
                    }
            }
            else {
                    var_3D8 = r23;
                    r23 = (int64_t *)&r21->_playerInternalState;
                    *(int8_t *)(r23 + 0x7) = 0x0;
                    [r21 _updateStatus:0x0];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_audioEngine));
                    [*(r21 + r22) stop];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
                    [*(r21 + r20) stopRequestingMediaData];
                    [r21->_audioDecoder reset];
                    [*(r21 + r22) invalidate];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                    [*(r21 + r22) pause];
                    [*(r21 + r20) pause:0x1];
                    [*(r21 + r20) pauseDisplayLink];
                    r28 = *(r21 + r22);
                    if (*qword_1011dd128 != -0x1) {
                            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
                    }
                    r8 = *qword_1011dd130;
                    q0 = *(int128_t *)r8;
                    [r28 set:r29 - 0x80];
                    [*(r21 + r20) flushAndRemoveImage];
                    [r21->_captionParser reset];
                    [r21 removeTimeObserver:*(r23 + 0x90)];
                    r0 = *(r23 + 0x90);
                    *(r23 + 0x90) = 0x0;
                    [r0 release];
                    [r21 removeTimeObserver:*(r23 + 0x98)];
                    r0 = *(r23 + 0x98);
                    *(r23 + 0x98) = 0x0;
                    [r0 release];
                    [r21 removeTimeObserver:*(r23 + 0xa0)];
                    r0 = *(r23 + 0xa0);
                    *(r23 + 0xa0) = 0x0;
                    [r0 release];
                    [r21 _handleSeekCancellation];
                    [r21 removeTimeObserver:*(r23 + 0xa8)];
                    r0 = *(r23 + 0xa8);
                    *(r23 + 0xa8) = 0x0;
                    [r0 release];
                    [r19 resetAssetToBeginningIfNeeded];
                    sub_100b36d20(&stack[-504]);
                    sub_100b3fd4c(r23, &stack[-504]);
                    [var_A0 release];
                    [var_A8 release];
                    [var_B0 release];
                    [var_B8 release];
                    [var_C0 release];
                    [var_108 release];
                    [var_130 release];
                    [var_138 release];
                    [var_140 release];
                    [var_148 release];
                    [var_150 release];
                    [var_158 release];
                    objc_storeStrong(r23 + 0x130, r26);
                    *(int8_t *)(r23 + 0xb) = r28;
                    *(int8_t *)r23 = r22;
                    objc_storeStrong(r24, r25);
                    r0 = objc_initWeak(&stack[-504], r21);
                    r25 = *r24;
                    [r0 retain];
                    [r25 setAssetEventListener:r21];
                    [r21 release];
                    [*r24 requestErrorNotificationIfNeeded];
                    [*r24 requestTimeLoadedUpdate];
                    if (r27 != 0x0) {
                            if (r19 != 0x0) {
                                    [r19 timeAfterSeek];
                            }
                            [r21 seekToTime:&var_200 completionHandler:0x0];
                    }
                    r25 = &var_3D0;
                    r0 = *r24;
                    if (r0 != 0x0) {
                            r22 = &var_230;
                            [r0 preferredTransform];
                    }
                    else {
                            r22 = &var_230;
                    }
                    [*(r21 + r20) setPreferredTransform:&var_260];
                    objc_loadWeakRetained((int64_t *)&r21->_delegate);
                    [*(r23 + 0x90) retain];
                    [*(r23 + 0x98) retain];
                    [*(r23 + 0xa0) retain];
                    [*(r23 + 0xa8) retain];
                    [*(r23 + 0xb0) retain];
                    [*(r23 + 0xb8) retain];
                    *(int128_t *)(r25 + 0xcc) = *(int128_t *)(r23 + 0xcc);
                    [*(r23 + 0xe0) retain];
                    q0 = *(int128_t *)(r23 + 0xf8);
                    q1 = *(int128_t *)(r23 + 0xe8);
                    q2 = *(int128_t *)(r23 + 0x108);
                    q3 = *(int128_t *)(r23 + 0x118);
                    *(int128_t *)(&var_3D0 + 0x108) = q2;
                    *(int128_t *)(&var_3D0 + 0x118) = q3;
                    *(int128_t *)(r25 + 0xe8) = q1;
                    *(int128_t *)(r25 + 0xf8) = q0;
                    objc_retainBlock(*(r23 + 0x128));
                    r0 = *(r23 + 0x130);
                    r0 = [r0 retain];
                    [*(r23 + 0x138) retain];
                    [*(r23 + 0x140) retain];
                    [*(r23 + 0x148) retain];
                    [r24 synchronousPlayer:r21 stateUpdated:0x1 playerState:&var_3D0 loggingContext:r0];
                    [r24 release];
                    if ([r19 shouldBufferVideoAsSoonAsPossible] != 0x0 && [r21 _readyToPlay] != 0x0) {
                            [r21 _startVideo];
                            [r21 _setupAudio];
                    }
                    if (*(int8_t *)r23 != 0x0 && [r21 _readyToPlay] != 0x0) {
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                            [r21 setRate:0x6];
                    }
                    objc_destroyWeak(&stack[-504]);
                    r23 = var_3D8;
            }
    }
    [r23 release];
    [r19 release];
    return;
}

-(void *)error {
    r0 = self->_playerError;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(double)prepareToSeekWithTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_playerAsset;
    r0 = [r0 prepareToSeekWithPosition:&var_20];
    return r0;
}

-(void)seekToTime:(union ?)arg2 completionHandler:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [self _seekToTime:&var_20 frameSeekOn:0x0 completionHandler:r3];
    return;
}

-(float)volume {
    r0 = self;
    return r0;
}

-(void)seekToTime:(union ?)arg2 toleranceBefore:(union ?)arg3 toleranceAfter:(union ?)arg4 completionHandler:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x120;
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = r3;
    r21 = r2;
    r20 = self;
    r19 = [r5 retain];
    if (*qword_1011dd178 != -0x1) {
            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
    }
    if (sub_100a3e318(r29 - 0x50, r29 - 0x70) != 0x0 && *(int8_t *)((int64_t *)&r20->_playerInternalState + 0x1) == 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            sub_100a3e318(&var_D0, &var_F0);
            r0 = r20;
    }
    else {
            r0 = r20;
    }
    [r0 _seekToTime:r2 frameSeekOn:r3 completionHandler:r4];
    [r19 release];
    return;
}

-(void)_handleSeekCancellation {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = (int64_t *)&r0->_playerInternalState;
    if (*(r20 + 0xb0) != 0x0) {
            r19 = r0;
            [r0->_clock suspendTimeObserver:r2];
            if (*(int8_t *)(r20 + 0xa) == 0x0) {
                    r0 = *(r20 + 0x128);
                    if (r0 != 0x0) {
                            (*(r0 + 0x10))();
                            r0 = *(r20 + 0x128);
                            *(r20 + 0x128) = 0x0;
                            [r0 release];
                    }
            }
            *(int8_t *)(r20 + 0xa) = 0x0;
            [r19 removeTimeObserver:*(r20 + 0xb0)];
            r0 = *(r20 + 0xb0);
            *(r20 + 0xb0) = 0x0;
            [r0 release];
    }
    return;
}

-(void)setVolume:(float)arg2 {
    [self setVolume:arg2 rampTime:r3];
    return;
}

-(void)setVolume:(float)arg2 rampTime:(float)arg3 {
    *(int32_t *)(int64_t *)&self->_volume = s0;
    *(int32_t *)(int64_t *)&self->_volumeRampTime = s1;
    [self _syncVolume];
    return;
}

-(bool)isMuted {
    r0 = *(int8_t *)((int64_t *)&self->_playerInternalState + 0xb);
    return r0;
}

-(union ?)lastStartingTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    r10 = *(0x1c + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(0xc + r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(union ?)lastRequestedStartTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    r10 = *(0x34 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(0x24 + r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)removeLevelMeterCallback {
    [self removeTimeObserver:*((int64_t *)&self->_playerInternalState + 0xb8)];
    r0 = *((int64_t *)&self->_playerInternalState + 0xb8);
    *((int64_t *)&self->_playerInternalState + 0xb8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_audioLevelCallback));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self->_audioEngine removeLevelMetering];
    return;
}

-(void)addLevelMeterCallback:(void *)arg2 timeInterval:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
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
    r23 = (int64_t *)&r0->_playerInternalState;
    if (*(r23 + 0xb8) == 0x0) {
            r19 = r0;
            r0 = [r2 retain];
            r21 = r0;
            r0 = objc_retainBlock(r0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioLevelCallback));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19->_audioEngine enableLevelMeteringWithCallback:r21];
            [r21 release];
            objc_initWeak(r29 - 0x38, r19);
            objc_copyWeak(&var_60 + 0x20, r29 - 0x38);
            r0 = [r22 createTimeObserverWithInterval:&var_80 block:&var_60 fireOnceAtExactTime:0x0 followMasterClock:0x1];
            r0 = [r0 retain];
            r8 = *(r23 + 0xb8);
            *(r23 + 0xb8) = r0;
            [r8 release];
            [*(r19 + r24) addTimeObserver:*(r23 + 0xb8)];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(r29 - 0x38);
    }
    return;
}

-(void)_seekToTime:(union ?)arg2 frameSeekOn:(bool)arg3 completionHandler:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
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
    r31 = r31 + 0xffffffffffffffa0 - 0x350;
    r19 = r3;
    r24 = r2;
    r20 = self;
    r27 = [r4 retain];
    sub_100a3e4dc(r29 - 0x100);
    [r22 logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x1dc format:@"%@ seek to requested time: %f"];
    [r20 _handleSeekCancellation];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    var_368 = r8;
    r0 = *(r20 + r8);
    r22 = [r0 seekToPosition:&var_120];
    sub_100a3e4dc(&var_140);
    [r26 logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x1e4 format:@"%@ seek finished with result:%d for time:%f"];
    if ((r22 & 0x1) != 0x0) {
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x1e9 format:@"%@ stopping audio queue and flushing layer"];
            [r20->_audioDecoder reset];
            [r20->_audioEngine reset];
            [r20->_displayEngine flush];
            r28 = (int64_t *)&r20->_playerInternalState;
            *(int8_t *)(r28 + 0x2) = 0x0;
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r9 = *0x1011dd130;
            q0 = *(int128_t *)r9;
            *(r28 + 0x4c) = *(r9 + 0x10);
            *(int128_t *)(r28 + 0x3c) = q0;
            r9 = *0x1011dd130;
            q0 = *(int128_t *)r9;
            *(r28 + 0x64) = *(r9 + 0x10);
            *(int128_t *)(r28 + 0x54) = q0;
            r8 = *0x1011dd130;
            q0 = *(int128_t *)r8;
            *(r28 + 0x7c) = *(r8 + 0x10);
            *(int128_t *)(r28 + 0x6c) = q0;
            stack[-896] = r27;
            var_380 = r22;
            var_384 = r19;
            if (r19 != 0x0) {
                    q0 = *(int128_t *)r24;
                    var_150 = *(r24 + 0x10);
                    var_160 = q0;
            }
            else {
                    r0 = *(r20 + var_368);
                    if (r0 != 0x0) {
                            [r0 timeAfterSeek];
                    }
                    else {
                            var_160 = 0x0;
                            var_150 = 0x0;
                    }
            }
            r19 = (int64_t *)&r20->_clock;
            r0 = *r19;
            r0 = [r0 observers];
            r29 = r29;
            r24 = [r0 retain];
            [*r19 removeAllTimeObservers];
            [*r19 set:&var_180];
            [*(r20 + var_368) updatePlaybackTime:&var_1A0];
            *(r28 + 0x1c) = var_150;
            *(int128_t *)(r28 + 0xc) = var_160;
            *(r28 + 0x34) = var_150;
            *(int128_t *)(r28 + 0x24) = var_160;
            [r20 _manageStallStateWithDidStartPlaying:0x0];
            var_1D0 = var_160;
            r0 = [r24 retain];
            r24 = r0;
            r2 = &var_1E0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r26 = r0;
                    r22 = *var_1D0;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_1D0 != r22) {
                                            objc_enumerationMutation(r24);
                                    }
                                    [*r19 addTimeObserver:r2];
                                    r21 = r21 + 0x1;
                            } while (r21 < r26);
                            r2 = &var_1E0;
                            r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r26 = r0;
                    } while (r0 != 0x0);
            }
            [r24 release];
            if (*(int8_t *)r28 == 0x0) {
                    [r20 _updateTimersOnPause];
            }
            r21 = @selector(logAtLevel:file:lineNumber:format:);
            r27 = stack[-896];
            r22 = var_380;
            if (var_384 != 0x0 && ([*(r20 + var_368) decompressedFramebuffer] & 0x1) == 0x0) {
                    if (*(r28 + 0xb0) != 0x0) {
                            [*r19 resumeTimeObserver:r2];
                    }
                    else {
                            r0 = [r20 _addSampleBufferFlushTimerWithCompletionHandler:r27];
                            r29 = r29;
                            r0 = [r0 retain];
                            r8 = *(r28 + 0xb0);
                            *(r28 + 0xb0) = r0;
                            [r8 release];
                            r0 = objc_retainBlock(r27);
                            r8 = *(r28 + 0x128);
                            *(r28 + 0x128) = r0;
                            [r8 release];
                    }
            }
            else {
                    if (r27 != 0x0) {
                            (*(r27 + 0x10))(r27, 0x1);
                    }
            }
            if (*(int8_t *)(r28 + 0x1) == 0x0 && *(r28 + 0xa8) == 0x0) {
                    r0 = [r20 _addSeekFrameUpdateTimer];
                    r0 = [r0 retain];
                    r8 = *(r28 + 0xa8);
                    *(r28 + 0xa8) = r0;
                    [r8 release];
            }
            [r24 release];
    }
    else {
            r21 = @selector(logAtLevel:file:lineNumber:format:);
            r19 = (int64_t *)&r20->_clock;
    }
    r0 = *r19;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    r19 = &var_360;
    sub_100a3e4dc(&var_1F8);
    objc_msgSend(@class(FBAdLogger), r21);
    if (r27 != 0x0 && (r22 ^ 0x1) != 0x0) {
            (*(r27 + 0x10))(r27, 0x0);
    }
    var_68 = **___stack_chk_guard;
    objc_loadWeakRetained((int64_t *)&r20->_delegate);
    [*((int64_t *)&r20->_playerInternalState + 0x90) retain];
    [*((int64_t *)&r20->_playerInternalState + 0x98) retain];
    [*((int64_t *)&r20->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&r20->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&r20->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&r20->_playerInternalState + 0xb8) retain];
    *(int128_t *)(r19 + 0xcc) = *(int128_t *)((int64_t *)&r20->_playerInternalState + 0xcc);
    [*((int64_t *)&r20->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&r20->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&r20->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&r20->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&r20->_playerInternalState + 0x118);
    *(int128_t *)(&var_360 + 0x108) = q2;
    *(int128_t *)(&var_360 + 0x118) = q3;
    *(int128_t *)(r19 + 0xe8) = q1;
    *(int128_t *)(r19 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&r20->_playerInternalState + 0x128));
    r0 = *((int64_t *)&r20->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&r20->_playerInternalState + 0x138) retain];
    [*((int64_t *)&r20->_playerInternalState + 0x140) retain];
    [*((int64_t *)&r20->_playerInternalState + 0x148) retain];
    [r21 synchronousPlayer:r20 stateUpdated:0x5 playerState:&var_360 loggingContext:r0];
    [r21 release];
    [r27 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)addRepresentationChangedCallback:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_representationChangedCallback));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)_levelMeterCallback {
    [self->_audioEngine sendCurrentAudioLevelToCallback];
    return;
}

-(void)setMuted:(bool)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x520;
    r21 = arg2;
    r19 = self;
    r23 = (int64_t *)&self->_playerInternalState;
    if (*(int8_t *)(r23 + 0xb) != arg2) goto loc_100b398f0;

loc_100b39764:
    r21 = [[NSNumber numberWithBool:r21] retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x24c format:@"%@ mute called but ignored because value is the same %@"];
    [r21 release];
    r20 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    *(int128_t *)(&var_1E0 + 0x7c) = *(int128_t *)(r23 + 0x7c);
    [*(r23 + 0x90) retain];
    [*(r23 + 0x98) retain];
    [*(r23 + 0xa0) retain];
    [*(r23 + 0xa8) retain];
    [*(r23 + 0xb0) retain];
    [*(r23 + 0xb8) retain];
    *(int128_t *)(&var_1E0 + 0xcc) = *(int128_t *)(r23 + 0xcc);
    [*(r23 + 0xe0) retain];
    q0 = *(int128_t *)(r23 + 0xf8);
    q1 = *(int128_t *)(r23 + 0xe8);
    q2 = *(int128_t *)(r23 + 0x108);
    q3 = *(int128_t *)(r23 + 0x118);
    *(int128_t *)(&var_1E0 + 0x108) = q2;
    *(int128_t *)(&var_1E0 + 0x118) = q3;
    *(int128_t *)(&var_1E0 + 0xe8) = q1;
    *(int128_t *)(&var_1E0 + 0xf8) = q0;
    objc_retainBlock(*(r23 + 0x128));
    r21 = [*(r23 + 0x130) retain];
    [*(r23 + 0x138) retain];
    [*(r23 + 0x140) retain];
    [*(r23 + 0x148) retain];
    goto loc_100b39e5c;

loc_100b39e5c:
    [r20 synchronousPlayer:r2 stateUpdated:r3 playerState:r4 loggingContext:r5];
    [r20 release];
    return;

loc_100b398f0:
    if (([r19 _videoHasAudioTrack] & 0x1) == 0x0) goto loc_100b399b8;

loc_100b3990c:
    r24 = &var_560;
    if (r21 == 0x0) goto loc_100b39b44;

loc_100b3991c:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    [r19->_playerAsset setIsSoundMuted:0x1];
    [r19->_audioDecoder reset];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_audioEngine));
    [*(r19 + r20) invalidate];
    [*(r19 + r20) removeLevelMetering];
    *(int8_t *)(r23 + 0xb) = r21;
    *(int8_t *)(r23 + 0x3) = 0x0;
    *(int8_t *)(r23 + 0x8) = 0x0;
    r1 = @selector(_syncVolume);
    goto loc_100b39d2c;

loc_100b39d2c:
    objc_msgSend(r19, r1);
    goto loc_100b39d34;

loc_100b39d34:
    r20 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    [*(r23 + 0x90) retain];
    [*(r23 + 0x98) retain];
    [*(r23 + 0xa0) retain];
    [*(r23 + 0xa8) retain];
    [*(r23 + 0xb0) retain];
    [*(r23 + 0xb8) retain];
    *(int128_t *)(r24 + 0xcc) = *(int128_t *)(r23 + 0xcc);
    [*(r23 + 0xe0) retain];
    q0 = *(int128_t *)(r23 + 0xf8);
    q1 = *(int128_t *)(r23 + 0xe8);
    q2 = *(int128_t *)(r23 + 0x108);
    q3 = *(int128_t *)(r23 + 0x118);
    *(int128_t *)(&var_560 + 0x108) = q2;
    *(int128_t *)(&var_560 + 0x118) = q3;
    *(int128_t *)(r24 + 0xe8) = q1;
    *(int128_t *)(r24 + 0xf8) = q0;
    objc_retainBlock(*(r23 + 0x128));
    r21 = [*(r23 + 0x130) retain];
    [*(r23 + 0x138) retain];
    [*(r23 + 0x140) retain];
    [*(r23 + 0x148) retain];
    goto loc_100b39e5c;

loc_100b39b44:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    *(int8_t *)(r23 + 0xb) = r21;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    [*(r19 + r26) setIsSoundMuted:0x0];
    [r19 _syncVolume];
    [r19 _setupAudio];
    if (*(int8_t *)(r23 + 0x1) == 0x0) goto loc_100b39c38;

loc_100b39bb4:
    if (*(int8_t *)(r23 + 0x8) == 0x0) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_audioEngine));
    [*(r19 + r25) prepareToPlay];
    [r19 _adjustAudioFrameToCurrentPlaybackTime];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    r0 = *(r19 + r27);
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    r28 = &var_3E0;
    sub_100a3e4dc(&var_368);
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            [r0 currentFrameMetadataForTrack:0x1];
    }
    sub_100a3e4dc(&var_380);
    [r22 logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    [r19 _syncAudioEngineWithClock];
    r20 = *(r19 + r25);
    r0 = *(r19 + r27);
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    [r20 playWithStartTime:&var_3F8];
    r1 = @selector(_reenableLevelMeteringIfNeeded);
    goto loc_100b39d2c;

loc_100b39c38:
    if (*(r19 + r26) == 0x0) goto loc_100b39d34;

loc_100b39c40:
    r1 = @selector(_adjustAudioFrameToCurrentPlaybackTime);
    goto loc_100b39d2c;

loc_100b399b8:
    r20 = [[NSNumber numberWithBool:r21] retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x254 format:@"%@ mute called with value %@, but there is no audio track. Will still update the mute state"];
    [r20 release];
    *(int8_t *)(r23 + 0xb) = r21;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    *(int128_t *)(&var_350 + 0x7c) = *(int128_t *)(r23 + 0x7c);
    [*(r23 + 0x90) retain];
    [*(r23 + 0x98) retain];
    [*(r23 + 0xa0) retain];
    [*(r23 + 0xa8) retain];
    [*(r23 + 0xb0) retain];
    [*(r23 + 0xb8) retain];
    *(int128_t *)(&var_350 + 0xcc) = *(int128_t *)(r23 + 0xcc);
    [*(r23 + 0xe0) retain];
    q0 = *(int128_t *)(r23 + 0xf8);
    q1 = *(int128_t *)(r23 + 0xe8);
    q2 = *(int128_t *)(r23 + 0x108);
    q3 = *(int128_t *)(r23 + 0x118);
    *(int128_t *)(&var_350 + 0x108) = q2;
    *(int128_t *)(&var_350 + 0x118) = q3;
    *(int128_t *)(&var_350 + 0xe8) = q1;
    *(int128_t *)(&var_350 + 0xf8) = q0;
    objc_retainBlock(*(r23 + 0x128));
    r21 = [*(r23 + 0x130) retain];
    [*(r23 + 0x138) retain];
    [*(r23 + 0x140) retain];
    [*(r23 + 0x148) retain];
    goto loc_100b39e5c;
}

-(void)_reenableLevelMeteringIfNeeded {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*((int64_t *)&r0->_playerInternalState + 0xb8) != 0x0 && r0->_audioLevelCallback != 0x0) {
            [r0->_audioEngine enableLevelMeteringWithCallback:r2];
    }
    return;
}

-(void)_updateTimersOnPause {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = (int64_t *)&self->_playerInternalState;
    if (*(r21 + 0xa0) != 0x0) {
            [r19->_clock suspendTimeObserver:r2];
    }
    [r19 removeTimeObserver:*(r21 + 0x90)];
    r0 = *(r21 + 0x90);
    *(r21 + 0x90) = 0x0;
    [r0 release];
    [r19 removeTimeObserver:*(r21 + 0xa8)];
    r0 = *(r21 + 0xa8);
    *(r21 + 0xa8) = 0x0;
    [r0 release];
    return;
}

-(void)_pausePlayback:(int)arg2 {
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffb0 - 0x1b0;
    r22 = (int64_t *)&r0->_playerInternalState;
    if (*(int8_t *)(r22 + 0x1) == 0x0) goto .l1;

loc_100b3a198:
    r20 = r2;
    r19 = r0;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x2cc format:@"%@ _pausePlayback called"];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    [*(r19 + r24) pause];
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    else {
            var_48 = 0x0;
    }
    r8 = r29 - 0x58;
    if (r20 != 0x3) {
            q0 = *(int128_t *)r8;
            *(r22 + 0x34) = var_48;
            *(int128_t *)(r22 + 0x24) = q0;
    }
    r23 = &var_1E0;
    q0 = *(int128_t *)r8;
    *(r22 + 0x1c) = var_48;
    *(int128_t *)(r22 + 0xc) = q0;
    [r19->_playerAsset updatePlaybackTime:r29 - 0x70];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    [*(r19 + r25) pause:r20];
    [*(r19 + r25) stopRequestingMediaData];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_audioEngine));
    [*(r19 + r25) pause];
    if (r20 == 0x4) goto loc_100b3a2d8;

loc_100b3a2b4:
    if (r20 == 0x3 || *(int8_t *)(int64_t *)&r19->_flushAudioQueueOnPause != 0x0) goto loc_100b3a2cc;

loc_100b3a2ec:
    [*(r19 + r24) currentPlayRate];
    *(int32_t *)(r22 + 0x88) = s0;
    *(int8_t *)(r22 + 0x1) = 0x0;
    objc_loadWeakRetained((int64_t *)&r19->_delegate);
    [*(r22 + 0x90) retain];
    [*(r22 + 0x98) retain];
    [*(r22 + 0xa0) retain];
    [*(r22 + 0xa8) retain];
    [*(r22 + 0xb0) retain];
    [*(r22 + 0xb8) retain];
    *(int128_t *)(r23 + 0xcc) = *(int128_t *)(r22 + 0xcc);
    [*(r22 + 0xe0) retain];
    q0 = *(int128_t *)(r22 + 0xf8);
    q1 = *(int128_t *)(r22 + 0xe8);
    q2 = *(int128_t *)(r22 + 0x108);
    q3 = *(int128_t *)(r22 + 0x118);
    *(int128_t *)(&var_1E0 + 0x108) = q2;
    *(int128_t *)(&var_1E0 + 0x118) = q3;
    *(int128_t *)(r23 + 0xe8) = q1;
    *(int128_t *)(r23 + 0xf8) = q0;
    objc_retainBlock(*(r22 + 0x128));
    r0 = *(r22 + 0x130);
    r0 = [r0 retain];
    [*(r22 + 0x138) retain];
    [*(r22 + 0x140) retain];
    [*(r22 + 0x148) retain];
    [r20 synchronousPlayer:r19 stateUpdated:0x2 playerState:&var_1E0 loggingContext:r0];
    [r20 release];
    return;

.l1:
    return;

loc_100b3a2cc:
    r8 = &@selector(flush);
    goto loc_100b3a2e0;

loc_100b3a2e0:
    objc_msgSend(*(r19 + r25), *r8);
    goto loc_100b3a2ec;

loc_100b3a2d8:
    r8 = &@selector(reset);
    goto loc_100b3a2e0;
}

-(void)_manageStallStateWithDidStartPlaying:(bool)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = (int64_t *)&self->_playerInternalState;
    if (*(int8_t *)(r21 + 0xf8) != 0x0) {
            r0 = r19->_audioEngine;
            if ([r0 isReadyToPlayWithStartTime:&var_40] != 0x0 || r0 == 0x0 || *(int8_t *)r21 == 0x0) {
                    if ([r19->_playerAsset shouldRestartAfterStalling] != 0x0) {
                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x358 format:@"%@ resuming from stalling"];
                            [r19 _resetStallState];
                            if ((*(int8_t *)(r21 + 0xcc) & 0x1) == 0x0) {
                                    if ((0x0 & 0x1) == 0x0) {
                                            if (*(int8_t *)r21 != 0x0) {
                                                    [r19 _resumePlayback];
                                                    if (*(r21 + 0xf0) != 0x1) {
                                                            [r19 _updateStatus:0x1];
                                                    }
                                            }
                                    }
                            }
                            else {
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_checkActiveBeforeStallResume));
                                    r8 = *(int8_t *)(r19 + r8);
                                    if (r8 != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    if ((r8 & 0x1) == 0x0) {
                                            if (*(int8_t *)r21 != 0x0) {
                                                    [r19 _resumePlayback];
                                                    if (*(r21 + 0xf0) != 0x1) {
                                                            [r19 _updateStatus:0x1];
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    else {
            r20 = r2;
            objc_initWeak(&stack[-88], r19);
            r21 = &var_78 + 0x20;
            r22 = r19->_playerAsset;
            objc_copyWeak(r21, &stack[-88]);
            if (r20 == 0x0) {
                    asm { cinc       w3, w8, eq };
            }
            if ([r22 shouldPauseForStallingWithNextCheckCallback:&var_78 stallReason:r3] != 0x0) {
                    [r19 _startStalling:r20];
            }
            objc_destroyWeak(r21);
            objc_destroyWeak(&stack[-88]);
    }
    return;
}

-(void)_updateFrameAfterSeek {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    if ([*(self + r20) seekFrameUpdatesFinished] != 0x0) {
            [r19 removeTimeObserver:*((int64_t *)&r19->_playerInternalState + 0xa8)];
            r0 = *((int64_t *)&r19->_playerInternalState + 0xa8);
            *((int64_t *)&r19->_playerInternalState + 0xa8) = 0x0;
            [r0 release];
    }
    else {
            [r19 _startVideo];
            [*(r19 + r20) setNeedsDisplayFrame];
    }
    return;
}

-(void)_resumePlayback {
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
    r31 = r31 + 0xffffffffffffffb0 - 0x1d0;
    r19 = self;
    if (([self _readyToPlay] & 0x1) != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
            r0 = *(r19 + r24);
            r0 = [r0 status];
            r22 = (int64_t *)&r19->_playerInternalState;
            if (r0 == 0x2) {
                    if (*(int8_t *)(r22 + 0x7) != 0x0) {
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                            *(int8_t *)(r22 + 0x7) = 0x0;
                            [r19 _updateStatus:0x2];
                    }
                    else {
                            r2 = 0x5;
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                            if ([*(r19 + r24) flushIfError] != 0x0) {
                                    *(int8_t *)(r22 + 0x7) = 0x1;
                                    [r19 _setupLayer];
                            }
                            else {
                                    r25 = r29 - 0x58;
                                    *(int8_t *)(r22 + 0x7) = 0x0;
                                    [r19 _handleSeekCancellation];
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                                    r0 = *(r19 + r23);
                                    if (r0 != 0x0) {
                                            [r0 currentTime];
                                    }
                                    else {
                                            var_48 = 0x0;
                                    }
                                    r21 = &var_200;
                                    q0 = *(int128_t *)r25;
                                    *(r22 + 0x1c) = var_48;
                                    *(int128_t *)(r22 + 0xc) = q0;
                                    r0 = *(r19 + r23);
                                    s0 = *(int32_t *)(r22 + 0x84);
                                    [r0 setRate:r2];
                                    [*(r19 + r23) resume];
                                    [*(r19 + r24) resume];
                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
                                    [*(r19 + r20) updatePlaybackTime:r29 - 0x70];
                                    [*(r19 + r20) playbackStarted];
                                    if ([r19 _videoHasAudioTrack] != 0x0 && [r19 _videoIsAudioActive] != 0x0) {
                                            [r19 _setupAudio];
                                            r0 = r19->_audioEngine;
                                            [r0 playWithStartTime:r29 - 0x90];
                                            [r19 _reenableLevelMeteringIfNeeded];
                                            [r19 _syncVolume];
                                    }
                                    [r19 _startVideo];
                                    [*(r19 + r23) currentPlayRate];
                                    *(int32_t *)(r22 + 0x88) = s0;
                                    *(int8_t *)(r22 + 0x1) = 0x1;
                                    objc_loadWeakRetained((int64_t *)&r19->_delegate);
                                    [*(r22 + 0x90) retain];
                                    [*(r22 + 0x98) retain];
                                    [*(r22 + 0xa0) retain];
                                    [*(r22 + 0xa8) retain];
                                    [*(r22 + 0xb0) retain];
                                    [*(r22 + 0xb8) retain];
                                    *(int128_t *)(r21 + 0xcc) = *(int128_t *)(r22 + 0xcc);
                                    [*(r22 + 0xe0) retain];
                                    q0 = *(int128_t *)(r22 + 0xf8);
                                    q1 = *(int128_t *)(r22 + 0xe8);
                                    q2 = *(int128_t *)(r22 + 0x108);
                                    q3 = *(int128_t *)(r22 + 0x118);
                                    *(int128_t *)(&var_200 + 0x108) = q2;
                                    *(int128_t *)(&var_200 + 0x118) = q3;
                                    *(int128_t *)(r21 + 0xe8) = q1;
                                    *(int128_t *)(r21 + 0xf8) = q0;
                                    objc_retainBlock(*(r22 + 0x128));
                                    r0 = *(r22 + 0x130);
                                    r0 = [r0 retain];
                                    [*(r22 + 0x138) retain];
                                    [*(r22 + 0x140) retain];
                                    [*(r22 + 0x148) retain];
                                    [r20 synchronousPlayer:r19 stateUpdated:0x2 playerState:&var_200 loggingContext:r0];
                                    [r20 release];
                                    [*(r19 + r23) resumeTimeObserver:*(r22 + 0xa0)];
                                    [r19 removeTimeObserver:*(r22 + 0xa8)];
                                    r0 = *(r22 + 0xa8);
                                    *(r22 + 0xa8) = 0x0;
                                    [r0 release];
                                    [r19 _resetStallState];
                                    [r19 _manageStallStateWithDidStartPlaying:0x0];
                            }
                    }
            }
            else {
                    r25 = r29 - 0x58;
                    *(int8_t *)(r22 + 0x7) = 0x0;
                    [r19 _handleSeekCancellation];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                    r0 = *(r19 + r23);
                    if (r0 != 0x0) {
                            [r0 currentTime];
                    }
                    else {
                            var_48 = 0x0;
                    }
                    r21 = &var_200;
                    q0 = *(int128_t *)r25;
                    *(r22 + 0x1c) = var_48;
                    *(int128_t *)(r22 + 0xc) = q0;
                    r0 = *(r19 + r23);
                    s0 = *(int32_t *)(r22 + 0x84);
                    [r0 setRate:r2];
                    [*(r19 + r23) resume];
                    [*(r19 + r24) resume];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
                    [*(r19 + r20) updatePlaybackTime:r29 - 0x70];
                    [*(r19 + r20) playbackStarted];
                    if ([r19 _videoHasAudioTrack] != 0x0 && [r19 _videoIsAudioActive] != 0x0) {
                            [r19 _setupAudio];
                            r0 = r19->_audioEngine;
                            [r0 playWithStartTime:r29 - 0x90];
                            [r19 _reenableLevelMeteringIfNeeded];
                            [r19 _syncVolume];
                    }
                    [r19 _startVideo];
                    [*(r19 + r23) currentPlayRate];
                    *(int32_t *)(r22 + 0x88) = s0;
                    *(int8_t *)(r22 + 0x1) = 0x1;
                    objc_loadWeakRetained((int64_t *)&r19->_delegate);
                    [*(r22 + 0x90) retain];
                    [*(r22 + 0x98) retain];
                    [*(r22 + 0xa0) retain];
                    [*(r22 + 0xa8) retain];
                    [*(r22 + 0xb0) retain];
                    [*(r22 + 0xb8) retain];
                    *(int128_t *)(r21 + 0xcc) = *(int128_t *)(r22 + 0xcc);
                    [*(r22 + 0xe0) retain];
                    q0 = *(int128_t *)(r22 + 0xf8);
                    q1 = *(int128_t *)(r22 + 0xe8);
                    q2 = *(int128_t *)(r22 + 0x108);
                    q3 = *(int128_t *)(r22 + 0x118);
                    *(int128_t *)(&var_200 + 0x108) = q2;
                    *(int128_t *)(&var_200 + 0x118) = q3;
                    *(int128_t *)(r21 + 0xe8) = q1;
                    *(int128_t *)(r21 + 0xf8) = q0;
                    objc_retainBlock(*(r22 + 0x128));
                    r0 = *(r22 + 0x130);
                    r0 = [r0 retain];
                    [*(r22 + 0x138) retain];
                    [*(r22 + 0x140) retain];
                    [*(r22 + 0x148) retain];
                    [r20 synchronousPlayer:r19 stateUpdated:0x2 playerState:&var_200 loggingContext:r0];
                    [r20 release];
                    [*(r19 + r23) resumeTimeObserver:*(r22 + 0xa0)];
                    [r19 removeTimeObserver:*(r22 + 0xa8)];
                    r0 = *(r22 + 0xa8);
                    *(r22 + 0xa8) = 0x0;
                    [r0 release];
                    [r19 _resetStallState];
                    [r19 _manageStallStateWithDidStartPlaying:0x0];
            }
    }
    else {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x2f2 format:@"resumeplayback called before readyToPlay is true"];
    }
    return;
}

-(void *)_addPlaybackTimerForAsset {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3a6 format:@"%@ adding playback timer for asset"];
    objc_initWeak(r29 - 0x28, r19);
    r20 = &var_50 + 0x20;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    r21 = *(r19 + r22);
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x1, 0x5);
    objc_copyWeak(r20, r29 - 0x28);
    [*(r19 + r22) addTimeObserver:[[r21 createTimeObserverWithInterval:&stack[-120] block:&var_50 fireOnceAtExactTime:0x0 followMasterClock:0x1] retain]];
    objc_destroyWeak(r20);
    objc_destroyWeak(r29 - 0x28);
    r0 = [r21 autorelease];
    return r0;
}

-(void *)_addSeekFrameUpdateTimer {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    objc_initWeak(r29 - 0x28, r20);
    r19 = &var_50 + 0x20;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    r21 = *(r20 + r22);
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x1, 0xc8);
    objc_copyWeak(r19, r29 - 0x28);
    [*(r20 + r22) addTimeObserver:[[r21 createTimeObserverWithInterval:&stack[-120] block:&var_50 fireOnceAtExactTime:0x0 followMasterClock:0x0] retain]];
    objc_destroyWeak(r19);
    objc_destroyWeak(r29 - 0x28);
    r0 = [r21 autorelease];
    return r0;
}

-(void)_startStalling:(bool)arg2 {
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r27 = (int64_t *)&r0->_playerInternalState;
    if (*(int8_t *)(r27 + 0xf8) == 0x0) {
            r21 = r2;
            r19 = r0;
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x387 format:@"%@ start stalling"];
            if (r21 == 0x0) {
                    asm { cinc       w2, w8, eq };
            }
            [r19 _pausePlayback:0x5];
            if (*qword_1011de888 != -0x1) {
                    dispatch_once(0x1011de888, 0x100eb0910);
            }
            mach_absolute_time();
            r8 = *(int128_t *)0x1011de894;
            asm { udiv       x8, x9, x8 };
            asm { umulh      x8, x8, x9 };
            r22 = r8 >> 0x12;
            *(int8_t *)(r27 + 0xf8) = 0x1;
            *(int8_t *)(r27 + 0xf9) = r21 ^ 0x1;
            *(r27 + 0x100) = r22;
            r20 = [NSMutableArray new];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
            if ([*(r19 + r24) stallingForTrack:r2] != 0x0) {
                    [r20 addObject:r2];
            }
            r28 = &var_200;
            if ([*(r19 + r24) stallingForTrack:r2] != 0x0) {
                    [r20 addObject:r2];
            }
            r23 = [[NSNotificationCenter defaultCenter] retain];
            r8 = *_AVPlayerItemPlaybackStalledNotification;
            r24 = *(r19 + r24);
            r25 = *r8;
            r22 = [[NSNumber numberWithUnsignedLongLong:r22] retain];
            r21 = [[NSNumber numberWithBool:r21] retain];
            r26 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x98 count:0x3] retain];
            [r23 postNotificationName:r25 object:r24 userInfo:r26];
            [r26 release];
            [r21 release];
            [r22 release];
            [r23 release];
            objc_loadWeakRetained((int64_t *)&r19->_delegate);
            [*(r27 + 0x90) retain];
            [*(r27 + 0x98) retain];
            [*(r27 + 0xa0) retain];
            [*(r27 + 0xa8) retain];
            [*(r27 + 0xb0) retain];
            [*(r27 + 0xb8) retain];
            *(int128_t *)(r28 + 0xcc) = *(int128_t *)(r27 + 0xcc);
            [*(r27 + 0xe0) retain];
            q0 = *(int128_t *)(r27 + 0xf8);
            q1 = *(int128_t *)(r27 + 0xe8);
            q2 = *(int128_t *)(r27 + 0x108);
            q3 = *(int128_t *)(r27 + 0x118);
            *(int128_t *)(&var_200 + 0x108) = q2;
            *(int128_t *)(&var_200 + 0x118) = q3;
            *(int128_t *)(r28 + 0xe8) = q1;
            *(int128_t *)(r28 + 0xf8) = q0;
            objc_retainBlock(*(r27 + 0x128));
            r0 = *(r27 + 0x130);
            r0 = [r0 retain];
            [*(r27 + 0x138) retain];
            [*(r27 + 0x140) retain];
            [*(r27 + 0x148) retain];
            [r21 synchronousPlayer:r19 stateUpdated:0x4 playerState:&var_200 loggingContext:r0];
            [r21 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)_addDurationTimerForAsset {
    r31 = r31 - 0x120;
    var_40 = r28;
    stack[-72] = r27;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    if ([*(self + r23) isDurationFinal] == 0x0) goto loc_100b3b258;

loc_100b3b19c:
    r0 = *(r19 + r23);
    if (r0 == 0x0) goto loc_100b3b270;

loc_100b3b1ac:
    [r0 duration];
    if ((var_4C & 0x1) != 0x0) goto loc_100b3b1d4;

loc_100b3b1c0:
    r21 = 0x0;
    goto loc_100b3b1f4;

loc_100b3b1f4:
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 duration];
            if ((var_7C & 0x1) != 0x0) {
                    r0 = *(r19 + r23);
                    if (r0 != 0x0) {
                            [r0 duration];
                            r8 = var_94;
                            asm { ubfx       w8, w8, #0x2, #0x1 };
                            if ((r21 & 0x1) != 0x0) {
                                    if ((r8 & 0x1) == 0x0) {
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            sub_100a3e4dc(&var_B8);
                                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
                                            objc_initWeak(r29 - 0x58, r19);
                                            r21 = &var_E0 + 0x20;
                                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                                            r22 = *(r19 + r24);
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            objc_copyWeak(r21, r29 - 0x58);
                                            r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
                                            [*(r19 + r24) addTimeObserver:r20];
                                            objc_destroyWeak(r21);
                                            objc_destroyWeak(r29 - 0x58);
                                    }
                                    else {
                                            r20 = 0x0;
                                            *(int8_t *)(int64_t *)&r19->_isDurationIndefinite = 0x1;
                                    }
                            }
                            else {
                                    if (r8 != 0x0) {
                                            r20 = 0x0;
                                            *(int8_t *)(int64_t *)&r19->_isDurationIndefinite = 0x1;
                                    }
                                    else {
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            sub_100a3e4dc(&var_B8);
                                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
                                            objc_initWeak(r29 - 0x58, r19);
                                            r21 = &var_E0 + 0x20;
                                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                                            r22 = *(r19 + r24);
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            objc_copyWeak(r21, r29 - 0x58);
                                            r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
                                            [*(r19 + r24) addTimeObserver:r20];
                                            objc_destroyWeak(r21);
                                            objc_destroyWeak(r29 - 0x58);
                                    }
                            }
                    }
                    else {
                            r8 = 0x0;
                            if ((r21 & 0x1) == 0x0) {
                                    if (r8 != 0x0) {
                                            r20 = 0x0;
                                            *(int8_t *)(int64_t *)&r19->_isDurationIndefinite = 0x1;
                                    }
                                    else {
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            sub_100a3e4dc(&var_B8);
                                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
                                            objc_initWeak(r29 - 0x58, r19);
                                            r21 = &var_E0 + 0x20;
                                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                                            r22 = *(r19 + r24);
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            objc_copyWeak(r21, r29 - 0x58);
                                            r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
                                            [*(r19 + r24) addTimeObserver:r20];
                                            objc_destroyWeak(r21);
                                            objc_destroyWeak(r29 - 0x58);
                                    }
                            }
                            else {
                                    if ((r8 & 0x1) == 0x0) {
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            sub_100a3e4dc(&var_B8);
                                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
                                            objc_initWeak(r29 - 0x58, r19);
                                            r21 = &var_E0 + 0x20;
                                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                                            r22 = *(r19 + r24);
                                            r0 = *(r19 + r23);
                                            if (r0 != 0x0) {
                                                    [r0 duration];
                                            }
                                            objc_copyWeak(r21, r29 - 0x58);
                                            r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
                                            [*(r19 + r24) addTimeObserver:r20];
                                            objc_destroyWeak(r21);
                                            objc_destroyWeak(r29 - 0x58);
                                    }
                                    else {
                                            r20 = 0x0;
                                            *(int8_t *)(int64_t *)&r19->_isDurationIndefinite = 0x1;
                                    }
                            }
                    }
            }
            else {
                    r0 = *(r19 + r23);
                    if (r0 != 0x0) {
                            [r0 duration];
                    }
                    sub_100a3e4dc(&var_B8);
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
                    objc_initWeak(r29 - 0x58, r19);
                    r21 = &var_E0 + 0x20;
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
                    r22 = *(r19 + r24);
                    r0 = *(r19 + r23);
                    if (r0 != 0x0) {
                            [r0 duration];
                    }
                    objc_copyWeak(r21, r29 - 0x58);
                    r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
                    [*(r19 + r24) addTimeObserver:r20];
                    objc_destroyWeak(r21);
                    objc_destroyWeak(r29 - 0x58);
            }
    }
    else {
            r0 = *(r19 + r23);
            if (r0 != 0x0) {
                    [r0 duration];
            }
            sub_100a3e4dc(&var_B8);
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
            objc_initWeak(r29 - 0x58, r19);
            r21 = &var_E0 + 0x20;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
            r22 = *(r19 + r24);
            r0 = *(r19 + r23);
            if (r0 != 0x0) {
                    [r0 duration];
            }
            objc_copyWeak(r21, r29 - 0x58);
            r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
            [*(r19 + r24) addTimeObserver:r20];
            objc_destroyWeak(r21);
            objc_destroyWeak(r29 - 0x58);
    }
    goto loc_100b3b398;

loc_100b3b398:
    r0 = [r20 autorelease];
    return r0;

loc_100b3b1d4:
    r0 = *(r19 + r23);
    if (r0 == 0x0) goto loc_100b3b270;

loc_100b3b1dc:
    [r0 duration];
    if ((var_64 & 0x10) != 0x0) goto loc_100b3b258;

loc_100b3b1f0:
    r21 = 0x1;
    goto loc_100b3b1f4;

loc_100b3b258:
    r20 = 0x0;
    *(int8_t *)(int64_t *)&r19->_isDurationIndefinite = 0x1;
    goto loc_100b3b398;

loc_100b3b270:
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 duration];
    }
    sub_100a3e4dc(&var_B8);
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3b7 format:@"%@ adding duration timer for asset. duration:%f"];
    objc_initWeak(r29 - 0x58, r19);
    r21 = &var_E0 + 0x20;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    r22 = *(r19 + r24);
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 duration];
    }
    objc_copyWeak(r21, r29 - 0x58);
    r20 = [[r22 createTimeObserverWithInterval:&var_F8 block:&var_E0 fireOnceAtExactTime:0x1 followMasterClock:0x1] retain];
    [*(r19 + r24) addTimeObserver:r20];
    objc_destroyWeak(r21);
    objc_destroyWeak(r29 - 0x58);
    goto loc_100b3b398;
}

-(void *)_addStallTimer {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    objc_initWeak(r29 - 0x28, r20);
    r19 = &var_50 + 0x20;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    r21 = *(r20 + r22);
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x1, 0x5);
    objc_copyWeak(r19, r29 - 0x28);
    [*(r20 + r22) addTimeObserver:[[r21 createTimeObserverWithInterval:&stack[-120] block:&var_50 fireOnceAtExactTime:0x0 followMasterClock:0x0] retain]];
    objc_destroyWeak(r19);
    objc_destroyWeak(r29 - 0x28);
    r0 = [r21 autorelease];
    return r0;
}

-(void *)_addSampleBufferFlushTimerWithCompletionHandler:(void *)arg2 {
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
    r20 = self;
    r21 = [arg2 retain];
    objc_initWeak(r29 - 0x38, r20);
    r19 = &var_68 + 0x28;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_clock));
    r22 = *(r20 + r24);
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x1, 0x14);
    objc_copyWeak(r19, r29 - 0x38);
    var_48 = r21;
    r21 = [r21 retain];
    [*(r20 + r24) addTimeObserver:[[r22 createTimeObserverWithInterval:&stack[-144] block:&var_68 fireOnceAtExactTime:0x0 followMasterClock:0x0] retain]];
    [var_48 release];
    [r21 release];
    objc_destroyWeak(r19);
    objc_destroyWeak(r29 - 0x38);
    r0 = [r22 autorelease];
    return r0;
}

-(void)_flushSampleBuffersDuringFrameSeekWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [r20->_displayEngine flushDisplayReadySampleBuffers];
    if (*(int8_t *)(int64_t *)&r20->_endFrameSeekIfNoMoreFrames != 0x0) {
            r23 = [r20->_playerAsset trackHasMoreFrames:0x0] ^ 0x1;
    }
    else {
            r23 = 0x0;
    }
    r22 = (int64_t *)&r20->_playerInternalState;
    if (r21 != 0x0) {
            r8 = *(r22 + 0x1c);
            r0 = CMTimeCompare(&var_50, &var_70);
            if (r0 < 0x0) {
                    if (CPU_FLAGS & L) {
                            r8 = 0x1;
                    }
            }
            if ((r8 & !r23 & 0x1) == 0x0) {
                    [r20->_clock suspendTimeObserver:*(r22 + 0xb0)];
                    *(int8_t *)(r22 + 0xa) = 0x1;
                    if (r19 != 0x0) {
                            (*(r19 + 0x10))(r19, r21);
                    }
            }
            else {
                    [r20 _videoLayerEnqueueFrameCallback];
            }
    }
    else {
            [r20->_clock suspendTimeObserver:*(r22 + 0xb0)];
            *(int8_t *)(r22 + 0xa) = 0x1;
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19, r21);
            }
    }
    [r19 release];
    return;
}

-(void)_playbackFinishedTimeForAsset:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x1e0;
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = (int64_t *)&r0->_playerInternalState;
    if (*(int8_t *)(r22 + 0x2) == 0x0) {
            sub_100a3e4dc(r29 - 0x50);
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x3f7 format:@"%@ reached playback end time: %f"];
            [r19 pause];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:**_AVPlayerItemDidPlayToEndTimeNotification object:r19->_playerAsset];
            [r0 release];
            *(int8_t *)(r22 + 0x2) = 0x1;
            objc_loadWeakRetained((int64_t *)&r19->_delegate);
            [*(r22 + 0x90) retain];
            [*(r22 + 0x98) retain];
            [*(r22 + 0xa0) retain];
            [*(r22 + 0xa8) retain];
            [*(r22 + 0xb0) retain];
            [*(r22 + 0xb8) retain];
            *(int128_t *)(&var_1C0 + 0xcc) = *(int128_t *)(r22 + 0xcc);
            [*(r22 + 0xe0) retain];
            q0 = *(int128_t *)(r22 + 0xf8);
            q1 = *(int128_t *)(r22 + 0xe8);
            q2 = *(int128_t *)(r22 + 0x108);
            q3 = *(int128_t *)(r22 + 0x118);
            *(int128_t *)(&var_1C0 + 0x108) = q2;
            *(int128_t *)(&var_1C0 + 0x118) = q3;
            *(int128_t *)(&var_1C0 + 0xe8) = q1;
            *(int128_t *)(&var_1C0 + 0xf8) = q0;
            objc_retainBlock(*(r22 + 0x128));
            r0 = *(r22 + 0x130);
            r0 = [r0 retain];
            [*(r22 + 0x138) retain];
            [*(r22 + 0x140) retain];
            [*(r22 + 0x148) retain];
            [r20 synchronousPlayer:r19 stateUpdated:0x3 playerState:&var_1C0 loggingContext:r0];
            [r20 release];
    }
    return;
}

-(bool)_enqueuedTime:(union ?)arg2 isGreaterThanLength:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r3;
    r0 = self->_clock;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    sub_100a3e440(r29 - 0x28, r29 - 0x40, &var_58);
    r0 = CMTimeCompare(&var_70, &var_90);
    if (r0 > 0x0) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)_videoBufferLengthIsGreaterThan:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self _enqueuedTime:&var_20 isGreaterThanLength:&var_40];
    return r0;
}

-(bool)_audioBufferLengthIsGreaterThan:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self _enqueuedTime:&var_20 isGreaterThanLength:&var_40];
    return r0;
}

-(void)_playbackTimeListenerForAsset:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r31 = r31 + 0xffffffffffffffb0 - 0x210;
    r19 = self;
    r8 = *r2;
    if ((*(int8_t *)(r2 + 0xc) & 0x1) == 0x0 || (r8 & 0xffffffff80000000) != 0x0) goto loc_100b3bb78;

loc_100b3baf4:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    r0 = *(r19 + r21);
    [r0 updatePlaybackTime:r29 - 0x60];
    if ([r19 _videoHasAudioTrack] != 0x0 && ([r19 _videoIsAudioActive] & 0x1) == 0x0) {
            [r19 _adjustAudioFrameToCurrentPlaybackTime];
            r22 = (int64_t *)&r19->_playerInternalState;
    }
    else {
            r22 = (int64_t *)&r19->_playerInternalState;
            if (*(int8_t *)(r22 + 0x3) == 0x0) {
                    if (*(int8_t *)(r22 + 0x1) != 0x0) {
                            [r19 _adjustAudioFrameToCurrentPlaybackTime];
                    }
            }
    }
    if (*(int8_t *)(r22 + 0x4) != 0x0) {
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    [r0 minBufferTime];
            }
            if (([r19 _videoBufferLengthIsGreaterThan:r29 - 0x78] & 0x1) == 0x0) {
                    sub_100a3e4dc(r29 - 0x90);
                    r0 = r19->_clock;
                    if (r0 != 0x0) {
                            [r0 currentTime];
                    }
                    sub_100a3e4dc(r29 - 0xa8);
                    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x417 format:@"%@ resume requesting video data when buffer is small enough. pts: %f currentTime: %f"];
                    [r19 _startVideo];
                    *(int8_t *)(r22 + 0x4) = 0x0;
            }
    }
    r23 = &var_230;
    if (*(int8_t *)(r22 + 0x3) == 0x0) goto loc_100b3bd38;

loc_100b3bcc0:
    if (*(int8_t *)(r22 + 0x5) == 0x0) goto loc_100b3bd50;

loc_100b3bcc8:
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 minBufferTime];
    }
    if (([r19 _audioBufferLengthIsGreaterThan:r29 - 0xc0] & 0x1) != 0x0) goto loc_100b3bd50;

loc_100b3bd04:
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x421 format:@"%@ resume requesting audio data when buffer is small enough"];
    *(int8_t *)(r22 + 0x5) = 0x0;
    goto loc_100b3bd38;

loc_100b3bd38:
    [r19->_audioEngine resumeEnqueuingData];
    goto loc_100b3bd50;

loc_100b3bd50:
    objc_loadWeakRetained((int64_t *)&r19->_delegate);
    [*(r22 + 0x90) retain];
    [*(r22 + 0x98) retain];
    [*(r22 + 0xa0) retain];
    [*(r22 + 0xa8) retain];
    [*(r22 + 0xb0) retain];
    [*(r22 + 0xb8) retain];
    *(int128_t *)(r23 + 0xcc) = *(int128_t *)(r22 + 0xcc);
    [*(r22 + 0xe0) retain];
    q0 = *(int128_t *)(r22 + 0xf8);
    q1 = *(int128_t *)(r22 + 0xe8);
    q2 = *(int128_t *)(r22 + 0x108);
    q3 = *(int128_t *)(r22 + 0x118);
    *(int128_t *)(&var_230 + 0x108) = q2;
    *(int128_t *)(&var_230 + 0x118) = q3;
    *(int128_t *)(r23 + 0xe8) = q1;
    *(int128_t *)(r23 + 0xf8) = q0;
    objc_retainBlock(*(r22 + 0x128));
    r0 = *(r22 + 0x130);
    r0 = [r0 retain];
    [*(r22 + 0x138) retain];
    [*(r22 + 0x140) retain];
    [*(r22 + 0x148) retain];
    [r20 synchronousPlayer:r19 stateUpdated:0x8 playerState:&var_230 loggingContext:r0];
    [r20 release];
    return;

loc_100b3bb78:
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x403 format:@"%@ invalid playback time. ignoring: %llu scale:%d"];
    return;
}

-(void)_adjustAudioFrameToCurrentPlaybackTime {
    r31 = r31 - 0x150;
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
    r19 = self;
    r0 = self->_clock;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    else {
            var_58 = 0x0;
    }
    r24 = r29 - 0x68;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    r25 = &var_D0 + 0x1c;
    r26 = r19 + 0xd8;
    goto loc_100b3c088;

loc_100b3c088:
    r0 = *(r19 + r23);
    if (r0 == 0x0) goto loc_100b3c118;

loc_100b3c090:
    [r0 currentFrameMetadataForTrack:0x1];
    r8 = var_D0;
    if (r8 == 0x0) goto loc_100b3c118;

loc_100b3c0a8:
    *(int32_t *)(int64_t *)&r26->_playerInternalState = r8;
    q0 = *(int128_t *)r24;
    r0 = CMTimeCompare(&var_110, &var_130);
    if ((r0 & 0xffffffff80000000) == 0x0) goto loc_100b3c168;

loc_100b3c0e0:
    [*(r19 + r23) advanceFrameForTrack:r2];
    if ((objc_msgSend(*(r19 + r23), r22) & 0x1) != 0x0) goto loc_100b3c088;

loc_100b3c168:
    [*(r19 + r23) currentFrameDataForTrack:0x1];
    return;

loc_100b3c118:
    sub_100a3e4dc(&var_F0);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x448 format:@"%@ Empty audio frame encountered while advancing audio to playback time: %f"];
    goto loc_100b3c168;
}

-(bool)_canParseCaptions {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = self->_captionParser;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    r20 = [[*(self + r22) mpdAccessibilityDescription] retain];
    if (*(int8_t *)(int64_t *)&r21->_enableASRCaptions != 0x0) {
            r3 = [*(r21 + r22) mpdContainsAttributeUsingASRCaptions];
    }
    else {
            r3 = 0x0;
    }
    r19 = [r19 canParseCaptionTypeInMPDAccessibilityDescription:r20 orFromUsingASRCaptions:r3];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)_markDisplayImmediately:(struct opaqueCMSampleBuffer *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = arg2;
    if (*qword_1011dd328 != -0x1) {
            dispatch_once_f(0x1011dd328, 0x1011c64c0, 0x100a3d91c);
    }
    r0 = qword_1011dd330(r19, 0x1);
    if (r0 != 0x0) {
            r19 = r0;
            if (CFArrayGetCount(r0) >= 0x1) {
                    r20 = 0x0;
                    do {
                            r28 = CFArrayGetValueAtIndex(r19, r20);
                            if (*0x1011dd438 != -0x1) {
                                    dispatch_once_f(0x1011dd438, 0x1011c6658, 0x100a3d91c);
                            }
                            CFDictionarySetValue(r28, **0x1011dd440, **_kCFBooleanFalse);
                            if (*0x1011dd408 != -0x1) {
                                    dispatch_once_f(0x1011dd408, 0x1011c6610, 0x100a3d91c);
                            }
                            CFDictionarySetValue(r28, **0x1011dd410, **_kCFBooleanTrue);
                            r20 = r20 + 0x1;
                    } while (r20 < CFArrayGetCount(r19));
            }
    }
    return;
}

-(void)_checkIfRepresentationChanged {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r21 = (int64_t *)&self->_playerInternalState;
    r19 = [*(r21 + 0xe0) retain];
    r0 = r20->_playerAsset;
    r0 = [r0 representationId];
    r0 = [r0 retain];
    r8 = *(r21 + 0xe0);
    *(r21 + 0xe0) = r0;
    [r8 release];
    if ([r19 length] != 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = r20->_representationChangedCallback;
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
    }
    [r19 release];
    return;
}

-(bool)_videoHasAudioTrack {
    r0 = self->_playerAsset;
    r0 = [r0 containsTrack:0x1];
    return r0;
}

-(bool)_videoIsAudioActive {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)((int64_t *)&r0->_playerInternalState + 0xb) == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)_videoLayerEnqueueDecompressedFrameCallback {
    r31 = r31 - 0x1d0;
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
    r19 = self;
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x566 format:@"%@ requesting decompressed media"];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    if ([*(r19 + r21) isReadyForMoreMediaData] == 0x0) goto .l1;

loc_100b3d4a0:
    r26 = &var_118 + 0x18;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    goto loc_100b3d518;

loc_100b3d518:
    if (([*(r19 + r25) trackHasMoreFrames:r2] & 0x1) == 0x0) goto loc_100b3d754;

loc_100b3d52c:
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            [r0 maxBufferTime];
    }
    if ([r19 _videoBufferLengthIsGreaterThan:r2] != 0x0) goto loc_100b3d7d8;

loc_100b3d560:
    [*(r19 + r25) currentFrameMetadataForTrack:r2];
    r0 = *(r19 + r25);
    r0 = [r0 currentFrameDataForTrack:r2];
    if (r0 == 0x0) goto loc_100b3d834;

loc_100b3d588:
    r23 = r0;
    r27 = (int64_t *)&r19->_playerInternalState;
    if (*(int8_t *)(r27 + 0x6) != 0x0) {
            [r19 _markDisplayImmediately:r2];
    }
    [r19 _checkIfRepresentationChanged];
    r0 = sub_100a3e768(r23, &var_118, &var_120);
    if (*qword_1011dd268 != -0x1) {
            dispatch_once_f(0x1011dd268, 0x1011c63a0, 0x100a3d91c);
    }
    r22 = qword_1011dd270(r23);
    if (*qword_1011dd048 != -0x1) {
            dispatch_once_f(0x1011dd048, 0x1011c6100, 0x100a3d91c);
    }
    qword_1011dd050(r22, 0x0);
    r24 = *(r19 + r21);
    if (*qword_1011dd268 != -0x1) {
            dispatch_once_f(0x1011dd268, 0x1011c63a0, 0x100a3d91c);
    }
    qword_1011dd270(r23);
    [r24 yieldDecompressedBuffer:r2 presentationTimeStamp:r3 presentationDuration:r4];
    if (*qword_1011dd078 != -0x1) {
            dispatch_once_f(0x1011dd078, 0x1011c6148, 0x100a3d91c);
    }
    qword_1011dd080(r22, 0x0);
    r8 = *(r26 + 0x10);
    *(int128_t *)(r27 + 0x3c) = *(int128_t *)r26;
    *(r27 + 0x4c) = r8;
    *(int8_t *)(r27 + 0x6) = 0x0;
    objc_msgSend(*(r19 + r25), r28);
    if ((objc_msgSend(*(r19 + r21), r20) & 0x1) != 0x0) goto loc_100b3d518;

.l1:
    return;

loc_100b3d834:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    [*(r19 + r21) stopRequestingMediaData];
    *(int8_t *)((int64_t *)&r19->_playerInternalState + 0x4) = 0x1;
    return;

loc_100b3d7d8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    *(int8_t *)(0x4 + r19 + r8) = 0x1;
    sub_100a3e4dc(r29 - 0xa0);
    r0 = r19->_clock;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    sub_100a3e4dc(r29 - 0xb8);
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    [*(r19 + r21) stopRequestingMediaData];
    return;

loc_100b3d754:
    [*(r19 + r21) stopRequestingMediaData];
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r20 = (int64_t *)&r19->_playerInternalState;
    if (*(r20 + 0x98) == 0x0 && *(r19 + r25) != 0x0) {
            r0 = [r19 _addDurationTimerForAsset];
            r0 = [r0 retain];
            r8 = *(r20 + 0x98);
            *(r20 + 0x98) = r0;
            [r8 release];
    }
    return;
}

-(void)_startVideo {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x5ee format:@"%@ start video called"];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_50 + 0x20, &saved_fp - 0x28);
    [r21 requestMediaDataWhenReadyOnQueue:r19 usingBlock:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)_setupAudio {
    r31 = r31 - 0x1f0;
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
    r19 = self;
    if ([self _videoHasAudioTrack] != 0x0 && ([r19 _videoIsAudioActive] & 0x1) != 0x0) {
            r20 = (int64_t *)&r19->_playerInternalState;
            if (*(int8_t *)(r20 + 0x8) != 0x0) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            }
            else {
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
                    r0 = *(r19 + r28);
                    if (r0 != 0x0) {
                            [r0 currentFrameMetadataForTrack:0x1];
                            r8 = var_D0;
                            if (r8 == 0x0) {
                                    r8 = *(int32_t *)(r20 + 0xd8);
                                    if (r8 != 0x0) {
                                            var_1D4 = r8;
                                            objc_initWeak(r29 - 0xd8, r19);
                                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_audioDecoder));
                                            if (*(r19 + r23) != 0x0) {
                                                    r21 = &var_100 + 0x20;
                                                    objc_copyWeak(r21, r29 - 0xd8);
                                                    r0 = objc_retainBlock(&var_100);
                                                    r22 = r0;
                                                    r23 = *(r19 + r23);
                                                    r0 = *(r19 + r28);
                                                    if (r0 != 0x0) {
                                                            [r0 asbd];
                                                            r0 = *(r19 + r28);
                                                    }
                                                    r0 = [r0 audioStreamExtraParameters];
                                                    r29 = r29;
                                                    r24 = [r0 retain];
                                                    [r23 setAudioStreamBasicDescription:&var_130 extraParameters:r24 errorCallback:r22];
                                                    [r24 release];
                                                    [r22 release];
                                                    objc_destroyWeak(r21);
                                            }
                                            r21 = &var_158 + 0x20;
                                            objc_copyWeak(r21, r29 - 0xd8);
                                            r0 = objc_retainBlock(&var_158);
                                            r22 = r0;
                                            r23 = &var_180 + 0x20;
                                            objc_copyWeak(r23, r29 - 0xd8);
                                            r0 = objc_retainBlock(&var_180);
                                            r24 = r0;
                                            r25 = &var_1A8 + 0x20;
                                            objc_copyWeak(r25, r29 - 0xd8);
                                            r0 = objc_retainBlock(&var_1A8);
                                            r26 = r0;
                                            r27 = r19->_audioEngine;
                                            r0 = *(r19 + r28);
                                            if (r0 != 0x0) {
                                                    [r0 asbd];
                                                    r0 = *(r19 + r28);
                                            }
                                            r28 = [[r0 audioStreamExtraParameters] retain];
                                            [r27 setAudioStreamBasicDescription:&var_1D0 extraParameters:r28 putDataCallback:r22 bufferUnderrunCallback:r24 errorCallback:r26 sampleFrameSize:var_1D4 minSampleFrameSize:*(int32_t *)(int64_t *)&r19->_minSampleAudioFrameSize];
                                            [r28 release];
                                            *(int8_t *)(r20 + 0x8) = 0x1;
                                            [r26 release];
                                            objc_destroyWeak(r25);
                                            [r24 release];
                                            objc_destroyWeak(r23);
                                            [r22 release];
                                            objc_destroyWeak(r21);
                                            objc_destroyWeak(r29 - 0xd8);
                                    }
                                    else {
                                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                    }
                            }
                            else {
                                    var_1D4 = r8;
                                    objc_initWeak(r29 - 0xd8, r19);
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_audioDecoder));
                                    if (*(r19 + r23) != 0x0) {
                                            r21 = &var_100 + 0x20;
                                            objc_copyWeak(r21, r29 - 0xd8);
                                            r0 = objc_retainBlock(&var_100);
                                            r22 = r0;
                                            r23 = *(r19 + r23);
                                            r0 = *(r19 + r28);
                                            if (r0 != 0x0) {
                                                    [r0 asbd];
                                                    r0 = *(r19 + r28);
                                            }
                                            r0 = [r0 audioStreamExtraParameters];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r23 setAudioStreamBasicDescription:&var_130 extraParameters:r24 errorCallback:r22];
                                            [r24 release];
                                            [r22 release];
                                            objc_destroyWeak(r21);
                                    }
                                    r21 = &var_158 + 0x20;
                                    objc_copyWeak(r21, r29 - 0xd8);
                                    r0 = objc_retainBlock(&var_158);
                                    r22 = r0;
                                    r23 = &var_180 + 0x20;
                                    objc_copyWeak(r23, r29 - 0xd8);
                                    r0 = objc_retainBlock(&var_180);
                                    r24 = r0;
                                    r25 = &var_1A8 + 0x20;
                                    objc_copyWeak(r25, r29 - 0xd8);
                                    r0 = objc_retainBlock(&var_1A8);
                                    r26 = r0;
                                    r27 = r19->_audioEngine;
                                    r0 = *(r19 + r28);
                                    if (r0 != 0x0) {
                                            [r0 asbd];
                                            r0 = *(r19 + r28);
                                    }
                                    r28 = [[r0 audioStreamExtraParameters] retain];
                                    [r27 setAudioStreamBasicDescription:&var_1D0 extraParameters:r28 putDataCallback:r22 bufferUnderrunCallback:r24 errorCallback:r26 sampleFrameSize:var_1D4 minSampleFrameSize:*(int32_t *)(int64_t *)&r19->_minSampleAudioFrameSize];
                                    [r28 release];
                                    *(int8_t *)(r20 + 0x8) = 0x1;
                                    [r26 release];
                                    objc_destroyWeak(r25);
                                    [r24 release];
                                    objc_destroyWeak(r23);
                                    [r22 release];
                                    objc_destroyWeak(r21);
                                    objc_destroyWeak(r29 - 0xd8);
                            }
                    }
                    else {
                            r8 = *(int32_t *)(r20 + 0xd8);
                            if (r8 != 0x0) {
                                    var_1D4 = r8;
                                    objc_initWeak(r29 - 0xd8, r19);
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_audioDecoder));
                                    if (*(r19 + r23) != 0x0) {
                                            r21 = &var_100 + 0x20;
                                            objc_copyWeak(r21, r29 - 0xd8);
                                            r0 = objc_retainBlock(&var_100);
                                            r22 = r0;
                                            r23 = *(r19 + r23);
                                            r0 = *(r19 + r28);
                                            if (r0 != 0x0) {
                                                    [r0 asbd];
                                                    r0 = *(r19 + r28);
                                            }
                                            r0 = [r0 audioStreamExtraParameters];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r23 setAudioStreamBasicDescription:&var_130 extraParameters:r24 errorCallback:r22];
                                            [r24 release];
                                            [r22 release];
                                            objc_destroyWeak(r21);
                                    }
                                    r21 = &var_158 + 0x20;
                                    objc_copyWeak(r21, r29 - 0xd8);
                                    r0 = objc_retainBlock(&var_158);
                                    r22 = r0;
                                    r23 = &var_180 + 0x20;
                                    objc_copyWeak(r23, r29 - 0xd8);
                                    r0 = objc_retainBlock(&var_180);
                                    r24 = r0;
                                    r25 = &var_1A8 + 0x20;
                                    objc_copyWeak(r25, r29 - 0xd8);
                                    r0 = objc_retainBlock(&var_1A8);
                                    r26 = r0;
                                    r27 = r19->_audioEngine;
                                    r0 = *(r19 + r28);
                                    if (r0 != 0x0) {
                                            [r0 asbd];
                                            r0 = *(r19 + r28);
                                    }
                                    r28 = [[r0 audioStreamExtraParameters] retain];
                                    [r27 setAudioStreamBasicDescription:&var_1D0 extraParameters:r28 putDataCallback:r22 bufferUnderrunCallback:r24 errorCallback:r26 sampleFrameSize:var_1D4 minSampleFrameSize:*(int32_t *)(int64_t *)&r19->_minSampleAudioFrameSize];
                                    [r28 release];
                                    *(int8_t *)(r20 + 0x8) = 0x1;
                                    [r26 release];
                                    objc_destroyWeak(r25);
                                    [r24 release];
                                    objc_destroyWeak(r23);
                                    [r22 release];
                                    objc_destroyWeak(r21);
                                    objc_destroyWeak(r29 - 0xd8);
                            }
                            else {
                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                            }
                    }
            }
    }
    else {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    }
    return;
}

-(void)_enqueueBuffer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = &@selector(_videoLayerEnqueueFrameCallback);
    if ([self->_playerAsset decompressedFramebuffer] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(_videoLayerEnqueueFrameCallback);
            }
            else {
                    r8 = &@selector(_videoLayerEnqueueDecompressedFrameCallback);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)_videoLayerEnqueueFrameCallback {
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
    r31 = r31 + 0xffffffffffffff90 - 0x290;
    r19 = self;
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x508 format:@"%@ requesting media"];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    if ([*(r19 + r23) isReadyForMoreMediaData] == 0x0) goto loc_100b3d3e8;

loc_100b3ce00:
    var_260 = &var_130 + 0x40;
    var_268 = &var_180 + 0x18;
    r27 = &var_130 + 0x1c;
    r26 = &var_180 + 0x30;
    r21 = &var_130 | 0x4;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    goto loc_100b3cee8;

loc_100b3cee8:
    if (([*(r19 + r25) trackHasMoreFrames:r2] & 0x1) == 0x0) goto loc_100b3d22c;

loc_100b3cefc:
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            [r0 maxBufferTime];
    }
    if ([r19 _videoBufferLengthIsGreaterThan:r2] != 0x0) goto loc_100b3d2b0;

loc_100b3cf30:
    r0 = *(r19 + r25);
    if (r0 == 0x0) goto loc_100b3d318;

loc_100b3cf38:
    [r0 currentFrameMetadataForTrack:r2];
    if (var_130 == 0x0) goto loc_100b3d318;

loc_100b3cf50:
    [r19 _checkIfRepresentationChanged];
    r0 = *(r19 + r25);
    r0 = [r0 currentFrameDataForTrack:r2];
    if (r0 == 0x0) goto loc_100b3d344;

loc_100b3cf70:
    r24 = r0;
    q0 = *(int128_t *)r27;
    *(var_268 + 0x10) = *(r27 + 0x10);
    *(int128_t *)var_268 = q0;
    q0 = *(int128_t *)r21;
    *(r26 + 0x10) = *(r21 + 0x10);
    *(int128_t *)r26 = q0;
    if (*qword_1011dd278 != -0x1) {
            dispatch_once_f(0x1011dd278, 0x1011c63b8, 0x100a3d91c);
    }
    r0 = qword_1011dd280(0x0, 0x0, 0x0, &var_190);
    r28 = var_130;
    r0 = malloc(r28);
    r20 = r0;
    memcpy(r0, r24, r28);
    r22 = var_190;
    if (*qword_1011dd3f8 != -0x1) {
            dispatch_once_f(0x1011dd3f8, 0x1011c65f8, 0x100a3d91c);
    }
    qword_1011dd400(r22, r20, r28, **_kCFAllocatorMalloc, 0x0, 0x0, r28, 0x0);
    r28 = var_190;
    r20 = [*(r19 + r25) formatDesc];
    if (*qword_1011dd218 != -0x1) {
            dispatch_once_f(0x1011dd218, 0x1011c6328, 0x100a3d91c);
    }
    r0 = qword_1011dd220(0x0, r28, 0x1, 0x0, 0x0, r20, 0x1, 0x1, &var_180, 0x1, r29 - 0x78, &var_188);
    if ([r19 _canParseCaptions] != 0x0) {
            r28 = r19->_captionParser;
            r20 = var_130;
            r0 = r19->_clock;
            if (r0 != 0x0) {
                    [r0 currentTime];
            }
            [r28 parseFrameData:r2 frameDataSize:r3 presentationTimeStamp:r4 playbackTimeStamp:r5];
    }
    [r19->_liveTraceManager addFrameMetadata:r2];
    [*(r19 + r25) advanceFrameForTrack:r2];
    r20 = (int64_t *)&r19->_playerInternalState;
    if (*(int8_t *)(r20 + 0x6) != 0x0) {
            [r19 _markDisplayImmediately:r2];
    }
    [*(r19 + r23) enqueueSampleBuffer:r2 attributes:r3];
    q0 = *(int128_t *)r27;
    *(r20 + 0x4c) = *(r27 + 0x10);
    *(int128_t *)(r20 + 0x3c) = q0;
    *(int8_t *)(r20 + 0x6) = 0x0;
    CFRelease(var_190);
    CFRelease(var_188);
    if (([*(r19 + r23) isReadyForMoreMediaData] & 0x1) != 0x0) goto loc_100b3cee8;

loc_100b3d3e8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100b3d344:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b3d36c;

loc_100b3d36c:
    objc_msgSend(@class(FBAdLogger), r1);
    [*(r19 + r23) stopRequestingMediaData];
    *(int8_t *)((int64_t *)&r19->_playerInternalState + 0x4) = 0x1;
    goto loc_100b3d3e8;

loc_100b3d318:
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b3d36c;

loc_100b3d2b0:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    *(int8_t *)(0x4 + r19 + r8) = 0x1;
    sub_100a3e4dc(r29 - 0xb0);
    r0 = r19->_clock;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    sub_100a3e4dc(r29 - 0xc8);
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    [*(r19 + r23) stopRequestingMediaData];
    goto loc_100b3d3e8;

loc_100b3d22c:
    [*(r19 + r23) stopRequestingMediaData];
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r20 = (int64_t *)&r19->_playerInternalState;
    if (*(r20 + 0x98) == 0x0 && *(r19 + r25) != 0x0) {
            r0 = [r19 _addDurationTimerForAsset];
            r0 = [r0 retain];
            r8 = *(r20 + 0x98);
            *(r20 + 0x98) = r0;
            [r8 release];
    }
    goto loc_100b3d3e8;
}

-(void)_updateStatus:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1b0;
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = (int64_t *)&r0->_playerInternalState;
    if (*(r22 + 0xf0) != r2) {
            r19 = r0;
            r21 = &var_1A0;
            *(r22 + 0xf0) = r2;
            if (r2 != 0x2) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerError));
                    r0 = *(r19 + r8);
                    *(r19 + r8) = 0x0;
                    [r0 release];
            }
            objc_loadWeakRetained((int64_t *)&r19->_delegate);
            [*(r22 + 0x90) retain];
            [*(r22 + 0x98) retain];
            [*(r22 + 0xa0) retain];
            [*(r22 + 0xa8) retain];
            [*(r22 + 0xb0) retain];
            [*(r22 + 0xb8) retain];
            *(int128_t *)(r21 + 0xcc) = *(int128_t *)(r22 + 0xcc);
            [*(r22 + 0xe0) retain];
            q0 = *(int128_t *)(r22 + 0xf8);
            q1 = *(int128_t *)(r22 + 0xe8);
            q2 = *(int128_t *)(r22 + 0x108);
            q3 = *(int128_t *)(r22 + 0x118);
            *(int128_t *)(&var_1A0 + 0x108) = q2;
            *(int128_t *)(&var_1A0 + 0x118) = q3;
            *(int128_t *)(r21 + 0xe8) = q1;
            *(int128_t *)(r21 + 0xf8) = q0;
            objc_retainBlock(*(r22 + 0x128));
            r0 = *(r22 + 0x130);
            r0 = [r0 retain];
            [*(r22 + 0x138) retain];
            [*(r22 + 0x140) retain];
            [*(r22 + 0x148) retain];
            [r20 synchronousPlayer:r19 stateUpdated:0x0 playerState:&var_1A0 loggingContext:r0];
            [r20 release];
    }
    return;
}

-(void)_syncVolume {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = self;
    r0 = self->_audioEngine;
    [r0 setVolume:r2 rampTime:r3];
    return;
}

-(void)_audioEngineErrorCallback:(void *)arg2 {
    r22 = [arg2 retain];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x61a format:@"%@ audio queue emitted error:%@"];
    [self->_playerAsset addErrorToLog:r22 shouldStopPlayback:0x0];
    [r22 release];
    [self setMuted:0x1];
    return;
}

-(bool)_readyToPlay {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_playerAsset != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
            r8 = r0 + r8;
            if (*(int8_t *)(r8 + 0x2) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    if ((*(int8_t *)(r8 + 0xcc) & 0x1) == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)_audioDecoderErrorCallback:(void *)arg2 {
    r22 = [arg2 retain];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x626 format:@"%@ audio decoder emitted error:%@"];
    [self->_playerAsset addErrorToLog:r22 shouldStopPlayback:0x0];
    [r22 release];
    [self setMuted:0x1];
    return;
}

-(bool)_audioPutDataIntoBufferCallback:(struct AudioQueueBuffer *)arg2 timestamp:(struct AudioTimeStamp *)arg3 framePts:(union ? *)arg4 isfirstPacket:(bool *)arg5 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffff90 - 0x390;
    var_330 = arg5;
    r22 = (int64_t *)&r0->_playerInternalState;
    if (*(int8_t *)r22 == 0x0) goto loc_100b3c9dc;

loc_100b3c1e8:
    r23 = r4;
    r27 = r3;
    r26 = r2;
    r19 = r0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    if (([*(r0 + r20) trackHasMoreFrames:0x1] & 0x1) == 0x0) goto loc_100b3c6d4;

loc_100b3c224:
    r24 = &@selector(setNativeAdViews:);
    var_388 = r23;
    var_350 = r22 + 0x6c;
    r21 = &var_1A0 | 0x4;
    var_328 = &var_1A0 + 0x1c;
    r25 = @selector(logAtLevel:file:lineNumber:format:);
    var_348 = r22 + 0x54;
    var_3B0 = r26 + 0x30;
    var_360 = *(r24 + 0xc60);
    var_398 = r27 + 0x8;
    var_390 = r27;
    r27 = 0x1;
    goto loc_100b3c308;

loc_100b3c308:
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 maxBufferTime];
    }
    if ([r19 _audioBufferLengthIsGreaterThan:&var_108] != 0x0) goto loc_100b3c738;

loc_100b3c340:
    if (*(r26 + 0x8) == 0x0) goto loc_100b3c9dc;

loc_100b3c348:
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 currentFrameMetadataForTrack:r2];
            if (var_330 != 0x0 && (var_148 & 0x4) != 0x0) {
                    *(int8_t *)var_330 = 0x1;
            }
    }
    else {
            v0 = 0x0;
            var_160 = q0;
            stack[-352] = q0;
            var_180 = q0;
            stack[-384] = q0;
            var_1A0 = q0;
            stack[-416] = q0;
    }
    r23 = var_1A0;
    if (r23 == 0x0) goto loc_100b3c768;

loc_100b3c394:
    r28 = r25;
    [@"" retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_audioDecoder));
    if (*(r19 + r25) == 0x0) goto loc_100b3c418;

loc_100b3c3b4:
    if (*(int32_t *)(r26 + 0x30) >= *(int32_t *)(r26 + 0x20)) goto loc_100b3c7dc;

loc_100b3c3c4:
    r0 = *(r19 + r20);
    r0 = [r0 currentFrameDataForTrack:r2];
    if (r0 == 0x0 || var_1A0 == 0x0) goto loc_100b3c7e8;

loc_100b3c3e0:
    q0 = var_1A0;
    q1 = stack[-416];
    if (([*(r19 + r25) decodeToBuffer:r2 frame:r3 frameData:r4] & 0x1) != 0x0) goto loc_100b3c4dc;

loc_100b3c414:
    r21 = @"decodeToBuffer failed";
    goto loc_100b3c834;

loc_100b3c834:
    [r21 retain];
    [@"" release];
    if (*(int32_t *)var_3B0 != 0x0) {
            r24 = 0x1;
    }
    else {
            var_328 = r21;
            r28 = [[NSNumber numberWithUnsignedInt:r2] retain];
            r21 = [[NSNumber numberWithUnsignedInt:r2] retain];
            r22 = [[NSNumber numberWithUnsignedInt:r2] retain];
            r23 = [[NSNumber numberWithUnsignedInt:r2] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithUnsignedInt:r2];
            r29 = r29;
            r24 = [r0 retain];
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    [r0 asbd];
            }
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
            r25 = [r0 retain];
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    [r0 asbd];
            }
            var_3D0 = @selector(dictionaryWithObjects:forKeys:count:);
            r0 = [NSNumber numberWithUnsignedInt:r2];
            r0 = [r0 retain];
            [objc_msgSend(@class(NSDictionary), var_3D0) retain];
            [r0 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r28 release];
            [[NSError errorWithDomain:r2 code:r3 userInfo:r4] retain];
            [r19 _audioEngineErrorCallback:r2];
            [r20 release];
            [r27 release];
            r24 = 0x0;
            r21 = var_328;
    }
    goto loc_100b3cb58;

loc_100b3cb58:
    [r21 release];
    goto loc_100b3c9e0;

loc_100b3c9e0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r24 & 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b3c4dc:
    CMTimeGetSeconds(&var_250);
    CMTimeGetSeconds(&var_270);
    r25 = r28;
    objc_msgSend(@class(FBAdLogger), r28);
    q0 = *(int128_t *)var_328;
    *(var_348 + 0x10) = *(var_328 + 0x10);
    *(int128_t *)var_348 = q0;
    q0 = *(int128_t *)r21;
    *(var_350 + 0x10) = *(r21 + 0x10);
    *(int128_t *)var_350 = q0;
    *(int8_t *)(r22 + 0x3) = 0x1;
    [*(r19 + r20) advanceFrameForTrack:0x1];
    if ((r27 & 0x1) != 0x0) {
            r0 = r19->_clock;
            if (r0 != 0x0) {
                    [r0 currentTime];
            }
            sub_100a3e440(&stack[-664], &var_2A0, &var_2B8);
            r0 = r19->_audioEngine;
            if (r0 != 0x0) {
                    [r0 getCurrentTime];
            }
            r27 = var_390;
            r23 = var_388;
            sub_100a3e6cc(&var_320, &stack[-664], &var_2D0);
            q0 = var_320;
            sub_100a3e4dc(&var_2F0);
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    [r0 asbd];
                    d0 = var_1D0;
            }
            else {
                    d0 = 0x0;
                    var_1D0 = q1;
            }
            d0 = d8 * d0;
            *r27 = d0;
            *(int128_t *)(var_398 + 0x10) = q1;
            *(int128_t *)(var_398 + 0x20) = q1;
            *(int128_t *)var_398 = q1;
            *(int32_t *)(r27 + 0x38) = 0x1;
            if (r23 != 0x0) {
                    q0 = *(int128_t *)var_328;
                    *(r23 + 0x10) = *(var_328 + 0x10);
                    *(int128_t *)r23 = q0;
            }
    }
    r24 = r24 | (var_148 & 0x8) / 0x8;
    [@"" release];
    if ((var_148 & 0x8) != 0x0) goto loc_100b3c9e0;

loc_100b3c6b0:
    r0 = *(r19 + r20);
    r0 = objc_msgSend(r0, var_360);
    r27 = 0x0;
    if ((r0 & 0x1) != 0x0) goto loc_100b3c308;

loc_100b3c6c8:
    r20 = var_3B0;
    goto loc_100b3c6dc;

loc_100b3c6dc:
    objc_msgSend(@class(FBAdLogger), r25);
    [r19->_audioEngine stopLoadingData:*(int8_t *)(int64_t *)&r19->_skipAudioQueueFlush];
    if (*(int32_t *)r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r24 = 0x1;
            }
    }
    goto loc_100b3c9e0;

loc_100b3c7e8:
    *(int8_t *)(r22 + 0x5) = 0x1;
    r1 = r28;
    goto loc_100b3c818;

loc_100b3c818:
    objc_msgSend(@class(FBAdLogger), r1);
    r24 = 0x0;
    r21 = @"";
    goto loc_100b3cb58;

loc_100b3c7dc:
    r21 = @"max buffer->mPacketDescriptionCount";
    goto loc_100b3c834;

loc_100b3c418:
    if (*(int32_t *)r26 - *(int32_t *)(r26 + 0x10) < r23 || *(int32_t *)(r26 + 0x30) >= *(int32_t *)(r26 + 0x20)) goto loc_100b3c79c;

loc_100b3c43c:
    r0 = *(r19 + r20);
    r0 = [r0 currentFrameDataForTrack:r2];
    if (r0 == 0x0) goto loc_100b3c7a8;

loc_100b3c450:
    r2 = var_1A0;
    if (r2 == 0x0) goto loc_100b3c7a8;

loc_100b3c458:
    memcpy(*(r26 + 0x8) + *(int32_t *)(r26 + 0x10), r0, r2);
    r10 = *(int32_t *)(r26 + 0x10);
    r9 = *(r26 + 0x28);
    r8 = *(int32_t *)(r26 + 0x30);
    *(r9 + zero_extend_64(r8) * 0x10) = r10;
    r11 = var_1A0;
    *(int32_t *)(0xc + r9 + zero_extend_64(r8) * 0x10) = r11;
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 asbd];
            r12 = var_1BC;
            r9 = *(r26 + 0x28);
            r8 = *(int32_t *)(r26 + 0x30);
            r11 = var_1A0;
            r10 = *(int32_t *)(r26 + 0x10);
    }
    else {
            r12 = 0x0;
            v0 = 0x0;
            var_1D0 = q0;
    }
    *(int32_t *)(0x8 + r9 + r8 * 0x10) = r12;
    *(int32_t *)(r26 + 0x10) = r10 + r11;
    *(int32_t *)(r26 + 0x30) = r8 + 0x1;
    goto loc_100b3c4dc;

loc_100b3c7a8:
    *(int8_t *)(r22 + 0x5) = 0x1;
    r1 = r28;
    goto loc_100b3c818;

loc_100b3c79c:
    r21 = @"nil audioDecoder";
    goto loc_100b3c834;

loc_100b3c768:
    *(int8_t *)(r22 + 0x5) = 0x1;
    r1 = r25;
    goto loc_100b3c9d8;

loc_100b3c9d8:
    objc_msgSend(@class(FBAdLogger), r1);
    goto loc_100b3c9dc;

loc_100b3c9dc:
    r24 = 0x0;
    goto loc_100b3c9e0;

loc_100b3c738:
    *(int8_t *)(r22 + 0x5) = 0x1;
    r0 = r19->_clock;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    sub_100a3e4dc(&var_120);
    sub_100a3e4dc(&var_140);
    r1 = r25;
    goto loc_100b3c9d8;

loc_100b3c6d4:
    r24 = &@selector(setNativeAdViews:);
    r25 = @selector(logAtLevel:file:lineNumber:format:);
    r20 = r26 + 0x30;
    goto loc_100b3c6dc;
}

-(void)_setupLayer {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x632 format:@"%@ setting up layer: %@"];
    [r19->_clock syncWithLayer:*(r19 + r22)];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    *(int8_t *)(0x6 + r19 + r8) = 0x1;
    if (*(int8_t *)(r19 + r8) != 0x0 && [r19 _readyToPlay] != 0x0) {
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x638 format:@"%@ going to call play after setuplayer"];
            [r19 setRate:0x6];
    }
    return;
}

-(void)applicationWillResignActive {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_clock;
    if (r0 != 0x0) {
            [r0 currentTime];
    }
    else {
            var_28 = 0x0;
            var_18 = 0x0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    *(int128_t *)(0xc0 + r19 + r8) = var_28;
    *(0xd0 + r19 + r8) = var_18;
    sub_100a3e4dc(&var_40);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x640 format:@"%@ willresignactive. time:%f"];
    [r19 _handleSeekCancellation];
    [r19 _pause:0x2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayEngine));
    [*(r19 + r20) pauseDisplayLink];
    [*(r19 + r20) flush];
    [r19 _updateStatus:0x0];
    return;
}

-(void)applicationDidBecomeActive {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x64f format:@"%@ didbecomeactive"];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_playerAsset));
    if (*(r19 + r22) != 0x0) {
            [r19 _setupLayer];
            r20 = (int64_t *)&r19->_playerInternalState;
            r21 = r20 + 0xc0;
            if ((*(int8_t *)(r20 + 0xcc) & 0x1) != 0x0) {
                    r0 = *(r19 + r22);
                    [r0 updatePlaybackTime:&var_40];
                    [r19 seekToTime:&var_60 completionHandler:0x0];
            }
            if (*qword_1011dd158 != -0x1) {
                    dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
            }
            r8 = *qword_1011dd160;
            q0 = *(int128_t *)r8;
            *(r21 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r21 = q0;
            if (*(int8_t *)r20 != 0x0) {
                    [r19 setRate:0x6];
            }
            else {
                    [r19 _startVideo];
            }
    }
    else {
            if (*qword_1011dd158 != -0x1) {
                    dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
            }
            r8 = *qword_1011dd160;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
            r10 = *(r8 + 0x10);
            *(int128_t *)(0xc0 + r19 + r9) = *(int128_t *)r8;
            *(0xd0 + r19 + r9) = r10;
    }
    return;
}

-(long long)status {
    r0 = *((int64_t *)&self->_playerInternalState + 0xf0);
    return r0;
}

-(void)_resetStallState {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    *(int128_t *)(0xf8 + self + r8) = 0x0;
    *(int128_t *)(0x100 + self + r8) = 0x0;
    return;
}

-(void)invalidate {
    [self->_displayEngine invalidate];
    return;
}

-(void *)callbackQueueForDisplayEngineDelegate {
    r0 = self->_runningQueue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)displayEngineUpdatedWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_playerAsset != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFSynchronousPlayer.mm" lineNumber:0x681 format:@"%@ player layer updated with error:%@"];
            if (*((int64_t *)&r20->_playerInternalState + 0xf0) != 0x2) {
                    objc_storeStrong((int64_t *)&r20->_playerError, r21);
                    [r20 _updateStatus:0x2];
                    [r20 pause];
                    if ([r20->_displayEngine flushIfError] != 0x0) {
                            [r20 _setupLayer];
                    }
            }
    }
    [r19 release];
    return;
}

-(void)displayEngineStartedToDisplayFrameAt:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_liveTraceManager;
    [r0 frameIsDisplayedWithPts:&var_20];
    return;
}

-(void)displayEngineDidLayoutSubLayers:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108) = d0;
    *(int128_t *)((int64_t *)&self->_playerInternalState + 0x110) = d1;
    *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118) = d2;
    *(int128_t *)((int64_t *)&self->_playerInternalState + 0x120) = d3;
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r20 synchronousPlayer:self stateUpdated:0x7 playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    return;
}

-(void)displayEngineIsReadyForDisplay:(bool)arg2 {
    r31 = r31 - 0x1b0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)((int64_t *)&self->_playerInternalState + 0x9) = arg2;
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r21 synchronousPlayer:r19 stateUpdated:0x6 playerState:&var_1A0 loggingContext:r0];
    [r21 release];
    if (arg2 != 0x0) {
            [r19 _updateStatus:0x1];
    }
    return;
}

-(void)timeLoadedChanged:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerInternalState + 0x148, arg2);
    [arg2 retain];
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r21 synchronousPlayer:self stateUpdated:0x9 playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    [r21 release];
    return;
}

-(void)durationChanged:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = *(r2 + 0x10);
    *(int128_t *)((int64_t *)&self->_playerInternalState + 0x150) = *(int128_t *)r2;
    *((int64_t *)&self->_playerInternalState + 0x160) = r8;
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r20 synchronousPlayer:self stateUpdated:0xa playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    return;
}

-(void)playbackDidDryOut {
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r20 synchronousPlayer:self stateUpdated:0xd playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    return;
}

-(void)playerItemDidWarn:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerInternalState + 0x138, arg2);
    [arg2 retain];
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r21 synchronousPlayer:self stateUpdated:0xb playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    [r21 release];
    return;
}

-(void)playbackDidUndry {
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r20 synchronousPlayer:self stateUpdated:0xe playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    return;
}

-(void)playerItemDidFail:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerInternalState + 0x140, arg2);
    [arg2 retain];
    objc_loadWeakRetained((int64_t *)&self->_delegate);
    [*((int64_t *)&self->_playerInternalState + 0x90) retain];
    [*((int64_t *)&self->_playerInternalState + 0x98) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xa8) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb0) retain];
    [*((int64_t *)&self->_playerInternalState + 0xb8) retain];
    *(int128_t *)(&var_1A0 + 0xcc) = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xcc);
    [*((int64_t *)&self->_playerInternalState + 0xe0) retain];
    q0 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xf8);
    q1 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0xe8);
    q2 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x108);
    q3 = *(int128_t *)((int64_t *)&self->_playerInternalState + 0x118);
    *(int128_t *)(&var_1A0 + 0x108) = q2;
    *(int128_t *)(&var_1A0 + 0x118) = q3;
    *(int128_t *)(&var_1A0 + 0xe8) = q1;
    *(int128_t *)(&var_1A0 + 0xf8) = q0;
    objc_retainBlock(*((int64_t *)&self->_playerInternalState + 0x128));
    r0 = *((int64_t *)&self->_playerInternalState + 0x130);
    r0 = [r0 retain];
    [*((int64_t *)&self->_playerInternalState + 0x138) retain];
    [*((int64_t *)&self->_playerInternalState + 0x140) retain];
    [*((int64_t *)&self->_playerInternalState + 0x148) retain];
    [r21 synchronousPlayer:self stateUpdated:0xc playerState:&var_1A0 loggingContext:r0];
    [r20 release];
    [r21 release];
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerInternalState));
    *(0xe0 + r0 + r8) = 0x0;
    *(int128_t *)(0x90 + r0 + r8) = q0;
    *(int128_t *)(0xa0 + r0 + r8) = q0;
    *(int128_t *)(0xb0 + r0 + r8) = q0;
    *(int128_t *)(0x128 + r0 + r8) = q0;
    *(int128_t *)(r0 + r8 + 0x138) = q0;
    *(r0 + r8 + 0x148) = 0x0;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_representationChangedCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_audioLevelCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_playerError, 0x0);
    [*((int64_t *)&self->_playerInternalState + 0x148) release];
    [*((int64_t *)&self->_playerInternalState + 0x140) release];
    [*((int64_t *)&self->_playerInternalState + 0x138) release];
    [*((int64_t *)&self->_playerInternalState + 0x130) release];
    [*((int64_t *)&self->_playerInternalState + 0x128) release];
    [*((int64_t *)&self->_playerInternalState + 0xe0) release];
    [*((int64_t *)&self->_playerInternalState + 0xb8) release];
    [*((int64_t *)&self->_playerInternalState + 0xb0) release];
    [*((int64_t *)&self->_playerInternalState + 0xa8) release];
    [*((int64_t *)&self->_playerInternalState + 0xa0) release];
    [*((int64_t *)&self->_playerInternalState + 0x98) release];
    [*((int64_t *)&self->_playerInternalState + 0x90) release];
    objc_storeStrong((int64_t *)&self->_runningQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_liveTraceManager, 0x0);
    objc_storeStrong((int64_t *)&self->_captionParser, 0x0);
    objc_storeStrong((int64_t *)&self->_clock, 0x0);
    objc_storeStrong((int64_t *)&self->_displayEngine, 0x0);
    objc_storeStrong((int64_t *)&self->_audioDecoder, 0x0);
    objc_storeStrong((int64_t *)&self->_audioEngine, 0x0);
    objc_storeStrong((int64_t *)&self->_playerAsset, 0x0);
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

@end