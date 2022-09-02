@implementation URLFileDownloader

+(void *)sharedURLFileDownloader {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d9bb8;
    if (r0 == 0x0) {
            r0 = [URLFileDownloader alloc];
            r0 = [r0 init];
            *0x1011d9bb8 = r0;
    }
    return r0;
}

+(bool)isURLFileDownloaderInitialized {
    r0 = self;
    if (*qword_1011d9bb8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)dealloc {
    [self cleanup];
    [self setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)cleanup {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x50);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x50) = 0x0;
    }
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    *(int16_t *)(r19 + 0x58) = 0x0;
    *(r19 + 0x64) = 0x0;
    *(r19 + 0x5c) = 0x0;
    return;
}

+(void)releaseSharedURLFileDownloader {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d9bb8 != 0x0) {
            [*0x1011d9bb8 release];
            *0x1011d9bb8 = 0x0;
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int128_t *)(r0 + 0x70) = 0x4;
            *(int128_t *)(r0 + 0x78) = 0x4024000000000000;
    }
    return r0;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    *(r19 + 0x8) = [r20 retain];
    *(r19 + 0x60) = [r20 expectedContentLength];
    r20 = *(r19 + 0x8);
    r0 = [NSHTTPURLResponse class];
    r0 = sub_1005d8554(r20, r0, 0x0);
    if (r0 != 0x0) {
            r0 = [r0 statusCode];
            r20 = r0;
            if (r0 >= 0x1f4 && r20 > 0x257) {
                    r8 = 0x50;
                    if (*(int8_t *)(r19 + 0x58) == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r8 = 0x50;
                            }
                            else {
                                    r8 = 0x48;
                            }
                    }
                    *(r19 + 0x10) = fopen([*(r19 + r8) UTF8String], "wb");
            }
            else {
                    [r19 URLString];
                    r0 = [NSError errorWithDomain:@"UserDomain" code:0x2 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Error downloading from URL: %@ Error Code: %ld"]]];
                    if (r0 != 0x0) {
                            r20 = r0;
                            [*(r19 + 0x20) cancel];
                            r0 = *(r19 + 0x38);
                            if (r0 != 0x0) {
                                    [r0 downloadFailed:r19 withError:r20];
                            }
                            [r19 cleanup];
                    }
                    else {
                            r8 = 0x50;
                            if (*(int8_t *)(r19 + 0x58) == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r8 = 0x50;
                                    }
                                    else {
                                            r8 = 0x48;
                                    }
                            }
                            *(r19 + 0x10) = fopen([*(r19 + r8) UTF8String], "wb");
                    }
            }
    }
    else {
            r8 = 0x50;
            if (*(int8_t *)(r19 + 0x58) == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x50;
                    }
                    else {
                            r8 = 0x48;
                    }
            }
            *(r19 + 0x10) = fopen([*(r19 + r8) UTF8String], "wb");
    }
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    r21 = [arg3 length];
    goto loc_1005cd6d0;

loc_1005cd6d0:
    r0 = [r20 bytes];
    r0 = fwrite(r0, 0x1, r21, *(r19 + 0x10));
    if (r0 == -0x1) goto loc_1005cd70c;

loc_1005cd6f4:
    *(int32_t *)(r19 + 0x68) = *(int32_t *)(r19 + 0x68) + r0;
    r21 = r21 - r0;
    if (r21 != 0x0) goto loc_1005cd6d0;

loc_1005cd760:
    if (*(r19 + 0x8) != 0x0) {
            if (*(r19 + 0x60) >= 0x1) {
                    s0 = *(int32_t *)(r19 + 0x68);
                    asm { scvtf      s0, s0 };
                    asm { scvtf      s1, x8 };
                    asm { fdiv       s0, s0, s1 };
                    sub_10035d730();
                    sub_10035d724();
            }
            else {
                    s0 = 0x0;
            }
            *(int32_t *)(r19 + 0x5c) = s0;
            r0 = *(r19 + 0x38);
            if (r0 != 0x0) {
                    [r0 download:r19 withProgress:r3];
            }
    }
    return;

loc_1005cd70c:
    if (r21 != 0x0) {
            fclose(*(r19 + 0x10));
            [*(r19 + 0x20) cancel];
            r0 = *(r19 + 0x38);
            if (r0 != 0x0) {
                    [r0 downloadFailed:r19 withError:0x0];
            }
            [r19 cleanup];
    }
    else {
            if (*(r19 + 0x8) != 0x0) {
                    if (*(r19 + 0x60) >= 0x1) {
                            s0 = *(int32_t *)(r19 + 0x68);
                            asm { scvtf      s0, s0 };
                            asm { scvtf      s1, x8 };
                            asm { fdiv       s0, s0, s1 };
                            sub_10035d730();
                            sub_10035d724();
                    }
                    else {
                            s0 = 0x0;
                    }
                    *(int32_t *)(r19 + 0x5c) = s0;
                    r0 = *(r19 + 0x38);
                    if (r0 != 0x0) {
                            [r0 download:r19 withProgress:r3];
                    }
            }
    }
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    fclose(*(self + 0x10));
    if (*(int8_t *)(r19 + 0x58) != 0x0 && (sub_1005d93cc(*(int128_t *)(r19 + 0x50), *(int128_t *)(r19 + 0x48), 0x1) & 0x1) == 0x0) {
            r0 = [NSError errorWithDomain:@"UserDomain" code:0x3 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:r2]]];
            if (r0 != 0x0) {
                    r3 = r0;
                    r0 = *(r19 + 0x38);
                    if (r0 != 0x0) {
                            [r0 downloadFailed:r19 withError:r3];
                    }
            }
            else {
                    *(int32_t *)(r19 + 0x5c) = 0x3f800000;
                    r0 = *(r19 + 0x38);
                    if (r0 != 0x0) {
                            [r0 downloadComplete:r19];
                    }
            }
    }
    else {
            *(int32_t *)(r19 + 0x5c) = 0x3f800000;
            r0 = *(r19 + 0x38);
            if (r0 != 0x0) {
                    [r0 downloadComplete:r19];
            }
    }
    [r19 cleanup];
    return;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    fclose(*(self + 0x10));
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 downloadFailed:r19 withError:r20];
    }
    [r19 cleanup];
    return;
}

-(bool)downloadFile:(void *)arg2 baseURL:(void *)arg3 savePath:(void *)arg4 {
    r0 = [self downloadFile:arg2 baseURL:arg3 savePath:arg4 useTempFile:0x1];
    return r0;
}

-(bool)downloadFile:(void *)arg2 baseURL:(void *)arg3 savePath:(void *)arg4 useTempFile:(bool)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x59) != 0x0) goto loc_1005cdb68;

loc_1005cd948:
    r21 = r3;
    r19 = r0;
    if (r3 == 0x0) goto loc_1005cdb58;

loc_1005cd954:
    r20 = r5;
    r24 = r4;
    r22 = r2;
    if ([r24 isEqualToString:r2] != 0x0 || [r21 isEqualToString:r2] != 0x0 || r24 == 0x0) goto loc_1005cdb58;

loc_1005cd99c:
    *(int8_t *)(r19 + 0x58) = r20;
    r0 = [r24 retain];
    *(r19 + 0x48) = r0;
    r24 = [r0 pathExtension];
    r0 = *(r19 + 0x48);
    r0 = [r0 stringByDeletingPathExtension];
    if (*(int8_t *)(r19 + 0x58) != 0x0) {
            *(r19 + 0x50) = [[[r0 stringByAppendingString:@"_temp_"] stringByAppendingPathExtension:r24] retain];
    }
    if (r22 != 0x0 && [r22 isEqualToString:r2] == 0x0) {
            *(r19 + 0x40) = [r22 retain];
            if ([r21 hasSuffix:r2] != 0x0) {
                    r1 = @selector(stringByAppendingString:);
                    r0 = r21;
            }
            else {
                    r0 = @class(NSString);
                    r1 = @selector(stringWithFormat:);
            }
            r0 = objc_msgSend(r0, r1);
    }
    else {
            *(r19 + 0x40) = 0x0;
            r0 = r21;
    }
    *(r19 + 0x18) = [r0 retain];
    r0 = [NSURL URLWithString:r2];
    r0 = [r0 retain];
    *(r19 + 0x28) = r0;
    if (r0 == 0x0) goto loc_1005cdb58;

loc_1005cdacc:
    r0 = [NSMutableURLRequest requestWithURL:r0 cachePolicy:*(r19 + 0x70) timeoutInterval:r4];
    r0 = [r0 retain];
    *(r19 + 0x30) = r0;
    if (r0 == 0x0) goto loc_1005cdb58;

loc_1005cdafc:
    [r0 setHTTPMethod:@"GET"];
    r0 = [NSURLConnection alloc];
    r0 = [r0 initWithRequest:*(r19 + 0x30) delegate:r19];
    *(r19 + 0x20) = r0;
    if (r0 == 0x0) goto loc_1005cdb58;

loc_1005cdb40:
    r20 = 0x1;
    *(int8_t *)(r19 + 0x59) = r20;
    [r0 start];
    goto loc_1005cdb6c;

loc_1005cdb6c:
    r0 = r20;
    return r0;

loc_1005cdb58:
    [r19 cleanup];
    goto loc_1005cdb68;

loc_1005cdb68:
    r20 = 0x0;
    goto loc_1005cdb6c;
}

-(bool)downloadFile:(void *)arg2 savePath:(void *)arg3 useTempFile:(bool)arg4 {
    r0 = [self downloadFile:0x0 baseURL:arg2 savePath:arg3 useTempFile:arg4];
    return r0;
}

-(bool)downloadFile:(void *)arg2 savePath:(void *)arg3 {
    r0 = [self downloadFile:0x0 baseURL:arg2 savePath:arg3 useTempFile:0x1];
    return r0;
}

-(void)cancelDownload {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x59) != 0x0) {
            [*(r0 + 0x20) cancel];
            [r0 cleanup];
    }
    return;
}

-(void *)delegate {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x1);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)URLString {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)filename {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)savePath {
    r0 = *(self + 0x48);
    return r0;
}

-(float)downloadProgress {
    r0 = self;
    return r0;
}

-(bool)isDownloading {
    r0 = *(int8_t *)(self + 0x59) & 0x1;
    return r0;
}

-(long long)expectedDownloadSize {
    r0 = *(self + 0x60);
    return r0;
}

-(int)totalBytesReceived {
    r0 = *(int32_t *)(self + 0x68);
    return r0;
}

-(void)setCachePolicy:(unsigned long long)arg2 {
    *(self + 0x70) = arg2;
    return;
}

-(unsigned long long)cachePolicy {
    r0 = *(self + 0x70);
    return r0;
}

-(double)timeoutInterval {
    r0 = self;
    return r0;
}

-(void)setTimeoutInterval:(double)arg2 {
    *(self + 0x78) = d0;
    return;
}

@end