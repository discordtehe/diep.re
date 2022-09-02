@implementation FNFDashTrackEntryContainer

-(void *)firstEntry {
    r0 = [self timelineEntryAtIndex:0x0];
    return r0;
}

-(int)count {
    r0 = *(int32_t *)(int64_t *)&self->_sequenceCount;
    return r0;
}

-(void *)lastEntry {
    r0 = [self timelineEntryAtIndex:[self count] - 0x1];
    return r0;
}

-(void *)timelineEntryAtIndex:(int)arg2 {
    r2 = arg2;
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
    r29 = &saved_fp;
    if ((r2 & 0xffffffff80000000) == 0x0) {
            r21 = r2;
            r19 = r0;
            if (*(int32_t *)(int64_t *)&r0->_sequenceCount > r2) {
                    [r19 _lookupPhysicalIndexForLogicalIndex:r21];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timelineEntries));
                    r8 = *(r19 + r8);
                    asm { sxtw       x22, w0 };
                    r0 = [r8 objectAtIndexedSubscript:r22];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    if ([r0 repetition] != 0x0) {
                            [r20 time];
                            [r20 duration];
                            asm { madd       w21, w0, w23, w21 };
                            r0 = [[FNFMpdTimelineEntry alloc] initWithTime:r21 duration:objc_msgSend(r20, r22) mediaTemplate:r19->_urlTemplate];
                    }
                    else {
                            r0 = [r20 mediaUrl];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r20 retain];
                            }
                            else {
                                    [r20 time];
                                    [r20 duration];
                                    asm { madd       w21, w0, w23, w21 };
                                    r0 = [[FNFMpdTimelineEntry alloc] initWithTime:r21 duration:objc_msgSend(r20, r22) mediaTemplate:r19->_urlTemplate];
                            }
                    }
                    r19 = r0;
                    [r20 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned int)relativeStartTimeForEntryAtIndex:(int)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ((r2 & 0xffffffff80000000) == 0x0) {
            r20 = r2;
            r19 = r0;
            if (*(int32_t *)(int64_t *)&r0->_sequenceCount > r2) {
                    r2 = r20;
                    [r19 _lookupPhysicalIndexForLogicalIndex:r2];
                    asm { sxtw       x2, w0 };
                    r0 = r19->_timelineEntries;
                    r0 = [r0 objectAtIndexedSubscript:r2];
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 duration];
                    asm { madd       w19, w0, w22, w21 };
                    [r20 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(int)sequenceIndexForRelativeTime:(unsigned int)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timelineEntries));
    if ([*(self + r21) count] != 0x0) {
            r22 = (int64_t *)&r19->_logicalTimeLookup;
            r8 = *(int128_t *)r22;
            r9 = *(int128_t *)(r22 + 0x8);
            r9 = r9 - r8;
            if (r9 != 0x0) {
                    r11 = SAR(r9, 0x2);
                    r9 = r8;
                    do {
                            if (r11 < 0x0) {
                                    asm { cinc       x12, x11, lt };
                            }
                            r13 = SAR(r12, 0x1);
                            r14 = 0x4 + r9 + r13 * 0x4;
                            r12 = 0xffffffffffffffff ^ r12 / 0x2;
                            r11 = r11 + r12;
                            if (*(int32_t *)(r9 + r13 * 0x4) > r20) {
                                    if (!CPU_FLAGS & A) {
                                            r11 = r11;
                                    }
                                    else {
                                            r11 = r13;
                                    }
                            }
                            if (CPU_FLAGS & A) {
                                    if (!CPU_FLAGS & A) {
                                            r9 = r14;
                                    }
                                    else {
                                            r9 = r9;
                                    }
                            }
                    } while (r11 != 0x0);
            }
            else {
                    r9 = r8;
            }
            r0 = *(r19 + r21);
            r23 = 0xffffffff00000000 + (r9 - r8) * 0x40000000;
            r0 = [r0 objectAtIndexedSubscript:SAR(r23, 0x20)];
            r0 = [r0 retain];
            r21 = r0;
            r8 = &@selector(menu);
            objc_msgSend(r0, *(r8 + 0x780));
            asm { udiv       w8, w20, w0 };
            r8 = *(int32_t *)(r19->_logicalIndexLookup + r22) + r8;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sequenceCount));
            r9 = *(int32_t *)(r19 + r9);
            r10 = r9 - 0x1;
            if (r8 < r9) {
                    if (!CPU_FLAGS & L) {
                            r19 = r10;
                    }
                    else {
                            r19 = r8;
                    }
            }
            [r21 release];
    }
    else {
            r19 = 0xffffffffffffffff;
    }
    r0 = r19;
    return r0;
}

-(void *)initWithTimelineEntries:(void *)arg2 mediaUrlTemplate:(void *)arg3 {
    r31 = r31 - 0x1a0;
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
    r19 = arg3;
    r21 = arg2;
    r22 = [arg2 retain];
    r23 = [r19 retain];
    r0 = [[&var_F0 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100b62df8;

loc_100b62b9c:
    var_188 = r23;
    objc_storeStrong((int64_t *)&r20->_timelineEntries, r21);
    objc_storeStrong((int64_t *)&r20->_urlTemplate, r19);
    var_F4 = 0x0;
    var_130 = q0;
    var_180 = r22;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r0;
    var_178 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100b62ddc;

loc_100b62c08:
    r23 = r0;
    r22 = 0x0;
    r27 = *var_130;
    r25 = (int64_t *)&r20->_logicalTimeLookup;
    r26 = (int64_t *)&r20->_logicalIndexLookup;
    var_168 = r27;
    stack[-368] = r20;
    var_170 = r25;
    goto loc_100b62c38;

loc_100b62c38:
    r24 = 0x0;
    r28 = @selector(repetition);
    var_158 = r28;
    goto loc_100b62c54;

loc_100b62c54:
    if (*var_130 != r27) {
            objc_enumerationMutation(var_150);
    }
    r21 = *(var_138 + r24 * 0x8);
    if (objc_msgSend(r21, r28) != 0x0) {
            *(int8_t *)(int64_t *)&r20->_hasRepetition = 0x1;
    }
    r8 = *(int128_t *)(r25 + 0x8);
    if (r8 != *(int128_t *)(r25 + 0x10)) {
            *(int32_t *)r8 = var_F4;
            *(r25 + 0x8) = r8 + 0x4;
    }
    else {
            r0 = sub_100b606c8(r25, &var_F4);
    }
    r9 = *(int128_t *)(r26 + 0x8);
    r8 = *(int128_t *)(r26 + 0x10);
    if (r9 == r8) goto loc_100b62cd4;

loc_100b62cc8:
    *(int32_t *)r9 = r22;
    *(r26 + 0x8) = r9 + 0x4;
    goto loc_100b62d74;

loc_100b62d74:
    objc_msgSend(r21, r28) + 0x1;
    [r21 duration];
    r8 = var_F4;
    asm { madd       w8, w0, w19, w8 };
    var_F4 = r8;
    r22 = r22 + r19;
    r24 = r24 + 0x1;
    if (r24 < r23) goto loc_100b62c54;

loc_100b62db8:
    r0 = objc_msgSend(var_150, var_178);
    r23 = r0;
    if (r0 != 0x0) goto loc_100b62c38;

loc_100b62de0:
    [var_150 release];
    *(int32_t *)(int64_t *)&r20->_sequenceCount = r22;
    r23 = var_188;
    r22 = var_180;
    goto loc_100b62df8;

loc_100b62df8:
    var_60 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b62cd4:
    r25 = r23;
    r19 = *r26;
    r23 = r9 - r19;
    r28 = SAR(r23, 0x2);
    r9 = r28 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_100b62e48;

loc_100b62cf0:
    r8 = r8 - r19;
    if (0x1ffffffffffffffe < r8 / 0x4) goto loc_100b62d1c;

loc_100b62d00:
    r8 = SAR(r8, 0x1);
    if (r8 < r9) {
            if (!CPU_FLAGS & B) {
                    r27 = r8;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_100b62db0;

loc_100b62d10:
    if (r27 >> 0x3e == 0x0) goto loc_100b62d20;

loc_100b62e50:
    r0 = abort();
    return r0;

loc_100b62d20:
    r20 = operator new();
    goto loc_100b62d2c;

loc_100b62d2c:
    r27 = r20 + r27 * 0x4;
    *(int32_t *)(r20 + r28 * 0x4) = r22;
    r28 = 0x4 + r20 + r28 * 0x4;
    if (r23 >= 0x1) {
            memcpy(r20, r19, r23);
    }
    *(int128_t *)r26 = r20;
    *(int128_t *)(r26 + 0x8) = r28;
    *(r26 + 0x10) = r27;
    r27 = var_168;
    r20 = stack[-368];
    r23 = r25;
    r25 = var_170;
    r28 = var_158;
    if (r19 != 0x0) {
            operator delete(r19);
    }
    goto loc_100b62d74;

loc_100b62db0:
    r20 = 0x0;
    goto loc_100b62d2c;

loc_100b62d1c:
    r27 = 0x3fffffffffffffff;
    goto loc_100b62d20;

loc_100b62e48:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;

loc_100b62ddc:
    r22 = 0x0;
    goto loc_100b62de0;
}

-(int)_lookupPhysicalIndexForLogicalIndex:(int)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_hasRepetition != 0x0) {
            r8 = *(int128_t *)(int64_t *)&r0->_logicalIndexLookup;
            r9 = *(int128_t *)((int64_t *)&r0->_logicalIndexLookup + 0x8);
            r9 = r9 - r8;
            if (r9 != 0x0) {
                    r9 = SAR(r9, 0x2);
                    r10 = r8;
                    do {
                            if (r9 < 0x0) {
                                    asm { cinc       x12, x9, lt };
                            }
                            r13 = SAR(r12, 0x1);
                            r14 = 0x4 + r10 + r13 * 0x4;
                            r12 = 0xffffffffffffffff ^ r12 / 0x2;
                            r9 = r9 + r12;
                            if (*(int32_t *)(r10 + r13 * 0x4) > r2) {
                                    if (!CPU_FLAGS & G) {
                                            r9 = r9;
                                    }
                                    else {
                                            r9 = r13;
                                    }
                            }
                            if (CPU_FLAGS & G) {
                                    if (!CPU_FLAGS & G) {
                                            r10 = r14;
                                    }
                                    else {
                                            r10 = r10;
                                    }
                            }
                    } while (r9 != 0x0);
                    r2 = (r10 - r8 >> 0x2) - 0x1;
            }
            else {
                    r2 = 0x0;
            }
    }
    r0 = r2;
    return r0;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_logicalTimeLookup));
    r8 = self + r8;
    r0 = *r8;
    if (r0 != 0x0) {
            *(r8 + 0x8) = r0;
            operator delete(r0);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_logicalIndexLookup));
    r8 = r19 + r8;
    r0 = *r8;
    if (r0 != 0x0) {
            *(r8 + 0x8) = r0;
            operator delete(r0);
    }
    objc_storeStrong((int64_t *)&r19->_urlTemplate, 0x0);
    objc_storeStrong((int64_t *)&r19->_timelineEntries, 0x0);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_logicalIndexLookup));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_logicalTimeLookup));
    *(int128_t *)(r0 + r8) = 0x0;
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(0x10 + r0 + r8) = 0x0;
    return r0;
}

@end