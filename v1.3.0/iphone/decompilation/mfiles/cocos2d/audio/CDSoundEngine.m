@implementation CDSoundEngine

+(void)setMixerSampleRate:(float)arg2 {
    *(int8_t *)0x1011d4d50 = 0x1;
    *(int32_t *)0x1011d4d54 = s0;
    return;
}

-(void)_testGetGain {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    alSourcef(*(int32_t *)(*(self + 0x10) + 0x4), 0x100a, r2);
    r8 = 0x100bc5000;
    alSourcef(r20, 0x100a, r2);
    alGetSourcef(r20, 0x100a, &var_24);
    if (var_24 == s8) {
            r8 = 0x100bc5000;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0x58) = r8;
    return;
}

-(void)_generateSources {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(r19 + 0x10) = malloc(0x180);
    *(int32_t *)(r19 + 0x5c) = 0x0;
    alGetError();
    r8 = *(int32_t *)(r19 + 0x5c);
    if (r8 > 0x1f) goto .l1;

loc_1003365d4:
    asm { smaddl     x8, w8, w20, x9 };
    alGenSources(0x1, r8 + 0x4);
    r0 = alGetError();
    r9 = *(r19 + 0x10);
    r8 = *(int32_t *)(r19 + 0x5c);
    asm { sxtw       x10, w8 };
    if (r0 != 0x0) goto loc_100336638;

loc_1003365f8:
    asm { madd       x8, x10, x20, x9 };
    alSourcei(*(int32_t *)(r8 + 0x4), 0x1009, 0x0);
    if (alGetError() != 0x0) goto loc_100336648;

loc_100336614:
    r9 = *(r19 + 0x10);
    r10 = sign_extend_64(*(int32_t *)(r19 + 0x5c));
    *(int8_t *)(r9 + r10 * 0xc) = 0x1;
    r8 = r10 + 0x1;
    *(int32_t *)(r19 + 0x5c) = r8;
    if (r10 < 0x1f) goto loc_1003365d4;

loc_10033664c:
    if (r8 <= 0x1f) {
            asm { sxtw       x9, w8 };
            r9 = r9 - 0x1;
            asm { smaddl     x8, w8, w11, x10 };
            do {
                    *(int8_t *)r8 = 0x0;
                    r8 = r8 + 0xc;
                    r9 = r9 + 0x1;
            } while (r9 < 0x1f);
    }
    return;

.l1:
    return;

loc_100336648:
    r8 = *(int32_t *)(r19 + 0x5c);
    goto loc_10033664c;

loc_100336638:
    *(int8_t *)(r9 + r10 * 0xc) = 0x0;
    goto loc_10033664c;
}

-(void)_generateBuffers:(int)arg2 endIndex:(int)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x8) != 0x0) {
            r21 = r3;
            r20 = r2;
            r19 = r0;
            alGetError();
            if (r20 <= r21) {
                    asm { sxtw       x9, w20 };
                    asm { sxtw       x21, w21 };
                    r8 = *(r19 + 0x8);
                    r22 = r9 - 0x1;
                    asm { sbfiz      x20, x20, #0x5, #0x20 };
                    do {
                            alGenBuffers(0x1, r8 + r20);
                            *(0x8 + *(r19 + 0x8) + r20) = 0x0;
                            if (alGetError() != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r9 = 0x1;
                                    }
                            }
                            r8 = *(r19 + 0x8);
                            r9 = r9 << 0x1;
                            *(int32_t *)(0x4 + r8 + r20) = r9;
                            r22 = r22 + 0x1;
                            r20 = r20 + 0x20;
                    } while (r22 < r21);
            }
    }
    return;
}

-(bool)_initOpenAL {
    r1 = _cmd;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(self + 0x20) = 0x0;
    if (*(int8_t *)byte_1011d4d50 == 0x1) {
            asm { fcvt       d8, s0 };
    }
    else {
            *(int32_t *)0x1011d4d54 = 0x472c4400;
    }
    r0 = *0x1011d4d48;
    if (r0 == 0x0) {
            r0 = *0x1011d4d48;
            r1 = "alcMacOSXMixerOutputRate";
            r0 = alcGetProcAddress(r0, r1);
            *0x1011d4d48 = r0;
            if (r0 != 0x0) {
                    (r0)(r0, r1);
            }
    }
    else {
            (r0)(r0, r1);
    }
    r0 = alcGetCurrentContext();
    *(r19 + 0x20) = r0;
    if (r0 != 0x0) goto loc_1003367f0;

loc_1003367a4:
    r0 = alcOpenDevice(r0);
    if (r0 == 0x0) goto .l1;

loc_1003367ac:
    r0 = alcCreateContext(r0, 0x0);
    *(r19 + 0x20) = r0;
    if (r0 != 0x0) {
            alcMakeContextCurrent(r0);
            [r19 _generateBuffers:0x0 endIndex:*(int32_t *)(r19 + 0x60) - 0x1];
            [r19 _generateSources];
    }
    alGetError();
    goto loc_1003367f0;

loc_1003367f0:
    r0 = 0x1;
    return r0;

.l1:
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self stopAllSounds];
    [r19 _freeSourceGroups];
    if (*(int32_t *)(r19 + 0x5c) >= 0x1) {
            r20 = 0x0;
            r21 = 0x4;
            do {
                    alSourcei(*(int32_t *)(*(r19 + 0x10) + r21), 0x1009, 0x0);
                    alDeleteSources(0x1, *(r19 + 0x10) + r21);
                    *(int32_t *)(r19 + 0x4c) = alGetError();
                    r20 = r20 + 0x1;
                    r21 = r21 + 0xc;
            } while (r20 < sign_extend_64(*(int32_t *)(r19 + 0x5c)));
    }
    if (*(int32_t *)(r19 + 0x60) >= 0x1) {
            r20 = 0x0;
            r21 = 0x0;
            do {
                    alDeleteBuffers(0x1, *(r19 + 0x8) + r20);
                    r21 = r21 + 0x1;
                    r20 = r20 + 0x20;
            } while (r21 < sign_extend_64(*(int32_t *)(r19 + 0x60)));
    }
    free(*(r19 + 0x8));
    r0 = alcGetCurrentContext();
    alcGetContextsDevice(r0);
    alcDestroyContext(r0);
    alcCloseDevice(r21);
    free(*(r19 + 0x10));
    [*(r19 + 0x40) release];
    [[&var_30 super] dealloc];
    return;
}

-(unsigned long long)sourceGroupTotal {
    r0 = *(self + 0x28);
    return r0;
}

-(void)_freeSourceGroups {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0) {
            r8 = *(r19 + 0x28);
            if (r8 != 0x0) {
                    r20 = 0x1;
                    r21 = 0x10;
                    do {
                            r0 = *(r0 + r21);
                            if (r0 != 0x0) {
                                    free(r0);
                                    r8 = *(r19 + 0x28);
                            }
                            if (r8 < r20) {
                                break;
                            }
                            r0 = *(r19 + 0x18);
                            r20 = r20 + 0x1;
                            r21 = r21 + 0x18;
                    } while (true);
                    r0 = *(r19 + 0x18);
            }
            free(r0);
    }
    return;
}

-(bool)_redefineSourceGroups:(int *)arg2 total:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (*(self + 0x18) != 0x0) {
            [r21 stopAllSounds];
            [r21 _freeSourceGroups];
    }
    r0 = [r21 _setUpSourceGroups:r20 total:r19];
    return r0;
}

-(void)defineSourceGroups:(int *)arg2 total:(unsigned long long)arg3 {
    [self _redefineSourceGroups:arg2 total:arg3];
    return;
}

-(bool)_setUpSourceGroups:(int *)arg2 total:(unsigned long long)arg3 {
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r0 = malloc(arg3 + arg3 * 0x2 << 0x3);
    *(r21 + 0x18) = r0;
    if (r0 != 0x0) {
            *(r21 + 0x28) = r19;
            if (r19 != 0x0) {
                    r22 = 0x0;
                    r23 = 0x0;
                    do {
                            *(r0 + (r22 + r22 * 0x2) * 0x8) = 0x0;
                            *(int16_t *)(0xc + r0 + (r22 + r22 * 0x2) * 0x8) = 0x100;
                            r8 = sign_extend_64(*(int32_t *)(r20 + r22 * 0x4));
                            *(int32_t *)(0x8 + r0 + (r22 + r22 * 0x2) * 0x8) = r8;
                            *(0x10 + r0 + (r22 + r22 * 0x2) * 0x8) = malloc(r8 << 0x2);
                            r0 = *(r21 + 0x18);
                            r8 = *(0x10 + r0 + (r22 + r22 * 0x2) * 0x8);
                            if (r8 != 0x0) {
                                    asm { madd       x9, x22, x25, x0 };
                                    r9 = r9 + 0x8;
                                    if (*(int32_t *)r9 >= 0x1) {
                                            r10 = 0x0;
                                            r11 = r23 << 0x1;
                                            do {
                                                    *(int32_t *)(r8 + r10 * 0x4) = r11;
                                                    r10 = r10 + 0x1;
                                                    r11 = r11 + 0x2;
                                            } while (r10 < sign_extend_64(*(int32_t *)r9));
                                    }
                            }
                            r23 = *(int32_t *)(r20 + r22 * 0x4) + r23;
                            r22 = r22 + 0x1;
                    } while (r22 != r19);
            }
            r0 = 0x1;
    }
    return r0;
}

-(void)defineSourceGroups:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r20 = arg2;
    var_140 = self;
    r0 = [arg2 count];
    var_148 = r0;
    var_130 = malloc(r0 << 0x2);
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r9 = 0x0;
            r21 = *var_110;
            do {
                    r23 = 0x0;
                    var_128 = r9;
                    r19 = var_130 + sign_extend_64(r9) * 0x4;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(r20);
                            }
                            r28 = *(var_118 + r23 * 0x8);
                            r0 = [r28 isKindOfClass:[NSNumber class]];
                            if (r0 != 0x0) {
                                    r0 = [r28 integerValue];
                            }
                            *(int32_t *)(r19 + r23 * 0x4) = r0;
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r0 = objc_msgSend(r20, var_138);
                    r24 = r0;
                    r9 = r23 + sign_extend_64(var_128);
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_140 _redefineSourceGroups:var_130 total:var_148];
    free(var_130);
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadBuffersAsynchronously:(void *)arg2 {
    objc_sync_enter(self);
    *(int32_t *)(self + 0x54) = 0x0;
    [[[[NSOperationQueue alloc] init] autorelease] addOperation:[[[CDAsynchBufferLoader alloc] init:arg2 soundEngine:self] autorelease]];
    objc_sync_exit(self);
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
    r20 = _cmd;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x40) = [[NSObject alloc] init];
            *(int32_t *)(r19 + 0x54) = 0x0;
            *(int32_t *)(r19 + 0x60) = 0x40;
            *(r19 + 0x8) = malloc(0x800);
            r0 = [AVAudioSession sharedInstance];
            r21 = r0;
            r0 = [r0 setCategory:**0x100e60000 error:&var_38];
            if ((r0 & 0x1) == 0x0) {
                    r2 = **0x100e60000;
                    NSStringFromSelector(r20);
                    r1 = @selector(localizedDescription);
                    objc_msgSend(var_38, r1);
                    NSLog(@"%@ Error setting category: %@", r1, r2);
            }
            if (([r21 setActive:0x1 error:&var_38] & 0x1) == 0x0) {
                    [var_38 localizedDescription];
                    NSLog(@"Error activating session: %@", @selector(localizedDescription));
            }
            if ([r19 _initOpenAL] != 0x0) {
                    [r19 sourceTotal];
                    [r19 _setUpSourceGroups:&var_3C total:0x1];
                    *(int8_t *)(r19 + 0x50) = 0x1;
                    [r19 masterGain];
                    *(int32_t *)(r19 + 0x38) = s0;
                    *(int16_t *)(r19 + 0x48) = 0x100;
                    [r19 _testGetGain];
            }
            else {
                    *(int8_t *)(r19 + 0x50) = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(bool)unloadBuffer:(int)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ((r2 & 0xffffffff80000000) == 0x0) {
            r19 = r0;
            if (*(int32_t *)(r0 + 0x60) > r2) {
                    r8 = *(int32_t *)(r19 + 0x5c);
                    r20 = r2;
                    r1 = *(r19 + 0x8) + r20 * 0x20;
                    if (r8 >= 0x1) {
                            r21 = 0x0;
                            r22 = 0x0;
                            do {
                                    r9 = *(int32_t *)r1;
                                    r8 = *(r19 + 0x10);
                                    r8 = r8 + r21;
                                    if (r9 == *(int32_t *)(r8 + 0x8)) {
                                            alSourceStop(*(int32_t *)(r8 + 0x4));
                                            *(int32_t *)(r19 + 0x4c) = alGetError();
                                            alSourcei(*(int32_t *)(0x4 + *(r19 + 0x10) + r21), 0x1009, 0x0);
                                            r0 = alGetError();
                                            *(int32_t *)(r19 + 0x4c) = r0;
                                            if (r0 == 0x0) {
                                                    *(int32_t *)(0x8 + *(r19 + 0x10) + r21) = 0x0;
                                            }
                                    }
                                    r22 = r22 + 0x1;
                                    r8 = sign_extend_64(*(int32_t *)(r19 + 0x5c));
                                    r1 = *(r19 + 0x8) + r20 * 0x20;
                                    r21 = r21 + 0xc;
                            } while (r22 < r8);
                    }
                    alDeleteBuffers(0x1, r1);
                    r0 = alGetError();
                    *(int32_t *)(r19 + 0x4c) = r0;
                    r8 = *(r19 + 0x8);
                    if (r0 != 0x0) {
                            r0 = 0x0;
                            *(int32_t *)(0x4 + r8 + r20 * 0x20) = 0x2;
                    }
                    else {
                            alGenBuffers(0x1, r8 + r20 * 0x20);
                            r0 = alGetError();
                            *(int32_t *)(r19 + 0x4c) = r0;
                            r8 = *(r19 + 0x8);
                            r8 = 0x4 + r8 + r20 * 0x20;
                            if (r0 != 0x0) {
                                    r0 = 0x0;
                                    *(int32_t *)r8 = 0x2;
                            }
                            else {
                                    *(int32_t *)r8 = 0x0;
                                    r0 = 0x1;
                            }
                    }
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

-(bool)_resizeBuffers:(int)arg2 {
    r1 = _cmd;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x8);
    asm { sbfiz      x1, x8, #0x5, #0x20 };
    r0 = realloc(r0, r1);
    if (r0 != 0x0) {
            *(r19 + 0x8) = r0;
            r2 = *(int32_t *)(r19 + 0x60);
            *(int32_t *)(r19 + 0x60) = r2 + r20;
            [r19 _generateBuffers:r2 endIndex:r2 + r20 - 0x1];
            r0 = 0x1;
    }
    return r0;
}

-(bool)loadBuffer:(int)arg2 filePath:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [CDUtilities fullPathFromRelativePath:arg3];
    if (r0 != 0x0) {
            r0 = [NSURL fileURLWithPath:r0];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r21 = r0;
                    r0 = sub_100335c3c(r0, &var_28, &stack[-52], &var_2C);
                    CFRelease(r21);
                    r19 = [r20 loadBufferFromData:r19 soundData:r22 format:stack[-52] size:var_28 freq:var_2C];
                    free(r22);
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)validateBufferId:(int)arg2 {
    r2 = arg2;
    r0 = self;
    if ((r2 & 0xffffffff80000000) == 0x0 && *(int32_t *)(r0 + 0x60) > r2) {
            if (*(int32_t *)(0x4 + *(r0 + 0x8) + r2 * 0x20) == 0x1) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(float)bufferDurationInSeconds:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self validateBufferId:r2];
    if (r0 != 0x0) {
            r8 = *(r20 + 0x8);
            asm { sxtw       x9, w19 };
            r8 = r8 + r9 * 0x20;
            r9 = *(int32_t *)(r8 + 0x10);
            r9 = r9 + 0xffffffffffffef00;
            s0 = 0x0;
            if (r9 <= 0x3) {
                    s0 = *(int32_t *)(0x100bc5740 + r9 * 0x4);
            }
            asm { scvtf      s1, s1 };
            asm { scvtf      s2, s2 };
            asm { fdiv       s1, s1, s2 };
    }
    return r0;
}

-(bool)loadBufferFromData:(int)arg2 soundData:(void *)arg3 format:(int)arg4 size:(int)arg5 freq:(int)arg6 {
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
    r20 = arg6;
    r21 = arg5;
    r22 = arg4;
    r24 = arg3;
    r25 = arg2;
    r23 = self;
    r19 = *(self + 0x40);
    objc_sync_enter(r19);
    r26 = 0x0;
    if ((r25 & 0xffffffff80000000) != 0x0) goto loc_1003371e8;

loc_100337108:
    r26 = 0x0;
    if (*(int8_t *)(r23 + 0x50) == 0x0) goto loc_1003371e8;

loc_100337110:
    r8 = *(int32_t *)(r23 + 0x60);
    if (r8 > r25) goto loc_100337144;

loc_10033711c:
    r2 = 0x0;
    do {
            r2 = r2 + 0x10;
    } while (r8 + r2 <= r25);
    if (([r23 _resizeBuffers:r2] & 0x1) == 0x0) goto loc_1003371bc;

loc_100337144:
    r8 = *(r23 + 0x8);
    asm { sxtw       x27, w25 };
    r9 = 0x4 + r8 + r27 * 0x20;
    if (r24 == 0x0) goto loc_1003371c4;

loc_100337158:
    if (*(int32_t *)r9 == 0x0) goto loc_10033717c;

loc_100337160:
    if ([r23 unloadBuffer:r25] == 0x0) goto loc_1003371bc;

loc_100337178:
    r8 = *(r23 + 0x8);
    goto loc_10033717c;

loc_10033717c:
    alBufferData(*(int32_t *)(r8 + (r27 << 0x5)), r22, r24, r21, r20);
    r0 = alGetError();
    *(int32_t *)(r23 + 0x4c) = r0;
    r8 = *(r23 + 0x8);
    if (r0 != 0x0) {
            r26 = 0x0;
            *(int32_t *)(0x4 + r8 + r27 * 0x20) = 0x2;
    }
    else {
            *(int128_t *)(0x10 + r8 + r27 * 0x20) = r22;
            *(int128_t *)(0x14 + r8 + r27 * 0x20) = r21;
            *(int32_t *)(0x18 + r8 + r27 * 0x20) = r20;
            r26 = 0x1;
            *(int32_t *)(0x4 + r8 + r27 * 0x20) = r26;
    }
    goto loc_1003371e8;

loc_1003371e8:
    objc_sync_exit(r19);
    r0 = r26;
    return r0;

loc_1003371bc:
    r26 = 0x0;
    goto loc_1003371e8;

loc_1003371c4:
    r26 = 0x0;
    *(int32_t *)r9 = 0x2;
    goto loc_1003371e8;
}

-(int)bufferSizeInBytes:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    if ([self validateBufferId:r2] != 0x0) {
            r8 = *(r20 + 0x8);
            asm { sxtw       x9, w19 };
            r0 = *(int32_t *)(0x14 + r8 + r9 * 0x20);
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(int)bufferFrequencyInHertz:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    if ([self validateBufferId:r2] != 0x0) {
            r8 = *(r20 + 0x8);
            asm { sxtw       x9, w19 };
            r0 = *(int32_t *)(0x18 + r8 + r9 * 0x20);
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(float)masterGain {
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(int8_t *)(r0 + 0x48) == 0x0) {
            r0 = alGetListenerf(0x100a, r29 - 0x4);
    }
    return r0;
}

-(void)setMasterGain:(float)arg2 {
    r1 = _cmd;
    r0 = self;
    if (*(int8_t *)(r0 + 0x48) != 0x0) {
            *(int32_t *)(r0 + 0x38) = s0;
    }
    else {
            alListenerf(0x100a, r1);
    }
    return;
}

-(bool)mute {
    r0 = *(int8_t *)(self + 0x48);
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
    if (*(int8_t *)(r0 + 0x48) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + 0x48) = r2;
            if (r2 != 0x0) {
                    [r19 masterGain];
                    *(int32_t *)(r19 + 0x38) = s0;
                    alListenerf(0x100a, @selector(masterGain));
            }
            else {
                    [r19 setMasterGain:r2];
            }
    }
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x49);
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x49) != r2) {
            *(int8_t *)(r0 + 0x49) = r2;
            if ((r2 & 0x1) == 0x0) {
                    [r0 stopAllSounds];
            }
    }
    return;
}

-(void)_lockSource:(int)arg2 lock:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r8 = *(r0 + 0x28);
    if (r8 == 0x0) goto .l6;

loc_100337538:
    r9 = 0x0;
    goto loc_100337544;

loc_100337544:
    asm { madd       x12, x9, x11, x10 };
    r12 = *(r12 + 0x10);
    if (r12 == 0x0) goto loc_10033757c;

loc_100337550:
    asm { madd       x13, x9, x11, x10 };
    r13 = sign_extend_64(*(int32_t *)(r13 + 0x8));
    if (r13 < 0x1) goto loc_10033757c;

loc_100337560:
    r14 = 0x0;
    goto loc_100337564;

loc_100337564:
    r15 = *(int32_t *)(r12 + r14 * 0x4);
    if (r2 == r15 / 0x2) goto loc_10033758c;

loc_100337570:
    r14 = r14 + 0x1;
    if (r14 < r13) goto loc_100337564;

loc_10033757c:
    r9 = r9 + 0x1;
    if (r8 > r9) goto loc_100337544;

.l6:
    return;

loc_10033758c:
    r8 = r15 & 0xfffffffe;
    r9 = r15 | 0x1;
    if (r3 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = r8;
            }
            else {
                    r8 = r9;
            }
    }
    *(int32_t *)(r12 + r14 * 0x4) = r8;
    return;
}

-(bool)_soundSourceAttachToBuffer:(void *)arg2 soundId:(int)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r23 = *(int32_t *)(arg2 + 0xc);
    r8 = *(self + 0x8);
    asm { sbfiz      x9, x19, #0x5, #0x20 };
    r22 = *(int32_t *)(r8 + r9);
    alGetSourcei(r23, 0x1010, &var_34);
    if (var_34 == 0x1012) {
            alSourceStop(r23);
    }
    alGetError();
    alSourcei(r23, 0x1009, r22);
    r0 = alGetError();
    *(int32_t *)(r21 + 0x4c) = r0;
    if (r0 != 0x0) {
            r0 = 0x0;
    }
    else {
            r8 = *(r21 + 0x10);
            asm { madd       x8, x9, x10, x8 };
            *(int32_t *)(r8 + 0x8) = r22;
            *(int32_t *)(r20 + 0x20) = r19;
            r0 = 0x1;
    }
    return r0;
}

-(int)_getSourceIndexForSourceGroup:(int)arg2 {
    r2 = arg2;
    r0 = self;
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
    r19 = 0xfeedfac;
    if ((r2 & 0xffffffff80000000) != 0x0) goto loc_1003376a0;

loc_1003375d0:
    r19 = 0xfeedfac;
    r20 = r0;
    if (*(r0 + 0x28) < zero_extend_64(r2)) goto loc_1003376a0;

loc_1003375e0:
    asm { madd       x21, x8, x10, x9 };
    r8 = *(int32_t *)r21;
    r22 = r21 + 0x8;
    r23 = r21 + 0x4;
    *(int32_t *)r23 = r8;
    r24 = r21 + 0x10;
    r25 = r21 + 0xd;
    r9 = r8;
    goto loc_100337618;

loc_100337618:
    r10 = *r24;
    r10 = *(int32_t *)(r10 + r9 * 0x4);
    if ((r10 & 0x1) != 0x0) goto loc_10033765c;

loc_100337624:
    r28 = SAR(r10, 0x1);
    if (*(int8_t *)r25 == 0x0) goto loc_100337680;

loc_100337630:
    r8 = *(r20 + 0x10);
    asm { smaddl     x8, w28, w26, x8 };
    alGetSourcei(*(int32_t *)(r8 + 0x4), 0x1010, &var_54);
    r9 = *(int32_t *)r23;
    if (var_54 != r27) goto loc_100337680;

loc_100337658:
    r8 = *(int32_t *)r21;
    goto loc_10033765c;

loc_10033765c:
    if (r9 + 0x1 >= *(int32_t *)r22) {
            asm { csinc      w9, wzr, w9, ge };
    }
    *(int32_t *)r23 = r9;
    if (r9 != r8) goto loc_100337618;

loc_100337678:
    r28 = 0xffffffffffffffff;
    goto loc_100337688;

loc_100337688:
    if (r8 >= *(int32_t *)r22) {
            *(int32_t *)r21 = 0x0;
    }
    r19 = 0xfeedfac;
    if (r28 >= 0x0) {
            if (!CPU_FLAGS & GE) {
                    r19 = 0xfeedfac;
            }
            else {
                    r19 = r28;
            }
    }
    goto loc_1003376a0;

loc_1003376a0:
    r0 = r19;
    return r0;

loc_100337680:
    r8 = r9 + 0x1;
    *(int32_t *)r21 = r8;
    goto loc_100337688;
}

-(unsigned int)playSound:(int)arg2 sourceGroupId:(int)arg3 pitch:(float)arg4 pan:(float)arg5 gain:(float)arg6 loop:(bool)arg7 {
    r4 = arg4;
    r3 = arg3;
    r0 = self;
    r31 = r31 - 0x80;
    var_50 = d11;
    stack[-88] = d10;
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
    r19 = 0xfeedbab;
    if (*(int8_t *)(r0 + 0x49) != 0x0) {
            r19 = 0xfeedbab;
            r20 = r0;
            if (*(int8_t *)(r0 + 0x50) != 0x0) {
                    r19 = 0xfeedbab;
                    r8 = *(r20 + 0x8);
                    asm { sxtw       x23, w2 };
                    if (*(int32_t *)(0x4 + r8 + r23 * 0x20) == 0x1) {
                            r19 = 0xfeedbab;
                            r8 = *(r20 + 0x18);
                            asm { smaddl     x8, w3, w9, x8 };
                            if (*(int8_t *)(r8 + 0xc) == 0x0) {
                                    r21 = r4;
                                    v9 = v2;
                                    v10 = v0;
                                    r0 = [r20 _getSourceIndexForSourceGroup:r3];
                                    r19 = 0xfeedfac;
                                    if (r0 != r19) {
                                            r8 = *(int128_t *)(r20 + 0x8);
                                            r9 = *(int128_t *)(r20 + 0x10);
                                            asm { smaddl     x9, w0, w10, x9 };
                                            r19 = *(int32_t *)(r9 + 0x4);
                                            r23 = *(int32_t *)(r8 + (r23 << 0x5));
                                            alGetError();
                                            alGetSourcei(r19, 0x1010, &var_68);
                                            r8 = var_68;
                                            if (r8 == 0x1012) {
                                                    alSourceStop(r19);
                                            }
                                            alSourcei(r19, 0x1009, r23);
                                            alSourcef(r19, 0x1003, r23);
                                            alSourcei(r19, 0x1007, r21);
                                            alSourcef(r19, 0x100a, r21);
                                            alSourcefv(r19, 0x1004, &var_64);
                                            alGetError();
                                            alSourcePlay(r19);
                                            r0 = alGetError();
                                            *(int32_t *)(r20 + 0x4c) = r0;
                                            if (r0 != 0x0) {
                                                    alSourcei(r19, 0x1009, 0x0);
                                                    alGetError();
                                                    r0 = alcGetCurrentContext();
                                                    r19 = 0xfeedfac;
                                                    if (r0 == 0x0) {
                                                            [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3];
                                                    }
                                            }
                                            else {
                                                    asm { sxtw       x8, w22 };
                                                    asm { madd       x8, x8, x10, x9 };
                                                    *(int32_t *)(r8 + 0x8) = r23;
                                            }
                                    }
                            }
                    }
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)soundSourceForSound:(int)arg2 sourceGroupId:(int)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x50) == 0x0) goto loc_100337ac4;

loc_1003379a4:
    r20 = r2;
    r21 = r0;
    r0 = [r0 _getSourceIndexForSourceGroup:r3];
    if (r0 == 0xfeedfac) goto loc_100337ac4;

loc_1003379cc:
    r22 = r0;
    r0 = [CDSoundSource alloc];
    r8 = *(r21 + 0x10);
    asm { smaddl     x8, w22, w9, x8 };
    r19 = [r0 init:*(int32_t *)(r8 + 0x4) sourceIndex:r22 soundEngine:r21];
    [r21 _lockSource:r22 lock:0x1];
    if ([r21 _soundSourceAttachToBuffer:r19 soundId:r20] == 0x0) goto loc_100337ab4;

loc_100337a40:
    [r19 setPitch:r2];
    [r19 setPan:r2];
    [r19 setGain:r2];
    [r19 setLooping:0x0];
    r0 = [r19 autorelease];
    return r0;

loc_100337ab4:
    [r19 release];
    goto loc_100337ac4;

loc_100337ac4:
    r0 = 0x0;
    return r0;
}

-(void)_soundSourcePreRelease:(void *)arg2 {
    [self _lockSource:*(int32_t *)(arg2 + 0x10) lock:0x0];
    return;
}

-(void)stopSourceGroup:(int)arg2 {
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
    if (*(int8_t *)(r0 + 0x50) != 0x0 && (r2 & 0xffffffff80000000) == 0x0) {
            r19 = r0;
            asm { sxtw       x20, w2 };
            if (*(r0 + 0x28) >= r20) {
                    r8 = *(r19 + 0x18);
                    r9 = 0x18;
                    asm { madd       x9, x20, x9, x8 };
                    r21 = *(int32_t *)(r9 + 0x8);
                    if (r21 >= 0x1) {
                            asm { madd       x8, x20, x9, x8 };
                            r8 = *(r8 + 0x10);
                            r8 = *(int32_t *)r8;
                            r8 = SAR(r8, 0x1);
                            asm { smaddl     x8, w8, w22, x9 };
                            alSourceStop(*(int32_t *)(r8 + 0x4));
                            if (r21 != 0x1) {
                                    r23 = 0x1;
                                    do {
                                            r8 = *(int128_t *)(r19 + 0x10);
                                            r9 = *(int128_t *)(r19 + 0x18);
                                            asm { madd       x9, x20, x24, x9 };
                                            r9 = *(r9 + 0x10);
                                            asm { smaddl     x8, w9, w22, x8 };
                                            alSourceStop(*(int32_t *)(r8 + 0x4));
                                            r23 = r23 + 0x1;
                                    } while (r21 != r23);
                            }
                    }
                    alGetError();
            }
    }
    return;
}

-(void)stopSound:(unsigned int)arg2 {
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(self + 0x50) != 0x0) {
            alSourceStop(r2);
            alGetError();
    }
    return;
}

-(void)stopAllSounds {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(r0 + 0x5c) >= 0x1) {
            r19 = r0;
            r20 = 0x0;
            r21 = 0x4;
            do {
                    alSourceStop(*(int32_t *)(*(r19 + 0x10) + r21));
                    r20 = r20 + 0x1;
                    r21 = r21 + 0xc;
            } while (r20 < sign_extend_64(*(int32_t *)(r19 + 0x5c)));
    }
    alGetError();
    return;
}

-(void)setSourceGroupNonInterruptible:(int)arg2 isNonInterruptible:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if ((r2 & 0xffffffff80000000) == 0x0 && *(r0 + 0x28) >= zero_extend_64(r2)) {
            r8 = r2;
            asm { madd       x8, x8, x10, x9 };
            r8 = r8 + 0xd;
            if (r3 != 0x0) {
                    *(int8_t *)r8 = 0x1;
            }
            else {
                    *(int8_t *)r8 = 0x0;
            }
    }
    return;
}

-(bool)sourceGroupEnabled:(int)arg2 {
    r8 = *(self + 0x18);
    asm { smaddl     x8, w2, w9, x8 };
    r0 = *(int8_t *)(r8 + 0xc);
    return r0;
}

-(struct ALCcontext_struct *)openALContext {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setSourceGroupEnabled:(int)arg2 enabled:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if ((r2 & 0xffffffff80000000) == 0x0 && *(r0 + 0x28) >= zero_extend_64(r2)) {
            r8 = r2;
            asm { madd       x8, x8, x10, x9 };
            r8 = r8 + 0xc;
            if (r3 != 0x0) {
                    *(int8_t *)r8 = 0x1;
                    [r0 stopSourceGroup:r2];
            }
            else {
                    *(int8_t *)r8 = 0x0;
            }
    }
    return;
}

-(void)_dumpSourceGroupsInfo {
    return;
}

-(int)lastErrorCode {
    r0 = *(int32_t *)(self + 0x4c);
    return r0;
}

-(bool)functioning {
    r0 = *(int8_t *)(self + 0x50) & 0x1;
    return r0;
}

-(float)asynchLoadProgress {
    r0 = self;
    return r0;
}

-(void)setAsynchLoadProgress:(float)arg2 {
    *(int32_t *)(self + 0x54) = s0;
    return;
}

-(bool)getGainWorks {
    r0 = *(int8_t *)(self + 0x58) & 0x1;
    return r0;
}

-(int)sourceTotal {
    r0 = *(int32_t *)(self + 0x5c);
    return r0;
}

@end