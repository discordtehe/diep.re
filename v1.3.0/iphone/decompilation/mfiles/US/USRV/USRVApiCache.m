@implementation USRVApiCache

+(void)WebViewExposed_download:(void *)arg2 fileId:(void *)arg3 headers:(void *)arg4 append:(void *)arg5 callback:(void *)arg6 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    if ([USRVConnectivityUtils getNetworkStatus] == 0x0) goto loc_1000db58c;

loc_1000db4dc:
    r25 = [[USRVApiCache fileIdToFilename:r20] retain];
    r26 = [[USRVApiRequest getHeadersMap:r21] retain];
    r24 = [USRVCacheQueue download:r19 target:r25 headers:r26 append:[r22 boolValue]];
    [r26 release];
    [r25 release];
    if ((r24 & 0x1) == 0x0) goto loc_1000db598;

loc_1000db574:
    [r23 invoke:0x0];
    goto loc_1000db5c0;

loc_1000db5c0:
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000db598:
    r24 = @"FILE_ALREADY_CACHING";
    goto loc_1000db5a0;

loc_1000db5a0:
    objc_retainAutorelease(r24);
    [r23 error:r24 arg1:0x0];
    goto loc_1000db5c0;

loc_1000db58c:
    r24 = @"NO_INTERNET";
    goto loc_1000db5a0;
}

+(void)WebViewExposed_stop:(void *)arg2 {
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
    r19 = [r20 retain];
    if (([USRVCacheQueue hasOperations] & 0x1) != 0x0) {
            [USRVCacheQueue cancelAllDownloads];
            [r20 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"NOT_CACHING");
            [r20 error:@"NOT_CACHING" arg1:0x0];
    }
    [r19 release];
    return;
}

+(void)WebViewExposed_isCaching:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVCacheQueue hasOperations]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getFileContent:(void *)arg2 encoding:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r21 = [arg4 retain];
    r22 = [[USRVApiCache fileIdToFilename:r19] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:r22];
    [r0 release];
    if (r24 == 0x0) goto loc_1000db7e8;

loc_1000db754:
    r0 = [NSData dataWithContentsOfFile:r22 options:0x0 error:&var_48];
    r29 = r29;
    r24 = [r0 retain];
    r23 = [var_48 retain];
    if (r24 == 0x0 || r23 != 0x0) goto loc_1000db818;

loc_1000db798:
    if (r20 == 0x0) goto loc_1000db844;

loc_1000db79c:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000db8cc;

loc_1000db7bc:
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r24 encoding:0x4];
    goto loc_1000db900;

loc_1000db900:
    r25 = r0;
    if (r25 == 0x0) goto loc_1000db92c;

loc_1000db908:
    [r21 invoke:r25];
    r0 = r25;
    goto loc_1000db924;

loc_1000db924:
    [r0 release];
    goto loc_1000db95c;

loc_1000db95c:
    [r24 release];
    [r23 release];
    goto loc_1000db96c;

loc_1000db96c:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000db92c:
    r25 = @"UNSUPPORTED_ENCODING";
    objc_retainAutorelease(r25);
    goto loc_1000db94c;

loc_1000db94c:
    [r21 error:r2 arg1:r3];
    goto loc_1000db95c;

loc_1000db8cc:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000db92c;

loc_1000db8e4:
    r0 = [r24 base64EncodedStringWithOptions:0x0];
    r0 = [r0 retain];
    goto loc_1000db900;

loc_1000db844:
    r25 = @"UNSUPPORTED_ENCODING";
    objc_retainAutorelease(r25);
    r0 = [NSNull null];
    goto loc_1000db86c;

loc_1000db86c:
    r26 = [r0 retain];
    [r21 error:r25 arg1:r19];
    r0 = r26;
    goto loc_1000db924;

loc_1000db818:
    if (r23 == 0x0) goto loc_1000db89c;

loc_1000db81c:
    r25 = @"FILE_IO_ERROR";
    objc_retainAutorelease(r25);
    r0 = [r23 description];
    goto loc_1000db86c;

loc_1000db89c:
    if (r24 != 0x0) goto loc_1000db95c;

loc_1000db8a0:
    r25 = @"FILE_IO_ERROR";
    objc_retainAutorelease(r25);
    goto loc_1000db94c;

loc_1000db7e8:
    objc_retainAutorelease(@"FILE_NOT_FOUND");
    [r21 error:@"FILE_NOT_FOUND" arg1:r19];
    goto loc_1000db96c;
}

+(void)WebViewExposed_setFileContent:(void *)arg2 encoding:(void *)arg3 content:(void *)arg4 callback:(void *)arg5 {
    r31 = r31 - 0x80;
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
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [[USRVApiCache fileIdToFilename:r19] retain];
    r0 = [r21 dataUsingEncoding:0x4];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r20 == 0x0 || ([r20 isEqualToString:r2] & 0x1) != 0x0) goto loc_1000dbabc;

loc_1000dba6c:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000dbbe8;

loc_1000dba84:
    r25 = [[NSData alloc] initWithBase64EncodedString:r21 options:0x0];
    [r24 release];
    r24 = r25;
    goto loc_1000dbabc;

loc_1000dbabc:
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 fileExistsAtPath:r23];
    [r0 release];
    if ((r27 & 0x1) == 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            [r0 createFileAtPath:r23 contents:0x0 attributes:0x0];
            [r0 release];
    }
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r26 = [r0 isWritableFileAtPath:r23];
    [r0 release];
    if ((r26 & 0x1) != 0x0) {
            [r24 writeToFile:r23 atomically:0x1];
            [r22 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"FILE_IO_ERROR");
            [@"FILE_IO_ERROR" retain];
            [r22 error:@"FILE_IO_ERROR" arg1:r19];
            [@"FILE_IO_ERROR" release];
    }
    goto loc_1000dbc18;

loc_1000dbc18:
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000dbbe8:
    objc_retainAutorelease(@"UNSUPPORTED_ENCODING");
    [r22 error:@"UNSUPPORTED_ENCODING" arg1:r19];
    goto loc_1000dbc18;
}

+(void)WebViewExposed_getFiles:(void *)arg2 {
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
    r22 = arg2;
    r21 = [r22 retain];
    r20 = [[NSFileManager defaultManager] retain];
    r19 = [[USRVSdkProperties getCacheDirectory] retain];
    r0 = [r20 contentsOfDirectoryAtPath:r19 error:&var_E0];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [var_E0 retain];
    [r19 release];
    if (r24 != 0x0) {
            objc_retainAutorelease(@"FILE_IO_ERROR");
            [r22 error:@"FILE_IO_ERROR" arg1:0x0];
            [r21 release];
    }
    else {
            var_160 = r24;
            var_150 = r22;
            var_148 = r21;
            var_140 = r20;
            r20 = [[USRVSdkProperties getCacheFilePrefix] retain];
            r19 = [[NSString stringWithFormat:@"self BEGINSWITH '%@'"] retain];
            [r20 release];
            var_168 = r19;
            r0 = [NSPredicate predicateWithFormat:r19];
            r0 = [r0 retain];
            var_158 = r23;
            var_170 = r0;
            r0 = [r23 filteredArrayUsingPredicate:r0];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
            r29 = r29;
            r27 = [r0 retain];
            r0 = [r19 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r1;
            var_130 = r0;
            r26 = objc_msgSend(r0, r1);
            if (r26 != 0x0) {
                    do {
                            r25 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r21 = @selector(addObject:);
                                    r23 = *(0x0 + r25 * 0x8);
                                    r0 = [USRVSdkProperties getCacheFilePrefix];
                                    r0 = [r0 retain];
                                    r23 = [[r23 substringFromIndex:[r0 length]] retain];
                                    [r0 release];
                                    r0 = [USRVApiCache getFileDictionary:r23];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r27, r21);
                                    [r24 release];
                                    [r23 release];
                                    r25 = r25 + 0x1;
                            } while (r25 < r26);
                            r26 = objc_msgSend(var_130, var_138);
                    } while (r26 != 0x0);
            }
            [var_130 release];
            [var_150 invoke:r27];
            [var_148 release];
            [r27 release];
            [var_130 release];
            [var_170 release];
            [var_168 release];
            r20 = var_140;
            r24 = var_160;
            r23 = var_158;
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r24 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)WebViewExposed_getFileInfo:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [[USRVApiCache getFileDictionary:r20] retain];
    [r20 release];
    [arg3 invoke:r21];
    [r23 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_getVideoInfo:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xc0;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = [arg2 retain];
    r26 = [arg3 retain];
    r23 = [[USRVApiCache fileIdToFilename:r19] retain];
    r21 = [[NSString stringWithFormat:@"%@"] retain];
    [r23 release];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 fileExistsAtPath:r21];
    [r0 release];
    if (r24 != 0x0) {
            var_90 = r26;
            r23 = [NSURL alloc];
            r24 = [[USRVApiCache fileIdToFilename:r19] retain];
            r20 = [r23 initFileURLWithPath:r24];
            [r24 release];
            r0 = [AVURLAsset URLAssetWithURL:r20 options:0x0];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 tracksWithMediaType:**_AVMediaTypeVideo];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectAtIndex:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            [r0 naturalSize];
            if (r23 != 0x0) {
                    [r23 duration];
            }
            CMTimeGetSeconds(&var_88);
            r22 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r0 = *(r22 + 0xfc0);
            asm { fcvt       s0, d10 };
            r27 = @selector(numberWithFloat:);
            r0 = objc_msgSend(r0, r27);
            r26 = [r0 retain];
            r0 = *(r22 + 0xfc0);
            asm { fcvt       s0, d8 };
            r0 = objc_msgSend(r0, r27);
            asm { fcvtzs     w28, d0 };
            r27 = [r0 retain];
            r28 = [[*(r22 + 0xfc0) numberWithInt:r28] retain];
            [var_90 invoke:r26];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r20 release];
            r26 = var_90;
    }
    else {
            objc_retainAutorelease(@"FILE_IO_ERROR");
            [r26 error:@"FILE_IO_ERROR" arg1:0x0];
    }
    [r21 release];
    [r26 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getFilePath:(void *)arg2 callback:(void *)arg3 {
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
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r22 = [[USRVApiCache fileIdToFilename:r19] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 fileExistsAtPath:r22];
    [r0 release];
    if (r25 != 0x0) {
            r23 = [[USRVApiCache fileIdToFilename:r19] retain];
            [r20 invoke:r23];
            [r21 release];
            r0 = r23;
    }
    else {
            objc_retainAutorelease(@"FILE_NOT_FOUND");
            [r20 error:@"FILE_NOT_FOUND" arg1:0x0];
            r0 = r21;
    }
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setTimeouts:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg2 intValue];
    [r21 release];
    [USRVCacheQueue setConnectTimeout:r20];
    [arg3 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_getTimeouts:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInt:[USRVCacheQueue getConnectTimeout]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_deleteFile:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[USRVApiCache fileIdToFilename:r20] retain];
    [r20 release];
    r20 = [[NSString stringWithFormat:@"%@"] retain];
    [r22 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r22 = [r0 removeItemAtPath:r20 error:&var_38];
    r21 = [var_38 retain];
    [r0 release];
    if (r21 == 0x0 && r22 != 0x0) {
            [r19 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"FILE_IO_ERROR");
            [r19 error:@"FILE_IO_ERROR" arg1:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setProgressInterval:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg2 intValue];
    [r21 release];
    [USRVCacheQueue setProgressInterval:r20];
    [arg3 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_getProgressInterval:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInt:[USRVCacheQueue getProgressInterval]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getFreeSpace:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getFreeSpaceInKilobytes] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getTotalSpace:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getTotalSpaceInKilobytes] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getHash:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [[arg2 sha256] retain];
    [r21 release];
    [arg3 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void *)fileIdToFilename:(void *)arg2 {
    r20 = @class(USRVSdkProperties);
    r22 = [arg2 retain];
    r20 = [[r20 getCacheDirectory] retain];
    r21 = [[USRVSdkProperties getCacheFilePrefix] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getFileDictionary:(void *)arg2 {
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
    r20 = [[USRVApiCache fileIdToFilename:r19] retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 attributesOfItemAtPath:r20 error:&var_58];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [var_58 retain];
    [r23 release];
    r24 = [[NSMutableDictionary alloc] init];
    if (r22 != 0x0) {
            r25 = [@(NO) retain];
            [r24 setObject:r2 forKey:r3];
    }
    else {
            r25 = [[r21 objectForKey:**_NSFileModificationDate] retain];
            r0 = [r21 objectForKey:**_NSFileSize];
            [r0 retain];
            [r24 setObject:r2 forKey:r3];
            r28 = @class(NSNumber);
            [r25 timeIntervalSince1970];
            asm { fcvtzs     x2, d0 };
            [[r28 numberWithLongLong:r2] retain];
            objc_msgSend(r24, r27);
            [r28 release];
            [[NSNumber numberWithBool:r2] retain];
            objc_msgSend(r24, r27);
            [r28 release];
            objc_msgSend(r24, r27);
            [r26 release];
    }
    [r25 release];
    r23 = [[NSDictionary alloc] initWithDictionary:r24];
    [r24 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

@end