@implementation FNFDefaultAudioDecoder

-(void)setAudioStreamBasicDescription:(struct AudioStreamBasicDescription)arg2 extraParameters:(void *)arg3 errorCallback:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_asbd));
    r9 = *(r2 + 0x20);
    q0 = *(int128_t *)r2;
    q1 = *(int128_t *)(r2 + 0x10);
    *(int128_t *)(self + r8) = q0;
    *(int128_t *)(0x10 + self + r8) = q1;
    *(0x20 + self + r8) = r9;
    return;
}

-(bool)decodeToBuffer:(struct AudioQueueBuffer *)arg2 frame:(struct FNFFrameMetadata)arg3 frameData:(char *)arg4 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r9 = *(int32_t *)arg2;
    r8 = *(int32_t *)(arg2 + 0x10);
    r2 = *(int32_t *)r3;
    if (r9 - r8 < r2) {
            r0 = 0x0;
    }
    else {
            memcpy(*(r19 + 0x8) + r8, r4, r2);
            r8 = *(r19 + 0x28);
            r9 = *(int32_t *)(r19 + 0x30);
            r10 = *(int32_t *)(r19 + 0x10);
            *(r8 + r9 * 0x10) = r10;
            r11 = *(int32_t *)r3;
            *(int32_t *)(0xc + r8 + r9 * 0x10) = r11;
            *(int32_t *)(0x8 + r8 + r9 * 0x10) = *(int32_t *)((int64_t *)&r20->_asbd + 0x14);
            *(int32_t *)(r19 + 0x10) = r11 + r10;
            *(int32_t *)(r19 + 0x30) = r9 + 0x1;
            r0 = 0x1;
    }
    return r0;
}

-(void)reset {
    return;
}

@end