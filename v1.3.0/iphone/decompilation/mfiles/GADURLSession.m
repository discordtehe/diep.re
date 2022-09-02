@implementation GADURLSession

-(void *)init {
    r20 = [[NSURLSessionConfiguration defaultSessionConfiguration] retain];
    r19 = [self initWithConfiguration:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            r0 = [GADURLSessionTransactionMonitor alloc];
            r0 = objc_msgSend(r0, r21);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_taskMonitor));
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [*(r20 + r21) setMaxConcurrentOperationCount:0x1];
            r0 = [NSURLSession sessionWithConfiguration:r19 delegate:*(r20 + r23) delegateQueue:*(r20 + r21)];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_session));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r20->_valid = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0xc0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_valid != 0x0) {
            r21 = [r19->_lockQueue retain];
            r20 = [r19->_taskMonitor retain];
            r22 = [r19->_session retain];
            var_50 = r20;
            [r20 retain];
            var_48 = r22;
            [r22 retain];
            [r21 addOperationWithBlock:&var_70];
            r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_78 = r21;
            [r21 retain];
            dispatch_async(r23, &var_98);
            [r23 release];
            [var_78 release];
            [var_48 release];
            [var_50 release];
            [r22 release];
            [r20 release];
            [r21 release];
    }
    [[&var_A8 super] dealloc];
    return;
}

-(void)sendRequest:(void *)arg2 withContext:(void *)arg3 notificationPolicy:(long long)arg4 completionHandler:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [arg5 retain];
    r24 = self->_lockQueue;
    var_58 = [self retain];
    var_50 = r19;
    r19 = [r19 retain];
    r22 = [r23 retain];
    var_40 = r21;
    r21 = [r21 retain];
    [r24 addOperationWithBlock:&var_78];
    [var_40 release];
    [r23 release];
    [var_50 release];
    [var_58 release];
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)invalidateAndCancel {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    [r19 addOperationWithBlock:&var_38];
    [var_18 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_taskMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end