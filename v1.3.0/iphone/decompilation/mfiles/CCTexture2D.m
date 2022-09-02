@implementation CCTexture2D

-(void *)initWithData:(void *)arg2 pixelFormat:(int)arg3 pixelsWide:(unsigned long long)arg4 pixelsHigh:(unsigned long long)arg5 contentSize:(struct CGSize)arg6 {
    memcpy(&r6, &arg6, 0x8);
    r0 = [self initWithData:arg2 pixelFormat:arg3 pixelsWide:arg4 pixelsHigh:arg5 contentSize:r6 textureScale:r7];
    return r0;
}

-(void *)initFromMCTexture:(struct shared_ptr<mc::Renderer::Texture>)arg2 textureScale:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    *(int32_t *)(r19 + 0x8) = sub_10037eef0(*r20);
    r0 = *r20;
    r0 = sub_10037ef08(r0);
    r21 = r0;
    r23 = r0 >> 0x20;
    r0 = *r20;
    sub_10037ef10(r0);
    asm { ucvtf      d0, w22 };
    asm { ucvtf      d1, w24 };
    *(int128_t *)(r19 + 0x10) = d0;
    *(int128_t *)(r19 + 0x18) = d1;
    *(int128_t *)(r19 + 0x20) = r21 & 0xffffffff;
    *(int128_t *)(r19 + 0x28) = r23;
    *(int32_t *)(r19 + 0x30) = sub_10037ef00(*r20);
    asm { ucvtf      s0, w22 };
    asm { ucvtf      s1, w21 };
    asm { ucvtf      s2, w24 };
    asm { ucvtf      s3, w23 };
    asm { fdiv       s0, s0, s1 };
    asm { fdiv       s1, s2, s3 };
    *(int128_t *)(r19 + 0x34) = s0;
    *(int128_t *)(r19 + 0x38) = s1;
    if (s3 != 0x3ff0000000000000) {
            asm { fcvt       d0, s3 };
            *(int128_t *)(r19 + 0x10) = q0;
            asm { ucvtf      v0.2d, v2.2d };
            asm { fcvtn      v0.2s, v0.2d };
            asm { fcvtl      v0.2d, v0.2s };
            asm { fcvtzu     v0.2d, v0.2d };
            *(int128_t *)(r19 + 0x20) = q0;
    }
    *(int16_t *)(r19 + 0x3c) = 0x0;
    *(int32_t *)(r19 + 0x40) = 0x0;
    r9 = *(int128_t *)r20;
    r8 = *(int128_t *)(r20 + 0x8);
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x11, [x10] };
                    r11 = r11 + 0x1;
                    asm { stxr       w12, x11, [x10] };
            } while (r12 != 0x0);
    }
    r20 = *(r19 + 0x50);
    *(int128_t *)(r19 + 0x48) = r9;
    *(int128_t *)(r19 + 0x50) = r8;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = r19;
    return r0;
}

-(void)bind {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sub_100383410();
    r8 = *(self + 0x50);
    var_18 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    sub_100385670(r0, &var_20, 0x0);
    r19 = var_18;
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
    return;
}

-(void)releaseData:(void *)arg2 {
    free(arg2);
    return;
}

-(void *)keepData:(void *)arg2 length:(unsigned long long)arg3 {
    r0 = arg2;
    return r0;
}

-(void *)initWithData:(void *)arg2 pixelFormat:(int)arg3 pixelsWide:(unsigned long long)arg4 pixelsHigh:(unsigned long long)arg5 contentSize:(struct CGSize)arg6 textureScale:(float)arg7 {
    memcpy(&r6, &arg6, 0x8);
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0xa0;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r23 = r4;
    r21 = r3;
    r22 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = sub_100383410();
            asm { fcvtzu     w3, d10 };
            asm { fcvtzu     w4, d9 };
            sub_100383570(r0, r23, r20, r3, r4, r21, r22, &var_80);
            if (0x0 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*0x0 + 0x10))(0x0);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            asm { fmax       s0, s8, s9 };
            r9 = var_70;
            r8 = var_68;
            var_88 = r8;
            if (r8 != 0x0) {
                    do {
                            asm { ldxr       x9, [x8] };
                            r9 = r9 + 0x1;
                            asm { stxr       w10, x9, [x8] };
                    } while (r10 != 0x0);
            }
            r19 = [r19 initFromMCTexture:&var_90 textureScale:r3];
            r20 = var_88;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r20 = var_68;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)contentSize {
    r0 = self;
    asm { fcvt       d1, s0 };
    asm { fdiv       d0, d0, d1 };
    asm { fdiv       d1, d2, d1 };
    return r0;
}

-(void *)description {
    r20 = @class(NSString);
    [self class];
    [self stringForFormat];
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    r0 = [r20 stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = sub_100383410();
    r8 = *(r19 + 0x50);
    var_18 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    sub_1003858b8(r0, &var_20);
    r20 = var_18;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    [[&var_30 super] dealloc];
    return;
}

-(struct CGSize)contentSizeInPixels {
    r0 = self;
    return r0;
}

-(int)pixelFormat {
    r0 = *(int32_t *)(self + 0x30);
    return r0;
}

-(unsigned long long)pixelsWide {
    r0 = *(self + 0x20);
    return r0;
}

-(unsigned long long)pixelsHigh {
    r0 = *(self + 0x28);
    return r0;
}

-(unsigned int)name {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void)setMaxT:(float)arg2 {
    *(int32_t *)(self + 0x38) = s0;
    return;
}

-(bool)hasPremultipliedAlpha {
    r0 = *(int8_t *)(self + 0x3c);
    return r0;
}

-(float)maxS {
    r0 = self;
    return r0;
}

-(void)setMaxS:(float)arg2 {
    *(int32_t *)(self + 0x34) = s0;
    return;
}

-(float)maxT {
    r0 = self;
    return r0;
}

-(int)resolutionType {
    r0 = *(int32_t *)(self + 0x40);
    return r0;
}

-(void)setResolutionType:(int)arg2 {
    *(int32_t *)(self + 0x40) = arg2;
    return;
}

-(void).cxx_destruct {
    sub_100298524(self + 0x48);
    return;
}

-(void *)initWithString:(void *)arg2 fontDef:(void *)arg3 {
    r0 = [self initWithStringMCTextRenderer:arg2 fontDef:arg3];
    return r0;
}

-(void *).cxx_construct {
    r0 = self;
    *(int128_t *)(r0 + 0x48) = 0x0;
    *(int128_t *)(r0 + 0x50) = 0x0;
    return r0;
}

-(void *)initWithString:(void *)arg2 dimensions:(struct CGSize)arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 fontName:(void *)arg7 fontSize:(float)arg8 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithStringMCTextRenderer:arg2 dimensions:r3 hAlignment:r4 vAlignment:r5 lineBreakMode:r6 fontName:r7 fontSize:arg8];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 {
    r2 = arg2;
    r0 = self;
    r6 = arg3;
    asm { fcvt       s2, d0 };
    r0 = [r0 initWithString:r2 dimensions:0x0 hAlignment:0x0 vAlignment:0x0 lineBreakMode:r6 fontName:r7 fontSize:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    var_0 = arg8;
    memcpy(&r5, &arg5, 0x8);
    r4 = arg4;
    r2 = arg2;
    r0 = self;
    r8 = arg3;
    asm { fcvt       s2, d0 };
    r0 = [r0 initWithString:r2 dimensions:r4 hAlignment:r5 vAlignment:r6 lineBreakMode:r8 fontName:r7 fontSize:var_0];
    return r0;
}

-(void)generateMipmap {
    [self bind];
    glGenerateMipmap(0xde1);
    *(int8_t *)(self + 0x3d) = 0x1;
    return;
}

-(void)setTexParameters:(struct _ccTexParams *)arg2 {
    sub_10037ef08(*(self + 0x48));
    *(int128_t *)(*(self + 0x48) + 0x40) = *(int128_t *)arg2;
    [self bind];
    return;
}

-(void)setAntiAliasTexParameters {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x3e) != 0x0) {
            r19 = r0;
            [r0 bind];
            if (*(int8_t *)(r19 + 0x3d) == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = 0x2701;
                    }
                    else {
                            r2 = 0x2601;
                    }
            }
            glTexParameteri(0xde1, 0x2801, r2);
            glTexParameteri(0xde1, 0x2800, 0x2601);
            *(int8_t *)(r19 + 0x3e) = 0x0;
    }
    return;
}

-(void)setAliasTexParameters {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x3e) == 0x0) {
            r19 = r0;
            [r0 bind];
            if (*(int8_t *)(r19 + 0x3d) == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = 0x2700;
                    }
                    else {
                            r2 = 0x2600;
                    }
            }
            glTexParameteri(0xde1, 0x2801, r2);
            glTexParameteri(0xde1, 0x2800, 0x2600);
            *(int8_t *)(r19 + 0x3e) = 0x1;
    }
    return;
}

+(int)defaultAlphaPixelFormat {
    return *(int32_t *)0x1011d4190;
}

+(void)setDefaultAlphaPixelFormat:(int)arg2 {
    *(int32_t *)0x1011d4190 = arg2;
    return;
}

+(unsigned long long)bitsPerPixelForFormat:(int)arg2 {
    r2 = arg2;
    if (r2 <= 0x5) {
            r0 = *(0x100ba6708 + r2 * 0x8);
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(unsigned long long)bitsPerPixelForFormat {
    r0 = [self class];
    r0 = [r0 bitsPerPixelForFormat:*(int32_t *)(self + 0x30)];
    return r0;
}

-(void *)stringForFormat {
    r8 = *(int32_t *)(self + 0x30);
    if (r8 <= 0x5) {
            r0 = (0x1003098f0 + *(int8_t *)(0x100ba6700 + r8) * 0x4)(@"RGBA8888");
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)forcePremultipliedAlpha {
    *(int8_t *)(self + 0x3c) = 0x1;
    return;
}

-(void *)initWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 lineBreakMode:(int)arg5 fontName:(void *)arg6 fontSize:(double)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithString:arg2 fontName:r5 fontSize:r3 dimensions:0x0 hAlignment:r4 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 fontName:(void *)arg5 fontSize:(double)arg6 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithString:arg2 fontName:r4 fontSize:r3 dimensions:0x0 hAlignment:r6 vAlignment:r7];
    return r0;
}

-(void *)initWithEncodedImageData:(void *)arg2 resolutionType:(int)arg3 textureScale:(float)arg4 {
    r4 = arg4;
    r3 = arg3;
    r0 = self;
    r31 = r31 - 0x80;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    if (arg2 != 0x0) {
            v8 = v0;
            r19 = r3;
            r21 = r0;
            r20 = sub_10033031c();
            r23 = sub_100444160();
            r24 = [r22 bytes];
            r0 = [r22 length];
            r0 = sub_100444704(r23, r20, &var_70, r24, r0);
            r22 = 0x0;
            if (r0 != 0x0) {
                    var_58 = 0x0;
                    r2 = var_58;
                    r3 = stack[-112];
                    asm { ldpsw      x4, x5, [sp, #0x70 + var_70] };
                    asm { scvtf      d0, w8 };
                    asm { scvtf      d1, w9 };
                    r22 = [r21 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6 textureScale:r7];
                    r0 = var_58;
                    if (r0 != 0x0) {
                            free(r0);
                    }
                    *(int8_t *)(int64_t *)&r22->_hasPremultipliedAlpha = var_5C;
                    *(int32_t *)(int64_t *)&r22->_resolutionType = r19;
            }
            operator delete(r20);
    }
    r0 = r22;
    return r0;
}

-(void *)initWithEncodedImageDataAsync:(void *)arg2 resolutionType:(int)arg3 textureScale:(float)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xc0;
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
    if (r2 == 0x0) goto loc_100330618;

loc_1003303e0:
    v8 = v0;
    r21 = r3;
    r22 = r2;
    r23 = r0;
    r20 = sub_10033031c();
    r0 = operator new();
    r19 = r0;
    *(r0 + 0x18) = 0x0;
    *(r0 + 0x28) = 0x0;
    if (sub_100444870(sub_100444160(), r20, r19, [r22 bytes], [r22 length]) == 0x0) goto loc_100330558;

loc_10033045c:
    r25 = @selector(length);
    r24 = @selector(bytes);
    r0 = [r22 retain];
    asm { ldpsw      x24, x25, [x19] };
    asm { sxtw       x0, w8 };
    r26 = malloc(r0);
    r3 = *(int128_t *)(r19 + 0x10);
    asm { scvtf      d0, w8 };
    asm { scvtf      d1, w9 };
    r0 = [r23 initWithData:r26 pixelFormat:r3 pixelsWide:r24 pixelsHigh:r25 contentSize:r6 textureScale:r7];
    r23 = r0;
    *(int8_t *)(int64_t *)&r0->_hasPremultipliedAlpha = *(int8_t *)(r19 + 0x14);
    *(int32_t *)(int64_t *)&r0->_resolutionType = r21;
    free(r26);
    r0 = operator new();
    *(int128_t *)r0 = 0x100e78ad8;
    *(int128_t *)(r0 + 0x8) = r20;
    *(int128_t *)(r0 + 0x10) = r19;
    *(int128_t *)(r0 + 0x18) = r22;
    var_70 = r0;
    r0 = operator new();
    *(int128_t *)r0 = 0x100e78b68;
    *(int128_t *)(r0 + 0x8) = r20;
    *(int128_t *)(r0 + 0x10) = r19;
    *(int128_t *)(r0 + 0x18) = r22;
    [r23 queueTextureUpdate:&stack[-152] cleanup:&stack[-184]];
    r0 = r0;
    if (&stack[-184] == r0) goto loc_100330620;

loc_100330548:
    if (r0 == 0x0) goto loc_10033062c;

loc_10033054c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100330628;

loc_100330628:
    (r8)();
    goto loc_10033062c;

loc_10033062c:
    r0 = var_70;
    if (&stack[-152] == r0) goto loc_10033064c;

loc_10033063c:
    if (r0 == 0x0) goto loc_100330658;

loc_100330640:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100330654;

loc_100330654:
    (r8)();
    goto loc_100330658;

loc_100330658:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10033064c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100330654;

loc_100330620:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100330628;

loc_100330558:
    if (sub_100444704(sub_100444160(), r20, r19, [r22 bytes], [r22 length]) == 0x0) goto loc_100330608;

loc_100330598:
    r2 = *(r19 + 0x18);
    r3 = *(int128_t *)(r19 + 0x10);
    asm { ldpsw      x4, x5, [x19] };
    asm { scvtf      d0, w8 };
    asm { scvtf      d1, w9 };
    r0 = [r23 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6 textureScale:r7];
    r23 = r0;
    *(int8_t *)(int64_t *)&r0->_hasPremultipliedAlpha = *(int8_t *)(r19 + 0x14);
    *(int32_t *)(int64_t *)&r0->_resolutionType = r21;
    operator delete(r20);
    free(*(r19 + 0x18));
    operator delete(r19);
    goto loc_100330658;

loc_100330608:
    operator delete(r20);
    operator delete(r19);
    goto loc_100330618;

loc_100330618:
    r23 = 0x0;
    goto loc_100330658;
}

-(void)updateWithData:(void *)arg2 pixelsWide:(unsigned long long)arg3 pixelsHigh:(unsigned long long)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self bind];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_format));
    r8 = *(int32_t *)(self + r8);
    if (r8 <= 0x5) {
            (0x100330ec8 + *(int8_t *)(0x100bc41e8 + r8) * 0x4)();
    }
    else {
            [NSException raise:**_NSInternalInconsistencyException format:@""];
    }
    return;
}

-(void)queueTextureUpdate:(struct function<void (void **, int *, int *)>)arg2 cleanup:(struct function<void ()>)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self retain];
    var_90 = self;
    sub_100331218(&var_90 + 0x8, r2);
    sub_100011ddc(&var_90 + 0x28, r3);
    r0 = operator new();
    *(int128_t *)r0 = 0x100e78d40;
    *(int128_t *)(r0 + 0x8) = var_90;
    sub_100331620(r0 + 0x10, &var_90 + 0x8);
    sub_100053664(r21 + 0x30, &var_90 + 0x28);
    sub_10097b5f0(0x1, &stack[-88], 0x0, 0x0, 0x10);
    r0 = r21;
    if (&stack[-88] == r0) goto loc_1003310d0;

loc_1003310c0:
    if (r0 == 0x0) goto loc_1003310dc;

loc_1003310c4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1003310d8;

loc_1003310d8:
    (r8)();
    goto loc_1003310dc;

loc_1003310dc:
    r0 = var_50;
    if (&var_90 + 0x28 == r0) goto loc_100331100;

loc_1003310f0:
    if (r0 == 0x0) goto loc_10033110c;

loc_1003310f4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100331108;

loc_100331108:
    (r8)();
    goto loc_10033110c;

loc_10033110c:
    r0 = var_70;
    if (&var_90 + 0x8 == r0) goto loc_100331130;

loc_100331120:
    if (r0 == 0x0) goto loc_10033113c;

loc_100331124:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100331138;

loc_100331138:
    (r8)();
    goto loc_10033113c;

loc_10033113c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100331130:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100331138;

loc_100331100:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100331108;

loc_1003310d0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1003310d8;
}

-(void *)initWithMCTextRendererProperties:(struct MCTextRendererProperties *)arg2 drawWidth:(float)arg3 drawHeight:(float)arg4 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = arg2;
    r20 = self;
    var_50 = 0x0;
    [[CCConfiguration sharedConfiguration] UseNewTTFRenderingCode];
    r0 = sub_10045522c();
    r8 = &var_50;
    r9 = &var_4C;
    r0 = sub_100455294(r0, r19, &stack[-68], &var_38, &stack[-76], &var_40, &stack[-84], &var_48);
    r0 = loc_1004551bc(r19, r19, &stack[-68], &var_38);
    asm { ldpsw      x9, x8, [sp, #0x60 + var_48] };
    if (r0 == 0x0) {
            asm { csinc      x10, x10, xzr, eq };
    }
    r21 = calloc(r8, r9 * 0x4);
    r0 = sub_10045522c();
    asm { scvtf      s0, s0 };
    asm { scvtf      s1, s1 };
    sub_100455550(r0);
    asm { scvtf      d9, w8 };
    asm { scvtf      d8, w8 };
    r0 = loc_1004551bc(r19, r1, r2, r3);
    asm { ldpsw      x5, x4, [sp, #0x60 + var_48] };
    if (r0 != 0x0) {
            r20 = [r20 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6];
    }
    else {
            r0 = [r20 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6];
            r20 = r0;
            *(int8_t *)(int64_t *)&r0->_hasPremultipliedAlpha = 0x1;
    }
    free(r21);
    if (r19 != 0x0) {
            operator delete(sub_100455134(r19));
    }
    r0 = r20;
    return r0;
}

-(void *)initWithMCTextRendererPropertiesAsync:(struct MCTextRendererProperties *)arg2 drawWidth:(float)arg3 drawHeight:(float)arg4 {
    r31 = r31 - 0x130;
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
    v8 = v1;
    v9 = v0;
    r19 = arg2;
    r20 = self;
    var_F0 = 0x0;
    var_108 = 0x0;
    r22 = [[CCConfiguration sharedConfiguration] UseNewTTFRenderingCode];
    r0 = sub_10045522c();
    r8 = &var_108;
    r9 = &var_104;
    r2 = &stack[-252];
    r3 = &var_F0;
    r0 = sub_100455294(r0, r19, r2, r3, &stack[-260], &var_F8, &stack[-268], &var_100);
    r0 = loc_1004551bc(r19, r19, r2, r3);
    asm { ldpsw      x9, x8, [sp, #0x120 + var_100] };
    if (r0 == 0x0) {
            asm { csinc      x10, x10, xzr, eq };
    }
    r1 = r9 * 0x4;
    r21 = calloc(r8, r1);
    asm { scvtf      d9, w8 };
    asm { scvtf      d8, w8 };
    r0 = loc_1004551bc(r19, r1, r2, r3);
    asm { ldpsw      x5, x4, [sp, #0x120 + var_100] };
    if (r22 == 0x0) goto loc_100331f90;

loc_100331f6c:
    if (r0 != 0x0) {
            r20 = [r20 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6];
    }
    else {
            r0 = [r20 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6];
            r20 = r0;
            *(int8_t *)(int64_t *)&r0->_hasPremultipliedAlpha = 0x1;
    }
    r0 = operator new();
    *(int128_t *)r0 = 0x100e78ee8;
    *(int128_t *)(r0 + 0x8) = r19;
    *(int128_t *)(r0 + 0x10) = stack[-252];
    *(int128_t *)(r0 + 0x14) = var_F0;
    *(int128_t *)(r0 + 0x18) = stack[-260];
    *(int128_t *)(r0 + 0x1c) = var_F8;
    *(int128_t *)(r0 + 0x20) = stack[-268];
    *(int128_t *)(r0 + 0x24) = var_100;
    *(r0 + 0x28) = r21;
    var_70 = r0;
    [r20 queueTextureUpdate:r29 - 0x88 cleanup:&var_A8];
    r0 = &var_A8;
    if (&var_A8 == r0) goto loc_10033211c;

loc_100332050:
    if (r0 == 0x0) goto loc_100332128;

loc_100332054:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100332124;

loc_100332124:
    (r8)();
    goto loc_100332128;

loc_100332128:
    r0 = var_70;
    r8 = r29 - 0x88;
    goto loc_100332148;

loc_100332148:
    if (r8 == r0) goto loc_100332160;

loc_100332150:
    if (r0 == 0x0) goto loc_10033216c;

loc_100332154:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100332168;

loc_100332168:
    (r8)();
    goto loc_10033216c;

loc_10033216c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100332160:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100332168;

loc_10033211c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100332124;

loc_100331f90:
    if (r0 != 0x0) {
            r20 = [r20 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6];
    }
    else {
            r0 = [r20 initWithData:r2 pixelFormat:r3 pixelsWide:r4 pixelsHigh:r5 contentSize:r6];
            r20 = r0;
            *(int8_t *)(int64_t *)&r0->_hasPremultipliedAlpha = 0x1;
    }
    r0 = operator new();
    *(int128_t *)r0 = 0x100e78fe8;
    *(int128_t *)(r0 + 0x8) = r19;
    *(int128_t *)(r0 + 0x10) = stack[-252];
    *(int128_t *)(r0 + 0x14) = var_F0;
    *(int128_t *)(r0 + 0x18) = stack[-260];
    *(int128_t *)(r0 + 0x1c) = var_F8;
    *(int128_t *)(r0 + 0x20) = stack[-268];
    *(int128_t *)(r0 + 0x24) = var_100;
    *(int128_t *)(r0 + 0x28) = r21;
    *(int128_t *)(r0 + 0x30) = 0x0;
    var_B0 = r0;
    r0 = operator new();
    *(int128_t *)r0 = 0x100e79068;
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = r21;
    *(int128_t *)(r0 + 0x18) = r19;
    [r20 queueTextureUpdate:&stack[-216] cleanup:&stack[-248]];
    r0 = r0;
    if (&stack[-248] == r0) goto loc_100332134;

loc_10033210c:
    if (r0 == 0x0) goto loc_100332140;

loc_100332110:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10033213c;

loc_10033213c:
    (r8)();
    goto loc_100332140;

loc_100332140:
    r0 = var_B0;
    r8 = &stack[-216];
    goto loc_100332148;

loc_100332134:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10033213c;
}

-(void *)initWithStringMCTextRenderer:(void *)arg2 dimensions:(struct CGSize)arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 fontName:(void *)arg7 fontSize:(float)arg8 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xf0;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v10 = v2;
    r23 = r6;
    r20 = r5;
    r22 = r4;
    r21 = r3;
    r24 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] UseNewTTFRenderingCode] == 0x0) goto loc_100332f8c;

loc_100332e64:
    r8 = 0x101137000;
    sub_100331dc0(&var_90, [r24 UTF8String]);
    sub_100331aac(r23);
    if (r22 == 0x2) {
            r8 = 0x101137000;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r22 != 0x1) {
            asm { csinc      w22, w8, wzr, ne };
    }
    if (r21 != 0x2) {
            asm { cneg       x8, x8, ne };
    }
    if (r21 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r23 = 0x1;
            }
            else {
                    r23 = 0x0;
            }
    }
    r0 = operator new();
    r21 = r0;
    if (r20 < 0x6) {
            if (!CPU_FLAGS & B) {
                    r4 = 0x0;
            }
            else {
                    r4 = r20;
            }
    }
    if (r23 >= 0x3) {
            asm { csinc      w3, wzr, w23, hs };
    }
    r0 = sub_1004550e4(r0, &var_90, &var_98, r3, r4);
    sub_100455158(r21, 0x1);
    sub_100455160(r21);
    sub_100455168(r21, r22);
    sub_100455170(r21);
    sub_100383410();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    asm { fcvt       s0, d9 };
    asm { fcvt       s1, d8 };
    r0 = sub_100384df8(r20, &var_C0, r21, &var_D0, 0x1, &stack[-136]);
    if (&stack[-136] == 0x0) goto loc_100333074;

loc_100332f7c:
    if (0x0 == 0x0) goto loc_100333080;

loc_100332f80:
    r8 = *0x0;
    r8 = *(r8 + 0x28);
    goto loc_10033307c;

loc_10033307c:
    (r8)();
    goto loc_100333080;

loc_100333080:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    r9 = var_A8;
    r8 = var_A0;
    var_D8 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [r19 initFromMCTexture:&var_E0 textureScale:r3];
    r20 = var_D8;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r20 = var_A0;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_100333174;

loc_100333174:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100333074:
    r8 = *0x0;
    r8 = *(r8 + 0x20);
    goto loc_10033307c;

loc_100332f8c:
    r8 = 0x101137000;
    sub_100331dc0(&var_90, [r24 UTF8String]);
    sub_100331aac(r23);
    if (r22 == 0x2) {
            r8 = 0x101137000;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r22 != 0x1) {
            asm { csinc      w22, w8, wzr, ne };
    }
    if (r21 != 0x2) {
            asm { cneg       x8, x8, ne };
    }
    if (r21 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r23 = 0x1;
            }
            else {
                    r23 = 0x0;
            }
    }
    r0 = operator new();
    r21 = r0;
    if (r20 < 0x6) {
            if (!CPU_FLAGS & B) {
                    r4 = 0x0;
            }
            else {
                    r4 = r20;
            }
    }
    if (r23 >= 0x3) {
            asm { csinc      w3, wzr, w23, hs };
    }
    r0 = sub_1004550e4(r0, &var_90, &var_A8, r3, r4);
    sub_100455158(r21, 0x1);
    sub_100455160(r21);
    sub_100455168(r21, r22);
    sub_100455170(r21);
    asm { fcvt       s0, d9 };
    asm { fcvt       s1, d8 };
    r19 = [r19 initWithMCTextRendererProperties:r21 drawWidth:r3 drawHeight:r4];
    goto loc_100333174;
}

-(void *)initWithStringMCTextRenderer:(void *)arg2 fontDef:(void *)arg3 {
    r31 = r31 - 0x120;
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
    r20 = arg3;
    r19 = arg2;
    var_100 = self;
    if ([[CCConfiguration sharedConfiguration] UseNewTTFRenderingCode] == 0x0) goto loc_1003327b4;

loc_100332440:
    sub_100331dc0(&var_A8, [r19 UTF8String]);
    sub_100331aac([r20 fontName]);
    r26 = [r20 fontFillColor];
    [r20 fontFillColor];
    [r20 fontFillColor];
    r23 = [r20 strokeColor];
    [r20 strokeColor];
    r19 = [r20 strokeColor];
    r8 = &@selector(getVSZTexture:);
    r0 = objc_msgSend(r20, *(r8 + 0x5b0));
    var_108 = r19;
    if (r0 == 0x2) {
            r8 = &@selector(getVSZTexture:);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r0 != 0x1) {
            asm { csinc      w25, w8, wzr, ne };
    }
    r0 = [r20 alignment];
    if (r0 != 0x2) {
            asm { cneg       x8, x8, ne };
    }
    r8 = 0x1;
    if (r0 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x1;
            }
            else {
                    r8 = 0x0;
            }
    }
    if (r8 >= 0x3) {
            asm { csinc      w19, wzr, w8, hs };
    }
    r0 = [r20 lineBreakMode];
    if (r0 < 0x6) {
            if (!CPU_FLAGS & B) {
                    r22 = 0x0;
            }
            else {
                    r22 = r0;
            }
    }
    r21 = operator new();
    [r20 fontSize];
    asm { ubfx       w8, w27, #0x8, #0x8 };
    asm { ucvtf      s0, w9 };
    asm { ubfx       w9, w28, #0x10, #0x8 };
    asm { fdiv       s1, s0, s3 };
    asm { ucvtf      s0, w8 };
    asm { fdiv       s2, s0, s3 };
    asm { ucvtf      s4, w9 };
    asm { scvtf      s0, w0 };
    asm { fdiv       s3, s4, s3 };
    r0 = sub_1004550e4(r21, &var_A8, &var_B0, r19, r22);
    sub_100455158(r21, 0x0);
    if ([r20 strokeEnabled] != 0x0) {
            [r20 strokeSize];
    }
    asm { fcvt       s0, d0 };
    sub_100455160(r21);
    sub_100455168(r21, r25);
    asm { ubfx       w8, w24, #0x8, #0x8 };
    r9 = var_108;
    asm { ubfx       w9, w9, #0x10, #0x8 };
    asm { ucvtf      s0, w10 };
    asm { fdiv       s0, s0, s2 };
    asm { ucvtf      s1, w8 };
    asm { fdiv       s1, s1, s2 };
    asm { ucvtf      s3, w9 };
    asm { fdiv       s2, s3, s2 };
    sub_100455170(r21);
    [r20 shadowOffset];
    [r20 shadowOffset];
    asm { fcvt       s0, d8 };
    asm { fcvt       s1, d1 };
    sub_100455184(r21);
    sub_100455198(r21, [r20 shadowEnabled]);
    [r20 shadowBlur];
    sub_100455190(r21);
    r19 = [r20 shadowColor];
    [r20 shadowColor];
    [r20 shadowColor];
    [r20 shadowOpacity];
    asm { ubfx       w8, w22, #0x8, #0x8 };
    asm { ubfx       w9, w23, #0x10, #0x8 };
    asm { fcvtzs     w10, s0 };
    r11 = r19 & 0xff;
    asm { ucvtf      s0, w11 };
    asm { fdiv       s0, s0, s3 };
    asm { ucvtf      s1, w8 };
    asm { fdiv       s1, s1, s3 };
    asm { ucvtf      s2, w9 };
    asm { fdiv       s2, s2, s3 };
    asm { ucvtf      s4, w10 };
    asm { fdiv       s3, s4, s3 };
    sub_1004551a0(r21);
    sub_100383410();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    [r20 dimensions];
    [r20 dimensions];
    asm { fcvt       s0, d8 };
    asm { fcvt       s1, d1 };
    r0 = sub_100384df8(r19, &var_D8, r21, &var_E8, 0x1, &stack[-160]);
    if (&stack[-160] == 0x0) goto loc_100332b04;

loc_1003327a4:
    if (0x0 == 0x0) goto loc_100332b10;

loc_1003327a8:
    r8 = *0x0;
    r8 = *(r8 + 0x28);
    goto loc_100332b0c;

loc_100332b0c:
    (r8)();
    goto loc_100332b10;

loc_100332b10:
    r10 = 0x437f0000;
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D8);
    }
    r9 = var_C0;
    r8 = var_B8;
    var_F0 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [var_100 initFromMCTexture:&var_F8 textureScale:r3];
    r20 = var_F0;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r20 = var_B8;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_100332c04;

loc_100332c04:
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100332b04:
    r8 = *0x0;
    r8 = *(r8 + 0x20);
    goto loc_100332b0c;

loc_1003327b4:
    sub_100331dc0(&var_A8, [r19 UTF8String]);
    sub_100331aac([r20 fontName]);
    r26 = [r20 fontFillColor];
    [r20 fontFillColor];
    [r20 fontFillColor];
    r21 = [r20 strokeColor];
    [r20 strokeColor];
    r23 = [r20 strokeColor];
    if ([r20 vertAlignment] == 0x1) {
            r25 = 0x1;
    }
    else {
            r8 = &@selector(getVSZTexture:);
            if ([r20 vertAlignment] == 0x2) {
                    r8 = &@selector(getVSZTexture:);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r25 = r8 << 0x1;
    }
    var_108 = r23;
    r0 = [r20 alignment];
    r23 = r21;
    if (r0 != 0x2) {
            asm { cneg       x8, x8, ne };
    }
    r8 = 0x1;
    if (r0 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x1;
            }
            else {
                    r8 = 0x0;
            }
    }
    if (r8 >= 0x3) {
            asm { csinc      w19, wzr, w8, hs };
    }
    r0 = [r20 lineBreakMode];
    if (r0 < 0x6) {
            if (!CPU_FLAGS & B) {
                    r22 = 0x0;
            }
            else {
                    r22 = r0;
            }
    }
    r19 = @selector(vertAlignment);
    r21 = operator new();
    [r20 fontSize];
    asm { ubfx       w8, w27, #0x8, #0x8 };
    asm { ucvtf      s0, w9 };
    asm { ubfx       w9, w28, #0x10, #0x8 };
    asm { fdiv       s1, s0, s3 };
    asm { ucvtf      s0, w8 };
    asm { fdiv       s2, s0, s3 };
    asm { ucvtf      s4, w9 };
    asm { scvtf      s0, w0 };
    asm { fdiv       s3, s4, s3 };
    r0 = sub_1004550e4(r21, &var_A8, &var_C0, r19, r22);
    sub_100455158(r21, 0x0);
    if ([r20 strokeEnabled] != 0x0) {
            [r20 strokeSize];
    }
    asm { fcvt       s0, d0 };
    sub_100455160(r21);
    sub_100455168(r21, r25);
    asm { ubfx       w8, w24, #0x8, #0x8 };
    asm { ubfx       w9, w9, #0x10, #0x8 };
    asm { ucvtf      s0, w10 };
    asm { fdiv       s0, s0, s2 };
    asm { ucvtf      s1, w8 };
    asm { fdiv       s1, s1, s2 };
    asm { ucvtf      s3, w9 };
    asm { fdiv       s2, s3, s2 };
    sub_100455170(r21);
    [r20 shadowOffset];
    [r20 shadowOffset];
    asm { fcvt       s0, d8 };
    asm { fcvt       s1, d1 };
    sub_100455184(r21);
    sub_100455198(r21, [r20 shadowEnabled]);
    [r20 shadowBlur];
    sub_100455190(r21);
    [r20 shadowColor];
    [r20 shadowColor];
    [r20 shadowColor];
    [r20 shadowOpacity];
    asm { ubfx       w8, w22, #0x8, #0x8 };
    asm { ubfx       w9, w23, #0x10, #0x8 };
    asm { fcvtzs     w10, s0 };
    asm { ucvtf      s0, w11 };
    asm { fdiv       s0, s0, s3 };
    asm { ucvtf      s1, w8 };
    asm { fdiv       s1, s1, s3 };
    asm { ucvtf      s2, w9 };
    asm { fdiv       s2, s2, s3 };
    asm { ucvtf      s4, w10 };
    asm { fdiv       s3, s4, s3 };
    sub_1004551a0(r21);
    [r20 dimensions];
    [r20 dimensions];
    asm { fcvt       s0, d8 };
    asm { fcvt       s1, d1 };
    r19 = [var_100 initWithMCTextRendererProperties:r21 drawWidth:r3 drawHeight:r4];
    goto loc_100332c04;
}

@end