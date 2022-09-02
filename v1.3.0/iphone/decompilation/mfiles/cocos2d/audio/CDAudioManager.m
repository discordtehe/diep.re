@implementation CDAudioManager

-(bool)audioSessionSetActive:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 setActive:r19 error:&var_18];
    if (r0 != 0x0) {
            *(int8_t *)(r20 + 0x44) = r19;
            r0 = 0x1;
    }
    return r0;
}

-(bool)audioSessionSetCategory:(void *)arg2 {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 setCategory:arg2 error:&var_18];
    return r0;
}

+(int)sharedManagerState {
    return *(int32_t *)0x1011d4ce0;
}

+(void *)sharedManager {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_sync_enter(self);
    if (*0x1011d4cd0 == 0x0) {
            if ((*(int8_t *)byte_1011d4cd8 & 0x1) == 0x0) {
                    *(int32_t *)0x1011d4cdc = 0x2;
            }
            *0x1011d4cd0 = [[CDAudioManager alloc] init:*(int32_t *)0x1011d4cdc];
            *(int32_t *)0x1011d4ce0 = 0x2;
            [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3];
    }
    objc_sync_exit(r19);
    return *0x1011d4cd0;
}

+(void)initAsynchronously:(int)arg2 {
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
    r19 = self;
    objc_sync_enter(self);
    if (*(int32_t *)0x1011d4ce0 == 0x0) {
            *(int32_t *)0x1011d4ce0 = 0x1;
            [CDAudioManager configure:r20];
            [[[[NSOperationQueue alloc] init] autorelease] addOperation:[[[CDAsynchInitialiser alloc] init] autorelease]];
    }
    objc_sync_exit(r19);
    return;
}

+(void *)alloc {
    objc_sync_enter(self);
    r0 = [[&var_20 super] alloc];
    objc_sync_exit(self);
    r0 = r20;
    return r0;
}

+(void)configure:(int)arg2 {
    *(int32_t *)0x1011d4cdc = arg2;
    *(int8_t *)0x1011d4cd8 = 0x1;
    return;
}

-(bool)isOtherAudioPlaying {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = AudioSessionGetProperty();
    if (0x0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)badAlContextHandler {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x43) != 0x0) {
            r19 = r0;
            if (alcGetCurrentContext() == 0x0) {
                    [r19 audioSessionResumed];
            }
    }
    return;
}

-(void)setMode:(int)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int32_t *)(self + 0x2c) = r2;
    if (r2 <= 0x4) {
            (0x100334584 + *(int8_t *)(0x100bc4926 + r2) * 0x4)();
    }
    else {
            r20 = *0x100e60000;
            r0 = [r19 isOtherAudioPlaying];
            if (r0 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r20 = *_AVAudioSessionCategorySoloAmbient;
                    }
                    else {
                            r20 = *0x100e60000;
                            r20 = r20;
                    }
            }
            r8 = r0 ^ 0x1;
            *(r19 + 0x20) = *r20;
            *(int8_t *)(r19 + 0x40) = r8;
            [r19 audioSessionSetCategory:r2];
    }
    return;
}

-(void)dealloc {
    [self stopBackgroundMusic];
    [*(self + 0x8) release];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self audioSessionSetActive:0x0];
    [*(self + 0x18) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)audioSourceForChannel:(int)arg2 {
    r0 = *(self + 0x18);
    r0 = [r0 objectAtIndex:r2];
    return r0;
}

-(void *)audioSourceLoad:(void *)arg2 channel:(int)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self audioSourceForChannel:arg3];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 load:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)init:(int)arg2 {
    r31 = r31 - 0x70;
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
    r23 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r22 = @selector(init);
            [AVAudioSession sharedInstance];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(interruption:) name:**_AVAudioSessionInterruptionNotification object:0x0];
            *(int32_t *)(r19 + 0x2c) = r23;
            *(r19 + 0x30) = 0x0;
            *(int32_t *)(r19 + 0x41) = 0x0;
            *(int16_t *)(r19 + 0x45) = 0x1;
            [r19 setMode:r23];
            *(r19 + 0x8) = objc_msgSend([CDSoundEngine alloc], r22);
            *(r19 + 0x18) = objc_msgSend([NSMutableArray alloc], r22);
            r0 = @class(CDLongAudioSource);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r24 = r0;
            [r0 setBackgroundMusic:0x1];
            r0 = @class(CDLongAudioSource);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            [r0 setBackgroundMusic:0x0];
            [*(r19 + 0x18) insertObject:r24 atIndex:0x0];
            [*(r19 + 0x18) insertObject:r0 atIndex:0x1];
            [r24 release];
            [r0 release];
            r0 = [r19 audioSourceForChannel:0x0];
            *(r19 + 0x10) = r0;
            [r0 setDelegate:r19];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(badAlContextHandler) name:*0x100e790d8 object:0x0];
    }
    r0 = r19;
    return r0;
}

-(bool)isBackgroundMusicPlaying {
    r0 = [self backgroundMusic];
    r0 = [r0 isPlaying];
    return r0;
}

-(bool)mute {
    r0 = *(int8_t *)(self + 0x41);
    return r0;
}

-(bool)isDeviceMuted {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    AudioSessionGetProperty();
    r0 = var_8;
    if (r0 != 0x0) {
            r0 = CFStringCompare(r0, @"", 0x0);
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)setMute:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x120;
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
    if (*(int8_t *)(r0 + 0x41) != r2) {
            r19 = r2;
            *(int8_t *)(r0 + 0x41) = r2;
            [*(r0 + 0x8) setMute:r2];
            var_100 = q0;
            r21 = *(r0 + 0x18);
            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r24 = *var_100;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_100 != r24) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_108 + r25 * 0x8) setMute:r19];
                                    r25 = r25 + 0x1;
                            } while (r25 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)backgroundMusic {
    r0 = *(self + 0x10);
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x45);
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x120;
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
    if (*(int8_t *)(r0 + 0x45) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + 0x45) = r2;
            [*(r0 + 0x8) setEnabled:r2];
            var_100 = q0;
            r21 = *(r19 + 0x18);
            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r24 = *var_100;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_100 != r24) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_108 + r25 * 0x8) setEnabled:*(int8_t *)(r19 + 0x45)];
                                    r25 = r25 + 0x1;
                            } while (r25 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)preloadBackgroundMusic:(void *)arg2 {
    [[self backgroundMusic] load:arg2];
    return;
}

-(void)stopBackgroundMusic {
    [[self backgroundMusic] stop];
    return;
}

-(void)playBackgroundMusic:(void *)arg2 loop:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[self backgroundMusic] load:arg2];
    r0 = [r19 backgroundMusic];
    r1 = @selector(setNumberOfLoops:);
    asm { sbfx       x2, x21, #0x0, #0x1 };
    objc_msgSend(r0, r1);
    if (*(int8_t *)(r19 + 0x40) != 0x0 && *(int8_t *)(r19 + 0x41) == 0x0) {
            [[r19 backgroundMusic] play];
    }
    return;
}

-(void)pauseBackgroundMusic {
    [[self backgroundMusic] pause];
    return;
}

-(void)resumeBackgroundMusic {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(r0 + 0x40) != 0x0 && *(int8_t *)(r0 + 0x41) == 0x0) {
            [[r0 backgroundMusic] resume];
    }
    return;
}

-(void)rewindBackgroundMusic {
    [[self backgroundMusic] rewind];
    return;
}

-(void)setBackgroundMusicCompletionListener:(void *)arg2 selector:(void *)arg3 {
    *(int128_t *)(self + 0x30) = arg3;
    *(int128_t *)(self + 0x38) = arg2;
    return;
}

-(void)setResignBehavior:(int)arg2 autoHandle:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x46) == 0x0) {
            asm { ccmp       w3, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            [[NSNotificationCenter defaultCenter] addObserver:r20 selector:@selector(applicationWillResignActive:) name:@"UIApplicationWillResignActiveNotification" object:0x0];
            [[NSNotificationCenter defaultCenter] addObserver:r20 selector:@selector(applicationDidBecomeActive:) name:@"UIApplicationDidBecomeActiveNotification" object:0x0];
            [[NSNotificationCenter defaultCenter] addObserver:r20 selector:@selector(applicationWillTerminate:) name:@"UIApplicationWillTerminateNotification" object:0x0];
            *(int8_t *)(r20 + 0x46) = 0x1;
    }
    *(int32_t *)(r20 + 0x48) = r19;
    return;
}

-(void)applicationWillResignActive:(void *)arg2 {
    [self applicationWillResignActive];
    return;
}

-(void)applicationWillResignActive {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    *(int8_t *)(self + 0x42) = 0x1;
    [self audioSessionSetCategory:**0x100e60000];
    r8 = *(int32_t *)(r19 + 0x48);
    if (r8 != 0x2) {
            if (r8 == 0x1) {
                    var_190 = q0;
                    r19 = *(r19 + 0x18);
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1E8 = r1;
                    r0 = objc_msgSend(r19, r1);
                    if (r0 != 0x0) {
                            r21 = r0;
                            r28 = *var_190;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*var_190 != r28) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r26 = *(var_198 + r20 * 0x8);
                                            if ([r26 isPlaying] != 0x0) {
                                                    *(int8_t *)(r26 + 0x33) = 0x1;
                                                    [[r26 audioSourcePlayer] currentTime];
                                                    *(r26 + 0x38) = d0;
                                            }
                                            else {
                                                    *(int8_t *)(r26 + 0x33) = 0x0;
                                            }
                                            [r26 stop];
                                            r20 = r20 + 0x1;
                                    } while (r20 < r21);
                                    r0 = objc_msgSend(r19, var_1E8);
                                    r21 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    else {
            var_1D0 = q0;
            r19 = *(r19 + 0x18);
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r23 = *var_1D0;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_1D0 != r23) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [*(var_1D8 + r25 * 0x8) stop];
                                    r25 = r25 + 0x1;
                            } while (r25 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)applicationDidBecomeActive:(void *)arg2 {
    [self applicationDidBecomeActive];
    return;
}

-(void)applicationDidBecomeActive {
    r0 = self;
    r31 = r31 - 0x130;
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
    if (*(int8_t *)(r0 + 0x42) != 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + 0x42) = 0x0;
            [r0 setMode:*(int32_t *)(r0 + 0x2c)];
            if (*(int32_t *)(r19 + 0x48) == 0x1 && [r19 willPlayBackgroundMusic] != 0x0) {
                    var_110 = q0;
                    r19 = *(r19 + 0x18);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r21 = r0;
                            r24 = *var_110;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_110 != r24) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r23 = *(var_118 + r26 * 0x8);
                                            if (*(int8_t *)(r23 + 0x33) != 0x0) {
                                                    [r23 resume];
                                                    *(int8_t *)(r23 + 0x33) = 0x0;
                                            }
                                            r26 = r26 + 0x1;
                                    } while (r26 < r21);
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r21 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)applicationWillTerminate:(void *)arg2 {
    [self stopBackgroundMusic];
    return;
}

-(void)cdAudioSourceDidFinishPlaying:(void *)arg2 {
    r0 = self;
    if (*(r0 + 0x30) != 0x0) {
            [*(r0 + 0x38) performSelector:r2];
    }
    return;
}

-(void)beginInterruption {
    [self audioSessionInterrupted];
    return;
}

-(void)endInterruption {
    [self audioSessionResumed];
    return;
}

-(void)endInterruptionWithFlags:(unsigned long long)arg2 {
    return;
}

-(void)endInterruptionWithOptions:(unsigned long long)arg2 {
    r0 = self;
    if (arg2 == 0x1) {
            [r0 audioSessionResumed];
    }
    return;
}

-(void)audioSessionInterrupted {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(r0 + 0x43) == 0x0) {
            *(int8_t *)(r0 + 0x43) = 0x1;
            [r0 audioSessionSetActive:0x0];
            if (alcGetCurrentContext() != 0x0) {
                    alcMakeContextCurrent(0x0);
                    alGetError();
            }
    }
    return;
}

+(void)end {
    [*0x1011d4cd0 release];
    *0x1011d4cd0 = 0x0;
    return;
}

-(void)audioSessionResumed {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x43) != 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + 0x43) = 0x0;
            if (([r0 audioSessionSetActive:r2] & 0x1) == 0x0) {
                    r22 = 0x0;
                    do {
                            [NSThread sleepForTimeInterval:r2];
                            r0 = objc_msgSend(r19, r20);
                            if (r22 > 0x8) {
                                break;
                            }
                            r22 = r22 + 0x1;
                    } while (r0 == 0x0);
            }
            if (alcGetCurrentContext() == 0x0) {
                    alcMakeContextCurrent([*(r19 + 0x8) openALContext]);
                    alGetError();
            }
    }
    return;
}

-(void *)soundEngine {
    r0 = *(self + 0x8);
    return r0;
}

-(void)interruption:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 userInfo];
    r20 = r0;
    r0 = [r0 valueForKey:r2];
    if (r0 != 0x0) {
            if (r0 == 0x1) {
                    [r19 beginInterruption];
            }
    }
    else {
            [r19 endInterruptionWithOptions:[r20 valueForKey:r2]];
    }
    return;
}

-(bool)willPlayBackgroundMusic {
    r0 = *(int8_t *)(self + 0x40) & 0x1;
    return r0;
}

@end