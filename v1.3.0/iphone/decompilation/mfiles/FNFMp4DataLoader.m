@implementation FNFMp4DataLoader

-(void *)initWithUrl:(void *)arg2 bitrate:(unsigned long long)arg3 dataBlockDistributor:(void *)arg4 dispatchQueue:(void *)arg5 async:(bool)arg6 {
    r24 = [arg2 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r25 = [FNFAssetResourceLoader new];
    r19 = [self initWithUrl:r24 bitrate:arg3 dataBlockDistributor:r21 resourceLoader:r25 dispatchQueue:r20 async:arg6];
    [r20 release];
    [r21 release];
    [r24 release];
    [r25 release];
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r22 = [[self->_resourceLoader videoID] retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_receiveOffset));
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = (int64_t *)&self->_delegate;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) {
            objc_storeWeak(r20, r19);
    }
    [r19 release];
    return;
}

-(void *)initWithUrl:(void *)arg2 bitrate:(unsigned long long)arg3 dataBlockDistributor:(void *)arg4 resourceLoader:(void *)arg5 dispatchQueue:(void *)arg6 async:(bool)arg7 {
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
    var_64 = arg7;
    r23 = arg6;
    r22 = arg5;
    r25 = arg4;
    r28 = arg3;
    r20 = arg2;
    r19 = [arg2 retain];
    r21 = [r25 retain];
    r24 = [r22 retain];
    r27 = [r23 retain];
    r0 = [[&var_60 super] init];
    r26 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r26->_url, r20);
            r26->_bitrate = r28;
            objc_storeStrong((int64_t *)&r26->_dataBlockDistributor, r25);
            objc_storeStrong((int64_t *)&r26->_dispatchQueue, r23);
            objc_storeStrong((int64_t *)&r26->_resourceLoader, r22);
            *(int8_t *)(int64_t *)&r26->_async = var_64;
    }
    [r27 release];
    [r24 release];
    [r21 release];
    [r19 release];
    r0 = r26;
    return r0;
}

-(void)fetchFirstRequestForSeconds:(unsigned int)arg2 initializationAtomSize:(unsigned long long)arg3 track:(long long)arg4 {
    r4 = arg4;
    r3 = arg3;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r3 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_bitrate));
            r8 = *(r0 + r8);
            if (r8 != 0x0) {
                    asm { ucvtf      d0, x3 };
                    asm { ucvtf      d1, x8 };
                    asm { ucvtf      d2, w2 };
                    asm { fcvtzu     x8, d0 };
            }
            else {
                    r8 = r3 + 0x20000;
            }
    }
    else {
            r8 = 0x28;
    }
    r2 = r0->_receiveOffset;
    r3 = r8 - r2;
    if (r3 >= 0x0) {
            [r0 _fetchStartingAtOffset:r2 length:r3 forTrack:r4];
    }
    return;
}

-(void)fetchToOffset:(unsigned long long)arg2 forTrack:(long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_requestOffset));
    r8 = *(r0 + r8);
    if (r8 < r2) {
            [r0 _fetchStartingAtOffset:r8 length:r2 - r8 forTrack:r3];
    }
    else {
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0x71 format:@"%@ not requesting more data since newoffset(%llu) <= current offset(%llu)"];
    }
    return;
}

-(void)resetWithNewDataBlockDistributor:(void *)arg2 {
    self->_receiveOffset = 0x0;
    self->_requestOffset = 0x0;
    *(int8_t *)(int64_t *)&self->_fullyLoaded = 0x0;
    objc_storeStrong((int64_t *)&self->_dataBlockDistributor, arg2);
    return;
}

-(void)seekForwardToOffset:(unsigned long long)arg2 forTrack:(long long)arg3 {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0x79 format:@"%@ Seeking to offset:%llu"];
    self->_requestOffset = arg2;
    self->_receiveOffset = arg2;
    return;
}

-(void)cancelRequests {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentResourceLoaderRequest));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            r0 = [r0 retain];
            r20 = r0;
            *(r19 + r21) = 0x0;
            [r0 release];
            r0 = r19->_resourceLoader;
            r0 = [r0 retain];
            r21 = *(int8_t *)(int64_t *)&r19->_async;
            r22 = [r0 retain];
            var_28 = r20;
            [r20 retain];
            sub_100b594d8(r21, r22, &var_50);
            [var_28 release];
            [r0 release];
            [r22 release];
            [r20 release];
    }
    r19->_receiveOffset = 0x0;
    return;
}

-(unsigned long long)currentReceiveOffsetForTrack:(long long)arg2 {
    r0 = self->_receiveOffset;
    return r0;
}

-(bool)fetchInProgressForTrack:(long long)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0->_receiveOffset == r0->_requestOffset) {
            r0 = r0->_currentResourceLoaderRequest;
            if (r0 != 0x0) {
                    r0 = [r0 dataRequest];
                    r0 = [r0 retain];
                    [r0 requestedOffset];
                    [r0 requestedLength];
                    [r0 release];
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(unsigned long long)currentRequestOffsetForTrack:(long long)arg2 {
    r0 = self->_requestOffset;
    return r0;
}

-(bool)isFullyDownloaded:(long long)arg2 {
    r0 = *(int8_t *)(int64_t *)&self->_fullyLoaded;
    return r0;
}

-(void *)resourceLoader {
    r0 = self->_resourceLoader;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)_forTestingOverrideResourceLoader:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_resourceLoader, arg2);
    return;
}

-(void)_dataCallback:(void *)arg2 offset:(unsigned long long)arg3 dataRequest:(void *)arg4 forTrack:(long long)arg5 {
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
    r20 = arg5;
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r26 = [arg4 retain];
    [r19 length];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0xec format:@"%@ Received data at offset:%llu with length: %lu, track:%d"];
    r25 = [[r21->_currentResourceLoaderRequest dataRequest] retain];
    [r26 release];
    [r25 release];
    if (r25 != r26) {
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0xef format:@"%@ ignoring loading request from stale request"];
    }
    else {
            [r21->_dataBlockDistributor deliverData:r19 withOffset:r22];
            r0 = [r19 length];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_receiveOffset));
            if (r0 + r22 >= *(r21 + r24)) {
                    *(r21 + r24) = [r19 length] + r22;
            }
            r0 = objc_loadWeakRetained((int64_t *)&r21->_delegate);
            [r0 dataWasReceivedForTrack:r20 andIsComplete:0x0];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_currentResourceLoaderRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_dispatchQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_dataBlockDistributor, 0x0);
    objc_storeStrong((int64_t *)&self->_resourceLoader, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)_dataFinished:(void *)arg2 dataRequest:(void *)arg3 contentInfo:(void *)arg4 loadingRequest:(void *)arg5 forTrack:(long long)arg6 {
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
    r22 = arg6;
    r23 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    var_58 = [arg4 retain];
    r26 = [arg5 retain];
    r21 = objc_loadWeakRetained((int64_t *)&r23->_delegate);
    [r24 requestedOffset];
    [r24 requestedLength];
    [r24 release];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0x103 format:@"%@ Video download completed for request offset: %llu length:%lu track:%d"];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_currentResourceLoaderRequest));
    r27 = *(r23 + r25);
    [r26 release];
    if (r27 != r26) {
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0x106 format:@"%@ ignoring finished request from stale request"];
    }
    else {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_fileSize));
            if (*(r23 + r26) == 0x0) {
                    *(r23 + r26) = [var_58 contentLength];
            }
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_receiveOffset));
            r8 = *(r23 + r27);
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_requestOffset));
            if (r8 != *(r23 + r28)) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0x110 format:@"%@ received partial data on completed request. Updating request offset to receive offset"];
                    *(r23 + r28) = *(r23 + r27);
            }
            if (r19 != 0x0) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0x115 format:@"%@ download failed with error: %@"];
                    [r21 loadingDidFailWithError:r19];
            }
            else {
                    r0 = *(r23 + r25);
                    *(r23 + r25) = 0x0;
                    [r0 release];
                    r8 = *(r23 + r27);
                    if (r8 == *(r23 + r26)) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    *(int8_t *)(int64_t *)&r23->_fullyLoaded = r8;
                    [r21 dataWasReceivedForTrack:r22 andIsComplete:0x1];
            }
    }
    [r21 release];
    [var_58 release];
    [r19 release];
    return;
}

-(void)_fetchStartingAtOffset:(unsigned long long)arg2 length:(unsigned long long)arg3 forTrack:(long long)arg4 {
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
    r29 = &saved_fp;
    r24 = arg4;
    var_180 = arg3;
    r22 = arg2;
    r20 = self;
    var_90 = r29 - 0x98;
    var_70 = [FNFAssetResourceLoadingContentInformationRequest new];
    objc_initWeak(r29 - 0xa0, r20);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_async));
    var_170 = r8;
    r21 = *(int8_t *)(r20 + r8);
    r23 = [r20->_dispatchQueue retain];
    var_168 = &var_E0 + 0x28;
    [FNFAssetResourceLoadingDataRequest alloc];
    r0 = [r23 retain];
    r25 = r0;
    var_C0 = r0;
    objc_copyWeak(&var_E0 + 0x28, r29 - 0xa0);
    r0 = [r26 initWithRequestedOffset:r22 requestedLength:arg3 dataCallback:&var_E0 isPredictive:0x0];
    r26 = r0;
    if (r24 == 0x1) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r0 setIsAudio:r2];
    [r26 setStreamFormat:@"progressive"];
    [FNFAssetResourceLoadingRequest alloc];
    [[NSURLRequest requestWithURL:r20->_url] retain];
    var_110 = r25;
    var_178 = [r25 retain];
    objc_copyWeak(&var_130 + 0x38, r29 - 0xa0);
    r25 = [r27 initWithContentInformationRequest:r28 dataRequest:[r26 retain] urlRequest:r19 completionCallback:&var_130];
    [r19 release];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4DataLoader.mm" lineNumber:0xdb format:@"%@ starting download with offset:%llu length:%llu req:%@"];
    r20->_requestOffset = var_180 + r22;
    objc_storeStrong((int64_t *)&r20->_currentResourceLoaderRequest, r25);
    r0 = r20->_resourceLoader;
    r0 = [r0 retain];
    r19 = *(int8_t *)(r20 + var_170);
    r20 = [r0 retain];
    [r25 retain];
    sub_100b594d8(r19, r20, &var_160);
    [r25 release];
    [r0 release];
    [r20 release];
    [r21 release];
    [r26 release];
    objc_destroyWeak(&var_130 + 0x38);
    [var_110 release];
    [r24 release];
    objc_destroyWeak(var_168);
    [var_C0 release];
    [var_178 release];
    objc_destroyWeak(r29 - 0xa0);
    _Block_object_dispose(r29 - 0x98, 0x8);
    [var_70 release];
    return;
}

@end