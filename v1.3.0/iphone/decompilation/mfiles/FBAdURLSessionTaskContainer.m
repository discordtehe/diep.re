@implementation FBAdURLSessionTaskContainer

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestStart));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(long long)state {
    r0 = [self task];
    r0 = [r0 retain];
    r20 = [r0 state];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)cancel {
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestStart, 0x0);
    objc_storeStrong((int64_t *)&self->_task, 0x0);
    return;
}

-(void *)task {
    r0 = self->_task;
    return r0;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_task, arg2);
    return;
}

-(void *)requestStart {
    r0 = self->_requestStart;
    return r0;
}

-(void)setRequestStart:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestStart, arg2);
    return;
}

@end