@implementation FABNetworkClient

-(void *)init {
    r0 = [self initWithQueue:0x0];
    return r0;
}

-(void *)initWithQueue:(void *)arg2 {
    r0 = [self initWithQueue:arg2 pinnedCertificates:0x0];
    return r0;
}

-(void *)initWithQueue:(void *)arg2 pinnedCertificates:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[CLSURLSessionConfiguration defaultSessionConfiguration] retain];
    r20 = [self initWithSessionConfiguration:r22 queue:r21 pinnedCertificates:r19];
    [r19 release];
    [r21 release];
    [r22 release];
    r0 = r20;
    return r0;
}

-(void *)initWithSessionConfiguration:(void *)arg2 queue:(void *)arg3 pinnedCertificates:(void *)arg4 {
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            if (r21 != 0x0) {
                    r0 = [FABCertificatePinner alloc];
                    r0 = [r0 initWithCertificates:r21];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_certPinner));
                    r8 = *(r22 + r9);
                    *(r22 + r9) = r0;
                    [r8 release];
            }
            r0 = [CLSURLSession sessionWithConfiguration:r19 delegate:r22 delegateQueue:r20];
            r0 = [r0 retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_session));
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            if (*(r22 + r23) != 0x0) {
                    r23 = [r22 retain];
            }
            else {
                    r23 = 0x0;
            }
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;
}

-(void)dealloc {
    [self->_session finishTasksAndInvalidate];
    [[&var_20 super] dealloc];
    return;
}

-(double)randomDoubleWithMin:(double)arg2 max:(double)arg3 {
    r0 = drand48();
    return r0;
}

-(double)generateRandomJitter {
    r0 = [self randomDoubleWithMin:r2 max:r3];
    return r0;
}

-(void)runAfterRetryValueFromResponse:(void *)arg2 attempts:(unsigned long long)arg3 onQueue:(void *)arg4 block:(void *)arg5 {
    [arg2 retain];
    [arg4 retain];
    [arg5 retain];
    [self computeDelayForResponse:r2 withRetryCount:r3];
    [r23 release];
    asm { fcvtzu     x1, d0 };
    dispatch_after(dispatch_time(0x0, r1), r20, r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)runAfterRetryValueFromResponse:(void *)arg2 attempts:(unsigned long long)arg3 block:(void *)arg4 {
    r22 = [arg2 retain];
    r23 = dispatch_get_global_queue(0x0, 0x0);
    r19 = [arg4 retain];
    r23 = [r23 retain];
    [self runAfterRetryValueFromResponse:r22 attempts:arg3 onQueue:r23 block:r19];
    [r19 release];
    [r22 release];
    [r23 release];
    return;
}

-(double)computeDelayForResponse:(void *)arg2 withRetryCount:(unsigned long long)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    [FABNetworkResponseHandler retryValueForResponse:arg2];
    asm { fmax       d8, d0, d1 };
    r0 = [r20 generateRandomJitter];
    asm { ucvtf      d0, x19 };
    if (r19 == 0x0) {
            asm { fcsel      d1, d1, d0, eq };
    }
    r0 = pow(r0, @selector(generateRandomJitter));
    return r0;
}

-(void)startDataTaskWithRequest:(void *)arg2 retryLimit:(unsigned long long)arg3 tries:(unsigned long long)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xa0;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r24 = [arg5 retain];
    r25 = [[self session] retain];
    r19 = [r20 retain];
    var_68 = r19;
    r20 = [r24 retain];
    var_60 = r20;
    r0 = [r25 dataTaskWithRequest:r19 completionHandler:&var_88];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    [r21 resume];
    if (r21 == 0x0) {
            (*(r20 + 0x10))(r20, 0x0, 0x0, [[NSError errorWithDomain:*0x100e67f20 code:0xfffffffffffffffd userInfo:0x0] retain]);
            [r22 release];
    }
    [r21 release];
    [var_60 release];
    [var_68 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startDataTaskWithRequest:(void *)arg2 retryLimit:(unsigned long long)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    [self startDataTaskWithRequest:r22 retryLimit:arg3 tries:0x0 completionHandler:arg4];
    [r22 release];
    return;
}

-(void)startDataTaskWithRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    [self startDataTaskWithRequest:r21 retryLimit:0xa completionHandler:arg3];
    [r21 release];
    return;
}

-(void)startDownloadTaskWithRequest:(void *)arg2 retryLimit:(unsigned long long)arg3 tries:(unsigned long long)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xa0;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r24 = [arg5 retain];
    r25 = [[self session] retain];
    r19 = [r20 retain];
    var_68 = r19;
    r20 = [r24 retain];
    var_60 = r20;
    r0 = [r25 downloadTaskWithRequest:r19 completionHandler:&var_88];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    [r21 resume];
    if (r21 == 0x0) {
            (*(r20 + 0x10))(r20, 0x0, 0x0, [[NSError errorWithDomain:*0x100e67f20 code:0xfffffffffffffffd userInfo:0x0] retain]);
            [r22 release];
    }
    [r21 release];
    [var_60 release];
    [var_68 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startDownloadTaskWithRequest:(void *)arg2 retryLimit:(unsigned long long)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    [self startDownloadTaskWithRequest:r22 retryLimit:arg3 tries:0x0 completionHandler:arg4];
    [r22 release];
    return;
}

-(void)startDownloadTaskWithRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    [self startDownloadTaskWithRequest:r21 retryLimit:0xa completionHandler:arg3];
    [r21 release];
    return;
}

-(void)invalidateAndCancel {
    r0 = [self session];
    r0 = [r0 retain];
    [r0 invalidateAndCancel];
    [r0 release];
    return;
}

-(void)URLSession:(void *)arg2 didBecomeInvalidWithError:(void *)arg3 {
    return;
}

-(void)URLSession:(void *)arg2 didReceiveChallenge:(void *)arg3 completionHandler:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [Fabric sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 debug] != 0x0) {
            [r23 release];
            (*(r21 + 0x10))(r21, 0x1, 0x0);
    }
    else {
            r0 = [r22 certPinner];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r0 = [r22 certPinner];
                    r0 = [r0 retain];
                    [r0 handleChallenge:r20 fromURLSession:r19 completionHandler:r21];
                    [r0 release];
            }
            else {
                    (*(r21 + 0x10))(r21, 0x1, 0x0);
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)certPinner {
    r0 = self->_certPinner;
    return r0;
}

-(void *)session {
    r0 = self->_session;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    objc_storeStrong((int64_t *)&self->_certPinner, 0x0);
    return;
}

@end