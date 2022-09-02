@implementation ADCGCDWebServerFileResponse

+(void *)responseWithFile:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[[self class] alloc] initWithFile:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithFile:(void *)arg2 isAttachment:(bool)arg3 {
    r22 = [arg2 retain];
    r19 = [[[self class] alloc] initWithFile:r22 isAttachment:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithFile:(void *)arg2 byteRange:(struct _NSRange)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r23 = [arg2 retain];
    r19 = [[[self class] alloc] initWithFile:r23 byteRange:r3];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithFile:(void *)arg2 byteRange:(struct _NSRange)arg3 isAttachment:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r24 = [arg2 retain];
    r19 = [[[self class] alloc] initWithFile:r24 byteRange:r3 isAttachment:r4];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithFile:(void *)arg2 {
    r0 = [self initWithFile:arg2 byteRange:0xffffffffffffffff isAttachment:0x0];
    return r0;
}

-(void *)initWithFile:(void *)arg2 isAttachment:(bool)arg3 {
    r0 = [self initWithFile:arg2 byteRange:0xffffffffffffffff isAttachment:0x0];
    return r0;
}

-(void *)initWithFile:(void *)arg2 byteRange:(struct _NSRange)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithFile:arg2 byteRange:r3 isAttachment:r4];
    return r0;
}

-(void)close {
    close(*(int32_t *)(int64_t *)&self->_file);
    return;
}

-(bool)open:(void * *)arg2 {
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
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    r0 = r20->_path;
    r0 = [r0 fileSystemRepresentation];
    r0 = open(r0, 0x100);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_file));
    *(int32_t *)(r20 + r26) = r0;
    if (r0 > 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_offset));
            if (lseek(r0, *(r20 + r21), 0x0) == *(r20 + r21)) {
                    r0 = 0x1;
            }
            else {
                    if (r19 != 0x0) {
                            r0 = __error();
                            r0 = *(int32_t *)r0;
                            r21 = @class(NSError);
                            r22 = **_NSPOSIXErrorDomain;
                            asm { sxtw       x23, w0 };
                            r24 = [[NSString stringWithUTF8String:strerror(r0)] retain];
                            r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
                            r21 = [[r21 errorWithDomain:r22 code:r23 userInfo:r25] retain];
                            [r25 release];
                            [r24 release];
                            *r19 = objc_retainAutorelease([r21 autorelease]);
                    }
                    close(*(int32_t *)(r20 + r26));
                    r0 = 0x0;
            }
    }
    else {
            if (r19 != 0x0) {
                    r0 = __error();
                    r0 = *(int32_t *)r0;
                    r20 = @class(NSError);
                    r21 = **_NSPOSIXErrorDomain;
                    asm { sxtw       x22, w0 };
                    r23 = [[NSString stringWithUTF8String:strerror(r0)] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
                    r20 = [[r20 errorWithDomain:r21 code:r22 userInfo:r24] retain];
                    [r24 release];
                    [r23 release];
                    r8 = objc_retainAutorelease([r20 autorelease]);
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    r0 = [[&var_30 super] description];
    r21 = [r0 retain];
    r20 = [[NSMutableString stringWithString:r21] retain];
    [r21 release];
    [r20 appendFormat:@"\n\n{%@}"];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)readData:(void * *)arg2 {
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
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_size));
    r8 = *(r21 + r24);
    if (r8 < 0x8000) {
            if (!CPU_FLAGS & B) {
                    r22 = 0x8000;
            }
            else {
                    r22 = r8;
            }
    }
    r0 = [NSMutableData alloc];
    r0 = [r0 initWithLength:r22];
    r23 = *(int32_t *)(int64_t *)&r21->_file;
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r22 = read(r23, [r0 mutableBytes], r22);
    if ((r22 & 0xffffffff80000000) == 0x0) {
            if (r22 != 0x0) {
                    [r19 setLength:r22];
                    *(r21 + r24) = *(r21 + r24) - r22;
            }
            r21 = [r19 retain];
    }
    else {
            if (r20 != 0x0) {
                    r0 = __error();
                    r0 = *(int32_t *)r0;
                    r21 = @class(NSError);
                    r22 = **_NSPOSIXErrorDomain;
                    asm { sxtw       x23, w0 };
                    r24 = [[NSString stringWithUTF8String:strerror(r0)] retain];
                    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
                    r21 = [[r21 errorWithDomain:r22 code:r23 userInfo:r25] retain];
                    [r25 release];
                    [r24 release];
                    r0 = [r21 autorelease];
                    r0 = objc_retainAutorelease(r0);
                    r21 = 0x0;
                    *r20 = r0;
            }
            else {
                    r21 = 0x0;
            }
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_path, 0x0);
    return;
}

-(void *)initWithFile:(void *)arg2 byteRange:(struct _NSRange)arg3 isAttachment:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
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
    r29 = &saved_fp;
    r21 = r5;
    r23 = r4;
    r22 = r3;
    r20 = self;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 fileSystemRepresentation];
    r0 = lstat(r0, &stack[-240]);
    if (r0 == 0x0) {
            r8 = sign_extend_64(var_DC);
            if ((r8 & 0xffffffff80000000) == 0x0) {
                    r21 = 0x0;
            }
            else {
                    r24 = var_80;
                    if (r22 != -0x1) {
                            if (CPU_FLAGS & NE) {
                                    r8 = 0x1;
                            }
                    }
                    if (r23 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r9 = 0x1;
                            }
                    }
                    r25 = r9 | r8;
                    if (r25 == 0x1) {
                            if (r23 < r24) {
                                    if (!CPU_FLAGS & B) {
                                            r8 = r24;
                                    }
                                    else {
                                            r8 = r23;
                                    }
                            }
                            r9 = r24 - r8;
                            if (r22 < r24) {
                                    if (!CPU_FLAGS & B) {
                                            r10 = r24;
                                    }
                                    else {
                                            r10 = r22;
                                    }
                            }
                            r11 = r24 - r10;
                            if (r23 < r11) {
                                    if (!CPU_FLAGS & B) {
                                            r11 = r11;
                                    }
                                    else {
                                            r11 = r23;
                                    }
                            }
                            if (r22 == -0x1) {
                                    if (!CPU_FLAGS & E) {
                                            r23 = r10;
                                    }
                                    else {
                                            r23 = r9;
                                    }
                            }
                            if (CPU_FLAGS & E) {
                                    if (!CPU_FLAGS & E) {
                                            r22 = r11;
                                    }
                                    else {
                                            r22 = r8;
                                    }
                            }
                            if (r22 == 0x0) {
                                    r21 = 0x0;
                            }
                            else {
                                    r0 = [[&var_F0 super] init];
                                    r20 = r0;
                                    if (r20 != 0x0) {
                                            r0 = [r19 copy];
                                            r27 = sign_extend_64(*(int32_t *)ivar_offset(_path));
                                            r8 = *(r20 + r27);
                                            *(r20 + r27) = r0;
                                            [r8 release];
                                            r28 = sign_extend_64(*(int32_t *)ivar_offset(_offset));
                                            *(r20 + r28) = r23;
                                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_size));
                                            *(r20 + r26) = r22;
                                            if (r25 != 0x0) {
                                                    [r20 setStatusCode:0xce];
                                                    r0 = [NSString stringWithFormat:r2];
                                                    r29 = r29;
                                                    r22 = [r0 retain];
                                                    [r20 setValue:r22 forAdditionalHeader:@"Content-Range"];
                                                    [r22 release];
                                            }
                                            if (r21 != 0x0) {
                                                    r0 = [r19 lastPathComponent];
                                                    r0 = [r0 retain];
                                                    r21 = r0;
                                                    r0 = [r0 stringByReplacingOccurrencesOfString:@"\"" withString:@""];
                                                    r0 = [r0 retain];
                                                    r23 = r0;
                                                    r0 = [r0 dataUsingEncoding:0x5 allowLossyConversion:0x1];
                                                    r29 = r29;
                                                    r22 = [r0 retain];
                                                    [r23 release];
                                                    if (r22 != 0x0) {
                                                            r23 = [[NSString alloc] initWithData:r22 encoding:0x5];
                                                            if (r23 != 0x0) {
                                                                    r25 = [sub_100223624(r21) retain];
                                                                    r0 = [NSString stringWithFormat:@"attachment; filename=\"%@\"; filename*=UTF-8''%@"];
                                                                    r29 = r29;
                                                                    r24 = [r0 retain];
                                                                    [r25 release];
                                                                    [r20 setValue:r24 forAdditionalHeader:@"Content-Disposition"];
                                                                    [r24 release];
                                                                    [r23 release];
                                                            }
                                                    }
                                                    [r22 release];
                                                    [r21 release];
                                            }
                                            r21 = [[*(r20 + r27) pathExtension] retain];
                                            r0 = sub_1002234d4();
                                            r22 = [r0 retain];
                                            [r20 setContentType:r22];
                                            [r22 release];
                                            [r21 release];
                                            r2 = *(r20 + r26);
                                            [r20 setContentLength:r2];
                                            r0 = @class(NSDate);
                                            asm { scvtf      d0, d0 };
                                            asm { scvtf      d1, d1 };
                                            asm { fdiv       d1, d1, d2 };
                                            r21 = [[r0 dateWithTimeIntervalSince1970:r2] retain];
                                            [r20 setLastModifiedDate:r21];
                                            [r21 release];
                                            r21 = [[NSString stringWithFormat:r2] retain];
                                            [r20 setETag:r21];
                                            [r21 release];
                                    }
                                    r20 = [r20 retain];
                                    r21 = r20;
                            }
                    }
                    else {
                            r23 = 0x0;
                            r22 = r24;
                            r0 = [[&var_F0 super] init];
                            r20 = r0;
                            if (r20 != 0x0) {
                                    r0 = [r19 copy];
                                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_path));
                                    r8 = *(r20 + r27);
                                    *(r20 + r27) = r0;
                                    [r8 release];
                                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_offset));
                                    *(r20 + r28) = r23;
                                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_size));
                                    *(r20 + r26) = r22;
                                    if (r25 != 0x0) {
                                            [r20 setStatusCode:0xce];
                                            r0 = [NSString stringWithFormat:r2];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r20 setValue:r22 forAdditionalHeader:@"Content-Range"];
                                            [r22 release];
                                    }
                                    if (r21 != 0x0) {
                                            r0 = [r19 lastPathComponent];
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r0 = [r0 stringByReplacingOccurrencesOfString:@"\"" withString:@""];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 dataUsingEncoding:0x5 allowLossyConversion:0x1];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r23 release];
                                            if (r22 != 0x0) {
                                                    r23 = [[NSString alloc] initWithData:r22 encoding:0x5];
                                                    if (r23 != 0x0) {
                                                            r25 = [sub_100223624(r21) retain];
                                                            r0 = [NSString stringWithFormat:@"attachment; filename=\"%@\"; filename*=UTF-8''%@"];
                                                            r29 = r29;
                                                            r24 = [r0 retain];
                                                            [r25 release];
                                                            [r20 setValue:r24 forAdditionalHeader:@"Content-Disposition"];
                                                            [r24 release];
                                                            [r23 release];
                                                    }
                                            }
                                            [r22 release];
                                            [r21 release];
                                    }
                                    r21 = [[*(r20 + r27) pathExtension] retain];
                                    r0 = sub_1002234d4();
                                    r22 = [r0 retain];
                                    [r20 setContentType:r22];
                                    [r22 release];
                                    [r21 release];
                                    r2 = *(r20 + r26);
                                    [r20 setContentLength:r2];
                                    r0 = @class(NSDate);
                                    asm { scvtf      d0, d0 };
                                    asm { scvtf      d1, d1 };
                                    asm { fdiv       d1, d1, d2 };
                                    r21 = [[r0 dateWithTimeIntervalSince1970:r2] retain];
                                    [r20 setLastModifiedDate:r21];
                                    [r21 release];
                                    r21 = [[NSString stringWithFormat:r2] retain];
                                    [r20 setETag:r21];
                                    [r21 release];
                            }
                            r20 = [r20 retain];
                            r21 = r20;
                    }
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

@end