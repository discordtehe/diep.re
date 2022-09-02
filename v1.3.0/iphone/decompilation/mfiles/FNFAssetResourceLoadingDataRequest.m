@implementation FNFAssetResourceLoadingDataRequest

-(void *)initWithRequestedOffset:(long long)arg2 requestedLength:(long long)arg3 dataCallback:(void *)arg4 isPredictive:(bool)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r22 = arg3;
    r23 = arg2;
    r20 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r21->_currentOffset = r23;
            r21->_requestedOffset = r23;
            r21->_requestedLength = r22;
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sendDataCallback));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r21->_isPredictive = r19;
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)respondWithData:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = r19->_sendDataCallback;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    r0 = [r20 length];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentOffset));
    *(r19 + r8) = *(r19 + r8) + r0;
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_streamFormat, 0x0);
    objc_storeStrong((int64_t *)&self->_sendDataCallback, 0x0);
    return;
}

-(long long)requestedOffset {
    r0 = self->_requestedOffset;
    return r0;
}

-(long long)requestedLength {
    r0 = self->_requestedLength;
    return r0;
}

-(long long)currentOffset {
    r0 = self->_currentOffset;
    return r0;
}

-(bool)isAudio {
    r0 = *(int8_t *)(int64_t *)&self->_isAudio;
    return r0;
}

-(void)setIsAudio:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAudio = arg2;
    return;
}

-(bool)firstRequest {
    r0 = *(int8_t *)(int64_t *)&self->_firstRequest;
    return r0;
}

-(void)setFirstRequest:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_firstRequest = arg2;
    return;
}

-(int)sequenceIndex {
    r0 = *(int32_t *)(int64_t *)&self->_sequenceIndex;
    return r0;
}

-(void)setSequenceIndex:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_sequenceIndex = arg2;
    return;
}

-(bool)isForDiskCache {
    r0 = *(int8_t *)(int64_t *)&self->_isForDiskCache;
    return r0;
}

-(void)setIsForDiskCache:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isForDiskCache = arg2;
    return;
}

-(bool)isPredictive {
    r0 = *(int8_t *)(int64_t *)&self->_isPredictive;
    return r0;
}

-(void)setIsPredictive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPredictive = arg2;
    return;
}

-(union ?)startTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_startTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setStartTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
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

-(void)setDuration:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void *)streamFormat {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_streamFormat)), 0x0);
    return r0;
}

-(void)setStreamFormat:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(union ?)bufferDurationInSeconds {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_bufferDurationInSeconds));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setBufferDurationInSeconds:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferDurationInSeconds));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(bool)isHeaderOnly {
    r0 = *(int8_t *)(int64_t *)&self->_isHeaderOnly;
    return r0;
}

-(void)setIsHeaderOnly:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isHeaderOnly = arg2;
    return;
}

@end