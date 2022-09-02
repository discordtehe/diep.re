@implementation GADBlockTimerTarget

-(void)timerFired:(void *)arg2 {
    r2 = arg2;
    r0 = self->_block;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    return;
}

@end