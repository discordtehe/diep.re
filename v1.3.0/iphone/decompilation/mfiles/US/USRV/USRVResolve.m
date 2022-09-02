@implementation USRVResolve

-(void *)initWithHostName:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setHostName:r19];
            [r20 setCanceled:0x0];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)resolve {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSCondition alloc] init];
    [r19 setBlockCondition:r20];
    [r20 release];
    r0 = [r19 blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    dispatch_async(r0, &var_58);
    [r22 release];
    r22 = [[r19 blockCondition] retain];
    r21 = [[NSDate alloc] initWithTimeIntervalSinceNow:r20];
    r23 = [r22 waitUntilDate:r21];
    [r21 release];
    [r22 release];
    r0 = [r19 blockCondition];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            r20 = [sub_1000e08c4() retain];
            [r19 setError:r20];
            [r20 release];
            [r19 setErrorMessage:@"Resolving host timed out"];
    }
    return;
}

-(void)openBlock {
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 signal];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(void *)hostName {
    r0 = self->_hostName;
    return r0;
}

-(void)cancel {
    [self setCanceled:0x1];
    [self openBlock];
    return;
}

-(void)setHostName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_hostName, arg2);
    return;
}

-(void *)address {
    r0 = self->_address;
    return r0;
}

-(void)setAddress:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_address, arg2);
    return;
}

-(void)setBlockCondition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_blockCondition, arg2);
    return;
}

-(void *)blockCondition {
    r0 = self->_blockCondition;
    return r0;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(void)setError:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_error, arg2);
    return;
}

-(void *)errorMessage {
    r0 = self->_errorMessage;
    return r0;
}

-(void)setErrorMessage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_errorMessage, arg2);
    return;
}

-(bool)canceled {
    r0 = *(int8_t *)(int64_t *)&self->_canceled;
    return r0;
}

-(void)setCanceled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canceled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_errorMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_blockCondition, 0x0);
    objc_storeStrong((int64_t *)&self->_address, 0x0);
    objc_storeStrong((int64_t *)&self->_hostName, 0x0);
    return;
}

@end