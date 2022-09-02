@implementation TR_DDFileLogger

-(void *)init {
    r20 = [[TR_DDLogFileManagerDefault alloc] init];
    r19 = [self initWithLogFileManager:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithLogFileManager:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r20->_maximumFileSize = 0x100000;
            r20->_rollingFrequency = 0x40f5180000000000;
            *(int8_t *)(int64_t *)&r20->_automaticallyAppendNewlineForCustomFormatters = 0x1;
            objc_storeStrong((int64_t *)&r20->logFileManager, r21);
            r21 = [TR_DDLogFileFormatterDefault new];
            [r20 setLogFormatter:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileHandle));
    [*(r19 + r20) synchronizeFile];
    [*(r19 + r20) closeFile];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileVnode));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            dispatch_source_cancel(r0);
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_rollingTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            dispatch_source_cancel(r0);
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)maximumFileSize {
    r0 = objc_retainBlock(&var_80);
    r19 = [[TR_DDLog loggingQueue] retain];
    [r0 retain];
    dispatch_sync(r19, &var_B0);
    [r19 release];
    [r0 release];
    [r20 release];
    _Block_object_dispose(&saved_fp - 0x50, 0x8);
    r0 = r19;
    return r0;
}

-(void)setMaximumFileSize:(unsigned long long)arg2 {
    r0 = objc_retainBlock(&var_60);
    r21 = [[TR_DDLog loggingQueue] retain];
    [r0 retain];
    dispatch_async(r21, &var_90);
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(double)rollingFrequency {
    r0 = objc_retainBlock(&var_80);
    r19 = [[TR_DDLog loggingQueue] retain];
    [r0 retain];
    dispatch_sync(r19, &var_B0);
    [r19 release];
    [r0 release];
    [r20 release];
    r0 = _Block_object_dispose(&saved_fp - 0x50, 0x8);
    return r0;
}

-(void)setRollingFrequency:(double)arg2 {
    r0 = objc_retainBlock(&var_60);
    r21 = [[TR_DDLog loggingQueue] retain];
    [r0 retain];
    dispatch_async(r21, &var_90);
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)scheduleTimerToRollLogFileDueToAge {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rollingTimer));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            dispatch_source_cancel(r0);
            r0 = *(r19 + r23);
            *(r19 + r23) = 0x0;
            [r0 release];
    }
    r0 = r19->_currentLogFileInfo;
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_rollingFrequency));
            d0 = *(r19 + r21);
            if (d0 >= 0x0) {
                    r0 = [r0 creationDate];
                    r0 = [r0 retain];
                    [r0 timeIntervalSinceReferenceDate];
                    [[NSDate dateWithTimeIntervalSinceReferenceDate:r2] retain];
                    r22 = [[r19 loggerQueue] retain];
                    r0 = *__dispatch_source_type_timer;
                    r0 = dispatch_source_create(r0, 0x0, 0x0, r22);
                    r8 = *(r19 + r23);
                    *(r19 + r23) = r0;
                    [r8 release];
                    [r22 release];
                    dispatch_source_set_event_handler(*(r19 + r23), &var_58);
                    [r21 timeIntervalSinceNow];
                    asm { fcvtzu     x1, d0 };
                    dispatch_source_set_timer(*(r19 + r23), dispatch_time(0x0, r1), 0xffffffffffffffff, 0x1);
                    dispatch_resume(*(r19 + r23));
                    [r21 release];
                    [r20 release];
            }
    }
    return;
}

-(void)rollLogFile {
    [self rollLogFileWithCompletionBlock:0x0];
    return;
}

-(void)rollLogFileWithCompletionBlock:(void *)arg2 {
    r31 = r31 - 0xb0;
    var_40 = d9;
    stack[-72] = d8;
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
    r19 = [[arg2 retain] retain];
    var_48 = r19;
    r0 = objc_retainBlock(&var_70);
    r20 = r0;
    if ([r21 isOnInternalLoggerQueue] != 0x0) {
            (*(r20 + 0x10))(r20);
    }
    else {
            r22 = [[TR_DDLog loggingQueue] retain];
            var_78 = [r20 retain];
            dispatch_async(r22, &var_A0);
            [var_78 release];
            [r22 release];
    }
    [r20 release];
    [var_48 release];
    [r19 release];
    return;
}

-(void)maybeRollLogFileDueToAge {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_rollingFrequency));
    d0 = *(r19 + r20);
    if (d0 > 0x0) {
            [r19->_currentLogFileInfo age];
            if (d0 < *(r19 + r20)) {
                    r1 = @selector(scheduleTimerToRollLogFileDueToAge);
            }
            else {
                    r1 = @selector(rollLogFileNow);
            }
    }
    else {
            r1 = @selector(scheduleTimerToRollLogFileDueToAge);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)maybeRollLogFileDueToSize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_maximumFileSize));
    if (*(r19 + r20) != 0x0 && [r19->_currentLogFileHandle offsetInFile] >= *(r19 + r20)) {
            [r19 rollLogFileNow];
    }
    return;
}

-(void)rollLogFileNow {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileHandle));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 synchronizeFile];
            [*(r19 + r20) closeFile];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileInfo));
            [*(r19 + r23) setIsArchived:0x1];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(logFileManager));
            if ([*(r19 + r21) respondsToSelector:@selector(didRollAndArchiveLogFile:)] != 0x0) {
                    r21 = *(r19 + r21);
                    r22 = [[*(r19 + r23) filePath] retain];
                    [r21 didRollAndArchiveLogFile:r22];
                    [r22 release];
            }
            r0 = *(r19 + r23);
            *(r19 + r23) = 0x0;
            [r0 release];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileVnode));
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    dispatch_source_cancel(r0);
                    r0 = *(r19 + r20);
                    *(r19 + r20) = 0x0;
                    [r0 release];
            }
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_rollingTimer));
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    dispatch_source_cancel(r0);
                    r0 = *(r19 + r20);
                    *(r19 + r20) = 0x0;
                    [r0 release];
            }
    }
    return;
}

-(void *)currentLogFileHandle {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileHandle));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [r19 currentLogFileInfo];
            r0 = [r0 retain];
            r21 = r0;
            r20 = [[r0 filePath] retain];
            [r21 release];
            r0 = [NSFileHandle fileHandleForWritingAtPath:r20];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [*(r19 + r23) seekToEndOfFile];
            if (*(r19 + r23) != 0x0) {
                    [r19 scheduleTimerToRollLogFileDueToAge];
                    [*(r19 + r23) fileDescriptor];
                    asm { sxtw       x21, w0 };
                    r22 = [[r19 loggerQueue] retain];
                    r0 = *__dispatch_source_type_vnode;
                    r0 = dispatch_source_create(r0, r21, 0x21, r22);
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentLogFileVnode));
                    r8 = *(r19 + r21);
                    *(r19 + r21) = r0;
                    [r8 release];
                    [r22 release];
                    dispatch_source_set_event_handler(*(r19 + r21), &var_58);
                    dispatch_resume(*(r19 + r21));
            }
            [r20 release];
            r0 = *(r19 + r23);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)currentLogFileInfo {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&r21->_currentLogFileInfo;
    r0 = *r19;
    if (r0 == 0x0) {
            r27 = sign_extend_64(*(int32_t *)ivar_offset(logFileManager));
            r0 = *(r21 + r27);
            r0 = [r0 sortedLogFileInfos];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r20 objectAtIndexedSubscript:0x0];
                    r25 = r0;
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (([r0 isArchived] & 0x1) == 0x0) {
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_maximumFileSize));
                            if (*(r21 + r23) != 0x0 && [r22 fileSize] >= *(r21 + r23)) {
                                    r28 = 0x1;
                            }
                            else {
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rollingFrequency));
                                    d0 = *(r21 + r23);
                                    if (d0 > 0x0) {
                                            [r22 age];
                                            if (d0 < *(r21 + r23)) {
                                                    r28 = 0x0;
                                            }
                                            else {
                                                    r28 = 0x1;
                                            }
                                    }
                                    else {
                                            r28 = 0x0;
                                    }
                            }
                    }
                    else {
                            r28 = 0x0;
                    }
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_doNotReuseLogFiles));
                    if (*(int8_t *)(r21 + r23) != 0x0) {
                            if ((r28 & 0x1) != 0x0) {
                                    [r22 setIsArchived:0x1];
                                    if ([*(r21 + r27) respondsToSelector:@selector(didArchiveLogFile:)] != 0x0) {
                                            r24 = *(r21 + r27);
                                            r0 = [r22 filePath];
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            [r24 didArchiveLogFile:r25];
                                            [r25 release];
                                    }
                            }
                    }
                    else {
                            if (sub_1003f2420() != 0x0) {
                                    var_58 = r25;
                                    r0 = [r22 fileAttributes];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r0 = [r0 objectForKeyedSubscript:**_NSFileProtectionKey];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r26 release];
                                    if ([r25 length] != 0x0 && ([r25 isEqualToString:r2] & 0x1) == 0x0) {
                                            r28 = r28 | [r25 isEqualToString:r2] ^ 0x1;
                                    }
                                    [r25 release];
                                    r25 = var_58;
                            }
                            if (*(int8_t *)(r21 + r23) == 0x0 && ((r28 | [r22 isArchived]) & 0x1) == 0x0) {
                                    objc_storeStrong(r19, r25);
                            }
                            else {
                                    if (r28 != 0x0) {
                                            [r22 setIsArchived:0x1];
                                            if ([*(r21 + r27) respondsToSelector:@selector(didArchiveLogFile:)] != 0x0) {
                                                    r24 = *(r21 + r27);
                                                    r0 = [r22 filePath];
                                                    r29 = r29;
                                                    r25 = [r0 retain];
                                                    [r24 didArchiveLogFile:r25];
                                                    [r25 release];
                                            }
                                    }
                            }
                    }
                    [r22 release];
            }
            if (*r19 == 0x0) {
                    r21 = [[*(r21 + r27) createNewLogFile] retain];
                    r0 = [TR_DDLogFileInfo alloc];
                    r0 = [r0 initWithFilePath:r21];
                    r8 = *r19;
                    *r19 = r0;
                    [r8 release];
                    [r21 release];
            }
            [r20 release];
            r0 = *r19;
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)willRemoveLogger {
    [self rollLogFileNow];
    return;
}

-(void)logMessage:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r19 = [arg2 retain];
    r20 = [r19->_message retain];
    r0 = r21->_logFormatter;
    if (r0 != 0x0) {
            r0 = [r0 formatLogMessage:r19];
            r29 = r29;
            r22 = [r0 retain];
            [r20 release];
            r8 = r19->_message;
            if (r22 != r8) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            r20 = r22;
            if (r20 != 0x0) {
                    if (r8 == 0x0 || *(int8_t *)(int64_t *)&r21->_automaticallyAppendNewlineForCustomFormatters != 0x0) {
                            if (([r20 hasSuffix:r2] & 0x1) == 0x0) {
                                    r0 = [r20 stringByAppendingString:@"\n"];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r20 release];
                                    r20 = r22;
                            }
                    }
                    r22 = [[r20 dataUsingEncoding:0x4] retain];
                    r0 = [r21 currentLogFileHandle];
                    r0 = [r0 retain];
                    [r0 writeData:r22];
                    [r0 release];
                    [r21 maybeRollLogFileDueToSize];
                    [r22 release];
                    [r20 release];
            }
    }
    else {
            r8 = 0x0;
            if (r20 != 0x0) {
                    if (r8 == 0x0 || *(int8_t *)(int64_t *)&r21->_automaticallyAppendNewlineForCustomFormatters != 0x0) {
                            if (([r20 hasSuffix:r2] & 0x1) == 0x0) {
                                    r0 = [r20 stringByAppendingString:@"\n"];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r20 release];
                                    r20 = r22;
                            }
                    }
                    r22 = [[r20 dataUsingEncoding:0x4] retain];
                    r0 = [r21 currentLogFileHandle];
                    r0 = [r0 retain];
                    [r0 writeData:r22];
                    [r0 release];
                    [r21 maybeRollLogFileDueToSize];
                    [r22 release];
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void *)loggerName {
    objc_retainAutorelease(@"cocoa.lumberjack.fileLogger");
    return @"cocoa.lumberjack.fileLogger";
}

-(bool)doNotReuseLogFiles {
    r0 = *(int8_t *)(int64_t *)&self->_doNotReuseLogFiles & 0x1;
    return r0;
}

-(void *)logFileManager {
    r0 = self->logFileManager;
    return r0;
}

-(void)setDoNotReuseLogFiles:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_doNotReuseLogFiles = arg2;
    return;
}

-(bool)automaticallyAppendNewlineForCustomFormatters {
    r0 = *(int8_t *)(int64_t *)&self->_automaticallyAppendNewlineForCustomFormatters;
    return r0;
}

-(void)setAutomaticallyAppendNewlineForCustomFormatters:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_automaticallyAppendNewlineForCustomFormatters = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->logFileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_rollingTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_currentLogFileVnode, 0x0);
    objc_storeStrong((int64_t *)&self->_currentLogFileHandle, 0x0);
    objc_storeStrong((int64_t *)&self->_currentLogFileInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_logFileManager, 0x0);
    return;
}

@end