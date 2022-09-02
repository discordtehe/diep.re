@implementation FNFMp4FileBasedReader

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
    if (r0 != 0x0) {
            r0 = [NSFileHandle fileHandleForReadingAtPath:r19];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_fileHandle));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            r0 = *(r20 + r21);
            if (r0 != 0x0) {
                    r20->_totalLength = [r0 seekToEndOfFile];
                    [*(r20 + r21) seekToFileOffset:0x0];
                    r21 = [r20 retain];
            }
            else {
                    r21 = 0x0;
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

-(void)dealloc {
    [self->_fileHandle closeFile];
    [[&var_20 super] dealloc];
    return;
}

-(void)moveHead:(unsigned long long)arg2 {
    r21 = self->_fileHandle;
    [r21 seekToFileOffset:[r21 offsetInFile] + arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_buffer));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(char *)bytesAtHead:(long long)arg2 {
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
    r20 = arg2;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_buffer));
    if ([*(self + r23) length] < r20) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_fileHandle));
            r22 = [*(r19 + r24) offsetInFile];
            r0 = *(r19 + r24);
            r0 = [r0 readDataOfLength:r20];
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [*(r19 + r24) seekToFileOffset:r22];
    }
    if ([*(r19 + r23) length] < r20) {
            r0 = 0x0;
    }
    else {
            r0 = *(r19 + r23);
            r0 = [r0 bytes];
    }
    return r0;
}

-(bool)hasEnoughDataForBytes:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_fileHandle;
    r0 = [r0 offsetInFile];
    if (r0 + arg2 < self->_totalLength) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_buffer, 0x0);
    objc_storeStrong((int64_t *)&self->_fileHandle, 0x0);
    return;
}

@end