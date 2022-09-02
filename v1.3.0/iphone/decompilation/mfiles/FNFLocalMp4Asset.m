@implementation FNFLocalMp4Asset

-(void *)initWithLocalURL:(void *)arg2 decompressedOutput:(bool)arg3 containerDimensions:(struct CGSize)arg4 eventListener:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [r4 retain];
    r20 = [self initWithLocalURL:r22 decompressedOutput:arg3 containerDimensions:r4];
    [r22 release];
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_eventListener, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithLocalURL:(void *)arg2 decompressedOutput:(bool)arg3 containerDimensions:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self initWithLocalURL:arg2 async:0x1 decompressedOutput:arg3 containerDimensions:r5];
    return r0;
}

-(void *)initAudioOnlyAssetWithLocalURL:(void *)arg2 decompressedOutput:(bool)arg3 containerDimensions:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self initAudioOnlyAssetWithLocalURL:arg2 async:0x1 decompressedOutput:arg3 containerDimensions:r5];
    return r0;
}

-(void *)initAudioOnlyAssetWithLocalURL:(void *)arg2 async:(bool)arg3 decompressedOutput:(bool)arg4 containerDimensions:(struct CGSize)arg5 {
    memcpy(&r5, &arg5, 0x8);
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self initWithLocalURL:arg2 async:arg3 decompressedOutput:arg4 containerDimensions:r5];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_audioOnlyAsset = 0x1;
    }
    return r0;
}

-(void *)initWithLocalURL:(void *)arg2 async:(bool)arg3 decompressedOutput:(bool)arg4 containerDimensions:(struct CGSize)arg5 {
    memcpy(&r5, &arg5, 0x8);
    r31 = r31 - 0x70;
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
    r22 = arg4;
    r21 = arg3;
    r23 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_localURL, r23);
            *(int8_t *)(int64_t *)&r20->_async = r21;
            *(int8_t *)(int64_t *)&r20->_isOutputDecompressed = r22;
            if (r21 != 0x0) {
                    r0 = sub_100b37780();
                    r29 = r29;
                    r21 = [r0 retain];
                    r23 = 0x0;
                    r22 = 0x1;
            }
            else {
                    r21 = *__dispatch_main_q;
                    [r21 retain];
                    r22 = 0x0;
                    r23 = 0x1;
            }
            objc_storeStrong((int64_t *)&r20->_dispatchQueue, r21);
            if (r23 != 0x0) {
                    [*__dispatch_main_q release];
            }
            if (r22 != 0x0) {
                    [r21 release];
            }
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x88 format:@"%@ created new asset with url:%@"];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_containerDimensions));
            *(r20 + r8) = d9;
            *(0x8 + r20 + r8) = d8;
            r21 = [[r19 host] retain];
            [r20 setResourceHost:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    objc_retainAutorelease(@"");
    return @"";
}

-(void)dealloc {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_formatDesc));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r20) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_videoSampleBuffer));
    r20 = *(r19 + r21);
    if (r20 != 0x0) {
            if (*qword_1011dd358 != -0x1) {
                    dispatch_once_f(0x1011dd358, 0x1011c6508, 0x100a3d91c);
            }
            qword_1011dd360(r20);
            CFRelease(*(r19 + r21));
            *(r19 + r21) = 0x0;
    }
    [r19 _releaseAudioBufferIfNeeded];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0xa1 format:@"%@ deallocing FNFAsset"];
    [[&var_30 super] dealloc];
    return;
}

-(struct CGAffineTransform)preferredTransform {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
    q2 = *(int128_t *)(0x10 + r0 + r9);
    q0 = *(int128_t *)(0x20 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(int128_t *)(r8 + 0x10) = q2;
    *(int128_t *)(r8 + 0x20) = q0;
    return r0;
}

-(void)loadValuesAsynchronouslyForKeys:(void *)arg2 completionHandler:(void *)arg3 {
    r0 = [arg3 retain];
    r20 = *(int8_t *)(int64_t *)&self->_async;
    r21 = self->_dispatchQueue;
    [r0 retain];
    sub_100b6dcd8(r20, r21, &var_50);
    [r0 release];
    [r19 release];
    return;
}

-(void)_startWithAsset:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = objc_retainBlock(arg3);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadedHandler));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r20->_videoAsset, arg2);
    r0 = r20->_videoAsset;
    if (r0 != 0x0) {
            [r0 duration];
    }
    else {
            var_48 = 0x0;
            var_38 = 0x0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    *(int128_t *)(r20 + r8) = var_48;
    *(0x10 + r20 + r8) = var_38;
    if (*0x1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    [r20 createVideoReader:&var_60];
    if (*0x1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    [r20 createAudioReader:&var_80];
    r0 = *(r20 + r23);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r20 + r23);
            *(r20 + r23) = 0x0;
            [r0 release];
    }
    [r19 release];
    return;
}

-(struct CGSize)naturalSize {
    r0 = self;
    return r0;
}

-(bool)createAudioReader:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x110;
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
    r25 = r2;
    r20 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_videoAsset));
    r0 = *(self + r26);
    r0 = [r0 tracksWithMediaType:**_AVMediaTypeAudio];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            OSMemoryBarrier();
            if (*qword_1011dd4a8 != -0x1) {
                    dispatch_once_f(0x1011dd4a8, 0x1011c66e8, 0x100a3d91c);
            }
            r23 = **_AVMediaTypeAudio;
            r21 = [[*0x1011dd4b0 alloc] initWithAsset:*(r20 + r26) error:r29 - 0x60];
            r22 = [0x0 retain];
            r0 = *(r20 + r26);
            r0 = [r0 tracksWithMediaType:r23];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 firstObject];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (*qword_1011dd4b8 != -0x1) {
                    dispatch_once_f(0x1011dd4b8, 0x1011c6700, 0x100a3d91c);
            }
            r0 = *0x1011dd4c0;
            r0 = [r0 assetReaderTrackOutputWithTrack:r23 outputSettings:0x0];
            r27 = r0;
            r29 = r29;
            r24 = [r0 retain];
            if ([r21 status] != 0x3) {
                    [r21 addOutput:r24];
                    if ([r21 status] != 0x3) {
                            sub_100a3e7dc(&var_D0, &var_80, &var_A0);
                            [r21 setTimeRange:&var_100];
                            OSMemoryBarrier();
                            r25 = [r21 startReading];
                            [r20 _releaseAudioBufferIfNeeded];
                            objc_storeStrong((int64_t *)&r20->_audioAssetReader, r21);
                            objc_storeStrong((int64_t *)&r20->_audioAssetReaderTrackOutput, r27);
                            r0 = [r23 formatDescriptions];
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 firstObject];
                            r0 = [r0 retain];
                            r26 = r0;
                            [r0 release];
                            [r27 release];
                            if (r26 != 0x0) {
                                    if (*qword_1011dd3d8 != -0x1) {
                                            dispatch_once_f(0x1011dd3d8, 0x1011c65c8, 0x100a3d91c);
                                    }
                                    r0 = qword_1011dd3e0(r26);
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_asbd));
                                    r9 = *(r0 + 0x20);
                                    q0 = *(int128_t *)r0;
                                    q1 = *(int128_t *)(r0 + 0x10);
                                    *(int128_t *)(r20 + r8) = q0;
                                    *(int128_t *)(0x10 + r20 + r8) = q1;
                                    *(0x20 + r20 + r8) = r9;
                            }
                            else {
                                    r25 = 0x0;
                            }
                    }
                    else {
                            r25 = 0x0;
                    }
            }
            else {
                    r25 = 0x0;
            }
            [r24 release];
            [r23 release];
            [r21 release];
            [r22 release];
    }
    else {
            r25 = 0x1;
    }
    [r19 release];
    r0 = r25;
    return r0;
}

-(void)updatePlaybackTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void)asyncLoadAvailableQualitiesWithHandler:(void *)arg2 onQueue:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = *(int8_t *)(int64_t *)&self->_async;
    r19 = [arg3 retain];
    var_28 = r21;
    [r21 retain];
    sub_100b6dcd8(r20, r19, &var_48);
    [r19 release];
    [var_28 release];
    [r21 release];
    return;
}

-(long long)statusOfValueForKey:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_loadingError;
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    *r21 = objc_retainAutorelease(r0);
            }
            r20 = 0x3;
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoAssetReader));
            r0 = *(r20 + r22);
            if (r0 != 0x0) {
                    if ([r0 status] == 0x3) {
                            r8 = &@selector(dispatchAsyncWithQueue:withBlock:);
                            if ([*(r20 + r22) status] != 0x0) {
                                    r8 = &@selector(dispatchAsyncWithQueue:withBlock:);
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                            r20 = r8 << 0x1;
                    }
                    else {
                            r20 = 0x2;
                    }
            }
            else {
                    r20 = 0x3;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)asyncLoadCurrentQualityWithHandler:(void *)arg2 onQueue:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = *(int8_t *)(int64_t *)&self->_async;
    r19 = [arg3 retain];
    var_28 = r21;
    [r21 retain];
    sub_100b6dcd8(r20, r19, &var_48);
    [r19 release];
    [var_28 release];
    [r21 release];
    return;
}

-(union ?)duration {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)requestErrorNotificationIfNeeded {
    return;
}

-(void)requestTimeLoadedUpdate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_eventListener);
    r20 = *(int8_t *)(int64_t *)&self->_async;
    r21 = self->_dispatchQueue;
    [r0 retain];
    sub_100b6dcd8(r20, r21, &var_50);
    [r0 release];
    [r19 release];
    return;
}

-(bool)createVideoReader:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r27 = r2;
    r20 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_videoAsset));
    r0 = *(self + r25);
    r0 = [r0 tracksWithMediaType:**_AVMediaTypeVideo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            OSMemoryBarrier();
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_formatDesc));
            r0 = *(r20 + r24);
            if (r0 != 0x0) {
                    CFRelease(r0);
                    *(r20 + r24) = 0x0;
            }
            r0 = [r19 firstObject];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 formatDescriptions];
            r0 = [r0 retain];
            *(r20 + r24) = [[r0 firstObject] retain];
            [r0 release];
            [r22 release];
            r0 = [r19 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r21 = [r0 retain];
            if (*qword_1011dd4a8 != -0x1) {
                    r2 = 0x0;
                    dispatch_once_f(0x1011dd4a8, 0x1011c66e8, 0x100a3d91c);
            }
            r23 = [[*0x1011dd4b0 alloc] initWithAsset:*(r20 + r25) error:r29 - 0x78];
            r0 = [0x0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_loadingError, 0x0);
                    r27 = 0x0;
            }
            else {
                    var_180 = r27;
                    if (*(int8_t *)(int64_t *)&r20->_isOutputDecompressed != 0x0) {
                            r0 = @(0x34323076);
                            r29 = r29;
                            r27 = [r0 retain];
                            if (*qword_1011dd008 != -0x1) {
                                    r2 = 0x34323076;
                                    dispatch_once_f(0x1011dd008, 0x1011c60a0, 0x100a3d91c);
                            }
                            r28 = [**qword_1011dd010 retain];
                            r0 = [NSMutableDictionary dictionaryWithObjectsAndKeys:r27];
                            r29 = r29;
                            var_178 = [r0 retain];
                            [r28 release];
                            [r27 release];
                            if (*qword_1011dd038 != -0x1) {
                                    dispatch_once_f(0x1011dd038, 0x1011c60e8, 0x100a3d91c);
                            }
                            r25 = **___NSDictionary0__;
                            r29 = r29;
                            r28 = [**qword_1011dd040 retain];
                            [var_178 setObject:r25 forKey:r28];
                            [r28 release];
                            r27 = (int64_t *)&r20->_containerDimensions;
                            d0 = *r27;
                            d1 = **_CGSizeZero;
                            if (d0 == d1) {
                                    r8 = *_CGSizeZero;
                                    d0 = *(r27 + 0x8);
                                    d1 = *(r8 + 0x8);
                                    if (d0 != d1) {
                                            r25 = *(r20 + r24);
                                            if (*qword_1011dd368 != -0x1) {
                                                    dispatch_once_f(0x1011dd368, 0x1011c6520, 0x100a3d91c);
                                            }
                                            qword_1011dd370(r25) >> 0x20;
                                            asm { scvtf      d1, w0 };
                                            asm { scvtf      d2, w8 };
                                            asm { fdiv       d3, d1, d2 };
                                            d0 = *(int128_t *)r27;
                                            d8 = *(int128_t *)(r27 + 0x8);
                                            asm { fdiv       d4, d0, d8 };
                                            if (d3 > d4) {
                                                    if (d8 < d2) {
                                                            asm { fdiv       d0, d8, d2 };
                                                            asm { frintp     d0, d0 };
                                                    }
                                                    else {
                                                            v8 = v2;
                                                    }
                                            }
                                            else {
                                                    if (d0 < d1) {
                                                            asm { fdiv       d1, d0, d1 };
                                                            asm { frintp     d8, d1 };
                                                    }
                                                    else {
                                                            v8 = v2;
                                                    }
                                            }
                                            r0 = [NSNumber numberWithDouble:r2];
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            if (*qword_1011dd018 != -0x1) {
                                                    dispatch_once_f(0x1011dd018, 0x1011c60b8, 0x100a3d91c);
                                            }
                                            [**qword_1011dd020 retain];
                                            [var_178 setObject:r2 forKey:r3];
                                            [r27 release];
                                            [r25 release];
                                            r0 = @class(NSNumber);
                                            v0 = v8;
                                            r0 = [r0 numberWithDouble:r25];
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            if (*qword_1011dd028 != -0x1) {
                                                    dispatch_once_f(0x1011dd028, 0x1011c60d0, 0x100a3d91c);
                                            }
                                            r29 = r29;
                                            [**qword_1011dd030 retain];
                                            [var_178 setObject:r2 forKey:r3];
                                            [r25 release];
                                            [r28 release];
                                    }
                            }
                            else {
                                    r25 = *(r20 + r24);
                                    if (*qword_1011dd368 != -0x1) {
                                            dispatch_once_f(0x1011dd368, 0x1011c6520, 0x100a3d91c);
                                    }
                                    qword_1011dd370(r25) >> 0x20;
                                    asm { scvtf      d1, w0 };
                                    asm { scvtf      d2, w8 };
                                    asm { fdiv       d3, d1, d2 };
                                    d0 = *(int128_t *)r27;
                                    d8 = *(int128_t *)(r27 + 0x8);
                                    asm { fdiv       d4, d0, d8 };
                                    if (d3 > d4) {
                                            if (d8 < d2) {
                                                    asm { fdiv       d0, d8, d2 };
                                                    asm { frintp     d0, d0 };
                                            }
                                            else {
                                                    v8 = v2;
                                            }
                                    }
                                    else {
                                            if (d0 < d1) {
                                                    asm { fdiv       d1, d0, d1 };
                                                    asm { frintp     d8, d1 };
                                            }
                                            else {
                                                    v8 = v2;
                                            }
                                    }
                                    r0 = [NSNumber numberWithDouble:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    if (*qword_1011dd018 != -0x1) {
                                            dispatch_once_f(0x1011dd018, 0x1011c60b8, 0x100a3d91c);
                                    }
                                    [**qword_1011dd020 retain];
                                    [var_178 setObject:r2 forKey:r3];
                                    [r27 release];
                                    [r25 release];
                                    r0 = @class(NSNumber);
                                    v0 = v8;
                                    r0 = [r0 numberWithDouble:r25];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    if (*qword_1011dd028 != -0x1) {
                                            dispatch_once_f(0x1011dd028, 0x1011c60d0, 0x100a3d91c);
                                    }
                                    r29 = r29;
                                    [**qword_1011dd030 retain];
                                    [var_178 setObject:r2 forKey:r3];
                                    [r25 release];
                                    [r28 release];
                            }
                    }
                    else {
                            var_178 = 0x0;
                    }
                    if (*qword_1011dd4b8 != -0x1) {
                            dispatch_once_f(0x1011dd4b8, 0x1011c6700, 0x100a3d91c);
                    }
                    r0 = *0x1011dd4c0;
                    r0 = [r0 alloc];
                    r0 = [r0 initWithTrack:r21 outputSettings:var_178];
                    r26 = r0;
                    [r0 setAlwaysCopiesSampleData:0x0];
                    r0 = [r23 status];
                    r27 = 0x0;
                    if (r0 != 0x3) {
                            [r23 addOutput:r26];
                            sub_100a3e7dc(r29 - 0xa8, r29 - 0xc0, &var_E0);
                            if ([r23 status] == 0x3) {
                                    r27 = 0x0;
                            }
                            else {
                                    q0 = *(int128_t *)((r29 - 0xa8) + 0x20);
                                    [r23 setTimeRange:&var_110];
                                    OSMemoryBarrier();
                                    r27 = [r23 startReading];
                                    objc_storeStrong((int64_t *)&r20->_videoAssetReader, r23);
                                    objc_storeStrong((int64_t *)&r20->_videoAssetReaderTrackOutput, r26);
                                    [r21 naturalSize];
                                    if (r21 != 0x0) {
                                            [r21 preferredTransform];
                                            d2 = var_140;
                                            d1 = stack[-328];
                                            d3 = var_130;
                                            d0 = stack[-312];
                                    }
                                    else {
                                            d0 = 0x0;
                                            d1 = 0x0;
                                            d3 = 0x0;
                                            d2 = 0x0;
                                    }
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_naturalSize));
                                    *(int128_t *)(r20 + r8) = d8 * d2 + d9 * d3;
                                    *(int128_t *)(0x8 + r20 + r8) = d8 * d1 + d9 * d0;
                                    if (r21 != 0x0) {
                                            [r21 preferredTransform];
                                    }
                                    else {
                                            var_160 = q0;
                                            stack[-352] = q0;
                                            var_170 = q0;
                                    }
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_preferredTransform));
                                    *(int128_t *)(r20 + r8) = var_170;
                                    *(int128_t *)(0x10 + r20 + r8) = var_160;
                                    *(int128_t *)(0x20 + r20 + r8) = stack[-352];
                                    [r21 nominalFrameRate];
                                    *(int32_t *)(int64_t *)&r20->_fps = s0;
                                    *(int8_t *)(int64_t *)&r20->_videoBufferEnded = 0x0;
                            }
                    }
                    [r26 release];
                    [var_178 release];
            }
            [r23 release];
            [r21 release];
            [r22 release];
    }
    else {
            r27 = 0x0;
    }
    [r19 release];
    r0 = r27;
    return r0;
}

-(bool)resetAssetToBeginningIfNeeded {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    [r19 seekToPosition:&var_30];
    return 0x0;
}

-(double)prepareToSeekWithPosition:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(bool)seekToPosition:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = self;
    sub_100a3e4dc(&saved_fp - 0x50);
    asm { fcvt       s0, d0 };
    r0 = @class(FBAdLogger);
    asm { fcvt       d8, s0 };
    [r0 logAtLevel:0x6 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x1b1 format:@"%@ seek to req time:%f"];
    sub_100a3e4dc(&var_70);
    if (d0 < d8) {
            r0 = 0x0;
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_audioOnlyAsset != 0x0) {
                    [r19->_audioAssetReader cancelReading];
                    r0 = [r19 createAudioReader:&var_B0];
                    if (r0 != 0x0) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_startingPlaybackTime));
                            r9 = *(r20 + 0x10);
                            *(int128_t *)(r19 + r8) = *(int128_t *)r20;
                            *(0x10 + r19 + r8) = r9;
                            [r19 _releaseAudioBufferIfNeeded];
                            r0 = 0x1;
                    }
            }
            else {
                    [r19->_videoAssetReader cancelReading];
                    r0 = [r19 createVideoReader:&var_90];
                    if (r0 != 0x0) {
                            [r19->_audioAssetReader cancelReading];
                            r0 = [r19 createAudioReader:&var_B0];
                            if (r0 != 0x0) {
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startingPlaybackTime));
                                    r9 = *(r20 + 0x10);
                                    *(int128_t *)(r19 + r8) = *(int128_t *)r20;
                                    *(0x10 + r19 + r8) = r9;
                                    [r19 _releaseAudioBufferIfNeeded];
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(union ?)timeAfterSeek {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_startingPlaybackTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(bool)isKeyFrame:(struct opaqueCMSampleBuffer *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (*qword_1011dd328 != -0x1) {
            dispatch_once_f(0x1011dd328, 0x1011c64c0, 0x100a3d91c);
    }
    r0 = qword_1011dd330(r19, 0x0);
    if (r0 != 0x0) {
            r19 = r0;
            if (CFArrayGetCount(r0) >= 0x1) {
                    r19 = CFArrayGetValueAtIndex(r19, 0x0);
                    if (*qword_1011dd418 != -0x1) {
                            dispatch_once_f(0x1011dd418, 0x1011c6628, 0x100a3d91c);
                    }
                    r0 = CFDictionaryGetValueIfPresent(r19, **qword_1011dd420, 0x0);
                    if (r0 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(bool)is30MSFrame:(struct opaqueCMSampleBuffer *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (*qword_1011dd328 != -0x1) {
            dispatch_once_f(0x1011dd328, 0x1011c64c0, 0x100a3d91c);
    }
    r0 = qword_1011dd330(r19, 0x0);
    if (r0 != 0x0) {
            r19 = r0;
            if (CFArrayGetCount(r0) >= 0x1) {
                    r19 = CFArrayGetValueAtIndex(r19, 0x0);
                    if (*qword_1011dd428 != -0x1) {
                            dispatch_once_f(0x1011dd428, 0x1011c6640, 0x100a3d91c);
                    }
                    r0 = CFDictionaryGetValueIfPresent(r19, **qword_1011dd430, 0x0);
                    if (r0 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void *)audioCodec {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([self containsTrack:0x1] != 0x0) {
            r19 = @"aac";
            [r19 retain];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)containsTrack:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 == 0x0) goto loc_100b531bc;

loc_100b531a8:
    if (r2 != 0x1) goto loc_100b531e4;

loc_100b531b0:
    r8 = 0x1011747e8;
    goto loc_100b531c4;

loc_100b531c4:
    var_10 = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(r0 + sign_extend_64(*(int32_t *)r8)) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;

loc_100b531e4:
    r0 = 0x0;
    return r0;

loc_100b531bc:
    r8 = 0x1011747d4;
    goto loc_100b531c4;
}

-(char *)currentFrameDataForTrack:(long long)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self trackHasMoreFrames:r2] != 0x0) {
            if (r20 != 0x1) {
                    if (r20 == 0x0) {
                            r9 = *(int8_t *)(int64_t *)&r19->_isOutputDecompressed;
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoSampleBuffer));
                            if (r9 != 0x0) {
                                    r0 = *(r19 + r8);
                            }
                            else {
                                    r19 = *(r19 + r8);
                                    if (*qword_1011dd3a8 != -0x1) {
                                            dispatch_once_f(0x1011dd3a8, 0x1011c6580, 0x100a3d91c);
                                    }
                                    r0 = qword_1011dd3b0(r19);
                                    r0 = sub_100a3e878(r0, &stack[-40], &stack[-48], &var_28);
                                    r8 = var_28;
                                    if (r0 == 0x0) {
                                            if (!CPU_FLAGS & E) {
                                                    r0 = 0x0;
                                            }
                                            else {
                                                    r0 = r8;
                                            }
                                    }
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentAudioBufferIndex));
                    r8 = sign_extend_64(*(int32_t *)(r19 + r8));
                    if (r8 < *(int32_t *)(int64_t *)&r19->_numberOfPackets) {
                            r0 = *((int64_t *)&r19->_audioBuffer + 0x8) + *(r19->_inPacketDescriptions + (r8 << 0x4));
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)shouldBufferVideoAsSoonAsPossible {
    return 0x1;
}

-(void)advanceFrameForTrack:(long long)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x1) {
            if (r2 == 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoSampleBuffer));
                    r0 = *(r19 + r20);
                    if (r0 != 0x0) {
                            if (*qword_1011dd358 != -0x1) {
                                    dispatch_once_f(0x1011dd358, 0x1011c6508, 0x100a3d91c);
                            }
                            qword_1011dd360();
                            CFRelease(*(r19 + r20));
                            *(r19 + r20) = 0x0;
                    }
            }
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentAudioBufferIndex));
            r9 = *(int32_t *)(r19 + r8);
            if (r9 < *(int32_t *)(int64_t *)&r19->_numberOfPackets - 0x1) {
                    *(int32_t *)(r19 + r8) = r9 + 0x1;
            }
            else {
                    [r19 _releaseAudioBufferIfNeeded];
            }
    }
    return;
}

-(bool)trackHasMoreFrames:(long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x1) {
            if (r2 == 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->_videoBufferEnded != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = r19->_videoAssetReader;
                            r0 = [r0 status];
                            if (r0 == 0x1) {
                                    if (CPU_FLAGS & E) {
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = r19->_audioAssetReader;
            r0 = [r0 status];
            if (CPU_FLAGS & L && r0 != 0x1 && *(int32_t *)(int64_t *)&r19->_currentAudioBufferIndex < *(int32_t *)(int64_t *)&r19->_numberOfPackets) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)shouldPauseForStallingWithNextCheckCallback:(void *)arg2 stallReason:(int)arg3 {
    return 0x0;
}

-(struct FNFFrameMetadata)currentFrameMetadataForTrack:(long long)arg2 {
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
    r29 = &saved_fp;
    r22 = arg2;
    r20 = self;
    r19 = r8;
    r0 = [self trackHasMoreFrames:r2];
    if (r0 == 0x0) goto loc_100b52d80;

loc_100b52a50:
    if (r22 == 0x1) goto loc_100b52b40;

loc_100b52a58:
    if (r22 == 0x0) {
            if (*(int8_t *)(int64_t *)&r20->_isOutputDecompressed == 0x0) {
                    s0 = *(int32_t *)(int64_t *)&r20->_fps;
                    asm { frinta     s0, s0 };
                    if (s0 > 0x42700000) {
                            r28 = (int64_t *)&r20->_videoSampleBuffer;
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_videoAssetReaderTrackOutput));
                            do {
                                    r27 = *r28;
                                    if (r27 != 0x0) {
                                            if (*0x1011dd358 != -0x1) {
                                                    dispatch_once_f(0x1011dd358, 0x1011c6508, 0x100a3d91c);
                                            }
                                            (*0x1011dd360)(r27);
                                            CFRelease(*r28);
                                            *r28 = 0x0;
                                    }
                                    r0 = *(r20 + r24);
                                    r0 = [r0 copyNextSampleBuffer];
                                    *r28 = r0;
                                    if (([r20 is30MSFrame:r0] & 0x1) != 0x0 || ([r20 trackHasMoreFrames:r2] & 0x1) == 0x0) {
                                        break;
                                    }
                                    else {
                                        continue;
                                    }
                            } while (true);
                            r0 = *r28;
                            if (r0 == 0x0) {
                                    *(int8_t *)(int64_t *)&r20->_videoBufferEnded = 0x1;
                                    *(int128_t *)r19 = q0;
                                    *(int128_t *)(r19 + 0x10) = q0;
                                    *(int128_t *)(r19 + 0x20) = q0;
                                    *(int128_t *)(r19 + 0x30) = q0;
                                    *(int128_t *)(r19 + 0x40) = q0;
                                    *(int128_t *)(r19 + 0x50) = q0;
                            }
                            else {
                                    r0 = sub_100a3e768(r0, &var_C8, r29 - 0x70);
                                    r21 = *r28;
                                    if (*qword_1011dd3a8 != -0x1) {
                                            dispatch_once_f(0x1011dd3a8, 0x1011c6580, 0x100a3d91c);
                                    }
                                    r21 = qword_1011dd3b0(r21);
                                    if (*qword_1011dd318 != -0x1) {
                                            dispatch_once_f(0x1011dd318, 0x1011c64a8, 0x100a3d91c);
                                    }
                                    r21 = qword_1011dd320(r21);
                                    r0 = [r20 isKeyFrame:*r28];
                                    *(int32_t *)r19 = r21;
                                    *(int128_t *)(r19 + 0x4) = var_98;
                                    *(r19 + 0x14) = var_88;
                                    *(int128_t *)(r19 + 0x1c) = var_B0;
                                    *(r19 + 0x2c) = var_A0;
                                    *(r19 + 0x38) = 0x0;
                                    *(r19 + 0x50) = var_B8;
                                    *(int128_t *)(r19 + 0x40) = var_C8;
                                    *(int32_t *)(r19 + 0x58) = r0;
                            }
                    }
                    else {
                            r0 = r20->_videoAssetReaderTrackOutput;
                            r0 = [r0 copyNextSampleBuffer];
                            r28 = (int64_t *)&r20->_videoSampleBuffer;
                            *r28 = r0;
                            if (r0 != 0x0) {
                                    r0 = sub_100a3e768(r0, &var_C8, r29 - 0x70);
                                    r21 = *r28;
                                    if (*qword_1011dd3a8 != -0x1) {
                                            dispatch_once_f(0x1011dd3a8, 0x1011c6580, 0x100a3d91c);
                                    }
                                    r21 = qword_1011dd3b0(r21);
                                    if (*qword_1011dd318 != -0x1) {
                                            dispatch_once_f(0x1011dd318, 0x1011c64a8, 0x100a3d91c);
                                    }
                                    r21 = qword_1011dd320(r21);
                                    r0 = [r20 isKeyFrame:*r28];
                                    *(int32_t *)r19 = r21;
                                    *(int128_t *)(r19 + 0x4) = var_98;
                                    *(r19 + 0x14) = var_88;
                                    *(int128_t *)(r19 + 0x1c) = var_B0;
                                    *(r19 + 0x2c) = var_A0;
                                    *(r19 + 0x38) = 0x0;
                                    *(r19 + 0x50) = var_B8;
                                    *(int128_t *)(r19 + 0x40) = var_C8;
                                    *(int32_t *)(r19 + 0x58) = r0;
                            }
                            else {
                                    *(int8_t *)(int64_t *)&r20->_videoBufferEnded = 0x1;
                                    *(int128_t *)r19 = q0;
                                    *(int128_t *)(r19 + 0x10) = q0;
                                    *(int128_t *)(r19 + 0x20) = q0;
                                    *(int128_t *)(r19 + 0x30) = q0;
                                    *(int128_t *)(r19 + 0x40) = q0;
                                    *(int128_t *)(r19 + 0x50) = q0;
                            }
                    }
            }
            else {
                    r0 = r20->_videoAssetReaderTrackOutput;
                    r0 = [r0 copyNextSampleBuffer];
                    r28 = (int64_t *)&r20->_videoSampleBuffer;
                    *r28 = r0;
                    if (r0 != 0x0) {
                            r0 = sub_100a3e768(r0, &var_C8, r29 - 0x70);
                            r21 = *r28;
                            if (*qword_1011dd3a8 != -0x1) {
                                    dispatch_once_f(0x1011dd3a8, 0x1011c6580, 0x100a3d91c);
                            }
                            r21 = qword_1011dd3b0(r21);
                            if (*qword_1011dd318 != -0x1) {
                                    dispatch_once_f(0x1011dd318, 0x1011c64a8, 0x100a3d91c);
                            }
                            r21 = qword_1011dd320(r21);
                            r0 = [r20 isKeyFrame:*r28];
                            *(int32_t *)r19 = r21;
                            *(int128_t *)(r19 + 0x4) = var_98;
                            *(r19 + 0x14) = var_88;
                            *(int128_t *)(r19 + 0x1c) = var_B0;
                            *(r19 + 0x2c) = var_A0;
                            *(r19 + 0x38) = 0x0;
                            *(r19 + 0x50) = var_B8;
                            *(int128_t *)(r19 + 0x40) = var_C8;
                            *(int32_t *)(r19 + 0x58) = r0;
                    }
                    else {
                            *(int8_t *)(int64_t *)&r20->_videoBufferEnded = 0x1;
                            *(int128_t *)r19 = q0;
                            *(int128_t *)(r19 + 0x10) = q0;
                            *(int128_t *)(r19 + 0x20) = q0;
                            *(int128_t *)(r19 + 0x30) = q0;
                            *(int128_t *)(r19 + 0x40) = q0;
                            *(int128_t *)(r19 + 0x50) = q0;
                    }
            }
    }
    else {
            *(int128_t *)(r19 + 0x40) = q0;
            *(int128_t *)(r19 + 0x50) = q0;
            *(int128_t *)(r19 + 0x20) = q0;
            *(int128_t *)(r19 + 0x30) = q0;
            *(int128_t *)r19 = q0;
            *(int128_t *)(r19 + 0x10) = q0;
    }
    goto loc_100b52d90;

loc_100b52d90:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b52b40:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_audioSampleBuffer));
    r21 = *(r20 + r23);
    if (r21 != 0x0) goto loc_100b52bf8;

loc_100b52b50:
    *(r20 + r23) = [r20->_audioAssetReaderTrackOutput copyNextSampleBuffer];
    [r20 _getAudioPacketDescriptions];
    r22 = *(r20 + r23);
    r21 = (int64_t *)&r20->_audioBlockBuffer;
    if (*qword_1011dd3b8 != -0x1) {
            dispatch_once_f(0x1011dd3b8, 0x1011c6598, 0x100a3d91c);
    }
    qword_1011dd3c0(r22, 0x0, &var_C8, 0x18, 0x0, 0x0, 0x1, r21);
    if (var_C8 == 0x0) goto loc_100b52d70;

loc_100b52bd8:
    q0 = 0x0;
    *(int128_t *)(int64_t *)&r20->_audioBuffer = q0;
    *(int32_t *)(int64_t *)&r20->_currentAudioBufferIndex = 0x0;
    r21 = *(r20 + r23);
    goto loc_100b52bf8;

loc_100b52bf8:
    if (*qword_1011dd348 != -0x1) {
            dispatch_once_f(0x1011dd348, 0x1011c64f0, 0x100a3d91c);
    }
    r0 = qword_1011dd350(r21, 0x0, &var_C8);
    if (r0 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x22a format:@"%@ error fetching sample timing: %d"];
    }
    if (*(int32_t *)(int64_t *)&r20->_numberOfPackets == 0x0) goto loc_100b52d70;

loc_100b52c68:
    var_70 = var_B0;
    r24 = stack[-180];
    var_68 = var_A8;
    if ((r24 & 0x1d) == 0x1) {
            r25 = 0x0;
    }
    else {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            r9 = *(int128_t *)(r8 + 0x8);
            r24 = *(int128_t *)(r8 + 0xc);
            var_70 = *r8;
            var_68 = r9;
            r25 = *(r8 + 0x10);
    }
    var_80 = var_98;
    r8 = stack[-156];
    var_78 = var_90;
    if ((r8 & 0x1d) == 0x1) {
            r9 = var_88;
    }
    else {
            var_80 = var_70;
            var_78 = var_68;
            r9 = r25;
            r8 = r24;
    }
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_inPacketDescriptions));
    r10 = *(r20 + r10);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_currentAudioBufferIndex));
    r11 = sign_extend_64(*(int32_t *)(r20 + r27));
    *(int32_t *)r19 = *(int32_t *)(0xc + r10 + r11 * 0x10);
    r21 = r19 + 0x4;
    r26 = (int64_t *)&r20->_asbd;
    r22 = *(int32_t *)(r26 + 0x14) * r11;
    asm { fcvtzs     w23, d0 };
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r22, r23);
    sub_100a3e6cc(r21, &var_E0, &stack[-264]);
    r21 = r19 + 0x1c;
    r20 = *(int32_t *)(r20 + r27) * *(int32_t *)(r26 + 0x14);
    asm { fcvtzs     w22, d0 };
    if (*0x1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r20, r22);
    sub_100a3e6cc(r21, &var_110, &stack[-312]);
    *(r19 + 0x38) = 0x0;
    r20 = r19 + 0x40;
    r21 = *(int32_t *)(r26 + 0x14);
    asm { fcvtzs     w22, d0 };
    if (*(r23 + 0x1d8) != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    r0 = (*0x1011dd1e0)(r21, r22);
    *(int32_t *)(r19 + 0x58) = 0x0;
    goto loc_100b52d90;

loc_100b52d70:
    r0 = [r20 _releaseAudioBufferIfNeeded];
    goto loc_100b52d80;

loc_100b52d80:
    *(int128_t *)(r19 + 0x40) = q0;
    *(int128_t *)(r19 + 0x50) = q0;
    *(int128_t *)(r19 + 0x20) = q0;
    *(int128_t *)(r19 + 0x30) = q0;
    *(int128_t *)r19 = q0;
    *(int128_t *)(r19 + 0x10) = q0;
    goto loc_100b52d90;
}

-(bool)shouldRestartAfterStalling {
    return 0x1;
}

-(bool)stallingForTrack:(long long)arg2 {
    return 0x0;
}

-(union ?)maxBufferTime {
    r0 = sub_100b59418(r8);
    return r0;
}

-(void *)representationId {
    return 0x0;
}

-(void *)URLIfExists {
    r0 = self->_localURL;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(union ?)minBufferTime {
    r0 = sub_100b59478(r8);
    return r0;
}

-(void *)audioRepresentationId {
    return 0x0;
}

-(void *)mpdAccessibilityDescription {
    return 0x0;
}

-(void *)asset {
    r0 = self;
    return r0;
}

-(bool)mpdContainsAttributeUsingASRCaptions {
    return 0x0;
}

-(long long)status {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_hasFailed != 0x0) {
            asm { cinc       x0, x8, ne };
    }
    return r0;
}

-(void)addErrorToLog:(void *)arg2 shouldStopPlayback:(bool)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r21->_eventListener);
    r0 = [NSNotificationCenter defaultCenter];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (arg3 != 0x0) {
            r23 = **_AVPlayerItemFailedToPlayToEndTimeNotification;
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r25 = &@selector(playerItemDidFail:);
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r25 = &@selector(playerItemDidWarn:);
            r23 = @"FNFAssetWarning";
    }
    var_48 = **___stack_chk_guard;
    r24 = [r0 retain];
    [r22 postNotificationName:r23 object:r21 userInfo:r24];
    [r24 release];
    [r22 release];
    objc_msgSend(r20, *r25);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(union ?)currentTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)cancelLoading {
    return;
}

-(void *)accessLog {
    return 0x0;
}

-(void *)tracksWithMediaType:(void *)arg2 {
    return 0x0;
}

-(bool)isPlaybackLikelyToKeepUp {
    return 0x1;
}

-(void)addOutput:(void *)arg2 {
    return;
}

-(bool)isPlaybackBufferFull {
    return 0x0;
}

-(void *)audioMix {
    return 0x0;
}

-(struct opaqueCMFormatDescription *)formatDesc {
    r0 = self->_formatDesc;
    return r0;
}

-(void)setAudioMix:(void *)arg2 {
    return;
}

-(void *)audioStreamExtraParameters {
    return 0x0;
}

-(void *)projection {
    return 0x0;
}

-(struct AudioStreamBasicDescription)asbd {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_asbd));
    r10 = *(0x20 + r0 + r9);
    q0 = *(int128_t *)(r0 + r9);
    q1 = *(int128_t *)(0x10 + r0 + r9);
    *(int128_t *)r8 = q0;
    *(int128_t *)(r8 + 0x10) = q1;
    *(r8 + 0x20) = r10;
    return r0;
}

-(void *)audioChannelConfiguration {
    return 0x0;
}

-(unsigned int)audioTimescale {
    r0 = *(int32_t *)(int64_t *)&self->_audioTimescale;
    return r0;
}

-(unsigned int)timescale {
    r0 = *(int32_t *)(int64_t *)&self->_timescale;
    return r0;
}

-(void *)resourceLoader {
    return 0x0;
}

-(void *)loadedTimeRanges {
    r31 = r31 - 0x90;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    var_18 = **___stack_chk_guard;
    r8 = *qword_1011dd130;
    r9 = *(r8 + 0x10);
    r0 = [NSValue valueWithCMTimeRange:&var_80];
    r20 = [r0 retain];
    r19 = [[NSArray arrayWithObjects:r29 - 0x20 count:0x1] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)playbackPauseRequested:(int)arg2 {
    return;
}

-(void *)debugDetails {
    objc_retainAutorelease(@"localMp4");
    return @"localMp4";
}

-(void *)qualityLabel {
    return 0x0;
}

-(void)playbackStarted {
    return;
}

-(void)_releaseAudioBufferIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_audioSampleBuffer));
    r20 = *(self + r21);
    if (r20 != 0x0) {
            if (*qword_1011dd358 != -0x1) {
                    dispatch_once_f(0x1011dd358, 0x1011c6508, 0x100a3d91c);
            }
            qword_1011dd360(r20);
            CFRelease(*(r19 + r21));
            *(r19 + r21) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_audioBlockBuffer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            CFRelease(r0);
            *(r19 + r20) = 0x0;
    }
    *(int32_t *)(int64_t *)&r19->_currentAudioBufferIndex = 0x0;
    return;
}

-(int)_currentAudioBufferIndex {
    r0 = *(int32_t *)(int64_t *)&self->_currentAudioBufferIndex;
    return r0;
}

-(bool)isProtectedContent {
    return 0x0;
}

-(void)_getAudioPacketDescriptions {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = self->_audioSampleBuffer;
    r21 = (int64_t *)&self->_inPacketDescriptions;
    if (*qword_1011dd2d8 != -0x1) {
            dispatch_once_f(0x1011dd2d8, 0x1011c6448, 0x100a3d91c);
    }
    r0 = qword_1011dd2e0(r20, r21, &var_28);
    r8 = sign_extend_64(var_28) >> 0x4;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x0;
            }
            else {
                    r8 = r8;
            }
    }
    *(int32_t *)(int64_t *)&r19->_numberOfPackets = r8;
    return;
}

-(void)printASBD:(struct AudioStreamBasicDescription)arg2 {
    memcpy(&r2, &arg2, 0x8);
    asm { rev        w8, w8 };
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x386 format:@"  Sample Rate:         %10.0f"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x387 format:@"  Format ID:           %10s"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x388 format:@"  Format Flags:        %10X"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x389 format:@"  Bytes per Packet:    %10d"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x38a format:@"  Frames per Packet:   %10d"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x38b format:@"  Bytes per Frame:     %10d"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x38c format:@"  Channels per Frame:  %10d"];
    [FBAdLogger logAtLevel:0x4 file:"Libraries/FNFLocalAsset/FNFLocalAsset/FNFLocalMp4Asset.mm" lineNumber:0x38d format:@"  Bits per Channel:    %10d"];
    return;
}

-(union ?)videoTrackDuration {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(bool)isDurationFinal {
    return 0x1;
}

-(bool)decompressedFramebuffer {
    r0 = *(int8_t *)(int64_t *)&self->_isOutputDecompressed;
    return r0;
}

-(void)setAssetEventListener:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_eventListener, arg2);
    return;
}

-(int)pauseReason {
    r0 = *(int32_t *)(int64_t *)&self->_pauseReason;
    return r0;
}

-(void)setIsSoundMuted:(bool)arg2 {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resourceHost, 0x0);
    objc_destroyWeak((int64_t *)&self->_eventListener);
    objc_storeStrong((int64_t *)&self->_audioAssetReaderTrackOutput, 0x0);
    objc_storeStrong((int64_t *)&self->_audioAssetReader, 0x0);
    objc_storeStrong((int64_t *)&self->_videoAssetReaderTrackOutput, 0x0);
    objc_storeStrong((int64_t *)&self->_videoAssetReader, 0x0);
    objc_storeStrong((int64_t *)&self->_videoAsset, 0x0);
    objc_storeStrong((int64_t *)&self->_dispatchQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_loadingError, 0x0);
    objc_storeStrong((int64_t *)&self->_localURL, 0x0);
    objc_storeStrong((int64_t *)&self->_assetLoadedHandler, 0x0);
    return;
}

-(void *)resourceHost {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_resourceHost)), 0x1);
    return r0;
}

-(void)setResourceHost:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

@end