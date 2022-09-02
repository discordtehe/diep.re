@implementation ADCNetworkAPI

+(void *)sharedAPI {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2278 != -0x1) {
            dispatch_once(0x1011d2278, &var_28);
    }
    r0 = *0x1011d2280;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)startPropogatingCachedNetworkRequests {
    r0 = [NSTimer scheduledTimerWithTimeInterval:self target:@selector(queueCachedNetworkRequest) selector:0x0 userInfo:0x1 repeats:r6];
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_networkRequestQueueTimer));
    r8 = *(self + r21);
    *(self + r21) = r0;
    [r8 release];
    r0 = [NSRunLoop currentRunLoop];
    r0 = [r0 retain];
    [r0 addTimer:*(self + r21) forMode:**_NSDefaultRunLoopMode];
    [r0 release];
    return;
}

-(void)stopPropogatingCachedNetworkRequests {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_networkRequestQueueTimer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ADCDevice sharedDevice];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 mediaPath];
            r0 = [r0 retain];
            r22 = [[r0 stringByAppendingPathComponent:@"network_requests"] retain];
            [r0 release];
            [r20 release];
            r0 = [NSArray arrayWithContentsOfFile:r22];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedNetworkRequests));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentNetworkRequests));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
    }
    r0 = r19;
    return r0;
}

-(bool)addCurrentNetworkRequest:(void *)arg2 {
    r0 = [self addCurrentNetworkRequest:arg2 fromCache:0x0];
    return r0;
}

-(bool)addCurrentNetworkRequest:(void *)arg2 fromCache:(bool)arg3 {
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
    r23 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"type"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isEqualToString:r2];
            [r0 release];
            if ((r24 & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r21 = [r19 mutableCopy];
                    if ((r23 & 0x1) == 0x0) {
                            r25 = [[r19 objectForKeyedSubscript:@"content"] retain];
                            r0 = [ADCUtil JSONObjectFromJSONString:r25];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r21 setObject:r23 forKeyedSubscript:@"content"];
                            [r23 release];
                            [r25 release];
                    }
                    r0 = [r21 objectForKeyedSubscript:@"attempts"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 unsignedIntegerValue];
                    [r0 release];
                    if (r24 != 0x0) {
                            r0 = [r21 objectForKeyedSubscript:@"content"];
                            r0 = [r0 retain];
                            r22 = [[r0 objectForKeyedSubscript:@"guid"] retain];
                            [r20 removeCurrentNetworkRequestWithGUID:r22];
                            [r22 release];
                            [r0 release];
                    }
                    [r20 addPrioritizedNetworkRequest:r21];
                    [r21 release];
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)queueCachedNetworkRequest {
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
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_cachedNetworkRequests));
    if ([*(r19 + r21) count] != 0x0) {
            r0 = *(r19 + r21);
            r0 = [r0 lastObject];
            r29 = r29;
            r20 = [r0 retain];
            [*(r19 + r21) removeLastObject];
            [NSDictionary class];
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r20 mutableCopy];
                    r23 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"url"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 rangeOfString:r2] != 0x7fffffffffffffff) {
                            r0 = [r21 rangeOfString:r2];
                            r22 = r23;
                            if (r0 == 0x7fffffffffffffff) {
                                    r0 = [r23 objectForKeyedSubscript:@"attempts"];
                                    r0 = [r0 retain];
                                    r25 = [r0 integerValue];
                                    [r0 release];
                                    r24 = [[NSNumber numberWithInteger:r25 + 0x1] retain];
                                    [r23 setObject:r24 forKeyedSubscript:@"attempts"];
                                    [r24 release];
                                    r22 = [[r19 sanitizeCachedRequest:r23] retain];
                                    [r23 release];
                                    r0 = [ADCUtil JSONStringFromJSONObject:r22];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    if (r23 != 0x0) {
                                            r25 = [[ADCController sharedController] retain];
                                            r26 = [[NSString stringWithFormat:@"$.network_manager.queue_outbound_request_from_native(%@, true);"] retain];
                                            r24 = [[r25 valueEvaluatingJavascriptString:r26] retain];
                                            [r26 release];
                                            [r25 release];
                                            if (r24 != 0x0 && [r24 toBool] != 0x0) {
                                                    [r19 addCurrentNetworkRequest:r22 fromCache:0x1];
                                            }
                                            [r24 release];
                                            [r23 release];
                                    }
                                    else {
                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCNetworkAPI queueCachedNetworkRequest]" line:0x60 withFormat:@"Detecting invalid network request stored on disk"];
                                    }
                            }
                    }
                    else {
                            r0 = [r23 objectForKeyedSubscript:@"attempts"];
                            r0 = [r0 retain];
                            r25 = [r0 integerValue];
                            [r0 release];
                            r24 = [[NSNumber numberWithInteger:r25 + 0x1] retain];
                            [r23 setObject:r24 forKeyedSubscript:@"attempts"];
                            [r24 release];
                            r22 = [[r19 sanitizeCachedRequest:r23] retain];
                            [r23 release];
                            r0 = [ADCUtil JSONStringFromJSONObject:r22];
                            r29 = r29;
                            r23 = [r0 retain];
                            if (r23 != 0x0) {
                                    r25 = [[ADCController sharedController] retain];
                                    r26 = [[NSString stringWithFormat:@"$.network_manager.queue_outbound_request_from_native(%@, true);"] retain];
                                    r24 = [[r25 valueEvaluatingJavascriptString:r26] retain];
                                    [r26 release];
                                    [r25 release];
                                    if (r24 != 0x0 && [r24 toBool] != 0x0) {
                                            [r19 addCurrentNetworkRequest:r22 fromCache:0x1];
                                    }
                                    [r24 release];
                                    [r23 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCNetworkAPI queueCachedNetworkRequest]" line:0x60 withFormat:@"Detecting invalid network request stored on disk"];
                            }
                    }
                    [r21 release];
                    [r22 release];
            }
            [r20 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCNetworkAPI queueCachedNetworkRequest]" line:0x41 withFormat:@"Finished passing cached network requests to controller"];
            [r19 destroyTimer];
    }
    return;
}

-(void *)sanitizeCachedRequest:(void *)arg2 {
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
    var_70 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] == 0x0) goto loc_1001c9bc4;

loc_1001c99d0:
    r22 = 0x0;
    goto loc_1001c9a30;

loc_1001c9a30:
    r20 = [[r21 objectAtIndexedSubscript:r22] retain];
    r0 = [r19 objectForKeyedSubscript:r20];
    r29 = r29;
    r28 = [r0 retain];
    [r20 release];
    if ([r28 isKindOfClass:[NSDictionary class]] == 0x0) goto loc_1001c9b08;

loc_1001c9a94:
    r20 = [r28 mutableCopy];
    r24 = [[r21 objectAtIndexedSubscript:r22] retain];
    r0 = [var_70 sanitizeCachedRequest:r20];
    r29 = r29;
    r27 = [r0 retain];
    [r19 setObject:r27 forKeyedSubscript:r24];
    [r27 release];
    [r24 release];
    r0 = r20;
    goto loc_1001c9ba0;

loc_1001c9ba0:
    [r0 release];
    goto loc_1001c9ba4;

loc_1001c9ba4:
    var_60 = @selector(count);
    [r28 release];
    r22 = r22 + 0x1;
    if (objc_msgSend(r21, var_60) > r22) goto loc_1001c9a30;

loc_1001c9bc4:
    [r21 release];
    r0 = [r19 autorelease];
    return r0;

loc_1001c9b08:
    if ([r28 isKindOfClass:[NSString class]] == 0x0) goto loc_1001c9ba4;

loc_1001c9b2c:
    r0 = [r28 retain];
    r20 = r0;
    if ([r0 length] < 0x801) {
            if (!CPU_FLAGS & B) {
                    r24 = @"";
            }
            else {
                    r24 = r20;
            }
    }
    [r20 release];
    r20 = [r24 retain];
    r0 = [r21 objectAtIndexedSubscript:r22];
    r29 = r29;
    r27 = [r0 retain];
    [r19 setObject:r24 forKeyedSubscript:r27];
    [r20 release];
    r0 = r27;
    goto loc_1001c9ba0;
}

-(void)addPrioritizedNetworkRequest:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    var_58 = [arg2 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_currentNetworkRequests));
    r8 = [*(r20 + r24) count];
    r0 = *(r20 + r24);
    if (r8 == 0x0) goto loc_1001c9f48;

loc_1001c9e48:
    r0 = [r0 count];
    r22 = 0x0;
    if (r0 == 0x0) goto loc_1001c9f64;

loc_1001c9e58:
    r22 = 0x0;
    var_60 = r24;
    goto loc_1001c9e80;

loc_1001c9e80:
    r0 = *(r20 + r24);
    r0 = [r0 objectAtIndexedSubscript:r22];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == 0x0 || [r28 isKindOfClass:[NSDictionary class]] == 0x0) goto loc_1001c9f24;

loc_1001c9ec0:
    r27 = [[r28 objectForKeyedSubscript:r2] retain];
    r0 = [var_58 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    r24 = var_60;
    if (r0 > r27) goto loc_1001c9f5c;

loc_1001c9f24:
    [r28 release];
    r22 = r22 + 0x1;
    if (r22 < [*(r20 + r24) count]) goto loc_1001c9e80;

loc_1001c9f64:
    [*(r20 + r24) insertObject:var_58 atIndex:r22];
    goto loc_1001c9f7c;

loc_1001c9f7c:
    [r20 saveCurrentNetworkRequests];
    [var_58 release];
    return;

loc_1001c9f5c:
    [r28 release];
    goto loc_1001c9f64;

loc_1001c9f48:
    [r0 addObject:r2];
    goto loc_1001c9f7c;
}

-(void)destroyTimer {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_networkRequestQueueTimer));
    [*(self + r20) invalidate];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    return;
}

-(bool)removeCurrentNetworkRequestWithGUID:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    var_58 = [arg2 retain];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_currentNetworkRequests));
    if ([*(r20 + r19) count] != 0x0) {
            var_5C = 0x0;
            r21 = 0x0;
            do {
                    r0 = *(r20 + r19);
                    r0 = [r0 objectAtIndex:r21];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"content"];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 objectForKeyedSubscript:@"guid"];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r28 release];
                    if ([r26 isEqualToString:var_58] != 0x0) {
                            [*(r20 + r19) removeObjectAtIndex:r2];
                            r28 = 0x0;
                            var_5C = 0x1;
                    }
                    else {
                            r28 = 0x1;
                    }
                    [r26 release];
                    [r25 release];
                    if ((r28 & 0x1) == 0x0) {
                        break;
                    }
                    r21 = r21 + 0x1;
            } while (r21 < [*(r20 + r19) count]);
    }
    else {
            var_5C = 0x0;
    }
    [r20 saveCurrentNetworkRequests];
    [var_58 release];
    r0 = var_5C & 0x1;
    return r0;
}

-(bool)updateAttempts:(long long)arg2 forRequestWithGUID:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    var_58 = [arg3 retain];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_currentNetworkRequests));
    if ([*(r20 + r19) count] == 0x0) goto loc_1001ca240;

loc_1001ca184:
    var_60 = r21;
    r21 = 0x0;
    goto loc_1001ca1a8;

loc_1001ca1a8:
    r27 = @selector(isEqualToString:);
    r0 = *(r20 + r19);
    r0 = [r0 objectAtIndexedSubscript:r21];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"content"];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"guid"];
    r29 = r29;
    r25 = [r0 retain];
    [r22 release];
    if (objc_msgSend(r25, r27) != 0x0) goto loc_1001ca248;

loc_1001ca218:
    r28 = @selector(count);
    [r25 release];
    [r23 release];
    r21 = r21 + 0x1;
    if (r21 < objc_msgSend(*(r20 + r19), r28)) goto loc_1001ca1a8;

loc_1001ca240:
    r20 = 0x0;
    goto loc_1001ca300;

loc_1001ca300:
    [var_58 release];
    r0 = r20;
    return r0;

loc_1001ca248:
    r22 = [[*(r20 + r19) objectAtIndexedSubscript:r21] retain];
    r24 = [[NSNumber numberWithInteger:var_60] retain];
    [r22 setObject:r24 forKeyedSubscript:@"attempts"];
    [r24 release];
    [r22 release];
    [*(r20 + r19) removeObjectAtIndex:r21];
    [r20 addPrioritizedNetworkRequest:r23];
    [r20 saveCurrentNetworkRequests];
    [r25 release];
    [r23 release];
    r20 = 0x1;
    goto loc_1001ca300;
}

-(void)saveCurrentNetworkRequests {
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_currentNetworkRequests));
    r0 = *(r21 + r24);
    if (r0 != 0x0) {
            r22 = [r0 count] - 0x3e8;
            if (r22 >= 0x1) {
                    r20 = @selector(count);
                    r0 = *(r21 + r24);
                    objc_msgSend(r0, r20);
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    r21 = *(r21 + r24);
                    objc_msgSend(r21, r20) - r22;
                    r0 = [r21 subarrayWithRange:r22];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            else {
                    r21 = [*(r21 + r24) retain];
            }
            r20 = @selector(count);
            r0 = [ADCDevice sharedDevice];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 mediaPath];
            r0 = [r0 retain];
            r22 = [[r0 stringByAppendingPathComponent:@"network_requests"] retain];
            [r0 release];
            [r23 release];
            r24 = [r21 writeToFile:r22 atomically:0x1];
            r0 = objc_msgSend(r21, r20);
            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)startMonitoring {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ADCNetwork sharedNetwork];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 host];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 setHost:@"www.adtilt.com"];
    }
    [r19 startMonitoringWithReachabilityChangeHandler:0x100e70f38];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentNetworkRequests, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedNetworkRequests, 0x0);
    objc_storeStrong((int64_t *)&self->_networkRequestQueueTimer, 0x0);
    return;
}

@end