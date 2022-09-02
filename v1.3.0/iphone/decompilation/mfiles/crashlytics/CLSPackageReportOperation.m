@implementation CLSPackageReportOperation

-(void *)initWithReport:(void *)arg2 fileManager:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r21 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_report, r23);
            objc_storeStrong((int64_t *)&r22->_fileManager, r21);
            r21 = [r22 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r21;
    return r0;
}

-(bool)compressData:(void *)arg2 toPath:(void *)arg3 {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = r0;
    r22 = gzopen([r0 fileSystemRepresentation], "w");
    if (r22 != 0x0) {
            r23 = &var_50;
            var_48 = r23;
            r8 = 0x101137000;
            if (objc_msgSend(r19, *(r8 + 0x260)) != 0x0) {
                    r8 = 0x101137000;
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            sub_100096ac4(r19, &var_88);
            gzclose(r22);
            if (*(int8_t *)(var_48 + 0x18) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            _Block_object_dispose(&var_50, 0x8);
    }
    else {
            r0 = __error();
            r0 = *(int32_t *)r0;
            strerror(r0);
            sub_100111778(0x4, "ERROR [%s:%d] Error: unable to open file for compression %s\n");
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)writeBytes:(void *)arg2 length:(unsigned long long)arg3 toGZFile:(struct gzFile_s *)arg4 {
    r0 = sub_10011cec4(arg2, arg3, &var_38);
    return r0;
}

-(void *)reportPath {
    r0 = [self report];
    r0 = [r0 retain];
    r20 = [[r0 path] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)destinationDirectory {
    r0 = [self fileManager];
    r0 = [r0 retain];
    r20 = [[r0 preparedPath] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)packagedPathWithName:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self destinationDirectory];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    r21 = [[r20 stringByAppendingPathExtension:@"multipartmime"] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)main {
    r31 = r31 - 0xa0;
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
    r21 = self;
    [self setFinalPath:0x0];
    r19 = [[FABMultipartMimeStreamEncoder generateBoundary] retain];
    r20 = [[r21 packagedPathWithName:r19] retain];
    r0 = [r21 report];
    r0 = [r0 retain];
    r23 = [[r0 identifier] retain];
    [r0 release];
    r0 = [r21 report];
    r0 = [r0 retain];
    r24 = [[r0 APIKey] retain];
    [r0 release];
    r25 = [[NSOutputStream outputStreamToFileAtPath:r20 append:0x0] retain];
    r0 = @class(FABMultipartMimeStreamEncoder);
    r0 = [r0 encoderWithStream:r25 andBoundary:r19];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            var_70 = [r24 retain];
            r27 = [r26 retain];
            var_68 = r27;
            var_60 = [r23 retain];
            [r27 encode:&var_90];
            if ([r21 isCancelled] != 0x0) {
                    r0 = [r21 fileManager];
                    r0 = [r0 retain];
                    [r0 removeItemAtPath:r20];
                    [r0 release];
            }
            else {
                    [r21 setFinalPath:r20];
            }
            [var_60 release];
            [var_68 release];
            [var_70 release];
    }
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)encode:(void *)arg2 data:(void *)arg3 fromPath:(void *)arg4 {
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
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    r21 = r0;
    if ([r0 length] != 0x0) {
            r22 = [[r21 stringByAppendingPathExtension:@"gz"] retain];
            r23 = [[r21 lastPathComponent] retain];
            r0 = [r22 lastPathComponent];
            r29 = r29;
            r24 = [r0 retain];
            r26 = @"application/x-gzip";
            [r26 retain];
            if (([r25 compressData:r20 toPath:r22] & 0x1) == 0x0) {
                    r0 = objc_retainAutorelease(r24);
                    [r0 UTF8String];
                    sub_100111778(0x4, "ERROR [%s:%d] Error: compression failed for %s\n");
                    r26 = @"text/plain";
                    [r26 retain];
                    [@"application/x-gzip" release];
                    r25 = [r21 retain];
                    [r22 release];
                    r22 = r25;
            }
            r25 = [[NSURL fileURLWithPath:r22] retain];
            [r19 addFile:r25 fileName:r24 mimeType:r26 fieldName:r23];
            [r25 release];
            [r26 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    else {
            sub_100111778(0x4, "ERROR [%s:%d] Error: path is invalid\n");
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)report {
    r0 = self->_report;
    return r0;
}

-(void *)fileManager {
    r0 = self->_fileManager;
    return r0;
}

-(void *)finalPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_finalPath)), 0x0);
    return r0;
}

-(void)setFinalPath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_finalPath, 0x0);
    objc_storeStrong((int64_t *)&self->_fileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_report, 0x0);
    return;
}

@end