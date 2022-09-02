@implementation Tapjoy

+(void)setDebugEnabled:(bool)arg2 {
    [self enableLogging:arg2];
    return;
}

+(void)connect:(void *)arg2 {
    [self requestTapjoyConnect:arg2];
    return;
}

+(void)connect:(void *)arg2 options:(void *)arg3 {
    r21 = [arg2 retain];
    [self requestTapjoyConnect:r21 options:arg3];
    [r21 release];
    return;
}

+(void)limitedConnect:(void *)arg2 {
    [self requestLimitedTapjoyConnect:arg2];
    return;
}

+(void)startSession {
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setBManualSessionTracking:0x1];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 appID] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 secretKey] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r25 = [[r0 sdkKey] retain];
    [FiveRocks startSession:r22 withAppKey:r24 withSdkApiKey:r25];
    [r25 release];
    [r0 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)endSession {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setBManualSessionTracking:0x1];
    [r0 release];
    [FiveRocks endSession];
    return;
}

+(void)setAppDataVersion:(void *)arg2 {
    [FiveRocks setAppDataVersion:arg2];
    return;
}

+(void)setApplicationLaunchingOptions:(void *)arg2 {
    return;
}

+(void)setReceiveRemoteNotification:(void *)arg2 {
    r21 = [arg2 retain];
    [TJCLog logWithLevel:0x4 format:@"setReceiveRemoteNotification: %@ called"];
    [FiveRocks applicationDidReceiveRemoteNotification:r21];
    [r21 release];
    return;
}

+(void)setDeviceToken:(void *)arg2 {
    r21 = [arg2 retain];
    [TJCLog logWithLevel:0x4 format:@"setDeviceToken: %@ called"];
    [FiveRocks applicationDidRegisterForRemoteNotificationsWithDeviceToken:r21];
    [r21 release];
    return;
}

+(void)setDefaultViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setDefaultViewController:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setUserLevel:(int)arg2 {
    [TJCLog logWithLevel:0x4 format:@"setUserLevel:%d called"];
    [FiveRocks setUserLevel:arg2];
    return;
}

+(void)setUserFriendCount:(int)arg2 {
    [TJCLog logWithLevel:0x4 format:@"setUserFriendCount:%d called"];
    [FiveRocks setUserFriendCount:arg2];
    return;
}

+(void)setUserCohortVariable:(int)arg2 value:(void *)arg3 {
    r22 = [arg3 retain];
    [TJCLog logWithLevel:0x4 format:@"setUserCohortVariable:%d value:%@ called"];
    [FiveRocks setUserCohortVariable:arg2 value:r22];
    [r22 release];
    return;
}

+(void *)getUserTags {
    r19 = [[FiveRocks getUserTags] retain];
    [TJCLog logWithLevel:0x4 format:@"getUserTags called. result=%@"];
    r0 = [r19 autorelease];
    return r0;
}

+(void)setUserTags:(void *)arg2 {
    r21 = [arg2 retain];
    [TJCLog logWithLevel:0x4 format:@"setUserTags:%@ called"];
    [FiveRocks setUserTags:r21];
    [r21 release];
    return;
}

+(void)clearUserTags {
    [TJCLog logWithLevel:0x4 format:@"clearUserTags called"];
    [FiveRocks setUserTags:0x0];
    return;
}

+(void)addUserTag:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [TJCLog logWithLevel:0x4 format:@"addUserTag:%@ called"];
    if (r19 == 0x0) goto loc_1008f2ed8;

loc_1008f2df4:
    r0 = [NSNull null];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == r19) goto loc_1008f2ed0;

loc_1008f2e1c:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1008f2e6c;

loc_1008f2e48:
    r21 = [r19 length];
    [r20 release];
    if (r21 != 0x0) goto loc_1008f2e74;

loc_1008f2ed8:
    [r19 release];
    return;

loc_1008f2e74:
    r0 = [FiveRocks getUserTags];
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 containsObject:r2] & 0x1) == 0x0) {
            [r20 addObject:r19];
            [FiveRocks setUserTags:r20];
    }
    goto loc_1008f2ed0;

loc_1008f2ed0:
    [r20 release];
    goto loc_1008f2ed8;

loc_1008f2e6c:
    [r20 release];
    goto loc_1008f2e74;
}

+(void)removeUserTag:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [TJCLog logWithLevel:0x4 format:@"removeUserTag:%@ called"];
    if (r19 == 0x0) goto loc_1008f301c;

loc_1008f2f38:
    r0 = [NSNull null];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == r19) goto loc_1008f3014;

loc_1008f2f60:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1008f2fb0;

loc_1008f2f8c:
    r21 = [r19 length];
    [r20 release];
    if (r21 != 0x0) goto loc_1008f2fb8;

loc_1008f301c:
    [r19 release];
    return;

loc_1008f2fb8:
    r0 = [FiveRocks getUserTags];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 containsObject:r2] != 0x0) {
            [r20 removeObject:r19];
            [FiveRocks setUserTags:r20];
    }
    goto loc_1008f3014;

loc_1008f3014:
    [r20 release];
    goto loc_1008f301c;

loc_1008f2fb0:
    [r20 release];
    goto loc_1008f2fb8;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self trackEvent:r23 category:r21 parameter1:r20 parameter2:arg5 values:0x0];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

+(void)trackPurchase:(void *)arg2 currencyCode:(void *)arg3 price:(double)arg4 campaignId:(void *)arg5 transactionId:(void *)arg6 {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    [FiveRocks trackPurchase:r19 currencyCode:r20 price:r21 campaignId:r22 transactionId:&var_58 withError:r7];
    r23 = [var_58 retain];
    if (r22 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != r22) {
                    [NSString class];
                    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
                            r25 = [r22 length];
                            [r24 release];
                    }
                    else {
                            [r24 release];
                    }
            }
            else {
                    [r24 release];
            }
    }
    [TJCLog logWithLevel:r2 format:r3];
    if (r23 != 0x0) {
            [[r23 localizedDescription] retain];
            [TJCLog logWithLevel:r2 format:r3];
            [r26 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value:(long long)arg6 {
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
    var_48 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    r23 = [arg5 retain];
    r22 = [[NSNumber numberWithLong:arg6] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
    r25 = [r0 retain];
    [self trackEvent:r19 category:r20 parameter1:r24 parameter2:r23 values:r25];
    [r23 release];
    [r24 release];
    [r20 release];
    [r19 release];
    [r25 release];
    [r22 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value1name:(void *)arg6 value1:(long long)arg7 {
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
    var_58 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r25 = [arg5 retain];
    r24 = [arg6 retain];
    r23 = [[NSNumber numberWithLong:arg7] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r26 = [r0 retain];
    [self trackEvent:r19 category:r20 parameter1:r21 parameter2:r25 values:r26];
    [r24 release];
    [r25 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r26 release];
    [r23 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value1name:(void *)arg6 value1:(long long)arg7 value2name:(void *)arg8 value2:(long long)arg9 {
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
    var_58 = **___stack_chk_guard;
    var_88 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r25 = [arg6 retain];
    r28 = @class(NSNumber);
    r26 = [arg8 retain];
    r24 = [[r28 numberWithLong:arg7] retain];
    r27 = [[NSNumber numberWithLong:arg9] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
    r22 = [r0 retain];
    [self trackEvent:var_88 category:r20 parameter1:r21 parameter2:r23 values:r22];
    [r26 release];
    [r25 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [var_88 release];
    [r22 release];
    [r27 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 value1name:(void *)arg6 value1:(long long)arg7 value2name:(void *)arg8 value2:(long long)arg9 value3name:(void *)arg10 value3:(long long)arg11 {
    r31 = r31 - 0xd0;
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
    var_58 = **___stack_chk_guard;
    var_98 = [arg2 retain];
    var_A8 = [arg3 retain];
    var_B0 = [arg4 retain];
    var_B8 = [arg5 retain];
    r25 = [arg6 retain];
    r26 = [arg8 retain];
    r19 = @class(NSNumber);
    r28 = [arg10 retain];
    var_A0 = [[r19 numberWithLong:arg7] retain];
    r27 = [[NSNumber numberWithLong:arg9] retain];
    r22 = [[NSNumber numberWithLong:arg11] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3];
    r19 = [r0 retain];
    [self trackEvent:var_98 category:var_A8 parameter1:var_B0 parameter2:var_B8 values:r19];
    [r28 release];
    [r26 release];
    [r25 release];
    [var_B8 release];
    [var_B0 release];
    [var_A8 release];
    [var_98 release];
    [r19 release];
    [r22 release];
    [r27 release];
    [var_A0 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void *)sharedTapjoyConnect {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011dc088 == 0x0) {
            if (*qword_1011dc090 != -0x1) {
                    dispatch_once(0x1011dc090, 0x100ea0fd0);
            }
    }
    r0 = *0x1011dc088;
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(void)trackEvent:(void *)arg2 category:(void *)arg3 parameter1:(void *)arg4 parameter2:(void *)arg5 values:(void *)arg6 {
    r31 = r31 - 0x80;
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
    [FiveRocks trackEvent:[arg2 retain] category:[arg3 retain] parameter1:[arg4 retain] parameter2:[arg5 retain] values:[arg6 retain] withError:&var_48];
    r20 = [var_48 retain];
    [TJCLog logWithLevel:r2 format:r3];
    [r26 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    if (r20 != 0x0) {
            [[r20 localizedDescription] retain];
            [TJCLog logWithLevel:r2 format:r3];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)retryConnectTypeConnect:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 util];
    r0 = [r0 retain];
    r22 = [r0 SDKConnectedToServer];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [r20 retain];
            objc_sync_enter(r0);
            [r20 setBRetryConnectQueued:0x0];
            objc_sync_exit(r20);
            [r20 release];
            [r20 connectWithType:0x0 withParams:r19 completion:0x0];
            [TJEventOptimizer retryStartup];
    }
    [r19 release];
    return;
}

-(void)loadObjects {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [TJCLog alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_log));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [TJCUtil alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_util));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    if ([r19 checkSupportedSystemVersion] != 0x0) {
            r0 = [TJCViewHandler alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandler));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [TJCCurrencyManager alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currencyManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [TJCVideoManager alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [TJCacheProtocol setupCacheProtocol];
    }
    return;
}

-(bool)checkSupportedSystemVersion {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:@"4.3.5" options:0x40];
    [r0 release];
    [r20 release];
    if (r22 == 0x1) {
            r0 = 0x1;
    }
    else {
            [TJCLog logWithLevel:0x2 format:@"Device operating system is less than or equal to %@. SDK is disabled."];
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 util];
            r0 = [r0 retain];
            [r0 setSDKEnabled:0x0];
            [r0 release];
            [r19 release];
            r0 = 0x0;
    }
    return r0;
}

-(void)connectWithType:(int)arg2 withParams:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0xe0;
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
    r20 = arg2;
    r21 = self;
    r22 = [arg3 retain];
    var_C0 = [arg4 retain];
    if (r20 == 0x0) {
            r0 = [r21 util];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 SDKConnected];
            [r0 release];
            if ((r25 & 0x1) == 0x0) {
                    r0 = [r21 loadConnectResultWithParams:r22];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [NSNull null];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = r0;
                            [r0 release];
                            if (r23 != r25) {
                                    r0 = [Tapjoy sharedTapjoyConnect];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 util];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 setSDKConnected:0x1];
                                    [r0 release];
                                    [r25 release];
                                    [r21 processConnectResult:r23 withParams:r22 isStoredResult:0x1];
                                    [TJCLog logWithLevel:0x4 format:@"Connect using stored connect result"];
                                    dispatch_async(*__dispatch_main_q, &var_78);
                            }
                    }
                    [r23 release];
            }
    }
    r23 = @class(NSString);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_URLArray));
    r0 = *(r21 + r19);
    asm { sxtw       x25, w20 };
    r0 = [r0 objectAtIndexedSubscript:r25];
    r0 = [r0 retain];
    r24 = r0;
    r28 = [[r0 objectForKeyedSubscript:@"host"] retain];
    r0 = *(r21 + r19);
    r0 = [r0 objectAtIndexedSubscript:r25];
    r0 = [r0 retain];
    r26 = [[r0 objectForKeyedSubscript:@"path"] retain];
    r23 = [[r23 stringWithFormat:@"%@%@"] retain];
    [r26 release];
    [r0 release];
    [r28 release];
    [r24 release];
    r25 = [[NSURL URLWithString:r23] retain];
    r24 = [[TJCUtil createRequestWithURL:r25 cachePolicy:0x1 timeoutInterval:r4] retain];
    [r25 release];
    r0 = [FRUtils postStringFromDictionary:r22 multiDepths:0x0 last:0x1];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    [r0 length];
    r27 = [[NSString stringWithFormat:@"%d"] retain];
    [r24 setHTTPMethod:@"POST"];
    [r24 setValue:r27 forHTTPHeaderField:@"Content-Length"];
    [r24 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [r24 setHTTPBody:r0];
    [TJCLog logWithBaseURL:r23 path:@"" params:r22];
    r19 = [[NSOperationQueue mainQueue] retain];
    var_90 = r22;
    r20 = [r22 retain];
    r22 = [var_C0 retain];
    [NSURLConnection sendAsynchronousRequest:r24 queue:r19 completionHandler:&var_B8];
    [r19 release];
    [var_C0 release];
    [var_90 release];
    [r22 release];
    [r20 release];
    [r27 release];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    return;
}

-(void)limitedConnectWithType:(int)arg2 withParams:(void *)arg3 completion:(void *)arg4 {
    r4 = arg4;
    r31 = r31 - 0xb0;
    r19 = self;
    r20 = [arg3 retain];
    r22 = @class(NSString);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_URLArray));
    r0 = *(r19 + r28);
    asm { sxtw       x24, w21 };
    r0 = [r0 objectAtIndexedSubscript:r24];
    r0 = [r0 retain];
    r23 = r0;
    r27 = [[r0 objectForKeyedSubscript:@"host"] retain];
    r0 = *(r19 + r28);
    r0 = [r0 objectAtIndexedSubscript:r24];
    r0 = [r0 retain];
    r25 = [[r0 objectForKeyedSubscript:@"path"] retain];
    r22 = [[r22 stringWithFormat:@"%@%@"] retain];
    [r25 release];
    [r0 release];
    [r27 release];
    [r23 release];
    r24 = [[NSURL URLWithString:r22] retain];
    r23 = [[TJCUtil createRequestWithURL:r24 cachePolicy:0x1 timeoutInterval:r4] retain];
    [r24 release];
    r0 = [FRUtils postStringFromDictionary:r20 multiDepths:0x0 last:0x1];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    [r0 length];
    r26 = [[NSString stringWithFormat:@"%d"] retain];
    [r23 setHTTPMethod:@"POST"];
    [r23 setValue:r26 forHTTPHeaderField:@"Content-Length"];
    [r23 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [r23 setHTTPBody:r0];
    [TJCLog logWithBaseURL:r22 path:@"" params:r20];
    r28 = [[NSOperationQueue mainQueue] retain];
    var_60 = r20;
    r20 = [r20 retain];
    [NSURLConnection sendAsynchronousRequest:r23 queue:r28 completionHandler:&var_88];
    [r28 release];
    [var_60 release];
    [r20 release];
    [r26 release];
    [r0 release];
    [r24 release];
    [r23 release];
    [r22 release];
    return;
}

-(void *)connectParamsHash:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[arg2 objectForKey:@"app_id"] retain];
    r21 = [[arg2 objectForKey:@"app_version"] retain];
    r25 = [[arg2 objectForKey:@"library_version"] retain];
    r26 = [[arg2 objectForKey:@"advertising_id"] retain];
    r23 = [[arg2 objectForKey:@"install_id"] retain];
    [r22 release];
    r20 = [[NSString stringWithFormat:@"%@ %@ %@ %@ %@"] retain];
    [r23 release];
    [r26 release];
    [r25 release];
    [r21 release];
    [r19 release];
    r19 = [[TJCUtil TJCSHA1WithString:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)processLimitedConnectResult:(void *)arg2 withParams:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r20 = [arg2 retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x1 error:&var_28];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    r20 = [var_28 retain];
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"app_group_id"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_limitedAppGroupID));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"store"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_store));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"managed_device_id"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_managedDeviceID));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"configurations"];
            r29 = r29;
            r21 = [r0 retain];
            [NSDictionary class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    [TJSdkConfiguration updateServerProvidedConfiguration:r2];
            }
            else {
                    if (r21 != 0x0) {
                            r0 = [NSNull null];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r21 == r0) {
                                    [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                            }
                    }
                    else {
                            [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                    }
            }
            [r21 release];
    }
    [r19 release];
    [r20 release];
    return;
}

-(void *)loadConnectResultWithParams:(void *)arg2 {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r23 = self;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r24 release];
    if (r20 == 0x0) goto loc_1008f5d34;

loc_1008f5c38:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r20 == r0) goto loc_1008f5d34;

loc_1008f5c68:
    r0 = [r23 connectParamsHash:r19];
    r29 = r29;
    r23 = [r0 retain];
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1008f5d2c;

loc_1008f5ca0:
    r22 = @selector(objectForKey:);
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r26 = r0;
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r25 = [r0 retain];
    [r26 release];
    if (r25 == 0x0) goto loc_1008f5d44;

loc_1008f5ce0:
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r25 == r24) goto loc_1008f5d3c;

loc_1008f5d00:
    [r25 timeIntervalSinceNow];
    [r24 release];
    if (d8 >= 0x0) goto loc_1008f5d44;

loc_1008f5d24:
    [r25 release];
    goto loc_1008f5d2c;

loc_1008f5d2c:
    r21 = 0x0;
    goto loc_1008f5d88;

loc_1008f5d88:
    [r23 release];
    goto loc_1008f5d90;

loc_1008f5d90:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1008f5d44:
    r22 = @selector(objectForKey:);
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [objc_msgSend(r0, r22) retain];
    [r0 release];
    [r25 release];
    goto loc_1008f5d88;

loc_1008f5d3c:
    [r25 release];
    goto loc_1008f5d44;

loc_1008f5d34:
    r21 = 0x0;
    goto loc_1008f5d90;
}

-(void)initConnectWithSdkKey:(void *)arg2 withAppID:(void *)arg3 withSecretKey:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_sdkKey));
    r23 = *(self + r8);
    *(self + r8) = r22;
    r22 = [r22 retain];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_appID));
    r23 = *(self + r8);
    *(self + r8) = r20;
    r20 = [r20 retain];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_secretKey));
    r23 = *(self + r8);
    *(self + r8) = r19;
    r19 = [r19 retain];
    [r23 release];
    *(int32_t *)(int64_t *)&self->_connectAttempts = 0x0;
    [self updateURLArray];
    [r19 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)initLimitedConnectWithSdkKey:(void *)arg2 withAppID:(void *)arg3 withSecretKey:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_limitedSdkKey));
    r23 = *(self + r8);
    *(self + r8) = r22;
    r22 = [r22 retain];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_limitedAppID));
    r23 = *(self + r8);
    *(self + r8) = r20;
    r20 = [r20 retain];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_limitedSecretKey));
    r23 = *(self + r8);
    *(self + r8) = r19;
    r19 = [r19 retain];
    [r23 release];
    [self updateURLArray];
    [r19 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)storeConnectResult:(void *)arg2 withParams:(void *)arg3 cacheMaxAge:(void *)arg4 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] == 0x0 || [r21 integerValue] < 0x1) goto loc_1008f5f68;

loc_1008f5e44:
    r2 = r20;
    r0 = [r22 connectParamsHash:r2];
    r22 = [r0 retain];
    r0 = @class(NSDate);
    asm { scvtf      d0, x23 };
    r23 = [[r0 dateWithTimeIntervalSinceNow:r2] retain];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r22 forKey:@"TJC_STORED_CONNECT_PARAMS_HASH"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r19 forKey:@"TJC_STORED_CONNECT_RESULT"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r23 forKey:@"TJC_STORED_CONNECT_EXPIRES"];
    [r0 release];
    [TJCLog logWithLevel:0x4 format:@"Stored connect result"];
    [r23 release];
    r0 = r22;
    goto loc_1008f60f4;

loc_1008f60f4:
    [r0 release];
    goto loc_1008f60f8;

loc_1008f60f8:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008f5f68:
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1008f60f0;

loc_1008f5fb4:
    r25 = @selector(objectForKey:);
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r26 = r0;
    r25 = [objc_msgSend(r0, r25) retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r26 release];
    [r24 release];
    [r23 release];
    if (r25 != r0) {
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 removeObjectForKey:@"TJC_STORED_CONNECT_PARAMS_HASH"];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 removeObjectForKey:@"TJC_STORED_CONNECT_RESULT"];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 removeObjectForKey:@"TJC_STORED_CONNECT_EXPIRES"];
            [r0 release];
            [TJCLog logWithLevel:0x4 format:@"Removed connect result"];
    }
    goto loc_1008f60f8;

loc_1008f60f0:
    r0 = r23;
    goto loc_1008f60f4;
}

-(void)processConnectResult:(void *)arg2 withParams:(void *)arg3 isStoredResult:(bool)arg4 {
    r31 = r31 - 0x1b0;
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
    r23 = arg4;
    r24 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x1 error:&var_E0];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r22 = [var_E0 retain];
    if (r25 != 0x0) {
            var_178 = r22;
            var_158 = r21;
            stack[-352] = r20;
            r0 = [r25 objectForKeyedSubscript:@"app_group_id"];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_appGroupID));
            r8 = *(r24 + r21);
            *(r24 + r21) = r0;
            [r8 release];
            r0 = [r25 objectForKeyedSubscript:@"store"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_store));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            r0 = [r25 objectForKeyedSubscript:@"managed_device_id"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_managedDeviceID));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            r0 = [r25 objectForKeyedSubscript:@"analytics_api_key"];
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsApiKey));
            r8 = *(r24 + r22);
            *(r24 + r22) = r0;
            [r8 release];
            r0 = [TJCApiKeyDecoder decoderWithApiKey:*(r24 + r22)];
            r29 = r29;
            r27 = [r0 retain];
            if (r27 != 0x0 && [r27 getKeyUsage] == 0x31) {
                    r20 = [[r27 getAppID] retain];
                    r0 = [TJCApiKeyDecoder get5RocksAppID:r20];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r20 release];
                    r20 = *(r24 + r21);
                    if (r20 == 0x0) {
                            *(r24 + r21) = [r19 retain];
                            [r20 release];
                    }
                    [FiveRocks setAnalyticsApiKey:*(r24 + r22)];
                    [r19 release];
                    if ((r23 & 0x1) == 0x0) {
                            r0 = [r25 objectForKeyedSubscript:@"configurations"];
                            r29 = r29;
                            r19 = [r0 retain];
                            [NSDictionary class];
                            if ([r19 isKindOfClass:r2] != 0x0) {
                                    [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                            }
                            else {
                                    if (r19 != 0x0) {
                                            r0 = [NSNull null];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r19 == r0) {
                                                    [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                                            }
                                    }
                                    else {
                                            [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                                    }
                            }
                            [r19 release];
                    }
            }
            else {
                    [TJCLog logWithLevel:0x4 format:@"Invalid analytics_api_key"];
                    if ((r23 & 0x1) == 0x0) {
                            r0 = [r25 objectForKeyedSubscript:@"configurations"];
                            r29 = r29;
                            r19 = [r0 retain];
                            [NSDictionary class];
                            if ([r19 isKindOfClass:r2] != 0x0) {
                                    [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                            }
                            else {
                                    if (r19 != 0x0) {
                                            r0 = [NSNull null];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r19 == r0) {
                                                    [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                                            }
                                    }
                                    else {
                                            [TJSdkConfiguration updateServerProvidedConfiguration:r2];
                                    }
                            }
                            [r19 release];
                    }
            }
            var_180 = r27;
            var_164 = r23;
            var_160 = r24;
            var_170 = r25;
            r0 = [r25 objectForKeyedSubscript:@"package_names"];
            r0 = [r0 retain];
            var_188 = r0;
            r0 = [r0 componentsSeparatedByString:@","];
            r29 = r29;
            r19 = [r0 retain];
            var_140 = [[NSMutableString alloc] init];
            r0 = [r19 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r0;
            var_148 = r1;
            r20 = objc_msgSend(r0, r1);
            if (r20 != 0x0) {
                    do {
                            r24 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r22 = *(0x0 + r24 * 0x8);
                                    r28 = [[NSString stringWithFormat:@"%@://"] retain];
                                    r27 = [[NSURL URLWithString:r28] retain];
                                    [r28 release];
                                    r0 = [UIApplication sharedApplication];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r25 = [r0 canOpenURL:r27];
                                    [r0 release];
                                    if (r25 != 0x0) {
                                            [var_140 appendFormat:r2];
                                    }
                                    [r27 release];
                                    r24 = r24 + 0x1;
                            } while (r24 < r20);
                            r20 = objc_msgSend(var_130, var_148);
                    } while (r20 != 0x0);
            }
            [var_130 release];
            r25 = var_140;
            r0 = [r25 length];
            r24 = var_160;
            if (r0 != 0x0) {
                    r20 = [[r25 substringToIndex:[r25 length] - 0x1] retain];
                    r0 = r24->_util;
                    r0 = [r0 genericParameters];
                    r0 = [r0 retain];
                    r19 = r0;
                    [r0 setObject:r20 forKey:@"package_names"];
                    r22 = [[TJCUtil getTimeStamp] retain];
                    r23 = [[TJCUtil TJCSHA256CommonParamsWithTimeStamp:r22 string:r20] retain];
                    [r19 setObject:r23 forKey:@"verifier"];
                    r0 = [Tapjoy sharedTapjoyConnect];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 connectWithType:0x2 withParams:r19 completion:0x0];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    [r19 release];
                    [r20 release];
            }
            [r25 release];
            [var_130 release];
            [var_188 release];
            [var_180 release];
            r21 = var_158;
            r20 = stack[-352];
            r23 = var_164;
            r22 = var_178;
            r25 = var_170;
    }
    if ((r23 & 0x1) == 0x0) {
            r19 = [[r25 objectForKey:@"cache_max_age"] retain];
            [r24 storeConnectResult:r20 withParams:r21 cacheMaxAge:r19];
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)exitNotificationReceived {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = [r0 bManualSessionTracking];
    [r0 release];
    if ((r20 & 0x1) == 0x0) {
            [FiveRocks endSession];
    }
    return;
}

-(void)updateURLArray {
    r31 = r31 - 0x110;
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
    var_58 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&var_88 forKeys:&var_98 count:0x2] retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_util));
    r21 = [[*(self + r25) serviceURL] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-184] forKeys:&var_B8 count:0x2] retain];
    r24 = [[*(self + r25) serviceURL] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-216] forKeys:&var_D8 count:0x2] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_E8 forKeys:&var_F8 count:0x2] retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x78 count:0x4];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_URLArray));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)deviceNotificationReceived {
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
    [TJCUtil resetParameters];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    [r0 setIsNetReachabilityStale:0x1];
    [r0 release];
    [r21 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setConnectSuccessWithStoredResult:0x0];
    [r0 release];
    r21 = [[Tapjoy sharedTapjoyConnect] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r23 = [[r0 genericParametersWithNewSessionID] retain];
    [r21 connectWithType:0x0 withParams:r23 completion:0x0];
    [r23 release];
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 bManualSessionTracking];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r20 = r0;
            r22 = [[r0 appID] retain];
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 secretKey] retain];
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r25 = [[r0 sdkKey] retain];
            [FiveRocks startSession:r22 withAppKey:r24 withSdkApiKey:r25];
            [r25 release];
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r20 release];
    }
    return;
}

+(void)setNotificationObservers {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc098 != -0x1) {
            dispatch_once(0x1011dc098, &var_28);
    }
    return;
}

+(void)requestLimitedTapjoyConnect:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [TJCApiKeyDecoder decoderWithApiKey:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1008f7704;

loc_1008f740c:
    if ([r20 getKeyUsage] != 0x1) goto loc_1008f7740;

loc_1008f7424:
    r0 = [Tapjoy sharedTapjoyConnect];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 checkSupportedSystemVersion];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_1008f777c;

loc_1008f7464:
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    [r0 checkResourceBundleExists];
    [r0 release];
    [r24 release];
    [TJCUtil resetParameters];
    r24 = [[Tapjoy sharedTapjoyConnect] retain];
    r25 = [[r20 getAppID] retain];
    r26 = [[r20 getSecretKey] retain];
    [r24 initLimitedConnectWithSdkKey:r19 withAppID:r25 withSecretKey:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setCurrencyMultiplier:r19];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setIsInitialLimitedConnect:0x1];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 getAdvertisingIdentifier];
    r0 = [r0 retain];
    r26 = r0;
    [r0 release];
    [r25 release];
    [r24 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == 0x0) goto loc_1008f7798;

loc_1008f763c:
    [r25 setLimitedSDKEnabled:r2];
    [r25 release];
    [r24 release];
    r24 = [[Tapjoy sharedTapjoyConnect] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r25 = [[r0 genericLimitedParameters] retain];
    [r24 limitedConnectWithType:0x0 withParams:r25 completion:0x0];
    [r25 release];
    [r0 release];
    [r22 release];
    [r24 release];
    [r21 setNotificationObservers];
    goto loc_1008f7814;

loc_1008f7814:
    [r20 release];
    [r19 release];
    return;

loc_1008f7798:
    [r25 setLimitedSDKEnabled:r2];
    [r25 release];
    [r24 release];
    [TJCLog logWithLevel:0x2 format:@"No valid device identifier can be found on this device so it can not use Tapjoy's products. All future calls to Tapjoy will fail with errors."];
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f77ec;

loc_1008f77ec:
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r21 release];
    goto loc_1008f7814;

loc_1008f777c:
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f77ec;

loc_1008f7740:
    [TJCLog logWithLevel:0x2 format:@"The given API key was not for iOS."];
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f77ec;

loc_1008f7704:
    [TJCLog logWithLevel:0x2 format:@"The given API key was invalid."];
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f77ec;
}

-(void)initEventOptimizer {
    [TJEventOptimizer startup];
    return;
}

+(void)requestTapjoyConnect:(void *)arg2 options:(void *)arg3 {
    r31 = r31 - 0x1a0;
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
    var_160 = self;
    var_188 = [arg2 retain];
    r19 = [arg3 retain];
    [TJSdkConfiguration setConnectFlags:r19];
    var_108 = q0;
    var_130 = r19;
    r0 = [r19 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_180 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_1008f6c28;

loc_1008f6904:
    var_178 = 0x0;
    r20 = *var_108;
    goto loc_1008f6914;

loc_1008f6914:
    r28 = 0x0;
    goto loc_1008f6998;

loc_1008f6998:
    if (*var_108 != r20) {
            objc_enumerationMutation(var_120);
    }
    r24 = *(var_110 + r28 * 0x8);
    if (([r24 isKindOfClass:[NSString class]] & 0x1) == 0x0) goto loc_1008f6a68;

loc_1008f69d8:
    r0 = [var_130 objectForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if ([r24 isEqualToString:@"TJC_OPTION_CLEAR_SHARED_URL_CACHE"] == 0x0) goto loc_1008f6a88;

loc_1008f6a08:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r29 = r29;
    r23 = [r0 retain];
    [r23 setShouldClearSharedURLCache:[r26 boolValue]];
    [r23 release];
    r0 = r24;
    goto loc_1008f6bec;

loc_1008f6bec:
    [r0 release];
    goto loc_1008f6bf0;

loc_1008f6bf0:
    [r26 release];
    goto loc_1008f6bf8;

loc_1008f6bf8:
    r28 = r28 + 0x1;
    if (r28 < r25) goto loc_1008f6998;

loc_1008f6c04:
    r25 = objc_msgSend(var_120, var_180);
    if (r25 != 0x0) goto loc_1008f6914;

loc_1008f6c2c:
    [var_120 release];
    r20 = var_188;
    [Tapjoy requestTapjoyConnect:r20];
    r21 = var_178;
    if (r21 != 0x0) {
            [Tapjoy setUserID:r21];
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [var_130 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1008f6a88:
    if ([r24 isEqualToString:@"TJC_OPTION_ENABLE_LOGGING"] == 0x0) goto loc_1008f6abc;

loc_1008f6aa0:
    [var_160 enableLogging:[r26 boolValue]];
    goto loc_1008f6bf0;

loc_1008f6abc:
    if ([r24 isEqualToString:@"TJC_OPTION_DISABLE_GENERIC_ERROR_ALERT"] == 0x0) goto loc_1008f6b20;

loc_1008f6ad4:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 util];
    r29 = r29;
    r24 = [r0 retain];
    [r26 boolValue];
    r0 = r24;
    r1 = @selector(setGenericErrorAlertDisabled:);
    goto loc_1008f6bd8;

loc_1008f6bd8:
    objc_msgSend(r0, r1);
    [r24 release];
    r0 = r23;
    goto loc_1008f6bec;

loc_1008f6b20:
    if ([r24 isEqualToString:@"TJC_OPTION_USER_ID"] == 0x0) goto loc_1008f6b78;

loc_1008f6b38:
    if ([r26 isKindOfClass:[NSString class]] != 0x0) {
            r23 = [r26 retain];
            [var_178 release];
            var_178 = r23;
    }
    goto loc_1008f6bf0;

loc_1008f6b78:
    if ([r24 isEqualToString:@"TJC_OPTION_DISMISS_CONTENT_ALL"] == 0x0) goto loc_1008f6bf0;

loc_1008f6b90:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 util];
    r29 = r29;
    r24 = [r0 retain];
    [r26 boolValue];
    r0 = r24;
    r1 = @selector(setDismissContentAll:);
    goto loc_1008f6bd8;

loc_1008f6a68:
    [TJCLog logWithLevel:0x4 format:@"Incorrect format for Tapjoy option - check the dictionary passed into requestTapjoyConnect method"];
    goto loc_1008f6bf8;

loc_1008f6c28:
    var_178 = 0x0;
    goto loc_1008f6c2c;
}

+(void)requestTapjoyConnect:(void *)arg2 {
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
    r0 = [TJCApiKeyDecoder decoderWithApiKey:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1008f727c;

loc_1008f6d18:
    if ([r20 getKeyUsage] != 0x1) goto loc_1008f72b8;

loc_1008f6d30:
    r0 = [Tapjoy sharedTapjoyConnect];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 checkSupportedSystemVersion];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_1008f72f4;

loc_1008f6d70:
    var_60 = r21;
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    [r0 checkResourceBundleExists];
    [r0 release];
    [r24 release];
    [TJCUtil resetParameters];
    r24 = [[Tapjoy sharedTapjoyConnect] retain];
    r25 = [[r20 getAppID] retain];
    r26 = [[r20 getSecretKey] retain];
    [r24 initConnectWithSdkKey:r19 withAppID:r25 withSecretKey:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 appID] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 secretKey] retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = [[r0 sdkKey] retain];
    [FiveRocks startSession:r26 withAppKey:r28 withSdkApiKey:r21];
    [r21 release];
    [r0 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r24 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setCurrencyMultiplier:r26];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 plugin];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setPlugin:@"native"];
            [r0 release];
    }
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setIsInitialConnect:0x1];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r28 = @selector(util);
    r0 = objc_msgSend(r0, r28);
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getAdvertisingIdentifier];
    r0 = [r0 retain];
    r26 = r0;
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = objc_msgSend(r0, r28);
    r29 = r29;
    r25 = [r0 retain];
    if (r26 == 0x0) goto loc_1008f7310;

loc_1008f70b0:
    [r25 setSDKEnabled:r2];
    [r25 release];
    [r24 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setConnectSuccessWithStoredResult:0x0];
    [r0 release];
    r21 = [[Tapjoy sharedTapjoyConnect] retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = objc_msgSend(r0, r28);
    r0 = [r0 retain];
    r25 = [[r0 genericParametersWithNewSessionID] retain];
    [r21 connectWithType:0x0 withParams:r25 completion:0x0];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:var_60 selector:@selector(deviceNotificationReceived) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:var_60 selector:@selector(exitNotificationReceived) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    [var_60 setNotificationObservers];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    [r0 performSelectorOnMainThread:@selector(initEventOptimizer) withObject:0x0 waitUntilDone:0x1];
    goto loc_1008f7384;

loc_1008f7384:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008f7310:
    [r25 setSDKEnabled:r2];
    [r25 release];
    [r24 release];
    [TJCLog logWithLevel:0x2 format:@"No valid device identifier can be found on this device so it can not use Tapjoy's products. All future calls to Tapjoy will fail with errors."];
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f7364;

loc_1008f7364:
    r0 = [r0 retain];
    r21 = r0;
    [r0 postNotificationName:r2 object:r3];
    goto loc_1008f7384;

loc_1008f72f4:
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f7364;

loc_1008f72b8:
    [TJCLog logWithLevel:0x2 format:@"The given API key was not for iOS."];
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f7364;

loc_1008f727c:
    [TJCLog logWithLevel:0x2 format:@"The given API key was invalid."];
    r0 = [NSNotificationCenter defaultCenter];
    goto loc_1008f7364;
}

+(void)reachabilityChanged:(void *)arg2 {
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
    r0 = [arg2 object];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [TJCNetReachability class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 util];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 netReachability];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            [r22 release];
            if (r0 == r19) {
                    r0 = [Tapjoy sharedTapjoyConnect];
                    r0 = [r0 retain];
                    r21 = [[r0 util] retain];
                    r22 = [[TJCNetReachability getReachabilityType] retain];
                    [r21 setNetReachabilityType:r22];
                    [r22 release];
                    [r21 release];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

+(void)orientationChanged:(void *)arg2 {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 viewController] retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r22 updateViewsWithOrientation:[r0 statusBarOrientation]];
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [self performSelector:@selector(orientationChangedDelay) withObject:0x0 afterDelay:r4];
    return;
}

+(void)orientationChangedDelay {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 viewController] retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r21 updateViewsWithOrientation:[r0 statusBarOrientation]];
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)actionComplete:(void *)arg2 {
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
    if ([TJCUtil checkHasConnected:@"actionComplete"] != 0x0) {
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 util];
            r0 = [r0 retain];
            r21 = [[r0 genericParameters] retain];
            [r0 release];
            [r22 release];
            r22 = [[NSString stringWithString:r19] retain];
            [r21 setObject:r22 forKey:@"app_id"];
            [r22 release];
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            [r0 connectWithType:0x3 withParams:r21 completion:0x0];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void *)getAppID {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = [[r0 appID] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setUserID:(void *)arg2 {
    [self setUserIDWithCompletion:arg2 completion:0x0];
    return;
}

+(void *)getUserID {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = [[r0 userID] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getSecretKey {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = [[r0 secretKey] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setUserIDWithCompletion:(void *)arg2 completion:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setUserID:r19];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 genericParameters];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    [r21 setObject:r19 forKey:@"publisher_user_id"];
    if ([TJCUtil isSDKEnabled] == 0x0) goto loc_1008f7fa8;

loc_1008f7f74:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = r0;
    [r0 connectWithType:0x1 withParams:r21 completion:r20];
    goto loc_1008f8044;

loc_1008f8044:
    [r22 release];
    goto loc_1008f804c;

loc_1008f804c:
    var_48 = **___stack_chk_guard;
    [FiveRocks setUserId:r19];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1008f7fa8:
    if (r20 == 0x0) goto loc_1008f804c;

loc_1008f7fac:
    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
    r22 = [r0 retain];
    (*(r20 + 0x10))(r20, 0x0, [[NSError alloc] initWithDomain:**_NSURLErrorDomain code:0xfffffffffffffc0d userInfo:r22]);
    [r23 release];
    goto loc_1008f8044;
}

+(void)setPlugin:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 checkSupportedSystemVersion];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            [r0 setPlugin:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)setCurrencyMultiplier:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_currencyMultiplier = s8;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [[r0 URLParamsDict] retain];
    [[NSNumber numberWithFloat:arg2] retain];
    [r21 setObject:r2 forKey:r3];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)setCurrencyMultiplier:(float)arg2 {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 setCurrencyMultiplier:arg2];
    [r0 release];
    return;
}

-(float)getCurrencyMultiplier {
    r0 = self;
    return r0;
}

+(float)getCurrencyMultiplier {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    [r0 getCurrencyMultiplier];
    r0 = [r0 release];
    return r0;
}

+(void)enableLogging:(bool)arg2 {
    [TJCLog setPublisherDidEnableLogging:r2];
    [self enableLoggingInternal:arg2];
    return;
}

+(void *)getVersion {
    objc_retainAutorelease(@"12.2.1");
    return @"12.2.1";
}

+(void)enableLoggingInternal:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 stringForKey:@"TJC_SERVER_DEBUG_STATE"];
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == 0x0) {
            if (r19 != 0x0) {
                    [TJCLog setLogThreshold:r2];
            }
            else {
                    [TJCLog setLogThreshold:r2];
            }
            [FiveRocks setDebugEnabled:r2];
    }
    return;
}

+(void)dismissContent {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    [r0 setViewOpen:0x0];
    [r0 release];
    [r19 release];
    return;
}

-(void)dealloc {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_log));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_util));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currencyManager));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoManager));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandler));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

+(void)applicationDidFinishLaunching:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    var_18 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_38);
                    [var_18 release];
            }
    }
    [TJSystemPlacement showAppLaunchContent];
    [r19 release];
    return;
}

+(void)load {
    r20 = objc_autoreleasePoolPush();
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationDidFinishLaunching:) name:**_UIApplicationDidFinishLaunchingNotification object:0x0];
    [r0 release];
    [TJSdkConfiguration loadServerProvidedConfiguration];
    objc_autoreleasePoolPop(r20);
    return;
}

+(bool)isConnected {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 SDKConnected];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)isLimitedConnected {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 limitedSDKConnected];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)getSupportURL {
    r0 = [self getSupportURL:0x0];
    return r0;
}

+(void *)getSupportURL:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    if ([TJCUtil checkHasConnected:@"getSupportURL"] != 0x0) {
            if (r19 == 0x0) {
                    r0 = [r20 getAppID];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 release];
                    r19 = r21;
            }
            r20 = [[r20 getAppID] retain];
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r23 = [[r0 managedDeviceID] retain];
            r24 = [[TJCUtil getLanguage] retain];
            r21 = [[NSString stringWithFormat:@"%@support_requests/new?currency_id=%@&app_id=%@&udid=%@&language_code=%@"] retain];
            [r24 release];
            [r23 release];
            [r0 release];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)getOfferwallURL:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([TJCUtil checkHasConnected:@"getOfferwallURL"] != 0x0) {
            [TJRequestForOfferwallURL startWithPlacementName:r19 completion:r20];
    }
    else {
            var_18 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_38);
            [var_18 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)subjectToGDPR:(bool)arg2 {
    [TJRegulations subjectToGDPR:arg2];
    return;
}

+(void)setUserConsent:(void *)arg2 {
    [TJRegulations setUserConsent:arg2];
    return;
}

+(void)belowConsentAge:(bool)arg2 {
    [TJRegulations setBelowConsentAge:arg2];
    return;
}

+(void *)getUserToken {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([TJCUtil checkHasConnected:@"getUserToken"] != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r19 = [[r0 managedDeviceID] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)setSdkKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)sdkKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sdkKey)), 0x0);
    return r0;
}

-(void *)appID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appID)), 0x0);
    return r0;
}

-(void)setAppID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSecretKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)secretKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_secretKey)), 0x0);
    return r0;
}

-(void)setUserID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userID)), 0x0);
    return r0;
}

-(void *)plugin {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_plugin)), 0x0);
    return r0;
}

-(float)currencyMultiplier {
    r0 = self;
    return r0;
}

-(void)setPlugin:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)appGroupID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appGroupID)), 0x0);
    return r0;
}

-(void)setAppGroupID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)store {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_store)), 0x0);
    return r0;
}

-(void)setStore:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)analyticsApiKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_analyticsApiKey)), 0x0);
    return r0;
}

-(void)setAnalyticsApiKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)managedDeviceID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_managedDeviceID)), 0x0);
    return r0;
}

-(void)setManagedDeviceID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)currencyManager {
    r0 = self->_currencyManager;
    return r0;
}

-(void)setCurrencyManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currencyManager, arg2);
    return;
}

-(void *)videoManager {
    r0 = self->_videoManager;
    return r0;
}

-(void)setVideoManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoManager, arg2);
    return;
}

-(void *)viewHandler {
    r0 = self->_viewHandler;
    return r0;
}

-(void)setViewHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewHandler, arg2);
    return;
}

-(void *)util {
    r0 = self->_util;
    return r0;
}

-(void)setUtil:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_util, arg2);
    return;
}

-(void *)log {
    r0 = self->_log;
    return r0;
}

-(void)setLog:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_log, arg2);
    return;
}

-(void)setLimitedSdkKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)limitedAppID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_limitedAppID)), 0x0);
    return r0;
}

-(void *)limitedSdkKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_limitedSdkKey)), 0x0);
    return r0;
}

-(void)setLimitedAppID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)limitedSecretKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_limitedSecretKey)), 0x0);
    return r0;
}

-(void *)limitedAppGroupID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_limitedAppGroupID)), 0x0);
    return r0;
}

-(void)setLimitedSecretKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLimitedAppGroupID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(void)setData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_data, arg2);
    return;
}

-(int)connectAttempts {
    r0 = *(int32_t *)(int64_t *)&self->_connectAttempts;
    return r0;
}

-(void)setConnectAttempts:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_connectAttempts = arg2;
    return;
}

-(bool)isInitialConnect {
    r0 = *(int8_t *)(int64_t *)&self->_isInitialConnect;
    return r0;
}

-(void)setIsInitialConnect:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isInitialConnect = arg2;
    return;
}

-(bool)isInitialLimitedConnect {
    r0 = *(int8_t *)(int64_t *)&self->_isInitialLimitedConnect;
    return r0;
}

-(void)setIsInitialLimitedConnect:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isInitialLimitedConnect = arg2;
    return;
}

-(void *)URLArray {
    r0 = self->_URLArray;
    return r0;
}

-(void)setURLArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_URLArray, arg2);
    return;
}

-(bool)bManualSessionTracking {
    r0 = *(int8_t *)(int64_t *)&self->_bManualSessionTracking;
    return r0;
}

-(void)setBManualSessionTracking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bManualSessionTracking = arg2;
    return;
}

-(bool)bRetryConnectQueued {
    r0 = *(int8_t *)(int64_t *)&self->_bRetryConnectQueued;
    return r0;
}

-(double)nextBackoff {
    r0 = self;
    return r0;
}

-(void)setBRetryConnectQueued:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bRetryConnectQueued = arg2;
    return;
}

-(void)setNextBackoff:(double)arg2 {
    self->_nextBackoff = d0;
    return;
}

-(bool)connectSuccessWithStoredResult {
    r0 = *(int8_t *)(int64_t *)&self->_connectSuccessWithStoredResult;
    return r0;
}

-(void)setConnectSuccessWithStoredResult:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_connectSuccessWithStoredResult = arg2;
    return;
}

-(void *)defaultViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_defaultViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDefaultViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_defaultViewController, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_defaultViewController);
    objc_storeStrong((int64_t *)&self->_URLArray, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_limitedAppGroupID, 0x0);
    objc_storeStrong((int64_t *)&self->_limitedSecretKey, 0x0);
    objc_storeStrong((int64_t *)&self->_limitedAppID, 0x0);
    objc_storeStrong((int64_t *)&self->_limitedSdkKey, 0x0);
    objc_storeStrong((int64_t *)&self->_log, 0x0);
    objc_storeStrong((int64_t *)&self->_util, 0x0);
    objc_storeStrong((int64_t *)&self->_viewHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_videoManager, 0x0);
    objc_storeStrong((int64_t *)&self->_currencyManager, 0x0);
    objc_storeStrong((int64_t *)&self->_managedDeviceID, 0x0);
    objc_storeStrong((int64_t *)&self->_analyticsApiKey, 0x0);
    objc_storeStrong((int64_t *)&self->_store, 0x0);
    objc_storeStrong((int64_t *)&self->_appGroupID, 0x0);
    objc_storeStrong((int64_t *)&self->_plugin, 0x0);
    objc_storeStrong((int64_t *)&self->_userID, 0x0);
    objc_storeStrong((int64_t *)&self->_secretKey, 0x0);
    objc_storeStrong((int64_t *)&self->_appID, 0x0);
    objc_storeStrong((int64_t *)&self->_sdkKey, 0x0);
    return;
}

+(void)updateViewsWithOrientation:(long long)arg2 {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 viewController];
    r0 = [r0 retain];
    [r0 updateViewsWithOrientation:arg2];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

+(bool)isRetina {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r21 = [r0 isRetina];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void)getCurrencyBalance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([TJCUtil checkHasConnected:@"getCurrencyBalance"] != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 currencyManager];
            r0 = [r0 retain];
            [r0 getCurrencyBalance];
            [r0 release];
    }
    else {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            r19 = r0;
            [r0 postNotificationName:r2 object:r3];
    }
    [r19 release];
    return;
}

+(void)spendCurrency:(int)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if ([TJCUtil checkHasConnected:@"spendCurrency"] != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 currencyManager];
            r0 = [r0 retain];
            [r0 spendCurrency:r19];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:r2 object:r3];
            r0 = r19;
    }
    [r0 release];
    return;
}

+(void)getCurrencyBalanceWithCompletion:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([TJCUtil checkHasConnected:@"getCurrencyWithCompletion"] == 0x0) goto loc_100919e1c;

loc_100919dd0:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 currencyManager];
    r0 = [r0 retain];
    r21 = r0;
    [r0 getCurrencyWithCompletion:r19];
    goto loc_100919ef4;

loc_100919ef4:
    [r21 release];
    [r20 release];
    goto loc_100919f04;

loc_100919f04:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_100919e1c:
    if (r19 == 0x0) goto loc_100919f04;

loc_100919e20:
    r20 = [@(0x0) retain];
    r21 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_58 count:0x3] retain];
    (*(r19 + 0x10))(r19, r21, [[NSError errorWithDomain:**_NSURLErrorDomain code:0xffffffffffffffff userInfo:0x0] retain]);
    [r22 release];
    goto loc_100919ef4;
}

+(void)spendCurrency:(int)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = [arg3 retain];
    if ([TJCUtil checkHasConnected:@"spendCurrency:completion"] == 0x0) goto loc_10091a0c4;

loc_10091a068:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 currencyManager];
    r0 = [r0 retain];
    [r0 spendCurrency:r20 completion:r19];
    [r0 release];
    r0 = r21;
    goto loc_10091a1a8;

loc_10091a1a8:
    [r0 release];
    goto loc_10091a1ac;

loc_10091a1ac:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10091a0c4:
    if (r19 == 0x0) goto loc_10091a1ac;

loc_10091a0c8:
    [@(0x0) retain];
    (*(r19 + 0x10))(r19, [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_58 count:0x3] retain], [[NSError errorWithDomain:**_NSURLErrorDomain code:0xffffffffffffffff userInfo:0x0] retain]);
    [r22 release];
    [r21 release];
    r0 = r20;
    goto loc_10091a1a8;
}

+(void)awardCurrency:(int)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if ([TJCUtil checkHasConnected:@"awardCurrency"] != 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 currencyManager];
            r0 = [r0 retain];
            [r0 awardCurrency:r19];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 postNotificationName:r2 object:r3];
            r0 = r19;
    }
    [r0 release];
    return;
}

+(void)showDefaultEarnedCurrencyAlert {
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"TJC_POINTS_DELTA_KEY_NAME"];
    r0 = [r0 retain];
    r23 = r0;
    [r0 intValue];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    r22 = [[r0 objectForKey:@"TJC_CURRENCY_KEY_NAME"] retain];
    r20 = [[NSString stringWithFormat:@"You've just earned %d %@!"] retain];
    [r22 release];
    [r0 release];
    [r23 release];
    [r19 release];
    r0 = [UIAlertView alloc];
    r0 = [r0 initWithTitle:@"Congratulations!" message:r20 delegate:0x0 cancelButtonTitle:@"OK" otherButtonTitles:0x0];
    [r0 show];
    [r0 release];
    [r20 release];
    return;
}

+(void)awardCurrency:(int)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = [arg3 retain];
    if ([TJCUtil checkHasConnected:@"awardCurrency:completion"] == 0x0) goto loc_10091a36c;

loc_10091a310:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 currencyManager];
    r0 = [r0 retain];
    [r0 awardCurrency:r20 completion:r19];
    [r0 release];
    r0 = r21;
    goto loc_10091a450;

loc_10091a450:
    [r0 release];
    goto loc_10091a454;

loc_10091a454:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10091a36c:
    if (r19 == 0x0) goto loc_10091a454;

loc_10091a370:
    [@(0x0) retain];
    (*(r19 + 0x10))(r19, [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_58 count:0x3] retain], [[NSError errorWithDomain:**_NSURLErrorDomain code:0xffffffffffffffff userInfo:0x0] retain]);
    [r22 release];
    [r21 release];
    r0 = r20;
    goto loc_10091a450;
}

+(void)setVideoAdDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 videoManager];
    r0 = [r0 retain];
    [r0 setVideoAdDelegate:r21];
    [r21 release];
    [r0 release];
    [r19 release];
    return;
}

@end