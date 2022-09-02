@implementation ANSCompressLogOperation

-(void *)initWithUncompressedLogURL:(void *)arg2 compressedLogURL:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_uncompressedLogURL, r22);
            objc_storeStrong((int64_t *)&r23->_compressedLogURL, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)compressedURLForUncompressedURL:(void *)arg2 {
    r0 = [arg2 URLByDeletingPathExtension];
    r0 = [r0 retain];
    r20 = [[r0 URLByAppendingPathExtension:*0x100e6c418] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)uncompressedLogURL {
    r0 = self->_uncompressedLogURL;
    return r0;
}

-(void)setUncompressedLogURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_uncompressedLogURL, arg2);
    return;
}

-(void)main {
    r31 = r31 - 0x70;
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
    r19 = self;
    r23 = [[NSFileManager defaultManager] retain];
    r0 = [r19 uncompressedLogURL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r23 fileExistsAtPath:r25 isDirectory:&var_51];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r26 != 0x0) {
            asm { ccmp       w8, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & E) goto loc_10012ff88;

loc_10012ff2c:
    r21 = [[ANSLogger sharedLogger] retain];
    r19 = [[r19 uncompressedLogURL] retain];
    [r21 log:@"Error: attempting to compress nonexistent file: %@"];
    r0 = r19;
    goto loc_100130178;

loc_100130178:
    [r0 release];
    goto loc_10013017c;

loc_10013017c:
    [r21 release];
    return;

.l3:
    return;

loc_10012ff88:
    r23 = [[NSFileManager defaultManager] retain];
    r0 = [r19 compressedLogURL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 path];
    r29 = r29;
    r25 = [r0 retain];
    r26 = [r23 fileExistsAtPath:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    if ((r26 & 0x1) != 0x0) goto .l3;

loc_100130008:
    r24 = [[r19 uncompressedLogURL] retain];
    r23 = [[NSData dataWithContentsOfURL:r24 options:0x0 error:0x0] retain];
    [r24 release];
    r0 = [r19 compressedLogURL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 path];
    r29 = r29;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r22 = gzopen([r0 fileSystemRepresentation], "w");
    [r0 release];
    [r24 release];
    r0 = objc_retainAutorelease(r23);
    r21 = r0;
    r23 = [r0 bytes];
    r24 = @selector(length);
    if (objc_msgSend(r21, r24) != sign_extend_64(gzwrite(r22, r23, objc_msgSend(r21, r24)))) goto loc_100130118;

loc_10013010c:
    gzclose(r22);
    goto loc_10013017c;

loc_100130118:
    r22 = [[ANSLogger sharedLogger] retain];
    r19 = [[r19 uncompressedLogURL] retain];
    [r22 log:@"Failed to compress file at %@"];
    [r19 release];
    r0 = r22;
    goto loc_100130178;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_compressedLogURL, 0x0);
    objc_storeStrong((int64_t *)&self->_uncompressedLogURL, 0x0);
    return;
}

-(void *)compressedLogURL {
    r0 = self->_compressedLogURL;
    return r0;
}

-(void)setCompressedLogURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_compressedLogURL, arg2);
    return;
}

@end