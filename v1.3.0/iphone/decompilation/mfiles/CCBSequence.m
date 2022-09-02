@implementation CCBSequence

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    [self setName:0x0];
    [[self callbackChannel] release];
    [[self soundChannel] release];
    [[&var_20 super] dealloc];
    return;
}

-(float)duration {
    r0 = self;
    return r0;
}

-(void)setDuration:(float)arg2 {
    *(int32_t *)(self + 0x8) = s0;
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(int)sequenceId {
    r0 = *(int32_t *)(self + 0x18);
    return r0;
}

-(void)setSequenceId:(int)arg2 {
    *(int32_t *)(self + 0x18) = arg2;
    return;
}

-(int)chainedSequenceId {
    r0 = *(int32_t *)(self + 0x1c);
    return r0;
}

-(void)setChainedSequenceId:(int)arg2 {
    *(int32_t *)(self + 0x1c) = arg2;
    return;
}

-(void *)callbackChannel {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setCallbackChannel:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)soundChannel {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setSoundChannel:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end