@implementation MCURLFileListDownloader

-(void *)downloadErrors {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)remainingFilesToDownload {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int32_t *)(self + 0x40) >= 0x1 && [*(r19 + 0x30) count] != 0x0) {
            r20 = @selector(count);
            r21 = *(r19 + 0x30);
            r22 = sign_extend_64(*(int32_t *)(r19 + 0x40));
            objc_msgSend(r21, r20) - sign_extend_64(*(int32_t *)(r19 + 0x40));
            r0 = [r21 subarrayWithRange:r22];
    }
    else {
            r0 = *(r19 + 0x30);
    }
    return r0;
}

-(int)busyDownloadersCount {
    r31 = r31 - 0x130;
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
    var_110 = q0;
    r19 = *(self + 0x10);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r21 = 0x0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            r21 = r21 + [*(var_118 + r26 * 0x8) isDownloading];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)downloading {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self busyDownloadersCount];
    if (*(int8_t *)(r19 + 0x8) != 0x0) {
            if (r0 > 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = *(r19 + 0x30);
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            r21 = *(int32_t *)(r19 + 0x40);
                            if ((r21 & 0xffffffff80000000) == 0x0) {
                                    r20 = @selector(count);
                                    r0 = *(r19 + 0x30);
                                    r0 = objc_msgSend(r0, r20);
                                    if (r0 > r21) {
                                            if (CPU_FLAGS & A) {
                                                    r0 = 0x1;
                                            }
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)remainingFileNamesToDownload {
    r31 = r31 - 0x130;
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
    r19 = [self remainingFilesToDownload];
    r20 = [[[NSMutableArray alloc] init] autorelease];
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r19);
                            }
                            [[*(var_118 + r28 * 0x8) objectAtIndex:0x0] lastPathComponent];
                            objc_msgSend(r20, r25);
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r0 = [NSArray arrayWithArray:r20];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)fileListDownloaderWithPersistencyDelegate:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithPersistencyDelegate:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)fileListDownloaderWithPersistencyDelegate:(void *)arg2 withParallelDownloadersCount:(int)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithPersistencyDelegate:arg2 withParallelDownloadersCount:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)addNewDownloader {
    r0 = [self addNewDownloader:[*(self + 0x10) count] + 0x1];
    return r0;
}

-(void *)addNewDownloader:(int)arg2 {
    r0 = [MCURLFileDownloader fileDownloaderWithPersistenceDelegate:*(self + 0x20) andID:arg2];
    [r0 setDelegate:self];
    [*(self + 0x10) addObject:r2];
    r0 = r20;
    return r0;
}

-(int)parallelDownloadersCount {
    r0 = *(self + 0x10);
    r0 = [r0 count];
    r0 = r0 - *(int32_t *)(self + 0x18);
    return r0;
}

-(void *)removeDownloader:(int)arg2 {
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
    r21 = arg2;
    r19 = self;
    if ([*(self + 0x10) count] < 0x2 || [*(r19 + 0x10) count] == 0x0) goto loc_10027202c;

loc_100271fac:
    r20 = 0x0;
    goto loc_100271fc0;

loc_100271fc0:
    r0 = *(r19 + 0x10);
    r0 = [r0 objectAtIndex:r20];
    r23 = r0;
    if ([r0 ID] == r21) goto loc_100272004;

loc_100271fe4:
    r20 = r20 + 0x1;
    if ([*(r19 + 0x10) count] > r20) goto loc_100271fc0;

loc_100271ffc:
    r23 = 0x0;
    r20 = r20 & 0xffffffff;
    goto loc_100272004;

loc_100272004:
    if (r23 != 0x0) {
            [*(r19 + 0x10) removeObjectAtIndex:r20];
            *(int32_t *)(r19 + 0x18) = *(int32_t *)(r19 + 0x18) - 0x1;
    }
    goto loc_100272030;

loc_100272030:
    r0 = r23;
    return r0;

loc_10027202c:
    r23 = 0x0;
    goto loc_100272030;
}

-(void *)initWithPersistencyDelegate:(void *)arg2 {
    r0 = [self initWithPersistencyDelegate:arg2 withParallelDownloadersCount:0x4];
    return r0;
}

-(void)setParallelDownloadersCount:(int)arg2 {
    r31 = r31 - 0x140;
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
    r27 = [*(self + 0x10) count];
    r22 = arg2 - r27;
    if (r22 != 0x0) {
            if (r22 >= 0x1) {
                    do {
                            [r19 addNewDownloader];
                            r22 = r22 - 0x1;
                    } while (r22 != 0x0);
            }
            else {
                    r8 = 0x101137000;
                    asm { neg        w8, w22 };
                    if (r8 >= r27) {
                            asm { csneg      w8, w9, w22, ge };
                    }
                    *(int32_t *)(r19 + 0x18) = 0x101137000;
                    r20 = [NSMutableArray array];
                    if (r27 >= 0x1) {
                            r22 = 0x0;
                            r8 = 0x101137000;
                            asm { sxtw       x26, w27 };
                            r27 = *(r8 + 0x6c0);
                            do {
                                    r0 = *(r19 + 0x10);
                                    r0 = [r0 objectAtIndex:r22];
                                    r28 = r0;
                                    if (([r0 isDownloading] & 0x1) == 0x0) {
                                            [NSNumber numberWithInt:[r28 ID]];
                                            objc_msgSend(r20, r27);
                                    }
                                    r0 = [r20 count];
                                    r22 = r22 + 0x1;
                                    if (r0 != sign_extend_64(*(int32_t *)(r19 + 0x18))) {
                                            asm { ccmp       x22, x26, #0x0, ne };
                                    }
                            } while (CPU_FLAGS & L);
                    }
                    var_110 = q0;
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r25 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [*(var_118 + r28 * 0x8) intValue];
                                            objc_msgSend(r19, r24);
                                            r28 = r28 + 0x1;
                                    } while (r28 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)dealloc {
    [*(self + 0x30) release];
    [*(self + 0x38) release];
    [*(self + 0x10) release];
    [*(self + 0x20) release];
    [*(self + 0x48) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPersistencyDelegate:(void *)arg2 withParallelDownloadersCount:(int)arg3 {
    r31 = r31 - 0x90;
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
    r22 = arg3;
    r20 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            var_78 = r20;
            *(r19 + 0x20) = [r20 retain];
            *(r19 + 0x10) = [[NSMutableArray array] retain];
            if (r22 >= 0x1) {
                    r24 = 0x0;
                    do {
                            r24 = r24 + 0x1;
                            [r19 addNewDownloader:r2];
                    } while (r22 != r24);
            }
            r23 = @selector(array);
            *(int32_t *)(r19 + 0x18) = 0x0;
            *(r19 + 0x30) = [objc_msgSend(@class(NSMutableArray), r23) retain];
            *(int8_t *)(r19 + 0x8) = 0x0;
            var_68 = r19;
            *(int32_t *)(r19 + 0x40) = 0xffffffffffffffff;
            r28 = 0x5;
            r22 = [NSMutableString stringWithCapacity:0x5];
            r8 = &@selector(alloc);
            r25 = *(r8 + 0x4f0);
            do {
                    r26 = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                    r24 = @selector(characterAtIndex:);
                    r23 = @selector(length);
                    r20 = 0x19;
                    r0 = rand();
                    asm { smull      x8, w0, w21 };
                    r8 = r0 - ((SAR(r8, 0x23)) + (r8 >> 0x3f)) * r20;
                    asm { sxtw       x19, w8 };
                    objc_msgSend(r26, r23);
                    asm { udiv       x8, x19, x0 };
                    objc_msgSend(r26, r24);
                    objc_msgSend(r22, r25);
                    r28 = r28 - 0x1;
            } while (r28 != 0x0);
            r0 = [var_78 getPathForMetadata];
            r0 = [r0 stringByAppendingPathComponent:@"fldl_index_.fdl"];
            r0 = [r0 stringByAppendingString:r22];
            r0 = [r0 retain];
            r19 = var_68;
            *(r19 + 0x48) = r0;
    }
    r0 = r19;
    return r0;
}

-(void)detach {
    r31 = r31 - 0x140;
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
    var_110 = q0;
    var_128 = self;
    r20 = *(self + 0x10);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r19 * 0x8) cancelDownload];
                            objc_msgSend(r25, r24);
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 setDelegate:0x0];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)cleanup {
    r31 = r31 - 0x120;
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
    *(int8_t *)(self + 0x8) = 0x0;
    [*(self + 0x30) removeAllObjects];
    var_100 = q0;
    r19 = *(self + 0x10);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) cancelDownload];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)saveIndexState {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self remainingFilesToDownload] != 0x0 && [[r19 remainingFilesToDownload] count] != 0x0) {
            [*(r19 + 0x20) saveData:[[NSString stringWithFormat:@"%d"] dataUsingEncoding:0x4] atPath:*(r19 + 0x48)];
    }
    else {
            if ([r19 busyDownloadersCount] != 0x0) {
                    [*(r19 + 0x20) saveData:[[NSString stringWithFormat:@"%d"] dataUsingEncoding:0x4] atPath:*(r19 + 0x48)];
            }
            else {
                    if ([*(r19 + 0x20) pathExists:*(r19 + 0x48)] != 0x0) {
                            [*(r19 + 0x20) removeResourceAtPath:*(r19 + 0x48)];
                    }
            }
    }
    return;
}

-(void)start {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) == 0x0) {
            [*(r0 + 0x38) removeAllObjects];
            *(int8_t *)(r0 + 0x8) = 0x1;
            *(int32_t *)(r0 + 0x40) = 0x0;
            [r0 startFileDownload];
    }
    return;
}

-(void *)currentFile {
    r0 = [*(self + 0x30) objectAtIndex:r2];
    return r0;
}

-(void *)getFreeDownloader {
    r31 = r31 - 0x130;
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
    var_110 = q0;
    r19 = *(self + 0x10);
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1002729fc;

loc_100272988:
    r21 = r0;
    r24 = *var_110;
    goto loc_100272998;

loc_100272998:
    r26 = 0x0;
    goto loc_1002729a0;

loc_1002729a0:
    if (*var_110 != r24) {
            objc_enumerationMutation(r19);
    }
    r23 = *(var_118 + r26 * 0x8);
    if ([r23 isDownloading] == 0x0) goto loc_100272a00;

loc_1002729d0:
    r26 = r26 + 0x1;
    if (r26 < r21) goto loc_1002729a0;

loc_1002729dc:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r21 = r0;
    if (r0 != 0x0) goto loc_100272998;

loc_1002729fc:
    r23 = 0x0;
    goto loc_100272a00;

loc_100272a00:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)startFileDownload {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x30);
    if (r0 != 0x0) {
            r0 = [r0 count];
            if (r0 != 0x0) {
                    r21 = *(int32_t *)(r19 + 0x40);
                    if ((r21 & 0xffffffff80000000) == 0x0 && [*(r19 + 0x30) count] >= r21) {
                            r0 = [r19 currentFile];
                            r21 = r0;
                            if (r0 != 0x0) {
                                    if ([r21 count] != 0x0) {
                                            [r21 count];
                                    }
                            }
                            r22 = [r21 objectAtIndex:0x1];
                            r22 = sub_1002800bc(r22, [*(r19 + 0x20) getPathForCache]);
                            r22 = [[r19 getFreeDownloader] downloadFile:[r21 objectAtIndex:0x0] savePath:r22];
                            r21 = [[r21 objectAtIndex:0x0] retain];
                            *(int32_t *)(r19 + 0x40) = *(int32_t *)(r19 + 0x40) + 0x1;
                            if (r22 != 0x0) {
                                    [r19 reportError:r22 forUrlString:r21];
                                    [r21 release];
                                    r0 = [r19 startFileDownload];
                            }
                            else {
                                    r20 = @selector(count);
                                    r22 = [r19 busyDownloadersCount];
                                    r20 = objc_msgSend(*(r19 + 0x10), r20);
                                    [r21 release];
                                    if (r20 == sign_extend_64(r22)) {
                                            r0 = 0x1;
                                    }
                                    else {
                                            r0 = [r19 startFileDownload];
                                    }
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(void)tick {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            if ([*(r0 + 0x10) count] != sign_extend_64([r19 busyDownloadersCount])) {
                    [r19 retain];
                    if (([r19 startFileDownload] & 0x1) == 0x0 && [r19 busyDownloadersCount] == 0x0) {
                            r0 = *(r19 + 0x38);
                            r21 = &@selector(listDownloadComplete:);
                            if (r0 != 0x0) {
                                    r21 = &@selector(listDownloadComplete:);
                                    if ([r0 count] == 0x0) {
                                            if (!CPU_FLAGS & E) {
                                                    r21 = &@selector(listDownloadCompleteWithErrors:);
                                            }
                                            else {
                                                    r21 = &@selector(listDownloadComplete:);
                                            }
                                    }
                            }
                            objc_msgSend(*(r19 + 0x28), *r21);
                            [r19 cleanup];
                            [r19 saveDownloadersState];
                            [r19 saveIndexState];
                    }
                    [r19 release];
            }
    }
    return;
}

-(void)downloadFileAt:(void *)arg2 {
    [self downloadFileAt:arg2 intoLocalPath:[[*(self + 0x20) getPathForCache] stringByAppendingPathComponent:[arg2 lastPathComponent]]];
    return;
}

-(void)downloadFileAt:(void *)arg2 intoLocalPath:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    if ([r21 rangeOfString:[*(self + 0x20) getPathForCache]] != 0x7fffffffffffffff) {
            r21 = [r21 substringFromIndex:[[*(r19 + 0x20) getPathForCache] length] - 0x1];
    }
    [*(r19 + 0x30) addObject:[NSArray arrayWithObjects:r20]];
    if (*(int8_t *)(r19 + 0x8) != 0x0 && [*(r19 + 0x10) count] != sign_extend_64([r19 busyDownloadersCount])) {
            [r19 startFileDownload];
    }
    return;
}

-(void)reportError:(void *)arg2 forUrlString:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = arg2;
    r21 = self;
    [[self retain] autorelease];
    r0 = *(r21 + 0x38);
    if (r0 != 0x0) {
            if (r20 != 0x0) {
                    r3 = r20;
                    [r0 setObject:r2 forKey:r3];
            }
    }
    else {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            *(r21 + 0x38) = r0;
            if (r20 != 0x0) {
                    r3 = r20;
                    [r0 setObject:r2 forKey:r3];
            }
    }
    if ([*(r21 + 0x28) respondsToSelector:@selector(listDownload:URL:error:), r3, r4] != 0x0) {
            [*(r21 + 0x28) listDownload:r21 URL:r20 error:r19];
    }
    return;
}

-(void)downloadComplete:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [r19 saveDownloadersState:[arg2 ID]];
    [r19 saveIndexState];
    if ([*(r19 + 0x28) respondsToSelector:@selector(listDownload:URLComplete:), r3] != 0x0) {
            [*(r19 + 0x28) listDownload:r19 URLComplete:[r20 URLString]];
    }
    if (*(int32_t *)(r19 + 0x18) >= 0x1) {
            [r19 removeDownloader:[r20 ID]];
    }
    return;
}

-(void)downloadFailed:(void *)arg2 withError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [r19 saveDownloadersState:[arg2 ID]];
    [r19 saveIndexState];
    [r19 reportError:arg3 forUrlString:[r20 URLString]];
    if (*(int32_t *)(r19 + 0x18) >= 0x1) {
            [r19 removeDownloader:[r20 ID]];
    }
    return;
}

-(void)download:(void *)arg2 withProgress:(float)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r21 = arg2;
    r19 = self;
    if ([*(self + 0x28) respondsToSelector:@selector(listDownload:URL:progress:), arg3, r4] != 0x0) {
            [*(r19 + 0x28) listDownload:r19 URL:[r21 URLString] progress:r4];
    }
    return;
}

-(void)cancelDownload {
    [self cleanup];
    [self saveDownloadersState];
    [self saveIndexState];
    return;
}

-(bool)shouldRetryDownload:(void *)arg2 forError:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = arg2;
    r20 = self;
    r0 = *(self + 0x28);
    r0 = [r0 respondsToSelector:@selector(listDownload:shouldRetryURL:forError:), r3, r4];
    if (r0 != 0x0) {
            r0 = [*(r20 + 0x28) listDownload:r20 shouldRetryURL:[r22 URLString] forError:r19];
    }
    return r0;
}

-(bool)shouldUseTempFile:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    if ([*(self + 0x28) respondsToSelector:@selector(listDownload:shouldUseTempFileForURL:), r3] != 0x0) {
            r0 = [*(r19 + 0x28) listDownload:r19 shouldUseTempFileForURL:[r21 URLString]];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)downloaderResponsibleFor:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = arg2;
    var_110 = q0;
    r20 = *(self + 0x10);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100273424;

loc_100273390:
    r22 = r0;
    r26 = *var_110;
    r8 = 0x101137000;
    goto loc_1002733a4;

loc_1002733a4:
    r27 = 0x0;
    r28 = r8;
    r24 = *(r8 + 0x258);
    goto loc_1002733b4;

loc_1002733b4:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_118 + r27 * 0x8);
    if (objc_msgSend([r25 URLString], r24) != 0x0) goto loc_100273428;

loc_1002733f0:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1002733b4;

loc_1002733fc:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    r8 = r28;
    if (r0 != 0x0) goto loc_1002733a4;

loc_100273424:
    r25 = 0x0;
    goto loc_100273428;

loc_100273428:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
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
    [self saveIndexState];
    r19 = [[NSMutableDictionary alloc] init];
    [r19 setObject:sub_100280038(*(r20 + 0x48), [*(r20 + 0x20) getPathForMetadata]) forKey:@"currentIndexFile"];
    if (*(int8_t *)(r20 + 0x8) != 0x0) {
            [r19 setObject:[r20 saveDownloadersState] forKey:@"downloadersState"];
    }
    if ([*(r20 + 0x30) count] != 0x0) {
            [r19 setObject:[[*(r20 + 0x30) copy] autorelease] forKey:@"files"];
    }
    if ([*(r20 + 0x38) count] != 0x0) {
            [r19 setObject:[[*(r20 + 0x38) copy] autorelease] forKey:@"errors"];
    }
    r20 = [NSDictionary dictionaryWithDictionary:r19];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)saveDownloadersState {
    r31 = r31 - 0x130;
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
    r20 = [NSMutableArray array];
    var_110 = q0;
    r21 = *(r19 + 0x10);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r26 = @selector(addObject:);
                            [r19 saveDownloadersState:[*(var_118 + r28 * 0x8) ID]];
                            objc_msgSend(r20, r26);
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)saveDownloadersState:(int)arg2 {
    r31 = r31 - 0x150;
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
    r20 = arg2;
    r19 = self;
    var_110 = q0;
    r22 = *(self + 0x10);
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100273640;

loc_1002734d4:
    r24 = r0;
    r26 = *var_110;
    goto loc_1002734e4;

loc_1002734e4:
    r28 = 0x0;
    goto loc_1002734ec;

loc_1002734ec:
    if (*var_110 != r26) {
            objc_enumerationMutation(r22);
    }
    r21 = *(var_118 + r28 * 0x8);
    if ([r21 ID] == r20) goto loc_100273550;

loc_100273520:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_1002734ec;

loc_10027352c:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_1002734e4;

loc_100273640:
    r20 = 0x0;
    goto loc_100273644;

loc_100273644:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100273550:
    if (r21 != 0x0) {
            r20 = [NSString stringWithFormat:@"%@-%d.plist"];
            r22 = [[*(r19 + 0x20) getPathForMetadata] stringByAppendingPathComponent:r20];
            if (([r21 isDownloading] & 0x1) == 0x0 && ([r19 remainingFilesToDownload] == 0x0 || [[r19 remainingFilesToDownload] count] == 0x0)) {
                    [*(r19 + 0x20) removeResourceAtPath:r22];
            }
            else {
                    r0 = [NSPropertyListSerialization dataFromPropertyList:[r21 toDictionary] format:0xc8 errorDescription:&var_128];
                    if (r0 != 0x0) {
                            [*(r19 + 0x20) saveData:r0 atPath:r22];
                    }
                    else {
                            [var_128 release];
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    goto loc_100273644;
}

-(void *)delegate {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)fileDownloaders {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)fromDictionary:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r21 = arg2;
    r19 = self;
    [self cleanup];
    r23 = [r21 objectForKey:@"currentIndexFile"];
    r0 = *(r19 + 0x20);
    r0 = [r0 getPathForMetadata];
    r0 = sub_1002800bc(r23, r0);
    if (r0 != 0x0) {
            r23 = r0;
            [NSString class];
            if ([r23 isKindOfClass:r2] != 0x0) {
                    [*(r19 + 0x48) release];
                    r0 = [r23 retain];
                    *(r19 + 0x48) = r0;
                    if (([*(r19 + 0x20) pathExists:r0] & 0x1) != 0x0) {
                            r0 = *(r19 + 0x20);
                            r0 = [r0 loadDataAtPath:*(r19 + 0x48)];
                            if (r0 != 0x0) {
                                    *(int32_t *)(r19 + 0x40) = [[[NSString alloc] initWithData:r0 encoding:0x4] intValue];
                            }
                            else {
                                    *(int32_t *)(r19 + 0x40) = 0xffffffffffffffff;
                            }
                    }
                    else {
                            *(int32_t *)(r19 + 0x40) = 0xffffffffffffffff;
                    }
            }
    }
    r0 = [r21 objectForKey:@"files"];
    if (r0 != 0x0) {
            [*(r19 + 0x30) release];
            *(r19 + 0x30) = [[NSMutableArray alloc] initWithArray:r0];
    }
    r0 = [r21 objectForKey:@"errors"];
    if (r0 != 0x0) {
            [*(r19 + 0x38) release];
            *(r19 + 0x38) = [[NSMutableDictionary alloc] initWithDictionary:r0];
    }
    r0 = [r21 objectForKey:@"downloadersState"];
    r21 = r0;
    if (r0 == 0x0) goto loc_100273df8;

loc_100273ba4:
    [*(r19 + 0x10) release];
    *(r19 + 0x10) = [[NSMutableArray array] retain];
    var_110 = q0;
    r0 = [r21 countByEnumeratingWithState:&var_120 objects:&stack[-240] count:0x10];
    var_16C = 0x1;
    if (r0 == 0x0) goto loc_100273d9c;

loc_100273c0c:
    r24 = r0;
    r8 = 0x0;
    r20 = *var_110;
    var_138 = r21;
    goto loc_100273c20;

loc_100273c20:
    r23 = 0x0;
    r28 = r8;
    goto loc_100273c78;

loc_100273c78:
    if (*var_110 != r20) {
            objc_enumerationMutation(var_138);
    }
    r21 = *(var_118 + r23 * 0x8);
    r22 = [r19 addNewDownloader:0x1 + r28 + r23];
    r21 = [[*(r19 + 0x20) getPathForMetadata] stringByAppendingPathComponent:r21];
    if ([*(r19 + 0x20) pathExists:r21] == 0x0) goto loc_100273d60;

loc_100273ce0:
    r0 = *(r19 + 0x20);
    r0 = [r0 loadDataAtPath:r2];
    if (r0 == 0x0) goto loc_100273d60;

loc_100273cf4:
    r0 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x0 format:0x0 errorDescription:&var_128];
    if (r0 == 0x0) goto loc_100273d60;

loc_100273d1c:
    r21 = r0;
    [NSDictionary class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100273d60;

loc_100273d44:
    r0 = [r22 fromDictionary:r2];
    *(int8_t *)(r19 + 0x8) = 0x1;
    if (r0 != 0x0) goto loc_100273dcc;

loc_100273d60:
    r23 = r23 + 0x1;
    if (r23 < r24) goto loc_100273c78;

loc_100273d6c:
    r0 = [var_138 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    r8 = r28 + r23;
    if (r0 != 0x0) goto loc_100273c20;

loc_100273d90:
    var_16C = 0x1 + r28 + r23;
    goto loc_100273d9c;

loc_100273d9c:
    if ([*(r19 + 0x10) count] == 0x0) {
            [r19 addNewDownloader:var_16C];
    }
    r21 = 0x0;
    goto loc_100273df8;

loc_100273df8:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100273dcc:
    r21 = r0;
    [r19 reportError:r21 forUrlString:[r22 URLString]];
    goto loc_100273df8;
}

@end