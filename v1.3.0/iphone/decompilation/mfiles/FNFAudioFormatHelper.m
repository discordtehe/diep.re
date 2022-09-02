@implementation FNFAudioFormatHelper

+(struct AudioStreamBasicDescription)audioStreamBasicDescriptionWithFormatId:(unsigned int)arg2 channelCount:(unsigned int)arg3 sampleRateIndex:(unsigned int)arg4 framesPerPacket:(unsigned int)arg5 objectType:(unsigned int)arg6 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r4 >= 0x67) {
            d0 = *double_value_44100;
    }
    else {
            d0 = *(0x100bfce68 + r4 * 0x8);
    }
    *r8 = d0;
    *(int32_t *)(r8 + 0x8) = r2;
    *(r8 + 0xc) = d0;
    *(int128_t *)(r8 + 0x14) = r5;
    *(int128_t *)(r8 + 0x18) = 0x0;
    *(int32_t *)(r8 + 0x1c) = r3;
    *(r8 + 0x20) = d0;
    return r0;
}

@end