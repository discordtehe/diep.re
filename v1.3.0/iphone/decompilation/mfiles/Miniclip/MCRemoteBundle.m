@implementation MCRemoteBundle

-(void *)initAtUrl:(void *)arg2 withPersistencyDelegate:(void *)arg3 withUpdateInterval:(double)arg4 {
    r0 = [self initAtUrl:arg2 withPersistencyDelegate:arg3 withUpdateInterval:0x4 withParallelDownloadersCount:r5];
    return r0;
}

-(void *)initAtUrl:(void *)arg2 withPersistencyDelegate:(void *)arg3 version:(void *)arg4 withUpdateInterval:(double)arg5 {
    r0 = [self initAtUrl:arg2 withPersistencyDelegate:arg3 version:arg4 withUpdateInterval:0x4 withParallelDownloadersCount:r6];
    return r0;
}

-(void *)initAtUrl:(void *)arg2 withPersistencyDelegate:(void *)arg3 version:(void *)arg4 withUpdateInterval:(double)arg5 withParallelDownloadersCount:(int)arg6 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [self initAtUrl:arg2 withPersistencyDelegate:arg3 withUpdateInterval:arg5 withParallelDownloadersCount:r5];
    if (r20 != 0x0 && r19 != 0x0) {
            if ([[r19->_bundle bundleVersion] isEqualToString:r2] != 0x0) {
                    [r19 changeStateTo:0x6];
            }
            else {
                    r0 = [NSPropertyListSerialization dataFromPropertyList:[NSDictionary dictionaryWithObject:r20 forKey:@"version"] format:0xc8 errorDescription:&var_28];
                    if (r0 != 0x0) {
                            [*(r19 + 0x8) saveData:r0 atPath:[r19 bundleVersionFile]];
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(void *)initAtUrl:(void *)arg2 withPersistencyDelegate:(void *)arg3 withUpdateInterval:(double)arg4 withParallelDownloadersCount:(int)arg5 {
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
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
    r22 = arg4;
    r21 = arg3;
    r23 = arg2;
    r0 = [[&var_70 super] initWithPersistencyDelegate:arg3];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_baseURL = [r23 retain];
            r0 = [MCURLFileListDownloader fileListDownloaderWithPersistencyDelegate:r21 withParallelDownloadersCount:r22];
            r0 = [r0 retain];
            r19->_fileListDownloader = r0;
            [r0 setDelegate:r19];
            *(int32_t *)(int64_t *)&r19->_updateState = 0x1;
            r19->_updateInterval = d8;
            r19->_bundle = [[MCBundle bundleWithPersistencyDelegate:r21] retain];
            var_78 = r19;
            r19->_totalDownloadSize = 0x0;
            r27 = 0x5;
            r21 = [NSMutableString stringWithCapacity:0x5];
            r8 = &@selector(alloc);
            r24 = *(r8 + 0x4f0);
            do {
                    r25 = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                    r23 = @selector(characterAtIndex:);
                    r22 = @selector(length);
                    r20 = 0x19;
                    r0 = rand();
                    asm { smull      x8, w0, w28 };
                    r8 = r0 - ((SAR(r8, 0x23)) + (r8 >> 0x3f)) * r20;
                    asm { sxtw       x19, w8 };
                    objc_msgSend(r25, r22);
                    asm { udiv       x8, x19, x0 };
                    objc_msgSend(r25, r23);
                    objc_msgSend(r21, r24);
                    r27 = r27 - 0x1;
            } while (r27 != 0x0);
            r0 = [NSString stringWithFormat:@"__TEMP__%@/"];
            r0 = [r0 retain];
            r19 = var_78;
            r19->_tempPath = r0;
            r19->_patcher = [[MCPatcher patcherWithDelegate:r19 withBundlePath:[*(r19 + 0x8) getPathForBundle] andTempPath:[*(r19 + 0x8) getPathForCache]] retain];
    }
    r0 = r19;
    return r0;
}

-(void *)initAtUrl:(void *)arg2 withPersistencyDelegate:(void *)arg3 version:(void *)arg4 {
    r0 = [self initAtUrl:arg2 withPersistencyDelegate:arg3 version:arg4 withUpdateInterval:r5];
    return r0;
}

+(void *)remoteBundleAtUrl:(void *)arg2 withPersistencyDelegate:(void *)arg3 version:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initAtUrl:arg2 withPersistencyDelegate:arg3 version:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setParallelDownloadersCount:(int)arg2 {
    [self->_fileListDownloader setParallelDownloadersCount:arg2];
    return;
}

-(void)setDownloadUpdateInterval:(double)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_updateInterval));
    *(r0 + r21) = d0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_downloadUpdateTimer));
    if (*(r0 + r20) != 0x0) {
            r19 = r0;
            if (*(int32_t *)(int64_t *)&r0->_updateState != 0x1 && ([r19 isIdle] & 0x1) == 0x0) {
                    [*(r19 + r20) invalidate];
                    *(r19 + r20) = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(timerTick:) selector:0x0 userInfo:0x1 repeats:r6];
            }
    }
    return;
}

-(int)parallelDownloadersCount {
    r0 = self->_fileListDownloader;
    r0 = [r0 parallelDownloadersCount];
    return r0;
}

-(void)dealloc {
    [self detach];
    [[&var_20 super] dealloc];
    return;
}

-(bool)changeStateTo:(int)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_updateState));
    if (*(int32_t *)(r0 + r9) == r2) {
            r0 = 0x0;
    }
    else {
            r8 = r0;
            *(int32_t *)(r0 + r9) = r2;
            r0 = r0->_delegate;
            if (r0 != 0x0) {
                    [r0 remoteBundleStateChanged:r8];
            }
            r0 = 0x1;
    }
    return r0;
}

-(void)addPatchesInfo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = sub_1002803cc(r20, *(r19->_bundle + 0x10));
    *(r19 + 0x20) = [[r0 objectForKey:@"patch_files"] retain];
    *(r19 + 0x28) = [[r0 objectForKey:@"expected_md5s"] retain];
    return;
}

-(void *)tempPath {
    r0 = self->_tempPath;
    return r0;
}

-(void)detach {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_downloadUpdateTimer));
    [*(self + r20) invalidate];
    *(r19 + r20) = 0x0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fileListDownloader));
    [*(r19 + r22) detach];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_baseURL));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r23) = 0x0;
    }
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bundle));
    [*(r19 + r22) detach];
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_underlyingErrorForInvalidState));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_tempPath));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_priorityURLs));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_remainingFilesToDownload));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_patcher));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r19->_delegate = 0x0;
    [r19 changeStateTo:0xffffffffffffffff];
    [[&var_40 super] detach];
    return;
}

-(void *)activeBundlePath {
    r0 = *(self + 0x8);
    r0 = [r0 getPathForCache];
    return r0;
}

-(void *)tempPathForFile:(void *)arg2 {
    r0 = [[*(self + 0x8) getPathForCache] stringByAppendingString:[self tempPath]];
    r0 = [r0 stringByAppendingString:arg2];
    return r0;
}

-(bool)isIdle {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_updateState));
    r8 = *(int32_t *)(self + r8);
    r8 = r8 + 0x1;
    if (r8 <= 0x7) {
            r0 = 0xc1 >> r8 & 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)bundleVersionFile {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int32_t *)(int64_t *)&self->_updateState == 0x6) {
            r0 = [[&var_20 super] bundleVersionFile];
    }
    else {
            r0 = [[&var_30 super] bundleVersionFile];
            r0 = [r19 tempPathForFile:sub_100280038(r0, [[*(r19 + 0x8) getPathForMetadata] stringByDeletingLastPathComponent])];
    }
    return r0;
}

-(bool)isReadyToActivate {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->_updateState == 0x5) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)cancel {
    [self->_fileListDownloader cancelDownload];
    [*(self + 0x8) removeResourceAtPath:[self tempPathForFile:@""]];
    [self detach];
    return;
}

-(bool)isActive {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->_updateState == 0x6) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(unsigned long long)calcsizeOfFileList:(void *)arg2 {
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
    r20 = self;
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r22 = 0x0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            r22 = [*(r20 + 0x8) fileSizeAtPath:r2] + r22;
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            r22 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isDownloadingChangedFiles {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_updateState));
    r8 = *(int32_t *)(self + r8);
    if (r8 == 0x4) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if (r8 == 0x7) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    r0 = r9 | r8;
    return r0;
}

-(void *)activate {
    r0 = self;
    r31 = r31 - 0x160;
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
    if (*(int32_t *)(int64_t *)&r0->_updateState != 0x5) goto loc_100282164;

loc_100282090:
    r19 = r0;
    r0 = [r0 tempPathForFile:@""];
    var_138 = r0;
    r21 = sub_100280c44(r0);
    if ([r19 calcsizeOfFileList:r21] < [*(r19 + 0x8) getFreeDiskspace]) goto loc_100282200;

loc_1002820e4:
    var_60 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"Cannot activate due to insufficient disk space."] forKey:**_NSLocalizedDescriptionKey];
    if (**___stack_chk_guard == var_60) {
            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100282200:
    var_148 = [r19 activeBundlePath];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    r0 = objc_msgSend(r21, r1);
    if (r0 == 0x0) goto loc_100282350;

loc_100282244:
    r24 = r0;
    r25 = *var_110;
    var_140 = r21;
    goto loc_100282268;

loc_100282268:
    r21 = 0x0;
    goto loc_100282280;

loc_100282280:
    if (*var_110 != r25) {
            objc_enumerationMutation(var_140);
    }
    r27 = @selector(isEqualToString:);
    r20 = *(var_118 + r21 * 0x8);
    if (objc_msgSend([r20 lastPathComponent], r27) != 0x0) {
            r0 = [[&var_130 super] bundleVersionFile];
    }
    else {
            r0 = [r20 stringByReplacingOccurrencesOfString:r2 withString:r3];
    }
    if ([*(r19 + 0x8) copyResourceFrom:r2 to:r3 deleteOriginal:r4 allowOverrite:r5] == 0x0) goto loc_100282380;

loc_100282310:
    r21 = r21 + 0x1;
    if (r21 < r24) goto loc_100282280;

loc_10028231c:
    r0 = objc_msgSend(var_140, var_150);
    r24 = r0;
    if (r0 != 0x0) goto loc_100282268;

loc_100282350:
    [*(r19 + 0x8) removeResourceAtPath:var_138];
    [r19 changeStateTo:0x6];
    r0 = 0x0;
    goto loc_1002823fc;

loc_1002823fc:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100282380:
    [r19 changeStateTo:0xffffffffffffffff];
    r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0x5 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"Cannot activate a bundle. File copy failed."] forKey:**_NSLocalizedDescriptionKey]];
    goto loc_1002823fc;

loc_100282164:
    var_60 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"Cannot activate a bundle that is not ready to activate"] forKey:**_NSLocalizedDescriptionKey];
    if (**___stack_chk_guard == var_60) {
            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)remainingFileNamesToDownload {
    r0 = self->_fileListDownloader;
    if (r0 != 0x0) {
            r0 = [r0 remainingFileNamesToDownload];
    }
    return r0;
}

-(void)setInvalidWithError:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [arg2 retain];
    if (*(int32_t *)(int64_t *)&r20->_updateState != -0x1) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_underlyingErrorForInvalidState));
            r0 = *(r20 + r23);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r20 + r23) = 0x0;
            }
            *(r20 + r23) = [r19 retain];
            [*(r20 + 0x8) removeResourceAtPath:[r20 tempPathForFile:@""]];
            [r20 changeStateTo:0xffffffffffffffff];
    }
    [r19 release];
    return;
}

-(void *)getResourcePath:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && [*(r19 + 0x38) containsObject:r2] != 0x0) {
                    r23 = [r19 tempPathForFile:r20];
                    if (([*(r19 + 0x8) pathExists:r2] & 0x1) == 0x0) {
                            if ([r19 auxiliaryCache] != 0x0 && *(int32_t *)(int64_t *)&r19->_updateState == 0x7) {
                                    r21 = @selector(containsObject:);
                                    r23 = [[r19 auxiliaryCache] stringByAppendingPathComponent:r20];
                                    if (objc_msgSend(*(r19 + 0x50), r21) != 0x0) {
                                            if (([*(r19 + 0x8) pathExists:r2] & 0x1) == 0x0) {
                                                    r23 = 0x0;
                                            }
                                    }
                                    else {
                                            r23 = 0x0;
                                    }
                            }
                            else {
                                    r23 = 0x0;
                            }
                    }
            }
            else {
                    r23 = 0x0;
            }
    }
    else {
            r23 = 0x0;
    }
    r0 = r23;
    return r0;
}

-(void)updateComplete {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_downloadUpdateTimer));
    [*(self + r20) invalidate];
    *(self + r20) = 0x0;
    [self changeStateTo:0x5];
    return;
}

-(void)addFileToDownloader:(void *)arg2 {
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
    r21 = arg2;
    r20 = self;
    r19 = [[[self tempPathForFile:r2] stringByDeletingLastPathComponent] stringByAppendingString:@"/"];
    if (([*(r20 + 0x8) pathExists:r19] & 0x1) == 0x0) {
            [*(r20 + 0x8) createPath:r19];
    }
    if ([r20 isUsingIncrementalBundles:*(r20 + 0x18)] == 0x0) goto loc_1002827a0;

loc_100282768:
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_baseURL));
    if ([*(r20 + r26) hasSuffix:r2] != 0x0) {
            r23 = *(r20 + r26);
    }
    else {
            r23 = [NSString stringWithFormat:r2];
    }
    r22 = @selector(stringWithFormat:);
    r0 = [r23 componentsSeparatedByString:@"/"];
    [r0 objectAtIndex:[r0 count] - 0x2];
    r23 = [r23 stringByReplacingCharactersInRange:[r23 rangeOfString:objc_msgSend(@class(NSString), r22) options:0x4] withString:@selector(rangeOfString:options:)];
    r0 = *(r20 + 0x18);
    r25 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r25);
    r0 = objc_msgSend(r0, r25);
    if (r0 == 0x0) goto loc_1002828cc;

loc_1002828a4:
    r24 = r0;
    r8 = [*(r20 + 0x20) objectForKey:r2];
    [r23 stringByAppendingPathComponent:[NSString stringWithFormat:r2]];
    r0 = r20->_fileListDownloader;
    goto loc_100282940;

loc_100282940:
    [r0 downloadFileAt:r2 intoLocalPath:r3];
    return;

loc_1002828cc:
    r22 = r20->_fileListDownloader;
    r0 = *(r20 + r26);
    goto loc_1002828dc;

loc_1002828dc:
    [r0 stringByAppendingPathComponent:r21];
    r0 = r22;
    goto loc_100282940;

loc_1002827a0:
    r22 = r20->_fileListDownloader;
    r0 = r20->_baseURL;
    goto loc_1002828dc;
}

-(void *)addChecksumFile:(void *)arg2 {
    r0 = [self addChecksumFile:arg2 fromDirectory:@""];
    return r0;
}

-(void *)addChecksumFile:(void *)arg2 fromDirectory:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int32_t *)(int64_t *)&self->_updateState == 0x1) {
            r21 = r2;
            r0 = r19->_bundle;
            r0 = [r0 addChecksumFile:r2 fromDirectory:r3];
            if (r0 != 0x0) {
                    r2 = [NSString stringWithFormat:@"MCBundle: Did not find local checksumFile %@"];
                    r8 = *_NSLocalizedDescriptionKey;
                    r20 = [NSError errorWithDomain:@"BundleErrorDomain" code:0x3 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:r2]];
                    [r19 setInvalidWithError:r20];
                    r0 = r20;
            }
    }
    else {
            r20 = [NSString stringWithFormat:@"MCBundle: Can only add checksums during initialization (before update method)."];
            [r19 changeStateTo:0xffffffffffffffff];
            r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0xffffffffffffffff userInfo:[NSDictionary dictionaryWithObject:r20 forKey:**_NSLocalizedDescriptionKey]];
    }
    return r0;
}

-(void *)loadDownloadedChecksums {
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
    r19 = self;
    var_110 = q0;
    r20 = *(self->_bundle + 0x30);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100282c98;

loc_100282b7c:
    r22 = r0;
    r26 = *var_110;
    goto loc_100282b9c;

loc_100282b9c:
    r28 = 0x0;
    goto loc_100282ba8;

loc_100282ba8:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    [r19 tempPathForFile:r2];
    r0 = objc_msgSendSuper2(&var_130, r25);
    if (r0 != 0x0) goto loc_100282c2c;

loc_100282bf4:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100282ba8;

loc_100282c00:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100282b9c;

loc_100282c98:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100282c2c:
    r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0x2 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"MCBundle: Could not load downloaded checksum file"]]];
    goto loc_100282c98;
}

-(bool)fileHasSuffix:(void *)arg2 suffix:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r3;
            r20 = r2;
            r21 = r0;
            if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = [r21 getFileSuffix:r20];
                    r0 = [r0 isEqual:r2];
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)fileWithReplacedSuffix:(void *)arg2 withReplacement:(void *)arg3 {
    r3 = arg3;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (arg2 != 0x0) {
            r20 = r3;
            r21 = r0;
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = r19;
            }
            else {
                    r0 = [r19 rangeOfString:[r21 getFileSuffix:r19] options:0x4];
                    if (r0 == 0x7fffffffffffffff) {
                            r0 = [[[r19 stringByDeletingPathExtension] stringByAppendingString:r20] stringByAppendingPathExtension:[r19 pathExtension]];
                    }
                    else {
                            r0 = [r19 stringByReplacingCharactersInRange:r0 withString:@selector(rangeOfString:options:)];
                    }
            }
    }
    else {
            r0 = r19;
    }
    return r0;
}

-(void *)prioritiseDownloads:(void *)arg2 {
    r2 = arg2;
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
    if (*(int32_t *)(int64_t *)&self->_updateState >= 0x3) goto loc_100282ebc;

loc_100282d20:
    r20 = r2;
    if (r2 == 0x0 || [r20 count] == 0x0) goto loc_100282eec;

loc_100282d3c:
    var_110 = q0;
    r2 = &var_120;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100282e30;

loc_100282d6c:
    r24 = @selector(countByEnumeratingWithState:objects:count:);
    r22 = r0;
    r21 = *var_110;
    var_128 = r24;
    goto loc_100282d90;

loc_100282d90:
    r28 = 0x0;
    goto loc_100282da0;

loc_100282da0:
    if (*var_110 != r21) {
            objc_enumerationMutation(r20);
    }
    r24 = @selector(class);
    r27 = *(var_118 + r28 * 0x8);
    objc_msgSend(@class(NSString), r24);
    if (objc_msgSend(r27, r25) == 0x0 || ([r27 isEqualToString:r2] & 0x1) != 0x0) goto loc_100282f9c;

loc_100282df8:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100282da0;

loc_100282e04:
    r2 = &var_120;
    r0 = objc_msgSend(r20, var_128);
    r22 = r0;
    if (r0 != 0x0) goto loc_100282d90;

loc_100282e30:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_priorityURLs));
    if (*(r19 + r23) != 0x0) {
            r0 = [NSMutableArray arrayWithArray:r2];
            [r0 addObjectsFromArray:r20];
            r20 = [NSArray arrayWithArray:r0];
            r0 = *(r19 + r23);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + r23) = 0x0;
            }
    }
    r8 = [r20 retain];
    r0 = 0x0;
    *(r19 + r23) = r8;
    goto loc_100283018;

loc_100283018:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100282f9c:
    [r19 changeStateTo:0xffffffffffffffff];
    r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0xffffffffffffffff userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"prioritiseDownloads:intoPaths:Invalid bundle."] forKey:**_NSLocalizedDescriptionKey]];
    goto loc_100283018;

loc_100282eec:
    [r19 changeStateTo:0xffffffffffffffff];
    goto loc_100282f18;

loc_100282f18:
    r1 = @selector(stringWithFormat:);
    var_60 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObject:objc_msgSend(@class(NSString), r1) forKey:**_NSLocalizedDescriptionKey];
    if (**___stack_chk_guard == var_60) {
            r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0xffffffffffffffff userInfo:r0];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100282ebc:
    [r19 changeStateTo:0xffffffffffffffff];
    goto loc_100282f18;
}

-(void *)getFileSuffix:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_10028312c;

loc_100283108:
    r19 = r2;
    r20 = r0;
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_100283134;

loc_10028312c:
    r22 = 0x0;
    goto loc_100283214;

loc_100283214:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100283134:
    var_110 = q0;
    r20 = *(r20 + 0x40);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10028320c;

loc_100283168:
    r23 = r0;
    r27 = *var_110;
    goto loc_100283184;

loc_100283184:
    r28 = 0x0;
    goto loc_100283190;

loc_100283190:
    if (*var_110 != r27) {
            objc_enumerationMutation(r20);
    }
    r25 = @selector(hasSuffix:);
    r26 = *(var_118 + r28 * 0x8);
    if ((objc_msgSend([r19 stringByDeletingPathExtension], r25) & 0x1) != 0x0) goto loc_100283204;

loc_1002831cc:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100283190;

loc_1002831d8:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_100283184;

loc_100283200:
    r22 = @"";
    goto loc_100283214;

loc_100283204:
    r22 = r26;
    goto loc_100283214;

loc_10028320c:
    r22 = @"";
    goto loc_100283214;
}

-(void *)checksumsFromFile:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = *(r20 + 0x8);
                    r0 = [r0 loadDataAtPath:r19];
                    if (r0 != 0x0) {
                            r19 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x0 format:0x0 errorDescription:&var_18];
                            r0 = 0x0;
                            if (var_18 == 0x0) {
                                    [NSDictionary class];
                                    r0 = [r19 isKindOfClass:r2];
                                    if (r0 != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r0 = 0x0;
                                            }
                                            else {
                                                    r0 = r19;
                                            }
                                    }
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)loadChecksumsFromFiles:(void *)arg2 {
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
    r20 = self;
    r21 = [NSDictionary dictionary];
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r19);
                            }
                            r26 = [r20 checksumsFromFile:r2];
                            if ([r20 isUsingIncrementalBundles:r2] != 0x0) {
                                    r0 = sub_1002808a8(r21);
                            }
                            else {
                                    r0 = sub_100280a84(r21);
                            }
                            r21 = r0;
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)loadChecksumsFromCache:(void *)arg2 {
    r31 = r31 - 0x160;
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
    var_128 = arg2;
    r19 = self;
    var_140 = [NSMutableArray array];
    var_110 = q0;
    r0 = *(r19 + 0x30);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_148 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r22 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r22) {
                                    objc_enumerationMutation(var_130);
                            }
                            r25 = *(var_118 + r20 * 0x8);
                            r25 = [var_128 stringByAppendingPathComponent:[r25 substringFromIndex:[[r19 tempPathForFile:@""] length]]];
                            if ([*(r19 + 0x8) pathExists:r25] != 0x0) {
                                    [var_140 addObject:r2];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r0 = objc_msgSend(var_130, var_148);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r0 = [r19 loadChecksumsFromFiles:var_140];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)filterLessSpecificDuplicateFiles:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2b0;
    var_2B0 = arg2;
    r20 = self;
    r0 = *(self + 0x40);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            var_2F8 = [NSDate date];
            var_2A8 = [NSMutableArray array];
            var_2B8 = [NSMutableArray array];
            var_210 = q0;
            r0 = *(r20 + 0x40);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_2F0 = r0;
            var_2D0 = r1;
            r0 = objc_msgSend(r0, r1);
            var_2E0 = r0;
            if (r0 != 0x0) {
                    var_2E8 = *var_210;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_210 != var_2E8) {
                                            objc_enumerationMutation(var_2F0);
                                    }
                                    var_2D8 = r19;
                                    r28 = *(var_218 + r19 * 0x8);
                                    var_250 = q0;
                                    r0 = objc_msgSend(var_2B0, var_2D0);
                                    if (r0 != 0x0) {
                                            r21 = r0;
                                            r22 = *var_250;
                                            do {
                                                    r23 = 0x0;
                                                    r26 = @selector(fileWithReplacedSuffix:withReplacement:);
                                                    r24 = @selector(containsObject:);
                                                    var_2C8 = r24;
                                                    do {
                                                            if (*var_250 != r22) {
                                                                    objc_enumerationMutation(var_2B0);
                                                            }
                                                            r27 = *(var_258 + r23 * 0x8);
                                                            if ([r20 fileHasSuffix:r27 suffix:r28] != 0x0) {
                                                                    r19 = objc_msgSend(r20, r26);
                                                                    if ((objc_msgSend(var_2A8, r24) & 0x1) == 0x0) {
                                                                            if ((objc_msgSend(var_2B8, r24) & 0x1) == 0x0) {
                                                                                    [var_2A8 addObject:r2];
                                                                                    r20 = r20;
                                                                                    r26 = r26;
                                                                                    r28 = r28;
                                                                                    r24 = var_2C8;
                                                                                    [var_2B8 addObject:r2];
                                                                            }
                                                                    }
                                                            }
                                                            r23 = r23 + 0x1;
                                                    } while (r23 < r21);
                                                    r0 = objc_msgSend(var_2B0, var_2D0);
                                                    r21 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r19 = var_2D8 + 0x1;
                            } while (r19 < var_2E0);
                            r0 = objc_msgSend(var_2F0, var_2D0);
                            var_2E0 = r0;
                    } while (r0 != 0x0);
            }
            var_290 = q0;
            r0 = objc_msgSend(var_2B0, var_2D0);
            if (r0 != 0x0) {
                    r21 = r0;
                    r19 = *var_290;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_290 != r19) {
                                            objc_enumerationMutation(var_2B0);
                                    }
                                    r27 = *(var_298 + r22 * 0x8);
                                    if (([var_2A8 containsObject:r27] & 0x1) == 0x0 && ([var_2B8 containsObject:[r20 fileWithReplacedSuffix:r27 withReplacement:@""]] & 0x1) == 0x0) {
                                            [var_2A8 addObject:r2];
                                    }
                                    r22 = r22 + 0x1;
                            } while (r22 < r21);
                            r0 = objc_msgSend(var_2B0, var_2D0);
                            r21 = r0;
                    } while (r0 != 0x0);
            }
            [var_2F8 timeIntervalSinceNow];
            var_2B0 = var_2A8;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_2B0;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)useAuxiliaryCacheFiles:(void *)arg2 {
    r31 = r31 - 0x170;
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
    var_128 = arg2;
    r20 = self;
    if ([self auxiliaryCache] != 0x0) {
            r0 = *(r20 + 0x50);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r20 + 0x50) = 0x0;
            }
            *(r20 + 0x50) = [[NSMutableArray array] retain];
            r22 = [r20 loadChecksumsFromCache:[r20 auxiliaryCache]];
            var_158 = [NSMutableArray arrayWithArray:var_128];
            var_110 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_160 = r1;
            r0 = objc_msgSend(var_128, r1);
            if (r0 != 0x0) {
                    r25 = r0;
                    r19 = *var_110;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_110 != r19) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r23 = *(var_118 + r28 * 0x8);
                                    if ([[r22 objectForKey:r23] isEqualToString:[*(r20 + 0x10) objectForKey:r23]] != 0x0) {
                                            r21 = [[r20 auxiliaryCache] stringByAppendingPathComponent:r23];
                                            if ([*(r20 + 0x8) pathExists:r21] != 0x0) {
                                                    [*(r20 + 0x50) addObject:r21];
                                                    [var_158 removeObject:r23];
                                                    [r20 addNewFile:r2];
                                            }
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r25);
                            r0 = objc_msgSend(var_128, var_160);
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            var_128 = var_158;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_128;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)processFilesToCopy {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x50);
    if (r0 != 0x0) {
            if ([r0 count] != 0x0) {
                    r20 = [*(r19 + 0x50) objectAtIndex:0x0];
                    r22 = [r20 substringFromIndex:[[*(r19 + 0x8) getPathForAuxiliaryCache] length]];
                    r21 = [r19 tempPathForFile:r22];
                    if ([*(r19 + 0x8) pathExists:r21] != 0x0) {
                            [*(r19 + 0x50) removeObject:r20];
                            [r19 processFilesToCopy];
                    }
                    else {
                            r3 = r21;
                            if (([*(r19 + 0x8) copyResourceFrom:r20 to:r3 deleteOriginal:0x1 allowOverrite:0x0] & 0x1) != 0x0) {
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
                                    if ([*(r19 + r23) respondsToSelector:@selector(remoteBundle:fileCopiedFromAuxiliaryCache:intoPath:), r3, 0x1] != 0x0) {
                                            [*(r19 + r23) remoteBundle:r19 fileCopiedFromAuxiliaryCache:r20 intoPath:r21];
                                    }
                            }
                            else {
                                    r4 = [NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Could not copy auxiliary cache file %@."]];
                                    r23 = [NSError errorWithDomain:@"BundleErrorDomain" code:r3 userInfo:r4];
                                    [r19 addFileToDownloader:r22];
                                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
                                    if ([*(r19 + r24) respondsToSelector:@selector(remoteBundle:failedToCopyFromAuxiliaryCache:intoPath:withError:), 0x7, r4, 0x0] != 0x0) {
                                            [*(r19 + r24) remoteBundle:r19 failedToCopyFromAuxiliaryCache:r20 intoPath:r21 withError:r23];
                                    }
                            }
                            [*(r19 + 0x50) removeObject:r20];
                    }
            }
            else {
                    r0 = *(r19 + 0x50);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x50) = 0x0;
                    }
            }
    }
    return;
}

-(void *)update {
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
    r0 = self->_underlyingErrorForInvalidState;
    if (r0 == 0x0) {
            var_110 = q0;
            r20 = *(r19->_bundle + 0x30);
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [r19 addFileToDownloader:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            [r19->_fileListDownloader start];
            [r19 changeStateTo:0x2];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_downloadUpdateTimer));
            [*(r19 + r20) invalidate];
            r8 = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(timerTick:) selector:0x0 userInfo:0x1 repeats:r6];
            r0 = 0x0;
            *(r19 + r20) = r8;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)listDownloadComplete:(void *)arg2 {
    return;
}

-(void)listDownloadCompleteWithErrors:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_downloadUpdateTimer));
    [*(self + r20) invalidate];
    *(self + r20) = 0x0;
    [self setInvalidWithError:[NSError errorWithDomain:@"BundleErrorDomain" code:0x4 userInfo:[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"Failed to download all checksum files"] forKey:**_NSLocalizedDescriptionKey]]];
    return;
}

-(void *)filedownloaderTargetPath:(void *)arg2 {
    r0 = [arg2 savePath];
    return r0;
}

-(bool)listDownload:(void *)arg2 shouldRetryURL:(void *)arg3 forError:(void *)arg4 {
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
    r21 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(self + r23) respondsToSelector:@selector(remoteBundle:shouldRetryDownload:forError:), r3, r4] != 0x0) {
            r0 = *(r21 + r23);
            r0 = [r0 remoteBundle:r21 shouldRetryDownload:r20 forError:r19];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)listDownload:(void *)arg2 URL:(void *)arg3 error:(void *)arg4 {
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
    r23 = arg2;
    r21 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(self + r24) respondsToSelector:@selector(remoteBundle:URLDownload:intoPath:failedWithError:), r3, r4, r5] != 0x0) {
            r0 = [r23 downloaderResponsibleFor:r20];
            if (r0 != 0x0) {
                    [*(r21 + r24) remoteBundle:r21 URLDownload:r20 intoPath:[r21 filedownloaderTargetPath:r0] failedWithError:r19];
            }
    }
    return;
}

-(void)listDownload:(void *)arg2 URLComplete:(void *)arg3 {
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
    r21 = arg3;
    r19 = self;
    r0 = [arg2 downloaderResponsibleFor:arg3];
    if (r0 == 0x0) goto loc_100284c98;

loc_1002849d0:
    r20 = r0;
    r0 = [r0 totalBytesReceived];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalDownloadSize));
    *(r19 + r8) = *(r19 + r8) + sign_extend_64(r0);
    r22 = [*(r19 + 0x20) allValues];
    [r20 filename];
    if ([r22 containsObject:r2] == 0x0) goto loc_100284b3c;

loc_100284a34:
    r21 = [r20 savePath];
    var_110 = q0;
    r0 = *(r19 + 0x20);
    r0 = [r0 allKeys];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100284bd4;

loc_100284a8c:
    r27 = r0;
    stack[-328] = r21;
    r26 = *var_110;
    goto loc_100284aa0;

loc_100284aa0:
    r25 = 0x0;
    goto loc_100284aac;

loc_100284aac:
    if (*var_110 != r26) {
            objc_enumerationMutation(var_128);
    }
    r28 = @selector(objectForKey:);
    r21 = @selector(isEqualToString:);
    r24 = *(var_118 + r25 * 0x8);
    r22 = objc_msgSend(*(r19 + 0x20), r28);
    [r20 filename];
    if ((objc_msgSend(r22, r21) & 0x1) != 0x0) goto loc_100284bc8;

loc_100284b00:
    r25 = r25 + 0x1;
    if (r25 < r27) goto loc_100284aac;

loc_100284b0c:
    r0 = objc_msgSend(var_128, var_130);
    r27 = r0;
    if (r0 != 0x0) goto loc_100284aa0;

loc_100284b30:
    r24 = 0x0;
    r22 = @selector(savePath);
    r21 = stack[-328];
    goto loc_100284bd8;

loc_100284bd8:
    r25 = [[*(r19 + 0x8) getPathForCache] stringByAppendingPathComponent:r24];
    if (([*(r19 + 0x8) pathExists:r25] & 0x1) == 0x0) {
            r25 = [[*(r19 + 0x8) getPathForBundle] stringByAppendingPathComponent:r24];
    }
    [r19->_patcher applyPatch:r21 toOldFile:r25 forNewFile:[[objc_msgSend(r20, r22) stringByDeletingLastPathComponent] stringByAppendingPathComponent:r24] withExpectedResultMD5:[*(r19 + 0x28) objectForKey:r2]];
    goto loc_100284c98;

loc_100284c98:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100284bc8:
    r22 = @selector(savePath);
    r21 = stack[-328];
    goto loc_100284bd8;

loc_100284bd4:
    r22 = @selector(savePath);
    r24 = 0x0;
    goto loc_100284bd8;

loc_100284b3c:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(r19 + r23) respondsToSelector:@selector(remoteBundle:URLDownloadSuccessfull:intoPath:), r3, r4] != 0x0) {
            var_60 = **___stack_chk_guard;
            r23 = *(r19 + r23);
            r0 = [r19 filedownloaderTargetPath:r20];
            if (**___stack_chk_guard == var_60) {
                    [r23 remoteBundle:r19 URLDownloadSuccessfull:r21 intoPath:r0];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(bool)listDownload:(void *)arg2 shouldUseTempFileForURL:(void *)arg3 {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->_updateState == 0x3) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)patcher:(void *)arg2 successfullyPatchedFile:(void *)arg3 fromPatch:(void *)arg4 {
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
    r21 = arg3;
    r20 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(self + r23) respondsToSelector:@selector(remoteBundle:URLDownloadSuccessfull:intoPath:), r3, r4] != 0x0) {
            [*(r20 + r23) remoteBundle:r20 URLDownloadSuccessfull:r19 intoPath:r21];
    }
    [*(r20 + 0x8) removeResourceAtPath:r19];
    return;
}

-(void)patcher:(void *)arg2 failedToPatchFile:(void *)arg3 fromPatch:(void *)arg4 withError:(void *)arg5 {
    [self setInvalidWithError:[NSError errorWithDomain:@"BundleErrorDomain" code:0x8 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[arg5 localizedDescription]]]];
    [*(self + 0x8) removeResourceAtPath:arg3];
    return;
}

-(void)timerTick:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2a0;
    r19 = self;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_fileListDownloader));
    [*(self + r27) tick];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_updateState));
    r8 = *(int32_t *)(r19 + r28);
    if (r8 != 0x2) goto loc_100284238;

loc_100284220:
    if (([*(r19 + r27) downloading] & 0x1) == 0x0) goto loc_100284458;

loc_100284234:
    r8 = *(int32_t *)(r19 + r28);
    goto loc_100284238;

loc_100284238:
    if (r8 == 0x3) {
            if (([*(r19 + r27) downloading] & 0x1) == 0x0) {
                    var_290 = q0;
                    r20 = r19->_remainingFilesToDownload;
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r24 = *var_290;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_290 != r24) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [r19 addFileToDownloader:r2];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
                    [r19 changeStateTo:0x7];
            }
    }
    r8 = *(int32_t *)(r19 + r28);
    if (r8 == 0x7) {
            r21 = 0x6;
            do {
                    [r19 processFilesToCopy];
                    r21 = r21 - 0x1;
            } while (r21 != 0x0);
            r0 = *(r19 + 0x50);
            if (r0 == 0x0 || [r0 count] == 0x0) {
                    [*(r19 + r27) start];
                    [r19 changeStateTo:0x4];
            }
            r8 = *(int32_t *)(r19 + r28);
    }
    if (r8 == 0x4 && ([*(r19 + r27) downloading] & 0x1) == 0x0) {
            if ([*(r19 + r27) downloadErrors] != 0x0 && [[*(r19 + r27) downloadErrors] count] != 0x0) {
                    [r19 setInvalidWithError:[NSError errorWithDomain:@"BundleErrorDomain" code:0x4 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Failed to download bundle files"]]]];
            }
            else {
                    if ([[r19->_patcher patchesRemaining] count] == 0x0) {
                            [r19 updateComplete];
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100284458:
    if ([*(r19 + r27) downloadErrors] == 0x0 || [[*(r19 + r27) downloadErrors] count] == 0x0) goto loc_1002844fc;

loc_10028448c:
    r0 = [NSError errorWithDomain:@"BundleErrorDomain" code:0x4 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Failed to download checksum files"]]];
    goto loc_100284510;

loc_100284510:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            [r19 setInvalidWithError:r0];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_1002844fc:
    r0 = [r19 loadDownloadedChecksums];
    if (r0 == 0x0) goto loc_1002845cc;
    goto loc_100284510;

loc_1002845cc:
    var_2D0 = r28;
    stack[-728] = r27;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    r0 = *(r19 + r21);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(remoteBundleFinishedDownloadingChecksums:)] != 0x0) {
            [*(r19 + r21) remoteBundleFinishedDownloadingChecksums:r19];
    }
    var_2A8 = [*(r19 + 0x10) allKeys];
    r2 = [r19->_bundle difWithBundle:r19];
    var_2B8 = [r19 filterLessSpecificDuplicateFiles:r2];
    r21 = [NSMutableArray arrayWithArray:[r19 useAuxiliaryCacheFiles:r2]];
    var_210 = q0;
    r0 = r19->_priorityURLs;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2B0 = r0;
    var_2C0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r26 = r0;
            r25 = *var_210;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_210 != r25) {
                                    objc_enumerationMutation(var_2B0);
                            }
                            r24 = *(var_218 + r23 * 0x8);
                            if ([var_2A8 containsObject:r24] == 0x0 || [var_2B8 containsObject:r24] != 0x0) {
                                    [r19 addFileToDownloader:r24];
                                    [r19 addNewFile:r24];
                            }
                            if ([r21 containsObject:r24] != 0x0) {
                                    [r21 removeObject:r2];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r0 = objc_msgSend(var_2B0, var_2C0);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    var_250 = q0;
    r0 = objc_msgSend(r21, var_2C0);
    r28 = var_2D0;
    r27 = stack[-728];
    if (r0 != 0x0) {
            r20 = r0;
            r23 = *var_250;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_250 != r23) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 addNewFile:r2];
                            r24 = r24 + 0x1;
                    } while (r24 < r20);
                    r0 = objc_msgSend(r21, var_2C0);
                    r20 = r0;
            } while (r0 != 0x0);
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_remainingFilesToDownload));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    *(r19 + r20) = [[NSArray arrayWithArray:r2] retain];
    [r19 changeStateTo:0x3];
    [*(r19 + r27) start];
    goto loc_100284234;
}

-(bool)setState:(int)arg2 forDownloadState:(void *)arg3 {
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
    r20 = arg2;
    r19 = self;
    if ([self->_fileListDownloader fromDictionary:arg3] != 0x0) {
            r20 = 0x0;
    }
    else {
            [r19 changeStateTo:r20];
            if (*(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_updateState))) < 0x7) {
                    asm { ccmp       w8, #0x0, #0x4, ls };
            }
            r20 = 0x1;
            if (!CPU_FLAGS & E) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_downloadUpdateTimer));
                    [*(r19 + r21) invalidate];
                    r20 = 0x1;
                    *(r19 + r21) = [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(timerTick:) selector:0x0 userInfo:0x1 repeats:r6];
                    var_110 = q0;
                    r0 = *(r19 + 0x20);
                    r0 = [r0 allValues];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r0;
                    var_168 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r22 = r0;
                            r20 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r20) {
                                                    objc_enumerationMutation(var_130);
                                            }
                                            r26 = *(var_118 + r28 * 0x8);
                                            r25 = [r19 tempPathForFile:r26];
                                            if ([*(r19 + 0x8) pathExists:r25] != 0x0) {
                                                    r26 = [[*(r19 + 0x20) allKeysForObject:r2] firstObject];
                                                    r27 = [[*(r19 + 0x8) getPathForCache] stringByAppendingPathComponent:r26];
                                                    if (([*(r19 + 0x8) pathExists:r27] & 0x1) == 0x0) {
                                                            r27 = [[*(r19 + 0x8) getPathForBundle] stringByAppendingPathComponent:r26];
                                                    }
                                                    [r19 tempPathForFile:r26];
                                                    [*(r19 + 0x28) objectForKey:r26];
                                                    [r19->_patcher applyPatch:r2 toOldFile:r3 forNewFile:r4 withExpectedResultMD5:r5];
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r22);
                                    r0 = objc_msgSend(var_130, var_168);
                                    r22 = r0;
                            } while (r0 != 0x0);
                            r20 = 0x1;
                    }
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(int)state {
    r0 = *(int32_t *)(int64_t *)&self->_updateState;
    return r0;
}

-(void *)toDictionary {
    r0 = self;
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
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_updateState));
    if (*(int32_t *)(r0 + r19) < 0x6) {
            asm { ccmp       w8, #0x0, #0x4, ls };
    }
    if (!CPU_FLAGS & E) {
            r0 = 0x0;
    }
    else {
            r24 = r0;
            r25 = [NSMutableDictionary dictionary];
            [r25 setObject:[NSNumber numberWithDouble:r2] forKey:@"updateInterval"];
            [r25 setObject:[NSNumber numberWithInt:*(int32_t *)(r24 + r19)] forKey:@"state"];
            [r25 setObject:r24->_baseURL forKey:@"url"];
            [r25 setObject:*(r24->_bundle + 0x30) forKey:@"checksums"];
            [r25 setObject:r24->_tempPath forKey:@"path"];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_fileListDownloader));
            if ([*(r24 + r19) downloading] != 0x0) {
                    [r25 setObject:[*(r24 + r19) toDictionary] forKey:@"dlState"];
            }
            if (*(r24 + 0x38) == 0x0) {
                    r2 = [NSArray array];
            }
            [r25 setObject:r2 forKey:@"bundleNewFiles"];
            if (*(r24 + 0x50) != 0x0) {
                    stack[-328] = r25;
                    r22 = [NSMutableArray array];
                    var_110 = q0;
                    r23 = r24;
                    r0 = *(r24 + 0x50);
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r1;
                    var_128 = r0;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r25 = r0;
                            r24 = *var_110;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*var_110 != r24) {
                                                    objc_enumerationMutation(var_128);
                                            }
                                            r21 = @selector(addObject:);
                                            [*(var_118 + r20 * 0x8) substringFromIndex:[[*(r23 + 0x8) getPathForCache] length]];
                                            objc_msgSend(r22, r21);
                                            r20 = r20 + 0x1;
                                    } while (r20 < r25);
                                    r0 = objc_msgSend(var_128, var_130);
                                    r25 = r0;
                            } while (r0 != 0x0);
                    }
                    r26 = @selector(setObject:forKey:);
                    r25 = stack[-328];
                    objc_msgSend(r25, r26);
                    r24 = r23;
            }
            else {
                    r26 = @selector(setObject:forKey:);
                    [NSArray array];
                    objc_msgSend(r25, r26);
            }
            r21 = *(r24 + 0x48);
            if (r21 != 0x0) {
                    [r21 substringFromIndex:[[*(r24 + 0x8) getPathForCache] length]];
            }
            objc_msgSend(r25, r26);
            r0 = [NSDictionary dictionaryWithDictionary:r25];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)totalDownloadSize {
    r0 = self->_totalDownloadSize;
    return r0;
}

-(void *)underlyingErrorForInvalidState {
    r0 = self->_underlyingErrorForInvalidState;
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

+(void *)allocRemoteBundleFromDictionary:(void *)arg2 withPersistencyDelegate:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff90 - 0x290;
    if (r2 == 0x0) goto loc_100285a60;

loc_100285674:
    r24 = r3;
    r26 = r2;
    r0 = [r2 count];
    if (r0 == 0x0) goto loc_100285a64;

loc_100285694:
    r21 = @selector(objectForKey:);
    r23 = objc_msgSend(r26, r21);
    r19 = objc_msgSend(r26, r21);
    r22 = objc_msgSend(r26, r21);
    r20 = objc_msgSend(r26, r21);
    var_2C0 = objc_msgSend(r26, r21);
    r28 = objc_msgSend(r26, r21);
    var_2C8 = objc_msgSend(r26, r21);
    r25 = objc_msgSend(r26, r21);
    r26 = objc_msgSend(r26, r21);
    r0 = 0x0;
    if (r23 == 0x0) goto loc_100285a64;

loc_10028577c:
    r0 = 0x0;
    if (r22 == 0x0) goto loc_100285a64;

loc_100285780:
    r0 = 0x0;
    r8 = var_2C0;
    if (r8 == 0x0) goto loc_100285a64;

loc_100285788:
    r8 = [r8 count];
    r0 = 0x0;
    if (var_2C8 == 0x0) goto loc_100285a64;

loc_1002857a4:
    r0 = 0x0;
    if (r28 == 0x0) goto loc_100285a64;

loc_1002857a8:
    r0 = 0x0;
    if (r8 == 0x0) goto loc_100285a64;

loc_1002857ac:
    if (r19 != 0x0) {
            [r19 doubleValue];
            v8 = v0;
    }
    var_2E8 = r20;
    var_2E0 = r23;
    r0 = [MCRemoteBundle alloc];
    r0 = [r0 initAtUrl:r22 withPersistencyDelegate:r24 withUpdateInterval:r4];
    r20 = r0;
    [r0->_tempPath release];
    r20->_tempPath = [r28 retain];
    if (([r25 isEqualToString:r2] & 0x1) == 0x0) {
            [r20 setAuxiliaryCache:[[[r24 getPathForCache] stringByAppendingPathComponent:r25] retain]];
    }
    var_2D0 = r20;
    r28 = [NSMutableArray array];
    var_220 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2B8 = r1;
    r0 = objc_msgSend(r26, r1);
    if (r0 != 0x0) {
            r19 = r0;
            r20 = *var_220;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_220 != r20) {
                                    objc_enumerationMutation(r26);
                            }
                            r23 = @selector(addObject:);
                            [[r24 getPathForCache] stringByAppendingPathComponent:*(var_228 + r22 * 0x8)];
                            objc_msgSend(r28, r23);
                            r22 = r22 + 0x1;
                    } while (r22 < r19);
                    r0 = objc_msgSend(r26, var_2B8);
                    r19 = r0;
            } while (r0 != 0x0);
    }
    r0 = [r28 retain];
    r26 = var_2D0;
    *(r26 + 0x50) = r0;
    var_260 = q0;
    r24 = var_2C0;
    r0 = objc_msgSend(r24, var_2B8);
    r25 = var_2C8;
    if (r0 == 0x0) goto loc_100285a2c;

loc_1002859b8:
    r19 = r0;
    r20 = *var_260;
    goto loc_1002859c8;

loc_1002859c8:
    r22 = 0x0;
    goto loc_1002859d0;

loc_1002859d0:
    if (*var_260 != r20) {
            objc_enumerationMutation(r24);
    }
    if ([r26 addChecksumFile:r2] != 0x0) goto loc_100285a60;

loc_100285a00:
    r22 = r22 + 0x1;
    if (r22 < r19) goto loc_1002859d0;

loc_100285a0c:
    r0 = objc_msgSend(r24, var_2B8);
    r19 = r0;
    if (r0 != 0x0) goto loc_1002859c8;

loc_100285a2c:
    r0 = [var_2E0 intValue];
    r21 = r0;
    if ((r0 | 0x1) != 0x3 && [r26 loadDownloadedChecksums] != 0x0) {
            r0 = 0x0;
    }
    else {
            var_2A0 = q0;
            r0 = objc_msgSend(r25, var_2B8);
            if (r0 != 0x0) {
                    r19 = r0;
                    r20 = *var_2A0;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_2A0 != r20) {
                                            objc_enumerationMutation(r25);
                                    }
                                    [r26 addNewFile:r2];
                                    r22 = r22 + 0x1;
                            } while (r22 < r19);
                            r0 = objc_msgSend(r25, var_2B8);
                            r19 = r0;
                    } while (r0 != 0x0);
            }
            r0 = [r26 setState:r21 forDownloadState:var_2E8];
            if (r0 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = r26;
                    }
            }
    }
    goto loc_100285a64;

loc_100285a64:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100285a60:
    r0 = 0x0;
    goto loc_100285a64;
}

-(void)setDelegate:(void *)arg2 {
    self->_delegate = arg2;
    return;
}

-(double)updateInterval {
    r0 = self;
    return r0;
}

@end