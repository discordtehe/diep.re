@implementation FNFMediaPresentationDescription

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_audioTracks, 0x0);
    objc_storeStrong((int64_t *)&self->_videoTracks, 0x0);
    objc_storeStrong((int64_t *)&self->_loapStreamType, 0x0);
    objc_storeStrong((int64_t *)&self->_loapStreamId, 0x0);
    objc_storeStrong((int64_t *)&self->_publishTime, 0x0);
    objc_storeStrong((int64_t *)&self->_availabilityEndTime, 0x0);
    objc_storeStrong((int64_t *)&self->_mpdAccessibilityDescription, 0x0);
    return;
}

-(void *)initWithAudioTracks:(void *)arg2 videoTracks:(void *)arg3 isDynamic:(bool)arg4 isFragmented:(bool)arg5 durationMS:(unsigned int)arg6 videoType:(long long)arg7 mpdAccessibilityDescription:(void *)arg8 publishFrameTime:(unsigned long long)arg9 availabilityEndTime:(void *)arg10 publishTime:(void *)arg11 firstAvTimeMS:(long long)arg12 currentServerTimeMs:(long long)arg13 lastVideoFrameTimeMs:(long long)arg14 isPredictive:(bool)arg15 isManifestService:(bool)arg16 containsUsingASRCaptions:(bool)arg17 containsCompleteTimeline:(bool)arg18 loapStreamId:(void *)arg19 loapStreamType:(void *)arg20 {
    var_56 = arg15;
    var_48 = arg14;
    var_40 = arg13;
    var_32 = arg12;
    var_8 = arg9;
    r31 = r31 - 0xe0;
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
    var_80 = arg7;
    var_88 = arg5;
    var_84 = arg6;
    var_8C = arg4;
    r23 = arg16;
    r22 = arg17;
    r24 = arg10;
    r21 = arg11;
    r27 = arg8;
    var_68 = [arg2 retain];
    var_70 = [arg3 retain];
    r19 = [r27 retain];
    r20 = [r24 retain];
    r28 = [r21 retain];
    r25 = [r23 retain];
    var_78 = [r22 retain];
    r0 = [[&saved_fp - 0x60 super] init];
    r26 = r0;
    if (r0 != 0x0) {
            var_90 = arg_3B;
            var_A4 = arg_3A;
            var_A8 = arg_39;
            var_AC = var_56;
            var_B8 = var_48;
            var_C8 = var_32;
            var_C0 = var_40;
            var_A0 = r23;
            var_98 = r22;
            r0 = [var_68 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioTracks));
            r8 = *(r26 + r9);
            *(r26 + r9) = r0;
            [r8 release];
            r19 = r19;
            r28 = r28;
            r0 = [var_70 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoTracks));
            r8 = *(r26 + r9);
            *(r26 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r26->_isDynamic = var_8C;
            *(int8_t *)(int64_t *)&r26->_isFragmented = var_88;
            *(int32_t *)(int64_t *)&r26->_durationMS = var_84;
            r26->_videoType = var_80;
            objc_storeStrong((int64_t *)&r26->_mpdAccessibilityDescription, r27);
            asm { ucvtf      d0, x20 };
            r20 = r25;
            r25 = r23;
            r26->_publishFrameTimeMS = d0;
            objc_storeStrong((int64_t *)&r26->_availabilityEndTime, r24);
            objc_storeStrong((int64_t *)&r26->_publishTime, r21);
            r26->_firstAvTimeMS = var_C8;
            r26->_currentServerTimeMs = var_C0;
            r26->_lastVideoFrameTimeMs = var_B8;
            *(int8_t *)(int64_t *)&r26->_isPredictive = var_AC;
            *(int8_t *)(int64_t *)&r26->_isManifestService = var_A8;
            *(int8_t *)(int64_t *)&r26->_containsUsingASRCaptions = var_A4;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_loapStreamId));
            *(int8_t *)(int64_t *)&r26->_containsCompleteTimeline = var_90;
            objc_storeStrong(r26 + r9, var_A0);
            objc_storeStrong((int64_t *)&r26->_loapStreamType, var_98);
    }
    [var_78 release];
    [r25 release];
    [r28 release];
    [r20 release];
    [r19 release];
    [var_70 release];
    [var_68 release];
    r0 = r26;
    return r0;
}

-(bool)isDynamic {
    r0 = *(int8_t *)(int64_t *)&self->_isDynamic;
    return r0;
}

-(bool)isFragmented {
    r0 = *(int8_t *)(int64_t *)&self->_isFragmented;
    return r0;
}

-(bool)isPredictive {
    r0 = *(int8_t *)(int64_t *)&self->_isPredictive;
    return r0;
}

-(bool)isManifestService {
    r0 = *(int8_t *)(int64_t *)&self->_isManifestService;
    return r0;
}

-(bool)containsUsingASRCaptions {
    r0 = *(int8_t *)(int64_t *)&self->_containsUsingASRCaptions;
    return r0;
}

-(bool)containsCompleteTimeline {
    r0 = *(int8_t *)(int64_t *)&self->_containsCompleteTimeline;
    return r0;
}

-(long long)videoType {
    r0 = self->_videoType;
    return r0;
}

-(unsigned int)durationMS {
    r0 = *(int32_t *)(int64_t *)&self->_durationMS;
    return r0;
}

-(double)publishFrameTimeMS {
    r0 = self;
    return r0;
}

-(void *)mpdAccessibilityDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mpdAccessibilityDescription)), 0x0);
    return r0;
}

-(long long)firstAvTimeMS {
    r0 = self->_firstAvTimeMS;
    return r0;
}

-(void *)publishTime {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_publishTime)), 0x0);
    return r0;
}

-(void *)availabilityEndTime {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_availabilityEndTime)), 0x0);
    return r0;
}

-(long long)currentServerTimeMs {
    r0 = self->_currentServerTimeMs;
    return r0;
}

-(void *)loapStreamId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loapStreamId)), 0x0);
    return r0;
}

-(long long)lastVideoFrameTimeMs {
    r0 = self->_lastVideoFrameTimeMs;
    return r0;
}

-(void *)loapStreamType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loapStreamType)), 0x0);
    return r0;
}

-(void *)videoTracks {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoTracks)), 0x0);
    return r0;
}

-(void *)audioTracks {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_audioTracks)), 0x0);
    return r0;
}

+(void *)urlFromBase:(void *)arg2 suffix:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = @class(NSURLComponents);
    r23 = [arg3 retain];
    r19 = [[r21 alloc] initWithString:r23];
    [r23 release];
    r21 = [NSURLComponents alloc];
    r22 = [[r19 path] retain];
    r23 = [[r20 URLByAppendingPathComponent:r22] retain];
    [r20 release];
    r20 = [r21 initWithURL:r23 resolvingAgainstBaseURL:0x0];
    [r23 release];
    [r22 release];
    r21 = [[r19 query] retain];
    [r20 setQuery:r21];
    [r21 release];
    r0 = [r20 URL];
    r0 = [r0 retain];
    r22 = [[r0 standardizedURL] retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(struct _NSRange)rangeFromStartToEndString:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 componentsSeparatedByString:@"-"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x2) {
            r22 = @selector(count);
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMediaPresentationDescription/FNFMediaPresentationDescription/FNFMediaPresentationDescription.mm" lineNumber:0x352 format:@"%@ unexpected format for string:%@"];
            if (objc_msgSend(r20, r22) < 0x2) {
                    r21 = 0x0;
                    r22 = 0x0;
            }
            else {
                    r0 = [r20 objectAtIndexedSubscript:0x0];
                    r0 = [r0 retain];
                    r25 = @selector(intValue);
                    r22 = objc_msgSend(r0, r25);
                    [r0 release];
                    r0 = [r20 objectAtIndexedSubscript:0x1];
                    r0 = [r0 retain];
                    r23 = objc_msgSend(r0, r25);
                    [r0 release];
                    if (r22 >= r23) {
                            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMediaPresentationDescription/FNFMediaPresentationDescription/FNFMediaPresentationDescription.mm" lineNumber:0x35b format:@"%@ unexpected format for string:%@, loc:%u, len:%u"];
                            r23 = r22;
                    }
                    r21 = r22;
                    r22 = (r23 - r22) + 0x1;
            }
    }
    else {
            r0 = [r20 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r25 = @selector(intValue);
            r22 = objc_msgSend(r0, r25);
            [r0 release];
            r0 = [r20 objectAtIndexedSubscript:0x1];
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r25);
            [r0 release];
            if (r22 >= r23) {
                    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMediaPresentationDescription/FNFMediaPresentationDescription/FNFMediaPresentationDescription.mm" lineNumber:0x35b format:@"%@ unexpected format for string:%@, loc:%u, len:%u"];
                    r23 = r22;
            }
            r21 = r22;
            r22 = (r23 - r22) + 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)prettyPrintXML:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = [r0 UTF8String];
    [r0 release];
    if (r19 != 0x0) {
            r0 = sub_100021280();
            r0 = xmlReadMemory(r19, r0, 0x0, 0x0, 0x4100);
            xmlCopyNode(xmlDocGetRootElement(r0), 0x1);
            xmlFreeDoc(r0);
            r0 = xmlBufferCreate();
            r19 = r0;
            if ((xmlNodeDump(r0, 0x0, r20, 0x0, 0x1) & 0xffffffff80000000) == 0x0) {
                    [NSString alloc];
                    xmlBufferContent(r19);
                    xmlBufferLength(r19);
                    asm { sxtw       x3, w0 };
                    r20 = [r20 initWithBytes:r21 length:r3 encoding:0x4];
            }
            else {
                    r20 = 0x0;
            }
            xmlBufferFree(r19);
            r21 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
            r19 = [[r20 stringByTrimmingCharactersInSet:r21] retain];
            [r20 release];
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getKeyId:(struct node *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_50 = 0x0;
    r8 = *arg2;
    if (r8 == 0x0) goto loc_100b69e0c;

loc_100b69dc8:
    r21 = *(r8 + 0x58);
    if (r21 == 0x0) goto loc_100b69e00;

loc_100b69dd8:
    if (strcmp(*(r21 + 0x10), "default_KID") != 0x0) goto loc_100b69df8;

loc_100b69de8:
    r8 = *(r21 + 0x18);
    if (r8 == 0x0) goto loc_100b69df8;

loc_100b69df0:
    r19 = *(r8 + 0x50);
    if (r19 != 0x0) goto loc_100b69e84;

loc_100b69df8:
    r21 = *(r21 + 0x30);
    if (r21 != 0x0) goto loc_100b69dd8;

loc_100b69e00:
    r9 = 0x0;
    r8 = 0x0;
    goto loc_100b69e10;

loc_100b69e10:
    r10 = sign_extend_64(r8);
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r8;
            }
            else {
                    r9 = 0x0;
            }
    }
    if (r9 != 0x0) {
            r8 = var_50;
            r9 = &var_50;
            if (r10 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r9;
                    }
                    else {
                            r2 = r8;
                    }
            }
            r19 = [[NSString stringWithUTF8String:r2] retain];
            r8 = var_39;
    }
    else {
            r19 = 0x0;
    }
    if ((sign_extend_64(r8) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    r0 = [r19 autorelease];
    return r0;

loc_100b69e84:
    var_38 = 0x0;
    var_28 = 0x0;
    r0 = sub_100021280();
    if (r0 >= -0x10) goto loc_100b69f1c;

loc_100b69e9c:
    r20 = r0;
    if (r0 < 0x17) {
            r21 = &var_38;
            if (r20 != 0x0) {
                    memcpy(r21, r19, r20);
            }
    }
    else {
            r0 = operator new();
            r21 = r0;
            var_28 = r20 + 0x10 & 0xfffffffffffffff0 | 0x8000000000000000;
            var_38 = r0;
            memcpy(r21, r19, r20);
    }
    *(int8_t *)(r21 + r20) = 0x0;
    var_39 = 0x0;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::reserve();
    var_50 = var_38;
    r8 = var_28 >> 0x38;
    r9 = 0x0;
    goto loc_100b69e10;

loc_100b69f1c:
    r0 = std::__1::__basic_string_common<true>::__throw_length_error();
    return r0;

loc_100b69e0c:
    r9 = 0x0;
    goto loc_100b69e10;
}

+(void *)getPssh:(struct node *)arg2 {
    r31 = r31 - 0xc0;
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
    var_A0 = 0x0;
    var_A8 = 0x0;
    r8 = *arg2;
    if (r8 == 0x0) goto loc_100b69c6c;

loc_100b69a84:
    r20 = *(r8 + 0x18);
    if (r20 == 0x0) goto loc_100b69c6c;

loc_100b69a8c:
    r21 = *(r8 + 0x20);
    r19 = &var_70 + 0x8;
    r22 = &var_90;
    goto loc_100b69a9c;

loc_100b69a9c:
    sub_100b6a148(r19, &var_90);
    r0 = var_A0;
    if (r0 < 0x0) {
            sub_100b6a1ac(r0, &var_70);
            var_A0 = var_A0 + 0x28;
    }
    else {
            r0 = sub_100b6a3a8(&var_A8, &var_70);
    }
    sub_100b6a0d4(&var_70);
    if (r22 == 0x0) goto loc_100b69b00;

loc_100b69af0:
    if (0x0 == 0x0) goto loc_100b69b0c;

loc_100b69af4:
    r8 = *0x0;
    r8 = *(r8 + 0x28);
    goto loc_100b69b08;

loc_100b69b08:
    (r8)();
    goto loc_100b69b0c;

loc_100b69b0c:
    if (r20 == r21) goto loc_100b69b1c;

loc_100b69b14:
    r20 = *(r20 + 0x30);
    goto loc_100b69a9c;

loc_100b69b1c:
    r24 = var_A8;
    r25 = var_A0;
    if (r24 == r25) goto loc_100b69c6c;

loc_100b69b38:
    r8 = *r24;
    if (r8 == 0x0) goto loc_100b69b7c;

loc_100b69b40:
    r20 = *(r8 + 0x10);
    if (r20 == 0x0) goto loc_100b69b7c;

loc_100b69b48:
    var_70 = 0x0;
    var_60 = 0x0;
    r0 = sub_100021280();
    if (r0 >= -0x10) goto loc_100b69d9c;

loc_100b69b60:
    r21 = r0;
    if (r0 < 0x17) {
            r22 = &var_70;
            if (r21 != 0x0) {
                    memcpy(r22, r20, r21);
            }
    }
    else {
            r0 = operator new();
            r22 = r0;
            var_60 = r21 + 0x10 & 0xfffffffffffffff0 | 0x8000000000000000;
            var_70 = r0;
            memcpy(r22, r20, r21);
    }
    *(int8_t *)(r22 + r21) = 0x0;
    var_90 = var_70;
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) goto loc_100b69bf8;

loc_100b69bd4:
    if ((var_90 ^ 0x68737370 | var_8C) == 0x0) goto loc_100b69c18;

loc_100b69be8:
    r24 = r24 + 0x28;
    if (r25 != r24) goto loc_100b69b38;

loc_100b69c6c:
    r20 = 0x0;
    goto loc_100b69c70;

loc_100b69c70:
    var_48 = **___stack_chk_guard;
    sub_100b6a07c(&var_A8);
    if (**___stack_chk_guard == var_48) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b69c18:
    r8 = *r24;
    if (r8 == 0x0) goto loc_100b69cb0;

loc_100b69c28:
    r8 = *(r8 + 0x18);
    if (r8 == 0x0) goto loc_100b69cb0;

loc_100b69c30:
    r20 = *(r8 + 0x50);
    if (r20 == 0x0) goto loc_100b69cb0;

loc_100b69c38:
    var_70 = 0x0;
    var_60 = 0x0;
    r0 = sub_100021280();
    if (r0 >= -0x10) goto loc_100b69d9c;

loc_100b69c50:
    r21 = r0;
    if (r0 < 0x17) {
            r22 = &var_70;
            if (r21 != 0x0) {
                    memcpy(r22, r20, r21);
            }
    }
    else {
            r0 = operator new();
            r22 = r0;
            var_60 = r21 + 0x10 & 0xfffffffffffffff0 | 0x8000000000000000;
            var_70 = r0;
            memcpy(r22, r20, r21);
    }
    *(int8_t *)(r22 + r21) = 0x0;
    var_90 = var_70;
    r9 = var_90;
    r8 = &var_90;
    if (sign_extend_64(var_79) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    goto loc_100b69d18;

loc_100b69d18:
    r0 = [NSString stringWithUTF8String:r2];
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    r21 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r20 = [[r19 stringByTrimmingCharactersInSet:r21] retain];
    [r21 release];
    [r19 release];
    goto loc_100b69c70;

loc_100b69d9c:
    r0 = std::__1::__basic_string_common<true>::__throw_length_error();
    return r0;

loc_100b69cb0:
    r2 = &var_90;
    var_90 = 0x0;
    goto loc_100b69d18;

loc_100b69bf8:
    strcmp(var_90, "pssh");
    operator delete(var_90);
    if (r21 != 0x0) goto loc_100b69be8;
    goto loc_100b69c18;

loc_100b69b7c:
    var_90 = 0x0;
    goto loc_100b69bd4;

loc_100b69b00:
    r8 = *0x0;
    r8 = *(r8 + 0x20);
    goto loc_100b69b08;
}

+(void *)presentationDescriptionWithContentsOfXml:(void *)arg2 mpdUrl:(void *)arg3 error:(void * *)arg4 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x590;
    var_368 = arg4;
    r26 = self;
    r19 = [arg2 retain];
    var_3E8 = [arg3 retain];
    pthread_mutex_lock(0x1011c8c88);
    r8 = 0x1011ddd38;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddd40, "/dash:MPD/@type='dynamic'");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddd68;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddd70, "/dash:MPD/@mediaPresentationDuration");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddd98;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddda0, "number(/dash:MPD/@publishFrameTime)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011dddc8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011dddd0, "/dash:MPD/@availabilityEndTime");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011dddf8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011dde00, "/dash:MPD/@publishTime");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011dde28;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011dde30, "string(/dash:MPD/@firstAvTimeMs)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011dde58;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011dde60, "string(/dash:MPD/@currentServerTimeMs)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011dde88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011dde90, "string(/dash:MPD/@lastVideoFrameTs)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddeb8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddec0, "/dash:MPD/@profiles");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddee8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddef0, "/dash:MPD/@FBWasLive");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddf18;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddf20, "/dash:MPD/@FBMS");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddf48;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddf50, "/dash:MPD/@FBIsLiveTemplated");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddf78;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddf80, "number(/dash:MPD/@usingASRCaptions)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddfa8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddfb0, "string(/dash:MPD/@loapStreamId)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011ddfd8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011ddfe0, "string(/dash:MPD/@loapStreamType)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de008;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de010, "//dash:Representation");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de038;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de040, "//dash:Accessibility");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de068;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de070, "string(@id)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de098;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de0a0, "string(@mimeType)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de0c8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de0d0, "string(@codecs)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de0f8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de100, "number(@width)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de128;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de130, "number(@height)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de158;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de160, "number(@bandwidth)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de188;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de190, "string(@FBQualityLabel)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de1b8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de1c0, "string(@FBAbrPolicyTags)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de1e8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de1f0, "translate(normalize-space(dash:BaseURL/text()), ' ', '')");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de218;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de220, "string(dash:FBInitializationBinary/text())");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de248;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de250, "translate(normalize-space(//dash:BaseURL/text()), ' ', '')");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de278;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de280, "//dash:AdaptationSet");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de2a8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de2b0, "dash:ContentProtection");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de2d8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de2e0, "string(@FBPlaybackResolutionMos)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de308;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de310, "string(../@FBProjection)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de338;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de340, "string(dash:AudioChannelConfiguration[@schemeIdUri=\"tag:facebook.com,2016-08-16:fb360:audio:channel_layout\"]/@value)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de368;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de370, "string(@schemeIdUri)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r20 = r29 - 0xf8;
    r0 = objc_retainAutorelease(r19);
    r21 = r0;
    var_F8 = xmlReadMemory([r0 bytes], [r21 length], 0x0, 0x0, 0x0);
    var_D8 = (r29 - 0xf8) + 0x8;
    sub_100b6ad28(&var_120, (r29 - 0xf8) + 0x8);
    r0 = &var_120;
    if (&var_120 == r0) goto loc_100b65064;

loc_100b65054:
    if (r0 == 0x0) goto loc_100b65070;

loc_100b65058:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100b6506c;

loc_100b6506c:
    (r8)();
    goto loc_100b65070;

loc_100b65070:
    r0 = __xmlLastError();
    q0 = *(int128_t *)r0;
    q1 = *(int128_t *)(r0 + 0x10);
    *(int128_t *)(r20 + 0x28) = q0;
    *(int128_t *)(r20 + 0x38) = q1;
    q0 = *(int128_t *)(r0 + 0x20);
    q1 = *(int128_t *)(r0 + 0x30);
    q2 = *(int128_t *)(r0 + 0x40);
    *(int128_t *)(r20 + 0x48) = q0;
    *(int128_t *)(r20 + 0x68) = q2;
    *(int128_t *)(r20 + 0x58) = q1;
    r0 = var_F8;
    if (r0 == 0x0) goto loc_100b650f0;

loc_100b650a4:
    r19 = &var_140;
    var_128 = r19;
    var_120 = xmlXPathNewContext(r0);
    r0 = var_128;
    if (r0 != 0x0) {
            if (r19 != r0) {
                    var_100 = (*(*r0 + 0x10))();
            }
            else {
                    var_100 = &var_120 + 0x8;
                    (*(*r0 + 0x18))();
            }
            r0 = var_128;
    }
    else {
            var_100 = 0x0;
    }
    if (&var_140 == r0) goto loc_100b65250;

loc_100b65240:
    if (r0 == 0x0) goto loc_100b6525c;

loc_100b65244:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100b65258;

loc_100b65258:
    (r8)();
    goto loc_100b6525c;

loc_100b6525c:
    r2 = 0x0;
    xmlXPathRegisterNs(var_120, "dash", [@"urn:mpeg:dash:schema:mpd:2011" UTF8String]);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de250, var_120));
    r20 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    if (sign_extend_64(var_189) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r20;
            }
            else {
                    r2 = r9;
            }
    }
    r0 = [NSString stringWithUTF8String:r2];
    r29 = r29;
    var_430 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddd40, var_120));
    var_4D4 = xmlXPathCastToBoolean(var_168);
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddf20, var_120));
    var_4D8 = xmlXPathCastToBoolean(var_168);
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddd70, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    if (sign_extend_64(var_189) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r20;
            }
            else {
                    r2 = r9;
            }
    }
    r0 = [NSString stringWithUTF8String:r2];
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_308 = r26;
    var_450 = r19;
    stack[-1112] = r21;
    if (r19 == 0x0) goto loc_100b65438;

loc_100b653dc:
    r0 = [r19 retain];
    r23 = r0;
    if ([r0 rangeOfString:r2] == 0x7fffffffffffffff || [r23 rangeOfString:r2] == 0x7fffffffffffffff) goto loc_100b65428;

loc_100b6896c:
    [r23 rangeOfString:r2];
    r0 = [r23 substringFromIndex:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r23 release];
    r22 = @selector(length);
    if (objc_msgSend(r24, r22) < 0x2) goto loc_100b68be8;

loc_100b689c8:
    var_2D0 = 0x0;
    var_2C8 = 0x0;
    goto loc_100b68a3c;

loc_100b68a3c:
    r23 = [[r24 substringFromIndex:r2] retain];
    [r24 release];
    r25 = [[NSScanner alloc] initWithString:r23];
    [NSString new];
    r0 = @class(NSCharacterSet);
    r0 = [r0 characterSetWithCharactersInString:@"0123456789."];
    r29 = r29;
    [r0 retain];
    [r25 scanCharactersFromSet:r2 intoString:r3];
    r21 = [r24 retain];
    [r24 release];
    [r28 release];
    r24 = objc_msgSend(r23, r19) + r19;
    if (r24 > objc_msgSend(r23, r22)) goto loc_100b68c24;

loc_100b68b10:
    r0 = [r23 substringFromIndex:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r23 release];
    r8 = [r24 characterAtIndex:r2] << 0x18;
    if (r8 != 0x53000000) {
            if (r8 != 0x4d000000) {
                    if (r8 == 0x48000000) {
                            var_2D0 = [r21 intValue];
                    }
            }
            else {
                    var_2C8 = [r21 intValue];
            }
    }
    else {
            [r21 floatValue];
    }
    r27 = @selector(length);
    [r21 release];
    [r25 release];
    r0 = objc_msgSend(r24, r27);
    r22 = r27;
    if (r0 >= 0x2) goto loc_100b68a3c;

loc_100b68bcc:
    r23 = r24;
    r26 = var_308;
    r28 = @selector(stringWithUTF8String:);
    r9 = var_2C8;
    goto loc_100b68bf8;

loc_100b68bf8:
    asm { madd       w9, w10, w8, w9 };
    asm { ucvtf      s0, w8 };
    r8 = 0x447a0000;
    asm { fcvtzu     w8, s0 };
    var_500 = r8;
    goto loc_100b6542c;

loc_100b6542c:
    [r23 release];
    goto loc_100b6543c;

loc_100b6543c:
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddda0, var_120));
    r20 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_458 = r19;
    if (r19 != 0x0) {
            r8 = &@selector(alloc);
            objc_msgSend(r19, *(r8 + 0x5f0));
            asm { fcvtzu     x8, d0 };
            var_4E0 = r8;
    }
    else {
            var_4E0 = 0x0;
    }
    r8 = 0x1011de398;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011de3a0 = [NSDateFormatter new];
                    __cxa_guard_release();
            }
    }
    r19 = [[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"] retain];
    [*0x1011de3a0 setLocale:r19];
    [r19 release];
    [*0x1011de3a0 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    r0 = [NSTimeZone timeZoneForSecondsFromGMT:0x0];
    r29 = r29;
    r19 = [r0 retain];
    [*0x1011de3a0 setTimeZone:r19];
    [r19 release];
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011dddd0, var_120));
    r22 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_460 = r19;
    if (r19 != 0x0) {
            r0 = *0x1011de3a0;
            r0 = [r0 dateFromString:r19];
            r29 = r29;
            var_468 = [r0 retain];
    }
    else {
            var_468 = 0x0;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011dde00, var_120));
    r23 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_470 = r19;
    if (r19 != 0x0) {
            r0 = *0x1011de3a0;
            r0 = [r0 dateFromString:r19];
            r29 = r29;
            var_478 = [r0 retain];
    }
    else {
            var_478 = 0x0;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011dde30, var_120));
    r20 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_480 = r19;
    if (r19 != 0x0) {
            if ([r19 compare:@"NaN"] != 0x0) {
                    var_4E8 = [r19 longLongValue];
            }
            else {
                    var_4E8 = 0x0;
            }
    }
    else {
            var_4E8 = 0x0;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011dde60, var_120));
    r22 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_488 = r19;
    if (r19 != 0x0) {
            if ([r19 compare:@"NaN"] != 0x0) {
                    var_4F0 = [r19 longLongValue];
            }
            else {
                    var_4F0 = 0x0;
            }
    }
    else {
            var_4F0 = 0x0;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011dde90, var_120));
    r22 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_490 = r19;
    if (r19 != 0x0 && [r19 compare:@"NaN"] != 0x0) {
            var_4F8 = [r19 longLongValue];
    }
    else {
            var_4F8 = 0x0;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de040, var_120));
    sub_100b6a830(&var_1A0);
    sub_100b6a7bc(&var_168);
    r22 = var_1A0;
    r23 = var_198;
    if (r22 != r23) {
            r19 = 0x0;
            r25 = &var_1C8;
            do {
                    r1 = var_120;
                    if (r1 != 0x0) {
                            *(r1 + 0x8) = *r22;
                    }
                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de370, r1));
                    r0 = sub_100b6a714(&var_1C8, var_168);
                    r9 = var_1C8;
                    r0 = objc_msgSend(@class(NSString), r28);
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 release];
                    if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1C8);
                    }
                    sub_100b6a7bc(&var_168);
                    r22 = r22 + 0x28;
                    r19 = r20;
            } while (r23 != r22);
    }
    else {
            r20 = 0x0;
    }
    var_498 = r20;
    r20 = &var_1A0;
    sub_100b6a07c(&var_1A0);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddec0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_400 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddef0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_420 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddf50, var_120));
    r20 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r20 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r19 = [var_400 containsString:@"isoff-on-demand"];
    r1 = @selector(isEqualToString:);
    var_360 = r1;
    r0 = objc_msgSend(r20, r1);
    var_4A0 = r20;
    if ((r0 & 0x1) == 0x0 && r19 != 0x0) {
            r0 = objc_msgSend(var_420, var_360);
    }
    var_4B4 = r0;
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddf80, var_120));
    var_4FC = xmlXPathCastToBoolean(var_168);
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddfb0, var_120));
    r20 = &var_1A0;
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_4A8 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011ddfe0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_4B0 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r0 = @class(NSMutableArray);
    r19 = @selector(new);
    var_3D8 = objc_msgSend(r0, r19);
    var_390 = objc_msgSend(@class(NSMutableArray), r19);
    var_290 = objc_msgSend(@class(NSMutableDictionary), r19);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de280, var_120));
    sub_100b6a830(&var_1A0);
    sub_100b6a7bc(&var_168);
    r20 = var_1A0;
    r19 = var_198;
    if (r20 != r19) {
            r23 = 0x0;
            r21 = &var_250;
            var_298 = r19;
            do {
                    r1 = var_120;
                    if (r1 != 0x0) {
                            *(r1 + 0x8) = *r20;
                    }
                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de2b0, r1));
                    r0 = sub_100b6a830(&var_1C8);
                    sub_100b6a7bc(&var_168);
                    if ((SAR(var_1C0 - var_1C8, 0x3)) * 0xcccccccccccccccd >= 0x2) {
                            r28 = [[r26 getKeyId:r2] retain];
                            r0 = [r26 getPssh:r2];
                            r29 = r29;
                            r22 = [r0 retain];
                            r8 = 0x1011de3a8;
                            asm { ldarb      w8, [x8] };
                            if ((r8 & 0x1) == 0x0) {
                                    if (__cxa_guard_acquire() != 0x0) {
                                            sub_100b6a5c4(0x1011de3b0, "dash:Representation");
                                            __cxa_atexit();
                                            __cxa_guard_release();
                                    }
                            }
                            sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de3b0, var_120));
                            sub_100b6a830(&var_238);
                            sub_100b6a7bc(&var_168);
                            r19 = var_238;
                            r26 = var_230;
                            if (r19 != r26) {
                                    do {
                                            r1 = var_120;
                                            if (r1 != 0x0) {
                                                    *(r1 + 0x8) = *r19;
                                            }
                                            sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de070, r1));
                                            r0 = sub_100b6a714(&var_250, var_168);
                                            r9 = var_250;
                                            r0 = [NSString stringWithUTF8String:r2];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            if ((sign_extend_64(var_239) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_250);
                                            }
                                            sub_100b6a7bc(&var_168);
                                            if (r28 != 0x0 && r22 != 0x0 && r24 != 0x0) {
                                                    r0 = [NSArray arrayWithObjects:&var_178 count:0x2];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    [var_290 setObject:r2 forKeyedSubscript:r3];
                                                    [r25 release];
                                            }
                                            [r24 release];
                                            r19 = r19 + 0x28;
                                    } while (r26 != r19);
                            }
                            sub_100b6a07c(&var_238);
                            [r22 release];
                            [r28 release];
                            r23 = 0x1;
                            r26 = var_308;
                            r28 = @selector(stringWithUTF8String:);
                            r19 = var_298;
                    }
                    sub_100b6a07c(&var_1C8);
                    r20 = r20 + 0x28;
            } while (r20 != r19);
            r22 = 0xcccccccccccccccd;
    }
    else {
            r23 = 0x0;
    }
    r27 = &var_1A0;
    sub_100b6a07c(&var_1A0);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de010, var_120));
    sub_100b6a830(&var_238);
    sub_100b6a7bc(&var_168);
    r24 = var_238;
    var_318 = var_230;
    if (r24 == var_230) goto loc_100b686c4;

loc_100b65fe0:
    var_340 = 0x0;
    r21 = 0x0;
    var_394 = 0x0;
    r10 = &@selector(alloc);
    var_370 = *(r10 + 0xce8);
    var_384 = r23;
    goto loc_100b660d8;

loc_100b660d8:
    r1 = var_120;
    if (r1 != 0x0) {
            *(r1 + 0x8) = *r24;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de070, r1));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r20 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r8 = 0x1011de000;
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*(r8 + 0x100), var_120));
    xmlXPathCastToNumber(var_168);
    asm { fcvtzu     w8, d0 };
    if (OVERFLOW(d0 - d0)) {
            if (!CPU_FLAGS & O) {
                    r8 = 0x1011de000;
            }
            else {
                    r8 = 0x0;
            }
    }
    var_2F4 = r8;
    sub_100b6a7bc(&var_168);
    r8 = 0x1011de000;
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*(r8 + 0x130), var_120));
    xmlXPathCastToNumber(var_168);
    asm { fcvtzu     w8, d0 };
    if (OVERFLOW(d0 - d0)) {
            if (!CPU_FLAGS & O) {
                    r8 = 0x1011de000;
            }
            else {
                    r8 = 0x0;
            }
    }
    var_2F8 = r8;
    sub_100b6a7bc(&var_168);
    r8 = 0x1011de000;
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*(r8 + 0x160), var_120));
    xmlXPathCastToNumber(var_168);
    asm { fcvtzu     w8, d0 };
    if (OVERFLOW(d0 - d0)) {
            if (!CPU_FLAGS & O) {
                    r8 = 0x1011de000;
            }
            else {
                    r8 = 0x0;
            }
    }
    var_2FC = r8;
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de190, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2A8 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de0a0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2A0 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de0d0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2B0 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de340, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2B8 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de220, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2E8 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de310, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2C0 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de2e0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_2C8 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de1c0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r0 = [r19 componentsSeparatedByString:@","];
    r29 = r29;
    var_2D0 = [r0 retain];
    var_298 = r20;
    var_2F0 = r19;
    if ((r23 & 0x1) != 0x0) {
            if (r20 != 0x0) {
                    r0 = [var_290 objectForKeyedSubscript:var_298];
                    r0 = [r0 retain];
                    var_2D8 = [[r0 firstObject] retain];
                    [r0 release];
                    r0 = [var_290 objectForKeyedSubscript:var_298];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 lastObject];
                    r29 = r29;
                    var_2E0 = [r0 retain];
                    [r19 release];
            }
            else {
                    var_2E0 = 0x0;
                    var_2D8 = 0x0;
            }
    }
    else {
            sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de2b0, var_120));
            r0 = sub_100b6a830(&var_1A0);
            sub_100b6a7bc(&var_168);
            if ((SAR(var_198 - var_1A0, 0x3)) * 0xcccccccccccccccd >= 0x2) {
                    var_2D8 = [[r26 getKeyId:@","] retain];
                    r0 = [r26 getPssh:var_1A0 + 0x28];
                    r29 = r29;
                    var_2E0 = [r0 retain];
            }
            else {
                    var_2E0 = 0x0;
                    var_2D8 = 0x0;
            }
            sub_100b6a07c(&var_1A0);
    }
    r8 = 0x1011de3d8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de3e0, "dash:SegmentBase");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de408;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de410, "dash:SegmentList");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de438;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de440, "dash:SegmentTemplate");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de440, var_120));
    r19 = xmlXPathCastToBoolean(var_168);
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de410, var_120));
    r20 = xmlXPathCastToBoolean(var_168);
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de3e0, var_120));
    xmlXPathCastToBoolean(var_168);
    sub_100b6a7bc(&var_168);
    if (r22 == 0x0) goto loc_100b66870;

loc_100b66780:
    if (r21 == 0x0 || r21 == 0x3) goto loc_100b6678c;

loc_100b66c24:
    r0 = sub_100b6a970(0x88ba, @"video type switch to SegmentBase");
    r29 = r29;
    goto loc_100b66c5c;

loc_100b66c5c:
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r19 = 0x0;
    r22 = 0x0;
    r20 = 0x0;
    *var_368 = r0;
    goto loc_100b66cac;

loc_100b66cac:
    [var_2E0 release];
    [var_2D8 release];
    [r19 release];
    [r22 release];
    [var_2D0 release];
    [var_2F0 release];
    [var_2C8 release];
    [var_2C0 release];
    [var_2E8 release];
    [var_2B8 release];
    [var_2B0 release];
    [var_2A0 release];
    [var_2A8 release];
    [var_298 release];
    if ((r20 & 0x1) == 0x0) goto loc_100b686d8;

loc_100b66d20:
    r24 = r24 + 0x28;
    if (r24 != var_318) goto loc_100b660d8;

loc_100b686e0:
    r19 = 0x1;
    goto loc_100b686e4;

loc_100b686e4:
    r23 = var_340;
    goto loc_100b686e8;

loc_100b686e8:
    sub_100b6a07c(&var_238);
    r27 = var_3D8;
    r28 = var_390;
    if (r19 != 0x0) {
            if (var_4FC != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            if (var_4D8 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r22 = 0x1;
                    }
            }
            if (var_4D4 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            r0 = [r26 alloc];
            r26 = var_4B0;
            r25 = var_4A8;
            r5 = r23 & 0x1;
            r22 = var_468;
            r23 = var_478;
            r24 = var_498;
            r19 = [r0 initWithAudioTracks:r27 videoTracks:r28 isDynamic:r19 isFragmented:r5 durationMS:var_500 videoType:r21 mpdAccessibilityDescription:r24 publishFrameTime:var_4E0 availabilityEndTime:r22 publishTime:r23 firstAvTimeMS:var_4E8 currentServerTimeMs:var_4F0 lastVideoFrameTimeMs:var_4F8 isPredictive:var_394 & 0x1 isManifestService:r25];
            r20 = var_450;
            r21 = stack[-1112];
    }
    else {
            r19 = 0x0;
            r20 = var_450;
            r21 = stack[-1112];
            r22 = var_468;
            r23 = var_478;
            r24 = var_498;
            r26 = var_4B0;
            r25 = var_4A8;
    }
    [var_290 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [var_4A0 release];
    [var_420 release];
    [var_400 release];
    [r24 release];
    [var_490 release];
    [var_488 release];
    [var_480 release];
    [r23 release];
    [var_470 release];
    [r22 release];
    [var_460 release];
    [var_458 release];
    [r20 release];
    [var_430 release];
    r0 = var_100;
    if (r0 == 0x0) goto loc_100b688bc;

loc_100b6886c:
    (*(*r0 + 0x30))();
    r0 = var_100;
    if (&var_120 + 0x8 == r0) goto loc_100b688a8;

loc_100b68898:
    if (r0 == 0x0) goto loc_100b688bc;

loc_100b6889c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100b688b0;

loc_100b688b0:
    (r8)();
    goto loc_100b688bc;

loc_100b688bc:
    r0 = var_D8;
    if (r0 == 0x0) goto loc_100b6890c;

loc_100b688c4:
    (*(*r0 + 0x30))();
    r0 = var_D8;
    if ((r29 - 0xf8) + 0x8 == r0) goto loc_100b68900;

loc_100b688f0:
    if (r0 == 0x0) goto loc_100b6890c;

loc_100b688f4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100b68908;

loc_100b68908:
    (r8)();
    goto loc_100b6890c;

loc_100b6890c:
    var_78 = **___stack_chk_guard;
    pthread_mutex_unlock(0x1011c8c88);
    [var_3E8 release];
    [r21 release];
    if (**___stack_chk_guard == var_78) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b68900:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100b68908;

loc_100b688a8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100b688b0;

loc_100b686d8:
    r19 = 0x0;
    goto loc_100b686e4;

loc_100b6678c:
    r8 = 0x1011de468;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de470, "string(dash:SegmentBase/@indexRange)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de498;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de4a0, "string(dash:SegmentBase/dash:Initialization/@range)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de4c8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de4d0, "string(dash:SegmentBase/@FBFirstSegmentRange)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de4f8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de500, "string(dash:SegmentBase/@FBSecondSegmentRange)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de4d0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r20 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r19 = @selector(rangeFromStartToEndString:);
    var_310 = r20;
    if (r20 != 0x0 && [r20 length] != 0x0) {
            var_338 = objc_msgSend(r26, r19);
            var_340 = r19;
    }
    else {
            var_338 = 0x0;
            var_340 = 0x7fffffffffffffff;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de500, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r20 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_328 = r24;
    if (r20 != 0x0 && [r20 length] != 0x0) {
            var_348 = objc_msgSend(r26, r19);
            var_350 = r19;
    }
    else {
            var_348 = 0x0;
            var_350 = 0x7fffffffffffffff;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de1f0, var_120));
    r0 = sub_100b6a714(&var_250, var_168);
    r9 = var_250;
    r8 = &var_250;
    var_380 = @selector(URLWithString:);
    r22 = [objc_msgSend(@class(NSString), r28) retain];
    r0 = objc_msgSend(@class(NSURL), var_380);
    r29 = r29;
    r25 = [r0 retain];
    sub_100b6a668(&var_1A0, xmlXPathCompiledEval(*0x1011de470, var_120));
    r0 = sub_100b6a714(&var_268, var_1A0);
    r9 = var_268;
    r8 = &var_268;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r23 = [r0 retain];
    r27 = objc_msgSend(r26, r19);
    r21 = r19;
    sub_100b6a668(&var_1C8, xmlXPathCompiledEval(*0x1011de4a0, var_120));
    r0 = sub_100b6a714(&var_280, var_1C8);
    r9 = var_280;
    r8 = &var_280;
    r24 = @class(NSString);
    r24 = [objc_msgSend(r24, r28) retain];
    r28 = r26;
    objc_msgSend(r26, r19);
    r0 = [FNFDashTrackMetadata segmentBaseMetadataWithId:r2 width:r3 height:r4 bandwidth:r5 abrPolicyTags:r6 qualityLabel:r7 mimeType:stack[-1536] codecs:stack[-1528] initializationUrl:stack[-1520] projection:stack[-1512] audioChannelConfiguration:stack[-1504] indexRange:stack[-1496] initializationRange:stack[-1488] firstSegmentRange:stack[-1480] secondSegmentRange:stack[-1472] pssh:stack[-1464] keyId:stack[-1456] playbackResolutionMos:stack[-1448]];
    r29 = r29;
    r19 = [r0 retain];
    [r24 release];
    if ((sign_extend_64(var_269) & 0xffffffff80000000) != 0x0) {
            operator delete(var_280);
    }
    sub_100b6a7bc(&var_1C8);
    [r23 release];
    r23 = var_384;
    r24 = var_328;
    if ((sign_extend_64(var_251) & 0xffffffff80000000) != 0x0) {
            operator delete(var_268);
    }
    sub_100b6a7bc(&var_1A0);
    [r25 release];
    [r22 release];
    r27 = &var_1A0;
    if ((sign_extend_64(var_239) & 0xffffffff80000000) != 0x0) {
            operator delete(var_250);
    }
    sub_100b6a7bc(&var_168);
    [r20 release];
    [var_310 release];
    var_310 = 0x0;
    var_340 = 0x1;
    r21 = 0x3;
    r26 = r28;
    r28 = @selector(stringWithUTF8String:);
    goto loc_100b66be4;

loc_100b66be4:
    r20 = var_360;
    goto loc_100b66be8;

loc_100b66be8:
    r22 = var_2A0;
    if (objc_msgSend(r22, r20) != 0x0) goto loc_100b66c94;

loc_100b66c04:
    if (objc_msgSend(r22, r20) == 0x0) goto loc_100b66c7c;

loc_100b66c1c:
    r0 = var_3D8;
    goto loc_100b66c98;

loc_100b66c98:
    [r0 addObject:r2];
    goto loc_100b66ca4;

loc_100b66ca4:
    r20 = 0x1;
    r22 = var_310;
    goto loc_100b66cac;

loc_100b66c7c:
    if (objc_msgSend(r22, r20) == 0x0) goto loc_100b672fc;

loc_100b66c94:
    r0 = var_390;
    goto loc_100b66c98;

loc_100b672fc:
    if (objc_msgSend(r22, r20) != 0x0) goto loc_100b66c1c;
    goto loc_100b66ca4;

loc_100b66870:
    if (r20 == 0x0) goto loc_100b66c3c;

loc_100b66874:
    if ((r21 & 0xfffffffffffffffd) == 0x0) goto loc_100b66d34;

loc_100b6687c:
    r0 = sub_100b6a970(0x88ba, @"video type switch to SegmentList");
    r29 = r29;
    goto loc_100b66c5c;

loc_100b66d34:
    r8 = 0x1011de528;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de530, "number(dash:SegmentList/@duration)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de558;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de560;
                    sub_100b6a5c4(r20, "string(dash:SegmentList/dash:Initialization/@sourceURL)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de588;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de590;
                    sub_100b6a5c4(r20, "dash:SegmentList/dash:SegmentURL");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de5b8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de5c0;
                    sub_100b6a5c4(r20, "dash:SegmentList/dash:SegmentTimeline/dash:S");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de5e8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de5f0;
                    sub_100b6a5c4(r20, "number(dash:SegmentList/@timescale)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de618;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de620;
                    sub_100b6a5c4(r20, "string(@d)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de648;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de650;
                    sub_100b6a5c4(r20, "string(@t)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de678;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r20 = 0x1011de680;
                    sub_100b6a5c4(r20, "string(@media)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de590, var_120));
    r0 = sub_100b6a830(&var_250);
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de5c0, var_120));
    r0 = sub_100b6a830(&var_268);
    sub_100b6a7bc(&var_168);
    r8 = var_260 - var_268;
    if (r8 != 0x0) {
            r10 = 0xcccccccccccccccd;
            r2 = (SAR(r8, 0x3)) * r10;
            r8 = (SAR(var_248 - var_250, 0x3)) * r10;
            if (r2 == r8) {
                    var_328 = r24;
                    r0 = [NSMutableArray arrayWithCapacity:r2];
                    r29 = r29;
                    r21 = [r0 retain];
                    r25 = var_250;
                    r26 = var_248;
                    r1 = var_120;
                    if (r1 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    if (r25 != r26) {
                            do {
                                    if ((r8 & 0x1) == 0x0) {
                                            *(r1 + 0x8) = *r25;
                                    }
                                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de680, r1));
                                    r0 = sub_100b6a714(&var_1A0, var_168);
                                    r9 = var_1A0;
                                    r24 = [objc_msgSend(@class(NSString), r28) retain];
                                    r0 = [NSURL URLWithString:r24];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r24 release];
                                    r8 = sign_extend_64(var_189);
                                    if ((r8 & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_1A0);
                                    }
                                    sub_100b6a7bc(&var_168);
                                    r0 = [r23 standardizedURL];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r21, r22);
                                    [r24 release];
                                    [r23 release];
                                    r25 = r25 + 0x28;
                                    r1 = var_120;
                                    if (r1 == 0x0) {
                                            if (CPU_FLAGS & E) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    r20 = @selector(standardizedURL);
                            } while (r26 != r25);
                    }
                    if ((r8 & 0x1) == 0x0) {
                            *(r1 + 0x8) = *var_328;
                    }
                    r0 = [NSMutableArray arrayWithCapacity:r2];
                    r29 = r29;
                    var_310 = [r0 retain];
                    r26 = var_268;
                    r22 = var_260;
                    if (r26 != r22) {
                            r19 = 0x0;
                            do {
                                    if ([r21 count] < r19) {
                                        break;
                                    }
                                    r1 = var_120;
                                    if (r1 != 0x0) {
                                            *(r1 + 0x8) = *r26;
                                    }
                                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de650, r1));
                                    xmlXPathCastToNumber(var_168);
                                    asm { fcvtzu     w8, d0 };
                                    if (OVERFLOW(d0 - d0)) {
                                            if (!CPU_FLAGS & O) {
                                                    r28 = 0x1011de000;
                                            }
                                            else {
                                                    r28 = 0x0;
                                            }
                                    }
                                    sub_100b6a7bc(&var_168);
                                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de620, var_120));
                                    xmlXPathCastToNumber(var_168);
                                    asm { fcvtzu     w8, d0 };
                                    if (OVERFLOW(d0 - d0)) {
                                            if (!CPU_FLAGS & O) {
                                                    r20 = 0x1011de000;
                                            }
                                            else {
                                                    r20 = 0x0;
                                            }
                                    }
                                    sub_100b6a7bc(&var_168);
                                    r23 = [FNFMpdTimelineEntry alloc];
                                    r0 = [r21 objectAtIndexedSubscript:r19];
                                    r29 = r29;
                                    r20 = [r23 initWithTime:r28 duration:r20 mediaUrl:[r0 retain]];
                                    objc_msgSend(var_310, r27);
                                    [r20 release];
                                    [r24 release];
                                    r19 = r19 + 0x1;
                                    r26 = r26 + 0x28;
                            } while (r22 != r26);
                    }
                    r1 = var_120;
                    r24 = var_328;
                    if (r1 != 0x0) {
                            *(r1 + 0x8) = *r24;
                    }
                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de560, r1));
                    r0 = sub_100b6a714(&var_280, var_168);
                    r9 = var_280;
                    r8 = &var_280;
                    var_380 = @selector(URLWithString:);
                    r20 = @class(NSURL);
                    r28 = @selector(stringWithUTF8String:);
                    r22 = [objc_msgSend(@class(NSString), r28) retain];
                    r0 = objc_msgSend(r20, var_380);
                    r29 = r29;
                    r23 = [r0 retain];
                    sub_100b6a668(&var_1A0, xmlXPathCompiledEval(*0x1011de5f0, var_120));
                    xmlXPathCastToNumber(var_1A0);
                    asm { fcvtzu     w8, d0 };
                    if (OVERFLOW(d0 - d0)) {
                            if (!CPU_FLAGS & O) {
                                    r20 = 0x1011de000;
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    r8 = 0x1011de000;
                    sub_100b6a668(&var_1C8, xmlXPathCompiledEval(*(r8 + 0x530), var_120));
                    xmlXPathCastToNumber(var_1C8);
                    asm { fcvtzu     w8, d0 };
                    if (OVERFLOW(d0 - d0)) {
                            if (!CPU_FLAGS & O) {
                                    r8 = 0x1011de000;
                            }
                            else {
                                    r8 = 0x0;
                            }
                    }
                    r27 = var_310;
                    r0 = [FNFDashTrackMetadata segmentListMetadataWithId:r2 width:r3 height:r4 bandwidth:r5 abrPolicyTags:r6 qualityLabel:r7 mimeType:stack[-1536] codecs:stack[-1528] initializationUrl:stack[-1520] projection:stack[-1512] audioChannelConfiguration:stack[-1504] timelineTimescale:stack[-1496] timelineDuration:stack[-1488] timelineEntries:stack[-1480] pssh:stack[-1472] keyId:stack[-1464] playbackResolutionMos:stack[-1456]];
                    r29 = r29;
                    r19 = [r0 retain];
                    sub_100b6a7bc(&var_1C8);
                    sub_100b6a7bc(&var_1A0);
                    [r23 release];
                    [r22 release];
                    r26 = var_308;
                    r23 = var_384;
                    if ((sign_extend_64(var_269) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_280);
                    }
                    r10 = 0xcccccccccccccccd;
                    sub_100b6a7bc(&var_168);
                    [r27 release];
                    [r21 release];
                    r20 = 0x1;
                    r27 = &var_1A0;
            }
            else {
                    r0 = sub_100b6a970(0x88b9, @"SegmentList: segment URL count does not match timeline count");
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r19 = 0x0;
                    r20 = 0x0;
                    *var_368 = r0;
            }
    }
    else {
            r0 = sub_100b6a970(0x88b9, @"SegmentList: segment URL count does not match timeline count");
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r19 = 0x0;
            r20 = 0x0;
            *var_368 = r0;
    }
    sub_100b6a07c(&var_268);
    sub_100b6a07c(&var_250);
    if ((r20 & 0x1) == 0x0) goto loc_100b67374;

loc_100b6735c:
    var_310 = 0x0;
    r21 = 0x2;
    goto loc_100b66be4;

loc_100b67374:
    r22 = 0x0;
    r20 = 0x0;
    r21 = 0x2;
    goto loc_100b66cac;

loc_100b66c3c:
    if (r19 == 0x0) goto loc_100b67368;

loc_100b66c40:
    if ((r21 & 0xfffffffffffffffb) == 0x0) goto loc_100b67380;

loc_100b66c48:
    r0 = sub_100b6a970(0x88ba, @"video type switch to SegmentTemplate");
    r29 = r29;
    goto loc_100b66c5c;

loc_100b67380:
    r8 = 0x1011de6a8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de6b0, "string(dash:SegmentTemplate/@initialization)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_4C0 = @selector(arrayWithCapacity:);
    r8 = 0x1011de6d8;
    asm { ldarb      w8, [x8] };
    r22 = var_4C0;
    r21 = var_370;
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de6e0, "string(dash:SegmentTemplate/@media)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de708;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de710, "translate(normalize-space(dash:FBRepresentationMPDURL/text()), ' ', '')");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de738;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de740, "number(dash:SegmentTemplate/@timescale)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de768;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de770, "dash:SegmentTemplate/dash:SegmentTimeline/dash:S");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de798;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de7a0, "string(dash:SegmentTemplate/dash:SegmentTimeline/@FBPredictedMedia)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de7c8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de7d0, "number(dash:SegmentTemplate/dash:SegmentTimeline/@FBPredictedMediaEndNumber)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de7f8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de800, "string(@d)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de828;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de830, "string(@t)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r8 = 0x1011de858;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    sub_100b6a5c4(0x1011de860, "string(@r)");
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de710, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r0 = [r19 length];
    var_550 = r19;
    if (r0 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 retain];
            var_508 = r0;
            [r0 release];
    }
    else {
            var_508 = 0x0;
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de1f0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    r0 = r19;
    if (var_4B4 != 0x0) {
            r0 = [r19 length];
            r8 = var_430;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r19;
                    }
                    else {
                            r0 = r8;
                    }
            }
    }
    var_558 = r19;
    var_510 = [r0 retain];
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de7a0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de7d0, var_120));
    xmlXPathCastToNumber(var_168);
    asm { fcvtzu     w8, d0 };
    if (OVERFLOW(d0 - d0)) {
            if (!CPU_FLAGS & O) {
                    r23 = 0x1011de000;
            }
            else {
                    r23 = 0x0;
            }
    }
    sub_100b6a7bc(&var_168);
    r0 = [r19 length];
    r2 = r19;
    r19 = var_510;
    var_428 = r2;
    if (r0 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 retain];
            [r0 release];
            r0 = r0;
            r22 = r22;
            if (r23 != 0x0 && r0 != 0x0) {
                    var_434 = r23;
                    var_568 = r0;
                    var_394 = 0x1;
            }
            else {
                    [r0 release];
                    var_434 = 0x0;
                    var_568 = 0x0;
            }
    }
    else {
            [r0 release];
            var_434 = 0x0;
            var_568 = 0x0;
    }
    r0 = [r19 length];
    if (r0 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            var_348 = [r0 retain];
    }
    else {
            r9 = var_508;
            r8 = var_3E8;
            if (r9 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r9;
                    }
                    else {
                            r0 = r8;
                    }
            }
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 URLByDeletingLastPathComponent];
            r29 = r29;
            r19 = [r0 retain];
            [r20 release];
            if (r19 != 0x0) {
                    r0 = [NSURLComponents alloc];
                    r0 = [r0 initWithURL:r2 resolvingAgainstBaseURL:r3];
                    [r0 setQuery:r2];
                    r0 = [r20 URL];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r19 release];
                    r0 = r21;
                    r21 = var_370;
                    r19 = [r0 retain];
                    [r20 release];
                    var_348 = r19;
                    [r19 release];
            }
            else {
                    var_348 = 0x0;
            }
    }
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de6b0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    r19 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    var_560 = r19;
    r3 = r19;
    r0 = [r26 urlFromBase:r2 suffix:r3];
    r29 = r29;
    var_310 = [r0 retain];
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de6e0, var_120));
    r0 = sub_100b6a714(&var_1A0, var_168);
    r9 = var_1A0;
    r0 = objc_msgSend(@class(NSString), r28);
    r29 = r29;
    var_3E0 = [r0 retain];
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_100b6a7bc(&var_168);
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de770, var_120));
    r0 = sub_100b6a830(&var_1A0);
    sub_100b6a7bc(&var_168);
    r0 = @class(NSMutableArray);
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    var_338 = [r0 retain];
    if ((var_394 & 0x1) != 0x0) {
            r0 = objc_msgSend(@class(NSMutableArray), r22);
            r29 = r29;
            var_440 = [r0 retain];
    }
    else {
            var_440 = 0x0;
    }
    r20 = @selector(urlFromBase:suffix:);
    r26 = var_348;
    var_328 = r24;
    r8 = var_1A0;
    r9 = var_198;
    r1 = var_120;
    if (r1 == 0x0) {
            if (CPU_FLAGS & E) {
                    r10 = 0x1;
            }
    }
    if (r9 != r8) {
            r19 = 0xcccccccccccccccd;
            r9 = 0x0;
            r23 = @selector(stringByReplacingOccurrencesOfString:withString:);
            r24 = 0x1;
            var_350 = r23;
            var_348 = r26;
            do {
                    if ((r10 & 0x1) == 0x0) {
                            *(r1 + 0x8) = *(r8 + r9 * 0x28);
                    }
                    r25 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de830, r1));
                    xmlXPathCastToNumber(var_168);
                    asm { fcvtzu     w8, d0 };
                    if (OVERFLOW(d0 - d0)) {
                            if (!CPU_FLAGS & O) {
                                    r25 = 0x1011de000;
                            }
                            else {
                                    r25 = 0x0;
                            }
                    }
                    sub_100b6a7bc(&var_168);
                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de800, var_120));
                    xmlXPathCastToNumber(var_168);
                    asm { fcvtzu     w8, d0 };
                    if (OVERFLOW(d0 - d0)) {
                            if (!CPU_FLAGS & O) {
                                    r21 = 0x1011de000;
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    sub_100b6a7bc(&var_168);
                    sub_100b6a668(&var_168, xmlXPathCompiledEval(*0x1011de860, var_120));
                    xmlXPathCastToNumber(var_168);
                    sub_100b6a7bc(&var_168);
                    if (!OVERFLOW(d8 - d8)) {
                            asm { fcvtzu     w19, d8 };
                            if (r19 != 0x0) {
                                    r21 = [[FNFMpdTimelineEntry alloc] initWithTime:r25 duration:r21 repetition:r19];
                                    [var_338 addObject:r21];
                            }
                            else {
                                    r0 = [NSString stringWithFormat:@"%u", r3];
                                    r0 = [r0 retain];
                                    r28 = r21;
                                    r21 = r0;
                                    r27 = [objc_msgSend(var_3E0, r23) retain];
                                    r23 = var_308;
                                    r0 = objc_msgSend(r23, r20);
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    r0 = [FNFMpdTimelineEntry alloc];
                                    var_3B4 = r28;
                                    r3 = r28;
                                    r28 = [r0 initWithTime:r2 duration:r3 mediaUrl:r4];
                                    [var_338 addObject:r28];
                                    [r28 release];
                                    if ((var_394 & 0x1) != 0x0) {
                                            r0 = [NSNumber numberWithInt:var_434 + r24 - (var_198 - var_1A0 >> 0x3) * 0xcccccccd];
                                            r0 = [r0 retain];
                                            r26 = r20;
                                            r28 = [[r0 stringValue] retain];
                                            [r0 release];
                                            r20 = [objc_msgSend(var_428, var_350) retain];
                                            [r27 release];
                                            r1 = r26;
                                            r26 = var_348;
                                            r0 = objc_msgSend(r23, r1);
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            [r19 release];
                                            r0 = [FNFMpdTimelineEntry alloc];
                                            r3 = var_3B4;
                                            r19 = [r0 initWithTime:r2 duration:r3 mediaUrl:r4];
                                            [var_440 addObject:r19];
                                            [r19 release];
                                            [r28 release];
                                            r27 = r20;
                                            r19 = r23;
                                            r20 = @selector(urlFromBase:suffix:);
                                            r28 = @selector(stringWithUTF8String:);
                                    }
                                    else {
                                            r28 = @selector(stringWithUTF8String:);
                                            r26 = var_348;
                                    }
                                    [r19 release];
                                    [r27 release];
                                    r27 = &var_1A0;
                                    r23 = var_350;
                            }
                    }
                    else {
                            r0 = [NSString stringWithFormat:@"%u", r3];
                            r0 = [r0 retain];
                            r28 = r21;
                            r21 = r0;
                            r27 = [objc_msgSend(var_3E0, r23) retain];
                            r23 = var_308;
                            r0 = objc_msgSend(r23, r20);
                            r29 = r29;
                            r19 = [r0 retain];
                            r0 = [FNFMpdTimelineEntry alloc];
                            var_3B4 = r28;
                            r3 = r28;
                            r28 = [r0 initWithTime:r2 duration:r3 mediaUrl:r4];
                            [var_338 addObject:r28];
                            [r28 release];
                            if ((var_394 & 0x1) != 0x0) {
                                    r0 = [NSNumber numberWithInt:var_434 + r24 - (var_198 - var_1A0 >> 0x3) * 0xcccccccd];
                                    r0 = [r0 retain];
                                    r26 = r20;
                                    r28 = [[r0 stringValue] retain];
                                    [r0 release];
                                    r20 = [objc_msgSend(var_428, var_350) retain];
                                    [r27 release];
                                    r1 = r26;
                                    r26 = var_348;
                                    r0 = objc_msgSend(r23, r1);
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r19 release];
                                    r0 = [FNFMpdTimelineEntry alloc];
                                    r3 = var_3B4;
                                    r19 = [r0 initWithTime:r2 duration:r3 mediaUrl:r4];
                                    [var_440 addObject:r19];
                                    [r19 release];
                                    [r28 release];
                                    r27 = r20;
                                    r19 = r23;
                                    r20 = @selector(urlFromBase:suffix:);
                                    r28 = @selector(stringWithUTF8String:);
                            }
                            else {
                                    r28 = @selector(stringWithUTF8String:);
                                    r26 = var_348;
                            }
                            [r19 release];
                            [r27 release];
                            r27 = &var_1A0;
                            r23 = var_350;
                    }
                    [r21 release];
                    r9 = r24;
                    r8 = var_1A0;
                    r10 = SAR(var_198 - r8, 0x3);
                    r11 = r10 * 0xcccccccccccccccd;
                    r1 = var_120;
                    if (r1 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r10 = 0x1;
                            }
                    }
                    COND = r11 > zero_extend_64(r24);
                    r24 = r24 + 0x1;
                    r21 = var_370;
            } while (COND);
    }
    r24 = var_328;
    if ((r10 & 0x1) == 0x0) {
            *(r1 + 0x8) = *r24;
    }
    r26 = var_308;
    r0 = objc_msgSend(r26, r20);
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r21);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r20;
    r20 = r0;
    [r19 release];
    r23 = var_384;
    if ((var_394 & 0x1) != 0x0) {
            r0 = objc_msgSend(r26, r22);
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r21);
            r29 = r29;
            r0 = [r0 retain];
            r0 = [r0 retain];
            r21 = r0;
            [r0 release];
            [r19 release];
    }
    else {
            r21 = 0x0;
    }
    r8 = 0x1011de000;
    sub_100b6a668(&var_168, xmlXPathCompiledEval(*(r8 + 0x740), var_120));
    xmlXPathCastToNumber(var_168);
    asm { fcvtzu     w8, d0 };
    if (OVERFLOW(d0 - d0)) {
            if (!CPU_FLAGS & O) {
                    r8 = 0x1011de000;
            }
            else {
                    r8 = 0x0;
            }
    }
    r0 = [FNFDashTrackMetadata segmentTemplateMetadataWithId:r2 width:r3 height:r4 bandwidth:r5 abrPolicyTags:r6 qualityLabel:r7 mimeType:stack[-1536] codecs:stack[-1528] initializationUrl:stack[-1520] projection:stack[-1512] audioChannelConfiguration:stack[-1504] timelineTimescale:stack[-1496] timelineEntries:stack[-1488] predictiveTimelineEntries:stack[-1480] encodedInitData:stack[-1472] mpdUrl:stack[-1464] mediaUrlTemplate:stack[-1456]];
    r29 = r29;
    r19 = [r0 retain];
    sub_100b6a7bc(&var_168);
    [r21 release];
    [r20 release];
    [var_440 release];
    [var_338 release];
    sub_100b6a07c(&var_1A0);
    [var_3E0 release];
    [var_560 release];
    [var_348 release];
    [var_568 release];
    [var_428 release];
    [var_510 release];
    [var_558 release];
    [var_508 release];
    [var_550 release];
    r21 = 0x4;
    r20 = var_360;
    r26 = var_308;
    goto loc_100b66be8;

loc_100b67368:
    r19 = 0x0;
    var_310 = 0x0;
    goto loc_100b66be4;

loc_100b686c4:
    var_394 = 0x0;
    r21 = 0x0;
    r23 = 0x0;
    r19 = 0x1;
    goto loc_100b686e8;

loc_100b68c24:
    [r21 release];
    [r25 release];
    var_500 = 0x0;
    r26 = var_308;
    r28 = @selector(stringWithUTF8String:);
    goto loc_100b6542c;

loc_100b68be8:
    r28 = @selector(stringWithUTF8String:);
    r9 = 0x0;
    r23 = r24;
    goto loc_100b68bf8;

loc_100b65428:
    r28 = @selector(stringWithUTF8String:);
    var_500 = 0x0;
    goto loc_100b6542c;

loc_100b65438:
    r28 = @selector(stringWithUTF8String:);
    var_500 = 0x0;
    goto loc_100b6543c;

loc_100b65250:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100b65258;

loc_100b650f0:
    r23 = var_368;
    if (r23 != 0x0) {
            r20 = **_NSXMLParserErrorDomain;
            r0 = [NSValue valueWithBytes:&var_220 objCType:"{_xmlError=ii*i*i***ii^v^v}"];
            r0 = [r0 retain];
            r24 = r21;
            r21 = r0;
            r22 = [[NSDictionary dictionaryWithObjects:&var_120 forKeys:&var_168 count:0x2] retain];
            r0 = [NSError errorWithDomain:r20 code:0xda54 userInfo:r22];
            r29 = r29;
            r19 = [r0 retain];
            [r22 release];
            r0 = r21;
            r21 = r24;
            [r0 release];
            r0 = [r19 autorelease];
            r0 = objc_retainAutorelease(r0);
            r19 = 0x0;
            *r23 = r0;
    }
    else {
            r19 = 0x0;
    }
    goto loc_100b688bc;

loc_100b65064:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100b6506c;
}

@end