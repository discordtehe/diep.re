@implementation NSData

+(void *)gul_dataByGzippingData:(void *)arg2 error:(void * *)arg3 {
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x480;
    r19 = arg3;
    r23 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 bytes];
    r22 = [r0 length];
    [r23 release];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1000b2048;

loc_1000b200c:
    r21 = 0x0;
    goto loc_1000b2010;

loc_1000b2010:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000b2048:
    if (r22 >> 0x20 == 0x0) goto loc_1000b2090;

loc_1000b2050:
    if (r19 != 0x0) {
            r0 = [NSError errorWithDomain:@"com.google.GULNSDataZlibErrorDomain" code:0x400 userInfo:0x0];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r21 = 0x0;
            *r19 = r0;
    }
    else {
            r21 = 0x0;
    }
    goto loc_1000b2010;

loc_1000b2090:
    memset(&var_4B8, 0x0, 0x70);
    r0 = deflateInit2_(&var_4B8, 0xffffffffffffffff, 0x8, 0x1f, 0x8, 0x0, "1.2.11", 0x70);
    r8 = r0;
    if (r8 == 0x0) goto loc_1000b2170;

loc_1000b20d0:
    if (r19 != 0x0) {
            r21 = [[NSNumber numberWithInt:r2] retain];
            r20 = [[NSDictionary dictionaryWithObject:r21 forKey:@"GULNSDataZlibErrorKey"] retain];
            [r21 release];
            *r19 = [[[NSError errorWithDomain:@"com.google.GULNSDataZlibErrorDomain" code:0x401 userInfo:r20] retain] autorelease];
            [r20 release];
    }
    goto loc_1000b200c;

loc_1000b2170:
    r0 = [NSMutableData dataWithCapacity:r22 >> 0x2];
    r29 = r29;
    r20 = [r0 retain];
    r24 = &stack[-1112];
    goto loc_1000b21ac;

loc_1000b21ac:
    r0 = deflate(&var_4B8, 0x4);
    r22 = r0;
    if (r22 >= 0x2) goto loc_1000b2208;

loc_1000b21cc:
    r8 = 0x0;
    if (r8 != 0x0) {
            [r20 appendBytes:r2 length:r3];
    }
    if (r22 == 0x0) goto loc_1000b21ac;

loc_1000b21f0:
    deflateEnd(&var_4B8);
    r21 = [r20 retain];
    goto loc_1000b22b0;

loc_1000b22b0:
    [r20 release];
    goto loc_1000b2010;

loc_1000b2208:
    if (r19 != 0x0) {
            r22 = [[NSNumber numberWithInt:r22] retain];
            r21 = [[NSDictionary dictionaryWithObject:r22 forKey:@"GULNSDataZlibErrorKey"] retain];
            [r22 release];
            *r19 = [[[NSError errorWithDomain:@"com.google.GULNSDataZlibErrorDomain" code:0x401 userInfo:r21] retain] autorelease];
            [r21 release];
    }
    deflateEnd(&var_4B8);
    r21 = 0x0;
    goto loc_1000b22b0;
}

+(void *)gul_dataByInflatingGzippedData:(void *)arg2 error:(void * *)arg3 {
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x480;
    r19 = arg3;
    r22 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 bytes];
    r20 = [r0 length];
    [r22 release];
    if (r21 != 0x0) {
            asm { ccmp       x8, x9, #0x2, ne };
    }
    if (CPU_FLAGS & A) goto loc_1000b1d00;

loc_1000b1c2c:
    memset(&var_4B8, 0x0, 0x70);
    var_4B0 = r20;
    r0 = inflateInit2_(&var_4B8, 0x2f, "1.2.11", 0x70);
    r8 = r0;
    if (r8 == 0x0) goto loc_1000b1d08;

loc_1000b1c64:
    if (r19 == 0x0) goto loc_1000b1f4c;

loc_1000b1c68:
    r21 = [[NSNumber numberWithInt:r2] retain];
    r20 = [[NSDictionary dictionaryWithObject:r21 forKey:@"GULNSDataZlibErrorKey"] retain];
    [r21 release];
    *r19 = [[[NSError errorWithDomain:@"com.google.GULNSDataZlibErrorDomain" code:0x401 userInfo:r20] retain] autorelease];
    [r20 release];
    goto loc_1000b1d00;

loc_1000b1d00:
    r19 = 0x0;
    goto loc_1000b1f4c;

loc_1000b1f4c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000b1d08:
    r2 = "1.2.11";
    r0 = [NSMutableData dataWithCapacity:r20 << 0x2];
    r29 = r29;
    r20 = [r0 retain];
    r24 = &stack[-1112];
    goto loc_1000b1d3c;

loc_1000b1d3c:
    r0 = inflate(&var_4B8, 0x0);
    r22 = r0;
    if (r22 >= 0x2) goto loc_1000b1e48;

loc_1000b1d5c:
    r8 = 0x0;
    if (r8 != 0x0) {
            r2 = &stack[-1112];
            [r20 appendBytes:r2 length:r3];
    }
    if (r22 == 0x0) goto loc_1000b1d3c;

loc_1000b1d80:
    if (var_4B0 != 0x0) {
            if (r19 != 0x0) {
                    r22 = [[NSNumber numberWithUnsignedInt:r2] retain];
                    r21 = [[NSDictionary dictionaryWithObject:r22 forKey:@"GULNSDataZlibRemainingBytesKey"] retain];
                    [r22 release];
                    *r19 = [[[NSError errorWithDomain:@"com.google.GULNSDataZlibErrorDomain" code:0x402 userInfo:r21] retain] autorelease];
                    [r21 release];
            }
            [r20 release];
            r20 = 0x0;
    }
    inflateEnd(&var_4B8);
    r20 = [r20 retain];
    r19 = r20;
    goto loc_1000b1f44;

loc_1000b1f44:
    [r20 release];
    goto loc_1000b1f4c;

loc_1000b1e48:
    if (r19 != 0x0) {
            r22 = [[NSNumber numberWithInt:r22] retain];
            r0 = [NSMutableDictionary dictionaryWithObject:r22 forKey:@"GULNSDataZlibErrorKey"];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (var_488 != 0x0) {
                    r0 = [NSString stringWithUTF8String:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            [r21 setObject:r2 forKey:r3];
                    }
                    [r22 release];
            }
            *r19 = [[[NSError errorWithDomain:@"com.google.GULNSDataZlibErrorDomain" code:0x401 userInfo:r21] retain] autorelease];
            [r21 release];
    }
    inflateEnd(&var_4B8);
    r19 = 0x0;
    goto loc_1000b1f44;
}

-(long long)apm_64LSBMD5 {
    r0 = [self apm_MD5Data];
    r0 = [r0 retain];
    r20 = [r0 apm_64LeastSignificantBits];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)apm_MD5Data {
    r20 = [[NSMutableData alloc] initWithLength:0x10];
    r0 = objc_retainAutorelease(self);
    r21 = [r0 bytes];
    r19 = [r0 length];
    r0 = objc_retainAutorelease(r20);
    CC_MD5(r21, r19, [r0 mutableBytes]);
    r0 = [r20 autorelease];
    return r0;
}

-(long long)apm_64LeastSignificantBits {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [self length];
    r8 = r19 - 0x8;
    COND = r8 < 0x0;
    r2 = r8 & !(r8 / 0xffffffff80000000);
    asm { sxtw       x8, w19 };
    if (COND) {
    }
    r0 = [r20 subdataWithRange:r2];
    r0 = [r0 retain];
    r20 = r0;
    [r0 getBytes:&var_18 length:0x8];
    asm { rev        x19, x8 };
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)rnc_isEqualInConsistentTime:(void *)arg2 {
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
    r23 = [arg2 retain];
    r0 = objc_retainAutorelease(self);
    r19 = [r0 bytes];
    r8 = 0x101137000;
    r24 = *(r8 + 0x260);
    r20 = objc_msgSend(r0, r24);
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 bytes];
    r22 = objc_msgSend(r0, r24);
    r0 = [r23 release];
    if (r22 != r20) {
            r8 = 0x101137000;
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    if (r22 != 0x0) {
            r9 = 0x0;
            do {
                    asm { udiv       x10, x9, x20 };
                    r10 = *(int8_t *)(r19 + (r9 - r10 * r20));
                    r10 = *(int8_t *)(r21 + r9) ^ r10;
                    r8 = r10 | r8;
                    r9 = r9 + 0x1;
            } while (r22 != r9);
    }
    if ((r8 & 0xff) == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)MD5 {
    r0 = objc_retainAutorelease(self);
    r20 = [r0 bytes];
    r0 = [r0 length];
    r19 = &stack[-88];
    CC_MD5(r20, r0, r19);
    r0 = [NSMutableString stringWithCapacity:0x20];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r24 = 0x0;
    do {
            var_50 = *(int8_t *)(r19 + r24);
            [r20 appendFormat:r2];
            r24 = r24 + 0x1;
    } while (r24 != 0x10);
    var_38 = **___stack_chk_guard;
    r23 = *___stack_chk_guard;
    r0 = [r20 autorelease];
    if (*r23 != var_38) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)adjEncodeBase64 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = objc_retainAutorelease(self);
    r20 = [r0 bytes];
    r21 = [r0 length];
    if (r21 != 0x0) {
            asm { umulh      x8, x8, x9 };
            r0 = 0x1;
            asm { bfi        x0, x8, #0x2, #0x3e };
            r19 = calloc(r0, 0x1);
            if (r21 >= 0x3) {
                    r10 = r19;
                    do {
                            r9 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
                            r1 = 0x1;
                            *(int8_t *)r10 = *(int8_t *)(r9 + (*(int8_t *)r20 >> 0x2));
                            r11 = *(int8_t *)(r20 + 0x1);
                            r11 = r11 >> 0x4;
                            asm { bfi        w11, w8, #0x4, #0x2 };
                            *(int8_t *)(r10 + 0x1) = *(int8_t *)(r9 + (r11 << r1));
                            r11 = *(int8_t *)(r20 + 0x2);
                            r11 = r11 >> 0x6;
                            asm { bfi        w11, w8, #0x2, #0x4 };
                            *(int8_t *)(r10 + 0x2) = *(int8_t *)(r9 + (r11 << r1));
                            r8 = r10 + 0x4;
                            *(int8_t *)(r10 + 0x3) = *(int8_t *)(r9 + (*(int8_t *)(r20 + 0x2) & 0x3f));
                            r20 = r20 + 0x3;
                            r21 = r21 - 0x3;
                            r10 = r8;
                    } while (r21 > 0x2);
                    if (r21 != 0x0) {
                            *(int8_t *)r8 = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + (*(int8_t *)r20 >> 0x2));
                            r10 = *(int8_t *)r20;
                            r10 = (r10 & 0x3) << 0x4;
                            if (r21 == 0x1) {
                                    *(int8_t *)(r8 + 0x1) = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + r10);
                                    *(int8_t *)(r8 + 0x2) = 0x3d;
                            }
                            else {
                                    *(int8_t *)(r8 + 0x1) = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + ((r10 | *(int8_t *)(r20 + 0x1) / 0x10) << 0x1));
                                    *(int8_t *)(r8 + 0x2) = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + ((*(int8_t *)(r20 + 0x1) & 0xf) << 0x2));
                            }
                            *(int8_t *)(r8 + 0x3) = 0x3d;
                            r8 = r8 + 0x4;
                    }
            }
            else {
                    r8 = r19;
                    *(int8_t *)r8 = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + (*(int8_t *)r20 >> 0x2));
                    r10 = *(int8_t *)r20;
                    r10 = (r10 & 0x3) << 0x4;
                    if (r21 == 0x1) {
                            *(int8_t *)(r8 + 0x1) = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + r10);
                            *(int8_t *)(r8 + 0x2) = 0x3d;
                    }
                    else {
                            *(int8_t *)(r8 + 0x1) = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + ((r10 | *(int8_t *)(r20 + 0x1) / 0x10) << 0x1));
                            *(int8_t *)(r8 + 0x2) = *(int8_t *)("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + ((*(int8_t *)(r20 + 0x1) & 0xf) << 0x2));
                    }
                    *(int8_t *)(r8 + 0x3) = 0x3d;
                    r8 = r8 + 0x4;
            }
            *(int8_t *)r8 = 0x0;
            r20 = [[NSString stringWithCString:r19 encoding:0x1] retain];
            free(r19);
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)ISAES256EncryptWithKey:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    [arg2 getCString:&var_50 maxLength:0x21 encoding:0x4];
    r21 = [self length];
    r19 = malloc(r21 + 0x10);
    r0 = objc_retainAutorelease(self);
    r0 = [r0 bytes];
    r0 = CCCrypt(0x0, 0x0, 0x1, &var_50, 0x20, 0x0, r0, r21, r19, r21 + 0x10, &var_58);
    if (r0 != 0x0) {
            free(r19);
            r0 = 0x0;
    }
    else {
            r0 = [NSData dataWithBytesNoCopy:r19 length:var_58];
            r0 = [r0 retain];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)ISAES256DecryptWithKey:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    [arg2 getCString:&var_50 maxLength:0x21 encoding:0x4];
    r21 = [self length];
    r19 = malloc(r21 + 0x10);
    r0 = objc_retainAutorelease(self);
    r0 = [r0 bytes];
    r0 = CCCrypt(0x1, 0x0, 0x1, &var_50, 0x20, 0x0, r0, r21, r19, r21 + 0x10, &var_58);
    if (r0 != 0x0) {
            free(r19);
            r0 = 0x0;
    }
    else {
            r0 = [NSData dataWithBytesNoCopy:r19 length:var_58];
            r0 = [r0 retain];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)fbad_dataWithContentsOfURL:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (([r0 isFileURL] & 0x1) != 0x0) {
            r21 = 0x0;
    }
    else {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isNetworkQualityMeasurementEnabled];
            [r0 release];
    }
    var_28 = r20;
    r20 = [r20 retain];
    r0 = [r19 fbad_measureIfNeeded:r21 usingBlock:&var_50];
    r19 = [r0 retain];
    [var_28 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)fbad_dataWithContentsOfURL:(void *)arg2 options:(unsigned long long)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg4;
    r21 = arg3;
    r19 = self;
    r0 = [arg2 retain];
    r22 = r0;
    if (([r0 isFileURL] & 0x1) != 0x0) {
            r23 = 0x0;
    }
    else {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isNetworkQualityMeasurementEnabled];
            [r0 release];
    }
    r21 = [r22 retain];
    r0 = [r19 fbad_measureIfNeeded:r23 usingBlock:&var_70];
    r19 = [r0 retain];
    [r22 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)fbad_measureIfNeeded:(bool)arg2 usingBlock:(void *)arg3 {
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
    r21 = arg2;
    r19 = [arg3 retain];
    if (r21 != 0x0) {
            sub_100a66fe8();
            asm { udiv       x23, x0, x22 };
    }
    else {
            r23 = 0x0;
    }
    r8 = *(r19 + 0x10);
    r0 = (r8)(r19);
    r29 = r29;
    r20 = [r0 retain];
    if (r21 != 0x0) {
            sub_100a66fe8();
            asm { udiv       x8, x0, x22 };
            r21 = r8 - r23;
            r0 = [FBAdURLSession sharedSession];
            r0 = [r0 retain];
            r23 = [[r0 networkQuality] retain];
            [r23 updateUsingCountOfBytesSent:[r20 length] requestDurationInMiliseconds:r21];
            [r23 release];
            [r0 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end