@implementation VungleRequestAdController

-(void *)initWithBaseURL:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x10, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithDelegate:(void *)arg2 delegateQueue:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r21 + 0x10, r19);
            if (r20 != 0x0) {
                    r23 = 0x0;
                    r22 = r20;
            }
            else {
                    r22 = [[VungleRequestAdController serialQueue] retain];
                    r23 = 0x1;
            }
            objc_storeStrong(r21 + 0x18, r22);
            if (r23 != 0x0) {
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)requestAdWithPlacement:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"Ads request operation beginning." level:0xf4240 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r20 = [[VNGNetworkManager sharedManager] retain];
    r19 = [[self requestAdOperationWithPlacement:r22] retain];
    [r22 release];
    [r20 sendVungleOperation:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)requestAdOperationWithPlacement:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[VNGNetworkManager sharedManager] retain];
    [self isHeaderBiddingEnabled];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    r0 = [r21 retain];
    [[r19 adsOperationWithPlacement:r0 headerBiddingEnabled:r22 complete:&var_58] retain];
    [r19 release];
    [r0 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)adsOperationCompletionBlockWithPlacement:(void *)arg2 networkResponse:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0xf0;
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
    r21 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [arg4 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 description];
            r0 = [r0 retain];
            r23 = [[NSString stringWithFormat:@"Ads operation failed with error: %@"] retain];
            [r0 release];
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:r23 level:0xf4243 context:@"SDK Ad Lifecycle"];
            [r0 release];
            r24 = [[r21 delegateQueue] retain];
            [r22 retain];
            var_58 = [r20 retain];
            dispatch_async(r24, &var_88);
            [r24 release];
            [var_58 release];
            [r22 release];
            [r21 release];
            r0 = r23;
    }
    else {
            [@"Ads request operation completed" retain];
            r24 = [r21 validateRequestAd:r19 withError:&var_90];
            r23 = [var_90 retain];
            if (r24 != 0x0) {
                    r0 = [r21 adUnitWithValidResponse:r19 error:&var_98];
                    r29 = r29;
                    r25 = [r0 retain];
                    r24 = [var_98 retain];
                    if (r25 != 0x0) {
                            [r22 setAdUnit:r25];
                            r26 = [[VungleLogger sharedLogger] retain];
                            r27 = @class(VungleLogger);
                            r28 = [[r25 appId] retain];
                            r0 = [r27 eventIDFromAppID:r28];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r26 setEventID:r27];
                            [r27 release];
                            [r28 release];
                            [r26 release];
                    }
                    [r25 release];
            }
            else {
                    r24 = [r23 retain];
            }
            if (r24 != 0x0) {
                    r26 = 0xf4243;
                    r27 = [[NSString stringWithFormat:@" with error: %@"] retain];
                    r0 = [@"Ads request operation completed" stringByAppendingString:r27];
                    r29 = r29;
                    r25 = [r0 retain];
                    [@"Ads request operation completed" release];
                    [r27 release];
            }
            else {
                    r26 = 0xf4240;
                    r25 = @"Ads request operation completed";
            }
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:r25 level:r26 context:@"SDK Ad Lifecycle"];
            [r0 release];
            r26 = [[r21 delegateQueue] retain];
            var_A8 = r22;
            [r22 retain];
            [r24 retain];
            dispatch_async(r26, &var_D0);
            [r26 release];
            [r24 release];
            [var_A8 release];
            [r25 release];
            [r23 release];
            [r22 release];
            r0 = r21;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)isBundleExpired:(void *)arg2 referenceDate:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r2 = @"expiry";
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r21 = r0;
            [r0 longLongValue];
            [r21 release];
            r0 = @class(NSDate);
            asm { scvtf      d0, x22 };
            r0 = [r0 dateWithTimeIntervalSince1970:r2];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 compare:r20] == -0x1) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setPreferenceValue:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = objc_alloc();
    r0 = [r0 initWithSuiteName:@"com.vungle.ads"];
    [r0 setObject:arg2 forKey:r19];
    [r19 release];
    [r21 release];
    [r0 synchronize];
    [r22 release];
    return;
}

-(void *)getPreferenceValueForKey:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_alloc();
    r0 = [r0 initWithSuiteName:@"com.vungle.ads"];
    r21 = [[r0 objectForKey:r2] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)resetInterstitialMRAIDAd:(void *)arg2 {
    r21 = [arg2 retain];
    [arg2 setViewed:0x0];
    [arg2 setState:0x0];
    [r21 release];
    return;
}

-(bool)isResponseSuccessful:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 hasSuccessfulHTTPStatus];
    if (r20 == 0x0 || r0 != 0x0) goto loc_100621c48;

loc_100621c18:
    r0 = [NSError errorWithDomain:@"com.vungle.requestAdController" code:0xffffffffffff2b44 userInfo:0x0];
    goto loc_100621c94;

loc_100621c94:
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r21 = 0x0;
    *r20 = r0;
    goto loc_100621ca4;

loc_100621ca4:
    [r19 release];
    r0 = r21;
    return r0;

loc_100621c48:
    r0 = [r19 hasHTTPData];
    r21 = 0x1;
    if (r20 == 0x0) goto loc_100621ca4;

loc_100621c60:
    r21 = 0x1;
    if (r0 != 0x0) goto loc_100621ca4;

loc_100621c64:
    r0 = [NSError errorWithDomain:@"com.vungle.requestAdController" code:0xffffffffffff2b45 userInfo:0x0];
    goto loc_100621c94;
}

-(bool)placement:(void *)arg2 shouldSleep:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 doubleValue];
            if (d0 != 0x0) {
                    [[NSDate date] retain];
                    [r20 doubleValue];
                    r22 = [[r23 dateByAddingTimeInterval:r2] retain];
                    [r23 release];
                    r23 = [[r21 delegateQueue] retain];
                    [r22 retain];
                    var_38 = [r19 retain];
                    dispatch_async(r23, &var_68);
                    [r23 release];
                    [var_38 release];
                    [r22 release];
                    [r21 release];
                    r21 = 0x1;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)adUnitWithValidResponse:(void *)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r22 = [[arg2 data] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r22 options:0x0 error:&var_58];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_58 retain];
    [r22 release];
    if (r20 != 0x0) {
            if (r21 != 0x0) {
                    r0 = [r20 copy];
                    r0 = [r0 autorelease];
                    r25 = 0x0;
                    *r21 = r0;
            }
            else {
                    r25 = 0x0;
            }
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"ads"];
            r0 = [r0 retain];
            r22 = [[r0 objectAtIndexedSubscript:0x0] retain];
            [r0 release];
            r25 = [[r22 objectForKeyedSubscript:@"ad_markup"] retain];
            r0 = [VungleAd decorateDictionary:r25 withError:&var_60];
            r29 = r29;
            r24 = [r0 retain];
            r23 = [var_60 retain];
            [r25 release];
            if (r24 != 0x0) {
                    r0 = [VungleAdFactory vungleAdWithBody:r24 error:&var_68];
                    r26 = [r0 retain];
                    r0 = [var_68 retain];
                    r27 = r0;
                    if (r0 != 0x0) {
                            if (r21 != 0x0) {
                                    r0 = [r27 copy];
                                    r0 = [r0 autorelease];
                                    r25 = 0x0;
                                    *r21 = r0;
                            }
                            else {
                                    r25 = 0x0;
                            }
                    }
                    else {
                            r25 = [r26 retain];
                    }
                    [r26 release];
                    [r27 release];
            }
            else {
                    if (r21 != 0x0) {
                            r0 = [r20 copy];
                            r0 = [r0 autorelease];
                            r25 = 0x0;
                            *r21 = r0;
                    }
                    else {
                            r25 = 0x0;
                    }
            }
            [r24 release];
            [r22 release];
            [r23 release];
    }
    [r19 release];
    [r20 release];
    r0 = [r25 autorelease];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

+(void *)serialQueue {
    r0 = [NSString stringWithFormat:@"%@.queue"];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = dispatch_queue_create([r0 UTF8String], 0x0);
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)delegateQueue {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setDelegateQueue:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(bool)validateRequestAd:(void *)arg2 withError:(void * *)arg3 {
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
    r29 = &saved_fp;
    r23 = arg3;
    r26 = self;
    r19 = [arg2 retain];
    r21 = [r26 isResponseSuccessful:r19 error:&var_90];
    r20 = [var_90 retain];
    if (r21 == 0x0) goto loc_100622244;

loc_100622158:
    r24 = [[r19 data] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r24 options:0x0 error:&var_98];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [var_98 retain];
    [r24 release];
    if (r21 == 0x0) goto loc_10062225c;

loc_1006221c0:
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r25 = [[r21 objectForKeyedSubscript:r2] retain];
            r0 = [NSArray arrayWithArray:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
    }
    else {
            r24 = [**___NSArray0__ retain];
    }
    if ([r24 count] == 0x0) goto loc_100622428;

loc_1006222fc:
    var_A8 = r24;
    var_A0 = r22;
    r0 = [r24 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r24 = r0;
    r27 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [NSDate date];
    r29 = r29;
    r22 = [r0 retain];
    r25 = [r26 isBundleExpired:r27 referenceDate:r22];
    [r22 release];
    [r27 release];
    if (r25 == 0x0) goto loc_100622430;

loc_10062238c:
    r27 = r24;
    if (r23 != 0x0) {
            r22 = objc_alloc();
            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
            r25 = [r0 retain];
            *r23 = [[r22 initWithDomain:@"com.vungle.requestAdController" code:0xffffffffffff2b40 userInfo:r25] autorelease];
            [r25 release];
    }
    r26 = 0x0;
    r24 = var_A8;
    r22 = var_A0;
    goto loc_1006226b4;

loc_1006226b4:
    [r27 release];
    goto loc_1006226bc;

loc_1006226bc:
    [r24 release];
    goto loc_1006226c4;

loc_1006226c4:
    [r21 release];
    [r22 release];
    goto loc_1006226d4;

loc_1006226d4:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r26;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100622430:
    r0 = [r24 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r25 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    var_B0 = r25;
    r25 = [r26 placement:r22 shouldSleep:r25];
    [r22 release];
    if (r25 == 0x0) goto loc_1006225b4;

loc_1006224c0:
    r27 = r24;
    if (r23 != 0x0) {
            r0 = [r27 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = [[NSString stringWithFormat:@"Response SDK is sleeping for placement: %@"] retain];
            [r0 release];
            r25 = objc_alloc();
            r0 = [NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1];
            r26 = [r0 retain];
            *r23 = [[r25 initWithDomain:@"com.vungle.requestAdController" code:0xffffffffffff2b41 userInfo:r26] autorelease];
            [r26 release];
            [r22 release];
    }
    r26 = 0x0;
    goto loc_100622608;

loc_100622608:
    r24 = var_A8;
    goto loc_1006226a8;

loc_1006226a8:
    [var_B0 release];
    r22 = var_A0;
    goto loc_1006226b4;

loc_1006225b4:
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    r22 = [VungleUtil isValidBundleDictionary:r25];
    [r25 release];
    r27 = r24;
    if ((r22 & 0x1) == 0x0) goto loc_100622610;

loc_100622604:
    r26 = 0x1;
    goto loc_100622608;

loc_100622610:
    r24 = var_A8;
    if (r23 != 0x0) {
            r22 = objc_alloc();
            r0 = [NSDictionary dictionaryWithObjects:&stack[-144] forKeys:&var_88 count:0x1];
            r25 = [r0 retain];
            *r23 = [[r22 initWithDomain:@"com.vungle.requestAdController" code:0xffffffffffff2b43 userInfo:r25] autorelease];
            [r25 release];
    }
    r26 = 0x0;
    goto loc_1006226a8;

loc_100622428:
    r26 = 0x0;
    goto loc_1006226bc;

loc_10062225c:
    if (r23 != 0x0) {
            r24 = objc_alloc();
            r25 = [[r22 userInfo] retain];
            *r23 = [[r24 initWithDomain:@"com.vungle.requestAdController" code:0xffffffffffff2b42 userInfo:r25] autorelease];
            [r25 release];
    }
    r26 = 0x0;
    goto loc_1006226c4;

loc_100622244:
    if (r23 != 0x0) {
            r0 = objc_retainAutorelease(r20);
            r26 = 0x0;
            *r23 = r0;
    }
    else {
            r26 = 0x0;
    }
    goto loc_1006226d4;
}

-(bool)isHeaderBiddingEnabled {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setHeaderBiddingEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)bundle {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setBundle:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end