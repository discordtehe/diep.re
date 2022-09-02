@implementation NSString

-(long long)unityAdsErrorFromString {
    r31 = r31 - 0x120;
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
    var_58 = **___stack_chk_guard;
    var_108 = [@(0x0) retain];
    r21 = [@(0x1) retain];
    r22 = [@(0x2) retain];
    r24 = [@(0x3) retain];
    r25 = [@(0x4) retain];
    r26 = [@(0x5) retain];
    r27 = [@(0x6) retain];
    r28 = [@(0x7) retain];
    r19 = [@(0x8) retain];
    r20 = [@(0x9) retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_A8 forKeys:&var_F8 count:0xa] retain];
    [r20 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [var_108 release];
    r0 = [r23 objectForKeyedSubscript:self];
    r0 = [r0 retain];
    r19 = [r0 integerValue];
    [r0 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sha256 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [objc_retainAutorelease(self) UTF8String];
    r0 = sub_100021280();
    r22 = &stack[-104];
    CC_SHA256(r19, r0, &stack[-104]);
    r19 = [[NSMutableString stringWithCapacity:0x40] retain];
    r23 = 0x0;
    do {
            [r19 appendFormat:r2];
            r23 = r23 + 0x1;
    } while (r23 != 0x20);
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)apm_stringByUnescapingFromURLArgument {
    r0 = [NSMutableString stringWithString:self];
    r0 = [r0 retain];
    [r0 length];
    [r0 replaceOccurrencesOfString:@"+" withString:@" " options:0x2 range:0x0];
    r20 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)apm_MD5String {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataUsingEncoding:0x4 allowLossyConversion:0x0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 apm_MD5Data];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r21 = [r0 bytes];
            r21 = [[NSString alloc] initWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", *(int8_t *)(r21 + 0xb), *(int8_t *)(r21 + 0xc), *(int8_t *)(r21 + 0xd), r6, r7, *(int8_t *)r21, *(int8_t *)(r21 + 0x1), *(int8_t *)(r21 + 0x2), *(int8_t *)(r21 + 0x3), *(int8_t *)(r21 + 0x4), *(int8_t *)(r21 + 0x5), *(int8_t *)(r21 + 0x6), *(int8_t *)(r21 + 0x7), *(int8_t *)(r21 + 0x8), *(int8_t *)(r21 + 0x9), *(int8_t *)(r21 + 0xa)];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(unsigned long long)apm_UTF32Length {
    r0 = [self lengthOfBytesUsingEncoding:0x9c000100];
    r0 = r0 >> 0x2;
    return r0;
}

-(void)apm_getUTF32Bytes:(void *)arg2 maxBytes:(unsigned long long)arg3 {
    [self length];
    [self getBytes:arg2 maxLength:arg3 usedLength:0x0 encoding:0x9c000100 options:0x0 range:r7 remainingRange:0x0];
    return;
}

-(void *)mp_URLEncodedString {
    r0 = CFURLCreateStringByAddingPercentEscapes(0x0, self, 0x0, @"!*'();:@&=+$,/?%#[]<>", 0x8000100);
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void *)safeIntegerValue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*0x1011d8308 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r8 = *0x1011d8308;
            *0x1011d8308 = r0;
            [r8 release];
            [*0x1011d8308 setNumberStyle:0x0];
    }
    r0 = *0x1011d8308;
    r0 = [r0 numberFromString:r19];
    return r0;
}

+(void *)stringFromConsentStatus:(long long)arg2 {
    r2 = arg2;
    if (r2 <= 0x4) {
            r0 = (0x1004c32ac + *(int8_t *)(0x100be3f3f + r2) * 0x4)();
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(long long)consentStatusValue {
    r31 = r31 - 0xb0;
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
    if (*0x1011d83d8 == 0x0) {
            r20 = [@(0x2) retain];
            r21 = [@(0x1) retain];
            r23 = [@(0x4) retain];
            r24 = [@(0x3) retain];
            r22 = [@(0x0) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_98 count:0x5];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011d83d8;
            *0x1011d83d8 = r0;
            [r8 release];
            [r22 release];
            [r24 release];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    var_48 = **___stack_chk_guard;
    r0 = *0x1011d83d8;
    r0 = [r0 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    r19 = [r0 integerValue];
    [r0 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)vng_creativeID {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0 == 0x0) goto loc_100657d70;

loc_100657cec:
    r0 = [r0 componentsSeparatedByString:@"|"];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] < 0x1) goto loc_100657d68;

loc_100657d20:
    r0 = [r19 objectAtIndexedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r19 objectAtIndexedSubscript:r2] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    goto loc_100657d8c;

loc_100657d8c:
    r0 = [r21 autorelease];
    return r0;

loc_100657d68:
    [r19 release];
    goto loc_100657d70;

loc_100657d70:
    r21 = 0x0;
    goto loc_100657d8c;
}

-(void *)vng_calculateSHA {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r20 = [r0 bytes];
    r0 = [r19 length];
    r23 = &stack[-92];
    CC_SHA1(r20, r0, &stack[-92]);
    r20 = [[NSMutableString stringWithCapacity:0x28] retain];
    r24 = 0x0;
    do {
            [r20 appendFormat:r2];
            r24 = r24 + 0x1;
    } while (r24 != 0x14);
    var_38 = **___stack_chk_guard;
    r21 = [r20 copy];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)adjTrim {
    r20 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r19 = [[self stringByTrimmingCharactersInSet:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)adjUrlEncode {
    r0 = CFStringConvertNSStringEncodingToEncoding(0x4);
    r0 = CFURLCreateStringByAddingPercentEscapes(0x0, self, 0x0, @"!*'\"();:@&=+$,/?%#[]% ", r0);
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void *)adjUrlDecode {
    r0 = **_kCFAllocatorDefault;
    r0 = CFURLCreateStringByReplacingPercentEscapes(r0, self, @"");
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void *)adjRemoveColons {
    r0 = [self stringByReplacingOccurrencesOfString:@":" withString:@""];
    return r0;
}

-(void *)adjSha1 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r20 = [r0 bytes];
    r0 = [r19 length];
    r23 = &stack[-92];
    CC_SHA1(r20, r0, &stack[-92]);
    r20 = [[NSMutableString stringWithCapacity:0x28] retain];
    r24 = 0x0;
    do {
            [r20 appendFormat:r2];
            r24 = r24 + 0x1;
    } while (r24 != 0x14);
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)adjJoin:(void *)arg2 {
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
    r19 = [[arg2 retain] retain];
    var_48 = r29 + 0x10 | 0x8;
    r23 = [arg_0 retain];
    if (r23 != 0x0) {
            r24 = r19;
            do {
                    r25 = r23;
                    r23 = [[r23 capitalizedString] retain];
                    r0 = [r24 stringByAppendingString:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    [r23 release];
                    r8 = var_48;
                    var_48 = r8 + 0x8;
                    r23 = [*r8 retain];
                    [r25 release];
                    r24 = r22;
            } while (r23 != 0x0);
    }
    else {
            r22 = r19;
    }
    [r23 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(bool)adjIsEqual:(void *)arg2 toString:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    if ((r19 | r20) == 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = [r19 isEqualToString:r2];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)MD5String {
    r31 = r31 - 0xc0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    CC_MD5([objc_retainAutorelease(self) UTF8String], sub_100021280(), &saved_fp - 0x28);
    r0 = [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", r3, r4, r5, r6, r7, var_28, var_27, var_26, var_25, var_24, var_23, var_22, var_21, var_20, var_1F, var_1E];
    if (**___stack_chk_guard != var_18) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)SHA2String {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainAutorelease(self);
    r0 = [NSData dataWithBytes:[r0 cStringUsingEncoding:0x4] length:[r0 length]];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    CC_SHA256([r0 bytes], [r19 length], &stack[-104]);
    r20 = [[NSMutableString stringWithCapacity:0x40] retain];
    r23 = 0x0;
    r24 = &stack[-104];
    do {
            [r20 appendFormat:r2];
            r23 = r23 + 0x1;
    } while (r23 < 0x20);
    [r19 release];
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)xmlEncodedString {
    r0 = [self stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 stringByReplacingOccurrencesOfString:@"<" withString:@"&lt;"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringByReplacingOccurrencesOfString:@">" withString:@"&gt;"];
    r0 = [r0 retain];
    r19 = [[r0 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] retain];
    [r0 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)fb_URLEncodedString {
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
    r19 = [[NSMutableString string] retain];
    r20 = [objc_retainAutorelease(self) UTF8String];
    r0 = sub_100021280();
    if (r0 != 0x0) {
            r21 = r0;
            do {
                    r8 = *(int8_t *)r20;
                    if (r8 <= 0x5e) {
                            if (r8 >= 0x2f) {
                                    if (r8 == 0x20) {
                                            r0 = r19;
                                            r1 = @selector(appendString:);
                                    }
                                    else {
                                            if (r8 >= 0x3a) {
                                                    asm { ccmp       w9, #0x19, #0x0, hs };
                                            }
                                            if (!CPU_FLAGS & A) {
                                                    r0 = r19;
                                                    r1 = @selector(appendFormat:);
                                            }
                                            else {
                                                    r0 = r19;
                                                    r1 = @selector(appendFormat:);
                                            }
                                    }
                            }
                            else {
                                    r0 = r19;
                                    r1 = @selector(appendFormat:);
                            }
                    }
                    else {
                            if (r8 != 0x5f && r8 != 0x7e) {
                                    if (r8 >= 0x3a) {
                                            asm { ccmp       w9, #0x19, #0x0, hs };
                                    }
                                    if (!CPU_FLAGS & A) {
                                            r0 = r19;
                                            r1 = @selector(appendFormat:);
                                    }
                                    else {
                                            r0 = r19;
                                            r1 = @selector(appendFormat:);
                                    }
                            }
                            else {
                                    r0 = r19;
                                    r1 = @selector(appendFormat:);
                            }
                    }
                    objc_msgSend(r0, r1);
                    r20 = r20 + 0x1;
                    r21 = r21 - 0x1;
            } while (r21 != 0x0);
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)fbad_stringWithContentsOfURL:(void *)arg2 encoding:(unsigned long long)arg3 error:(void * *)arg4 {
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
    r20 = arg4;
    r21 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isFileURL] & 0x1) == 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isNetworkQualityMeasurementEnabled];
            [r0 release];
            if (r24 != 0x0) {
                    sub_100a66fe8();
                    r24 = 0x0;
                    r8 = 0x431bde82d7b634db;
                    asm { umulh      x8, x0, x8 };
                    r23 = r8 >> 0x12;
            }
            else {
                    r23 = 0x0;
                    r24 = 0x1;
            }
    }
    else {
            r23 = 0x0;
            r24 = 0x1;
    }
    r0 = [r22 stringWithContentsOfURL:r19 encoding:r21 error:r20];
    r29 = r29;
    r20 = [r0 retain];
    if ((r24 & 0x1) == 0x0) {
            sub_100a66fe8();
            r8 = 0x431bde82d7b634db;
            asm { umulh      x8, x0, x8 };
            r21 = (r8 >> 0x12) - r23;
            r22 = [r20 lengthOfBytesUsingEncoding:0x4];
            r0 = [FBAdURLSession sharedSession];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 networkQuality];
            r0 = [r0 retain];
            [r0 updateUsingCountOfBytesSent:r22 requestDurationInMiliseconds:r21];
            [r0 release];
            [r23 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end