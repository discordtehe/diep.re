@implementation FBAdCache

-(void *)init {
    r0 = [self initWithExpirationInterval:r2];
    return r0;
}

-(void *)initWithExpirationInterval:(double)arg2 {
    r31 = r31 - 0xc0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r0 = [[r29 - 0x50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [[NSMapTable weakToStrongObjectsMapTable] retain];
            [r19 setPendingVideoRequests:r20];
            [r20 release];
            r20 = [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
            [r19 setExpirationQueue:r20];
            [r20 release];
            r20 = [[NSMapTable weakToWeakObjectsMapTable] retain];
            [r19 setObjectsToBeExpired:r20];
            [r20 release];
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            [r19 setTotalCostLimit:[r0 inMemoryCacheSizeLimit]];
            [r0 release];
            objc_initWeak(&stack[-104], r19);
            [[r19 expirationQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:r21 queue:&var_80 block:r5];
            r22 = [r0 retain];
            [r19 setRemovalTimer:r22];
            [r22 release];
            [r21 release];
            [[FBAdNotificationCenter notificationCenterForObject:r19] retain];
            objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
            [r22 addNotificationWithName:r23 object:0x0 block:&var_A8];
            [r22 release];
            r22 = [FBAdInMemoryCache new];
            [r19 setCacheV2:r22];
            [r22 release];
            objc_destroyWeak(&var_A8 + 0x20);
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    r0 = r19;
    return r0;
}

-(void *)objectForKey:(void *)arg2 {
    r0 = [self objectForKey:arg2 filterPlaceholder:0x1];
    return r0;
}

-(void *)objectForKey:(void *)arg2 filterPlaceholder:(bool)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if ([r20 shouldUseNonNSCacheBasedCache] != 0x0) {
                    r0 = [r20 cacheV2];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r22 release];
            }
            else {
                    r0 = [[&var_40 super] objectForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
            }
    }
    else {
            r20 = 0x0;
    }
    [FBAdCachedObject class];
    if ([r20 isMemberOfClass:r2] != 0x0) {
            r21 = [[r20 object] retain];
            [r20 release];
            r20 = r21;
    }
    else {
            if (r21 != 0x0) {
                    [FBPlaceholderObject class];
                    if ([r20 isMemberOfClass:r2] != 0x0) {
                            [r20 release];
                            r20 = 0x0;
                    }
            }
    }
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdCache.m" lineNumber:0x19e format:@"Returning cached value %@ for key %@"];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)removeObjectForKey:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 shouldUseNonNSCacheBasedCache] != 0x0) {
            r0 = [r20 cacheV2];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r2];
            [r20 release];
    }
    else {
            [[&var_20 super] removeObjectForKey:r2];
    }
    [r19 release];
    return;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 withExpiration:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self setObject:r22 forKey:r20 cost:0x0 withExpiration:arg4];
    [r20 release];
    [r22 release];
    return;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 cost:(unsigned long long)arg4 {
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
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            [r22 totalCostLimit];
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdCache.m" lineNumber:0x1b5 format:@"Setting value %@ for key %@ of size %lu of cost limit %lu"];
            if ([r22 shouldUseNonNSCacheBasedCache] != 0x0) {
                    r0 = [r22 cacheV2];
                    r0 = [r0 retain];
                    [r0 setObject:r19 forKey:r20 cost:r21];
                    [r0 release];
            }
            else {
                    [[&var_40 super] setObject:r19 forKey:r20 cost:r21];
            }
    }
    else {
            [r22 removeObjectForKey:r2];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)objectForKey:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    [self objectForKey:r21 withURL:0x0 withFetchType:0x0 withBlock:arg3];
    [r21 release];
    return;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 cost:(unsigned long long)arg4 withExpiration:(void *)arg5 {
    r31 = r31 - 0x90;
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
    r19 = self;
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [arg5 retain];
    r22 = [[FBAdCachedObject alloc] initWithObject:r23 withExpiration:r26];
    [r26 release];
    [r23 release];
    if (r20 != 0x0) {
            r23 = [r20 retain];
            [r19 setObject:r22 forKey:r23 cost:r21];
            [r23 release];
    }
    r21 = [[r19 expirationQueue] retain];
    [r22 retain];
    var_48 = r20;
    [r20 retain];
    dispatch_async(r21, &var_78);
    [r21 release];
    [var_48 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)shouldUseVideoWrapperCacheFix {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 shouldUseVideoWrapperCacheFix];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)objectForKey:(void *)arg2 withURL:(void *)arg3 withFetchType:(long long)arg4 withBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    [self objectForKey:r23 withURL:r21 withFetchType:arg4 withBlock:arg5 withCallback:0x1];
    [r21 release];
    [r23 release];
    return;
}

-(void *)imageForURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [[r20 objectForKey:r2] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)imageForURL:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[r21 absoluteString] retain];
    [self objectForKey:r22 withURL:r21 withFetchType:0x2 withBlock:r19];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)markupForURL:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[r21 absoluteString] retain];
    [self objectForKey:r22 withURL:r21 withFetchType:0x4 withBlock:r19];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)setImage:(void *)arg2 forURL:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [arg3 absoluteString];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            if (r19 != 0x0) {
                    r8 = 0x101137000;
                    objc_msgSend(r19, *(r8 + 0xa08));
                    asm { fcvtzs     x8, d0 };
                    r9 = r8 << 0x2;
                    r10 = r9 + 0xf;
                    if (r9 < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r10 = r9;
                            }
                            else {
                                    r10 = r10;
                            }
                    }
                    r9 = r9 - (r10 & 0xfffffffffffffff0);
                    r10 = 0x10 - r9;
                    r9 = 0x1f - r9;
                    if (r10 < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r9 = r10;
                            }
                            else {
                                    r9 = r9;
                            }
                    }
                    r9 = r10 - (r9 & 0xfffffffffffffff0);
                    r8 = r9 + 0x4044dc000;
                    asm { fcvtzs     x9, d1 };
                    [r20 setObject:r19 forKey:r21 cost:r8 * r9];
                    [r20 checkObjectExistsForKey:r21 adCreative:@"image"];
            }
            else {
                    [r20 removeObjectForKey:r2];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setMarkup:(void *)arg2 forURL:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [arg3 absoluteString];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            if (r19 != 0x0) {
                    [r20 setObject:r19 forKey:r21 cost:[r19 lengthOfBytesUsingEncoding:0x4]];
            }
            else {
                    [r20 removeObjectForKey:r2];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)objectForKey:(void *)arg2 withURL:(void *)arg3 withFetchType:(long long)arg4 withBlock:(void *)arg5 withCallback:(bool)arg6 {
    r31 = r31 - 0xe0;
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
    r24 = arg4;
    r23 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg5 retain];
    r20 = [r22 retain];
    r0 = [r23 objectForKey:r20 filterPlaceholder:0x0];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r0 = [r22 isMemberOfClass:[FBPlaceholderObject class]];
    if (r22 == 0x0 || (r0 & 0x1) != 0x0) goto loc_100a112e8;

loc_100a112b0:
    [UIImage class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_100a11368;

loc_100a112dc:
    r25 = @"image";
    goto loc_100a1139c;

loc_100a1139c:
    [r25 retain];
    r26 = 0x1;
    r24 = 0x1;
    if (r20 == 0x0) {
            r26 = 0x1;
    }
    else {
            [r23 logCacheHitOrMissForKey:r20 adCreative:r25 hit:r24];
    }
    goto loc_100a115e4;

loc_100a115e4:
    if (r21 != 0x0 && r26 != 0x0) {
            var_60 = [r21 retain];
            var_58 = [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_80);
            [var_58 release];
            [var_60 release];
    }
    goto loc_100a11650;

loc_100a11650:
    [r22 release];
    [r25 release];
    [r20 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;

loc_100a11368:
    if (r24 != 0x4) goto loc_100a1141c;

loc_100a11370:
    r25 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r22, r25) == 0x0) goto loc_100a1141c;

loc_100a11394:
    r25 = @"markup";
    goto loc_100a1139c;

loc_100a1141c:
    r25 = @selector(isKindOfClass:);
    [FBAdVideoURLWrapper class];
    if (objc_msgSend(r22, r25) != 0x0) {
            r0 = [r22 retain];
            r25 = r0;
            r0 = [r0 url];
            r0 = [r0 retain];
            r24 = [r0 checkResourceIsReachableAndReturnError:0x0];
            [r0 release];
            [@"video" retain];
            r26 = 0x1;
            if (r19 != 0x0) {
                    r26 = 0x1;
                    if (r24 == 0x0) {
                            [r23 logVideoWrapperCachedWithVideoMissingForKey:r20];
                            if ([r23 shouldUseVideoWrapperCacheFix] != 0x0) {
                                    r0 = [FBPlaceholderObject alloc];
                                    r0 = [r0 initWithKey:r20 withURL:r19 withFetchType:0x3 withCache:r23];
                                    r26 = r0;
                                    [r0 addCallback:r21];
                                    if (r20 != 0x0) {
                                            [r23 setObject:r2 forKey:r3];
                                    }
                                    [r26 release];
                                    r26 = 0x0;
                            }
                            else {
                                    r26 = 0x1;
                            }
                    }
            }
            [r25 release];
            r25 = @"video";
            if (r20 != 0x0) {
                    [r23 logCacheHitOrMissForKey:r20 adCreative:r25 hit:r24];
            }
    }
    else {
            r25 = 0x0;
            r26 = 0x1;
    }
    goto loc_100a115e4;

loc_100a112e8:
    if (r0 == 0x0) goto loc_100a113b4;

loc_100a112ec:
    r0 = [r22 retain];
    r23 = r0;
    if ([r0 retriesLeft] >= 0x1) {
            asm { ccmp       w25, #0x0, #0x4, ge };
    }
    if (!CPU_FLAGS & NE) {
            if (r21 != 0x0) {
                    var_88 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_A8);
                    [var_88 release];
            }
    }
    else {
            [r23 addCallback:r21];
    }
    r0 = r23;
    goto loc_100a11544;

loc_100a11544:
    [r0 release];
    goto loc_100a11548;

loc_100a11548:
    r25 = 0x0;
    goto loc_100a11650;

loc_100a113b4:
    if (r19 == 0x0) goto loc_100a11550;

loc_100a113b8:
    r0 = [FBPlaceholderObject alloc];
    r0 = [r0 initWithKey:r20 withURL:r19 withFetchType:r24 withCache:r23];
    r24 = r0;
    [r0 addCallback:r21];
    if (r20 != 0x0) {
            [r23 setObject:r2 forKey:r3];
    }
    r0 = r24;
    goto loc_100a11544;

loc_100a11550:
    if (r21 == 0x0) goto loc_100a11548;

loc_100a11554:
    var_B0 = [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_D0);
    r0 = var_B0;
    goto loc_100a11544;
}

-(void)videoURLWrapperForURL:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[r21 absoluteString] retain];
    [self objectForKey:r22 withURL:r21 withFetchType:0x3 withBlock:r19];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)setVideoURLWrapper:(void *)arg2 forURL:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [arg3 absoluteString];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            if (r19 != 0x0) {
                    [r20 setObject:r19 forKey:r21];
                    [r20 checkObjectExistsForKey:r21 adCreative:@"video"];
            }
            else {
                    [r20 removeObjectForKey:r2];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setNativeAds:(void *)arg2 forScrollView:(void *)arg3 forManager:(void *)arg4 {
    [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r25 = [r20 hash];
    [r20 release];
    r20 = [r19 hash];
    [r19 release];
    [[NSNumber numberWithUnsignedLong:r20 + r25] retain];
    [self setObject:r2 forKey:r3];
    [r22 release];
    [r19 release];
    return;
}

-(void *)nativeAdsForScrollView:(void *)arg2 forManager:(void *)arg3 {
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
    r24 = [r21 hash];
    [r21 release];
    r21 = [r19 hash];
    [r19 release];
    r21 = [[NSNumber numberWithUnsignedLong:r21 + r24] retain];
    r19 = [[self objectForKey:r21] retain];
    [r21 release];
    [NSArray class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
            r20 = [**___NSArray0__ retain];
            [r19 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)diskCacheSize {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[NSFileManager defaultManager] retain];
    r21 = [sub_100a0fd78(0x0, 0x0) retain];
    r22 = [r20 fb_getSizeOfDirectory:&var_28 atURL:r21 error:&var_30];
    r19 = [var_30 retain];
    [r21 release];
    [r20 release];
    if ((r22 & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdCache.m" lineNumber:0x296 format:@"Failed to detect currect disk cache size due to error: %@"];
    }
    [r19 release];
    r0 = var_28;
    return r0;
}

-(bool)shouldUseNonNSCacheBasedCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 shouldUseNonNSCacheBasedCache] != 0x0) {
            r0 = [r20 cacheV2];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)logVideoWrapperCachedWithVideoMissingForKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [FBAdLoggingContext sharedContext];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 cacheDebugDataForKey:r21];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r19 != 0x0) {
            r21 = [[r19 adFormat] retain];
            r22 = [[r19 requestId] retain];
            [FBAdDebugLogging logVideoWrapperCachedWithVideoMissingForAdFormat:r21 requestId:r22];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(bool)checkObjectExistsForKey:(void *)arg2 adCreative:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = 0x1;
    }
    else {
            r0 = [FBAdLoggingContext sharedContext];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 cacheDebugDataForKey:r19];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            if (r22 != 0x0 && ([r22 inMemoryCacheWriteFailureLogged] & 0x1) == 0x0) {
                    r25 = [[r22 adFormat] retain];
                    r27 = [[r22 requestId] retain];
                    [FBAdDebugLogging logInMemoryCacheFailedForAdFormat:r25 creative:r20 requestId:r27];
                    [r27 release];
                    [r25 release];
                    r23 = [[FBAdLoggingContext sharedContext] retain];
                    r24 = [[r22 requestId] retain];
                    [r23 markInMemoryWriteFailureCacheEventLoggedForKey:r19 requestId:r24];
                    [r24 release];
                    [r23 release];
            }
            [r22 release];
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)wipeCache {
    [self wipeDiskCache];
    [self wipeInMemoryCache];
    return;
}

-(void)logCacheHitOrMissForKey:(void *)arg2 adCreative:(void *)arg3 hit:(bool)arg4 {
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
    r23 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [FBAdLoggingContext sharedContext];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 cacheDebugDataForKey:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (r21 != 0x0 && ([r21 hitOrMissLogged] & 0x1) == 0x0) {
            r25 = [[r21 adFormat] retain];
            r0 = [r21 requestId];
            r29 = r29;
            r27 = [r0 retain];
            r8 = &@selector(logCacheMissForAdFormat:creative:cacheContext:requestId:);
            if (r23 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = &@selector(logCacheMissForAdFormat:creative:cacheContext:requestId:);
                    }
                    else {
                            r8 = &@selector(logCacheHitForAdFormat:creative:cacheContext:requestId:);
                    }
            }
            objc_msgSend(@class(FBAdDebugLogging), *r8);
            [r27 release];
            [r25 release];
            r22 = [[FBAdLoggingContext sharedContext] retain];
            r23 = [[r21 requestId] retain];
            [r22 markCacheHitOrMissEventLoggedForKey:r19 requestId:r23];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)wipeDiskCacheIfNeeded {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self diskCacheSize];
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 onDiskCacheSizeLimit];
    [r0 release];
    if (r19 >= r21) {
            r22 = [[NSFileManager defaultManager] retain];
            r0 = sub_100a0fd78(0x0, 0x0);
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r22 removeItemAtURL:r23 error:&var_38];
            r20 = [var_38 retain];
            [r23 release];
            [r22 release];
            if ((r24 & 0x1) != 0x0) {
                    [FBAdDebugLogging logCacheOnDiskWipeSuccess:r19];
            }
            else {
                    [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdCache.m" lineNumber:0x2e1 format:@"Failed to clear disk cache with current size %llu and limit %zu due to error %@."];
                    r0 = [r20 localizedDescription];
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r3 = r0;
                            }
                            else {
                                    r3 = @"Unknown error";
                            }
                    }
                    [FBAdDebugLogging logCacheOnDiskWipeFailure:r19 reason:r3];
                    [r22 release];
            }
            [r20 release];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)wipeDiskCache {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[NSFileManager defaultManager] retain];
    r21 = [sub_100a0fd78(0x0, 0x0) retain];
    r22 = [r20 removeItemAtURL:r21 error:&var_28];
    r19 = [var_28 retain];
    [r21 release];
    [r20 release];
    if ((r22 & 0x1) == 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdCache.m" lineNumber:0x2f9 format:@"Failed to clear local cache: %@"];
    }
    [r19 release];
    return;
}

-(void)wipeInMemoryCache {
    [self removeAllObjects];
    return;
}

-(void)removeAllObjects {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self shouldUseNonNSCacheBasedCache] != 0x0) {
            r0 = [r19 cacheV2];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r19 release];
    }
    else {
            [[&var_20 super] removeAllObjects];
    }
    return;
}

-(bool)fileWithRemoteUrlExistsOnDisk:(void *)arg2 fetchType:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 hash];
    r0 = sub_100a0fd78(arg3, r0);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r20 = [r0 fileExistsAtPath:r19];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    r0 = [self removalTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_objectsToBeExpired, 0x0);
    objc_storeStrong((int64_t *)&self->_pendingVideoRequests, 0x0);
    objc_storeStrong((int64_t *)&self->_cacheV2, 0x0);
    objc_storeStrong((int64_t *)&self->_removalTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_expirationQueue, 0x0);
    return;
}

-(void *)expirationQueue {
    r0 = self->_expirationQueue;
    return r0;
}

-(void)setExpirationQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_expirationQueue, arg2);
    return;
}

-(void *)removalTimer {
    r0 = self->_removalTimer;
    return r0;
}

-(void)setRemovalTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_removalTimer, arg2);
    return;
}

-(void *)cacheV2 {
    r0 = self->_cacheV2;
    return r0;
}

-(void)setCacheV2:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cacheV2, arg2);
    return;
}

-(void *)pendingVideoRequests {
    r0 = self->_pendingVideoRequests;
    return r0;
}

-(void)setPendingVideoRequests:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pendingVideoRequests, arg2);
    return;
}

-(void *)objectsToBeExpired {
    r0 = self->_objectsToBeExpired;
    return r0;
}

-(void)setObjectsToBeExpired:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_objectsToBeExpired, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdCache");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)sharedCache {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011dcbd8 != -0x1) {
            dispatch_once(0x1011dcbd8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcbe0);
    [r19 release];
    r0 = r20;
    return r0;
}

@end