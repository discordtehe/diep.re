@implementation FNFDashTrackMetadata

-(bool)containsABRPolicyTag:(void *)arg2 {
    r0 = self->_abrPolicyTags;
    r0 = [r0 containsObject:r2];
    return r0;
}

-(struct vector<std::__1::pair<double, double>, std::__1::allocator<std::__1::pair<double, double> > >)resolutionMosPairs {
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resolutionMosPairs));
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(int128_t *)(r19 + 0x10) = 0x0;
    *r19 = 0x0;
    r21 = *(int128_t *)(r0 + r8);
    r8 = *(int128_t *)(0x8 + r0 + r8);
    r20 = r8 - r21;
    if (r20 != 0x0) {
            r23 = SAR(r20, 0x4);
            if (r23 >> 0x3c == 0x0) {
                    r0 = operator new();
                    *(int128_t *)r19 = r0;
                    *(int128_t *)(r19 + 0x8) = r0;
                    *(r19 + 0x10) = r0 + r23 * 0x10;
                    if (r20 >= 0x1) {
                            r22 = r0;
                            r0 = memcpy(r0, r21, r20);
                            *(r19 + 0x8) = r22 + r20;
                    }
            }
            else {
                    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
            }
    }
    return r0;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    objc_storeStrong((int64_t *)&self->_keyId, 0x0);
    objc_storeStrong((int64_t *)&self->_pssh, 0x0);
    objc_storeStrong((int64_t *)&self->_predictiveMediaUrlTemplate, 0x0);
    objc_storeStrong((int64_t *)&self->_predictiveTimelineEntries, 0x0);
    objc_storeStrong((int64_t *)&self->_timelineEntries, 0x0);
    objc_storeStrong((int64_t *)&self->_mpdUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_encodedInitData, 0x0);
    objc_storeStrong((int64_t *)&self->_audioChannelConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_projection, 0x0);
    objc_storeStrong((int64_t *)&self->_initializationUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_playbackResolutionMos, 0x0);
    objc_storeStrong((int64_t *)&self->_abrPolicyTags, 0x0);
    objc_storeStrong((int64_t *)&self->_codecs, 0x0);
    objc_storeStrong((int64_t *)&self->_mimeType, 0x0);
    objc_storeStrong((int64_t *)&self->_qualityLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_representationId, 0x0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resolutionMosPairs));
    r8 = self + r8;
    r0 = *r8;
    if (r0 != 0x0) {
            *(r8 + 0x8) = r0;
            operator delete(r0);
    }
    return;
}

-(void *)representationId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_representationId)), 0x0);
    return r0;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_resolutionMosPairs));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    return r0;
}

-(unsigned int)width {
    r0 = *(int32_t *)(int64_t *)&self->_width;
    return r0;
}

-(unsigned int)height {
    r0 = *(int32_t *)(int64_t *)&self->_height;
    return r0;
}

-(unsigned int)bandwidth {
    r0 = *(int32_t *)(int64_t *)&self->_bandwidth;
    return r0;
}

-(void *)qualityLabel {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_qualityLabel)), 0x0);
    return r0;
}

-(void *)mimeType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mimeType)), 0x0);
    return r0;
}

-(void *)codecs {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_codecs)), 0x0);
    return r0;
}

-(void *)abrPolicyTags {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_abrPolicyTags)), 0x0);
    return r0;
}

-(void *)playbackResolutionMos {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_playbackResolutionMos)), 0x0);
    return r0;
}

-(void *)initializationUrl {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_initializationUrl)), 0x0);
    return r0;
}

-(void *)projection {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_projection)), 0x0);
    return r0;
}

-(void *)audioChannelConfiguration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_audioChannelConfiguration)), 0x0);
    return r0;
}

-(void *)encodedInitData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_encodedInitData)), 0x0);
    return r0;
}

-(struct _NSRange)indexRange {
    r0 = *(int128_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_indexRange)));
    return r0;
}

-(struct _NSRange)initializationRange {
    r0 = *(int128_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_initializationRange)));
    return r0;
}

-(struct _NSRange)firstSegmentRange {
    r0 = *(int128_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_firstSegmentRange)));
    return r0;
}

-(struct _NSRange)secondSegmentRange {
    r0 = *(int128_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_secondSegmentRange)));
    return r0;
}

-(void *)initWithId:(void *)arg2 width:(unsigned int)arg3 height:(unsigned int)arg4 bandwidth:(unsigned int)arg5 abrPolicyTags:(void *)arg6 qualityLabel:(void *)arg7 mimeType:(void *)arg8 codecs:(void *)arg9 initializationUrl:(void *)arg10 projection:(void *)arg11 audioChannelConfiguration:(void *)arg12 indexRange:(struct _NSRange)arg13 initializationRange:(struct _NSRange)arg14 firstSegmentRange:(struct _NSRange)arg15 secondSegmentRange:(struct _NSRange)arg16 timelineTimescale:(unsigned int)arg17 timelineDuration:(unsigned int)arg18 timelineEntries:(void *)arg19 predictiveTimelineEntries:(void *)arg20 encodedInitData:(void *)arg21 mpdUrl:(void *)arg22 mediaUrlTemplate:(void *)arg23 predictiveMediaUrlTemplate:(void *)arg24 predictiveMediaEndNumber:(int)arg25 pssh:(void *)arg26 keyId:(void *)arg27 playbackResolutionMos:(void *)arg28 {
    var_160 = arg28;
    var_104 = arg21;
    var_96 = arg20;
    var_88 = arg19;
    var_80 = arg18;
    var_72 = arg17;
    var_64 = arg16;
    var_56 = arg15;
    var_48 = arg14;
    var_40 = arg13;
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
    r31 = r31 + 0xffffffffffffff90 - 0x200;
    var_230 = arg5;
    var_238 = arg4;
    var_240 = arg3;
    var_1D0 = arg_A8;
    var_1C8 = arg_B0;
    var_248 = arg2;
    var_1E0 = [arg2 retain];
    var_218 = arg6;
    var_1E8 = [arg6 retain];
    var_188 = arg7;
    var_1F0 = [arg7 retain];
    var_198 = arg8;
    var_1F8 = [arg8 retain];
    var_190 = arg9;
    var_200 = [arg9 retain];
    var_1A0 = [arg10 retain];
    r23 = [arg11 retain];
    var_1A8 = [arg12 retain];
    var_1B0 = [arg22 retain];
    r26 = [arg23 retain];
    var_1B8 = [arg24 retain];
    var_228 = arg25;
    var_208 = [arg25 retain];
    var_1C0 = [arg26 retain];
    var_220 = arg27;
    r25 = [arg27 retain];
    r27 = [var_1D0 retain];
    var_210 = [var_1C8 retain];
    var_1D8 = [arg_B8 retain];
    r0 = [[&var_140 super] init];
    r24 = r0;
    if (r0 == 0x0) goto loc_100b63aa8;

loc_100b634fc:
    var_258 = r27;
    var_250 = r23;
    objc_storeStrong((int64_t *)&r24->_representationId, var_248);
    *(int32_t *)(int64_t *)&r24->_width = var_240;
    *(int32_t *)(int64_t *)&r24->_height = var_238;
    *(int32_t *)(int64_t *)&r24->_bandwidth = var_230;
    objc_storeStrong((int64_t *)&r24->_abrPolicyTags, var_218);
    objc_storeStrong((int64_t *)&r24->_qualityLabel, var_188);
    objc_storeStrong((int64_t *)&r24->_mimeType, var_198);
    var_218 = r24;
    objc_storeStrong((int64_t *)&r24->_codecs, var_190);
    r0 = [var_1D8 retain];
    r19 = r0;
    var_150 = 0x0;
    var_148 = 0x0;
    var_158 = 0x0;
    var_238 = r25;
    var_230 = r26;
    if (r0 == 0x0 || [r19 length] == 0x0) goto loc_100b63838;

loc_100b635c8:
    var_240 = r19;
    r0 = [r19 componentsSeparatedByString:@","];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_198 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100b6382c;

loc_100b63620:
    r20 = @selector(componentsSeparatedByString:);
    r26 = r0;
    r28 = *var_120;
    var_188 = r24;
    var_180 = r20;
    var_190 = r28;
    goto loc_100b6363c;

loc_100b6363c:
    r21 = 0x0;
    r22 = @selector(count);
    var_168 = r22;
    goto loc_100b63660;

loc_100b63660:
    if (*var_120 != r28) {
            objc_enumerationMutation(r24);
    }
    r0 = *(var_128 + r21 * 0x8);
    r0 = [r0 retain];
    r27 = r0;
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r22) < 0x2) goto loc_100b637e4;

loc_100b636b0:
    r0 = [r23 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    var_160 = r0;
    [r0 doubleValue];
    r0 = [r23 objectAtIndexedSubscript:0x1];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 doubleValue];
    r9 = var_150;
    r8 = var_148;
    if (r9 >= r8) goto loc_100b63728;

loc_100b63714:
    *r9 = d8;
    *(r9 + 0x8) = d9;
    var_150 = r9 + 0x10;
    goto loc_100b637d0;

loc_100b637d0:
    [r22 release];
    [var_160 release];
    r22 = var_168;
    goto loc_100b637e4;

loc_100b637e4:
    [r23 release];
    [r27 release];
    r21 = r21 + 0x1;
    if (r21 < r26) goto loc_100b63660;

loc_100b6380c:
    r0 = objc_msgSend(r24, var_198);
    r26 = r0;
    if (r0 != 0x0) goto loc_100b6363c;

loc_100b6382c:
    [r24 release];
    r19 = var_240;
    goto loc_100b63838;

loc_100b63838:
    var_170 = var_88;
    var_168 = var_96;
    r22 = var_72;
    var_178 = var_80;
    r28 = var_56;
    r27 = var_64;
    r21 = var_40;
    r20 = var_48;
    var_160 = var_160;
    r25 = var_104;
    r26 = stack[108];
    [r19 release];
    r19 = (int64_t *)&var_218->_resolutionMosPairs;
    r0 = *r19;
    if (r0 != 0x0) {
            *(r19 + 0x8) = r0;
            operator delete(r0);
            *(int128_t *)r19 = 0x0;
            *(int128_t *)(r19 + 0x8) = 0x0;
            *(r19 + 0x10) = 0x0;
    }
    *r19 = var_158;
    *(r19 + 0x8) = var_150;
    *(r19 + 0x10) = var_148;
    r0 = [var_1A0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_initializationUrl));
    r24 = var_218;
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r23 = var_250;
    r0 = [r23 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_projection));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r0 = [var_1A8 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioChannelConfiguration));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_indexRange));
    *(int128_t *)(r24 + r8) = r21;
    *(int128_t *)(0x8 + r24 + r8) = r20;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initializationRange));
    *(int128_t *)(r24 + r8) = r28;
    *(int128_t *)(0x8 + r24 + r8) = r27;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_firstSegmentRange));
    *(int128_t *)(r24 + r8) = r22;
    *(int128_t *)(0x8 + r24 + r8) = var_178;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_secondSegmentRange));
    *(r24 + r8) = var_170;
    *(0x8 + r24 + r8) = var_168;
    *(int32_t *)(int64_t *)&r24->_timelineDuration = r26;
    *(int32_t *)(int64_t *)&r24->_timelineTimescale = r25;
    r0 = [var_1B8 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_encodedInitData));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r24->_mpdUrl, var_228);
    objc_storeStrong((int64_t *)&r24->_predictiveMediaUrlTemplate, var_220);
    *(int32_t *)(int64_t *)&r24->_predictiveMediaEndNumber = var_160;
    objc_storeStrong((int64_t *)&r24->_pssh, var_1D0);
    objc_storeStrong((int64_t *)&r24->_keyId, var_1C8);
    r0 = [FNFDashTrackEntryContainer alloc];
    r0 = [r0 initWithTimelineEntries:var_1B0 mediaUrlTemplate:var_1C0];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_timelineEntries));
    r8 = *(r24 + r9);
    *(r24 + r9) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_predictiveTimelineEntries));
    r0 = *(r24 + r22);
    *(r24 + r22) = 0x0;
    [r0 release];
    r25 = var_238;
    r26 = var_230;
    r27 = var_258;
    if (r26 != 0x0) {
            r0 = [FNFDashTrackEntryContainer alloc];
            r0 = [r0 initWithTimelineEntries:r26 mediaUrlTemplate:r25];
            r8 = *(r24 + r22);
            *(r24 + r22) = r0;
            [r8 release];
    }
    goto loc_100b63aa8;

loc_100b63aa8:
    var_70 = **___stack_chk_guard;
    [var_1D8 release];
    [var_210 release];
    [r27 release];
    [r25 release];
    [var_1C0 release];
    [var_208 release];
    [var_1B8 release];
    [r26 release];
    [var_1B0 release];
    [var_1A8 release];
    [r23 release];
    [var_1A0 release];
    [var_200 release];
    [var_1F8 release];
    [var_1F0 release];
    [var_1E8 release];
    [var_1E0 release];
    if (**___stack_chk_guard == var_70) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b63728:
    r19 = r26;
    r25 = var_158;
    r20 = r9 - r25;
    r26 = SAR(r20, 0x4);
    r9 = r26 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_100b63b74;

loc_100b63744:
    r8 = r8 - r25;
    if (0x7fffffffffffffe < r8 / 0x10) goto loc_100b63770;

loc_100b63754:
    r8 = SAR(r8, 0x3);
    if (r8 < r9) {
            if (!CPU_FLAGS & B) {
                    r28 = r8;
            }
            else {
                    r28 = r9;
            }
    }
    if (r28 == 0x0) goto loc_100b63804;

loc_100b63764:
    if (r28 >> 0x3c == 0x0) goto loc_100b63774;

loc_100b63b7c:
    r0 = abort();
    return r0;

loc_100b63774:
    r24 = operator new();
    goto loc_100b63780;

loc_100b63780:
    r8 = r24 + r26 * 0x10;
    r26 = r24 + r28 * 0x10;
    *(int128_t *)r8 = d8;
    *(int128_t *)(r8 + 0x8) = d9;
    r28 = r8 + 0x10;
    if (r20 >= 0x1) {
            memcpy(r24, r25, r20);
    }
    var_158 = r24;
    var_150 = r28;
    var_148 = r26;
    r24 = var_188;
    r20 = var_180;
    r28 = var_190;
    r26 = r19;
    if (r25 != 0x0) {
            operator delete(r25);
    }
    goto loc_100b637d0;

loc_100b63804:
    r24 = 0x0;
    goto loc_100b63780;

loc_100b63770:
    r28 = 0xfffffffffffffff;
    goto loc_100b63774;

loc_100b63b74:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;
}

-(unsigned int)timelineDuration {
    r0 = *(int32_t *)(int64_t *)&self->_timelineDuration;
    return r0;
}

-(void *)mpdUrl {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mpdUrl)), 0x0);
    return r0;
}

-(void *)timelineEntries {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timelineEntries)), 0x0);
    return r0;
}

-(void *)predictiveTimelineEntries {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_predictiveTimelineEntries)), 0x0);
    return r0;
}

-(unsigned int)timelineTimescale {
    r0 = *(int32_t *)(int64_t *)&self->_timelineTimescale;
    return r0;
}

-(void *)predictiveMediaUrlTemplate {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_predictiveMediaUrlTemplate)), 0x0);
    return r0;
}

-(int)predictiveMediaEndNumber {
    r0 = *(int32_t *)(int64_t *)&self->_predictiveMediaEndNumber;
    return r0;
}

-(void *)pssh {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_pssh)), 0x0);
    return r0;
}

-(void *)keyId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_keyId)), 0x0);
    return r0;
}

+(void *)segmentBaseMetadataWithId:(void *)arg2 width:(unsigned int)arg3 height:(unsigned int)arg4 bandwidth:(unsigned int)arg5 abrPolicyTags:(void *)arg6 qualityLabel:(void *)arg7 mimeType:(void *)arg8 codecs:(void *)arg9 initializationUrl:(void *)arg10 projection:(void *)arg11 audioChannelConfiguration:(void *)arg12 indexRange:(struct _NSRange)arg13 initializationRange:(struct _NSRange)arg14 firstSegmentRange:(struct _NSRange)arg15 secondSegmentRange:(struct _NSRange)arg16 pssh:(void *)arg17 keyId:(void *)arg18 playbackResolutionMos:(void *)arg19 {
    var_B8 = [arg2 retain];
    var_C0 = [arg6 retain];
    var_C8 = [arg7 retain];
    r0 = [arg8 retain];
    r24 = [arg9 retain];
    r26 = [arg10 retain];
    r27 = [arg11 retain];
    r22 = [arg12 retain];
    r25 = [stack[104] retain];
    r23 = [arg_70 retain];
    r19 = [stack[120] retain];
    var_60 = [[self alloc] initWithId:var_B8 width:arg3 height:arg4 bandwidth:arg5 abrPolicyTags:var_C0 qualityLabel:var_C8 mimeType:r0 codecs:r24 initializationUrl:r26 projection:r27 audioChannelConfiguration:r22 indexRange:arg13 initializationRange:stack[-384] firstSegmentRange:arg15 secondSegmentRange:arg16 timelineTimescale:arg17 timelineDuration:stack[-352] timelineEntries:arg19];
    [r19 release];
    [r23 release];
    [r25 release];
    [r22 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [r0 release];
    [var_C8 release];
    [var_C0 release];
    [var_B8 release];
    r0 = [var_60 autorelease];
    return r0;
}

+(void *)segmentListMetadataWithId:(void *)arg2 width:(unsigned int)arg3 height:(unsigned int)arg4 bandwidth:(unsigned int)arg5 abrPolicyTags:(void *)arg6 qualityLabel:(void *)arg7 mimeType:(void *)arg8 codecs:(void *)arg9 initializationUrl:(void *)arg10 projection:(void *)arg11 audioChannelConfiguration:(void *)arg12 timelineTimescale:(unsigned int)arg13 timelineDuration:(unsigned int)arg14 timelineEntries:(void *)arg15 pssh:(void *)arg16 keyId:(void *)arg17 playbackResolutionMos:(void *)arg18 {
    var_70 = [arg2 retain];
    var_78 = [arg6 retain];
    var_88 = [arg7 retain];
    r0 = [arg8 retain];
    r21 = r0;
    var_A0 = r0;
    r26 = [arg9 retain];
    r27 = [arg10 retain];
    r28 = [arg11 retain];
    r23 = [arg12 retain];
    r0 = [arg14 retain];
    r19 = [arg15 retain];
    r20 = [arg16 retain];
    r25 = [arg17 retain];
    var_60 = [[self alloc] initWithId:var_70 width:arg3 height:arg4 bandwidth:arg5 abrPolicyTags:var_78 qualityLabel:var_88 mimeType:r21 codecs:r26 initializationUrl:r27 projection:r28 audioChannelConfiguration:r23 indexRange:0x0 initializationRange:0x7fffffffffffffff firstSegmentRange:0x0 secondSegmentRange:0x7fffffffffffffff timelineTimescale:0x0 timelineDuration:0x7fffffffffffffff timelineEntries:0x0];
    [r25 release];
    [r20 release];
    [r19 release];
    [r0 release];
    [r23 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [var_A0 release];
    [var_88 release];
    [var_78 release];
    [var_70 release];
    r0 = [var_60 autorelease];
    return r0;
}

+(void *)segmentTemplateMetadataWithId:(void *)arg2 width:(unsigned int)arg3 height:(unsigned int)arg4 bandwidth:(unsigned int)arg5 abrPolicyTags:(void *)arg6 qualityLabel:(void *)arg7 mimeType:(void *)arg8 codecs:(void *)arg9 initializationUrl:(void *)arg10 projection:(void *)arg11 audioChannelConfiguration:(void *)arg12 timelineTimescale:(unsigned int)arg13 timelineEntries:(void *)arg14 predictiveTimelineEntries:(void *)arg15 encodedInitData:(void *)arg16 mpdUrl:(void *)arg17 mediaUrlTemplate:(void *)arg18 predictiveMediaUrlTemplate:(void *)arg19 predictiveMediaEndNumber:(int)arg20 pssh:(void *)arg21 keyId:(void *)arg22 playbackResolutionMos:(void *)arg23 {
    var_88 = [arg2 retain];
    var_90 = [arg6 retain];
    var_98 = [arg7 retain];
    var_B0 = [arg8 retain];
    var_B8 = [arg9 retain];
    var_60 = [arg10 retain];
    var_68 = [arg11 retain];
    var_D8 = [arg12 retain];
    r0 = [arg14 retain];
    var_F8 = r0;
    r0 = [arg15 retain];
    var_100 = r0;
    r0 = [arg16 retain];
    var_108 = r0;
    r0 = [arg17 retain];
    var_F0 = r0;
    r0 = [arg18 retain];
    r24 = [arg19 retain];
    r20 = [arg21 retain];
    r28 = [arg22 retain];
    r25 = [arg23 retain];
    var_70 = [[self alloc] initWithId:var_88 width:arg3 height:arg4 bandwidth:arg5 abrPolicyTags:var_90 qualityLabel:var_98 mimeType:var_B0 codecs:var_B8 initializationUrl:var_60 projection:var_68 audioChannelConfiguration:var_D8 indexRange:0x0 initializationRange:0x7fffffffffffffff firstSegmentRange:0x0 secondSegmentRange:0x7fffffffffffffff timelineTimescale:0x0 timelineDuration:0x7fffffffffffffff timelineEntries:0x0];
    [r25 release];
    [r28 release];
    [r20 release];
    [r24 release];
    [r0 release];
    [var_F0 release];
    [var_108 release];
    [var_100 release];
    [var_F8 release];
    [var_D8 release];
    [var_68 release];
    [var_60 release];
    [var_B8 release];
    [var_B0 release];
    [var_98 release];
    [var_90 release];
    [var_88 release];
    r0 = [var_70 autorelease];
    return r0;
}

@end