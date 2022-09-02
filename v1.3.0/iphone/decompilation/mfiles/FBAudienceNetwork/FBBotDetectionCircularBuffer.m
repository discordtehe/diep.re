@implementation FBBotDetectionCircularBuffer

-(unsigned long long)count {
    std::__1::mutex::lock();
    [self->_objects count];
    std::__1::mutex::unlock();
    r0 = r19;
    return r0;
}

-(void *)initWithCapacity:(unsigned long long)arg2 {
    r31 = r31 - 0x70;
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
    r20 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
            *(r19 + r24) = r20;
            r0 = [NSMutableArray arrayWithCapacity:r20];
            r29 = r29;
            r0 = [r0 retain];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            if (*(r19 + r24) != 0x0) {
                    r26 = 0x0;
                    do {
                            r21 = @selector(addObject:);
                            r22 = *(r19 + r25);
                            r0 = [NSNull null];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r22, r21);
                            [r23 release];
                            r26 = r26 + 0x1;
                    } while (r26 < *(r19 + r24));
            }
    }
    r0 = r19;
    return r0;
}

-(unsigned long long)validObjectsCount {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    r20 = r21->_capacity;
    if (*(int8_t *)(int64_t *)&r21->_isFull == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_headIndex));
            r8 = *(r21 + r8);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_tailIndex));
            r9 = *(r21 + r9);
            r8 = r8 - r9;
            if (r8 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r9 = 0x0;
                    }
                    else {
                            r9 = r20;
                    }
            }
            r20 = r8 + r9;
    }
    std::__1::mutex::unlock();
    r0 = r20;
    return r0;
}

-(void)clearObjects {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
    [*(r19 + r25) removeAllObjects];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
    if (*(r19 + r26) != 0x0) {
            r27 = 0x0;
            do {
                    r22 = @selector(addObject:);
                    r23 = *(r19 + r25);
                    r0 = [NSNull null];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r23, r22);
                    [r24 release];
                    r27 = r27 + 0x1;
            } while (r27 < *(r19 + r26));
    }
    r19->_headIndex = 0x0;
    r19->_tailIndex = 0x0;
    *(int8_t *)(int64_t *)&r19->_isFull = 0x0;
    std::__1::mutex::unlock();
    return;
}

-(void)addObject:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_indexMutex;
    [arg2 retain];
    std::__1::mutex::lock();
    r0 = r19->_objects;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_headIndex));
    [r0 setObject:r21 atIndexedSubscript:*(r19 + r22)];
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isFull));
    if (*(int8_t *)(r19 + r8) != 0x0) {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_tailIndex));
            r9 = r19 + r9;
            r11 = *r9 + 0x1;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
            r10 = r19 + r10;
            r12 = *r10;
            asm { udiv       x13, x11, x12 };
            *r9 = r11 - r13 * r12;
    }
    else {
            r10 = (int64_t *)&r19->_capacity;
            r9 = (int64_t *)&r19->_tailIndex;
    }
    r11 = *(r19 + r22);
    r11 = r11 + 0x1;
    r10 = *r10;
    asm { udiv       x12, x11, x10 };
    *(r19 + r22) = r11 - r12 * r10;
    r9 = *r9;
    if (r11 - r12 * r10 == r9) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    *(int8_t *)(r19 + r8) = r9;
    std::__1::mutex::unlock();
    return;
}

-(void *)removeLatestObject {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_isFull));
    r9 = *(int8_t *)(r20 + r24);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_headIndex));
    r8 = *(r20 + r25);
    if (r9 == 0x0 && r8 == r20->_tailIndex) {
            r21 = 0x0;
    }
    else {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
            r9 = *(r20 + r9);
            r8 = r8 + r9 - 0x1;
            asm { udiv       x10, x8, x9 };
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
            r21 = [[*(r20 + r26) objectAtIndexedSubscript:r8 - r10 * r9] retain];
            r23 = [[NSNull null] retain];
            [*(r20 + r26) setObject:r23 atIndexedSubscript:r8 - r10 * r9];
            [r23 release];
            *(int8_t *)(r20 + r24) = 0x0;
            *(r20 + r25) = r8 - r10 * r9;
    }
    std::__1::mutex::unlock();
    r0 = [r21 autorelease];
    return r0;
}

-(void *)removeOldestObject {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isFull));
    if (*(int8_t *)(r20 + r23) != 0x0) {
            r24 = (int64_t *)&r20->_tailIndex;
            r2 = *r24;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
            r21 = [[*(r20 + r25) objectAtIndexedSubscript:r2] retain];
            r22 = [[NSNull null] retain];
            [*(r20 + r25) setObject:r22 atIndexedSubscript:*r24];
            [r22 release];
            *(int8_t *)(r20 + r23) = 0x0;
            r8 = *r24;
            r8 = r8 + 0x1;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
            r9 = *(r20 + r9);
            asm { udiv       x10, x8, x9 };
            *r24 = r8 - r10 * r9;
    }
    else {
            r24 = (int64_t *)&r20->_tailIndex;
            if (*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_headIndex))) == *r24) {
                    r21 = 0x0;
            }
            else {
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
                    r21 = [[*(r20 + r25) objectAtIndexedSubscript:r2] retain];
                    r22 = [[NSNull null] retain];
                    [*(r20 + r25) setObject:r22 atIndexedSubscript:*r24];
                    [r22 release];
                    *(int8_t *)(r20 + r23) = 0x0;
                    r8 = *r24;
                    r8 = r8 + 0x1;
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
                    r9 = *(r20 + r9);
                    asm { udiv       x10, x8, x9 };
                    *r24 = r8 - r10 * r9;
            }
    }
    std::__1::mutex::unlock();
    r0 = [r21 autorelease];
    return r0;
}

-(void *)readAllObjects {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = self;
    r19 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    if (*(int8_t *)(int64_t *)&r20->_isFull != 0x0) {
            r21 = r20->_tailIndex;
            r26 = r20->_headIndex;
            r22 = [NSMutableArray new];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
            do {
                    r0 = *(r20 + r27);
                    r0 = [r0 objectAtIndexedSubscript:r21];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r22 addObject:r25];
                    [r25 release];
                    r8 = r21 + 0x1;
                    r9 = *(r20 + r28);
                    asm { udiv       x10, x8, x9 };
                    r21 = r8 - r10 * r9;
            } while (r21 != r26);
    }
    else {
            r26 = r20->_headIndex;
            r21 = r20->_tailIndex;
            if (r26 == r21) {
                    r22 = [NSArray new];
            }
            else {
                    r22 = [NSMutableArray new];
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
                    do {
                            r0 = *(r20 + r27);
                            r0 = [r0 objectAtIndexedSubscript:r21];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r22 addObject:r25];
                            [r25 release];
                            r8 = r21 + 0x1;
                            r9 = *(r20 + r28);
                            asm { udiv       x10, x8, x9 };
                            r21 = r8 - r10 * r9;
                    } while (r21 != r26);
            }
    }
    std::__1::mutex::unlock();
    r0 = [r22 autorelease];
    return r0;
}

-(void *)readLatestObject {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    r9 = *(int8_t *)(int64_t *)&r20->_isFull;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_headIndex));
    r8 = *(r20 + r8);
    if (r9 == 0x0 && r8 == r20->_tailIndex) {
            r20 = 0x0;
    }
    else {
            r0 = r20->_objects;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_capacity));
            r9 = *(r20 + r9);
            r8 = r8 + r9 - 0x1;
            asm { udiv       x10, x8, x9 };
            r20 = [[r0 objectAtIndexedSubscript:r8 - r10 * r9] retain];
    }
    std::__1::mutex::unlock();
    r0 = [r20 autorelease];
    return r0;
}

-(void *)readOldestObject {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_indexMutex;
    std::__1::mutex::lock();
    if (*(int8_t *)(int64_t *)&r20->_isFull != 0x0) {
            r2 = r20->_tailIndex;
            r20 = [[r20->_objects objectAtIndexedSubscript:r2] retain];
    }
    else {
            if (r20->_headIndex == r20->_tailIndex) {
                    r20 = 0x0;
            }
            else {
                    r20 = [[r20->_objects objectAtIndexedSubscript:r2] retain];
            }
    }
    std::__1::mutex::unlock();
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    std::__1::mutex::~mutex();
    objc_storeStrong((int64_t *)&self->_objects, 0x0);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_indexMutex));
    *(r0 + r8) = 0x32aaaba7;
    *(int128_t *)(0x8 + r0 + r8) = q0;
    *(int128_t *)(0x18 + r0 + r8) = q0;
    *(int128_t *)(0x28 + r0 + r8) = q0;
    *(0x38 + r0 + r8) = 0x0;
    return r0;
}

@end