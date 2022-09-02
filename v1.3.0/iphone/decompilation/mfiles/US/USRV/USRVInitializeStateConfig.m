@implementation USRVInitializeStateConfig

-(void *)initWithConfiguration:(void *)arg2 retries:(int)arg3 retryDelay:(int)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r0 = [[&var_30 super] initWithConfiguration:arg2];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setRetries:r21];
            [r20 setMaxRetries:0x6];
            [r20 setRetryDelay:r19];
    }
    r0 = r20;
    return r0;
}

-(int)retries {
    r0 = *(int32_t *)(int64_t *)&self->_retries;
    return r0;
}

-(void)setRetries:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retries = arg2;
    return;
}

-(void *)execute {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] > 0x2) {
            r0 = [USRVSdkProperties getConfigUrl];
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: load configuration from %@", @selector(getConfigUrl), r2, r3, r4);
            [r20 release];
    }
    r22 = [[r19 configuration] retain];
    r21 = [[USRVSdkProperties getConfigUrl] retain];
    [r22 setConfigUrl:r21];
    [r21 release];
    [r22 release];
    r0 = [r19 configuration];
    r0 = [r0 retain];
    [r0 makeRequest];
    [r0 release];
    r0 = [r19 configuration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 error];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 configuration];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 error];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r24 = [r19 retries];
                    r25 = [r19 maxRetries];
                    [r23 release];
                    [r22 release];
                    if (r24 < r25) {
                            [r19 setRetryDelay:[r19 retryDelay] << 0x1];
                            [r19 setRetries:[r19 retries] + 0x1];
                            r24 = [USRVInitializeStateConfig alloc];
                            r25 = [[r19 configuration] retain];
                            r21 = [r19 retries];
                            r21 = [r24 initWithConfiguration:r25 retries:r21 retryDelay:[r19 retryDelay]];
                            [r25 release];
                            r23 = [USRVInitializeStateRetry alloc];
                            r20 = [[r19 configuration] retain];
                            r0 = [r23 initWithConfiguration:r20 retryState:r21 retryDelay:[r19 retryDelay]];
                    }
                    else {
                            r23 = [USRVInitializeStateConfig alloc];
                            r24 = [[r19 configuration] retain];
                            r21 = [r19 retries];
                            r21 = [r23 initWithConfiguration:r24 retries:r21 retryDelay:[r19 retryDelay]];
                            [r24 release];
                            r22 = [USRVInitializeStateNetworkError alloc];
                            r20 = [[r19 configuration] retain];
                            r0 = [r22 initWithConfiguration:r20 erroredState:r21 stateName:@"network error" message:@"Network error occured init SDK initialization, waiting for connection"];
                    }
            }
            else {
                    [r23 release];
                    [r22 release];
                    r23 = [USRVInitializeStateConfig alloc];
                    r24 = [[r19 configuration] retain];
                    r21 = [r19 retries];
                    r21 = [r23 initWithConfiguration:r24 retries:r21 retryDelay:[r19 retryDelay]];
                    [r24 release];
                    r22 = [USRVInitializeStateNetworkError alloc];
                    r20 = [[r19 configuration] retain];
                    r0 = [r22 initWithConfiguration:r20 erroredState:r21 stateName:@"network error" message:@"Network error occured init SDK initialization, waiting for connection"];
            }
            r19 = r0;
            [r20 release];
            r0 = r21;
    }
    else {
            r21 = [USRVInitializeStateLoadCache alloc];
            r20 = [[r19 configuration] retain];
            r19 = [r21 initWithConfiguration:r20];
            r0 = r20;
    }
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(int)maxRetries {
    r0 = *(int32_t *)(int64_t *)&self->_maxRetries;
    return r0;
}

-(void)setMaxRetries:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_maxRetries = arg2;
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

@end