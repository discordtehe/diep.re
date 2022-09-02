@implementation FRRemoteImage

+(void *)objectWithRemoteUrl:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[FRRemoteImage alloc] initWithRemoteUrl:r21 withDelegate:0x0];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)objectWithRemoteUrl:(void *)arg2 withDelegate:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[FRRemoteImage alloc] initWithRemoteUrl:r20 withDelegate:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithRemoteUrl:(void *)arg2 withDelegate:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r19 == 0x0 || r21 == 0x0) goto loc_100929e90;

loc_100929d70:
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == r19) goto loc_100929de8;

loc_100929d98:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100929df0;

loc_100929dc4:
    r23 = [r19 length];
    [r22 release];
    if (r23 != 0x0) goto loc_100929df8;

loc_100929e90:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100929df8:
    [r21 setUrl:r19];
    r22 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    var_50 = [r21 retain];
    var_48 = [r20 retain];
    dispatch_async(r22, &var_70);
    [r22 release];
    [var_48 release];
    r0 = var_50;
    goto loc_100929e8c;

loc_100929e8c:
    [r0 release];
    goto loc_100929e90;

loc_100929df0:
    [r22 release];
    goto loc_100929df8;

loc_100929de8:
    r0 = r22;
    goto loc_100929e8c;
}

+(void *)getDateFromCacheMetaDataForKey:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r20 cacheMetaDataFileToExpiration];
    r0 = [r0 retain];
    [[r0 objectForKey:r2] retain];
    [r0 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)loadImageFromData:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 getBytes:&var_34 length:0x3];
    if (0x0 == 0x46 && var_34 == 0x47 && var_33 == 0x49) {
            r0 = [TJAnimatedImage animatedImageWithGIFData:r19];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r21 != r0) {
                            r0 = [r21 posterImage];
                            r29 = r29;
                            r22 = [r0 retain];
                            [r20 setImage:r22];
                            [r22 release];
                            [r20 setAnimatedImage:r21];
                    }
            }
            [r21 release];
    }
    r0 = [r20 image];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r20 image] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r21 release];
            if (r22 == r0) {
                    [[UIImage imageWithData:r19] retain];
                    [r20 setImage:r2];
                    [r21 release];
            }
    }
    else {
            [r21 release];
            [[UIImage imageWithData:r19] retain];
            [r20 setImage:r2];
            [r21 release];
    }
    [r19 release];
    return;
}

+(void *)urlToFileName:(void *)arg2 {
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
    r26 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r21 = [[r26 absoluteString] retain];
    r22 = [[TJCUtil TJCSHA1WithString:r21] retain];
    r0 = [FRRemoteImage cacheMetaDataFileToUrl];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r19 release];
    if (r25 != 0x0) {
            [NSString class];
            if (([r25 isKindOfClass:r2] & 0x1) != 0x0) {
                    r1 = @selector(isEqualToString:);
                    var_60 = r1;
                    if (objc_msgSend(r25, r1) == 0x0) {
                            var_78 = r26;
                            var_70 = r20;
                            r19 = 0x0;
                            r26 = 0x1;
                            do {
                                    r24 = @selector(objectForKey:);
                                    r27 = [[NSString stringWithFormat:r2] retain];
                                    [r19 release];
                                    r0 = [FRRemoteImage cacheMetaDataFileToUrl];
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r0 = objc_msgSend(r0, r24);
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r25 release];
                                    [r19 release];
                                    if (r20 == 0x0) {
                                        break;
                                    }
                                    [NSString class];
                                    if (objc_msgSend(r20, r28) == 0x0) {
                                        break;
                                    }
                                    r0 = objc_msgSend(r20, var_60);
                                    r26 = r26 + 0x1;
                                    r25 = r20;
                                    r19 = r27;
                            } while (r0 == 0x0);
                            r0 = [FRRemoteImage cacheMetaDataFileToUrl];
                            r26 = var_78;
                            r0 = [r0 retain];
                            [r0 setObject:r2 forKey:r3];
                            [r19 release];
                            r25 = r20;
                            r20 = var_70;
                    }
                    else {
                            r27 = [r22 retain];
                    }
            }
            else {
                    r0 = [FRRemoteImage cacheMetaDataFileToUrl];
                    r0 = [r0 retain];
                    [r0 setObject:r2 forKey:r3];
                    [r19 release];
                    r27 = [r22 retain];
            }
    }
    else {
            r0 = [FRRemoteImage cacheMetaDataFileToUrl];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r19 release];
            r27 = [r22 retain];
    }
    [r25 release];
    [r22 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r26 release];
    r0 = [r27 autorelease];
    return r0;
}

+(void)removeCacheMetaDataFileToExpirationForKey:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r20 cacheMetaDataFileToExpiration];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r19];
    [r0 release];
    [r20 commitCacheMetaData];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

+(void)updateCacheMetaDataForKey:(void *)arg2 age:(double)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    v0 = v0;
    r21 = [[NSDate dateWithTimeIntervalSinceNow:r2] retain];
    r0 = [r19 cacheMetaDataFileToExpiration];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (r22 == 0x0) goto loc_10092ad4c;

loc_10092acf0:
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r22 == r24) goto loc_10092ad44;

loc_10092ad18:
    [r21 timeIntervalSinceDate:r22];
    [r24 release];
    if (d8 > 0x0) {
            r0 = [r19 cacheMetaDataFileToExpiration];
            r0 = [r0 retain];
            [r0 setObject:r21 forKey:r20];
            [r0 release];
            [r19 commitCacheMetaData];
    }
    goto loc_10092ad90;

loc_10092ad90:
    [r22 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;

loc_10092ad44:
    [r22 release];
    goto loc_10092ad4c;

loc_10092ad4c:
    r0 = [r19 cacheMetaDataFileToExpiration];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:r20];
    [r0 release];
    [r19 commitCacheMetaData];
    goto loc_10092ad90;
}

+(void *)cacheImagePath {
    if (*qword_1011dc138 != -0x1) {
            dispatch_once(0x1011dc138, 0x100ea2378);
    }
    r0 = *0x1011dc130;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)cacheMetaDataFileToExpiration {
    if (*qword_1011dc148 != -0x1) {
            dispatch_once(0x1011dc148, 0x100ea23b8);
    }
    r0 = *0x1011dc140;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)cacheMetaDataFileToUrl {
    if (*qword_1011dc158 != -0x1) {
            dispatch_once(0x1011dc158, 0x100ea23f8);
    }
    r0 = *0x1011dc150;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)imageFromRemoteURL:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r29 = &saved_fp;
    r26 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_10092a85c;

loc_10092a238:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_10092a85c;

loc_10092a268:
    r20 = [TJSdkConfiguration isMMExternalCacheEnabled];
    r22 = [[FRRemoteImage urlToFileName:r19] retain];
    r0 = @class(FRRemoteImage);
    r0 = [r0 cacheImagePath];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 stringByAppendingString:r22] retain];
    r23 = [[NSFileManager defaultManager] retain];
    r0 = @class(FRRemoteImage);
    r0 = [r0 getDateFromCacheMetaDataForKey:r22];
    r29 = r29;
    r21 = [r0 retain];
    var_94 = r20;
    var_80 = r21;
    var_78 = r23;
    if (r20 == 0x0) goto loc_10092a374;

loc_10092a328:
    if (r21 == 0x0) goto loc_10092a4a8;

loc_10092a32c:
    r0 = [NSNull null];
    r29 = r29;
    r20 = [r0 retain];
    if (r21 == r20) goto loc_10092a4a0;

loc_10092a350:
    [r21 timeIntervalSinceNow];
    v8 = v0;
    [r20 release];
    if (d8 < 0x0) goto loc_10092a4a8;

loc_10092a374:
    if ([r23 fileExistsAtPath:r28] == 0x0) goto loc_10092a52c;

loc_10092a38c:
    r0 = [NSData dataWithContentsOfFile:r28];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10092a50c;

loc_10092a3b4:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r21 == r0) goto loc_10092a50c;

loc_10092a3dc:
    r24 = r22;
    [r26 loadImageFromData:r21];
    r0 = [r26 image];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10092a4fc;

loc_10092a418:
    r20 = [[r26 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    [r23 release];
    r22 = r24;
    r23 = var_78;
    if (r20 == r0) goto loc_10092a50c;

loc_10092a470:
    [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Use Cache for %@"];
    [r21 release];
    goto loc_10092a834;

loc_10092a834:
    [var_80 release];
    [r23 release];
    [r28 release];
    [r27 release];
    [r22 release];
    goto loc_10092a85c;

loc_10092a85c:
    [r19 release];
    return;

loc_10092a50c:
    [r23 removeItemAtPath:r28 error:0x0];
    [r21 release];
    goto loc_10092a52c;

loc_10092a52c:
    var_90 = r27;
    var_88 = r28;
    r28 = [[NSURLRequest requestWithURL:r19] retain];
    r0 = [NSURLConnection sendSynchronousRequest:r28 returningResponse:&var_68 error:&var_70];
    r29 = r29;
    r27 = [r0 retain];
    r24 = [var_68 retain];
    r21 = [var_70 retain];
    [r27 length];
    [TJCLog logWithLevel:r2 format:r3];
    if (r27 == 0x0) goto loc_10092a80c;

loc_10092a5dc:
    if (r21 == 0x0) goto loc_10092a608;

loc_10092a5e0:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r21 != r0) goto loc_10092a80c;

loc_10092a608:
    var_A0 = r22;
    [r26 loadImageFromData:r27];
    r0 = [r26 image];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_10092a7b0;

loc_10092a644:
    r20 = [[r26 image] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    [r22 release];
    r22 = var_A0;
    if (r20 == r0) goto loc_10092a80c;

loc_10092a698:
    if (var_94 == 0x0) goto loc_10092a7c0;

loc_10092a6a0:
    if (r24 == 0x0) goto loc_10092a800;

loc_10092a6a4:
    r22 = [[NSNull null] retain];
    if (r24 == r22) goto loc_10092a7e0;

loc_10092a6c8:
    [NSHTTPURLResponse class];
    r20 = [r24 isKindOfClass:r2];
    [r22 release];
    r22 = var_A0;
    if (r20 != 0x0) {
            [FRUtils getCacheMaxAgeFromResponse:r24 defaultValue:@"[FRRemoteImage] Data length: %lu, response: %@\n(END)"];
            if (0x0 <= *0x100be3fa8) {
                    if (0x0 >= *0x100ba1fb0) {
                            v8 = v0;
                            if (0x0 > 0x0) {
                                    if ([var_78 createFileAtPath:var_88 contents:r27 attributes:0x0] != 0x0) {
                                            [TJCLog logWithLevel:r2 format:r3];
                                            [FRRemoteImage updateCacheMetaDataForKey:r22 age:@"[FRRemoteImage] Stored %@"];
                                    }
                                    else {
                                            [TJCLog logWithLevel:r2 format:r3];
                                    }
                            }
                            else {
                                    [TJCLog logWithLevel:r2 format:r3];
                            }
                    }
                    else {
                            [TJCLog logWithLevel:r2 format:r3];
                    }
            }
            else {
                    if ([var_78 createFileAtPath:var_88 contents:r27 attributes:0x0] != 0x0) {
                            [TJCLog logWithLevel:r2 format:r3];
                            [FRRemoteImage updateCacheMetaDataForKey:r22 age:@"[FRRemoteImage] Stored %@"];
                    }
                    else {
                            [TJCLog logWithLevel:r2 format:r3];
                    }
            }
    }
    else {
            [TJCLog logWithLevel:r2 format:r3];
    }
    goto loc_10092a80c;

loc_10092a80c:
    [r27 release];
    [r24 release];
    [r28 release];
    [r21 release];
    r27 = var_90;
    r28 = var_88;
    r23 = var_78;
    goto loc_10092a834;

loc_10092a7e0:
    [r22 release];
    r22 = var_A0;
    goto loc_10092a800;

loc_10092a800:
    [TJCLog logWithLevel:r2 format:r3];
    goto loc_10092a80c;

loc_10092a7c0:
    [var_78 createFileAtPath:var_88 contents:r27 attributes:0x0];
    goto loc_10092a80c;

loc_10092a7b0:
    [r22 release];
    r22 = var_A0;
    goto loc_10092a80c;

loc_10092a4fc:
    [r23 release];
    r22 = r24;
    r23 = var_78;
    goto loc_10092a50c;

loc_10092a4a8:
    [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Cache for %@ is invalid"];
    [FRRemoteImage removeCacheMetaDataFileToExpirationForKey:r22];
    [r23 removeItemAtPath:r28 error:0x0];
    goto loc_10092a52c;

loc_10092a4a0:
    [r20 release];
    goto loc_10092a4a8;
}

+(void)checkCaches {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([TJSdkConfiguration isMMExternalCacheEnabled] != 0x0) {
            r1 = @selector(checkCachesInternal);
    }
    else {
            r1 = @selector(clearCachedImage);
    }
    objc_msgSend(r19, r1);
    return;
}

+(void)clearCachedImage {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self cacheImagePath] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 fileExistsAtPath:r19 isDirectory:r29 - 0x31];
    if (0x0 != 0x0 && r0 != 0x0) {
            r22 = [[r21 contentsOfDirectoryAtPath:r19 error:0x0] retain];
            var_48 = [r21 retain];
            var_40 = [r19 retain];
            [r22 enumerateObjectsUsingBlock:&var_68];
            r0 = [r20 cacheMetaDataFileToUrl];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            r0 = [r20 cacheMetaDataFileToExpiration];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            [r20 commitCacheMetaDataNow];
            [var_40 release];
            [var_48 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void)checkCachesInternal {
    r31 = r31 - 0x1b0;
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
    r19 = self;
    r20 = [[self cacheImagePath] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 fileExistsAtPath:r20 isDirectory:r29 - 0x61];
    if (0x0 != 0x0 && r0 != 0x0) {
            r0 = [r19 retain];
            r21 = r0;
            objc_sync_enter(r0);
            r23 = [[r21 cacheMetaDataFileToExpiration] retain];
            r25 = [[r21 cacheMetaDataFileToUrl] retain];
            r19 = [[NSDate date] retain];
            r0 = [r22 contentsOfDirectoryAtPath:r20 error:0x0];
            r29 = r29;
            r0 = [r0 retain];
            var_158 = r0;
            r0 = [r0 count];
            var_150 = r20;
            var_168 = r22;
            var_160 = r19;
            if (r0 != 0x0) {
                    r0 = [NSMutableSet setWithArray:var_158];
                    r29 = r29;
                    r22 = [r0 retain];
            }
            else {
                    r22 = 0x0;
            }
            r24 = @selector(count);
            r0 = [NSMutableArray array];
            r29 = r29;
            r19 = [r0 retain];
            [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Files in cacheMetaDataFileToExpiration: %@"];
            [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Files in cacheMetaDataFileToUrl: %@"];
            [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Files in %@: %@"];
            r23 = [r23 retain];
            var_78 = r23;
            r20 = [r19 retain];
            var_70 = r20;
            [r25 enumerateKeysAndObjectsUsingBlock:r29 - 0x98];
            r25 = [r25 retain];
            var_A8 = r25;
            r27 = [r20 retain];
            var_A0 = r27;
            [r23 enumerateKeysAndObjectsUsingBlock:r29 - 0xc8];
            if (objc_msgSend(r27, r24) != 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Removing files from cacheMetaData (1): %@"];
                    [r23 removeObjectsForKeys:r27];
                    [r25 removeObjectsForKeys:r27];
                    [r27 removeAllObjects];
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
            }
            r24 = @selector(count);
            r0 = [r22 retain];
            var_148 = r0;
            var_F0 = r0;
            r22 = [var_160 retain];
            var_E8 = r22;
            r27 = [r27 retain];
            var_E0 = r27;
            r0 = [var_168 retain];
            var_170 = r0;
            var_D8 = r0;
            r0 = [var_150 retain];
            var_178 = r0;
            var_D0 = r0;
            [r23 enumerateKeysAndObjectsUsingBlock:&var_110];
            if (objc_msgSend(r27, r24) != 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Removing files from cacheMetaData (2): %@"];
                    [r23 removeObjectsForKeys:r27];
                    [r25 removeObjectsForKeys:r27];
                    r19 = 0x1;
            }
            else {
                    r8 = 0x100ea24a8;
                    if ([var_148 count] != 0x0) {
                            r8 = 0x100ea24a8;
                            if (CPU_FLAGS & NE) {
                                    r8 = 0x1;
                            }
                    }
                    r19 = r20 | r8;
            }
            r24 = @selector(count);
            if (objc_msgSend(r23, r24) >= 0x1f) {
                    var_188 = r22;
                    stack[-400] = r21;
                    var_160 = r25;
                    r0 = [r23 keysSortedByValueUsingComparator:0x100ea24f8];
                    r29 = r29;
                    r19 = [r0 retain];
                    [TJCLog logWithLevel:0x6 format:@"cacheMetaDataFileToExpiration: %@"];
                    [TJCLog logWithLevel:0x6 format:@"sortedFiles: %@"];
                    r25 = 0x1e;
                    while (objc_msgSend(r19, r24) > r25) {
                            r22 = @selector(objectAtIndex:);
                            r21 = @selector(removeObjectForKey:);
                            r0 = objc_msgSend(r19, r22);
                            r29 = r29;
                            [r0 retain];
                            [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Removing file from cacheMetaData: %@ (CACHE_COUNT_MAX=%d)"];
                            objc_msgSend(r23, r21);
                            objc_msgSend(var_160, r21);
                            objc_msgSend(var_148, r20);
                            [r27 release];
                            r25 = r25 + 0x1;
                            r27 = r24;
                            r24 = r28;
                    }
                    [r19 release];
                    r19 = 0x1;
                    r22 = var_188;
                    r21 = stack[-400];
                    r25 = var_160;
            }
            if (objc_msgSend(var_148, r24) != 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"[FRRemoteImage] Removing files: %@"];
                    var_120 = [var_170 retain];
                    var_118 = [var_178 retain];
                    [var_148 enumerateObjectsUsingBlock:&var_140];
                    [var_118 release];
                    [var_120 release];
            }
            if (r19 != 0x0) {
                    [r21 commitCacheMetaData];
            }
            [var_D0 release];
            [var_D8 release];
            [var_E0 release];
            [var_E8 release];
            [var_F0 release];
            [var_A0 release];
            [var_A8 release];
            [var_70 release];
            [var_78 release];
            [r27 release];
            [var_148 release];
            [var_158 release];
            [r22 release];
            [r25 release];
            [r23 release];
            objc_sync_exit(r21);
            [r21 release];
            r20 = var_150;
            r22 = var_168;
    }
    [r22 release];
    [r20 release];
    return;
}

+(void)commitCacheMetaData {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((*(int8_t *)0x1011dc160 & 0x1) == 0x0) {
            *(int8_t *)0x1011dc160 = 0x1;
            dispatch_after(dispatch_time(0x0, 0x1dcd6500), *__dispatch_main_q, &var_38);
    }
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x1);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

+(void)commitCacheMetaDataNow {
    r0 = [self retain];
    objc_sync_enter(r0);
    r20 = @class(TJCLog);
    r23 = [[r19 cacheMetaDataFileToExpiration] retain];
    [r20 logWithLevel:0x6 format:@"[FRRemoteImage] commit cacheMetaDataFileToExpiration: %@"];
    [r23 release];
    r23 = @class(TJCLog);
    r24 = [[r19 cacheMetaDataFileToUrl] retain];
    [r23 logWithLevel:0x6 format:@"[FRRemoteImage] commit cacheMetaDataFileToUrl: %@"];
    [r24 release];
    r23 = [[NSUserDefaults standardUserDefaults] retain];
    [[r19 cacheMetaDataFileToExpiration] retain];
    [r23 setObject:r2 forKey:r3];
    [r24 release];
    [r23 release];
    r22 = [[NSUserDefaults standardUserDefaults] retain];
    [[r19 cacheMetaDataFileToUrl] retain];
    objc_msgSend(r22, r21);
    [r20 release];
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void *)image {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_image)), 0x1);
    return r0;
}

-(void *)animatedImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_animatedImage)), 0x1);
    return r0;
}

-(void)setImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setAnimatedImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_animatedImage, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

@end