@implementation TR_AFURLSessionManagerTaskDelegate

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSMutableData data] retain];
            [r19 setMutableData:r20];
            [r20 release];
            r20 = [[NSProgress alloc] initWithParent:0x0 userInfo:0x0];
            [r19 setUploadProgress:r20];
            [r20 release];
            r20 = **_NSURLSessionTransferSizeUnknown;
            r0 = [r19 uploadProgress];
            r0 = [r0 retain];
            [r0 setTotalUnitCount:r20];
            [r0 release];
            r21 = [[NSProgress alloc] initWithParent:0x0 userInfo:0x0];
            [r19 setDownloadProgress:r21];
            [r21 release];
            r0 = [r19 downloadProgress];
            r0 = [r0 retain];
            [r0 setTotalUnitCount:r20];
            [r0 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setupProgressForTask:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r20 = self;
    objc_initWeak(&saved_fp - 0x68, [arg2 retain]);
    r19 = [r25 countOfBytesExpectedToSend];
    r0 = [r20 uploadProgress];
    r0 = [r0 retain];
    [r0 setTotalUnitCount:r19];
    [r0 release];
    r19 = [r25 countOfBytesExpectedToReceive];
    r0 = [r20 downloadProgress];
    r0 = [r0 retain];
    [r0 setTotalUnitCount:r19];
    [r0 release];
    r0 = [r20 uploadProgress];
    r0 = [r0 retain];
    [r0 setCancellable:0x1];
    [r0 release];
    [[r20 uploadProgress] retain];
    var_160 = (&saved_fp - 0x90) + 0x20;
    objc_copyWeak((&saved_fp - 0x90) + 0x20, &saved_fp - 0x68);
    [r19 setCancellationHandler:&saved_fp - 0x90];
    [r19 release];
    r0 = [r20 uploadProgress];
    r0 = [r0 retain];
    [r0 setPausable:0x1];
    var_178 = r25;
    [r0 release];
    [[r20 uploadProgress] retain];
    var_168 = (&saved_fp - 0xb8) + 0x20;
    objc_copyWeak((&saved_fp - 0xb8) + 0x20, &saved_fp - 0x68);
    [r19 setPausingHandler:&saved_fp - 0xb8];
    [r19 release];
    r0 = [r20 uploadProgress];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(setResumingHandler:)];
    [r0 release];
    if (r25 != 0x0) {
            [[r20 uploadProgress] retain];
            objc_copyWeak(&var_E0 + 0x20, r29 - 0x68);
            [r25 setResumingHandler:&var_E0];
            [r25 release];
            objc_destroyWeak(&var_E0 + 0x20);
    }
    r0 = [r20 downloadProgress];
    r0 = [r0 retain];
    [r0 setCancellable:r2];
    [r19 release];
    r0 = [r20 downloadProgress];
    r25 = &var_108 + 0x20;
    [r0 retain];
    objc_copyWeak(r25, r29 - 0x68);
    [r19 setCancellationHandler:&var_108];
    [r19 release];
    r0 = [r20 downloadProgress];
    r0 = [r0 retain];
    [r0 setPausable:0x1];
    [r0 release];
    r0 = [r20 downloadProgress];
    r27 = &var_130 + 0x20;
    [r0 retain];
    objc_copyWeak(r27, r29 - 0x68);
    [r19 setPausingHandler:&var_130];
    [r19 release];
    r0 = [r20 downloadProgress];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r23, @selector(setResumingHandler:));
    [r0 release];
    if (r21 != 0x0) {
            [[r20 downloadProgress] retain];
            objc_copyWeak(&var_158 + 0x20, r29 - 0x68);
            [r21 setResumingHandler:&var_158];
            [r21 release];
            objc_destroyWeak(&var_158 + 0x20);
    }
    r24 = [[r20 downloadProgress] retain];
    r19 = [NSStringFromSelector(@selector(fractionCompleted)) retain];
    [r24 addObserver:r20 forKeyPath:r19 options:0x1 context:0x0];
    [r19 release];
    [r24 release];
    r22 = [[r20 uploadProgress] retain];
    r19 = [NSStringFromSelector(@selector(fractionCompleted)) retain];
    [r22 addObserver:r20 forKeyPath:r19 options:0x1 context:0x0];
    [r19 release];
    [r22 release];
    objc_destroyWeak(r27);
    objc_destroyWeak(r25);
    objc_destroyWeak(var_168);
    objc_destroyWeak(var_160);
    objc_destroyWeak(r29 - 0x68);
    [var_178 release];
    return;
}

-(void)cleanUpProgressForTask:(void *)arg2 {
    r20 = [[self downloadProgress] retain];
    r22 = [NSStringFromSelector(@selector(fractionCompleted)) retain];
    [r20 removeObserver:self forKeyPath:r22];
    [r22 release];
    [r20 release];
    r20 = [[self uploadProgress] retain];
    r21 = [NSStringFromSelector(@selector(fractionCompleted)) retain];
    [r20 removeObserver:self forKeyPath:r21];
    [r21 release];
    [r20 release];
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
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 downloadProgress];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r19 isEqual:r2];
    [r22 release];
    if (r23 == 0x0) goto loc_10041550c;

loc_1004154d0:
    r0 = [r20 downloadProgressBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10041559c;

loc_1004154f8:
    r0 = [r20 downloadProgressBlock];
    goto loc_100415580;

loc_100415580:
    (*([r0 retain] + 0x10))();
    [r20 release];
    goto loc_10041559c;

loc_10041559c:
    [r19 release];
    return;

loc_10041550c:
    r21 = @selector(isEqual:);
    r0 = [r20 uploadProgress];
    r29 = r29;
    r22 = [r0 retain];
    r21 = objc_msgSend(r19, r21);
    [r22 release];
    if (r21 == 0x0) goto loc_10041559c;

loc_100415548:
    r0 = [r20 uploadProgressBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10041559c;

loc_100415570:
    r0 = [r20 uploadProgressBlock];
    goto loc_100415580;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r31 = r31 - 0x170;
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
    r23 = self;
    r28 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [[r23 manager] retain];
    var_A8 = &var_B0;
    var_88 = [[NSMutableDictionary dictionary] retain];
    r24 = [[r22 responseSerializer] retain];
    [*(var_A8 + 0x28) setObject:r24 forKeyedSubscript:@"com.alamofire.networking.task.complete.responseserializer"];
    [r24 release];
    r0 = [r23 mutableData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r23 mutableData];
            r29 = r29;
            r0 = [r0 retain];
            r19 = [r0 copy];
            [r0 release];
            [r23 setMutableData:0x0];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r23 downloadFileURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r23 downloadFileURL];
            r29 = r29;
            r26 = [r0 retain];
            [*(var_A8 + 0x28) setObject:r26 forKeyedSubscript:@"com.alamofire.networking.task.complete.assetpath"];
            [r26 release];
            if (r21 == 0x0) {
                    if (*qword_1011d6e68 != -0x1) {
                            dispatch_once(0x1011d6e68, 0x100e7ce60);
                    }
                    r25 = [*0x1011d6e60 retain];
                    var_128 = [r22 retain];
                    var_120 = [r20 retain];
                    r19 = [r19 retain];
                    dispatch_async(r25, &var_148);
                    [r25 release];
                    [r19 release];
                    [var_120 release];
                    [var_128 release];
            }
            else {
                    [*(var_A8 + 0x28) setObject:r21 forKeyedSubscript:@"com.alamofire.networking.task.complete.error"];
                    r0 = [r22 completionGroup];
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r25 != 0x0) {
                            var_14C = 0x0;
                            r26 = r25;
                    }
                    else {
                            r0 = sub_10041bc3c();
                            r29 = r29;
                            r26 = [r0 retain];
                            var_14C = 0x1;
                    }
                    r0 = [r22 completionQueue];
                    var_158 = r19;
                    r19 = r22;
                    r24 = r21;
                    r22 = r20;
                    r21 = r28;
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            r20 = 0x0;
                            r28 = r27;
                    }
                    else {
                            r28 = *__dispatch_main_q;
                            [r28 retain];
                            r20 = 0x1;
                    }
                    var_D0 = [r22 retain];
                    var_C8 = [r24 retain];
                    dispatch_group_async(r26, r28, &var_F8);
                    if (r20 != 0x0) {
                            [*__dispatch_main_q release];
                    }
                    [r27 release];
                    r28 = r21;
                    if (var_14C != 0x0) {
                            [r26 release];
                    }
                    [r25 release];
                    [var_C8 release];
                    [var_D0 release];
                    r20 = r22;
                    r21 = r24;
                    r22 = r19;
                    r19 = var_158;
            }
    }
    else {
            if (r19 != 0x0) {
                    [*(var_A8 + 0x28) setObject:r19 forKeyedSubscript:@"com.alamofire.networking.complete.finish.responsedata"];
            }
            if (r21 != 0x0) {
                    [*(var_A8 + 0x28) setObject:r21 forKeyedSubscript:@"com.alamofire.networking.task.complete.error"];
                    r0 = [r22 completionGroup];
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r25 != 0x0) {
                            var_14C = 0x0;
                            r26 = r25;
                    }
                    else {
                            r0 = sub_10041bc3c();
                            r29 = r29;
                            r26 = [r0 retain];
                            var_14C = 0x1;
                    }
                    r0 = [r22 completionQueue];
                    var_158 = r19;
                    r19 = r22;
                    r24 = r21;
                    r22 = r20;
                    r21 = r28;
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            r20 = 0x0;
                            r28 = r27;
                    }
                    else {
                            r28 = *__dispatch_main_q;
                            [r28 retain];
                            r20 = 0x1;
                    }
                    var_D0 = [r22 retain];
                    var_C8 = [r24 retain];
                    dispatch_group_async(r26, r28, &var_F8);
                    if (r20 != 0x0) {
                            [*__dispatch_main_q release];
                    }
                    [r27 release];
                    r28 = r21;
                    if (var_14C != 0x0) {
                            [r26 release];
                    }
                    [r25 release];
                    [var_C8 release];
                    [var_D0 release];
                    r20 = r22;
                    r21 = r24;
                    r22 = r19;
                    r19 = var_158;
            }
            else {
                    if (*qword_1011d6e68 != -0x1) {
                            dispatch_once(0x1011d6e68, 0x100e7ce60);
                    }
                    r25 = [*0x1011d6e60 retain];
                    var_128 = [r22 retain];
                    var_120 = [r20 retain];
                    r19 = [r19 retain];
                    dispatch_async(r25, &var_148);
                    [r25 release];
                    [r19 release];
                    [var_120 release];
                    [var_128 release];
            }
    }
    [r19 release];
    _Block_object_dispose(&var_B0, 0x8);
    [var_88 release];
    _Block_object_dispose(r29 - 0x80, 0x8);
    [0x0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r28 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didSendBodyData:(long long)arg4 totalBytesSent:(long long)arg5 totalBytesExpectedToSend:(long long)arg6 {
    r22 = [arg3 retain];
    r21 = [arg3 countOfBytesSent];
    r0 = [self uploadProgress];
    r0 = [r0 retain];
    [r0 setCompletedUnitCount:r21];
    [r0 release];
    r19 = [arg3 countOfBytesExpectedToSend];
    [r22 release];
    r0 = [self uploadProgress];
    r0 = [r0 retain];
    [r0 setTotalUnitCount:r19];
    [r0 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [arg3 countOfBytesReceived];
    r0 = [self downloadProgress];
    r0 = [r0 retain];
    [r0 setCompletedUnitCount:r23];
    [r0 release];
    r21 = [arg3 countOfBytesExpectedToReceive];
    [r22 release];
    r0 = [self downloadProgress];
    r0 = [r0 retain];
    [r0 setTotalUnitCount:r21];
    [r0 release];
    r0 = [self mutableData];
    r0 = [r0 retain];
    [r0 appendData:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didWriteData:(long long)arg4 totalBytesWritten:(long long)arg5 totalBytesExpectedToWrite:(long long)arg6 {
    r0 = [self downloadProgress];
    r0 = [r0 retain];
    [r0 setTotalUnitCount:arg6];
    [r0 release];
    r0 = [self downloadProgress];
    r0 = [r0 retain];
    [r0 setCompletedUnitCount:arg5];
    [r0 release];
    return;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didResumeAtOffset:(long long)arg4 expectedTotalBytes:(long long)arg5 {
    r0 = [self downloadProgress];
    r0 = [r0 retain];
    [r0 setTotalUnitCount:arg5];
    [r0 release];
    r0 = [self downloadProgress];
    r0 = [r0 retain];
    [r0 setCompletedUnitCount:arg4];
    [r0 release];
    return;
}

-(void *)manager {
    r0 = objc_loadWeakRetained((int64_t *)&self->_manager);
    r0 = [r0 autorelease];
    return r0;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didFinishDownloadingToURL:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [r22 setDownloadFileURL:0x0];
    r0 = [r22 downloadTaskDidFinishDownloading];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r22 downloadTaskDidFinishDownloading] retain];
            r25 = [(*(r24 + 0x10))() retain];
            [r22 setDownloadFileURL:r25];
            [r25 release];
            [r24 release];
            r0 = [r22 downloadFileURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = [[NSFileManager defaultManager] retain];
                    r0 = [r22 downloadFileURL];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r24 moveItemAtURL:r21 toURL:r23 error:&var_48];
                    r22 = [var_48 retain];
                    [r23 release];
                    [r24 release];
                    if (r22 != 0x0) {
                            r23 = [[NSNotificationCenter defaultCenter] retain];
                            r24 = [[r22 userInfo] retain];
                            [r23 postNotificationName:@"com.alamofire.networking.session.download.file-manager-error" object:r20 userInfo:r24];
                            [r24 release];
                            [r23 release];
                            [r22 release];
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setManager:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_manager, arg2);
    return;
}

-(void *)mutableData {
    r0 = self->_mutableData;
    return r0;
}

-(void)setMutableData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mutableData, arg2);
    return;
}

-(void *)uploadProgress {
    r0 = self->_uploadProgress;
    return r0;
}

-(void)setUploadProgress:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_uploadProgress, arg2);
    return;
}

-(void *)downloadProgress {
    r0 = self->_downloadProgress;
    return r0;
}

-(void)setDownloadProgress:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_downloadProgress, arg2);
    return;
}

-(void *)downloadFileURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadFileURL)), 0x0);
    return r0;
}

-(void)setDownloadFileURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)downloadTaskDidFinishDownloading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadTaskDidFinishDownloading)), 0x0);
    return r0;
}

-(void)setDownloadTaskDidFinishDownloading:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)uploadProgressBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_uploadProgressBlock)), 0x0);
    return r0;
}

-(void)setUploadProgressBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)downloadProgressBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadProgressBlock)), 0x0);
    return r0;
}

-(void)setDownloadProgressBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadProgressBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_uploadProgressBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadTaskDidFinishDownloading, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadFileURL, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadProgress, 0x0);
    objc_storeStrong((int64_t *)&self->_uploadProgress, 0x0);
    objc_storeStrong((int64_t *)&self->_mutableData, 0x0);
    objc_destroyWeak((int64_t *)&self->_manager);
    return;
}

@end