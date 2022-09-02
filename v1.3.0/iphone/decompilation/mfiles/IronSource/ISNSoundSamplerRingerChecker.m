@implementation ISNSoundSamplerRingerChecker

+(void *)shared {
    if (*qword_1011daca0 != -0x1) {
            dispatch_once(0x1011daca0, 0x100e8d2b8);
    }
    r0 = *0x1011dac98;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [r19 createAndSaveSamplingSound];
            r20 = (int64_t *)&r19->_soundId;
            if (AudioServicesCreateSystemSoundID(r0, r20) != 0x0) {
                    [r19 setSoundId:0xffffffffffffffff];
            }
            else {
                    AudioServicesAddSystemSoundCompletion([r19 soundId], CFRunLoopGetMain(), **_kCFRunLoopDefaultMode, 0x1007008e8, r19);
                    AudioServicesSetProperty(0x69737569, 0x4, r20, 0x4, &var_34);
                    [r19 setForceEmit:0x1];
                    [r19 setPaused:0x1];
                    [r19 addBackgroundForgoundObservers];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)createAndSaveSamplingSound {
    r19 = [[NSData alloc] initWithBase64EncodedString:@"Y2FmZgABAABkZXNjAAAAAAAAACBAv0AAAAAAAGxwY20AAAAAAAAAAgAAAAEAAAABAAAAEGZyZWUAAAAAAAAPsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA…" options:0x0];
    r0 = @class(ISNLightCacheManager);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 saveDataOnRootDirectory:r19 fileName:@"isnmuted.caf" error:0x0];
    [r0 release];
    r0 = @class(ISNLightCacheManager);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 fileUrlForFileNameOnRootDirectory:@"isnmuted.caf"] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)scheduleCallWithDelay:(double)arg2 {
    [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(loopCheck) object:0x0];
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(void)addBackgroundForgoundObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(ISNSoundSamplerDidEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(ISNSoundSamplerWillReturnToForeground) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    return;
}

-(void)complete {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self setPlaying:0x0];
    [NSDate timeIntervalSinceReferenceDate];
    [r19 interval];
    d8 = d8 - d0;
    if (d8 < *0x100b9b5c0) {
            if (CPU_FLAGS & S) {
                    r20 = 0x1;
            }
    }
    if ((([r19 isSilentOn] ^ r20) & 0x1) != 0x0 || [r19 forceEmit] != 0x0) {
            [r19 setForceEmit:0x0];
            *(int8_t *)(int64_t *)&r19->_silentOn = r20;
            r0 = [r19 statusHandler];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            [r0 release];
            if (r21 != 0x0) {
                    if (d8 < *0x100b9b5c0) {
                            if (CPU_FLAGS & S) {
                                    r21 = 0x1;
                            }
                    }
                    (*([[r19 statusHandler] retain] + 0x10))();
                    [r20 release];
            }
    }
    if ([r19 loopCounter] <= 0xef) {
            r2 = [r19 loopCounter] + 0x1;
            [r19 setLoopCounter:r2];
            [r19 scheduleCallWithDelay:r2];
    }
    else {
            [r19 stopDetecting];
    }
    return;
}

-(void)loopCheck {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isPaused] & 0x1) == 0x0) {
            [NSDate timeIntervalSinceReferenceDate];
            [r19 setInterval:r2];
            [r19 setPlaying:0x1];
            AudioServicesPlaySystemSound([r19 soundId]);
    }
    return;
}

-(void)ISNSoundSamplerDidEnterBackground {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isPaused] & 0x1) == 0x0) {
            [r19 setPaused:0x1];
            [r19 setContinueInForground:0x1];
    }
    return;
}

-(void)ISNSoundSamplerWillReturnToForeground {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self shouldContinueInForground] != 0x0) {
            [r19 setContinueInForground:0x0];
            [r19 setPaused:0x0];
            if (([r19 isPlaying] & 0x1) == 0x0) {
                    [r19 scheduleCallWithDelay:0x0];
            }
    }
    return;
}

-(void)stopDetecting {
    [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(loopCheck) object:0x0];
    [self setLoopCounter:0x0];
    [self setPaused:0x1];
    return;
}

-(void)startDetecting {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isPaused] != 0x0) {
            [r19 setForceEmit:0x1];
            [r19 setPaused:0x0];
            [r19 scheduleCallWithDelay:0x0];
    }
    return;
}

-(void)setStatusHandler:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_statusHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [self setForceEmit:0x1];
    return;
}

-(void *)statusHandler {
    r0 = self->_statusHandler;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isSilentOn {
    r0 = *(int8_t *)(int64_t *)&self->_silentOn;
    return r0;
}

-(bool)isActive {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self soundId];
    if (r0 != -0x1) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isDetecting {
    r0 = [self isPaused];
    r0 = r0 ^ 0x1;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self soundId] != -0x1) {
            AudioServicesRemoveSystemSoundCompletion([r19 soundId]);
            AudioServicesDisposeSystemSoundID([r19 soundId]);
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(double)interval {
    r0 = self;
    return r0;
}

-(void)setInterval:(double)arg2 {
    self->_interval = d0;
    return;
}

-(void)setSoundId:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->_soundId = arg2;
    return;
}

-(unsigned int)soundId {
    r0 = *(int32_t *)(int64_t *)&self->_soundId;
    return r0;
}

-(bool)isPaused {
    r0 = *(int8_t *)(int64_t *)&self->_paused & 0x1;
    return r0;
}

-(bool)forceEmit {
    r0 = *(int8_t *)(int64_t *)&self->_forceEmit & 0x1;
    return r0;
}

-(void)setForceEmit:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceEmit = arg2;
    return;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(bool)isPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_playing;
    return r0;
}

-(void)setPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playing = arg2;
    return;
}

-(bool)shouldContinueInForground {
    r0 = *(int8_t *)(int64_t *)&self->_continueInForground;
    return r0;
}

-(void)setContinueInForground:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_continueInForground = arg2;
    return;
}

-(long long)loopCounter {
    r0 = self->_loopCounter;
    return r0;
}

-(void)setLoopCounter:(long long)arg2 {
    self->_loopCounter = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_statusHandler, 0x0);
    return;
}

@end