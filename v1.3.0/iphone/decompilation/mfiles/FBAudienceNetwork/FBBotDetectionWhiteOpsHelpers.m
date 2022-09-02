@implementation FBBotDetectionWhiteOpsHelpers

+(void *)dataSession {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011de9b0 != -0x1) {
            dispatch_once(0x1011de9b0, 0x100eb2110);
    }
    r0 = *0x1011de9b8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)createQueryStringFromParameters:(void *)arg2 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r21 = &var_50;
    var_48 = r21;
    r0 = [NSMutableString stringWithString:r2];
    r29 = &saved_fp;
    var_28 = [r0 retain];
    if (r19 != 0x0) {
            [r19 enumerateKeysAndObjectsUsingBlock:&var_78];
    }
    [[NSString stringWithString:r2] retain];
    _Block_object_dispose(&var_50, 0x8);
    [var_28 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)sendBotDetectionSignalsForEventId:(void *)arg2 sessionID:(void *)arg3 productType:(unsigned long long)arg4 eventType:(void *)arg5 withSignalsAndErrorsDict:(void *)arg6 withLoggerDelegate:(void *)arg7 withConfigDelegate:(void *)arg8 withDynamicLibraryProviderDelegate:(void *)arg9 {
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
    var_D8 = [arg2 retain];
    r25 = [arg3 retain];
    r21 = [arg5 retain];
    [arg6 retain];
    var_C0 = [arg7 retain];
    r23 = [arg8 retain];
    var_C8 = [arg9 retain];
    objc_storeStrong(0x1011de9a8, arg8);
    objc_storeStrong(0x1011de940, arg7);
    objc_storeStrong(0x1011de958, arg9);
    r22 = [[r28 objectForKeyedSubscript:@"signals"] retain];
    r27 = [[self convertKeysToSignalNamesForDict:r22] retain];
    [r22 release];
    r19 = [[r28 objectForKeyedSubscript:@"errors"] retain];
    [r28 release];
    r20 = self;
    r24 = var_D8;
    r26 = arg4;
    r0 = [self convertKeysToSignalNamesForDict:r19];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r19 release];
    r19 = [r23 isBotDetectionEnabledForProductType:r26];
    r0 = [r23 networkSignalSamplingRateForProductType:r26];
    if (r19 != 0x0 && r0 >= zero_extend_64(arc4random_uniform(0x64))) {
            r22 = [[r23 woNetworkSignalUrlString] retain];
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r9 = r0;
            if (r0 != 0x0) {
                    r0 = [r20 urlRequestWithURL:r9 eventId:r24 sessionID:r25 eventType:r21 productType:r26];
                    r0 = [r0 retain];
                    var_E0 = [r0 retain];
                    var_88 = [r23 retain];
                    var_80 = [r25 retain];
                    var_78 = [r21 retain];
                    var_70 = [r24 retain];
                    var_68 = [r27 retain];
                    var_60 = [r28 retain];
                    [r20 currentUserAgentWithBlock:&var_B8];
                    [var_60 release];
                    [var_68 release];
                    [var_70 release];
                    [var_78 release];
                    [var_80 release];
                    [var_88 release];
                    [r0 release];
                    [var_E0 release];
                    r9 = r9;
            }
            [r9 release];
            [r22 release];
    }
    [r28 release];
    [r27 release];
    [var_C8 release];
    [r23 release];
    [var_C0 release];
    [r21 release];
    [r25 release];
    [r24 release];
    return;
}

+(void *)convertKeysToSignalNamesForDict:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [NSMutableDictionary new];
    if (r19 != 0x0) {
            var_18 = [r20 retain];
            [r19 enumerateKeysAndObjectsUsingBlock:&var_38];
            [var_18 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)currentUserAgentWithBlock:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (*0x1011de948 != 0x0) {
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19);
            }
    }
    else {
            r0 = [r19 retain];
            var_18 = r0;
            if (*qword_1011de950 != -0x1) {
                    dispatch_once(0x1011de950, &var_40);
                    r0 = var_18;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

+(void *)urlRequestWithURL:(void *)arg2 eventId:(void *)arg3 sessionID:(void *)arg4 eventType:(void *)arg5 productType:(unsigned long long)arg6 {
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
    r22 = self;
    r21 = [arg2 retain];
    r26 = [arg3 retain];
    r23 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [NSMutableDictionary new];
    r19 = r0;
    [r0 setObject:r26 forKeyedSubscript:@"ti"];
    [r26 release];
    r25 = [[FBBotDetectionSignalCollectionConstants productNameForProductType:arg6] retain];
    [r19 setObject:r25 forKeyedSubscript:@"bt"];
    [r25 release];
    [r19 setObject:r27 forKeyedSubscript:@"sn"];
    [r27 release];
    r0 = [NSBundle bundleForClass:[r22 class]];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 bundleIdentifier];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"UNKNOWN";
            }
    }
    [r19 setObject:r2 forKeyedSubscript:@"ap"];
    [r26 release];
    [r25 release];
    [r19 setObject:r23 forKeyedSubscript:@"r1"];
    [r23 release];
    r23 = [r19 copy];
    r0 = [r22 createQueryStringFromParameters:r23];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    r23 = [r22 mutableCopy];
    if ([*0x1011de9a8 isWONetworkSignalLargePayloadEnabled] != 0x0) {
            r24 = [*0x1011de9a8 payloadSize];
            r0 = *0x1011de9a8;
            r0 = [r0 largePayloadSamplingRate];
            if (r24 != 0x0 && r0 >= zero_extend_64(arc4random_uniform(0x64))) {
                    r0 = [@"" stringByPaddingToLength:r24 withString:@"b" startingAtIndex:0x0];
                    r29 = r29;
                    [r0 retain];
                    [r23 appendString:r2];
                    objc_msgSend(r23, r25);
                    [r24 release];
            }
    }
    r24 = [[NSMutableString alloc] initWithString:@""];
    r0 = [r21 absoluteString];
    r29 = r29;
    [r0 retain];
    [r21 release];
    [r24 appendString:r2];
    [r25 release];
    [r24 rangeOfString:@"?"] == 0x7fffffffffffffff;
    [r24 appendString:r2];
    objc_msgSend(r24, r21);
    r20 = [NSMutableURLRequest new];
    r25 = [[NSString stringWithString:r24] retain];
    r21 = [[NSURL URLWithString:r25] retain];
    [r20 setURL:r21];
    [r21 release];
    [r25 release];
    [r20 setHTTPMethod:@"GET"];
    [r24 release];
    [r23 release];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)javaScriptSafeCreate:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[NSString alloc] initWithFormat:@"(function(){try{%@}catch(e){return e.toString();}}());"];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)logEventWithAppSessionId:(void *)arg2 signalType:(void *)arg3 eventId:(void *)arg4 productType:(unsigned long long)arg5 eventType:(void *)arg6 jsonData:(void *)arg7 errorDescription:(void *)arg8 {
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
    r27 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg6 retain];
    r23 = [arg7 retain];
    r24 = [arg8 retain];
    if (*0x1011de940 != 0x0 && [*0x1011de940 respondsToSelector:@selector(logBotDetectionSignalData:forProductName:forLoggerEventName:), r3, r4] != 0x0) {
            r26 = [NSMutableDictionary new];
            r27 = [[FBBotDetectionSignalCollectionConstants productNameForProductType:r27] retain];
            [r26 setObject:r19 forKeyedSubscript:@"app_session_id"];
            [r26 setObject:r20 forKeyedSubscript:@"signal_type"];
            [r26 setObject:r21 forKeyedSubscript:@"instance_id"];
            [r26 setObject:r27 forKeyedSubscript:@"product_id"];
            [r26 setObject:r22 forKeyedSubscript:@"event_type"];
            [r26 setObject:@"fbios_bot_detection_signal" forKeyedSubscript:@"qe_universe"];
            [r26 setObject:r23 forKeyedSubscript:@"json_data"];
            [r26 setObject:r24 forKeyedSubscript:@"exception"];
            [*0x1011de940 logBotDetectionSignalData:r26 forProductName:r27 forLoggerEventName:@"bot_detection_mobile_signals"];
            [r27 release];
            [r26 release];
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)constructNativeSignalsJsonWithSessionId:(void *)arg2 withProductType:(unsigned long long)arg3 withEventType:(void *)arg4 withEventId:(void *)arg5 withNetworkSignalsResponseDict:(void *)arg6 withSignalsDict:(void *)arg7 andErrorsDict:(void *)arg8 {
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
    var_148 = self;
    stack[-336] = arg3;
    var_F8 = [arg2 retain];
    var_108 = [arg4 retain];
    var_110 = [arg5 retain];
    var_100 = [arg6 retain];
    r19 = [arg7 retain];
    r22 = [arg8 retain];
    var_118 = r19;
    r0 = @class(NSDictionary);
    r0 = [r0 new];
    var_120 = r22;
    r22 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x78 forKeys:&saved_fp - 0x90 count:0x3] retain];
    [r0 release];
    var_128 = r22;
    var_130 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0xa0 forKeys:&saved_fp - 0xb0 count:0x2] retain];
    var_138 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0xb8 forKeys:&saved_fp - 0xc0 count:0x1] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0xc8 forKeys:&var_D0 count:0x1] retain];
    [@"" retain];
    r0 = [NSString stringWithFormat:@"%@"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([NSJSONSerialization isValidJSONObject:r2] == 0x0) goto loc_100b7f1ac;

loc_100b7f138:
    r0 = [NSJSONSerialization dataWithJSONObject:r2 options:r3 error:r4];
    r29 = r29;
    r20 = [r0 retain];
    r0 = [0x0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100b7f2a4;

loc_100b7f178:
    r19 = [[r22 localizedDescription] retain];
    goto loc_100b7f194;

loc_100b7f194:
    [@"" release];
    [r20 release];
    goto loc_100b7f1c4;

loc_100b7f1c4:
    r23 = var_110;
    [r22 release];
    r20 = r21;
    r22 = var_108;
    [var_148 logEventWithAppSessionId:var_F8 signalType:@"NATIVE" eventId:r23 productType:stack[-336] eventType:r22 jsonData:r20 errorDescription:r19];
    r21 = 0x0;
    goto loc_100b7f208;

loc_100b7f208:
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    [r26 release];
    [var_138 release];
    [var_130 release];
    [var_128 release];
    [var_120 release];
    [var_118 release];
    [var_100 release];
    [r23 release];
    [r22 release];
    [var_F8 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b7f2a4:
    var_160 = @selector(dataWithJSONObject:options:error:);
    if (r20 == 0x0) goto loc_100b7f4ec;

loc_100b7f2ac:
    r0 = [NSString alloc];
    var_168 = r20;
    var_150 = [r0 initWithData:r20 encoding:0x4];
    r0 = [var_100 objectForKeyedSubscript:@"sid"];
    r0 = [r0 retain];
    var_158 = r0;
    pthread_mutex_lock(0x1011de968);
    r0 = [WObfuscate alloc];
    r0 = [r0 initWithKey:r20];
    var_170 = r0;
    [[r0 encode:var_150] retain];
    pthread_mutex_unlock(0x1011de968);
    r0 = [NSMutableDictionary new];
    r24 = r0;
    var_178 = r27;
    [r0 setObject:r27 forKeyedSubscript:@"data"];
    [r24 setObject:var_158 forKeyedSubscript:@"decryption_key"];
    r27 = [[var_100 objectForKeyedSubscript:@"postback"] retain];
    [r24 setObject:r27 forKeyedSubscript:@"endpoint_path"];
    [r27 release];
    r0 = [NSString stringWithFormat:@"%@"];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    r0 = [NSJSONSerialization isValidJSONObject:r2];
    var_180 = r24;
    if (r0 != 0x0) {
            r19 = [[NSDictionary dictionaryWithObjects:&stack[-232] forKeys:&var_E0 count:0x1] retain];
            r0 = objc_msgSend(@class(NSJSONSerialization), var_160);
            r29 = r29;
            r25 = [r0 retain];
            r23 = [0x0 retain];
            [r19 release];
            if (r23 != 0x0) {
                    r19 = [[r23 localizedDescription] retain];
                    [@"" release];
                    r21 = 0x0;
                    r24 = var_168;
            }
            else {
                    r24 = var_168;
                    if (r25 != 0x0) {
                            r21 = [[NSString alloc] initWithData:r2 encoding:r3];
                            r19 = @"";
                    }
                    else {
                            r19 = @"JsonConstructionFailed";
                            [r19 retain];
                            [@"" release];
                            r21 = 0x0;
                    }
            }
            [r25 release];
    }
    else {
            r19 = @"InvalidWODict";
            [r19 retain];
            r21 = 0x0;
            r23 = @"";
            r24 = var_168;
    }
    [r23 release];
    [var_180 release];
    [var_178 release];
    [var_170 release];
    [var_158 release];
    [var_150 release];
    [r24 release];
    [r22 release];
    r23 = var_110;
    r22 = var_108;
    if (r21 == 0x0) {
            [var_148 logEventWithAppSessionId:var_F8 signalType:@"NATIVE" eventId:r23 productType:stack[-336] eventType:r22 jsonData:r20 errorDescription:r19];
            r21 = 0x0;
    }
    goto loc_100b7f208;

loc_100b7f4ec:
    r19 = @"JsonConstructionFailed";
    [r19 retain];
    goto loc_100b7f194;

loc_100b7f1ac:
    r19 = @"InvalidNativeSignalsDict";
    [r19 retain];
    r22 = @"";
    goto loc_100b7f1c4;
}

@end