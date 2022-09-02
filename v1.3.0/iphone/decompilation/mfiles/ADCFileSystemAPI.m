@implementation ADCFileSystemAPI

+(void *)saveWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if (([r19 isValid] & 0x1) == 0x0) goto loc_1001c4780;

loc_1001c4640:
    r0 = [r19 data];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001c47dc;

loc_1001c4668:
    r22 = [[r19 data] retain];
    r0 = [r19 fileURL];
    r29 = r29;
    r23 = [r0 retain];
    r21 = [r22 writeToURL:r23 atomically:0x1 encoding:0x4 error:&var_80];
    r20 = [var_80 retain];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            r26 = [r20 code];
            r22 = [[r20 domain] retain];
            r25 = [r20 code];
            r0 = [r20 userInfo];
            r29 = r29;
            r24 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
            [r24 release];
            [r22 release];
    }
    r22 = [[NSNumber numberWithBool:r21] retain];
    r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r22 release];
    goto loc_1001c491c;

loc_1001c491c:
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001c47dc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI saveWithDict:andModuleID:]" line:0x1e withFormat:@"FileSystem.save requires 'data' parameter"];
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c4868;

loc_1001c4868:
    r21 = [r0 retain];
    goto loc_1001c491c;

loc_1001c4780:
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c4868;
}

+(void *)createDirectoryWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if (([r19 isValid] & 0x1) == 0x0) goto loc_1001c4b70;

loc_1001c49e8:
    if (([r19 hasValidDirectory] & 0x1) == 0x0) goto loc_1001c4bcc;

loc_1001c49fc:
    r23 = [[NSFileManager defaultManager] retain];
    r0 = [r19 filepath];
    r29 = r29;
    r24 = [r0 retain];
    r21 = [r23 createDirectoryAtPath:r24 withIntermediateDirectories:0x1 attributes:0x0 error:&var_70];
    r20 = [var_70 retain];
    [r24 release];
    [r23 release];
    if ((r21 & 0x1) == 0x0) {
            r22 = [[r19 filepath] retain];
            r0 = [r20 localizedDescription];
            r29 = r29;
            r24 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI createDirectoryWithDict:andModuleID:]" line:0x40 withFormat:@"Failed to create directory at path: %@ with error: %@"];
            [r24 release];
            [r22 release];
    }
    r22 = [[NSNumber numberWithBool:r21] retain];
    r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r22 release];
    goto loc_1001c4c60;

loc_1001c4c60:
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001c4bcc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI createDirectoryWithDict:andModuleID:]" line:0x39 withFormat:@"Invalid directory"];
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c4c58;

loc_1001c4c58:
    r21 = [r0 retain];
    goto loc_1001c4c60;

loc_1001c4b70:
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c4c58;
}

+(void *)removeWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0xc0;
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
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if (([r19 isValid] & 0x1) != 0x0) {
            r20 = [[NSFileManager defaultManager] retain];
            r0 = [r19 filepath];
            r29 = r29;
            r21 = [r0 retain];
            r23 = [r20 fileExistsAtPath:r21];
            [r21 release];
            if ((r23 & 0x1) != 0x0) {
                    r0 = [r19 fileURL];
                    r0 = [r0 retain];
                    r25 = [[r0 absoluteString] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI removeWithDict:andModuleID:]" line:0x52 withFormat:@"Deleting file with path: %@"];
                    [r25 release];
                    [r0 release];
                    r0 = [r19 fileURL];
                    r29 = r29;
                    r24 = [r0 retain];
                    r23 = [r20 removeItemAtURL:r24 error:&var_90];
                    r21 = [var_90 retain];
                    [r24 release];
                    if (r21 != 0x0) {
                            r25 = [[r21 domain] retain];
                            [r21 code];
                            r0 = [r21 userInfo];
                            r29 = r29;
                            r27 = [r0 retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI removeWithDict:andModuleID:]" line:0x57 withFormat:@"Remove failed with error domain: %@ code: %ld info: %@"];
                            [r27 release];
                            [r25 release];
                    }
                    r23 = [[NSNumber numberWithBool:r23] retain];
                    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r23 release];
            }
            else {
                    r22 = [[r19 filepath] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCFileSystemAPI removeWithDict:andModuleID:]" line:0x4e withFormat:@"Detecting file does not exist at path: %@"];
                    [r22 release];
                    r21 = [@(NO) retain];
                    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            }
            [r21 release];
    }
    else {
            r20 = [@(NO) retain];
            r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)loadWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0xc0;
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
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if ([r19 isValid] != 0x0) {
            r22 = [[r19 fileURL] retain];
            r0 = [NSString stringWithContentsOfURL:r22 encoding:0x4 error:&var_90];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_90 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [r21 domain];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != **_NSCocoaErrorDomain) {
                            [r22 release];
                            r23 = [[r21 domain] retain];
                            [r21 code];
                            r0 = [r21 userInfo];
                            r29 = r29;
                            r25 = [r0 retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI loadWithDict:andModuleID:]" line:0x8d withFormat:@"Load failed with error domain: %@ code: %ld info: %@"];
                            r0 = r25;
                    }
                    else {
                            r26 = [r21 code];
                            [r22 release];
                            if (r26 == 0x104) {
                                    r0 = [r19 fileURL];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 absoluteString];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCFileSystemAPI loadWithDict:andModuleID:]" line:0x8b withFormat:@"No file exists at %@"];
                                    r0 = r24;
                            }
                            else {
                                    r23 = [[r21 domain] retain];
                                    [r21 code];
                                    r0 = [r21 userInfo];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI loadWithDict:andModuleID:]" line:0x8d withFormat:@"Load failed with error domain: %@ code: %ld info: %@"];
                                    r0 = r25;
                            }
                    }
                    [r0 release];
                    [r23 release];
            }
            if (r20 != 0x0) {
                    r0 = @(YES);
                    r29 = r29;
                    r23 = [r0 retain];
                    r8 = @"";
                    if ([r20 isKindOfClass:[NSString class]] != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = @"";
                            }
                            else {
                                    r8 = r20;
                            }
                    }
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            }
            else {
                    r23 = [@(NO) retain];
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            }
            r22 = [r0 retain];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)renameWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0xd0;
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
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if (([r19 isValid] & 0x1) == 0x0) goto loc_1001c60f0;

loc_1001c5e90:
    r0 = [r19 filepath];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001c614c;

loc_1001c5eb8:
    r22 = [[r19 filepath] retain];
    r0 = [NSURL fileURLWithPath:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    if (r20 == 0x0) goto loc_1001c61e4;

loc_1001c5f04:
    r22 = [[ADCDevice sharedDevice] retain];
    r0 = [r19 filepath];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r22 pathIsAllowable:r23];
    [r23 release];
    [r22 release];
    if ((r24 & 0x1) == 0x0) goto loc_1001c629c;

loc_1001c5f68:
    r23 = [[NSFileManager defaultManager] retain];
    r0 = [r19 fileURL];
    r29 = r29;
    r24 = [r0 retain];
    r22 = [r23 moveItemAtURL:r24 toURL:r20 error:&var_A0];
    r21 = [var_A0 retain];
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            r24 = [[r21 domain] retain];
            [r21 code];
            r0 = [r21 userInfo];
            r29 = r29;
            r26 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI renameWithDict:andModuleID:]" line:0xb0 withFormat:@"Rename failed with error domain: %@ code: %ld info: %@"];
            [r26 release];
            [r24 release];
    }
    r23 = [[NSNumber numberWithBool:r22] retain];
    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r23 release];
    goto loc_1001c6358;

loc_1001c6358:
    [r21 release];
    goto loc_1001c6360;

loc_1001c6360:
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001c629c:
    r21 = [[r19 filepath] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI renameWithDict:andModuleID:]" line:0xa9 withFormat:@"Invalid new filepath; it is not within the AdColony media or data directories: %@"];
    [r21 release];
    r21 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c6350;

loc_1001c6350:
    r22 = [r0 retain];
    goto loc_1001c6358;

loc_1001c61e4:
    r21 = [[r19 filepath] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI renameWithDict:andModuleID:]" line:0xa5 withFormat:@"FileSystem.rename could not form a URL from new_filepath: %@"];
    [r21 release];
    r21 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c6350;

loc_1001c614c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI renameWithDict:andModuleID:]" line:0xa0 withFormat:@"New filepath is invalid"];
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c61d8;

loc_1001c61d8:
    r22 = [r0 retain];
    goto loc_1001c6360;

loc_1001c60f0:
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1001c61d8;
}

+(void *)existsWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if ([r19 isValid] != 0x0) {
            r0 = [r19 fileURL];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 absoluteString];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 stringByReplacingOccurrencesOfString:@"file://" withString:@""];
            r0 = [r0 retain];
            r20 = [[r0 stringByReplacingOccurrencesOfString:@"%20" withString:@" "] retain];
            [r0 release];
            [r22 release];
            [r21 release];
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r22 = [r0 fileExistsAtPath:r20];
            [r0 release];
            r23 = [@(YES) retain];
            r22 = [[NSNumber numberWithBool:r22] retain];
            r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r22 release];
            [r23 release];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)crc32WithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r21 = [arg2 retain];
    r19 = [[ADCFilepathContext alloc] initWithDict:r21];
    [r21 release];
    if ([r19 isValid] != 0x0) {
            r21 = [[r19 fileURL] retain];
            r0 = [NSData dataWithContentsOfURL:r21];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            if (r20 != 0x0) {
                    r0 = objc_retainAutorelease(r20);
                    r21 = crc32(0x0, [r0 bytes], [r0 length]);
                    r22 = [@(YES) retain];
                    r23 = [[NSNumber numberWithUnsignedLong:r21] retain];
                    r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r23 release];
                    [r22 release];
            }
            else {
                    r22 = [[r19 filepath] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI crc32WithDict:andModuleID:]" line:0xcb withFormat:@"FileSystem.crc32 received invalid data at filepath: %@"];
                    [r22 release];
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)unpackBundleWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r29 = &saved_fp;
    r27 = [arg2 retain];
    r0 = [ADCFilepathContext alloc];
    r0 = [r0 initWithDict:r27];
    r28 = r0;
    if ([r0 isValid] != 0x0) {
            r25 = [[r28 filepath] retain];
            r20 = [[r28 bundlePath] retain];
            r22 = [[r28 bundleFilenames] retain];
            var_A8 = 0x0;
            var_AC = 0x0;
            r0 = [NSFileHandle fileHandleForReadingAtPath:r20];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    var_A0 = 0x0;
                    r26 = @selector(readDataOfLength:);
                    r0 = objc_msgSend(r24, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    var_C0 = @selector(getBytes:length:);
                    [r0 getBytes:r29 - 0x9c length:0x4];
                    [r0 release];
                    asm { rev        w8, w8 };
                    r0 = objc_msgSend(r24, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    objc_msgSend(r0, var_C0);
                    var_D0 = r20;
                    var_C8 = r22;
                    [r19 release];
                    r8 = var_A0;
                    asm { rev        w8, w8 };
                    var_A0 = r8;
                    r23 = [objc_msgSend(@class(NSMutableArray), r21) initWithCapacity:sign_extend_64(var_A0)];
                    if (var_A0 > 0x0) {
                            var_E8 = r25;
                            r22 = 0x0;
                            r21 = @selector(seekToFileOffset:);
                            r25 = @selector(numberWithInt:);
                            var_130 = r25;
                            r20 = var_C8;
                            do {
                                    var_108 = @selector(fileHandleForWritingAtPath:);
                                    var_C0 = @selector(getBytes:length:);
                                    var_F0 = @selector(stringByAppendingPathComponent:);
                                    var_F8 = @selector(defaultManager);
                                    var_100 = @selector(createFileAtPath:contents:attributes:);
                                    var_D8 = @selector(insertObject:atIndex:);
                                    var_E0 = @selector(objectAtIndex:);
                                    asm { madd       x2, x22, x10, x9 };
                                    objc_msgSend(r24, r21);
                                    [[objc_msgSend(r24, r26) retain] release];
                                    r0 = objc_msgSend(r24, r26);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, var_C0);
                                    [r19 release];
                                    r8 = var_A4;
                                    asm { rev        w8, w8 };
                                    var_A4 = r8;
                                    r0 = objc_msgSend(r24, r26);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, var_C0);
                                    [r19 release];
                                    r8 = var_A8;
                                    asm { rev        w8, w8 };
                                    var_A8 = r8;
                                    r0 = objc_msgSend(r24, r26);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, var_C0);
                                    [r19 release];
                                    asm { rev        w2, w8 };
                                    var_AC = r2;
                                    [objc_msgSend(@class(NSNumber), r25) retain];
                                    objc_msgSend(r23, var_D8);
                                    [r19 release];
                                    r19 = [objc_msgSend(r20, var_E0) retain];
                                    r25 = [objc_msgSend(var_E8, var_F0) retain];
                                    [r19 release];
                                    r0 = objc_msgSend(@class(NSFileManager), var_F8);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, var_100);
                                    var_138 = r23;
                                    [r19 release];
                                    r0 = objc_msgSend(@class(NSFileHandle), var_108);
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    objc_msgSend(r24, r21);
                                    var_140 = r21;
                                    var_118 = r28;
                                    stack[-288] = r27;
                                    r27 = var_AC;
                                    r28 = r27 >> 0x1e;
                                    if (r28 != 0x0) {
                                            var_148 = r22;
                                            r20 = 0x0;
                                            r19 = 0x0;
                                            do {
                                                    r0 = [r24 readDataOfLength:0x40000000];
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    [r19 release];
                                                    [r23 writeData:r2];
                                                    r20 = r20 + 0x1;
                                                    r19 = r21;
                                            } while (r20 < r28);
                                            r20 = var_C8;
                                            r22 = var_148;
                                    }
                                    else {
                                            r21 = 0x0;
                                    }
                                    r2 = r27 & 0x3fffffff;
                                    r28 = var_118;
                                    r27 = stack[-288];
                                    r0 = [r24 readDataOfLength:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r21 release];
                                    [r23 writeData:r2];
                                    [r23 closeFile];
                                    [r19 release];
                                    [r23 release];
                                    [r25 release];
                                    r22 = r22 + 0x1;
                                    r21 = var_140;
                                    r23 = var_138;
                                    r25 = var_130;
                            } while (r22 < sign_extend_64(var_A0));
                            r25 = var_E8;
                            r1 = @selector(closeFile);
                    }
                    else {
                            r1 = @selector(closeFile);
                    }
                    objc_msgSend(r24, r1);
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 isDeletableFileAtPath:var_D0];
                    [r0 release];
                    if (r22 != 0x0) {
                            r0 = [NSFileManager defaultManager];
                            r20 = var_D0;
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 removeItemAtPath:r20 error:&var_B8];
                            r21 = [var_B8 retain];
                            [r0 release];
                            if ((r22 & 0x1) == 0x0) {
                                    r0 = [r21 localizedDescription];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI unpackBundleWithDict:andModuleID:]" line:0x12e withFormat:@"Failed to remove temporary file at path: %@ with error: %@"];
                                    [r19 release];
                            }
                            [r21 release];
                    }
                    r21 = [@(YES) retain];
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r0 = [r0 retain];
                    r19 = r23;
                    r23 = r0;
                    [r21 release];
                    [r19 release];
                    r20 = var_D0;
                    r22 = var_C8;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI unpackBundleWithDict:andModuleID:]" line:0xf5 withFormat:@"Failed to open or locate bundle file at temporary path: %@"];
                    r19 = [@(NO) retain];
                    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r19 release];
            }
            [r24 release];
            [r22 release];
            [r20 release];
            [r25 release];
    }
    else {
            r23 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)listingWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r23 = [arg2 retain];
    r0 = [ADCFilepathContext alloc];
    r0 = [r0 initWithDict:r23];
    r21 = r0;
    if ([r0 isValid] == 0x0) goto loc_1001c5290;

loc_1001c5150:
    r19 = [[NSFileManager defaultManager] retain];
    var_298 = r21;
    r20 = [[r21 fileURL] retain];
    r27 = **_NSURLIsDirectoryKey;
    r21 = [[NSArray arrayWithObjects:r29 - 0x60 count:0x1] retain];
    r0 = [r19 contentsOfDirectoryAtURL:r20 includingPropertiesForKeys:r21 options:0x0 error:&var_140];
    r29 = r29;
    r24 = [r0 retain];
    r26 = [var_140 retain];
    [r21 release];
    [r20 release];
    [r19 release];
    if (r26 == 0x0) goto loc_1001c5298;

loc_1001c5228:
    r0 = [r26 localizedDescription];
    r29 = r29;
    r20 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI listingWithDict:andModuleID:]" line:0x68 withFormat:@"Contents failed with error %@"];
    [r20 release];
    r21 = 0x0;
    goto loc_1001c58e4;

loc_1001c58e4:
    if (r26 == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r19 = [r0 retain];
    if (r21 != 0x0) {
            [NSArray class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r22 = 0x0;
                    r25 = r21;
            }
            else {
                    r25 = r21;
                    r0 = [NSArray arrayWithObjects:r2 count:r3];
                    r29 = r29;
                    r21 = [r0 retain];
                    r22 = 0x1;
            }
    }
    else {
            r25 = r21;
            r0 = [NSArray arrayWithObjects:r2 count:r3];
            r29 = r29;
            r21 = [r0 retain];
            r22 = 0x1;
    }
    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r22 != 0x0) {
            [r21 release];
    }
    [r19 release];
    [r25 release];
    [r24 release];
    [r26 release];
    r21 = var_298;
    goto loc_1001c59e8;

loc_1001c59e8:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001c5298:
    var_2A8 = r23;
    r0 = [NSMutableArray arrayWithCapacity:[r24 count]];
    r29 = r29;
    var_268 = [r0 retain];
    r0 = [r24 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_180;
    var_1D0 = r0;
    var_290 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1A0 = r0;
    r26 = 0x0;
    if (r0 == 0x0) goto loc_1001c58d4;

loc_1001c5318:
    r26 = 0x0;
    r25 = @selector(defaultManager);
    var_270 = **_NSFileSize;
    var_1F0 = r25;
    var_1E8 = r24;
    goto loc_1001c5338;

loc_1001c5338:
    r21 = 0x0;
    goto loc_1001c53fc;

loc_1001c53fc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_1D0);
    }
    r28 = *(0x0 + r21 * 0x8);
    r23 = r27;
    [r28 getResourceValue:&var_188 forKey:r27 error:&var_190];
    r20 = [var_188 retain];
    r27 = [var_190 retain];
    [r26 release];
    if (r20 != 0x0) {
            asm { ccmp       x27, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & E) {
            asm { ccmp       w8, #0x0, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1001c54fc;

loc_1001c5478:
    r26 = [[r28 absoluteString] retain];
    r0 = [r27 localizedDescription];
    r29 = r29;
    r28 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI listingWithDict:andModuleID:]" line:0x6f withFormat:@"Couldn't get directory state for file %@ with error %@"];
    [r28 release];
    [r26 release];
    r26 = r27;
    r27 = r23;
    goto loc_1001c589c;

loc_1001c589c:
    [r20 release];
    r21 = r21 + 0x1;
    if (r21 < var_1A0) goto loc_1001c53fc;

loc_1001c58b4:
    r2 = &var_180;
    r0 = objc_msgSend(var_1D0, var_290);
    var_1A0 = r0;
    if (r0 != 0x0) goto loc_1001c5338;

loc_1001c58d4:
    [var_1D0 release];
    r23 = var_2A8;
    r21 = var_268;
    goto loc_1001c58e4;

loc_1001c54fc:
    r25 = [objc_msgSend(@class(NSFileManager), r25) retain];
    r22 = [[r28 path] retain];
    r0 = [r25 attributesOfItemAtPath:r22 error:&var_198];
    r29 = r29;
    r19 = [r0 retain];
    r26 = [var_198 retain];
    [r27 release];
    [r22 release];
    [r25 release];
    if (r26 == 0x0) goto loc_1001c5638;

loc_1001c5578:
    r25 = [[r28 absoluteString] retain];
    r27 = [[r26 domain] retain];
    [r26 code];
    r0 = [r26 userInfo];
    r29 = r29;
    r24 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCFileSystemAPI listingWithDict:andModuleID:]" line:0x75 withFormat:@"Couldn't get attributes for file %@ with error domain: %@ code: %ld info: %@"];
    r0 = r24;
    r24 = var_1E8;
    [r0 release];
    [r27 release];
    [r25 release];
    r25 = var_1F0;
    r27 = r23;
    goto loc_1001c5894;

loc_1001c5894:
    [r19 release];
    goto loc_1001c589c;

loc_1001c5638:
    r0 = [r28 lastPathComponent];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r0 = [r28 lastPathComponent];
            r29 = r29;
            r22 = [r0 retain];
            r2 = [NSString class];
            var_258 = r22;
            r0 = [r22 isKindOfClass:r2];
            r22 = var_270;
            if (r0 != 0x0) {
                    r0 = [r28 lastPathComponent];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_1FC = 0x1;
                    var_200 = 0x1;
                    var_280 = r0;
                    r8 = r0;
            }
            else {
                    var_200 = 0x0;
                    var_1FC = 0x1;
                    r8 = @"";
            }
    }
    else {
            var_200 = 0x0;
            r8 = @"";
            r22 = var_270;
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r28 = [r0 retain];
    var_1F8 = r27;
    if (r28 == 0x0) goto loc_1001c57b4;

loc_1001c5744:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    r2 = [NSNumber class];
    var_260 = r24;
    if ([r24 isKindOfClass:r2] == 0x0) goto loc_1001c57bc;

loc_1001c5788:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = 0x0;
    r24 = 0x1;
    r25 = 0x1;
    var_288 = r0;
    goto loc_1001c57e8;

loc_1001c57e8:
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xf8 forKeys:&var_110 count:0x3];
    r29 = r29;
    r22 = [r0 retain];
    [var_268 addObject:r22];
    [r22 release];
    if (r27 != 0x0) {
            [var_250 release];
    }
    if (r25 != 0x0) {
            [var_288 release];
    }
    r27 = r23;
    if (r24 != 0x0) {
            [var_260 release];
    }
    [r28 release];
    r25 = var_1F0;
    if (var_200 != 0x0) {
            [var_280 release];
    }
    r24 = var_1E8;
    if (var_1FC != 0x0) {
            [var_258 release];
    }
    [var_1F8 release];
    goto loc_1001c5894;

loc_1001c57bc:
    r24 = 0x1;
    goto loc_1001c57c0;

loc_1001c57c0:
    r0 = @(0xffffffffffffffff);
    r29 = r29;
    r0 = [r0 retain];
    r25 = 0x0;
    r27 = 0x1;
    var_250 = r0;
    goto loc_1001c57e8;

loc_1001c57b4:
    r24 = 0x0;
    goto loc_1001c57c0;

loc_1001c5290:
    r20 = 0x0;
    goto loc_1001c59e8;
}

@end