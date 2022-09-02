@implementation FNFPlayer

-(void *)initWithDisplayEngine:(void *)arg2 config:(union ?)arg3 asyncTimebase:(bool)arg4 enableOpus:(bool)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r25 = [arg2 retain];
    r0 = [FNFRealClock alloc];
    r23 = [r0 initWithShouldCreateTimebase:r4 ^ 0x1 playerConfig:&var_60];
    r19 = [self initWithDisplayEngine:r25 clock:r23 config:&var_80 asyncTimebase:r4 enableOpus:r5];
    [r25 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)initWithDisplayEngine:(void *)arg2 {
    r0 = [self initWithDisplayEngine:arg2 config:&var_18 asyncTimebase:0x0 enableOpus:0x0];
    return r0;
}

-(void *)initWithDisplayEngine:(void *)arg2 clock:(void *)arg3 config:(union ?)arg4 asyncTimebase:(bool)arg5 enableOpus:(bool)arg6 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0xd0;
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
    r24 = r6;
    r23 = r5;
    r21 = r4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (**_kCFCoreFoundationVersionNumber < *double_value_1140_1) {
            r21 = 0x0;
    }
    else {
            r0 = [[&var_60 super] init];
            r22 = r0;
            if (r0 != 0x0) {
                    r26 = @selector(init);
                    r0 = [FNFAudioQueue alloc];
                    r0 = objc_msgSend(r0, r26);
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_defaultAudioEngine));
                    r8 = *(r22 + r26);
                    *(r22 + r26) = r0;
                    [r8 release];
                    if (r24 != 0x0) {
                            r0 = [FNFDefaultAudioDecoder new];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_defaultAudioDecoder));
                            r8 = *(r22 + r9);
                            *(r22 + r9) = r0;
                            [r8 release];
                    }
                    r24 = [FNFSynchronousPlayer alloc];
                    r25 = *(r22 + r26);
                    r26 = r22->_defaultAudioDecoder;
                    r0 = sub_100b37780();
                    r29 = r29;
                    r27 = [r0 retain];
                    r0 = [r24 initWithDisplayEngine:r19 config:&var_80 audioEngine:r25 audioDecoder:r26 clock:r20 runningQueue:r27 muted:0x1 asyncTimebase:stack[-200]];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_synchronousPlayer));
                    r8 = *(r22 + r24);
                    *(r22 + r24) = r0;
                    [r8 release];
                    [r27 release];
                    if (r23 != 0x0) {
                            r0 = sub_100b37780();
                            r29 = r29;
                            r23 = [r0 retain];
                            var_90 = [r20 retain];
                            var_88 = [r19 retain];
                            dispatch_async(r23, &var_B0);
                            [r23 release];
                            [var_88 release];
                            [var_90 release];
                    }
                    [*(r22 + r24) setDelegate:r22];
                    if (([r19 allowRenderingWhileApplicationInactive] & 0x1) == 0x0) {
                            r0 = @class(NSNotificationCenter);
                            r0 = [r0 defaultCenter];
                            r0 = [r0 retain];
                            [r0 addObserver:r22 selector:@selector(_applicationWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
                            [r0 release];
                            r0 = @class(NSNotificationCenter);
                            r0 = [r0 defaultCenter];
                            r0 = [r0 retain];
                            [r0 addObserver:r22 selector:@selector(_applicationDidBecomeActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
                            [r0 release];
                    }
                    *(int8_t *)(int64_t *)&r22->_shouldInvalidateDisplayEngineInDealloc = *(int8_t *)(r21 + 0xc);
                    *(int8_t *)(int64_t *)&r22->_updateWithPlayRateFromInternalState = *(int8_t *)(r21 + 0xd);
                    [r22 _resetLastSeekTimeInterval];
            }
            r0 = [r22 retain];
            r22 = r0;
            r21 = r0;
    }
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r21;
    return r0;
}

-(void)_applicationWillResignActive {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)play {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)_applicationDidBecomeActive {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)setRenderer:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)pause {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)setCaptionParser:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setAudioEngine:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r20 = [r19->_defaultAudioEngine retain];
    }
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setAudioDecoder:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r20 = [r19->_defaultAudioDecoder retain];
    }
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)replaceCurrentItemWithPlayerItem:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setMuted:(bool)arg2 {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_50);
    [r21 release];
    return;
}

-(void)replaceCurrentItemWithPlayerItem:(void *)arg2 loggingContext:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [arg3 retain];
    r21 = r0;
    if (r0 == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"Libraries/FNFPlayer/FNFPlayer/FNFPlayer.mm" lineNumber:0xb6 format:@"logging context is nil"];
    }
    r22 = [sub_100b37780() retain];
    var_30 = r20;
    [r20 retain];
    [r21 retain];
    dispatch_async(r22, &var_58);
    [r22 release];
    [r21 release];
    [var_30 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setVolume:(float)arg2 {
    [self setVolume:arg2 rampTime:r3];
    return;
}

-(void)setVolume:(float)arg2 rampTime:(float)arg3 {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_50);
    [r20 release];
    return;
}

-(void)setRate:(float)arg2 {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_50);
    [r20 release];
    return;
}

-(void)setLiveTraceManager:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setAllowsExternalPlayback:(bool)arg2 {
    return;
}

-(float)volume {
    r0 = self->_synchronousPlayer;
    r0 = [r0 volume];
    return r0;
}

-(float)rate {
    r0 = self;
    return r0;
}

-(bool)allowsExternalPlayback {
    return 0x0;
}

-(bool)isMuted {
    r0 = self->_synchronousPlayer;
    r0 = [r0 isMuted];
    return r0;
}

-(void *)error {
    r0 = self->_synchronousPlayer;
    r0 = [r0 error];
    return r0;
}

-(long long)status {
    r0 = self->_status;
    return r0;
}

-(void *)currentItem {
    r0 = self->_currentItem;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(union ?)currentTime {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_synchronousPlayer;
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

-(union ?)lastStartingTime {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_synchronousPlayer;
    if (r0 != 0x0) {
            r0 = [r0 lastStartingTime];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
    }
    return r0;
}

-(union ?)lastRequestedStartTime {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_synchronousPlayer;
    if (r0 != 0x0) {
            r0 = [r0 lastRequestedStartTime];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
    }
    return r0;
}

-(void *)addPeriodicTimeObserverForInterval:(union ?)arg2 queue:(void *)arg3 usingBlock:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [r3 retain];
    r0 = [self addPeriodicTimeObserverForInterval:&var_40 queue:r22 followMasterClock:0x1 usingBlock:r4];
    r19 = [r0 retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)addPeriodicTimeObserverForInterval:(union ?)arg2 queue:(void *)arg3 followMasterClock:(bool)arg4 usingBlock:(void *)arg5 {
    memcpy(&r2, &arg2, 0x8);
    r23 = [r3 retain];
    r24 = [r5 retain];
    r25 = self->_synchronousPlayer;
    var_60 = r23;
    [r23 retain];
    [r24 retain];
    r22 = [[r25 createPeriodicTimeObserverForInterval:&var_A0 followMasterClock:r4 usingBlock:&var_80] retain];
    r23 = [sub_100b37780() retain];
    [r22 retain];
    dispatch_async(r23, &var_D0);
    [r23 release];
    r21 = objc_retainAutoreleaseReturnValue(r21);
    [r0 release];
    [r21 release];
    [r24 release];
    [var_60 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)prepareToSeekWithTime:(union ?)arg2 handler:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r3 retain];
    r22 = [sub_100b37780() retain];
    [r21 retain];
    dispatch_async(r22, &var_68);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)seekToTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self seekToTime:&var_20 completionHandler:0x0];
    return;
}

-(void)seekToTime:(union ?)arg2 toleranceBefore:(union ?)arg3 toleranceAfter:(union ?)arg4 completionHandler:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r23 = [r5 retain];
    r24 = [sub_100b37780() retain];
    [r23 retain];
    dispatch_async(r24, &var_A8);
    [r24 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)seekToTime:(union ?)arg2 throttleRate:(double)arg3 toleranceBefore:(union ?)arg4 toleranceAfter:(union ?)arg5 completionHandler:(void *)arg6 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x170;
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
    r21 = r4;
    r22 = r3;
    r23 = r2;
    r20 = self;
    r19 = [r5 retain];
    [r20 _removeSeekThrottlingTimer];
    CACurrentMediaTime();
    r0 = [r20 _hasNotPerformedPreviousSeek];
    if ((r0 & 0x1) == 0x0) {
            d0 = r20->_lastSeekTimeInterval;
            if (d9 - d0 > d8) {
                    [r20 seekToTime:r29 - 0x70 toleranceBefore:r29 - 0x90 toleranceAfter:&var_B0 completionHandler:r19];
                    CACurrentMediaTime();
                    r20->_lastSeekTimeInterval = d0;
            }
            else {
                    asm { fcvtzs     x0, d0 };
                    CMTimeMake(r0, 0x3e8);
                    objc_initWeak(&stack[-224], r20);
                    [sub_100b37780() retain];
                    objc_copyWeak(&var_148 + 0x28, &stack[-224]);
                    var_128 = [r19 retain];
                    r0 = [r20 addPeriodicTimeObserverForInterval:&var_160 queue:r25 usingBlock:&var_148];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_seekThrottlingTimer));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r25 release];
                    [var_128 release];
                    objc_destroyWeak(&var_148 + 0x28);
                    objc_destroyWeak(&stack[-224]);
            }
    }
    else {
            [r20 seekToTime:r29 - 0x70 toleranceBefore:r29 - 0x90 toleranceAfter:&var_B0 completionHandler:r19];
            CACurrentMediaTime();
            r20->_lastSeekTimeInterval = d0;
    }
    [r19 release];
    return;
}

-(void)_removeSeekThrottlingTimer {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_seekThrottlingTimer));
    if (*(r0 + r20) != 0x0) {
            r19 = r0;
            [r0 removeTimeObserver:r2];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(bool)_hasNotPerformedPreviousSeek {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_lastSeekTimeInterval == 0xbff0000000000000) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)_resetLastSeekTimeInterval {
    self->_lastSeekTimeInterval = 0xbff0000000000000;
    return;
}

-(void)seekToTime:(union ?)arg2 toleranceBefore:(union ?)arg3 toleranceAfter:(union ?)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [self seekToTime:&saved_fp - 0x20 toleranceBefore:&var_40 toleranceAfter:&var_60 completionHandler:0x0];
    return;
}

-(void)seekToTime:(union ?)arg2 completionHandler:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r3 retain];
    r22 = [sub_100b37780() retain];
    [r21 retain];
    dispatch_async(r22, &var_68);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)removeTimeObserver:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addLevelMeterCallback:(void *)arg2 timeInterval:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r21 = [arg2 retain];
    r22 = [sub_100b37780() retain];
    [r21 retain];
    dispatch_async(r22, &var_68);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)removeLevelMeterCallback {
    r0 = sub_100b37780();
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)addRepresentationChangedCallback:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)invalidate {
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(int8_t *)(int64_t *)&r0->_shouldInvalidateDisplayEngineInDealloc == 0x0) {
            r19 = [r0->_synchronousPlayer retain];
            r20 = [sub_100b37780() retain];
            var_18 = r19;
            [r19 retain];
            dispatch_async(r20, &var_38);
            [r20 release];
            [var_18 release];
            [r19 release];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_synchronousPlayer));
    [*(self + r21) setDelegate:0x0];
    r0 = [NSNotificationCenter defaultCenter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    objc_storeWeak((int64_t *)&r19->_stateUpdateListener, 0x0);
    if (*(int8_t *)(int64_t *)&r19->_shouldInvalidateDisplayEngineInDealloc != 0x0) {
            r20 = [*(r19 + r21) retain];
            r21 = [sub_100b37780() retain];
            var_28 = r20;
            [r20 retain];
            dispatch_async(r21, &var_48);
            [r21 release];
            [var_28 release];
            [r20 release];
    }
    [[&var_58 super] dealloc];
    return;
}

-(void)setPlayerStateUpdateListener:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [sub_100b37780() retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_seekThrottlingTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_stateUpdateListener);
    objc_storeStrong((int64_t *)&self->_currentItem, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultAudioDecoder, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultAudioEngine, 0x0);
    objc_storeStrong((int64_t *)&self->_synchronousPlayer, 0x0);
    return;
}

-(void)synchronousPlayer:(void *)arg2 stateUpdated:(unsigned long long)arg3 playerState:(struct FNFPlayerInternalState)arg4 loggingContext:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
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
    r31 = r31 + 0xffffffffffffff90 - 0x440;
    r20 = r4;
    r26 = arg3;
    r21 = self;
    r28 = [arg2 retain];
    r25 = [r5 retain];
    if (*(int8_t *)(int64_t *)&r21->_updateWithPlayRateFromInternalState != 0x0) {
            s8 = *(int32_t *)(r20 + 0x88);
    }
    else {
            [r28 rate];
    }
    if (r26 == 0x2) goto loc_100b3536c;

loc_100b352ec:
    if (r26 == 0x1) goto loc_100b353dc;

loc_100b352f4:
    if (r26 != 0x0) goto loc_100b35490;

loc_100b352f8:
    r23 = [[NSString stringWithUTF8String:0x100cd8040] retain];
    [r21 willChangeValueForKey:r23];
    [r23 release];
    r21->_status = *(r20 + 0xf0);
    r0 = @class(NSString);
    r0 = [r0 stringWithUTF8String:0x100cd8040];
    r29 = r29;
    goto loc_100b3546c;

loc_100b3546c:
    r19 = [r0 retain];
    [r21 didChangeValueForKey:r19];
    [r19 release];
    goto loc_100b35490;

loc_100b35490:
    r0 = objc_loadWeakRetained((int64_t *)&r21->_stateUpdateListener);
    var_3C8 = r28;
    var_3E8 = r0;
    if (r0 != 0x0) {
            r23 = r0;
            var_3F8 = r26;
            var_3F0 = r25;
            var_44C = *(int8_t *)r20;
            var_448 = *(int8_t *)(r20 + 0x1);
            var_444 = *(int8_t *)(r20 + 0x2);
            var_440 = *(int8_t *)(r20 + 0x9);
            var_43C = *(int8_t *)(r20 + 0xb);
            q0 = *(int128_t *)(r20 + 0xc);
            var_140 = *(r20 + 0x1c);
            var_150 = q0;
            q0 = *(int128_t *)(r20 + 0x24);
            var_160 = *(r20 + 0x34);
            var_170 = q0;
            var_3D0 = r20 + 0x90;
            var_460 = [*(r20 + 0x90) retain];
            var_3D8 = r20 + 0x98;
            var_468 = [*(r20 + 0x98) retain];
            var_3E0 = r20 + 0xa0;
            var_470 = [*(r20 + 0xa0) retain];
            var_400 = r20 + 0xa8;
            var_478 = [*(r20 + 0xa8) retain];
            var_408 = r20 + 0xb0;
            var_480 = [*(r20 + 0xb0) retain];
            var_410 = r20 + 0xb8;
            var_488 = [*(r20 + 0xb8) retain];
            r20 = r20 + 0xe0;
            r19 = [*r20 retain];
            var_458 = *(r20 + 0x10);
            var_180 = *(int128_t *)(r20 + 0x18);
            var_1A0 = *(int128_t *)(r20 + 0x28);
            stack[-416] = *(int128_t *)(r20 + 0x38);
            var_418 = r20 + 0x48;
            var_490 = objc_retainBlock(*(r20 + 0x48));
            var_498 = [*(r20 + 0x50) retain];
            r26 = [*(r20 + 0x58) retain];
            r27 = [*(r20 + 0x60) retain];
            r22 = [*(r20 + 0x68) retain];
            q0 = *(int128_t *)(r20 + 0x70);
            var_1B0 = *(r20 + 0x80);
            var_1C0 = q0;
            r0 = r21->_synchronousPlayer;
            if (r0 != 0x0) {
                    r24 = &var_1D8;
                    [r0 currentTime];
            }
            else {
                    r24 = &var_1D8;
            }
            var_420 = r20 + 0x50;
            var_428 = r20 + 0x58;
            var_430 = r20 + 0x60;
            var_438 = r20 + 0x68;
            r0 = [r28 currentItem];
            r0 = [r0 retain];
            r2 = r28;
            r28 = r0;
            r25 = [[r2 error] retain];
            [r28 retain];
            [r25 retain];
            var_B0 = var_180;
            q0 = *(int128_t *)r24;
            *((r29 - 0x93) + 0x13) = *(r24 + 0x10);
            *(int128_t *)((r29 - 0x93) + 0x3) = q0;
            var_D0 = var_150;
            var_C0 = var_140;
            var_F0 = var_170;
            var_E0 = var_160;
            r21 = r19;
            [r19 retain];
            [r28 retain];
            var_110 = var_1A0;
            stack[-272] = stack[-416];
            [r25 retain];
            [r26 retain];
            [r27 retain];
            r24 = r22;
            [r22 retain];
            [r25 release];
            [r28 release];
            var_130 = var_1C0;
            var_120 = var_1B0;
            [r22 release];
            [r27 release];
            [r26 release];
            [var_498 release];
            [var_490 release];
            [r19 release];
            [var_488 release];
            [var_480 release];
            [var_478 release];
            [var_470 release];
            [var_468 release];
            [var_460 release];
            [r25 release];
            [r28 release];
            r0 = [r23 playerStateUpdateCallbackQueue];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r19 = [[r23 playerStateUpdateCallbackQueue] retain];
                    var_2C8 = [r23 retain];
                    *(int128_t *)(&var_2E8 + 0x40) = var_B0;
                    *(int128_t *)(&var_2E8 + 0x55) = *(int128_t *)(r29 - 0x93);
                    *(int128_t *)(&var_2E8 + 0x60) = *(int128_t *)((r29 - 0x93) + 0xb);
                    *(int128_t *)(&var_2E8 + 0x70) = var_D0;
                    *(int128_t *)(&var_2E8 + 0x88) = var_F0;
                    var_248 = [r21 retain];
                    var_238 = [r28 retain];
                    var_230 = [r25 retain];
                    *(int128_t *)(&var_2E8 + 0xc0) = var_110;
                    *(int128_t *)(&var_2E8 + 0xd0) = stack[-272];
                    var_208 = [r26 retain];
                    var_200 = [r27 retain];
                    var_1F8 = [r24 retain];
                    *(int128_t *)(&var_2E8 + 0xf8) = var_130;
                    var_2C0 = [var_3F0 retain];
                    dispatch_async(r19, &var_2E8);
                    [r19 release];
                    [var_2C0 release];
                    [var_1F8 release];
                    [var_200 release];
                    [var_208 release];
                    [var_230 release];
                    [var_238 release];
                    [var_248 release];
                    [var_2C8 release];
            }
            else {
                    *(int128_t *)(&stack[-1191] + 0xff) = *(int128_t *)((r29 - 0x93) + 0xb);
                    *(int128_t *)(&stack[-1175] + 0xff) = var_D0;
                    [r21 retain];
                    [r28 retain];
                    [r25 retain];
                    *(int128_t *)(&var_3C0 + 0x88) = var_110;
                    *(int128_t *)(&var_3C0 + 0x98) = stack[-272];
                    [r26 retain];
                    [r27 retain];
                    [r24 retain];
                    [r23 playerStateUpdated:var_3F8 playerState:&var_3C0 loggingContext:var_3F0];
            }
            r19 = r21;
            r21 = var_400;
            [r24 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r28 release];
            [r19 release];
            r25 = var_3F0;
            r27 = var_410;
            r26 = var_408;
            r28 = var_420;
            r23 = var_418;
            r24 = var_430;
            r19 = var_428;
            r22 = var_438;
    }
    else {
            r22 = r20 + 0x148;
            r24 = r20 + 0x140;
            r19 = r20 + 0x138;
            r28 = r20 + 0x130;
            r23 = r20 + 0x128;
            r27 = r20 + 0xb8;
            r26 = r20 + 0xb0;
            r21 = r20 + 0xa8;
            var_3E0 = r20 + 0xa0;
            var_3D8 = r20 + 0x98;
            var_3D0 = r20 + 0x90;
            r20 = r20 + 0xe0;
    }
    var_78 = **___stack_chk_guard;
    [var_3E8 release];
    [r25 release];
    [*r22 release];
    [*r24 release];
    [*r19 release];
    [*r28 release];
    [*r23 release];
    [*r20 release];
    [*r27 release];
    [*r26 release];
    [*r21 release];
    [*var_3E0 release];
    [*var_3D8 release];
    [*var_3D0 release];
    [var_3C8 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;

loc_100b353dc:
    r23 = [[NSString stringWithUTF8String:0x100cd804c] retain];
    [r21 willChangeValueForKey:r23];
    [r23 release];
    r0 = [r28 currentItem];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentItem));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = @class(NSString);
    r0 = [r0 stringWithUTF8String:0x100cd804c];
    r29 = r29;
    goto loc_100b3546c;

loc_100b3536c:
    r23 = [[NSString stringWithUTF8String:0x100cd805d] retain];
    [r21 willChangeValueForKey:r23];
    [r23 release];
    *(int32_t *)(int64_t *)&r21->_rate = s8;
    r0 = @class(NSString);
    r0 = [r0 stringWithUTF8String:0x100cd805d];
    r29 = r29;
    goto loc_100b3546c;
}

@end