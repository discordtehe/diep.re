@implementation CDSoundEngineFader

-(void)_setTargetProperty:(float)arg2 {
    [*(self + 0x18) setMasterGain:arg2];
    return;
}

-(float)_getTargetProperty {
    r0 = *(self + 0x18);
    r0 = [r0 masterGain];
    return r0;
}

-(void *)_allowableType {
    r0 = [CDSoundEngine class];
    return r0;
}

-(void)_stopTarget {
    [*(self + 0x18) stopAllSounds];
    return;
}

@end