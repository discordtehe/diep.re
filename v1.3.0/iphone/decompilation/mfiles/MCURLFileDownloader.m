@implementation MCURLFileDownloader

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupCommonValues];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithPersistenceDelegate:(void *)arg2 andID:(int)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [self initWithPersistenceDelegate:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x68) = r19;
    }
    return r0;
}

-(void)setupCommonValues {
    *(int128_t *)(self + 0x80) = 0x4;
    *(int128_t *)(self + 0x88) = 0x4024000000000000;
    r22 = @(0x0);
@(0x1);
@(0xa);
@(0x3c);
@(0x12c);
    [self setRetryTimes:[NSArray arrayWithObjects:r22]];
    *(int32_t *)(self + 0x7c) = 0x0;
    *(int32_t *)(self + 0x68) = 0xffffffffffffffff;
    return;
}

+(void *)fileDownloaderWithPersistenceDelegate:(void *)arg2 andID:(int)arg3 {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 initWithPersistenceDelegate:arg2 andID:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithPersistenceDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setupCommonValues];
            *(r20 + 0x90) = [r19 retain];
    }
    r0 = r20;
    return r0;
}

+(void *)fileDownloaderWithPersistenceDelegate:(void *)arg2 {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 initWithPersistenceDelegate:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [self cleanup];
    [self setRetryTimes:0x0];
    [self setDelegate:0x0];
    [*(self + 0x90) release];
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
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            fclose(r0);
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [*(r19 + 0x20) cancel];
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
    r0 = *(r19 + 0x60);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x60) = 0x0;
    }
    *(int8_t *)(r19 + 0x6c) = 0x0;
    *(int128_t *)(r19 + 0x70) = 0x0;
    *(int128_t *)(r19 + 0x78) = 0x0;
    *(int8_t *)(r19 + 0x58) = 0x1;
    [*(r19 + 0xa0) invalidate];
    *(r19 + 0xa0) = 0x0;
    return;
}

-(double)getNextRetryTime {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)(self + 0x7c));
    *(int32_t *)(self + 0x7c) = r21 + 0x1;
    r0 = [self retryTimes];
    if (r0 != 0x0) {
            if ([[r19 retryTimes] count] <= r21) {
                    [[r19 retryTimes] count] - 0x1;
                    asm { sxtw       x21, w8 };
            }
            r0 = [r19 retryTimes];
            r0 = [r0 objectAtIndex:r21];
            r0 = [r0 floatValue];
            asm { fcvt       d0, s0 };
    }
    return r0;
}

-(void)failDownloadWithError:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x38);
    if (r0 == 0x0) goto loc_100274400;

loc_100274354:
    r20 = r2;
    if ([r0 respondsToSelector:@selector(shouldRetryDownload:forError:), r3] == 0x0 || [*(r19 + 0x38) shouldRetryDownload:r19 forError:r20] == 0x0) goto loc_1002743e8;

loc_10027438c:
    [*(r19 + 0xa0) invalidate];
    [r19 getNextRetryTime];
    *(r19 + 0xa0) = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(retry:) selector:0x0 userInfo:0x0 repeats:r6];
    return;

loc_1002743e8:
    [*(r19 + 0x38) downloadFailed:r19 withError:r20];
    goto loc_100274400;

loc_100274400:
    [r19 cleanup];
    return;
}

-(void *)tempFile {
    r0 = self;
    r8 = 0x50;
    if (*(int8_t *)(r0 + 0x58) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x50;
            }
            else {
                    r8 = 0x48;
            }
    }
    r0 = *(r0 + r8);
    return r0;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r31 = r31 - 0x70;
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
    *(int32_t *)(r19 + 0x74) = [r20 expectedContentLength];
    [NSHTTPURLResponse class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_1002745c4;

loc_1002744c0:
    r21 = [r20 statusCode];
    if (r21 < 0x1f4 || r21 < 0x258) goto loc_100274540;

loc_1002744ec:
    [[r20 allHeaderFields] enumerateKeysAndObjectsUsingBlock:&var_48];
    goto loc_1002745c4;

loc_1002745c4:
    r20 = [r19 tempFile];
    if ([[r19 persistencyDelegate] canWriteFileAtPath:r20] == 0x0) goto loc_100274630;

loc_1002745fc:
    *(r19 + 0x10) = fopen([r20 UTF8String], "wb");
    return;

loc_100274630:
    r0 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x3 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Error writing file at path %@"]]];
    goto loc_10027469c;

loc_10027469c:
    [*(r19 + 0x20) cancel];
    [r19 failDownloadWithError:r0];
    return;

loc_100274540:
    [r19 URLString];
    r0 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x2 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Error downloading from URL: %@ Error Code: %d"]]];
    if (r0 != 0x0) goto loc_10027469c;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    fclose(*(self + 0x10));
    *(self + 0x10) = 0x0;
    [[self persistencyDelegate] removeResourceAtPath:[self tempFile]];
    [self failDownloadWithError:arg3];
    return;
}

-(void *)downloadFile:(void *)arg2 baseURL:(void *)arg3 savePath:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(shouldUseTempFile:)] != 0x0) {
            r5 = [*(r22 + 0x38) shouldUseTempFile:r22];
    }
    else {
            r5 = 0x1;
    }
    r0 = [r22 downloadFile:r21 baseURL:r20 savePath:r19 useTempFile:r5];
    return r0;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg3 length];
    r0 = [arg3 bytes];
    r3 = *(r19 + 0x10);
    if (fwrite(r0, 0x1, r20, r3) == r20) {
            *(int32_t *)(r19 + 0x78) = *(int32_t *)(r19 + 0x78) + r20;
            if (*(r19 + 0x8) != 0x0) {
                    r8 = *(int32_t *)(r19 + 0x74);
                    if (r8 >= 0x1) {
                            s0 = *(int32_t *)(r19 + 0x78);
                            asm { scvtf      s0, s0 };
                            asm { scvtf      s1, w8 };
                            asm { fdiv       s0, s0, s1 };
                            if (s0 > 0x0) {
                                    if (CPU_FLAGS & G) {
                                            r8 = 0x1;
                                    }
                            }
                            if (CPU_FLAGS & LE) {
                                    if (CPU_FLAGS & LE) {
                                            r9 = 0x1;
                                    }
                            }
                            if (s0 >= 0x3ff0000000000000) {
                                    if (CPU_FLAGS & NS) {
                                            r10 = 0x1;
                                    }
                            }
                            r9 = r10 | r9;
                            if ((r8 & r10) != 0x0) {
                                    asm { fcsel      s1, s1, s2, ne };
                            }
                            if (r9 != 0x0) {
                                    asm { fcsel      s0, s1, s0, ne };
                            }
                    }
                    else {
                            s0 = 0x0;
                    }
                    *(int32_t *)(r19 + 0x70) = s0;
                    r0 = *(r19 + 0x38);
                    if (r0 != 0x0 && [r0 respondsToSelector:@selector(download:withProgress:), r3] != 0x0) {
                            [*(r19 + 0x38) download:r19 withProgress:r3];
                    }
            }
    }
    else {
            if (r20 != 0x0) {
                    [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x3 userInfo:0x0];
                    [[r19 persistencyDelegate] removeResourceAtPath:[r19 tempFile]];
                    fclose(*(r19 + 0x10));
                    *(r19 + 0x10) = 0x0;
                    [*(r19 + 0x20) cancel];
                    [r19 failDownloadWithError:r20];
            }
            else {
                    if (*(r19 + 0x8) != 0x0) {
                            r8 = *(int32_t *)(r19 + 0x74);
                            if (r8 >= 0x1) {
                                    s0 = *(int32_t *)(r19 + 0x78);
                                    asm { scvtf      s0, s0 };
                                    asm { scvtf      s1, w8 };
                                    asm { fdiv       s0, s0, s1 };
                                    if (s0 > 0x0) {
                                            if (CPU_FLAGS & G) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    if (CPU_FLAGS & LE) {
                                            if (CPU_FLAGS & LE) {
                                                    r9 = 0x1;
                                            }
                                    }
                                    if (s0 >= 0x3ff0000000000000) {
                                            if (CPU_FLAGS & NS) {
                                                    r10 = 0x1;
                                            }
                                    }
                                    r9 = r10 | r9;
                                    if ((r8 & r10) != 0x0) {
                                            asm { fcsel      s1, s1, s2, ne };
                                    }
                                    if (r9 != 0x0) {
                                            asm { fcsel      s0, s1, s0, ne };
                                    }
                            }
                            else {
                                    s0 = 0x0;
                            }
                            *(int32_t *)(r19 + 0x70) = s0;
                            r0 = *(r19 + 0x38);
                            if (r0 != 0x0 && [r0 respondsToSelector:@selector(download:withProgress:), r3] != 0x0) {
                                    [*(r19 + 0x38) download:r19 withProgress:r3];
                            }
                    }
            }
    }
    return;
}

-(void *)downloadFile:(void *)arg2 savePath:(void *)arg3 {
    r0 = [self downloadFile:[arg2 lastPathComponent] baseURL:[arg2 stringByDeletingLastPathComponent] savePath:arg3];
    return r0;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            fclose(r0);
            *(r19 + 0x10) = 0x0;
    }
    if (*(int8_t *)(r19 + 0x58) != 0x0 && ([[r19 persistencyDelegate] copyResourceFrom:*(int128_t *)(r19 + 0x50) to:*(int128_t *)(r19 + 0x48) deleteOriginal:0x1 allowOverrite:0x1] & 0x1) == 0x0) {
            r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x3 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:r2]]];
    }
    else {
            r20 = 0x0;
    }
    r21 = *(r19 + 0x60);
    if (r21 != 0x0) {
            if ([r21 hasPrefix:r2] != 0x0 && ([r21 hasSuffix:r2] & 0x1) != 0x0) {
                    if ([r21 hasPrefix:r2] != 0x0) {
                            asm { cinc       x23, x8, ne };
                    }
                    [r21 length] - 0x2;
                    r21 = [r21 substringWithRange:r23];
                    r0 = *(r19 + 0x60);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x60) = 0x0;
                    }
                    r22 = @selector(length);
                    *(r19 + 0x60) = [r21 retain];
            }
            else {
                    if (([r21 hasPrefix:r2] & 0x1) != 0x0) {
                            if ([r21 hasPrefix:r2] != 0x0) {
                                    asm { cinc       x23, x8, ne };
                            }
                            [r21 length] - 0x2;
                            r21 = [r21 substringWithRange:r23];
                            r0 = *(r19 + 0x60);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x60) = 0x0;
                            }
                            r22 = @selector(length);
                            *(r19 + 0x60) = [r21 retain];
                    }
                    else {
                            r22 = @selector(length);
                    }
            }
            r23 = [r21 rangeOfCharacterFromSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefABCDEF"] invertedSet]];
            r0 = objc_msgSend(r21, r22);
            if (r23 == 0x7fffffffffffffff && r0 == 0x20) {
                    r0 = [NSData dataWithContentsOfFile:*(r19 + 0x48)];
                    sub_1009d0a30(&stack[-144], [r0 bytes], objc_msgSend(r0, r22));
                    sub_1009ccb10(&stack[-144]);
                    sub_1009d0b44(&stack[-144]);
                    r22 = [NSMutableString stringWithCapacity:var_50 << 0x1];
                    if (var_50 != 0x0) {
                            r25 = 0x0;
                            do {
                                    [r22 appendFormat:r2];
                                    r25 = r25 + 0x1;
                            } while (var_50 > r25);
                    }
                    if (([r22 isEqualToString:r2] & 0x1) == 0x0) {
                            r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x3 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:r2]]];
                    }
                    sub_1009d0b44(&stack[-112]);
            }
    }
    if (r20 != 0x0) {
            [r19 failDownloadWithError:r20];
    }
    else {
            *(int32_t *)(r19 + 0x70) = 0x3f800000;
            r0 = *(r19 + 0x38);
            if (r0 != 0x0) {
                    *(int8_t *)(r19 + 0x6c) = 0x0;
                    [r0 downloadComplete:r19];
            }
            [r19 cleanup];
    }
    return;
}

-(void)cancelDownload {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x6c) != 0x0) {
            r19 = r0;
            [*(r0 + 0x20) cancel];
            r0 = *(r19 + 0x10);
            if (r0 != 0x0) {
                    fclose(r0);
                    *(r19 + 0x10) = 0x0;
            }
            [[r19 persistencyDelegate] removeResourceAtPath:[r19 tempFile]];
            [r19 cleanup];
    }
    return;
}

-(void)retry:(void *)arg2 {
    [*(self + 0xa0) invalidate];
    *(self + 0xa0) = 0x0;
    r21 = [*(self + 0x40) retain];
    r22 = [*(self + 0x18) retain];
    r20 = [*(self + 0x48) retain];
    r24 = *(int32_t *)(self + 0x7c);
    r23 = *(int8_t *)(self + 0x58);
    [self cleanup];
    [self downloadFile:r21 baseURL:[r22 stringByDeletingLastPathComponent] savePath:r20 useTempFile:r23];
    *(int32_t *)(self + 0x7c) = r24;
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void *)toDictionary {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSMutableDictionary alloc] init];
    if (*(int8_t *)(r20 + 0x6c) != 0x0) {
            [r19 setObject:r2 forKey:r3];
            [*(r20 + 0x18) stringByDeletingLastPathComponent];
            objc_msgSend(r19, r21);
            [*(r20 + 0x48) substringFromIndex:[[*(r20 + 0x90) getPathForCache] length]];
            objc_msgSend(r19, r21);
            [NSNumber numberWithInt:*(int32_t *)(r20 + 0x7c)];
            objc_msgSend(r19, r21);
            [NSNumber numberWithBool:r2];
            objc_msgSend(r19, r21);
    }
    if (*(r20 + 0x98) != 0x0) {
            [r19 setObject:r2 forKey:r3];
    }
    r20 = [NSDictionary dictionaryWithDictionary:r19];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)fromDictionary:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [self cleanup];
    [r19 setRetryTimes:[r20 objectForKey:@"retryTimes"]];
    r0 = [r20 objectForKey:@"filename"];
    if (r0 != 0x0) {
            r24 = [r20 objectForKey:@"url"];
            [r20 objectForKey:@"savePath"];
            r25 = [*(r19 + 0x90) getPathForCache];
            r25 = [r25 stringByAppendingPathComponent:[r20 objectForKey:@"savePath"]];
            r23 = [r20 objectForKey:@"count"];
            r0 = [r19 downloadFile:r0 baseURL:r24 savePath:r25 useTempFile:[[r20 objectForKey:@"useTempFile"] boolValue]];
            if (r0 == 0x0) {
                    r8 = [r23 intValue];
                    r0 = 0x0;
                    *(int32_t *)(r19 + 0x7c) = r8;
            }
    }
    return r0;
}

-(void *)downloadFile:(void *)arg2 baseURL:(void *)arg3 savePath:(void *)arg4 useTempFile:(bool)arg5 {
    r5 = arg5;
    r0 = self;
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
    r26 = arg4;
    r21 = arg3;
    r20 = arg2;
    if (*(int8_t *)(r0 + 0x6c) != 0x0) {
            r0 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"Cannot start new download until current download finishes. FileName: %@ baseUrl: %@ SavePath: %@"] forKey:**_NSLocalizedDescriptionKey]];
    }
    else {
            r19 = r0;
            if (r21 != 0x0) {
                    r25 = r5;
                    if ([r21 isEqualToString:r2] != 0x0) {
                            r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                            [r19 cleanup];
                            r0 = r20;
                    }
                    else {
                            if (r26 != 0x0) {
                                    r23 = @selector(isEqualToString:);
                                    if (objc_msgSend(r26, r23) != 0x0) {
                                            r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                            [r19 cleanup];
                                            r0 = r20;
                                    }
                                    else {
                                            r24 = @selector(hasSuffix:);
                                            if (objc_msgSend(r26, r24) != 0x0) {
                                                    r26 = [r26 stringByAppendingPathComponent:[r20 lastPathComponent]];
                                            }
                                            r22 = @selector(retain);
                                            r0 = objc_msgSend(r26, r22);
                                            *(r19 + 0x48) = r0;
                                            r26 = [r0 pathExtension];
                                            r0 = *(r19 + 0x48);
                                            r0 = [r0 stringByDeletingPathExtension];
                                            *(int8_t *)(r19 + 0x58) = r25;
                                            if (r25 != 0x0) {
                                                    var_80 = r0;
                                                    var_78 = r26;
                                                    var_70 = @selector(hasSuffix:);
                                                    stack[-120] = @selector(isEqualToString:);
                                                    var_58 = r19;
                                                    r23 = 0x5;
                                                    r25 = [NSMutableString stringWithCapacity:0x5];
                                                    do {
                                                            r28 = @selector(length);
                                                            r27 = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                                                            r24 = @selector(characterAtIndex:);
                                                            r0 = rand();
                                                            r8 = 0x51eb851f;
                                                            asm { smull      x8, w0, w8 };
                                                            asm { sxtw       x19, w8 };
                                                            objc_msgSend(r27, r28);
                                                            asm { udiv       x8, x19, x0 };
                                                            objc_msgSend(r27, r24);
                                                            objc_msgSend(r25, r26);
                                                            r23 = r23 - 0x1;
                                                    } while (r23 != 0x0);
                                                    r0 = [NSString stringWithFormat:@"%@__temp__%@.%@"];
                                                    r22 = @selector(retain);
                                                    r0 = objc_msgSend(r0, r22);
                                                    r19 = var_58;
                                                    *(r19 + 0x50) = r0;
                                                    r24 = var_70;
                                                    r23 = stack[-120];
                                            }
                                            if (r20 != 0x0 && objc_msgSend(r20, r23) == 0x0) {
                                                    *(r19 + 0x40) = objc_msgSend(r20, r22);
                                                    if (objc_msgSend(r21, r24) != 0x0) {
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
                                            r0 = objc_msgSend(r0, r22);
                                            *(r19 + 0x18) = r0;
                                            [r0 stringByAddingPercentEscapesUsingEncoding:0x4];
                                            r0 = [NSURL URLWithString:r2];
                                            r0 = objc_msgSend(r0, r22);
                                            *(r19 + 0x28) = r0;
                                            if (r0 != 0x0) {
                                                    r0 = [NSMutableURLRequest requestWithURL:r0 cachePolicy:*(r19 + 0x80) timeoutInterval:r4];
                                                    r0 = objc_msgSend(r0, r22);
                                                    *(r19 + 0x30) = r0;
                                                    if (r0 != 0x0) {
                                                            [r0 setHTTPMethod:@"GET"];
                                                            r0 = [NSURLConnection alloc];
                                                            r0 = [r0 initWithRequest:*(r19 + 0x30) delegate:r19];
                                                            *(r19 + 0x20) = r0;
                                                            if (r0 != 0x0) {
                                                                    if (*(int8_t *)(r19 + 0x58) != 0x0) {
                                                                            r0 = *(r19 + 0x50);
                                                                            r0 = [r0 UTF8String];
                                                                            r20 = r0;
                                                                            r0 = fopen(r0, "wb");
                                                                            *(r19 + 0x10) = r0;
                                                                            if (r0 != 0x0) {
                                                                                    fclose(r0);
                                                                                    remove(r20);
                                                                                    *(r19 + 0x10) = 0x0;
                                                                                    *(int8_t *)(r19 + 0x6c) = 0x1;
                                                                                    [*(r19 + 0x20) start];
                                                                                    r0 = 0x0;
                                                                            }
                                                                            else {
                                                                                    r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                                                                    [r19 cleanup];
                                                                                    r0 = r20;
                                                                            }
                                                                    }
                                                                    else {
                                                                            if (([[r19 persistencyDelegate] canWriteFileAtPath:*(r19 + 0x48)] & 0x1) != 0x0) {
                                                                                    *(int8_t *)(r19 + 0x6c) = 0x1;
                                                                                    [*(r19 + 0x20) start];
                                                                                    r0 = 0x0;
                                                                            }
                                                                            else {
                                                                                    r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                                                                    [r19 cleanup];
                                                                                    r0 = r20;
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                                                    [r19 cleanup];
                                                                    r0 = r20;
                                                            }
                                                    }
                                                    else {
                                                            r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                                            [r19 cleanup];
                                                            r0 = r20;
                                                    }
                                            }
                                            else {
                                                    r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                                    [r19 cleanup];
                                                    r0 = r20;
                                            }
                                    }
                            }
                            else {
                                    r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                                    [r19 cleanup];
                                    r0 = r20;
                            }
                    }
            }
            else {
                    r20 = [NSError errorWithDomain:@"UrlFileDownloaderErrorDomain" code:0x1 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:r2] forKey:**_NSLocalizedDescriptionKey]];
                    [r19 cleanup];
                    r0 = r20;
            }
    }
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)URLString {
    r0 = *(self + 0x18);
    return r0;
}

-(int)ID {
    r0 = *(int32_t *)(self + 0x68);
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

-(void *)etag {
    r0 = *(self + 0x60);
    return r0;
}

-(bool)isDownloading {
    r0 = *(int8_t *)(self + 0x6c) & 0x1;
    return r0;
}

-(float)downloadProgress {
    r0 = self;
    return r0;
}

-(int)expectedDownloadSize {
    r0 = *(int32_t *)(self + 0x74);
    return r0;
}

-(int)totalBytesReceived {
    r0 = *(int32_t *)(self + 0x78);
    return r0;
}

-(int)downloadAttempt {
    r0 = *(int32_t *)(self + 0x7c);
    return r0;
}

-(unsigned long long)cachePolicy {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setCachePolicy:(unsigned long long)arg2 {
    *(self + 0x80) = arg2;
    return;
}

-(double)timeoutInterval {
    r0 = self;
    return r0;
}

-(void)setTimeoutInterval:(double)arg2 {
    *(self + 0x88) = d0;
    return;
}

-(void *)retryTimes {
    r0 = objc_getProperty(self, _cmd, 0x98, 0x1);
    return r0;
}

-(void)setRetryTimes:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)persistencyDelegate {
    r0 = *(self + 0x90);
    return r0;
}

@end