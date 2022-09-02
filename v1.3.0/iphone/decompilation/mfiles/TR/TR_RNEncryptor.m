@implementation TR_RNEncryptor

+(void *)encryptData:(void *)arg2 withSettings:(struct _RNCryptorSettings)arg3 password:(void *)arg4 error:(void * *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    [r4 retain];
    [self alloc];
    memcpy(&stack[-184], r3, 0x68);
    r21 = [r24 initWithSettings:&stack[-184] password:r20 handler:0x100e7d020];
    [r20 release];
    r19 = [[self synchronousResultForCryptor:r21 data:r23 error:r5] retain];
    [r23 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)encryptData:(void *)arg2 withSettings:(struct _RNCryptorSettings)arg3 password:(void *)arg4 IV:(void *)arg5 encryptionSalt:(void *)arg6 HMACSalt:(void *)arg7 error:(void * *)arg8 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    [r4 retain];
    [r5 retain];
    [r6 retain];
    [r7 retain];
    [self alloc];
    memcpy(&stack[-200], r3, 0x68);
    r26 = [r27 initWithSettings:&stack[-200] password:r25 IV:r24 encryptionSalt:r23 HMACSalt:r22 handler:0x100e7d060];
    [r22 release];
    [r23 release];
    [r24 release];
    [r25 release];
    r20 = [[self synchronousResultForCryptor:r26 data:r19 error:arg8] retain];
    [r19 release];
    [r26 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)encryptData:(void *)arg2 withSettings:(struct _RNCryptorSettings)arg3 encryptionKey:(void *)arg4 HMACKey:(void *)arg5 error:(void * *)arg6 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    [r4 retain];
    [r5 retain];
    [self alloc];
    memcpy(&stack[-184], r3, 0x68);
    r23 = [r25 initWithSettings:&stack[-184] encryptionKey:r22 HMACKey:r21 handler:0x100e7d0a0];
    [r21 release];
    [r22 release];
    r20 = [[self synchronousResultForCryptor:r23 data:r19 error:r6] retain];
    [r19 release];
    [r23 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)encryptData:(void *)arg2 withSettings:(struct _RNCryptorSettings)arg3 encryptionKey:(void *)arg4 HMACKey:(void *)arg5 IV:(void *)arg6 error:(void * *)arg7 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    [r4 retain];
    [r5 retain];
    [r6 retain];
    [self alloc];
    memcpy(&stack[-200], r3, 0x68);
    r25 = [r26 initWithSettings:&stack[-200] encryptionKey:r24 HMACKey:r23 IV:r22 handler:0x100e7d0e0];
    [r22 release];
    [r23 release];
    [r24 release];
    r19 = [[self synchronousResultForCryptor:r25 data:r20 error:r7] retain];
    [r20 release];
    [r25 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithSettings:(struct _RNCryptorSettings)arg2 encryptionKey:(void *)arg3 HMACKey:(void *)arg4 handler:(void *)arg5 {
    memcpy(&r2, &arg2, 0x8);
    [r3 retain];
    [r4 retain];
    [r5 retain];
    [[[self class] randomDataOfLength:*(r2 + 0x10)] retain];
    memcpy(&stack[-168], 0x100be0140, 0x68);
    r23 = [self initWithSettings:&stack[-168] encryptionKey:r19 HMACKey:r21 IV:r22 handler:r20];
    [r20 release];
    [r21 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;
}

-(void *)initWithSettings:(struct _RNCryptorSettings)arg2 encryptionKey:(void *)arg3 HMACKey:(void *)arg4 IV:(void *)arg5 handler:(void *)arg6 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
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
    r23 = r2;
    r19 = [r3 retain];
    r20 = [r4 retain];
    r21 = [r5 retain];
    r22 = [[r29 - 0x60 super] initWithHandler:r6];
    if (r22 != 0x0) {
            [r22 setIV:r21];
            if (r20 != 0x0) {
                    r25 = *(int32_t *)(r23 + 0x1c);
                    r0 = objc_retainAutorelease(r20);
                    CCHmacInit((int64_t *)&r22->_HMACContext, r25, [r0 bytes], [r0 length]);
                    [r22 setHMACLength:*(r23 + 0x20)];
            }
            [TR_RNCryptorEngine alloc];
            [[r22 IV] retain];
            memcpy(&stack[-224], r23, 0x68);
            r24 = [r24 initWithOperation:0x0 settings:&stack[-224] key:r19 IV:r25 error:&var_68];
            r23 = [var_68 retain];
            [r22 setEngine:r24];
            [r24 release];
            [r25 release];
            r0 = [r22 engine];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r23 release];
            }
            else {
                    [r22 cleanupAndNotifyWithError:r23];
                    [r22 release];
                    [r23 release];
                    r22 = 0x0;
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)initWithSettings:(struct _RNCryptorSettings)arg2 password:(void *)arg3 handler:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    [r3 retain];
    [r4 retain];
    [[[self class] randomDataOfLength:*(r2 + 0x10)] retain];
    [[[self class] randomDataOfLength:*(r2 + 0x30)] retain];
    [[[self class] randomDataOfLength:*(r2 + 0x50)] retain];
    memcpy(&stack[-184], r2, 0x68);
    r20 = [self initWithSettings:&stack[-184] password:r19 IV:r23 encryptionSalt:r26 HMACSalt:r24 handler:r21];
    [r21 release];
    [r19 release];
    [r24 release];
    [r26 release];
    [r23 release];
    r0 = r20;
    return r0;
}

-(void *)initWithSettings:(struct _RNCryptorSettings)arg2 password:(void *)arg3 IV:(void *)arg4 encryptionSalt:(void *)arg5 HMACSalt:(void *)arg6 handler:(void *)arg7 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x110;
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
    r26 = [r3 retain];
    [r4 retain];
    r19 = [r5 retain];
    r20 = [r6 retain];
    [r7 retain];
    r0 = [self class];
    *(int128_t *)(&saved_fp - 0x70) = *(int128_t *)(r2 + 0x28);
    *(int128_t *)((&saved_fp - 0x70) + 0x10) = *(int128_t *)(r2 + 0x38);
    r23 = [[r0 keyForPassword:r26 salt:r19 settings:&saved_fp - 0x70] retain];
    r0 = [self class];
    r0 = [r0 keyForPassword:r26 salt:r20 settings:&var_90];
    r27 = [r0 retain];
    [r26 release];
    memcpy(&stack[-264], r2, 0x68);
    r21 = [self initWithSettings:&stack[-264] encryptionKey:r23 HMACKey:r27 IV:r22 handler:r25];
    [r25 release];
    [r22 release];
    if (r21 != 0x0) {
            [r21 setOptions:[r21 options] | 0x1];
            [r21 setEncryptionSalt:r19];
            [r21 setHMACSalt:r20];
    }
    [r27 release];
    [r23 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)header {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self options];
    r0 = [NSMutableData dataWithBytes:&var_22 length:0x2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (([r19 options] & 0x1) != 0x0) {
            [[r19 encryptionSalt] retain];
            [r20 appendData:r2];
            [r22 release];
            r0 = [r19 HMACSalt];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r21);
            [r22 release];
    }
    [[r19 IV] retain];
    [r20 appendData:r2];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)addData:(void *)arg2 {
    r31 = r31 - 0x60;
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
            r21 = [[r20 queue] retain];
            var_28 = [r19 retain];
            dispatch_async(r21, &var_50);
            [r21 release];
            [var_28 release];
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

-(void *)encryptionSalt {
    r0 = self->_encryptionSalt;
    return r0;
}

-(void)setEncryptionSalt:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_encryptionSalt, arg2);
    return;
}

-(void *)HMACSalt {
    r0 = self->_HMACSalt;
    return r0;
}

-(void)setHMACSalt:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_HMACSalt, arg2);
    return;
}

-(void *)IV {
    r0 = self->_IV;
    return r0;
}

-(void)setIV:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_IV, arg2);
    return;
}

-(bool)haveWrittenHeader {
    r0 = *(int8_t *)(int64_t *)&self->_haveWrittenHeader;
    return r0;
}

-(void)setHaveWrittenHeader:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_haveWrittenHeader = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_IV, 0x0);
    objc_storeStrong((int64_t *)&self->_HMACSalt, 0x0);
    objc_storeStrong((int64_t *)&self->_encryptionSalt, 0x0);
    return;
}

@end