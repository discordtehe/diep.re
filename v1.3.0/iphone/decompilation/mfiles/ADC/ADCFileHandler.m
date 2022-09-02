@implementation ADCFileHandler

-(void *)initWithFileURL:(void *)arg2 {
    r20 = [[self->_fileURL path] retain];
    r19 = [self initWithFilepath:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithFilepath:(void *)arg2 {
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
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r20->_readingChunkSize = 0x400;
            objc_storeStrong((int64_t *)&r20->_filepath, r21);
            r0 = [NSURL fileURLWithPath:r19];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fileURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSFileHandle);
            r0 = [r0 fileHandleForReadingAtPath:r20->_filepath];
            r0 = [r0 retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_readHandle));
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            r0 = @class(NSFileHandle);
            r0 = [r0 fileHandleForWritingAtPath:r20->_filepath];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_writeHandle));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            r0 = [r8 release];
            if (*(r20 + r23) != 0x0) {
                    if (*(r20 + r21) == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r20;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
            r21 = [r0 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(union ?)locationAndLengthOfRegex:(void *)arg2 {
    r19 = [arg2 retain];
    r21 = [self seekToRegex:r19];
    [self->_readHandle seekToFileOffset:0x0];
    [r19 release];
    r0 = r21;
    return r0;
}

-(union ?)seekToRegex:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    var_58 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_readHandle));
    r0 = *(r22 + r23);
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_readingChunkSize));
            var_98 = r8;
            r0 = [r0 readDataOfLength:*(r22 + r8)];
            r29 = r29;
            r24 = [r0 retain];
            r25 = 0x0;
            var_80 = 0x0;
            var_88 = 0xffffffffffffffff;
            do {
                    if ([r24 length] == 0x0) {
                        break;
                    }
                    r21 = [[NSString alloc] initWithData:r24 encoding:0x4];
                    r0 = [r21 componentsSeparatedByString:@"\n"];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 firstObject];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 release];
                    [r20 length];
                    r1 = @selector(rangeOfFirstMatchInString:options:range:);
                    r0 = objc_msgSend(var_58, r1);
                    if (r0 == 0x7fffffffffffffff) {
                            if ([r20 length] != 0x0) {
                                    r0 = [r20 length];
                            }
                            else {
                                    r0 = 0x1;
                            }
                            r25 = r0 + r25;
                            [*(r22 + r23) seekToFileOffset:r2];
                            r0 = *(r22 + r23);
                            r0 = [r0 readDataOfLength:r2];
                            r29 = r29;
                            r19 = [r0 retain];
                            [r24 release];
                            r28 = 0x1;
                            r24 = r19;
                    }
                    else {
                            r28 = 0x0;
                            r25 = r0 + r25;
                            var_88 = r25;
                            var_80 = r1;
                    }
                    [r20 release];
                    [r21 release];
            } while ((r28 & 0x1) != 0x0);
            [r24 release];
            r23 = var_88;
            r22 = var_80;
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCFileHandler seekToRegex:]" line:0x4b withFormat:@"Regex match location: %lu"];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCFileHandler seekToRegex:]" line:0x4c withFormat:@"Regex match length: %lu"];
            if ((0x0 & 0x1) != 0x0) {
                    objc_end_catch();
            }
    }
    else {
            r22 = 0x0;
            r23 = 0xffffffffffffffff;
    }
    [var_58 release];
    r0 = r23;
    return r0;
}

-(long long)locationOfSubstring:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = [self seekToSubstring:r19];
    [self->_readHandle seekToFileOffset:0x0];
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)seekToSubstring:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r21 = self;
    var_58 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_readHandle));
    r0 = *(r21 + r22);
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_readingChunkSize));
            var_88 = r8;
            r0 = [r0 readDataOfLength:*(r21 + r8)];
            r29 = r29;
            r23 = [r0 retain];
            r20 = 0x0;
            do {
                    if ([r23 length] == 0x0) {
                        break;
                    }
                    r19 = [[NSString alloc] initWithData:r23 encoding:0x4];
                    r0 = [r19 componentsSeparatedByString:@"\n"];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 firstObject];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r27 release];
                    r0 = [r19 rangeOfString:r2];
                    if (r0 == 0x7fffffffffffffff) {
                            if ([r28 length] != 0x0) {
                                    r0 = [r28 length];
                            }
                            else {
                                    r0 = 0x1;
                            }
                            r20 = r0 + r20;
                            [*(r21 + r22) seekToFileOffset:r2];
                            r0 = *(r21 + r22);
                            r0 = [r0 readDataOfLength:r2];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r23 release];
                            r26 = 0x1;
                            r23 = r27;
                    }
                    else {
                            r26 = 0x0;
                            r20 = r0 + r20;
                    }
                    [r28 release];
                    [r19 release];
            } while ((r26 & 0x1) != 0x0);
            [r23 release];
    }
    else {
            r20 = 0xffffffffffffffff;
    }
    [var_58 release];
    r0 = r20;
    return r0;
}

-(bool)seekToLocation:(long long)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_readHandle;
    if (r0 != 0x0) {
            [r0 seekToFileOffset:r2];
            r0 = 0x1;
    }
    return r0;
}

-(void *)readToEndOfFile {
    r19 = [[self->_readHandle readDataToEndOfFile] retain];
    r20 = [[NSString alloc] initWithData:r19 encoding:0x4];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)truncateAtLocation:(long long)arg2 {
    [self->_writeHandle truncateFileAtOffset:r2];
    return 0x1;
}

-(bool)writeDataString:(void *)arg2 atLocation:(long long)arg3 {
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_readHandle));
    [*(self + r21) seekToFileOffset:arg3];
    r21 = [[*(self + r21) readDataToEndOfFile] retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_writeHandle));
    [*(self + r25) truncateFileAtOffset:arg3];
    r22 = *(self + r25);
    r24 = [[r19 dataUsingEncoding:0x4] retain];
    [r22 writeData:r24];
    [r24 release];
    [*(self + r25) writeData:r21];
    [r21 release];
    [r19 release];
    return 0x1;
}

-(void)resetReadHandle {
    [self->_readHandle seekToFileOffset:0x0];
    return;
}

-(void)resetWriteHandle {
    [self->_writeHandle seekToFileOffset:0x0];
    return;
}

-(void)finish {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_readHandle));
    [*(self + r21) synchronizeFile];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_writeHandle));
    [*(self + r22) synchronizeFile];
    [*(self + r21) closeFile];
    [*(self + r22) closeFile];
    return;
}

-(long long)readingChunkSize {
    r0 = self->_readingChunkSize;
    return r0;
}

-(void)setReadingChunkSize:(long long)arg2 {
    self->_readingChunkSize = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_writeHandle, 0x0);
    objc_storeStrong((int64_t *)&self->_readHandle, 0x0);
    objc_storeStrong((int64_t *)&self->_filepath, 0x0);
    objc_storeStrong((int64_t *)&self->_fileURL, 0x0);
    return;
}

@end