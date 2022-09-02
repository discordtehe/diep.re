@implementation CLSFileManager

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_underlyingFileManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
            r0 = [r0 retain];
            r21 = [[r0 lastObject] retain];
            [r0 release];
            r22 = [[r21 stringByAppendingPathComponent:@"com.crashlytics.data"] retain];
            [r21 release];
            r21 = [[r19 pathNamespace] retain];
            r23 = [[r22 stringByAppendingPathComponent:r21] retain];
            [r22 release];
            [r21 release];
            r0 = [r23 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rootPath));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [r19 retain];
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)createDirectoryAtPath:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r23 = [@(0x1ed) retain];
    r19 = 0x1;
    r21 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
    [r23 release];
    r0 = [self underlyingFileManager];
    r0 = [r0 retain];
    r23 = [r0 createDirectoryAtPath:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
    [r20 release];
    r20 = [0x0 retain];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            NSLog(@"[FileManager] Unable to create directory %@", @selector(createDirectoryAtPath:withIntermediateDirectories:attributes:error:));
            r19 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)removeItemAtPath:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self underlyingFileManager];
    r0 = [r0 retain];
    r2 = r19;
    r22 = [r0 removeItemAtPath:r2 error:r3];
    r20 = [0x0 retain];
    r0 = r0;
    if (r22 != 0x0) {
            [r0 release];
            if (r19 != 0x0) {
                    r21 = 0x1;
            }
            else {
                    NSLog(@"[FileManager] Failed to remove file '%@' : %@", @selector(removeItemAtPath:error:), r2);
                    r21 = 0x0;
            }
    }
    else {
            [r0 release];
            NSLog(@"[FileManager] Failed to remove file '%@' : %@", @selector(removeItemAtPath:error:), r2);
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)removeContentsOfDirectoryAtPath:(void *)arg2 {
    [self enumerateFilesInDirectory:[arg2 retain] usingBlock:&var_60];
    _Block_object_dispose(&var_30, 0x8);
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)moveItemAtPath:(void *)arg2 toDirectory:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [[r19 lastPathComponent] retain];
    r0 = [arg3 stringByAppendingPathComponent:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r19 != 0x0 && r20 != 0x0) {
            r0 = [r21 underlyingFileManager];
            r0 = [r0 retain];
            r23 = [r0 moveItemAtPath:r2 toPath:r3 error:r4];
            r21 = [0x0 retain];
            [r0 release];
            if ((r23 & 0x1) != 0x0) {
                    r22 = 0x1;
            }
            else {
                    NSLog(@"[FileManager] Failed to move file: %@", @selector(moveItemAtPath:toPath:error:));
                    r22 = 0x0;
            }
    }
    else {
            NSLog(@"[FileManager] Failed to move file, inputs invalid");
            r22 = 0x0;
            r21 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)moveItemsFromDirectory:(void *)arg2 toDirectory:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [[arg3 retain] retain];
    [self enumerateFilesInDirectory:r19 usingBlock:&var_78];
    [r20 release];
    _Block_object_dispose(&var_40, 0x8);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)enumerateFilesInDirectory:(void *)arg2 usingBlock:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self underlyingFileManager];
    r0 = [r0 retain];
    r22 = r0;
    var_128 = r19;
    r0 = [r0 contentsOfDirectoryAtPath:r19 error:0x0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r19;
    var_130 = r1;
    r23 = objc_msgSend(r19, r1);
    if (r23 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r28 = *(0x0 + r21 * 0x8);
                            if (([r28 hasPrefix:@"."] & 0x1) == 0x0) {
                                    r22 = [[r28 pathExtension] retain];
                                    r0 = [var_128 stringByAppendingPathComponent:r2];
                                    r29 = r29;
                                    (*(r20 + 0x10))(r20, [r0 retain], r22);
                                    [r28 release];
                                    [r22 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r23 = objc_msgSend(var_120, var_130);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [r20 release];
    [var_128 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)fileSizeAtPath:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self underlyingFileManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 attributesOfItemAtPath:r2 error:r3];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    r20 = [0x0 retain];
    [r22 release];
    if (r19 != 0x0) {
            r21 = [[r19 objectForKey:r2] retain];
            [r20 release];
    }
    else {
            NSLog(@"[Client] Unable to read file size: %@", @selector(attributesOfItemAtPath:error:));
            [r20 release];
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)contentsOfDirectory:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[[NSMutableArray array] retain] retain];
    [self enumerateFilesInDirectory:r22 usingBlock:&var_48];
    [r22 release];
    [r20 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)pathNamespace {
    r0 = sub_10009523c();
    return r0;
}

-(void *)structurePath {
    r0 = [self rootPath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"v3"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)activePath {
    r0 = [self structurePath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"active"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)pendingPath {
    r0 = [self structurePath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"pending"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)processingPath {
    r0 = [self structurePath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"processing"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)preparedPath {
    r0 = [self structurePath];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"prepared"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)activePathContents {
    r20 = [[self activePath] retain];
    r19 = [[self contentsOfDirectory:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)preparedPathContents {
    r20 = [[self preparedPath] retain];
    r19 = [[self contentsOfDirectory:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)processingPathContents {
    r20 = [[self processingPath] retain];
    r19 = [[self contentsOfDirectory:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)prepareForNewLaunch {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self activePath];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [r19 createDirectoryAtPath:r2];
    [r21 release];
    if (r22 != 0x0) {
            r0 = [r19 processingPath];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r19 createDirectoryAtPath:r2];
            [r21 release];
            if (r22 != 0x0) {
                    r21 = [[r19 preparedPath] retain];
                    r19 = [r19 createDirectoryAtPath:r2];
                    [r21 release];
                    r0 = r19;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)setupNewPathForExecutionIdentifier:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self activePath];
    r0 = [r0 retain];
    r19 = [[r0 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    [r0 release];
    if ([self createDirectoryAtPath:r19] != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)enumerateReportsInProcessingDirectoryUsingBlock:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self processingPath] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [self enumerateFilesInDirectory:r21 usingBlock:&var_48];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)removeLegacyDirectories {
    r31 = r31 - 0x60;
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
    r0 = [self rootPath];
    r0 = [r0 retain];
    r21 = [[r0 stringByAppendingPathComponent:@"sendable"] retain];
    [r0 release];
    r0 = [r19 underlyingFileManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:r21];
    [r0 release];
    if (r24 != 0x0) {
            r23 = [[r19 underlyingFileManager] retain];
            r0 = [r19 rootPath];
            r29 = r29;
            r24 = [r0 retain];
            r25 = [r23 removeItemAtPath:r2 error:r3];
            r22 = [0x0 retain];
            [r24 release];
            [r23 release];
            if ((r25 & 0x1) == 0x0) {
                    NSLog(@"[Crashlytics:FileManager] Unable to remove legacy directory structure %@", @selector(removeItemAtPath:error:));
            }
            [[r19 rootPath] retain];
            NSLog(@"[Crashlytics:FileManager] Removed legacy structure at %@", @selector(rootPath));
            [r19 release];
            [r22 release];
    }
    [r21 release];
    return;
}

-(void)enumerateFilesInActiveDirectoryUsingBlock:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self activePath] retain];
    [self enumerateFilesInDirectory:r20 usingBlock:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)enumerateFilesInPreparedDirectoryUsingBlock:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self preparedPath] retain];
    [self enumerateFilesInDirectory:r20 usingBlock:r21];
    [r21 release];
    [r20 release];
    return;
}

-(bool)moveProcessingContentsToPrepared {
    r20 = [[self processingPath] retain];
    r21 = [[self preparedPath] retain];
    r19 = [self moveItemsFromDirectory:r20 toDirectory:r21];
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)movePendingToProcessing {
    r20 = [[self pendingPath] retain];
    r21 = [[self processingPath] retain];
    r19 = [self moveItemsFromDirectory:r20 toDirectory:r21];
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)removeContentsOfProcessingPath {
    r20 = [[self processingPath] retain];
    r19 = [self removeContentsOfDirectoryAtPath:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)removeContentsOfPendingPath {
    r20 = [[self pendingPath] retain];
    r19 = [self removeContentsOfDirectoryAtPath:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)removeContentsOfAllPaths {
    r22 = [self removeContentsOfProcessingPath] & [self removeContentsOfPendingPath];
    r20 = [[self preparedPath] retain];
    r22 = r22 & [self removeContentsOfDirectoryAtPath:r20];
    [r20 release];
    r20 = [[self activePath] retain];
    r19 = r22 & [self removeContentsOfDirectoryAtPath:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)underlyingFileManager {
    r0 = self->_underlyingFileManager;
    return r0;
}

-(void *)rootPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rootPath)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_underlyingFileManager, 0x0);
    objc_storeStrong((int64_t *)&self->_rootPath, 0x0);
    return;
}

@end