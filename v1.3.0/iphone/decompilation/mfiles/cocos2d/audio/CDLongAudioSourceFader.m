@implementation CDLongAudioSourceFader

-(void)_setTargetProperty:(float)arg2 {
    [self->target setVolume:arg2];
    return;
}

-(float)_getTargetProperty {
    r0 = self->target;
    r0 = [r0 volume];
    return r0;
}

-(void)_stopTarget {
    [self->target pause];
    return;
}

-(void *)_allowableType {
    r0 = [CDLongAudioSource class];
    return r0;
}

@end