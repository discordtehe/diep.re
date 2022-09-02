@implementation VungleHTTPLogSender

-(void)start {
    [self setEnabled:0x1];
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    return;
}

-(void *)initWithRemoteURL:(void *)arg2 logLineValueTransformer:(void *)arg3 flushTimeInterval:(double)arg4 defaults:(void *)arg5 enabled:(bool)arg6 {
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = arg5;
    r25 = arg4;
    r24 = arg3;
    r26 = arg2;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r22 = [r25 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r23 + 0x10, r26);
            objc_storeStrong(r23 + 0x18, r24);
            *(r23 + 0x20) = d8;
            r24 = r23 + 0x28;
            objc_storeStrong(r24, r25);
            r0 = *(r23 + 0x28);
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    if (r21 != 0x0) {
                            [r23 start];
                    }
            }
            else {
                    r25 = *r24;
                    r26 = [@(0x0) retain];
                    [r25 setObject:r26 forKey:@"vungleLoggerBatchID"];
                    [r26 release];
                    [*r24 synchronize];
                    if (r21 != 0x0) {
                            [r23 start];
                    }
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)pause {
    [self setEnabled:0x0];
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    return;
}

-(void)loggerDidReachMaximumEntriesInLogFile:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 wifiAvailable];
    [r0 release];
    if (r21 != 0x0) {
            [r19 processStoredBatchLogs];
    }
    return;
}

-(void)sendLogs:(void *)arg2 fileURL:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21 isEnabled] != 0x0) {
            r0 = [r21 defaults];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKey:@"vungleLoggerBatchID"];
            r0 = [r0 retain];
            r24 = [r0 integerValue];
            [r0 release];
            [r22 release];
            r21 = [[r21 remoteURL] retain];
            var_38 = [r20 retain];
            r22 = [[VungleHTTPLogSender createUploadOpForLogEntries:r19 batchID:r24 remoteURL:r21 completionBlock:&var_58] retain];
            [r21 release];
            r0 = [VNGNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 sendVungleOperation:r22];
            [r0 release];
            [r22 release];
            [var_38 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)processStoredBatchLogs {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1f0;
    var_1F8 = self;
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 localTempLogURL];
    r0 = [r0 retain];
    r19 = [[r0 URLByDeletingLastPathComponent] retain];
    [r0 release];
    [r20 release];
    r20 = [[NSFileManager defaultManager] retain];
    r2 = **_NSURLNameKey;
    r21 = [[NSArray arrayWithObjects:r2] retain];
    var_228 = r19;
    r22 = [[r20 enumeratorAtURL:r19 includingPropertiesForKeys:r21 options:0x1 errorHandler:0x0] retain];
    [r21 release];
    [r20 release];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r24 = [r0 retain];
    var_190 = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_210 = r0;
    var_220 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r20 = r0;
            r19 = *var_190;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_190 != r19) {
                                    objc_enumerationMutation(var_210);
                            }
                            r23 = **_NSURLIsDirectoryKey;
                            r22 = *(var_198 + r28 * 0x8);
                            [r22 getResourceValue:&var_1A8 forKey:r23 error:0x0];
                            r0 = [var_1A8 retain];
                            r21 = r0;
                            if (([r0 boolValue] & 0x1) == 0x0) {
                                    [r24 addObject:r2];
                            }
                            [r21 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r20);
                    r0 = objc_msgSend(var_210, var_220);
                    r20 = r0;
            } while (r0 != 0x0);
    }
    [var_210 release];
    var_1E0 = q0;
    r0 = [r24 retain];
    var_218 = r0;
    r0 = objc_msgSend(r0, var_220);
    r19 = var_1F8;
    if (r0 != 0x0) {
            r24 = r0;
            var_200 = *var_1E0;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_1E0 != var_200) {
                                    objc_enumerationMutation(var_218);
                            }
                            r22 = *(var_1E8 + r20 * 0x8);
                            r23 = [[r22 path] retain];
                            r19 = [[r19 logLineValueTransfomer] retain];
                            r0 = [VungleHTTPLogSender processLogLinesAtPath:r23 withTransformer:r19];
                            r29 = r29;
                            r21 = [r0 retain];
                            r0 = r19;
                            r19 = var_1F8;
                            [r0 release];
                            [r23 release];
                            if ([r21 count] != 0x0) {
                                    [r19 sendLogs:r2 fileURL:r3];
                            }
                            [r21 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r0 = objc_msgSend(var_218, var_220);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_218 release];
    [var_218 release];
    [var_210 release];
    [var_228 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

+(void *)processLogLinesAtPath:(void *)arg2 withTransformer:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [objc_alloc() initWithFilePath:r20];
    [r20 release];
    r20 = [[NSMutableArray array] retain];
    var_30 = r21;
    r21 = [r21 retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r19 enumerateLinesUsingBlock:&var_50];
    r22 = [r20 copy];
    [var_28 release];
    [var_30 release];
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)remoteURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)logLineValueTransfomer {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setRemoteURL:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

+(void *)createUploadOpForLogEntries:(void *)arg2 batchID:(long long)arg3 remoteURL:(void *)arg4 completionBlock:(void *)arg5 {
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
    r21 = arg3;
    var_98 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    var_90 = r0;
    r26 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 valueForKey:@"vungleLoggerUUID"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"";
            }
    }
    var_58 = **___stack_chk_guard;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    r0 = [NSNumber numberWithInteger:r21];
    r0 = [r0 retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    [r0 release];
    r0 = @class(VNGNetworkManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r25 = [[r0 vungleUploadOperationWithRemoteURL:r26 content:r23 responseBlock:r27] retain];
    [r27 release];
    [r26 release];
    [r0 release];
    [r25 setMaxAttempts:0x8];
    [r25 setIsInternal:0x1];
    r0 = @class(VNGNetworkManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 publisherInformation];
    r0 = [r0 retain];
    r27 = [[r0 pluginName] retain];
    [r25 setPluginName:r27];
    [r27 release];
    [r0 release];
    [r19 release];
    r19 = [[NSUserDefaults standardUserDefaults] retain];
    r21 = [[NSNumber numberWithInteger:var_98] retain];
    [r19 setObject:r21 forKey:@"vungleLoggerBatchID"];
    [r21 release];
    [r19 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r22 release];
    [var_90 release];
    [r0 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setLogLineValueTransfomer:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void)setFlushInterval:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(double)flushInterval {
    r0 = self;
    return r0;
}

-(void *)defaults {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setDefaults:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(bool)isEnabled {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end