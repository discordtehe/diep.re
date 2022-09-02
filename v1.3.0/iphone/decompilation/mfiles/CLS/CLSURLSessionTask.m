@implementation CLSURLSessionTask

+(void *)task {
    r0 = [self class];
    r0 = [r0 new];
    r0 = [r0 autorelease];
    return r0;
}

-(void)start {
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = dispatch_queue_create("com.crashlytics.URLSessionTask", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_invokesDelegate = 0x1;
            [r19 retain];
    }
    [r19 release];
    r0 = r19;
    return r0;
}

-(void)cancel {
    return;
}

-(void)cleanup {
    return;
}

-(void *)currentRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currentRequest)), 0x0);
    return r0;
}

-(void)resume {
    return;
}

-(void)setCurrentRequest:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)originalRequest {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_originalRequest)), 0x0);
    return r0;
}

-(void *)response {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_response)), 0x0);
    return r0;
}

-(void)setOriginalRequest:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setResponse:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)error {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_error)), 0x0);
    return r0;
}

-(void)setError:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(bool)invokesDelegate {
    r0 = *(int8_t *)(int64_t *)&self->_invokesDelegate;
    return r0;
}

-(void)setInvokesDelegate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_invokesDelegate = arg2;
    return;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    self->_delegate = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_response, 0x0);
    objc_storeStrong((int64_t *)&self->_currentRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_originalRequest, 0x0);
    return;
}

@end