@implementation GADAssetLoadingVideoPlayerItem

-(void *)initWithVideoURL:(void *)arg2 assetLoader:(void *)arg3 videoConfiguration:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r24 = arg4;
    r25 = arg3;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [r24 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoURL));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_assetLoader, r25);
            objc_storeStrong((int64_t *)&r22->_videoConfiguration, r24);
            *(int8_t *)(int64_t *)&r22->_loadingEnabled = 0x1;
            r0 = sub_100860a2c("com.google.admob.n.asset-loading-player-item", 0x0, 0x19);
            r0 = [r0 retain];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r22 + r28);
            *(r22 + r28) = r0;
            [r8 release];
            r0 = [NSURLComponents alloc];
            r0 = objc_msgSend(r0, r23);
            r23 = r0;
            [r0 setScheme:@"video"];
            r25 = [[r19 host] retain];
            [r23 setHost:r25];
            [r25 release];
            r25 = [[r19 path] retain];
            [r23 setPath:r25];
            [r25 release];
            r0 = [r23 URL];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 == 0x0) {
                    sub_1007ce06c(0x0, @"Custom video URL creation for loading video through asset loading player item mustn't fail.");
                    r26 = [[NSString alloc] initWithFormat:@"%@://video/asset_loading"];
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r25 release];
                    [r26 release];
                    r25 = r27;
            }
            r0 = [AVURLAsset alloc];
            r0 = [r0 initWithURL:r25 options:0x0];
            r26 = r0;
            r0 = [r0 resourceLoader];
            r0 = [r0 retain];
            [r0 setDelegate:r22 queue:*(r22 + r28)];
            [r0 release];
            r0 = [AVPlayerItem alloc];
            r0 = [r0 initWithAsset:r26];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            [[*(r22 + r24) retain] retain];
            var_68 = [r22 retain];
            sub_100860a80();
            [var_68 release];
            [r0 release];
            [r24 release];
            [r26 release];
            [r25 release];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_playbackProgressObserver));
    if (*(r19 + r21) != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_player);
            [r0 removeTimeObserver:*(r19 + r21)];
            [r0 release];
    }
    [r19->_playerItem removeObserver:r19 forKeyPath:@"loadedTimeRanges"];
    [[r19->_playerItemCheckSourceTimer retain] retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_58 super] dealloc];
    return;
}

-(void)setPlayer:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [GADVideoPlayer class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r21 = r20->_lockQueue;
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_async(r21, &var_50);
            [var_28 release];
            [var_30 release];
    }
    else {
            sub_1007ce06c(0x0, @"Invalid player object.");
    }
    [r19 release];
    return;
}

-(void *)videoURL {
    r0 = self->_videoURL;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)playerItem {
    r0 = self->_playerItem;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)startPlayerItemCheckSourceTimer {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (*qword_1011c3d70 != r20) {
            [[&var_40 super] observeValueForKeyPath:r19 ofObject:r21 change:r22 context:r20];
    }
    else {
            [r23 loadPlayerItemData];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)stopPlayerItemCheckSourceTimer {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)loadPlayerItemData {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSThread currentThread] retain];
    r0 = @class(NSThread);
    r0 = [r0 mainThread];
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r20 == r0) goto loc_1008a81a4;

loc_1008a8150:
    var_28 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    r0 = var_28;
    goto loc_1008a821c;

loc_1008a821c:
    [r0 release];
    return;

loc_1008a81a4:
    [r19 handlePlayerItemUpdates];
    if (*(int8_t *)(int64_t *)&r19->_loadingEnabled == 0x0) goto loc_1008a8234;

loc_1008a81c4:
    r20 = r19->_lockQueue;
    var_50 = [r19 retain];
    dispatch_async(r20, &var_70);
    r0 = var_50;
    goto loc_1008a821c;

loc_1008a8234:
    [r19 stopPlayerItemCheckSourceTimer];
    return;
}

-(bool)prepareForLoadingByteOffset:(long long)arg2 {
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
    r21 = arg2;
    r19 = self;
    r20 = (int64_t *)&r19->_resourceBuffer;
    r22 = *r20;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBufferStartingByteOffset));
    r23 = *(r19 + r25);
    [r19->_videoConfiguration videoAssetLoaderMaxDownloadWaitTimeInterval];
    if ((sub_100884d5c(r22, r23, r21) & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            r0 = *r20;
            if (r0 != 0x0 && ([r0 valid] & 0x1) == 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfFailedResourceBuffer));
                    *(r19 + r8) = *(r19 + r8) + 0x1;
            }
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoader));
            r24 = [*(r19 + r26) getResourceBuffer:&var_50 startingByteOffset:&var_48 loadingByteOffset:r21 error:&var_58];
            r23 = var_50;
            r21 = [r23 retain];
            r22 = [var_58 retain];
            if ((r24 & 0x1) != 0x0) {
                    [*(r19 + r26) finishedUsingResourceBuffer:*r20];
                    r19->_playerItemCachingStartTimeInterval = 0x0;
                    objc_storeStrong(r20, r23);
                    *(r19 + r25) = var_48;
                    r19 = 0x1;
            }
            else {
                    sub_1007ce06c(0x0, @"Error getting resource buffer for rendering video data. Error: %@");
                    r19 = 0x0;
            }
            [r21 release];
            [r22 release];
    }
    r0 = r19;
    return r0;
}

-(bool)loadContentRequest:(void *)arg2 withError:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_videoConfiguration;
    r0 = [r0 assetLoadingPlayerItemMaxContentLoadingFailedAttempts];
    if (r0 != *0x1011c3a60 && r20->_numberOfFailedResourceBuffer >= r0) {
            if (r21 != 0x0) {
                    r0 = sub_1008098f8(0x10, 0x0);
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r20 = 0x0;
                    *r21 = r0;
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
            if ([*(r20 + r22) responseHeadersReceived] != 0x0) {
                    r21 = [[*(r20 + r22) contentType] retain];
                    r20 = [*(r20 + r22) contentLength];
                    r22 = UTTypeCreatePreferredIdentifierForTag(**_kUTTagClassMIMEType, r21, 0x0);
                    [r19 setContentType:r22];
                    [r19 setContentLength:r20];
                    r20 = 0x1;
                    [r19 setByteRangeAccessSupported:0x1];
                    [r22 release];
                    [r21 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)resourceLoader:(void *)arg2 shouldWaitForLoadingOfRequestedResource:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r0 = [r22 retain];
    r19 = r0;
    r0 = [r0 request];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = sub_10089a100(r0, @"video");
    [r0 release];
    if (r24 != 0x0) {
            [r20->_loadingRequest finishLoadingWithError:[sub_1008098f8(0xd, @"Video asset loader's loading cancelled by new request.") retain]];
            objc_storeStrong((int64_t *)&r20->_loadingRequest, r22);
            [r20 loadPlayerItemData];
            [r23 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)handlePlayerItemUpdates {
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
    r31 = r31 + 0xffffffffffffff90 - 0x190;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_player);
    [GADVideoPlayer class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1008a8378;

loc_1008a8350:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
    r0 = *(r20 + r25);
    if (r0 != 0x0) {
            [r0 currentTime];
            r0 = *(r20 + r25);
    }
    else {
            var_90 = 0x0;
    }
    r24 = &stack[-336];
    r0 = [r0 loadedTimeRanges];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 firstObject];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [r23 CMTimeRangeValue];
    }
    else {
            var_B0 = 0x0;
            var_A8 = 0x0;
            var_C0 = 0x0;
            var_B8 = 0x0;
            var_D0 = 0x0;
            var_C8 = 0x0;
    }
    [r23 release];
    [r22 release];
    q2 = *(int128_t *)(r24 + 0x80);
    q0 = *(int128_t *)(r24 + 0x90);
    q1 = *(int128_t *)(r24 + 0x70);
    *(int128_t *)(r24 + 0x30) = q2;
    *(int128_t *)(r24 + 0x40) = q0;
    r27 = stack[-212];
    var_70 = var_C8;
    var_78 = var_D0;
    r26 = var_C0;
    r23 = stack[-188];
    var_80 = var_B0;
    var_88 = var_B8;
    r22 = var_A8;
    *(int128_t *)(r24 + 0x20) = q1;
    CMTimeRangeGetEnd(&stack[-304]);
    if ((r27 & r23 & var_94 & 0x1) == 0x0 || (var_DC & 0x1) == 0x0) goto loc_1008a8730;

loc_1008a845c:
    *(int128_t *)r24 = *(int128_t *)(r24 + 0xa0);
    CMTimeGetSeconds(&stack[-336]);
    CMTimeGetSeconds(&var_158);
    CMTimeGetSeconds(&var_170);
    d0 = d9 + d0;
    if (d8 < d9 || d8 > d0) {
            *(int8_t *)(int64_t *)&r20->_loadingEnabled = 0x1;
    }
    d9 = d0 - d8;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
    [*(r20 + r22) minBufferTimeInterval];
    if (d9 < d0) {
            *(int8_t *)(int64_t *)&r20->_loadingEnabled = 0x1;
    }
    if (([*(r20 + r22) videoBufferShouldIgnoreCanPlayThrough] & 0x1) != 0x0 || [r19 hasPostedCanPlayThrough] != 0x0) {
            [*(r20 + r22) maxBufferTimeInterval];
            if (d9 >= d0) {
                    *(int8_t *)(int64_t *)&r20->_loadingEnabled = 0x0;
            }
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
    if ([*(r20 + r22) valid] == 0x0) goto loc_1008a8730;

loc_1008a857c:
    [*(r20 + r22) networkSpeedInBytesPerSecond];
    if (d0 < 0x0 || [*(r20 + r22) maxBytes] == *0x100bf4600) goto loc_1008a8730;

loc_1008a85b8:
    r0 = *(r20 + r25);
    r0 = [r0 tracks];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 == 0x0) goto loc_1008a8730;

loc_1008a85f4:
    r22 = @selector(count);
    r0 = *(r20 + r25);
    r0 = [r0 asset];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 tracksWithMediaType:**_AVMediaTypeVideo];
    r29 = r29;
    r23 = [r0 retain];
    [r24 release];
    if (objc_msgSend(r23, r22) == 0x0) goto loc_1008a8728;

loc_1008a864c:
    r0 = [r23 firstObject];
    r0 = [r0 retain];
    [r0 estimatedDataRate];
    [r0 release];
    [r23 release];
    if (s9 < 0x0) goto loc_1008a8730;

loc_1008a868c:
    r0 = CMTimeCompare(&var_190, &var_1B0);
    if (r0 == 0x0) goto loc_1008a8730;

loc_1008a86c4:
    r21 = r20->_lockQueue;
    var_1C8 = [r20 retain];
    dispatch_async(r21, &var_1E8);
    r0 = var_1C8;
    goto loc_1008a872c;

loc_1008a872c:
    [r0 release];
    goto loc_1008a8730;

loc_1008a8730:
    var_1F0 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_1F0) {
            __stack_chk_fail();
    }
    return;

loc_1008a8728:
    r0 = r23;
    goto loc_1008a872c;

loc_1008a8378:
    *(int8_t *)(int64_t *)&r20->_loadingEnabled = 0x0;
    goto loc_1008a8730;
}

-(void)resourceLoader:(void *)arg2 didCancelLoadingRequest:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadingRequest));
    if (*(r20 + r8) == r19) {
            *(r20 + r8) = 0x0;
            [r19 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_playbackProgressObserver, 0x0);
    objc_destroyWeak((int64_t *)&self->_player);
    objc_storeStrong((int64_t *)&self->_resourceBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_loadingRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItemCheckSourceTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItem, 0x0);
    objc_storeStrong((int64_t *)&self->_videoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_assetLoader, 0x0);
    objc_storeStrong((int64_t *)&self->_videoURL, 0x0);
    return;
}

-(void)processLoadingRequest {
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_loadingRequest));
    if (*(r19 + r26) == 0x0) goto .l1;

loc_1008a87e4:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
    r0 = *(r19 + r25);
    r0 = [r0 assetLoadingPlayerItemNoBufferUpdateMaxContentSize];
    if (r0 != *0x1011c3a60) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadedContentSizeWithNoBufferUpdate));
            if (*(r19 + r8) > r0) {
                    *(r19 + r8) = 0x0;
                    [r19 stopPlayerItemCheckSourceTimer];
            }
            else {
                    r0 = *(r19 + r26);
                    r0 = [r0 dataRequest];
                    r0 = [r0 retain];
                    r21 = [r0 requestedOffset];
                    [r0 release];
                    r0 = *(r19 + r26);
                    r0 = [r0 dataRequest];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 currentOffset];
                    [r0 release];
                    if (r24 > r21) {
                            r0 = *(r19 + r26);
                            r0 = [r0 dataRequest];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = [r0 currentOffset];
                            [r0 release];
                    }
                    if (([r19 prepareForLoadingByteOffset:r21] & 0x1) != 0x0) {
                            r0 = *(r19 + r26);
                            r0 = [r0 contentInformationRequest];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = *(r19 + r26);
                                    r0 = [r0 contentInformationRequest];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r23 = [r19 loadContentRequest:r22 withError:&var_58];
                                    r21 = [var_58 retain];
                                    [r22 release];
                                    if ((r23 & 0x1) == 0x0) {
                                            if (r21 != 0x0) {
                                                    [*(r19 + r26) finishLoadingWithError:r21];
                                                    r0 = *(r19 + r26);
                                                    *(r19 + r26) = 0x0;
                                                    [r0 release];
                                                    r20 = r21;
                                            }
                                            else {
                                                    r20 = 0x0;
                                            }
                                    }
                                    else {
                                            r0 = *(r19 + r26);
                                            r0 = [r0 dataRequest];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r0 != 0x0) {
                                                    r23 = [[*(r19 + r26) dataRequest] retain];
                                                    r22 = [r19 loadDataRequest:r23 withError:&var_60];
                                                    r20 = [var_60 retain];
                                                    [r21 release];
                                                    [r23 release];
                                                    if (r20 != 0x0 && (r22 ^ 0x1) != 0x0) {
                                                            [*(r19 + r26) finishLoadingWithError:r20];
                                                            r0 = *(r19 + r26);
                                                            *(r19 + r26) = 0x0;
                                                            [r0 release];
                                                            r21 = r20;
                                                            if ((r22 & 0x1) != 0x0) {
                                                                    [*(r19 + r26) finishLoading];
                                                                    r0 = *(r19 + r26);
                                                                    *(r19 + r26) = 0x0;
                                                                    [r0 release];
                                                                    r20 = r21;
                                                            }
                                                    }
                                                    else {
                                                            r21 = r20;
                                                            if (r22 != 0x0) {
                                                                    [*(r19 + r26) finishLoading];
                                                                    r0 = *(r19 + r26);
                                                                    *(r19 + r26) = 0x0;
                                                                    [r0 release];
                                                                    r20 = r21;
                                                            }
                                                    }
                                            }
                                            else {
                                                    [*(r19 + r26) finishLoading];
                                                    r0 = *(r19 + r26);
                                                    *(r19 + r26) = 0x0;
                                                    [r0 release];
                                                    r20 = r21;
                                            }
                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
                                            if ([*(r19 + r21) maxBytes] != *0x100bf4600 && [*(r19 + r21) valid] != 0x0 && ([*(r19 + r21) completed] & 0x1) == 0x0) {
                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCurrentTimeInterval));
                                                    d0 = *(r19 + r8);
                                                    if (d0 >= 0x0) {
                                                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoBitRateInBitsPerSecond));
                                                            if (*(int32_t *)(r19 + r22) >= 0x0) {
                                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCachingStartTimeInterval));
                                                                    d1 = *(r19 + r9);
                                                                    if (d0 < d1 || d1 <= 0x0) {
                                                                            *(r19 + r9) = d0;
                                                                            r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                                            d0 = *(r19 + r8);
                                                                            d1 = *(r19 + r9);
                                                                    }
                                                                    d8 = d0 - d1;
                                                                    if (d8 > 0x0) {
                                                                            r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                                    }
                                                                    [*(r19 + r25) maxBufferTimeInterval];
                                                                    asm { fcvt       d1, s1 };
                                                                    asm { fcvtzs     x2, d0 };
                                                                    [*(r19 + r21) setMaxBytes:r2];
                                                            }
                                                    }
                                            }
                                    }
                            }
                            else {
                                    r21 = 0x0;
                                    r0 = *(r19 + r26);
                                    r0 = [r0 dataRequest];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r23 = [[*(r19 + r26) dataRequest] retain];
                                            r22 = [r19 loadDataRequest:r23 withError:&var_60];
                                            r20 = [var_60 retain];
                                            [r21 release];
                                            [r23 release];
                                            if (r20 != 0x0 && (r22 ^ 0x1) != 0x0) {
                                                    [*(r19 + r26) finishLoadingWithError:r20];
                                                    r0 = *(r19 + r26);
                                                    *(r19 + r26) = 0x0;
                                                    [r0 release];
                                                    r21 = r20;
                                                    if ((r22 & 0x1) != 0x0) {
                                                            [*(r19 + r26) finishLoading];
                                                            r0 = *(r19 + r26);
                                                            *(r19 + r26) = 0x0;
                                                            [r0 release];
                                                            r20 = r21;
                                                    }
                                            }
                                            else {
                                                    r21 = r20;
                                                    if (r22 != 0x0) {
                                                            [*(r19 + r26) finishLoading];
                                                            r0 = *(r19 + r26);
                                                            *(r19 + r26) = 0x0;
                                                            [r0 release];
                                                            r20 = r21;
                                                    }
                                            }
                                    }
                                    else {
                                            [*(r19 + r26) finishLoading];
                                            r0 = *(r19 + r26);
                                            *(r19 + r26) = 0x0;
                                            [r0 release];
                                            r20 = r21;
                                    }
                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
                                    if ([*(r19 + r21) maxBytes] != *0x100bf4600 && [*(r19 + r21) valid] != 0x0 && ([*(r19 + r21) completed] & 0x1) == 0x0) {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCurrentTimeInterval));
                                            d0 = *(r19 + r8);
                                            if (d0 >= 0x0) {
                                                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoBitRateInBitsPerSecond));
                                                    if (*(int32_t *)(r19 + r22) >= 0x0) {
                                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCachingStartTimeInterval));
                                                            d1 = *(r19 + r9);
                                                            if (d0 < d1 || d1 <= 0x0) {
                                                                    *(r19 + r9) = d0;
                                                                    r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                                    d0 = *(r19 + r8);
                                                                    d1 = *(r19 + r9);
                                                            }
                                                            d8 = d0 - d1;
                                                            if (d8 > 0x0) {
                                                                    r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                            }
                                                            [*(r19 + r25) maxBufferTimeInterval];
                                                            asm { fcvt       d1, s1 };
                                                            asm { fcvtzs     x2, d0 };
                                                            [*(r19 + r21) setMaxBytes:r2];
                                                    }
                                            }
                                    }
                            }
                            [r20 release];
                    }
                    else {
                            r20 = [sub_1008098f8(0xf, 0x0) retain];
                            [*(r19 + r26) finishLoadingWithError:r20];
                            r0 = *(r19 + r26);
                            *(r19 + r26) = 0x0;
                            [r0 release];
                            [r20 release];
                    }
            }
    }
    else {
            r0 = *(r19 + r26);
            r0 = [r0 dataRequest];
            r0 = [r0 retain];
            r21 = [r0 requestedOffset];
            [r0 release];
            r0 = *(r19 + r26);
            r0 = [r0 dataRequest];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 currentOffset];
            [r0 release];
            if (r24 > r21) {
                    r0 = *(r19 + r26);
                    r0 = [r0 dataRequest];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = [r0 currentOffset];
                    [r0 release];
            }
            if (([r19 prepareForLoadingByteOffset:r21] & 0x1) != 0x0) {
                    r0 = *(r19 + r26);
                    r0 = [r0 contentInformationRequest];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = *(r19 + r26);
                            r0 = [r0 contentInformationRequest];
                            r29 = r29;
                            r22 = [r0 retain];
                            r23 = [r19 loadContentRequest:r22 withError:&var_58];
                            r21 = [var_58 retain];
                            [r22 release];
                            if ((r23 & 0x1) == 0x0) {
                                    if (r21 != 0x0) {
                                            [*(r19 + r26) finishLoadingWithError:r21];
                                            r0 = *(r19 + r26);
                                            *(r19 + r26) = 0x0;
                                            [r0 release];
                                            r20 = r21;
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    r0 = *(r19 + r26);
                                    r0 = [r0 dataRequest];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r23 = [[*(r19 + r26) dataRequest] retain];
                                            r22 = [r19 loadDataRequest:r23 withError:&var_60];
                                            r20 = [var_60 retain];
                                            [r21 release];
                                            [r23 release];
                                            if (r20 != 0x0 && (r22 ^ 0x1) != 0x0) {
                                                    [*(r19 + r26) finishLoadingWithError:r20];
                                                    r0 = *(r19 + r26);
                                                    *(r19 + r26) = 0x0;
                                                    [r0 release];
                                                    r21 = r20;
                                                    if ((r22 & 0x1) != 0x0) {
                                                            [*(r19 + r26) finishLoading];
                                                            r0 = *(r19 + r26);
                                                            *(r19 + r26) = 0x0;
                                                            [r0 release];
                                                            r20 = r21;
                                                    }
                                            }
                                            else {
                                                    r21 = r20;
                                                    if (r22 != 0x0) {
                                                            [*(r19 + r26) finishLoading];
                                                            r0 = *(r19 + r26);
                                                            *(r19 + r26) = 0x0;
                                                            [r0 release];
                                                            r20 = r21;
                                                    }
                                            }
                                    }
                                    else {
                                            [*(r19 + r26) finishLoading];
                                            r0 = *(r19 + r26);
                                            *(r19 + r26) = 0x0;
                                            [r0 release];
                                            r20 = r21;
                                    }
                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
                                    if ([*(r19 + r21) maxBytes] != *0x100bf4600 && [*(r19 + r21) valid] != 0x0 && ([*(r19 + r21) completed] & 0x1) == 0x0) {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCurrentTimeInterval));
                                            d0 = *(r19 + r8);
                                            if (d0 >= 0x0) {
                                                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoBitRateInBitsPerSecond));
                                                    if (*(int32_t *)(r19 + r22) >= 0x0) {
                                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCachingStartTimeInterval));
                                                            d1 = *(r19 + r9);
                                                            if (d0 < d1 || d1 <= 0x0) {
                                                                    *(r19 + r9) = d0;
                                                                    r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                                    d0 = *(r19 + r8);
                                                                    d1 = *(r19 + r9);
                                                            }
                                                            d8 = d0 - d1;
                                                            if (d8 > 0x0) {
                                                                    r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                            }
                                                            [*(r19 + r25) maxBufferTimeInterval];
                                                            asm { fcvt       d1, s1 };
                                                            asm { fcvtzs     x2, d0 };
                                                            [*(r19 + r21) setMaxBytes:r2];
                                                    }
                                            }
                                    }
                            }
                    }
                    else {
                            r21 = 0x0;
                            r0 = *(r19 + r26);
                            r0 = [r0 dataRequest];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r23 = [[*(r19 + r26) dataRequest] retain];
                                    r22 = [r19 loadDataRequest:r23 withError:&var_60];
                                    r20 = [var_60 retain];
                                    [r21 release];
                                    [r23 release];
                                    if (r20 != 0x0 && (r22 ^ 0x1) != 0x0) {
                                            [*(r19 + r26) finishLoadingWithError:r20];
                                            r0 = *(r19 + r26);
                                            *(r19 + r26) = 0x0;
                                            [r0 release];
                                            r21 = r20;
                                            if ((r22 & 0x1) != 0x0) {
                                                    [*(r19 + r26) finishLoading];
                                                    r0 = *(r19 + r26);
                                                    *(r19 + r26) = 0x0;
                                                    [r0 release];
                                                    r20 = r21;
                                            }
                                    }
                                    else {
                                            r21 = r20;
                                            if (r22 != 0x0) {
                                                    [*(r19 + r26) finishLoading];
                                                    r0 = *(r19 + r26);
                                                    *(r19 + r26) = 0x0;
                                                    [r0 release];
                                                    r20 = r21;
                                            }
                                    }
                            }
                            else {
                                    [*(r19 + r26) finishLoading];
                                    r0 = *(r19 + r26);
                                    *(r19 + r26) = 0x0;
                                    [r0 release];
                                    r20 = r21;
                            }
                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
                            if ([*(r19 + r21) maxBytes] != *0x100bf4600 && [*(r19 + r21) valid] != 0x0 && ([*(r19 + r21) completed] & 0x1) == 0x0) {
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCurrentTimeInterval));
                                    d0 = *(r19 + r8);
                                    if (d0 >= 0x0) {
                                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_videoBitRateInBitsPerSecond));
                                            if (*(int32_t *)(r19 + r22) >= 0x0) {
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerItemCachingStartTimeInterval));
                                                    d1 = *(r19 + r9);
                                                    if (d0 < d1 || d1 <= 0x0) {
                                                            *(r19 + r9) = d0;
                                                            r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                            d0 = *(r19 + r8);
                                                            d1 = *(r19 + r9);
                                                    }
                                                    d8 = d0 - d1;
                                                    if (d8 > 0x0) {
                                                            r19->_loadedContentSizeWithNoBufferUpdate = 0x0;
                                                    }
                                                    [*(r19 + r25) maxBufferTimeInterval];
                                                    asm { fcvt       d1, s1 };
                                                    asm { fcvtzs     x2, d0 };
                                                    [*(r19 + r21) setMaxBytes:r2];
                                            }
                                    }
                            }
                    }
                    [r20 release];
            }
            else {
                    r20 = [sub_1008098f8(0xf, 0x0) retain];
                    [*(r19 + r26) finishLoadingWithError:r20];
                    r0 = *(r19 + r26);
                    *(r19 + r26) = 0x0;
                    [r0 release];
                    [r20 release];
            }
    }
    return;

.l1:
    return;
}

-(bool)loadDataRequest:(void *)arg2 withError:(void * *)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
    r0 = *(r21 + r27);
    r0 = [r0 assetLoadingPlayerItemMaxDataLoadingFailedAttempts];
    if (r0 != *0x1011c3a60 && r21->_numberOfFailedResourceBuffer >= r0) {
            if (r20 != 0x0) {
                    r0 = sub_1008098f8(0x10, 0x0);
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r21 = 0x0;
                    *r20 = r0;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
            r0 = *(r21 + r28);
            if ([*(r21 + r28) bufferedContentSize] != 0x0 && r0 != 0x0 && [r0 valid] != 0x0) {
                    var_68 = r20;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBufferStartingByteOffset));
                    var_70 = r8;
                    r23 = *(r21 + r8);
                    var_60 = r23 + [*(r21 + r28) bufferedContentSize] - 0x1;
                    r20 = [r19 requestedOffset];
                    if ([r19 currentOffset] > [r19 requestedOffset]) {
                            r20 = [r19 currentOffset];
                    }
                    r22 = r20 - r23;
                    COND = r22 >= 0x0;
                    r23 = var_60;
                    if (COND) {
                            asm { ccmp       x23, x20, #0x8, ge };
                    }
                    if (!CPU_FLAGS & L) {
                            r24 = [r19 requestedLength];
                            r25 = [r19 requestedOffset];
                            if (sub_100818968(0x9, 0x0, 0x0) != 0x0 && [r19 requestsAllDataToEndOfResource] != 0x0) {
                                    if ([*(r21 + r28) responseHeadersReceived] != 0x0) {
                                            if ([*(r21 + r28) contentLength] >= 0x1) {
                                                    r25 = (*(r21 + var_70) - r20) + [*(r21 + r28) contentLength];
                                                    if (r25 <= 0x0) {
                                                            r21 = 0x1;
                                                    }
                                                    else {
                                                            if (r25 < (r23 - r20) + 0x1) {
                                                                    asm { csinc      x23, x25, x8, lt };
                                                            }
                                                            if ([*(r21 + r27) videoAssetMaxLoadableChunkSizeInBytes] != *0x1011c3a60) {
                                                                    r0 = *(r21 + r27);
                                                                    r0 = [r0 videoAssetMaxLoadableChunkSizeInBytes];
                                                                    if (r23 < r0) {
                                                                            if (!CPU_FLAGS & L) {
                                                                                    r23 = r0;
                                                                            }
                                                                            else {
                                                                                    r23 = r23;
                                                                            }
                                                                    }
                                                            }
                                                            if (r23 >= 0x1) {
                                                                    r22 = [[*(r21 + r28) dataWithRange:r22 error:r23] retain];
                                                                    r23 = [0x0 retain];
                                                                    if (r23 != 0x0) {
                                                                            r20 = var_68;
                                                                            if (r20 != 0x0) {
                                                                                    r0 = objc_retainAutorelease(r23);
                                                                                    r21 = 0x0;
                                                                                    *r20 = r0;
                                                                            }
                                                                            else {
                                                                                    r21 = 0x0;
                                                                            }
                                                                    }
                                                                    else {
                                                                            if ([r22 length] != 0x0) {
                                                                                    r20 = @selector(length);
                                                                                    r0 = objc_msgSend(r22, r20);
                                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadedContentSizeWithNoBufferUpdate));
                                                                                    *(r21 + r8) = *(r21 + r8) + r0;
                                                                                    [r19 respondWithData:r22];
                                                                                    if (objc_msgSend(r22, r20) >= r25) {
                                                                                            if (CPU_FLAGS & GE) {
                                                                                                    r21 = 0x1;
                                                                                            }
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r21 = 0x0;
                                                                            }
                                                                    }
                                                                    [r22 release];
                                                                    [r23 release];
                                                            }
                                                            else {
                                                                    r21 = 0x0;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r25 = (r25 - r20) + r24;
                                                    if (r25 >= 0x1) {
                                                            if (r25 < (r23 - r20) + 0x1) {
                                                                    asm { csinc      x23, x25, x8, lt };
                                                            }
                                                            if ([*(r21 + r27) videoAssetMaxLoadableChunkSizeInBytes] != *0x1011c3a60) {
                                                                    r0 = *(r21 + r27);
                                                                    r0 = [r0 videoAssetMaxLoadableChunkSizeInBytes];
                                                                    if (r23 < r0) {
                                                                            if (!CPU_FLAGS & L) {
                                                                                    r23 = r0;
                                                                            }
                                                                            else {
                                                                                    r23 = r23;
                                                                            }
                                                                    }
                                                            }
                                                            if (r23 >= 0x1) {
                                                                    r22 = [[*(r21 + r28) dataWithRange:r22 error:r23] retain];
                                                                    r23 = [0x0 retain];
                                                                    if (r23 != 0x0) {
                                                                            r20 = var_68;
                                                                            if (r20 != 0x0) {
                                                                                    r0 = objc_retainAutorelease(r23);
                                                                                    r21 = 0x0;
                                                                                    *r20 = r0;
                                                                            }
                                                                            else {
                                                                                    r21 = 0x0;
                                                                            }
                                                                    }
                                                                    else {
                                                                            if ([r22 length] != 0x0) {
                                                                                    r20 = @selector(length);
                                                                                    r0 = objc_msgSend(r22, r20);
                                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadedContentSizeWithNoBufferUpdate));
                                                                                    *(r21 + r8) = *(r21 + r8) + r0;
                                                                                    [r19 respondWithData:r22];
                                                                                    if (objc_msgSend(r22, r20) >= r25) {
                                                                                            if (CPU_FLAGS & GE) {
                                                                                                    r21 = 0x1;
                                                                                            }
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r21 = 0x0;
                                                                            }
                                                                    }
                                                                    [r22 release];
                                                                    [r23 release];
                                                            }
                                                            else {
                                                                    r21 = 0x0;
                                                            }
                                                    }
                                                    else {
                                                            r21 = 0x1;
                                                    }
                                            }
                                    }
                                    else {
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    r25 = (r25 - r20) + r24;
                                    if (r25 >= 0x1) {
                                            if (r25 < (r23 - r20) + 0x1) {
                                                    asm { csinc      x23, x25, x8, lt };
                                            }
                                            if ([*(r21 + r27) videoAssetMaxLoadableChunkSizeInBytes] != *0x1011c3a60) {
                                                    r0 = *(r21 + r27);
                                                    r0 = [r0 videoAssetMaxLoadableChunkSizeInBytes];
                                                    if (r23 < r0) {
                                                            if (!CPU_FLAGS & L) {
                                                                    r23 = r0;
                                                            }
                                                            else {
                                                                    r23 = r23;
                                                            }
                                                    }
                                            }
                                            if (r23 >= 0x1) {
                                                    r22 = [[*(r21 + r28) dataWithRange:r22 error:r23] retain];
                                                    r23 = [0x0 retain];
                                                    if (r23 != 0x0) {
                                                            r20 = var_68;
                                                            if (r20 != 0x0) {
                                                                    r0 = objc_retainAutorelease(r23);
                                                                    r21 = 0x0;
                                                                    *r20 = r0;
                                                            }
                                                            else {
                                                                    r21 = 0x0;
                                                            }
                                                    }
                                                    else {
                                                            if ([r22 length] != 0x0) {
                                                                    r20 = @selector(length);
                                                                    r0 = objc_msgSend(r22, r20);
                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadedContentSizeWithNoBufferUpdate));
                                                                    *(r21 + r8) = *(r21 + r8) + r0;
                                                                    [r19 respondWithData:r22];
                                                                    if (objc_msgSend(r22, r20) >= r25) {
                                                                            if (CPU_FLAGS & GE) {
                                                                                    r21 = 0x1;
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    r21 = 0x0;
                                                            }
                                                    }
                                                    [r22 release];
                                                    [r23 release];
                                            }
                                            else {
                                                    r21 = 0x0;
                                            }
                                    }
                                    else {
                                            r21 = 0x1;
                                    }
                            }
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    [r19 release];
    r0 = r21;
    return r0;
}

@end