@implementation FBAdProviderResponseParser

-(void *)parsePlacementDefinitionFromData:(void *)arg2 {
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
    r0 = [self parsePlacementObjectFromJsonData:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"code"];
            r29 = r29;
            r22 = [r0 retain];
            [NSNumber class];
            r23 = [r22 isKindOfClass:r2];
            [r22 release];
            if (r23 != 0x0) {
                    r22 = [[r20 objectForKeyedSubscript:@"definition"] retain];
                    r21 = [[FBAdPlacementDefinition alloc] initWithPlacementData:r22];
                    [r22 release];
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
    r0 = [r21 autorelease];
    return r0;
}

-(void *)parsePlacementObjectFromJsonData:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:@"placements"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [NSArray class];
            if ([r19 isKindOfClass:r2] != 0x0 && [r19 count] != 0x0) {
                    r20 = [[r19 objectAtIndex:r2] retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_onParseError, 0x0);
    objc_storeStrong((int64_t *)&self->_onParseSuccess, 0x0);
    return;
}

-(void *)onParseSuccess {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onParseSuccess)), 0x0);
    return r0;
}

-(void *)onParseError {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onParseError)), 0x0);
    return r0;
}

-(void)setOnParseSuccess:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOnParseError:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)parseResponseFromData:(void *)arg2 successHandler:(void *)arg3 errorHandler:(void *)arg4 {
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
    r28 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [r19 length];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdProviderResponseParser.m" lineNumber:0x4a format:@"Parsing JSON data (%lu bytes)"];
    r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:&saved_fp - 0x58];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r0 = [0x0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 code];
            [[r22 description] retain];
            (*(r21 + 0x10))(r21, [[NSString stringWithFormat:@"Failed to parse JSON string, code=%ld description=%@"] retain]);
            [r24 release];
            r0 = r25;
    }
    else {
            r0 = [r28 parsePlacementObjectFromJsonData:r23];
            r29 = r29;
            r26 = [r0 retain];
            var_98 = [[FBAdDataModel alloc] initWithMetadata:r26];
            if (var_98 != 0x0) {
                    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/server/FBAdProviderResponseParser.m" lineNumber:0x5d format:@"Created data model in order to save feature_config."];
            }
            var_A8 = r26;
            var_90 = [[FBAdProviderResponse alloc] initWithType:0x0];
            r0 = [r23 objectForKeyedSubscript:@"type"];
            r29 = r29;
            r27 = [r0 retain];
            [NSString class];
            r1 = @selector(isKindOfClass:);
            var_B8 = r1;
            r24 = objc_msgSend(r27, r1);
            [r27 release];
            if (r24 != 0x0) {
                    r0 = [r23 objectForKeyedSubscript:@"type"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 isEqualToString:r2];
                    [r0 release];
                    if (r26 != 0x0) {
                            r24 = [[r23 stringForKey:@"message" orDefault:@""] retain];
                            r25 = [r23 integerForKey:@"code" orDefault:0x7d0];
                            r26 = [[r28 parsePlacementDefinitionFromData:r23] retain];
                            r25 = [[FBAdProviderResponseError alloc] initWithErrorMessage:r24 withErrorCode:r25 withPlacementDefinition:r26];
                            [var_90 release];
                            [r26 release];
                            [r24 release];
                            var_90 = r25;
                    }
                    else {
                            r27 = @selector(isEqualToString:);
                            r0 = [r23 objectForKeyedSubscript:@"type"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = objc_msgSend(r0, r27);
                            [r0 release];
                            if (var_A8 != 0x0 && ((r27 ^ 0x1) & 0x1) == 0x0) {
                                    r0 = [r23 objectForKeyedSubscript:@"code"];
                                    r29 = r29;
                                    [r0 retain];
                                    [NSNumber class];
                                    r24 = objc_msgSend(r27, var_B8);
                                    [r27 release];
                                    if (r24 != 0x0) {
                                            r0 = [r23 objectForKeyedSubscript:@"code"];
                                            r0 = [r0 retain];
                                            var_C0 = [r0 integerValue];
                                            [r0 release];
                                            var_C8 = [[r23 stringForKey:@"message" orDefault:@""] retain];
                                            r0 = [r28 parsePlacementDefinitionFromData:r23];
                                            r26 = var_A8;
                                            var_D0 = [r0 retain];
                                            r0 = [NSMutableArray array];
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            if (var_C0 == 0x0) {
                                                    [[r26 objectForKeyedSubscript:@"ads"] retain];
                                                    [NSArray class];
                                                    r24 = objc_msgSend(r27, var_B8);
                                                    [r27 release];
                                                    if (r24 != 0x0) {
                                                            r24 = [[r26 objectForKeyedSubscript:@"ads"] retain];
                                                            var_68 = [r26 retain];
                                                            var_60 = [r28 retain];
                                                            [r24 enumerateObjectsUsingBlock:&var_88];
                                                            [r24 release];
                                                            [var_60 release];
                                                            [var_68 release];
                                                    }
                                            }
                                            r24 = [FBAdProviderResponseAds alloc];
                                            r25 = [[FBAdPlacement alloc] initWithCode:var_C0 message:var_C8 definition:var_D0 adCandidates:r28];
                                            r24 = [r24 initWithAdPlacement:r25];
                                            [var_90 release];
                                            [r25 release];
                                            [r28 release];
                                            [var_D0 release];
                                            [var_C8 release];
                                            var_90 = r24;
                                    }
                            }
                    }
            }
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, var_90);
            }
            [var_90 release];
            [var_98 release];
            r0 = var_A8;
    }
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end