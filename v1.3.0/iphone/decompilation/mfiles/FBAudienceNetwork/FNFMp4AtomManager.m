@implementation FNFMp4AtomManager

-(void *)initWithMoovAtomSize:(unsigned long long)arg2 enableMp4AssetSeekingFix:(bool)arg3 enableMp4AssetEditListSeekingFix:(bool)arg4 enableMp4AssetRotationSupport:(bool)arg5 enableHEVCSupport:(bool)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg6;
    r21 = arg5;
    r22 = arg4;
    r23 = arg3;
    r24 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_moovAtomSize = r24;
            *(int8_t *)(int64_t *)&r19->_moovAtomSizeParsedFromFile = 0x0;
            *(int8_t *)(int64_t *)&r19->_enableMp4AssetSeekingFix = r23;
            *(int8_t *)(int64_t *)&r19->_enableMp4AssetEditListSeekingFix = r22;
            *(int8_t *)(int64_t *)&r19->_enableMp4AssetRotationSupport = r21;
            *(int8_t *)(int64_t *)&r19->_enableHEVCSupport = r20;
            r0 = operator new();
            *r0 = 0x100eb0448;
            *(r0 + 0x38) = 0x0;
            *(int32_t *)(r0 + 0x40) = 0x0;
            *(int32_t *)(r0 + 0xa8) = 0x0;
            *(int128_t *)(r0 + 0xb0) = 0x0;
            *(int128_t *)(r0 + 0xb8) = 0x0;
            *(int128_t *)(r0 + 0xc0) = 0xffffffffffffffff;
            *(int128_t *)(r0 + 0xc8) = 0xffffffffffffffff;
            *(int128_t *)(r0 + 0xd0) = q0;
            *(int128_t *)(r0 + 0xe0) = q0;
            *(int128_t *)(r0 + 0xf0) = q0;
            r19->_frames = r0;
            r0 = operator new();
            *r0 = 0x100eb0448;
            *(r0 + 0x38) = 0x0;
            *(int32_t *)(r0 + 0x40) = 0x0;
            *(int32_t *)(r0 + 0xa8) = 0x0;
            *(int128_t *)(r0 + 0xb0) = 0x0;
            *(int128_t *)(r0 + 0xb8) = 0x0;
            *(int128_t *)(r0 + 0xc0) = 0xffffffffffffffff;
            *(int128_t *)(r0 + 0xc8) = 0xffffffffffffffff;
            *(int128_t *)(r0 + 0xd0) = q0;
            *(int128_t *)(r0 + 0xe0) = q0;
            *(int128_t *)(r0 + 0xf0) = q0;
            *((int64_t *)&r19->_frames + 0x8) = r0;
            [r19 createNewDataBlockDistributors];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_formatDesc;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    r20 = (int64_t *)&r19->_frames;
    r0 = *r20;
    if (r0 != 0x0) {
            (*(*r0 + 0x8))();
    }
    r0 = *(r20 + 0x8);
    if (r0 != 0x0) {
            (*(*r0 + 0x8))();
    }
    [[&var_20 super] dealloc];
    return;
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

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)dataBlockDistributorForTrack:(long long)arg2 {
    r0 = self->_dataBlockDistributor;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)createNewDataBlockDistributors {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FNFDataBlockDistributor new];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_dataBlockDistributor));
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    [*(r19 + r21) addHeadType:0x1 withOffset:0x0];
    r0 = *((int64_t *)&r19->_frames + 0x8);
    if ((*(*r0 + 0x40))(r0) != 0x0) {
            [*(r19 + r21) addHeadType:0x2 withOffset:0x0];
    }
    return;
}

-(bool)shouldResetAssetToBeginning {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_frames;
    r0 = *r19;
    if ((*(*r0 + 0x38))(r0, _cmd) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = *(r19 + 0x8);
            r0 = (*(*r0 + 0x38))(r0);
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(struct FNFFrameMetadata)currentFrameMetadataForTrack:(long long)arg2 {
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
    r20 = arg2;
    r21 = self;
    r19 = r8;
    r0 = [self trackHasMoreFrames:r2 isFullyDownloaded:0x0];
    if ((r0 & 0x1) != 0x0) {
            r0 = *((int64_t *)&r21->_frames + r20 * 0x8);
            (*(*r0 + 0x30))(r0);
            *(int32_t *)r19 = var_68;
            r22 = r19 + 0x4;
            r23 = var_60;
            r24 = (int64_t *)&r21->_timescale;
            r21 = *(int32_t *)(r24 + r20 * 0x4);
            if (*0x1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            (*0x1011dd1e0)(r23, r21);
            r21 = r19 + 0x1c;
            r22 = var_58;
            r23 = *(int32_t *)(r24 + r20 * 0x4);
            if (*0x1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            (*0x1011dd1e0)(r22, r23);
            *(r19 + 0x38) = 0x0;
            r21 = r19 + 0x40;
            r22 = var_64;
            r20 = *(int32_t *)(r24 + r20 * 0x4);
            if (*0x1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            r0 = (*0x1011dd1e0)(r22, r20);
            *(int32_t *)(r19 + 0x58) = 0x0;
    }
    else {
            *(int128_t *)(r19 + 0x40) = q0;
            *(int128_t *)(r19 + 0x50) = q0;
            *(int128_t *)(r19 + 0x20) = q0;
            *(int128_t *)(r19 + 0x30) = q0;
            *(int128_t *)r19 = q0;
            *(int128_t *)(r19 + 0x10) = q0;
    }
    return r0;
}

-(bool)containsAudio {
    r0 = (*(int32_t *)((int64_t *)&self->_trackId + 0x4) ^ 0xffffffff) >> 0x1f;
    return r0;
}

-(char *)currentFrameDataForTrack:(long long)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self trackHasMoreFrames:r2 isFullyDownloaded:0x0] != 0x0) {
            r22 = (int64_t *)&r19->_frames;
            r0 = *(r22 + r20 * 0x8);
            (*(*r0 + 0x30))(r0);
            if (var_48 != 0x0) {
                    if (r20 != 0x0) {
                            asm { cinc       x21, x8, ne };
                    }
                    r0 = *(r22 + r20 * 0x8);
                    (*(*r0 + 0x30))(r0);
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dataBlockDistributor));
                    [*(r19 + r20) moveHeadTo:var_50 withHeadType:r21];
                    r0 = *(r19 + r20);
                    r0 = [r0 bytesAtHead:var_48 withHeadType:r21];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)trackHasMoreFrames:(long long)arg2 isFullyDownloaded:(bool)arg3 {
    r0 = *((int64_t *)&self->_frames + arg2 * 0x8);
    r0 = (*(*r0 + 0x48))(r0, _cmd, arg2, arg3);
    r0 = r0 ^ 0x1;
    return r0;
}

-(void *)audioCodec {
    r0 = self->_audioCodec;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(struct FNFSeekStatus)seekToPosition:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x140;
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
    r21 = self;
    r19 = r8;
    if (*(int8_t *)(int64_t *)&self->_parsedHeader != 0x0) {
            var_120 = r2;
            var_118 = r19;
            sub_100a3e4dc(r29 - 0x80);
            asm { fcvt       s8, d0 };
            r0 = @class(FBAdLogger);
            asm { fcvt       d0, s8 };
            [r0 logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4AtomManager.mm" lineNumber:0x14b format:@"%@ seek to req time:%f"];
            r24 = (int64_t *)&r21->_moovAtom;
            r19 = (int64_t *)&r21->_timescale;
            asm { ucvtf      s0, s0 };
            asm { fcvtzu     x23, s0 };
            r0 = [r21 _trackIdForTrackType:0x0];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_enableMp4AssetEditListSeekingFix));
            r23 = sub_100b611f0(r24, r23, r0, 0x1, *(int8_t *)(r21 + r20));
            r28 = (int64_t *)&r21->_frames;
            r0 = *r28;
            (*(*r0 + 0x68))(r0, r23);
            r26 = var_98;
            r27 = *(int32_t *)r19;
            if (*qword_1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            (*0x1011dd1e0)(r26, r27);
            sub_100a3e4dc(&stack[-216]);
            asm { fcvt       s8, d0 };
            r0 = *(r28 + 0x8);
            if ((*(*r0 + 0x40))(r0) != 0x0) {
                    r25 = @selector(_trackIdForTrackType:);
                    asm { ucvtf      s0, s0 };
                    asm { fcvtzu     x26, s0 };
                    r24 = sub_100b611f0(r24, r26, objc_msgSend(r21, r25), 0x0, *(int8_t *)(r21 + r20));
            }
            else {
                    r24 = 0x0;
            }
            r22 = @selector(logAtLevel:file:lineNumber:format:);
            r0 = @class(FBAdLogger);
            asm { fcvt       d0, s8 };
            objc_msgSend(r0, r22);
            r0 = *r28;
            if (r23 >= zero_extend_64((*(*r0 + 0x38))(r0))) {
                    r0 = *(r28 + 0x8);
                    if (r24 < zero_extend_64((*(*r0 + 0x38))(r0))) {
                            [r21 _resetDataForSeekBack];
                            r0 = [r21 seekToPosition:&var_E0];
                    }
                    else {
                            r0 = *r28;
                            (*(*r0 + 0x28))(r0, r23);
                            r0 = *(r28 + 0x8);
                            (*(*r0 + 0x28))(r0, r24);
                            r0 = *r28;
                            r21 = (*(*r0 + 0x50))(r0);
                            r0 = *r28;
                            if (((*(*r0 + 0x48))(r0) & 0x1) == 0x0) {
                                    r0 = *r28;
                                    (*(*r0 + 0x30))(r0);
                                    r21 = var_110;
                            }
                            r0 = *(r28 + 0x8);
                            r0 = (*(*r0 + 0x40))(r0);
                            if (r0 != 0x0) {
                                    r0 = *(r28 + 0x8);
                                    r22 = (*(*r0 + 0x50))(r0);
                                    r0 = *(r28 + 0x8);
                                    r0 = (*(*r0 + 0x48))(r0);
                                    if ((r0 & 0x1) == 0x0) {
                                            r0 = *(r28 + 0x8);
                                            r0 = (*(*r0 + 0x30))(r0);
                                            r22 = var_110;
                                    }
                                    r9 = var_120;
                                    r10 = var_118;
                                    if (r22 < r21) {
                                            if (!CPU_FLAGS & B) {
                                                    r21 = r21;
                                            }
                                            else {
                                                    r21 = r22;
                                            }
                                    }
                            }
                            else {
                                    r9 = var_120;
                                    r10 = var_118;
                            }
                            *(int8_t *)r10 = 0x1;
                            q0 = *(int128_t *)r9;
                            *(r10 + 0x14) = *(r9 + 0x10);
                            *(int128_t *)(r10 + 0x4) = q0;
                            *(int16_t *)(r10 + 0x1c) = 0x1;
                            *(int8_t *)(r10 + 0x1e) = 0x0;
                            *(int128_t *)(r10 + 0x20) = r21;
                            *(int128_t *)(r10 + 0x28) = 0x0;
                    }
            }
            else {
                    [r21 _resetDataForSeekBack];
                    r0 = [r21 seekToPosition:&var_E0];
            }
    }
    else {
            r0 = [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4AtomManager.mm" lineNumber:0x146 format:@"%@ seek is not supported if the asset is unloaded"];
            *(int128_t *)(r19 + 0x10) = q0;
            *(int128_t *)(r19 + 0x20) = q0;
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(void)advanceFrameForTrack:(long long)arg2 {
    r0 = *((int64_t *)&self->_frames + arg2 * 0x8);
    r1 = *(*r0 + 0x20);
    (r1)(r0, r1, arg2);
    return;
}

-(bool)offsetIsAtLeastLargestOffset:(unsigned long long)arg2 track:(long long)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *((int64_t *)&self->_frames + arg3 * 0x8);
    r0 = (*(*r0 + 0x50))(r0, _cmd, arg2, arg3);
    if (r0 < arg2) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(unsigned long long)offsetForTimeInSeconds:(float)arg2 track:(long long)arg3 {
    r0 = self;
    r31 = r31 - 0xc0;
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
    r19 = r0;
    r20 = (int64_t *)&r0->_moovAtom;
    r23 = (int64_t *)&r0->_timescale;
    asm { ucvtf      s0, s0 };
    asm { fcvtzu     x21, s0 };
    r0 = [r0 _trackIdForTrackType:0x0];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_enableMp4AssetEditListSeekingFix));
    r1 = sub_100b611f0(r20, r21, r0, 0x0, *(int8_t *)(r19 + r24));
    r25 = (int64_t *)&r19->_frames;
    r0 = *r25;
    (*(*r0 + 0x68))(r0, r1);
    r21 = var_80 + var_78;
    r0 = *(r25 + 0x8);
    if ((*(*r0 + 0x40))(r0) != 0x0) {
            r22 = @selector(_trackIdForTrackType:);
            asm { ucvtf      s0, s0 };
            asm { fcvtzu     x23, s0 };
            r1 = sub_100b611f0(r20, r23, objc_msgSend(r19, r22), 0x0, *(int8_t *)(r19 + r24));
            r0 = *(r25 + 0x8);
            (*(*r0 + 0x68))(r0, r1);
            r8 = var_B0 + var_A8;
            if (r8 > r21) {
                    if (!CPU_FLAGS & A) {
                            r21 = r21;
                    }
                    else {
                            r21 = r8;
                    }
            }
    }
    r0 = r21;
    return r0;
}

-(union ?)timeLoadedForOffset:(unsigned long long)arg2 track:(long long)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r21 = self;
    r19 = r8;
    r23 = (int64_t *)&self->_frames;
    r0 = *(r23 + arg3 * 0x8);
    r0 = (*(*r0 + 0x40))(r0, _cmd, arg2, arg3);
    if (r0 != 0x0) {
            r0 = *(r23 + r20 * 0x8);
            r0 = (*(*r0 + 0x58))(r0);
            if (var_60 >= r22) {
                    if (*qword_1011dd158 != -0x1) {
                            r0 = dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
                    }
                    r8 = *qword_1011dd160;
                    q0 = *(int128_t *)r8;
                    *(r19 + 0x10) = *(r8 + 0x10);
                    *(int128_t *)r19 = q0;
            }
            else {
                    r0 = *(r23 + r20 * 0x8);
                    (*(*r0 + 0x70))(r0, r22);
                    r22 = var_50;
                    r20 = *(int32_t *)((int64_t *)&r21->_timescale + r20 * 0x4);
                    if (*qword_1011dd1d8 != -0x1) {
                            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
                    }
                    r0 = (*0x1011dd1e0)(r22, r20);
            }
    }
    else {
            if (*qword_1011dd158 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
            }
            r8 = *qword_1011dd160;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(union ?)currentVideoPts {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_frames));
    r0 = *(self + r21);
    if ((*(*r0 + 0x40))(r0, _cmd) != 0x0) {
            r0 = *(r20 + r21);
            if ((*(*r0 + 0x48))(r0) != 0x0) {
                    r0 = *(r20 + r21);
                    r9 = *(*r0 + 0x60);
            }
            else {
                    r0 = *(r20 + r21);
                    r9 = *(*r0 + 0x30);
            }
            (r9)(r0);
            r21 = var_38;
    }
    else {
            r21 = 0x0;
    }
    r20 = *(int32_t *)(int64_t *)&r20->_timescale;
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    r0 = (*0x1011dd1e0)(r21, r20);
    return r0;
}

-(union ?)videoTrackDuration {
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
    r20 = self;
    r19 = r8;
    r21 = self->_frames;
    r8 = *r21;
    (*(r8 + 0x68))(r21, (*(r8 + 0x40))(r21, _cmd) - 0x1);
    r21 = var_58;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_timescale));
    r22 = *(int32_t *)(r20 + r23);
    if (*0x1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r21, r22);
    r21 = var_64;
    r20 = *(int32_t *)(r20 + r23);
    if (*0x1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r21, r20);
    r0 = sub_100a3e6cc(r19, &stack[-152], &stack[-176]);
    return r0;
}

-(struct opaqueCMFormatDescription *)formatDesc {
    r0 = self->_formatDesc;
    return r0;
}

-(union ?)nextAbsoluteAudioTime {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*qword_1011dd158 != -0x1) {
            r0 = dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
    }
    r8 = *qword_1011dd160;
    q0 = *(int128_t *)r8;
    *(r19 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r19 = q0;
    return r0;
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

-(void *)audioStreamExtraParameters {
    r0 = self->_audioStreamExtraParameters;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(union ?)duration {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(unsigned long long)moovAtomSize {
    r0 = self->_moovAtomSize;
    return r0;
}

-(bool)moovAtomSizeParsedFromFile {
    r0 = *(int8_t *)(int64_t *)&self->_moovAtomSizeParsedFromFile;
    return r0;
}

-(bool)parsedHeaderForTrack:(long long)arg2 {
    r0 = *(int8_t *)(int64_t *)&self->_parsedHeader;
    return r0;
}

-(bool)parsedHeaders {
    r0 = *(int8_t *)(int64_t *)&self->_parsedHeader;
    return r0;
}

-(void)_resetDataForSeekBack {
    r0 = self->_frames;
    (*(*r0 + 0x28))(r0, 0x0);
    r0 = *((int64_t *)&self->_frames + 0x8);
    (*(*r0 + 0x28))(r0, 0x0);
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 resetDataForSeekBack];
    [r0 release];
    return;
}

-(void)_setMoovAtomSizeFromFile:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(int64_t *)&r0->_moovAtomSizeParsedFromFile = 0x1;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_moovAtomSize));
    r8 = *(r0 + r21);
    if (r8 != r2) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFMp4AtomManager.mm" lineNumber:0x228 format:@"%@ _moovAtomSize will be updated from %llu to %llu"];
            *(r0 + r21) = r2;
    }
    return;
}

-(int)_trackIdForTrackType:(int)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_enableMp4AssetSeekingFix != 0x0) {
            r2 = *(int32_t *)((int64_t *)&r0->_trackId + r2 * 0x4);
    }
    r0 = r2;
    return r0;
}

-(struct CGAffineTransform)preferredTransform {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_transform));
    q2 = *(int128_t *)(0x10 + r0 + r9);
    q0 = *(int128_t *)(0x20 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(int128_t *)(r8 + 0x10) = q2;
    *(int128_t *)(r8 + 0x20) = q0;
    return r0;
}

-(unsigned long long)timescale {
    r0 = *(int32_t *)(int64_t *)&self->_timescale;
    return r0;
}

-(unsigned long long)currentOffsetForTrack:(long long)arg2 {
    r0 = *((int64_t *)&self->_frames + arg2 * 0x8);
    (*(*r0 + 0x30))(r0, _cmd, arg2);
    r0 = var_30;
    return r0;
}

-(void).cxx_destruct {
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
    r19 = self;
    objc_storeStrong((int64_t *)&self->_audioCodec, 0x0);
    objc_storeStrong((int64_t *)&r19->_audioStreamExtraParameters, 0x0);
    r20 = (int64_t *)&r19->_moovAtom;
    r21 = *r20;
    if (r21 != 0x0) {
            r22 = *(r20 + 0x8);
            if (r22 != r21) {
                    r23 = 0x0;
                    r24 = r21 - r22;
                    do {
                            r25 = r22 + r23;
                            r0 = *(r25 + 0xffffffffffffffe0);
                            if (r0 != 0x0) {
                                    *(r25 + 0xffffffffffffffe8) = r0;
                                    operator delete(r0);
                            }
                            r0 = *(r25 + 0xffffffffffffffc8);
                            if (r0 != 0x0) {
                                    *(0xffffffffffffffd0 + r22 + r23) = r0;
                                    operator delete(r0);
                            }
                            r8 = r22 + r23;
                            r0 = *(r8 + 0xffffffffffffffb0);
                            if (r0 != 0x0) {
                                    *(r8 + 0xffffffffffffffb8) = r0;
                                    operator delete(r0);
                            }
                            r23 = r23 - 0x50;
                    } while (r24 != r23);
                    r0 = *r20;
            }
            else {
                    r0 = r21;
            }
            *(r20 + 0x8) = r21;
            operator delete(r0);
    }
    objc_storeStrong((int64_t *)&r19->_dataBlockDistributor, 0x0);
    objc_destroyWeak((int64_t *)&r19->_delegate);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_moovAtom));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    return r0;
}

@end