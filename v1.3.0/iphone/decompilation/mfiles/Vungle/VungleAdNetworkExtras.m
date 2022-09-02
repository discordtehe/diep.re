@implementation VungleAdNetworkExtras

-(void *)userId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userId)), 0x0);
    return r0;
}

-(bool)muted {
    r0 = *(int8_t *)(int64_t *)&self->_muted;
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)ordinal {
    r0 = self->_ordinal;
    return r0;
}

-(void)setMuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_muted = arg2;
    return;
}

-(void)setOrdinal:(unsigned long long)arg2 {
    self->_ordinal = arg2;
    return;
}

-(void)setFlexViewAutoDismissSeconds:(double)arg2 {
    self->_flexViewAutoDismissSeconds = d0;
    return;
}

-(double)flexViewAutoDismissSeconds {
    r0 = self;
    return r0;
}

-(void *)allPlacements {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_allPlacements)), 0x0);
    return r0;
}

-(void)setPlayingPlacement:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)playingPlacement {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_playingPlacement)), 0x0);
    return r0;
}

-(void)setAllPlacements:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_playingPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_allPlacements, 0x0);
    objc_storeStrong((int64_t *)&self->_userId, 0x0);
    return;
}

@end