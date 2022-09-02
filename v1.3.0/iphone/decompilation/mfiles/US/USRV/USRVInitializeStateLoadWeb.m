@implementation USRVInitializeStateLoadWeb

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

-(int)maxRetries {
    r0 = *(int32_t *)(int64_t *)&self->_maxRetries;
    return r0;
}

-(void)setMaxRetries:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_maxRetries = arg2;
    return;
}

-(void *)execute {
    r31 = r31 - 0x90;
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = self;
    r0 = [self configuration];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 webViewUrl] retain];
    r0 = [NSString stringWithFormat:@"%@"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([USRVDeviceLog getLogLevel] >= 0x3) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: loading webapp from %@", @selector(getLogLevel), @"%@", r3, r4);
    }
    r0 = [USRVWebRequest alloc];
    r0 = [r0 initWithUrl:r19 requestType:@"GET" headers:0x0 connectTimeout:0x7530];
    r22 = r0;
    r28 = [[r0 makeRequest] retain];
    r0 = [r22 error];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r22 error];
            r29 = r29;
            r27 = [r0 retain];
            if (r27 != 0x0) {
                    r0 = [r20 retries];
                    r23 = [r20 maxRetries];
                    [r27 release];
                    r28 = r28;
                    r19 = r19;
                    r22 = r22;
                    if (r0 < r23) {
                            [r20 setRetryDelay:[r20 retryDelay] << 0x1];
                            [r20 setRetries:[r20 retries] + 0x1];
                            r23 = [USRVInitializeStateLoadWeb alloc];
                            r27 = [[r20 configuration] retain];
                            r23 = [r23 initWithConfiguration:r27 retries:[r20 retries] retryDelay:[r20 retryDelay]];
                            [r27 release];
                            r24 = [USRVInitializeStateRetry alloc];
                            r21 = [[r20 configuration] retain];
                            r0 = [r24 initWithConfiguration:r21 retryState:r23 retryDelay:[r20 retryDelay]];
                    }
                    else {
                            r0 = [r22 error];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r23 = [USRVInitializeStateLoadWeb alloc];
                                    r25 = [[r20 configuration] retain];
                                    r23 = [r23 initWithConfiguration:r25 retries:[r20 retries] retryDelay:[r20 retryDelay]];
                                    [r25 release];
                                    r24 = [USRVInitializeStateNetworkError alloc];
                                    r21 = [[r20 configuration] retain];
                                    r0 = [r24 initWithConfiguration:r21 erroredState:r23 stateName:@"load web" message:@"Network error while loading WebApp from internet, waiting for connection"];
                            }
                            else {
                                    r23 = [[NSString alloc] initWithData:r28 encoding:0x4];
                                    r24 = [USRVInitializeStateCreate alloc];
                                    r21 = [[r20 configuration] retain];
                                    r0 = [r24 initWithConfiguration:r21 webViewData:r23];
                            }
                    }
            }
            else {
                    [r27 release];
                    r0 = [r22 error];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r23 = [USRVInitializeStateLoadWeb alloc];
                            r25 = [[r20 configuration] retain];
                            r23 = [r23 initWithConfiguration:r25 retries:[r20 retries] retryDelay:[r20 retryDelay]];
                            [r25 release];
                            r24 = [USRVInitializeStateNetworkError alloc];
                            r21 = [[r20 configuration] retain];
                            r0 = [r24 initWithConfiguration:r21 erroredState:r23 stateName:@"load web" message:@"Network error while loading WebApp from internet, waiting for connection"];
                    }
                    else {
                            r23 = [[NSString alloc] initWithData:r28 encoding:0x4];
                            r24 = [USRVInitializeStateCreate alloc];
                            r21 = [[r20 configuration] retain];
                            r0 = [r24 initWithConfiguration:r21 webViewData:r23];
                    }
            }
    }
    else {
            r0 = [USRVSdkProperties getLocalWebViewFile];
            r29 = r29;
            r25 = [r0 retain];
            [r28 writeToFile:r25 atomically:0x1];
            [r25 release];
            r23 = [[NSString alloc] initWithData:r28 encoding:0x4];
            r24 = [USRVInitializeStateCreate alloc];
            r21 = [[r20 configuration] retain];
            r0 = [r24 initWithConfiguration:r21 webViewData:r23];
    }
    [r21 release];
    [r23 release];
    [r28 release];
    [r22 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
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