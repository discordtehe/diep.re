@implementation MPNativePositionResponseDeserializer

+(void *)deserializer {
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)parseFixedPositionsObject:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0xc0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            [NSArray class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r0 = [r20 retain];
                    r22 = r0;
                    var_70 = r0;
                    [r19 enumerateObjectsUsingBlock:&var_98];
                    r0 = *(&var_60 + 0x28);
                    if (r0 != 0x0) {
                            if (r21 != 0x0) {
                                    r0 = objc_retainAutorelease(r0);
                                    r22 = 0x0;
                                    *r21 = r0;
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r22 = [r22 retain];
                    }
                    [var_70 release];
                    _Block_object_dispose(&var_60, 0x8);
                    [0x0 release];
            }
            else {
                    r23 = [[NSString stringWithFormat:@"Expected object for key \"%@\" to be an array. Actual: %@"] retain];
                    [r22 safeAssignError:r21 code:0x2 description:r23];
                    [r23 release];
                    r22 = 0x0;
            }
    }
    else {
            r0 = [r20 retain];
            r22 = r0;
            var_70 = r0;
            [r19 enumerateObjectsUsingBlock:&var_98];
            r0 = *(&var_60 + 0x28);
            if (r0 != 0x0) {
                    if (r21 != 0x0) {
                            r0 = objc_retainAutorelease(r0);
                            r22 = 0x0;
                            *r21 = r0;
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = [r22 retain];
            }
            [var_70 release];
            _Block_object_dispose(&var_60, 0x8);
            [0x0 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)clientPositioningForData:(void *)arg2 error:(void * *)arg3 {
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
    r24 = arg3;
    r27 = self;
    r19 = [arg2 retain];
    r0 = [MPClientAdPositioning positioning];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r0 = [NSJSONSerialization mp_JSONObjectWithData:r19 options:0x0 clearNullObjects:0x1 error:r29 - 0x58];
            r29 = r29;
            r21 = [r0 retain];
            r0 = [0x0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    [r27 safeAssignError:r24 code:0x1 description:@"Failed to deserialize JSON." underlyingError:r22];
                    r23 = [[MPClientAdPositioning positioning] retain];
            }
            else {
                    var_A8 = r22;
                    r25 = [[r21 objectForKey:@"fixed"] retain];
                    r0 = [r27 parseFixedPositionsObject:r25 error:&var_60];
                    r29 = r29;
                    var_98 = [r0 retain];
                    r0 = [var_60 retain];
                    r22 = r21;
                    [r25 release];
                    var_A0 = r0;
                    if (r0 != 0x0) {
                            r27 = var_A0;
                            if (r24 != 0x0) {
                                    *r24 = objc_retainAutorelease(r27);
                            }
                            r23 = [[MPClientAdPositioning positioning] retain];
                            r25 = var_98;
                            r21 = r22;
                            r22 = var_A8;
                    }
                    else {
                            r0 = [r22 objectForKey:@"repeating"];
                            r29 = r29;
                            r25 = [r0 retain];
                            var_B8 = [r27 parseRepeatingIntervalObject:r25 error:&var_68];
                            r28 = [var_68 retain];
                            [r25 release];
                            r21 = r22;
                            var_B0 = r28;
                            if (r28 != 0x0) {
                                    r25 = var_98;
                                    r28 = var_B0;
                                    r22 = var_A8;
                                    if (r24 != 0x0) {
                                            *r24 = objc_retainAutorelease(r28);
                                    }
                                    r23 = [[MPClientAdPositioning positioning] retain];
                                    r27 = var_A0;
                            }
                            else {
                                    r25 = var_98;
                                    r0 = [r25 count];
                                    r28 = var_B8;
                                    r22 = var_A8;
                                    if (r28 <= 0x0 && r0 == 0x0) {
                                            [r27 safeAssignError:r24 code:0x2 description:@"Positioning object must have either fixed positions or a repeating interval."];
                                            r23 = [[MPClientAdPositioning positioning] retain];
                                    }
                                    else {
                                            r0 = [r20 retain];
                                            [r25 enumerateObjectsUsingBlock:&var_90];
                                            [r0 enableRepeatingPositionsWithInterval:r28];
                                            r23 = [r0 retain];
                                            [r0 release];
                                    }
                                    r27 = var_A0;
                                    r28 = var_B0;
                            }
                            [r28 release];
                    }
                    [r25 release];
                    [r27 release];
            }
            [r21 release];
            [r22 release];
    }
    else {
            [r27 safeAssignError:r24 code:0x0 description:@"Positioning cannot be created from nil or empty data."];
            r23 = [[MPClientAdPositioning positioning] retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(long long)parseRepeatingIntervalObject:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r23 = [r22 validateRepeatingIntervalObject:r19 error:&var_38];
            r20 = [var_38 retain];
            if ((r23 & 0x1) != 0x0) {
                    r22 = [r22 integerFromDictionary:r19 forKey:@"interval" defaultValue:0x0];
            }
            else {
                    if (r21 != 0x0) {
                            r0 = objc_retainAutorelease(r20);
                            r22 = 0x0;
                            *r21 = r0;
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)validateRepeatingIntervalObject:(void *)arg2 error:(void * *)arg3 {
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
    r19 = arg3;
    r20 = self;
    r21 = [arg2 retain];
    [NSDictionary class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1005033e8;

loc_10050336c:
    r23 = [r20 integerFromDictionary:r21 forKey:@"interval" defaultValue:0x0];
    [r21 release];
    if (r23 < 0x10001) goto loc_100503448;

loc_1005033ac:
    r22 = [[NSString stringWithFormat:@"\"%@\" value in repeating interval object needs to be between %ld and %ld: %ld."] retain];
    goto loc_10050341c;

loc_10050341c:
    [r20 safeAssignError:r19 code:0x2 description:r22];
    [r22 release];
    r0 = 0x0;
    return r0;

loc_100503448:
    r0 = 0x1;
    return r0;

loc_1005033e8:
    r22 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    goto loc_10050341c;
}

-(bool)validatePositionObject:(void *)arg2 error:(void * *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    [NSDictionary class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100503230;

loc_1005031a8:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100503260;

loc_1005031cc:
    r25 = [r21 integerFromDictionary:r2 forKey:r3 defaultValue:r4];
    [r0 release];
    if ((r25 & 0xffffffff80000000) == 0x0) goto loc_100503260;

loc_100503208:
    r0 = [NSString stringWithFormat:r2];
    goto loc_1005032b4;

loc_1005032b4:
    r22 = [r0 retain];
    [r21 safeAssignError:r20 code:0x2 description:r22];
    [r22 release];
    r20 = 0x0;
    goto loc_1005032e4;

loc_1005032e4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100503260:
    r0 = [r21 integerFromDictionary:r2 forKey:r3 defaultValue:r4];
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_10050328c;

loc_100503284:
    r20 = 0x1;
    goto loc_1005032e4;

loc_10050328c:
    r0 = [NSString stringWithFormat:r2];
    goto loc_1005032b4;

loc_100503230:
    r0 = [NSString stringWithFormat:r2];
    goto loc_1005032b4;
}

-(long long)integerFromDictionary:(void *)arg2 forKey:(void *)arg3 defaultValue:(long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r0 = [arg2 retain];
    r21 = r0;
    r0 = [r0 objectForKey:arg3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [NSNumber class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r19 = [r20 integerValue];
    }
    else {
            r22 = @selector(isKindOfClass:);
            r2 = [NSString class];
            if (objc_msgSend(r20, r22) != 0x0) {
                    if (*0x1011d84f0 == 0x0) {
                            r0 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789-"];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 invertedSet];
                            r0 = [r0 retain];
                            r8 = *0x1011d84f0;
                            *0x1011d84f0 = r0;
                            [r8 release];
                            [r21 release];
                            r2 = *0x1011d84f0;
                    }
                    if ([r20 rangeOfCharacterFromSet:r2] == 0x7fffffffffffffff) {
                            r19 = [r20 integerValue];
                    }
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)safeAssignError:(void * *)arg2 code:(unsigned long long)arg3 userInfo:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            *r2 = [[[r0 deserializationErrorWithCode:r3 userInfo:r4] retain] autorelease];
    }
    return;
}

-(void)safeAssignError:(void * *)arg2 code:(unsigned long long)arg3 description:(void *)arg4 {
    [self safeAssignError:arg2 code:arg3 description:arg4 underlyingError:0x0];
    return;
}

-(void)safeAssignError:(void * *)arg2 code:(unsigned long long)arg3 description:(void *)arg4 underlyingError:(void *)arg5 {
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
    r20 = arg3;
    r21 = arg2;
    r23 = self;
    r19 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [[NSMutableDictionary dictionary] retain];
    if (r19 != 0x0) {
            [r24 setObject:r2 forKey:r3];
    }
    if (r22 != 0x0) {
            [r24 setObject:r2 forKey:r3];
    }
    [r23 safeAssignError:r21 code:r20 userInfo:r24];
    [r24 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)deserializationErrorWithCode:(unsigned long long)arg2 userInfo:(void *)arg3 {
    r0 = [NSError errorWithDomain:@"com.mopub.iossdk.position.deserialization" code:arg2 userInfo:arg3];
    return r0;
}

@end