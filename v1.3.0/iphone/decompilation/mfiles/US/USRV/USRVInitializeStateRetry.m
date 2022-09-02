@implementation USRVInitializeStateRetry

-(void *)initWithConfiguration:(void *)arg2 retryState:(void *)arg3 retryDelay:(int)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] initWithConfiguration:r22];
    r21 = r0;
    [r22 release];
    if (r21 != 0x0) {
            [r21 setRetryState:r20];
            [r21 setRetryDelay:r19];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)execute {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            [r19 retryDelay];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: retrying in %d seconds ", @selector(retryDelay), r2, r3, r4);
    }
    r0 = [NSCondition alloc];
    r0 = [r0 init];
    [r0 lock];
    [NSDate alloc];
    [r19 retryDelay];
    asm { scvtf      d0, w0 };
    r20 = [r21 initWithTimeIntervalSinceNow:r2];
    [r22 waitUntilDate:r20];
    [r20 release];
    [r22 unlock];
    r19 = [[r19 retryState] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)retryState {
    r0 = self->_retryState;
    return r0;
}

-(void)setRetryState:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_retryState, arg2);
    return;
}

-(int)retryDelay {
    r0 = *(int32_t *)(int64_t *)&self->_retryDelay;
    return r0;
}

-(void)setRetryDelay:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryDelay = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_retryState, 0x0);
    return;
}

@end