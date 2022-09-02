@implementation ANSUploader

-(void *)initWithQueue:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_operationQueue, r22);
            objc_storeWeak((int64_t *)&r21->_delegate, r20);
            r21->_lowPowerUploadTimeout = 0x40d5180000000000;
            r21->_defaultUploadTimeout = 0x40ac200000000000;
            if ([r21 supportsPowerStateNotifications] != 0x0) {
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
                    [r22 release];
            }
            r22 = [r21 retain];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void)powerStageChanged:(void *)arg2 {
    r0 = [self operationQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_38];
    [r0 release];
    return;
}

-(bool)shouldUseBackgroundRequests {
    return 0x0;
}

-(bool)lowPowerMode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self supportsPowerStateNotifications];
    if (r0 != 0x0) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r20 = [r0 isLowPowerModeEnabled];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(bool)supportsPowerStateNotifications {
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)supportsBackgroundRequests {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ANSApplication hostApplication];
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isExtension] & 0x1) != 0x0) {
            r19 = 0x0;
    }
    else {
            r19 = [r19 shouldUseBackgroundRequests];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)attemptToReconnectBackgroundSessionWithCompletionBlock:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self operationQueue] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 addOperationWithBlock:&var_50];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void *)urlSessionClass {
    r0 = [CLSURLSession class];
    return r0;
}

-(void *)urlSessionConfigurationClass {
    r0 = [CLSURLSessionConfiguration class];
    return r0;
}

-(void)setDefaultUploadTimeout:(double)arg2 {
    r0 = [self operationQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_50];
    [r0 release];
    return;
}

-(void)setLowPowerUploadTimeout:(double)arg2 {
    r0 = [self operationQueue];
    r0 = [r0 retain];
    [r0 addOperationWithBlock:&var_50];
    [r0 release];
    return;
}

-(void *)createBackgroundSessionConfiguration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self urlSessionConfigurationClass];
    r0 = [r0 backgroundSessionConfigurationWithIdentifier:@"io.answers.background-session"];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setSessionSendsLaunchEvents:0x0];
    if ([r20 respondsToSelector:@selector(setDiscretionary:)] != 0x0) {
            [r20 setDiscretionary:[r19 lowPowerMode]];
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)startUploadRequest:(void *)arg2 filePath:(void *)arg3 uniqueName:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    r19 = [r0 retain];
    var_40 = r22;
    r22 = [r22 retain];
    var_38 = r20;
    r20 = [r20 retain];
    [self checkForExistingTaskMatchingDescription:r19 completionBlock:&var_70];
    [var_38 release];
    [var_40 release];
    [r0 release];
    [r20 release];
    [r22 release];
    [r19 release];
    return;
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
            if ([r19 supportsBackgroundRequests] != 0x0) {
                    r0 = [r19 createBackgroundSessionConfiguration];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 == 0x0) {
                            r0 = [r19 urlSessionConfigurationClass];
                            r0 = [r0 defaultSessionConfiguration];
                            r29 = r29;
                            r20 = [r0 retain];
                    }
            }
            else {
                    r0 = [r19 urlSessionConfigurationClass];
                    r0 = [r0 defaultSessionConfiguration];
                    r29 = r29;
                    r20 = [r0 retain];
            }
            if ([r20 respondsToSelector:@selector(setAllowsCellularAccess:)] != 0x0) {
                    [r20 setAllowsCellularAccess:[r19 lowPowerMode] ^ 0x1];
            }
            if ([r20 respondsToSelector:@selector(setTimeoutIntervalForResource:)] != 0x0) {
                    r8 = &@selector(lowPowerUploadTimeout);
                    if ([r19 lowPowerMode] != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = &@selector(defaultUploadTimeout);
                            }
                            else {
                                    r8 = &@selector(lowPowerUploadTimeout);
                            }
                    }
                    objc_msgSend(r19, *r8);
                    [r20 setTimeoutIntervalForResource:r2];
            }
            r21 = [r19 urlSessionClass];
            r22 = [[r19 operationQueue] retain];
            r0 = [r21 sessionWithConfiguration:r20 delegate:r19 delegateQueue:r22];
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 release];
            r19 = [*(r19 + r23) retain];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)errorWithCode:(long long)arg2 userInfo:(void *)arg3 {
    r0 = [NSError errorWithDomain:*0x100e67f20 code:arg2 userInfo:arg3];
    return r0;
}

-(void *)errorUserInfoWithFilePath:(void *)arg2 uniqueName:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = [arg2 retain];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = r20;
            }
            else {
                    r9 = @"(null)";
            }
    }
    r8 = @"(null)";
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r19;
            }
            else {
                    r8 = @"(null)";
            }
    }
    var_38 = **___stack_chk_guard;
    r23 = [r19 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2];
    r19 = [r0 retain];
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)startNewUploadRequest:(void *)arg2 filePath:(void *)arg3 uniqueName:(void *)arg4 {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r21 length] != 0x0 && r19 != 0x0 && [r20 length] != 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isReadableFileAtPath:r20];
            [r0 release];
            if ((r24 & 0x1) != 0x0) {
                    r22 = [[r22 session] retain];
                    r23 = [[NSURL fileURLWithPath:r20] retain];
                    r24 = [[r22 uploadTaskWithRequest:r19 fromFile:r23] retain];
                    [r23 release];
                    [r22 release];
                    [r24 setTaskDescription:r21];
                    [r24 resume];
                    r0 = r24;
            }
            else {
                    r23 = [[r22 operationQueue] retain];
                    var_78 = [r20 retain];
                    var_70 = [r21 retain];
                    [r23 addOperationWithBlock:&var_A0];
                    [r23 release];
                    [var_70 release];
                    r0 = var_78;
            }
    }
    else {
            r23 = [[r22 operationQueue] retain];
            var_40 = [r20 retain];
            var_38 = [r21 retain];
            [r23 addOperationWithBlock:&var_68];
            [r23 release];
            [var_38 release];
            r0 = var_40;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)taskArray:(void *)arg2 hasTaskMatchingDescription:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            var_28 = [r20 retain];
            if ([r19 indexOfObjectPassingTest:&var_48] != 0x7fffffffffffffff) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            [var_28 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
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
    r22 = [[self operationQueue] retain];
    r20 = [r21 retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r22 addOperationWithBlock:&var_58];
    [r22 release];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)restartTask:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[arg2 originalRequest] retain];
    r19 = [[arg2 taskDescription] retain];
    [r22 release];
    r22 = [[self operationQueue] retain];
    var_30 = r19;
    r19 = [r19 retain];
    var_28 = r21;
    r21 = [r21 retain];
    [r22 addOperationWithBlock:&var_58];
    [r22 release];
    [var_28 release];
    [var_30 release];
    [r21 release];
    [r19 release];
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
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 uploader:self didFinishUploadWithUniqueName:r21 error:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)URLSession:(void *)arg2 didBecomeInvalidWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logWithLabel:@"ANSUploader" format:@"Error: session has become invalid %@"];
    [r21 release];
    [r0 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [[self delegate] retain];
    r23 = [[r22 originalRequest] retain];
    r24 = [[r22 response] retain];
    r25 = [[r22 taskDescription] retain];
    var_50 = r22;
    r22 = [r22 retain];
    [r20 uploader:self completedRequest:r23 withResponse:r24 uniqueName:r25 error:r21 completionHandler:&var_70];
    [r21 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [var_50 release];
    [r22 release];
    return;
}

-(void)URLSession:(void *)arg2 didReceiveChallenge:(void *)arg3 completionHandler:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(uploader:session:didReceiveChallenge:completionHandler:), r3, r4, r5];
    [r0 release];
    if ((r25 & 0x1) != 0x0) {
            r23 = [[r21 delegate] retain];
            r24 = [[r21 session] retain];
            [r23 uploader:r21 session:r24 didReceiveChallenge:r19 completionHandler:r20];
            [r24 release];
            [r23 release];
    }
    else {
            (*(r20 + 0x10))(r20, 0x1, 0x0);
    }
    [r20 release];
    [r19 release];
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

-(double)defaultUploadTimeout {
    r0 = self;
    return r0;
}

-(void *)operationQueue {
    r0 = self->_operationQueue;
    return r0;
}

-(double)lowPowerUploadTimeout {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end