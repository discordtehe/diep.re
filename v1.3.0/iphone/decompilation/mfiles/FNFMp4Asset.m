@implementation FNFMp4Asset

-(void *)initWithURL:(void *)arg2 moovAtomSize:(unsigned long long)arg3 moovAtomSizeForReattempt:(unsigned long long)arg4 bitrate:(unsigned long long)arg5 fetchBufferSizeInSeconds:(double)arg6 unstallBufferSizeInSeconds:(double)arg7 stallBufferSizeInSeconds:(double)arg8 firstFetchSizeInSeconds:(double)arg9 fetchBufferMultiplier:(double)arg10 unstallBufferMultiplier:(double)arg11 enableMp4AssetSeekingFix:(bool)arg12 enableMp4AssetEditListSeekingFix:(bool)arg13 enableMp4AssetRotationSupport:(bool)arg14 enableHEVCSupport:(bool)arg15 eventListener:(void *)arg16 {
    r31 = r31 - 0xa0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r27 = *(int8_t *)(&var_10 + 0x10);
    r19 = *(&var_10 + 0x18);
    r26 = [arg2 retain];
    r19 = [r19 retain];
    r20 = [self initWithURL:r26 moovAtomSize:arg3 moovAtomSizeForReattempt:arg4 bitrate:arg5 fetchBufferSizeInSeconds:arg6 unstallBufferSizeInSeconds:arg7 stallBufferSizeInSeconds:r27 firstFetchSizeInSeconds:stack[-152] fetchBufferMultiplier:var_90 unstallBufferMultiplier:stack[-136] enableMp4AssetSeekingFix:var_80];
    [r26 release];
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_eventListener, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithURL:(void *)arg2 moovAtomSize:(unsigned long long)arg3 bitrate:(unsigned long long)arg4 {
    r22 = [arg2 retain];
    r23 = [sub_100b37780() retain];
    r19 = [self initWithURL:r22 moovAtomSize:arg3 bitrate:arg4 dispatchQueue:r23 isAsync:0x1];
    [r22 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)initWithURL:(void *)arg2 moovAtomSize:(unsigned long long)arg3 moovAtomSizeForReattempt:(unsigned long long)arg4 bitrate:(unsigned long long)arg5 fetchBufferSizeInSeconds:(double)arg6 unstallBufferSizeInSeconds:(double)arg7 stallBufferSizeInSeconds:(double)arg8 firstFetchSizeInSeconds:(double)arg9 fetchBufferMultiplier:(double)arg10 unstallBufferMultiplier:(double)arg11 enableMp4AssetSeekingFix:(bool)arg12 enableMp4AssetEditListSeekingFix:(bool)arg13 enableMp4AssetRotationSupport:(bool)arg14 enableHEVCSupport:(bool)arg15 {
    r27 = *(int8_t *)(&var_10 + 0x10);
    r25 = [arg2 retain];
    r0 = sub_100b37780();
    r0 = [r0 retain];
    r19 = [self initWithURL:r25 moovAtomSize:arg3 moovAtomSizeForReattempt:arg4 bitrate:arg5 fetchBufferSizeInSeconds:arg6 unstallBufferSizeInSeconds:arg7 stallBufferSizeInSeconds:r27 firstFetchSizeInSeconds:r0 fetchBufferMultiplier:0x1 unstallBufferMultiplier:stack[-152] enableMp4AssetSeekingFix:var_90];
    [r25 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)initWithURL:(void *)arg2 moovAtomSize:(unsigned long long)arg3 bitrate:(unsigned long long)arg4 dispatchQueue:(void *)arg5 isAsync:(bool)arg6 {
    var_30 = r24;
    r24 = [arg2 retain];
    r19 = [self initWithURL:r24 moovAtomSize:arg3 moovAtomSizeForReattempt:0x0 bitrate:arg4 fetchBufferSizeInSeconds:0x0 unstallBufferSizeInSeconds:0x0 stallBufferSizeInSeconds:0x0 firstFetchSizeInSeconds:arg5 fetchBufferMultiplier:arg6 unstallBufferMultiplier:stack[-72] enableMp4AssetSeekingFix:var_30];
    [r24 release];
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0xed format:@"%@ deallocing FNFAsset"];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadValuesAsynchronouslyForKeys:(void *)arg2 completionHandler:(void *)arg3 {
    r0 = [arg3 retain];
    r20 = *(int8_t *)(int64_t *)&self->_isAsync;
    r21 = self->_dispatchQueue;
    [r0 retain];
    sub_100b6dcd8(r20, r21, &var_50);
    [r0 release];
    [r19 release];
    return;
}

-(void *)initWithURL:(void *)arg2 moovAtomSize:(unsigned long long)arg3 moovAtomSizeForReattempt:(unsigned long long)arg4 bitrate:(unsigned long long)arg5 fetchBufferSizeInSeconds:(double)arg6 unstallBufferSizeInSeconds:(double)arg7 stallBufferSizeInSeconds:(double)arg8 firstFetchSizeInSeconds:(double)arg9 fetchBufferMultiplier:(double)arg10 unstallBufferMultiplier:(double)arg11 enableMp4AssetSeekingFix:(bool)arg12 enableMp4AssetEditListSeekingFix:(bool)arg13 enableMp4AssetRotationSupport:(bool)arg14 enableHEVCSupport:(bool)arg15 dispatchQueue:(void *)arg16 isAsync:(bool)arg17 {
    r31 = r31 - 0x140;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r24 = arg7;
    r27 = arg6;
    r22 = arg5;
    r26 = arg4;
    r25 = arg3;
    r20 = *(r29 + 0x18);
    r19 = [arg2 retain];
    r23 = [r20 retain];
    r0 = [[&var_A8 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            var_11C = r24;
            var_118 = r23;
            var_120 = *(int8_t *)(r29 + 0x11);
            *(int8_t *)(int64_t *)&r21->_shouldShowBroadcasterInterruptedMessage = 0x0;
            r21->_moovAtomSizeForDataLoader = r25;
            r21->_moovAtomSizeForReattempt = r26;
            objc_storeStrong((int64_t *)&r21->_dispatchQueue, r20);
            r23 = r27;
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_isAsync));
            *(int8_t *)(r21 + r27) = r24;
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0xb8 format:@"%@ created new asset with atomsize:%llu bitrate:%llu url:%@"];
            r0 = [FNFBufferSizeDecider alloc];
            r0 = [r0 initWithConfig:&var_110];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_bufferSizeDecider));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            r0 = [FNFMp4AtomManager alloc];
            r0 = [r0 initWithMoovAtomSize:r25 enableMp4AssetSeekingFix:r23 enableMp4AssetEditListSeekingFix:var_11C enableMp4AssetRotationSupport:r28 enableHEVCSupport:var_120];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_atomManager));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            r20 = [FNFMp4DataLoader alloc];
            r23 = [[*(r21 + r25) dataBlockDistributorForTrack:0x0] retain];
            r0 = [r20 initWithUrl:r19 bitrate:r22 dataBlockDistributor:r23 dispatchQueue:r21->_dispatchQueue async:*(int8_t *)(r21 + r27)];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_dataLoader));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            r0 = r23;
            r23 = var_118;
            [r0 release];
            r20 = [[r19 host] retain];
            [r21 setResourceHost:r20];
            [r20 release];
            [*(r21 + r25) setDelegate:r21];
            [*(r21 + r22) setDelegate:r21];
            [*(r21 + r24) setDelegate:r21];
    }
    [r23 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(struct CGSize)naturalSize {
    r0 = self;
    return r0;
}

-(struct CGAffineTransform)preferredTransform {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_atomManager;
    if (r0 != 0x0) {
            r0 = [r0 preferredTransform];
    }
    else {
            *(int128_t *)(r8 + 0x10) = q0;
            *(int128_t *)(r8 + 0x20) = q0;
            *(int128_t *)r8 = q0;
    }
    return r0;
}

-(void)updatePlaybackTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_bufferSizeDecider;
    [r0 setPlaybackTime:&var_40];
    sub_100a3e4dc(&var_60);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x112 format:@"%@ setting playback time to: %f"];
    [self _potentiallyStartRequest];
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
    r20 = arg3;
    r19 = self->_loadingError;
    r21 = [self->_atomManager parsedHeaders];
    r0 = [r19 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if (r20 != 0x0) {
                    *r20 = objc_retainAutorelease(r19);
            }
            r20 = 0x3;
    }
    else {
            if (r21 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = 0x2;
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)asyncLoadCurrentQualityWithHandler:(void *)arg2 onQueue:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = *(int8_t *)(int64_t *)&self->_isAsync;
    r19 = [arg3 retain];
    var_28 = r21;
    [r21 retain];
    sub_100b6dcd8(r20, r19, &var_48);
    [r19 release];
    [var_28 release];
    [r21 release];
    return;
}

-(void)asyncLoadAvailableQualitiesWithHandler:(void *)arg2 onQueue:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = *(int8_t *)(int64_t *)&self->_isAsync;
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
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_atomManager;
    if (r0 != 0x0) {
            r0 = [r0 duration];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
    }
    return r0;
}

-(void)requestTimeLoadedUpdate {
    sub_100b6dcd8(*(int8_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_isAsync))), self->_dispatchQueue, &var_28);
    return;
}

-(void)requestErrorNotificationIfNeeded {
    sub_100b6dcd8(*(int8_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_isAsync))), self->_dispatchQueue, &var_28);
    return;
}

-(bool)resetAssetToBeginningIfNeeded {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self->_atomManager shouldResetAssetToBeginning] != 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [r19 seekToPosition:&var_30];
    }
    return 0x0;
}

-(double)prepareToSeekWithPosition:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(bool)seekToPosition:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = self->_atomManager;
    q0 = *(int128_t *)r2;
    if (r0 != 0x0) {
            [r0 seekToPosition:&var_60];
            if (var_40 != 0x0) {
                    if (var_24 != 0x0) {
                            [r19 _seekDataLoaderToTime:&var_80 offset:var_20 shouldUpdateOffset:var_22 track:0x0];
                    }
                    if (var_23 != 0x0) {
                            r20 = 0x1;
                            [r19 _seekDataLoaderToTime:&var_A0 offset:var_18 shouldUpdateOffset:var_22 track:0x1];
                    }
                    else {
                            r20 = 0x1;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(struct FNFFrameMetadata)currentFrameMetadataForTrack:(long long)arg2 {
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_atomManager;
    if (r0 != 0x0) {
            r0 = [r0 currentFrameMetadataForTrack:r2];
    }
    else {
            *(int128_t *)(r8 + 0x40) = q0;
            *(int128_t *)(r8 + 0x50) = q0;
            *(int128_t *)(r8 + 0x20) = q0;
            *(int128_t *)(r8 + 0x30) = q0;
            *(int128_t *)r8 = q0;
            *(int128_t *)(r8 + 0x10) = q0;
    }
    return r0;
}

-(char *)currentFrameDataForTrack:(long long)arg2 {
    r0 = self->_atomManager;
    r0 = [r0 currentFrameDataForTrack:arg2];
    return r0;
}

-(void *)audioCodec {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self containsTrack:0x1] != 0x0) {
            r0 = r19->_atomManager;
            r0 = [r0 audioCodec];
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(bool)trackHasMoreFrames:(long long)arg2 {
    r0 = [self->_atomManager trackHasMoreFrames:arg2 isFullyDownloaded:[self->_dataLoader isFullyDownloaded:r2]];
    return r0;
}

-(bool)containsTrack:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            if (r2 == 0x1) {
                    r0 = r0->_atomManager;
                    r0 = [r0 containsAudio];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)advanceFrameForTrack:(long long)arg2 {
    [self->_atomManager advanceFrameForTrack:arg2];
    return;
}

-(bool)shouldPauseForStallingWithNextCheckCallback:(void *)arg2 stallReason:(int)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (([r21 _fullyDownloaded] & 0x1) == 0x0 && [r21->_bufferSizeDecider shouldStall] != 0x0) {
            r0 = objc_retainBlock(r19);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerCheckForStallCallback));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r22 = 0x1;
            *(int8_t *)(int64_t *)&r21->_isStalled = r22;
            *(int32_t *)(int64_t *)&r21->_pauseReason = r20;
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)stallingForTrack:(long long)arg2 {
    return 0x0;
}

-(bool)shouldRestartAfterStalling {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self _fullyDownloaded];
    r20 = r0;
    if ((r0 & 0x1) == 0x0 && [r19->_bufferSizeDecider shouldUnstallWithPauseReason:*(int32_t *)(int64_t *)&r19->_pauseReason] == 0x0) {
            [r19 _potentiallyStartRequest];
            r0 = 0x0;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerCheckForStallCallback));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_isStalled = 0x0;
            *(int32_t *)(int64_t *)&r19->_pauseReason = 0x0;
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x1a3 format:@"%@ unstalled: enough data loaded or or fullyDownloaded:%d"];
            r0 = 0x1;
    }
    return r0;
}

-(union ?)maxBufferTime {
    r0 = sub_100b59418(r8);
    return r0;
}

-(union ?)minBufferTime {
    r0 = sub_100b59478(r8);
    return r0;
}

-(void *)representationId {
    return 0x0;
}

-(void *)audioRepresentationId {
    return 0x0;
}

-(void *)mpdAccessibilityDescription {
    return 0x0;
}

-(bool)mpdContainsAttributeUsingASRCaptions {
    return 0x0;
}

-(void *)asset {
    r0 = self;
    return r0;
}

-(union ?)currentTime {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_bufferSizeDecider;
    if (r0 != 0x0) {
            r0 = [r0 playbackTime];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
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

-(union ?)timeAfterSeek {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_bufferSizeDecider;
    if (r0 != 0x0) {
            r0 = [r0 timeAfterSeek];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
    }
    return r0;
}

-(void)playbackPauseRequested:(int)arg2 {
    return;
}

-(void)playbackStarted {
    return;
}

-(void *)debugDetails {
    objc_retainAutorelease(@"progressive");
    return @"progressive";
}

-(void *)qualityLabel {
    return 0x0;
}

-(void)parsingDidFailWithError:(void *)arg2 {
    [self _handleError:arg2];
    return;
}

-(bool)isProtectedContent {
    return 0x0;
}

-(void)resetDataForSeekBack {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dataLoader));
    [*(self + r20) cancelRequests];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_atomManager));
    [*(self + r21) createNewDataBlockDistributors];
    r20 = *(self + r20);
    r21 = [[*(self + r21) dataBlockDistributorForTrack:0x0] retain];
    [r20 resetWithNewDataBlockDistributor:r21];
    [r21 release];
    [self->_bufferSizeDecider resetPlaybackTimeAndTimeLoaded];
    *(int8_t *)(int64_t *)&self->_isStalled = 0x0;
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x21d format:@"%@ unstalled: seek back"];
    return;
}

-(void)resetDataForSeekBackForTrack:(long long)arg2 {
    return;
}

-(void)reportWarning:(void *)arg2 {
    [self _handleWarning:arg2];
    return;
}

-(void)loadingDidFailWithError:(void *)arg2 {
    [self _handleError:arg2];
    return;
}

-(void)willChangeValue {
    r20 = [[NSString stringWithUTF8String:0x100cda874] retain];
    [self willChangeValueForKey:r20];
    [r20 release];
    return;
}

-(void)dataWasReceivedForTrack:(long long)arg2 andIsComplete:(bool)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_atomManager));
    r23 = [*(self + r24) parsedHeaders];
    [*(r19 + r24) parseAtomForTrack:arg2];
    if ((r23 & 0x1) != 0x0 || [*(r19 + r24) parsedHeaders] == 0x0) goto loc_100b58014;

loc_100b57fe0:
    *(int8_t *)(int64_t *)&r19->_assetLoaded = 0x1;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadedHandler));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r19 + r22);
    }
    *(r19 + r22) = 0x0;
    goto loc_100b58164;

loc_100b58164:
    [r0 release];
    goto loc_100b58168;

loc_100b58168:
    if ([*(r19 + r24) parsedHeaders] != 0x0) {
            [r19->_bufferSizeDecider timeLoadedInSeconds];
            if (s0 != 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isStalled));
                    r8 = *(int8_t *)(r19 + r8);
                    if (r8 != 0x0) {
                            [r19 _updateTimeLoaded];
                            r8 = 0x1;
                    }
            }
            else {
                    [r19 _updateTimeLoaded];
                    r8 = 0x1;
            }
            if (r20 != 0x0) {
                    if ((r8 & 0x1) == 0x0) {
                            [r19 _updateTimeLoaded];
                    }
                    [r19 _potentiallyStartRequest];
            }
    }
    else {
            r8 = 0x0;
            if (r20 != 0x0) {
                    if ((r8 & 0x1) == 0x0) {
                            [r19 _updateTimeLoaded];
                    }
                    [r19 _potentiallyStartRequest];
            }
    }
    return;

loc_100b58014:
    if (r20 == 0x0 || ([*(r19 + r24) parsedHeaders] & 0x1) != 0x0) goto loc_100b58168;

loc_100b58028:
    if (([*(r19 + r24) moovAtomSizeParsedFromFile] & 0x1) == 0x0) goto loc_100b580d0;

loc_100b5803c:
    r25 = [r19->_dataLoader currentReceiveOffsetForTrack:0x0] + [*(r19 + r24) moovAtomSize];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_moovAtomSizeForDataLoader));
    if (*(r19 + r26) >= r25) goto loc_100b58114;

loc_100b58088:
    r0 = *(r19 + r24);
    [r0 moovAtomSize];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x24a format:@"%@ moov atom size was just confirmed as %llu; another data request will be initiated"];
    *(r19 + r26) = r25;
    goto loc_100b58168;

loc_100b58114:
    r0 = [NSError errorWithDomain:@"FNFAssetLoadingError" code:0x23e userInfo:**___NSDictionary0__];
    goto loc_100b58144;

loc_100b58144:
    r22 = [r0 retain];
    [r19 _handleError:r22];
    r0 = r22;
    goto loc_100b58164;

loc_100b580d0:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_moovAtomSizeForDataLoader));
    if (*(r19 + r22) == 0x0) goto loc_100b58220;

loc_100b580e0:
    r0 = [NSError errorWithDomain:@"FNFAssetLoadingError" code:0x249 userInfo:**___NSDictionary0__];
    goto loc_100b58144;

loc_100b58220:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_moovAtomSizeForReattempt));
    r8 = *(r19 + r23);
    if (r8 == 0x0) goto loc_100b580e0;

loc_100b58230:
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x23d format:@"%@ _moovAtomSizeForDataLoader was updated from %llu to %llu, so to initiate another data request"];
    *(r19 + r22) = *(r19 + r23);
    goto loc_100b58168;
}

-(void)didChangeValue {
    r20 = [[NSString stringWithUTF8String:0x100cda874] retain];
    [self didChangeValueForKey:r20];
    [r20 release];
    r20 = objc_loadWeakRetained((int64_t *)&self->_eventListener);
    r19 = [[self loadedTimeRanges] retain];
    [r20 timeLoadedChanged:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)resourceLoader {
    r0 = self->_dataLoader;
    r0 = [r0 resourceLoader];
    return r0;
}

-(bool)_fullyDownloaded:(long long)arg2 {
    r2 = [self->_dataLoader currentReceiveOffsetForTrack:r2];
    r0 = self->_atomManager;
    r0 = [r0 offsetIsAtLeastLargestOffset:r2 track:arg2];
    return r0;
}

-(bool)_fullyDownloaded {
    r0 = self->_dataLoader;
    r0 = [r0 isFullyDownloaded:0x0];
    return r0;
}

-(void)_updateTimeLoaded {
    r31 = r31 - 0xe0;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_dataLoader));
    [*(self + r24) currentReceiveOffsetForTrack:0x0];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_atomManager));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            [r0 timeLoadedForOffset:r2 track:r3];
    }
    else {
            var_58 = 0x0;
            var_48 = 0x0;
    }
    r20 = [r19 _fullyDownloaded:0x0];
    if ([*(r19 + r25) containsAudio] != 0x0) {
            [*(r19 + r24) currentReceiveOffsetForTrack:0x1];
            r0 = *(r19 + r25);
            if (r0 != 0x0) {
                    [r0 timeLoadedForOffset:r2 track:r3];
            }
            else {
                    var_70 = 0x0;
                    var_60 = 0x0;
            }
            if (([r19->_bufferSizeDecider updateTimeLoadedWithLoadedVideoTime:&var_90 videoFullyDownloaded:r20 loadedAudioTime:&var_B0 audioFullyDownloaded:[r19 _fullyDownloaded:0x1]] & 0x1) != 0x0) {
                    r0 = r19->_playerCheckForStallCallback;
                    if (r0 != 0x0) {
                            (*(r0 + 0x10))();
                    }
            }
    }
    else {
            if ([r19->_bufferSizeDecider updateTimeLoadedWithLoadedVideoTime:&var_D0 videoFullyDownloaded:r20] != 0x0) {
                    r0 = r19->_playerCheckForStallCallback;
                    if (r0 != 0x0) {
                            (*(r0 + 0x10))();
                    }
            }
    }
    return;
}

-(void)_potentiallyStartRequest {
    [self _potentiallyStartRequestForTrack:0x0];
    return;
}

-(void)_potentiallyStartRequestForTrack:(long long)arg2 {
    r2 = arg2;
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
    if (*(int8_t *)(int64_t *)&self->_hasFailed != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x2ae format:@"%@ not attempting to download if failed too many times"];
    }
    else {
            r19 = r2;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_atomManager));
            if (([*(r20 + r21) parsedHeaderForTrack:r2] & 0x1) != 0x0) {
                    if (([r20 _fullyDownloaded] & 0x1) == 0x0) {
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_bufferSizeDecider));
                            if ([*(r20 + r23) shouldFetch] != 0x0) {
                                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_dataLoader));
                                    if (([*(r20 + r22) fetchInProgressForTrack:r19] & 0x1) == 0x0) {
                                            [*(r20 + r23) timeToLoadInSeconds];
                                            [*(r20 + r22) fetchToOffset:[*(r20 + r21) offsetForTimeInSeconds:r19 track:r3] forTrack:r19];
                                    }
                            }
                    }
            }
            else {
                    r21 = r20->_dataLoader;
                    [r20->_bufferSizeDecider firstFetchSizeInSeconds];
                    asm { fcvtzu     w2, d0 };
                    [r21 fetchFirstRequestForSeconds:r2 initializationAtomSize:r20->_moovAtomSizeForDataLoader track:r19];
            }
    }
    return;
}

-(void)_handleWarning:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x2c8 format:@"%@ adding warning: %@"];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_warningCount));
    r9 = *(int32_t *)(r20 + r8);
    *(int32_t *)(r20 + r8) = r9 + 0x1;
    if (r9 <= 0x8) {
            [r20 addErrorToLog:r19 shouldStopPlayback:0x0];
    }
    [r19 release];
    return;
}

-(void)_seekDataLoaderToTime:(union ?)arg2 offset:(unsigned long long)arg3 shouldUpdateOffset:(bool)arg4 track:(long long)arg5 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xf0;
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
    r20 = r5;
    r21 = r3;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_bufferSizeDecider));
    r0 = *(self + r23);
    if (r0 != 0x0) {
            [r0 addFetchBufferToTime:&var_70];
            r0 = *(r19 + r23);
    }
    else {
            var_58 = 0x0;
            var_48 = 0x0;
    }
    if ([r0 hasLoadedTime:&var_90] != 0x0) {
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x2f0 format:@"%@ seek to time already loaded so not fetching more data"];
            r24 = (int64_t *)&r19->_atomManager;
    }
    else {
            [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_dataLoader))) cancelRequests];
            r24 = (int64_t *)&r19->_atomManager;
            sub_100a3e4dc(&var_B0);
            asm { fcvt       s0, d0 };
            r22 = [r22 offsetForTimeInSeconds:0x0 track:r3];
            [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x2f9 format:@"%@ load offset:%llu - %llu"];
            [*(r19 + r25) seekForwardToOffset:r21 forTrack:r20];
            [*(r19 + r25) fetchToOffset:r22 forTrack:0x0];
    }
    r19 = *(r19 + r23);
    r0 = *r24;
    if (r0 != 0x0) {
            [r0 currentVideoPts];
    }
    [r19 setTimeAfterSeek:&var_C8];
    return;
}

-(void)_handleError:(void *)arg2 {
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
    r21 = arg2;
    r20 = self;
    r19 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4Asset.mm" lineNumber:0x2d3 format:@"%@ download failed with error: %@"];
    [r20 addErrorToLog:r19 shouldStopPlayback:0x1];
    objc_storeStrong((int64_t *)&r20->_error, r21);
    *(int8_t *)(int64_t *)&r20->_hasFailed = 0x1;
    if (([r20->_atomManager parsedHeaders] & 0x1) == 0x0) {
            r0 = [r19 domain];
            r29 = r29;
            r22 = [r0 retain];
            r23 = [@"FNFAssetLoadingError" isEqualToString:r2];
            [r22 release];
            if (r23 != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_loadingError, r21);
            }
            else {
                    r22 = [r19 code];
                    r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
                    r0 = [NSError errorWithDomain:@"FNFAssetNetworkError" code:r22 userInfo:r23];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadingError));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r23 release];
            }
            *(int8_t *)(int64_t *)&r20->_assetLoaded = 0x1;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadedHandler));
            r0 = *(r20 + r21);
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
                    r0 = *(r20 + r21);
            }
            *(r20 + r21) = 0x0;
            [r0 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)cancelLoading {
    return;
}

-(void *)tracksWithMediaType:(void *)arg2 {
    return 0x0;
}

-(void *)accessLog {
    return 0x0;
}

-(void)addOutput:(void *)arg2 {
    return;
}

-(bool)isPlaybackLikelyToKeepUp {
    return 0x1;
}

-(bool)isPlaybackBufferFull {
    return 0x0;
}

-(void *)audioMix {
    return 0x0;
}

-(void)setAudioMix:(void *)arg2 {
    return;
}

-(struct opaqueCMFormatDescription *)formatDesc {
    r0 = self->_atomManager;
    r0 = [r0 formatDesc];
    return r0;
}

-(struct AudioStreamBasicDescription)asbd {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_atomManager;
    if (r0 != 0x0) {
            r0 = [r0 asbd];
    }
    else {
            *(r8 + 0x20) = 0x0;
            *(int128_t *)r8 = q0;
            *(int128_t *)(r8 + 0x10) = q0;
    }
    return r0;
}

-(void *)audioStreamExtraParameters {
    r0 = self->_atomManager;
    r0 = [r0 audioStreamExtraParameters];
    return r0;
}

-(void *)audioChannelConfiguration {
    return 0x0;
}

-(void *)projection {
    return 0x0;
}

-(void *)loadedTimeRanges {
    r0 = self->_bufferSizeDecider;
    r0 = [r0 loadedTimeRanges];
    return r0;
}

-(unsigned long long)timescale {
    r0 = self->_atomManager;
    r0 = [r0 timescale];
    return r0;
}

-(void *)dataBlockDistributorForTrack:(long long)arg2 {
    r0 = self->_atomManager;
    r0 = [r0 dataBlockDistributorForTrack:arg2];
    return r0;
}

-(bool)decompressedFramebuffer {
    return 0x0;
}

-(bool)shouldBufferVideoAsSoonAsPossible {
    return 0x1;
}

-(unsigned long long)currentOffsetForTrack:(long long)arg2 {
    r0 = self->_atomManager;
    r0 = [r0 currentOffsetForTrack:arg2];
    return r0;
}

-(bool)isDurationFinal {
    return 0x1;
}

-(union ?)videoTrackDuration {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_atomManager;
    if (r0 != 0x0) {
            r0 = [r0 videoTrackDuration];
    }
    else {
            *(int128_t *)r8 = 0x0;
            *(int128_t *)(r8 + 0x8) = 0x0;
            *(r8 + 0x10) = 0x0;
    }
    return r0;
}

-(int)pauseReason {
    r0 = *(int32_t *)(int64_t *)&self->_pauseReason;
    return r0;
}

-(void)setAssetEventListener:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_eventListener, arg2);
    return;
}

-(void)setIsSoundMuted:(bool)arg2 {
    return;
}

-(void *)resourceHost {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_resourceHost)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resourceHost, 0x0);
    objc_destroyWeak((int64_t *)&self->_eventListener);
    objc_storeStrong((int64_t *)&self->_dispatchQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_loadingError, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_playerCheckForStallCallback, 0x0);
    objc_storeStrong((int64_t *)&self->_bufferSizeDecider, 0x0);
    objc_storeStrong((int64_t *)&self->_atomManager, 0x0);
    objc_storeStrong((int64_t *)&self->_dataLoader, 0x0);
    objc_storeStrong((int64_t *)&self->_assetLoadedHandler, 0x0);
    return;
}

-(void)setResourceHost:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

@end