@implementation FBAdTimeObserver

-(void *)init {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd158 != -0x1) {
            dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
    }
    r0 = [r19 initWithInterval:&var_30 queue:*__dispatch_main_q usingBlock:0x100eab6b0];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_downstreamObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    return;
}

-(void *)block {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_block)), 0x0);
    return r0;
}

-(void *)initWithInterval:(union ?)arg2 queue:(void *)arg3 usingBlock:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r22 = r2;
    r19 = [r3 retain];
    r21 = [r4 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_block));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_interval));
            r9 = *(r22 + 0x10);
            *(int128_t *)(r23 + r8) = *(int128_t *)r22;
            *(0x10 + r23 + r8) = r9;
            objc_storeStrong((int64_t *)&r23->_queue, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)downstreamObserver {
    r0 = self->_downstreamObserver;
    return r0;
}

-(void)setDownstreamObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_downstreamObserver, arg2);
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

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

@end