@implementation UMONPromoMetaDataUtilities

+(void *)productFromDictionary:(void *)arg2 {
    r0 = [arg2 retain];
    var_28 = r0;
    r21 = [r0 retain];
    r0 = [UPURProduct build:&var_48];
    r19 = [r0 retain];
    [var_28 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)createItemFromMap:(void *)arg2 {
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
    r21 = [[UMONItemBuilder alloc] init];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setProductId:r23];
            [r23 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            [r21 setQuantity:@"quantity"];
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r19 objectForKeyedSubscript:r2] retain];
            [r21 setType:r22];
            [r22 release];
    }
    r20 = [[UMONItem alloc] initWithBuilder:r21];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getItemListFromList:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [[NSMutableArray alloc] init];
    r0 = [r21 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(addObject:);
                            r0 = [r19 createItemFromMap:*(0x0 + r28 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r25);
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r19 = [r20 copy];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)createPromoMetadataFromParamsMap:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[UMONPromoMetaDataBuilder alloc] init];
    r25 = [[arg2 objectForKeyedSubscript:@"product"] retain];
    r26 = [[self productFromDictionary:r25] retain];
    [r20 setPremiumProduct:r26];
    [r26 release];
    [r25 release];
    r25 = [[arg2 objectForKeyedSubscript:@"costs"] retain];
    r27 = [[self getItemListFromList:r25] retain];
    [r20 setCosts:r27];
    [r27 release];
    [r25 release];
    r25 = [[arg2 objectForKeyedSubscript:@"payouts"] retain];
    r26 = [[self getItemListFromList:r25] retain];
    [r20 setPayouts:r26];
    [r26 release];
    [r25 release];
    r25 = [[arg2 objectForKeyedSubscript:@"userInfo"] retain];
    [r20 setUserInfo:r25];
    [r25 release];
    r0 = [arg2 objectForKeyedSubscript:@"impressionDate"];
    r0 = [r0 retain];
    r27 = [[self dateFromMillis:[r0 longValue]] retain];
    [r20 setImpressionDate:r27];
    [r27 release];
    [r0 release];
    r23 = [[arg2 objectForKeyedSubscript:@"offerDuration"] retain];
    [r22 release];
    r2 = [r23 longValue];
    [self timeDurationFromMillis:r2];
    [r20 setOfferDuration:r2];
    [r23 release];
    r19 = [[UMONPromoMetaData alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(double)timeDurationFromMillis:(long long)arg2 {
    r0 = self;
    asm { scvtf      s0, x2 };
    asm { fdiv       s0, s0, s1 };
    asm { fcvt       d0, s0 };
    return r0;
}

+(void *)dateFromMillis:(long long)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 timeDurationFromMillis:r2];
            r0 = [NSDate dateWithTimeIntervalSince1970:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    else {
            r0 = [0x0 autorelease];
    }
    return r0;
}

@end