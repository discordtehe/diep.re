@implementation FNFDataBlockDistributor

-(void *)description {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)addHeadType:(unsigned long long)arg2 withOffset:(unsigned long long)arg3 {
    std::__1::mutex::lock();
    *(int8_t *)((int64_t *)&self->activeHeads + arg2) = 0x1;
    *((int64_t *)&self->heads + arg2 * 0x8) = arg3;
    *((int64_t *)&self->starvingHeads + arg2 * 0x8) = 0x0;
    std::__1::mutex::unlock();
    return;
}

-(void)removeHeadType:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = (int64_t *)&self->_lock;
    std::__1::mutex::lock();
    *(int8_t *)((int64_t *)&self->activeHeads + r19) = 0x0;
    r21 = (int64_t *)&self->stitches;
    r0 = *(r21 + r19 * 0x8);
    if (r0 != 0x0) {
            free(r0);
            *(r21 + r19 * 0x8) = 0x0;
    }
    std::__1::mutex::unlock();
    return;
}

-(void)deliverData:(void *)arg2 withOffset:(unsigned long long)arg3 {
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
    r24 = arg3;
    r23 = arg2;
    r20 = self;
    r0 = [arg2 retain];
    [r0 length];
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFDataBlockDistributor.mm" lineNumber:0x38 format:@"%@ deliver data w/ offset:%llu length:%lu"];
    var_60 = (int64_t *)&r20->_lock;
    std::__1::mutex::lock();
    r27 = (int64_t *)&r20->_dataSegments;
    r25 = [r26 length];
    r22 = r27 + 0x8;
    r19 = *r22;
    var_58 = r26;
    if (r19 == 0x0) goto loc_100b55f3c;

loc_100b55ee8:
    r8 = *(r19 + 0x20);
    if (r8 != r24) goto loc_100b55f0c;

loc_100b55ef4:
    r8 = *(r19 + 0x28);
    if (r25 > r8) goto loc_100b55f10;

loc_100b55f00:
    if (r8 > r25) goto loc_100b55f28;

loc_100b55f48:
    r26 = *r22;
    if (r26 == 0x0) {
            r0 = operator new();
            r26 = r0;
            *(int128_t *)(r0 + 0x20) = r24;
            *(int128_t *)(r0 + 0x28) = r25;
            *(r0 + 0x30) = 0x0;
            *(int128_t *)r0 = 0x0;
            *(int128_t *)(r0 + 0x8) = 0x0;
            *(r0 + 0x10) = r19;
            *r22 = r0;
            r8 = *r27;
            r8 = *r8;
            if (r8 != 0x0) {
                    *r27 = r8;
            }
            sub_10002b5ac(*(r27 + 0x8));
            *(r27 + 0x10) = *(r27 + 0x10) + 0x1;
    }
    objc_storeStrong(r26 + 0x30, r23);
    r23 = 0x0;
    r19 = 0x0;
    r22 = (int64_t *)&r20->activeHeads;
    r27 = 0x1;
    do {
            if (*(int8_t *)(r22 + r23) != 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(starvingHeads));
                    r8 = *(r23 * 0x8 + r20 + r8);
                    if (r8 != 0x0) {
                            if ([r20 _unlockedBytesAtHead:r2 withHeadType:r3] != 0x0) {
                                    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFDataBlockDistributor.mm" lineNumber:0x43 format:@"%@ head:%d is no longer starving"];
                                    r19 = 0x1;
                            }
                            else {
                                    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFDataBlockDistributor.mm" lineNumber:0x46 format:@"%@ head:%d is still starving"];
                                    r27 = 0x0;
                            }
                    }
            }
            r23 = r23 + 0x1;
    } while (r23 != 0x3);
    std::__1::mutex::unlock();
    if ((r19 & r27 & 0x1) != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_consumer);
            [r0 dataBlockDistributorHasDataAvailable];
            [r0 release];
    }
    [var_58 release];
    return;

loc_100b55f28:
    r22 = r19 + 0x8;
    r8 = *r22;
    if (r8 == 0x0) goto loc_100b55f48;

loc_100b55f34:
    r19 = r8;
    goto loc_100b55ee8;

loc_100b55f10:
    r8 = *r19;
    if (r8 == 0x0) goto loc_100b55f44;

loc_100b55f18:
    r22 = r19;
    goto loc_100b55f34;

loc_100b55f44:
    r22 = r19;
    goto loc_100b55f48;

loc_100b55f0c:
    if (CPU_FLAGS & B) goto loc_100b55f20;
    goto loc_100b55f10;

loc_100b55f20:
    if (r8 >= r24) goto loc_100b55f48;
    goto loc_100b55f28;

loc_100b55f3c:
    r19 = r22;
    goto loc_100b55f48;
}

-(char *)bytesAtHead:(unsigned long long)arg2 withHeadType:(unsigned long long)arg3 {
    std::__1::mutex::lock();
    [self _unlockedBytesAtHead:arg2 withHeadType:arg3];
    std::__1::mutex::unlock();
    r0 = r19;
    return r0;
}

-(unsigned long long)offsetForHeadType:(unsigned long long)arg2 {
    r0 = *((int64_t *)&self->heads + arg2 * 0x8);
    return r0;
}

-(void)moveHeadTo:(unsigned long long)arg2 withHeadType:(unsigned long long)arg3 {
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
    r21 = arg3;
    r22 = arg2;
    r19 = self;
    r20 = (int64_t *)&self->_lock;
    std::__1::mutex::lock();
    r23 = (int64_t *)&r19->stitches;
    r0 = *(r23 + r21 * 0x8);
    if (r0 != 0x0) {
            free(r0);
            *(r23 + r21 * 0x8) = 0x0;
    }
    r8 = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(heads));
    r9 = r19 + r9;
    *(r9 + r21 * 0x8) = r22;
    r10 = sign_extend_64(*(int32_t *)ivar_offset(activeHeads));
    r10 = r19 + r10;
    r23 = 0x7fffffffffffffff;
    do {
            if (*(int8_t *)(r10 + r8) != 0x0) {
                    r11 = *(r9 + r8 * 0x8);
                    if (r11 < r23) {
                            if (!CPU_FLAGS & B) {
                                    r23 = r23;
                            }
                            else {
                                    r23 = r11;
                            }
                    }
            }
            r8 = r8 + 0x1;
    } while (r8 != 0x3);
    r24 = (int64_t *)&r19->_dataSegments;
    r8 = *r24;
    r25 = r24 + 0x8;
    if (r8 != r25) {
            r21 = 0x0;
            r22 = r8;
            do {
                    if (*(int128_t *)(r22 + 0x28) + *(int128_t *)(r22 + 0x20) >= r23) {
                            r9 = *(r22 + 0x8);
                            if (r9 != 0x0) {
                                    do {
                                            r22 = r9;
                                            r9 = *r9;
                                    } while (r9 != 0x0);
                            }
                            else {
                                    r9 = r22 + 0x10;
                                    r10 = *r9;
                                    if (*r10 != r22) {
                                            do {
                                                    r10 = *r9;
                                                    r9 = r10 + 0x10;
                                                    r22 = *r9;
                                            } while (*r22 != r10);
                                    }
                                    else {
                                            r22 = r10;
                                    }
                            }
                    }
                    else {
                            r10 = *(r22 + 0x8);
                            if (r10 != 0x0) {
                                    do {
                                            r9 = r10;
                                            r10 = *r10;
                                    } while (r10 != 0x0);
                            }
                            else {
                                    r10 = r22 + 0x10;
                                    r9 = *r10;
                                    if (*r9 != r22) {
                                            do {
                                                    r11 = *r10;
                                                    r10 = r11 + 0x10;
                                                    r9 = *r10;
                                            } while (*r9 != r11);
                                    }
                            }
                            r21 = r21 + 0x1;
                            if (r8 == r22) {
                                    *r24 = r9;
                            }
                            r0 = *(int128_t *)(r24 + 0x8);
                            *(r24 + 0x10) = *(int128_t *)(r24 + 0x10) - 0x1;
                            sub_10003b99c(r0, r22);
                            [*(r22 + 0x30) release];
                            operator delete(r22);
                            r22 = *r24;
                            r8 = r22;
                    }
            } while (r22 != r25);
            std::__1::mutex::unlock();
            if (r21 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r19->_consumer);
                    [r0 dataTrashed:r21];
                    [r0 release];
            }
    }
    else {
            std::__1::mutex::unlock();
    }
    return;
}

-(unsigned long long)availableOffsetForHeadType:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *((int64_t *)&self->heads + arg2 * 0x8);
    r20 = (int64_t *)&self->_lock;
    std::__1::mutex::lock();
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataSegments));
    r9 = *(self + r8);
    r8 = 0x8 + self + r8;
    while (r9 != r8) {
            r10 = *(r9 + 0x20);
            if (r10 > r19) {
                break;
            }
            r10 = *(r9 + 0x28) + r10;
            if (r19 < r10) {
                    if (!CPU_FLAGS & B) {
                            r19 = r19;
                    }
                    else {
                            r19 = r10;
                    }
            }
            r10 = *(r9 + 0x8);
            if (r10 != 0x0) {
                    do {
                            r9 = r10;
                            r10 = *r10;
                    } while (r10 != 0x0);
            }
            else {
                    r10 = r9 + 0x10;
                    r11 = *r10;
                    if (*r11 != r9) {
                            do {
                                    r11 = *r10;
                                    r10 = r11 + 0x10;
                                    r9 = *r10;
                            } while (*r9 != r11);
                    }
                    else {
                            r9 = r11;
                    }
            }
    }
    std::__1::mutex::unlock();
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_lock;
    std::__1::mutex::lock();
    r21 = 0x0;
    r22 = (int64_t *)&r19->stitches;
    do {
            r0 = *(r22 + r21);
            if (r0 != 0x0) {
                    free(r0);
                    *(r22 + r21) = 0x0;
            }
            r21 = r21 + 0x8;
    } while (r21 != 0x18);
    std::__1::mutex::unlock();
    [[&var_30 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_consumer);
    sub_100b569f4();
    std::__1::mutex::~mutex();
    return;
}

-(void *)consumer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_consumer);
    r0 = [r0 autorelease];
    return r0;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lock));
    *(r0 + r8) = 0x32aaaba7;
    *(int128_t *)(0x8 + r0 + r8) = q0;
    *(int128_t *)(0x18 + r0 + r8) = q0;
    *(int128_t *)(0x28 + r0 + r8) = q0;
    *(0x38 + r0 + r8) = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataSegments));
    *(0x10 + r0 + r8) = 0x0;
    *(0x8 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x8 + r0 + r8;
    return r0;
}

-(char *)_unlockedBytesAtHead:(unsigned long long)arg2 withHeadType:(unsigned long long)arg3 {
    r31 = r31 - 0xb0;
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
    r24 = arg2;
    r20 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataSegments));
    r22 = self + r8;
    r23 = *r22;
    r26 = r22 + 0x8;
    if (r23 == r26) goto loc_100b56544;

loc_100b56498:
    r25 = 0x0;
    r21 = (int64_t *)&r20->heads;
    r8 = *(r21 + r19 * 0x8);
    r9 = r8 + r24;
    goto loc_100b564ac;

loc_100b564ac:
    r10 = *(r23 + 0x20);
    if (r10 > r8 || r9 >= *(r23 + 0x28) + r10) goto loc_100b564c8;

loc_100b566a8:
    *((int64_t *)&r20->starvingHeads + r19 * 0x8) = 0x0;
    r0 = *(r23 + 0x30);
    r0 = [r0 bytes];
    r0 = r0 + *(r21 + r19 * 0x8) - *(r23 + 0x20);
    return r0;

loc_100b564c8:
    r11 = r8 + sign_extend_64(r25);
    if (r10 <= r11) {
            r10 = *(r23 + 0x28) + r10;
            r12 = r25 + (r10 - r11);
            if (r10 < r11) {
                    if (!CPU_FLAGS & BE) {
                            r25 = r12;
                    }
                    else {
                            r25 = r25;
                    }
            }
    }
    r10 = *(r23 + 0x8);
    if (r10 != 0x0) {
            do {
                    r23 = r10;
                    r10 = *r10;
            } while (r10 != 0x0);
    }
    else {
            r10 = r23 + 0x10;
            r11 = *r10;
            if (*r11 != r23) {
                    do {
                            r11 = *r10;
                            r10 = r11 + 0x10;
                            r23 = *r10;
                    } while (*r23 != r11);
            }
            else {
                    r23 = r11;
            }
    }
    if (r23 != r26) goto loc_100b564ac;

loc_100b56548:
    asm { sxtw       x8, w25 };
    if (r8 >= r24) goto loc_100b5658c;

loc_100b56554:
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFDataBlockDistributor.mm" lineNumber:0xc2 format:@"%@ Cannot stitch for head:%lu, %d<%llu"];
    goto loc_100b56728;

loc_100b56728:
    r0 = 0x0;
    *((int64_t *)&r20->starvingHeads + r19 * 0x8) = *((int64_t *)&r20->heads + r19 * 0x8) + r24;
    return r0;

loc_100b5658c:
    r27 = (int64_t *)&r20->stitches;
    r0 = *(r27 + r19 * 0x8);
    if (r0 != 0x0) {
            free(r0);
            *(r27 + r19 * 0x8) = 0x0;
    }
    *(r27 + r19 * 0x8) = malloc(r24);
    r21 = *r22;
    var_68 = r24;
    var_60 = r20;
    if (r21 == r26) goto loc_100b566dc;

loc_100b565c4:
    r9 = r24;
    r24 = 0x0;
    r22 = (int64_t *)&r20->heads;
    r28 = r9;
    goto loc_100b565e4;

loc_100b565e4:
    r8 = *(r21 + 0x20);
    r9 = *(r22 + r19 * 0x8);
    r9 = r9 + sign_extend_64(r24);
    if (r8 > r9) goto loc_100b56650;

loc_100b565f8:
    r8 = *(r21 + 0x28) + r8 - r9;
    if (r8 < 0x0) goto loc_100b56650;

loc_100b56608:
    asm { sxtw       x20, w24 };
    if (r8 < r28) {
            if (!CPU_FLAGS & B) {
                    r23 = r28;
            }
            else {
                    r23 = r8;
            }
    }
    memcpy(*(r27 + r19 * 0x8) + r20, [*(r21 + 0x30) bytes] + *(r22 + r19 * 0x8) + r20 - *(r21 + 0x20), r23);
    r28 = r28 - r23;
    if (r28 == 0x0) goto loc_100b5676c;

loc_100b5664c:
    r24 = r24 + r23;
    goto loc_100b56650;

loc_100b56650:
    r8 = *(r21 + 0x8);
    if (r8 != 0x0) {
            do {
                    r21 = r8;
                    r8 = *r8;
            } while (r8 != 0x0);
    }
    else {
            r8 = r21 + 0x10;
            r9 = *r8;
            if (*r9 != r21) {
                    do {
                            r9 = *r8;
                            r8 = r9 + 0x10;
                            r21 = *r8;
                    } while (*r21 != r9);
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 != r26) goto loc_100b565e4;

loc_100b566e4:
    r20 = var_60;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFMp4Asset/FNFMp4Asset/FNFDataBlockDistributor.mm" lineNumber:0xc0 format:@"%@ Failed to stitch for head:%lu, pre:%d>=%llu post:%d,%llu"];
    r24 = r28;
    goto loc_100b56728;

loc_100b5676c:
    *((int64_t *)&var_60->starvingHeads + r19 * 0x8) = 0x0;
    r0 = *(r27 + r19 * 0x8);
    return r0;

loc_100b566dc:
    r28 = r24;
    r24 = 0x0;
    goto loc_100b566e4;

loc_100b56544:
    r25 = 0x0;
    goto loc_100b56548;
}

-(void)setConsumer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_consumer, arg2);
    return;
}

@end