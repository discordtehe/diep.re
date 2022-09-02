@implementation TJFLAnimatedImage

-(void)setFrameCacheSizeMax:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_frameCacheSizeMax));
    if (*(r19 + r21) != r20) {
            r0 = [r19 frameCacheSizeCurrent];
            *(r19 + r21) = r20;
            if (r0 >= r20) {
                    [r19 purgeFrameCacheIfNeeded];
            }
    }
    return;
}

-(unsigned long long)frameCacheSizeCurrent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [self frameCacheSizeOptimal];
    if ([r20 frameCacheSizeMax] != 0x0) {
            r0 = [r20 frameCacheSizeMax];
            if (r19 < r0) {
                    if (!CPU_FLAGS & B) {
                            r19 = r0;
                    }
                    else {
                            r19 = r19;
                    }
            }
    }
    if ([r20 frameCacheSizeMaxInternal] != 0x0) {
            r0 = [r20 frameCacheSizeMaxInternal];
            if (r19 < r0) {
                    if (!CPU_FLAGS & B) {
                            r19 = r0;
                    }
                    else {
                            r19 = r19;
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(void)setFrameCacheSizeMaxInternal:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_frameCacheSizeMaxInternal));
    if (*(r19 + r21) != r20) {
            r0 = [r19 frameCacheSizeCurrent];
            *(r19 + r21) = r20;
            if (r0 >= r20) {
                    [r19 purgeFrameCacheIfNeeded];
            }
    }
    return;
}

+(void)initialize {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = _cmd;
    r19 = self;
    if ([TJFLAnimatedImage class] == r19) {
            r0 = [NSHashTable weakObjectsHashTable];
            r0 = [r0 retain];
            r8 = *0x1011dc0b0;
            *0x1011dc0b0 = r0;
            [r8 release];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 addObserverForName:**_UIApplicationDidReceiveMemoryWarningNotification object:0x0 queue:0x0 usingBlock:&var_50];
            [[r0 retain] release];
            [r21 release];
    }
    return;
}

-(void *)init {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self initWithAnimatedGIFData:0x0] retain];
    if (r19 == 0x0) {
            [TJFLAnimatedImage logStringFromBlock:0x100ea1818 withLevel:0x1];
    }
    [r19 release];
    r0 = r19;
    return r0;
}

-(void *)initWithAnimatedGIFData:(void *)arg2 {
    r0 = [self initWithAnimatedGIFData:arg2 optimalFrameCacheSize:0x0 predrawingEnabled:0x1];
    return r0;
}

-(void *)initWithAnimatedGIFData:(void *)arg2 optimalFrameCacheSize:(unsigned long long)arg3 predrawingEnabled:(bool)arg4 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff80 - 0x2c0;
    r21 = arg4;
    r25 = arg3;
    r22 = arg2;
    r20 = self;
    r0 = [r22 retain];
    r23 = r0;
    if ([r0 length] == 0x0) goto loc_10091553c;

loc_10091532c:
    r20 = [[r29 - 0x98 super] init];
    if (r20 == 0x0) goto loc_100915f84;

loc_100915354:
    objc_storeStrong((int64_t *)&r20->_data, r22);
    *(int8_t *)(int64_t *)&r20->_predrawingEnabled = r21;
    r0 = [NSMutableDictionary alloc];
    r0 = objc_msgSend(r0, r19);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedFramesForIndexes));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = @class(NSMutableIndexSet);
    r0 = [r0 alloc];
    r0 = objc_msgSend(r0, r19);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedFrameIndexes));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = @class(NSMutableIndexSet);
    r0 = [r0 alloc];
    r0 = objc_msgSend(r0, r19);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestedFrameIndexes));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = @(NO);
    r29 = r29;
    r19 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1];
    r0 = CGImageSourceCreateWithData(r23, r0);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_imageSource));
    *(r20 + r27) = r0;
    [r19 release];
    r0 = *(r20 + r27);
    if (r0 == 0x0) goto loc_100915560;

loc_100915488:
    r0 = CGImageSourceGetType(r0);
    r19 = r0;
    if (UTTypeConformsTo(r0, **_kUTTypeGIF) == 0x0) goto loc_1009155c4;

loc_1009154a4:
    r0 = *(r20 + r27);
    r0 = CGImageSourceCopyProperties(r0, 0x0);
    var_300 = r0;
    r0 = [r0 objectForKey:r2];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:**_kCGImagePropertyGIFLoopCount];
    r29 = r29;
    r22 = [r0 retain];
    [r19 release];
    if ([r22 respondsToSelector:r2] != 0x0) {
            r0 = [r22 unsignedIntegerValue];
    }
    else {
            r0 = 0x1;
    }
    var_308 = r22;
    var_318 = r25;
    var_2F8 = r23;
    r20->_loopCount = r0;
    r23 = CGImageSourceGetCount(*(r20 + r27));
    r0 = @class(NSMutableDictionary);
    r0 = [r0 dictionaryWithCapacity:r2];
    r29 = r29;
    r28 = [r0 retain];
    r22 = 0x0;
    if (r23 != 0x0) {
            r22 = 0x0;
            r24 = 0x0;
            r9 = *_kCGImagePropertyGIFUnclampedDelayTime;
            r15 = *_kCGImagePropertyGIFDelayTime;
            var_298 = *r9;
            var_2F0 = *r15;
            d8 = *0x100b9b5c0;
            var_290 = r23;
            stack[-664] = r27;
            do {
                    r21 = objc_autoreleasePoolPush();
                    r25 = CGImageSourceCreateImageAtIndex(*(r20 + r27), r24, 0x0);
                    if (r25 != 0x0) {
                            var_240 = r21;
                            r0 = [UIImage imageWithCGImage:r25];
                            r21 = r0;
                            r29 = r29;
                            r19 = [r0 retain];
                            if (r19 != 0x0) {
                                    var_248 = r19;
                                    var_258 = r22;
                                    r0 = [r20 posterImage];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 == 0x0) {
                                            objc_storeStrong((int64_t *)&r20->_posterImage, r21);
                                            [r20->_posterImage size];
                                            *(int128_t *)(int64_t *)&r20->_size = d0;
                                            *(int128_t *)((int64_t *)&r20->_size + 0x8) = d1;
                                            r20->_posterImageFrameIndex = r24;
                                            [[r20 cachedFramesForIndexes] retain];
                                            [[r20 posterImage] retain];
                                            [r20 posterImageFrameIndex];
                                            [[r23 numberWithUnsignedInteger:r2] retain];
                                            [r21 setObject:r2 forKey:r3];
                                            [r23 release];
                                            [r22 release];
                                            [r21 release];
                                            r0 = [r20 cachedFrameIndexes];
                                            r29 = r29;
                                            [r0 retain];
                                            [r20 posterImageFrameIndex];
                                            [r21 addIndex:r2];
                                            [r21 release];
                                    }
                                    r0 = *(r20 + r27);
                                    r0 = CGImageSourceCopyPropertiesAtIndex(r0, r24, 0x0);
                                    r21 = r0;
                                    r19 = @selector(objectForKey:);
                                    r0 = objc_msgSend(r0, r19);
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = objc_msgSend(r0, r19);
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    if (r22 != 0x0) {
                                            r19 = var_248;
                                    }
                                    else {
                                            r0 = objc_msgSend(r23, r19);
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            r19 = var_248;
                                            if (r22 == 0x0) {
                                                    if (r24 != 0x0) {
                                                            var_138 = [r19 retain];
                                                            var_130 = [r21 retain];
                                                            [TJFLAnimatedImage logStringFromBlock:&var_158 withLevel:0x3];
                                                            r27 = [[NSNumber numberWithUnsignedLong:r2] retain];
                                                            r0 = [r28 objectForKeyedSubscript:r2];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                            [r27 release];
                                                            [var_130 release];
                                                            r0 = var_138;
                                                    }
                                                    else {
                                                            var_100 = [r19 retain];
                                                            var_F8 = [r21 retain];
                                                            [TJFLAnimatedImage logStringFromBlock:&var_120 withLevel:0x3];
                                                            r0 = @class(NSNumber);
                                                            r0 = [r0 numberWithDouble:r2];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                            [var_F8 release];
                                                            r0 = var_100;
                                                    }
                                                    [r0 release];
                                            }
                                    }
                                    [r22 floatValue];
                                    if (s0 < *(int32_t *)0x100bf4960) {
                                            var_168 = r22;
                                            r0 = [r22 retain];
                                            r19 = r28;
                                            r28 = r0;
                                            [TJFLAnimatedImage logStringFromBlock:&var_188 withLevel:0x3];
                                            r0 = @class(NSNumber);
                                            r0 = [r0 numberWithDouble:r2];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            r0 = r28;
                                            r28 = r19;
                                            r19 = var_248;
                                            [r0 release];
                                            [var_168 release];
                                    }
                                    r0 = [NSNumber numberWithUnsignedLong:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r28 setObject:r2 forKeyedSubscript:r3];
                                    [r27 release];
                                    [r22 release];
                                    [r23 release];
                                    [r21 release];
                                    r22 = var_258;
                                    r23 = var_290;
                                    r27 = stack[-664];
                            }
                            else {
                                    r22 = r22 + 0x1;
                                    [TJFLAnimatedImage logStringFromBlock:&var_1B8 withLevel:0x3];
                            }
                            CFRelease(r25);
                            [r19 release];
                            r21 = var_240;
                    }
                    else {
                            r22 = r22 + 0x1;
                            var_1C8 = [r20 retain];
                            [TJFLAnimatedImage logStringFromBlock:&var_1E8 withLevel:0x3];
                            [var_1C8 release];
                    }
                    objc_autoreleasePoolPop(r21);
                    r24 = r24 + 0x1;
            } while (r23 != r24);
    }
    r0 = [r28 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_delayTimesForIndexes));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r20->_frameCount = r23;
    if ([r20 frameCount] == 0x0) goto loc_100915de8;

loc_100915cb8:
    r27 = r22;
    r0 = [r20 frameCount];
    r24 = var_300;
    r23 = var_2F8;
    r26 = var_308;
    if (r0 == 0x1) {
            d0 = *0x100b9b490;
            var_218 = [r24 retain];
            [TJFLAnimatedImage logStringFromBlock:&var_238 withLevel:0x3];
            [var_218 release];
    }
    r25 = var_318;
    r22 = @selector(alloc);
    if (r25 != 0x0) goto loc_100915e84;

loc_100915d44:
    r0 = [r20 posterImage];
    r29 = r29;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGImageGetBytesPerRow([r0 CGImage]);
    asm { ucvtf      d8, x0 };
    [r20 size];
    d8 = d1 * d8;
    objc_msgSend(r20, r19) - r27;
    asm { ucvtf      d0, x8 };
    d8 = *0x100bf4908 * d8 * d0;
    [r21 release];
    if (d8 < 0x4024000000000000) goto loc_100915e74;

loc_100915dc4:
    r21 = (int64_t *)&r20->_frameCacheSizeOptimal;
    if (d8 >= *0x100bf4910) {
            r8 = 0x100bf4000;
            r25 = 0x1;
    }
    else {
            r8 = 0x100bf4000;
            r25 = 0x5;
    }
    goto loc_100915e90;

loc_100915e90:
    *r21 = r25;
    r0 = [r20 frameCount];
    if (r25 < r0) {
            if (!CPU_FLAGS & B) {
                    r8 = r0;
            }
            else {
                    r8 = r25;
            }
    }
    *r21 = r8;
    objc_msgSend(@class(NSIndexSet), r22);
    [r20 frameCount];
    r0 = [r21 initWithIndexesInRange:0x0];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_allFramesIndexSet));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [TJFLWeakProxy weakProxyForObject:r20];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_weakProxy));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = *0x1011dc0b0;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*0x1011dc0b0 addObject:r2];
    objc_sync_exit(r19);
    [r19 release];
    [r28 release];
    [r26 release];
    [r24 release];
    goto loc_100915f84;

loc_100915f84:
    r20 = [r20 retain];
    r19 = r20;
    goto loc_100915f94;

loc_100915f94:
    var_78 = **___stack_chk_guard;
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard == var_78) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100915e74:
    r25 = [r20 frameCount];
    goto loc_100915e84;

loc_100915e84:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_frameCacheSizeOptimal));
    r21 = r20 + r8;
    goto loc_100915e90;

loc_100915de8:
    r22 = [var_300 retain];
    [TJFLAnimatedImage logStringFromBlock:&var_210 withLevel:0x3];
    [var_300 release];
    [r22 release];
    [r28 release];
    [var_308 release];
    r19 = 0x0;
    r23 = var_2F8;
    goto loc_100915f94;

loc_1009155c4:
    var_D0 = [r23 retain];
    [TJFLAnimatedImage logStringFromBlock:r29 - 0xf0 withLevel:0x1];
    r0 = var_D0;
    goto loc_100915628;

loc_100915628:
    [r0 release];
    goto loc_10091562c;

loc_10091562c:
    r19 = 0x0;
    goto loc_100915f94;

loc_100915560:
    var_A0 = [r23 retain];
    [TJFLAnimatedImage logStringFromBlock:r29 - 0xc0 withLevel:0x1];
    r0 = var_A0;
    goto loc_100915628;

loc_10091553c:
    [TJFLAnimatedImage logStringFromBlock:0x100ea1858 withLevel:0x1];
    goto loc_10091562c;
}

+(void *)animatedImageWithGIFData:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[TJFLAnimatedImage alloc] initWithAnimatedGIFData:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r19->_weakProxy != 0x0) {
            [NSObject cancelPreviousPerformRequestsWithTarget:r2];
    }
    r0 = r19->_imageSource;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)imageLazilyCachedAtIndex:(unsigned long long)arg2 {
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
    r20 = arg2;
    r19 = self;
    if ([self frameCount] >= r20) {
            [r19 setRequestedFrameIndex:r20];
            r0 = [r19 cachedFrameIndexes];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 count];
            r22 = [r19 frameCount];
            [r0 release];
            if (r25 < r22) {
                    r21 = @selector(count);
                    r22 = [[r19 frameIndexesToCache] retain];
                    r23 = [[r19 cachedFrameIndexes] retain];
                    [r22 removeIndexes:r23];
                    [r23 release];
                    r0 = [r19 requestedFrameIndexes];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 removeIndexes:r23];
                    [r23 release];
                    [r22 removeIndex:[r19 posterImageFrameIndex]];
                    r0 = [r22 copy];
                    r23 = r0;
                    if (objc_msgSend(r0, r21) != 0x0) {
                            [r19 addFrameIndexesToCache:r23];
                    }
                    [r23 release];
                    [r22 release];
            }
            r21 = [[r19 cachedFramesForIndexes] retain];
            r22 = [[NSNumber numberWithUnsignedInteger:r20] retain];
            r20 = [[r21 objectForKeyedSubscript:r22] retain];
            [r22 release];
            [r21 release];
            [r19 purgeFrameCacheIfNeeded];
    }
    else {
            [TJFLAnimatedImage logStringFromBlock:&var_70 withLevel:0x2];
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)addFrameIndexesToCache:(void *)arg2 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [r22 requestedFrameIndex];
    r25 = [r22 frameCount] - [r22 requestedFrameIndex];
    r21 = [r22 requestedFrameIndex];
    if (r25 + r21 != [r22 frameCount]) {
            [TJFLAnimatedImage logStringFromBlock:0x100ea1a68 withLevel:0x2];
    }
    r0 = [r22 requestedFrameIndexes];
    r0 = [r0 retain];
    [r0 addIndexes:r19];
    [r0 release];
    r0 = [r22 serialQueue];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = dispatch_queue_create("com.flipboard.framecachingqueue", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serialQueue));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    objc_initWeak(r29 - 0x48, r22);
    [[r22 serialQueue] retain];
    objc_copyWeak(&var_98 + 0x28, r29 - 0x48);
    var_78 = r19;
    [r19 retain];
    dispatch_async(r23, &var_98);
    [r23 release];
    [var_78 release];
    [r19 release];
    objc_destroyWeak(&var_98 + 0x28);
    objc_destroyWeak(r29 - 0x48);
    return;
}

+(struct CGSize)sizeForImage:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [UIImage class];
            if ([r19 isKindOfClass:r2] == 0x0) {
                    r21 = @selector(isKindOfClass:);
                    [TJFLAnimatedImage class];
                    if (objc_msgSend(r19, r21) != 0x0) {
                            [r19 size];
                            v8 = v0;
                            v9 = v1;
                    }
                    else {
                            var_38 = [r19 retain];
                            [TJFLAnimatedImage logStringFromBlock:&var_58 withLevel:0x1];
                            [var_38 release];
                    }
            }
            else {
                    [r19 size];
                    v8 = v0;
                    v9 = v1;
            }
    }
    r0 = [r19 release];
    return r0;
}

-(void *)imageAtIndex:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = CGImageSourceCreateImageAtIndex(r19->_imageSource, arg2, 0x0);
    if (r21 != 0x0) {
            r0 = [UIImage imageWithCGImage:r21];
            r29 = r29;
            r20 = [r0 retain];
            CFRelease(r21);
            if ([r19 isPredrawingEnabled] != 0x0) {
                    r19 = [[[r19 class] predrawnImageFromImage:r20] retain];
                    [r20 release];
                    r20 = r19;
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)purgeFrameCacheIfNeeded {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self cachedFrameIndexes];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    r23 = [r19 frameCacheSizeCurrent];
    [r0 release];
    if (r22 >= r23) {
            r0 = [r19 cachedFrameIndexes];
            r0 = [r0 retain];
            r21 = [r0 mutableCopy];
            [r0 release];
            r20 = [[r19 frameIndexesToCache] retain];
            [r21 removeIndexes:r20];
            [r20 release];
            [r21 enumerateRangesUsingBlock:&var_58];
            [r21 release];
    }
    return;
}

-(void *)frameIndexesToCache {
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
    r19 = self;
    if ([self frameCacheSizeCurrent] == [r19 frameCount]) {
            r0 = [r19 allFramesIndexSet];
            r0 = [r0 retain];
            r20 = [r0 mutableCopy];
            [r0 release];
    }
    else {
            r20 = [[NSMutableIndexSet alloc] init];
            r23 = [r19 frameCacheSizeCurrent];
            r8 = [r19 frameCount] - [r19 requestedFrameIndex];
            if (r23 < r8) {
                    if (!CPU_FLAGS & B) {
                            r23 = r8;
                    }
                    else {
                            r23 = r23;
                    }
            }
            [r19 requestedFrameIndex];
            [r20 addIndexesInRange:r2];
            if (r3 != 0x0) {
                    [r20 addIndexesInRange:r2];
            }
            if ([r20 count] != [r19 frameCacheSizeCurrent]) {
                    [TJFLAnimatedImage logStringFromBlock:0x100ea1b68 withLevel:0x2];
            }
            [r20 addIndex:[r19 posterImageFrameIndex]];
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)growFrameCacheSizeAfterMemoryWarning:(void *)arg2 {
    [self setFrameCacheSizeMaxInternal:[arg2 unsignedIntegerValue]];
    [TJFLAnimatedImage logStringFromBlock:&var_38 withLevel:0x4];
    r0 = [self weakProxy];
    r0 = [r0 retain];
    [r0 performSelector:r2 withObject:r3 afterDelay:r4];
    [r19 release];
    return;
}

-(void)resetFrameCacheSizeMaxInternal {
    [self setFrameCacheSizeMaxInternal:0x0];
    [TJFLAnimatedImage logStringFromBlock:&var_38 withLevel:0x4];
    return;
}

-(void)didReceiveMemoryWarning:(void *)arg2 {
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
    r19 = self;
    [r19 setMemoryWarningCount:[self memoryWarningCount] + 0x1];
    r24 = @class(NSObject);
    r25 = [[r19 weakProxy] retain];
    r26 = [@(0x2) retain];
    [r24 cancelPreviousPerformRequestsWithTarget:r25 selector:@selector(growFrameCacheSizeAfterMemoryWarning:) object:r26];
    [r26 release];
    [r25 release];
    r24 = @class(NSObject);
    r0 = [r19 weakProxy];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r24 cancelPreviousPerformRequestsWithTarget:r25 selector:@selector(resetFrameCacheSizeMaxInternal) object:0x0];
    [r25 release];
    [TJFLAnimatedImage logStringFromBlock:&var_78 withLevel:0x4];
    [r19 setFrameCacheSizeMaxInternal:0x1];
    if ([r19 memoryWarningCount] <= 0x3) {
            r19 = [[r19 weakProxy] retain];
            [@(0x2) retain];
            [r19 performSelector:@selector(growFrameCacheSizeAfterMemoryWarning:) withObject:r3 afterDelay:r4];
            [r21 release];
            [r19 release];
    }
    return;
}

+(void *)predrawnImageFromImage:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = [arg2 retain];
    r20 = CGColorSpaceCreateDeviceRGB();
    if (r20 != 0x0) {
            CGColorSpaceGetNumberOfComponents(r20);
            [r19 size];
            asm { fcvtzu     x24, d0 };
            objc_msgSend(r19, r23);
            asm { fcvtzu     x25, d1 };
            r26 = ((r21 << 0x3) + 0x8 >> 0x3) * r24;
            r0 = objc_retainAutorelease(r19);
            r22 = r0;
            r0 = [r0 CGImage];
            r0 = CGImageGetAlphaInfo(r0);
            if (r0 <= 0x7 && (0x99 >> (r0 & 0xff) & 0x1) != 0x0) {
                    r0 = *(int32_t *)(0x100bf49a0 + r0 * 0x4);
            }
            r2 = r25;
            r21 = CGBitmapContextCreate(0x0, r24, r2, 0x8, r26, r20, r0);
            CGColorSpaceRelease(r20);
            if (r21 != 0x0) {
                    r27 = @selector(CGImage);
                    [r22 size];
                    [r22 size];
                    r0 = objc_retainAutorelease(r22);
                    r22 = r0;
                    CGContextDrawImage(r21, objc_msgSend(r0, r27), r2);
                    r24 = CGBitmapContextCreateImage(r21);
                    [r22 scale];
                    [r22 imageOrientation];
                    r23 = [[UIImage imageWithCGImage:r2 scale:r3 orientation:r4] retain];
                    CGImageRelease(r24);
                    CGContextRelease(r21);
                    if (r23 != 0x0) {
                            r20 = [r23 retain];
                    }
                    else {
                            r20 = [r22 retain];
                            var_F8 = r20;
                            [TJFLAnimatedImage logStringFromBlock:&var_118 withLevel:0x1];
                            r20 = [r20 retain];
                            [var_F8 release];
                    }
                    r0 = r23;
            }
            else {
                    r20 = [r22 retain];
                    var_B8 = r20;
                    [TJFLAnimatedImage logStringFromBlock:&var_D8 withLevel:0x1];
                    r20 = [r20 retain];
                    r0 = var_B8;
            }
    }
    else {
            r21 = [r19 retain];
            [TJFLAnimatedImage logStringFromBlock:r29 - 0x88 withLevel:0x1];
            r20 = [r21 retain];
            r0 = r21;
    }
    [r0 release];
    [r19 release];
    [r20 autorelease];
    r0 = r20;
    return r0;
}

-(void *)description {
    r0 = [[&var_40 super] description];
    r20 = [r0 retain];
    [self size];
    r21 = [NSStringFromCGSize() retain];
    r23 = [[r20 stringByAppendingFormat:@" size=%@"] retain];
    [r20 release];
    [r21 release];
    [self frameCount];
    r19 = [[r23 stringByAppendingFormat:@" frameCount=%lu"] retain];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)posterImage {
    r0 = self->_posterImage;
    return r0;
}

-(struct CGSize)size {
    r0 = self;
    return r0;
}

-(unsigned long long)loopCount {
    r0 = self->_loopCount;
    return r0;
}

-(void *)delayTimesForIndexes {
    r0 = self->_delayTimesForIndexes;
    return r0;
}

-(unsigned long long)frameCount {
    r0 = self->_frameCount;
    return r0;
}

-(unsigned long long)frameCacheSizeMax {
    r0 = self->_frameCacheSizeMax;
    return r0;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(unsigned long long)frameCacheSizeOptimal {
    r0 = self->_frameCacheSizeOptimal;
    return r0;
}

-(bool)isPredrawingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_predrawingEnabled;
    return r0;
}

-(unsigned long long)frameCacheSizeMaxInternal {
    r0 = self->_frameCacheSizeMaxInternal;
    return r0;
}

-(unsigned long long)requestedFrameIndex {
    r0 = self->_requestedFrameIndex;
    return r0;
}

-(void)setRequestedFrameIndex:(unsigned long long)arg2 {
    self->_requestedFrameIndex = arg2;
    return;
}

-(unsigned long long)posterImageFrameIndex {
    r0 = self->_posterImageFrameIndex;
    return r0;
}

-(void *)cachedFramesForIndexes {
    r0 = self->_cachedFramesForIndexes;
    return r0;
}

-(void *)cachedFrameIndexes {
    r0 = self->_cachedFrameIndexes;
    return r0;
}

-(void *)requestedFrameIndexes {
    r0 = self->_requestedFrameIndexes;
    return r0;
}

-(void *)allFramesIndexSet {
    r0 = self->_allFramesIndexSet;
    return r0;
}

-(unsigned long long)memoryWarningCount {
    r0 = self->_memoryWarningCount;
    return r0;
}

-(void)setMemoryWarningCount:(unsigned long long)arg2 {
    self->_memoryWarningCount = arg2;
    return;
}

-(void *)serialQueue {
    r0 = self->_serialQueue;
    return r0;
}

-(struct CGImageSource *)imageSource {
    r0 = self->_imageSource;
    return r0;
}

+(void)setLogBlock:(void *)arg2 logLevel:(unsigned long long)arg3 {
    r0 = objc_retainBlock(arg2);
    r8 = *0x1011dc0b8;
    *0x1011dc0b8 = r0;
    [r8 release];
    *0x1011dc0c0 = arg3;
    return;
}

-(void *)weakProxy {
    r0 = self->_weakProxy;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_weakProxy, 0x0);
    objc_storeStrong((int64_t *)&self->_serialQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_allFramesIndexSet, 0x0);
    objc_storeStrong((int64_t *)&self->_requestedFrameIndexes, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedFrameIndexes, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedFramesForIndexes, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_delayTimesForIndexes, 0x0);
    objc_storeStrong((int64_t *)&self->_posterImage, 0x0);
    return;
}

+(void)logStringFromBlock:(void *)arg2 withLevel:(unsigned long long)arg3 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    if (r2 != 0x0) {
            if (*qword_1011dc0c0 >= r19) {
                    asm { ccmp       x20, #0x0, #0x4, hs };
            }
            if (!CPU_FLAGS & E) {
                    r20 = *0x1011dc0b8;
                    (*(r20 + 0x10))(r20, [(*(r2 + 0x10))(r2) retain], r19);
                    [r21 release];
            }
    }
    return;
}

@end