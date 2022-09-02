@implementation GULNetwork

-(void *)init {
    r0 = [self initWithReachabilityHost:*0x100e68f78];
    return r0;
}

-(void *)initWithReachabilityHost:(void *)arg2 {
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
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_1000ace88;

loc_1000acde8:
    r0 = [GULReachabilityChecker alloc];
    r0 = [r0 initWithReachabilityDelegate:r20 withHost:r19];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_reachability));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    if ([*(r20 + r23) start] == 0x0) goto loc_1000ace98;

loc_1000ace40:
    r21 = @selector(init);
    r0 = [GULMutableDictionary alloc];
    r0 = objc_msgSend(r0, r21);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_requests));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r20->_timeoutInterval = *0x100ba1e28;
    goto loc_1000ace88;

loc_1000ace88:
    r21 = [r20 retain];
    goto loc_1000ace9c;

loc_1000ace9c:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1000ace98:
    r21 = 0x0;
    goto loc_1000ace9c;
}

+(void)handleEventsForBackgroundURLSessionID:(void *)arg2 completionHandler:(void *)arg3 {
    r20 = [arg2 retain];
    [GULNetworkURLSession handleEventsForBackgroundURLSessionID:r20 completionHandler:arg3];
    [r20 release];
    return;
}

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_reachability));
    [*(self + r20) setReachabilityDelegate:0x0];
    [*(self + r20) stop];
    [[&var_20 super] dealloc];
    return;
}

-(void *)postURL:(void *)arg2 payload:(void *)arg3 queue:(void *)arg4 usingBackgroundSession:(bool)arg5 completionHandler:(void *)arg6 {
    r31 = r31 - 0xe0;
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
    r27 = arg5;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg6 retain];
    r0 = [r19 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 length];
    [r0 release];
    if (r26 == 0x0) goto loc_1000ad2c0;

loc_1000ad020:
    if (r24->_timeoutInterval != 0x0) {
            asm { fcsel      d8, d0, d1, ne };
    }
    r23 = [[NSMutableURLRequest alloc] initWithURL:r19 cachePolicy:0x1 timeoutInterval:r4];
    if (r23 == 0x0) goto loc_1000ad2e4;

loc_1000ad078:
    var_C0 = r27;
    r0 = [NSData gul_dataByGzippingData:r20 error:&var_68];
    r29 = r29;
    r27 = [r0 retain];
    r0 = [var_68 retain];
    var_B8 = r0;
    var_B0 = r27;
    if (r27 == 0x0 || r0 != 0x0) goto loc_1000ad308;

loc_1000ad0bc:
    r0 = [NSNumber numberWithUnsignedInteger:[var_B0 length]];
    r0 = [r0 retain];
    r26 = [[r0 stringValue] retain];
    [r0 release];
    var_C8 = r26;
    [r23 setValue:r26 forHTTPHeaderField:@"Content-Length"];
    [r23 setHTTPBody:var_B0];
    [r23 setHTTPMethod:@"POST"];
    [r23 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [r23 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
    r0 = [GULNetworkURLSession alloc];
    r0 = [r0 initWithNetworkLoggerDelegate:r24];
    r28 = r0;
    [r0 setBackgroundNetworkEnabled:var_C0];
    objc_initWeak(&stack[-128], r24);
    var_C0 = &var_A8 + 0x30;
    objc_copyWeak(&var_A8 + 0x30, &stack[-128]);
    r27 = [r21 retain];
    var_88 = r27;
    r26 = [r22 retain];
    var_80 = r26;
    r0 = [r28 sessionIDFromAsyncPOSTRequest:r23 completionHandler:&var_A8];
    r25 = [r0 retain];
    if (r25 != 0x0) {
            [r24 GULNetwork_logWithLevel:0x7 messageCode:0xdbba0 message:@"Uploading data. Host" context:r19];
            [r24->_requests setObject:r28 forKeyedSubscript:r25];
            r24 = [r25 retain];
    }
    else {
            [r24 handleErrorWithCode:0x4 queue:r27 withHandler:r26];
            r24 = 0x0;
    }
    [r25 release];
    [var_80 release];
    [var_88 release];
    objc_destroyWeak(var_C0);
    objc_destroyWeak(&stack[-128]);
    [r28 release];
    [var_C8 release];
    goto loc_1000ad398;

loc_1000ad398:
    [var_B0 release];
    [var_B8 release];
    goto loc_1000ad3a8;

loc_1000ad3a8:
    [r23 release];
    goto loc_1000ad3b0;

loc_1000ad3b0:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;

loc_1000ad308:
    if (r0 != 0x0 || [r20 length] != 0x0) goto loc_1000ad31c;

loc_1000ad3f8:
    r26 = [[NSData alloc] init];
    [var_B0 release];
    var_B0 = r26;
    goto loc_1000ad0bc;

loc_1000ad31c:
    [r24 handleErrorWithCode:0x3 queue:r21 withHandler:r22];
    r24 = 0x0;
    goto loc_1000ad398;

loc_1000ad2e4:
    [r24 handleErrorWithCode:0x4 queue:r21 withHandler:r22];
    r24 = 0x0;
    goto loc_1000ad3a8;

loc_1000ad2c0:
    [r24 handleErrorWithCode:0x1 queue:r21 withHandler:r22];
    r24 = 0x0;
    goto loc_1000ad3b0;
}

-(void *)getURL:(void *)arg2 headers:(void *)arg3 queue:(void *)arg4 usingBackgroundSession:(bool)arg5 completionHandler:(void *)arg6 {
    r31 = r31 - 0xc0;
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
    r26 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg6 retain];
    r0 = [r19 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 length];
    [r0 release];
    if (r24 != 0x0) {
            if (r23->_timeoutInterval != 0x0) {
                    asm { fcsel      d8, d0, d1, ne };
            }
            r24 = [[NSMutableURLRequest alloc] initWithURL:r19 cachePolicy:0x1 timeoutInterval:r4];
            if (r24 != 0x0) {
                    [r24 setHTTPMethod:@"GET"];
                    var_A8 = r27;
                    [r24 setAllHTTPHeaderFields:r27];
                    r0 = [GULNetworkURLSession alloc];
                    r0 = [r0 initWithNetworkLoggerDelegate:r23];
                    r25 = r0;
                    [r0 setBackgroundNetworkEnabled:r26];
                    objc_initWeak(&stack[-120], r23);
                    r26 = &var_A0 + 0x30;
                    objc_copyWeak(r26, &stack[-120]);
                    r28 = [r21 retain];
                    var_80 = r28;
                    r20 = [r22 retain];
                    var_78 = r20;
                    r0 = [r25 sessionIDFromAsyncGETRequest:r24 completionHandler:&var_A0];
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            [r23 GULNetwork_logWithLevel:0x7 messageCode:0xdbba1 message:@"Downloading data. Host" context:r19];
                            [r23->_requests setObject:r25 forKeyedSubscript:r27];
                            r23 = [r27 retain];
                    }
                    else {
                            [r23 handleErrorWithCode:0x4 queue:r28 withHandler:r20];
                            r23 = 0x0;
                    }
                    [r27 release];
                    [var_78 release];
                    [var_80 release];
                    objc_destroyWeak(r26);
                    objc_destroyWeak(&stack[-120]);
                    [r25 release];
                    r27 = var_A8;
            }
            else {
                    [r23 handleErrorWithCode:0x4 queue:r21 withHandler:r22];
                    r23 = 0x0;
            }
            [r24 release];
    }
    else {
            [r23 handleErrorWithCode:0x1 queue:r21 withHandler:r22];
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r27 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(bool)hasUploadInProgress {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_requests;
    r0 = [r0 count];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)reachability:(void *)arg2 statusChanged:(int)arg3 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = arg3 | 0x1;
    if (r8 == 0x3) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r0->_networkConnected = r8;
    r0 = objc_loadWeakRetained((int64_t *)&r0->_reachabilityDelegate);
    [r0 reachabilityDidChange];
    [r0 release];
    return;
}

-(void)setLoggerDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r19 respondsToSelector:@selector(GULNetwork_logWithLevel:messageCode:message:context:), r3, r4, r5] != 0x0 && r19 != 0x0 && [r19 respondsToSelector:@selector(GULNetwork_logWithLevel:messageCode:message:contexts:), r3, r4, r5] != 0x0) {
            if (([r19 respondsToSelector:@selector(GULNetwork_logWithLevel:messageCode:message:), r3, r4] & 0x1) != 0x0) {
                    objc_storeWeak((int64_t *)&r20->_loggerDelegate, r19);
            }
            else {
                    sub_1000abe24(*0x100e68f90, 0x0, [[NSString stringWithFormat:@"I-NET%06ld"] retain], @"Cannot set the network logger delegate: delegate does not conform to the network logger protocol.");
                    [r21 release];
            }
    }
    else {
            sub_1000abe24(*0x100e68f90, 0x0, [[NSString stringWithFormat:@"I-NET%06ld"] retain], @"Cannot set the network logger delegate: delegate does not conform to the network logger protocol.");
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)handleErrorWithCode:(long long)arg2 queue:(void *)arg3 withHandler:(void *)arg4 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r22 = [[NSError alloc] initWithDomain:*0x100e68f88 code:arg2 userInfo:r21];
    r24 = [[NSNumber numberWithInteger:arg2] retain];
    r0 = [NSArray arrayWithObjects:&var_68 count:0x2];
    r25 = [r0 retain];
    [self GULNetwork_logWithLevel:0x4 messageCode:0xdbba2 message:@"Failed to create network request. Code, error" contexts:r25];
    [r25 release];
    [r24 release];
    if (r20 != 0x0) {
            if (r19 != 0x0) {
                    r23 = [r19 retain];
            }
            else {
                    r23 = *__dispatch_main_q;
                    [r23 retain];
            }
            var_78 = [r20 retain];
            var_70 = [r22 retain];
            dispatch_async(r23, &var_98);
            [var_70 release];
            [var_78 release];
            [r23 release];
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

-(bool)isNetworkConnected {
    r0 = *(int8_t *)(int64_t *)&self->_networkConnected;
    return r0;
}

-(void)GULNetwork_logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 context:(void *)arg5 {
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
    r20 = arg3;
    r21 = arg2;
    r23 = self;
    r19 = [arg4 retain];
    r24 = (int64_t *)&r23->_loggerDelegate;
    r22 = [arg5 retain];
    r0 = objc_loadWeakRetained(r24);
    [r0 release];
    if (r0 != 0x0) {
            var_48 = **___stack_chk_guard;
            r0 = objc_loadWeakRetained(r24);
            r23 = r0;
            [r0 GULNetwork_logWithLevel:r21 messageCode:r20 message:r19 context:r22];
            [r22 release];
            [r19 release];
            if (**___stack_chk_guard == var_48) {
                    [r23 release];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            if (r22 != 0x0) {
                    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
            }
            else {
                    r0 = [NSArray arrayWithObjects:&stack[-104] count:0x0];
            }
            var_48 = **___stack_chk_guard;
            r24 = [r0 retain];
            [r23 GULNetwork_logWithLevel:r21 messageCode:r20 message:r19 contexts:r24];
            [r22 release];
            [r19 release];
            [r24 release];
            if (**___stack_chk_guard != var_48) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)GULNetwork_logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 {
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
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    r23 = (int64_t *)&r22->_loggerDelegate;
    r19 = [arg4 retain];
    r0 = objc_loadWeakRetained(r23);
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_loadWeakRetained(r23);
            [r0 GULNetwork_logWithLevel:r21 messageCode:r20 message:r19];
            [r19 release];
            [r0 release];
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-72] count:0x0];
            r23 = [r0 retain];
            [r22 GULNetwork_logWithLevel:r21 messageCode:r20 message:r19 contexts:r23];
            [r19 release];
            [r23 release];
    }
    return;
}

-(void *)reachabilityDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_reachabilityDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)GULNetwork_logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 contexts:(void *)arg5 {
    r31 = r31 - 0x190;
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
    r28 = arg3;
    r27 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    r23 = (int64_t *)&r22->_loggerDelegate;
    r0 = objc_loadWeakRetained(r23);
    [r0 release];
    if (r0 == 0x0) goto loc_1000ae290;

loc_1000ae260:
    r0 = objc_loadWeakRetained(r23);
    [r0 GULNetwork_logWithLevel:r27 messageCode:r28 message:r19 contexts:r20];
    r0 = r0;
    goto loc_1000ae5f8;

loc_1000ae5f8:
    [r0 release];
    goto loc_1000ae5fc;

loc_1000ae5fc:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1000ae290:
    if (*(int8_t *)(int64_t *)&r22->_isDebugModeEnabled != 0x0 || r27 <= 0x6 && (0x1 << r27 & 0x58) != 0x0) goto loc_1000ae2bc;
    goto loc_1000ae5fc;

loc_1000ae2bc:
    r21 = [r19 retain];
    r23 = [r20 retain];
    if (r21 == 0x0) goto loc_1000ae2f8;

loc_1000ae2d8:
    if ([r21 length] != 0x0) goto loc_1000ae314;

loc_1000ae2ec:
    r22 = @"(Message was empty)";
    goto loc_1000ae300;

loc_1000ae300:
    [r22 retain];
    [r21 release];
    r21 = r22;
    goto loc_1000ae314;

loc_1000ae314:
    r24 = [NSMutableString alloc];
    if (*qword_1011d19c8 != -0x1) {
            dispatch_once(0x1011d19c8, 0x100e68f40);
    }
    r22 = *0x1011d19c0;
    r25 = [[NSNumber numberWithInteger:r27] retain];
    r0 = [r22 objectForKeyedSubscript:r25];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    r24 = [r24 initWithFormat:@"<%@/%@> %@"];
    [r22 release];
    r1 = @selector(count);
    if (objc_msgSend(r23, r1) != 0x0) {
            var_160 = r24;
            var_150 = r21;
            var_148 = r28;
            var_140 = r27;
            var_138 = r20;
            var_130 = r19;
            r26 = [[NSMutableArray alloc] init];
            var_158 = r23;
            r0 = [r23 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            var_120 = r0;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    do {
                            r28 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_120);
                                    }
                                    r27 = *(0x0 + r28 * 0x8);
                                    r0 = [NSNull null];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [r26 addObject:r2];
                                    [r21 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r24 = objc_msgSend(var_120, var_128);
                    } while (r24 != 0x0);
            }
            [var_120 release];
            r24 = var_160;
            [r24 appendString:@": "];
            r0 = [r26 componentsJoinedByString:r2];
            r29 = r29;
            [r0 retain];
            r1 = @selector(appendString:);
            objc_msgSend(r24, r1);
            [r22 release];
            [r26 release];
            r20 = var_138;
            r19 = var_130;
            r28 = var_148;
            r27 = var_140;
            r23 = var_158;
            r21 = var_150;
    }
    [r23 release];
    [r21 release];
    [[r24 autorelease] retain];
    NSLog(@"%@", r1);
    sub_1000abf34(r27, *0x100e68f90, 0x0, [[NSString stringWithFormat:r2] retain], r21, 0x0);
    [r21 release];
    r0 = r23;
    goto loc_1000ae5f8;

loc_1000ae2f8:
    r22 = @"(Message was nil)";
    goto loc_1000ae300;
}

-(void)setReachabilityDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_reachabilityDelegate, arg2);
    return;
}

-(void *)loggerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_loggerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isDebugModeEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isDebugModeEnabled;
    return r0;
}

-(void)setIsDebugModeEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isDebugModeEnabled = arg2;
    return;
}

-(double)timeoutInterval {
    r0 = self;
    return r0;
}

-(void)setTimeoutInterval:(double)arg2 {
    self->_timeoutInterval = d0;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_loggerDelegate);
    objc_destroyWeak((int64_t *)&self->_reachabilityDelegate);
    objc_storeStrong((int64_t *)&self->_requests, 0x0);
    objc_storeStrong((int64_t *)&self->_reachability, 0x0);
    return;
}

@end