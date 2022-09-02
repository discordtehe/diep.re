@implementation FBAdProvider

-(void *)init {
    r0 = [[&var_20 super] init];
    [r0 destroy];
    r0 = r19;
    return r0;
}

-(void)dispatchError:(void *)arg2 {
    r20 = [arg2 retain];
    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdProvider.m" lineNumber:0x89 format:@"Ad request error: %@"];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r20 release];
    [r19 release];
    return;
}

-(void)destroy {
    [self setActive:0x0];
    [self setParsingQueue:0x0];
    [self setRequests:0x0];
    [self setAdParser:0x0];
    [self setAdResponse:0x0];
    [self setEnvironmentData:0x0];
    return;
}

-(void)loadAdWithEnvironmentData:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100a75e5c;

loc_100a75be8:
    if ([FBAdConnectionUtility shouldThrottleFrequentLoadForEnvironmentData:r19] == 0x0) goto loc_100a75c78;

loc_100a75c04:
    [[[FBAdConnectionUtility cachedResponseForEnvironmentData:r19] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [r0 release];
    r0 = r20;
    goto loc_100a75e58;

loc_100a75e58:
    [r0 release];
    goto loc_100a75e5c;

loc_100a75e5c:
    [r19 release];
    return;

loc_100a75c78:
    if ([FBAdConnectionInfo currentReachabilityStatus] == 0x0) goto loc_100a75df4;

loc_100a75c90:
    r22 = [NSOperationQueue new];
    [r20 setParsingQueue:r22];
    [r22 release];
    r22 = [[NSMutableArray array] retain];
    [r20 setRequests:r22];
    [r22 release];
    r21 = [FBAdProviderResponseParser new];
    [r20 setAdParser:r21];
    [r21 release];
    [r20 setActive:0x1];
    [r20 setEnvironmentData:r19];
    r0 = [r19 bidPayload];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [r20 maybeHandleBidPayload:r21];
    [r21 release];
    if ((r22 & 0x1) != 0x0) goto loc_100a75e5c;

loc_100a75d9c:
    r0 = [r20 environmentData];
    r0 = [r0 retain];
    r22 = [[r0 adRequestParameters] retain];
    [r0 release];
    [r20 makeAdRequestWithParameters:r22];
    r0 = r22;
    goto loc_100a75e58;

loc_100a75df4:
    [FBAdDebugLogging logDebugEventWithType:@"network" code:0x0 description:@"Network is not available"];
    r21 = [[FBAdError getNSError:0x3eb] retain];
    [r20 dispatchError:r21];
    r0 = r21;
    goto loc_100a75e58;
}

-(void)cancel {
    r31 = r31 - 0x140;
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
    r19 = self;
    r0 = [self parsingQueue];
    r0 = [r0 retain];
    [r0 cancelAllOperations];
    [r0 release];
    r0 = [r19 requests];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            var_110 = q0;
            r0 = [r19 requests];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    var_128 = r19;
                    r26 = 0x0;
                    r27 = *var_110;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_110 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r25 = *(var_118 + r28 * 0x8);
                                    if ([r25 state] == 0x0) {
                                            [r25 cancel];
                                            r26 = r26 + 0x1;
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
                    [r20 release];
                    r19 = var_128;
                    if (r26 != 0x0) {
                            [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdProvider.m" lineNumber:0x72 format:@"Cancelled %lu active network requests"];
                    }
            }
            else {
                    [r20 release];
            }
    }
    var_60 = **___stack_chk_guard;
    [r19 destroy];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)makeAdRequestWithParameters:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r20 = [[FBAdSettings deliveryEndpointURL] retain];
    r0 = [NSDate date];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r21 setRequestTime:r2];
    [r0 release];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdProvider.m" lineNumber:0x94 format:@"Making first request to %@"];
    if ([FBAdSettings getLogLevel] >= 0x1) {
            [FBAdLogger logAtLevel:0x4 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdProvider.m" lineNumber:0x96 format:@"Ad request parameters:"];
            r0 = [r19 allKeys];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 sortedArrayUsingComparator:0x100eaa9c0];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            var_48 = [r19 retain];
            [r23 enumerateObjectsUsingBlock:&var_68];
            [var_48 release];
            [r23 release];
    }
    objc_initWeak(&stack[-128], r21);
    [[r21 requests] retain];
    [[FBAdURLSession sharedSession] retain];
    objc_copyWeak(&var_A0 + 0x28, &stack[-128]);
    r0 = [r20 retain];
    var_80 = r0;
    r0 = [r23 requestWithURL:r0 HTTPMethod:@"POST" queryParameters:r19 responseHandler:&var_A0];
    [r0 retain];
    [r21 addObject:r2];
    [r24 release];
    [r23 release];
    [r21 release];
    [var_80 release];
    objc_destroyWeak(&var_A0 + 0x28);
    objc_destroyWeak(&stack[-128]);
    [r20 release];
    [r19 release];
    return;
}

-(bool)maybeHandleBidPayload:(void *)arg2 {
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
    if (r0 != 0x0 && [r19 hasServerResponse] != 0x0) {
            r22 = [[r19 serverResponse] retain];
            r21 = 0x1;
            [r20 parseResponseFromData:r22 canReturnSources:0x1];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requests, 0x0);
    objc_storeStrong((int64_t *)&self->_parsingQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_environmentData, 0x0);
    objc_storeStrong((int64_t *)&self->_adResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_adParser, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)handleAdResponse:(void *)arg2 data:(void *)arg3 error:(void *)arg4 canReturnSources:(bool)arg5 deliveryUrl:(void *)arg6 {
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
    r24 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg6 retain];
    r26 = [[NSDate date] retain];
    r0 = [r23 environmentData];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [FBAdConnectionUtility setLastLoadTime:r26 forEnvironmentData:r27];
    [r27 release];
    [r26 release];
    if (r21 == 0x0 && [r19 statusCode] == 0xc8) {
            [r23 parseResponseFromData:r20 canReturnSources:r24];
    }
    else {
            r0 = [r23 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r29 = r29;
                    r24 = [r0 retain];
                    if ([r21 code] == -0x3e9) {
                            r0 = [FBAdError getErrorFromJSON:r2 withCode:r3 description:r4 detail:r5];
                    }
                    else {
                            r0 = [FBAdError getErrorFromJSON:r2 withCode:r3 description:r4 detail:r5];
                    }
                    r25 = [r0 retain];
                    [r23 destroy];
                    [r25 retain];
                    dispatch_async(*__dispatch_main_q, &var_98);
                    [r25 release];
                    [r23 release];
                    [r24 release];
            }
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)funnelLogAdResponse:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = self;
    var_110 = q0;
    r0 = [arg2 adPlacement];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 adCandidates];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r20;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r28 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(var_128);
                            }
                            r0 = [FBAdFunnelLogging sharedFunnelLogger];
                            r29 = r29;
                            [r0 retain];
                            [r19 requestTime];
                            objc_msgSend(r27, r25);
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r0 = objc_msgSend(var_128, var_130);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)parseResponseFromData:(void *)arg2 canReturnSources:(bool)arg3 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x70, [NSBlockOperation new]);
    objc_initWeak(&saved_fp - 0x78, self);
    objc_copyWeak(&var_B0 + 0x28, &saved_fp - 0x70);
    objc_copyWeak(&var_B0 + 0x30, &saved_fp - 0x78);
    r0 = [r20 retain];
    var_90 = r0;
    r0 = objc_retainBlock(&var_B0);
    objc_copyWeak(&var_E8 + 0x28, &saved_fp - 0x70);
    objc_copyWeak(&var_E8 + 0x30, &saved_fp - 0x78);
    r0 = [r20 retain];
    var_C8 = r0;
    r0 = objc_retainBlock(&var_E8);
    objc_copyWeak(&var_130 + 0x38, &saved_fp - 0x70);
    objc_copyWeak(&var_130 + 0x40, &saved_fp - 0x78);
    r0 = [r20 retain];
    var_110 = r0;
    r0 = [r28 retain];
    var_108 = r0;
    r0 = [r21 retain];
    var_100 = r0;
    [r19 addExecutionBlock:&var_130];
    r0 = [self parsingQueue];
    r0 = [r0 retain];
    [r0 addOperation:r19];
    [r0 release];
    [var_100 release];
    [var_108 release];
    [var_110 release];
    objc_destroyWeak(&var_130 + 0x40);
    objc_destroyWeak(&var_130 + 0x38);
    [r20 release];
    [var_C8 release];
    objc_destroyWeak(&var_E8 + 0x30);
    objc_destroyWeak(&var_E8 + 0x28);
    [r28 release];
    [var_90 release];
    objc_destroyWeak(&var_B0 + 0x30);
    objc_destroyWeak(&var_B0 + 0x28);
    objc_destroyWeak(&saved_fp - 0x78);
    objc_destroyWeak(&saved_fp - 0x70);
    [r19 release];
    [r25 release];
    return;
}

-(bool)active {
    r0 = *(int8_t *)(int64_t *)&self->_active;
    return r0;
}

-(void)setActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_active = arg2;
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adParser {
    r0 = self->_adParser;
    return r0;
}

-(void)setAdParser:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adParser, arg2);
    return;
}

-(void)setAdResponse:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adResponse, arg2);
    return;
}

-(void *)adResponse {
    r0 = self->_adResponse;
    return r0;
}

-(void *)environmentData {
    r0 = self->_environmentData;
    return r0;
}

-(void *)parsingQueue {
    r0 = self->_parsingQueue;
    return r0;
}

-(void)setEnvironmentData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_environmentData, arg2);
    return;
}

-(void)setParsingQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parsingQueue, arg2);
    return;
}

-(void *)requests {
    r0 = self->_requests;
    return r0;
}

-(double)requestTime {
    r0 = self;
    return r0;
}

-(void)setRequests:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requests, arg2);
    return;
}

-(void)setRequestTime:(double)arg2 {
    self->_requestTime = d0;
    return;
}

@end