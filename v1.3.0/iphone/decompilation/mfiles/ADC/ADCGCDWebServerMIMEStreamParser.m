@implementation ADCGCDWebServerMIMEStreamParser

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d2328 == 0x0) {
            r0 = [NSData alloc];
            r0 = [r0 initWithBytes:"\r\n" length:0x2];
            r8 = *0x1011d2328;
            *0x1011d2328 = r0;
            [r8 release];
    }
    if (*0x1011d2330 == 0x0) {
            r0 = [NSData alloc];
            r0 = [r0 initWithBytes:"\r\n\r\n" length:0x4];
            r8 = *0x1011d2330;
            *0x1011d2330 = r0;
            [r8 release];
    }
    if (*0x1011d2338 == 0x0) {
            r0 = [NSData alloc];
            r0 = [r0 initWithBytes:"--\r\n" length:0x4];
            r8 = *0x1011d2338;
            *0x1011d2338 = r0;
            [r8 release];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(int32_t *)(int64_t *)&r19->_tmpFile;
    if (r0 >= 0x1) {
            close(r0);
            unlink([r19->_tmpPath fileSystemRepresentation]);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithBoundary:(void *)arg2 defaultControlName:(void *)arg3 arguments:(void *)arg4 files:(void *)arg5 {
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
    r23 = arg5;
    r25 = arg4;
    r27 = arg3;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [r27 retain];
    r21 = [r25 retain];
    r22 = [r23 retain];
    if ([r19 length] != 0x0) {
            var_68 = r20;
            r0 = [NSString stringWithFormat:@"--%@"];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 dataUsingEncoding:0x1];
            r28 = r0;
            r26 = [r0 retain];
            [r20 release];
            if (r26 != 0x0) {
                    r0 = [[&var_60 super] init];
                    r24 = r0;
                    if (r24 != 0x0) {
                            objc_storeStrong((int64_t *)&r24->_boundary, r28);
                            objc_storeStrong((int64_t *)&r24->_defaultcontrolName, r27);
                            objc_storeStrong((int64_t *)&r24->_arguments, r25);
                            objc_storeStrong((int64_t *)&r24->_files, r23);
                            r0 = [NSMutableData alloc];
                            r0 = [r0 initWithCapacity:0x40000];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_data));
                            r8 = *(r24 + r9);
                            *(r24 + r9) = r0;
                            [r8 release];
                            *(int32_t *)(int64_t *)&r24->_state = 0x1;
                    }
                    r24 = [r24 retain];
                    r23 = r24;
            }
            else {
                    r23 = 0x0;
            }
            r20 = var_68;
    }
    else {
            r26 = 0x0;
            r23 = 0x0;
    }
    [r26 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r24 release];
    r0 = r23;
    return r0;
}

-(bool)appendBytes:(void *)arg2 length:(unsigned long long)arg3 {
    [self->_data appendBytes:arg2 length:arg3];
    r0 = [self _parseData];
    return r0;
}

-(bool)isAtEnd {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->_state == 0x4) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_subParser, 0x0);
    objc_storeStrong((int64_t *)&self->_tmpPath, 0x0);
    objc_storeStrong((int64_t *)&self->_contentType, 0x0);
    objc_storeStrong((int64_t *)&self->_fileName, 0x0);
    objc_storeStrong((int64_t *)&self->_controlName, 0x0);
    objc_storeStrong((int64_t *)&self->_files, 0x0);
    objc_storeStrong((int64_t *)&self->_arguments, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_defaultcontrolName, 0x0);
    objc_storeStrong((int64_t *)&self->_boundary, 0x0);
    return;
}

-(bool)_parseData {
    r31 = r31 - 0x1e0;
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
    r22 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(int32_t *)(r22 + r25);
    if (r8 != 0x2) goto loc_100227770;

loc_100227710:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_data));
    r19 = *(r22 + r24);
    r20 = *0x1011d2330;
    [r19 length];
    r26 = [r19 rangeOfData:r20 options:0x0 range:0x0];
    r27 = @selector(rangeOfData:options:range:);
    if (r26 != 0x7fffffffffffffff) goto loc_100227778;

loc_100227768:
    r23 = 0x1;
    goto loc_100227e28;

loc_100227e28:
    r8 = *(int32_t *)(r22 + r25);
    goto loc_100227e2c;

loc_100227e2c:
    if ((r8 | 0x2) != 0x3) goto loc_100228234;

loc_100227e38:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_data));
    r20 = *(r22 + r26);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_boundary));
    [r20 length];
    r28 = r22;
    r1 = @selector(rangeOfData:options:range:);
    r21 = objc_msgSend(r20, r1);
    if (r21 != 0x7fffffffffffffff) goto loc_100227f34;

loc_100227e9c:
    r20 = [*(r28 + r24) length];
    if ([*(r28 + r26) length] >= r20 * 0x2) {
            r19 = [*(r28 + r26) length] - (r20 << 0x1);
            r20 = r28->_subParser;
            if (r20 != 0x0) {
                    if ([r20 appendBytes:[*(r28 + r26) bytes] length:r19] != 0x0) {
                            [*(r28 + r26) replaceBytesInRange:0x0 withBytes:r19 length:0x0];
                    }
                    else {
                            r23 = 0x0;
                    }
            }
            else {
                    if (r28->_tmpPath != 0x0) {
                            if (write(*(int32_t *)(int64_t *)&r28->_tmpFile, [*(r28 + r26) bytes], r19) != r19) {
                                    r23 = 0x0;
                            }
                            else {
                                    [*(r28 + r26) replaceBytesInRange:0x0 withBytes:r19 length:0x0];
                            }
                    }
            }
    }
    goto loc_100228234;

loc_100228234:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100227f34:
    r20 = r25;
    [*(r28 + r26) length] - r21 + r1;
    r19 = [*(r28 + r26) rangeOfData:r2 options:r3 range:r4];
    var_120 = @selector(rangeOfData:options:range:);
    if ([*(r28 + r26) rangeOfData:r2 options:r3 range:r4] == 0x7fffffffffffffff) {
            asm { ccmp       x19, x27, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_100228234;

loc_100227fa0:
    r25 = r20;
    r22 = r28;
    if (*(int32_t *)(r28 + r25) != 0x3) goto loc_1002281dc;

loc_100227fb4:
    r0 = *(r22 + r26);
    r0 = [r0 bytes];
    r27 = r22;
    r22 = r0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_subParser));
    r0 = *(r27 + r24);
    if (r0 == 0x0) goto loc_100228060;

loc_100227fdc:
    r0 = [r0 appendBytes:r22 length:r21];
    r22 = r27;
    if (r0 == 0x0 || ([*(r22 + r24) isAtEnd] & 0x1) == 0x0) {
            r23 = 0x0;
    }
    goto loc_1002281d0;

loc_1002281d0:
    r0 = *(r22 + r24);
    *(r22 + r24) = 0x0;
    [r0 release];
    goto loc_1002281dc;

loc_1002281dc:
    if (r19 != 0x7fffffffffffffff) {
            [*(r22 + r26) replaceBytesInRange:0x0 withBytes:r19 + var_120 length:0x0];
            *(int32_t *)(r22 + r25) = 0x2;
            r23 = [r22 _parseData];
    }
    else {
            *(int32_t *)(r22 + r25) = 0x4;
    }
    goto loc_100228234;

loc_100228060:
    r21 = r21 - 0x2;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_tmpPath));
    if (*(r27 + r24) == 0x0) goto loc_1002280ac;

loc_100228074:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_tmpFile));
    if (write(*(int32_t *)(r27 + r25), r22, r21) == r21) {
            r0 = *(int32_t *)(r27 + r25);
            r0 = close(r0);
            r22 = r27;
            if (r0 != 0x0) {
                    r23 = 0x0;
            }
            else {
                    *(int32_t *)(r22 + r25) = 0x0;
                    [[ADCGCDWebServerMultiPartFile alloc] initWithControlName:r22->_controlName contentType:r22->_contentType fileName:r22->_fileName temporaryPath:*(r22 + r24)];
                    [r22->_files addObject:r2];
                    [r21 release];
            }
    }
    else {
            r23 = 0x0;
            r22 = r27;
    }
    r25 = r20;
    goto loc_1002281d0;

loc_1002280ac:
    [[ADCGCDWebServerMultiPartArgument alloc] initWithControlName:r27->_controlName contentType:r27->_contentType data:[[NSData alloc] initWithBytes:r22 length:r21]];
    [r27->_arguments addObject:r2];
    [r22 release];
    [r21 release];
    r22 = r27;
    goto loc_1002281dc;

loc_100227778:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_controlName));
    r0 = *(r22 + r8);
    var_170 = r22 + r8;
    *(r22 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
    r0 = *(r22 + r8);
    var_178 = r8;
    *(r22 + r8) = 0x0;
    [r0 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_contentType));
    r0 = *(r22 + r23);
    *(r22 + r23) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tmpPath));
    r0 = *(r22 + r8);
    var_1C0 = r8;
    *(r22 + r8) = 0x0;
    [r0 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_subParser));
    r0 = *(r22 + r21);
    *(r22 + r21) = 0x0;
    [r0 release];
    r19 = [NSString alloc];
    r0 = *(r22 + r24);
    r0 = [r0 subdataWithRange:0x0];
    r29 = r29;
    r20 = [r0 retain];
    r28 = [r19 initWithData:r20 encoding:0x4];
    [r20 release];
    var_150 = r22;
    if (r28 == 0x0) goto loc_100227bfc;

loc_100227858:
    var_158 = r23;
    var_1B8 = r21;
    var_1A8 = @selector(rangeOfData:options:range:);
    stack[-432] = r26;
    var_198 = r24;
    stack[-416] = r25;
    var_108 = q0;
    var_1B0 = r28;
    r0 = [r28 componentsSeparatedByString:@"\r\n"];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_180 = r1;
    r27 = objc_msgSend(r0, r1);
    if (r27 == 0x0) goto loc_100227bbc;

loc_1002278c8:
    r23 = *var_108;
    r21 = @":";
    var_168 = r23;
    goto loc_1002278e0;

loc_1002278e0:
    r24 = 0x0;
    goto loc_100227934;

loc_100227934:
    if (*var_108 != r23) {
            objc_enumerationMutation(var_120);
    }
    r25 = *(var_110 + r24 * 0x8);
    r28 = [r25 rangeOfString:r21];
    if (r28 == 0x7fffffffffffffff) goto loc_100227b90;

loc_100227974:
    r19 = r21;
    r21 = [[r25 substringToIndex:r28] retain];
    r20 = [[r25 substringFromIndex:r28 + @selector(rangeOfString:)] retain];
    r28 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r0 = [r20 stringByTrimmingCharactersInSet:r28];
    r29 = r29;
    r25 = [r0 retain];
    [r28 release];
    [r20 release];
    if ([r21 caseInsensitiveCompare:r2] == 0x0) goto loc_100227acc;

loc_100227a14:
    if ([r21 caseInsensitiveCompare:r2] != 0x0) goto loc_100227b78;

loc_100227a2c:
    r28 = [sub_100222c88() retain];
    r0 = sub_100222dac();
    r29 = r29;
    r0 = [r0 retain];
    r23 = @selector(isEqualToString:);
    r22 = objc_msgSend(r0, r23);
    [r0 release];
    r0 = r28;
    if (r22 == 0x0) goto loc_100227af4;

loc_100227a78:
    r0 = sub_100222e30(r0, @"name");
    r0 = [r0 retain];
    r8 = *var_170;
    *var_170 = r0;
    [r8 release];
    r0 = sub_100222e30(r28, @"filename");
    r29 = r29;
    r0 = [r0 retain];
    r8 = *(var_150 + var_178);
    *(var_150 + var_178) = r0;
    goto loc_100227b60;

loc_100227b60:
    [r8 release];
    goto loc_100227b68;

loc_100227b68:
    [r28 release];
    r22 = var_150;
    r23 = var_168;
    goto loc_100227b78;

loc_100227b78:
    [r25 release];
    [r21 release];
    r21 = r19;
    goto loc_100227b90;

loc_100227b90:
    r24 = r24 + 0x1;
    if (r24 < r27) goto loc_100227934;

loc_100227b9c:
    r27 = objc_msgSend(var_120, var_180);
    if (r27 != 0x0) goto loc_1002278e0;

loc_100227bbc:
    [var_120 release];
    r23 = var_158;
    r19 = *(r22 + r23);
    r24 = var_198;
    r25 = stack[-416];
    r27 = var_1A8;
    r26 = stack[-432];
    r21 = var_1B8;
    r28 = var_1B0;
    if (r19 == 0x0) {
            [@"text/plain" retain];
            *(r22 + r23) = @"text/plain";
            [r19 release];
    }
    goto loc_100227c24;

loc_100227c24:
    if (*var_170 == 0x0) goto loc_100227ce4;

loc_100227c30:
    r0 = sub_100222dac();
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    if (r20 == 0x0) goto loc_100227cec;

loc_100227c68:
    r19 = [sub_100222e30(*(r22 + r23), @"boundary") retain];
    r0 = [ADCGCDWebServerMIMEStreamParser alloc];
    r0 = [r0 initWithBoundary:r19 defaultControlName:*var_170 arguments:r22->_arguments files:r22->_files];
    r8 = *(r22 + r21);
    *(r22 + r21) = r0;
    [r8 release];
    if (*(r22 + r21) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r23 = 0x1;
            }
    }
    goto loc_100227df0;

loc_100227df0:
    [r19 release];
    goto loc_100227df8;

loc_100227df8:
    [*(r22 + r24) replaceBytesInRange:0x0 withBytes:r26 + r27 length:0x0];
    *(int32_t *)(r22 + r25) = 0x3;
    [r28 release];
    goto loc_100227e28;

loc_100227cec:
    if (*(r22 + var_178) == 0x0) goto loc_100227de4;

loc_100227cf8:
    r19 = [NSTemporaryDirectory() retain];
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r21 = [[r0 globallyUniqueString] retain];
    r22 = [[r19 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    [r0 release];
    [r19 release];
    r0 = r22;
    r22 = var_150;
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 fileSystemRepresentation];
    r0 = open(r0, 0x601);
    *(int32_t *)(int64_t *)&r22->_tmpFile = r0;
    if (r0 >= 0x1) {
            r0 = [r19 copy];
            r8 = *(r22 + var_1C0);
            *(r22 + var_1C0) = r0;
            [r8 release];
            r23 = 0x1;
    }
    else {
            r23 = 0x0;
    }
    goto loc_100227df0;

loc_100227de4:
    r23 = 0x1;
    goto loc_100227df8;

loc_100227ce4:
    r23 = 0x0;
    goto loc_100227df8;

loc_100227af4:
    r0 = sub_100222dac();
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r23);
    [r0 release];
    if (r22 == 0x0) goto loc_100227b68;

loc_100227b24:
    objc_storeStrong(var_170, var_150->_defaultcontrolName);
    r0 = sub_100222e30(r28, @"filename");
    r29 = r29;
    r0 = [r0 retain];
    r8 = *(var_150 + var_178);
    *(var_150 + var_178) = r0;
    goto loc_100227b60;

loc_100227acc:
    r0 = sub_100222c88();
    r29 = r29;
    r0 = [r0 retain];
    r8 = *(r22 + var_158);
    *(r22 + var_158) = r0;
    [r8 release];
    goto loc_100227b78;

loc_100227bfc:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed decoding headers in part of 'multipart/form-data'"];
    goto loc_100227c24;

loc_100227770:
    r23 = 0x1;
    goto loc_100227e2c;
}

@end