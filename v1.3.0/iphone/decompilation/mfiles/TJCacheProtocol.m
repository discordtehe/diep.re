@implementation TJCacheProtocol

+(void)setupCacheProtocol {
    [NSURLProtocol registerClass:[TJCacheProtocol class]];
    [self validateCache];
    *(int32_t *)0x1011dc1f0 = 0x0;
    return;
}

+(void *)localCacheFilePath:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [TJCacheProtocol localCachePath:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [NSURL fileURLWithPath:r19];
            r0 = [r0 retain];
            r20 = [[r0 absoluteString] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)isAssetCached:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 localCachePath:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10095ada8;

loc_10095ac88:
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 fileExistsAtPath:r20];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_10095acd0;

loc_10095acc8:
    r21 = 0x1;
    goto loc_10095adac;

loc_10095adac:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_10095acd0:
    r22 = [[r21 generateCacheKey:r19] retain];
    r23 = [NSMutableDictionary alloc];
    r21 = [[r21 cachedAssetDictionary] retain];
    r23 = [r23 initWithDictionary:r21];
    [r21 release];
    [r23 removeObjectForKey:r22];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r21 release];
    [r23 release];
    [r22 release];
    goto loc_10095ada8;

loc_10095ada8:
    r21 = 0x0;
    goto loc_10095adac;
}

+(void *)localCachePath:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [NSMutableDictionary alloc];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r24 = [[r0 objectForKey:@"TJC_CACHED_ASSET_DICT"] retain];
    r19 = [r19 initWithDictionary:r24];
    [r24 release];
    [r0 release];
    r21 = [[self generateCacheKey:r20] retain];
    [r20 release];
    r0 = [r19 objectForKey:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_10095af18;

loc_10095aed4:
    r21 = [[r20 valueForKey:@"localFilePath"] retain];
    if (r21 == 0x0 || [r21 length] == 0x0) goto loc_10095af10;

loc_10095af1c:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_10095af10:
    [r21 release];
    goto loc_10095af18;

loc_10095af18:
    r21 = 0x0;
    goto loc_10095af1c;
}

+(void *)canonicalRequestForRequest:(void *)arg2 {
    r0 = objc_retainAutoreleaseReturnValue(arg2);
    return r0;
}

+(bool)canInitWithRequest:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 valueForHTTPHeaderField:@"X-TJCache"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 URL];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 absoluteString];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 pathExtension];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 isEqualToString:r2];
            [r0 release];
            [r24 release];
            [r23 release];
            if ((r26 & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r20 = [r20 class];
                    r0 = [r19 URL];
                    r0 = [r0 retain];
                    r22 = [[r0 absoluteString] retain];
                    r20 = [r20 isAssetCached:r22];
                    [r22 release];
                    [r0 release];
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocol:self didLoadData:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)startLoading {
    r0 = [self request];
    r0 = [r0 retain];
    r20 = [r0 mutableCopy];
    [r0 release];
    r24 = [self class];
    r0 = [r20 URL];
    r0 = [r0 retain];
    r26 = [[r0 absoluteString] retain];
    r24 = [[r24 localCachePath:r26] retain];
    r23 = [[NSURL fileURLWithPath:r24] retain];
    [r20 setURL:r23];
    [r23 release];
    [r24 release];
    [r26 release];
    [r0 release];
    r0 = [self request];
    r0 = [r0 retain];
    r24 = [[r0 URL] retain];
    r22 = [[r20 URL] retain];
    [TJCLog logWithLevel:0x6 format:@"Reading request for %@ from %@"];
    [r22 release];
    [r24 release];
    [r0 release];
    r21 = [[NSURLConnection connectionWithRequest:r20 delegate:self] retain];
    [self setConnection:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)stopLoading {
    r0 = [self connection];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    return;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocol:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocol:self didReceiveResponse:r21 cacheStoragePolicy:0x2];
    [r21 release];
    [r0 release];
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    r0 = [self client];
    r0 = [r0 retain];
    [r0 URLProtocolDidFinishLoading:self];
    [r0 release];
    return;
}

+(bool)cacheAssetWithURL:(void *)arg2 offerID:(void *)arg3 timeToLive:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self cacheAssetWithURLAndCompletion:r22 offerID:r20 timeToLive:arg4 completion:0x0];
    [r20 release];
    r0 = [r22 release];
    return r0;
}

+(void)processAssetRequest:(void *)arg2 offerID:(void *)arg3 timeToLive:(void *)arg4 completion:(void *)arg5 {
    r31 = r31 - 0xd0;
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
    r25 = self;
    r19 = [arg2 retain];
    r26 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [[r25 generateCacheKey:r19] retain];
    r0 = [r25 generateLocalPath:r19];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r9 = [[NSURL URLWithString:r19] retain];
            r0 = [TJCUtil createRequestWithURL:r9 cachePolicy:0x0 timeoutInterval:r4];
            r0 = [r0 retain];
            [r0 setValue:@"" forHTTPHeaderField:@"X-TJCache"];
            [TJCLog logWithLevel:0x6 format:@"Caching asset with url %@"];
            r20 = [[NSOperationQueue mainQueue] retain];
            var_88 = [r19 retain];
            var_80 = [r24 retain];
            var_78 = [r22 retain];
            var_68 = [r23 retain];
            var_60 = [r26 retain];
            var_58 = [r21 retain];
            [NSURLConnection sendAsynchronousRequest:r0 queue:r20 completionHandler:&var_A8];
            [r20 release];
            [var_58 release];
            [var_60 release];
            [var_68 release];
            [var_78 release];
            [var_80 release];
            [var_88 release];
            [r0 release];
            [r9 release];
    }
    else {
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, 0x0);
            }
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r26 release];
    [r19 release];
    return;
}

+(bool)cacheAssetWithURLAndCompletion:(void *)arg2 offerID:(void *)arg3 timeToLive:(void *)arg4 completion:(void *)arg5 {
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [[r24 generateCacheKey:r19] retain];
    r25 = [NSMutableDictionary alloc];
    r26 = [[r24 cachedAssetDictionary] retain];
    r25 = [r25 initWithDictionary:r26];
    [r26 release];
    r0 = [r25 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [TJCLog logWithLevel:0x6 format:@"Already cached, refreshing TTL %@"];
            [r24 refreshAssetWithURL:r19 timeToLive:r21];
            if (r22 != 0x0) {
                    r24 = 0x1;
                    (*(r22 + 0x10))(r22, 0x1);
            }
            else {
                    r24 = 0x1;
            }
    }
    else {
            r26 = [[r24 generateLocalPath:r19] retain];
            if (r26 != 0x0) {
                    [r24 processAssetRequest:r19 offerID:r20 timeToLive:r21 completion:r22];
                    r24 = 0x1;
            }
            else {
                    if (r22 != 0x0) {
                            (*(r22 + 0x10))(r22, 0x0);
                    }
                    r24 = 0x0;
            }
            [r26 release];
    }
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

+(void)validateCache {
    r31 = r31 - 0x1c0;
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
    r20 = [NSMutableDictionary alloc];
    r21 = [[self cachedAssetDictionary] retain];
    r19 = [r20 initWithDictionary:r21];
    [r21 release];
    r0 = [r19 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A8 = r1;
    r21 = objc_msgSend(r0, r1);
    if (r21 != 0x0) {
            do {
                    r27 = 0x0;
                    var_190 = r21;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            r22 = *(0x0 + r27 * 0x8);
                            r0 = [r19 objectForKey:r22];
                            r0 = [r0 retain];
                            r25 = r0;
                            r24 = [[r0 objectForKey:@"localFilePath"] retain];
                            r0 = [NSFileManager defaultManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            r20 = [r0 fileExistsAtPath:r24];
                            [r0 release];
                            if ((r20 & 0x1) != 0x0) {
                                    r0 = [NSDate date];
                                    r0 = [r0 retain];
                                    [r0 timeIntervalSince1970];
                                    [r0 release];
                                    r0 = [r25 objectForKey:@"timestamp"];
                                    r0 = [r0 retain];
                                    [r0 doubleValue];
                                    [r0 release];
                                    r0 = [r25 objectForKey:@"timeToLive"];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 doubleValue];
                                    [r0 release];
                                    if (d8 > d9 + d10) {
                                            r21 = r23;
                                            r0 = [NSFileManager defaultManager];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r23 = [r0 removeItemAtPath:r24 error:&var_140];
                                            r26 = [var_140 retain];
                                            [r0 release];
                                            if ((r23 & 0x1) == 0x0) {
                                                    [TJCLog logWithLevel:r2 format:r3];
                                            }
                                            [r19 removeObjectForKey:r22];
                                            [r26 release];
                                            r23 = r21;
                                            r21 = var_190;
                                    }
                            }
                            else {
                                    [r19 removeObjectForKey:r22];
                            }
                            r0 = [NSUserDefaults standardUserDefaults];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setObject:r19 forKey:@"TJC_CACHED_ASSET_DICT"];
                            [r0 release];
                            [r24 release];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r21 = objc_msgSend(r23, var_1A8);
            } while (r21 != 0x0);
    }
    var_78 = **___stack_chk_guard;
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

+(void *)generateCacheKey:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSURL URLWithString:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 path];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = [[r20 path] retain];
                    r21 = [[NSMutableString stringWithString:r23] retain];
                    [r23 release];
                    r0 = [r20 query];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r22 = [[r20 query] retain];
                            r23 = [[NSString stringWithFormat:@"?%@"] retain];
                            [r21 appendString:r23];
                            [r23 release];
                            [r22 release];
                    }
            }
            else {
                    r21 = [r19 retain];
            }
    }
    else {
            r21 = [r19 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)generateLocalPath:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r22 = [arg2 retain];
    r0 = [NSURL URLWithString:r22];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 lastPathComponent] retain];
    r24 = [[self generateCacheKey:r22] retain];
    [r22 release];
    r21 = [[TJCUtil TJCSHA256WithString:r24] retain];
    [r24 release];
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r22 = [[r0 objectAtIndex:0x0] retain];
    [r0 release];
    r23 = [[r22 stringByAppendingFormat:@"/%@/%@"] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 createDirectoryAtPath:r23 withIntermediateDirectories:0x1 attributes:0x0 error:&var_58];
    r24 = [var_58 retain];
    [r0 release];
    if ((r27 & 0x1) != 0x0) {
            r25 = [[r23 stringByAppendingFormat:@"/%@"] retain];
    }
    else {
            r26 = [[r24 localizedFailureReason] retain];
            [TJCLog logWithLevel:0x3 format:@"%s: %d; %s; cannot write to file: %@"];
            [r26 release];
            r25 = 0x0;
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

+(void *)cachedAssetIDString {
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
    r19 = [[NSMutableArray alloc] init];
    r0 = [self cachedAssetDictionary];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x0) {
            var_108 = q0;
            var_130 = r21;
            r0 = [r21 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r22 = *var_108;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_108 != r22) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r0 = [r21 objectForKey:*(var_110 + r27 * 0x8)];
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r0 = [r0 objectForKey:@"offerId"];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    if (r20 != 0x0 && ([r19 containsObject:r20] & 0x1) == 0x0) {
                                            [r19 addObject:r2];
                                    }
                                    [r20 release];
                                    [r28 release];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r23 = objc_msgSend(r21, var_128);
                    } while (r23 != 0x0);
            }
            [r21 release];
            r21 = var_130;
    }
    var_58 = **___stack_chk_guard;
    r20 = [[r19 componentsJoinedByString:@","] retain];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)cachedAssetDictionary {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)clearCache {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r19 = [[r0 objectAtIndex:0x0] retain];
    [r0 release];
    r20 = [[r19 stringByAppendingFormat:@"/%@"] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 removeItemAtPath:r20 error:&var_38];
    r21 = [var_38 retain];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            [TJCLog logWithLevel:0x4 format:@"Error clearing cache"];
    }
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return 0x1;
}

+(void *)cachedAssetsToJSON {
    r19 = [[self cachedAssetDictionary] retain];
    r20 = [[NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:0x0] retain];
    r21 = [[NSString alloc] initWithData:r20 encoding:0x4];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)removeAssetWithURL:(void *)arg2 {
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
    r22 = [arg2 retain];
    r19 = [NSMutableDictionary alloc];
    r21 = [[self cachedAssetDictionary] retain];
    r19 = [r19 initWithDictionary:r21];
    [r21 release];
    r20 = [[self generateCacheKey:r22] retain];
    [r22 release];
    r0 = [r19 valueForKey:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r21 objectForKey:@"localFilePath"] retain];
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 removeItemAtPath:r22 error:&var_48];
            r23 = [var_48 retain];
            [r0 release];
            if ((r25 & 0x1) == 0x0) {
                    [TJCLog logWithLevel:0x4 format:@"Error deleting file from cache"];
            }
            [r19 removeObjectForKey:r20];
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return 0x1;
}

+(void)setPlacementCacheLimit:(int)arg2 {
    *(int32_t *)0x1011c4930 = arg2;
    return;
}

+(void)refreshAssetWithURL:(void *)arg2 timeToLive:(void *)arg3 {
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
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self generateCacheKey:r22] retain];
    [r22 release];
    r23 = [NSMutableDictionary alloc];
    r24 = [[self cachedAssetDictionary] retain];
    r21 = [r23 initWithDictionary:r24];
    [r24 release];
    r22 = [NSMutableDictionary alloc];
    r2 = r20;
    r0 = [r21 objectForKey:r2];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r22 = [r22 initWithDictionary:r23];
    [r23 release];
    if (r22 != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
            [r0 retain];
            [r22 setObject:r2 forKeyedSubscript:r3];
            [r25 release];
            [r24 release];
            if (r19 != 0x0) {
                    [r22 setObject:r2 forKeyedSubscript:r3];
            }
            else {
                    r0 = [NSNumber numberWithInt:r2];
                    r29 = r29;
                    [r0 retain];
                    [r22 setObject:r2 forKeyedSubscript:r3];
                    [r24 release];
            }
            [r21 setObject:r22 forKey:r20];
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r21 forKey:@"TJC_CACHED_ASSET_DICT"];
            [r0 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(int)getPlacementCacheLimit {
    return *(int32_t *)0x1011c4930;
}

+(void)incrementPlacementCacheCount {
    *(int32_t *)0x1011dc1f0 = *(int32_t *)0x1011dc1f0 + 0x1;
    return;
}

-(void *)connection {
    r0 = self->_connection;
    return r0;
}

+(void)decrementPlacementCacheCount {
    r9 = *(int32_t *)0x1011dc1f0;
    *(int32_t *)0x1011dc1f0 = r9 - 0x1 & !((r9 - 0x1) / 0xffffffff80000000);
    return;
}

+(int)getPlacementCacheCount {
    return *(int32_t *)0x1011dc1f0;
}

-(void)setConnection:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connection, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_connection, 0x0);
    return;
}

@end