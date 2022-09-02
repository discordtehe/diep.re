@implementation USRVWebRequest

-(void)setStubbed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_stubbed = arg2;
    return;
}

-(bool)getStubbed {
    r0 = *(int8_t *)(int64_t *)&self->_stubbed;
    return r0;
}

-(void *)createConnection:(void *)arg2 delegate:(void *)arg3 startImmediately:(bool)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[NSURLConnection alloc] initWithRequest:r21 delegate:r20 startImmediately:arg4];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithUrl:(void *)arg2 requestType:(void *)arg3 headers:(void *)arg4 connectTimeout:(int)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            [r23 setUrl:r19];
            [r23 setRequestType:r20];
            [r23 setHeaders:r22];
            [r23 setFinished:0x0];
            r8 = 0x10624dd3;
            asm { smull      x8, w21, w8 };
            [r23 setConnectTimeout:(SAR(r8, 0x26)) + (r8 >> 0x3f)];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)receiveTimerTimedOut {
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r22 = [[self makeUserInfoDictionary:0x5 message:@"Request timed out"] retain];
    r21 = [[NSError errorWithDomain:@"com.unity3d.ads.UnityAds.Error" code:0x5 userInfo:r22] retain];
    [self setError:r21];
    [r21 release];
    [r22 release];
    [self setFinished:0x1];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 signal];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(void)cancel {
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    [self setCanceled:0x1];
    [self setFinished:0x1];
    r0 = [self connection];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 signal];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
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
    r21 = [arg3 retain];
    r0 = [r19 receivedData];
    r0 = [r0 retain];
    [r0 appendData:r21];
    [r21 release];
    [r0 release];
    r0 = [r19 progressBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 progressBlock] retain];
            r22 = [[r19 url] retain];
            r0 = [r19 receivedData];
            r0 = [r0 retain];
            (*(r21 + 0x10))(r21, r22, [r0 length], [r19 expectedContentLength]);
            [r20 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
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
    r0 = [r20 receivedData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setLength:0x0];
    [r0 release];
    [r20 setExpectedContentLength:[r19 expectedContentLength]];
    [NSHTTPURLResponse class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r23 = [r19 retain];
            [r20 setResponseCode:[r19 statusCode]];
            r0 = [r19 allHeaderFields];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            [r20 setResponseHeaders:r22];
            [r22 release];
    }
    r0 = [r20 responseHeaders];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [[NSDictionary alloc] init];
            [r20 setResponseHeaders:r22];
            [r22 release];
    }
    r0 = [r20 startBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r20 startBlock] retain];
            (*(r22 + 0x10))(r22, [[r20 url] retain], [r20 expectedContentLength]);
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void *)connection:(void *)arg2 willSendRequest:(void *)arg3 redirectResponse:(void *)arg4 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    if (arg4 != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)makeUserInfoDictionary:(long long)arg2 message:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg3 retain];
    r20 = [[NSNumber numberWithLong:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&var_48 count:0x2];
    r19 = [r0 retain];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    [self setFinished:0x1];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 signal];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    r22 = [arg3 retain];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r24 = [arg3 code];
    r21 = [[arg3 description] retain];
    [r22 release];
    r22 = [[self makeUserInfoDictionary:r24 message:r21] retain];
    r23 = [[NSError errorWithDomain:@"com.unity3d.ads.UnityAds.Error" code:0xa userInfo:r22] retain];
    [self setError:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [self setFinished:0x1];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 signal];
    [r0 release];
    r0 = [self blockCondition];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(void *)makeRequest {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r27 = self;
    r20 = [[self url] retain];
    r25 = [[NSURL URLWithString:r20] retain];
    [r20 release];
    r21 = [[NSMutableURLRequest alloc] init];
    [r27 setRequest:r21];
    [r21 setURL:r25];
    r19 = @selector(requestType);
    r0 = objc_msgSend(r27, r19);
    r29 = &saved_fp;
    r20 = [r0 retain];
    r2 = r20;
    [r21 setHTTPMethod:r2];
    [r20 release];
    [r27 connectTimeout];
    asm { scvtf      d0, w0 };
    [r21 setTimeoutInterval:r2];
    [r21 setCachePolicy:0x1];
    r0 = objc_msgSend(r27, r19);
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [r27 body];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 == 0x0) {
                    [@"" retain];
                    [r20 release];
                    r20 = @"";
            }
            r0 = [r20 dataUsingEncoding:0x4];
            r0 = [r0 retain];
            r19 = r0;
            [r0 length];
            r0 = [NSString stringWithFormat:@"%lu"];
            r29 = r29;
            r22 = [r0 retain];
            [r21 setValue:r22 forHTTPHeaderField:@"Content-Length"];
            [r21 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
            [r21 setHTTPBody:r19];
            [r22 release];
            [r19 release];
            [r20 release];
    }
    r28 = @selector(init);
    r26 = @selector(alloc);
    r0 = [r27 headers];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_210 = r25;
            var_188 = q0;
            r0 = [r27 headers];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 allKeys];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            var_208 = r20;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            var_1E0 = r0;
            if (r0 != 0x0) {
                    r22 = @selector(headers);
                    var_200 = *var_188;
                    var_1F8 = r22;
                    var_1F0 = r27;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_188 != var_200) {
                                            objc_enumerationMutation(var_208);
                                    }
                                    r26 = @selector(countByEnumeratingWithState:objects:count:);
                                    r20 = *(var_190 + r25 * 0x8);
                                    r0 = objc_msgSend(r27, r22);
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r19 release];
                                    var_1C8 = q0;
                                    r0 = [r22 retain];
                                    r22 = r0;
                                    r23 = objc_msgSend(r0, r26);
                                    if (r23 != 0x0) {
                                            r27 = *var_1C8;
                                            do {
                                                    r28 = 0x0;
                                                    do {
                                                            if (*var_1C8 != r27) {
                                                                    objc_enumerationMutation(r22);
                                                            }
                                                            [r21 setValue:r2 forHTTPHeaderField:r3];
                                                            r28 = r28 + 0x1;
                                                    } while (r28 < r23);
                                                    r23 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            } while (r23 != 0x0);
                                    }
                                    [r22 release];
                                    [r22 release];
                                    r25 = r25 + 0x1;
                                    r22 = var_1F8;
                                    r27 = var_1F0;
                            } while (r25 < var_1E0);
                            r0 = [var_208 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            var_1E0 = r0;
                    } while (r0 != 0x0);
            }
            [var_208 release];
            r26 = @selector(alloc);
            r25 = var_210;
            r28 = @selector(init);
    }
    var_58 = **___stack_chk_guard;
    r19 = objc_msgSend(objc_msgSend(@class(NSMutableData), r26), r28);
    [r27 setReceivedData:r19];
    [r19 release];
    r24 = [[r27 createConnection:r21 delegate:r27 startImmediately:0x0] retain];
    [r27 setConnection:r24];
    r19 = [[NSRunLoop mainRunLoop] retain];
    [r24 scheduleInRunLoop:r19 forMode:**_NSDefaultRunLoopMode];
    [r19 release];
    r19 = objc_msgSend(objc_msgSend(@class(NSCondition), r26), r28);
    [r27 setBlockCondition:r19];
    [r19 release];
    r0 = [r27 blockCondition];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    [r24 start];
    r0 = [r27 blockCondition];
    r0 = [r0 retain];
    [r0 wait];
    [r0 release];
    r0 = [r27 blockCondition];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    [r27 canceled];
    r19 = [[r27 receivedData] retain];
    [r24 release];
    [r21 release];
    [r25 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)connection:(void *)arg2 willCacheResponse:(void *)arg3 {
    return 0x0;
}

-(void *)url {
    r0 = self->_url;
    return r0;
}

-(void *)requestType {
    r0 = self->_requestType;
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_url, arg2);
    return;
}

-(void)setRequestType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestType, arg2);
    return;
}

-(void *)body {
    r0 = self->_body;
    return r0;
}

-(void *)headers {
    r0 = self->_headers;
    return r0;
}

-(void)setBody:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_body, arg2);
    return;
}

-(void *)responseHeaders {
    r0 = self->_responseHeaders;
    return r0;
}

-(void)setHeaders:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_headers, arg2);
    return;
}

-(void *)receivedData {
    r0 = self->_receivedData;
    return r0;
}

-(void)setResponseHeaders:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_responseHeaders, arg2);
    return;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(void)setReceivedData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_receivedData, arg2);
    return;
}

-(void)setError:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_error, arg2);
    return;
}

-(long long)expectedContentLength {
    r0 = self->_expectedContentLength;
    return r0;
}

-(void)setExpectedContentLength:(long long)arg2 {
    self->_expectedContentLength = arg2;
    return;
}

-(long long)responseCode {
    r0 = self->_responseCode;
    return r0;
}

-(void)setResponseCode:(long long)arg2 {
    self->_responseCode = arg2;
    return;
}

-(bool)canceled {
    r0 = *(int8_t *)(int64_t *)&self->_canceled;
    return r0;
}

-(bool)finished {
    r0 = *(int8_t *)(int64_t *)&self->_finished;
    return r0;
}

-(void)setCanceled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canceled = arg2;
    return;
}

-(void *)blockCondition {
    r0 = self->_blockCondition;
    return r0;
}

-(void)setFinished:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finished = arg2;
    return;
}

-(void)setBlockCondition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_blockCondition, arg2);
    return;
}

-(void *)progressBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_progressBlock)), 0x0);
    return r0;
}

-(void *)startBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_startBlock)), 0x0);
    return r0;
}

-(void)setProgressBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setStartBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setRequest:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_request, arg2);
    return;
}

-(void *)connection {
    r0 = self->_connection;
    return r0;
}

-(void *)request {
    r0 = self->_request;
    return r0;
}

-(void)setConnection:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connection, arg2);
    return;
}

-(int)connectTimeout {
    r0 = *(int32_t *)(int64_t *)&self->_connectTimeout;
    return r0;
}

-(void)setConnectTimeout:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_connectTimeout = arg2;
    return;
}

-(bool)stubbed {
    r0 = *(int8_t *)(int64_t *)&self->_stubbed;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_connection, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_startBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_progressBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_blockCondition, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_receivedData, 0x0);
    objc_storeStrong((int64_t *)&self->_responseHeaders, 0x0);
    objc_storeStrong((int64_t *)&self->_headers, 0x0);
    objc_storeStrong((int64_t *)&self->_body, 0x0);
    objc_storeStrong((int64_t *)&self->_requestType, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

@end