@implementation USRVWebRequestQueue

+(void)start {
    if (*qword_1011d1b60 != -0x1) {
            dispatch_once(0x1011d1b60, 0x100e6a2f0);
    }
    return;
}

+(void)setConcurrentRequestCount:(int)arg2 {
    r2 = arg2;
    r0 = *0x1011d1b68;
    asm { sxtw       x2, w2 };
    [r0 setMaxConcurrentOperationCount:r2];
    return;
}

+(void)requestUrl:(void *)arg2 type:(void *)arg3 headers:(void *)arg4 completeBlock:(void *)arg5 connectTimeout:(int)arg6 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    [USRVWebRequestQueue requestUrl:r23 type:r22 headers:r21 body:0x0 completeBlock:arg5 connectTimeout:arg6];
    [r21 release];
    [r22 release];
    [r23 release];
    return;
}

+(void)requestUrl:(void *)arg2 type:(void *)arg3 headers:(void *)arg4 body:(void *)arg5 completeBlock:(void *)arg6 connectTimeout:(int)arg7 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = arg7;
    r24 = arg6;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    if (r19 != 0x0 && r24 != 0x0 && r20 != 0x0) {
            if (*0x1011d1b68 != 0x0) {
                    r24 = [r24 retain];
                    r22 = [[USRVWebRequestOperation alloc] initWithUrl:r19 requestType:r20 headers:r21 body:r23 completeBlock:r24 connectTimeout:r22];
                    [r24 release];
                    [*0x1011d1b68 addOperation:r22];
                    [r22 release];
            }
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)cancelAllOperations {
    if (*0x1011d1b68 != 0x0) {
            [*0x1011d1b68 cancelAllOperations];
    }
    if (*0x1011d1b70 != 0x0) {
            [*0x1011d1b70 cancelAllOperations];
    }
    return;
}

+(bool)resolve:(void *)arg2 completeBlock:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r19 length] >= 0x3) {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 isEqual:r2];
            [r21 release];
            if (r22 != 0x0) {
                    (*(r20 + 0x10))(r20, r19, 0x0, [sub_1000e08c4() retain], @"Invalid host");
                    [r21 release];
                    r21 = 0x0;
            }
            else {
                    r21 = [[USRVResolveOperation alloc] initWithHostName:r19 completeBlock:r20];
                    [*0x1011d1b70 addOperation:r21];
                    [r21 release];
                    r21 = 0x1;
            }
    }
    else {
            (*(r20 + 0x10))(r20, r19, 0x0, [sub_1000e08c4() retain], @"Invalid host");
            [r21 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end