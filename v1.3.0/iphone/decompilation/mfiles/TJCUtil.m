@implementation TJCUtil

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            objc_storeStrong((int64_t *)&r19->_serviceURL, @"https://ws.tapjoyads.com/");
            objc_storeStrong((int64_t *)&r19->_placementURL, @"https://placements.tapjoy.com/");
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r19->_lastTimeStamp = d0;
            [r0 release];
            r0 = [TJCNetReachability reachabilityForInternetConnection];
            r0 = [r0 retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_netReachability));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) startNotifier];
            *(int8_t *)(int64_t *)&r19->_isNetReachabilityStale = 0x1;
            *(int8_t *)(int64_t *)&r19->_shouldClearSharedURLCache = 0x0;
            [r19 checkResourceBundleExists];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_installID));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_genericErrorAlertDisabled = 0x0;
    }
    r0 = r19;
    return r0;
}

+(void)resetParameters {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    [r0 setURLParamsDict:0x0];
    [r0 release];
    [r19 release];
    return;
}

-(void *)genericParametersWithNewSessionID {
    [self resetSessionID];
    r0 = [self genericParameters];
    return r0;
}

-(void)resetSessionID {
    [[[self genericParameters] retain] release];
    r20 = [[TJCUtil generateSessionID] retain];
    [self->_URLParamsDict setObject:r20 forKeyedSubscript:@"session_id"];
    [r20 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    self->_lastTimeStamp = d0;
    [r0 release];
    return;
}

-(void *)genericParametersWithUserID {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = [[r0 userID] retain];
    [r0 release];
    r20 = [[self genericParameters] retain];
    if (r19 != 0x0) {
            [r20 setObject:r2 forKey:r3];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)genericParameters {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(int8_t *)(int64_t *)&r0->_SDKEnabled != 0x0) {
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r20 = [[r19 _genericParameters] retain];
            objc_sync_exit(r19);
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getLanguage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = @class(NSLocale);
    r0 = [r0 preferredLanguages];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r0 = @class(NSLocale);
            r0 = [r0 preferredLanguages];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectAtIndex:r2];
    }
    else {
            r0 = @class(NSLocale);
            r0 = [r0 currentLocale];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKey:r2];
    }
    r19 = [r0 retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)genericLimitedParameters {
    r0 = self;
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
    if (*(int8_t *)(int64_t *)&r0->_limitedSDKEnabled != 0x0) {
            r0 = [r0 retain];
            r19 = r0;
            objc_sync_enter(r0);
            r20 = [[r19 _genericParameters] retain];
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r21 = [[r0 limitedAppID] retain];
            [r0 release];
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r22 = [[r0 limitedAppGroupID] retain];
            [r0 release];
            r23 = [[TJCUtil getTimeStamp] retain];
            r24 = [[TJCUtil TJCSHA256CommonParamsWithTimeStampForLimited:r23 string:0x0] retain];
            if (r21 != 0x0) {
                    [r20 setObject:r2 forKey:r3];
            }
            if (r22 != 0x0 && [r22 length] != 0x0) {
                    [r20 setObject:r2 forKey:r3];
            }
            [r20 setObject:r2 forKey:r3];
            objc_msgSend(r20, r25);
            objc_msgSend(r20, r25);
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            objc_sync_exit(r19);
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateInstallID {
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
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_installID));
    r0 = *(r19 + r22);
    if (r0 == 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:@"TJC_INSTALL_ID_KEY_NAME"];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r21 release];
            r0 = *(r19 + r22);
            if (r0 == 0x0) {
                    r0 = [NSProcessInfo processInfo];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 globallyUniqueString];
                    r0 = [r0 retain];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    [r21 release];
                    r0 = @class(NSUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 setObject:r2 forKey:r3];
                    [r20 release];
                    r0 = *(r19 + r22);
            }
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(bool)isSDKEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 SDKEnabled];
    [r0 release];
    [r19 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            [TJCLog logWithLevel:0x2 format:@"connect must be called and device ID must be available. SDK is disabled."];
            r0 = 0x0;
    }
    return r0;
}

+(bool)isLimitedSDKEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 limitedSDKEnabled];
    [r0 release];
    [r19 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            [TJCLog logWithLevel:0x2 format:@"connect must be called and device ID must be available. SDK is disabled."];
            r0 = 0x0;
    }
    return r0;
}

+(bool)checkHasConnected:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r22 = [r0 SDKConnected];
    [r0 release];
    [r20 release];
    if ((r22 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            [TJCLog logWithLevel:0x2 format:@"Cannot call %@ because Tapjoy SDK has not successfully connected."];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)checkHasLimitedConnected:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r22 = [r0 limitedSDKConnected];
    [r0 release];
    [r20 release];
    if ((r22 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            [TJCLog logWithLevel:0x2 format:@"Cannot call %@ because Tapjoy SDK has not successfully connected."];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)createQueryStringFromString:(void *)arg2 {
    r0 = CFURLCreateStringByAddingPercentEscapes(0x0, arg2, 0x0, @"!*'();:@&=+$,/?%#[]|", 0x8000100);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)getVendorIdentifier {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r20 = @selector(identifierForVendor);
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = r0;
            r0 = objc_msgSend(r0, r20);
            r0 = [r0 retain];
            r19 = [[r0 UUIDString] retain];
            [r0 release];
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getAdvertisingIdentifier {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([TJRegulations isBelowConsentAge] != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 compare:@"10.0" options:0x40];
            [r0 release];
            [r19 release];
            if (r21 != -0x1) {
                    r19 = @"00000000-0000-0000-0000-000000000000";
                    [r19 retain];
            }
            else {
                    r0 = [ASIdentifierManager sharedManager];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 advertisingIdentifier];
                    r0 = [r0 retain];
                    r19 = [[r0 UUIDString] retain];
                    [r0 release];
                    [r20 release];
            }
    }
    else {
            r0 = [ASIdentifierManager sharedManager];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 advertisingIdentifier];
            r0 = [r0 retain];
            r19 = [[r0 UUIDString] retain];
            [r0 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isAdTrackingEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (([TJRegulations isBelowConsentAge] & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = [ASIdentifierManager sharedManager];
            r0 = [r0 retain];
            r20 = [r0 isAdvertisingTrackingEnabled];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void *)createQueryStringFromDict:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x240;
    r23 = self;
    r22 = [arg2 retain];
    if (r22 == 0x0) {
            r0 = [r23 genericParameters];
            r29 = r29;
            r19 = [r0 retain];
            [r22 release];
            r22 = r19;
    }
    var_1F0 = [[NSMutableArray array] retain];
    r0 = [r22 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_238 = r0;
    var_218 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r25 = *0x0;
            var_268 = r25;
            stack[-624] = r22;
            var_1F8 = r23;
            do {
                    r27 = 0x0;
                    r28 = @selector(class);
                    r19 = @selector(isKindOfClass:);
                    var_240 = r24;
                    var_200 = r28;
                    var_1E8 = r19;
                    do {
                            if (*0x0 != r25) {
                                    objc_enumerationMutation(var_238);
                            }
                            r2 = *(0x0 + r27 * 0x8);
                            var_1E0 = r2;
                            r0 = [r22 objectForKey:r2];
                            r29 = r29;
                            r20 = [r0 retain];
                            objc_msgSend(@class(NSArray), r28);
                            r0 = objc_msgSend(r20, r19);
                            var_220 = r20;
                            if (r0 != 0x0) {
                                    var_230 = r27;
                                    var_1C8 = q0;
                                    r0 = [r20 retain];
                                    var_208 = r0;
                                    r24 = objc_msgSend(r0, var_218);
                                    if (r24 != 0x0) {
                                            r8 = 0x0;
                                            r27 = *var_1C8;
                                            do {
                                                    r19 = 0x0;
                                                    r22 = r8;
                                                    do {
                                                            if (*var_1C8 != r27) {
                                                                    objc_enumerationMutation(var_208);
                                                            }
                                                            r26 = r22 + r19;
                                                            r21 = [*(var_1D0 + r19 * 0x8) retain];
                                                            objc_msgSend(@class(NSNumber), r28);
                                                            if (objc_msgSend(r21, var_1E8) != 0x0) {
                                                                    r0 = [r21 stringValue];
                                                                    r29 = r29;
                                                                    r28 = [r0 retain];
                                                                    [r21 release];
                                                                    r21 = r28;
                                                            }
                                                            r25 = @selector(stringWithFormat:);
                                                            r20 = @selector(addObject:);
                                                            [[var_1F8 createQueryStringFromString:r21] retain];
                                                            r0 = objc_msgSend(@class(NSString), r25);
                                                            r29 = r29;
                                                            [r0 retain];
                                                            objc_msgSend(var_1F0, r20);
                                                            [r26 release];
                                                            [r28 release];
                                                            [r21 release];
                                                            r19 = r19 + 0x1;
                                                            r28 = var_200;
                                                    } while (r19 < r24);
                                                    r24 = objc_msgSend(var_208, var_218);
                                                    r8 = r22 + r19;
                                            } while (r24 != 0x0);
                                    }
                                    [var_208 release];
                                    r25 = var_268;
                                    r22 = stack[-624];
                                    r23 = var_1F8;
                                    r24 = var_240;
                                    r27 = var_230;
                            }
                            else {
                                    r20 = [r20 retain];
                                    objc_msgSend(@class(NSNumber), r28);
                                    if (objc_msgSend(r20, r19) != 0x0) {
                                            r0 = [r20 stringValue];
                                            r29 = r29;
                                            r21 = [r0 retain];
                                            [r20 release];
                                            r20 = r21;
                                    }
                                    [[r23 createQueryStringFromString:r20] retain];
                                    r0 = [NSString stringWithFormat:@"%@=%@"];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_1F0 addObject:r2];
                                    [r19 release];
                                    [r21 release];
                                    [r20 release];
                            }
                            [var_220 release];
                            r27 = r27 + 0x1;
                            r19 = var_1E8;
                    } while (r27 < r24);
                    r24 = objc_msgSend(var_238, var_218);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_238 release];
    r19 = [[var_1F0 componentsJoinedByString:@"&"] retain];
    [var_1F0 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isPad {
    return 0x0;
}

+(bool)caseInsenstiveCompare:(void *)arg2 AndString2:(void *)arg3 {
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
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = 0x0;
    if (r19 != 0x0) {
            r21 = 0x0;
            if (r20 != 0x0) {
                    r22 = [r20 retain];
                    r23 = [[r19 lowercaseString] retain];
                    r20 = [[r20 lowercaseString] retain];
                    [r22 release];
                    r21 = [r23 isEqualToString:r2];
                    [r20 release];
                    [r23 release];
            }
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)TJCSHA256CommonParamsWithTimeStamp:(void *)arg2 string:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = [[r0 appID] retain];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = [[r0 secretKey] retain];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 getAdvertisingIdentifier];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r25 release];
    [r24 release];
    r24 = [[NSMutableString alloc] initWithFormat:@"%@:%@"];
    if (r19 != 0x0) {
            [r24 appendFormat:r2];
    }
    [r24 appendFormat:r2];
    if (r20 != 0x0) {
            [r24 appendFormat:r2];
    }
    r25 = [[TJCUtil TJCSHA256WithString:r24] retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

+(void *)TJCSHA256CommonParamsWithTimeStampForLimited:(void *)arg2 string:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = [[r0 limitedAppID] retain];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = [[r0 limitedSecretKey] retain];
    [r0 release];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 getAdvertisingIdentifier];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r25 release];
    [r24 release];
    r24 = [[NSMutableString alloc] initWithFormat:@"%@:%@"];
    if (r19 != 0x0) {
            [r24 appendFormat:r2];
    }
    [r24 appendFormat:r2];
    if (r20 != 0x0) {
            [r24 appendFormat:r2];
    }
    r25 = [[TJCUtil TJCSHA256WithString:r24] retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

+(void *)TJCSHA256WithString:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 UTF8String];
    r19 = [r0 lengthOfBytesUsingEncoding:0x4];
    [r20 release];
    CC_SHA256(r21, r19, &stack[-88]);
    r0 = [NSData alloc];
    r0 = [r0 initWithBytes:&stack[-88] length:0x20];
    r19 = r0;
    r0 = [r0 description];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingOccurrencesOfString:@" " withString:@""] retain];
    [r0 release];
    [r21 length] - 0x2;
    r20 = [[r21 substringWithRange:0x1] retain];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)TJCSHA1WithString:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 UTF8String];
    r19 = [r0 lengthOfBytesUsingEncoding:0x4];
    [r20 release];
    CC_SHA1(r21, r19, &stack[-76]);
    r0 = [NSData alloc];
    r0 = [r0 initWithBytes:&stack[-76] length:0x14];
    r19 = r0;
    r0 = [r0 description];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingOccurrencesOfString:@" " withString:@""] retain];
    [r0 release];
    [r21 length] - 0x2;
    r20 = [[r21 substringWithRange:0x1] retain];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)TJCHMACSHA256WithString:(void *)arg2 key:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r23 = [objc_retainAutorelease(arg3) cStringUsingEncoding:0x1];
    [r22 release];
    r19 = [objc_retainAutorelease(arg2) cStringUsingEncoding:0x1];
    [r21 release];
    CCHmac(0x2, r23, sub_100021280(), r19, sub_100021280(), &stack[-104]);
    r0 = [NSData alloc];
    r0 = [r0 initWithBytes:&stack[-104] length:0x20];
    r19 = r0;
    r0 = [r0 description];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringByReplacingOccurrencesOfString:@"<" withString:@""];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 stringByReplacingOccurrencesOfString:@">" withString:@""];
    r0 = [r0 retain];
    r20 = [[r0 stringByReplacingOccurrencesOfString:@" " withString:@""] retain];
    [r0 release];
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)generateSessionID {
    r20 = @class(TJCUtil);
    r19 = [[r20 getTimeStamp] retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = [[r0 appID] retain];
    r24 = [[TJCUtil generateGUID] retain];
    r22 = [[NSString stringWithFormat:@"%@%@%@"] retain];
    r20 = [[r20 TJCSHA256WithString:r22] retain];
    [r22 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)generateGUID {
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r20 = [[r0 globallyUniqueString] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)clearCache {
    if (*(int8_t *)(int64_t *)&self->_shouldClearSharedURLCache != 0x0) {
            r19 = [[NSURLCache alloc] initWithMemoryCapacity:0x0 diskCapacity:0x0 diskPath:0x0];
            [NSURLCache setSharedURLCache:r19];
            [r19 removeAllCachedResponses];
            [r19 release];
    }
    return;
}

+(void *)getTimeStamp {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
    asm { fcvtzs     w8, d8 };
    r0 = [r0 stringWithFormat:r2];
    return r0;
}

-(void *)_genericParameters {
    r31 = r31 - 0x1c0;
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
    r27 = self;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 appID];
    r29 = &saved_fp;
    var_140 = [r0 retain];
    [r19 release];
    r28 = (int64_t *)&r27->_URLParamsDict;
    if (*r28 == 0x0) {
            var_148 = r28;
            var_178 = r27;
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            var_158 = [[r0 model] retain];
            [r0 release];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            var_160 = [[r0 systemVersion] retain];
            [r0 release];
            r0 = [NSLocale currentLocale];
            r0 = [r0 retain];
            var_180 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (r19 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r19;
                    }
                    else {
                            r0 = @"";
                    }
            }
            var_168 = [r0 retain];
            [r19 release];
            var_170 = [[TJCUtil getLanguage] retain];
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForInfoDictionaryKey:**_kCFBundleVersionKey];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            var_150 = r23;
            if (r23 == 0x0) {
                    [TJCLog logWithLevel:0x3 format:@"WARNING -- CFBundleVersion missing in application .plist"];
                    var_150 = @"unknown";
                    [@"unknown" retain];
            }
            [@"12.2.1" retain];
            [@"1.0.13" retain];
            r23 = @class(NSString);
            r0 = @class(NSBundle);
            r0 = [r0 mainBundle];
            r0 = [r0 retain];
            r26 = [[r0 bundlePath] retain];
            r27 = [[TJCUtil getPathToResource:@"revision" ofType:@"txt"] retain];
            r19 = [[r23 stringWithFormat:@"%@/%@"] retain];
            [r27 release];
            [r26 release];
            [r0 release];
            r0 = @class(NSString);
            r0 = [r0 stringWithContentsOfFile:r19 encoding:0x4 error:0x0];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 substringToIndex:0x6];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r23 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r23;
                    }
                    else {
                            r0 = @"";
                    }
            }
            r26 = [r0 retain];
            [r23 release];
            [r22 release];
            [r19 release];
            r0 = @class(Tapjoy);
            r0 = [r0 sharedTapjoyConnect];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 plugin];
            r29 = r29;
            r22 = [r0 retain];
            [r19 release];
            r27 = var_178;
            if (r22 == 0x0) {
                    [@"native" retain];
                    [r22 release];
                    r22 = @"native";
            }
            r0 = [Tapjoy sharedTapjoyConnect];
            r29 = r29;
            r0 = [r0 retain];
            [r0 currencyMultiplier];
            [r0 release];
            r0 = @class(NSString);
            asm { fcvt       d0, s8 };
            var_188 = [[r0 stringWithFormat:@"%f"] retain];
            r19 = [[TJCUIDevice platform] retain];
            r0 = [NSDictionary dictionaryWithObjects:r29 - 0xd0 forKeys:&var_138 count:0xd];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 mutableCopy];
            r28 = var_148;
            r8 = *r28;
            *r28 = r0;
            [r8 release];
            [r23 release];
            [r19 release];
            r0 = [r27 generateInstallID];
            r29 = r29;
            [[r0 retain] release];
            [*r28 setObject:r27->_installID forKey:@"install_id"];
            [r27 setAdTrackingValues];
            if (NSClassFromString(@"CTTelephonyNetworkInfo") != 0x0) {
                    var_190 = r26;
                    r0 = [CTTelephonyNetworkInfo alloc];
                    r0 = [r0 init];
                    r25 = r0;
                    r0 = [r0 subscriberCellularProvider];
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 carrierName];
                    r29 = r29;
                    r28 = [r0 retain];
                    if (r28 != 0x0) {
                            [*var_148 setObject:r28 forKey:@"carrier_name"];
                            r19 = @"no";
                            [r19 retain];
                            if ([r26 allowsVOIP] != 0x0) {
                                    r19 = @"yes";
                                    [r19 retain];
                                    [@"no" release];
                            }
                            [*var_148 setObject:r19 forKey:@"allows_voip"];
                            [r19 release];
                    }
                    r0 = [r26 isoCountryCode];
                    r29 = r29;
                    r19 = [r0 retain];
                    if (r19 != 0x0) {
                            [*var_148 setObject:r19 forKey:@"carrier_country_code"];
                    }
                    r0 = [r26 mobileCountryCode];
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            [*var_148 setObject:r27 forKey:@"mobile_country_code"];
                    }
                    r0 = [r26 mobileNetworkCode];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            [*var_148 setObject:r23 forKey:@"mobile_network_code"];
                    }
                    [r23 release];
                    [r27 release];
                    [r19 release];
                    [r28 release];
                    [r26 release];
                    [r25 release];
                    r27 = var_178;
                    r28 = var_148;
                    r26 = var_190;
            }
            if (NSClassFromString(@"SKStoreProductViewController") != 0x0) {
                    [*r28 setValue:@"true" forKey:@"store_view"];
            }
            [var_188 release];
            [r22 release];
            [r26 release];
            [@"1.0.13" release];
            [@"12.2.1" release];
            [var_150 release];
            [var_170 release];
            [var_168 release];
            [var_180 release];
            [var_160 release];
            [var_158 release];
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isNetReachabilityStale));
    if (*(int8_t *)(r27 + r23) != 0x0) {
            r0 = @class(TJCNetReachability);
            r0 = [r0 getReachabilityType];
            r0 = [r0 retain];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_netReachabilityType));
            r8 = *(r27 + r19);
            *(r27 + r19) = r0;
            [r8 release];
            [*r28 setObject:*(r27 + r19) forKey:@"connection_type"];
            r0 = @class(TJCNetReachability);
            r0 = [r0 reachabilitySubType];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [*r28 setObject:r22 forKey:@"connection_subtype"];
            }
            [r22 release];
    }
    *(int8_t *)(r27 + r23) = 0x0;
    r19 = *r28;
    r22 = [[TJRegulations getRegulationParameters] retain];
    [r19 addEntriesFromDictionary:r22];
    [r22 release];
    r0 = [TJCacheProtocol cachedAssetIDString];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            [*r28 setObject:r19 forKeyedSubscript:@"cached_ids"];
    }
    var_148 = r19;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 appGroupID];
    r29 = r29;
    r22 = [r0 retain];
    [r19 release];
    if (r22 != 0x0 && [r22 length] != 0x0) {
            [*r28 setObject:r2 forKey:r3];
    }
    var_150 = r22;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 store];
    r29 = r29;
    r23 = [r0 retain];
    [r19 release];
    r22 = var_140;
    if (r23 != 0x0 && [r23 length] != 0x0) {
            [*r28 setObject:r2 forKey:r3];
    }
    var_158 = r23;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 managedDeviceID];
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    if (r25 != 0x0 && [r25 length] != 0x0) {
            [*r28 setObject:r2 forKey:r3];
    }
    r19 = *r28;
    r23 = r27;
    r27 = [[r27 fiveRocksParameters] retain];
    [r19 addEntriesFromDictionary:r27];
    [r27 release];
    r24 = r28;
    r0 = [TJCUtil getTimeStamp];
    r29 = r29;
    r26 = [r0 retain];
    [*r24 setObject:r2 forKey:r3];
    if (r22 != 0x0) {
            [*r24 setObject:r2 forKey:r3];
    }
    r19 = @selector(setObject:forKey:);
    r27 = [[TJCUtil TJCSHA256CommonParamsWithTimeStamp:r26 string:0x0] retain];
    objc_msgSend(*r24, r19);
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_lastTimeStamp));
    if (d8 - *(r23 + r22) >= *0x100bf3140) {
            r0 = [TJCUtil generateSessionID];
            r29 = r29;
            [r0 retain];
            [*r24 setObject:r2 forKeyedSubscript:r3];
            [r19 release];
    }
    [*r24 setObject:r2 forKeyedSubscript:r3];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 log];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 logThreshold];
    [r0 release];
    [r19 release];
    if (r20 == 0x4) {
            [*r24 setObject:r2 forKeyedSubscript:r3];
    }
    var_68 = **___stack_chk_guard;
    *(r23 + r22) = d8;
    r19 = [[NSMutableDictionary dictionaryWithDictionary:*r24] retain];
    [r27 release];
    [r26 release];
    [r25 release];
    [var_158 release];
    [var_150 release];
    [var_148 release];
    [var_140 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)getPathToResource:(void *)arg2 ofType:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 doesResourceBundleExist];
    [r0 release];
    [r21 release];
    if (r23 != 0x0) {
            r22 = [[NSString stringWithFormat:r2] retain];
    }
    else {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = [[r0 pathForResource:r19 ofType:r20] retain];
            [r0 release];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 fileExistsAtPath:r21];
            [r0 release];
            if (r23 != 0x0) {
                    r22 = [[NSString stringWithFormat:r2] retain];
                    [r21 release];
            }
            else {
                    [r21 release];
                    r22 = [[NSString stringWithFormat:@"File '%@': Not Found on System"] retain];
                    [TJCLog logWithLevel:0x2 format:r22];
                    [r22 release];
                    r22 = 0x0;
            }
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)fiveRocksParameters {
    r31 = r31 - 0x160;
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
    r21 = [[FiveRocks unitTest_getInfoProperties] retain];
    var_C0 = [[FiveRocks unitTest_getAppProperties] retain];
    var_C8 = [[FiveRocks unitTest_getUserProperties] retain];
    var_E0 = [[FiveRocks getActionIds] retain];
    r0 = @class(FiveRocks);
    r0 = [r0 getInternalUserTagList];
    r29 = &saved_fp;
    var_E8 = [r0 retain];
    var_D0 = self;
    r28 = (int64_t *)&self->_FRParamsDict;
    if (*r28 == 0x0) {
            r22 = [[r21 objectForKey:@"device_id"] retain];
            var_F8 = [[r21 objectForKey:@"pkg_id"] retain];
            r23 = [[r21 objectForKey:@"display_d"] retain];
            r19 = [[r21 objectForKey:@"timezone"] retain];
            r24 = [[r21 objectForKey:@"country_sim"] retain];
            r25 = [[var_C0 objectForKey:@"pkg_ver"] retain];
            r26 = [[var_C0 objectForKey:@"pkg_rev"] retain];
            r27 = [[var_C8 objectForKey:@"installed"] retain];
            var_D8 = r22;
            r22 = var_F8;
            var_F0 = r23;
            r23 = r19;
            r0 = [NSDictionary dictionaryWithObjects:r29 - 0x90 forKeys:&var_B8 count:0x5];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 mutableCopy];
            r8 = *r28;
            *r28 = r0;
            [r8 release];
            [r19 release];
            if (r24 != 0x0) {
                    [*r28 setObject:r24 forKeyedSubscript:@"country_sim"];
            }
            if (r25 != 0x0) {
                    [*r28 setObject:r25 forKeyedSubscript:@"pkg_ver"];
            }
            if (r26 != 0x0) {
                    [*r28 setObject:r26 forKeyedSubscript:@"pkg_rev"];
            }
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [var_F0 release];
            [r22 release];
            [var_D8 release];
    }
    var_D8 = r21;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    CGRectGetWidth([r0 applicationFrame]);
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    r26 = r0;
    [r0 scale];
    d0 = d8 * d0;
    r0 = [NSNumber numberWithDouble:r2];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r28;
    r28 = r0;
    [r27 release];
    [r26 release];
    r0 = r25;
    r25 = r28;
    r28 = r21;
    [r0 release];
    if (r25 != 0x0) {
            [*r28 setObject:r25 forKeyedSubscript:@"display_w"];
    }
    var_F0 = r25;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    CGRectGetHeight([r0 applicationFrame]);
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    r19 = r0;
    [r0 scale];
    r0 = [NSNumber numberWithDouble:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 stringValue];
    r29 = r29;
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    [r25 release];
    if (r21 != 0x0) {
            [*r28 setObject:r21 forKeyedSubscript:@"display_h"];
    }
    var_F8 = r21;
    r0 = [var_C0 objectForKey:r2];
    r29 = r29;
    r19 = [r0 retain];
    r26 = var_C8;
    if (r19 != 0x0) {
            [*r28 setObject:r19 forKeyedSubscript:@"data_ver"];
    }
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [*r28 setObject:r20 forKeyedSubscript:@"user_level"];
    }
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [*r28 setObject:r21 forKeyedSubscript:@"friend_count"];
    }
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            [*r28 setObject:r22 forKeyedSubscript:@"uv1"];
    }
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [*r28 setObject:r23 forKeyedSubscript:@"uv2"];
    }
    var_140 = r20;
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            [*r28 setObject:r24 forKeyedSubscript:@"uv3"];
    }
    r20 = r19;
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            [*r28 setObject:r27 forKeyedSubscript:@"uv4"];
    }
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [*r28 setObject:r19 forKeyedSubscript:@"uv5"];
    }
    var_130 = r19;
    var_128 = r27;
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [*r28 setObject:r19 forKeyedSubscript:@"fq7"];
    }
    var_138 = r19;
    var_120 = r24;
    var_118 = r23;
    var_110 = r22;
    var_108 = r21;
    var_100 = r20;
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            [*r28 setObject:r27 forKeyedSubscript:@"fq30"];
    }
    r21 = var_140;
    r0 = [FiveRocks unitTest_getUserSessionProperties];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r24 objectForKey:r2];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    [*r28 setObject:r19 forKeyedSubscript:@"session_total_count"];
            }
            r0 = [r24 objectForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    [*r28 setObject:r20 forKeyedSubscript:@"session_total_length"];
            }
            r0 = [r24 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [*r28 setObject:r22 forKeyedSubscript:@"session_last_at"];
            }
            r0 = [r24 objectForKey:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    [*r28 setObject:r23 forKeyedSubscript:@"session_last_length"];
            }
            [r23 release];
            [r22 release];
            [r20 release];
            [r19 release];
    }
    r0 = [FiveRocks unitTest_getUserPurchaseProperties];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    [*r28 setObject:r19 forKeyedSubscript:@"purchase_currency"];
            }
            r0 = [r20 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [*r28 setObject:r22 forKeyedSubscript:@"purchase_total_count"];
            }
            r0 = [r20 objectForKey:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    [*r28 setObject:r23 forKeyedSubscript:@"purchase_total_price"];
            }
            r0 = [r20 objectForKey:r2];
            r29 = r29;
            r26 = [r0 retain];
            if (r26 != 0x0) {
                    [*r28 setObject:r26 forKeyedSubscript:@"purchase_last_price"];
            }
            r0 = [r20 objectForKey:r2];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    [*r28 setObject:r25 forKeyedSubscript:@"purchase_last_at"];
            }
            [r25 release];
            [r26 release];
            [r23 release];
            [r22 release];
            [r19 release];
            r26 = var_C8;
    }
    r23 = var_E0;
    if (r23 != 0x0 && [r23 count] != 0x0) {
            r0 = [r23 componentsJoinedByString:@","];
            r29 = r29;
            r19 = [r0 retain];
            [*r28 setObject:r19 forKeyedSubscript:@"action_id_exclusion"];
            [r19 release];
    }
    else {
            [*r28 removeObjectForKey:@"action_id_exclusion"];
            [var_D0->_URLParamsDict removeObjectForKey:@"action_id_exclusion"];
    }
    r25 = var_E8;
    if (r25 != 0x0 && [r25 count] != 0x0) {
            [*r28 setObject:r25 forKeyedSubscript:@"user_tags"];
    }
    else {
            [*r28 removeObjectForKey:@"user_tags"];
            [var_D0->_URLParamsDict removeObjectForKey:@"user_tags"];
    }
    var_68 = **___stack_chk_guard;
    r19 = [[NSMutableDictionary dictionaryWithDictionary:*r28] retain];
    [r20 release];
    [r24 release];
    [r27 release];
    [var_138 release];
    [var_130 release];
    [var_128 release];
    [var_120 release];
    [var_118 release];
    [var_110 release];
    [var_108 release];
    [r21 release];
    [var_100 release];
    [var_F8 release];
    [var_F0 release];
    [r25 release];
    [r23 release];
    [r26 release];
    [var_C0 release];
    [var_D8 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)getMainResourceBundle {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 doesResourceBundleExist];
    [r0 release];
    [r19 release];
    r0 = [NSBundle mainBundle];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r21 != 0x0) {
            r21 = [[r19 URLForResource:@"TapjoyResources" withExtension:@"bundle"] retain];
            r20 = [[NSBundle bundleWithURL:r21] retain];
            [r21 release];
            [r19 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getResourceBundle:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r22 = [r0 doesResourceBundleExist];
    [r0 release];
    [r20 release];
    r0 = [NSBundle mainBundle];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r22 != 0x0) {
            r22 = [[r20 URLForResource:r19 withExtension:@"bundle"] retain];
            r21 = [[NSBundle bundleWithURL:r22] retain];
            [r22 release];
            [r20 release];
            r20 = r21;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)shouldOpenURLInternally:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 host];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100905d2c;

loc_100905b48:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 serviceURL] retain];
    r0 = [NSURL URLWithString:r27];
    r0 = [r0 retain];
    r21 = [[r0 host] retain];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r23 = r0;
    r27 = [[r0 placementURL] retain];
    r0 = [NSURL URLWithString:r27];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 host];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    [r27 release];
    [r23 release];
    [r26 release];
    CFStringFind([r19 host], r21, 0x1);
    if (r21 > 0x0) goto loc_100905d04;

loc_100905cc0:
    CFStringFind([r19 host], r22, 0x1);
    if (r22 > 0x0) goto loc_100905d04;

loc_100905ce0:
    CFStringFind([r19 host], @"click.linksynergy.com", 0x1);
    if (@"click.linksynergy.com" < 0x1) goto loc_100905d1c;

loc_100905d04:
    [r22 release];
    [r21 release];
    r23 = 0x1;
    goto loc_100905ed8;

loc_100905ed8:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100905d1c:
    [r22 release];
    [r21 release];
    goto loc_100905d2c;

loc_100905d2c:
    r0 = [r19 absoluteString];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 componentsSeparatedByString:@"&"];
    r29 = r29;
    r21 = [r0 retain];
    r22 = @"false";
    [r22 retain];
    r0 = [r21 retain];
    r21 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 == 0x0) goto loc_100905ea4;

loc_100905dd0:
    r28 = 0x0;
    goto loc_100905dd4;

loc_100905dd4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r26 = *(0x0 + r28 * 0x8);
    CFStringFind(r26, @"tjyoutubevideo=", 0x1);
    if (@"tjyoutubevideo=" >= 0x1) goto loc_100905e3c;

loc_100905e0c:
    r28 = r28 + 0x1;
    if (r28 < r25) goto loc_100905dd4;

loc_100905e18:
    r25 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) goto loc_100905dd0;

loc_100905e38:
    r22 = @"false";
    goto loc_100905ea4;

loc_100905ea4:
    [r21 release];
    r23 = [r22 boolValue];
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_100905ed8;

loc_100905e3c:
    r23 = [[r26 stringByReplacingOccurrencesOfString:@"tjyoutubevideo=" withString:@""] retain];
    r22 = [[NSString stringWithString:r23] retain];
    [@"false" release];
    [r23 release];
    goto loc_100905ea4;
}

-(void)checkResourceBundleExists {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 pathForResource:@"TapjoyResources" ofType:@"bundle"] retain];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r22 = [r0 fileExistsAtPath:r21];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_doesResourceBundleExist = r22;
    [r21 release];
    return;
}

+(bool)checkIfTapjoyResourceExists:(void *)arg2 ofType:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[TJCUtil getMainResourceBundle] retain];
    r22 = [[NSString stringWithFormat:@"%@"] retain];
    [r20 release];
    r20 = [[r21 pathForResource:r22 ofType:r19] retain];
    [r19 release];
    [r22 release];
    [r21 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = [r0 fileExistsAtPath:r20];
    [r0 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(void)showGenericConnectionErrorAlertWithDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[UIAlertView alloc] initWithTitle:@"" message:@"A connection error occurred loading this content." delegate:r21 cancelButtonTitle:@"OK" otherButtonTitles:0x0];
    [r21 release];
    [r19 show];
    [r19 release];
    return;
}

+(void)notifyResponseError:(void *)arg2 sender:(void *)arg3 withNotificationName:(void *)arg4 {
    [arg2 retain];
    r22 = [arg3 retain];
    [arg4 retain];
    r24 = [r22 class];
    [r22 release];
    r22 = [NSStringFromClass(r24) retain];
    [TJCLog logWithLevel:0x3 format:@"%@ error: %@"];
    [r22 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r21 release];
    [r19 release];
    [r22 release];
    return;
}

+(void *)createErrorWithString:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r0 = [NSError alloc];
    r0 = [r0 initWithDomain:**_NSURLErrorDomain code:0xfffffffffffffc0d userInfo:r21];
    r20 = r0;
    r23 = [[r0 localizedDescription] retain];
    [TJCLog logWithLevel:0x3 format:r23];
    [r19 release];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isGenericErrorAlertDisabled {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 genericErrorAlertDisabled];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setServiceURL:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [NSURL URLWithString:r20];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r21 = [[NSString stringWithFormat:r2] retain];
            [r20 release];
            r20 = r21;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_serviceURL));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    return;
}

-(void)setPlacementURL:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [NSURL URLWithString:r20];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) {
            r21 = [[NSString stringWithFormat:r2] retain];
            [r20 release];
            r20 = r21;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placementURL));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    return;
}

+(float)getCurrentVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 outputVolume];
    r0 = [r0 release];
    return r0;
}

+(long long)us_boottime {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sysctl(&var_18, 0x2, &var_10, &var_20, 0x0, 0x0);
    if (r0 == 0x0) {
            asm { madd       x0, x8, x9, x10 };
    }
    return 0x0;
}

+(double)uptime {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self us_boottime];
    do {
            r21 = r0;
            r0 = gettimeofday(&var_30, 0x0);
            r0 = [r19 us_boottime];
    } while (r0 != r21);
    asm { scvtf      d1, x8 };
    asm { scvtf      d0, d0 };
    asm { fdiv       d1, d1, d2 };
    return r0;
}

+(void *)createRequestWithURL:(void *)arg2 cachePolicy:(unsigned long long)arg3 timeoutInterval:(double)arg4 {
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
    r21 = [[NSMutableURLRequest requestWithURL:arg2 cachePolicy:arg3 timeoutInterval:arg4] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    var_68 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    var_70 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_78 = r0;
    if (r0 != 0x0) {
            var_84 = 0x0;
            var_58 = r0;
    }
    else {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            var_98 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            var_A0 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            var_58 = [r0 retain];
            var_84 = 0x1;
    }
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    var_90 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r23 = [r0 retain];
    var_60 = r21;
    if (r23 != 0x0) {
            r27 = 0x0;
            r25 = r23;
    }
    else {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            var_A8 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            var_B0 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            r27 = 0x1;
    }
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 model] retain];
    r0 = @class(UIDevice);
    r0 = [r0 currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r26 = [[r0 systemVersion] retain];
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    r22 = r0;
    [r0 scale];
    r0 = [NSString stringWithFormat:@"%@/%@ (%@; iOS %@; Scale/%0.2f)"];
    r29 = r29;
    r24 = [r0 retain];
    [r22 release];
    [r26 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (r27 != 0x0) {
            [r25 release];
            [var_B0 release];
            [var_A8 release];
    }
    [r23 release];
    [r28 release];
    [var_90 release];
    r21 = var_60;
    if (var_84 != 0x0) {
            [var_58 release];
            [var_A0 release];
            [var_98 release];
    }
    [var_78 release];
    [var_70 release];
    [var_68 release];
    if (r24 != 0x0) {
            r19 = [[NSNull null] retain];
            if (r24 != r19) {
                    [NSString class];
                    if (([r24 isKindOfClass:r2] & 0x1) != 0x0) {
                            r20 = [r24 length];
                            [r19 release];
                            if (r20 != 0x0) {
                                    [r21 setValue:r24 forHTTPHeaderField:@"User-Agent"];
                            }
                    }
                    else {
                            [r19 release];
                            [r21 setValue:r24 forHTTPHeaderField:@"User-Agent"];
                    }
            }
            else {
                    [r24 release];
            }
    }
    [r24 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)colorFromHexString:(void *)arg2 {
    r0 = [NSScanner scannerWithString:arg2];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setScanLocation:0x1];
    [r19 scanHexInt:&var_14];
    r0 = @class(UIColor);
    asm { ubfx       w9, w8, #0x10, #0x8 };
    asm { ucvtf      d0, w9 };
    asm { fdiv       d0, d0, d2 };
    asm { ubfx       w9, w8, #0x8, #0x8 };
    asm { ucvtf      d1, w9 };
    asm { fdiv       d1, d1, d2 };
    asm { ucvtf      d3, w8 };
    r1 = @selector(colorWithRed:green:blue:alpha:);
    asm { fdiv       d2, d3, d2 };
    r20 = [objc_msgSend(r0, r1) retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)tapjoyInfoPlist {
    r0 = self->_tapjoyInfoPlist;
    return r0;
}

-(void)setAdTrackingValues {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self getAdvertisingIdentifier] retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_URLParamsDict));
    if (r19 != 0x0) {
            r22 = r20 + r8;
            [*r22 setObject:r2 forKey:r3];
    }
    else {
            r22 = r20 + r8;
    }
    r22 = *r22;
    [r20 isAdTrackingEnabled] != 0x0;
    [r22 setObject:r2 forKey:r3];
    [r19 release];
    return;
}

+(bool)isWebKitSupported {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = [r0 compare:@"9.3" options:0x40];
    [r0 release];
    [r19 release];
    if (r21 != -0x1) {
            r0 = NSClassFromString(@"WKWebView");
            if (r0 != 0x0) {
                    r0 = [WKWebView class];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setTapjoyInfoPlist:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tapjoyInfoPlist, arg2);
    return;
}

-(void *)URLParamsDict {
    r0 = self->_URLParamsDict;
    return r0;
}

-(void)setFRParamsDict:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_FRParamsDict, arg2);
    return;
}

-(void)setURLParamsDict:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_URLParamsDict, arg2);
    return;
}

-(void *)FRParamsDict {
    r0 = self->_FRParamsDict;
    return r0;
}

-(void *)netReachability {
    r0 = self->_netReachability;
    return r0;
}

-(void)setNetReachability:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_netReachability, arg2);
    return;
}

-(void *)netReachabilityType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_netReachabilityType)), 0x0);
    return r0;
}

-(void)setNetReachabilityType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isNetReachabilityStale {
    r0 = *(int8_t *)(int64_t *)&self->_isNetReachabilityStale;
    return r0;
}

-(void)setIsNetReachabilityStale:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isNetReachabilityStale = arg2;
    return;
}

-(bool)shouldClearSharedURLCache {
    r0 = *(int8_t *)(int64_t *)&self->_shouldClearSharedURLCache;
    return r0;
}

-(void)setShouldClearSharedURLCache:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldClearSharedURLCache = arg2;
    return;
}

-(bool)doesResourceBundleExist {
    r0 = *(int8_t *)(int64_t *)&self->_doesResourceBundleExist;
    return r0;
}

-(void)setDoesResourceBundleExist:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_doesResourceBundleExist = arg2;
    return;
}

-(bool)SDKEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_SDKEnabled;
    return r0;
}

-(void)setSDKEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_SDKEnabled = arg2;
    return;
}

-(bool)SDKConnected {
    r0 = *(int8_t *)(int64_t *)&self->_SDKConnected;
    return r0;
}

-(void)setSDKConnected:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_SDKConnected = arg2;
    return;
}

-(bool)SDKConnectedToServer {
    r0 = *(int8_t *)(int64_t *)&self->_SDKConnectedToServer;
    return r0;
}

-(void)setSDKConnectedToServer:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_SDKConnectedToServer = arg2;
    return;
}

-(bool)limitedSDKEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_limitedSDKEnabled;
    return r0;
}

-(void)setLimitedSDKEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_limitedSDKEnabled = arg2;
    return;
}

-(bool)limitedSDKConnected {
    r0 = *(int8_t *)(int64_t *)&self->_limitedSDKConnected;
    return r0;
}

-(void)setLimitedSDKConnected:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_limitedSDKConnected = arg2;
    return;
}

-(bool)limitedSDKConnectedToServer {
    r0 = *(int8_t *)(int64_t *)&self->_limitedSDKConnectedToServer;
    return r0;
}

-(void)setLimitedSDKConnectedToServer:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_limitedSDKConnectedToServer = arg2;
    return;
}

-(bool)genericErrorAlertDisabled {
    r0 = *(int8_t *)(int64_t *)&self->_genericErrorAlertDisabled;
    return r0;
}

-(void)setGenericErrorAlertDisabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_genericErrorAlertDisabled = arg2;
    return;
}

-(void *)installID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_installID)), 0x0);
    return r0;
}

-(void)setInstallID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)serviceURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_serviceURL)), 0x0);
    return r0;
}

-(void *)placementURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementURL)), 0x0);
    return r0;
}

-(bool)dismissContentAll {
    r0 = *(int8_t *)(int64_t *)&self->_dismissContentAll;
    return r0;
}

-(double)lastTimeStamp {
    r0 = self;
    return r0;
}

-(void)setDismissContentAll:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_dismissContentAll = arg2;
    return;
}

-(void)setLastTimeStamp:(double)arg2 {
    self->_lastTimeStamp = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementURL, 0x0);
    objc_storeStrong((int64_t *)&self->_serviceURL, 0x0);
    objc_storeStrong((int64_t *)&self->_installID, 0x0);
    objc_storeStrong((int64_t *)&self->_netReachabilityType, 0x0);
    objc_storeStrong((int64_t *)&self->_netReachability, 0x0);
    objc_storeStrong((int64_t *)&self->_FRParamsDict, 0x0);
    objc_storeStrong((int64_t *)&self->_URLParamsDict, 0x0);
    objc_storeStrong((int64_t *)&self->_tapjoyInfoPlist, 0x0);
    return;
}

@end