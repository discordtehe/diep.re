@implementation MPRewardedVideoConnection

-(void *)initWithUrl:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r22 + 0x10, r20);
            objc_storeWeak(r22 + 0x28, r21);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)sendRewardedVideoCompletionRequest {
    r21 = [[self url] retain];
    [[MPURLRequest requestWithURL:r21] retain];
    [r21 release];
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    r23 = [[MPHTTPNetworkSession startTaskWithHttpRequest:r20 responseHandler:&var_70 errorHandler:&var_98] retain];
    [self setTask:r23];
    [r23 release];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    [r20 release];
    return;
}

-(void)retryRewardedVideoCompletionRequest {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r2 = [self retryCount];
    [r19 backoffTime:r2];
    v8 = v0;
    [r19 accumulatedRetryInterval];
    [r19 setAccumulatedRetryInterval:r2];
    [r19 accumulatedRetryInterval];
    if (d8 + d0 < *0x100be3f70) {
            [r19 performSelector:r2 withObject:r3 afterDelay:r4];
    }
    else {
            r21 = [[r19 delegate] retain];
            r22 = [[r19 url] retain];
            [r21 rewardedVideoConnectionCompleted:r19 url:r22];
            [r22 release];
            [r21 release];
            r0 = [r19 task];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
    }
    [r19 setRetryCount:[r19 retryCount] + 0x1];
    return;
}

-(double)backoffTime:(unsigned long long)arg2 {
    r0 = self;
    asm { ucvtf      d0, x2 };
    r0 = exp2(r0);
    asm { fmin       d0, d0, d1 };
    return r0;
}

-(void *)task {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)url {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(unsigned long long)retryCount {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setRetryCount:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void)setAccumulatedRetryInterval:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(double)accumulatedRetryInterval {
    r0 = self;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x28);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x28, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x28);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end