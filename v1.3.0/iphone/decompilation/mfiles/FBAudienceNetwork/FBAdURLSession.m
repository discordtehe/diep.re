@implementation FBAdURLSession

-(void)clearCustomRequestTimeout {
    [self setCustomRequestTimeout:0x0];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdConcurrentQueue new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 setupNetworkQualityMeasurementIfNeeded];
    }
    r0 = r19;
    return r0;
}

-(void)setCustomRequestTimeout:(long long)arg2 {
    self->_customRequestTimeout = arg2;
    [self updateSession];
    return;
}

-(void)updateSession {
    [FBAdUtility currentUserAgentWithBlock:&var_28];
    return;
}

-(bool)valid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self session];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)defaultConfiguration {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [self customRequestTimeout];
    asm { scvtf      d0, x0 };
    if (r0 == 0x0) {
            asm { fcsel      d0, d1, d0, eq };
    }
    [r19 setTimeoutIntervalForRequest:r2];
    [r19 setRequestCachePolicy:0x1];
    r0 = [r19 HTTPAdditionalHeaders];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [NSMutableDictionary alloc];
    if (r21 != 0x0) {
            r0 = [r19 HTTPAdditionalHeaders];
            r29 = r29;
            r23 = [r0 retain];
            r20 = [r22 initWithDictionary:r23];
            [r23 release];
    }
    else {
            r20 = [r22 init];
    }
    [r21 release];
    if ([FBAdUtility isAdvertisingTrackingEnabled] != 0x0) {
            r21 = [[FBAdSettings routingToken] retain];
            [r20 setObject:r21 forKeyedSubscript:@"X-FB-Pool-Routing-Token"];
            [r21 release];
    }
    [r19 setHTTPAdditionalHeaders:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setupSessionWithUserAgent:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r21 defaultConfiguration];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 HTTPAdditionalHeaders];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [NSMutableDictionary alloc];
    if (r23 != 0x0) {
            r0 = [r20 HTTPAdditionalHeaders];
            r29 = r29;
            r25 = [r0 retain];
            r22 = [r24 initWithDictionary:r25];
            [r25 release];
    }
    else {
            r22 = [r24 init];
    }
    [r23 release];
    if ([FBAdUtility isAdvertisingTrackingEnabled] != 0x0) {
            r0 = [FBAdSettings routingToken];
            r29 = r29;
            r23 = [r0 retain];
            [r22 setObject:r23 forKeyedSubscript:@"X-FB-Pool-Routing-Token"];
            [r23 release];
    }
    if (r19 != 0x0 && [r19 length] != 0x0) {
            [r22 setObject:r19 forKeyedSubscript:@"User-Agent"];
            [r20 setHTTPAdditionalHeaders:r22];
            r23 = [[NSURLSession sessionWithConfiguration:r20 delegate:r21 delegateQueue:0x0] retain];
            [r21 setSession:r23];
            [r23 release];
            [r21 emptyQueue];
    }
    else {
            [r20 setHTTPAdditionalHeaders:r22];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)enqueueOrExecuteRequest:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if ([r20 valid] != 0x0) {
                    [r20 emptyQueue];
                    (*(r19 + 0x10))(r19);
            }
            else {
                    [r20 updateSession];
                    r20 = [[r20 queue] retain];
                    r21 = objc_retainBlock(r19);
                    [r20 pushObject:r21];
                    [r21 release];
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void)emptyQueue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self valid] != 0x0) {
            r0 = [r19 queue];
            r0 = [r0 retain];
            [r0 popAll:0x100eab8d0];
            [r0 release];
    }
    else {
            [r19 updateSession];
    }
    return;
}

-(void *)requestWithURLRequest:(void *)arg2 responseHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [FBAdURLSessionTaskContainer new];
    var_48 = r21;
    r21 = [r21 retain];
    r0 = [r22 retain];
    var_38 = r19;
    r19 = [r19 retain];
    [self enqueueOrExecuteRequest:&var_70];
    r22 = objc_retainAutoreleaseReturnValue(r0);
    [var_38 release];
    [r0 release];
    [var_48 release];
    [r22 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void *)requestWithURL:(void *)arg2 HTTPMethod:(void *)arg3 queryParameters:(void *)arg4 responseHandler:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r24 = [[self urlRequestWithURL:r23 HTTPMethod:r21 queryParameters:r20] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    r20 = [[self requestWithURLRequest:r24 responseHandler:r19] retain];
    [r19 release];
    [r24 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isSandboxHost:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            if (([r19 hasSuffix:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    if ([r19 rangeOfString:@"prn"] == 0x7fffffffffffffff) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = @selector(hasSuffix:);
                            r20 = objc_msgSend(r19, r20);
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEmptyURL:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r0 = [r2 absoluteString];
            r0 = [r0 retain];
            r19 = r0;
            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = @selector(isEqualToString:);
                    r20 = objc_msgSend(r19, r20);
            }
            [r19 release];
    }
    else {
            r20 = 0x1;
    }
    r0 = r20;
    return r0;
}

-(void *)urlRequestWithURL:(void *)arg2 HTTPMethod:(void *)arg3 queryParameters:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    r21 = [NSMutableURLRequest new];
    r23 = [r24 copy];
    [r24 release];
    r0 = [FBAdUtility createQueryStringFromParameters:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r20 == 0x0) {
            [@"GET" retain];
            [r20 release];
            r20 = @"GET";
    }
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100a9feb8;

loc_100a9fe58:
    [r21 setURL:r19];
    [r21 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    r23 = [[r22 dataUsingEncoding:0x4] retain];
    r1 = @selector(setHTTPBody:);
    goto loc_100aa0014;

loc_100aa0014:
    objc_msgSend(r21, r1);
    [r23 release];
    goto loc_100aa0028;

loc_100aa0028:
    [r21 setHTTPMethod:r20];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100a9feb8:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100aa0028;

loc_100a9fed0:
    r23 = [r19 retain];
    if ([r22 length] != 0x0) {
            r2 = @"GET";
            r24 = [[NSMutableString alloc] initWithString:@""];
            r0 = [r23 absoluteString];
            r29 = r29;
            r25 = [r0 retain];
            [r24 appendString:r25];
            [r25 release];
            if ([r24 rangeOfString:@"?"] == 0x7fffffffffffffff) {
                    if (!CPU_FLAGS & E) {
                            r2 = @"&";
                    }
                    else {
                            r2 = @"?";
                    }
            }
            [r24 appendString:r2];
            [r24 appendString:r22];
            r26 = [[NSString stringWithString:r24] retain];
            r25 = [[NSURL URLWithString:r2] retain];
            [r23 release];
            [r26 release];
            [r24 release];
            r23 = r25;
    }
    r1 = @selector(setURL:);
    goto loc_100aa0014;
}

-(void)setupNetworkQualityMeasurementIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 isNetworkQualityMeasurementEnabled];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [FBAdNetworkQuality alloc];
            r0 = [r0 initWithFactory:0x100eab830];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_networkQuality));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didFinishCollectingMetrics:(void *)arg4 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r23 = [r0 isNetworkQualityMeasurementEnabled];
    [r0 release];
    if (r23 != 0x0 && sub_1009f77b0(0xa, 0x0, 0x0) != 0x0) {
            [r21->_networkQuality updateUsingTask:r19 metrics:r20];
    }
    [r20 release];
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if ([r21 isSSLValidationDisabled] != 0x0) {
            r0 = [r19 protectionSpace];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 host];
            r29 = r29;
            r24 = [r0 retain];
            r21 = [r21 isSandboxHost:r24];
            [r24 release];
            [r23 release];
            if (r21 != 0x0) {
                    r0 = [r19 protectionSpace];
                    r0 = [r0 retain];
                    r22 = [r0 serverTrust];
                    [r0 release];
                    (*(r20 + 0x10))(r20, 0x0, [[NSURLCredential credentialForTrust:r22] retain]);
                    [r21 release];
            }
            else {
                    (*(r20 + 0x10))(r20, 0x1, 0x0);
            }
    }
    else {
            (*(r20 + 0x10))(r20, 0x1, 0x0);
    }
    [r20 release];
    [r19 release];
    return;
}

-(bool)isSSLValidationDisabled {
    r0 = *(int8_t *)(int64_t *)&self->_SSLValidationDisabled;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    objc_storeStrong((int64_t *)&self->_networkQuality, 0x0);
    return;
}

-(void)setSSLValidationDisabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_SSLValidationDisabled = arg2;
    return;
}

-(long long)customRequestTimeout {
    r0 = self->_customRequestTimeout;
    return r0;
}

-(void *)session {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_session)), 0x1);
    return r0;
}

-(void *)networkQuality {
    r0 = self->_networkQuality;
    return r0;
}

-(void)setSession:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)queue {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_queue)), 0x1);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

+(void *)sharedSession {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011ddbb0 != -0x1) {
            dispatch_once(0x1011ddbb0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddbb8);
    [r19 release];
    r0 = r20;
    return r0;
}

@end