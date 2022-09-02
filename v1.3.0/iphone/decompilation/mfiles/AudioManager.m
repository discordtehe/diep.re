@implementation AudioManager

+(bool)isAudioManagerInitialized {
    r0 = self;
    if (*qword_1011da3c8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)sharedAudioManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da3c8;
    if (r0 == 0x0) {
            r0 = [AudioManager alloc];
            r0 = [r0 init];
            *0x1011da3c8 = r0;
    }
    return r0;
}

+(void)releaseSharedAudioManager {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da3c8 != 0x0) {
            [*0x1011da3c8 release];
            *0x1011da3c8 = 0x0;
    }
    return;
}

-(float)backgroundMusicVolume {
    r0 = *0x1011da3d0;
    r0 = [r0 backgroundMusicVolume];
    return r0;
}

-(void)setBackgroundMusicVolume:(float)arg2 {
    [*0x1011da3d0 setBackgroundMusicVolume:arg2];
    return;
}

-(void *)init {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *0x1011da3d0 = [SimpleAudioEngine sharedEngine];
            *(r19 + 0x8) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(r19 + 0x10) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(r19 + 0x18) = [[NSMutableArray arrayWithCapacity:0x5] retain];
            *(r19 + 0x20) = [[NSArray arrayWithObjects:@"caf"] retain];
            [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:r2 priority:r3 paused:r4];
    }
    r0 = r19;
    return r0;
}

-(float)effectsVolume {
    r0 = *0x1011da3d0;
    r0 = [r0 effectsVolume];
    return r0;
}

-(void)setEffectsVolume:(float)arg2 {
    [*0x1011da3d0 setEffectsVolume:arg2];
    return;
}

-(void)dealloc {
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
    [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:self];
    var_140 = self;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r19 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r21 * 0x8);
                            if ([r26 loaded] != 0x0) {
                                    r27 = *0x1011da3d0;
                                    [r26 filePath];
                                    [r27 unloadEffect:r2];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r0 = objc_msgSend(r20, var_138);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    r20 = var_140;
    r0 = *(r20 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r20 + 0x8) = 0x0;
    }
    r0 = *(r20 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r20 + 0x10) = 0x0;
    }
    r0 = *(r20 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r20 + 0x18) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [SimpleAudioEngine end];
    *0x1011da3d0 = 0x0;
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isPlayingBackgroundMusic {
    r0 = *0x1011da3d0;
    r0 = [r0 isBackgroundMusicPlaying];
    return r0;
}

-(bool)willPlayBackgroundMusic {
    r0 = *0x1011da3d0;
    r0 = [r0 willPlayBackgroundMusic];
    return r0;
}

-(bool)mute {
    r0 = *0x1011da3d0;
    r0 = [r0 mute];
    return r0;
}

-(void)setMute:(bool)arg2 {
    [*0x1011da3d0 setMute:arg2];
    return;
}

-(void)preloadBackgroundMusic:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getFullFilePathForSoundFile:arg2];
    if (r0 != 0x0) {
            r19 = r0;
            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    [*0x1011da3d0 preloadBackgroundMusic:r19];
            }
    }
    return;
}

-(void)playBackgroundMusic:(void *)arg2 {
    [self playBackgroundMusic:arg2 loop:0x1];
    return;
}

-(void)playBackgroundMusic:(void *)arg2 loop:(bool)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [self getFullFilePathForSoundFile:arg2];
    if (r0 != 0x0) {
            r20 = r0;
            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    [*0x1011da3d0 playBackgroundMusic:r20 loop:r19];
            }
    }
    return;
}

-(void)stopBackgroundMusic {
    [*0x1011da3d0 stopBackgroundMusic];
    return;
}

-(void *)getFullFilePathForSoundFile:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x140;
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
    if (r2 == 0x0) goto loc_1005eb034;

loc_1005eae9c:
    r19 = r2;
    r22 = r0;
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005eb034;

loc_1005eaec4:
    r0 = [r19 pathExtension];
    r21 = r0;
    if (r0 == 0x0 || ([r21 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005eaf30;

loc_1005eaef4:
    r0 = sub_1005d8bf8(r19, 0x3);
    if (r0 == 0x0) goto loc_1005eaf1c;

loc_1005eaf04:
    r27 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1005eb038;

loc_1005eaf1c:
    r19 = [r19 stringByDeletingPathExtension];
    goto loc_1005eaf30;

loc_1005eaf30:
    var_110 = q0;
    r22 = *(r22 + 0x20);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r22, r1);
    if (r0 == 0x0) goto loc_1005eb034;

loc_1005eaf64:
    r24 = r0;
    r28 = *var_110;
    goto loc_1005eaf78;

loc_1005eaf78:
    r23 = 0x0;
    goto loc_1005eaf84;

loc_1005eaf84:
    if (*var_110 != r28) {
            objc_enumerationMutation(r22);
    }
    r27 = *(var_118 + r23 * 0x8);
    if (r21 == 0x0 || ([r21 isEqualToString:r2] & 0x1) != 0x0 || ([r27 isEqualToString:r2] & 0x1) == 0x0) goto loc_1005eafd0;

loc_1005eb000:
    r23 = r23 + 0x1;
    if (r23 < r24) goto loc_1005eaf84;

loc_1005eb00c:
    r0 = objc_msgSend(r22, var_128);
    r24 = r0;
    if (r0 != 0x0) goto loc_1005eaf78;

loc_1005eb030:
    r27 = 0x0;
    goto loc_1005eb038;

loc_1005eb038:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005eafd0:
    r0 = [r19 stringByAppendingPathExtension:r2];
    r0 = sub_1005d8bf8(r0, 0x3);
    if (r0 == 0x0) goto loc_1005eb000;

loc_1005eafec:
    r27 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1005eb038;
    goto loc_1005eb000;

loc_1005eb034:
    r27 = 0x0;
    goto loc_1005eb038;
}

-(void)pauseBackgroundMusic {
    [*0x1011da3d0 pauseBackgroundMusic];
    return;
}

-(void)resumeBackgroundMusic {
    [*0x1011da3d0 resumeBackgroundMusic];
    return;
}

-(void)rewindBackgroundMusic {
    [*0x1011da3d0 rewindBackgroundMusic];
    return;
}

-(unsigned long long)getEffectNumInstances:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getSoundEffectEntry:arg2];
    if (r0 != 0x0) {
            r0 = [r0 soundInstanceDictionary];
            if (r0 != 0x0) {
                    r0 = [r0 count];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 volume:(float)arg3 loop:(bool)arg4 ignoreIfAlreadyPlaying:(bool)arg5 timePadding:(double)arg6 {
    r6 = arg6;
    r5 = arg5;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (arg4 == 0x0) {
            asm { cneg       w4, w8, eq };
    }
    r0 = [r0 playEffect:r2 volume:r3 loop:r4 maximumInstances:r5 timePadding:r6];
    return r0;
}

-(void *)getSoundEffectEntry:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto loc_1005eb214;

loc_1005eb1c0:
    r20 = r2;
    r21 = r0;
    if (([r20 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005eb214;

loc_1005eb1e8:
    r0 = [r20 stringByDeletingPathExtension];
    if (r0 == 0x0) goto loc_1005eb214;

loc_1005eb1fc:
    r23 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1005eb230;

loc_1005eb214:
    r19 = 0x0;
    goto loc_1005eb218;

loc_1005eb218:
    r0 = r19;
    return r0;

loc_1005eb230:
    r0 = *(r21 + 0x8);
    r2 = r23;
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1005eb2d4;

loc_1005eb248:
    r19 = r0;
    r22 = [r0 filePath];
    goto loc_1005eb25c;

loc_1005eb25c:
    if (([r19 dataUpdated] & 0x1) != 0x0) goto loc_1005eb2bc;

loc_1005eb270:
    r0 = *0x1011da3d0;
    r0 = [r0 soundSourceForFile:r22];
    if (r0 == 0x0) goto loc_1005eb214;

loc_1005eb28c:
    [r0 durationInSeconds];
    [r19 setDuration:r2];
    [r19 setDataUpdated:0x1];
    goto loc_1005eb2bc;

loc_1005eb2bc:
    [r19 setLoaded:0x1];
    goto loc_1005eb218;

loc_1005eb2d4:
    r0 = [r21 getFullFilePathForSoundFile:r20];
    if (r0 == 0x0) goto loc_1005eb214;

loc_1005eb2ec:
    r22 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005eb214;

loc_1005eb304:
    r2 = @"";
    r19 = [SoundEffectEntry object];
    [*(r21 + 0x8) setObject:r19 forKey:r23];
    [r19 setName:r20];
    [r19 setFilePath:r22];
    goto loc_1005eb25c;
}

-(unsigned int)playEffect:(void *)arg2 volume:(float)arg3 loop:(bool)arg4 ignoreIfAlreadyPlaying:(bool)arg5 {
    r0 = [self playEffect:arg2 volume:arg3 loop:arg4 ignoreIfAlreadyPlaying:arg5 timePadding:r6];
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 volume:(float)arg3 loop:(bool)arg4 maximumInstances:(unsigned int)arg5 timePadding:(double)arg6 {
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_50 = d9;
    stack[-88] = d8;
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
    if (r4 != 0x0) {
            r21 = r4;
            r22 = r3;
            v8 = v0;
            r20 = r0;
            r0 = [r0 getSoundEffectEntry:r2];
            if (r0 != 0x0) {
                    r19 = r0;
                    r0 = [r0 soundInstanceDictionary];
                    r23 = r0;
                    if (r0 != 0x0 && [r23 count] >= zero_extend_64(r21)) {
                            r21 = 0xffffffffffffffff;
                    }
                    else {
                            r21 = *0x1011da3d0;
                            r2 = [r19 filePath];
                            r0 = [r21 playEffect:r2 pitch:r22 pan:r4 gain:r5 loop:r6];
                            if (r0 != 0xfeedbab) {
                                    asm { ccmp       w0, w8, #0x4, ne };
                            }
                            if (!CPU_FLAGS & NE) {
                                    r21 = 0xffffffffffffffff;
                            }
                            else {
                                    r21 = r0;
                                    r0 = [SoundEffectInstance object];
                                    r24 = r0;
                                    [r0 setSoundId:r21];
                                    if ((r22 & 0x1) == 0x0) {
                                            asm { fmax       d9, d9, d0 };
                                            [r19 duration];
                                            asm { fcvt       d0, s0 };
                                            asm { fcvt       s0, d0 };
                                    }
                                    [r24 setTimeRemaining:r2];
                                    [r24 setPitch:r2];
                                    [r24 setPan:r2];
                                    [r24 setGain:r2];
                                    [r24 setLoop:r22];
                                    r22 = [NSNumber numberWithUnsignedInt:r21];
                                    [r23 setObject:r24 forKey:r22];
                                    [*(r20 + 0x10) setObject:r19 forKey:r22];
                                    if ([r19 preloaded] != 0x0) {
                                            [r19 setPreloaded:0x0];
                                    }
                            }
                    }
            }
            else {
                    r21 = 0xffffffffffffffff;
            }
    }
    else {
            r21 = 0xffffffffffffffff;
    }
    r0 = r21;
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 volume:(float)arg3 loop:(bool)arg4 {
    r0 = [self playEffect:arg2 volume:arg3 loop:0x0 ignoreIfAlreadyPlaying:r5];
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 volume:(float)arg3 {
    r0 = [self playEffect:arg2 volume:0x0 loop:0x0 ignoreIfAlreadyPlaying:r5];
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 {
    r0 = [self playEffect:arg2 volume:0x0 loop:0x0 ignoreIfAlreadyPlaying:r5];
    return r0;
}

-(void)preloadEffect:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getSoundEffectEntry:arg2];
    if (r0 != 0x0) {
            [r0 setPreloaded:0x1];
    }
    return;
}

-(void)stopEffect:(unsigned int)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = [NSNumber numberWithUnsignedInt:r2];
    r0 = *(r20 + 0x10);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            [[r0 soundInstanceDictionary] removeObjectForKey:r21];
            [*(r20 + 0x10) removeObjectForKey:r21];
            [*0x1011da3d0 stopEffect:r19];
    }
    return;
}

-(void)uncacheEffect:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getSoundEffectEntry:arg2];
    if (r0 != 0x0) {
            [r0 setCached:0x0];
    }
    return;
}

-(void)cacheEffect:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getSoundEffectEntry:arg2];
    if (r0 != 0x0) {
            [r0 setCached:0x1];
    }
    return;
}

-(float)getEffectLength:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getSoundEffectEntry:arg2];
    if (r0 != 0x0) {
            r0 = [r0 duration];
    }
    return r0;
}

-(void)update:(double)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x2d0;
    r27 = self;
    var_220 = q0;
    r0 = *(self + 0x8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_300 = r0;
    var_2C0 = r1;
    r0 = objc_msgSend(r0, r1);
    var_2E0 = r0;
    if (r0 != 0x0) {
            var_2F0 = *var_220;
            var_2B8 = r27;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_220 != var_2F0) {
                                    objc_enumerationMutation(var_300);
                            }
                            var_2C8 = r19;
                            r2 = *(var_228 + r19 * 0x8);
                            r0 = *(r27 + 0x8);
                            r0 = [r0 objectForKey:r2];
                            var_2D0 = r0;
                            r0 = [r0 soundInstanceDictionary];
                            r26 = r0;
                            var_260 = q0;
                            r0 = objc_msgSend(r0, var_2C0);
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    r21 = *var_260;
                                    do {
                                            r19 = 0x0;
                                            do {
                                                    if (*var_260 != r21) {
                                                            objc_enumerationMutation(r26);
                                                    }
                                                    r28 = *(var_268 + r19 * 0x8);
                                                    r0 = [r26 objectForKey:r28];
                                                    r25 = r0;
                                                    [r0 timeRemaining];
                                                    if (s0 >= 0x0) {
                                                            asm { fcvt       d0, s0 };
                                                            d0 = d0 - d8;
                                                            asm { fcvt       s0, d0 };
                                                            if (s0 <= 0x0) {
                                                                    [*(var_2B8 + 0x18) addObject:r28];
                                                                    s0 = 0x0;
                                                            }
                                                            [r25 setTimeRemaining:r2];
                                                    }
                                                    r19 = r19 + 0x1;
                                            } while (r19 < r20);
                                            r0 = objc_msgSend(r26, var_2C0);
                                            r20 = r0;
                                    } while (r0 != 0x0);
                            }
                            r27 = var_2B8;
                            r0 = *(r27 + 0x18);
                            if (r0 != 0x0 && [r0 count] != 0x0) {
                                    var_2A0 = q0;
                                    r20 = *(r27 + 0x18);
                                    r0 = objc_msgSend(r20, var_2C0);
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            r19 = *var_2A0;
                                            do {
                                                    r21 = 0x0;
                                                    do {
                                                            if (*var_2A0 != r19) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            r24 = @selector(removeObjectForKey:);
                                                            objc_msgSend(r26, r24);
                                                            objc_msgSend(*(r27 + 0x10), r24);
                                                            r21 = r21 + 0x1;
                                                    } while (r21 < r22);
                                                    r0 = objc_msgSend(r20, var_2C0);
                                                    r22 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [*(r27 + 0x18) removeAllObjects];
                            }
                            r21 = var_2D0;
                            r19 = var_2C8;
                            if (r26 == 0x0 || [r26 count] == 0x0) {
                                    if (([r21 preloaded] & 0x1) == 0x0 && [r21 loaded] != 0x0 && ([r21 cached] & 0x1) == 0x0) {
                                            [*0x1011da3d0 unloadEffect:[r21 filePath]];
                                            [r21 setLoaded:r2];
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < var_2E0);
                    r0 = objc_msgSend(var_300, var_2C0);
                    var_2E0 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end