@implementation TR_AFURLSessionManager

-(void *)init {
    r0 = [self initWithSessionConfiguration:0x0];
    return r0;
}

-(void *)initWithSessionConfiguration:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            if (r19 == 0x0) {
                    r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 release];
                    r19 = r22;
            }
            r21 = @selector(init);
            [r20 setSessionConfiguration:r19];
            r23 = objc_msgSend([NSOperationQueue alloc], r21);
            [r20 setOperationQueue:r23];
            [r23 release];
            r0 = [r20 operationQueue];
            r0 = [r0 retain];
            [r0 setMaxConcurrentOperationCount:0x1];
            [r0 release];
            r25 = [[r20 sessionConfiguration] retain];
            r23 = [[r20 operationQueue] retain];
            r24 = [[NSURLSession sessionWithConfiguration:r25 delegate:r20 delegateQueue:r23] retain];
            [r20 setSession:r24];
            [r24 release];
            [r23 release];
            [r25 release];
            r23 = [[TR_AFJSONResponseSerializer serializer] retain];
            [r20 setResponseSerializer:r23];
            [r23 release];
            r23 = [[TR_AFSecurityPolicy defaultPolicy] retain];
            [r20 setSecurityPolicy:r23];
            [r23 release];
            r23 = [[TR_AFNetworkReachabilityManager sharedManager] retain];
            [r20 setReachabilityManager:r23];
            [r23 release];
            r23 = objc_msgSend([NSMutableDictionary alloc], r21);
            [r20 setMutableTaskDelegatesKeyedByTaskIdentifier:r23];
            [r23 release];
            r21 = objc_msgSend([NSLock alloc], r21);
            [r20 setLock:r21];
            [r21 release];
            r0 = [r20 lock];
            r0 = [r0 retain];
            [r0 setName:@"com.alamofire.networking.session.manager.lock"];
            [r0 release];
            r21 = [[r20 session] retain];
            r22 = [r20 retain];
            [r21 getTasksWithCompletionHandler:&var_78];
            [r21 release];
            r21 = [r22 retain];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)taskDescriptionForSessionTasks {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)taskDidResume:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = [[r19 taskDescription] retain];
            r20 = [[r20 taskDescriptionForSessionTasks] retain];
            r22 = [r21 isEqualToString:r2];
            [r20 release];
            [r21 release];
            if (r22 != 0x0) {
                    var_28 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_48);
                    [var_28 release];
            }
    }
    [r19 release];
    return;
}

-(void)taskDidSuspend:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = [[r19 taskDescription] retain];
            r20 = [[r20 taskDescriptionForSessionTasks] retain];
            r22 = [r21 isEqualToString:r2];
            [r20 release];
            [r21 release];
            if (r22 != 0x0) {
                    var_28 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_48);
                    [var_28 release];
            }
    }
    [r19 release];
    return;
}

-(void *)delegateForTask:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r23 = [[self mutableTaskDelegatesKeyedByTaskIdentifier] retain];
    r21 = [arg2 taskIdentifier];
    [r22 release];
    r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r22 = [[r23 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r23 release];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 forTask:(void *)arg3 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r25 = [[self mutableTaskDelegatesKeyedByTaskIdentifier] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:[arg3 taskIdentifier]] retain];
    [r25 setObject:arg2 forKeyedSubscript:r24];
    [r24 release];
    [r25 release];
    [arg2 setupProgressForTask:r21];
    [r23 release];
    [self addNotificationObserverForTask:r21];
    [r21 release];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(void)addDelegateForDataTask:(void *)arg2 uploadProgress:(void *)arg3 downloadProgress:(void *)arg4 completionHandler:(void *)arg5 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [TR_AFURLSessionManagerTaskDelegate alloc];
    r0 = [r0 init];
    [r0 setManager:self];
    [r0 setCompletionHandler:r27];
    [r27 release];
    r25 = [[self taskDescriptionForSessionTasks] retain];
    [arg2 setTaskDescription:r25];
    [r25 release];
    [self setDelegate:r0 forTask:r21];
    [r21 release];
    [r0 setUploadProgressBlock:r20];
    [r20 release];
    [r0 setDownloadProgressBlock:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)addDelegateForUploadTask:(void *)arg2 progress:(void *)arg3 completionHandler:(void *)arg4 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = [TR_AFURLSessionManagerTaskDelegate alloc];
    r0 = [r0 init];
    [r0 setManager:self];
    [r0 setCompletionHandler:r26];
    [r26 release];
    r24 = [[self taskDescriptionForSessionTasks] retain];
    [arg2 setTaskDescription:r24];
    [r24 release];
    [self setDelegate:r0 forTask:r20];
    [r20 release];
    [r0 setUploadProgressBlock:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)addDelegateForDownloadTask:(void *)arg2 progress:(void *)arg3 destination:(void *)arg4 completionHandler:(void *)arg5 {
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
    r29 = &saved_fp;
    r23 = arg2;
    r22 = self;
    r21 = [r23 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [TR_AFURLSessionManagerTaskDelegate alloc];
    r0 = [r0 init];
    r24 = r0;
    [r0 setManager:r22];
    [r24 setCompletionHandler:r27];
    [r27 release];
    if (r19 != 0x0) {
            var_58 = [r19 retain];
            [r24 setDownloadTaskDidFinishDownloading:&var_78];
            [var_58 release];
    }
    r25 = [[r22 taskDescriptionForSessionTasks] retain];
    [r23 setTaskDescription:r25];
    [r25 release];
    [r22 setDelegate:r24 forTask:r21];
    [r21 release];
    [r24 setDownloadProgressBlock:r20];
    [r20 release];
    [r24 release];
    [r19 release];
    return;
}

-(void *)tasksForKeyPath:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = dispatch_semaphore_create(0x0);
    r21 = [[self session] retain];
    [r19 retain];
    r20 = [r20 retain];
    [r21 getTasksWithCompletionHandler:&var_88];
    [r21 release];
    dispatch_semaphore_wait(r20, 0xffffffffffffffff);
    [*(&var_50 + 0x28) retain];
    [r20 release];
    [r19 release];
    [r20 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)removeDelegateForTask:(void *)arg2 {
    r23 = [arg2 retain];
    r19 = [[self delegateForTask:r23] retain];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    [r19 cleanUpProgressForTask:r23];
    [self removeNotificationObserverForTask:r23];
    r24 = [[self mutableTaskDelegatesKeyedByTaskIdentifier] retain];
    r22 = [arg2 taskIdentifier];
    [r23 release];
    r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    [r24 removeObjectForKey:r22];
    [r22 release];
    [r24 release];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    [r19 release];
    return;
}

-(void *)tasks {
    r20 = [NSStringFromSelector(_cmd) retain];
    r19 = [[self tasksForKeyPath:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dataTasks {
    r20 = [NSStringFromSelector(_cmd) retain];
    r19 = [[self tasksForKeyPath:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)uploadTasks {
    r20 = [NSStringFromSelector(_cmd) retain];
    r19 = [[self tasksForKeyPath:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)downloadTasks {
    r20 = [NSStringFromSelector(_cmd) retain];
    r19 = [[self tasksForKeyPath:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)invalidateSessionCancelingTasks:(bool)arg2 {
    dispatch_async(*__dispatch_main_q, &var_30);
    return;
}

-(void)setResponseSerializer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_responseSerializer, arg2);
    return;
}

-(void)addNotificationObserverForTask:(void *)arg2 {
    r21 = @class(NSNotificationCenter);
    r23 = [arg2 retain];
    r0 = [r21 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(taskDidResume:) name:@"com.alamofire.networking.nsurlsessiontask.resume" object:arg2];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(taskDidSuspend:) name:@"com.alamofire.networking.nsurlsessiontask.suspend" object:arg2];
    [r23 release];
    [r0 release];
    return;
}

-(void)removeNotificationObserverForTask:(void *)arg2 {
    r21 = @class(NSNotificationCenter);
    [arg2 retain];
    r0 = [r21 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2 name:r3 object:r4];
    [r21 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    [r23 release];
    [r21 release];
    return;
}

-(void *)dataTaskWithRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self dataTaskWithRequest:r21 uploadProgress:0x0 downloadProgress:0x0 completionHandler:arg3] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dataTaskWithRequest:(void *)arg2 uploadProgress:(void *)arg3 downloadProgress:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    [arg5 retain];
    [r22 retain];
    sub_100418c2c();
    [self addDelegateForDataTask:*(&var_60 + 0x28) uploadProgress:r19 downloadProgress:r20 completionHandler:r21];
    [*(&var_60 + 0x28) retain];
    [r22 release];
    _Block_object_dispose(&var_60, 0x8);
    [0x0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)uploadTaskWithRequest:(void *)arg2 fromFile:(void *)arg3 progress:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xd0;
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
    r22 = self;
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    var_78 = &var_80;
    r21 = [r23 retain];
    var_98 = r21;
    r23 = [r24 retain];
    var_90 = r23;
    sub_100418c2c();
    if (*(var_78 + 0x28) == 0x0 && [r22 attemptsToRecreateUploadTasksForBackgroundSessions] != 0x0) {
            r0 = [r22 session];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 identifier];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            [r24 release];
            if (r0 != 0x0 && *(var_78 + 0x28) == 0x0) {
                    r27 = 0x1;
                    do {
                            r0 = [r22 session];
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = [r0 uploadTaskWithRequest:r2 fromFile:r3];
                            r29 = r29;
                            r0 = [r0 retain];
                            r8 = *(var_78 + 0x28);
                            *(var_78 + 0x28) = r0;
                            [r8 release];
                            [r26 release];
                            if (r27 > 0x2) {
                                break;
                            }
                            r27 = r27 + 0x1;
                    } while (*(var_78 + 0x28) == 0x0);
            }
    }
    [r22 addDelegateForUploadTask:*(var_78 + 0x28) progress:r19 completionHandler:r20];
    [*(var_78 + 0x28) retain];
    [var_90 release];
    [var_98 release];
    _Block_object_dispose(&var_80, 0x8);
    [0x0 release];
    [r20 release];
    [r19 release];
    [r23 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)uploadTaskWithRequest:(void *)arg2 fromData:(void *)arg3 progress:(void *)arg4 completionHandler:(void *)arg5 {
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    [arg4 retain];
    [arg5 retain];
    [r23 retain];
    [r24 retain];
    sub_100418c2c();
    [self addDelegateForUploadTask:*(&var_60 + 0x28) progress:r19 completionHandler:r20];
    [*(&var_60 + 0x28) retain];
    [r23 release];
    [r21 release];
    _Block_object_dispose(&var_60, 0x8);
    [0x0 release];
    [r20 release];
    [r19 release];
    [r23 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)uploadTaskWithStreamedRequest:(void *)arg2 progress:(void *)arg3 completionHandler:(void *)arg4 {
    r21 = [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    [r21 retain];
    sub_100418c2c();
    [self addDelegateForUploadTask:*(&var_50 + 0x28) progress:r19 completionHandler:r20];
    [*(&var_50 + 0x28) retain];
    [r21 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)downloadTaskWithRequest:(void *)arg2 progress:(void *)arg3 destination:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    [arg5 retain];
    [r22 retain];
    sub_100418c2c();
    [self addDelegateForDownloadTask:*(&var_60 + 0x28) progress:r19 destination:r20 completionHandler:r21];
    [*(&var_60 + 0x28) retain];
    [r22 release];
    _Block_object_dispose(&var_60, 0x8);
    [0x0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)downloadTaskWithResumeData:(void *)arg2 progress:(void *)arg3 destination:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    [arg5 retain];
    [r22 retain];
    sub_100418c2c();
    [self addDelegateForDownloadTask:*(&var_60 + 0x28) progress:r19 destination:r20 completionHandler:r21];
    [*(&var_60 + 0x28) retain];
    [r22 release];
    _Block_object_dispose(&var_60, 0x8);
    [0x0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)uploadProgressForTask:(void *)arg2 {
    r0 = [self delegateForTask:arg2];
    r0 = [r0 retain];
    r20 = [[r0 uploadProgress] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setSessionDidBecomeInvalidBlock:(void *)arg2 {
    [self setSessionDidBecomeInvalid:arg2];
    return;
}

-(void *)downloadProgressForTask:(void *)arg2 {
    r0 = [self delegateForTask:arg2];
    r0 = [r0 retain];
    r20 = [[r0 downloadProgress] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setSessionDidReceiveAuthenticationChallengeBlock:(void *)arg2 {
    [self setSessionDidReceiveAuthenticationChallenge:arg2];
    return;
}

-(void)setDidFinishEventsForBackgroundURLSessionBlock:(void *)arg2 {
    [self setDidFinishEventsForBackgroundURLSession:arg2];
    return;
}

-(void)setTaskNeedNewBodyStreamBlock:(void *)arg2 {
    [self setTaskNeedNewBodyStream:arg2];
    return;
}

-(void)setTaskWillPerformHTTPRedirectionBlock:(void *)arg2 {
    [self setTaskWillPerformHTTPRedirection:arg2];
    return;
}

-(void)setTaskDidReceiveAuthenticationChallengeBlock:(void *)arg2 {
    [self setTaskDidReceiveAuthenticationChallenge:arg2];
    return;
}

-(void)setTaskDidSendBodyDataBlock:(void *)arg2 {
    [self setTaskDidSendBodyData:arg2];
    return;
}

-(void)setTaskDidCompleteBlock:(void *)arg2 {
    [self setTaskDidComplete:arg2];
    return;
}

-(void)setDataTaskDidReceiveResponseBlock:(void *)arg2 {
    [self setDataTaskDidReceiveResponse:arg2];
    return;
}

-(void)setDataTaskDidBecomeDownloadTaskBlock:(void *)arg2 {
    [self setDataTaskDidBecomeDownloadTask:arg2];
    return;
}

-(void)setDataTaskDidReceiveDataBlock:(void *)arg2 {
    [self setDataTaskDidReceiveData:arg2];
    return;
}

-(void)setDataTaskWillCacheResponseBlock:(void *)arg2 {
    [self setDataTaskWillCacheResponse:arg2];
    return;
}

-(void)setDownloadTaskDidFinishDownloadingBlock:(void *)arg2 {
    [self setDownloadTaskDidFinishDownloading:arg2];
    return;
}

-(void)setDownloadTaskDidWriteDataBlock:(void *)arg2 {
    [self setDownloadTaskDidWriteData:arg2];
    return;
}

-(void)setDownloadTaskDidResumeBlock:(void *)arg2 {
    [self setDownloadTaskDidResume:arg2];
    return;
}

-(void *)description {
    r21 = [NSStringFromClass([self class]) retain];
    r22 = [[self session] retain];
    r23 = [[self operationQueue] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)respondsToSelector:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (@selector(URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:) == r19) goto loc_100419d04;

loc_100419cb0:
    if (@selector(URLSession:dataTask:didReceiveResponse:completionHandler:) == r19) goto loc_100419d18;

loc_100419cc0:
    if (@selector(URLSession:dataTask:willCacheResponse:completionHandler:) == r19) goto loc_100419d2c;

loc_100419cd0:
    if (@selector(URLSessionDidFinishEventsForBackgroundURLSession:) == r19) goto loc_100419d40;

loc_100419ce0:
    r0 = [r0 class];
    r0 = [r0 instancesRespondToSelector:r19];
    return r0;

loc_100419d40:
    r0 = [r0 didFinishEventsForBackgroundURLSession];
    goto loc_100419d50;

loc_100419d50:
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;

loc_100419d2c:
    r0 = [r0 dataTaskWillCacheResponse];
    goto loc_100419d50;

loc_100419d18:
    r0 = [r0 dataTaskDidReceiveResponse];
    goto loc_100419d50;

loc_100419d04:
    r0 = [r0 taskWillPerformHTTPRedirection];
    goto loc_100419d50;
}

-(void)URLSession:(void *)arg2 didBecomeInvalidWithError:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 sessionDidBecomeInvalid];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 sessionDidBecomeInvalid];
            r29 = r29;
            (*([r0 retain] + 0x10))();
            [r21 release];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 willPerformHTTPRedirection:(void *)arg4 newRequest:(void *)arg5 completionHandler:(void *)arg6 {
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r22 = [arg6 retain];
    r23 = [r23 retain];
    r0 = [r24 taskWillPerformHTTPRedirection];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r25 = [[r24 taskWillPerformHTTPRedirection] retain];
            r24 = [(*(r25 + 0x10))() retain];
            [r23 release];
            [r25 release];
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, r24);
            }
    }
    else {
            r24 = r23;
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, r24);
            }
    }
    [r24 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 didReceiveChallenge:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    var_78 = &var_80;
    r0 = [r23 sessionDidReceiveAuthenticationChallenge];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r23 sessionDidReceiveAuthenticationChallenge] retain];
            var_88 = *(var_78 + 0x28);
            r22 = (*(r23 + 0x10))();
            objc_storeStrong(var_78 + 0x28, var_88);
            [r23 release];
            if (r21 != 0x0) {
                    (*(r21 + 0x10))(r21, r22, *(var_78 + 0x28));
            }
    }
    else {
            r0 = [r20 protectionSpace];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 authenticationMethod];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 isEqualToString:r2];
            [r0 release];
            [r24 release];
            if (r26 != 0x0) {
                    r24 = [[r23 securityPolicy] retain];
                    r0 = [r20 protectionSpace];
                    r0 = [r0 retain];
                    r25 = r0;
                    r26 = [r0 serverTrust];
                    r0 = [r20 protectionSpace];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 host];
                    r29 = r29;
                    r28 = [r0 retain];
                    r26 = [r24 evaluateServerTrust:r26 forDomain:r28];
                    [r28 release];
                    [r27 release];
                    [r25 release];
                    [r24 release];
                    if (r26 != 0x0) {
                            r0 = [r20 protectionSpace];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [NSURLCredential credentialForTrust:[r0 serverTrust]];
                            r0 = [r0 retain];
                            r8 = *(var_78 + 0x28);
                            *(var_78 + 0x28) = r0;
                            [r8 release];
                            [r22 release];
                            if (*(var_78 + 0x28) == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r22 = 0x1;
                                    }
                            }
                            if (r21 != 0x0) {
                                    (*(r21 + 0x10))(r21, r22, *(var_78 + 0x28));
                            }
                    }
                    else {
                            r22 = 0x2;
                            if (r21 != 0x0) {
                                    (*(r21 + 0x10))(r21, r22, *(var_78 + 0x28));
                            }
                    }
            }
            else {
                    r22 = 0x1;
                    if (r21 != 0x0) {
                            (*(r21 + 0x10))(r21, r22, *(var_78 + 0x28));
                    }
            }
    }
    _Block_object_dispose(&var_80, 0x8);
    [0x0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 needNewBodyStream:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 taskNeedNewBodyStream];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10041a704;

loc_10041a67c:
    r23 = [[r22 taskNeedNewBodyStream] retain];
    r22 = [(*(r23 + 0x10))() retain];
    r0 = r23;
    goto loc_10041a6b4;

loc_10041a6b4:
    [r0 release];
    if (r21 != 0x0) {
            (*(r21 + 0x10))(r21, r22);
    }
    goto loc_10041a6cc;

loc_10041a6cc:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10041a704:
    r0 = [r20 originalRequest];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 HTTPBodyStream];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_10041a7f8;

loc_10041a744:
    r0 = [r20 originalRequest];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 HTTPBodyStream];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 conformsToProtocol:@protocol(NSCopying)];
    [r0 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r28 == 0x0) goto loc_10041a808;

loc_10041a7ac:
    r0 = [r20 originalRequest];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 HTTPBodyStream];
    r0 = [r0 retain];
    r22 = [r0 copy];
    [r0 release];
    r0 = r24;
    goto loc_10041a6b4;

loc_10041a808:
    r22 = 0x0;
    if (r21 == 0x0) {
            r22 = 0x0;
    }
    else {
            (*(r21 + 0x10))(r21, r22);
    }
    goto loc_10041a6cc;

loc_10041a7f8:
    [r25 release];
    [r24 release];
    goto loc_10041a808;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didSendBodyData:(long long)arg4 totalBytesSent:(long long)arg5 totalBytesExpectedToSend:(long long)arg6 {
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
    r29 = &saved_fp;
    r24 = arg6;
    r21 = arg5;
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = r24;
    if (**_NSURLSessionTransferSizeUnknown == r24) {
            r0 = [r20 originalRequest];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 valueForHTTPHeaderField:@"Content-Length"];
            r29 = r29;
            r26 = [r0 retain];
            [r25 release];
            r25 = r24;
            if (r26 != 0x0) {
                    r25 = [r26 longLongValue];
            }
            [r26 release];
    }
    r0 = [r23 delegateForTask:r20];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            [r26 URLSession:r19 task:r20 didSendBodyData:r22 totalBytesSent:r21 totalBytesExpectedToSend:r24];
    }
    r0 = [r23 taskDidSendBodyData];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r23 taskDidSendBodyData] retain] + 0x10))();
            [r23 release];
    }
    [r26 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didReceiveChallenge:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xa0;
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    var_78 = &var_80;
    r0 = [r24 taskDidReceiveAuthenticationChallenge];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r24 taskDidReceiveAuthenticationChallenge] retain];
            var_88 = *(var_78 + 0x28);
            r23 = (*(r24 + 0x10))();
            objc_storeStrong(var_78 + 0x28, var_88);
            [r24 release];
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, r23, *(var_78 + 0x28));
            }
    }
    else {
            r0 = [r21 protectionSpace];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 authenticationMethod];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 isEqualToString:r2];
            [r0 release];
            [r25 release];
            if (r27 != 0x0) {
                    r25 = [[r24 securityPolicy] retain];
                    r0 = [r21 protectionSpace];
                    r0 = [r0 retain];
                    r26 = r0;
                    r27 = [r0 serverTrust];
                    r0 = [r21 protectionSpace];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 host];
                    r29 = r29;
                    r24 = [r0 retain];
                    r27 = [r25 evaluateServerTrust:r27 forDomain:r24];
                    [r24 release];
                    [r28 release];
                    [r26 release];
                    [r25 release];
                    if (r27 != 0x0) {
                            r0 = [r21 protectionSpace];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [NSURLCredential credentialForTrust:[r0 serverTrust]];
                            r0 = [r0 retain];
                            r8 = *(var_78 + 0x28);
                            *(var_78 + 0x28) = r0;
                            [r8 release];
                            [r23 release];
                            r23 = 0x0;
                            if (r22 != 0x0) {
                                    (*(r22 + 0x10))(r22, r23, *(var_78 + 0x28));
                            }
                    }
                    else {
                            r23 = 0x2;
                            if (r22 != 0x0) {
                                    (*(r22 + 0x10))(r22, r23, *(var_78 + 0x28));
                            }
                    }
            }
            else {
                    r23 = 0x1;
                    if (r22 != 0x0) {
                            (*(r22 + 0x10))(r22, r23, *(var_78 + 0x28));
                    }
            }
    }
    _Block_object_dispose(&var_80, 0x8);
    [0x0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 delegateForTask:r20];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [r23 URLSession:r19 task:r20 didCompleteWithError:r21];
            [r22 removeDelegateForTask:r20];
    }
    r0 = [r22 taskDidComplete];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r22 taskDidComplete] retain] + 0x10))();
            [r22 release];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveResponse:(void *)arg4 completionHandler:(void *)arg5 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [r23 dataTaskDidReceiveResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r23 dataTaskDidReceiveResponse] retain];
            r23 = (*(r24 + 0x10))();
            [r24 release];
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, r23);
            }
    }
    else {
            r23 = 0x1;
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, r23);
            }
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didBecomeDownloadTask:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 delegateForTask:r20];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [r22 removeDelegateForTask:r20];
            [r22 setDelegate:r23 forTask:r21];
    }
    r0 = [r22 dataTaskDidBecomeDownloadTask];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r22 dataTaskDidBecomeDownloadTask] retain] + 0x10))();
            [r22 release];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 delegateForTask:r20];
    r0 = [r0 retain];
    r23 = r0;
    [r0 URLSession:r19 dataTask:r20 didReceiveData:r21];
    r0 = [r22 dataTaskDidReceiveData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r22 dataTaskDidReceiveData] retain] + 0x10))();
            [r22 release];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 willCacheResponse:(void *)arg4 completionHandler:(void *)arg5 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [r22 retain];
    r0 = [r23 dataTaskWillCacheResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r23 dataTaskWillCacheResponse] retain];
            r23 = [(*(r24 + 0x10))() retain];
            [r22 release];
            [r24 release];
            if (r21 != 0x0) {
                    (*(r21 + 0x10))(r21, r23);
            }
    }
    else {
            r23 = r22;
            if (r21 != 0x0) {
                    (*(r21 + 0x10))(r21, r23);
            }
    }
    [r23 release];
    [r21 release];
    [r22 release];
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
    r19 = [arg2 retain];
    r0 = [r20 didFinishEventsForBackgroundURLSession];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
    }
    [r19 release];
    return;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [[r23 delegateForTask:r20] retain];
    r0 = [r23 downloadTaskDidFinishDownloading];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10041b270;

loc_10041b13c:
    r24 = [[r23 downloadTaskDidFinishDownloading] retain];
    r0 = (*(r24 + 0x10))();
    r29 = r29;
    r23 = [r0 retain];
    [r24 release];
    if (r23 == 0x0) goto loc_10041b268;

loc_10041b180:
    [r22 setDownloadFileURL:r23];
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    [r0 moveItemAtURL:r21 toURL:r23 error:&var_48];
    r24 = [var_48 retain];
    [r0 release];
    if (r24 != 0x0) {
            r25 = [[NSNotificationCenter defaultCenter] retain];
            r26 = [[r24 userInfo] retain];
            [r25 postNotificationName:@"com.alamofire.networking.session.download.file-manager-error" object:r20 userInfo:r26];
            [r26 release];
            [r25 release];
    }
    [r24 release];
    [r23 release];
    goto loc_10041b290;

loc_10041b290:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10041b268:
    [r23 release];
    goto loc_10041b270;

loc_10041b270:
    if (r22 != 0x0) {
            [r22 URLSession:r19 downloadTask:r20 didFinishDownloadingToURL:r21];
    }
    goto loc_10041b290;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didWriteData:(long long)arg4 totalBytesWritten:(long long)arg5 totalBytesExpectedToWrite:(long long)arg6 {
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
    r20 = arg6;
    r21 = arg5;
    r23 = arg4;
    r25 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [r25 delegateForTask:r22];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            [r24 URLSession:r19 downloadTask:r22 didWriteData:r23 totalBytesWritten:r21 totalBytesExpectedToWrite:r20];
    }
    r0 = [r25 downloadTaskDidWriteData];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r25 downloadTaskDidWriteData] retain] + 0x10))();
            [r25 release];
    }
    [r24 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didResumeAtOffset:(long long)arg4 expectedTotalBytes:(long long)arg5 {
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
    r20 = arg5;
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r23 delegateForTask:r21];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            [r24 URLSession:r19 downloadTask:r21 didResumeAtOffset:r22 expectedTotalBytes:r20];
    }
    r0 = [r23 downloadTaskDidResume];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r23 downloadTaskDidResume] retain] + 0x10))();
            [r23 release];
    }
    [r24 release];
    [r21 release];
    [r19 release];
    return;
}

+(bool)supportsSecureCoding {
    return 0x1;
}

-(void *)initWithCoder:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    r19 = [[arg2 decodeObjectOfClass:[NSURLSessionConfiguration class] forKey:@"sessionConfiguration"] retain];
    [r23 release];
    r20 = [self initWithSessionConfiguration:r19];
    if (r20 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    r0 = [self session];
    r0 = [r0 retain];
    r21 = [[r0 configuration] retain];
    r19 = [r19 initWithSessionConfiguration:r21];
    [r21 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self session];
    r0 = [r0 retain];
    r21 = [[r0 configuration] retain];
    [arg2 encodeObject:r21 forKey:@"sessionConfiguration"];
    [r22 release];
    [r21 release];
    [r0 release];
    return;
}

-(void *)session {
    r0 = self->_session;
    return r0;
}

-(void)setSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_session, arg2);
    return;
}

-(void)setOperationQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_operationQueue, arg2);
    return;
}

-(void *)responseSerializer {
    r0 = self->_responseSerializer;
    return r0;
}

-(void *)operationQueue {
    r0 = self->_operationQueue;
    return r0;
}

-(void *)securityPolicy {
    r0 = self->_securityPolicy;
    return r0;
}

-(void)setSecurityPolicy:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_securityPolicy, arg2);
    return;
}

-(void)setReachabilityManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reachabilityManager, arg2);
    return;
}

-(void *)reachabilityManager {
    r0 = self->_reachabilityManager;
    return r0;
}

-(void *)completionQueue {
    r0 = self->_completionQueue;
    return r0;
}

-(void)setCompletionQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_completionQueue, arg2);
    return;
}

-(void)setCompletionGroup:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_completionGroup, arg2);
    return;
}

-(void *)completionGroup {
    r0 = self->_completionGroup;
    return r0;
}

-(bool)attemptsToRecreateUploadTasksForBackgroundSessions {
    r0 = *(int8_t *)(int64_t *)&self->_attemptsToRecreateUploadTasksForBackgroundSessions;
    return r0;
}

-(void)setAttemptsToRecreateUploadTasksForBackgroundSessions:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_attemptsToRecreateUploadTasksForBackgroundSessions = arg2;
    return;
}

-(void *)sessionConfiguration {
    r0 = self->_sessionConfiguration;
    return r0;
}

-(void)setSessionConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sessionConfiguration, arg2);
    return;
}

-(void *)mutableTaskDelegatesKeyedByTaskIdentifier {
    r0 = self->_mutableTaskDelegatesKeyedByTaskIdentifier;
    return r0;
}

-(void)setMutableTaskDelegatesKeyedByTaskIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mutableTaskDelegatesKeyedByTaskIdentifier, arg2);
    return;
}

-(void *)lock {
    r0 = self->_lock;
    return r0;
}

-(void)setLock:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lock, arg2);
    return;
}

-(void)setSessionDidBecomeInvalid:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)sessionDidBecomeInvalid {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionDidBecomeInvalid)), 0x0);
    return r0;
}

-(void *)sessionDidReceiveAuthenticationChallenge {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionDidReceiveAuthenticationChallenge)), 0x0);
    return r0;
}

-(void)setSessionDidReceiveAuthenticationChallenge:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDidFinishEventsForBackgroundURLSession:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)didFinishEventsForBackgroundURLSession {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_didFinishEventsForBackgroundURLSession)), 0x0);
    return r0;
}

-(void *)taskWillPerformHTTPRedirection {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskWillPerformHTTPRedirection)), 0x0);
    return r0;
}

-(void)setTaskWillPerformHTTPRedirection:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)taskDidReceiveAuthenticationChallenge {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskDidReceiveAuthenticationChallenge)), 0x0);
    return r0;
}

-(void)setTaskDidReceiveAuthenticationChallenge:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTaskNeedNewBodyStream:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)taskNeedNewBodyStream {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskNeedNewBodyStream)), 0x0);
    return r0;
}

-(void)setTaskDidSendBodyData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)taskDidSendBodyData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskDidSendBodyData)), 0x0);
    return r0;
}

-(void *)taskDidComplete {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskDidComplete)), 0x0);
    return r0;
}

-(void)setTaskDidComplete:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataTaskDidReceiveResponse {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataTaskDidReceiveResponse)), 0x0);
    return r0;
}

-(void)setDataTaskDidReceiveResponse:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataTaskDidBecomeDownloadTask {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataTaskDidBecomeDownloadTask)), 0x0);
    return r0;
}

-(void)setDataTaskDidBecomeDownloadTask:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataTaskDidReceiveData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataTaskDidReceiveData)), 0x0);
    return r0;
}

-(void)setDataTaskDidReceiveData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataTaskWillCacheResponse {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataTaskWillCacheResponse)), 0x0);
    return r0;
}

-(void)setDataTaskWillCacheResponse:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDownloadTaskDidFinishDownloading:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)downloadTaskDidFinishDownloading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadTaskDidFinishDownloading)), 0x0);
    return r0;
}

-(void *)downloadTaskDidWriteData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadTaskDidWriteData)), 0x0);
    return r0;
}

-(void)setDownloadTaskDidWriteData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDownloadTaskDidResume:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)downloadTaskDidResume {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_downloadTaskDidResume)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_downloadTaskDidResume, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadTaskDidWriteData, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadTaskDidFinishDownloading, 0x0);
    objc_storeStrong((int64_t *)&self->_dataTaskWillCacheResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_dataTaskDidReceiveData, 0x0);
    objc_storeStrong((int64_t *)&self->_dataTaskDidBecomeDownloadTask, 0x0);
    objc_storeStrong((int64_t *)&self->_dataTaskDidReceiveResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_taskDidComplete, 0x0);
    objc_storeStrong((int64_t *)&self->_taskDidSendBodyData, 0x0);
    objc_storeStrong((int64_t *)&self->_taskNeedNewBodyStream, 0x0);
    objc_storeStrong((int64_t *)&self->_taskDidReceiveAuthenticationChallenge, 0x0);
    objc_storeStrong((int64_t *)&self->_taskWillPerformHTTPRedirection, 0x0);
    objc_storeStrong((int64_t *)&self->_didFinishEventsForBackgroundURLSession, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionDidReceiveAuthenticationChallenge, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionDidBecomeInvalid, 0x0);
    objc_storeStrong((int64_t *)&self->_lock, 0x0);
    objc_storeStrong((int64_t *)&self->_mutableTaskDelegatesKeyedByTaskIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_completionGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_completionQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_reachabilityManager, 0x0);
    objc_storeStrong((int64_t *)&self->_securityPolicy, 0x0);
    objc_storeStrong((int64_t *)&self->_responseSerializer, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end