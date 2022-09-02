@implementation FBBDHelpers

+(void *)bdSessionIdsFromBDSessionDict:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [NSMutableArray new];
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r23 = @selector(isKindOfClass:);
            r21 = [[r19 objectForKey:@"ch"] retain];
            [NSArray class];
            if (objc_msgSend(r21, r23) != 0x0) {
                    var_38 = [r20 retain];
                    [r21 enumerateObjectsUsingBlock:&var_58];
                    [var_38 release];
            }
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(int)reputationTierFromBDSessionDict:(void *)arg2 {
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
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100b6f144;

loc_100b6f0d4:
    r22 = @selector(isKindOfClass:);
    r0 = [r19 objectForKey:@"rt"];
    r29 = r29;
    r20 = [r0 retain];
    [NSNumber class];
    if (objc_msgSend(r20, r22) == 0x0) goto loc_100b6f13c;

loc_100b6f11c:
    r0 = [r20 intValue];
    if ((r0 & 0x1c00) == 0x0) goto loc_100b6f13c;

loc_100b6f134:
    r21 = r0;
    goto loc_100b6f234;

loc_100b6f234:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100b6f13c:
    [r20 release];
    goto loc_100b6f144;

loc_100b6f144:
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r20 = r0;
    [r0 setObject:@"config_parsing" forKeyedSubscript:@"o"];
    [r20 setObject:@"error" forKeyedSubscript:@"l"];
    r21 = [NSMutableDictionary new];
    r23 = [[NSString stringWithFormat:@"%@"] retain];
    [r21 setObject:r23 forKeyedSubscript:@"signal_parsing_info"];
    [r23 release];
    [r20 setObject:r21 forKeyedSubscript:@"oi"];
    [FBBotDetectionLoggingUtils logOperationData:r20];
    [r21 release];
    r21 = 0x0;
    goto loc_100b6f234;
}

+(void)logEventWithBDSessionId:(void *)arg2 withAppSessionId:(void *)arg3 productType:(unsigned long long)arg4 jsonData:(void *)arg5 withLoggerDelegate:(void *)arg6 withConfigDelegate:(void *)arg7 {
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
    r26 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    r23 = [arg7 retain];
    if (r22 != 0x0 && [r22 respondsToSelector:@selector(logBotDetectionSignalData:forProductName:forLoggerEventName:), r3, r4] != 0x0) {
            r25 = [NSMutableDictionary new];
            var_58 = [[FBBotDetectionSignalCollectionConstants productNameForProductType:r26] retain];
            [r25 setObject:r2 forKeyedSubscript:r3];
            [[FBBDSignalParser signalConfigTimestamp] retain];
            objc_msgSend(r25, r27);
            [r28 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            r28 = r0;
            [r0 timeIntervalSince1970];
            asm { fcvtas     x26, d0 };
            [r28 release];
            [[NSNumber numberWithInteger:r26] retain];
            objc_msgSend(r25, r27);
            [r26 release];
            r26 = @class(NSNumber);
            [[r26 numberWithInt:[r23 reputationTier]] retain];
            objc_msgSend(r25, r27);
            [r26 release];
            [[r20 lowercaseString] retain];
            objc_msgSend(r25, r27);
            [r26 release];
            objc_msgSend(r25, r27);
            objc_msgSend(r22, r24);
            [var_58 release];
            [r25 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)sendBotDetectionSignalsForEventId:(void *)arg2 sessionID:(void *)arg3 productType:(unsigned long long)arg4 eventType:(void *)arg5 bdSessionIds:(void *)arg6 withSignalsAndErrorsDict:(void *)arg7 withLoggerDelegate:(void *)arg8 withConfigDelegate:(void *)arg9 withSignalCollectionUpdateBlock:(void *)arg10 {
    r31 = r31 - 0x1e0;
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
    var_158 = [arg3 retain];
    r25 = [arg6 retain];
    r27 = [arg7 retain];
    var_160 = [arg8 retain];
    var_168 = [arg9 retain];
    r23 = [arg10 retain];
    r26 = [NSMutableDictionary new];
    r21 = [NSMutableDictionary new];
    var_180 = arg4;
    r0 = [FBBotDetectionSignalCollectionConstants productNameForProductType:arg4];
    r0 = [r0 retain];
    var_178 = r21;
    var_198 = r0;
    [r21 setObject:arg4 forKeyedSubscript:@"product_name"];
    var_170 = self;
    r0 = [self bdSessionIdsFromBDSessionDict:r25];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_190 = r0;
    if ([r0 count] == 0x0) goto loc_100b6ef98;

loc_100b6ebe8:
    r0 = [NSMutableDictionary new];
    r0 = [r0 retain];
    r22 = r0;
    var_E8 = r0;
    [r27 enumerateKeysAndObjectsUsingBlock:&var_108];
    if ([NSJSONSerialization isValidJSONObject:r22] == 0x0) goto loc_100b6ecec;

loc_100b6ec5c:
    r0 = [NSJSONSerialization dataWithJSONObject:r22 options:0x0 error:&var_110];
    r29 = r29;
    r21 = [r0 retain];
    r0 = [var_110 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100b6ede4;

loc_100b6ec98:
    r20 = [[r19 localizedDescription] retain];
    goto loc_100b6ecb4;

loc_100b6ecb4:
    r24 = var_178;
    [r21 release];
    [r19 release];
    [var_E8 release];
    [r22 release];
    r19 = 0x0;
    if (r20 == 0x0) {
            r22 = 0x0;
            r21 = 0x0;
    }
    else {
            [r26 setObject:@"signal_construction" forKeyedSubscript:@"o"];
            [r26 setObject:@"error" forKeyedSubscript:@"l"];
            [r26 setObject:r20 forKeyedSubscript:@"em"];
            if (r19 != 0x0) {
                    [r24 setObject:r19 forKeyedSubscript:@"signal_parsing_info"];
            }
            [r26 setObject:r24 forKeyedSubscript:@"oi"];
            [FBBotDetectionLoggingUtils logOperationData:r26];
            r21 = r20;
            r22 = r19;
    }
    goto loc_100b6efa4;

loc_100b6efa4:
    r0 = [var_170 reputationTierFromBDSessionDict:r25];
    if (r23 != 0x0) {
            (*(r23 + 0x10))(r23, r0);
    }
    var_60 = **___stack_chk_guard;
    [var_190 release];
    [r22 release];
    [var_198 release];
    [r24 release];
    [r26 release];
    [r21 release];
    [r23 release];
    [var_168 release];
    [var_160 release];
    [r27 release];
    [r25 release];
    [var_158 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100b6ede4:
    if (r21 == 0x0) goto loc_100b6f064;

loc_100b6ede8:
    r24 = [[NSString alloc] initWithData:r21 encoding:0x4];
    [r21 release];
    [r19 release];
    if (r24 != 0x0) {
            var_1C0 = r22;
            stack[-456] = r23;
            var_1B0 = r27;
            stack[-440] = r25;
            var_140 = q0;
            r0 = [var_190 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_188 = r0;
            var_1A0 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r19 = r0;
                    r27 = *var_140;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_140 != r27) {
                                            objc_enumerationMutation(var_188);
                                    }
                                    [r26 setObject:*(var_148 + r21 * 0x8) forKeyedSubscript:@"bid"];
                                    [var_170 logEventWithBDSessionId:r2 withAppSessionId:r3 productType:r4 jsonData:r5 withLoggerDelegate:r6 withConfigDelegate:r7];
                                    [r26 setObject:@"event_occured" forKeyedSubscript:@"o"];
                                    [r26 setObject:@"info" forKeyedSubscript:@"l"];
                                    [r26 setObject:var_178 forKeyedSubscript:@"oi"];
                                    objc_msgSend(@class(FBBotDetectionLoggingUtils), r23);
                                    r21 = r21 + 0x1;
                            } while (r21 < r19);
                            r0 = objc_msgSend(var_188, var_1A0);
                            r19 = r0;
                    } while (r0 != 0x0);
            }
            [var_188 release];
            [r24 release];
            r27 = var_1B0;
            r25 = stack[-440];
            r22 = var_1C0;
            r23 = stack[-456];
    }
    [var_E8 release];
    [r22 release];
    goto loc_100b6ef98;

loc_100b6ef98:
    r21 = 0x0;
    r22 = 0x0;
    r24 = var_178;
    goto loc_100b6efa4;

loc_100b6f064:
    r20 = @"JsonConstructionFailed";
    [r20 retain];
    goto loc_100b6ecb4;

loc_100b6ecec:
    r19 = [[NSString stringWithFormat:r2] retain];
    r20 = @"InvalidBDJson";
    [r20 retain];
    [var_E8 release];
    [r22 release];
    r24 = var_178;
    [r26 setObject:@"signal_construction" forKeyedSubscript:@"o"];
    [r26 setObject:@"error" forKeyedSubscript:@"l"];
    [r26 setObject:r20 forKeyedSubscript:@"em"];
    if (r19 != 0x0) {
            [r24 setObject:r19 forKeyedSubscript:@"signal_parsing_info"];
    }
    [r26 setObject:r24 forKeyedSubscript:@"oi"];
    [FBBotDetectionLoggingUtils logOperationData:r26];
    r21 = r20;
    r22 = r19;
    goto loc_100b6efa4;
}

@end