@implementation USRVWebRequestOperation

-(void *)initWithUrl:(void *)arg2 requestType:(void *)arg3 headers:(void *)arg4 body:(void *)arg5 completeBlock:(void *)arg6 connectTimeout:(int)arg7 {
    r31 = r31 - 0x60;
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
    r25 = arg7;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    r0 = [[&var_50 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            r25 = [[USRVWebRequest alloc] initWithUrl:r19 requestType:r20 headers:r21 connectTimeout:r25];
            [r23 setRequest:r25];
            [r25 release];
            r0 = [r23 request];
            r0 = [r0 retain];
            [r0 setBody:r22];
            [r0 release];
            [r23 setCompleteBlock:r24];
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)startObserving {
    [self addObserver:self forKeyPath:@"isCancelled" options:0x1 context:0x0];
    return;
}

-(void)main {
    r31 = r31 - 0x70;
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
    r21 = self;
    [self startObserving];
    r0 = [r21 request];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 makeRequest];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    r20 = [[NSString alloc] initWithData:r19 encoding:0x4];
    if (r20 == 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r20 = [r0 retain];
    }
    [r21 stopObserving];
    r0 = [r21 completeBlock];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1000e2d58;

loc_1000e2bc8:
    r0 = [r21 request];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_1000e2d58;

loc_1000e2be4:
    r0 = [r21 request];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 canceled];
    [r0 release];
    [r25 release];
    [r24 release];
    if ((r27 & 0x1) != 0x0) goto loc_1000e2d60;

loc_1000e2c28:
    r23 = [[r21 completeBlock] retain];
    r0 = [r21 request];
    r0 = [r0 retain];
    var_58 = r0;
    r25 = [[r0 url] retain];
    r0 = [r21 request];
    r0 = [r0 retain];
    r27 = [[r0 error] retain];
    r0 = [r21 request];
    r0 = [r0 retain];
    r24 = [r0 responseCode];
    r0 = [r21 request];
    r0 = [r0 retain];
    (*(r23 + 0x10))(r23, r25, r27, r20, r24, [[r0 responseHeaders] retain]);
    [r22 release];
    [r21 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [var_58 release];
    r0 = r23;
    goto loc_1000e2d5c;

loc_1000e2d5c:
    [r0 release];
    goto loc_1000e2d60;

loc_1000e2d60:
    [r20 release];
    [r19 release];
    return;

loc_1000e2d58:
    r0 = r24;
    goto loc_1000e2d5c;
}

-(void)stopObserving {
    [self removeObserver:self forKeyPath:@"isCancelled"];
    return;
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

loc_1000e2e4c:
    r0 = [r19 request];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000e2ec0;

loc_1000e2e70:
    r0 = [r19 request];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 finished];
    [r0 release];
    [r21 release];
    if ((r23 & 0x1) == 0x0) goto loc_1000e2ec8;

.l1:
    return;

loc_1000e2ec8:
    r0 = [r19 request];
    r0 = [r0 retain];
    [r0 cancel];
    r0 = r0;
    goto loc_1000e2ef0;

loc_1000e2ef0:
    [r0 release];
    return;

loc_1000e2ec0:
    r0 = r21;
    goto loc_1000e2ef0;
}

-(void *)request {
    r0 = self->_request;
    return r0;
}

-(void)setRequest:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_request, arg2);
    return;
}

-(void *)completeBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completeBlock)), 0x0);
    return r0;
}

-(void)setCompleteBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completeBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    return;
}

@end