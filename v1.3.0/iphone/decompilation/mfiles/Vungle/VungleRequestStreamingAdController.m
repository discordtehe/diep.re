@implementation VungleRequestStreamingAdController

-(void *)initWithPublisherInformation:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(r20 + 0x8) = 0x1;
            objc_storeWeak(r20 + 0x18, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendStreamingAdRequestWithPlacement:(void *)arg2 playOptions:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [r21 internalShouldStream];
    r24 = [[VungleLogger sharedLogger] retain];
    r25 = @class(VungleLogger);
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r27 = [[r0 appId] retain];
    r25 = [[r25 eventIDFromAppID:r27] retain];
    [r24 setEventID:r25];
    [r25 release];
    [r27 release];
    [r0 release];
    [r24 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if ((r22 & 0x1) != 0x0) {
            [r23 logMessage:r2 level:r3 context:r4];
            [r23 release];
            objc_initWeak(&stack[-104], r21);
            [[VNGNetworkManager sharedManager] retain];
            r0 = [r19 retain];
            var_68 = r0;
            objc_copyWeak(&var_88 + 0x28, &stack[-104]);
            r0 = [r21 requestStreamingAdOperationWithPlacement:r23 playOptions:r20 complete:&var_88];
            r23 = [r0 retain];
            [r21 sendVungleOperation:r23];
            [r23 release];
            objc_destroyWeak(&var_88 + 0x28);
            [var_68 release];
            [r21 release];
            objc_destroyWeak(&stack[-104]);
    }
    else {
            [r23 logMessage:r2 level:r3 context:r4];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setShouldStream:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)invalidResponseError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungleSDK.VungleRequestStreamingAdController" code:0xffffffffffff2683 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)sendErrorForPlacement:(void *)arg2 error:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(streamingAdControllerFailedToLoadStreamingAdForPlacement:error:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 streamingAdControllerFailedToLoadStreamingAdForPlacement:r19 error:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)createStreamingAdWithJSONResponse:(void *)arg2 networkResponse:(void *)arg3 {
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
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"shouldStream"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    if (r22 != 0x0 && [VungleUtil isValidBundleDictionary:r19] != 0x0) {
            r0 = [VungleAd decorateDictionary:r19 withError:&var_58];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [var_58 retain];
            r23 = r23 + 0x18;
            r0 = objc_loadWeakRetained(r23);
            r26 = [r0 respondsToSelector:@selector(streamingAdControllerDidValidateCTA:)];
            [r0 release];
            if (r26 != 0x0) {
                    r25 = [VungleUtil isValidURLForKey:@"callToActionDest" inDictionary:r19];
                    r0 = objc_loadWeakRetained(r23);
                    [r0 streamingAdControllerDidValidateCTA:r25];
                    [r0 release];
            }
            r23 = [objc_alloc() initWithDictionary:r21];
            r0 = [r21 objectForKeyedSubscript:@"delay"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:@"delay"];
                    r0 = [r0 retain];
                    [r23 setPreventPlayDelay:[r0 intValue]];
                    [r0 release];
            }
            [r21 release];
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)publisherInformation {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)noResponseError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungleSDK.VungleRequestStreamingAdController" code:0xffffffffffff2685 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)handleRequestStreamingAd:(void *)arg2 placement:(void *)arg3 {
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
    r28 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    [@"" retain];
    var_60 = r19;
    if (r19 == 0x0) goto loc_10062a4fc;

loc_10062a2d8:
    if ([r19 hasSuccessfulHTTPStatus] == 0x0 || [r19 hasHTTPData] == 0x0) goto loc_10062a4e8;

loc_10062a308:
    r24 = [[r19 data] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r24 options:0x0 error:&var_58];
    r29 = r29;
    r26 = [r0 retain];
    r23 = [var_58 retain];
    [r24 release];
    if (r26 != 0x0 && r23 == 0x0) {
            var_68 = r27;
            r0 = [r26 objectForKeyedSubscript:@"ad"];
            r0 = [r0 retain];
            r25 = [[r0 objectForKeyedSubscript:@"ad_markup"] retain];
            [r26 release];
            [r0 release];
            r0 = [r28 createStreamingAdWithJSONResponse:r25 networkResponse:r19];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r26 = r0;
                    r0 = [r0 adToken];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    var_70 = r25;
                    if (r0 != 0x0) {
                            r27 = [[r26 adToken] retain];
                            r0 = [NSNull null];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = r28;
                            r25 = [r27 isEqual:r2];
                            r28 = r22;
                            [r0 release];
                            [r27 release];
                            [r24 release];
                            if (r25 == 0x0) {
                                    r21 = 0xf4240;
                                    r24 = @"Request streaming ad successful.";
                                    [r24 retain];
                                    [@"" release];
                                    r27 = var_68;
                                    [r27 setAdUnit:r26];
                                    [r27 setState:0x2];
                                    [r26 release];
                            }
                            else {
                                    r0 = [r28 invalidResponseError];
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = [r0 localizedDescription];
                                    r0 = [r0 retain];
                                    r24 = [[NSString stringWithFormat:@"Error requesting streaming ad. Invalid response. Error: %@"] retain];
                                    [@"" release];
                                    [r0 release];
                                    [r27 release];
                                    r0 = [r28 invalidResponseError];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    r22 = r28;
                                    r27 = var_68;
                                    [r28 sendErrorForPlacement:r27 error:r25];
                                    [r25 release];
                                    [r26 release];
                                    r21 = 0xf4243;
                            }
                    }
                    else {
                            [r24 release];
                            r0 = [r28 invalidResponseError];
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 localizedDescription];
                            r0 = [r0 retain];
                            r24 = [[NSString stringWithFormat:@"Error requesting streaming ad. Invalid response. Error: %@"] retain];
                            [@"" release];
                            [r0 release];
                            [r27 release];
                            r0 = [r28 invalidResponseError];
                            r29 = r29;
                            r25 = [r0 retain];
                            r22 = r28;
                            r27 = var_68;
                            [r28 sendErrorForPlacement:r27 error:r25];
                            [r25 release];
                            [r26 release];
                            r21 = 0xf4243;
                    }
                    r25 = var_70;
            }
            else {
                    r0 = [r28 invalidResponseError];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 localizedDescription];
                    r0 = [r0 retain];
                    r24 = [[NSString stringWithFormat:@"Error requesting streaming ad. Invalid response. Error: %@"] retain];
                    [@"" release];
                    [r0 release];
                    [r27 release];
                    r0 = [r28 invalidResponseError];
                    r29 = r29;
                    r26 = [r0 retain];
                    r22 = r28;
                    r27 = var_68;
                    [r28 sendErrorForPlacement:r27 error:r26];
                    [r26 release];
                    r21 = 0xf4243;
            }
    }
    else {
            if (r23 != 0x0) {
                    r25 = [[r23 localizedDescription] retain];
                    r0 = [NSString stringWithFormat:@"Error requesting streaming ad - error: %@"];
                    r29 = r29;
                    r24 = [r0 retain];
                    [@"" release];
                    [r25 release];
                    r22 = r28;
                    [r28 sendErrorForPlacement:r27 error:r23];
                    r21 = 0xf4243;
            }
            else {
                    r22 = r28;
                    r21 = 0xf4240;
                    r24 = @"";
            }
            r25 = r26;
    }
    [r25 release];
    [r23 release];
    r20 = r22;
    goto loc_10062a5c8;

loc_10062a5c8:
    r25 = [[VungleLogger sharedLogger] retain];
    r26 = @class(VungleLogger);
    r0 = [r27 adUnit];
    r0 = [r0 retain];
    r19 = r27;
    r28 = [[r0 appId] retain];
    r26 = [[r26 eventIDFromAppID:r28] retain];
    [r25 setEventID:r26];
    [r26 release];
    [r28 release];
    [r0 release];
    [r25 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:r24 level:r21 context:@"SDK Ad Lifecycle"];
    [r0 release];
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(streamingAdControllerShouldPlayAdForPlacement:)];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 streamingAdControllerShouldPlayAdForPlacement:r19];
            [r0 release];
    }
    [r24 release];
    [r19 release];
    [var_60 release];
    return;

loc_10062a4e8:
    r24 = @"";
    r21 = 0xf4240;
    goto loc_10062a5c4;

loc_10062a5c4:
    r20 = r28;
    goto loc_10062a5c8;

loc_10062a4fc:
    r0 = [r28 noResponseError];
    r0 = [r0 retain];
    r26 = [[r0 localizedDescription] retain];
    r24 = [[NSString stringWithFormat:@"Error requesting streaming ad. No response. Error: %@"] retain];
    [@"" release];
    [r26 release];
    [r0 release];
    r0 = [r28 noResponseError];
    r29 = r29;
    r22 = [r0 retain];
    [r28 sendErrorForPlacement:r27 error:r22];
    [r22 release];
    r21 = 0xf4243;
    goto loc_10062a5c4;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(bool)internalShouldStream {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setInternalShouldStream:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x18);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end