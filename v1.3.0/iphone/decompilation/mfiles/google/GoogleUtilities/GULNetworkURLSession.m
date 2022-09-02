@implementation GULNetworkURLSession

+(void)handleEventsForBackgroundURLSessionID:(void *)arg2 completionHandler:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 hasPrefix:*0x100e68f60] != 0x0) {
            r0 = [r21 fetcherWithSessionIdentifier:r19];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [r21 addSystemCompletionHandler:r20 forSession:r19];
            }
            else {
                    sub_1000abe24(*0x100e68f90, 0x0, [[NSString stringWithFormat:@"I-NET%06ld"] retain], @"Failed to retrieve background session with ID %@ after app is relaunched.");
                    [r23 release];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithNetworkLoggerDelegate:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_80 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = NSSearchPathForDirectoriesInDomains(0xe, 0x1, 0x1);
            r0 = [r0 retain];
            [[r0 firstObject] retain];
            r0 = [NSURL fileURLWithPathComponents:[[NSArray arrayWithObjects:&var_70 count:0x3] retain]];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_networkDirectoryURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [[r0 UUIDString] retain];
            r0 = [NSString stringWithFormat:@"%@-%@"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r26 release];
            [r25 release];
            objc_storeWeak((int64_t *)&r20->_loggerDelegate, r19);
            [r23 release];
            [r22 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)URLSessionDidFinishEventsForBackgroundURLSession:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = objc_loadWeakRetained((int64_t *)&self->_loggerDelegate);
    r0 = [arg2 configuration];
    r0 = [r0 retain];
    r26 = [[r0 identifier] retain];
    [r22 GULNetwork_logWithLevel:0x7 messageCode:0xdbf8b message:@"Background session finished" context:r26];
    [r26 release];
    [r0 release];
    [r22 release];
    r21 = [[arg2 configuration] retain];
    [r20 release];
    r20 = [[r21 identifier] retain];
    [self callSystemCompletionHandler:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didFinishDownloadingToURL:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg4 retain];
    r19 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r19 path] retain];
            r0 = [NSData dataWithContentsOfFile:r23 options:0x0 error:&var_38];
            r22 = [r0 retain];
            r21 = [var_38 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_downloadedData));
            r0 = *(r20 + r24);
            *(r20 + r24) = r22;
            [r0 release];
            [r23 release];
            if (r21 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r20->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x3 messageCode:0xdbf8a message:@"Cannot read the content of downloaded data" context:r21];
                    [r0 release];
                    r0 = *(r20 + r24);
                    *(r20 + r24) = 0x0;
                    [r0 release];
            }
            r0 = r21;
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_loggerDelegate);
            [r0 GULNetwork_logWithLevel:0x3 messageCode:0xdbf89 message:@"Unable to read downloaded data from empty temp path"];
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_downloadedData));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)sessionIDFromAsyncGETRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x70;
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
    if (*(int8_t *)(int64_t *)&r21->_backgroundNetworkEnabled != 0x0) {
            r1 = @selector(backgroundSessionConfigWithSessionID:);
            r0 = objc_msgSend(r21, r1);
            r29 = r29;
    }
    else {
            r1 = @selector(defaultSessionConfiguration);
            r0 = objc_msgSend(@class(NSURLSessionConfiguration), r1);
            r29 = r29;
    }
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_sessionConfig));
    r8 = *(r21 + r23);
    *(r21 + r23) = r0;
    [r8 release];
    [r21 populateSessionConfig:*(r21 + (r23 << r1)) withRequest:r19];
    [*(r21 + (r23 << @selector(populateSessionConfig:withRequest:))) setURLCache:0x0];
    r23 = *(r21 + (r23 << @selector(setURLCache:)));
    r24 = [[NSOperationQueue mainQueue] retain];
    r22 = [[NSURLSession sessionWithConfiguration:r23 delegate:r21 delegateQueue:r24] retain];
    [r24 release];
    r0 = [r22 downloadTaskWithRequest:r19];
    r29 = r29;
    r23 = [r0 retain];
    if (r22 != 0x0 && r23 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_URLSession, r22);
            r0 = [r21 class];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_sessionID));
            [r0 setSessionInFetcherMap:r21 forSessionID:*(r21 + r25)];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 resume];
            r21 = [*(r21 + r25) retain];
    }
    else {
            r24 = [NSError alloc];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
            r26 = [r0 retain];
            r24 = [r24 initWithDomain:*0x100e68f88 code:0x2 userInfo:r26];
            [r26 release];
            [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r24];
            [r24 release];
            r21 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sessionIDFromAsyncPOSTRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_sessionID));
    r0 = [r21 temporaryFilePathWithSessionID:*(r21 + r26)];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_uploadingFileURL));
    r8 = *(r21 + r27);
    *(r21 + r27) = r0;
    [r8 release];
    [r21 maybeRemoveTempFilesAtURL:r21->_networkDirectoryURL expiringTime:r3];
    if (*(int8_t *)(int64_t *)&r21->_backgroundNetworkEnabled != 0x0 && [r21 ensureTemporaryDirectoryExists] != 0x0) {
            r24 = [[r19 HTTPBody] retain];
            r0 = *(r21 + r27);
            r0 = [r0 path];
            r29 = r29;
            r25 = [r0 retain];
            r23 = [r24 writeToFile:r25 options:0x1 error:&var_70];
            r22 = [var_70 retain];
            [r25 release];
            [r24 release];
            if (r22 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x3 messageCode:0xdbf88 message:@"Failed to write request data to file" context:r22];
                    [r0 release];
                    if ((r23 & 0x1) != 0x0) {
                            [r21 excludeFromBackupForURL:*(r21 + r27)];
                            r0 = [r21 backgroundSessionConfigWithSessionID:*(r21 + r26)];
                            r0 = [r0 retain];
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_sessionConfig));
                            r8 = *(r21 + r24);
                            *(r21 + r24) = r0;
                            [r8 release];
                            [r21 populateSessionConfig:*(r21 + r24) withRequest:r19];
                            r24 = *(r21 + r24);
                            r25 = [[NSOperationQueue mainQueue] retain];
                            r23 = [[NSURLSession sessionWithConfiguration:r24 delegate:r21 delegateQueue:r25] retain];
                            [r25 release];
                            r0 = [r23 uploadTaskWithRequest:r19 fromFile:*(r21 + r27)];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 == 0x0) {
                                    r25 = [NSError alloc];
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                    r27 = [r0 retain];
                                    r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                    [r27 release];
                                    [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                    [r25 release];
                                    r21 = 0x0;
                            }
                            else {
                                    if (r23 != 0x0) {
                                            objc_storeWeak((int64_t *)&r21->_URLSession, r23);
                                            [[r21 class] setSessionInFetcherMap:r21 forSessionID:*(r21 + r26)];
                                            r0 = [r19 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            r0 = [r20 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            [r24 resume];
                                            r21 = [*(r21 + r26) retain];
                                    }
                                    else {
                                            r25 = [NSError alloc];
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                            r27 = [r0 retain];
                                            r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                            [r27 release];
                                            [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                            [r25 release];
                                            r21 = 0x0;
                                    }
                            }
                    }
                    else {
                            r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
                            r0 = [r0 retain];
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_sessionConfig));
                            r8 = *(r21 + r24);
                            *(r21 + r24) = r0;
                            [r8 release];
                            [r21 populateSessionConfig:*(r21 + r24) withRequest:r19];
                            r24 = *(r21 + r24);
                            r25 = [[NSOperationQueue mainQueue] retain];
                            r23 = [[NSURLSession sessionWithConfiguration:r24 delegate:r21 delegateQueue:r25] retain];
                            [r25 release];
                            r25 = [[r19 HTTPBody] retain];
                            r0 = [r23 uploadTaskWithRequest:r19 fromData:r25];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r25 release];
                            if (r24 != 0x0) {
                                    if (r23 != 0x0) {
                                            objc_storeWeak((int64_t *)&r21->_URLSession, r23);
                                            [[r21 class] setSessionInFetcherMap:r21 forSessionID:*(r21 + r26)];
                                            r0 = [r19 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            r0 = [r20 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            [r24 resume];
                                            r21 = [*(r21 + r26) retain];
                                    }
                                    else {
                                            r25 = [NSError alloc];
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                            r27 = [r0 retain];
                                            r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                            [r27 release];
                                            [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                            [r25 release];
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    r25 = [NSError alloc];
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                    r27 = [r0 retain];
                                    r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                    [r27 release];
                                    [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                    [r25 release];
                                    r21 = 0x0;
                            }
                    }
            }
            else {
                    if (r23 != 0x0) {
                            [r21 excludeFromBackupForURL:*(r21 + r27)];
                            r0 = [r21 backgroundSessionConfigWithSessionID:*(r21 + r26)];
                            r0 = [r0 retain];
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_sessionConfig));
                            r8 = *(r21 + r24);
                            *(r21 + r24) = r0;
                            [r8 release];
                            [r21 populateSessionConfig:*(r21 + r24) withRequest:r19];
                            r24 = *(r21 + r24);
                            r25 = [[NSOperationQueue mainQueue] retain];
                            r23 = [[NSURLSession sessionWithConfiguration:r24 delegate:r21 delegateQueue:r25] retain];
                            [r25 release];
                            r0 = [r23 uploadTaskWithRequest:r19 fromFile:*(r21 + r27)];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 == 0x0) {
                                    r25 = [NSError alloc];
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                    r27 = [r0 retain];
                                    r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                    [r27 release];
                                    [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                    [r25 release];
                                    r21 = 0x0;
                            }
                            else {
                                    if (r23 != 0x0) {
                                            objc_storeWeak((int64_t *)&r21->_URLSession, r23);
                                            [[r21 class] setSessionInFetcherMap:r21 forSessionID:*(r21 + r26)];
                                            r0 = [r19 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            r0 = [r20 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            [r24 resume];
                                            r21 = [*(r21 + r26) retain];
                                    }
                                    else {
                                            r25 = [NSError alloc];
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                            r27 = [r0 retain];
                                            r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                            [r27 release];
                                            [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                            [r25 release];
                                            r21 = 0x0;
                                    }
                            }
                    }
                    else {
                            r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
                            r0 = [r0 retain];
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_sessionConfig));
                            r8 = *(r21 + r24);
                            *(r21 + r24) = r0;
                            [r8 release];
                            [r21 populateSessionConfig:*(r21 + r24) withRequest:r19];
                            r24 = *(r21 + r24);
                            r25 = [[NSOperationQueue mainQueue] retain];
                            r23 = [[NSURLSession sessionWithConfiguration:r24 delegate:r21 delegateQueue:r25] retain];
                            [r25 release];
                            r25 = [[r19 HTTPBody] retain];
                            r0 = [r23 uploadTaskWithRequest:r19 fromData:r25];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r25 release];
                            if (r24 != 0x0) {
                                    if (r23 != 0x0) {
                                            objc_storeWeak((int64_t *)&r21->_URLSession, r23);
                                            [[r21 class] setSessionInFetcherMap:r21 forSessionID:*(r21 + r26)];
                                            r0 = [r19 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            r0 = [r20 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
                                            r8 = *(r21 + r9);
                                            *(r21 + r9) = r0;
                                            [r8 release];
                                            [r24 resume];
                                            r21 = [*(r21 + r26) retain];
                                    }
                                    else {
                                            r25 = [NSError alloc];
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                            r27 = [r0 retain];
                                            r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                            [r27 release];
                                            [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                            [r25 release];
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    r25 = [NSError alloc];
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                                    r27 = [r0 retain];
                                    r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                                    [r27 release];
                                    [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                                    [r25 release];
                                    r21 = 0x0;
                            }
                    }
            }
    }
    else {
            r22 = 0x0;
            r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_sessionConfig));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            [r21 populateSessionConfig:*(r21 + r24) withRequest:r19];
            r24 = *(r21 + r24);
            r25 = [[NSOperationQueue mainQueue] retain];
            r23 = [[NSURLSession sessionWithConfiguration:r24 delegate:r21 delegateQueue:r25] retain];
            [r25 release];
            r25 = [[r19 HTTPBody] retain];
            r0 = [r23 uploadTaskWithRequest:r19 fromData:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            if (r24 != 0x0) {
                    if (r23 != 0x0) {
                            objc_storeWeak((int64_t *)&r21->_URLSession, r23);
                            [[r21 class] setSessionInFetcherMap:r21 forSessionID:*(r21 + r26)];
                            r0 = [r19 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                            r0 = [r20 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                            [r24 resume];
                            r21 = [*(r21 + r26) retain];
                    }
                    else {
                            r25 = [NSError alloc];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                            r27 = [r0 retain];
                            r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                            [r27 release];
                            [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                            [r25 release];
                            r21 = 0x0;
                    }
            }
            else {
                    r25 = [NSError alloc];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r27 = [r0 retain];
                    r25 = [r25 initWithDomain:*0x100e68f88 code:0x2 userInfo:r27];
                    [r27 release];
                    [r21 callCompletionHandler:r20 withResponse:0x0 data:0x0 error:r25];
                    [r25 release];
                    r21 = 0x0;
            }
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r24 = arg2;
    r20 = self;
    r23 = [r24 retain];
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r22 = objc_retainBlock(*(r20 + r25));
    r0 = *(r20 + r25);
    *(r20 + r25) = 0x0;
    [r0 release];
    r0 = [r19 response];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r21 release];
            r21 = 0x0;
    }
    else {
            if (r21 == 0x0) {
                    r26 = [NSError alloc];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r29 = r29;
                    r28 = [r0 retain];
                    r26 = [r26 initWithDomain:*0x100e68f88 code:0x5 userInfo:r28];
                    [r21 release];
                    [r28 release];
                    r21 = r26;
            }
    }
    var_58 = **___stack_chk_guard;
    r25 = [[r19 response] retain];
    [r20 callCompletionHandler:r22 withResponse:r25 data:r20->_downloadedData error:r21];
    [r25 release];
    [r20 removeTempItemAtURL:r20->_uploadingFileURL];
    [r20 maybeRemoveTempFilesAtURL:r20->_networkDirectoryURL expiringTime:r25];
    [r24 finishTasksAndInvalidate];
    r24 = [[r24 configuration] retain];
    [r23 release];
    r23 = [[r24 identifier] retain];
    [r24 release];
    [[r20 class] setSessionInFetcherMap:0x0 forSessionID:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didReceiveChallenge:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [r19 protectionSpace];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 authenticationMethod];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_1000aff90;

loc_1000afd74:
    r0 = [r19 protectionSpace];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 serverTrust];
    [r0 release];
    if (r23 == 0x0) goto loc_1000aff20;

loc_1000afda8:
    r22 = [[NSURLCredential credentialForTrust:r23] retain];
    r24 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
    r0 = r21->_request;
    r0 = [r0 URL];
    r29 = r29;
    r25 = [r0 retain];
    if (r22 != 0x0) {
            [r24 GULNetwork_logWithLevel:r2 messageCode:r3 message:r4 context:r5];
            [r25 release];
            [r24 release];
            var_68 = [r20 retain];
            var_60 = [r22 retain];
            r0 = objc_retainBlock(&var_88);
            CFRetain(r23);
            r25 = [dispatch_get_global_queue(0x0, 0x0) retain];
            [r24 retain];
            dispatch_async(r25, &var_C0);
            [r24 release];
            [r21 release];
            [r25 release];
            [var_60 release];
            [var_68 release];
    }
    else {
            [r24 GULNetwork_logWithLevel:r2 messageCode:r3 message:r4 context:r5];
            [r25 release];
            [r24 release];
            (*(r20 + 0x10))(r20, 0x2, 0x0);
    }
    [r22 release];
    goto loc_1000afff0;

loc_1000afff0:
    [r20 release];
    [r19 release];
    return;

loc_1000aff20:
    r22 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
    r21 = [[r21->_request URL] retain];
    [r22 GULNetwork_logWithLevel:0x7 messageCode:0xdbf8c message:@"Received empty server trust for host. Host" context:r21];
    [r21 release];
    [r22 release];
    goto loc_1000aff90;

loc_1000aff90:
    (*(r20 + 0x10))(r20, 0x1, 0x0);
    goto loc_1000afff0;
}

-(void)addSystemCompletionHandler:(void *)arg2 forSession:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_1000b0484;

loc_1000b03ac:
    if ([r20 length] == 0x0) goto loc_1000b04b8;

loc_1000b03c0:
    r0 = [r21 class];
    r0 = [r0 sessionIDToSystemCompletionHandlerDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r20];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
            [r0 GULNetwork_logWithLevel:0x4 messageCode:0xdbf93 message:@"Got multiple system handlers for a single session ID" context:r20];
            [r0 release];
    }
    r21 = objc_retainBlock(r19);
    [r22 setObject:r21 forKeyedSubscript:r20];
    [r21 release];
    r0 = r22;
    goto loc_1000b04f8;

loc_1000b04f8:
    [r0 release];
    [r20 release];
    [r19 release];
    return;

loc_1000b04b8:
    r21 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
    goto loc_1000b04ec;

loc_1000b04ec:
    [r21 GULNetwork_logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r21;
    goto loc_1000b04f8;

loc_1000b0484:
    r21 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
    goto loc_1000b04ec;
}

-(void)callSystemCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 sessionIDToSystemCompletionHandlerDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 objectForKey:r2] retain];
    if (r21 != 0x0) {
            [r20 removeObjectForKey:r19];
            var_28 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [var_28 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setSessionID:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_sessionID));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)backgroundSessionConfigWithSessionID:(void *)arg2 {
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
    r21 = @class(NSURLSessionConfiguration);
    r19 = [arg2 retain];
    if ([r21 respondsToSelector:@selector(backgroundSessionConfigurationWithIdentifier:)] != 0x0) {
            r0 = @class(NSURLSessionConfiguration);
            r0 = [r0 backgroundSessionConfigurationWithIdentifier:r19];
    }
    else {
            r0 = @class(NSURLSessionConfiguration);
            r0 = [r0 backgroundSessionConfiguration:r19];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)removeTempItemAtURL:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r23 = [r0 removeItemAtURL:r19 error:&var_38];
            r22 = [var_38 retain];
            if ((r23 & 0x1) == 0x0 && [r22 code] != 0x4) {
                    r20 = objc_loadWeakRetained((int64_t *)&r20->_loggerDelegate);
                    r23 = [[r22 localizedDescription] retain];
                    [r20 GULNetwork_logWithLevel:0x3 messageCode:0xdbf95 message:@"Failed to remove temporary uploading data file. Error" context:r23];
                    [r23 release];
                    [r20 release];
            }
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void *)sessionIDToFetcherMap {
    if (*qword_1011d19d8 != -0x1) {
            dispatch_once(0x1011d19d8, 0x100e69048);
    }
    r0 = *0x1011d19d0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)fetcherWithSessionIdentifier:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 sessionFromFetcherMapForSessionID:r19] retain];
    if (r21 == 0x0) {
            if ([r19 hasPrefix:*0x100e68f60] != 0x0) {
                    r22 = [[GULNetworkURLSession alloc] initWithNetworkLoggerDelegate:0x0];
                    [r21 release];
                    [r22 setSessionID:r19];
                    [r20 setSessionInFetcherMap:r22 forSessionID:r19];
                    r21 = r22;
            }
            else {
                    r21 = 0x0;
            }
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)maybeRemoveTempFilesAtURL:(void *)arg2 expiringTime:(double)arg3 {
    r31 = r31 - 0x1a0;
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
    var_150 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 length];
    [r0 release];
    if (r21 != 0x0) {
            r21 = [[NSFileManager defaultManager] retain];
            r22 = [[NSArray arrayWithObjects:r29 - 0x70 count:0x1] retain];
            r0 = [r21 contentsOfDirectoryAtURL:r20 includingPropertiesForKeys:r22 options:0x1 error:&var_F8];
            r29 = r29;
            r25 = [r0 retain];
            r24 = [var_F8 retain];
            if (r24 != 0x0 && [r24 code] != 0x104) {
                    r0 = objc_loadWeakRetained((int64_t *)&var_150->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x7 messageCode:0xdbf94 message:@"Cannot get files from the temporary network folder. Error" context:r24];
                    [r0 release];
            }
            else {
                    if ([r25 count] != 0x0) {
                            var_178 = r24;
                            stack[-384] = r22;
                            var_168 = r21;
                            stack[-368] = r20;
                            r0 = [NSDate date];
                            r0 = [r0 retain];
                            [r0 timeIntervalSince1970];
                            [r0 release];
                            var_128 = q0;
                            var_180 = r25;
                            r0 = [r25 retain];
                            r27 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_158 = r1;
                            r21 = objc_msgSend(r0, r1);
                            if (r21 != 0x0) {
                                    r20 = *var_128;
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*var_128 != r20) {
                                                            objc_enumerationMutation(r27);
                                                    }
                                                    r23 = **_NSURLCreationDateKey;
                                                    r24 = *(var_130 + r25 * 0x8);
                                                    r28 = [r24 getResourceValue:&var_140 forKey:r23 error:0x0];
                                                    r19 = [var_140 retain];
                                                    if (r28 != 0x0) {
                                                            [r19 timeIntervalSince1970];
                                                            d0 = Abs(d9 - d0);
                                                            if (d0 > d8) {
                                                                    [var_150 removeTempItemAtURL:r2];
                                                            }
                                                    }
                                                    [r19 release];
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r21);
                                            r21 = objc_msgSend(r27, var_158);
                                    } while (r21 != 0x0);
                            }
                            [r27 release];
                            r21 = var_168;
                            r20 = stack[-368];
                            r24 = var_178;
                            r22 = stack[-384];
                            r25 = var_180;
                    }
            }
            [r25 release];
            [r22 release];
            [r24 release];
            [r21 release];
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

+(void *)sessionIDToFetcherMapReadWriteLock {
    if (*qword_1011d19e8 != -0x1) {
            dispatch_once(0x1011d19e8, 0x100e69088);
    }
    r0 = *0x1011d19e0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)sessionIDToSystemCompletionHandlerDictionary {
    if (*qword_1011d19f8 != -0x1) {
            dispatch_once(0x1011d19f8, 0x100e690c8);
    }
    r0 = *0x1011d19f0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)temporaryFilePathWithSessionID:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"GULUpload_temp_%@"] retain];
    r19 = [[self->_networkDirectoryURL URLByAppendingPathComponent:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)ensureTemporaryDirectoryExists {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [[NSFileManager defaultManager] retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_networkDirectoryURL));
    r22 = [*(r21 + r23) checkResourceIsReachableAndReturnError:&var_38];
    r20 = [var_38 retain];
    if ((r22 & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            if (r20 != 0x0 && [r20 code] != 0x104) {
                    r0 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x4 messageCode:0xdbf96 message:@"Error while trying to access Network temp folder. Error" context:r20];
                    [r0 release];
            }
            [r19 createDirectoryAtURL:*(r21 + r23) withIntermediateDirectories:0x1 attributes:0x0 error:&var_40];
            r22 = [var_40 retain];
            if (r22 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r21->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x3 messageCode:0xdbf97 message:@"Cannot create temporary directory. Error" context:r22];
                    [r0 release];
                    r21 = 0x0;
            }
            else {
                    [r21 excludeFromBackupForURL:*(r21 + r23)];
                    r21 = 0x1;
            }
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)excludeFromBackupForURL:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [@(YES) retain];
            [r19 setResourceValue:r22 forKey:**_NSURLIsExcludedFromBackupKey error:&var_28];
            r21 = [var_28 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r20->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x3 messageCode:0xdbf98 message:@"Cannot exclude temporary folder from iTunes backup"];
                    [r0 release];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 willPerformHTTPRedirection:(void *)arg4 newRequest:(void *)arg5 completionHandler:(void *)arg6 {
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
    r21 = [arg4 retain];
    r19 = [arg5 retain];
    r20 = [arg6 retain];
    r24 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1e40] retain];
    r25 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1e3c] retain];
    r26 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1e48] retain];
    r27 = [[NSNumber numberWithInt:*(int32_t *)0x100ba1e38] retain];
    r23 = [[NSArray arrayWithObjects:&var_78 count:0x4] retain];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r24 = @class(NSNumber);
    r22 = [arg4 statusCode];
    [r21 release];
    r22 = [[r24 numberWithInteger:r22] retain];
    r24 = [r23 containsObject:r2];
    [r22 release];
    if ((r24 & 0x1) != 0x0) {
            r22 = [r19 retain];
            if (r21 != 0x0) {
                    [r22 release];
                    r22 = 0x0;
            }
            (*(r20 + 0x10))(r20, r22);
            [r22 release];
    }
    else {
            (*(r20 + 0x10))(r20, r19);
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)setSessionInFetcherMap:(void *)arg2 forSessionID:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 sessionIDToFetcherMapReadWriteLock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r0 = [r21 class];
    r0 = [r0 sessionIDToFetcherMap];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r26 release];
    if (r23 != 0x0) {
            if (r19 != 0x0) {
                    r0 = [NSString stringWithFormat:@"Discarding session: %@"];
                    r29 = r29;
                    r26 = [r0 retain];
                    r0 = objc_loadWeakRetained((int64_t *)&r23->_loggerDelegate);
                    [r0 GULNetwork_logWithLevel:0x6 messageCode:0xdbf9b message:r26];
                    [r0 release];
                    [r26 release];
            }
            r0 = objc_loadWeakRetained((int64_t *)&r23->_URLSession);
            [r0 finishTasksAndInvalidate];
            [r0 release];
    }
    r0 = [r21 class];
    r0 = [r0 sessionIDToFetcherMap];
    r29 = r29;
    r24 = [r0 retain];
    if (r19 != 0x0) {
            [r24 setObject:r2 forKey:r3];
    }
    else {
            [r24 removeObjectForKey:r2];
    }
    [r24 release];
    r0 = [r21 sessionIDToFetcherMapReadWriteLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)sessionFromFetcherMapForSessionID:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self sessionIDToFetcherMapReadWriteLock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r0 = [self class];
    r0 = [r0 sessionIDToFetcherMap];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:arg2] retain];
    [r22 release];
    [r0 release];
    r0 = [self sessionIDToFetcherMapReadWriteLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)callCompletionHandler:(void *)arg2 withResponse:(void *)arg3 data:(void *)arg4 error:(void *)arg5 {
    r31 = r31 - 0xb0;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (r22 != 0x0) {
            r24 = objc_loadWeakRetained((int64_t *)&r23->_loggerDelegate);
            r25 = [[NSNumber numberWithInteger:[r22 code]] retain];
            r0 = [NSArray arrayWithObjects:&var_58 count:0x2];
            r26 = [r0 retain];
            [r24 GULNetwork_logWithLevel:0x3 messageCode:0xdbf99 message:@"Encounter network error. Code, error" contexts:r26];
            [r26 release];
            [r25 release];
            [r24 release];
    }
    if (r19 != 0x0) {
            var_80 = [r19 retain];
            var_78 = [r20 retain];
            var_70 = [r21 retain];
            var_60 = [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_A0);
            [var_60 release];
            [var_70 release];
            [var_78 release];
            [var_80 release];
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)populateSessionConfig:(void *)arg2 withRequest:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [[arg3 allHTTPHeaderFields] retain];
    [arg2 setHTTPAdditionalHeaders:r22];
    [r22 release];
    [arg3 timeoutInterval];
    [arg2 setTimeoutIntervalForRequest:r22];
    [arg3 timeoutInterval];
    [arg2 setTimeoutIntervalForResource:r22];
    r21 = [arg3 cachePolicy];
    [r23 release];
    [arg2 setRequestCachePolicy:r21];
    [r20 release];
    return;
}

-(bool)isBackgroundNetworkEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_backgroundNetworkEnabled;
    return r0;
}

-(void)setBackgroundNetworkEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_backgroundNetworkEnabled = arg2;
    return;
}

-(void *)loggerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_loggerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLoggerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_loggerDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_loggerDelegate);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_uploadingFileURL, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadedData, 0x0);
    objc_storeStrong((int64_t *)&self->_networkDirectoryURL, 0x0);
    objc_destroyWeak((int64_t *)&self->_URLSession);
    objc_storeStrong((int64_t *)&self->_sessionConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionID, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    return;
}

@end