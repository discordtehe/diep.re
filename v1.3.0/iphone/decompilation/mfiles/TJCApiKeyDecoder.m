@implementation TJCApiKeyDecoder

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void *)getAppID {
    r0 = self->_appID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)getSecretKey {
    r0 = self->_secretKey;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)decoderWithApiKey:(void *)arg2 {
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
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] == 0x3c && [r19 characterAtIndex:0x16] == 0x45) {
            r0 = [r23 urlSafeString:r19];
            r29 = r29;
            r20 = [r0 retain];
            r24 = [NSData instancesRespondToSelector:@selector(initWithBase64EncodedString:options:), r3];
            r0 = @class(NSData);
            r0 = [r0 alloc];
            if (r24 != 0x0) {
                    r0 = [r0 initWithBase64EncodedString:r20 options:0x1];
            }
            else {
                    r0 = [r0 initWithBase64Encoding:r20];
            }
            r21 = r0;
            if (r21 != 0x0 && [r21 length] == 0x2d) {
                    r22 = @selector(length);
                    r0 = [r21 subdataWithRange:0x29];
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    r24 = @selector(bytes);
                    var_58 = r0;
                    *(int32_t *)objc_msgSend(r0, r24);
                    asm { rev        w22, w8 };
                    r0 = objc_retainAutorelease(r21);
                    r26 = r0;
                    r0 = objc_msgSend(r0, r24);
                    r0 = crc32(0x0, r0, 0x29);
                    r25 = 0x0;
                    if (r22 == r0) {
                            r25 = [[[r23 class] alloc] init];
                            r0 = [r26 subdataWithRange:0x0];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r27 = CFUUIDCreateString(0x0, CFUUIDCreateFromUUIDBytes(0x0, *(int128_t *)[r0 bytes]));
                            [r25 setApiKey:r19];
                            r28 = [[r27 lowercaseString] retain];
                            [r25 setAppID:r28];
                            [r28 release];
                            r28 = [[r19 substringWithRange:0x18] retain];
                            [r25 setSecretKey:r28];
                            [r28 release];
                            [r25 setKeyUsage:*(int8_t *)([objc_retainAutorelease(r26) bytes] + 0x11)];
                            [r27 release];
                            [r0 release];
                    }
                    [var_58 release];
            }
            else {
                    r25 = 0x0;
            }
            [r21 release];
            [r20 release];
    }
    else {
            r25 = 0x0;
    }
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

-(int)getKeyUsage {
    r0 = *(int32_t *)(int64_t *)&self->_keyUsage;
    return r0;
}

+(void *)urlSafeString:(void *)arg2 {
    r0 = [arg2 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
    r0 = [r0 retain];
    r19 = [[r0 stringByReplacingOccurrencesOfString:@"_" withString:@"/"] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)get5RocksAppID:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [r0 substringWithRange:0xd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEqualToString:r2];
    [r0 release];
    if (r22 != 0x0) {
            r20 = [[r19 substringWithRange:0x0] retain];
            r23 = [[r19 substringWithRange:0x18] retain];
            r24 = [[r19 substringWithRange:0x9] retain];
            r25 = [[r19 substringFromIndex:0x1e] retain];
            r21 = [[NSString stringWithFormat:r2] retain];
            [r25 release];
            [r24 release];
            [r23 release];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)apiKey {
    r0 = self->_apiKey;
    return r0;
}

-(void)setApiKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_apiKey, arg2);
    return;
}

-(void *)appID {
    r0 = self->_appID;
    return r0;
}

-(void)setAppID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appID, arg2);
    return;
}

-(void *)secretKey {
    r0 = self->_secretKey;
    return r0;
}

-(void)setSecretKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_secretKey, arg2);
    return;
}

-(int)keyUsage {
    r0 = *(int32_t *)(int64_t *)&self->_keyUsage;
    return r0;
}

-(void)setKeyUsage:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_keyUsage = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_secretKey, 0x0);
    objc_storeStrong((int64_t *)&self->_appID, 0x0);
    objc_storeStrong((int64_t *)&self->_apiKey, 0x0);
    return;
}

@end