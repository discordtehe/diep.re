@implementation MCBundleManager

-(void)releaseBundle:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *r2;
    if (r0 != 0x0) {
            r19 = r2;
            [r0 detach];
            r0 = *r19;
            if (r0 != 0x0) {
                    [r0 release];
                    *r19 = 0x0;
            }
    }
    return;
}

-(void *)dataSaveFile {
    r0 = *(self + 0x18);
    r0 = [r0 getPathForMetadata];
    r0 = [r0 stringByAppendingPathComponent:@"__ConfMgr__.plist"];
    return r0;
}

-(void *)allFilesSaveFile {
    r0 = *(self + 0x18);
    r0 = [r0 getPathForMetadata];
    r0 = [r0 stringByAppendingPathComponent:@"__ConfMgr_alldownloads__.plist"];
    return r0;
}

-(void)saveAllDownloadedFileList {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSArray array];
    r8 = *(r19 + 0x30);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r8;
            }
            else {
                    r2 = r0;
            }
    }
    [*(r19 + 0x18) saveData:[NSPropertyListSerialization dataFromPropertyList:r2 format:0xc8 errorDescription:&var_28] atPath:[r19 allFilesSaveFile]];
    return;
}

-(void)saveState {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [NSMutableDictionary dictionary];
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 toDictionary];
            if (r0 != 0x0) {
                    [r20 setObject:r2 forKey:r3];
            }
    }
    [r20 setObject:r2 forKey:r3];
    r22 = *(r19 + 0x48);
    if (r22 != 0x0) {
            [r22 substringFromIndex:[[*(r19 + 0x18) getPathForCache] length]];
    }
    [r20 setObject:r2 forKey:r3];
    r0 = [NSPropertyListSerialization dataFromPropertyList:r20 format:0xc8 errorDescription:&var_28];
    if (r0 != 0x0) {
            [*(r19 + 0x18) saveData:r0 atPath:[r19 dataSaveFile]];
    }
    else {
            [var_28 release];
    }
    return;
}

-(void)cancelDownload {
    [self cleanAllFilesList];
    [*(self + 0x28) cancel];
    [self releaseBundle:self + 0x28];
    [self saveState];
    return;
}

-(void)cleanAllFilesList {
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
    r20 = [NSMutableArray array];
    r21 = [*(self + 0x28) bundleNewFiles];
    var_110 = q0;
    var_128 = self;
    r22 = *(self + 0x30);
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r22);
                            }
                            r25 = @selector(containsObject:);
                            r27 = *(var_118 + r19 * 0x8);
                            if ((objc_msgSend(r21, r25) & 0x1) == 0x0) {
                                    [r20 addObject:r2];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    r19 = var_128;
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    *(r19 + 0x30) = [[NSArray arrayWithArray:r20] retain];
    [r19 saveAllDownloadedFileList];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)setupChecksumsForBundle:(void *)arg2 {
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
    r21 = self;
    if (*(int8_t *)(self + 0x50) != 0x0) {
            r20 = @"";
    }
    else {
            r20 = [[*(r21 + 0x18) getPathForMetadata] stringByAppendingPathComponent:@"mc-bundle-checksums"];
    }
    var_110 = q0;
    r21 = *(r21 + 0x8);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100278448;

loc_1002783d0:
    r23 = r0;
    r25 = *var_110;
    goto loc_1002783e0;

loc_1002783e0:
    r27 = 0x0;
    goto loc_1002783e8;

loc_1002783e8:
    if (*var_110 != r25) {
            objc_enumerationMutation(r21);
    }
    r0 = [r19 addChecksumFile:r2 fromDirectory:r3];
    if (r0 != 0x0) goto loc_100278448;

loc_10027841c:
    r27 = r27 + 0x1;
    if (r27 < r23) goto loc_1002783e8;

loc_100278428:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1002783e0;

loc_100278448:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)moveChecksumsToAuxiliaryCache {
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
    r20 = [*(self + 0x18) getPathForCache];
    var_130 = [*(r19 + 0x18) getPathForAuxiliaryCache];
    var_110 = q0;
    r0 = *(r19 + 0x8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r21 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(var_128);
                            }
                            r23 = *(var_118 + r22 * 0x8);
                            r28 = [r20 stringByAppendingPathComponent:r23];
                            if ([*(r19 + 0x18) pathExists:r2] != 0x0) {
                                    [var_130 stringByAppendingPathComponent:r23];
                                    [*(r19 + 0x18) copyResourceFrom:r2 to:r3 deleteOriginal:r4 allowOverrite:r5];
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(var_128, var_138);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)cleanupAuxiliaryCache {
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
    if ([*(self + 0x18) respondsToSelector:r2] != 0x0) {
            r20 = [*(r19 + 0x18) getPathForAuxiliaryCache];
    }
    else {
            r20 = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    if (r20 != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = sub_100280c44(r20);
            r21 = r0;
            var_110 = q0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r26 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(r19 + 0x18) removeResourceAtPath:r2];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [*(r19 + 0x18) removeResourceAtPath:r20];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)moveAllDownloadedFilesToAuxiliaryCacheExcept:(void *)arg2 {
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
    var_130 = arg2;
    r19 = self;
    var_138 = [*(self + 0x18) getPathForCache];
    var_128 = [*(r19 + 0x18) getPathForAuxiliaryCache];
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    *(r19 + 0x48) = [var_128 retain];
    var_158 = [NSMutableArray array];
    r0 = *(r19 + 0x48);
    if (r0 != 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0) {
            var_110 = q0;
            r0 = *(r19 + 0x30);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_148 = r0;
            var_140 = r19;
            var_160 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r27 = r0;
                    r24 = *var_110;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(var_148);
                                    }
                                    r19 = *(var_118 + r22 * 0x8);
                                    r25 = [var_138 stringByAppendingPathComponent:r19];
                                    r21 = [var_128 stringByAppendingPathComponent:r19];
                                    r23 = [var_130 containsObject:r25] ^ 0x1;
                                    [*(var_140 + 0x18) copyResourceFrom:r25 to:r21 deleteOriginal:r23 allowOverrite:0x1];
                                    if ((r23 & 0x1) == 0x0) {
                                            [var_158 addObject:r2];
                                    }
                                    r22 = r22 + 0x1;
                            } while (r22 < r27);
                            r0 = objc_msgSend(var_148, var_160);
                            r27 = r0;
                    } while (r0 != 0x0);
            }
            r20 = var_140;
            r19 = *(r20 + 0x18);
            [r19 removeResourceAtPath:[[r19 getPathForMetadata] stringByAppendingPathComponent:@"__bundleVersion__.plist"]];
            r0 = *(r20 + 0x30);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r20 + 0x30) = 0x0;
            }
            *(r20 + 0x30) = [[NSArray arrayWithArray:var_158] retain];
            [r20 saveAllDownloadedFileList];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)clearAllDownloadedFilesExcept:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r21 = arg2;
    r19 = self;
    r22 = [*(self + 0x18) getPathForCache];
    r23 = [NSMutableArray array];
    var_190 = q0;
    r25 = *(r19 + 0x30);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r1;
    r0 = objc_msgSend(r25, r1);
    if (r0 != 0x0) {
            r26 = r0;
            r20 = *var_190;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_190 != r20) {
                                    objc_enumerationMutation(r25);
                            }
                            r28 = @selector(addObject:);
                            [r22 stringByAppendingPathComponent:*(var_198 + r24 * 0x8)];
                            objc_msgSend(r23, r28);
                            r24 = r24 + 0x1;
                    } while (r24 < r26);
                    r0 = objc_msgSend(r25, var_1E8);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    var_1D0 = q0;
    r0 = objc_msgSend(r23, var_1E8);
    if (r0 != 0x0) {
            r25 = r0;
            r20 = *var_1D0;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_1D0 != r20) {
                                    objc_enumerationMutation(r23);
                            }
                            r28 = *(var_1D8 + r24 * 0x8);
                            if (([r21 containsObject:r28] & 0x1) == 0x0) {
                                    [*(r19 + 0x18) removeResourceAtPath:r2];
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r25);
                    r0 = objc_msgSend(r23, var_1E8);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    [*(r19 + 0x18) removeResourceAtPath:[r22 stringByAppendingPathComponent:@"checksums"]];
    r21 = *(r19 + 0x18);
    [r21 removeResourceAtPath:[[r21 getPathForMetadata] stringByAppendingPathComponent:@"__bundleVersion__.plist"]];
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    *(r19 + 0x30) = [[NSArray array] retain];
    [r19 saveAllDownloadedFileList];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)downloadBundleChecksums:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 stringByAppendingPathComponent:*(self + 0x60)];
    r0 = [r0 UTF8String];
    r0 = sub_100279788(&var_F0, r0);
    var_120 = q0;
    r21 = *(r19 + 0x8);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) {
            r25 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_128 + r27 * 0x8);
                            r0 = [r0 UTF8String];
                            r0 = sub_100279788(&var_148, r0);
                            [r19 downloadChecksumFile:r2 fromURL:r3 withRetryDelay:r4];
                            if ((sign_extend_64(var_131) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_148);
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_F0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)filesToKeepOnBinaryUpgrade:(void *)arg2 withAuxCache:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x280;
    if (r2 == 0x0) goto loc_100278da8;

loc_100278d60:
    r24 = r3;
    r25 = r2;
    r23 = r0;
    r1 = @selector(isEqualToString:);
    var_2B0 = r1;
    if (objc_msgSend(r24, var_2B0) != 0x0 || objc_msgSend(r25, r1) != 0x0 || r24 == 0x0) goto loc_100278da8;

loc_100278df0:
    var_2C0 = [*(r23 + 0x18) getPathForCache];
    r0 = [MCBundle bundleWithPersistencyDelegate:*(r23 + 0x18)];
    var_2A8 = r0;
    [r0 setDeviceSuffix:*(r23 + 0x40)];
    var_210 = q0;
    r28 = *(r23 + 0x8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2D0 = r1;
    r0 = objc_msgSend(r28, r1);
    if (r0 == 0x0) goto loc_100278f04;

loc_100278e6c:
    r26 = r0;
    r20 = *var_210;
    r8 = &@selector(holderForWebView:);
    goto loc_100278e80;

loc_100278e80:
    r21 = 0x0;
    r19 = r8;
    r27 = *(r8 + 0xcb8);
    goto loc_100278e90;

loc_100278e90:
    if (*var_210 != r20) {
            objc_enumerationMutation(r28);
    }
    [r25 stringByAppendingPathComponent:r2];
    if (objc_msgSend(var_2A8, r27) != 0x0) goto loc_100279120;

loc_100278ed0:
    r21 = r21 + 0x1;
    if (r21 < r26) goto loc_100278e90;

loc_100278edc:
    r0 = objc_msgSend(r28, var_2D0);
    r26 = r0;
    r8 = r19;
    if (r0 != 0x0) goto loc_100278e80;

loc_100278f04:
    r0 = [MCBundle bundleWithPersistencyDelegate:r2];
    var_2B8 = r0;
    [r0 setDeviceSuffix:r2];
    var_250 = q0;
    r25 = *(r23 + 0x8);
    r0 = objc_msgSend(r25, var_2D0);
    if (r0 == 0x0) goto loc_10027900c;

loc_100278f54:
    r27 = r0;
    r19 = *var_250;
    goto loc_100278f6c;

loc_100278f6c:
    r21 = 0x0;
    goto loc_100278f7c;

loc_100278f7c:
    if (*var_250 != r19) {
            objc_enumerationMutation(r25);
    }
    r20 = [r24 stringByAppendingPathComponent:r2];
    if ([*(r23 + 0x18) pathExists:r2] == 0x0 || [var_2B8 addChecksumFile:r2] == 0x0) goto loc_100278fd4;

loc_100279128:
    var_2C8 = [NSArray array];
    goto loc_100279140;

loc_100279140:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_2C8;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100278fd4:
    r21 = r21 + 0x1;
    if (r21 < r27) goto loc_100278f7c;

loc_100278fe0:
    r0 = objc_msgSend(r25, var_2D0);
    r27 = r0;
    if (r0 != 0x0) goto loc_100278f6c;

loc_10027900c:
    var_2C8 = [NSMutableArray array];
    var_290 = q0;
    r0 = *(r23 + 0x30);
    r25 = r0;
    r0 = objc_msgSend(r0, var_2D0);
    if (r0 != 0x0) {
            r26 = r0;
            r24 = *var_290;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_290 != r24) {
                                    objc_enumerationMutation(r25);
                            }
                            r19 = *(var_298 + r23 * 0x8);
                            r20 = [var_2C0 stringByAppendingPathComponent:r19];
                            [var_2A8 checksumForFile:r19];
                            if (objc_msgSend([var_2B8 checksumForFile:r19], var_2B0) != 0x0) {
                                    [var_2C8 addObject:r2];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r0 = objc_msgSend(r25, var_2D0);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    goto loc_100279140;

loc_100279120:
    var_2C8 = 0x0;
    goto loc_100279140;

loc_100278da8:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [NSArray array];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)initActiveBundle {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1a0;
    r19 = self;
    var_1A0 = q0;
    r21 = *(self + 0x8);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100279adc;

loc_100279a5c:
    r22 = r0;
    r20 = *var_1A0;
    goto loc_100279a6c;

loc_100279a6c:
    r25 = 0x0;
    goto loc_100279a74;

loc_100279a74:
    if (*var_1A0 != r20) {
            objc_enumerationMutation(r21);
    }
    r8 = var_1A8;
    r0 = *(r19 + 0x18);
    r0 = [r0 findFilename:r2];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r19 + 0x50) = r8;
    if (r0 == 0x0) goto loc_100279adc;

loc_100279ab0:
    r25 = r25 + 0x1;
    if (r25 < r22) goto loc_100279a74;

loc_100279abc:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100279a6c;

loc_100279adc:
    if (*(int8_t *)(r19 + 0x50) == 0x0) goto loc_100279c2c;

loc_100279ae4:
    r0 = [MCBundle bundleWithPersistencyDelegate:*(r19 + 0x18)];
    r0 = [r0 retain];
    *(r19 + 0x20) = r0;
    [r0 setDeviceSuffix:*(r19 + 0x40)];
    r0 = [r19 setupChecksumsForBundle:*(r19 + 0x20)];
    if (r0 != 0x0) {
            [NSException raise:@"MCBundle: Setup Error" format:@"Got error %@ when configuring local notification"];
    }
    *(int8_t *)(r19 + 0x51) = 0x1;
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            r20 = [r0 url];
            r21 = [*(r19 + 0x58) version];
            r22 = [*(r19 + 0x58) priorityDownloads];
            [*(r19 + 0x58) updateInterval];
            [r19 downloadBundleAtUrl:r20 withVersionString:r21 withPriorityDownloads:r22 withUpdateInterval:[*(r19 + 0x58) numberOfDownloaders] withParallelDownloadersCount:r6];
    }
    goto loc_100279bf0;

loc_100279bf0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100279c2c:
    r26 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E0 = q0;
    r21 = *(r19 + 0x8);
    r0 = objc_msgSend(r21, r26);
    if (r0 == 0x0) goto loc_100279ae4;

loc_100279c58:
    r26 = @selector(countByEnumeratingWithState:objects:count:);
    r22 = r0;
    r20 = *var_1E0;
    var_1F8 = r26;
    goto loc_100279c74;

loc_100279c74:
    r23 = 0x0;
    goto loc_100279c84;

loc_100279c84:
    if (*var_1E0 != r20) {
            objc_enumerationMutation(r21);
    }
    [*(r19 + 0x18) getPathForMetadata];
    [@"mc-bundle-checksums" stringByAppendingPathComponent:r2];
    objc_msgSend(r28, r25);
    if (objc_msgSend(*(r19 + 0x18), r26) == 0x0) goto loc_100279d28;

loc_100279cec:
    r23 = r23 + 0x1;
    if (r23 < r22) goto loc_100279c84;

loc_100279cf8:
    r0 = objc_msgSend(r21, var_1F8);
    r22 = r0;
    if (r0 != 0x0) goto loc_100279c74;
    goto loc_100279ae4;

loc_100279d28:
    if (*(int8_t *)(r19 + 0x50) == 0x0) {
            r0 = *(r19 + 0x38);
            if (r0 != 0x0 && [r0 respondsToSelector:r2] != 0x0) {
                    r0 = *(r19 + 0x38);
                    r0 = [r0 baseURLForBundleChecksums];
                    if (r0 != 0x0) {
                            [r19 downloadBundleChecksums:r0];
                    }
            }
    }
    else {
            r0 = [MCBundle bundleWithPersistencyDelegate:*(r19 + 0x18)];
            r0 = [r0 retain];
            *(r19 + 0x20) = r0;
            [r0 setDeviceSuffix:*(r19 + 0x40)];
            r0 = [r19 setupChecksumsForBundle:*(r19 + 0x20)];
            if (r0 != 0x0) {
                    [NSException raise:@"MCBundle: Setup Error" format:@"Got error %@ when configuring local notification"];
            }
            *(int8_t *)(r19 + 0x51) = 0x1;
            r0 = *(r19 + 0x58);
            if (r0 != 0x0) {
                    r20 = [r0 url];
                    r21 = [*(r19 + 0x58) version];
                    r22 = [*(r19 + 0x58) priorityDownloads];
                    [*(r19 + 0x58) updateInterval];
                    [r19 downloadBundleAtUrl:r20 withVersionString:r21 withPriorityDownloads:r22 withUpdateInterval:[*(r19 + 0x58) numberOfDownloaders] withParallelDownloadersCount:r6];
            }
    }
    goto loc_100279bf0;
}

-(void *)initWithPersistencyDelegate:(void *)arg2 bundleVersion:(void *)arg3 checksumFiles:(void *)arg4 deviceSuffix:(void *)arg5 {
    r0 = [self initWithPersistencyDelegate:arg2 bundleVersion:arg3 checksumFiles:arg4 deviceSuffix:arg5 andManagerDelegate:0x0];
    return r0;
}

-(void *)initWithPersistencyDelegate:(void *)arg2 bundleVersion:(void *)arg3 checksumFiles:(void *)arg4 {
    r0 = [self initWithPersistencyDelegate:arg2 bundleVersion:arg3 checksumFiles:arg4 deviceSuffix:0x0];
    return r0;
}

+(void *)bundleManagerWithPersistencyDelegate:(void *)arg2 bundleVersion:(void *)arg3 checksumFiles:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithPersistencyDelegate:arg2 bundleVersion:arg3 checksumFiles:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)bundleManagerWithPersistencyDelegate:(void *)arg2 bundleVersion:(void *)arg3 checksumFiles:(void *)arg4 deviceSuffix:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithPersistencyDelegate:arg2 bundleVersion:arg3 checksumFiles:arg4 deviceSuffix:arg5 andManagerDelegate:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)bundleManagerWithPersistencyDelegate:(void *)arg2 bundleVersion:(void *)arg3 checksumFiles:(void *)arg4 andManagerDelegate:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithPersistencyDelegate:arg2 bundleVersion:arg3 checksumFiles:arg4 deviceSuffix:0x0 andManagerDelegate:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self saveState];
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x60);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x60) = 0x0;
    }
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    [r19 releaseBundle:r19 + 0x28];
    [r19 releaseBundle:r19 + 0x20];
    sub_10027a85c(0x1011d2410, &var_18);
    [[&var_28 super] dealloc];
    return;
}

-(void)downloadChecksumFile:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg2 fromURL:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg3 withRetryDelay:(int)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1b0;
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
    var_78 = 0x0;
    r8 = *(int8_t *)(r3 + 0x17);
    r10 = *(int128_t *)r3;
    r11 = *(int128_t *)(r3 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r23 = r8;
            }
            else {
                    r23 = r11;
            }
    }
    if (CPU_FLAGS & L) {
            if (!CPU_FLAGS & L) {
                    r24 = r3;
            }
            else {
                    r24 = r10;
            }
    }
    r8 = r23 + 0x1;
    if (r8 >= -0x10) goto loc_100279570;

loc_1002791dc:
    r19 = r4;
    r20 = r3;
    r21 = r2;
    r22 = r0;
    if (r8 < 0x17) {
            r25 = r29 - 0x78;
            var_61 = r23;
            if (r23 != 0x0) {
                    memcpy(r25, r24, r23);
            }
    }
    else {
            r0 = operator new();
            r25 = r0;
            var_78 = r0;
            memcpy(r25, r24, r23);
    }
    *(int8_t *)(r25 + r23) = 0x0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    r8 = *(int8_t *)(r21 + 0x17);
    r10 = *(int128_t *)r21;
    r11 = *(int128_t *)(r21 + 0x8);
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *r0 = 0x0;
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *(int128_t *)r0 = 0x100e77640;
    *(int128_t *)(r0 + 0x8) = r22;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    *(int32_t *)(r23 + 0x40) = r19;
    var_60 = r23;
    if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_110);
    }
    if ((sign_extend_64(var_111) & 0xffffffff80000000) != 0x0) {
            operator delete(var_128);
    }
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *(int128_t *)r0 = 0x100e77750;
    *(int128_t *)(r0 + 0x8) = r22;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    *(int32_t *)(r20 + 0x40) = r19;
    var_80 = r20;
    if ((sign_extend_64(var_139) & 0xffffffff80000000) != 0x0) {
            operator delete(var_150);
    }
    if ((sign_extend_64(var_151) & 0xffffffff80000000) != 0x0) {
            operator delete(var_168);
    }
    sub_100279788(&var_198, "");
    sub_10027c6f8(r29 - 0xb8, r29 - 0x78);
    sub_10027c6f8(&stack[-232], r29 - 0x98);
    r0 = sub_1009c8a78(&var_F0, &var_198, r29 - 0xb8, &stack[-232], 0x1011e6d78, 0x1011e6df0, 0x0);
    r0 = var_C0;
    if (&stack[-232] == r0) goto loc_10027943c;

loc_10027942c:
    if (r0 == 0x0) goto loc_100279448;

loc_100279430:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100279444;

loc_100279444:
    (r8)();
    goto loc_100279448;

loc_100279448:
    r0 = var_A0;
    if (r29 - 0xb8 == r0) goto loc_100279468;

loc_100279458:
    if (r0 == 0x0) goto loc_100279474;

loc_10027945c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100279470;

loc_100279470:
    (r8)();
    goto loc_100279474;

loc_100279474:
    if ((sign_extend_64(var_181) & 0xffffffff80000000) != 0x0) {
            operator delete(var_198);
    }
    (**var_180)(var_180);
    r19 = var_178;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (0x100e77750 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = var_80;
    if (r29 - 0x98 == r0) goto loc_1002794ec;

loc_1002794dc:
    if (r0 == 0x0) goto loc_1002794f8;

loc_1002794e0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1002794f4;

loc_1002794f4:
    (r8)();
    goto loc_1002794f8;

loc_1002794f8:
    r0 = var_60;
    if (r29 - 0x78 == r0) goto loc_100279518;

loc_100279508:
    if (r0 == 0x0) goto loc_100279524;

loc_10027950c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100279520;

loc_100279520:
    (r8)();
    goto loc_100279524;

loc_100279524:
    if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_F0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100279518:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100279520;

loc_1002794ec:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1002794f4;

loc_100279468:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100279470;

loc_10027943c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100279444;

loc_100279570:
    std::__1::__basic_string_common<true>::__throw_length_error();
    return;
}

-(void *)activeBundleVersionString {
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            r0 = [r0 bundleVersion];
    }
    return r0;
}

-(void *)downloadingBundleVersionString {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 bundleVersion];
    }
    return r0;
}

-(void *)downloadBundleAtUrl:(void *)arg2 withVersionString:(void *)arg3 {
    r0 = [self downloadBundleAtUrl:arg2 withVersionString:arg3 withPriorityDownloads:0x0 withUpdateInterval:0x4 withParallelDownloadersCount:r6];
    return r0;
}

-(void *)downloadBundleAtUrl:(void *)arg2 withVersionString:(void *)arg3 withPriorityDownloads:(void *)arg4 {
    r0 = [self downloadBundleAtUrl:arg2 withVersionString:arg3 withPriorityDownloads:arg4 withUpdateInterval:0x4 withParallelDownloadersCount:r6];
    return r0;
}

-(bool)prioritiseDownloads:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x28);
    if (r0 == 0x0) goto .l1;

loc_10027ac50:
    r20 = r2;
    if ([r0 state] == 0x1 || [*(r19 + 0x28) state] == 0x2) goto loc_10027ac80;

loc_10027aca8:
    r0 = 0x0;
    return r0;

.l1:
    return r0;

loc_10027ac80:
    if ([*(r19 + 0x28) prioritiseDownloads:r20] == 0x0) goto loc_10027acb0;

loc_10027ac98:
    [r19 cancelDownload];
    goto loc_10027aca8;

loc_10027acb0:
    r0 = 0x1;
    return r0;
}

-(void)setCurrentDownloadUpdateInterval:(double)arg2 {
    r2 = arg2;
    r0 = *(self + 0x28);
    if (d0 >= *0x100ba2d70) {
            asm { ccmp       x0, #0x0, #0x4, pl };
    }
    if (CPU_FLAGS & NE) {
            [r0 setDownloadUpdateInterval:r2];
    }
    return;
}

-(double)currentUpdateInterval {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 updateInterval];
    }
    return r0;
}

-(void *)downloadBundleAtUrl:(void *)arg2 withVersionString:(void *)arg3 withPriorityDownloads:(void *)arg4 withUpdateInterval:(double)arg5 withParallelDownloadersCount:(int)arg6 {
    r6 = arg6;
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = arg5;
    v8 = v0;
    r20 = arg4;
    r22 = arg3;
    r23 = arg2;
    r19 = self;
    if (*(int8_t *)(self + 0x51) == 0x0) goto loc_10027aa24;

loc_10027a9dc:
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    r0 = [r19 activeBundleVersionString];
    r2 = r22;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_10027aa9c;

loc_10027aa1c:
    r21 = 0x0;
    goto loc_10027abb8;

loc_10027abb8:
    r0 = r21;
    return r0;

loc_10027aa9c:
    r24 = r19 + 0x28;
    r0 = *r24;
    if (r0 == 0x0) goto loc_10027aaf0;

loc_10027aaa8:
    if (r22 == 0x0) goto loc_10027aad0;

loc_10027aaac:
    r25 = @selector(isEqualToString:);
    r2 = [r0 bundleVersion];
    if ((objc_msgSend(r22, r25) & 0x1) != 0x0) goto loc_10027aa1c;

loc_10027aacc:
    r0 = *r24;
    goto loc_10027aad0;

loc_10027aad0:
    [r0 cancel];
    [r19 releaseBundle:r24];
    goto loc_10027aaf0;

loc_10027aaf0:
    asm { fmax       d8, d8, d0 };
    if (r21 > 0x1) {
            asm { csinc      w21, w21, wzr, gt };
    }
    r0 = [MCRemoteBundle alloc];
    r0 = [r0 initAtUrl:r23 withPersistencyDelegate:*(r19 + 0x18) version:r22 withUpdateInterval:r21 withParallelDownloadersCount:r6];
    *(r19 + 0x28) = r0;
    [r0 setDeviceSuffix:*(r19 + 0x40)];
    r0 = [r19 setupChecksumsForBundle:*(r19 + 0x28)];
    if (r0 != 0x0) goto loc_10027aba4;

loc_10027ab64:
    if (*(r19 + 0x48) != 0x0) {
            [*r24 setAuxiliaryCache:r2];
    }
    [*r24 prioritiseDownloads:r20];
    r0 = *r24;
    r0 = [r0 update];
    if (r0 == 0x0) goto loc_10027abd8;

loc_10027aba4:
    r21 = r0;
    [r19 cancelDownload];
    goto loc_10027abb8;

loc_10027abd8:
    [*(r19 + 0x28) setDelegate:r19];
    r0 = *(r19 + 0x38);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(bundleManagerDownloadStarted:)] != 0x0) {
            [*(r19 + 0x38) bundleManagerDownloadStarted:r19];
    }
    [r19 saveState];
    goto loc_10027aa1c;

loc_10027aa24:
    r0 = [MCDownloadInfo alloc];
    r0 = [r0 initWithURL:r23 version:r22 andPriorityDownloads:r20];
    r20 = r0;
    [r0 setUpdateInterval:r23];
    [r20 setNumberOfDownloaders:r21];
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    r21 = 0x0;
    *(r19 + 0x58) = r20;
    goto loc_10027abb8;
}

-(void)setParallelDownloadersCount:(int)arg2 {
    r0 = self;
    if (arg2 >= 0x1) {
            r0 = *(r0 + 0x28);
            if (r0 != 0x0) {
                    [r0 setParallelDownloadersCount:r2];
            }
    }
    return;
}

-(void *)initWithPersistencyDelegate:(void *)arg2 bundleVersion:(void *)arg3 checksumFiles:(void *)arg4 deviceSuffix:(void *)arg5 andManagerDelegate:(void *)arg6 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    r25 = arg6;
    r20 = arg5;
    r26 = arg4;
    r23 = arg3;
    r24 = arg2;
    r0 = [[&var_170 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if (r24 != 0x0) {
                    if (r23 == 0x0) {
                            [NSException raise:@"MCBundleManager: Invalid Parameters" format:@"Need non nil bundle version"];
                    }
            }
            else {
                    [NSException raise:@"MCBundleManager: Invalid Parameters" format:@"Need non nil persistency Delegate"];
                    if (r23 == 0x0) {
                            [NSException raise:@"MCBundleManager: Invalid Parameters" format:@"Need non nil bundle version"];
                    }
            }
            if (r26 == 0x0 || [r26 count] == 0x0) {
                    [NSException raise:@"MCBundleManager: Invalid Parameters" format:@"Need non empty checksum file array"];
            }
            r0 = operator new();
            r9 = *0x1011d2410;
            *r0 = r9;
            *(int128_t *)(r0 + 0x8) = 0x1011d2410;
            *(int128_t *)(r0 + 0x10) = r19;
            *(r9 + 0x8) = r0;
            *0x1011d2410 = r0;
            *0x1011d2420 = *0x1011d2420 + 0x1;
            *(int8_t *)(r19 + 0x51) = 0x0;
            *(r19 + 0x58) = 0x0;
            *(r19 + 0x60) = [r23 retain];
            *(int8_t *)(r19 + 0x68) = 0x0;
            *(r19 + 0x8) = [r26 retain];
            *(r19 + 0x38) = [r25 retain];
            *(r19 + 0x18) = [r24 retain];
            *(r19 + 0x10) = [r23 retain];
            if (r20 != 0x0 && [r20 count] != 0x0) {
                    r0 = r20;
                    r1 = @selector(retain);
            }
            else {
                    r22 = @selector(init);
                    r0 = [NSArray alloc];
                    r1 = r22;
            }
            *(r19 + 0x40) = objc_msgSend(r0, r1);
            r22 = *(r19 + 0x18);
            [r19 dataSaveFile];
            r0 = [r22 loadDataAtPath:r2];
            if (r0 != 0x0) {
                    r0 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x0 format:0x0 errorDescription:&var_178];
                    r22 = r0;
                    if (r0 != 0x0) {
                            [NSDictionary class];
                            if ([r22 isKindOfClass:r2] != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r22 = 0x0;
                                    }
                                    else {
                                            r22 = r22;
                                    }
                            }
                    }
            }
            else {
                    r22 = 0x0;
            }
            r23 = *(r19 + 0x18);
            [r19 allFilesSaveFile];
            r0 = [r23 loadDataAtPath:r2];
            if (r0 != 0x0) {
                    r0 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x0 format:0x0 errorDescription:&var_178];
                    if (r0 != 0x0) {
                            r23 = r0;
                            [NSArray class];
                            r0 = [r23 isKindOfClass:r2];
                            if (r0 != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r0 = 0x0;
                                    }
                                    else {
                                            r0 = r23;
                                    }
                            }
                    }
                    if (r0 != 0x0) {
                            r21 = @selector(retain);
                            r0 = objc_msgSend(r0, r21);
                            r26 = 0x0;
                    }
                    else {
                            r21 = @selector(retain);
                            r0 = [NSArray array];
                            r0 = objc_msgSend(r0, r21);
                            r26 = 0x1;
                    }
            }
            else {
                    r0 = [r22 objectForKey:r2];
                    if (r0 == 0x0) {
                            r21 = @selector(retain);
                            r0 = [NSArray array];
                            r0 = objc_msgSend(r0, r21);
                            r26 = 0x1;
                    }
                    else {
                            r21 = @selector(retain);
                            r0 = objc_msgSend(r0, r21);
                            r26 = 0x0;
                    }
            }
            *(r19 + 0x30) = r0;
            r0 = [r22 objectForKey:r2];
            if (r0 != 0x0) {
                    r24 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                            *(r19 + 0x48) = 0x0;
                    }
                    else {
                            r21 = @selector(retain);
                            *(r19 + 0x48) = objc_msgSend([[*(r19 + 0x18) getPathForCache] stringByAppendingPathComponent:r24], r21);
                    }
            }
            else {
                    *(r19 + 0x48) = 0x0;
            }
            r0 = [r22 objectForKey:r2];
            if (r0 != 0x0) {
                    r21 = @selector(retain);
                    r0 = [MCRemoteBundle allocRemoteBundleFromDictionary:r0 withPersistencyDelegate:*(r19 + 0x18)];
                    r0 = objc_msgSend(r0, r21);
                    *(r19 + 0x28) = r0;
                    [r0 setDelegate:r19];
                    [*(r19 + 0x28) setDeviceSuffix:*(r19 + 0x40)];
                    if (*(r19 + 0x28) == 0x0) {
                            [r19 saveState];
                    }
            }
            r0 = [r22 objectForKey:r2];
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r21 = r0;
                    }
                    else {
                            r21 = @"-1";
                    }
            }
            r0 = *(r19 + 0x10);
            if (r0 != 0x0 && ([*(r19 + 0x10) isEqualToString:r2] & 0x1) == 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0 && ([r21 isEqualToString:r2] & 0x1) == 0x0) {
                    var_204 = r26;
                    var_218 = r21;
                    r0 = *(r19 + 0x18);
                    r0 = [r0 getPathForMetadata];
                    r0 = [r0 stringByAppendingPathComponent:@"mc-bundle-checksums"];
                    r0 = sub_100280c44(r0);
                    r25 = r0;
                    var_1B0 = q0;
                    r3 = r29 - 0xe0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r26 = r0;
                            r22 = *var_1B0;
                            do {
                                    r21 = 0x0;
                                    do {
                                            if (*var_1B0 != r22) {
                                                    objc_enumerationMutation(r25);
                                            }
                                            [*(r19 + 0x18) removeResourceAtPath:r2];
                                            r21 = r21 + 0x1;
                                    } while (r21 < r26);
                                    r3 = r29 - 0xe0;
                                    r0 = [r25 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r26 = r0;
                            } while (r0 != 0x0);
                    }
                    r22 = [[*(r19 + 0x18) getPathForCache] stringByAppendingPathComponent:r2];
                    if ([*(r19 + 0x18) pathExists:r22] != 0x0) {
                            r0 = *(r19 + 0x18);
                            r0 = [r0 loadDataAtPath:r2];
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    r0 = [NSString alloc];
                                    r0 = [r0 initWithData:r20 encoding:0x4];
                                    r20 = r0;
                                    r21 = var_204;
                                    if (r0 != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
                                            r21 = r21 & ([*(r19 + 0x10) isEqualToString:r2] ^ 0x1);
                                    }
                                    [r20 release];
                                    if ((r21 & 0x1) == 0x0) {
                                            r3 = 0x4;
                                    }
                                    else {
                                            r23 = @selector(countByEnumeratingWithState:objects:count:);
                                            r0 = *(r19 + 0x18);
                                            r0 = [r0 getPathForCache];
                                            r0 = sub_100280c44(r0);
                                            r20 = r0;
                                            var_1F0 = q0;
                                            r3 = &stack[-368];
                                            r0 = objc_msgSend(r0, r23);
                                            if (r0 != 0x0) {
                                                    r24 = r0;
                                                    r26 = *var_1F0;
                                                    do {
                                                            r21 = 0x0;
                                                            do {
                                                                    if (*var_1F0 != r26) {
                                                                            objc_enumerationMutation(r20);
                                                                    }
                                                                    [*(r19 + 0x18) removeResourceAtPath:r2];
                                                                    r21 = r21 + 0x1;
                                                            } while (r21 < r24);
                                                            r3 = &stack[-368];
                                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r24 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                    }
                            }
                            else {
                                    if (var_204 != 0x0) {
                                            r23 = @selector(countByEnumeratingWithState:objects:count:);
                                            r0 = *(r19 + 0x18);
                                            r0 = [r0 getPathForCache];
                                            r0 = sub_100280c44(r0);
                                            r20 = r0;
                                            var_1F0 = q0;
                                            r3 = &stack[-368];
                                            r0 = objc_msgSend(r0, r23);
                                            if (r0 != 0x0) {
                                                    r24 = r0;
                                                    r26 = *var_1F0;
                                                    do {
                                                            r21 = 0x0;
                                                            do {
                                                                    if (*var_1F0 != r26) {
                                                                            objc_enumerationMutation(r20);
                                                                    }
                                                                    [*(r19 + 0x18) removeResourceAtPath:r2];
                                                                    r21 = r21 + 0x1;
                                                            } while (r21 < r24);
                                                            r3 = &stack[-368];
                                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r24 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                    }
                            }
                    }
                    else {
                            if (var_204 != 0x0) {
                                    r23 = @selector(countByEnumeratingWithState:objects:count:);
                                    r0 = *(r19 + 0x18);
                                    r0 = [r0 getPathForCache];
                                    r0 = sub_100280c44(r0);
                                    r20 = r0;
                                    var_1F0 = q0;
                                    r3 = &stack[-368];
                                    r0 = objc_msgSend(r0, r23);
                                    if (r0 != 0x0) {
                                            r24 = r0;
                                            r26 = *var_1F0;
                                            do {
                                                    r21 = 0x0;
                                                    do {
                                                            if (*var_1F0 != r26) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            [*(r19 + 0x18) removeResourceAtPath:r2];
                                                            r21 = r21 + 0x1;
                                                    } while (r21 < r24);
                                                    r3 = &stack[-368];
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r24 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                    }
                    r23 = [NSArray array];
                    if ([*(r19 + 0x18) respondsToSelector:r2] != 0x0) {
                            r20 = @selector(respondsToSelector:);
                            [r19 moveChecksumsToAuxiliaryCache];
                            if (objc_msgSend(*(r19 + 0x18), r20) != 0x0) {
                                    r23 = [*(r19 + 0x18) getPathToCompleteChecksums];
                                    r3 = [*(r19 + 0x18) getPathForAuxiliaryCache];
                                    r23 = [r19 filesToKeepOnBinaryUpgrade:r23 withAuxCache:r3];
                            }
                            r8 = &@selector(moveAllDownloadedFilesToAuxiliaryCacheExcept:);
                    }
                    else {
                            r8 = &@selector(clearAllDownloadedFilesExcept:);
                    }
                    objc_msgSend(r19, *r8);
                    [r19 cancelDownload];
                    if (objc_msgSend(*(r19 + 0x38), r20, @selector(bundleManagerUpgradedBinary:fromVersion:toVersion:), r3, 0x10) != 0x0) {
                            [*(r19 + 0x38) bundleManagerUpgradedBinary:r2 fromVersion:r3 toVersion:r4];
                    }
                    [r19 saveState];
                    [*(r19 + 0x18) saveData:[*(r19 + 0x10) dataUsingEncoding:0x4] atPath:r22];
            }
            [r19 initActiveBundle];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(int)parallelDownloadersCount {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 parallelDownloadersCount];
    }
    return r0;
}

-(bool)isDownloading {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 isIdle];
            r0 = r0 ^ 0x1;
    }
    return r0;
}

-(bool)isReadyToActivate {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 isReadyToActivate];
    }
    return r0;
}

-(bool)activateBundleWithError:(void * *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r19 = r0;
            r22 = r0 + 0x28;
            r0 = *r22;
            if (r0 != 0x0) {
                    r21 = r2;
                    if ([r0 activate] != 0x0) {
                            if ([*r22 state] == -0x1) {
                                    r8 = [*r22 underlyingErrorForInvalidState];
                                    r0 = 0x0;
                                    *r21 = r8;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r20 = [NSArray arrayWithArray:[*(r19 + 0x28) bundleNewFiles]];
                            [*(r19 + 0x28) cancel];
                            [r19 releaseBundle:r22];
                            r22 = r19 + 0x20;
                            [r19 releaseBundle:r22];
                            r0 = [MCBundle bundleWithPersistencyDelegate:*(r19 + 0x18)];
                            r0 = [r0 retain];
                            *(r19 + 0x20) = r0;
                            [r0 setDeviceSuffix:*(r19 + 0x40)];
                            r0 = [r19 setupChecksumsForBundle:*(r19 + 0x20)];
                            if (r0 != 0x0) {
                                    r23 = r0;
                                    [NSException raise:@"MCBundle: Setup Error" format:@"Got error %@ when configuring local notification"];
                                    r0 = 0x0;
                                    *r21 = r23;
                            }
                            else {
                                    var_110 = q0;
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            r25 = *var_110;
                                            do {
                                                    r27 = 0x0;
                                                    do {
                                                            if (*var_110 != r25) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            [*r22 addNewFile:r2];
                                                            r27 = r27 + 0x1;
                                                    } while (r27 < r23);
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r23 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r0 = *(r19 + 0x38);
                                    if (r0 != 0x0 && [r0 respondsToSelector:@selector(bundleManagerActivated:)] != 0x0) {
                                            [*(r19 + 0x38) bundleManagerActivated:r19];
                                    }
                                    [r19 saveState];
                                    r0 = 0x1;
                            }
                    }
            }
    }
    else {
            [NSException raise:@"BundleMGR: Bad usage" format:@"MUST provide proper error handling"];
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)remoteBundleStateChanged:(void *)arg2 {
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
    [self updateDownloadsInfo:r2];
    if ([r20 state] == 0x3 && [*(r19 + 0x38) respondsToSelector:@selector(bundleManager:willDownloadNewFiles:), r3] != 0x0) {
            [*(r19 + 0x38) bundleManager:r19 willDownloadNewFiles:[NSArray arrayWithArray:[*(r19 + 0x28) bundleNewFiles]]];
    }
    if (*(r19 + 0x38) != 0x0 && [r20 isReadyToActivate] != 0x0) {
            [r19 cleanupAuxiliaryCache];
            if ([*(r19 + 0x38) respondsToSelector:@selector(bundleManagerReadyToActivate:)] != 0x0) {
                    [*(r19 + 0x38) bundleManagerReadyToActivate:r19];
            }
    }
    [r19 saveState];
    return;
}

-(void)updateDownloadsInfo:(void *)arg2 {
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
    r22 = arg2;
    r19 = self;
    if ([arg2 isDownloadingChangedFiles] != 0x0) {
            var_128 = r19;
            r21 = [NSMutableArray arrayWithArray:*(r19 + 0x30)];
            var_110 = q0;
            r0 = [r22 bundleNewFiles];
            r22 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r24 = r0;
                    r28 = *var_110;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r25 = @selector(containsObject:);
                                    r27 = *(var_118 + r20 * 0x8);
                                    if ((objc_msgSend(r21, r25) & 0x1) == 0x0) {
                                            [r21 addObject:r2];
                                    }
                                    r20 = r20 + 0x1;
                            } while (r20 < r24);
                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            r19 = var_128;
            r0 = *(r19 + 0x30);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x30) = 0x0;
            }
            *(r19 + 0x30) = [[NSArray arrayWithArray:r2] retain];
            [r19 saveAllDownloadedFileList];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)remoteBundleFinishedDownloadingChecksums:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(bundleManagerFinishedDownloadingChecksums:)] != 0x0) {
            [*(r19 + 0x38) bundleManagerFinishedDownloadingChecksums:r19];
    }
    return;
}

-(void)remoteBundle:(void *)arg2 URLDownloadSuccessfull:(void *)arg3 intoPath:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0) {
            r19 = r4;
            r20 = r3;
            if ([r0 respondsToSelector:@selector(bundleManager:fileDownloadComplete:intoAbsolutePath:), r3, r4] != 0x0) {
                    [*(r21 + 0x38) bundleManager:r21 fileDownloadComplete:r20 intoAbsolutePath:r19];
            }
    }
    return;
}

-(void)remoteBundle:(void *)arg2 fileCopiedFromAuxiliaryCache:(void *)arg3 intoPath:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0) {
            r19 = r4;
            r20 = r3;
            if ([r0 respondsToSelector:@selector(bundleManager:fileCopiedFromAuxiliaryCache:intoAbsolutePath:), r3, r4] != 0x0) {
                    [*(r21 + 0x38) bundleManager:r21 fileCopiedFromAuxiliaryCache:r20 intoAbsolutePath:r19];
            }
    }
    return;
}

-(void)remoteBundle:(void *)arg2 URLDownload:(void *)arg3 intoPath:(void *)arg4 failedWithError:(void *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
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
    r0 = *(self + 0x38);
    if (r0 != 0x0) {
            r20 = r5;
            r21 = r4;
            r22 = r3;
            if ([r0 respondsToSelector:@selector(bundleManager:failedDownload:intoAbsolutePath:withError:), r3, r4, r5] != 0x0) {
                    [*(r19 + 0x38) bundleManager:r19 failedDownload:r22 intoAbsolutePath:r21 withError:r20];
            }
    }
    [r19 cancelDownload];
    return;
}

-(void)remoteBundle:(void *)arg2 failedToCopyFromAuxiliaryCache:(void *)arg3 intoPath:(void *)arg4 withError:(void *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0) {
            r19 = r5;
            r20 = r3;
            if ([r0 respondsToSelector:@selector(bundleManager:failedCopyFromAuxiliaryCache:intoAbsolutePath:withError:), r3, r4, r5] != 0x0) {
                    [*(r21 + 0x38) bundleManager:r21 failedCopyFromAuxiliaryCache:r20 intoAbsolutePath:r20 withError:r19];
            }
    }
    return;
}

-(void *)bundleChecksums {
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            r0 = [r0 checksums];
    }
    return r0;
}

-(void *)bundleChecksumsWithVersions {
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            r0 = [r0 checksumsWithVersions];
    }
    return r0;
}

-(bool)remoteBundle:(void *)arg2 shouldRetryDownload:(void *)arg3 forError:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0) {
            r19 = r4;
            r20 = r3;
            if ([r0 respondsToSelector:@selector(bundleManager:shouldRetryDownload:forError:), r3, r4] != 0x0) {
                    r0 = *(r21 + 0x38);
                    r0 = [r0 bundleManager:r21 shouldRetryDownload:r20 forError:r19];
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)newBundleChecksums {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 checksums];
    }
    return r0;
}

-(void *)newBundleChecksumsWithVersions {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 checksumsWithVersions];
    }
    return r0;
}

-(void *)newFilesInActiveBundle {
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            r0 = [r0 bundleNewFiles];
    }
    return r0;
}

-(void *)newFilesInNewBundle {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 bundleNewFiles];
    }
    return r0;
}

-(void *)newRemainingFilesToDownload {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 remainingFileNamesToDownload];
    }
    return r0;
}

-(long long)newBundleTotalDownloadSize {
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 totalDownloadSize];
    }
    return r0;
}

-(void *)getNewResourcePath:(void *)arg2 {
    r2 = arg2;
    r0 = *(self + 0x28);
    if (r0 != 0x0) {
            r0 = [r0 getResourcePath:r2];
    }
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    *(self + 0x38) = arg2;
    return;
}

-(void *)delegate {
    r0 = *(self + 0x38);
    return r0;
}

-(bool)ready {
    r0 = *(int8_t *)(self + 0x51);
    return r0;
}

@end