@implementation MPAdServerCommunicator

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_38 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x10, r19);
            r0 = [NSArray arrayWithObjects:&var_28 count:0x2];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
    }
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dealloc {
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadURL:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isRateLimited] == 0x0) goto loc_1004a67e4;

loc_1004a67ac:
    r21 = [[NSError tooManyRequests] retain];
    [r20 didFailWithError:r21];
    goto loc_1004a69b4;

loc_1004a69b4:
    [r21 release];
    goto loc_1004a69d0;

loc_1004a69d0:
    [r19 release];
    return;

loc_1004a67e4:
    [r20 cancel];
    [r20 removeAllMoPubCookies];
    r0 = [MoPub sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isSdkInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_1004a69c0;

loc_1004a6840:
    r21 = [objc_alloc() initWithURL:r19];
    r23 = [[MPLogEvent adRequestedWithRequest:r21] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
    [r23 release];
    objc_initWeak(&stack[-104], r20);
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
    r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r21 responseHandler:&var_80 errorHandler:&var_A8];
    r24 = [r0 retain];
    [r20 setTask:r24];
    [r24 release];
    [r20 setLoading:0x1];
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    goto loc_1004a69b4;

loc_1004a69c0:
    [r20 failLoadForSDKInit];
    goto loc_1004a69d0;
}

-(void)sendBeforeLoadUrlWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 beforeLoadURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 beforeLoadURL] retain];
            r22 = [[MPURLRequest requestWithURL:r21] retain];
            [r21 release];
            r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r22 responseHandler:&stack[-88] errorHandler:&var_70];
            [[r0 retain] release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)cancel {
    [self setLoading:0x0];
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    [self setTask:0x0];
    return;
}

-(void)sendAfterLoadUrlWithConfiguration:(void *)arg2 adapterLoadDuration:(double)arg3 adapterLoadResult:(unsigned long long)arg4 {
    r31 = r31 - 0x1b0;
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
    r19 = self;
    r0 = [arg2 afterLoadUrlsWithLoadDuration:arg3 loadResult:r3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A0 = r1;
    var_198 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_120;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_120 != r27) {
                                    objc_enumerationMutation(var_198);
                            }
                            r26 = [[MPURLRequest requestWithURL:*(var_128 + r28 * 0x8)] retain];
                            r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r2 responseHandler:r3 errorHandler:r4];
                            r29 = r29;
                            [[r0 retain] release];
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = objc_msgSend(var_198, var_1A0);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [var_198 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isRateLimited {
    r20 = [[MPRateLimitManager sharedInstance] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 adUnitIDForAdServerCommunicator:self] retain];
    r22 = [r20 isRateLimitedForAdUnitId:r19];
    [r19 release];
    [r0 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)failLoadForSDKInit {
    r20 = [[NSError adLoadFailedBecauseSdkNotInitialized] retain];
    r22 = [[MPLogEvent error:r20 message:0x0] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [self didFailWithError:r20];
    [r20 release];
    return;
}

-(void)didFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    [self setLoading:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 communicatorDidFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)errorForStatusCode:(long long)arg2 {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r22 = [[r0 localizedStringForKey:@"MoPub returned status code %d." value:@"" table:0x0] retain];
    r20 = [[NSString stringWithFormat:r22] retain];
    [r22 release];
    [r0 release];
    r21 = [[NSDictionary dictionaryWithObject:r20 forKey:**_NSLocalizedDescriptionKey] retain];
    r19 = [[NSError errorWithDomain:@"mopub.com" code:arg2 userInfo:r21] retain];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)handleAdResponseOverrides:(void *)arg2 {
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
    r0 = [self handleConsentOverrides:arg2];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:*0x100e7f588];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0 && [r21 boolValue] != 0x0) {
            r23 = @class(MPLogging);
            r25 = [[NSString stringWithFormat:@"Debug logging enabled"] retain];
            r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
            [r23 logEvent:r24 source:0x0 fromClass:[r22 class]];
            [r24 release];
            [r25 release];
            [MPLogging setConsoleLogLevel:0x14];
            [r19 setObject:0x0 forKeyedSubscript:*0x100e7f588];
    }
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getFlattenJsonResponses:(void *)arg2 keys:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1f0;
    r19 = [arg2 retain];
    var_218 = [arg3 retain];
    var_1E8 = r19;
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            var_220 = [NSMutableArray new];
            var_190 = q0;
            var_238 = r19;
            r0 = [r19 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_230 = r0;
            var_1F0 = r1;
            r0 = objc_msgSend(r0, r1);
            var_200 = r0;
            if (r0 != 0x0) {
                    var_228 = *var_190;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_190 != var_228) {
                                            objc_enumerationMutation(var_230);
                                    }
                                    var_1F8 = r19;
                                    r21 = *(var_198 + r19 * 0x8);
                                    r20 = [r21 mutableCopy];
                                    r0 = [r21 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r26 = [r0 mutableCopy];
                                    [r20 setObject:r26 forKeyedSubscript:@"metadata"];
                                    [r26 release];
                                    [r0 release];
                                    var_1D0 = q0;
                                    r0 = [var_218 retain];
                                    r21 = r0;
                                    r0 = objc_msgSend(r0, var_1F0);
                                    if (r0 != 0x0) {
                                            r26 = r0;
                                            r27 = *var_1D0;
                                            do {
                                                    r19 = 0x0;
                                                    do {
                                                            if (*var_1D0 != r27) {
                                                                    objc_enumerationMutation(r21);
                                                            }
                                                            r24 = *(var_1D8 + r19 * 0x8);
                                                            r28 = [[var_1E8 objectForKeyedSubscript:r2] retain];
                                                            r0 = [r20 objectForKeyedSubscript:r2];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 setObject:r28 forKeyedSubscript:r24];
                                                            [r0 release];
                                                            [r28 release];
                                                            r19 = r19 + 0x1;
                                                    } while (r19 < r26);
                                                    r0 = objc_msgSend(r21, var_1F0);
                                                    r26 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [r21 release];
                                    [var_220 addObject:r2];
                                    [r20 release];
                                    r19 = var_1F8 + 0x1;
                            } while (r19 < var_200);
                            r0 = objc_msgSend(var_230, var_1F0);
                            var_200 = r0;
                    } while (r0 != 0x0);
            }
            [var_230 release];
            r19 = var_238;
    }
    else {
            var_220 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    [var_218 release];
    [var_1E8 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_220 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(bool)loading {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setLoading:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)task {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)responseHeaders {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setResponseHeaders:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)didFinishLoadingWithData:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r28 = self;
    r21 = [arg2 retain];
    r0 = [r28 delegate];
    r0 = [r0 retain];
    r23 = [[r0 adUnitIDForAdServerCommunicator:r28] retain];
    [r0 release];
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 setAdUnitIdUsedForConsent:r23 isKnownGood:0x1];
    [r0 release];
    r0 = [NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:&saved_fp - 0xe8];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [0x0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_1004a74c4;

loc_1004a7420:
    r25 = [[NSError adResponseFailedToParseWithError:r24] retain];
    r22 = [[MPLogEvent error:r25 message:0x0] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r28 class]];
    [r22 release];
    [r28 didFailWithError:r25];
    r26 = r19;
    goto loc_1004a7b1c;

loc_1004a7b1c:
    var_60 = **___stack_chk_guard;
    [r25 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1004a74c4:
    r22 = [[MPLogEvent adRequestReceivedResponse:r19] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r28 class]];
    [r22 release];
    r26 = [[r28 handleAdResponseOverrides:r19] retain];
    [r19 release];
    r19 = [[r28 topLevelJsonKeys] retain];
    r0 = [r28 getFlattenJsonResponses:r26 keys:r19];
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    if (r25 == 0x0) goto loc_1004a7a88;

loc_1004a75a4:
    var_1F0 = r26;
    var_1E0 = r24;
    var_1D8 = r23;
    var_1D0 = r21;
    r0 = [NSMutableArray arrayWithCapacity:[r25 count]];
    r29 = r29;
    var_1B8 = [r0 retain];
    var_120 = q0;
    var_1E8 = r25;
    r0 = [r25 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r0;
    var_1C0 = r1;
    r0 = objc_msgSend(r0, r1);
    r20 = @selector(class);
    r23 = @selector(logEvent:source:fromClass:);
    var_140 = r0;
    if (r0 == 0x0) goto loc_1004a7930;

loc_1004a7638:
    var_150 = *var_120;
    var_198 = r28;
    goto loc_1004a7648;

loc_1004a7648:
    r22 = 0x0;
    goto loc_1004a76a0;

loc_1004a76a0:
    if (*var_120 != var_150) {
            objc_enumerationMutation(var_170);
    }
    r25 = *(var_128 + r22 * 0x8);
    r19 = [[r25 objectForKeyedSubscript:@"metadata"] retain];
    r0 = [r25 objectForKeyedSubscript:@"content"];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 dataUsingEncoding:0x4];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    if (r19 == 0x0 || [r19 count] == 0x0) goto loc_1004a77ac;

loc_1004a773c:
    r21 = objc_alloc();
    r0 = [r28 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r21 initWithMetadata:r19 data:r24 adType:[r0 adTypeForAdServerCommunicator:r28]];
    [r0 release];
    if (r26 == 0x0) goto loc_1004a7854;

loc_1004a7798:
    [var_1B8 addObject:r26];
    r20 = @selector(class);
    goto loc_1004a7824;

loc_1004a7824:
    [r26 release];
    [r24 release];
    [r19 release];
    r22 = r22 + 0x1;
    if (r22 < var_140) goto loc_1004a76a0;

loc_1004a7850:
    r0 = objc_msgSend(var_170, var_1C0);
    var_140 = r0;
    if (r0 != 0x0) goto loc_1004a7648;

loc_1004a7930:
    [var_170 release];
    r26 = var_1F0;
    r0 = [r26 objectForKeyedSubscript:*0x100e7f568];
    r0 = [r0 retain];
    r20 = [r0 integerValue];
    [r0 release];
    r19 = [[r26 objectForKeyedSubscript:*0x100e7f570] retain];
    r21 = [[MPRateLimitManager sharedInstance] retain];
    r0 = [r28 delegate];
    r0 = [r0 retain];
    r23 = [[r0 adUnitIDForAdServerCommunicator:r2] retain];
    [r21 setRateLimitTimerWithAdUnitId:r23 milliseconds:r20 reason:r19];
    [r23 release];
    [r0 release];
    [r21 release];
    [r28 setLoading:0x0];
    r0 = [r28 delegate];
    r0 = [r0 retain];
    r22 = var_1B8;
    [r0 communicatorDidReceiveAdConfigurations:r22];
    [r0 release];
    [r19 release];
    r23 = var_1D8;
    r21 = var_1D0;
    r25 = var_1E8;
    r24 = var_1E0;
    goto loc_1004a7b14;

loc_1004a7b14:
    [r22 release];
    goto loc_1004a7b1c;

loc_1004a7854:
    var_1A8 = [[r25 objectForKeyedSubscript:@"content"] retain];
    [[NSString stringWithFormat:@"Failed to generate configuration from\nmetadata:\n%@\nbody:\n%@"] retain];
    r0 = [MPLogEvent eventWithMessage:r2 level:r3];
    r29 = r29;
    [r0 retain];
    r20 = @selector(class);
    objc_msgSend(var_198, r20);
    objc_msgSend(@class(MPLogging), r23);
    [r21 release];
    r0 = r28;
    r28 = var_198;
    [r0 release];
    r0 = var_1A8;
    goto loc_1004a7820;

loc_1004a7820:
    [r0 release];
    goto loc_1004a7824;

loc_1004a77ac:
    r26 = [[NSString stringWithFormat:@"The metadata field is either non-existent or empty"] retain];
    r0 = [MPLogEvent eventWithMessage:r2 level:r3];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r28, r20);
    objc_msgSend(@class(MPLogging), r23);
    r0 = r21;
    goto loc_1004a7820;

loc_1004a7a88:
    r22 = [[NSError adResponsesNotFound] retain];
    [[MPLogEvent error:r22 message:0x0] retain];
    [r28 class];
    [r19 logEvent:r2 source:r3 fromClass:r4];
    [r20 release];
    [r28 didFailWithError:r22];
    goto loc_1004a7b14;
}

-(void *)topLevelJsonKeys {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setTopLevelJsonKeys:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

-(void *)handleConsentOverrides:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
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
    if (r2 != 0x0) {
            r19 = [r2 retain];
            r25 = [[MPConsentManager sharedManager] retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            var_70 = r0;
            var_7C = [r0 boolValue];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r27 = r0;
            r21 = [r0 boolValue];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 boolValue];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r24 = [r0 boolValue];
            r28 = [[r19 objectForKeyedSubscript:*0x100e7f5e0] retain];
            [r25 forceStatusShouldForceExplicitNo:var_7C shouldInvalidateConsent:r21 shouldReacquireConsent:r22 shouldForceGDPRApplicability:r24 consentChangeReason:r28 shouldBroadcast:0x1];
            [r28 release];
            [r0 release];
            [r20 release];
            [r27 release];
            [var_70 release];
            [r25 release];
            r20 = [r19 mutableCopy];
            [r19 release];
            [r20 setObject:0x0 forKeyedSubscript:*0x100e7f5f0];
            [r20 setObject:0x0 forKeyedSubscript:*0x100e7f5f8];
            [r20 setObject:0x0 forKeyedSubscript:*0x100e7f600];
            [r20 setObject:0x0 forKeyedSubscript:*0x100e7f5b8];
            [r20 setObject:0x0 forKeyedSubscript:*0x100e7f5e0];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)removeAllMoPubCookies {
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
    r20 = [[MPAPIEndpoints baseURL] retain];
    r19 = [[NSURL URLWithString:r20] retain];
    [r20 release];
    r0 = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    r0 = [r0 retain];
    r21 = r0;
    var_128 = r19;
    r0 = [r0 cookiesForURL:r19];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    var_110 = q0;
    r0 = [r22 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [NSHTTPCookieStorage sharedHTTPCookieStorage];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 deleteCookie:r2];
                            [r26 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r21 release];
    [var_128 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

@end