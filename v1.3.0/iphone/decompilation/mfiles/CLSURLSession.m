@implementation CLSURLSession

+(bool)NSURLSessionShouldBeUsed {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = NSClassFromString(@"NSURLSession");
    if (r0 != 0x0) {
            r0 = [NSURLSessionConfiguration class];
            r0 = [r0 respondsToSelector:@selector(backgroundSessionConfigurationWithIdentifier:)];
    }
    return r0;
}

+(void *)sessionWithConfiguration:(void *)arg2 {
    r0 = [self sessionWithConfiguration:arg2 delegate:0x0 delegateQueue:0x0];
    return r0;
}

+(void *)newDefaultDelegateQueue {
    r20 = [[NSOperationQueue alloc] init];
    r22 = [NSStringFromClass(self) retain];
    r19 = [[NSString stringWithFormat:@"%@ %p"] retain];
    [r20 setName:r19];
    [r19 release];
    [r22 release];
    [r20 setMaxConcurrentOperationCount:0x1];
    r0 = r20;
    return r0;
}

+(void *)sessionWithConfiguration:(void *)arg2 delegate:(void *)arg3 delegateQueue:(void *)arg4 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r23 NSURLSessionShouldBeUsed] != 0x0) {
            r22 = [[NSURLSession sessionWithConfiguration:r19 delegate:r20 delegateQueue:r21] retain];
    }
    else {
            if (r19 != 0x0) {
                    r0 = [r23 new];
                    r22 = r0;
                    [r0 setDelegate:r20];
                    if (r20 != 0x0 && r21 == 0x0) {
                            r23 = [r23 newDefaultDelegateQueue];
                            [r21 release];
                            r21 = r23;
                    }
                    [r22 setDelegateQueue:r21];
                    [r22 setConfiguration:r19];
            }
            else {
                    r22 = 0x0;
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = dispatch_queue_create("com.crashlytics.URLSession", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)invalidateAndCancel {
    dispatch_sync(self->_queue, &var_38);
    [self setDelegate:0x0];
    return;
}

-(void)finishTasksAndInvalidate {
    [self setDelegate:0x0];
    return;
}

-(void)getTasksWithCompletionHandler:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [[self delegateQueue] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r19 addOperationWithBlock:&var_48];
    [r19 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)removeTaskFromSet:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_async(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)configureTask:(void *)arg2 withRequest:(void *)arg3 block:(void *)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [arg4 retain];
    r24 = [arg3 mutableCopy];
    [r23 release];
    r23 = r20->_queue;
    r21 = [r22 retain];
    var_40 = r21;
    r22 = [r24 retain];
    var_38 = r22;
    dispatch_sync(r23, &var_68);
    if (r19 != 0x0) {
            (*(r19 + 0x10))(r19, r22);
    }
    [r21 setOriginalRequest:r22];
    [r21 setDelegate:r20];
    [var_38 release];
    [var_40 release];
    [r22 release];
    [r19 release];
    [r21 release];
    return;
}

-(bool)shouldInvokeDelegateSelector:(void *)arg2 forTask:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [arg3 invokesDelegate];
    if (r0 != 0x0) {
            r0 = r20->_delegate;
            r0 = [r0 respondsToSelector:r2];
    }
    return r0;
}

-(void *)uploadTaskWithRequest:(void *)arg2 fromFile:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self uploadTaskWithRequest:r21 fromFile:arg3 completionHandler:0x0] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)downloadTaskWithRequest:(void *)arg2 {
    r0 = [self downloadTaskWithRequest:arg2 completionHandler:0x0];
    return r0;
}

-(void *)dataTaskWithRequest:(void *)arg2 {
    r0 = [self dataTaskWithRequest:arg2 completionHandler:0x0];
    return r0;
}

-(void *)downloadTaskWithURL:(void *)arg2 {
    r20 = [[NSURLRequest requestWithURL:arg2] retain];
    r19 = [[self downloadTaskWithRequest:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dataTaskWithRequest:(void *)arg2 completionHandler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [[CLSURLSessionDataTask task] retain];
    if (r21 != 0x0) {
            [r22 setCompletionHandler:r21];
            [r22 setInvokesDelegate:0x0];
    }
    [r20 configureTask:r22 withRequest:r19 block:0x0];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)uploadTaskWithRequest:(void *)arg2 fromFile:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [[CLSURLSessionUploadTask task] retain];
    if (r20 != 0x0) {
            [r22 setCompletionHandler:r20];
            [r22 setInvokesDelegate:0x0];
    }
    var_38 = r23;
    r23 = [r23 retain];
    [r19 configureTask:r22 withRequest:r21 block:&var_58];
    [r21 release];
    [var_38 release];
    [r23 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)downloadTaskWithRequest:(void *)arg2 completionHandler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [[CLSURLSessionDownloadTask task] retain];
    if (r21 != 0x0) {
            [r22 setDownloadCompletionHandler:r21];
            [r22 setInvokesDelegate:0x0];
    }
    [r20 configureTask:r22 withRequest:r19 block:0x0];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)task:(void *)arg2 willPerformHTTPRedirection:(void *)arg3 newRequest:(void *)arg4 {
    r0 = [arg4 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)task:(void *)arg2 didCompleteWithError:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r21 shouldInvokeDelegateSelector:@selector(URLSession:task:didCompleteWithError:) forTask:r19, r4] & 0x1) != 0x0) {
            r22 = r21->_delegateQueue;
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            [r22 addOperationWithBlock:&var_58];
            [var_28 release];
            [var_30 release];
    }
    else {
            [r21 removeTaskFromSet:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)task:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21 shouldInvokeDelegateSelector:@selector(URLSession:dataTask:didReceiveResponse:completionHandler:) forTask:r19, r4, r5] != 0x0) {
            r22 = r21->_delegateQueue;
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            [r22 addOperationWithBlock:&var_58];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)task:(void *)arg2 didReceiveData:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21 shouldInvokeDelegateSelector:@selector(URLSession:dataTask:didReceiveData:) forTask:r19, r4] != 0x0) {
            r22 = r21->_delegateQueue;
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            [r22 addOperationWithBlock:&var_58];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)downloadTask:(void *)arg2 didFinishDownloadingToURL:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r21 shouldInvokeDelegateSelector:@selector(URLSession:downloadTask:didFinishDownloadingToURL:) forTask:r19, r4] & 0x1) != 0x0) {
            r22 = r21->_delegateQueue;
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            [r22 addOperationWithBlock:&var_58];
            [var_28 release];
            [var_30 release];
    }
    else {
            [r19 cleanup];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void *)delegateQueue {
    r0 = self->_delegateQueue;
    return r0;
}

-(void)setDelegateQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegateQueue, arg2);
    return;
}

-(void *)configuration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_configuration)), 0x0);
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)sessionDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionDescription)), 0x0);
    return r0;
}

-(void)setSessionDescription:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sessionDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_taskSet, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_delegateQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    return;
}

@end