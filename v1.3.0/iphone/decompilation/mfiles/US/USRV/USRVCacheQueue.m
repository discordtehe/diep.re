@implementation USRVCacheQueue

+(void)start {
    if (*qword_1011d1a88 != -0x1) {
            dispatch_once(0x1011d1a88, 0x100e6a020);
    }
    return;
}

+(bool)download:(void *)arg2 target:(void *)arg3 headers:(void *)arg4 append:(bool)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [USRVCacheQueue downloadFile:r22 target:r21 headers:arg4 append:arg5];
    [r21 release];
    [r22 release];
    r0 = r19;
    return r0;
}

+(bool)downloadFile:(void *)arg2 target:(void *)arg3 headers:(void *)arg4 append:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg5;
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = 0x0;
    if (r19 != 0x0) {
            r23 = 0x0;
            if (r20 != 0x0) {
                    r22 = [r22 retain];
                    r21 = [[USRVCacheOperation alloc] initWithSource:r19 target:r20 connectTimeout:*(int32_t *)0x1011a92e0 headers:r22 append:r21];
                    [r22 release];
                    if (*(int32_t *)0x1011d1a98 >= 0x1) {
                            [r21 setProgressEventInterval:r2];
                    }
                    [*0x1011d1a90 addOperation:r21];
                    [r21 release];
                    r23 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

+(void)cancelAllDownloads {
    if (*0x1011d1a90 != 0x0) {
            [*0x1011d1a90 cancelAllOperations];
    }
    return;
}

+(bool)hasOperations {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *0x1011d1a90;
    r0 = [r0 operationCount];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)setConnectTimeout:(int)arg2 {
    *(int32_t *)0x1011a92e0 = arg2;
    return;
}

+(int)getProgressInterval {
    return *(int32_t *)0x1011d1a98;
}

+(void)setProgressInterval:(int)arg2 {
    *(int32_t *)0x1011d1a98 = arg2;
    return;
}

+(int)getConnectTimeout {
    return *(int32_t *)0x1011a92e0;
}

@end