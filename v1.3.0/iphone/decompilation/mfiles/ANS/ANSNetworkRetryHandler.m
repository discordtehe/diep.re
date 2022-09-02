@implementation ANSNetworkRetryHandler

-(void *)sharedFabricSDK {
    r0 = [Fabric sharedSDK];
    return r0;
}

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r22 = [FABCertificatePinner alloc];
            r23 = [sub_10009e128() retain];
            r0 = [r22 initWithCertificates:r23];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_certPinner));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_retryTimerMap));
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

-(double)retryValueForResponse:(void *)arg2 {
    r0 = [FABNetworkResponseHandler retryValueForResponse:arg2];
    return r0;
}

-(void)handleChallenge:(void *)arg2 fromURLSession:(void *)arg3 completionHandler:(void *)arg4 {
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
    r0 = [r22 sharedFabricSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 debug] != 0x0) {
            [r23 release];
            (*(r21 + 0x10))(r21, 0x1, 0x0);
    }
    else {
            r0 = [r22 certPinner];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r0 = [r22 certPinner];
                    r0 = [r0 retain];
                    [r0 handleChallenge:r19 fromURLSession:r20 completionHandler:r21];
                    [r0 release];
            }
            else {
                    (*(r21 + 0x10))(r21, 0x1, 0x0);
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleCompletedRequest:(void *)arg2 withResponse:(void *)arg3 forIdentifier:(void *)arg4 error:(void *)arg5 completionHandler:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    [self handleCompletedRequest:r24 withResponse:r22 forIdentifier:r21 maxRetries:0xa error:r20 completionHandler:arg6];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    return;
}

-(void *)errorWithCode:(long long)arg2 forIdentifier:(void *)arg3 request:(void *)arg4 handlerError:(void *)arg5 {
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
    r22 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if (r21 != 0x0) {
            r22 = [r21 retain];
    }
    else {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r23 = r0;
            if (r19 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r19;
                    }
                    else {
                            r2 = @"(null)";
                    }
            }
            [r0 setObject:r2 forKey:@"ANSNetworkRetryHandlerIdentifier"];
            r0 = [r20 URL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 URL];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r23 setObject:r25 forKey:**_NSURLErrorFailingURLErrorKey];
                    [r25 release];
            }
            r22 = [[NSError errorWithDomain:*0x100e67f20 code:r22 userInfo:r23] retain];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)handleCompletedRequest:(void *)arg2 withResponse:(void *)arg3 forIdentifier:(void *)arg4 maxRetries:(unsigned long long)arg5 error:(void *)arg6 completionHandler:(void *)arg7 {
    r25 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r20 = [arg6 retain];
    r0 = [arg7 retain];
    r19 = [r0 retain];
    var_60 = r23;
    r23 = [r23 retain];
    var_58 = r22;
    r22 = [r22 retain];
    r24 = [r25 retain];
    [FABNetworkResponseHandler handleCompletedResponse:r23 forOriginalRequest:r24 error:r20 block:&var_90];
    [r20 release];
    [r25 release];
    [var_58 release];
    [var_60 release];
    [r0 release];
    [r24 release];
    [r22 release];
    [r23 release];
    [r19 release];
    return;
}

-(void *)certPinner {
    r0 = self->_certPinner;
    return r0;
}

-(void *)retryTimerMap {
    r0 = self->_retryTimerMap;
    return r0;
}

-(void *)timerForIdentifier:(void *)arg2 initialRetryValue:(double)arg3 {
    var_40 = d9;
    stack[-72] = d8;
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
    v8 = v0;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r20 retryTimerMap];
            r0 = [r0 retain];
            r23 = r0;
            r2 = r19;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 == 0x0) {
                    r22 = [[ANSBackoffTimer alloc] initWithInitialValue:r2];
            }
            r0 = [r20 retryTimerMap];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_retryTimerMap, 0x0);
    objc_storeStrong((int64_t *)&self->_certPinner, 0x0);
    return;
}

@end