@implementation SSADownloadManager

-(void *)getDocumentsFolder {
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = [[r0 objectAtIndex:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getInstanceRootDirectory {
    r0 = [SSADownloadManager new];
    r19 = r0;
    r0 = [r0 getInstanceCacheFolderUseRoot:0x1];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)getLibraryCachesFolder {
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = [[r0 objectAtIndex:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)createDirectoryAtPath:(void *)arg2 withName:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r22 = [arg2 retain];
    r20 = [[arg2 stringByAppendingPathComponent:arg3] retain];
    [r22 release];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 fileExistsAtPath:r20 isDirectory:&var_31];
    [r0 release];
    if (var_31 == 0x0 || r22 == 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            [r0 createDirectoryAtPath:r20 withIntermediateDirectories:0x0 attributes:0x0 error:r19];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void)setLastUpdateTimeForPath:(void *)arg2 andTimestamp:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [[r21 getInstanceCacheFolderUseRoot:0x1] retain];
    r25 = [[NSString stringWithFormat:@"%@/%@"] retain];
    r0 = [NSMutableDictionary dictionaryWithContentsOfFile:r25];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    [r26 release];
    if (r24 == 0x0) goto loc_10071a6a0;

loc_10071a680:
    if (r20 == 0x0) goto loc_10071a6cc;

loc_10071a684:
    [r24 setObject:r2 forKey:r3];
    goto loc_10071a708;

loc_10071a708:
    r21 = [[r21 getInstanceCacheFolderUseRoot:0x1] retain];
    r22 = [[NSString stringWithFormat:@"%@/%@"] retain];
    [r24 writeToFile:r22 atomically:0x1];
    [r22 release];
    [r21 release];
    goto loc_10071a778;

loc_10071a778:
    [r24 release];
    [r20 release];
    [r19 release];
    return;

loc_10071a6cc:
    r0 = [r24 objectForKeyedSubscript:r19];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10071a778;

loc_10071a6f4:
    [r24 removeObjectForKey:r2];
    goto loc_10071a708;

loc_10071a6a0:
    r0 = [NSMutableDictionary dictionary];
    r29 = r29;
    r25 = [r0 retain];
    [r24 release];
    r24 = r25;
    if (r20 != 0x0) goto loc_10071a684;
}

-(void *)getControllerUrl {
    r20 = [[self getLibraryCachesFolder] retain];
    r19 = [[NSString stringWithFormat:@"%@/%@_%@/%@/%@.html"] retain];
    [r20 release];
    r20 = [[NSURL fileURLWithPath:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getInstanceCacheFolderUseRoot:(bool)arg2 {
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
    r20 = self;
    r25 = [[self getLibraryCachesFolder] retain];
    r26 = [[NSString stringWithFormat:@"/%@_%@"] retain];
    r0 = [r25 stringByAppendingPathComponent:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r26 release];
    [r25 release];
    if ((arg2 & 0x1) == 0x0) {
            r22 = [[NSString stringWithFormat:@"/%@"] retain];
            r0 = [r19 stringByAppendingPathComponent:r2];
            r29 = r29;
            r23 = [r0 retain];
            [r19 release];
            [r22 release];
            r19 = r23;
    }
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:r19];
    [r0 release];
    if ((r24 & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r21 = [[r20 getLibraryCachesFolder] retain];
            [r20 deleteOldBaseDirectory:r21];
            [r21 release];
            r21 = [[r20 getDocumentsFolder] retain];
            [r20 deleteOldBaseDirectory:r21];
            [r21 release];
            r0 = @class(NSFileManager);
            r0 = [r0 defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            [r0 createDirectoryAtPath:r19 withIntermediateDirectories:0x1 attributes:0x0 error:&var_68];
            r20 = [var_68 retain];
            [r0 release];
    }
    r21 = [[NSURL fileURLWithPath:r19] retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 floatValue];
    asm { fcvt       d8, s0 };
    [r25 release];
    [r24 release];
    if (d8 < *0x100bf3220) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 rangeOfString:@"5.0.1"];
            [r0 release];
            [r22 release];
            if (r24 != 0x7fffffffffffffff) {
                    r0 = [r21 path];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    r23 = [r0 fileSystemRepresentation];
                    [r0 release];
                    setxattr(r23, "com.apple.MobileBackup", &var_71, 0x1, 0x0, 0x0);
            }
    }
    else {
            r22 = [@(YES) retain];
            [r21 setResourceValue:r22 forKey:**_NSURLIsExcludedFromBackupKey error:&var_70];
            r23 = [var_70 retain];
            [r20 release];
            [r22 release];
            r20 = r23;
    }
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getUrlFileByName:(void *)arg2 andFolderName:(void *)arg3 shouldUseCacheFolderRoot:(bool)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self getInstanceCacheFolderUseRoot:arg4];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            r23 = [[NSString stringWithFormat:@"/%@"] retain];
            r25 = [[r21 stringByAppendingPathComponent:r23] retain];
            [r23 release];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 fileExistsAtPath:r2];
            [r0 release];
            if (r27 != 0x0) {
                    r26 = [r25 retain];
                    [r21 release];
                    r21 = r26;
            }
            [r25 release];
    }
    r25 = [[NSString stringWithFormat:@"/%@"] retain];
    r22 = [[r21 stringByAppendingString:r25] retain];
    [r25 release];
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:r2];
    [r0 release];
    if (r24 != 0x0) {
            r23 = [[NSURL fileURLWithPath:r22 isDirectory:0x0] retain];
    }
    else {
            r23 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(bool)storeData:(void *)arg2 shouldCreateFolder:(bool)arg3 forKey:(void *)arg4 andFolderName:(void *)arg5 shouldUseCacheRoot:(bool)arg6 shouldOverride:(bool)arg7 error:(void * *)arg8 {
    r31 = r31 - 0xa0;
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
    r24 = arg7;
    var_70 = arg8;
    var_78 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r0 = [self getInstanceCacheFolderUseRoot:arg6];
    r29 = &saved_fp;
    r28 = [r0 retain];
    if (arg3 != 0x0) {
            r26 = [[NSString stringWithFormat:@"/%@"] retain];
            r23 = [[r28 stringByAppendingPathComponent:r26] retain];
            [r28 release];
            [r26 release];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r19 = [r0 fileExistsAtPath:r2];
            [r0 release];
            if ((r19 & 0x1) == 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 createDirectoryAtPath:r23 withIntermediateDirectories:0x1 attributes:0x0 error:var_70];
                    [r0 release];
            }
            r0 = [r23 stringByAppendingPathComponent:r20];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 mutableCopy];
            [r0 release];
    }
    else {
            r0 = [r28 stringByAppendingPathComponent:r20];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 mutableCopy];
            [r0 release];
            r23 = r28;
    }
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 fileExistsAtPath:r2];
    [r0 release];
    if (r28 != 0x0) {
            asm { ccmp       w24, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            if (r24 != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 fileExistsAtPath:r2];
                    [r0 release];
                    if (r24 != 0x0) {
                            r0 = [NSFileManager defaultManager];
                            r0 = [r0 retain];
                            [r0 removeItemAtPath:r25 error:0x0];
                            [r0 release];
                    }
            }
            r19 = var_78;
            r22 = [r19 writeToFile:r25 options:0x1 error:var_70];
    }
    else {
            r22 = var_70;
            if (r22 != 0x0) {
                    r19 = [NSError alloc];
                    r24 = [[NSString stringWithFormat:@"%@ already exist in folderName: %@!!"] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
                    r26 = [r0 retain];
                    *r22 = [[r19 initWithDomain:@"Save File Domain" code:0x0 userInfo:r26] autorelease];
                    [r26 release];
                    [r24 release];
                    r22 = 0x0;
            }
            r19 = var_78;
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteFileWithName:(void *)arg2 atPath:(void *)arg3 error:(void * *)arg4 {
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
    r29 = &saved_fp;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r22 = [[r22 getInstanceCacheFolderUseRoot:0x0] retain];
            r23 = [[NSString stringWithFormat:@"/%@"] retain];
            r25 = [[r22 stringByAppendingPathComponent:r23] retain];
            [r22 release];
            [r23 release];
            r22 = [[r25 stringByAppendingPathComponent:r19] retain];
            [r25 release];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 fileExistsAtPath:r22];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r0 = [r0 retain];
                    r21 = [r0 removeItemAtPath:r22 error:r21];
                    [r0 release];
            }
            else {
                    if (r21 != 0x0) {
                            r23 = [NSError alloc];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
                            r24 = [r0 retain];
                            *r21 = [[r23 initWithDomain:@"Delete File Domain" code:0x0 userInfo:r24] autorelease];
                            [r24 release];
                            r21 = 0x0;
                    }
            }
            [r22 release];
    }
    else {
            if (r21 != 0x0) {
                    r22 = [NSError alloc];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r23 = [r0 retain];
                    *r21 = [[r22 initWithDomain:@"Delete Folder Domain" code:0x0 userInfo:r23] autorelease];
                    [r23 release];
                    r21 = 0x0;
            }
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)deleteEntireFolder:(void *)arg2 error:(void * *)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r22 = [[r21 getInstanceCacheFolderUseRoot:0x0] retain];
            r23 = [[NSString stringWithFormat:@"/%@"] retain];
            r21 = [[r22 stringByAppendingPathComponent:r23] retain];
            [r22 release];
            [r23 release];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 fileExistsAtPath:r21];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r0 = [r0 retain];
                    r20 = [r0 removeItemAtPath:r21 error:r20];
                    [r0 release];
            }
            else {
                    if (r20 != 0x0) {
                            r22 = [NSError alloc];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
                            r23 = [r0 retain];
                            *r20 = [[r22 initWithDomain:@"Delete Folder Domain" code:0x1 userInfo:r23] autorelease];
                            [r23 release];
                            r20 = 0x0;
                    }
            }
            [r21 release];
    }
    else {
            if (r20 != 0x0) {
                    r21 = [NSError alloc];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r22 = [r0 retain];
                    *r20 = [[r21 initWithDomain:@"Delete Folder Domain" code:0x0 userInfo:r22] autorelease];
                    [r22 release];
                    r20 = 0x0;
            }
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)deleteAllSSAFoldersFromDocs {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSFileManager alloc] init];
    r21 = [[r20 getInstanceCacheFolderUseRoot:0x0] retain];
    [r19 removeItemAtPath:r21 error:&var_38];
    r22 = [var_38 retain];
    r0 = [r20 globalAssetsMetaDataDic];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 globalAssetsMetaDataDic];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r20 release];
    }
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)campaignsMetaDataArray {
    r0 = self->_campaignsMetaDataArray;
    return r0;
}

-(void)setCampaignsMetaDataArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_campaignsMetaDataArray, arg2);
    return;
}

-(void)deleteOldBaseDirectory:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r22 = [[NSFileManager defaultManager] retain];
    r19 = [[NSURL fileURLWithPath:r20] retain];
    [r20 release];
    r20 = **_NSURLNameKey;
    r21 = **_NSURLIsDirectoryKey;
    r23 = [[NSArray arrayWithObjects:&saved_fp - 0x68 count:0x2] retain];
    r0 = [r22 enumeratorAtURL:r19 includingPropertiesForKeys:r23 options:0x4 errorHandler:0x100e8dcc0];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r23 release];
    [r19 release];
    r0 = r22;
    r22 = r20;
    [r0 release];
    var_118 = q0;
    r0 = [r24 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r27 = *var_118;
            var_168 = r27;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_118 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r19 = *(var_120 + r28 * 0x8);
                            [r19 getResourceValue:&var_130 forKey:r22 error:0x0];
                            r25 = [var_130 retain];
                            [r19 getResourceValue:&var_138 forKey:r21 error:0x0];
                            r0 = [var_138 retain];
                            r23 = r0;
                            if ([r0 boolValue] != 0x0 && [r25 hasPrefix:@"SSACache"] != 0x0) {
                                    r0 = [NSFileManager defaultManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 removeItemAtURL:r2 error:r3];
                                    r0 = r22;
                                    r22 = r21;
                                    r21 = r20;
                                    r20 = r24;
                                    r24 = r27;
                                    r27 = var_168;
                                    [r0 release];
                            }
                            [r23 release];
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = objc_msgSend(r20, var_170);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)campaignsMetaDataDic {
    r0 = self->_campaignsMetaDataDic;
    return r0;
}

-(void)setCampaignsMetaDataDic:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_campaignsMetaDataDic, arg2);
    return;
}

-(void *)globalAssetsMetaDataDic {
    r0 = self->_globalAssetsMetaDataDic;
    return r0;
}

-(void *)recursiveObjectForKey:(void *)arg2 inDictionary:(void *)arg3 {
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
    var_1E0 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r24 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 containsObject:r2];
    [r0 release];
    if (r23 == 0x0) goto loc_10071c064;

loc_10071c03c:
    r26 = [[r24 objectForKey:r2] retain];
    r23 = r19;
    goto loc_10071c378;

loc_10071c378:
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r26 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10071c064:
    var_188 = q0;
    r0 = [r24 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r1;
    r22 = objc_msgSend(r0, r1);
    r23 = r19;
    if (r22 == 0x0) goto loc_10071c358;

loc_10071c0b8:
    r19 = *var_188;
    var_230 = r25;
    stack[-568] = r24;
    var_220 = r19;
    goto loc_10071c0d8;

loc_10071c0d8:
    r20 = 0x0;
    var_218 = r22;
    goto loc_10071c0f4;

loc_10071c0f4:
    if (*var_188 != r19) {
            objc_enumerationMutation(r25);
    }
    r27 = @selector(class);
    r0 = [r24 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    objc_msgSend(@class(NSMutableDictionary), r27);
    r0 = objc_msgSend(r21, r28);
    var_1F8 = r20;
    var_1F0 = r21;
    if (r0 == 0x0) goto loc_10071c18c;

loc_10071c154:
    r0 = [var_1E0 recursiveObjectForKey:r2 inDictionary:r3];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r26 = [r20 retain];
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    [r20 release];
    if ((r21 & 0x1) != 0x0) goto loc_10071c310;

loc_10071c368:
    [var_1F0 release];
    [r25 release];
    goto loc_10071c378;

loc_10071c310:
    [var_1F0 release];
    r20 = var_1F8 + 0x1;
    if (r20 < r22) goto loc_10071c0f4;

loc_10071c328:
    r22 = objc_msgSend(r25, var_208);
    if (r22 != 0x0) goto loc_10071c0d8;

loc_10071c358:
    [r25 release];
    r26 = 0x0;
    goto loc_10071c378;

loc_10071c18c:
    [NSArray class];
    if (objc_msgSend(r21, r28) == 0x0) goto loc_10071c310;

loc_10071c1b0:
    r0 = [r21 retain];
    r0 = [r0 retain];
    r22 = r0;
    r20 = objc_msgSend(r0, var_208);
    if (r20 == 0x0) goto loc_10071c2f4;

loc_10071c1ec:
    var_1E8 = r26;
    goto loc_10071c1f8;

loc_10071c1f8:
    r24 = 0x0;
    goto loc_10071c204;

loc_10071c204:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r22);
    }
    r27 = @selector(class);
    r25 = *(0x0 + r24 * 0x8);
    objc_msgSend(@class(NSMutableDictionary), r27);
    if (objc_msgSend(r25, r28) == 0x0) goto loc_10071c298;

loc_10071c248:
    r19 = r23;
    r0 = [var_1E0 recursiveObjectForKey:r2 inDictionary:r3];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            var_1E8 = [r25 retain];
            r23 = 0x0;
    }
    else {
            r23 = 0x1;
    }
    [r25 release];
    if (r23 == 0x0) goto loc_10071c2e0;

loc_10071c294:
    r23 = r19;
    goto loc_10071c298;

loc_10071c298:
    r24 = r24 + 0x1;
    if (r24 < r20) goto loc_10071c204;

loc_10071c2a4:
    r20 = objc_msgSend(r22, var_208);
    if (r20 != 0x0) goto loc_10071c1f8;

loc_10071c2c4:
    r20 = 0x1;
    goto loc_10071c2e8;

loc_10071c2e8:
    r25 = var_230;
    r24 = stack[-568];
    r26 = var_1E8;
    goto loc_10071c2f8;

loc_10071c2f8:
    [r22 release];
    [r22 release];
    r19 = var_220;
    r22 = var_218;
    if (r20 == 0x0) goto loc_10071c368;
    goto loc_10071c310;

loc_10071c2e0:
    r20 = 0x0;
    r23 = r19;
    goto loc_10071c2e8;

loc_10071c2f4:
    r20 = 0x1;
    goto loc_10071c2f8;
}

-(void)setGlobalAssetsMetaDataDic:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_globalAssetsMetaDataDic, arg2);
    return;
}

-(int)currentDisplayedCampaignIndex {
    r0 = *(int32_t *)(int64_t *)&self->_currentDisplayedCampaignIndex;
    return r0;
}

-(void)setCurrentDisplayedCampaignIndex:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_currentDisplayedCampaignIndex = arg2;
    return;
}

-(int)currentDownloadedCampaignIndex {
    r0 = *(int32_t *)(int64_t *)&self->_currentDownloadedCampaignIndex;
    return r0;
}

-(void)setCurrentDownloadedCampaignIndex:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_currentDownloadedCampaignIndex = arg2;
    return;
}

-(int)numOfCachedCampaigns {
    r0 = *(int32_t *)(int64_t *)&self->_numOfCachedCampaigns;
    return r0;
}

-(void)setNumOfCachedCampaigns:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_numOfCachedCampaigns = arg2;
    return;
}

-(int)totalCampaignsToCache {
    r0 = *(int32_t *)(int64_t *)&self->_totalCampaignsToCache;
    return r0;
}

-(void *)getFolderFiles:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x370;
    r19 = self;
    r0 = [arg2 retain];
    if (r0 != 0x0) {
            r24 = r0;
            var_278 = r19;
            r20 = [[r19 getInstanceCacheFolderUseRoot:0x0] retain];
            r21 = [[NSString stringWithFormat:@"/%@"] retain];
            r19 = [[r20 stringByAppendingPathComponent:r21] retain];
            [r20 release];
            [r21 release];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 fileExistsAtPath:r19];
            [r0 release];
            if ((r22 & 0x1) != 0x0) {
                    r20 = [[NSFileManager defaultManager] retain];
                    r21 = [[NSURL fileURLWithPath:r19] retain];
                    r22 = [[NSArray arrayWithObjects:r29 - 0x70 count:0x3] retain];
                    var_3A0 = r20;
                    r20 = [[r20 enumeratorAtURL:r21 includingPropertiesForKeys:r22 options:0x4 errorHandler:0x100e8dc80] retain];
                    [r22 release];
                    [r21 release];
                    r21 = [[r19 stringByDeletingLastPathComponent] retain];
                    [r19 release];
                    r0 = [NSScanner alloc];
                    r0 = [r0 initWithString:r21];
                    var_3A8 = r0;
                    [r0 scanUpToString:@"Application" intoString:&var_178];
                    r0 = [var_178 retain];
                    var_3B0 = r0;
                    var_308 = [[r21 substringFromIndex:[r0 length]] retain];
                    [r21 release];
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_398 = r24;
                    r2 = r24;
                    r24 = r0;
                    [r0 setObject:r2 forKey:@"path"];
                    *(int128_t *)(&stack[-663] + 0xff) = q0;
                    *(int128_t *)(&stack[-679] + 0xff) = q0;
                    *(int128_t *)(&stack[-695] + 0xff) = q0;
                    *(int128_t *)(&stack[-711] + 0xff) = q0;
                    r0 = [r20 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_340 = r0;
                    var_280 = r1;
                    r0 = objc_msgSend(r0, r1);
                    var_2D0 = r0;
                    if (r0 != 0x0) {
                            r26 = **_NSURLParentDirectoryURLKey;
                            r25 = **_NSURLIsDirectoryKey;
                            r23 = **_NSURLNameKey;
                            r27 = @selector(alloc);
                            var_338 = *var_1A8;
                            var_330 = r27;
                            var_380 = r25;
                            stack[-904] = r23;
                            var_388 = r26;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_1A8 != var_338) {
                                                    objc_enumerationMutation(var_340);
                                            }
                                            var_288 = r19;
                                            r19 = *(var_1B0 + r19 * 0x8);
                                            [r19 getResourceValue:&var_1C0 forKey:r23 error:0x0];
                                            var_220 = [var_1C0 retain];
                                            [r19 getResourceValue:&var_1C8 forKey:r25 error:0x0];
                                            [var_1C8 retain];
                                            [r19 getResourceValue:&var_1D0 forKey:r26 error:0x0];
                                            r0 = [var_1D0 retain];
                                            var_298 = r0;
                                            r20 = [[r0 absoluteString] retain];
                                            [[SSAHelperMethods decodeFromPercentEscapeString:r20] retain];
                                            [r20 release];
                                            r0 = *(&@class(MCConfigurationData) + 0xaa0);
                                            r0 = objc_msgSend(r0, r27);
                                            r0 = [r0 initWithString:r2];
                                            var_2A0 = r0;
                                            [r0 scanUpToString:r2 intoString:r3];
                                            r0 = [0x0 retain];
                                            var_2A8 = r0;
                                            [r0 length];
                                            r22 = [[r19 substringFromIndex:r2] retain];
                                            [r19 release];
                                            [var_308 length] + 0x1;
                                            var_2B0 = r22;
                                            r0 = [r22 substringFromIndex:r2];
                                            r0 = [r0 retain];
                                            r2 = [r0 length] - 0x1;
                                            var_2B8 = r0;
                                            r0 = [r0 substringToIndex:r2];
                                            r0 = [r0 retain];
                                            var_2C0 = r0;
                                            r0 = [r0 componentsSeparatedByString:@"/"];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            var_290 = r28;
                                            r0 = [r28 boolValue];
                                            var_2C8 = r19;
                                            if (r0 != 0x0) {
                                                    *(int128_t *)(&stack[-759] + 0xff) = q0;
                                                    *(int128_t *)(&stack[-775] + 0xff) = q0;
                                                    *(int128_t *)(&stack[-791] + 0xff) = q0;
                                                    *(int128_t *)(&stack[-807] + 0xff) = q0;
                                                    r0 = [r19 retain];
                                                    r28 = r0;
                                                    r26 = objc_msgSend(r0, var_280);
                                                    r20 = var_278;
                                                    if (r26 != 0x0) {
                                                            r23 = *var_208;
                                                            do {
                                                                    r21 = 0x0;
                                                                    var_228 = r26;
                                                                    do {
                                                                            if (*var_208 != r23) {
                                                                                    objc_enumerationMutation(r28);
                                                                            }
                                                                            if ([*(var_210 + r21 * 0x8) isEqualToString:@"SSAPublisher"] != 0x0) {
                                                                                    if ([r28 count] == 0x1) {
                                                                                            r0 = [r24 objectForKey:r2];
                                                                                            r29 = r29;
                                                                                            r0 = [r0 retain];
                                                                                            [r0 release];
                                                                                            if (r0 == 0x0) {
                                                                                                    r0 = [NSMutableDictionary dictionary];
                                                                                                    r29 = r29;
                                                                                                    [r0 retain];
                                                                                                    [r24 setObject:r2 forKey:r3];
                                                                                                    [r22 release];
                                                                                            }
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r25 = r23;
                                                                                    r19 = r28;
                                                                                    r0 = [NSMutableArray arrayWithArray:r28];
                                                                                    r0 = [r0 retain];
                                                                                    r22 = r0;
                                                                                    [r0 removeObjectAtIndex:0x0];
                                                                                    r26 = [[r22 componentsJoinedByString:@"."] retain];
                                                                                    r28 = r24;
                                                                                    r23 = [[r24 valueForKeyPath:r26] retain];
                                                                                    r0 = [r20 recursiveObjectForKey:var_220 inDictionary:r23];
                                                                                    r29 = r29;
                                                                                    r24 = [r0 retain];
                                                                                    if (r24 == 0x0) {
                                                                                            r0 = [NSMutableDictionary dictionary];
                                                                                            r29 = r29;
                                                                                            [r0 retain];
                                                                                            [r23 setObject:r2 forKey:r3];
                                                                                            r0 = r20;
                                                                                            r20 = var_278;
                                                                                            [r0 release];
                                                                                    }
                                                                                    [r24 release];
                                                                                    [r23 release];
                                                                                    [r26 release];
                                                                                    [r22 release];
                                                                                    r24 = r28;
                                                                                    r23 = r25;
                                                                                    r26 = var_228;
                                                                                    r28 = r19;
                                                                            }
                                                                            r21 = r21 + 0x1;
                                                                    } while (r21 < r26);
                                                                    r26 = objc_msgSend(r28, var_280);
                                                            } while (r26 != 0x0);
                                                    }
                                                    [r28 release];
                                                    r25 = var_380;
                                                    r23 = stack[-904];
                                                    r26 = var_388;
                                            }
                                            else {
                                                    r27 = r26;
                                                    r26 = r25;
                                                    r25 = r23;
                                                    r0 = [NSMutableArray arrayWithArray:r19];
                                                    r0 = [r0 retain];
                                                    r19 = r0;
                                                    [r0 removeObjectAtIndex:0x0];
                                                    r20 = [[r19 componentsJoinedByString:@"."] retain];
                                                    r0 = [r24 valueForKeyPath:r20];
                                                    r29 = r29;
                                                    r21 = [r0 retain];
                                                    if (r21 != 0x0) {
                                                            r28 = @selector(objectForKeyedSubscript:);
                                                            r0 = objc_msgSend(r21, r28);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 release];
                                                            if (r0 == 0x0) {
                                                                    r0 = [NSMutableArray array];
                                                                    r29 = r29;
                                                                    [r0 retain];
                                                                    [r21 setObject:r2 forKey:r3];
                                                                    [r22 release];
                                                            }
                                                            r0 = objc_msgSend(r21, r28);
                                                            r29 = r29;
                                                    }
                                                    else {
                                                            r28 = @selector(objectForKeyedSubscript:);
                                                            r0 = objc_msgSend(r24, r28);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 release];
                                                            if (r0 == 0x0) {
                                                                    r0 = [NSMutableArray array];
                                                                    r29 = r29;
                                                                    [r0 retain];
                                                                    [r24 setObject:r2 forKey:r3];
                                                                    [r22 release];
                                                            }
                                                            r0 = objc_msgSend(r24, r28);
                                                            r29 = r29;
                                                    }
                                                    r0 = [r0 retain];
                                                    [r0 addObject:r2];
                                                    [r22 release];
                                                    [r21 release];
                                                    [r20 release];
                                                    [r19 release];
                                                    r23 = r25;
                                                    r25 = r26;
                                                    r26 = r27;
                                            }
                                            r27 = var_330;
                                            [var_2C8 release];
                                            [var_2C0 release];
                                            [var_2B8 release];
                                            [var_2A8 release];
                                            [var_2A0 release];
                                            [var_2B0 release];
                                            [var_298 release];
                                            [var_290 release];
                                            [var_220 release];
                                            r19 = var_288 + 0x1;
                                    } while (r19 < var_2D0);
                                    r0 = objc_msgSend(var_340, var_280);
                                    var_2D0 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_340 release];
                    [var_3B0 release];
                    [var_3A8 release];
                    [var_340 release];
                    [var_3A0 release];
                    [var_308 release];
                    r0 = var_398;
            }
            else {
                    [r19 release];
                    r0 = r24;
                    r24 = 0x0;
            }
    }
    else {
            r24 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setNumOfCampaignsNotifyPublisher:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_numOfCampaignsNotifyPublisher = arg2;
    return;
}

-(void)setTotalCampaignsToCache:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_totalCampaignsToCache = arg2;
    return;
}

-(int)numOfCampaignsNotifyPublisher {
    r0 = *(int32_t *)(int64_t *)&self->_numOfCampaignsNotifyPublisher;
    return r0;
}

-(int)numOfDownloadedGlobalAssets {
    r0 = *(int32_t *)(int64_t *)&self->_numOfDownloadedGlobalAssets;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_globalAssetsMetaDataDic, 0x0);
    objc_storeStrong((int64_t *)&self->_campaignsMetaDataDic, 0x0);
    objc_storeStrong((int64_t *)&self->_campaignsMetaDataArray, 0x0);
    return;
}

-(void)setNumOfDownloadedGlobalAssets:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_numOfDownloadedGlobalAssets = arg2;
    return;
}

@end