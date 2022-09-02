@implementation ANSPackageLogOperation

-(void *)initWithCompressedLogURL:(void *)arg2 packagedLogURL:(void *)arg3 multipartMimeBoundary:(void *)arg4 {
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
    r20 = arg4;
    r22 = arg3;
    r25 = arg2;
    r19 = [r25 retain];
    r21 = [r22 retain];
    r23 = [r20 retain];
    r0 = [[&var_50 super] init];
    r24 = r0;
    if (r24 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_compressedLogURL, r25);
            objc_storeStrong((int64_t *)&r24->_packagedLogURL, r22);
            objc_storeStrong((int64_t *)&r24->_multipartMimeBoundary, r20);
    }
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)main {
    r31 = r31 - 0x90;
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
    r19 = self;
    r22 = [[NSFileManager defaultManager] retain];
    r0 = [r19 compressedLogURL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r25 = [r22 fileExistsAtPath:r24 isDirectory:&var_41];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r25 != 0x0) {
            asm { ccmp       w8, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            r21 = [[ANSLogger sharedLogger] retain];
            r19 = [[r19 compressedLogURL] retain];
            [r21 log:@"Error: attempting to package nonexistent file: %@"];
            [r19 release];
            r0 = r21;
    }
    else {
            r0 = [r19 packagedLogURL];
            r0 = [r0 retain];
            r21 = [[r0 path] retain];
            r20 = [[NSOutputStream outputStreamToFileAtPath:r21 append:0x0] retain];
            [r21 release];
            [r0 release];
            r22 = [[r19 multipartMimeBoundary] retain];
            r21 = [[FABMultipartMimeStreamEncoder encoderWithStream:r20 andBoundary:r22] retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [r21 retain];
                    [r0 encode:&var_78];
                    [r0 release];
            }
            [r21 release];
            r0 = r20;
    }
    [r0 release];
    return;
}

-(void *)compressedLogURL {
    r0 = self->_compressedLogURL;
    return r0;
}

-(void)setMultipartMimeBoundary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_multipartMimeBoundary, arg2);
    return;
}

-(void *)multipartURLForCompressedURL:(void *)arg2 withBoundary:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[arg2 URLByDeletingLastPathComponent] retain];
    [r21 release];
    r21 = [[r20 URLByAppendingPathComponent:r19] retain];
    [r19 release];
    r19 = [[r21 URLByAppendingPathExtension:*0x100e6c420] retain];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)packagedLogURL {
    r0 = self->_packagedLogURL;
    return r0;
}

-(void *)multipartMimeBoundary {
    r0 = self->_multipartMimeBoundary;
    return r0;
}

-(void)setCompressedLogURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_compressedLogURL, arg2);
    return;
}

-(void)setPackagedLogURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_packagedLogURL, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_packagedLogURL, 0x0);
    objc_storeStrong((int64_t *)&self->_multipartMimeBoundary, 0x0);
    objc_storeStrong((int64_t *)&self->_compressedLogURL, 0x0);
    return;
}

@end