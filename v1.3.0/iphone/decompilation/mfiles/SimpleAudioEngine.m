@implementation SimpleAudioEngine

+(void *)sharedEngine {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_sync_enter(self);
    if (*0x1011d4d68 == 0x0) {
            *0x1011d4d68 = [[SimpleAudioEngine alloc] init];
    }
    objc_sync_exit(r19);
    return *0x1011d4d68;
}

+(void *)alloc {
    objc_sync_enter(self);
    r0 = [[&var_20 super] alloc];
    objc_sync_exit(self);
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [CDAudioManager sharedManager];
            *0x1011d4d70 = r0;
            *0x1011d4d78 = [r0 soundEngine];
            *0x1011d4d80 = [[CDBufferManager alloc] initWithEngine:*0x1011d4d78];
            *(int16_t *)(r19 + 0x8) = 0x100;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    *0x1011d4d70 = 0x0;
    *0x1011d4d78 = 0x0;
    *0x1011d4d80 = 0x0;
    [[&var_10 super] dealloc];
    return;
}

+(void)end {
    *0x1011d4d70 = 0x0;
    [CDAudioManager end];
    [*0x1011d4d80 release];
    [*0x1011d4d68 release];
    *0x1011d4d68 = 0x0;
    return;
}

-(void)preloadBackgroundMusic:(void *)arg2 {
    [*0x1011d4d70 preloadBackgroundMusic:arg2];
    return;
}

-(void)playBackgroundMusic:(void *)arg2 {
    [*0x1011d4d70 playBackgroundMusic:arg2 loop:0x1];
    return;
}

-(void)playBackgroundMusic:(void *)arg2 loop:(bool)arg3 {
    [*0x1011d4d70 playBackgroundMusic:arg2 loop:arg3];
    return;
}

-(void)stopBackgroundMusic {
    [*0x1011d4d70 stopBackgroundMusic];
    return;
}

-(void)pauseBackgroundMusic {
    [*0x1011d4d70 pauseBackgroundMusic];
    return;
}

-(void)resumeBackgroundMusic {
    [*0x1011d4d70 resumeBackgroundMusic];
    return;
}

-(void)rewindBackgroundMusic {
    [*0x1011d4d70 rewindBackgroundMusic];
    return;
}

-(bool)isBackgroundMusicPlaying {
    r0 = *0x1011d4d70;
    r0 = [r0 isBackgroundMusicPlaying];
    return r0;
}

-(bool)willPlayBackgroundMusic {
    r0 = *0x1011d4d70;
    r0 = [r0 willPlayBackgroundMusic];
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 {
    r0 = [self playEffect:arg2 pitch:0x0 pan:r4 gain:r5 loop:r6];
    return r0;
}

-(unsigned int)playEffect:(void *)arg2 pitch:(float)arg3 pan:(float)arg4 gain:(float)arg5 {
    r0 = [self playEffect:arg2 pitch:0x0 pan:arg4 gain:arg5 loop:r6];
    return r0;
}

-(void)stopEffect:(unsigned int)arg2 {
    [*0x1011d4d78 stopSound:arg2];
    return;
}

-(void)preloadEffect:(void *)arg2 {
    [*0x1011d4d80 bufferForFile:arg2 create:0x1];
    return;
}

-(unsigned int)playEffect:(void *)arg2 pitch:(float)arg3 pan:(float)arg4 gain:(float)arg5 loop:(bool)arg6 {
    r6 = arg6;
    r5 = arg5;
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    v8 = v2;
    v9 = v1;
    v10 = v0;
    r0 = *0x1011d4d80;
    r0 = [r0 bufferForFile:arg2 create:0x1];
    if (r0 != -0x1) {
            r2 = r0;
            r0 = *0x1011d4d78;
            r0 = [r0 playSound:r2 sourceGroupId:0x0 pitch:r19 pan:r5 gain:r6 loop:r7];
    }
    else {
            r0 = 0xfeedbab;
    }
    return r0;
}

-(void)unloadEffect:(void *)arg2 {
    [*0x1011d4d80 releaseBufferForFile:arg2];
    return;
}

-(bool)mute {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setMute:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x8) != r2) {
            *(int8_t *)(r0 + 0x8) = r2;
            [*0x1011d4d70 setMute:r2];
    }
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x9) != r2) {
            *(int8_t *)(r0 + 0x9) = r2;
            [*0x1011d4d70 setEnabled:r2];
    }
    return;
}

-(float)backgroundMusicVolume {
    r0 = *0x1011d4d70;
    r0 = [r0 backgroundMusic];
    r0 = [r0 volume];
    return r0;
}

-(float)effectsVolume {
    r0 = *0x1011d4d70;
    r0 = [r0 soundEngine];
    r0 = [r0 masterGain];
    return r0;
}

-(void)setBackgroundMusicVolume:(float)arg2 {
    [[*0x1011d4d70 backgroundMusic] setVolume:arg2];
    return;
}

-(void)setEffectsVolume:(float)arg2 {
    [[*0x1011d4d70 soundEngine] setMasterGain:arg2];
    return;
}

-(void *)soundSourceForFile:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *0x1011d4d80;
    r0 = [r0 bufferForFile:arg2 create:0x1];
    if (r0 != -0x1) {
            r2 = r0;
            r0 = *0x1011d4d78;
            r0 = [r0 soundSourceForSound:r2 sourceGroupId:0x0];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

@end