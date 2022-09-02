@implementation ANSFileUtils

+(void *)fileSizeAtURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r20 = [[NSFileManager defaultManager] retain];
    r21 = [[arg2 path] retain];
    [r22 release];
    r0 = [r20 attributesOfItemAtPath:r21 error:0x0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [r19 objectForKey:r2];
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)filesWithExtension:(void *)arg2 inDirectory:(void *)arg3 {
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
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    var_120 = [[NSMutableSet set] retain];
    r0 = [self allFilesInDirectory:r24];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    var_108 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r23 = objc_msgSend(r21, r1);
    if (r23 != 0x0) {
            r22 = *var_108;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_108 != r22) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = *(var_110 + r20 * 0x8);
                            r0 = [r27 pathExtension];
                            r29 = r29;
                            r28 = [r0 retain];
                            if (r28 != 0x0 && [r19 isEqualToString:r2] != 0x0) {
                                    [var_120 addObject:r2];
                            }
                            [r28 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r23 = objc_msgSend(r21, var_128);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_120 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)fileCreatedDateAtURL:(void *)arg2 withDefault:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[NSFileManager defaultManager] retain];
    r23 = [[arg2 path] retain];
    [r21 release];
    r0 = [r22 attributesOfItemAtPath:r23 error:0x0];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)allFilesInDirectory:(void *)arg2 {
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
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isFileURL] & 0x1) == 0x0) {
            r0 = [ANSLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 log:@"%@ is not a file URL, will attempt to enumerate files."];
            [r0 release];
    }
    r22 = [[NSFileManager defaultManager] retain];
    r23 = [[r19 path] retain];
    r0 = [r22 contentsOfDirectoryAtPath:r23 error:&var_E0];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [var_E0 retain];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            var_130 = r21;
            r0 = [NSMutableSet set];
            r29 = r29;
            r22 = [r0 retain];
            var_128 = r20;
            r0 = [r20 retain];
            r23 = r0;
            r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r25 != 0x0) {
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r27 = @selector(addObject:);
                                    r0 = [r19 URLByAppendingPathComponent:*(0x0 + r20 * 0x8)];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r22, r27);
                                    [r28 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r25);
                            r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r25 != 0x0);
            }
            [r23 release];
            r21 = var_130;
            r20 = var_128;
    }
    else {
            r0 = [ANSLogger sharedLogger];
            r0 = [r0 retain];
            [r0 log:@"Unable to read contents of %@: %@"];
            [r0 release];
            r22 = [[NSSet set] retain];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end