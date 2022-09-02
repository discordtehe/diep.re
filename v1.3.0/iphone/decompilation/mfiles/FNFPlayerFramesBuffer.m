@implementation FNFPlayerFramesBuffer

-(void *)initWithBufferSize:(int)arg2 {
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
    r20 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_decompressedBufferSize));
            *(int32_t *)(r19 + r23) = r20;
            if (r20 < 0x0) {
                    asm { cinc       w8, w20, lt };
            }
            *(int32_t *)(int64_t *)&r19->_sampleBufferRequestThreshold = SAR(0x101174000, 0x1);
            r0 = operator new[]();
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_buffers));
            *(r19 + r24) = r0;
            r0 = operator new[]();
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_bufferTimes));
            *(r19 + r25) = r0;
            r0 = operator new[]();
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_bufferIndexes));
            *(r19 + r26) = r0;
            r19->_decompressionSessionIndexStart = 0x0;
            r19->_framesDecompressed = 0x0;
            r19->_framesRead = 0x0;
            r19->_framesLoop = 0x0;
            r19->_framesEnqueued = 0x0;
            r19->_framesStale = 0x0;
            if (*(int32_t *)(r19 + r23) >= 0x1) {
                    r27 = 0x0;
                    r28 = 0x0;
                    do {
                            *(*(r19 + r24) + r28 * 0x8) = 0x0;
                            if (*0x1011dd178 != -0x1) {
                                    dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
                            }
                            r8 = *0x1011dd180;
                            r9 = *(r8 + 0x10);
                            q0 = *(int128_t *)r8;
                            r8 = *(r19 + r25);
                            *(int128_t *)(r8 + r27) = q0;
                            *(0x10 + r8 + r27) = r9;
                            *(*(r19 + r26) + r28 * 0x8) = 0xffffffffffffffff;
                            r28 = r28 + 0x1;
                            r27 = r27 + 0x18;
                    } while (r28 < sign_extend_64(*(int32_t *)(r19 + r23)));
            }
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
    r0 = self->_buffers;
    if (r0 != 0x0) {
            operator delete[](r0);
    }
    r0 = r19->_bufferTimes;
    if (r0 != 0x0) {
            operator delete[](r0);
    }
    r0 = r19->_bufferIndexes;
    if (r0 != 0x0) {
            operator delete[](r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(bool)shouldRequestData {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ((*(int8_t *)(int64_t *)&r0->_framesLoop & 0xf) != 0x0) {
            if (r0->_framesEnqueued - r0->_framesRead < 0x2) {
                    if (CPU_FLAGS & B) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(int)sampleBufferRequestThreshold {
    r0 = *(int32_t *)(int64_t *)&self->_sampleBufferRequestThreshold;
    return r0;
}

-(bool)doesIFrameBelongsToDecompressionSession:(unsigned long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_decompressionSessionIndexStart < arg2) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setSampleBufferRequestThreshold:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_sampleBufferRequestThreshold = arg2;
    return;
}

-(bool)seekFrameUpdatesFinished {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_framesDisplayed >= r0->_framesFlushed) {
            if (CPU_FLAGS & NB) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isFull {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_framesEnqueued - r0->_framesRead >= sign_extend_64(*(int32_t *)(int64_t *)&r0->_sampleBufferRequestThreshold)) {
            if (CPU_FLAGS & NB) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(struct __CVBuffer *)findNextFrame:(union ?)arg2 withDrawingOn:(bool)arg3 completion:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self findNextFrame:&var_20 withDrawingOn:r3 isFirstFrame:0x0 completion:r4];
    return r0;
}

-(void)setLastFrameDisplayed {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesDisplayed));
    r9 = *(r0 + r8);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_lastSuggestedFrame));
    r10 = *(r0 + r10);
    if (r9 > r10) {
            if (!CPU_FLAGS & A) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    *(r0 + r8) = r9;
    return;
}

-(void)setFrameOnClose {
    self->_frameToClose = self->_framesEnqueued;
    return;
}

-(bool)isFrameOnClose:(unsigned long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_frameToClose == arg2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(struct __CVBuffer *)_getNextFrame:(union ?)arg2 withDrawingOn:(bool)arg3 bufferIndex:(unsigned long long)arg4 framesRead:(unsigned long long)arg5 completion:(void *)arg6 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x120;
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
    r20 = r5;
    r19 = r4;
    r25 = r2;
    r21 = self;
    r22 = [r6 retain];
    if (r19 != -0x1) {
            r27 = 0x101174000;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_decompressedBufferSize));
            r8 = sign_extend_64(*(int32_t *)(r21 + r8));
            asm { udiv       x9, x19, x8 };
            r28 = r19 - r9 * r8;
            r26 = sign_extend_64(*(int32_t *)(r27 + 0xa94));
            r23 = *(*(r21 + r26) + r28 * 0x8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferTimes));
            r8 = *(r21 + r8);
            asm { madd       x8, x28, x9, x8 };
            r9 = *(r8 + 0x10);
            r27 = r29 - 0x80;
            *(int128_t *)r27 = *(int128_t *)r8;
            var_70 = r9;
            if (r22 != 0x0 && r23 != 0x0) {
                    (*(r22 + 0x10))(r22, &var_A0);
            }
            if (*qword_1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            r9 = *0x1011dd1e0;
            (r9)(0x2, 0x1e);
            sub_100a3e6cc(&stack[-232], &var_F0, &stack[-280]);
            r0 = CMTimeCompare(&var_C0, &stack[-232]);
            if (r0 >= 0x1) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesStale));
                    r9 = *(r21 + r8);
                    r9 = r9 + 0x1;
                    *(r21 + r8) = r9;
            }
            if (r23 != 0x0) {
                    asm { ccmp       w24, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E) {
                    *(*(r21 + r26) + r28 * 0x8) = 0x0;
            }
    }
    else {
            r23 = 0x0;
    }
    OSMemoryBarrier();
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_framesRead));
    r25 = *(r21 + r24);
    if (r25 < r20) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_decompressedBufferSize));
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_buffers));
            do {
                    r8 = sign_extend_64(*(int32_t *)(r21 + r26));
                    asm { udiv       x9, x25, x8 };
                    r28 = r25 - r9 * r8;
                    r0 = *(*(r21 + r27) + r28 * 0x8);
                    if (r0 != 0x0) {
                            CVBufferRelease(r0);
                            *(*(r21 + r27) + r28 * 0x8) = 0x0;
                    }
                    r25 = r25 + 0x1;
            } while (r20 != r25);
    }
    OSMemoryBarrier();
    *(r21 + r24) = r20;
    r21->_lastSuggestedFrame = r19;
    [r22 release];
    r0 = r23;
    return r0;
}

-(void)advanceFrame {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesLoop));
    *(self + r8) = *(self + r8) + 0x1;
    return;
}

-(void)clear {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_decompressedBufferSize));
    r8 = *(int32_t *)(r0 + r20);
    if (r8 >= 0x1) {
            r19 = r0;
            r21 = 0x0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_buffers));
            do {
                    r0 = *(*(r19 + r22) + r21 * 0x8);
                    if (r0 != 0x0) {
                            CVBufferRelease(r0);
                            *(*(r19 + r22) + r21 * 0x8) = 0x0;
                            r8 = *(int32_t *)(r19 + r20);
                    }
                    r21 = r21 + 0x1;
            } while (r21 < sign_extend_64(r8));
    }
    return;
}

-(void *)prepareFlush {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_framesDecompressed));
    self->_framesFlushed = *(self + sign_extend_64(*(int32_t *)ivar_offset(_framesEnqueued)));
    r0 = objc_retainBlock(&var_38);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)addBuffer:(struct __CVBuffer *)arg2 presentationTimeStamp:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self addBuffer:arg2 presentationTimeStamp:&var_30 iFrameEnqueued:self->_framesEnqueued];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            var_40 = [r20 retain];
            r0 = objc_retainBlock(&var_60);
            r19 = r0;
            [var_40 release];
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(struct __CVBuffer *)findNextFrame:(union ?)arg2 withDrawingOn:(bool)arg3 isFirstFrame:(bool)arg4 completion:(void *)arg5 {
    r5 = arg5;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x140;
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
    var_114 = r3;
    r22 = r2;
    r21 = self;
    var_120 = [r5 retain];
    r0 = [r21 seekFrameUpdatesFinished];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_framesRead));
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_framesDecompressed));
    r27 = sign_extend_64(*(int32_t *)(int64_t *)&r21->_decompressedBufferSize);
    r19 = r21->_bufferIndexes;
    if (r4 != 0x0) {
            r8 = *(r21 + r26);
            r9 = *_kCMTimePositiveInfinity;
            var_70 = *(int128_t *)r9;
            r9 = *(r9 + 0x10);
            var_60 = r9;
            r20 = *(r21 + r23);
            if (r20 < r8) {
                    var_128 = r23;
                    r23 = r8;
                    do {
                            asm { udiv       x9, x20, x27 };
                            r25 = r20 - r9 * r27;
                            r9 = *(r19 + r25 * 0x8);
                            if (r20 == r9) {
                                    asm { madd       x8, x25, x24, x28 };
                                    q0 = *(int128_t *)r8;
                                    r9 = *(r8 + 0x10);
                                    var_80 = r9;
                                    var_90 = q0;
                                    r0 = CMTimeCompare(&var_B0, &var_D0);
                                    if (r0 <= 0x0) {
                                            var_70 = var_90;
                                            var_60 = var_80;
                                            r23 = r25;
                                    }
                                    r8 = *(r21 + r26);
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r8);
                    r20 = *(r21 + var_128);
            }
            else {
                    r23 = r8;
            }
            if (r23 > r20) {
                    if (!CPU_FLAGS & A) {
                            r5 = r20;
                    }
                    else {
                            r5 = r23;
                    }
            }
    }
    else {
            var_12C = r0;
            if (*qword_1011dd168 != -0x1) {
                    dispatch_once_f(0x1011dd168, 0x1011c6220, 0x100a3d91c);
            }
            r8 = *qword_1011dd170;
            r9 = *(r8 + 0x10);
            var_70 = *(int128_t *)r8;
            var_60 = r9;
            r24 = *(r21 + r26);
            var_128 = r23;
            r23 = *(r21 + r23);
            r20 = 0xffffffffffffffff;
            if (r23 < r24) {
                    do {
                            asm { udiv       x8, x23, x27 };
                            if (r23 == *(r19 + (r23 - r8 * r27) * 0x8)) {
                                    asm { madd       x25, x8, x9, x28 };
                                    r0 = CMTimeCompare(r29 - 0x90, &var_B0);
                                    if (r0 > 0x0) {
                                            if (r24 < r23) {
                                                    if (!CPU_FLAGS & B) {
                                                            r24 = r23;
                                                    }
                                                    else {
                                                            r24 = r24;
                                                    }
                                            }
                                    }
                                    else {
                                            r0 = CMTimeCompare(&var_D0, &var_F0);
                                            if ((r0 & 0xffffffff80000000) != 0x0) {
                                                    q0 = *(int128_t *)r25;
                                                    var_60 = *(r25 + 0x10);
                                                    var_70 = q0;
                                                    r20 = r23;
                                            }
                                    }
                            }
                            r23 = r23 + 0x1;
                            r8 = *(r21 + r26);
                    } while (r23 < r8);
            }
            else {
                    r20 = 0xffffffffffffffff;
                    r8 = r24;
            }
            r9 = *(r21 + var_128);
            if (r9 < r8) {
                    asm { ccmp       x20, x8, #0x0, lo };
            }
            r8 = 0xffffffffffffffff;
            if (CPU_FLAGS & E) {
                    if (!CPU_FLAGS & E) {
                            r8 = r20;
                    }
                    else {
                            r8 = r9;
                    }
            }
            if (var_12C != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r23 = r8;
                    }
                    else {
                            r23 = r20;
                    }
            }
            if (r24 > r9) {
                    if (!CPU_FLAGS & A) {
                            r5 = r9;
                    }
                    else {
                            r5 = r24;
                    }
            }
    }
    r19 = [r21 _getNextFrame:&var_110 withDrawingOn:var_114 bufferIndex:r23 framesRead:r5 completion:var_120];
    [var_120 release];
    r0 = r19;
    return r0;
}

-(void *)addBuffer:(struct __CVBuffer *)arg2 presentationTimeStamp:(union ?)arg3 iFrameEnqueued:(unsigned long long)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r4;
    r19 = r3;
    r21 = arg2;
    r22 = self;
    if ([self doesIFrameBelongsToDecompressionSession:r4] != 0x0 && r22->_framesRead < r20) {
            CVBufferRetain(r21);
            r0 = objc_retainBlock(&var_70);
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void)resetDecompressionSessionIndex {
    self->_decompressionSessionIndexStart = self->_framesEnqueued;
    return;
}

-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg2 decompressionSession:(void *)arg3 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_framesEnqueued));
    [arg3 enqueueSampleBuffer:arg2 iFrame:*(self + r20)];
    *(self + r20) = *(self + r20) + 0x1;
    return;
}

-(void *)description {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_framesRead));
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_framesEnqueued));
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_framesDecompressed));
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(long long *)bufferIndexes {
    r0 = self->_bufferIndexes;
    return r0;
}

-(union ? *)bufferTimes {
    r0 = self->_bufferTimes;
    return r0;
}

-(int)bufferSize {
    r0 = *(int32_t *)(int64_t *)&self->_decompressedBufferSize;
    return r0;
}

-(unsigned long long)framesDecompressed {
    r0 = self->_framesDecompressed;
    return r0;
}

-(unsigned long long)framesRead {
    r0 = self->_framesRead;
    return r0;
}

-(bool)isReadyForMoreMediaData {
    r0 = *(int8_t *)(int64_t *)&self->_isReadyForMoreMediaData;
    return r0;
}

@end