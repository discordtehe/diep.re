@implementation SoundEffectInstance

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x8) = 0x0;
            *(int128_t *)(r0 + 0xc) = *(int128_t *)0x100bf2e40;
            *(int8_t *)(r0 + 0x1c) = 0x0;
    }
    return r0;
}

-(unsigned int)soundId {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void)setSoundId:(unsigned int)arg2 {
    *(int32_t *)(self + 0x8) = arg2;
    return;
}

-(float)timeRemaining {
    r0 = self;
    return r0;
}

-(void)setTimeRemaining:(float)arg2 {
    *(int32_t *)(self + 0xc) = s0;
    return;
}

-(float)pitch {
    r0 = self;
    return r0;
}

-(float)pan {
    r0 = self;
    return r0;
}

-(void)setPitch:(float)arg2 {
    *(int32_t *)(self + 0x10) = s0;
    return;
}

-(void)setPan:(float)arg2 {
    *(int32_t *)(self + 0x14) = s0;
    return;
}

-(float)gain {
    r0 = self;
    return r0;
}

-(void)setGain:(float)arg2 {
    *(int32_t *)(self + 0x18) = s0;
    return;
}

-(bool)loop {
    r0 = *(int8_t *)(self + 0x1c) & 0x1;
    return r0;
}

-(void)setLoop:(bool)arg2 {
    *(int8_t *)(self + 0x1c) = arg2;
    return;
}

@end