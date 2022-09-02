@implementation TR_DDLogFileManagerDefault

-(void *)init {
    r0 = [self initWithLogsDirectory:0x0];
    return r0;
}

-(void *)initWithLogsDirectory:(void *)arg2 {
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
    if (r20 != 0x0) {
            r20->_maximumNumberOfLogFiles = 0x5;
            r20->_logFilesDiskQuota = 0x1400000;
            if (r19 != 0x0) {
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_logsDirectory));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    r0 = r8;
            }
            else {
                    r0 = [r20 defaultLogsDirectory];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_logsDirectory));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = r21;
            }
            [r0 release];
            r21 = [NSStringFromSelector(@selector(maximumNumberOfLogFiles)) retain];
            [r20 addObserver:r20 forKeyPath:r21 options:0x3 context:0x0];
            [r21 release];
            r21 = [NSStringFromSelector(@selector(logFilesDiskQuota)) retain];
            [r20 addObserver:r20 forKeyPath:r21 options:0x3 context:0x0];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)automaticallyNotifiesObserversForKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = [[&var_30 super] automaticallyNotifiesObserversForKey:r19];
            r20 = r0;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithLogsDirectory:(void *)arg2 defaultFileProtectionLevel:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = [arg2 retain];
    r20 = [r19 retain];
    r21 = [self initWithLogsDirectory:r22];
    [r22 release];
    if (r21 != 0x0) {
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    if ([r20 isEqualToString:r2] != 0x0) {
                            objc_storeStrong((int64_t *)&r21->_defaultFileProtectionLevel, r19);
                    }
            }
            else {
                    objc_storeStrong((int64_t *)&r21->_defaultFileProtectionLevel, r19);
            }
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r21 = [NSStringFromSelector(@selector(maximumNumberOfLogFiles)) retain];
    [self removeObserver:self forKeyPath:r21];
    [r21 release];
    r21 = [NSStringFromSelector(@selector(logFilesDiskQuota)) retain];
    [self removeObserver:self forKeyPath:r21];
    [r21 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = **_NSKeyValueChangeOldKey;
    r24 = [arg4 retain];
    r21 = [[arg4 objectForKeyedSubscript:r21] retain];
    r0 = [arg4 objectForKeyedSubscript:**_NSKeyValueChangeNewKey];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (([r21 isEqual:r2] & 0x1) == 0x0) {
            r0 = NSStringFromSelector(@selector(maximumNumberOfLogFiles));
            r29 = r29;
            r23 = [r0 retain];
            if ([r19 isEqualToString:r2] != 0x0) {
                    [r23 release];
                    r0 = [TR_DDLog loggingQueue];
                    r0 = [r0 retain];
                    dispatch_async(r0, &var_68);
                    [r23 release];
            }
            else {
                    r24 = @selector(isEqualToString:);
                    r0 = NSStringFromSelector(@selector(logFilesDiskQuota));
                    r29 = r29;
                    r25 = [r0 retain];
                    r24 = objc_msgSend(r19, r24);
                    [r25 release];
                    [r23 release];
                    if (r24 != 0x0) {
                            r0 = [TR_DDLog loggingQueue];
                            r0 = [r0 retain];
                            dispatch_async(r0, &var_68);
                            [r23 release];
                    }
            }
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)defaultLogsDirectory {
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r21 = [[r0 stringByAppendingPathComponent:@"Logs"] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)logsDirectory {
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
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_logsDirectory));
    r22 = [r0 fileExistsAtPath:*(r19 + r23)];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r22 = [r0 createDirectoryAtPath:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
            r20 = [0x0 retain];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    NSLog(@"DDFileLogManagerDefault: Error creating logsDirectory: %@", @selector(createDirectoryAtPath:withIntermediateDirectories:attributes:error:));
            }
            [r20 release];
    }
    r0 = *(r19 + r23);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)deleteOldLogFiles {
    var_50 = r28;
    stack[-88] = r27;
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
    r0 = [self sortedLogFileInfos];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r22 = [self logFilesDiskQuota];
    r20 = [self maximumNumberOfLogFiles];
    if (r22 == 0x0 || [r19 count] == 0x0) goto loc_1003f0fb8;

loc_1003f0f4c:
    r27 = 0x0;
    r21 = 0x0;
    goto loc_1003f0f68;

loc_1003f0f68:
    r0 = [r19 objectAtIndexedSubscript:r21];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 fileSize] + r27;
    [r0 release];
    if (r27 > r22) goto loc_1003f0fbc;

loc_1003f0fa0:
    r21 = r21 + 0x1;
    if (r21 < [r19 count]) goto loc_1003f0f68;

loc_1003f0fb8:
    r21 = 0x7fffffffffffffff;
    goto loc_1003f0fbc;

loc_1003f0fbc:
    if (r20 != 0x0 && (r21 == 0x7fffffffffffffff || r21 >= r20)) {
            if (r20 != 0x7fffffffffffffff) {
                    if (r20 < [r19 count]) {
                            do {
                                    r25 = @selector(count);
                                    r26 = [[r19 objectAtIndexedSubscript:r20] retain];
                                    r27 = [[NSFileManager defaultManager] retain];
                                    r0 = [r26 filePath];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r27 removeItemAtPath:r28 error:0x0];
                                    [r28 release];
                                    [r27 release];
                                    [r26 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < objc_msgSend(r19, r25));
                    }
            }
    }
    else {
            r20 = r21;
            if (r21 != 0x0) {
                    if (r20 != 0x7fffffffffffffff) {
                            if (r20 < [r19 count]) {
                                    do {
                                            r25 = @selector(count);
                                            r26 = [[r19 objectAtIndexedSubscript:r20] retain];
                                            r27 = [[NSFileManager defaultManager] retain];
                                            r0 = [r26 filePath];
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            [r27 removeItemAtPath:r28 error:0x0];
                                            [r28 release];
                                            [r27 release];
                                            [r26 release];
                                            r20 = r20 + 0x1;
                                    } while (r20 < objc_msgSend(r19, r25));
                            }
                    }
            }
            else {
                    if ([r19 count] != 0x0) {
                            r0 = [r19 objectAtIndexedSubscript:0x0];
                            r29 = r29;
                            r0 = [r0 retain];
                            r20 = [r0 isArchived] ^ 0x1;
                            [r0 release];
                    }
                    else {
                            r20 = 0x0;
                    }
                    if (r20 < [r19 count]) {
                            do {
                                    r25 = @selector(count);
                                    r26 = [[r19 objectAtIndexedSubscript:r20] retain];
                                    r27 = [[NSFileManager defaultManager] retain];
                                    r0 = [r26 filePath];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r27 removeItemAtPath:r28 error:0x0];
                                    [r28 release];
                                    [r27 release];
                                    [r26 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < objc_msgSend(r19, r25));
                    }
            }
    }
    [r19 release];
    return;
}

-(void *)logFileDateFormatter {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSThread currentThread];
    r0 = [r0 retain];
    r19 = [[r0 threadDictionary] retain];
    [r0 release];
    r20 = [[NSString stringWithFormat:@"logFileDateFormatter.%@"] retain];
    r0 = [r19 objectForKeyedSubscript:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r21 = [[NSDateFormatter alloc] init];
            r22 = [[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"] retain];
            [r21 setLocale:r22];
            [r22 release];
            [r21 setDateFormat:@"yyyy'-'MM'-'dd' 'HH'-'mm'"];
            r22 = [[NSTimeZone timeZoneForSecondsFromGMT:0x0] retain];
            [r21 setTimeZone:r22];
            [r22 release];
            [r19 setObject:r21 forKeyedSubscript:r20];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)isLogFile:(void *)arg2 {
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 applicationName];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r19 hasPrefix:r20];
    [r19 hasSuffix:r2];
    if (r21 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r23 = @selector(length);
            r24 = objc_msgSend(r19, r23);
            r24 = r24 - objc_msgSend(r20, r23);
            r24 = r24 - objc_msgSend(@".log", r23);
            if (r24 >= 0x11) {
                    r0 = [r19 substringWithRange:[r20 length]];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 componentsSeparatedByString:@" "];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 count] != 0x3 && [r24 count] != 0x4) {
                            r26 = 0x0;
                    }
                    else {
                            r27 = [[r24 objectAtIndexedSubscript:0x1] retain];
                            r26 = [[r24 objectAtIndexedSubscript:0x2] retain];
                            r25 = [[NSString stringWithFormat:@"%@ %@"] retain];
                            [r26 release];
                            [r27 release];
                            r0 = [r22 logFileDateFormatter];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 dateFromString:r25];
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r26 = 0x1;
                                    }
                            }
                            [r0 release];
                            [r22 release];
                            [r25 release];
                    }
                    [r24 release];
                    [r23 release];
            }
            else {
                    r26 = 0x0;
            }
    }
    else {
            r26 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21 & r26;
    return r0;
}

-(void *)unsortedLogFilePaths {
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
    r20 = [[self logsDirectory] retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    var_120 = r20;
    r22 = [[r0 contentsOfDirectoryAtPath:r20 error:0x0] retain];
    [r0 release];
    r0 = [NSMutableArray arrayWithCapacity:[r22 count]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r0 = [r22 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            r28 = *(0x0 + r20 * 0x8);
                            if ([r19 isLogFile:r28] != 0x0) {
                                    r27 = @selector(addObject:);
                                    r0 = [var_120 stringByAppendingPathComponent:r28];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r21, r27);
                                    [r28 release];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r24 = objc_msgSend(r22, var_128);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r22 release];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)unsortedLogFileNames {
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
    r0 = [self unsortedLogFilePaths];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(addObject:);
                            r0 = *(0x0 + r27 * 0x8);
                            r0 = [r0 lastPathComponent];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)unsortedLogFileInfos {
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
    r0 = [self unsortedLogFilePaths];
    r0 = [r0 retain];
    r19 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = @selector(addObject:);
                            r26 = *(0x0 + r21 * 0x8);
                            [[TR_DDLogFileInfo alloc] initWithFilePath:r26];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = objc_msgSend(r20, var_120);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sortedLogFilePaths {
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
    r0 = [self sortedLogFileInfos];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(addObject:);
                            r0 = *(0x0 + r27 * 0x8);
                            r0 = [r0 filePath];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sortedLogFileInfos {
    r0 = [self unsortedLogFileInfos];
    r0 = [r0 retain];
    r20 = [[r0 sortedArrayUsingSelector:@selector(reverseCompareByCreationDate:)] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)sortedLogFileNames {
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
    r0 = [self sortedLogFileInfos];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(addObject:);
                            r0 = *(0x0 + r27 * 0x8);
                            r0 = [r0 fileName];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)newLogFileName {
    r19 = [[self applicationName] retain];
    r20 = [[self logFileDateFormatter] retain];
    r21 = [[NSDate date] retain];
    r22 = [[r20 stringFromDate:r21] retain];
    [r21 release];
    r21 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)applicationName {
    if (*qword_1011d6d98 != -0x1) {
            dispatch_once(0x1011d6d98, 0x100e7b968);
    }
    r0 = *0x1011d6d90;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)createNewLogFile {
    r31 = r31 - 0x100;
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
    r26 = self;
    var_78 = [self newLogFileName];
    r0 = [r26 logsDirectory];
    r29 = &saved_fp;
    var_70 = [r0 retain];
    r21 = 0x1;
    do {
            r25 = [var_78 retain];
            r23 = r25;
            if (r21 >= 0x2) {
                    r24 = [[r25 pathExtension] retain];
                    r22 = [[r25 stringByDeletingPathExtension] retain];
                    [r25 release];
                    r0 = [r22 stringByAppendingFormat:@" %lu"];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 release];
                    if ([r24 length] != 0x0) {
                            r0 = [r23 stringByAppendingPathExtension:r2];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r23 release];
                            r23 = r22;
                    }
                    [r24 release];
            }
            r24 = [[var_70 stringByAppendingPathComponent:r23] retain];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 fileExistsAtPath:r24];
            [r0 release];
            if ((r20 & 0x1) != 0x0) {
                    r21 = r21 + 0x1;
                    r19 = 0x1;
            }
            else {
                    r0 = r26->_defaultFileProtectionLevel;
                    if (r0 == 0x0) {
                            var_D8 = **_NSFileProtectionCompleteUntilFirstUserAuthentication;
                            var_E0 = **_NSFileProtectionCompleteUnlessOpen;
                            r0 = sub_1003f2420();
                            r9 = var_E0;
                            r8 = var_D8;
                            if (r0 != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r0 = r9;
                                    }
                                    else {
                                            r0 = r8;
                                    }
                            }
                    }
                    var_B0 = @selector(dictionaryWithObjects:forKeys:count:);
                    [r0 retain];
                    [objc_msgSend(@class(NSDictionary), var_B0) retain];
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 createFileAtPath:r2 contents:r3 attributes:r4];
                    [r19 release];
                    [r26 deleteOldLogFiles];
                    [r22 release];
                    var_C8 = [r24 retain];
                    [r20 release];
                    r19 = 0x0;
            }
            [r24 release];
            [r23 release];
    } while ((r19 & 0x1) != 0x0);
    var_58 = **___stack_chk_guard;
    [var_70 release];
    [r25 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_C8 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(unsigned long long)maximumNumberOfLogFiles {
    r0 = self->_maximumNumberOfLogFiles;
    return r0;
}

-(void)setMaximumNumberOfLogFiles:(unsigned long long)arg2 {
    self->_maximumNumberOfLogFiles = arg2;
    return;
}

-(unsigned long long)logFilesDiskQuota {
    r0 = self->_logFilesDiskQuota;
    return r0;
}

-(void)setLogFilesDiskQuota:(unsigned long long)arg2 {
    self->_logFilesDiskQuota = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_defaultFileProtectionLevel, 0x0);
    objc_storeStrong((int64_t *)&self->_logsDirectory, 0x0);
    return;
}

@end