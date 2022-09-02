@implementation VungleLogger

+(void *)sharedLogger {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011da938 != -0x1) {
            dispatch_once(0x1011da938, &var_28);
    }
    r0 = *0x1011da930;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)kickstartWithError:(void * *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (([self setupLogDirectoryStructure] & 0x1) != 0x0) {
            if ([r19 numberOfEntries] == -0x1) {
                    r21 = [[r19 name] retain];
                    r0 = [r19 logFileURLWithLogName:r21];
                    r0 = [r0 retain];
                    r20 = [[r0 path] retain];
                    [r0 release];
                    [r21 release];
                    [objc_alloc() initWithFilePath:r20];
                    objc_initWeak(&stack[-80], r19);
                    [r19 setNumberOfEntries:0x0];
                    objc_copyWeak(&var_68 + 0x20, &stack[-80]);
                    [r21 enumerateLinesUsingBlock:&var_68];
                    objc_destroyWeak(&var_68 + 0x20);
                    objc_destroyWeak(&stack[-80]);
                    [r21 release];
                    [r20 release];
            }
            r0 = 0x1;
    }
    else {
            if (r20 != 0x0) {
                    r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x30 forKeys:&var_38 count:0x1] retain];
                    *r20 = [[[NSError errorWithDomain:@"com.vungle.logger" code:0xffffffffffffb580 userInfo:r21] retain] autorelease];
                    [r21 release];
            }
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)logMessage:(void *)arg2 level:(long long)arg3 context:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r0 = [r22 defaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 boolForKey:r2] & 0x1) != 0x0) {
            r0 = [r22 defaults];
            r0 = [r0 retain];
            r25 = [r0 boolForKey:r2];
            [r0 release];
            [r23 release];
            if (r25 != 0x0 && [r22 loggingLevel] <= r21) {
                    objc_initWeak(&stack[-88], r22);
                    [[r22 loggerQueue] retain];
                    objc_copyWeak(&var_90 + 0x38, &stack[-88]);
                    var_68 = [r19 retain];
                    var_60 = [r20 retain];
                    dispatch_async(r24, &var_90);
                    [r24 release];
                    [var_60 release];
                    [var_68 release];
                    objc_destroyWeak(&var_90 + 0x38);
                    objc_destroyWeak(&stack[-88]);
            }
    }
    else {
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setupLoggerWithLoggingLevel:(long long)arg2 maximumEntries:(unsigned long long)arg3 name:(void *)arg4 bufferSize:(unsigned long long)arg5 defaults:(void *)arg6 {
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
    r19 = self;
    r24 = [arg4 retain];
    r20 = [arg6 retain];
    [r19 setLoggingLevel:arg2];
    [r19 setMaximumEntries:arg3];
    [r19 setName:r24];
    [r24 release];
    [r19 setNumberOfEntries:0xffffffffffffffff];
    [r19 setMessageBufferSize:arg5];
    r21 = objc_alloc();
    r21 = [r21 initWithCapacity:[r19 messageBufferSize]];
    [r19 setMessageBuffer:r21];
    [r21 release];
    [r19 setIsPaused:0x0];
    [r19 setDefaults:r20];
    [r20 release];
    [r19 setEventID:@""];
    r0 = [r19 defaults];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 defaults];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 valueForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setLoggingUUID:r21];
            [r21 release];
    }
    else {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r22 = [[r0 UUIDString] retain];
            [r19 setLoggingUUID:r22];
            [r22 release];
            [r0 release];
            r21 = [[r19 defaults] retain];
            r22 = [[r19 loggingUUID] retain];
            [r21 setValue:r22 forKey:@"vungleLoggerUUID"];
            [r22 release];
            [r21 release];
            r0 = [r19 defaults];
            r0 = [r0 retain];
            [r0 setBool:0x0 forKey:@"vungleLoggerEnabled"];
            [r0 release];
            r0 = [r19 defaults];
            r0 = [r0 retain];
            [r0 setBool:0x0 forKey:@"vungleAdTrackingEnabled"];
            [r0 release];
            r0 = [r19 defaults];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 synchronize];
    }
    [r20 release];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 bundleIdentifier] retain];
    [r19 setBundleID:r21];
    [r21 release];
    [r0 release];
    [r19 performSelectorOnMainThread:@selector(setupSerialQueue) withObject:0x0 waitUntilDone:0x1];
    return;
}

-(void)clearLogWithCompletionBlock:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self loggerQueue] retain];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r19;
    [r19 retain];
    dispatch_async(r21, &var_58);
    [r21 release];
    [var_38 release];
    [r19 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)clearTempLog:(void *)arg2 WithCompletionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self loggerQueue] retain];
    var_30 = r21;
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(r20, &var_50);
    [r20 release];
    [var_28 release];
    [var_30 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)flush {
    r20 = [[self messageBuffer] retain];
    [self flushBuffer:r20];
    [r20 release];
    return;
}

-(unsigned long long)entryCount {
    r0 = [self numberOfEntries];
    return r0;
}

-(void *)localLogURL {
    r20 = [[self name] retain];
    r0 = [self logFileURLWithLogName:r20];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)logFileURLWithLogName:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [VungleUtil applicationSupportDirectoryURL];
    r0 = [r0 retain];
    r22 = [[r0 URLByAppendingPathComponent:@"vungle"] retain];
    [r0 release];
    r19 = [[r22 URLByAppendingPathComponent:r21] retain];
    [r21 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)localTempLogURL {
    r20 = [[self name] retain];
    r0 = [self tempLogFileURLWithLogName:r20];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)tempLogFileURLWithLogName:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [VungleUtil applicationSupportDirectoryURL];
    r0 = [r0 retain];
    r20 = @selector(URLByAppendingPathComponent:);
    r21 = [objc_msgSend(r0, r20) retain];
    [r0 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r22 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtas     x23, d0 };
    [r22 release];
    r22 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    r19 = [objc_msgSend(r21, r20) retain];
    [r21 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)moveLogFileToTempAndGenerateNew {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [[self name] retain];
    r19 = [[self tempLogFileURLWithLogName:r22] retain];
    [r22 release];
    r21 = [[self name] retain];
    r20 = [[self logFileURLWithLogName:r21] retain];
    [r21 release];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 moveItemAtURL:r20 toURL:r19 error:0x0];
    [r0 release];
    if (r23 != 0x0) {
            r22 = [[NSFileManager defaultManager] retain];
            r23 = [[r20 path] retain];
            r21 = [r22 createFileAtPath:r23 contents:0x0 attributes:0x0];
            [r23 release];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setupSerialQueue {
    r20 = [dispatch_queue_attr_make_with_qos_class(0x0, 0x11, 0x0) retain];
    r0 = dispatch_queue_create("com.vungleSDK.fileManager.queue", r20);
    r8 = *(self + 0x60);
    *(self + 0x60) = r0;
    [r8 release];
    [r20 release];
    return;
}

-(void)flushBuffer:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self loggerQueue] retain];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    dispatch_async(r22, &var_58);
    [r22 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    [r19 release];
    return;
}

-(bool)setupLogDirectoryStructure {
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
    r20 = [[self name] retain];
    r0 = [self logFileURLWithLogName:r20];
    r0 = [r0 retain];
    r19 = [[r0 URLByDeletingLastPathComponent] retain];
    [r0 release];
    [r20 release];
    r24 = [[self name] retain];
    r0 = [self tempLogFileURLWithLogName:r24];
    r0 = [r0 retain];
    r20 = [[r0 URLByDeletingLastPathComponent] retain];
    [r0 release];
    [r24 release];
    r22 = [[self name] retain];
    r21 = [[self logFileURLWithLogName:r22] retain];
    [r22 release];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 createDirectoryAtURL:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
    r24 = [0x0 retain];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 createDirectoryAtURL:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
            r23 = [r24 retain];
            [r24 release];
            [r0 release];
            if (r26 != 0x0) {
                    r25 = [[NSFileManager defaultManager] retain];
                    r0 = [r21 path];
                    r29 = r29;
                    r26 = [r0 retain];
                    r27 = [r25 fileExistsAtPath:r26];
                    [r26 release];
                    [r25 release];
                    if ((r27 & 0x1) == 0x0) {
                            r22 = [[NSFileManager defaultManager] retain];
                            r24 = [[r21 path] retain];
                            r25 = [r22 createFileAtPath:r24 contents:0x0 attributes:0x0];
                            [r24 release];
                            [r22 release];
                            if (r25 != 0x0) {
                                    r22 = 0x1;
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r22 = 0x1;
                    }
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
            r23 = r24;
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void *)eventIDFromAppID:(void *)arg2 {
    r2 = arg2;
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
    if (r2 != 0x0) {
            r0 = [r2 stringByReplacingOccurrencesOfString:@"$0$" withString:@""];
            r0 = [r0 retain];
            r19 = r0;
            r20 = [[r0 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x0 error:0x0];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r22 = [[r21 objectForKey:r2] retain];
            }
            else {
                    r22 = @"";
                    [r22 retain];
            }
            [r23 release];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    else {
            r22 = @"";
            [r22 retain];
    }
    r0 = [r22 autorelease];
    return r0;
}

-(long long)loggingLevel {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setLoggingLevel:(long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(unsigned long long)maximumEntries {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setMaximumEntries:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void *)userAgent {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setUserAgent:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x28);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x28, arg2);
    return;
}

-(bool)isPaused {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)setIsPaused:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)eventID {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setEventID:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(unsigned long long)numberOfEntries {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setNumberOfEntries:(unsigned long long)arg2 {
    *(self + 0x38) = arg2;
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, 0x40, 0x0);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)loggingUUID {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setLoggingUUID:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)bundleID {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setBundleID:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)messageBuffer {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setMessageBuffer:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)loggerQueue {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setLoggerQueue:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(unsigned long long)messageBufferSize {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setMessageBufferSize:(unsigned long long)arg2 {
    *(self + 0x68) = arg2;
    return;
}

-(void *)defaults {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setDefaults:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_destroyWeak(self + 0x28);
    objc_storeStrong(self + 0x20, 0x0);
    return;
}

@end