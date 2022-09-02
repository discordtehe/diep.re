@implementation ANSAttributeDictionary

-(void *)initWithDictionary:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[self init] retain];
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_48];
    [r22 release];
    [r20 release];
    r0 = r20;
    return r0;
}

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
            r20 = [[NSMutableDictionary dictionary] retain];
            [r19 setRawDictionary:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    r0 = [self rawDictionary];
    r0 = [r0 retain];
    r20 = [[r0 description] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)dictionaryRepresentation {
    r0 = [self rawDictionary];
    return r0;
}

-(void)addPriceAttribute:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self serializePriceToMicros:r21] retain];
    [r21 release];
    r21 = [[self truncateString:r19] retain];
    [r19 release];
    [self addAttribute:r22 forKey:r21];
    [r21 release];
    [r22 release];
    return;
}

-(void)addBooleanAttribute:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self serializeSuccess:r21] retain];
    [r21 release];
    r21 = [[self truncateString:r19] retain];
    [r19 release];
    [self addAttribute:r22 forKey:r21];
    [r21 release];
    [r22 release];
    return;
}

-(bool)validAttributeValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [NSNumber class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r21 = @selector(isKindOfClass:);
            [NSString class];
            r20 = objc_msgSend(r19, r21);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)addAttribute:(void *)arg2 forKey:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0 || r20 == 0x0) goto loc_10012963c;

loc_1001294fc:
    r0 = [r21 rawDictionary];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 < 0x15) goto loc_10012954c;

loc_10012953c:
    r0 = @"[Answers] Maximum number of Event attributes exceeded. Ignoring entry %@:%@";
    goto loc_100129638;

loc_100129638:
    NSLog(r0);
    goto loc_10012963c;

loc_10012963c:
    [r20 release];
    [r19 release];
    return;

loc_10012954c:
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10012961c;

loc_100129578:
    if (([r21 validAttributeValue:r19] & 0x1) == 0x0) goto loc_10012962c;

loc_100129590:
    r22 = [[r21 rawDictionary] retain];
    r23 = [[r21 serializeAttributeValue:r19] retain];
    r21 = [[r21 truncateString:r20] retain];
    [r22 setValue:r23 forKey:r21];
    [r21 release];
    [r23 release];
    [r22 release];
    goto loc_10012963c;

loc_10012962c:
    r0 = @"[Answers] Event attribute values must be of type NSString or NSNumber. Ignoring entry %@:%@";
    goto loc_100129638;

loc_10012961c:
    r0 = @"[Answers] Event attribute keys must be of type NSString. Ignoring entry %@:%@";
    goto loc_100129638;
}

-(void *)serializeAttributeValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1001298d8;

loc_1001298bc:
    r0 = [r20 truncateString:r19];
    goto loc_100129914;

loc_100129914:
    r20 = [r0 retain];
    goto loc_100129924;

loc_100129924:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1001298d8:
    r22 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r19, r22) == 0x0) goto loc_100129920;

loc_1001298fc:
    r0 = [r20 serializeNumber:r19];
    goto loc_100129914;

loc_100129920:
    r20 = 0x0;
    goto loc_100129924;
}

-(void *)serializeSuccess:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            if ([r19 boolValue] != 0x0) {
                    r20 = @"true";
            }
            else {
                    r20 = @"false";
            }
            [r20 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)truncateString:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = @selector(length);
    r19 = [r20 retain];
    r1 = r21;
    if (objc_msgSend(r20, r1) >= 0x65) {
            NSLog(@"[Answers] Maximum length for an Event attributes exceeded. Truncating to %u characters.", r1);
    }
    r0 = [r20 length];
    if (r0 < 0x64) {
            if (!CPU_FLAGS & B) {
                    r2 = 0x64;
            }
            else {
                    r2 = r0;
            }
    }
    r20 = [[r20 substringToIndex:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)serializePriceToMicros:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = @class(NSDecimalNumber);
    r20 = [r21 retain];
    r19 = [[r19 decimalNumberWithString:@"1000000"] retain];
    r0 = @class(NSDecimalNumber);
    r0 = [r0 maximumDecimalNumber];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 decimalNumberByDividingBy:r19];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if ([r21 compare:r2] == 0x1) {
            NSLog(@"[Answers] Maximum value for a price attribute exceeded. Ignoring price attribute with value: %@", @selector(compare:));
            [r20 release];
            r21 = 0x0;
    }
    else {
            r21 = [[r21 decimalNumberByMultiplyingBy:r19] retain];
            [r20 release];
    }
    [r22 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)serializeNumber:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = [[NSDecimalNumber notANumber] retain];
            r21 = [r19 isEqual:r2];
            [r20 release];
            if ((r21 & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r20 = [r19 retain];
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setRawDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rawDictionary, arg2);
    return;
}

-(void *)rawDictionary {
    r0 = self->_rawDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rawDictionary, 0x0);
    return;
}

@end