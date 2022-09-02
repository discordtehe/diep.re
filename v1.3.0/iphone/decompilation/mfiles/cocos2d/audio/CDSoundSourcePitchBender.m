@implementation CDSoundSourcePitchBender

-(void)_setTargetProperty:(float)arg2 {
    [*(self + 0x18) setPitch:arg2];
    return;
}

-(float)_getTargetProperty {
    r0 = *(self + 0x18);
    r0 = [r0 pitch];
    return r0;
}

-(void *)_allowableType {
    r0 = [CDSoundSource class];
    return r0;
}

-(void)_stopTarget {
    [*(self + 0x18) stop];
    return;
}

@end