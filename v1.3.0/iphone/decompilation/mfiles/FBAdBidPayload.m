@implementation FBAdBidPayload

-(bool)hasServerResponse {
    r0 = [self payloadType];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)hasBidID {
    r0 = [self payloadType];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2] ^ 0x1;
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)initWithJsonData:(void *)arg2 placementID:(void *)arg3 templateID:(long long)arg4 error:(void * *)arg5 {
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
    r22 = arg5;
    r25 = arg4;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r0 == 0x0) goto loc_100a06410;

loc_100a06318:
    var_68 = r22;
    r26 = (int64_t *)&r21->_payloadType;
    objc_storeStrong(r26, @"EMPTY");
    r0 = @class(FBAdUtility);
    r0 = [r0 getObjectFromJSONString:r19];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 stringForKey:@"bid_id" orDefault:@""];
    r29 = r29;
    r23 = [r0 retain];
    if (([FBAdUtility isStringEmpty:r2] & 0x1) == 0x0) goto loc_100a06418;

loc_100a063a4:
    r25 = [[NSString stringWithFormat:@"Invalid bid payload"] retain];
    r24 = r24;
    r0 = [FBAdError getNSError:0xfa2 description:r25];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r26 = 0x0;
    *var_68 = r0;
    goto loc_100a0662c;

loc_100a0662c:
    [r25 release];
    goto loc_100a06634;

loc_100a06634:
    [r23 release];
    [r22 release];
    goto loc_100a06644;

loc_100a06644:
    [r24 release];
    [r19 release];
    [r21 release];
    r0 = r26;
    return r0;

loc_100a06418:
    objc_storeStrong(r26, @"ID");
    [r21 setBidID:[r23 longLongValue]];
    if (([r21 isPayloadValid:r22 placementID:r24 templateID:r25 error:var_68] & 0x1) == 0x0) goto loc_100a065b0;

loc_100a06470:
    var_70 = r24;
    r0 = [r22 stringForKey:@"bid_time_token" orDefault:@""];
    r24 = r0;
    r29 = r29;
    r25 = [r0 retain];
    if (([FBAdUtility isStringEmpty:r2] & 0x1) == 0x0) {
            objc_storeStrong((int64_t *)&r21->_bidTimeToken, r24);
    }
    r0 = [r22 stringForKey:@"type" orDefault:@""];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 caseInsensitiveCompare:@"CREATIVE"];
    [r0 release];
    r24 = var_70;
    if (r27 != 0x0) goto loc_100a065a0;

loc_100a06518:
    r0 = [r22 stringForKeyOrNil:@"payload"];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 == 0x0 || [r27 length] == 0x0) goto loc_100a065b8;

loc_100a06554:
    objc_storeStrong(r26, @"CREATIVE");
    r0 = [r27 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_serverResponse));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r27 release];
    goto loc_100a065a0;

loc_100a065a0:
    r26 = [r21 retain];
    goto loc_100a0662c;

loc_100a065b8:
    r26 = [[NSString stringWithFormat:@"Invalid bid payload"] retain];
    r24 = var_70;
    *var_68 = [[[FBAdError getNSError:0xfa2 description:r26] retain] autorelease];
    [r26 release];
    [r27 release];
    r26 = 0x0;
    goto loc_100a0662c;

loc_100a065b0:
    r26 = 0x0;
    goto loc_100a06634;

loc_100a06410:
    r26 = 0x0;
    goto loc_100a06644;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bidTimeToken, 0x0);
    objc_storeStrong((int64_t *)&self->_serverResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_payloadType, 0x0);
    return;
}

-(void *)payloadType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_payloadType)), 0x0);
    return r0;
}

-(long long)bidID {
    r0 = self->_bidID;
    return r0;
}

-(void)setBidID:(long long)arg2 {
    self->_bidID = arg2;
    return;
}

-(bool)isPayloadValid:(void *)arg2 placementID:(void *)arg3 templateID:(long long)arg4 error:(void * *)arg5 {
    r31 = r31 - 0xc0;
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
    var_80 = arg4;
    var_78 = arg5;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r22 = [@(0x65) retain];
    r23 = [@(0x66) retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:0x67];
    r0 = [r0 retain];
    var_68 = [[NSSet setWithObjects:r22] retain];
    [r0 release];
    [r23 release];
    [r22 release];
    var_58 = [[r19 stringForKey:@"bid_id" orDefault:@""] retain];
    r24 = [[r19 stringForKey:@"sdk_version" orDefault:@""] retain];
    var_60 = [[r19 stringForKey:@"resolved_placement_id" orDefault:@""] retain];
    r28 = [r19 integerForKey:@"template" orDefault:0x0];
    var_70 = [[r19 stringForKey:@"device_id" orDefault:@""] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a06880;

loc_100a06854:
    r26 = [r24 isEqualToString:r2];
    [r0 release];
    if ((r26 & 0x1) == 0x0) goto loc_100a06994;

loc_100a06880:
    var_88 = r24;
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a068c8;

loc_100a068a4:
    r22 = [var_60 isEqualToString:r2];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100a06a9c;

loc_100a068c8:
    var_90 = r27;
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r28 == var_80 || r20 == 0x0) goto loc_100a06a10;

loc_100a068fc:
    r0 = [NSNumber numberWithLong:r28];
    r29 = r29;
    r22 = [r0 retain];
    r24 = var_68;
    if ([r24 containsObject:r2] == 0x0) goto loc_100a06b18;

loc_100a06940:
    r27 = @selector(containsObject:);
    r25 = var_80;
    r0 = [NSNumber numberWithLong:r25];
    r29 = r29;
    r26 = [r0 retain];
    r27 = objc_msgSend(r24, r27);
    [r26 release];
    [r22 release];
    [r20 release];
    if ((r27 & 0x1) != 0x0) goto loc_100a06a18;

loc_100a06b2c:
    r21 = [[NSString stringWithFormat:@"Bid %@ for type %ld being used on template %ld"] retain];
    *var_78 = [[[FBAdError getNSError:0xfa1 description:r21] retain] autorelease];
    [r21 release];
    r20 = 0x0;
    goto loc_100a06ba8;

loc_100a06ba8:
    r27 = var_90;
    goto loc_100a06bac;

loc_100a06bac:
    r28 = var_70;
    r23 = var_68;
    r24 = var_88;
    goto loc_100a06bb4;

loc_100a06bb4:
    [r28 release];
    [var_60 release];
    [r24 release];
    [var_58 release];
    [r23 release];
    [r27 release];
    [r19 release];
    r0 = r20;
    return r0;

loc_100a06a18:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a06ba4;

loc_100a06a38:
    r21 = r0;
    r0 = [FBAdUtility getAdvertisingIdentifier];
    r29 = r29;
    r22 = [r0 retain];
    r28 = var_70;
    r26 = [r28 isEqualToString:r2];
    [r22 release];
    [r21 release];
    r27 = var_90;
    r24 = var_88;
    r23 = var_68;
    if ((r26 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = [[FBAdUtility getAdvertisingIdentifier] retain];
            r22 = [[NSString stringWithFormat:@"Bid %@ for device id %@ being used on device id %@"] retain];
            *var_78 = [[[FBAdError getNSError:0xfa1 description:r22] retain] autorelease];
            [r22 release];
            [r20 release];
            r20 = 0x0;
    }
    goto loc_100a06bb4;

loc_100a06ba4:
    r20 = 0x1;
    goto loc_100a06ba8;

loc_100a06b18:
    [r22 release];
    [r20 release];
    r25 = var_80;
    goto loc_100a06b2c;

loc_100a06a10:
    [r20 release];
    goto loc_100a06a18;

loc_100a06a9c:
    r21 = [[NSString stringWithFormat:@"Bid %@ for placement %@ being used on placement %@"] retain];
    *var_78 = [[[FBAdError getNSError:0xfa1 description:r21] retain] autorelease];
    [r21 release];
    r20 = 0x0;
    goto loc_100a06bac;

loc_100a06994:
    r20 = [[NSString stringWithFormat:@"Bid %@ for SDK version %@ being used on SDK version %@"] retain];
    *var_78 = [[[FBAdError getNSError:0xfa1 description:r20] retain] autorelease];
    [r20 release];
    r20 = 0x0;
    r28 = var_70;
    r23 = var_68;
    goto loc_100a06bb4;
}

-(void *)serverResponse {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_serverResponse)), 0x0);
    return r0;
}

-(void *)bidTimeToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bidTimeToken)), 0x0);
    return r0;
}

+(long long)adTemplateIdWithJsonData:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdUtility getObjectFromJSONString:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 integerForKey:@"template" orDefault:0x0];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdBidPayload");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end