@implementation TRNetworkManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6ea8 != -0x1) {
            dispatch_once(0x1011d6ea8, &var_28);
    }
    r0 = *0x1011d6ea0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)startup {
    [self applicationWillBecomeActive];
    return;
}

-(void *)initWithBaseURL:(void *)arg2 sessionConfiguration:(void *)arg3 {
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
    r21 = [arg2 retain];
    r0 = [[&var_50 super] initWithBaseURL:r21 sessionConfiguration:arg3];
    r19 = r0;
    [r21 release];
    if (r19 != 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:*0x100e7d6e0];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            if (r20 != 0x0) {
                    r22 = [[NSKeyedUnarchiver unarchiveObjectWithData:r20] retain];
                    r0 = [NSMutableArray arrayWithArray:r22];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 setRequests:r21];
                    [r21 release];
                    r0 = r22;
            }
            else {
                    r21 = [[NSMutableArray alloc] init];
                    [r19 setRequests:r21];
                    r0 = r21;
            }
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillBecomeActive) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillBecomeInactive) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(applicationWillBecomeInactive) name:**_UIApplicationWillTerminateNotification object:0x0];
            [r0 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)applicationWillBecomeActive {
    [self setAsleep:0x0];
    [self setIsWorking:0x0];
    [self postVersions:&var_48];
    r0 = @class(TR_AFNetworkReachabilityManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    [r0 startMonitoring];
    [r0 release];
    r0 = @class(TR_AFNetworkReachabilityManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    [r0 setReachabilityStatusChangeBlock:0x100e7d438];
    [r0 release];
    return;
}

-(void)applicationWillBecomeInactive {
    r0 = [TR_AFNetworkReachabilityManager sharedManager];
    r0 = [r0 retain];
    [r0 stopMonitoring];
    [r0 release];
    r0 = [self requestTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setRequestTimer:0x0];
    return;
}

-(void)postVersions:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    if (r20 != 0x0 && [r20 isEqualToString:r2] != 0x0) {
            if ((*0x100be01b0 & 0x1) != 0x0) {
                    [TR_DDLog log:0x0 level:r3 flag:0x1 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager postVersions:]" line:0x91 tag:0x0 format:@"%@"];
            }
            (*(r19 + 0x10))(r19, 0x0);
    }
    else {
            r22 = [[TRVersionRequest alloc] init];
            var_28 = [r19 retain];
            [r21 postWithRequest:r22 completion:&var_48];
            [var_28 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)postEvents:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[TREventsRequest alloc] initWithEvents:r21];
    [r21 release];
    var_28 = r19;
    r19 = [r19 retain];
    [self postWithRequest:r22 completion:&var_48];
    [var_28 release];
    [r19 release];
    [r22 release];
    return;
}

-(void)sendRequest:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004279dc;

loc_10042799c:
    r0 = [r19 httpType];
    if (r0 == 0x1) goto loc_1004279c4;

loc_1004279b4:
    if (r0 != 0x0) goto loc_1004279dc;

loc_1004279b8:
    r1 = @selector(getWithRequest:completion:);
    goto loc_1004279cc;

loc_1004279cc:
    objc_msgSend(r20, r1);
    goto loc_1004279dc;

loc_1004279dc:
    [r19 release];
    return;

loc_1004279c4:
    r1 = @selector(postWithRequest:completion:);
    goto loc_1004279cc;
}

-(void)getWithRequest:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x190;
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
    r29 = &saved_fp;
    r19 = self;
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    if ((*0x100be01b0 & 0x4) != 0x0) {
            r0 = [r22 name];
            r29 = r29;
            r24 = [r0 retain];
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x4 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager getWithRequest:completion:]" line:0xbc tag:0x0 format:@"GET %@"];
            [r24 release];
    }
    r0 = [r22 encryptedPayload];
    r29 = r29;
    r28 = [r0 retain];
    var_150 = r28;
    if ((*0x100be01b0 & 0x8) != 0x0) {
            r26 = [[r22 relativeURL] retain];
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager getWithRequest:completion:]" line:0xbf tag:0x0 format:@"URL: %@"];
            [r26 release];
            r0 = [r22 requestPayload];
            r29 = r29;
            r26 = [r0 retain];
            r19 = r19;
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager getWithRequest:completion:]" line:0xc0 tag:0x0 format:@"Payload: %@\n Encrypted: %@"];
            [r26 release];
    }
    objc_initWeak(r29 - 0x68, r19);
    r22 = [r22 retain];
    var_A0 = objc_retainBlock(r21);
    r0 = [r22 relativeURL];
    [r0 retain];
    objc_copyWeak(&var_108 + 0x38, r29 - 0x68);
    [r21 retain];
    objc_copyWeak(&var_148 + 0x38, r29 - 0x68);
    r21 = [r19 retain];
    r0 = [r20 GET:r25 parameters:var_150 progress:0x100e7d4d8 success:&var_108 failure:&var_148];
    [[r0 retain] release];
    [r25 release];
    [r21 release];
    objc_destroyWeak(&var_148 + 0x38);
    [r19 release];
    objc_destroyWeak(&var_108 + 0x38);
    _Block_object_dispose(&var_C8, 0x8);
    [var_A0 release];
    _Block_object_dispose(r29 - 0x98, 0x8);
    [r22 release];
    objc_destroyWeak(r29 - 0x68);
    [var_150 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)postWithRequest:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x190;
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
    r29 = &saved_fp;
    r19 = self;
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    if ((*0x100be01b0 & 0x4) != 0x0) {
            r0 = [r22 name];
            r29 = r29;
            r24 = [r0 retain];
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x4 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager postWithRequest:completion:]" line:0xd9 tag:0x0 format:@"POST %@"];
            [r24 release];
    }
    r0 = [r22 encryptedPayload];
    r29 = r29;
    r28 = [r0 retain];
    var_150 = r28;
    if ((*0x100be01b0 & 0x8) != 0x0) {
            r26 = [[r22 relativeURL] retain];
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager postWithRequest:completion:]" line:0xdc tag:0x0 format:@"URL: %@"];
            [r26 release];
            r0 = [r22 requestPayload];
            r29 = r29;
            r26 = [r0 retain];
            r19 = r19;
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager postWithRequest:completion:]" line:0xdd tag:0x0 format:@"Payload: %@\n Encrypted: %@"];
            [r26 release];
    }
    objc_initWeak(r29 - 0x68, r19);
    r22 = [r22 retain];
    var_A0 = objc_retainBlock(r21);
    r0 = [r22 relativeURL];
    [r0 retain];
    objc_copyWeak(&var_108 + 0x38, r29 - 0x68);
    [r21 retain];
    objc_copyWeak(&var_148 + 0x38, r29 - 0x68);
    r21 = [r19 retain];
    r0 = [r20 POST:r25 parameters:var_150 progress:0x100e7d578 success:&var_108 failure:&var_148];
    [[r0 retain] release];
    [r25 release];
    [r21 release];
    objc_destroyWeak(&var_148 + 0x38);
    [r19 release];
    objc_destroyWeak(&var_108 + 0x38);
    _Block_object_dispose(&var_C8, 0x8);
    [var_A0 release];
    _Block_object_dispose(r29 - 0x98, 0x8);
    [r22 release];
    objc_destroyWeak(r29 - 0x68);
    [var_150 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)disableQueue {
    [self applicationWillBecomeInactive];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 setConfigured:0x0];
    [r0 release];
    r0 = [self requests];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r19 release];
    return;
}

-(void)sendRequest {
    r31 = r31 - 0x60;
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
    if (([self asleep] & 0x1) == 0x0) {
            r0 = [r19 reachabilityManager];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isReachable];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r19 requests];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 count];
                    [r0 release];
                    if (r22 != 0x0 && ([r19 isWorking] & 0x1) == 0x0) {
                            r0 = [r19 requests];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 objectAtIndex:0x0];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r21 release];
                            [r19 setIsWorking:0x1];
                            if ([r20 shouldForceRemoveFromQueue] != 0x0) {
                                    if ((*0x100be01b0 & 0x8) != 0x0) {
                                            r23 = [[r20 relativeURL] retain];
                                            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager sendRequest]" line:0x101 tag:0x0 format:@"Force removing last request: %@"];
                                            [r23 release];
                                    }
                                    [r19 removeRequest:r20];
                            }
                            else {
                                    if ([r20 httpType] != 0x0) {
                                            r1 = @selector(postWithRequest:completion:);
                                    }
                                    else {
                                            r1 = @selector(getWithRequest:completion:);
                                    }
                                    objc_msgSend(r19, r1);
                            }
                            [r20 release];
                    }
            }
    }
    return;
}

-(void)addRequest:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self requests];
    r0 = [r0 retain];
    [r0 addObject:arg2];
    [r22 release];
    [r0 release];
    r20 = [[self requests] retain];
    [TRObjectStore storeObject:r20 forKey:*0x100e7d6e0];
    [r20 release];
    return;
}

-(void)removeRequest:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 canQueue] != 0x0) {
            r0 = [r20 requests];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeObject:r19];
            [r0 release];
            [r20 setIsWorking:0x0];
            if ((*0x100be01b0 & 0x8) != 0x0) {
                    r0 = [r20 requests];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 count];
                    [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager removeRequest:]" line:0x121 tag:0x0 format:@"Requests Left: %lu\n\n"];
                    [r0 release];
            }
            r20 = [[r20 requests] retain];
            [TRObjectStore storeObject:r20 forKey:*0x100e7d6e0];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)setAsleep:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_asleep = arg2;
    return;
}

-(bool)asleep {
    r0 = *(int8_t *)(int64_t *)&self->_asleep;
    return r0;
}

-(void *)requests {
    r0 = self->_requests;
    return r0;
}

-(void)setRequestTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestTimer, arg2);
    return;
}

-(void *)requestTimer {
    r0 = self->_requestTimer;
    return r0;
}

-(void)setRequests:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requests, arg2);
    return;
}

-(void)handleResponse:(void *)arg2 error:(void *)arg3 originalRequest:(void *)arg4 {
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
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [[arg2 response] retain];
    [r23 release];
    r0 = [r22 allHeaderFields];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 notNullObjectForKey:*0x100e7d670];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r21 setAsleep:[r0 boolValue]];
    [r0 release];
    [r23 release];
    if ([r22 statusCode] > 0x18f || [r22 statusCode] == 0x0) goto loc_100428e70;

loc_100428ddc:
    if ([r20 shouldLog] != 0x0) {
            if ((*0x100be01b0 & 0x4) != 0x0) {
                    [r22 statusCode];
                    [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x4 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager handleResponse:error:originalRequest:]" line:0x16e tag:0x0 format:@"Success! Status Code: %u"];
            }
    }
    [r21 removeRequest:r20];
    goto loc_100429184;

loc_100429184:
    [r22 release];
    [r20 release];
    [r19 release];
    return;

loc_100428e70:
    r23 = [[r19 localizedDescription] retain];
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r27 release];
    if (r24 != 0x0) {
            r26 = @selector(objectForKey:);
            r0 = [NSJSONSerialization JSONObjectWithData:r24 options:0x0 error:0x0];
            r0 = [r0 retain];
            r27 = r0;
            r0 = objc_msgSend(r0, r26);
            r29 = r29;
            r26 = [r0 retain];
            [r23 release];
            [r27 release];
            r23 = r26;
    }
    if ([r22 statusCode] != 0x191) goto loc_10042901c;

loc_100428f48:
    if ((*0x100be01b0 & 0x1) != 0x0) {
            [TR_DDLog log:0x0 level:r3 flag:0x1 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager handleResponse:error:originalRequest:]" line:0x141 tag:0x0 format:@"Unauthorized. Please ensure you are setting a valid API token."];
    }
    r0 = [r21 requests];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r21 requests];
    goto loc_100428fe8;

loc_100428fe8:
    r25 = [r0 retain];
    [TRObjectStore storeObject:r25 forKey:*0x100e7d6e0];
    [r25 release];
    goto loc_100429160;

loc_100429160:
    [r21 setIsWorking:0x0];
    [r24 release];
    [r23 release];
    goto loc_100429184;

loc_10042901c:
    if ([r22 statusCode] != 0x194) goto loc_100429064;

loc_100429030:
    if ((*0x100be01b0 & 0x8) == 0x0) goto loc_10042914c;

loc_100429040:
    var_60 = @"Route not found.";
    r8 = 0x149;
    goto loc_100429128;

loc_100429128:
    [TR_DDLog log:0x1 level:r3 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Global/TRNetworkManager.m" function:"-[TRNetworkManager handleResponse:error:originalRequest:]" line:r8 tag:0x0 format:var_60];
    goto loc_10042914c;

loc_10042914c:
    [r21 removeRequest:r20];
    goto loc_100429160;

loc_100429064:
    r0 = [r20 relativeURL];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:r2];
    [r0 release];
    if (r26 == 0x0) goto loc_1004290f8;

loc_1004290a8:
    r0 = [r21 requests];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r21 requests];
    goto loc_100428fe8;

loc_1004290f8:
    if ((*0x100be01b0 & 0x8) == 0x0) goto loc_10042914c;

loc_100429108:
    var_60 = @"Removing bad request";
    r8 = 0x15b;
    goto loc_100429128;
}

-(void)setIsWorking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isWorking = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_requests, 0x0);
    return;
}

-(bool)isWorking {
    r0 = *(int8_t *)(int64_t *)&self->_isWorking;
    return r0;
}

@end