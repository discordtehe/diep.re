@implementation FNFBufferSizeDecider

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)initWithConfig:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r9 = *0x1011dd130;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
            r11 = *(r9 + 0x10);
            *(int128_t *)(r20 + r10) = *(int128_t *)r9;
            *(0x10 + r20 + r10) = r11;
            r8 = *0x1011dd130;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timeAfterSeek));
            r10 = *(r8 + 0x10);
            *(int128_t *)(r20 + r9) = *(int128_t *)r8;
            *(0x10 + r20 + r9) = r10;
            r0 = [NSArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_firstFetchSizeInSeconds = *r19;
            r8 = *(r19 + 0x8);
            r20->_fetchBufferSizeInSeconds = r8;
            r20->_defaultFetchBufferSizeInSeconds = r8;
            r20->_fetchMultiplier = *(r19 + 0x10);
            r20->_unstallMultiplier = *(r19 + 0x60);
            r8 = *(r19 + 0x18);
            r20->_unstallBufferSizeInSeconds = r8;
            r20->_currentUnStallBufferSize = r8;
            r20->_stallBufferSizeInSeconds = *(r19 + 0x20);
            r20->_firstUnstallBufferSizeInSeconds = *(r19 + 0x28);
            *(int8_t *)(int64_t *)&r20->_dynamicUnstallBufferEnabled = *(int8_t *)(r19 + 0x30);
            r20->_unstallBufferSizeForExcellentNetwork = *(r19 + 0x38);
            r20->_unstallBufferSizeForGoodNetwork = *(r19 + 0x40);
            r20->_unstallBufferSizeForModerateNetwork = *(r19 + 0x48);
            r20->_unstallBufferSizeForPoorNetwork = *(r19 + 0x50);
            r20->_unstallBufferSizeForUnknownNetwork = *(r19 + 0x58);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_furthestTimeLoadedInSeconds));
            *(int128_t *)(r20 + r8) = 0x0;
            *(int128_t *)(0x8 + r20 + r8) = 0x0;
    }
    r0 = r20;
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

-(union ?)timeLoaded {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = r8;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
    r0 = *(self + r21);
    r0 = [r0 count];
    if (r0 != 0x0) {
            r0 = *(r20 + r21);
            r0 = [r0 lastObject];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 CMTimeRangeValue];
            }
            *(r19 + 0x10) = var_28;
            *(int128_t *)r19 = var_38;
            r0 = [r20 release];
    }
    else {
            if (*qword_1011dd128 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(float)timeLoadedInSeconds {
    r31 = r31 - 0x80;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
    r0 = *(self + r20);
    r0 = [r0 count];
    if (r0 != 0x0) {
            r0 = *(r19 + r20);
            r0 = [r0 lastObject];
            r0 = [r0 retain];
            r19 = r0;
            if (r0 != 0x0) {
                    [r19 CMTimeRangeValue];
            }
            sub_100a3e4dc(&var_40);
            asm { fcvt       s8, d0 };
            r0 = [r19 release];
    }
    return r0;
}

-(float)timeLoadedInSecondsForTrack:(long long)arg2 {
    r0 = self;
    asm { fcvt       s0, d0 };
    return r0;
}

-(void)requestTimeLoadedUpdate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 willChangeValue];
    [r0 didChangeValue];
    [r0 release];
    return;
}

-(bool)updateTimeLoadedWithLoadedVideoTime:(union ?)arg2 videoFullyDownloaded:(bool)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ((*(int8_t *)(r2 + 0xc) & 0x1) == 0x0) {
            r0 = 0x0;
    }
    else {
            sub_100a3e4dc(&var_40);
            r20->_furthestTimeLoadedInSeconds = d0;
            r0 = [r20 _updateTimeLoaded:&var_60 fullyLoaded:r3];
    }
    return r0;
}

-(double)calUnstallBufferBasedOnConnection {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_bandwidthProvider;
    r0 = [r0 downloadBandwidthQuality];
    if (r0 > 0x1) {
            if (r0 != 0x2) {
                    if (r0 != 0x4) {
                            if (r0 == 0x3) {
                                    r8 = 0x101174854;
                            }
                            else {
                                    r8 = 0x101174860;
                            }
                    }
                    else {
                            r8 = 0x101174850;
                    }
            }
            else {
                    r8 = 0x101174858;
            }
    }
    else {
            if (r0 != 0x0 && r0 == 0x1) {
                    r8 = 0x10117485c;
            }
            else {
                    r8 = 0x101174860;
            }
    }
    return r0;
}

-(bool)updateTimeLoadedWithLoadedAudioTime:(union ?)arg2 audioFullyDownloaded:(bool)arg3 {
    r3 = arg3;
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
    r29 = &saved_fp;
    r19 = self;
    if ((*(int8_t *)(r2 + 0xc) & 0x1) == 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r0 = r19;
    }
    else {
            r20 = r3;
            r21 = r2;
            r25 = (int64_t *)&r19->_furthestTimeLoadedInSeconds;
            d9 = *(r25 + 0x8);
            sub_100a3e4dc(r29 - 0x80);
            *(r25 + 0x8) = d0;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
            if ([*(r19 + r26) count] != 0x0) {
                    q0 = *(int128_t *)r21;
                    r0 = *(r19 + r26);
                    r0 = [r0 lastObject];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            [r22 CMTimeRangeValue];
                    }
                    else {
                            v0 = 0x0;
                    }
                    q0 = var_F8;
                    r0 = CMTimeCompare(r29 - 0xc0, &var_E0);
                    [r22 release];
                    if ((r0 & 0xffffffff80000000) != 0x0) {
                            r0 = *(r19 + r26);
                            r0 = [r0 lastObject];
                            r0 = [r0 retain];
                            r23 = r0;
                            if (r0 != 0x0) {
                                    [r23 CMTimeRangeValue];
                            }
                            else {
                                    v0 = 0x0;
                            }
                            sub_100a3e4dc(&var_130);
                            sub_100a3e4dc(&var_150);
                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0x9c format:@"%@ Time loaded dropping from:%.02fs to:%.02fs. Audio:%.02fs->%.02fs.Descripti on:%@"];
                            [r23 release];
                    }
            }
            r0 = r19;
    }
    r0 = [r0 _updateTimeLoaded:r2 fullyLoaded:r3];
    return r0;
}

-(bool)shouldUnstallWithPauseReason:(int)arg2 {
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self timeLoadedInSeconds];
    asm { fcvt       d8, s0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
    r8 = r20 + r8;
    r9 = &stack[-96];
    r10 = &stack[-72];
    if (r19 == 0x4) {
            if (!CPU_FLAGS & E) {
                    r0 = r9;
            }
            else {
                    r0 = r10;
            }
    }
    r10 = *(r8 + 0x10);
    q0 = *(int128_t *)r8;
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r19 = 0x101174848;
            }
            else {
                    r19 = 0x101174844;
            }
    }
    *(int128_t *)r0 = q0;
    *(r0 + 0x10) = r10;
    r0 = sub_100a3e4dc(r0);
    if (d8 - d0 > *(r20 + sign_extend_64(*(int32_t *)r19))) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)shouldFetch {
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self timeLoadedInSeconds];
    r0 = sub_100a3e4dc(&var_40);
    asm { fcvt       s1, d0 };
    asm { fcvt       d0, s0 };
    if (r19->_fetchBufferSizeInSeconds * 0x3fe0000000000000 < d0) {
            r0 = 0x0;
    }
    else {
            if (s1 > 0x0) {
                    r0 = 0x1;
            }
            else {
                    if (r19->_firstFetchSizeInSeconds > d0) {
                            if (CPU_FLAGS & G) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(bool)shouldStall {
    r31 = r31 - 0xf0;
    var_60 = d11;
    stack[-104] = d10;
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
    r19 = self;
    [self timeLoadedInSeconds];
    r24 = (int64_t *)&r19->_playbackTime;
    sub_100a3e4dc(&var_80);
    asm { fcvt       s11, d0 };
    r0 = @class(FBAdLogger);
    asm { fcvt       d9, s8 };
    asm { fcvt       d10, s11 };
    [r0 logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0xf8 format:@"%@ timeloaded: %f playbacktime: %f"];
    asm { fcvt       d0, s0 };
    if (r19->_stallBufferSizeInSeconds >= d0) goto loc_100b55188;

loc_100b55180:
    r0 = 0x0;
    return r0;

loc_100b55188:
    if (*(int8_t *)(int64_t *)&r19->_dynamicUnstallBufferEnabled == 0x0) goto loc_100b552a8;

loc_100b5519c:
    [r19 calUnstallBufferBasedOnConnection];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_currentUnStallBufferSize));
    if (*(r19 + r24) != d0) {
            *(r19 + r24) = d0;
            d0 = d0 + d0;
            if (d0 > r19->_defaultFetchBufferSizeInSeconds) {
                    asm { fcsel      d0, d0, d1, gt };
            }
            r19->_fetchBufferSizeInSeconds = d0;
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_bandwidthProvider));
    [*(r19 + r25) downloadBandwidthEstimateBitsPerSecond];
    [*(r19 + r25) downloadLatencyInSecond];
    goto loc_100b55240;

loc_100b55240:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    goto loc_100b55244;

loc_100b55244:
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0x115 format:@"%@ stalled: %f-%f<=%f"];
    r0 = 0x1;
    return r0;

loc_100b552a8:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_unstallMultiplier));
    if (*(r19 + r21) > 0x3ff0000000000000 || r19->_fetchMultiplier > 0x3ff0000000000000) goto loc_100b552d4;
    goto loc_100b55244;

loc_100b552d4:
    r0 = CMTimeCompare(&var_A0, &var_C0);
    if (r0 < 0x1) goto loc_100b55244;

loc_100b55314:
    d0 = r19->_fetchMultiplier;
    if (d0 > 0x3ff0000000000000) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_fetchBufferSizeInSeconds));
            d0 = d0 * *(r19 + r8);
            if (d0 < 0x404e000000000000) {
                    *(r19 + r8) = d0;
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0x108 format:@"%@ updating fetch buffer to %f"];
            }
    }
    d0 = *(r19 + r21);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentUnStallBufferSize));
    if (d0 > 0x3ff0000000000000) {
            d0 = d0 * *(r19 + r21);
            if (d0 < 0x404e000000000000) {
                    *(r19 + r21) = d0;
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0x10c format:@"%@ updating unstall buffer to %f"];
            }
    }
    d0 = *(r19 + r21);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fetchBufferSizeInSeconds));
    if (d0 <= *(r19 + r8) * 0x3fe0000000000000) goto loc_100b55244;

loc_100b553f0:
    *(r19 + r8) = d0 + d0;
    goto loc_100b55240;
}

-(float)timeToLoadInSeconds {
    sub_100a3e4dc(&var_40);
    asm { fcvt       s0, d0 };
    asm { fcvt       d9, s0 };
    d0 = r19->_fetchBufferSizeInSeconds;
    asm { fcvt       s8, d0 };
    r20 = @class(FBAdLogger);
    [r19 timeLoadedInSeconds];
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s8 };
    r0 = [r20 logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0x13b format:@"%@ playback time:%f current load time:%f, target loaded time:%f"];
    return r0;
}

-(bool)shouldFetchForTrack:(long long)arg2 {
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    d0 = *((int64_t *)&r0->_furthestTimeLoadedInSeconds + arg2 * 0x8);
    asm { fcvt       s8, d0 };
    r0 = sub_100a3e4dc(&var_40);
    asm { fcvt       s1, d0 };
    asm { fcvt       d0, s0 };
    if (r19->_fetchBufferSizeInSeconds * 0x3fe0000000000000 < d0) {
            r0 = 0x0;
    }
    else {
            if (s1 > 0x0) {
                    r0 = 0x1;
            }
            else {
                    if (r19->_firstFetchSizeInSeconds > d0) {
                            if (CPU_FLAGS & G) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(bool)updateTimeLoadedWithLoadedVideoTime:(union ?)arg2 videoFullyDownloaded:(bool)arg3 loadedAudioTime:(union ?)arg4 audioFullyDownloaded:(bool)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
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
    r31 = r31 + 0xffffffffffffff80 - 0x250;
    r20 = r5;
    r23 = r4;
    r21 = r3;
    r22 = r2;
    r19 = self;
    r26 = (int64_t *)&self->_furthestTimeLoadedInSeconds;
    d10 = *(int128_t *)r26;
    d9 = *(int128_t *)(r26 + 0x8);
    if ((*(int8_t *)(r2 + 0xc) & 0x1) == 0x0) {
            r24 = 0x0;
    }
    else {
            sub_100a3e4dc(r29 - 0x90);
            *r26 = d0;
            r24 = 0x1;
    }
    if ((*(int8_t *)(r23 + 0xc) & 0x1) != 0x0) goto loc_100b54cc0;

loc_100b54cb0:
    r8 = 0x0;
    if (r24 != 0x0) goto loc_100b54ce4;

loc_100b54cb8:
    r19 = 0x0;
    goto loc_100b54fd8;

loc_100b54fd8:
    r0 = r19;
    return r0;

loc_100b54ce4:
    if ((r8 & 0x1) == 0x0) goto loc_100b54d44;

loc_100b54ce8:
    q0 = *(int128_t *)r22;
    var_E0 = *(r22 + 0x10);
    var_F0 = q0;
    r22 = r21 ^ 0x1;
    if ((r22 & 0x1) != 0x0 || r20 == 0x0) goto loc_100b54d8c;

loc_100b54d04:
    r0 = CMTimeCompare(&var_110, &var_130);
    if (r0 <= 0x0) goto loc_100b54d8c;

loc_100b54d38:
    r22 = @"both fully loaded";
    goto loc_100b54e1c;

loc_100b54e1c:
    q0 = *(int128_t *)r23;
    var_E0 = *(r23 + 0x10);
    var_F0 = q0;
    goto loc_100b54e2c;

loc_100b54e2c:
    [r22 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
    if ([*(r19 + r27) count] != 0x0) {
            q0 = var_F0;
            r0 = *(r19 + r27);
            r0 = [r0 lastObject];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    [r23 CMTimeRangeValue];
            }
            else {
                    v0 = 0x0;
            }
            q0 = var_208;
            r0 = CMTimeCompare(&var_1D0, &var_1F0);
            [r23 release];
            if ((r0 & 0xffffffff80000000) != 0x0) {
                    r0 = *(r19 + r27);
                    r0 = [r0 lastObject];
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            [r24 CMTimeRangeValue];
                    }
                    else {
                            v0 = 0x0;
                    }
                    sub_100a3e4dc(&var_240);
                    sub_100a3e4dc(&var_260);
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFBufferSizeDecider.mm" lineNumber:0xd8 format:@"%@ Time loaded dropping from:%.02fs to:%.02fs. Audio:%.02fs->%.02fs. Video:%.02fs->%.02fs. Description:%@"];
                    [r24 release];
            }
    }
    r19 = [r19 _updateTimeLoaded:&var_280 fullyLoaded:r21 & r20];
    [r22 release];
    goto loc_100b54fd8;

loc_100b54d8c:
    if ((r22 | r20) == 0x1) goto loc_100b54dd8;

loc_100b54d98:
    r0 = CMTimeCompare(&var_150, &var_170);
    if (r0 <= 0x0) goto loc_100b54dd8;

loc_100b54dcc:
    r22 = @"video track shorter";
    goto loc_100b54e1c;

loc_100b54dd8:
    r0 = CMTimeCompare(&var_190, &var_1B0);
    r22 = @"default to use video";
    if ((r0 & 0xffffffff80000000) == 0x0) goto loc_100b54e2c;

loc_100b54e10:
    r22 = @"default to use video";
    if ((r20 & 0x1) != 0x0) goto loc_100b54e2c;

loc_100b54e14:
    r22 = @"less audio loaded";
    goto loc_100b54e1c;

loc_100b54d44:
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r19 = [r19 _updateTimeLoaded:r29 - 0xd0 fullyLoaded:0x0];
    goto loc_100b54fd8;

loc_100b54cc0:
    sub_100a3e4dc(r29 - 0xb0);
    *(r26 + 0x8) = d0;
    r8 = 0x1;
    if (r24 == 0x0) goto loc_100b54cb8;
}

-(void)resetPlaybackTimeAndTimeLoaded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
    r10 = *(r8 + 0x10);
    *(int128_t *)(r19 + r9) = *(int128_t *)r8;
    *(0x10 + r19 + r9) = r10;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    [r0 willChangeValue];
    r0 = [NSArray new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_furthestTimeLoadedInSeconds));
    *(int128_t *)(r19 + r8) = 0x0;
    *(int128_t *)(0x8 + r19 + r8) = 0x0;
    [r20 didChangeValue];
    [r20 release];
    return;
}

-(union ?)addFetchBufferToTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    asm { fcvtzs     x20, d0 };
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r20, 0x1);
    r0 = sub_100a3e6cc(r19, &var_30, &stack[-88]);
    return r0;
}

-(double)currentFetchBuffer {
    r0 = self;
    return r0;
}

-(double)currentUnstallBuffer {
    r0 = self;
    return r0;
}

-(bool)_updateTimeLoaded:(union ?)arg2 fullyLoaded:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x110;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r3;
    r21 = r2;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    sub_100a3e7dc(r29 - 0x70, &var_90, &var_B0);
    r0 = [NSValue valueWithCMTimeRange:&var_E0];
    r21 = [r0 retain];
    r0 = [NSArray arrayWithObjects:r29 - 0x40 count:0x1];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r21 release];
    [r19 timeLoadedInSeconds];
    sub_100a3e4dc(&var_100);
    asm { fcvt       s0, d0 };
    asm { fcvt       d0, s0 };
    if (r19->_currentUnStallBufferSize < d0 || r20 != 0x0) {
            [r19 requestTimeLoadedUpdate];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)hasLoadedTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r20 = r2;
    var_160 = q0;
    r0 = self->_loadedTimeRanges;
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100b559f0;

loc_100b558e0:
    r22 = r0;
    r28 = *var_160;
    goto loc_100b558f8;

loc_100b558f8:
    r25 = 0x0;
    goto loc_100b55900;

loc_100b55900:
    if (*var_160 != r28) {
            objc_enumerationMutation(r19);
    }
    r0 = *(var_168 + r25 * 0x8);
    if (r0 != 0x0) {
            [r0 CMTimeRangeValue];
    }
    else {
            var_190 = q0;
            var_180 = q0;
            var_1A0 = q0;
    }
    var_1D0 = var_1A0;
    stack[-464] = var_190;
    var_1B0 = var_180;
    q0 = *(int128_t *)r20;
    var_1E0 = *(r20 + 0x10);
    var_1F0 = q0;
    if (*0x1011dd2b8 != -0x1) {
            dispatch_once_f(0x1011dd2b8, 0x1011c6418, 0x100a3d91c);
    }
    q0 = var_1F0;
    r0 = (*0x1011dd2c0)(&var_110, &var_130);
    if (r0 != 0x0) goto loc_100b559f8;

loc_100b559a0:
    r25 = r25 + 0x1;
    if (r25 < r22) goto loc_100b55900;

loc_100b559d0:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100b558f8;

loc_100b559f0:
    r20 = 0x0;
    goto loc_100b559fc;

loc_100b559fc:
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b559f8:
    r20 = 0x1;
    goto loc_100b559fc;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bandwidthProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_loadedTimeRanges, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)loadedTimeRanges {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loadedTimeRanges)), 0x0);
    return r0;
}

-(union ?)playbackTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setPlaybackTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playbackTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(union ?)timeAfterSeek {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_timeAfterSeek));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setTimeAfterSeek:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timeAfterSeek));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(double)firstFetchSizeInSeconds {
    r0 = self;
    return r0;
}

-(void *)bandwidthProvider {
    r0 = self->_bandwidthProvider;
    return r0;
}

-(void)setBandwidthProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bandwidthProvider, arg2);
    return;
}

@end