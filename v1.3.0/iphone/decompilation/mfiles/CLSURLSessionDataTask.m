@implementation CLSURLSessionDataTask

-(void)resume {
    r0 = [self queue];
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)complete {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = r19->_completionHandler;
    if (r21 != 0x0) {
            r22 = r19->_data;
            r23 = [[r19 response] retain];
            r0 = [r19 error];
            r29 = r29;
            (*(r21 + 0x10))(r21, r22, r23, [r0 retain]);
            [r24 release];
            [r23 release];
    }
    r21 = [[r19 delegate] retain];
    r20 = [[r19 error] retain];
    [r21 task:r19 didCompleteWithError:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void)cancel {
    r0 = [self connection];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r20 = [arg3 retain];
    r21 = [[self queue] retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    r20 = [arg3 retain];
    r21 = [[self queue] retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    r20 = [arg3 retain];
    r21 = [[self queue] retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    r0 = [self queue];
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)setConnection:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connection, arg2);
    return;
}

-(void *)connection {
    r0 = self->_connection;
    return r0;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTaskDescription:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)taskDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskDescription)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_taskDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_connection, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    return;
}

@end