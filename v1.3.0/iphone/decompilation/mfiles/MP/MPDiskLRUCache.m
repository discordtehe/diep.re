@implementation MPDiskLRUCache

+(void *)sharedDiskCache {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8410 != -0x1) {
            dispatch_once(0x1011d8410, &var_28);
    }
    r0 = *0x1011d8418;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)removeAllCachedFiles {
    r0 = [self diskIOQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_38);
    [r20 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = dispatch_queue_create("com.mopub.diskCacheIOQueue", 0x0);
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r20 objectAtIndex:0x0];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 stringByAppendingPathComponent:@"com.mopub.diskCache"];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 copy];
                    r8 = *(r19 + 0x10);
                    *(r19 + 0x10) = r0;
                    [r8 release];
                    [r22 release];
                    [r21 release];
                    r0 = [NSFileManager defaultManager];
                    r0 = [r0 retain];
                    r21 = r0;
                    if (([r0 fileExistsAtPath:*(r19 + 0x10)] & 0x1) == 0x0) {
                            [r21 createDirectoryAtPath:*(r19 + 0x10) withIntermediateDirectories:0x1 attributes:0x0 error:0x0];
                    }
                    [r21 release];
            }
            [r19 ensureCacheSizeLimit];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)cachedDataExistsForKey:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self diskIOQueue] retain];
    var_50 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_78);
    [r21 release];
    [var_50 release];
    [r19 release];
    _Block_object_dispose(&var_40, 0x8);
    r0 = r20;
    return r0;
}

-(void *)retrieveDataForKey:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self diskIOQueue] retain];
    var_60 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_88);
    [r21 release];
    [*(&var_50 + 0x28) retain];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)storeData:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[r19 diskIOQueue] retain];
    r0 = [r20 retain];
    r20 = r0;
    var_40 = r0;
    r0 = [r21 retain];
    r21 = r0;
    var_38 = r0;
    dispatch_sync(r22, &var_68);
    [r22 release];
    [r19 numBytesStoredForSizeCheck] + [r21 length];
    [r19 setNumBytesStoredForSizeCheck:r2];
    if ([r19 numBytesStoredForSizeCheck] >= 0xa00000) {
            [r19 ensureCacheSizeLimit];
            [r19 setNumBytesStoredForSizeCheck:r2];
    }
    [var_38 release];
    [var_40 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)ensureCacheSizeLimit {
    r0 = dispatch_get_global_queue(0xffffffffffff8000, 0x0);
    r0 = [r0 retain];
    dispatch_async(r0, &var_38);
    [r20 release];
    return;
}

-(void *)expiredCachedFilesInArray:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r20 = [arg2 retain];
    r19 = [[NSMutableArray array] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSinceReferenceDate];
    [r0 release];
    var_120 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = *(var_128 + r27 * 0x8);
                            [r25 lastModTimestamp];
                            d0 = d8 - d0;
                            if (d0 >= d9) {
                                    [r19 addObject:r2];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)cacheFilesSortedByModDate {
    r31 = r31 - 0x1e0;
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
    r19 = [[NSFileManager defaultManager] retain];
    r20 = [[self diskCachePath] retain];
    r22 = [[r19 contentsOfDirectoryAtPath:r20 error:0x0] retain];
    [r20 release];
    var_1B8 = self;
    r0 = [r19 retain];
    var_1A8 = r0;
    var_E8 = r0;
    var_1D0 = r22;
    r19 = [[r22 sortedArrayUsingComparator:&var_110] retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_1B0 = [r0 retain];
    var_140 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r0;
    var_1C8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r26 = r0;
            r24 = *var_140;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_140 != r24) {
                                    objc_enumerationMutation(var_158);
                            }
                            r22 = *(var_148 + r27 * 0x8);
                            if (([r22 hasPrefix:@"."] & 0x1) == 0x0) {
                                    r19 = @selector(addObject:);
                                    r20 = [objc_alloc() init];
                                    r0 = [var_1B8 diskCachePath];
                                    r0 = [r0 retain];
                                    r22 = [[r0 stringByAppendingPathComponent:r22] retain];
                                    [r20 setFilePath:r22];
                                    [r22 release];
                                    [r0 release];
                                    r22 = [[r20 filePath] retain];
                                    r23 = [[var_1A8 attributesOfItemAtPath:r22 error:0x0] retain];
                                    [r22 release];
                                    r2 = [r23 fileSize];
                                    [r20 setFileSize:r2];
                                    r0 = [r23 fileModificationDate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 timeIntervalSinceReferenceDate];
                                    [r20 setLastModTimestamp:r2];
                                    [r0 release];
                                    objc_msgSend(var_1B0, r19);
                                    [r23 release];
                                    [r20 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r26);
                    r0 = objc_msgSend(var_158, var_1C8);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_158 release];
    [var_158 release];
    [var_E8 release];
    [var_1D0 release];
    [var_1A8 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_1B0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)cacheFilePathForKey:(void *)arg2 {
    r20 = [sub_1004af29c() retain];
    r0 = [self diskCachePath];
    r0 = [r0 retain];
    r21 = [[r0 stringByAppendingPathComponent:r20] retain];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(unsigned long long)sizeOfCacheFilesInArray:(void *)arg2 {
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
    r29 = &saved_fp;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r20 = 0x0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            r20 = [*(var_118 + r27 * 0x8) fileSize] + r20;
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    r24 = [[NSString stringWithFormat:@"Current cache size %qu bytes"] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r21 class]];
    [r23 release];
    [r24 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)diskIOQueue {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setDiskIOQueue:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)diskCachePath {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setDiskCachePath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setNumBytesStoredForSizeCheck:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(unsigned long long)numBytesStoredForSizeCheck {
    r0 = *(self + 0x18);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end