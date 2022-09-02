@implementation USRVCacheOperation

-(void *)initWithSource:(void *)arg2 target:(void *)arg3 connectTimeout:(int)arg4 headers:(void *)arg5 append:(bool)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg6;
    r24 = arg4;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            [r23 setSource:r19];
            [r23 setTarget:r21];
            [r23 setConnectTimeout:r24];
            [r23 setProgressEventInterval:0x0];
            [r23 setLastProgressEvent:0x0];
            [r23 setExpectedContentSize:0x0];
            [r23 setHeaders:r22];
            [r23 setAppend:r20];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)main {
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff80 - 0x330;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] > 0x3) {
            r0 = [r19 target];
            r29 = r29;
            r20 = [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads cache: Cache operation started for file %@", @selector(target), r2, r3, r4);
            [r20 release];
    }
    objc_initWeak(r29 - 0x78, r19);
    if ([r19 append] == 0x0) goto loc_1000cd038;

loc_1000ccfdc:
    r20 = [[NSFileManager defaultManager] retain];
    r0 = [r19 target];
    r29 = r29;
    r23 = [r0 retain];
    if ([r20 fileExistsAtPath:r23] == 0x0) goto loc_1000cd3fc;

loc_1000cd030:
    r27 = 0x1;
    goto loc_1000cd03c;

loc_1000cd03c:
    if (([r19 append] & 0x1) == 0x0) goto loc_1000cd064;

loc_1000cd04c:
    if ((r27 & 0x1) != 0x0) {
            [r23 release];
            [r20 release];
    }
    goto loc_1000cd0e0;

loc_1000cd0e0:
    r23 = [[r19 source] retain];
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r27 = [r0 retain];
    [r23 release];
    if (r27 == 0x0) goto loc_1000cd46c;

loc_1000cd134:
    [r19 startObserving];
    r26 = [[NSMutableDictionary alloc] init];
    r0 = [r19 headers];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 headers];
            r29 = r29;
            r20 = [r0 retain];
            [r26 addEntriesFromDictionary:r20];
            [r20 release];
    }
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r24 = [USRVWebRequest alloc];
    r0 = [r19 source];
    r29 = r29;
    r23 = [r0 retain];
    r5 = [r19 connectTimeout];
    r20 = [r24 initWithUrl:r23 requestType:@"GET" headers:0x0 connectTimeout:r5];
    r2 = r20;
    [r19 setRequest:r2];
    [r20 release];
    [r23 release];
    r0 = [r19 append];
    var_348 = r27;
    var_340 = r26;
    if (r0 != 0x0) {
            r3 = @"GET";
            r23 = [[r19 target] retain];
            r2 = r23;
            r0 = [NSFileHandle fileHandleForUpdatingAtPath:r2];
            r29 = r29;
            r28 = [r0 retain];
            [r23 release];
            r23 = [r28 seekToEndOfFile];
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    r3 = @"GET";
                    [[r19 source] retain];
                    r0 = [r19 target];
                    r29 = r29;
                    [r0 retain];
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads cache: resuming download from %@ to %@ at %llu bytes", @selector(target), r2, r3, 0x0, r5, r6);
                    [r24 release];
                    [r21 release];
            }
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    [[r19 source] retain];
                    r0 = [r19 target];
                    r29 = r29;
                    [r0 retain];
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads cache: starting download from %@ to %@", @selector(target), r2, @"GET", 0x0, r5);
                    [r23 release];
                    [r21 release];
            }
            r21 = [[NSFileManager defaultManager] retain];
            r20 = [[r19 target] retain];
            r3 = 0x0;
            [r21 createFileAtPath:r20 contents:r3 attributes:0x0];
            [r20 release];
            [r21 release];
            r21 = [[r19 target] retain];
            r0 = [NSFileHandle fileHandleForWritingAtPath:r21];
            r29 = r29;
            r28 = [r0 retain];
            [r21 release];
            r23 = 0x0;
    }
    r0 = [r19 request];
    r25 = &var_1B0 + 0x20;
    [r0 retain];
    objc_copyWeak(r25, r29 - 0x78);
    [r21 setProgressBlock:&var_1B0];
    [r21 release];
    r0 = [r19 request];
    r27 = &var_1F0 + 0x30;
    [r0 retain];
    objc_copyWeak(r27, r29 - 0x78);
    [r21 setStartBlock:&var_1F0];
    [r21 release];
    if ([USRVConnectivityUtils getNetworkStatus] == 0x0) goto loc_1000cd834;

loc_1000cd6f8:
    r0 = [r19 request];
    r0 = [r0 retain];
    [r0 setHeaders:var_340];
    [r0 release];
    r0 = [r19 request];
    r0 = [r0 retain];
    r21 = [[r0 makeRequest] retain];
    [r0 release];
    r0 = [r19 request];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 error];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 == 0x0) goto loc_1000cd89c;

loc_1000cd7a0:
    dispatch_async(*__dispatch_main_q, &var_248);
    [r28 writeData:r21];
    [r28 synchronizeFile];
    [r28 closeFile];
    [r28 release];
    if (0x0 != 0x0) goto loc_1000cdb54;

loc_1000cd820:
    [r19 stopObserving];
    goto loc_1000cdac8;

loc_1000cdac8:
    [r21 release];
    r28 = 0x0;
    goto loc_1000cdad4;

loc_1000cdad4:
    objc_destroyWeak(r27);
    objc_destroyWeak(r25);
    [var_340 release];
    _Block_object_dispose(&var_118, 0x8);
    _Block_object_dispose(r29 - 0xf8, 0x8);
    [0x0 release];
    [r28 release];
    r27 = var_348;
    goto loc_1000cdb1c;

loc_1000cdb1c:
    [r27 release];
    goto loc_1000cdb24;

loc_1000cdb24:
    objc_destroyWeak(r29 - 0x78);
    return;

loc_1000cdb54:
    objc_exception_rethrow();
    return;

loc_1000cd89c:
    r2 = r21;
    [r28 writeData:r2];
    [r28 synchronizeFile];
    [r28 closeFile];
    [r28 release];
    if (0x0 != 0x0) goto loc_1000cdb58;

loc_1000cd8e4:
    if (0x0 == 0x0) {
            r23 = [r21 length];
            r0 = [NSDate date];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 timeIntervalSince1970];
            [r20 release];
            r0 = [r19 isCancelled];
            d0 = *0x100b9b058;
            asm { fcvtzs     x8, d1 };
            asm { scvtf      d1, x8 };
            asm { fcvtzs     x20, d0 };
            if ((r0 & 0x1) != 0x0) {
                    r1 = &var_338;
            }
            else {
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            r0 = [r19 target];
                            r29 = r29;
                            [r0 retain];
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads cache: file %@ of %llu bytes downloaded in %lldms", @selector(target), r2, r3, 0x0, r5, r6);
                            [r24 release];
                    }
                    r1 = &var_2F0;
            }
            dispatch_async(*__dispatch_main_q, r1);
            [r19 stopObserving];
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    r0 = [r19 target];
                    r29 = r29;
                    [r0 retain];
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads cache: Cache operation finished for file %@", @selector(target), r2, r3, 0x0);
                    [r19 release];
            }
    }
    goto loc_1000cdac8;

loc_1000cdb58:
    objc_exception_rethrow();
    return;

loc_1000cd834:
    objc_copyWeak(&var_218 + 0x20, r29 - 0x78);
    dispatch_async(*__dispatch_main_q, &var_218);
    [r19 stopObserving];
    objc_destroyWeak(&var_218 + 0x20);
    goto loc_1000cdad4;

loc_1000cd46c:
    dispatch_async(*__dispatch_main_q, r29 - 0xc8);
    goto loc_1000cdb1c;

loc_1000cd064:
    r24 = [[NSFileManager defaultManager] retain];
    r0 = [r19 target];
    r29 = r29;
    r26 = [r0 retain];
    r25 = [r24 fileExistsAtPath:r26];
    [r26 release];
    [r24 release];
    if (r27 != 0x0) {
            [r23 release];
            [r20 release];
    }
    if ((r25 & 0x1) != 0x0) goto loc_1000cd40c;
    goto loc_1000cd0e0;

loc_1000cd40c:
    objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
    dispatch_async(*__dispatch_main_q, r29 - 0xa0);
    objc_destroyWeak((r29 - 0xa0) + 0x20);
    goto loc_1000cdb24;

loc_1000cd3fc:
    [r23 release];
    [r20 release];
    goto loc_1000cd40c;

loc_1000cd038:
    r27 = 0x0;
    goto loc_1000cd03c;
}

-(void)startObserving {
    [self addObserver:self forKeyPath:@"isCancelled" options:0x1 context:0x0];
    return;
}

-(void)stopObserving {
    [self removeObserver:self forKeyPath:@"isCancelled"];
    return;
}

-(void *)source {
    r0 = self->_source;
    return r0;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
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
    r21 = [arg2 retain];
    r20 = [arg2 isEqualToString:r2];
    [r21 release];
    if (r20 == 0x0) goto .l1;

loc_1000cf8c0:
    r0 = [r19 request];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000cf934;

loc_1000cf8e4:
    r0 = [r19 request];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 finished];
    [r0 release];
    [r21 release];
    if ((r23 & 0x1) == 0x0) goto loc_1000cf93c;

.l1:
    return;

loc_1000cf93c:
    r0 = [r19 request];
    r0 = [r0 retain];
    [r0 cancel];
    r0 = r0;
    goto loc_1000cf964;

loc_1000cf964:
    [r0 release];
    return;

loc_1000cf934:
    r0 = r21;
    goto loc_1000cf964;
}

-(void)setSource:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_source, arg2);
    return;
}

-(void *)target {
    r0 = self->_target;
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_target, arg2);
    return;
}

-(void)setConnectTimeout:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_connectTimeout = arg2;
    return;
}

-(int)connectTimeout {
    r0 = *(int32_t *)(int64_t *)&self->_connectTimeout;
    return r0;
}

-(int)progressEventInterval {
    r0 = *(int32_t *)(int64_t *)&self->_progressEventInterval;
    return r0;
}

-(void)setProgressEventInterval:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_progressEventInterval = arg2;
    return;
}

-(void)setProgressTimer:(void *)arg2 {
    self->_progressTimer = arg2;
    return;
}

-(void *)progressTimer {
    r0 = self->_progressTimer;
    return r0;
}

-(long long)lastProgressEvent {
    r0 = self->_lastProgressEvent;
    return r0;
}

-(void)setLastProgressEvent:(long long)arg2 {
    self->_lastProgressEvent = arg2;
    return;
}

-(long long)expectedContentSize {
    r0 = self->_expectedContentSize;
    return r0;
}

-(void)setExpectedContentSize:(long long)arg2 {
    self->_expectedContentSize = arg2;
    return;
}

-(void *)request {
    r0 = self->_request;
    return r0;
}

-(void)setRequest:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_request, arg2);
    return;
}

-(void)setHeaders:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_headers, arg2);
    return;
}

-(void *)headers {
    r0 = self->_headers;
    return r0;
}

-(bool)append {
    r0 = *(int8_t *)(int64_t *)&self->_append;
    return r0;
}

-(void)setAppend:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_append = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_headers, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_target, 0x0);
    objc_storeStrong((int64_t *)&self->_source, 0x0);
    return;
}

@end