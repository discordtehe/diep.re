@implementation AdjustableLabelBMFont

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 width:0x0 height:0x0 multiline:r6 minimumScale:r7 alignment:var_20];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 {
    r0 = [self initWithString:arg2 fntFile:arg3 width:0x0 height:0x0 multiline:r6 minimumScale:r7 alignment:stack[0]];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 height:(float)arg5 multiline:(bool)arg6 minimumScale:(float)arg7 alignment:(int)arg8 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 width:arg4 height:arg5 multiline:arg6 minimumScale:arg7 alignment:var_40];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 alignment:(int)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 width:0x0 height:arg4 multiline:r6 minimumScale:r7 alignment:var_30];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 height:(float)arg5 multiline:(bool)arg6 minimumScale:(float)arg7 alignment:(int)arg8 {
    *(int32_t *)(int64_t *)&self->_height = s1;
    *(int32_t *)(int64_t *)&self->width_ = s0;
    *(int8_t *)(int64_t *)&self->multiline_ = arg4;
    *(int32_t *)(int64_t *)&self->minimumScale_ = s2;
    *(int32_t *)(int64_t *)&self->maximumScale_ = 0xffffffffbf800000;
    *(int8_t *)(int64_t *)&self->_updateLabel = 0x0;
    [[&var_60 super] setValue:[[arg2 copy] autorelease] forKey:@"_initialString"];
    [[&var_70 super] setValue:[[arg2 copy] autorelease] forKey:@"_string"];
    r0 = [[&var_80 super] initWithString:arg2 fntFile:arg3 width:arg5 alignment:r5];
    return r0;
}

-(void *)init {
    r0 = [self labelWithString:0x0 fntFile:0x0 width:r4];
    return r0;
}

-(void)setConfigDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (d1 > 0x0) {
            asm { fcvt       s0, d1 };
            [r19 setHeight:r2];
    }
    if (d8 > 0x0) {
            asm { fcvt       s0, d8 };
            [r19 setWidth:r2];
    }
    [[&var_30 super] setString:r19->_string];
    [r19 position];
    [r19 setPosition:r2];
    return;
}

-(void)setHeight:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_height = s0;
    [self updateLabel];
    return;
}

-(void)setWidth:(float)arg2 {
    [[&var_30 super] setWidth:arg2];
    *(int32_t *)(int64_t *)&self->width_ = s8;
    [self updateLabel];
    return;
}

-(struct CGSize)configDimensions {
    r0 = self;
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    return r0;
}

-(void)setMultiline:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->multiline_ = arg2;
    [self updateLabel];
    return;
}

-(void)setMinimumScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->minimumScale_ = s0;
    [self updateLabel];
    return;
}

-(void)setMaximumScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->maximumScale_ = s0;
    [self updateLabel];
    return;
}

-(float)height {
    r0 = self;
    return r0;
}

-(float)width {
    r0 = self;
    return r0;
}

-(bool)multiline {
    r0 = *(int8_t *)(int64_t *)&self->multiline_;
    return r0;
}

-(float)minimumScale {
    r0 = self;
    return r0;
}

-(float)maximumScale {
    r0 = self;
    return r0;
}

-(void)updateLabel {
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
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x1d0;
    r21 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initialString));
    var_228 = r8;
    [[&var_140 super] setString:*(self + r8) updateLabel:0x0];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(multiline_));
    r8 = *(int8_t *)(r21 + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(width_));
    var_218 = r9;
    s2 = *(int32_t *)(r21 + r9);
    var_198 = r21;
    if (r8 == 0x0) goto loc_100320a20;

loc_10032047c:
    if (s2 < 0x0) goto loc_100320b00;

loc_100320484:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    var_220 = (int64_t *)&r21->_contentSize;
    var_210 = sign_extend_64(*(int32_t *)ivar_offset(_scaleX));
    goto loc_100320528;

loc_100320528:
    var_1D0 = [[r21 string] length];
    if ([[*(r21 + r22) children] count] == 0x0) goto loc_1003208b0;

loc_100320558:
    r24 = 0x0;
    r26 = 0x0;
    r20 = 0x0;
    r19 = @selector(visible);
    r27 = @"";
    r23 = @selector(children);
    v14 = v10;
    var_1A0 = r27;
    var_200 = r23;
    goto loc_100320600;

loc_100320600:
    asm { sxtw       x20, w20 };
    do {
            r0 = *(r21 + r22);
            r0 = [r0 getChildByTag:r24 + r20];
            r20 = r20 + 0x1;
    } while (r0 == 0x0);
    r28 = r0;
    if (objc_msgSend(r0, r19) == 0x0) goto loc_100320888;

loc_10032062c:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1003208d0;

loc_100320630:
    asm { sxtw       x21, w26 };
    if (var_1D0 < r21) goto loc_1003208cc;

loc_100320640:
    r23 = r19;
    r21 = [[var_198 string] characterAtIndex:r21];
    if (s14 == 0xbff0000000000000) {
            [r28 position];
            [r28 contentSize];
            d0 = d8 + d0 * 0xbfe0000000000000;
            asm { fcvt       s14, d0 };
    }
    if (s13 == 0xbff0000000000000) {
            asm { fcsel      s13, s14, s13, eq };
    }
    if ([[NSCharacterSet newlineCharacterSet] characterIsMember:r21] == 0x0) goto loc_100320760;

loc_1003206b8:
    var_1A0 = [var_1A0 stringByAppendingString:[[r27 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] stringByAppendingFormat:@"%C"]];
    r26 = r26 + 0x1;
    if (var_1D0 < sign_extend_64(r26)) goto loc_1003208c4;

loc_10032070c:
    var_1E0 = @selector(characterAtIndex:);
    var_1C0 = @selector(position);
    var_1C8 = @selector(contentSize);
    var_1D8 = @selector(string);
    asm { sxtw       x21, w26 };
    r21 = objc_msgSend(objc_msgSend(var_198, var_1D8), var_1E0);
    objc_msgSend(r28, var_1C0);
    objc_msgSend(r28, var_1C8);
    d0 = d8 + d0 * d11;
    asm { fcvt       s14, d0 };
    r27 = @"";
    goto loc_100320760;

loc_100320760:
    r0 = [NSCharacterSet whitespaceCharacterSet];
    r0 = [r0 characterIsMember:r21];
    r19 = r23;
    if (r0 != 0x0) {
            var_1A0 = [var_1A0 stringByAppendingString:[r27 stringByAppendingFormat:@"%C"]];
            r26 = r26 + 0x1;
            v14 = v10;
            r27 = @"";
            r21 = var_198;
            r23 = var_200;
    }
    else {
            var_1E8 = @selector(stringByAppendingFormat:);
            [r28 position];
            [r28 contentSize];
            d0 = d8 + d0 * 0x3fe0000000000000;
            asm { fcvt       d1, s13 };
            d0 = d0 - d1;
            asm { fcvt       d1, s2 };
            d8 = d0 * d1;
            asm { fcvt       d15, s0 };
            r27 = objc_msgSend(r27, var_1E8);
            r23 = var_200;
            if (d8 > d15) {
                    var_1A0 = [[var_1A0 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] stringByAppendingString:@"\n"];
                    r26 = r26 + 0x1;
            }
            else {
                    r26 = r26 + 0x1;
            }
            r21 = var_198;
    }
    goto loc_100320888;

loc_100320888:
    r20 = r20 - 0x1;
    r24 = r24 + 0x1;
    if ([objc_msgSend(*(r21 + r22), r23) count] > r24) goto loc_100320600;

loc_1003208d0:
    r20 = [var_1A0 stringByAppendingFormat:@"%@"];
    [NSCharacterSet whitespaceAndNewlineCharacterSet];
    [r20 stringByTrimmingCharactersInSet:r2];
    r20 = @selector(setString:updateLabel:);
    objc_msgSend(r21, r20);
    d1 = *var_220;
    s0 = *(int32_t *)(r21 + var_210);
    asm { fcvt       d2, s0 };
    d1 = d1 * d2;
    asm { fcvt       d2, s2 };
    if (d1 <= d2) goto loc_100320968;

loc_100320950:
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_scaleY));
    r8 = r21 + r9;
    s1 = *(int32_t *)r8;
    goto loc_1003209ac;

loc_1003209ac:
    if (s0 < s1) {
            asm { fcsel      s0, s0, s1, mi };
    }
    s0 = s0 + *(int32_t *)0x100bc2718;
    r10 = sign_extend_64(*(int32_t *)ivar_offset(minimumScale_));
    s1 = *(int32_t *)(r21 + r10);
    if (s0 < s1) goto loc_100320af0;

loc_1003209cc:
    r9 = sign_extend_64(*(int32_t *)ivar_offset(maximumScale_));
    s1 = *(int32_t *)(r21 + r9);
    if (s1 > 0x0 && s0 > s1) {
            *(int32_t *)(r21 + var_210) = s1;
            s0 = *(int32_t *)(r21 + r9);
    }
    else {
            *(int32_t *)(r21 + var_210) = s0;
    }
    *(int32_t *)r8 = s0;
    objc_msgSend(r21, r20);
    goto loc_100320528;

loc_100320af0:
    *(int32_t *)(r21 + var_210) = s1;
    *(int32_t *)(r21 + r9) = *(int32_t *)(r21 + r10);
    goto loc_100320b00;

loc_100320b00:
    if ([r21 alignment] == 0x0) goto loc_100320d90;

loc_100320b18:
    r0 = [[&var_150 super] valueForKey:@"_string"];
    var_180 = q0;
    r2 = [NSCharacterSet newlineCharacterSet];
    r21 = var_198;
    r0 = [r0 componentsSeparatedByCharactersInSet:r2];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D8 = r1;
    var_1D0 = r0;
    r0 = objc_msgSend(r0, r1);
    var_1B8 = r0;
    if (r0 == 0x0) goto loc_100320d90;

loc_100320b9c:
    r19 = 0x0;
    r20 = 0x0;
    var_1C0 = *var_180;
    goto loc_100320bb8;

loc_100320bb8:
    r27 = 0x0;
    goto loc_100320be0;

loc_100320be0:
    if (*var_180 != var_1C0) {
            objc_enumerationMutation(var_1D0);
    }
    r8 = var_188;
    r28 = *(r8 + r27 * 0x8);
    r0 = [r28 length];
    asm { sxtw       x8, w19 };
    r2 = r0 + r8 + sign_extend_64(r20) - 0x1;
    if (r2 < 0x0) goto loc_100320d64;

loc_100320c24:
    var_1C8 = @selector(alignment);
    var_1A8 = r20;
    var_1A0 = r19;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    r0 = *(r21 + r20);
    r0 = [r0 getChildByTag:r2];
    [r0 position];
    [r0 contentSize];
    d0 = d8 + d0 * 0x3fe0000000000000;
    asm { fcvtzs     w19, d0 };
    r0 = objc_msgSend(r21, var_1C8);
    if (r0 == 0x2) goto loc_100320ca8;

loc_100320c80:
    if (r0 != 0x1) goto loc_100320d48;

loc_100320c88:
    [r21 contentSize];
    d0 = d0 * 0x3fe0000000000000;
    if (r19 < 0x0) {
            asm { cinc       w8, w19, lt };
    }
    goto loc_100320cb4;

loc_100320cb4:
    asm { scvtf      d1, w19 };
    d0 = d0 - d1;
    asm { fcvt       s8, d0 };
    if (s8 != 0x0 && [r28 length] != 0x0) {
            r23 = 0x0;
            r19 = var_1A8 + var_1A0;
            asm { fcvt       d8, s8 };
            do {
                    r8 = r19 + r23;
                    if ((r8 & 0xffffffff80000000) == 0x0) {
                            r22 = @selector(setPosition:);
                            r0 = *(r21 + r20);
                            r0 = [r0 getChildByTag:r8 & 0xffffffff];
                            [r0 position];
                            d0 = d0 + d8;
                            d1 = d1 + 0x0;
                            r21 = var_198;
                            objc_msgSend(r0, r22);
                    }
                    r23 = r23 + 0x1;
            } while ([r28 length] > r23);
    }
    goto loc_100320d48;

loc_100320d48:
    r20 = var_1A8 + [r28 length];
    r19 = var_1A0 + 0x1;
    goto loc_100320d64;

loc_100320d64:
    r27 = r27 + 0x1;
    if (r27 < var_1B8) goto loc_100320be0;

loc_100320d74:
    r0 = objc_msgSend(var_1D0, var_1D8);
    var_1B8 = r0;
    if (r0 != 0x0) goto loc_100320bb8;

loc_100320d90:
    *(int8_t *)(int64_t *)&r21->_updateLabel = 0x1;
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;

loc_100320ca8:
    [r21 contentSize];
    goto loc_100320cb4;

loc_100320968:
    if (*(int32_t *)(int64_t *)&r21->_height <= 0x0) goto loc_100320b00;

loc_10032097c:
    d3 = *(var_220 + 0x8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_scaleY));
    r8 = r21 + r9;
    s1 = *(int32_t *)r8;
    asm { fcvt       d4, s1 };
    d3 = d3 * d4;
    asm { fcvt       d2, s2 };
    if (d3 <= d2) goto loc_100320b00;
    goto loc_1003209ac;

loc_1003208c4:
    r27 = @"";
    goto loc_1003208cc;

loc_1003208cc:
    r21 = var_198;
    goto loc_1003208d0;

loc_1003208b0:
    r27 = @"";
    var_1A0 = @"";
    goto loc_1003208d0;

loc_100320a20:
    if (s2 > 0x0) {
            d3 = r21->_contentSize;
            asm { fcvt       d2, s2 };
            if (d3 > d2) {
                    asm { fdiv       d1, d2, d3 };
                    asm { fcvt       s1, d1 };
            }
    }
    if (*(int32_t *)(int64_t *)&r21->_height > 0x0) {
            d3 = *((int64_t *)&r21->_contentSize + 0x8);
            asm { fcvt       d2, s2 };
            if (d3 > d2) {
                    asm { fdiv       d0, d2, d3 };
                    asm { fcvt       s0, d0 };
            }
    }
    if (s1 < 0x3ff0000000000000) {
            asm { fcsel      s0, s1, s0, mi };
    }
    if (0x3ff0000000000000 > *(int32_t *)(int64_t *)&r21->minimumScale_) {
            asm { fcsel      s0, s0, s1, gt };
    }
    s1 = *(int32_t *)(int64_t *)&r21->maximumScale_;
    if (0x3ff0000000000000 < s1) {
            asm { fcsel      s2, s0, s1, mi };
    }
    if (s1 > 0x0) {
            asm { fcsel      s0, s2, s0, gt };
    }
    *(int32_t *)(int64_t *)&r21->_scaleX = 0x3ff0000000000000;
    *(int32_t *)(int64_t *)&r21->_scaleY = 0x3ff0000000000000;
    goto loc_100320b00;
}

@end