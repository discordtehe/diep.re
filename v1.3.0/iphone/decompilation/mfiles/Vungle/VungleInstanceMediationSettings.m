@implementation VungleInstanceMediationSettings

-(void)setUserIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)ordinal {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setOrdinal:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void *)userIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setStartMuted:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)startMuted {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(double)flexViewAutoDismissSeconds {
    r0 = self;
    return r0;
}

-(void)setFlexViewAutoDismissSeconds:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(void *)orientations {
    r0 = *(self + 0x28);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void)setOrientations:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

@end