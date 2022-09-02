@implementation CLSNetworkClient

+(void *)pinner {
    r19 = [FABCertificatePinner alloc];
    r20 = [sub_10009e128() retain];
    r19 = [r19 initWithCertificates:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithQueue:(void *)arg2 fileManager:(void *)arg3 delegate:(void *)arg4 {
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
    r23 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [r23 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_operationQueue, r24);
            objc_storeWeak((int64_t *)&r22->_delegate, r21);
            objc_storeStrong((int64_t *)&r22->_fileManager, r23);
            r0 = [r22 class];
            r0 = [r0 pinner];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_certPinner));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = objc_loadWeakRetained((int64_t *)&r22->_delegate);
            [r22 setCanUseBackgroundSession:[r0 networkClientCanUseBackgroundSessions:r22]];
            [r0 release];
            if (([r22 supportsBackgroundRequests] & 0x1) == 0x0) {
                    r0 = [Fabric sharedSDK];
                    r0 = [r0 retain];
                    r24 = [r0 debug];
                    [r0 release];
                    if (r24 != 0x0) {
                            NSLog(@"[Crashlytics:Crash:Client] Background session uploading not supported, asynchronous uploading will be used");
                    }
            }
            r23 = [r22 retain];
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

-(void *)session {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_session));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r20 = [CLSURLSession class];
            r22 = [CLSURLSessionConfiguration class];
            if ([r19 supportsBackgroundRequests] != 0x0) {
                    r0 = [r22 backgroundSessionConfiguration:@"com.twitter.crashlytics.ios.crash.background-session"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 setSessionSendsLaunchEvents:0x0];
                    if (r21 == 0x0) {
                            r0 = [r22 defaultSessionConfiguration];
                            r29 = r29;
                            r21 = [r0 retain];
                    }
            }
            else {
                    r0 = [r22 defaultSessionConfiguration];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            r22 = [[r19 operationQueue] retain];
            r0 = [r20 sessionWithConfiguration:r21 delegate:r19 delegateQueue:r22];
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = *(r19 + r23);
                    if (r0 == 0x0) {
                            NSLog(@"[Crashlytics:Crash:Client] Failed to initialize");
                            r0 = *(r19 + r23);
                    }
            }
            else {
                    NSLog(@"[Crashlytics:Crash:Client] Failed to initialize");
                    r0 = *(r19 + r23);
            }
            r19 = [r0 retain];
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)NSURLSessionAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([[CLSURLSession class] respondsToSelector:r2] != 0x0) {
            r0 = [CLSURLSession NSURLSessionShouldBeUsed];
    }
    else {
            r0 = NSClassFromString(@"NSURLSession");
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(bool)supportsBackgroundRequests {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((sub_10010b158() & 0x1) == 0x0 && [r19 NSURLSessionAvailable] != 0x0) {
            r0 = [r19 canUseBackgroundSession];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)attemptToReconnectBackgroundSessionWithCompletionBlock:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (([self supportsBackgroundRequests] & 0x1) != 0x0) {
            r0 = [NSOperationQueue mainQueue];
            r0 = [r0 retain];
            [r0 addOperationWithBlock:r19];
            [r0 release];
    }
    else {
            (*(r19 + 0x10))(r19);
    }
    [r19 release];
    return;
}

-(void)startUploadRequest:(void *)arg2 filePath:(void *)arg3 immediately:(bool)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (arg4 != 0x0) {
            [r21 startImmediateUploadRequest:r19 filePath:r20];
    }
    else {
            r22 = [[r21 relativeTaskPathForAbsolutePath:r20] retain];
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            [r21 checkForExistingTaskMatchingDescription:r22 completionBlock:&var_58];
            [var_28 release];
            [var_30 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)startImmediateUploadRequest:(void *)arg2 filePath:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21 supportsBackgroundRequests] != 0x0) {
            [r21 startNewUploadRequest:r19 filePath:r20];
    }
    else {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isReadableFileAtPath:r20];
            [r0 release];
            if ((r23 & 0x1) != 0x0) {
                    r22 = [r19 mutableCopy];
                    r23 = [[NSInputStream inputStreamWithFileAtPath:r20] retain];
                    [r22 setHTTPBodyStream:r23];
                    [r23 release];
                    r0 = [NSURLConnection sendSynchronousRequest:r22 returningResponse:&var_78 error:&var_80];
                    [r0 retain];
                    [var_78 retain];
                    objc_storeStrong(&var_70 + 0x28, var_80);
                    [r25 release];
                    var_88 = [r20 retain];
                    [FABNetworkResponseHandler clientResponseType:r23 handler:&var_B0];
                    [var_88 release];
                    _Block_object_dispose(&var_70, 0x8);
                    [0x0 release];
                    [r23 release];
                    [r22 release];
            }
            else {
                    sub_100111778(0x3, "WARN  [%s:%d] Error: file unreadable\n");
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)startNewUploadRequest:(void *)arg2 filePath:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isReadableFileAtPath:r20];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            r22 = [[r21 session] retain];
            r23 = [[NSURL fileURLWithPath:r20] retain];
            r24 = [[r22 uploadTaskWithRequest:r19 fromFile:r23] retain];
            [r23 release];
            [r22 release];
            r21 = [[r21 relativeTaskPathForAbsolutePath:r20] retain];
            [r24 setTaskDescription:r21];
            [r21 release];
            [r24 resume];
            r0 = r24;
    }
    else {
            r22 = [[r21 operationQueue] retain];
            var_38 = [r20 retain];
            [r22 addOperationWithBlock:&var_60];
            [r22 release];
            r0 = var_38;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)rootPath {
    r0 = [self fileManager];
    r0 = [r0 retain];
    r20 = [[r0 rootPath] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)relativeTaskPathForAbsolutePath:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self rootPath];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringByAppendingString:@"/"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (([r19 hasPrefix:r20] & 0x1) != 0x0) {
            r21 = [[r19 stringByReplacingOccurrencesOfString:r20 withString:@""] retain];
    }
    else {
            [objc_retainAutorelease(r19) UTF8String];
            r0 = objc_retainAutorelease(r20);
            [r0 UTF8String];
            sub_100111778(0x3, "WARN  [%s:%d] Error: path '%s' is not at the root '%s'");
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)absolutePathForRelativeTaskPath:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self rootPath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)taskArray:(void *)arg2 hasTaskMatchingDescription:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    var_28 = r0;
    r22 = [r0 retain];
    r19 = [arg2 indexOfObjectPassingTest:&var_48];
    [r21 release];
    if (r19 != 0x7fffffffffffffff) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [var_28 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void)checkSession:(void *)arg2 forTasksMatchingDescription:(void *)arg3 completionBlock:(void *)arg4 {
    r31 = r31 - 0x70;
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
    if (r19 != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r21 retain];
            [r19 getTasksWithCompletionHandler:&var_58];
            [var_28 release];
            [var_30 release];
    }
    else {
            (*(r21 + 0x10))(r21, 0x0);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)checkForExistingTaskMatchingDescription:(void *)arg2 completionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = self->_operationQueue;
    r20 = [r21 retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r22 addOperationWithBlock:&var_58];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)runAfterRetryValueFromResponse:(void *)arg2 block:(void *)arg3 {
    r20 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [FABNetworkResponseHandler retryValueForResponse:r21];
    [r21 release];
    asm { fcvt       s0, d8 };
    sub_10011b234(r20->_operationQueue, r19);
    [r19 release];
    return;
}

-(void)restartTask:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [[r0 originalRequest] retain];
    r22 = [[r0 response] retain];
    r20 = [r0 retain];
    var_38 = r21;
    r21 = [r21 retain];
    [self runAfterRetryValueFromResponse:r22 block:&var_68];
    [r22 release];
    [var_38 release];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)handleTask:(void *)arg2 completedWithError:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[arg2 taskDescription] retain];
    [r22 release];
    [self handleTaskDescription:r20 completedWithError:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)handleTaskDescription:(void *)arg2 completedWithError:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self absolutePathForRelativeTaskPath:r21] retain];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 networkClient:self didFinishUploadWithPath:r22 error:r19];
    [r19 release];
    [r0 release];
    [r22 release];
    return;
}

-(void)URLSession:(void *)arg2 didBecomeInvalidWithError:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [r0 debug];
    [r0 release];
    if (r21 != 0x0) {
            NSLog(@"[Crashlytics:Crash:Client] session became invalid: %@", @selector(debug));
    }
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 didReceiveChallenge:(void *)arg3 completionHandler:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
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
    r0 = [r0 retain];
    r24 = [r0 debug];
    [r0 release];
    if (r24 != 0x0) {
            (*(r21 + 0x10))(r21, 0x1, 0x0);
    }
    else {
            [r22->_certPinner handleChallenge:r20 fromURLSession:r19 completionHandler:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSessionDidFinishEventsForBackgroundURLSession:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self backgroundCompletionHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    if (r19 != 0x0) {
            r21 = [[NSOperationQueue mainQueue] retain];
            var_30 = [r19 retain];
            [r21 addOperationWithBlock:&var_50];
            [r21 release];
            [var_30 release];
    }
    else {
            NSLog(@"[Crashlytics:Crash:Client] background callback is nil?");
    }
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[r21 response] retain];
    r24 = [[r21 originalRequest] retain];
    var_38 = r21;
    r21 = [r21 retain];
    [FABNetworkResponseHandler handleCompletedResponse:r23 forOriginalRequest:r24 error:r19 block:&var_60];
    [r19 release];
    [r24 release];
    [r23 release];
    [var_38 release];
    [r21 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)certPinner {
    r0 = self->_certPinner;
    return r0;
}

-(void *)operationQueue {
    r0 = self->_operationQueue;
    return r0;
}

-(void *)backgroundCompletionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundCompletionHandler)), 0x0);
    return r0;
}

-(void)setBackgroundCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)canUseBackgroundSession {
    r0 = *(int8_t *)(int64_t *)&self->_canUseBackgroundSession;
    return r0;
}

-(void)setCanUseBackgroundSession:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canUseBackgroundSession = arg2;
    return;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void)setFileManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fileManager, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_certPinner, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end