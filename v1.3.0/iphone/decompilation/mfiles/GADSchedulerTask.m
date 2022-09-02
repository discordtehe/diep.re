@implementation GADSchedulerTask

-(void *)block {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_block)), 0x0);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    return;
}

@end