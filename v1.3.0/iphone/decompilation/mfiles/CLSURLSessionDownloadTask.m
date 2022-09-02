@implementation CLSURLSessionDownloadTask

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_outputStream));
    [*(self + r20) close];
    [*(self + r20) setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [r19 temporaryFileURL];
            r0 = [r0 retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_targetURL));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = [NSOutputStream outputStreamWithURL:*(r19 + r20) append:0x0];
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_outputStream));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r20 = *(r19 + r22);
            r21 = [[NSRunLoop mainRunLoop] retain];
            [r20 scheduleInRunLoop:r21 forMode:**_NSRunLoopCommonModes];
            [r21 release];
            [*(r19 + r22) setDelegate:r19];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)temporaryFileURL {
    r19 = [NSTemporaryDirectory() retain];
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r21 = [[r0 globallyUniqueString] retain];
    r22 = [[r19 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    [r0 release];
    [r19 release];
    r19 = [[NSURL fileURLWithPath:r22 isDirectory:0x0] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)cleanup {
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtURL:self->_targetURL error:0x0];
    [r0 release];
    return;
}

-(void)complete {
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
    r21 = r19->_downloadCompletionHandler;
    if (r21 != 0x0) {
            r22 = r19->_targetURL;
            r23 = [[r19 response] retain];
            r0 = [r19 error];
            r29 = r29;
            (*(r21 + 0x10))(r21, r22, r23, [r0 retain]);
            [r24 release];
            [r23 release];
    }
    r0 = [r19 error];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 downloadTask:r19 didFinishDownloadingToURL:r19->_targetURL];
            [r0 release];
    }
    r21 = @selector(delegate);
    r21 = [objc_msgSend(r19, r21) retain];
    r20 = [[r19 error] retain];
    [r21 task:r19 didCompleteWithError:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void)writeDataToStream:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_outputStream));
    if ([*(r20 + r22) streamStatus] == 0x0) {
            [*(r20 + r22) open];
    }
    if ([r19 respondsToSelector:@selector(enumerateByteRangesUsingBlock:)] != 0x0) {
            [r19 enumerateByteRangesUsingBlock:&var_48];
    }
    else {
            r20 = *(r20 + r22);
            r0 = objc_retainAutorelease(r19);
            [r20 write:[r0 bytes] maxLength:[r0 length]];
    }
    [r19 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    r20 = [arg3 retain];
    r21 = [[self queue] retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)completeForError {
    r0 = [self queue];
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void *)downloadCompletionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadCompletionHandler)), 0x0);
    return r0;
}

-(void)stream:(void *)arg2 handleEvent:(unsigned long long)arg3 {
    r0 = self;
    if (arg3 == 0x8) {
            [r0 completeForError];
    }
    return;
}

-(void)setDownloadCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_targetURL, 0x0);
    objc_storeStrong((int64_t *)&self->_outputStream, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadCompletionHandler, 0x0);
    return;
}

@end