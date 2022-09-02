@implementation GADWebAdViewInterceptor

+(void *)canonicalRequestForRequest:(void *)arg2 {
    r0 = [arg2 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(bool)canInitWithRequest:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [self propertyForKey:@"com.google.admob.gadurlprotocol" inRequest:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r24 = 0x0;
    }
    else {
            r22 = [[r19 mainDocumentURL] retain];
            r21 = [sub_10088b0ac() retain];
            [r22 release];
            r23 = [[r19 URL] retain];
            r22 = [sub_10088b0ac() retain];
            [r23 release];
            r0 = [GADWebViewControllerMap sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 webViewConfigurationForMainDocumentURL:r21 context:0x0];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (r23 != 0x0) {
                    r24 = sub_10088b1f8();
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if ([r0 boolForKey:r2] != 0x0) {
                            r0 = [GADSettings sharedInstance];
                            r0 = [r0 retain];
                            r25 = [r0 boolForKey:r2];
                            [r0 release];
                    }
                    else {
                            r25 = 0x0;
                    }
                    [r26 release];
                    r24 = r24 | r25 | [r23 networkNotificationsEnabled];
            }
            else {
                    r24 = 0x0;
            }
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_interceptedTransaction));
    r20 = *(self + r23);
    r22 = [arg3 retain];
    [r20 didCompleteWithError:r22];
    r0 = *(self + r23);
    *(self + r23) = 0x0;
    [r0 release];
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocol:self didFailWithError:r22];
    [r22 release];
    [r0 release];
    return;
}

-(void)stopLoading {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_connection));
    [*(self + r20) cancel];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    r20 = [NSError alloc];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
    r22 = [r0 retain];
    r20 = [r20 initWithDomain:*0x100e92df8 code:0x8 userInfo:r22];
    [r22 release];
    [self->_interceptedTransaction didCompleteWithError:r20];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)startLoading {
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
    r19 = self;
    r0 = [NSThread currentThread];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_clientThread));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [r19 request];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 mutableCopy];
    [r0 release];
    if (r20 != 0x0) {
            if (r19->_substituteURL != 0x0) {
                    [r20 setURL:r2];
            }
            r21 = [r19 class];
            r22 = [@(YES) retain];
            [r21 setProperty:r22 forKey:@"com.google.admob.gadurlprotocol" inRequest:r20];
            [r22 release];
            [r19->_interceptedTransaction willSendRequest];
            r0 = [NSURLConnection alloc];
            r0 = [r0 initWithRequest:r20 delegate:r19 startImmediately:0x0];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_connection));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r21 = *(r19 + r25);
            r23 = [[NSRunLoop currentRunLoop] retain];
            r0 = @class(NSRunLoop);
            r0 = [r0 currentRunLoop];
            r0 = [r0 retain];
            r24 = [[r0 currentMode] retain];
            [r21 scheduleInRunLoop:r23 forMode:r24];
            [r24 release];
            [r0 release];
            [r23 release];
            [*(r19 + r25) start];
    }
    else {
            sub_1007ce06c(0x0, @"Unable to create modified request.");
            r21 = [[NSError errorWithDomain:**_NSCocoaErrorDomain code:0xfffffffffffffc18 userInfo:0x0] retain];
            r0 = [r19 client];
            r0 = [r0 retain];
            [r0 URLProtocol:r19 didFailWithError:r21];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void *)initWithRequest:(void *)arg2 cachedResponse:(void *)arg3 client:(void *)arg4 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [[&var_50 super] initWithRequest:r19 cachedResponse:r21 client:arg4];
    r20 = r0;
    [r21 release];
    if (r20 != 0x0) {
            r21 = [[GADWebViewControllerMap sharedInstance] retain];
            r24 = [[r19 mainDocumentURL] retain];
            var_58 = 0x0;
            r22 = [[r21 webViewConfigurationForMainDocumentURL:r24 context:&var_58] retain];
            r23 = [var_58 retain];
            [r24 release];
            r24 = [GADURLSessionTransaction alloc];
            r25 = [[r20 request] retain];
            r0 = [r24 initWithURLRequest:r25 parentContext:r23 notificationPolicy:0x3 completionHandler:0x0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interceptedTransaction));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r25 release];
            r0 = [r19 URL];
            r29 = r29;
            r24 = [r0 retain];
            r26 = sub_10088b1f8();
            [r24 release];
            if (r26 != 0x0) {
                    r0 = [r22 MRAIDURLString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 length] != 0x0) {
                            r0 = [NSURL URLWithString:r24];
                            r0 = [r0 retain];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_substituteURL));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            r0 = r8;
                    }
                    else {
                            [[r19 URL] retain];
                            sub_1007ce06c(0x0, @"No referer set for URL %@ (unable to determine MRAID implementation to load).");
                            r0 = r25;
                    }
                    [r0 release];
                    [r24 release];
            }
            [r22 release];
            [r23 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    r20 = self->_interceptedTransaction;
    r22 = [arg3 retain];
    [r20 didReceiveData:r22];
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocol:self didLoadData:r22];
    [r22 release];
    [r0 release];
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_interceptedTransaction));
    [*(self + r20) didCompleteWithError:0x0];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocolDidFinishLoading:self];
    [r0 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    [r20->_interceptedTransaction didReceiveResponse:r19];
    if (r20->_substituteURL != 0x0) {
            [NSHTTPURLResponse class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    [r19 retain];
                    r0 = [r19 allHeaderFields];
                    r0 = [r0 retain];
                    r21 = [r0 mutableCopy];
                    [r0 release];
                    sub_100822058(r21, @"Cache-Control", @"no-store, no-cache, private, max-age=0");
                    r23 = [NSHTTPURLResponse alloc];
                    r0 = [r19 URL];
                    r29 = r29;
                    r24 = [r0 retain];
                    r25 = [r19 statusCode];
                    [r22 release];
                    r22 = [r23 initWithURL:r24 statusCode:r25 HTTPVersion:@"HTTP/1.1" headerFields:r21];
                    [r24 release];
                    [r21 release];
                    [r19 release];
                    r19 = r22;
            }
    }
    r0 = [r20 client];
    r0 = [r0 retain];
    [r0 URLProtocol:r20 didReceiveResponse:r19 cacheStoragePolicy:0x0];
    [r0 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_clientThread, 0x0);
    objc_storeStrong((int64_t *)&self->_interceptedTransaction, 0x0);
    objc_storeStrong((int64_t *)&self->_connection, 0x0);
    objc_storeStrong((int64_t *)&self->_substituteURL, 0x0);
    return;
}

-(void *)connection:(void *)arg2 willSendRequest:(void *)arg3 redirectResponse:(void *)arg4 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if (r20 != 0x0) {
            r22 = [r19 mutableCopy];
            [[r21 class] removePropertyForKey:@"com.google.admob.gadurlprotocol" inRequest:r22];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_interceptedTransaction));
            [*(r21 + r23) didReceiveResponse:r20];
            [*(r21 + r23) didCompleteWithError:0x0];
            r0 = [r21 client];
            r0 = [r0 retain];
            [r0 URLProtocol:r21 wasRedirectedToRequest:r22 redirectResponse:r20];
            [r0 release];
            [r22 release];
            r21 = 0x0;
    }
    else {
            r21 = [r19 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end