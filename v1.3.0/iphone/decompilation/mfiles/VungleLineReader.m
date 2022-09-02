@implementation VungleLineReader

-(void *)initWithFilePath:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100634798;

loc_100634670:
    r21 = [[NSFileHandle fileHandleForReadingAtPath:r19] retain];
    [r20 setFileHandle:r21];
    [r21 release];
    r0 = [r20 fileHandle];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006347a8;

loc_1006346d8:
    [r20 setLineDelimiter:@"\n"];
    [r20 setFilePath:r19];
    [r20 setCurrentOffset:0x0];
    [r20 setChunkSize:0x100];
    r0 = [r20 fileHandle];
    r0 = [r0 retain];
    [r0 seekToEndOfFile];
    [r0 release];
    r0 = [r20 fileHandle];
    r0 = [r0 retain];
    [r20 setTotalFileLength:[r0 offsetInFile]];
    [r0 release];
    goto loc_100634798;

loc_100634798:
    r21 = [r20 retain];
    goto loc_1006347ac;

loc_1006347ac:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1006347a8:
    r21 = 0x0;
    goto loc_1006347ac;
}

-(void)dealloc {
    r0 = [self fileHandle];
    r0 = [r0 retain];
    [r0 closeFile];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)readTrimmedLine {
    r19 = [[self readLine] retain];
    r20 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r21 = [[r19 stringByTrimmingCharactersInSet:r20] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)enumerateLinesUsingBlock:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = 0x0;
    do {
            r0 = [r20 readLine];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            if (r23 == 0x0) {
                break;
            }
            (*(r19 + 0x10))(r19, r23, &var_31);
            r22 = r23;
    } while (var_31 == 0x0);
    [r23 release];
    [r19 release];
    return;
}

-(void *)lineDelimiter {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void)setChunkSize:(unsigned long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void)setLineDelimiter:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)readLine {
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
    r19 = self;
    if ([self currentOffset] >= [r19 totalFileLength]) goto loc_100634b78;

loc_100634894:
    r0 = [r19 lineDelimiter];
    r0 = [r0 retain];
    var_58 = [[r0 dataUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r19 fileHandle];
    r29 = r29;
    r21 = [r0 retain];
    [r21 seekToFileOffset:[r19 currentOffset]];
    [r21 release];
    var_60 = [objc_alloc() init];
    var_A8 = objc_autoreleasePoolPush();
    if ([r19 currentOffset] >= [r19 totalFileLength]) goto loc_100634bfc;

loc_1006349b0:
    r23 = @selector(length);
    r20 = @selector(currentOffset);
    var_A0 = r20;
    var_98 = @selector(totalFileLength);
    goto loc_1006349b4;

loc_1006349b4:
    r21 = [[r19 fileHandle] retain];
    r0 = [r21 readDataOfLength:[r19 chunkSize]];
    r29 = r29;
    r22 = [r0 retain];
    [r21 release];
    r21 = [r22 retain];
    r24 = [var_58 retain];
    r0 = objc_retainAutorelease(r21);
    r25 = r0;
    r28 = [r0 bytes];
    r22 = objc_msgSend(r25, r23);
    [r25 release];
    r0 = objc_retainAutorelease(r24);
    r24 = r0;
    r26 = [r0 bytes];
    r21 = objc_msgSend(r24, r23);
    [var_58 release];
    if (r22 == 0x0) goto loc_100634b08;

loc_100634a80:
    r27 = r23;
    r8 = 0x0;
    r9 = 0x0;
    r23 = 0x7fffffffffffffff;
    goto loc_100634a94;

loc_100634a94:
    if (*(int8_t *)(r28 + r8) != *(int8_t *)(r26 + r9)) goto loc_100634abc;

loc_100634aa4:
    if (r23 == 0x7fffffffffffffff) {
            if (!CPU_FLAGS & E) {
                    r23 = r23;
            }
            else {
                    r23 = r8;
            }
    }
    r9 = r9 + 0x1;
    if (r9 < r21) goto loc_100634ac4;

loc_100634ad0:
    if (r23 != 0x7fffffffffffffff) goto loc_100634b80;

loc_100634ad8:
    [var_60 appendData:r25];
    r23 = r27;
    r21 = objc_msgSend(r25, r27);
    r0 = r19;
    r20 = var_A0;
    goto loc_100634b2c;

loc_100634b2c:
    objc_msgSend(r0, r20) + r21;
    [r19 setCurrentOffset:r2];
    [r25 release];
    if (objc_msgSend(r19, r20) < objc_msgSend(r19, var_98)) goto loc_1006349b4;

loc_100634bfc:
    objc_autoreleasePoolPop(var_A8);
    r19 = [objc_alloc() initWithData:var_60 encoding:0x4];
    [var_60 release];
    [var_58 release];
    goto loc_100634c3c;

loc_100634c3c:
    r0 = [r19 autorelease];
    return r0;

loc_100634b80:
    objc_msgSend(r24, r27) + r23;
    r21 = [[r25 subdataWithRange:0x0] retain];
    [r25 release];
    [var_60 appendData:r21];
    objc_msgSend(r19, var_A0) + objc_msgSend(r21, r27);
    [r19 setCurrentOffset:r2];
    [r21 release];
    goto loc_100634bfc;

loc_100634ac4:
    r8 = r8 + 0x1;
    if (r8 < r22) goto loc_100634a94;
    goto loc_100634ad0;

loc_100634abc:
    r9 = 0x0;
    r23 = 0x7fffffffffffffff;
    goto loc_100634ac4;

loc_100634b08:
    [var_60 appendData:r25];
    r21 = objc_msgSend(r25, r23);
    r0 = r19;
    goto loc_100634b2c;

loc_100634b78:
    r19 = 0x0;
    goto loc_100634c3c;
}

-(unsigned long long)chunkSize {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)filePath {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setFilePath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setFileHandle:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)fileHandle {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setCurrentOffset:(unsigned long long)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(unsigned long long)currentOffset {
    r0 = *(self + 0x28);
    return r0;
}

-(unsigned long long)totalFileLength {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setTotalFileLength:(unsigned long long)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end