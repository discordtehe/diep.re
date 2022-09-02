@implementation CDSoundSource

-(void *)init:(unsigned int)arg2 sourceIndex:(int)arg3 soundEngine:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            *(r22 + 0x18) = r20;
            *(int128_t *)(r22 + 0xc) = r21;
            *(int128_t *)(r22 + 0x10) = r19;
            *(int16_t *)(r22 + 0x28) = 0x1;
            [r22 gain];
            *(int32_t *)(r22 + 0x24) = s0;
    }
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) _soundSourcePreRelease:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)setPitch:(float)arg2 {
    alSourcef(*(int32_t *)(self + 0xc), 0x1003, arg2);
    *(int32_t *)(self + 0x8) = alGetError();
    return;
}

-(void)setGain:(float)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x29) != 0x0) {
            *(int32_t *)(r19 + 0x24) = s0;
    }
    else {
            alSourcef(*(int32_t *)(r19 + 0xc), 0x100a, r2);
    }
    *(int32_t *)(r19 + 0x8) = alGetError();
    return;
}

-(void)setLooping:(bool)arg2 {
    alSourcei(*(int32_t *)(self + 0xc), 0x1007, arg2);
    *(int32_t *)(self + 0x8) = alGetError();
    return;
}

-(void)setPan:(float)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    alSourcefv(*(int32_t *)(self + 0xc), 0x1004, &var_24);
    *(int32_t *)(self + 0x8) = alGetError();
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isPlaying {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    alGetSourcei(*(int32_t *)(self + 0xc), 0x1010, &var_14);
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    if (var_14 == 0x1012) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(float)pitch {
    alGetSourcef(*(int32_t *)(self + 0xc), 0x1003, &var_14);
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    return r0;
}

-(float)gain {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (*(int8_t *)(r0 + 0x29) == 0x0) {
            alGetSourcef(*(int32_t *)(r19 + 0xc), 0x100a, &var_14);
            r0 = alGetError();
            *(int32_t *)(r19 + 0x8) = r0;
    }
    return r0;
}

-(float)pan {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    alGetSourcefv(*(int32_t *)(self + 0xc), 0x1004, &var_28);
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    if (**___stack_chk_guard != var_18) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)looping {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    alGetSourcef(*(int32_t *)(self + 0xc), 0x1007, &var_14);
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    if (var_14 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)stop {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    alSourceStop(*(int32_t *)(self + 0xc));
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)pause {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    alSourcePause(*(int32_t *)(self + 0xc));
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)play {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x28) == 0x0) goto loc_100338138;

loc_1003380ec:
    alSourcePlay(*(int32_t *)(r0 + 0xc));
    r0 = alGetError();
    *(int32_t *)(r19 + 0x8) = r0;
    if (r0 == 0x0) goto loc_100338140;

loc_100338104:
    if (alcGetCurrentContext() == 0x0) {
            [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3];
    }
    goto loc_100338138;

loc_100338138:
    r0 = 0x0;
    return r0;

loc_100338140:
    r0 = 0x1;
    return r0;
}

-(void)setSoundId:(int)arg2 {
    [*(self + 0x18) _soundSourceAttachToBuffer:self soundId:arg2];
    return;
}

-(bool)rewind {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    alSourceRewind(*(int32_t *)(self + 0xc));
    r0 = alGetError();
    *(int32_t *)(self + 0x8) = r0;
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(int)soundId {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(float)durationInSeconds {
    r0 = [*(self + 0x18) bufferDurationInSeconds:*(int32_t *)(self + 0x20)];
    return r0;
}

-(bool)mute {
    r0 = *(int8_t *)(self + 0x29);
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
    if (*(int8_t *)(r0 + 0x29) != r2) {
            r20 = r2;
            r19 = r0;
            if (r2 != 0x0) {
                    [r19 gain];
                    *(int32_t *)(r19 + 0x24) = s0;
                    [r19 setGain:r2];
                    *(int8_t *)(r19 + 0x29) = r20;
            }
            else {
                    *(int8_t *)(r19 + 0x29) = r20;
                    [r19 setGain:r2];
            }
    }
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x28) != r2) {
            *(int8_t *)(r0 + 0x28) = r2;
            if ((r2 & 0x1) == 0x0) {
                    [r0 stop];
            }
    }
    return;
}

-(int)lastError {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

@end