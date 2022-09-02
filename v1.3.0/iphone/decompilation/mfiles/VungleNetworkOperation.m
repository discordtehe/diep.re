@implementation VungleNetworkOperation

-(void)setNetworkCompletionBlock:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_networkCompletionBlock));
    if (*(r0 + r20) != r2) {
            r19 = r0;
            r0 = objc_retainBlock(r2);
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
    }
    return;
}

-(void *)initWithURL:(void *)arg2 requestType:(unsigned long long)arg3 parameters:(void *)arg4 session:(void *)arg5 taskSetupCompletionBlock:(void *)arg6 taskCompletionBlock:(void *)arg7 {
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
    r25 = arg4;
    r26 = arg3;
    r27 = arg2;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    r24 = [arg7 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_url, r27);
            r23->_requestType = r26;
            objc_storeStrong((int64_t *)&r23->_requestParameters, r25);
            objc_storeWeak((int64_t *)&r23->_session, r21);
            r0 = [r22 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_taskSetupCompletionBlock));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r24 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_networkCompletionBlock));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r23->_timeout = 0x4024000000000000;
            r23->_maxAttempts = 0x1;
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)setName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([NSOperation instancesRespondToSelector:@selector(setName:)] != 0x0) {
            [[&var_30 super] setName:r2];
    }
    [r19 release];
    return;
}

-(void *)taskWithRequest:(void *)arg2 session:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isURLSessionValid];
    [r0 release];
    if (r22 != 0x0) {
            r21 = [[r20 dataTaskWithRequest:r19] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)isConcurrent {
    return 0x1;
}

-(void)start {
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
    if ([self isCancelled] == 0x0) goto loc_1005f7af4;

loc_1005f7acc:
    [r19 terminate];
    r0 = [r19 taskSetupCompletionBlock];
    goto loc_1005f7ca4;

loc_1005f7ca4:
    r0 = [r0 retain];
    r20 = r0;
    (*(r0 + 0x10))();
    goto loc_1005f7cbc;

loc_1005f7cbc:
    [r20 release];
    return;

loc_1005f7af4:
    r0 = [r19 url];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1005f7c80;

loc_1005f7b1c:
    r22 = [[r19 url] retain];
    r0 = [NSMutableURLRequest requestWithURL:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    [r19 prepareRequest:r20];
    [r19 willChangeValueForKey:@"isExecuting"];
    [r19 setRunning:0x1];
    [r19 didChangeValueForKey:@"isExecuting"];
    if ([r19 maxAttempts] == 0x1) {
            r0 = [r19 backoffCalculator];
            r0 = [r0 retain];
            [r0 increaseAttempts];
            [r0 release];
            r0 = [NSOperationQueue currentQueue];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isSuspended];
            [r0 release];
            if (r22 != 0x0) {
                    [r19 terminate];
                    r0 = [r19 taskSetupCompletionBlock];
                    r0 = [r0 retain];
                    r21 = r0;
                    (*(r0 + 0x10))();
            }
            else {
                    r22 = [[r19 session] retain];
                    r0 = [r19 taskWithRequest:r20 session:r22];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r22 release];
                    if (r21 != 0x0) {
                            [r19 setTask:r21];
                            r22 = [[r19 taskSetupCompletionBlock] retain];
                            (*(r22 + 0x10))(r22, r19, [[r19 task] retain]);
                            [r24 release];
                            [r22 release];
                            r0 = [r19 task];
                            r0 = [r0 retain];
                            [r0 resume];
                            r0 = r0;
                    }
                    else {
                            [r19 terminate];
                            r0 = [r19 delegate];
                            r0 = [r0 retain];
                            [r0 didAbortOperation:r19];
                            r0 = r0;
                    }
                    [r0 release];
            }
            [r21 release];
    }
    else {
            [r19 dispatchBackoffConnectionWithRequest:r20];
    }
    goto loc_1005f7cbc;

loc_1005f7c80:
    [r19 terminate];
    r0 = [r19 taskSetupCompletionBlock];
    goto loc_1005f7ca4;
}

-(bool)isAsynchronous {
    return 0x1;
}

-(bool)isExecuting {
    r0 = [self running];
    return r0;
}

-(bool)isCancelled {
    r0 = [self didCancel];
    return r0;
}

-(bool)isFinished {
    r0 = [self running];
    r0 = r0 ^ 0x1;
    return r0;
}

-(void)terminate {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(willTerminateOperation:)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 willTerminateOperation:r19];
            [r0 release];
    }
    r21 = @selector(respondsToSelector:);
    [r19 finishOperation];
    r0 = [r19 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21, @selector(didTerminateOperation:));
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 didTerminateOperation:r2];
            [r20 release];
    }
    return;
}

-(void)cancel {
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
    r19 = self;
    if (([self didCancel] & 0x1) == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 willCancelOperation:r19];
            [r0 release];
            [r19 willChangeValueForKey:@"isCancelled"];
            [r19 setDidCancel:0x1];
            r0 = [r19 task];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            [[&var_40 super] cancel];
            r21 = [objc_alloc() init];
            [r19 setResponse:r21];
            [r21 release];
            r0 = [NSMutableDictionary dictionaryWithCapacity:0x2];
            r0 = [r0 retain];
            r21 = r0;
            [r0 setObject:@"Network operation cancelled" forKeyedSubscript:**_NSLocalizedDescriptionKey];
            r0 = [r19 url];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 url];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 setObject:r23 forKeyedSubscript:**_NSURLErrorFailingURLErrorKey];
                    [r23 release];
            }
            r22 = [[NSError errorWithDomain:**_NSURLErrorDomain code:0xfffffffffffffc19 userInfo:r21] retain];
            r0 = [r19 response];
            r0 = [r0 retain];
            [r0 setError:r22];
            [r0 release];
            [r22 release];
            [r19 didChangeValueForKey:@"isCancelled"];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 didCancelOperation:r19];
            [r0 release];
            [r19 finishOperation];
            [r21 release];
    }
    return;
}

-(void)retryBaseRequestWithBackoff {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self url];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 url] retain];
            r21 = [[NSMutableURLRequest requestWithURL:r20] retain];
            [r20 release];
            [r19 timeout];
            [r21 setTimeoutInterval:r20];
            [r19 prepareRequest:r21];
            [r19 dispatchBackoffConnectionWithRequest:r21];
            [r21 release];
    }
    return;
}

-(void)finishOperation {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(bool)handleData:(void *)arg2 error:(void * *)arg3 {
    r22 = [arg2 retain];
    r0 = [self response];
    r0 = [r0 retain];
    r24 = [[r0 data] retain];
    r21 = [[NSMutableData dataWithData:r24] retain];
    [r24 release];
    [r0 release];
    [r21 appendData:r22];
    [r22 release];
    r22 = [r21 copy];
    r0 = [self response];
    r0 = [r0 retain];
    [r0 setData:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    return 0x1;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 inDict:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            r22 = [[NSNull null] retain];
            r23 = [r19 isEqual:r2];
            [r22 release];
            if ((r23 & 0x1) == 0x0) {
                    [r21 setObject:r2 forKey:r3];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)encodedURLParametersStringWithDictionary:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 retain];
    r19 = r0;
    var_28 = r0;
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_48];
    [r21 release];
    if ([r19 count] != 0x0) {
            r20 = [[r19 componentsJoinedByString:r2] retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [var_28 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)URLEncodeString:(void *)arg2 {
    r0 = CFURLCreateStringByAddingPercentEscapes(0x0, arg2, 0x0, @";/?:@&=+$, {}|\^[]`<>#%\"", 0x8000100);
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void)dispatchBackoffConnectionWithRequest:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 backoffCalculator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 attemptCount];
    r24 = [r20 maxAttempts];
    [r0 release];
    if (r23 <= r24 && ([r20 shouldKeepTrying] & 0x1) != 0x0) {
            r0 = [r20 backoffCalculator];
            r0 = [r0 retain];
            [r0 increaseAttempts];
            [r0 release];
            [r20 setError:0x0];
            r0 = [r20 response];
            r0 = [r0 retain];
            [r0 setData:0x0];
            [r0 release];
            r23 = [[r20 session] retain];
            r0 = [r20 taskWithRequest:r19 session:r23];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r0 = [r20 taskSetupCompletionBlock];
                    r0 = [r0 retain];
                    (*(r0 + 0x10))();
                    [r23 release];
                    [r20 setTask:r22];
                    objc_initWeak(&stack[-72], r20);
                    r0 = [r20 backoffCalculator];
                    r0 = [r0 retain];
                    dispatch_time(0x0, [r0 backoffTime] * 0x3b9aca00);
                    [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
                    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                    dispatch_after(r23, r24, &var_60);
                    [r24 release];
                    [r20 release];
                    objc_destroyWeak(&var_60 + 0x20);
                    objc_destroyWeak(&stack[-72]);
            }
            else {
                    [r20 terminate];
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 didAbortOperation:r20];
                    [r0 release];
            }
            [r22 release];
    }
    else {
            [r20 finishOperation];
    }
    [r19 release];
    return;
}

-(void)prepareRequest:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = self;
    r21 = [arg2 retain];
    [r19 timeout];
    [r21 setTimeoutInterval:r2];
    if ([r19 requestType] == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = @"POST";
            }
            else {
                    r2 = @"GET";
            }
    }
    [r21 setHTTPMethod:r2];
    if ([r19 requestType] == 0x0 || [r19 hasQueryParameters] != 0x0) goto loc_1005f87e8;

loc_1005f8a28:
    if ([r19 requestType] != 0x1) goto loc_1005f8c7c;

loc_1005f8a44:
    [r21 setValue:r2 forHTTPHeaderField:r3];
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_1005f8c7c;

loc_1005f8abc:
    r22 = [[r19 parameters] retain];
    r0 = [NSJSONSerialization dataWithJSONObject:r22 options:0x0 error:0x0];
    r29 = r29;
    r23 = [r0 retain];
    [r21 setHTTPBody:r23];
    goto loc_1005f8c6c;

loc_1005f8c6c:
    [r23 release];
    [r22 release];
    goto loc_1005f8c7c;

loc_1005f8c7c:
    [r21 setValue:r2 forHTTPHeaderField:r3];
    r0 = [r19 extraHeaders];
    r29 = r29;
    r22 = [r0 retain];
    r0 = [r21 retain];
    r21 = r0;
    var_70 = r0;
    [r22 enumerateKeysAndObjectsUsingBlock:&var_90];
    [r22 release];
    if ([r19 isInternal] != 0x0) {
            [[r19 sdkVersion] retain];
            [[r19 pluginName] retain];
            [[NSString stringWithFormat:@"Vungle/%@;%@"] retain];
            [r21 setValue:r2 forHTTPHeaderField:r3];
            [r23 release];
            [r25 release];
            [r24 release];
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r0 = [r0 bundleIdentifier];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r21, r20);
            [r24 release];
            [r23 release];
    }
    if (([r19 isTPAT] & 0x1) != 0x0 || ([r19 isInternal] & 0x1) == 0x0) {
            [[r19 navigatorUserAgent] retain];
            [r21 setValue:r2 forHTTPHeaderField:r3];
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [var_70 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1005f87e8:
    [r21 setValue:r2 forHTTPHeaderField:r3];
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    [r22 release];
    if (r25 == 0x0) goto loc_1005f8c7c;

loc_1005f8868:
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"ifa"] retain];
    [r0 release];
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"app_id"];
    r29 = r29;
    r23 = [r0 retain];
    [r24 release];
    if ([NSURLQueryItem class] == 0x0) goto loc_1005f8b1c;

loc_1005f8900:
    r24 = [[NSURLQueryItem queryItemWithName:@"ifa" value:r22] retain];
    r25 = [[NSURLQueryItem queryItemWithName:@"app_id" value:r23] retain];
    r27 = [[r19 url] retain];
    r26 = [[NSURLComponents componentsWithURL:r27 resolvingAgainstBaseURL:0x1] retain];
    [r27 release];
    r27 = [[NSArray arrayWithObjects:&var_68 count:0x2] retain];
    [r26 setQueryItems:r27];
    [r27 release];
    r0 = [r26 URL];
    r29 = r29;
    r27 = [r0 retain];
    [r21 setURL:r27];
    [r27 release];
    r0 = r26;
    goto loc_1005f8c58;

loc_1005f8c58:
    [r0 release];
    goto loc_1005f8c5c;

loc_1005f8c5c:
    [r25 release];
    [r24 release];
    goto loc_1005f8c6c;

loc_1005f8b1c:
    r24 = [NSMutableDictionary new];
    [r19 setObject:r22 forKey:@"ifa" inDict:r24];
    [r19 setObject:r23 forKey:@"app_id" inDict:r24];
    r0 = [r19 encodedURLParametersStringWithDictionary:r24];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1005f8c5c;

loc_1005f8bac:
    r0 = [r19 url];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 absoluteString];
    r0 = [r0 retain];
    r28 = [[r0 stringByAppendingFormat:@"?%@"] retain];
    [r0 release];
    [r26 release];
    r0 = [NSURL URLWithString:r28];
    r29 = r29;
    r26 = [r0 retain];
    [r21 setURL:r26];
    [r26 release];
    r0 = r28;
    goto loc_1005f8c58;
}

-(void *)description {
    r31 = r31 - 0x1c0;
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
    [self class];
    r20 = [[NSString stringWithFormat:@"<%@: 0x%lx,"] retain];
    r0 = [r21 url];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r8 = @"(null)";
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"(null)";
            }
    }
    r0 = [r21 response];
    r29 = r29;
    r0 = [r0 retain];
    r8 = @"YES";
    var_188 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = @"YES";
            }
            else {
                    r8 = @"NO";
            }
    }
    r0 = [r21 error];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r21 error];
            r0 = [r0 retain];
            var_190 = r0;
            var_198 = [[r0 localizedDescription] retain];
            r0 = [NSString stringWithFormat:0x100ee9590];
            r29 = r29;
            r27 = [r0 retain];
            r19 = 0x1;
    }
    else {
            r19 = 0x0;
            r27 = 0x100ee95b0;
    }
    r25 = @class(NSNumber);
    r0 = [r21 backoffCalculator];
    r0 = [r0 retain];
    r28 = r0;
    r25 = [[r25 numberWithUnsignedInteger:[r0 attemptCount]] retain];
    r23 = [[NSNumber numberWithUnsignedInteger:[r21 maxAttempts]] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    var_178 = [r0 retain];
    [r23 release];
    [r25 release];
    [r28 release];
    if (r19 != 0x0) {
            [r27 release];
            [var_198 release];
            [var_190 release];
    }
    [r24 release];
    [var_188 release];
    [r22 release];
    var_160 = q0;
    r0 = [var_178 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_190 = r1;
    var_188 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r22 = *var_160;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_160 != r22) {
                                    objc_enumerationMutation(var_188);
                            }
                            r19 = [[var_178 objectForKeyedSubscript:r2] retain];
                            r23 = [[NSString stringWithFormat:r2] retain];
                            r0 = [r20 stringByAppendingString:r2];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r20 release];
                            [r23 release];
                            [r19 release];
                            r21 = r21 + 0x1;
                            r20 = r28;
                    } while (r21 < r25);
                    r0 = objc_msgSend(var_188, var_190);
                    r25 = r0;
                    r20 = r28;
            } while (r0 != 0x0);
            r20 = r28;
    }
    var_60 = **___stack_chk_guard;
    [var_188 release];
    r22 = [[r20 substringToIndex:[r20 length] - 0x1] retain];
    [r20 release];
    r19 = [[r22 stringByAppendingString:@">"] retain];
    [var_178 release];
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)shouldKeepTrying {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isFirstAttempt] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            if (([r19 didCancel] & 0x1) == 0x0 && ([r19 didReachMaxAttempts] & 0x1) == 0x0) {
                    r0 = [r19 retryState];
                    if (r0 == 0x7530) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(bool)isFirstAttempt {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self backoffCalculator];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 attemptCount] == 0x0) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)didReachMaxAttempts {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self attemptsRemaining];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(unsigned long long)attemptsRemaining {
    r20 = [self maxAttempts];
    r0 = [self backoffCalculator];
    r0 = [r0 retain];
    r20 = r20 - [r0 attemptCount];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)hasQueryParameters {
    r0 = *(int8_t *)(int64_t *)&self->_hasQueryParameters;
    return r0;
}

-(void *)backoffCalculator {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_backoffCalculator));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(unsigned long long)retryState {
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
    r21 = self;
    r0 = [self error];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [r0 code];
    r24 = [[VungleHTTPResponseHelper retryableSessionErrorCodes] retain];
    r0 = [NSNumber numberWithInteger:r23];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r24 containsObject:r2];
    [r25 release];
    [r24 release];
    if ((r26 & 0x1) == 0x0) goto loc_1005f9c14;

loc_1005f9c0c:
    r19 = 0x7530;
    goto loc_1005f9c78;

loc_1005f9c78:
    r0 = r22;
    goto loc_1005f9d88;

loc_1005f9d88:
    [r0 release];
    r0 = r19;
    return r0;

loc_1005f9c14:
    r20 = @selector(containsObject:);
    r24 = [[VungleHTTPResponseHelper notRetryableSessionErrorCodes] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:r23];
    r29 = r29;
    r23 = [r0 retain];
    r25 = objc_msgSend(r24, r20);
    [r23 release];
    [r24 release];
    if (r25 == 0x0) goto loc_1005f9c80;

loc_1005f9c74:
    r19 = 0x7531;
    goto loc_1005f9c78;

loc_1005f9c80:
    r20 = @selector(containsObject:);
    [r22 release];
    r0 = [r21 response];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [r0 statusCode];
    r23 = [[VungleHTTPResponseHelper retryableHTTPErrorCodes] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:r22];
    r29 = r29;
    r24 = [r0 retain];
    r25 = objc_msgSend(r23, r20);
    [r24 release];
    [r23 release];
    if ((r25 & 0x1) != 0x0) {
            r19 = 0x7530;
    }
    else {
            r20 = @selector(containsObject:);
            r23 = [[VungleHTTPResponseHelper notRetryableHTTPErrorCodes] retain];
            r19 = [[NSNumber numberWithInteger:r22] retain];
            r20 = objc_msgSend(r23, r20);
            [r19 release];
            [r23 release];
            if (r20 == 0x0) {
                    asm { cinc       x19, x8, eq };
            }
    }
    r0 = r21;
    goto loc_1005f9d88;
}

-(void)setParameters:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)parameters {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_parameters)), 0x0);
    return r0;
}

-(void)setHasQueryParameters:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasQueryParameters = arg2;
    return;
}

-(void *)extraHeaders {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_extraHeaders)), 0x0);
    return r0;
}

-(void *)sdkVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sdkVersion)), 0x0);
    return r0;
}

-(void)setExtraHeaders:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)url {
    r0 = self->_url;
    return r0;
}

-(void)setSdkVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_url, arg2);
    return;
}

-(void)setMaxAttempts:(unsigned long long)arg2 {
    self->_maxAttempts = arg2;
    return;
}

-(unsigned long long)maxAttempts {
    r0 = self->_maxAttempts;
    return r0;
}

-(double)timeout {
    r0 = self;
    return r0;
}

-(bool)isInternal {
    r0 = *(int8_t *)(int64_t *)&self->_isInternal;
    return r0;
}

-(void)setTimeout:(double)arg2 {
    self->_timeout = d0;
    return;
}

-(void)setIsInternal:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isInternal = arg2;
    return;
}

-(void)setPluginName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pluginName, arg2);
    return;
}

-(void *)pluginName {
    r0 = self->_pluginName;
    return r0;
}

-(void *)navigatorUserAgent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_navigatorUserAgent)), 0x0);
    return r0;
}

-(void)setNavigatorUserAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isTPAT {
    r0 = *(int8_t *)(int64_t *)&self->_TPAT;
    return r0;
}

-(void)setTPAT:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_TPAT = arg2;
    return;
}

-(void *)task {
    r0 = self->_task;
    return r0;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_task, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)networkCompletionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_networkCompletionBlock)), 0x0);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setResponse:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_response, arg2);
    return;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(void *)response {
    r0 = self->_response;
    return r0;
}

-(void)setError:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_error, arg2);
    return;
}

-(void)setDidCancel:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didCancel = arg2;
    return;
}

-(bool)didCancel {
    r0 = *(int8_t *)(int64_t *)&self->_didCancel;
    return r0;
}

-(void *)requestParameters {
    r0 = self->_requestParameters;
    return r0;
}

-(void *)session {
    r0 = objc_loadWeakRetained((int64_t *)&self->_session);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRequestParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestParameters, arg2);
    return;
}

-(unsigned long long)requestType {
    r0 = self->_requestType;
    return r0;
}

-(void)setSession:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_session, arg2);
    return;
}

-(void)setRequestType:(unsigned long long)arg2 {
    self->_requestType = arg2;
    return;
}

-(void)setBackoffCalculator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backoffCalculator, arg2);
    return;
}

-(void)setTaskSetupCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)taskSetupCompletionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_taskSetupCompletionBlock)), 0x0);
    return r0;
}

-(void *)connection {
    r0 = self->_connection;
    return r0;
}

-(void)setRunning:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_running = arg2;
    return;
}

-(bool)running {
    r0 = *(int8_t *)(int64_t *)&self->_running;
    return r0;
}

-(unsigned long long)currentBackoffIndex {
    r0 = self->_currentBackoffIndex;
    return r0;
}

-(void)setConnection:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connection, arg2);
    return;
}

-(void)setCurrentBackoffIndex:(unsigned long long)arg2 {
    self->_currentBackoffIndex = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_connection, 0x0);
    objc_storeStrong((int64_t *)&self->_backoffCalculator, 0x0);
    objc_storeStrong((int64_t *)&self->_taskSetupCompletionBlock, 0x0);
    objc_destroyWeak((int64_t *)&self->_session);
    objc_storeStrong((int64_t *)&self->_requestParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_response, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_networkCompletionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_task, 0x0);
    objc_storeStrong((int64_t *)&self->_navigatorUserAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_pluginName, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_sdkVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHeaders, 0x0);
    objc_storeStrong((int64_t *)&self->_parameters, 0x0);
    return;
}

@end