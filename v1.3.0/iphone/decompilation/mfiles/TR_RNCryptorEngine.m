@implementation TR_RNCryptorEngine

-(void *)initWithOperation:(unsigned int)arg2 settings:(struct _RNCryptorSettings)arg3 key:(void *)arg4 IV:(void *)arg5 error:(void * *)arg6 {
    memcpy(&r3, &arg3, 0x8);
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
    r22 = r6;
    r24 = r3;
    r23 = arg2;
    r19 = [r4 retain];
    r20 = [r5 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            var_68 = r22;
            r25 = *(int32_t *)r24;
            r26 = *(int32_t *)(r24 + 0x18);
            r0 = objc_retainAutorelease(r19);
            r28 = [r0 bytes];
            r22 = [r0 length];
            r0 = objc_retainAutorelease(r20);
            r0 = [r0 bytes];
            r24 = (int64_t *)&r21->__cryptor;
            if (CCCryptorCreate(r23, r25, r26, r28, r22, r0, r24) != 0x0) {
                    r22 = var_68;
                    if (r22 != 0x0) {
                            r8 = @class(NSError);
                            r2 = *0x100e7d190;
                            asm { sxtw       x3, w0 };
                            *r22 = [[[r8 errorWithDomain:r2 code:r3 userInfo:0x0] retain] autorelease];
                    }
                    [r21 release];
                    r21 = 0x0;
            }
            else {
                    if (*r24 != 0x0) {
                            r0 = [NSMutableData data];
                            r0 = [r0 retain];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(__buffer));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                    }
                    else {
                            r22 = var_68;
                            if (r22 != 0x0) {
                                    r8 = @class(NSError);
                                    r2 = *0x100e7d190;
                                    asm { sxtw       x3, w0 };
                                    *r22 = [[[r8 errorWithDomain:r2 code:r3 userInfo:0x0] retain] autorelease];
                            }
                            [r21 release];
                            r21 = 0x0;
                    }
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->__cryptor;
    if (r0 != 0x0) {
            CCCryptorRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)finishWithError:(void * *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [self buffer];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [self cryptor];
    r0 = objc_retainAutorelease(r21);
    r19 = r0;
    r21 = [r0 mutableBytes];
    r0 = [r19 length];
    r0 = CCCryptorFinal(r22, r21, r0, &var_28);
    if (r0 != 0x0) {
            if (r20 != 0x0) {
                    r8 = @class(NSError);
                    r2 = *0x100e7d190;
                    asm { sxtw       x3, w0 };
                    r0 = [r8 errorWithDomain:r2 code:r3 userInfo:0x0];
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r21 = 0x0;
                    *r20 = r0;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = [[r19 subdataWithRange:0x0] retain];
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)addData:(void *)arg2 error:(void * *)arg3 {
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
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [self buffer];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r24 setLength:CCCryptorGetOutputLength([self cryptor], [arg2 length], 0x1)];
    r23 = [self cryptor];
    r0 = objc_retainAutorelease(arg2);
    r25 = [r0 bytes];
    r22 = [r0 length];
    [r20 release];
    r0 = objc_retainAutorelease(r24);
    r20 = r0;
    r24 = [r0 mutableBytes];
    r0 = [r20 length];
    r0 = CCCryptorUpdate(r23, r25, r22, r24, r0, &var_48);
    if (r0 != 0x0) {
            if (r19 != 0x0) {
                    r8 = @class(NSError);
                    r2 = *0x100e7d190;
                    asm { sxtw       x3, w0 };
                    r0 = [r8 errorWithDomain:r2 code:r3 userInfo:0x0];
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r21 = 0x0;
                    *r19 = r0;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = [[r20 subdataWithRange:0x0] retain];
    }
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(struct _CCCryptor *)cryptor {
    r0 = self->__cryptor;
    return r0;
}

-(void *)buffer {
    r0 = self->__buffer;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->__buffer, 0x0);
    return;
}

@end