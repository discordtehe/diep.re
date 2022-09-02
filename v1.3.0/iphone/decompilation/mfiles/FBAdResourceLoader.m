@implementation FBAdResourceLoader

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [[NSMapTable weakToStrongObjectsMapTable] retain];
            [r19 setPendingVideoRequests:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)writeData:(void *)arg2 toURL:(void *)arg3 error:(void * *)arg4 {
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([self useFileManager] != 0x0) {
            r22 = [[NSFileManager defaultManager] retain];
            r0 = [r20 path];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 stringByDeletingLastPathComponent] retain];
            if (([FBAdUtility isStringEmpty:r23] & 0x1) != 0x0) {
                    r21 = 0x0;
            }
            else {
                    if (([r22 fileExistsAtPath:r23] & 0x1) != 0x0) {
                            r21 = 0x1;
                    }
                    else {
                            if ([r22 createDirectoryAtPath:r24 withIntermediateDirectories:0x1 attributes:0x0 error:r21] != 0x0) {
                                    r21 = [r22 createFileAtPath:r23 contents:r19 attributes:0x0];
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
            }
            [r24 release];
            [r23 release];
            [r22 release];
    }
    else {
            r21 = [r19 writeToURL:r20 options:0x0 error:r21];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)useFileManager {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 shouldUseCacheWriteToDiskFix];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)logCreativeDownloadFailureForURL:(void *)arg2 fetchType:(long long)arg3 reason:(void *)arg4 {
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
    r22 = arg3;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [FBAdLoggingContext sharedContext];
            r0 = [r0 retain];
            r20 = [[r0 cacheDebugDataForKey:r19] retain];
            [r0 release];
            r21 = [[FBAdResourceLoader fetchTypeToCreativeMap] retain];
            r23 = [[NSNumber numberWithInteger:r22] retain];
            r0 = [r21 objectForKeyedSubscript:r23];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r24 = [[r20 adFormat] retain];
                    r25 = [[r20 requestId] retain];
                    [FBAdDebugLogging logCreativeDownloadFailure:r24 creative:r22 requestId:r25];
                    [r25 release];
                    [r24 release];
            }
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)logDiskWriteFailureIfNeededForURL:(void *)arg2 fetchType:(long long)arg3 reason:(void *)arg4 {
    r22 = [arg2 retain];
    [self logDiskWriteEventIfNeededForURL:r22 fetchType:arg3 reason:arg4 success:0x0];
    [r22 release];
    return;
}

-(void)logDiskWriteSuccessIfNeededForURL:(void *)arg2 fetchType:(long long)arg3 {
    [self logDiskWriteEventIfNeededForURL:arg2 fetchType:arg3 reason:0x0 success:0x1];
    return;
}

-(void)logDiskWriteEventIfNeededForURL:(void *)arg2 fetchType:(long long)arg3 reason:(void *)arg4 success:(bool)arg5 {
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
    r21 = arg5;
    r24 = arg3;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [r22 absoluteString];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 != 0x0) {
            r0 = [FBAdLoggingContext sharedContext];
            r0 = [r0 retain];
            r22 = [[r0 cacheDebugDataForKey:r20] retain];
            [r0 release];
            r23 = [[FBAdResourceLoader fetchTypeToCreativeMap] retain];
            r25 = [[NSNumber numberWithInteger:r24] retain];
            r0 = [r23 objectForKeyedSubscript:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            if (r22 != 0x0 && r24 != 0x0) {
                    r25 = [[r22 adFormat] retain];
                    r27 = [[r22 requestId] retain];
                    if ((r21 & 0x1) != 0x0) {
                            [FBAdDebugLogging logCacheWriteToDiskSuccessForAdFormat:r25 creative:r24 cacheContext:@"load" requestId:r27];
                    }
                    else {
                            if (r19 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r6 = r19;
                                    }
                                    else {
                                            r6 = @"Unknown error";
                                    }
                            }
                            [FBAdDebugLogging logCacheWriteToDiskFailureForAdFormat:r25 creative:r24 cacheContext:@"load" requestId:r27 reason:r6];
                    }
                    [r27 release];
                    [r25 release];
            }
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)fetchImageAtURL:(void *)arg2 withCacheFileURL:(void *)arg3 withRetryBlock:(void *)arg4 withImageBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self fetchCacheObjectAtURL:r23 withCacheFileURL:r21 withFetchType:0x2 withRetryBlock:r20 withImageBlock:arg5 withDataBlock:0x0 withVideoBlock:0x0 withMarkupBlock:0x0];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)fetchDataAtURL:(void *)arg2 withCacheFileURL:(void *)arg3 withRetryBlock:(void *)arg4 withDataBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self fetchCacheObjectAtURL:r23 withCacheFileURL:r21 withFetchType:0x1 withRetryBlock:r20 withImageBlock:0x0 withDataBlock:arg5 withVideoBlock:0x0 withMarkupBlock:0x0];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)fetchVideotAtURL:(void *)arg2 withCacheFileURL:(void *)arg3 withRetryBlock:(void *)arg4 withVideoBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self fetchCacheObjectAtURL:r23 withCacheFileURL:r21 withFetchType:0x3 withRetryBlock:r20 withImageBlock:0x0 withDataBlock:0x0 withVideoBlock:arg5 withMarkupBlock:0x0];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)fetchMarkupAtURL:(void *)arg2 withCacheFileURL:(void *)arg3 withRetryBlock:(void *)arg4 withMarkupBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self fetchCacheObjectAtURL:r23 withCacheFileURL:r21 withFetchType:0x4 withRetryBlock:r20 withImageBlock:0x0 withDataBlock:0x0 withVideoBlock:0x0 withMarkupBlock:arg5];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)addVideoRequest:(void *)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r21 pendingVideoRequests];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)videoRequestForKey:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r20 pendingVideoRequests];
    r0 = [r0 retain];
    [[r0 objectForKey:r2] retain];
    [r0 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)removeVideoRequestForKey:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r20 pendingVideoRequests];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)resourceLoader:(void *)arg2 cancelLoadingRequest:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self videoRequestForKey:r21];
    r0 = [r0 retain];
    [r0 cancel];
    [self removeVideoRequestForKey:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)fetchCacheObjectAtURL:(void *)arg2 withCacheFileURL:(void *)arg3 withFetchType:(long long)arg4 withRetryBlock:(void *)arg5 withImageBlock:(void *)arg6 withDataBlock:(void *)arg7 withVideoBlock:(void *)arg8 withMarkupBlock:(void *)arg9 {
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
    r26 = arg4;
    r27 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [arg5 retain];
    r22 = [arg6 retain];
    r21 = [arg7 retain];
    r24 = [arg8 retain];
    r0 = [arg9 retain];
    var_88 = r23;
    var_F8 = r24;
    var_F0 = r22;
    var_110 = r0;
    if (r23 == 0x0) goto loc_100a85954;

loc_100a853bc:
    var_90 = r27;
    r8 = &@selector(getTemplateForKey:);
    r28 = *(r8 + 0xae0);
    if (r26 == 0x3) {
            r8 = &@selector(getTemplateForKey:);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    r9 = @selector(createDirectoryAtURL:withIntermediateDirectories:attributes:error:);
    var_D0 = r9;
    if (r26 == 0x1) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r11 = @selector(fbad_dataWithContentsOfURL:options:error:);
    var_A8 = r11;
    if (r21 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r11 = 0x1;
            }
    }
    r10 = @selector(writeData:toURL:error:);
    var_B0 = r10;
    var_D4 = r9 & r11;
    r9 = @selector(logDiskWriteSuccessIfNeededForURL:fetchType:);
    var_E0 = r9;
    if (r26 == 0x2) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if (r22 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r10 = 0x1;
            }
    }
    var_FC = r9 & r10;
    r9 = @selector(imageWithData:);
    var_120 = r9;
    if (r24 != 0x0) {
            r9 = @selector(imageWithData:);
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    var_124 = r8 & r9;
    r8 = @selector(logCreativeDownloadFailureForURL:fetchType:reason:);
    var_118 = r8;
    var_78 = r26;
    if (r26 == 0x4) {
            r8 = @selector(logCreativeDownloadFailureForURL:fetchType:reason:);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    var_128 = r8 & r9;
    var_C0 = r28;
    var_B8 = r19;
    var_80 = r21;
    r23 = var_78;
    goto loc_100a854d8;

loc_100a854d8:
    if ((*(var_88 + 0x10))(var_88) == 0x0) goto loc_100a85954;

loc_100a854e8:
    r0 = [r19 URLByDeletingLastPathComponent];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, var_D0);
            [r21 release];
    }
    r8 = [r19 checkResourceIsReachableAndReturnError:r2];
    r27 = var_90;
    if (r8 != 0x0) goto loc_100a85804;

loc_100a85564:
    var_70 = r24;
    objc_msgSend(@class(FBAdLogger), r28);
    r0 = objc_msgSend(@class(NSData), var_A8);
    r29 = r29;
    r22 = [r0 retain];
    r24 = [0x0 retain];
    r25 = objc_msgSend(r27, var_B0);
    r21 = [0x0 retain];
    if (r25 == 0x0) goto loc_100a85674;

loc_100a855f0:
    objc_msgSend(r27, var_E0);
    r25 = [r19 retain];
    [r20 release];
    objc_msgSend(@class(FBAdLogger), r28);
    if (var_D4 == 0x0) goto loc_100a856c8;

loc_100a85648:
    r27 = 0x1;
    (*(var_80 + 0x10))(var_80, r22, 0x1);
    r20 = r25;
    r28 = var_C0;
    goto loc_100a85748;

loc_100a85748:
    r19 = var_B8;
    goto loc_100a857d0;

loc_100a857d0:
    [r21 release];
    [r22 release];
    [r24 release];
    [var_70 release];
    r21 = var_80;
    if (r27 == 0x0) goto loc_100a854d8;

loc_100a85954:
    [var_110 release];
    [var_F8 release];
    [r21 release];
    [var_F0 release];
    [var_88 release];
    [r19 release];
    [r20 release];
    return;

loc_100a856c8:
    r19 = var_B8;
    if (var_FC == 0x0) goto loc_100a85750;

loc_100a856d4:
    r0 = objc_msgSend(@class(UIImage), var_120);
    r29 = r29;
    r20 = [r0 retain];
    r0 = var_F0;
    goto loc_100a857a4;

loc_100a857a4:
    (*(r0 + 0x10))();
    [r20 release];
    goto loc_100a857c0;

loc_100a857c0:
    r27 = 0x1;
    r20 = r25;
    r28 = var_C0;
    goto loc_100a857d0;

loc_100a85750:
    if (var_124 == 0x0) goto loc_100a85774;

loc_100a85758:
    (*(var_F8 + 0x10))(var_F8, r25, 0x1);
    goto loc_100a857c0;

loc_100a85774:
    if (var_128 == 0x0) goto loc_100a857c0;

loc_100a8577c:
    r20 = [[NSString alloc] initWithData:r2 encoding:r3];
    r0 = var_110;
    goto loc_100a857a4;

loc_100a85674:
    objc_msgSend(@class(FBAdLogger), r28);
    if (r24 != 0x0 || r21 == 0x0) goto loc_100a856fc;

loc_100a856a4:
    r0 = [r21 localizedDescription];
    r29 = r29;
    r25 = [r0 retain];
    r0 = r27;
    r1 = @selector(logDiskWriteFailureIfNeededForURL:fetchType:reason:);
    goto loc_100a85720;

loc_100a85720:
    objc_msgSend(r0, r1);
    r28 = var_C0;
    [r25 release];
    goto loc_100a85744;

loc_100a85744:
    r27 = 0x0;
    goto loc_100a85748;

loc_100a856fc:
    if (r24 == 0x0) goto loc_100a85744;

loc_100a85700:
    r0 = [r24 localizedDescription];
    r29 = r29;
    r25 = [r0 retain];
    r0 = r27;
    r1 = var_118;
    goto loc_100a85720;

loc_100a85804:
    r22 = var_78;
    objc_msgSend(@class(FBAdLogger), r28);
    if (r22 != 0x3) goto loc_100a85870;

loc_100a85834:
    r21 = [r19 retain];
    [r20 release];
    r0 = var_F8;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    [r24 release];
    r20 = r21;
    goto loc_100a85950;

loc_100a85950:
    r21 = var_80;
    goto loc_100a85954;

loc_100a85870:
    r0 = [NSData dataWithContentsOfURL:r19];
    r29 = r29;
    r21 = [r0 retain];
    r23 = var_F0;
    if (r22 == 0x2) goto loc_100a858c8;

loc_100a858a0:
    if (r22 != 0x1) goto loc_100a858f8;

loc_100a858a8:
    if (var_80 != 0x0) {
            (*(var_80 + 0x10))(var_80, r21, 0x0);
    }
    goto loc_100a85940;

loc_100a85940:
    [r21 release];
    [r24 release];
    goto loc_100a85950;

loc_100a858f8:
    if (var_128 == 0x0) goto loc_100a85940;

loc_100a85900:
    r0 = [NSString alloc];
    r3 = 0x4;
    r22 = [r0 initWithData:r2 encoding:r3];
    r0 = var_110;
    r8 = *(r0 + 0x10);
    goto loc_100a8592c;

loc_100a8592c:
    (r8)(r0, r22, 0x0, r3, 0x56);
    [r22 release];
    goto loc_100a85940;

loc_100a858c8:
    if (r23 == 0x0) goto loc_100a85940;

loc_100a858cc:
    r3 = "ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdResourceLoader.m";
    r22 = [objc_msgSend(@class(UIImage), var_120) retain];
    r8 = *(r23 + 0x10);
    r0 = r23;
    goto loc_100a8592c;
}

-(bool)resourceLoader:(void *)arg2 hasPrefetchedDataForUrl:(void *)arg3 {
    return 0x0;
}

-(void)resourceLoader:(void *)arg2 loadRequest:(void *)arg3 {
    r0 = [arg3 retain];
    var_40 = r0;
    r20 = [r0 retain];
    r0 = objc_retainBlock(&var_60);
    r22 = [[FBAdURLSession sharedSession] retain];
    r23 = [[r20 request] retain];
    r24 = [[r22 requestWithURLRequest:r23 responseHandler:r0] retain];
    [r23 release];
    [r22 release];
    [self addVideoRequest:r24 forKey:r20];
    [r24 release];
    [r0 release];
    [var_40 release];
    [r20 release];
    return;
}

-(bool)resourceLoader:(void *)arg2 hasCachedDataForUrl:(void *)arg3 offset:(long long)arg4 length:(int)arg5 {
    return 0x0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_pendingVideoRequests, 0x0);
    return;
}

-(int)activeRequestCountUsingResourceLoader:(void *)arg2 {
    return 0x0;
}

-(void *)pendingVideoRequests {
    r0 = self->_pendingVideoRequests;
    return r0;
}

-(void)setPendingVideoRequests:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pendingVideoRequests, arg2);
    return;
}

+(void *)sharedResourceLoader {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011ddb00 != -0x1) {
            dispatch_once(0x1011ddb00, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddb08);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)fetchTypeToCreativeMap {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddaf0 != -0x1) {
            dispatch_once(0x1011ddaf0, 0x100eab020);
    }
    r0 = *0x1011ddaf8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end