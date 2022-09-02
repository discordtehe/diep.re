@implementation CCTextureAtlas

+(void *)textureAtlasWithFile:(void *)arg2 capacity:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 capacity:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithFile:(void *)arg2 capacity:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 addImage:arg2];
    if (r0 != 0x0) {
            r0 = [r20 initWithTexture:r0 capacity:r19];
    }
    else {
            [r20 release];
            r0 = 0x0;
    }
    return r0;
}

+(void *)textureAtlasWithTexture:(void *)arg2 capacity:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 capacity:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 capacity:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int128_t *)(r19 + 0x8) = 0x0;
            *(int128_t *)(r19 + 0x10) = r21;
            [r19 setTexture:r20];
            r8 = *(r19 + 0x10);
            *(r19 + 0x18) = calloc(r8 + r8 * 0x2 << 0x5, 0x1);
            r8 = *(r19 + 0x10);
            r0 = calloc(r8 + r8 * 0x2 << 0x2, 0x1);
            *(r19 + 0x20) = r0;
            r8 = *(r19 + 0x18);
            if (r0 != 0x0) {
                    asm { ccmp       x8, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    if (r8 != 0x0) {
                            free(r8);
                            r0 = *(r19 + 0x20);
                    }
                    if (r0 != 0x0) {
                            free(r0);
                    }
                    [r19 release];
                    r19 = 0x0;
            }
            else {
                    [r19 setupIndices];
                    [r19 setupVBOandVAO];
                    *(int8_t *)(r19 + 0x38) = 0x1;
            }
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    free(*(self + 0x18));
    free(*(self + 0x20));
    glDeleteBuffers(0x2, self + 0x30);
    glDeleteVertexArraysOES();
    sub_10031a660(0x0);
    [*(self + 0x28) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)setupIndices {
    r0 = self;
    r8 = *(r0 + 0x10);
    if (r8 != 0x0) {
            r9 = 0x0;
            r10 = *(r0 + 0x20);
            r10 = r10 + 0x6;
            do {
                    *(int16_t *)(r10 + 0xfffffffffffffffa) = r9 << 0x2;
                    r11 = 0x1;
                    asm { bfi        w11, w9, #0x2, #0x1e };
                    *(int16_t *)(r10 + 0xfffffffffffffffc) = r11;
                    r12 = 0x2;
                    asm { bfi        w12, w9, #0x2, #0x1e };
                    *(int16_t *)(r10 + 0xfffffffffffffffe) = r12;
                    r13 = 0x3;
                    asm { bfi        w13, w9, #0x2, #0x1e };
                    *(int16_t *)r10 = r13;
                    *(int16_t *)(r10 + 0x2) = r12;
                    *(int16_t *)(r10 + 0x4) = r11;
                    r9 = r9 + 0x1;
                    r10 = r10 + 0xc;
            } while (r9 < r8);
    }
    return;
}

-(void)setupVBOandVAO {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[CCDirector sharedDirector] runningThread];
    if (r19 != [NSThread currentThread] && [[CCConfiguration sharedConfiguration] supportsShareableVAO] == 0x0) {
            [r19 performBlock:&var_38 waitUntilDone:0x1];
    }
    else {
            sub_100309e30(&var_38);
    }
    return;
}

-(void)listenGoingToBackground {
    glDeleteBuffers(0x2, self + 0x30);
    glDeleteVertexArraysOES();
    sub_10031a660(0x0);
    *(int8_t *)(self + 0x38) = 0x1;
    return;
}

-(void)mapBuffers {
    sub_10031a660(0x0);
    glBindBuffer(0x8892, *(int32_t *)(self + 0x30));
    r8 = *(int128_t *)(self + 0x10);
    glBufferData(0x8892, r8 + r8 * 0x2 << 0x5, *(int128_t *)(self + 0x18), 0x88e8);
    glBindBuffer(0x8892, 0x0);
    glBindBuffer(0x8893, *(int32_t *)(self + 0x34));
    r8 = *(self + 0x10);
    glBufferData(0x8893, r8 + r8 * 0x2 << 0x2, *(self + 0x20), 0x88e4);
    glBindBuffer(0x8893, 0x0);
    return;
}

-(void)listenBackToForeground {
    [self setupVBOandVAO];
    *(int8_t *)(self + 0x38) = 0x1;
    return;
}

-(struct _ccV3F_C4B_T2F_Quad *)quads {
    *(int8_t *)(self + 0x38) = 0x1;
    r0 = *(self + 0x18);
    return r0;
}

-(void)updateQuad:(struct _ccV3F_C4B_T2F_Quad *)arg2 atIndex:(unsigned long long)arg3 {
    r2 = arg2;
    r0 = self;
    r8 = arg3 + 0x1;
    if (r8 < *(r0 + 0x8)) {
            asm { csinc      x8, x9, x3, ls };
    }
    *(r0 + 0x8) = r8;
    r8 = *(r0 + 0x18);
    asm { madd       x8, x3, x9, x8 };
    q0 = *(int128_t *)r2;
    q1 = *(int128_t *)(r2 + 0x10);
    *(int128_t *)r8 = q0;
    *(int128_t *)(r8 + 0x10) = q1;
    q0 = *(int128_t *)(r2 + 0x20);
    q1 = *(int128_t *)(r2 + 0x30);
    q2 = *(int128_t *)(r2 + 0x40);
    q3 = *(int128_t *)(r2 + 0x50);
    *(int128_t *)(r8 + 0x40) = q2;
    *(int128_t *)(r8 + 0x50) = q3;
    *(int128_t *)(r8 + 0x20) = q0;
    *(int128_t *)(r8 + 0x30) = q1;
    *(int8_t *)(r0 + 0x38) = 0x1;
    return;
}

-(void)insertQuad:(struct _ccV3F_C4B_T2F_Quad *)arg2 atIndex:(unsigned long long)arg3 {
    r1 = _cmd;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r8 = *(self + 0x8);
    *(self + 0x8) = r8 + 0x1;
    r8 = r8 - arg3;
    if (r8 >= 0x1) {
            asm { madd       x1, x21, x10, x9 };
            memmove(r1 + 0x60, r1, r8 + r8 * 0x2 << 0x5);
    }
    r8 = *(r19 + 0x18);
    asm { madd       x8, x21, x9, x8 };
    q0 = *(int128_t *)r20;
    q1 = *(int128_t *)(r20 + 0x10);
    *(int128_t *)r8 = q0;
    *(int128_t *)(r8 + 0x10) = q1;
    q0 = *(int128_t *)(r20 + 0x20);
    q1 = *(int128_t *)(r20 + 0x30);
    q2 = *(int128_t *)(r20 + 0x40);
    q3 = *(int128_t *)(r20 + 0x50);
    *(int128_t *)(r8 + 0x40) = q2;
    *(int128_t *)(r8 + 0x50) = q3;
    *(int128_t *)(r8 + 0x20) = q0;
    *(int128_t *)(r8 + 0x30) = q1;
    *(int8_t *)(r19 + 0x38) = 0x1;
    return;
}

-(void)insertQuads:(struct _ccV3F_C4B_T2F_Quad *)arg2 atIndex:(unsigned long long)arg3 amount:(unsigned long long)arg4 {
    r1 = _cmd;
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
    r19 = arg4;
    r22 = arg3;
    r21 = arg2;
    r20 = r0;
    r8 = *(r0 + 0x8);
    *(r0 + 0x8) = r8 + arg4;
    r8 = r8 + (arg3 ^ 0xffffffff);
    if (r8 > 0x0) {
            r23 = r19 + r22;
            asm { madd       x0, x23, x10, x9 };
            asm { madd       x1, x22, x10, x9 };
            memmove(r0, r1, r8 + r8 * 0x2 << 0x5);
    }
    else {
            r23 = r19 + r22;
    }
    if (r23 >= r22) {
            r8 = r22 + r22 * 0x2 << 0x5;
            do {
                    r9 = *(r20 + 0x18);
                    q0 = *(int128_t *)r21;
                    q1 = *(int128_t *)(r21 + 0x10);
                    *(int128_t *)(r9 + r8) = q0;
                    *(int128_t *)(0x10 + r9 + r8) = q1;
                    q0 = *(int128_t *)(r21 + 0x20);
                    q1 = *(int128_t *)(r21 + 0x30);
                    q2 = *(int128_t *)(r21 + 0x40);
                    q3 = *(int128_t *)(r21 + 0x50);
                    *(int128_t *)(0x40 + r9 + r8) = q2;
                    *(int128_t *)(0x50 + r9 + r8) = q3;
                    *(int128_t *)(0x20 + r9 + r8) = q0;
                    *(int128_t *)(0x30 + r9 + r8) = q1;
                    r8 = r8 + 0x60;
                    r21 = r21 + 0x60;
                    r19 = r19 - 0x1;
            } while (r19 != 0x0);
    }
    *(int8_t *)(r20 + 0x38) = 0x1;
    return;
}

-(void)insertQuadFromIndex:(unsigned long long)arg2 atIndex:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    if (r2 != r3) {
            r31 = r31 - 0x90;
            var_30 = r22;
            stack[-40] = r21;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r0;
            r8 = r3 - r2;
            r9 = r2 - r3;
            if (r9 > 0x0) {
                    if (!CPU_FLAGS & A) {
                            r8 = r8;
                    }
                    else {
                            r8 = r9;
                    }
            }
            if (CPU_FLAGS & B) {
                    asm { csinc      x9, x2, x3, ls };
            }
            if (CPU_FLAGS & A) {
                    asm { csinc      x10, x3, x2, hi };
            }
            asm { madd       x12, x2, x21, x11 };
            var_90 = *(int128_t *)r12;
            stack[-128] = *(int128_t *)(r12 + 0x10);
            q0 = *(int128_t *)(r12 + 0x20);
            q1 = *(int128_t *)(r12 + 0x30);
            var_50 = *(int128_t *)(r12 + 0x40);
            stack[-64] = *(int128_t *)(r12 + 0x50);
            var_70 = q0;
            stack[-96] = q1;
            asm { madd       x0, x9, x21, x11 };
            asm { madd       x1, x10, x21, x11 };
            memmove(r0, r1, r8 + r8 * 0x2 << 0x5);
            r8 = *(r19 + 0x18);
            asm { madd       x8, x20, x21, x8 };
            *(int128_t *)(r8 + 0x20) = var_70;
            *(int128_t *)(r8 + 0x30) = stack[-96];
            *(int128_t *)(r8 + 0x40) = var_50;
            *(int128_t *)(r8 + 0x50) = stack[-64];
            *(int128_t *)r8 = var_90;
            *(int128_t *)(r8 + 0x10) = stack[-128];
            *(int8_t *)(r19 + 0x38) = 0x1;
    }
    return;
}

-(void)moveQuadsFromIndex:(unsigned long long)arg2 amount:(unsigned long long)arg3 atIndex:(unsigned long long)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    r26 = r2 - r4;
    if (r26 != 0x0) {
            r20 = r4;
            r22 = r3;
            r21 = r2;
            r19 = r0;
            r23 = r3 + r3 * 0x2 << 0x5;
            r0 = malloc(r23);
            r24 = r0;
            asm { madd       x25, x21, x8, x27 };
            r1 = r25;
            r0 = memcpy(r0, r1, r23);
            r8 = r22 + r21;
            r9 = r20 - r21;
            asm { madd       x10, x20, x10, x27 };
            r11 = r20 + r22;
            if (r20 >= r21) {
                    if (!CPU_FLAGS & NB) {
                            r9 = r26;
                    }
                    else {
                            r9 = r9;
                    }
            }
            if (CPU_FLAGS & NS) {
                    if (!CPU_FLAGS & NB) {
                            r0 = 0x60;
                    }
                    else {
                            r0 = r25;
                    }
            }
            asm { madd       x1, x8, x21, x27 };
            r0 = memmove(r0, r1, r9 + r9 * 0x2 << 0x5);
            asm { madd       x0, x20, x21, x8 };
            memcpy(r0, r24, r23);
            free(r24);
            *(int8_t *)(r19 + 0x38) = 0x1;
    }
    return;
}

-(void)removeQuadAtIndex:(unsigned long long)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r8 = *(r0 + 0x8);
    r9 = r8 + (arg2 ^ 0xffffffff);
    if (r9 != 0x0) {
            asm { madd       x0, x2, x10, x8 };
            memmove(r0, r0 + 0x60, r9 + r9 * 0x2 << 0x5);
            r8 = *(r19 + 0x8);
    }
    *(r19 + 0x8) = r8 - 0x1;
    *(int8_t *)(r19 + 0x38) = 0x1;
    return;
}

-(void)removeQuadsAtIndex:(unsigned long long)arg2 amount:(unsigned long long)arg3 {
    r1 = _cmd;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r9 = *(r0 + 0x8);
    *(r0 + 0x8) = r9 - arg3;
    r9 = r9 - arg3 + arg2;
    if (r9 != 0x0) {
            asm { madd       x0, x2, x11, x10 };
            asm { madd       x1, x8, x11, x10 };
            memmove(r0, r1, r9 + r9 * 0x2 << 0x5);
    }
    *(int8_t *)(r19 + 0x38) = 0x1;
    return;
}

-(void)increaseTotalQuadsWith:(unsigned long long)arg2 {
    *(self + 0x8) = *(self + 0x8) + arg2;
    return;
}

-(void)removeAllQuads {
    *(self + 0x8) = 0x0;
    return;
}

-(void)fillWithEmptyQuadsFromIndex:(unsigned long long)arg2 amount:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    r0 = bzero(&var_80, 0x60);
    if (r19 + r21 >= r21) {
            r8 = r21 + r21 * 0x2 << 0x5;
            do {
                    r9 = *(r20 + 0x18);
                    *(int128_t *)(r9 + r8) = var_80;
                    *(int128_t *)(0x10 + r9 + r8) = stack[-128];
                    *(int128_t *)(0x40 + r9 + r8) = var_40;
                    *(int128_t *)(0x50 + r9 + r8) = stack[-64];
                    *(int128_t *)(0x20 + r9 + r8) = var_60;
                    *(int128_t *)(0x30 + r9 + r8) = stack[-96];
                    r8 = r8 + 0x60;
                    r19 = r19 - 0x1;
            } while (r19 != 0x0);
    }
    return;
}

-(bool)resizeCapacity:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x10) == r2) {
            r0 = 0x1;
    }
    else {
            r19 = r0;
            r22 = r0 + 0x8;
            r8 = *r22;
            if (r8 < r2) {
                    if (!CPU_FLAGS & B) {
                            r8 = r2;
                    }
                    else {
                            r8 = r8;
                    }
            }
            *(int128_t *)r22 = r8;
            *(int128_t *)(r22 + 0x8) = r2;
            r21 = realloc(*(r22 + 0x10), r2 + r2 * 0x2 << 0x5);
            r0 = *(r22 + 0x18);
            r8 = *(r22 + 0x8);
            r20 = realloc(r0, r8 + r8 * 0x2 << 0x2);
            if (r21 != 0x0) {
                    asm { ccmp       x0, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    if (r21 != 0x0) {
                            r0 = r21;
                    }
                    else {
                            r0 = *(r19 + 0x18);
                    }
                    free(r0);
                    if (r20 != 0x0) {
                            r0 = r20;
                    }
                    else {
                            r0 = *(r19 + 0x20);
                    }
                    free(r0);
                    r0 = 0x0;
                    *(int128_t *)r22 = q0;
                    *(int128_t *)(r22 + 0x10) = q0;
            }
            else {
                    *(int128_t *)(r19 + 0x18) = r21;
                    *(int128_t *)(r19 + 0x20) = r20;
                    [r19 setupIndices];
                    [r19 mapBuffers];
                    r0 = 0x1;
                    *(int8_t *)(r19 + 0x38) = r0;
            }
    }
    return r0;
}

-(void)moveQuadsFromIndex:(unsigned long long)arg2 to:(unsigned long long)arg3 {
    r2 = arg2;
    r1 = _cmd;
    r0 = self;
    asm { madd       x8, x3, x10, x9 };
    asm { madd       x1, x2, x10, x9 };
    r9 = *(r0 + 0x8);
    memmove(r8, r1, (r9 - r2) + (r9 - r2) * 0x2 << 0x5);
    return;
}

-(void)drawQuads {
    [self drawNumberOfQuads:*(self + 0x8) fromIndex:0x0];
    return;
}

-(void)drawNumberOfQuads:(unsigned long long)arg2 {
    [self drawNumberOfQuads:arg2 fromIndex:0x0];
    return;
}

-(unsigned long long)capacity {
    r0 = *(self + 0x10);
    return r0;
}

-(unsigned long long)totalQuads {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)texture {
    r0 = *(self + 0x28);
    return r0;
}

-(void)drawNumberOfQuads:(unsigned long long)arg2 fromIndex:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto .l1;

loc_10030a610:
    r19 = r3;
    r20 = r2;
    r21 = r0;
    if (r3 + r2 > *(r0 + 0x8)) goto .l1;

loc_10030a62c:
    [*(r21 + 0x28) bind];
    if (*(int8_t *)(r21 + 0x38) == 0x0) goto loc_10030a6f0;

loc_10030a644:
    glBindBuffer(0x8892, *(int32_t *)(r21 + 0x30));
    if ([[CCConfiguration sharedConfiguration] supportsMapBuffer] == 0x0) goto loc_10030a6c0;

loc_10030a674:
    r22 = r20 + r20 * 0x2 << 0x5;
    glBufferData(0x8892, r22, 0x0, 0x88e8);
    r0 = glMapBufferOES();
    if (r0 == 0x0) goto loc_10030a740;

loc_10030a6a0:
    r1 = 0x88b9;
    asm { madd       x1, x19, x9, x8 };
    memcpy(r0, r1, r22);
    glUnmapBufferOES();
    goto loc_10030a6e0;

loc_10030a6e0:
    glBindBuffer(0x8892, 0x0);
    *(int8_t *)(r21 + 0x38) = 0x0;
    goto loc_10030a6f0;

loc_10030a6f0:
    sub_10031a660(*(int32_t *)(r21 + 0x3c));
    glDrawElements(0x4, r20 + r20 * 0x2 << 0x1, 0x1403, r19 + r19 * 0x2 << 0x2);
    sub_10031a660(0x0);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;

.l1:
    return;

loc_10030a740:
    glBindBuffer(0x8892, 0x0);
    return;

loc_10030a6c0:
    glBufferSubData(0x8892, r19 + r19 * 0x2 << 0x5, r20 + r20 * 0x2 << 0x5, *(r21 + 0x18) + (r19 + r19 * 0x2) * 0x20);
    goto loc_10030a6e0;
}

-(void)setTexture:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setQuads:(struct _ccV3F_C4B_T2F_Quad *)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void)drawNumberOfQuads:(unsigned long long)arg2 fromIndex:(unsigned long long)arg3 renderJob:(struct RenderJob *)arg4 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    r19 = arg4;
    if (*(int8_t *)(r0 + 0x38) == 0x0) goto loc_10030b084;

loc_10030a784:
    r22 = r0;
    var_288 = r3;
    stack[-656] = r2;
    r20 = r29 - 0xe8;
    *(int128_t *)(r20 + 0x78) = q0;
    *(int128_t *)(r20 + 0x68) = q0;
    *(int128_t *)(r20 + 0x58) = q0;
    *(int128_t *)(r20 + 0x48) = q0;
    *(int128_t *)(r20 + 0x38) = q0;
    *(int128_t *)(r20 + 0x28) = q0;
    *(int128_t *)(r20 + 0x18) = q0;
    *(int128_t *)(r20 + 0x8) = q0;
    r8 = *(r0 + 0x28);
    r9 = *(int128_t *)(int64_t *)&r8->MCTexturePointer;
    r8 = *(int128_t *)((int64_t *)&r8->MCTexturePointer + 0x8);
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x11, [x10] };
                    r11 = r11 + 0x1;
                    asm { stxr       w12, x11, [x10] };
            } while (r12 != 0x0);
            r23 = var_C0;
            var_C0 = r8;
            if (r23 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r23 + 0x10))(r23);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    else {
            var_C0 = r8;
    }
    var_278 = r19;
    r9 = *(r22 + 0x8);
    if (r9 + r9 * 0x2 << 0x1 == 0x0) goto loc_10030a928;

loc_10030a848:
    r21 = 0x0;
    var_290 = r20 + 0x8;
    r20 = 0x1;
    r28 = var_D8;
    r23 = var_D0;
    goto loc_10030a85c;

loc_10030a85c:
    r27 = *(r22 + 0x20);
    if (r28 == r23) goto loc_10030a878;

loc_10030a868:
    *(int16_t *)r28 = *(int16_t *)(r27 + r21 * 0x2);
    r28 = r28 + 0x2;
    goto loc_10030a910;

loc_10030a910:
    r21 = r20;
    COND = r9 + r9 * 0x2 << 0x1 > zero_extend_64(r20);
    r20 = r20 + 0x1;
    if (COND) goto loc_10030a85c;

loc_10030a928:
    if (r9 == 0x0) goto loc_10030afe4;

loc_10030a92c:
    var_290 = (r29 - 0xe8) + 0x30;
    var_298 = (r29 - 0xe8) + 0x60;
    r23 = 0x1;
    var_270 = (r29 - 0xe8) + 0x78;
    goto loc_10030a954;

loc_10030a954:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r19 = *(int128_t *)r8;
    r21 = *(int128_t *)(r8 + 0x4);
    r9 = var_B0;
    r8 = var_A8;
    if (r9 >= r8) goto loc_10030a97c;

loc_10030a96c:
    *(int128_t *)r9 = r19;
    *(int128_t *)(r9 + 0x4) = r21;
    r25 = r9 + 0x8;
    goto loc_10030aa18;

loc_10030aa18:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r21 = *(int128_t *)(r8 + 0x18);
    r19 = *(int128_t *)(r8 + 0x1c);
    r8 = var_A8;
    if (r25 >= r8) goto loc_10030aa3c;

loc_10030aa30:
    *(int128_t *)r25 = r21;
    *(int128_t *)(r25 + 0x4) = r19;
    r25 = r25 + 0x8;
    goto loc_10030aad8;

loc_10030aad8:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r21 = *(int128_t *)(r8 + 0x30);
    r19 = *(int128_t *)(r8 + 0x34);
    r8 = var_A8;
    if (r25 >= r8) goto loc_10030aafc;

loc_10030aaf0:
    *(int128_t *)r25 = r21;
    *(int128_t *)(r25 + 0x4) = r19;
    r25 = r25 + 0x8;
    goto loc_10030ab98;

loc_10030ab98:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r21 = *(int128_t *)(r8 + 0x48);
    r19 = *(int128_t *)(r8 + 0x4c);
    r8 = var_A8;
    if (r25 >= r8) goto loc_10030abc0;

loc_10030abb0:
    *(int128_t *)r25 = r21;
    *(int128_t *)(r25 + 0x4) = r19;
    var_B0 = r25 + 0x8;
    goto loc_10030ac58;

loc_10030ac58:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r19 = *(int128_t *)(r8 + 0x10);
    r21 = *(int128_t *)(r8 + 0x14);
    r9 = var_80;
    r8 = var_78;
    if (r9 >= r8) goto loc_10030ac80;

loc_10030ac70:
    *(int128_t *)r9 = r19;
    *(int128_t *)(r9 + 0x4) = r21;
    r25 = r9 + 0x8;
    goto loc_10030ad1c;

loc_10030ad1c:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r21 = *(int128_t *)(r8 + 0x28);
    r19 = *(int128_t *)(r8 + 0x2c);
    r8 = var_78;
    if (r25 >= r8) goto loc_10030ad40;

loc_10030ad34:
    *(int128_t *)r25 = r21;
    *(int128_t *)(r25 + 0x4) = r19;
    r25 = r25 + 0x8;
    goto loc_10030addc;

loc_10030addc:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r21 = *(int128_t *)(r8 + 0x40);
    r19 = *(int128_t *)(r8 + 0x44);
    r8 = var_78;
    if (r25 >= r8) goto loc_10030ae00;

loc_10030adf4:
    *(int128_t *)r25 = r21;
    *(int128_t *)(r25 + 0x4) = r19;
    r25 = r25 + 0x8;
    goto loc_10030ae9c;

loc_10030ae9c:
    r8 = *(r22 + 0x18);
    asm { madd       x8, x20, x24, x8 };
    r21 = *(int128_t *)(r8 + 0x58);
    r19 = *(int128_t *)(r8 + 0x5c);
    r8 = var_78;
    if (r25 >= r8) goto loc_10030aec4;

loc_10030aeb4:
    *(int128_t *)r25 = r21;
    *(int128_t *)(r25 + 0x4) = r19;
    var_80 = r25 + 0x8;
    goto loc_10030af5c;

loc_10030af5c:
    asm { madd       x8, x20, x24, x8 };
    sub_10030b420(var_270, r29 - 0xf0);
    asm { madd       x8, x20, x24, x8 };
    sub_10030b420(r19, r29 - 0xf0);
    asm { madd       x8, x20, x24, x8 };
    sub_10030b420(r19, r29 - 0xf0);
    asm { madd       x8, x20, x24, x8 };
    sub_10030b420(r19, r29 - 0xf0);
    COND = *(r22 + 0x8) > zero_extend_64(r23);
    r23 = r23 + 0x1;
    if (COND) goto loc_10030a954;

loc_10030afe4:
    r19 = var_278;
    sub_100382ea4(r19 + 0x40, r29 - 0xe8);
    *(int8_t *)(r22 + 0x38) = 0x0;
    r0 = var_70;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_88;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_A0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_B8;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r22 = var_C0;
    if (r22 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r22 + 0x10))(r22);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = var_E0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r3 = var_288;
    r2 = stack[-656];
    goto loc_10030b084;

loc_10030b084:
    *(int32_t *)(r19 + 0x148) = r3 + r3 * 0x2 << 0x1;
    *(int32_t *)(r19 + 0x14c) = r2 + r2 * 0x2 << 0x1;
    r8 = &var_268;
    q2 = *(int128_t *)(r19 + 0xd0);
    q3 = *(int128_t *)(r19 + 0xe0);
    *(int128_t *)(&stack[-679] + 0xff) = q2;
    *(int128_t *)(&stack[-663] + 0xff) = q3;
    q0 = *(int128_t *)(r19 + 0xf0);
    q1 = *(int128_t *)(r19 + 0x100);
    *(int128_t *)(&stack[-615] + 0xff) = *(int128_t *)(r19 + 0x110);
    *(int128_t *)(&stack[-647] + 0xff) = q0;
    r10 = &stack[-631];
    *(int128_t *)(r10 + 0xff) = q1;
    *(r8 + 0x128) = *(r19 + 0x128);
    r9 = *(r19 + 0x130);
    var_138 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = &stack[-567];
    *(int128_t *)(r9 + 0xff) = *(int128_t *)(r19 + 0x140);
    r1 = r19 + 0x150;
    sub_1002c5700(r8 + 0x150, r1);
    sub_1003805bc(&var_268);
    sub_1002c59fc(&var_268 + 0x150);
    r19 = var_138;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    loc_100381804(&var_268 + 0xe8, r1);
    loc_100381804(&var_268 + 0xb0, r1);
    loc_100381804(&var_268 + 0x78, r1);
    loc_100381804(&var_268 + 0x40, r1);
    return;

loc_10030aec4:
    r26 = var_88;
    r27 = r25 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b274;

loc_10030aedc:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030af18;

loc_10030af00:
    if (r24 >> 0x3d != 0x0) goto loc_10030b2c4;

loc_10030af08:
    r28 = operator new();
    goto loc_10030af1c;

loc_10030af1c:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r21;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r19;
    r19 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_88 = r28;
    var_80 = r19;
    var_78 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
    }
    goto loc_10030af5c;

loc_10030b2c4:
    sub_10030b5c4();
    return;

loc_10030af18:
    r28 = 0x0;
    goto loc_10030af1c;

loc_10030b274:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030ae00:
    r26 = var_88;
    r27 = r25 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b268;

loc_10030ae18:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030ae54;

loc_10030ae3c:
    if (r24 >> 0x3d != 0x0) goto loc_10030b2bc;

loc_10030ae44:
    r28 = operator new();
    goto loc_10030ae58;

loc_10030ae58:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r21;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r19;
    r25 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_88 = r28;
    var_80 = r25;
    var_78 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
            r25 = var_80;
    }
    goto loc_10030ae9c;

loc_10030b2bc:
    sub_10030b5c4();
    return;

loc_10030ae54:
    r28 = 0x0;
    goto loc_10030ae58;

loc_10030b268:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030ad40:
    r26 = var_88;
    r27 = r25 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b25c;

loc_10030ad58:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030ad94;

loc_10030ad7c:
    if (r24 >> 0x3d != 0x0) goto loc_10030b2b4;

loc_10030ad84:
    r28 = operator new();
    goto loc_10030ad98;

loc_10030ad98:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r21;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r19;
    r25 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_88 = r28;
    var_80 = r25;
    var_78 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
            r25 = var_80;
    }
    goto loc_10030addc;

loc_10030b2b4:
    sub_10030b5c4();
    return;

loc_10030ad94:
    r28 = 0x0;
    goto loc_10030ad98;

loc_10030b25c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030ac80:
    r26 = var_88;
    r27 = r9 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b250;

loc_10030ac98:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030acd4;

loc_10030acbc:
    if (r24 >> 0x3d != 0x0) goto loc_10030b2ac;

loc_10030acc4:
    r28 = operator new();
    goto loc_10030acd8;

loc_10030acd8:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r19;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r21;
    r25 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_88 = r28;
    var_80 = r25;
    var_78 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
            r25 = var_80;
    }
    goto loc_10030ad1c;

loc_10030b2ac:
    sub_10030b5c4();
    return;

loc_10030acd4:
    r28 = 0x0;
    goto loc_10030acd8;

loc_10030b250:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030abc0:
    r26 = var_B8;
    r27 = r25 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b244;

loc_10030abd8:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030ac14;

loc_10030abfc:
    if (r24 >> 0x3d != 0x0) goto loc_10030b2a4;

loc_10030ac04:
    r28 = operator new();
    goto loc_10030ac18;

loc_10030ac18:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r21;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r19;
    r19 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_B8 = r28;
    var_B0 = r19;
    var_A8 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
    }
    goto loc_10030ac58;

loc_10030b2a4:
    sub_10030b5c4();
    return;

loc_10030ac14:
    r28 = 0x0;
    goto loc_10030ac18;

loc_10030b244:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030aafc:
    r26 = var_B8;
    r27 = r25 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b238;

loc_10030ab14:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030ab50;

loc_10030ab38:
    if (r24 >> 0x3d != 0x0) goto loc_10030b29c;

loc_10030ab40:
    r28 = operator new();
    goto loc_10030ab54;

loc_10030ab54:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r21;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r19;
    r25 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_B8 = r28;
    var_B0 = r25;
    var_A8 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
            r25 = var_B0;
    }
    goto loc_10030ab98;

loc_10030b29c:
    sub_10030b5c4();
    return;

loc_10030ab50:
    r28 = 0x0;
    goto loc_10030ab54;

loc_10030b238:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030aa3c:
    r26 = var_B8;
    r27 = r25 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b22c;

loc_10030aa54:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030aa90;

loc_10030aa78:
    if (r24 >> 0x3d != 0x0) goto loc_10030b294;

loc_10030aa80:
    r28 = operator new();
    goto loc_10030aa94;

loc_10030aa94:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r21;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r19;
    r25 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_B8 = r28;
    var_B0 = r25;
    var_A8 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
            r25 = var_B0;
    }
    goto loc_10030aad8;

loc_10030b294:
    sub_10030b5c4();
    return;

loc_10030aa90:
    r28 = 0x0;
    goto loc_10030aa94;

loc_10030b22c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030a97c:
    r26 = var_B8;
    r27 = r9 - r26;
    r25 = SAR(r27, 0x3);
    r9 = r25 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_10030b220;

loc_10030a994:
    r8 = r8 - r26;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_10030a9d0;

loc_10030a9b8:
    if (r24 >> 0x3d != 0x0) goto loc_10030b28c;

loc_10030a9c0:
    r28 = operator new();
    goto loc_10030a9d4;

loc_10030a9d4:
    r24 = r28 + r24 * 0x8;
    *(int128_t *)(r28 + r25 * 0x8) = r19;
    *(int128_t *)(0x4 + r28 + r25 * 0x8) = r21;
    r25 = 0x8 + r28 + r25 * 0x8;
    if (r27 >= 0x1) {
            memcpy(r28, r26, r27);
    }
    var_B8 = r28;
    var_B0 = r25;
    var_A8 = r24;
    if (r26 != 0x0) {
            operator delete(r26);
            r25 = var_B0;
    }
    goto loc_10030aa18;

loc_10030b28c:
    sub_10030b5c4();
    return;

loc_10030a9d0:
    r28 = 0x0;
    goto loc_10030a9d4;

loc_10030b220:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_10030a878:
    r24 = var_E0;
    r25 = r23 - r24;
    if (r25 <= -0x3) goto loc_10030b280;

loc_10030a888:
    r23 = SAR(r25, 0x1);
    r8 = r23 + 0x1;
    if (r25 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r25;
            }
            else {
                    r8 = r8;
            }
    }
    if (r23 < 0x3fffffffffffffff) {
            if (!CPU_FLAGS & B) {
                    r19 = 0x7fffffffffffffff;
            }
            else {
                    r19 = r8;
            }
    }
    var_270 = r9;
    if (r19 == 0x0) goto loc_10030a8c4;

loc_10030a8b0:
    if ((r19 & 0xffffffff80000000) != 0x0) goto loc_10030b2cc;

loc_10030a8b4:
    r26 = operator new();
    goto loc_10030a8c8;

loc_10030a8c8:
    r28 = r26 + r23 * 0x2;
    r23 = r26 + r19 * 0x2;
    *(int16_t *)r28 = *(int16_t *)(r27 + r21 * 0x2);
    r28 = r28 + 0x2;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_E0 = r26;
    if (r24 != 0x0) {
            operator delete(r24);
            r9 = *(r22 + 0x8);
    }
    else {
            r9 = var_270;
    }
    goto loc_10030a910;

loc_10030b2cc:
    sub_10030b5c4();
    return;

loc_10030a8c4:
    r26 = 0x0;
    goto loc_10030a8c8;

loc_10030b280:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

@end