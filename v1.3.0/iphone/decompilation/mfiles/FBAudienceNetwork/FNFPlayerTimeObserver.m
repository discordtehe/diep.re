@implementation FNFPlayerTimeObserver

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    return;
}

-(union ?)interval {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_interval));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setInterval:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_interval));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void *)block {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_block)), 0x0);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)timer {
    r0 = self->_timer;
    return r0;
}

-(void)setTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timer, arg2);
    return;
}

-(bool)fireOnceAtExactTime {
    r0 = *(int8_t *)(int64_t *)&self->_fireOnceAtExactTime;
    return r0;
}

-(void)setFireOnceAtExactTime:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_fireOnceAtExactTime = arg2;
    return;
}

-(bool)followMasterClock {
    r0 = *(int8_t *)(int64_t *)&self->_followMasterClock;
    return r0;
}

-(void)setFollowMasterClock:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_followMasterClock = arg2;
    return;
}

-(void)setSuspended:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_suspended = arg2;
    return;
}

-(bool)suspended {
    r0 = *(int8_t *)(int64_t *)&self->_suspended;
    return r0;
}

@end