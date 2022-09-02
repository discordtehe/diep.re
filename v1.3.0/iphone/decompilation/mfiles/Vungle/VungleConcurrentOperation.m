@implementation VungleConcurrentOperation

-(void *)initWithResultBlock:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [r19 copy];
            [r20 setResultBlock:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)start {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isCancelled] & 0x1) == 0x0) {
            [r19 willChangeValueForKey:@"isExecuting"];
            [r19 setRunning:0x1];
            [r19 didChangeValueForKey:@"isExecuting"];
    }
    return;
}

-(bool)isConcurrent {
    return 0x1;
}

-(void)cancel {
    [[&var_20 super] cancel];
    [self willChangeValueForKey:@"isCancelled"];
    [self setDidCancel:0x1];
    [self didChangeValueForKey:@"isCancelled"];
    return;
}

-(void)finishOperation {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self running];
    [r19 willChangeValueForKey:@"isExecuting"];
    [r19 setRunning:0x0];
    [r19 didChangeValueForKey:r2];
    if (r22 != 0x0) {
            [r19 willChangeValueForKey:@"isFinished"];
            [r19 didChangeValueForKey:r2];
    }
    return;
}

-(bool)isAsynchronous {
    return 0x1;
}

-(bool)isExecuting {
    r0 = [self running];
    return r0;
}

-(bool)isFinished {
    r0 = [self running];
    r0 = r0 ^ 0x1;
    return r0;
}

-(bool)isCancelled {
    r0 = [self didCancel];
    return r0;
}

-(void *)resultBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_resultBlock)), 0x0);
    return r0;
}

-(bool)running {
    r0 = *(int8_t *)(int64_t *)&self->_running;
    return r0;
}

-(void)setResultBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setRunning:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_running = arg2;
    return;
}

-(bool)didCancel {
    r0 = *(int8_t *)(int64_t *)&self->_didCancel;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resultBlock, 0x0);
    return;
}

-(void)setDidCancel:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didCancel = arg2;
    return;
}

@end