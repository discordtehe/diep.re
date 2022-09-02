@implementation CCLabelAtlas

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(unsigned long long)arg4 itemHeight:(unsigned long long)arg5 startCharMap:(unsigned long long)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(unsigned long long)arg4 itemHeight:(unsigned long long)arg5 startCharMap:(unsigned long long)arg6 {
    r0 = [self initWithString:arg2 texture:[[CCTextureCache sharedTextureCache] addImage:arg3] itemWidth:arg4 itemHeight:arg5 startCharMap:arg6];
    return r0;
}

-(void)dealloc {
    [self->_string release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithString:(void *)arg2 texture:(void *)arg3 itemWidth:(unsigned long long)arg4 itemHeight:(unsigned long long)arg5 startCharMap:(unsigned long long)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg6;
    r19 = arg2;
    r0 = [[&var_40 super] initWithTexture:arg3 tileWidth:arg4 tileHeight:arg5 itemsToRender:[arg2 length]];
    r21 = r0;
    if (r0 != 0x0) {
            r21->_mapStartChar = r20;
            [r21 setString:r2];
    }
    r0 = r21;
    return r0;
}

-(void)updateAtlasValues {
    r31 = r31 - 0x120;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    r24 = [*(self + r20) length];
    var_110 = [*(r19 + r20) UTF8String];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    var_118 = r8;
    r0 = *(r19 + r8);
    r0 = [r0 texture];
    [r0 pixelsWide];
    [r0 pixelsHigh];
    if (r24 != 0x0) {
            r21 = 0x0;
            asm { ucvtf      s8, x22 };
            asm { ucvtf      s9, x0 };
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_itemWidth));
            r8 = *(r19 + r25);
            asm { ucvtf      s0, x8 };
            s1 = *(int32_t *)0x1011bcc00;
            s10 = s1 * s0;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_itemHeight));
            asm { ucvtf      s0, x9 };
            s11 = s1 * s0;
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_mapStartChar));
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_itemsPerRow));
            asm { fdiv       s12, s10, s8 };
            asm { fdiv       s13, s11, s9 };
            r23 = (int64_t *)&r19->_displayedColor;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
            r24 = r24 - 0x1;
            do {
                    r22 = @selector(updateQuad:atIndex:);
                    r10 = *(int8_t *)(var_110 + r21);
                    asm { udiv       x12, x10, x11 };
                    asm { ucvtf      s0, x10 };
                    asm { ucvtf      s1, x12 };
                    s0 = s10 * s0;
                    asm { fdiv       s0, s0, s8 };
                    s1 = s11 * s1;
                    asm { fdiv       s1, s1, s9 };
                    asm { scvtf      s0, w10 };
                    asm { scvtf      s1, w8 };
                    asm { scvtf      s2, w9 };
                    objc_msgSend(*(r19 + var_118), r22);
                    if (r24 == r21) {
                        break;
                    }
                    r21 = r21 + 0x1;
                    r8 = *(r19 + r25);
            } while (true);
    }
    return;
}

-(void *)string {
    r0 = self->_string;
    return r0;
}

-(void)setString:(void *)arg2 {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    if (*(r0 + r23) != r2) {
            r20 = r2;
            r19 = r0;
            if ([r2 hash] != [*(r19 + r23) hash]) {
                    r21 = [r20 length];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
                    if (r21 >= [*(r19 + r22) capacity]) {
                            [*(r19 + r22) resizeCapacity:r21];
                    }
                    [*(r19 + r23) release];
                    *(r19 + r23) = [r20 copy];
                    [r19 updateAtlasValues];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_itemWidth));
                    asm { ucvtf      d0, x8 };
                    asm { ucvtf      d1, d1 };
                    [r19 setContentSize:r2];
                    [r19 setQuadsToDraw:r21];
            }
    }
    return;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 {
    r31 = r31 - 0xc0;
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r21 != 0x0) {
                    r1 = [r21 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1002be884(&var_80, r1);
            r0 = sub_10042ccfc(&var_80);
            if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_80);
            }
            if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] != 0x0) {
                    r0 = sub_1003167cc(&var_68, 0x0);
                    if (var_88 == 0x6) {
                            r8 = 0x1011abed8;
                            asm { ldarb      w8, [x8] };
                            if ((r8 & 0x1) == 0x0) {
                                    if (__cxa_guard_acquire() != 0x0) {
                                            r0 = operator new();
                                            *(int128_t *)r0 = q0;
                                            *(int128_t *)(r0 + 0x10) = q0;
                                            *(int32_t *)(r0 + 0x20) = 0x3f800000;
                                            *0x1011abed0 = r0;
                                            __cxa_guard_release();
                                    }
                            }
                            if (var_88 == 0x6) {
                                    r22 = &stack[-160];
                            }
                            else {
                                    r22 = 0x1011abed0;
                                    sub_1002d06c0(*r22);
                            }
                            r22 = *r22;
                            sub_1002be884(&var_80, "version");
                            r0 = sub_1002bee7c(r22, &var_80);
                            r23 = r0;
                            if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_80);
                            }
                            if (r23 != 0x0) {
                                    r0 = sub_1009caf88(r23 + 0x28, 0x0);
                                    r23 = 0x0;
                                    if (r0 >= 0x2) {
                                            sub_1002be884(&var_80, "textureFilename");
                                            r0 = sub_1002bee7c(r22, &var_80);
                                            r23 = r0;
                                            if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_80);
                                            }
                                            if (r23 != 0x0) {
                                                    if (*(int32_t *)(r23 + 0x30) == 0x4) {
                                                            r0 = sub_10098f750(&var_68);
                                                            r8 = 0x1011abec8;
                                                            asm { ldarb      w8, [x8] };
                                                            if ((r8 & 0x1) == 0x0) {
                                                                    if (__cxa_guard_acquire() != 0x0) {
                                                                            r0 = operator new();
                                                                            *(int128_t *)r0 = 0x0;
                                                                            *(int128_t *)(r0 + 0x8) = 0x0;
                                                                            *(r0 + 0x10) = 0x0;
                                                                            *0x1011abec0 = r0;
                                                                            __cxa_guard_release();
                                                                    }
                                                            }
                                                            if (*(int32_t *)(r23 + 0x30) == 0x4) {
                                                                    r8 = r23 + 0x28;
                                                            }
                                                            else {
                                                                    if ((sign_extend_64(*(int8_t *)(*qword_1011abec0 + 0x17)) & 0xffffffff80000000) == 0x0) {
                                                                            r8 = *qword_1011abec0;
                                                                            *(int8_t *)r8 = 0x0;
                                                                            *(int8_t *)(r8 + 0x17) = 0x0;
                                                                    }
                                                                    else {
                                                                            r8 = *qword_1011abec0;
                                                                            *(int8_t *)*r8 = 0x0;
                                                                            *(r8 + 0x8) = 0x0;
                                                                    }
                                                                    r8 = 0x1011abec0;
                                                            }
                                                            r0 = sub_10098f860(&var_A8, *r8);
                                                            if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
                                                                    operator delete(var_A8);
                                                            }
                                                            sub_1002be884(&var_A8, "itemWidth");
                                                            r0 = sub_1002bee7c(r22, &var_A8);
                                                            r23 = r0;
                                                            if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
                                                                    operator delete(var_A8);
                                                            }
                                                            if (r23 != 0x0) {
                                                                    sub_1009caf88(r23 + 0x28, 0x0);
                                                                    sub_1002be884(&var_A8, "itemHeight");
                                                                    r0 = sub_1002bee7c(r22, &var_A8);
                                                                    r24 = r0;
                                                                    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
                                                                            operator delete(var_A8);
                                                                    }
                                                                    if (r24 != 0x0) {
                                                                            sub_1009caf88(r24 + 0x28, 0x0);
                                                                            sub_1002be884(&var_A8, "firstChar");
                                                                            r0 = sub_1002bee7c(r22, &var_A8);
                                                                            r22 = r0;
                                                                            if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_A8);
                                                                            }
                                                                            if (r22 != 0x0) {
                                                                                    r22 = sub_1009caf88(r22 + 0x28, 0x0);
                                                                                    r9 = var_80;
                                                                                    r8 = &var_80;
                                                                                    if (sign_extend_64(var_69) < 0x0) {
                                                                                            if (!CPU_FLAGS & L) {
                                                                                                    r2 = r8;
                                                                                            }
                                                                                            else {
                                                                                                    r2 = r9;
                                                                                            }
                                                                                    }
                                                                                    r25 = 0x1011bcc00;
                                                                                    r3 = [NSString stringWithUTF8String:r2];
                                                                                    asm { ucvtf      s0, x23 };
                                                                                    asm { ucvtf      s1, x24 };
                                                                                    asm { fdiv       s0, s0, s8 };
                                                                                    asm { fdiv       s1, s1, s9 };
                                                                                    asm { fcvtzu     x4, s0 };
                                                                                    asm { fcvtzu     x5, s1 };
                                                                                    r23 = [r20 initWithString:r19 charMapFile:r3 itemWidth:r4 itemHeight:r5 startCharMap:r22];
                                                                            }
                                                                            else {
                                                                                    r25 = 0x1011bcc00;
                                                                                    r23 = 0x0;
                                                                            }
                                                                    }
                                                                    else {
                                                                            r25 = 0x1011bcc00;
                                                                            r23 = 0x0;
                                                                    }
                                                            }
                                                            if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                                                                    operator delete(var_80);
                                                            }
                                                    }
                                                    else {
                                                            r23 = 0x0;
                                                    }
                                            }
                                    }
                            }
                    }
                    else {
                            r23 = 0x0;
                    }
                    sub_1009ca77c(&stack[-160]);
                    r24 = 0x0;
                    r22 = 0x0;
            }
            else {
                    r23 = &@class(MCConfigurationData);
                    r0 = sub_100316658(&var_68, 0x0);
                    r22 = r0;
                    r24 = 0x1;
            }
            if ((sign_extend_64(var_51) & 0xffffffff80000000) == 0x0) {
                    if ((r24 & 0x1) != 0x0) {
                            r21 = [r21 stringByDeletingLastPathComponent];
                            [r21 stringByAppendingPathComponent:[r22 objectForKey:r2]];
                            [[r22 objectForKey:r2] unsignedIntValue];
                            asm { ucvtf      s0, w0 };
                            asm { fdiv       s0, s0, s1 };
                            asm { fcvtzu     x25, s0 };
                            objc_msgSend(objc_msgSend(r22, r23), r24);
                            asm { ucvtf      s0, w0 };
                            asm { fdiv       s0, s0, s1 };
                            asm { fcvtzu     x26, s0 };
                            r23 = [r20 initWithString:r19 charMapFile:r21 itemWidth:r25 itemHeight:r26 startCharMap:objc_msgSend(objc_msgSend(r22, r23), r24)];
                    }
            }
            else {
                    operator delete(var_68);
                    if ((r24 & 0x1) != 0x0) {
                            r21 = [r21 stringByDeletingLastPathComponent];
                            [r21 stringByAppendingPathComponent:[r22 objectForKey:r2]];
                            [[r22 objectForKey:r2] unsignedIntValue];
                            asm { ucvtf      s0, w0 };
                            asm { fdiv       s0, s0, s1 };
                            asm { fcvtzu     x25, s0 };
                            objc_msgSend(objc_msgSend(r22, r23), r24);
                            asm { ucvtf      s0, w0 };
                            asm { fdiv       s0, s0, s1 };
                            asm { fcvtzu     x26, s0 };
                            r23 = [r20 initWithString:r19 charMapFile:r21 itemWidth:r25 itemHeight:r26 startCharMap:objc_msgSend(objc_msgSend(r22, r23), r24)];
                    }
            }
    }
    else {
            r22 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:r21]];
            r21 = [r21 stringByDeletingLastPathComponent];
            [r21 stringByAppendingPathComponent:[r22 objectForKey:r2]];
            [[r22 objectForKey:r2] unsignedIntValue];
            asm { ucvtf      s0, w0 };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtzu     x25, s0 };
            objc_msgSend(objc_msgSend(r22, r23), r24);
            asm { ucvtf      s0, w0 };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtzu     x26, s0 };
            r23 = [r20 initWithString:r19 charMapFile:r21 itemWidth:r25 itemHeight:r26 startCharMap:objc_msgSend(objc_msgSend(r22, r23), r24)];
    }
    r0 = r23;
    return r0;
}

@end