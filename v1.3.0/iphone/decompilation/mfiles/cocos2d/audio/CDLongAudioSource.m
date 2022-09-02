@implementation CDLongAudioSource

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x40) = 0x0;
            *(int32_t *)(r0 + 0x20) = 0x3f800000;
            *(int16_t *)(r0 + 0x30) = 0x100;
    }
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)play {
    r0 = self;
    if (*(int8_t *)(r0 + 0x31) != 0x0) {
            *(int8_t *)(r0 + 0x33) = 0x0;
            [*(r0 + 0x8) play];
    }
    return;
}

-(void)stop {
    [*(self + 0x8) stop];
    return;
}

-(void)pause {
    [*(self + 0x8) pause];
    return;
}

-(void)rewind {
    [*(self + 0x8) setCurrentTime:r2];
    return;
}

-(void)load:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (*(int32_t *)(self + 0x40) == 0x0) goto loc_100333c3c;

loc_100333bd8:
    r2 = *(r19 + 0x10);
    if (([r20 isEqualToString:r2] & 0x1) == 0x0) goto loc_100333c14;

loc_100333bf0:
    [r19 pause];
    [r19 rewind];
    goto loc_100333e40;

loc_100333e40:
    [*(r19 + 0x8) setVolume:r2];
    [*(r19 + 0x8) setNumberOfLoops:*(r19 + 0x18)];
    *(int32_t *)(r19 + 0x40) = 0x1;
    return;

loc_100333c14:
    if (*(int32_t *)(r19 + 0x40) != 0x0) {
            [*(r19 + 0x10) release];
            [*(r19 + 0x8) release];
    }
    goto loc_100333c3c;

loc_100333c3c:
    *(r19 + 0x10) = [r20 copy];
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            sub_1009d0950(&stack[-88]);
            r0 = *(r19 + 0x10);
            if (r0 != 0x0) {
                    r1 = [r0 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_100333ec4(&var_60, r1);
            r0 = sub_10042b6e0(&var_60, &stack[-88]);
            if (r0 != 0x0) {
                    r8 = var_40;
                    r9 = stack[-72];
                    if (r8 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    if (r9 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r9 = 0x1;
                            }
                    }
                    r20 = r8 | r9;
                    if ((sign_extend_64(var_49) & 0xffffffff80000000) == 0x0) {
                            if ((r20 & 0x1) == 0x0) {
                                    r0 = [[AVAudioPlayer alloc] initWithData:[NSData dataWithBytesNoCopy:var_40 length:stack[-72] freeWhenDone:0x0] error:r29 - 0x28];
                                    r20 = r19 + 0x8;
                                    *r20 = r0;
                            }
                            else {
                                    r20 = r19 + 0x8;
                                    *r20 = 0x0;
                            }
                    }
                    else {
                            operator delete(var_60);
                            if ((r20 & 0x1) != 0x0) {
                                    r20 = r19 + 0x8;
                                    *r20 = 0x0;
                            }
                            else {
                                    r0 = [[AVAudioPlayer alloc] initWithData:[NSData dataWithBytesNoCopy:var_40 length:stack[-72] freeWhenDone:0x0] error:r29 - 0x28];
                                    r20 = r19 + 0x8;
                                    *r20 = r0;
                            }
                    }
            }
            else {
                    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_60);
                    }
                    r20 = r19 + 0x8;
                    *r20 = 0x0;
            }
            sub_1009d0b44(&stack[-88]);
            r0 = *r20;
            if (r0 != 0x0) {
                    if (0x0 == 0x0) {
                            [r0 prepareToPlay];
                            [*(r19 + 0x8) setDelegate:r19];
                            r0 = *(r19 + 0x28);
                            if (r0 != 0x0 && [r0 respondsToSelector:@selector(cdAudioSourceFileDidChange:)] != 0x0) {
                                    [*(r19 + 0x28) cdAudioSourceFileDidChange:r19];
                            }
                    }
            }
    }
    else {
            r0 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[CDUtilities fullPathFromRelativePath:*(r19 + 0x10)]] error:r29 - 0x28];
            *(r19 + 0x8) = r0;
            if (r0 != 0x0) {
                    if (0x0 == 0x0) {
                            [r0 prepareToPlay];
                            [*(r19 + 0x8) setDelegate:r19];
                            r0 = *(r19 + 0x28);
                            if (r0 != 0x0 && [r0 respondsToSelector:@selector(cdAudioSourceFileDidChange:)] != 0x0) {
                                    [*(r19 + 0x28) cdAudioSourceFileDidChange:r19];
                            }
                    }
            }
    }
    goto loc_100333e40;
}

-(void)resume {
    [*(self + 0x8) play];
    return;
}

-(bool)isPlaying {
    r0 = self;
    if (*(int32_t *)(r0 + 0x40) != 0x0) {
            r0 = *(r0 + 0x8);
            r0 = [r0 isPlaying];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setVolume:(float)arg2 {
    r2 = arg2;
    r0 = self;
    *(int32_t *)(r0 + 0x20) = s0;
    if (*(int32_t *)(r0 + 0x40) != 0x0 && *(int8_t *)(r0 + 0x30) == 0x0) {
            [*(r0 + 0x8) setVolume:r2];
    }
    return;
}

-(bool)mute {
    r0 = *(int8_t *)(self + 0x30);
    return r0;
}

-(float)volume {
    r0 = self;
    return r0;
}

-(void)setMute:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(int8_t *)(r0 + 0x30);
    if (r8 != r2) {
            r19 = r2;
            r20 = r0;
            [*(r20 + 0x8) setVolume:r2];
            *(int8_t *)(r20 + 0x30) = r19;
    }
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x31);
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x31) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + 0x31) = r2;
            if ((r2 & 0x1) == 0x0) {
                    [r19 pause];
                    [r19 rewind];
            }
    }
    return;
}

-(long long)numberOfLoops {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setNumberOfLoops:(long long)arg2 {
    [*(self + 0x8) setNumberOfLoops:r2];
    *(self + 0x18) = arg2;
    return;
}

-(void)audioPlayerDidFinishPlaying:(void *)arg2 successfully:(bool)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x28);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(cdAudioSourceDidFinishPlaying:)] != 0x0) {
            [*(r19 + 0x28) cdAudioSourceDidFinishPlaying:r19];
    }
    return;
}

-(void)audioPlayerBeginInterruption:(void *)arg2 {
    return;
}

-(void)audioPlayerEndInterruption:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([self backgroundMusic] == 0x0 || [[CDAudioManager sharedManager] willPlayBackgroundMusic] != 0x0) {
            [r19 play];
    }
    return;
}

-(void *)audioSourceFilePath {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)audioSourcePlayer {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(bool)backgroundMusic {
    r0 = *(int8_t *)(self + 0x32);
    return r0;
}

-(void)setBackgroundMusic:(bool)arg2 {
    *(int8_t *)(self + 0x32) = arg2;
    return;
}

@end