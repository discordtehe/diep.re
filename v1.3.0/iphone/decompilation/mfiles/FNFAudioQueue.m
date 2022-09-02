@implementation FNFAudioQueue

-(void *)init {
    r0 = [self initWithPlayerConfig:&var_18];
    return r0;
}

-(void *)initWithPlayerConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_playbackAVSyncPreloadBuffers = *(int8_t *)(r20 + 0xf);
            *(int8_t *)(int64_t *)&r19->_playbackAVSyncAudioQueuePrime = *(int8_t *)(r20 + 0x10);
            *(int8_t *)(int64_t *)&r19->_playbackAVSyncEnqueueBeforeStart = *(int8_t *)(r20 + 0x12);
            *(int8_t *)(int64_t *)&r19->_playbackAVSyncResumeEnqueuing = *(int8_t *)(r20 + 0x11);
            *(int32_t *)(int64_t *)&r19->_pendingVolume = 0xffffffffcf000000;
            r0 = sub_100b37780();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_internalQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r19->_pendingPlayRate = 0x800000;
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x85 format:@"%@ Deallocing FNFAudioQueue"];
    [[&var_20 super] dealloc];
    return;
}

-(void)setAudioStreamBasicDescription:(struct AudioStreamBasicDescription)arg2 extraParameters:(void *)arg3 putDataCallback:(void *)arg4 bufferUnderrunCallback:(void *)arg5 errorCallback:(void *)arg6 sampleFrameSize:(unsigned int)arg7 minSampleFrameSize:(unsigned int)arg8 {
    memcpy(&r2, &arg2, 0x8);
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
    r23 = [r4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_asbd));
    r9 = *(r2 + 0x20);
    q0 = *(int128_t *)r2;
    q1 = *(int128_t *)(r2 + 0x10);
    *(int128_t *)(r19 + r8) = q0;
    *(int128_t *)(0x10 + r19 + r8) = q1;
    *(0x20 + r19 + r8) = r9;
    r21 = [r6 retain];
    r22 = objc_retainBlock(r23);
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_putDataCallback));
    r0 = *(r19 + r8);
    *(r19 + r8) = r22;
    [r0 release];
    r22 = objc_retainBlock(r21);
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_errorCallback));
    r0 = *(r19 + r8);
    *(r19 + r8) = r22;
    [r0 release];
    *(int32_t *)(int64_t *)&r19->_sampleFrameSize = r7;
    *(int32_t *)(int64_t *)&r19->_minSampleFrameSize = arg8;
    *(int8_t *)(int64_t *)&r19->_hasNoMoreFramesToEnqueue = 0x0;
    if (r19->_state == 0x0) {
            [r19 _createAudioQueue];
            if (*(int8_t *)(int64_t *)&r19->_playbackAVSyncPreloadBuffers != 0x0) {
                    [r19 resumeEnqueuingData];
            }
    }
    return;
}

-(bool)isReadyToPlayWithStartTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    return 0x1;
}

-(void)prepareToPlay {
    [self _startQueue];
    return;
}

-(void)pause {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self _isReadyForPlayback] != 0x0) {
            r19->_state = 0x4;
            [r19->_coreAudioWrapper pause];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesEnqueued));
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0xaf format:@"%@ pausing audio queue. frames enqueued: %llu buffers returned: %lld readDataCalls: %lld"];
    }
    return;
}

-(void)playWithStartTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self _isReadyForPlayback] & 0x1) != 0x0 && ([r19 _startQueue] & 0x1) != 0x0) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            r19->_framesEnqueued = 0x0;
            r19->_buffersReturned = 0x0;
            r19->_enqueueDataCalls = 0x0;
            [r19 _readDataIntoBuffer];
    }
    else {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    }
    return;
}

-(void)stop {
    [self _stopAudio];
    return;
}

-(void)reset {
    [self->_coreAudioWrapper reset];
    *(int8_t *)(int64_t *)&self->_hasNoMoreFramesToEnqueue = 0x0;
    return;
}

-(void)flush {
    [self->_coreAudioWrapper flush];
    return;
}

-(void)stopLoadingData:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0xd0 format:@"%@ Stop loading data called"];
    *(int8_t *)(int64_t *)&r19->_hasNoMoreFramesToEnqueue = 0x1;
    if ((arg2 & 0x1) == 0x0) {
            [r19->_coreAudioWrapper flush];
    }
    return;
}

-(void)enableLevelMeteringWithCallback:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioLevelCallback));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    if (r19->_state == 0x3) {
            [r19->_coreAudioWrapper setLevelMeteringEnabled:0x1];
    }
    else {
            *(int8_t *)(int64_t *)&r19->_deferAudioLevelSetup = 0x1;
    }
    return;
}

-(void)invalidate {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_state == 0x3) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesEnqueued));
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0xc6 format:@"%@ invalidating audio queue. frames enqueued: %lld buffers returned: %lld readDataCalls: %lld"];
    }
    *(int8_t *)(int64_t *)&r19->_hasNoMoreFramesToEnqueue = 0x0;
    [r19 _removeAudioQueue];
    return;
}

-(void)removeLevelMetering {
    [self->_coreAudioWrapper setLevelMeteringEnabled:0x0];
    *(int8_t *)(int64_t *)&self->_deferAudioLevelSetup = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_audioLevelCallback));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void)setVolume:(float)arg2 rampTime:(float)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    if ([self _isReadyForPlayback] != 0x0) {
            [r19->_coreAudioWrapper setVolume:r2 withRampTime:r3];
            s8 = 0x0;
            s9 = 0xffffffffcf000000;
    }
    *(int32_t *)(int64_t *)&r19->_pendingVolume = s9;
    *(int32_t *)(int64_t *)&r19->_pendingVolumeRampTime = s8;
    return;
}

-(void)resumeEnqueuingData {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self _readDataIntoBuffer];
    if (*(int8_t *)(int64_t *)&r19->_playbackAVSyncAudioQueuePrime != 0x0 && ([r19->_coreAudioWrapper primeAudioQueue] & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0xf7 format:@"%@ failed to prime"];
    }
    return;
}

-(void)setRate:(float)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    if (s8 >= 0x3fe0000000000000) {
            asm { fccmp      s8, s0, #0x0, pl };
    }
    if (!CPU_FLAGS & LE) {
            asm { fcvt       d0, s8 };
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x10c format:@"%@ failed to set audio play rate to %f. Please pick a value from 0.5 to 2.0"];
    }
    else {
            if ([r19 _isReadyForPlayback] != 0x0) {
                    [r19->_coreAudioWrapper setRate:r2];
                    *(int32_t *)(int64_t *)&r19->_pendingPlayRate = 0x800000;
            }
            else {
                    *(int32_t *)(int64_t *)&r19->_pendingPlayRate = s8;
            }
    }
    return;
}

-(void)sendCurrentAudioLevelToCallback {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_audioLevelCallback));
    if (*(r0 + r21) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_deferAudioLevelSetup == 0x0 && r19->_state == 0x3) {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
                    r0 = *(r19 + r22);
                    r0 = [r0 levelMeterStateLength];
                    if (r0 != 0x0) {
                            r20 = r0;
                            r0 = *(r19 + r22);
                            r0 = [r0 currentLevelMeterState];
                            if (r0 != 0x0) {
                                    r8 = r20;
                                    d0 = 0x0;
                                    do {
                                            r0 = r0 + 0x8;
                                            asm { fcvt       d1, s1 };
                                            d0 = d0 + d1;
                                            r8 = r8 - 0x1;
                                    } while (r8 != 0x0);
                            }
                            r0 = *(r19 + r21);
                            asm { ucvtf      d1, w20 };
                            asm { fdiv       d0, d0, d1 };
                            r1 = *(r0 + 0x10);
                            (r1)(r0, r1);
                    }
            }
    }
    return;
}

-(unsigned long long)_queueState {
    r0 = self->_state;
    return r0;
}

-(union ?)getCurrentTime {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_coreAudioWrapper;
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

-(void)_setQueueState:(unsigned long long)arg2 {
    self->_state = arg2;
    return;
}

-(bool)_isReadyForPlayback {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(self + r8);
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    if (r8 != 0x5) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r0 = r9 & r8;
    return r0;
}

-(void)_stopAudio {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self _isReadyForPlayback] != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
            [*(r19 + r20) pause];
            [*(r19 + r20) stopImmediately:0x0];
            r19->_state = 0x2;
    }
    return;
}

-(void)_removeAudioQueue {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r0 + r20) != 0x0) {
            r19 = r0;
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x17e format:@"%@ remove audio queue"];
            *(r19 + r20) = 0x0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
            [*(r19 + r21) stopImmediately:0x1];
            r22 = 0x0;
            r0 = *(r19 + r21);
            r23 = (int64_t *)&r19->_audioQueueBuffer;
            do {
                    [r0 releaseBuffer:*(r23 + r22)];
                    *(int8_t *)(0x48 + r23 + r22) = 0x0;
                    *(r23 + r22) = 0x0;
                    r0 = *(r19 + r21);
                    r22 = r22 + 0x50;
            } while (r22 != 0xf0);
            [r0 invalidate];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
    }
    return;
}

-(bool)_createAudioQueue {
    r31 = r31 - 0xe0;
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
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    r23 = [[r0 category] retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x14b format:@"%@ creating audio queue. audio category: %@"];
    [r23 release];
    [r0 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    *(r20 + r21) = 0x1;
    r0 = [FNFCoreAudioWrapper alloc];
    r22 = (int64_t *)&r20->_asbd;
    r0 = [r0 initWithStreamDescription:&var_80 andDelegate:r20 andQueue:r20->_internalQueue];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
    r8 = *(r20 + r26);
    *(r20 + r26) = r0;
    [r8 release];
    r0 = *(r20 + r26);
    if (r0 == 0x0) goto loc_100b2bfd0;

loc_100b2be8c:
    r0 = [r0 setTimePitchEnabled:0x1];
    if (r0 == 0x0) goto .l1;

loc_100b2bea0:
    r21 = *(int32_t *)(int64_t *)&r20->_sampleFrameSize;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_minSampleFrameSize));
    r8 = *(int32_t *)(r20 + r19);
    if (r21 < r8) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            r21 = *(int32_t *)(r20 + r19);
    }
    r0 = [r20 class];
    r0 = [r0 _calculateBufferSizeAndPacketCountWithAsbd:&var_B0 frameSize:r21];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_bufferParams));
    *(r20 + r27) = r0;
    r0 = *(r20 + r26);
    r0 = [r0 bufferWithParams:r2];
    if (r0 == 0x0) goto .l1;

loc_100b2bf50:
    r24 = r0;
    r28 = 0x0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_audioQueueBuffer));
    r19 = r20;
    goto loc_100b2bf74;

loc_100b2bf74:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    *(r19 + r25) = r24;
    if (r28 == 0x2) goto loc_100b2bff8;

loc_100b2bfac:
    r28 = r28 + 0x1;
    r0 = *(r20 + r26);
    r0 = [r0 bufferWithParams:r2];
    r24 = r0;
    r19 = r19 + 0x50;
    if (r0 != 0x0) goto loc_100b2bf74;

.l1:
    return r0;

loc_100b2bff8:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r0 = 0x1;
    return r0;

loc_100b2bfd0:
    *(r20 + r21) = 0x5;
    return r0;
}

-(bool)_startQueue {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x190 format:@"%@ calling audio queue start. state=%d"];
    r8 = *(r19 + r20);
    if (r8 == 0x0) goto loc_100b2c244;

loc_100b2c1f4:
    if (r8 == 0x3) goto loc_100b2c32c;

loc_100b2c1fc:
    if (*(int8_t *)(int64_t *)&r19->_playbackAVSyncResumeEnqueuing != 0x0) {
            [r19 resumeEnqueuingData];
            r8 = *(r19 + r20);
    }
    if (r8 == 0x4) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
            r0 = *(r19 + r21);
            r2 = 0x0;
    }
    else {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
            r0 = *(r19 + r21);
            r2 = &var_60;
    }
    if (([r0 startWithTimestamp:r2] & 0x1) == 0x0) goto loc_100b2c334;

loc_100b2c284:
    *(r19 + r20) = 0x3;
    if (*(int32_t *)(int64_t *)&r19->_pendingVolume != 0xffffffffcf000000 && *(int32_t *)(int64_t *)&r19->_pendingVolumeRampTime > 0x0) {
            [*(r19 + (r21 << @selector(startWithTimestamp:))) setVolume:r2];
    }
    if (*(int32_t *)(int64_t *)&r19->_pendingPlayRate != 0x800000) {
            [r19 setRate:r2];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_deferAudioLevelSetup));
    if (*(int8_t *)(r19 + r8) != 0x0) {
            *(int8_t *)(r19 + r8) = 0x0;
            [r19 enableLevelMeteringWithCallback:r19->_audioLevelCallback];
    }
    goto loc_100b2c32c;

loc_100b2c32c:
    r0 = 0x1;
    return r0;

loc_100b2c334:
    r0 = 0x0;
    *(r19 + r20) = 0x5;
    return r0;

loc_100b2c244:
    r0 = 0x0;
    return r0;
}

-(bool)_isAudioErrorFatal:(long long)arg2 {
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 <= 0x9 && (0x1 << r2 & 0x20e) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)audioQueueDidChangeRunning:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((arg2 & 0x1) != 0x0) {
            if (*(int32_t *)(int64_t *)&r19->_pendingVolume != 0xffffffffcf000000) {
                    [r19 setVolume:r2 rampTime:r3];
            }
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            if (*(r19 + r20) == 0x3) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x25d format:@"%@ Setting audio queue state to stop"];
                    *(r19 + r20) = 0x2;
            }
    }
    return;
}

-(void)audioQueueDidOutputForBuffer:(struct AudioQueueBuffer *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_buffersReturned));
    *(r0 + r8) = *(r0 + r8) + 0x1;
    if (r0->_state == 0x0) goto .l1;

loc_100b2cddc:
    r19 = r0;
    r8 = 0x0;
    r20 = (int64_t *)&r0->_audioQueueBuffer;
    goto loc_100b2cdf0;

loc_100b2cdf0:
    if (*r20 == r2) goto loc_100b2ce1c;

loc_100b2cdfc:
    r8 = r8 + 0x1;
    r20 = r20 + 0x50;
    if (r8 != 0x3) goto loc_100b2cdf0;

.l1:
    return;

loc_100b2ce1c:
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x2b3 format:@"%@ buffer available at index: %d"];
    r8 = *r20;
    *(int32_t *)(r8 + 0x10) = 0x0;
    *(int32_t *)(r8 + 0x30) = 0x0;
    *(int8_t *)(r20 + 0x48) = 0x0;
    [r19 _readDataIntoBuffer];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_audioLevelCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_errorCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_putDataCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_coreAudioWrapper, 0x0);
    return;
}

-(void)_readDataIntoBuffer {
    r0 = self;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_enqueueDataCalls));
    *(r0 + r8) = *(r0 + r8) + 0x1;
    if (*(int8_t *)(int64_t *)&r0->_hasNoMoreFramesToEnqueue != 0x0) goto loc_100b2c3d4;

loc_100b2c3a8:
    r19 = r0;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r0 + r27) < 0x5) {
            asm { ccmp       x8, #0x0, #0x4, ls };
    }
    if (CPU_FLAGS & E) goto loc_100b2c40c;

loc_100b2c3d4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100b2c40c:
    if (*(int8_t *)(int64_t *)&r19->_playbackAVSyncEnqueueBeforeStart != 0x0) goto loc_100b2c448;

loc_100b2c41c:
    [r19 getCurrentTime];
    sub_100a3e4dc(&stack[-152]);
    if (d0 < *double_value_0_005) goto loc_100b2c3d4;

loc_100b2c448:
    r9 = 0x25;
    r23 = (int64_t *)&r19->_audioQueueBuffer;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_activeBufferIndex));
    r8 = *(int32_t *)(r19 + r24);
    asm { smaddl     x9, w8, w22, x23 };
    r9 = *(int8_t *)(r9 + 0x48);
    if (r9 == 0x0) goto loc_100b2c4a8;

loc_100b2c474:
    r28 = &@class(MoPubAdapterMediatedNativeAd);
    goto loc_100b2c47c;

loc_100b2c47c:
    r0 = *(r28 + 0xe8);
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b2c4a0;

loc_100b2c4a0:
    objc_msgSend(r0, r1);
    goto loc_100b2c3d4;

loc_100b2c4a8:
    r28 = &@class(MoPubAdapterMediatedNativeAd);
    asm { sxtw       x9, w8 };
    goto loc_100b2c4cc;

loc_100b2c4cc:
    r25 = *(r23 + r9 * 0x50);
    if (r25 == 0x0) goto loc_100b2c744;

loc_100b2c4d8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferParams));
    r8 = r19 + r8;
    if (*(int32_t *)r8 != *(int32_t *)r25) goto loc_100b2c644;

loc_100b2c4f4:
    r8 = *(int32_t *)(r8 + 0x4);
    r10 = *(int32_t *)(r25 + 0x20);
    if (r8 != r10) goto loc_100b2c644;

loc_100b2c504:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_putDataCallback));
    r0 = *(r19 + r8);
    asm { madd       x8, x9, x22, x23 };
    r0 = (*(r0 + 0x10))(r0, r25, r8 + 0x8, 0x0, &var_89);
    r26 = r0;
    r9 = *(int32_t *)(r25 + 0x30);
    r8 = *(int32_t *)(r19 + r24);
    if (r9 == 0x0) goto loc_100b2c62c;

loc_100b2c540:
    r20 = @selector(logAtLevel:file:lineNumber:format:);
    asm { sxtw       x10, w8 };
    asm { madd       x10, x10, x22, x23 };
    *(int8_t *)(r10 + 0x48) = 0x1;
    r21 = r28;
    r0 = *(r28 + 0xe8);
    asm { fdiv       d0, d0, d1 };
    objc_msgSend(r0, r20);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_coreAudioWrapper));
    r0 = *(r19 + r28);
    if (var_89 != 0x0) {
            [r0 flush];
            r8 = var_89;
            r0 = *(r19 + r28);
            r9 = sign_extend_64(*(int32_t *)(r19 + r24));
            asm { madd       x9, x9, x22, x23 };
            r3 = r9 + 0x8;
            if (r8 != 0x0) {
                    r4 = 0x840;
                    r28 = r21;
            }
            else {
                    r28 = r21;
                    r4 = 0x0;
            }
    }
    else {
            r8 = sign_extend_64(*(int32_t *)(r19 + r24));
            asm { madd       x8, x8, x22, x23 };
            r3 = r8 + 0x8;
            r28 = r21;
            r4 = 0x0;
    }
    if (([r0 enqueueBuffer:r25 withStartTime:r3 andFramesToTrim:r4 outStartTime:&stack[-224]] & 0x1) == 0x0) goto loc_100b2c3d4;

loc_100b2c604:
    r8 = *(int32_t *)(r25 + 0x30);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_framesEnqueued));
    r10 = *(r19 + r9);
    *(r19 + r9) = r10 + r8;
    r8 = *(int32_t *)(r19 + r24);
    if (r8 == 0x2) {
            asm { csinc      w8, wzr, w8, eq };
    }
    *(int32_t *)(r19 + r24) = r8;
    goto loc_100b2c62c;

loc_100b2c62c:
    if ((r26 & 0x1) == 0x0) goto loc_100b2c74c;

loc_100b2c630:
    asm { sxtw       x9, w8 };
    asm { smaddl     x10, w8, w22, x23 };
    if (*(int8_t *)(r10 + 0x48) == 0x0) goto loc_100b2c4cc;
    goto loc_100b2c47c;

loc_100b2c74c:
    r0 = *(r28 + 0xe8);
    r1 = @selector(logAtLevel:file:lineNumber:format:);
    goto loc_100b2c4a0;

loc_100b2c644:
    [*(r28 + 0xe8) logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x219 format:@"%@ buffer does not have the expected attributes set -- moving to error state"];
    *(r19 + r27) = 0x5;
    r19 = r19->_errorCallback;
    if (r19 != 0x0) {
            [@(0x6f) retain];
            (*(r19 + 0x10))(r19, [[NSError errorWithDomain:@"FNFAudioQueue" code:0x3 userInfo:[[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x70 count:0x1] retain]] retain]);
            [r20 release];
            [r22 release];
            [r21 release];
    }
    goto loc_100b2c3d4;

loc_100b2c744:
    *(r19 + r27) = 0x0;
    goto loc_100b2c3d4;
}

+(struct AQBufferParameters)_calculateBufferSizeAndPacketCountWithAsbd:(struct AudioStreamBasicDescription)arg2 frameSize:(unsigned int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    r20 = r3;
    r19 = self;
    d0 = *r2;
    asm { ucvtf      d1, d1 };
    asm { fdiv       d8, d1, d0 };
    if (d8 > *0x100b9b588) {
            r8 = &@selector(getTemplateForKey:);
            objc_msgSend(@class(FBAdLogger), *(r8 + 0xae0));
    }
    asm { fdiv       d0, d9, d8 };
    asm { fcvtzu     w8, d0 };
    r9 = r8 * r20;
    asm { ucvtf      d0, w8 };
    d0 = d0 * 0x3ff8000000000000;
    asm { fcvtzu     w10, d0 };
    COND = r8 > 0x2;
    r11 = r9 << 0x1;
    r8 = r8 << 0x1;
    if (COND) {
            if (!CPU_FLAGS & A) {
                    r23 = r11;
            }
            else {
                    r23 = r9;
            }
    }
    if (CPU_FLAGS & A) {
            if (!CPU_FLAGS & A) {
                    r22 = r8;
            }
            else {
                    r22 = r10;
            }
    }
    if (r23 <= 0x3ff) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            r23 = 0x400;
    }
    else {
            if (r23 >= 0x40000) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    r23 = 0x40000;
            }
    }
    r20 = @selector(logAtLevel:file:lineNumber:format:);
    r0 = @class(FBAdLogger);
    asm { ucvtf      d0, w22 };
    objc_msgSend(r0, r20);
    r0 = r23;
    asm { bfi        x0, x22, #0x20, #0x20 };
    return r0;
}

-(void)audioQueueDidError:(void *)arg2 withStatus:(int)arg3 {
    r31 = r31 - 0x60;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_errorCallback));
    if (*(r21 + r23) != 0x0 && [r21 _isAudioErrorFatal:[r19 code]] != 0x0) {
            r0 = *(r21 + r23);
            (*(r0 + 0x10))(r0, r19);
    }
    if ([r19 code] == 0x4) {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            if (*(r21 + r25) == 0x3) {
                    r24 = [[r19 userInfo] retain];
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x271 format:@"%@ Setting audio queue state to failure on error: %@"];
                    [r24 release];
                    *(r21 + r25) = 0x5;
            }
            else {
                    if ([r19 code] != 0x9 && [r19 code] != 0x2 && [r19 code] != 0xa && [r19 code] != 0x3) {
                            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x277 format:@"Error handled without changing state, with status: %d"];
                    }
                    else {
                            r21->_state = 0x5;
                    }
            }
    }
    else {
            if ([r19 code] != 0x9 && [r19 code] != 0x2 && [r19 code] != 0xa && [r19 code] != 0x3) {
                    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFAudioQueue.mm" lineNumber:0x277 format:@"Error handled without changing state, with status: %d"];
            }
            else {
                    r21->_state = 0x5;
            }
    }
    if ([r19 code] == 0x1) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    }
    else {
            if ([r19 code] == 0x3) {
                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            }
            else {
                    if ([r19 code] == 0x5) {
                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                    }
                    else {
                            if ([r19 code] != 0x4) {
                                    if ([r19 code] == 0x6) {
                                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                    }
                                    else {
                                            if ([r19 code] == 0x7) {
                                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                            }
                                            else {
                                                    if ([r19 code] == 0x9) {
                                                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                    }
                                                    else {
                                                            if ([r19 code] == 0xa) {
                                                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                            }
                                                            else {
                                                                    if ([r19 code] == 0xb) {
                                                                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                                    }
                                                                    else {
                                                                            if ([r19 code] == 0xc) {
                                                                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                                            }
                                                                            else {
                                                                                    if ([r19 code] == 0xd) {
                                                                                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                                                    }
                                                                                    else {
                                                                                            if ([r19 code] == 0xe) {
                                                                                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                                                            }
                                                                                            else {
                                                                                                    if ([r19 code] == 0xf) {
                                                                                                            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                                                                    }
                                                                                                    else {
                                                                                                            if ([r19 code] == 0x2) {
                                                                                                                    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
                                                                                                            }
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    [r19 release];
    return;
}

@end