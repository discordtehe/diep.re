@implementation TR_RNDecryptor

+(void *)decryptData:(void *)arg2 withSettings:(struct _RNCryptorSettings)arg3 password:(void *)arg4 error:(void * *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    r20 = [r4 retain];
    [[self alloc] initWithPassword:r20 handler:0x100e7d248];
    [r20 release];
    memcpy(&stack[-168], r3, 0x68);
    [r24 setSettings:&stack[-168]];
    r19 = [[self synchronousResultForCryptor:r24 data:r23 error:r5] retain];
    [r23 release];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)decryptData:(void *)arg2 withSettings:(struct _RNCryptorSettings)arg3 encryptionKey:(void *)arg4 HMACKey:(void *)arg5 error:(void * *)arg6 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    r22 = [r4 retain];
    r21 = [r5 retain];
    [[self alloc] initWithEncryptionKey:r22 HMACKey:r21 handler:0x100e7d288];
    [r21 release];
    [r22 release];
    memcpy(&stack[-184], r3, 0x68);
    [r25 setSettings:&stack[-184]];
    r20 = [[self synchronousResultForCryptor:r25 data:r19 error:r6] retain];
    [r19 release];
    [r25 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)decryptData:(void *)arg2 withEncryptionKey:(void *)arg3 HMACKey:(void *)arg4 error:(void * *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[self alloc] initWithEncryptionKey:r21 HMACKey:r20 handler:0x100e7d308];
    [r20 release];
    [r21 release];
    r19 = [[self synchronousResultForCryptor:r24 data:r23 error:arg5] retain];
    [r23 release];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)decryptData:(void *)arg2 withPassword:(void *)arg3 error:(void * *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[self alloc] initWithPassword:r20 handler:0x100e7d2c8];
    [r20 release];
    r19 = [[self synchronousResultForCryptor:r23 data:r22 error:arg4] retain];
    [r22 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithPassword:(void *)arg2 handler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [self initWithEncryptionKey:0x0 HMACKey:0x0 handler:arg3];
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_password));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            memcpy((int64_t *)&r20->_settings, 0x100be0140, 0x68);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithEncryptionKey:(void *)arg2 HMACKey:(void *)arg3 handler:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] initWithHandler:arg4];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_encryptionKey));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_HMACKey));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            memcpy((int64_t *)&r21->_settings, 0x100be0140, 0x68);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)inData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(__inData));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [NSMutableData data];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)decryptData:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self queue] retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)updateOptionsForPreamble:(void *)arg2 {
    r31 = r31 - 0x100;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [objc_retainAutorelease(arg2) bytes];
    [r21 release];
    r8 = *(int8_t *)r20;
    if (r8 == 0x2) {
            [r19 setOptions:*(int8_t *)(r20 + 0x1)];
            [r19 settings];
            r20 = 0x1;
            memcpy(&stack[-256], &stack[-152], 0x68);
            [r19 setSettings:&stack[-256]];
    }
    else {
            if (r8 == *(int8_t *)0x100be01a8) {
                    [r19 setOptions:*(int8_t *)(r20 + 0x1)];
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
            }
    }
    r0 = r20;
    return r0;
}

-(void)addData:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 isFinished] & 0x1) == 0x0) {
            r0 = [r20 inData];
            r0 = [r0 retain];
            [r0 appendData:r19];
            [r0 release];
            r0 = [r20 engine];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [r20 inData];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 consumeHeaderFromData:r23];
                    [r23 release];
            }
            r0 = [r20 engine];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = [r20 HMACLength];
                    r0 = [r20 inData];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 length];
                    [r0 release];
                    if (r25 >= r22) {
                            r23 = @selector(length);
                            r24 = [[r20 inData] retain];
                            r0 = [r20 inData];
                            r0 = [r0 retain];
                            r22 = [[r24 _RNConsumeToIndex:objc_msgSend(r0, r23) - r22] retain];
                            [r0 release];
                            [r24 release];
                            [r20 decryptData:r22];
                            [r22 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(void)finish {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isFinished] & 0x1) == 0x0) {
            r0 = [r19 queue];
            r0 = [r0 retain];
            dispatch_async(r0, &var_38);
            [r20 release];
    }
    return;
}

-(void *)encryptionKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_encryptionKey)), 0x0);
    return r0;
}

-(void)setEncryptionKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)HMACKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_HMACKey)), 0x0);
    return r0;
}

-(void)consumeHeaderFromData:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x4f0;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] < 0x2) goto loc_1004269b0;

loc_10042637c:
    r0 = [r19 subdataWithRange:0x0];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r20 updateOptionsForPreamble:r23];
    [r23 release];
    if ((r24 & 0x1) == 0x0) goto loc_1004268f0;

loc_1004263c8:
    [r20 settings];
    r24 = var_A8 + 0x2;
    if (([r20 options] & 0x1) != 0x0) {
            [r20 settings];
            [r20 settings];
            r24 = var_138 + var_F0 + r24;
    }
    if ([r19 length] < r24) goto loc_1004269b0;

loc_100426444:
    r27 = [[r19 subdataWithRange:0x0] retain];
    r0 = [r19 _RNConsumeToIndex:0x2];
    r29 = r29;
    r0 = [r0 retain];
    [[r0 mutableCopy] release];
    [r0 release];
    if (([r20 options] & 0x1) != 0x0) {
            r0 = [r20 password];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r20 settings];
                    r28 = [[r19 _RNConsumeToIndex:var_1C0] retain];
                    [r20 settings];
                    var_530 = [[r19 _RNConsumeToIndex:var_208] retain];
                    r25 = [r20 class];
                    r0 = [r20 password];
                    r0 = [r0 retain];
                    [r20 settings];
                    r25 = [[r25 keyForPassword:r0 salt:r28 settings:&var_280] retain];
                    [r20 setEncryptionKey:r25];
                    [r25 release];
                    r27 = r27;
                    [r0 release];
                    r22 = [r20 class];
                    r25 = [[r20 password] retain];
                    [r20 settings];
                    r0 = [r22 keyForPassword:r25 salt:var_530 settings:&var_310];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setHMACKey:r22];
                    [r22 release];
                    [r25 release];
                    [r20 setPassword:0x0];
                    [var_530 release];
                    [r28 release];
            }
    }
    [r20 settings];
    r28 = [[r19 _RNConsumeToIndex:var_3D0] retain];
    r22 = [TR_RNCryptorEngine alloc];
    [r20 settings];
    r26 = [[r20 encryptionKey] retain];
    r22 = [r22 initWithOperation:0x1 settings:&stack[-1112] key:r26 IV:r28 error:&var_450];
    r25 = [var_450 retain];
    [r20 setEngine:r22];
    [r22 release];
    [r26 release];
    [r20 setEncryptionKey:0x0];
    r0 = [r20 engine];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 HMACKey];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = @selector(length);
                    var_528 = (int64_t *)&r20->_HMACContext;
                    [r20 settings];
                    r0 = [r20 HMACKey];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    r0 = [r0 bytes];
                    r24 = r25;
                    r25 = r27;
                    r27 = r0;
                    r0 = [r20 HMACKey];
                    r0 = [r0 retain];
                    r0 = objc_msgSend(r0, r21);
                    r2 = r27;
                    r27 = r25;
                    r25 = r24;
                    CCHmacInit(var_528, var_49C, r2, r0);
                    [r22 release];
                    [r26 release];
                    [r20 settings];
                    [r20 setHMACLength:var_500];
                    [r20 setHMACKey:0x0];
                    if (([r20 hasV1HMAC] & 0x1) == 0x0) {
                            r21 = @selector(length);
                            r0 = objc_retainAutorelease(r27);
                            CCHmacUpdate(var_528, [r0 bytes], objc_msgSend(r0, r21));
                    }
            }
    }
    else {
            [r20 cleanupAndNotifyWithError:r25];
    }
    [r28 release];
    [r25 release];
    r0 = r27;
    goto loc_1004269ac;

loc_1004269ac:
    [r0 release];
    goto loc_1004269b0;

loc_1004269b0:
    [r19 release];
    return;

loc_1004268f0:
    r23 = [[NSDictionary dictionaryWithObject:@"Unknown header" forKey:**_NSLocalizedDescriptionKey] retain];
    r21 = [[NSError errorWithDomain:*0x100e7d190 code:0x2 userInfo:r23] retain];
    [r20 cleanupAndNotifyWithError:r21];
    [r21 release];
    r0 = r23;
    goto loc_1004269ac;
}

-(void)setHMACKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)password {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_password)), 0x0);
    return r0;
}

-(void)setPassword:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(struct _RNCryptorSettings)settings {
    r0 = memcpy(r8, (int64_t *)&self->_settings, 0x68);
    return r0;
}

-(void)setSettings:(struct _RNCryptorSettings)arg2 {
    memcpy(&r2, &arg2, 0x8);
    memcpy((int64_t *)&self->_settings, r2, 0x68);
    return;
}

-(bool)hasV1HMAC {
    r0 = *(int8_t *)(int64_t *)&self->_hasV1HMAC;
    return r0;
}

-(void)setHasV1HMAC:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasV1HMAC = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_password, 0x0);
    objc_storeStrong((int64_t *)&self->_HMACKey, 0x0);
    objc_storeStrong((int64_t *)&self->_encryptionKey, 0x0);
    objc_storeStrong((int64_t *)&self->__inData, 0x0);
    return;
}

@end