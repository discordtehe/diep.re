@implementation MCAdjustableLabelBMFont

+(void)setMaxIterations:(unsigned int)arg2 {
    *(int32_t *)0x1011abe58 = arg2;
    return;
}

+(void)setStabilizationAceptableError:(float)arg2 {
    *(int32_t *)0x1011abe5c = s0;
    return;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCAdjustableLabelBMFont alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:r5];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 imageOffset:(struct CGPoint)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCAdjustableLabelBMFont alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:r5 imageOffset:r6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 imageOffset:(struct CGPoint)arg6 maxScale:(float)arg7 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCAdjustableLabelBMFont alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:r5 imageOffset:r6 maxScale:r7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:r5 imageOffset:r6];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 imageOffset:(struct CGPoint)arg6 maxScale:(float)arg7 singleLine:(bool)arg8 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCAdjustableLabelBMFont alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:r5 imageOffset:r6 maxScale:r7 singleLine:var_50];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 imageOffset:(struct CGPoint)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r0 = [self initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:r5 imageOffset:r6 maxScale:r7];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 imageOffset:(struct CGPoint)arg6 maxScale:(float)arg7 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r4, &arg4, 0x8);
    r0 = [self initWithString:arg2 fntFile:arg3 dimensions:r4 hAlignment:0x0 imageOffset:r6 maxScale:r7 singleLine:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 alignment:(int)arg5 imageOffset:(struct CGPoint)arg6 {
    memcpy(&r6, &arg6, 0x8);
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { fcvt       d0, s0 };
    r0 = [r0 initWithString:r2 fntFile:r3 dimensions:r4 hAlignment:r5 imageOffset:r6];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 dimensions:(struct CGSize)arg4 hAlignment:(int)arg5 imageOffset:(struct CGPoint)arg6 maxScale:(float)arg7 singleLine:(bool)arg8 {
    memcpy(&r6, &arg6, 0x8);
    r5 = arg5;
    memcpy(&r4, &arg4, 0x8);
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    r19 = r4;
    r20 = arg3;
    r21 = r2;
    r22 = r0;
    if (d0 > 0x0) {
            asm { fcsel      d10, d0, d2, hi };
    }
    if (d1 > 0x0) {
            asm { fcsel      d0, d1, d2, hi };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMaxDimensions));
    *(int128_t *)(r0 + r8) = d10;
    *(int128_t *)(0x8 + r0 + r8) = d0;
    *(int32_t *)(int64_t *)&r0->mFontScale = 0x3f800000;
    *(int32_t *)(int64_t *)&r0->mMaxFontScale = s4;
    *(int8_t *)(int64_t *)&r0->mForceSingleLine = r5;
    r22->mOriginalString = [r2 copy];
    asm { fcvt       s0, d10 };
    r0 = [[&var_50 super] initWithString:r21 fntFile:r20 width:r19 alignment:r5 imageOffset:r6];
    return r0;
}

-(void)setDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self dimensions];
    if (d9 == d0) {
            asm { fccmp      d8, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            asm { fcvt       s0, d9 };
            *(int32_t *)(int64_t *)&r19->_width = s0;
            asm { fcvt       s0, d8 };
            *(int32_t *)(int64_t *)&r19->mHeight = s0;
            [r19 updateLabel];
    }
    return;
}

-(struct CGSize)dimensions {
    r0 = self;
    asm { fdiv       s0, s0, s1 };
    asm { fcvt       d0, s0 };
    asm { fdiv       s1, s2, s1 };
    asm { fcvt       d1, s1 };
    return r0;
}

-(void)setWidth:(float)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_width));
    s1 = *(int32_t *)(r0 + r8);
    asm { fdiv       s1, s1, s2 };
    if (s1 != s0) {
            *(int32_t *)(r0 + r8) = s0;
            [r0 updateLabel];
    }
    return;
}

-(void)setHeight:(float)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mHeight));
    s1 = *(int32_t *)(r0 + r8);
    asm { fdiv       s1, s1, s2 };
    if (s1 != s0) {
            *(int32_t *)(r0 + r8) = s0;
            [r0 updateLabel];
    }
    return;
}

-(float)scaleY {
    r0 = [[&var_20 super] scaleY];
    asm { fdiv       s0, s0, s1 };
    return r0;
}

-(float)scaleX {
    r0 = [[&var_20 super] scaleX];
    asm { fdiv       s0, s0, s1 };
    return r0;
}

-(float)scale {
    r0 = [[&var_20 super] scale];
    asm { fdiv       s0, s0, s1 };
    return r0;
}

-(void)setScaleY:(float)arg2 {
    [[&var_10 super] setScaleY:arg2];
    return;
}

-(void)setScaleX:(float)arg2 {
    [[&var_10 super] setScaleX:arg2];
    return;
}

-(void)setScale:(float)arg2 {
    [[&var_10 super] setScale:r2];
    return;
}

-(int)horizontalAlignment {
    r0 = [self alignment];
    return r0;
}

-(void)setHorizontalAlignment:(int)arg2 {
    [self setAlignment:arg2];
    return;
}

-(void)setImageOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setImageOffset:r2];
    [self updateLabel];
    return;
}

-(void)setForceSingleLine:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mForceSingleLine = arg2;
    [self updateLabel];
    return;
}

-(struct CGSize)contentSize {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentSize));
    r8 = r0 + r8;
    asm { fcvt       d1, s0 };
    return r0;
}

-(void)setString:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalString));
    [*(self + r21) release];
    *(self + r21) = [arg2 copy];
    [[&var_30 super] setString:r2];
    return;
}

-(void)updateLabel {
    r19 = self;
    [self setString:self->_initialString updateLabel:0x0];
    [r19 fitDimentions];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentSize));
    asm { fcvt       s0, d0 };
    *(int32_t *)(int64_t *)&r19->_width = s0;
    asm { fcvt       s0, d0 };
    *(int32_t *)(int64_t *)&r19->mHeight = s0;
    return;
}

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalString));
    [*(self + r20) release];
    *(self + r20) = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(struct CGPoint)anchorPointInPoints {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_anchorPoint));
    r8 = r0 + r8;
    asm { fcvt       d1, s0 };
    return r0;
}

-(double)getTextHeight:(void *)arg2 withSize:(float)arg3 {
    r2 = arg2;
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    if (*(r0 + r21) != 0x0) {
            r19 = r0;
            r0 = [r2 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
            r0 = [r0 count];
            r8 = *(r19 + r21);
            asm { ucvtf      s0, x8 };
            asm { fdiv       s0, s0, s1 };
            asm { fcvt       d0, s0 };
    }
    return r0;
}

-(void)setMaxDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMaxDimensions));
    r8 = r0 + r8;
    *(int128_t *)r8 = d0;
    *(int128_t *)(r8 + 0x8) = d1;
    if (d0 <= 0x0) {
            *r8 = 0x47efffffe0000000;
    }
    if (d1 <= 0x0) {
            *(r8 + 0x8) = 0x47efffffe0000000;
    }
    [r0 updateLabel];
    return;
}

-(double)maxFontScale {
    r0 = self;
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)setMaxFontScale:(double)arg2 {
    r0 = self;
    asm { fcvt       s0, d0 };
    *(int32_t *)(int64_t *)&r0->mMaxFontScale = s0;
    [r0 updateLabel];
    return;
}

-(void)fitDimentions {
    r0 = self;
    r31 = r31 - 0xb0;
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
    r19 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_scaleX));
    *(int32_t *)(r0 + r22) = 0x3f800000;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_scaleY));
    *(int32_t *)(r0 + r24) = 0x3f800000;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mMaxFontScale));
    r8 = *(int32_t *)(r0 + r27);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mFontScale));
    *(int32_t *)(r0 + r26) = r8;
    s0 = *(int32_t *)(r0 + r27);
    asm { fcvt       d9, s0 };
    r0 = [r0 string];
    if (*(int8_t *)(int64_t *)&r19->mForceSingleLine == 0x0) goto loc_1002a3f3c;

loc_1002a3e4c:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    r0 = [*(r19 + r21) componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    r20 = r0;
    if ([r0 count] >= 0x2) {
            [*(r19 + r21) release];
            *(r19 + r21) = [[r20 componentsJoinedByString:@" "] retain];
            [r19 createFontChars];
    }
    [r19 contentSize];
    asm { fdiv       d0, d8, d0 };
    asm { fcvt       s8, d0 };
    objc_msgSend(r19, r20);
    asm { fdiv       d0, d10, d1 };
    asm { fcvt       s0, d0 };
    if (s8 < s0) {
            asm { fcsel      s0, s8, s0, mi };
    }
    asm { fcvt       d0, s0 };
    d9 = d9 * d0;
    goto loc_1002a4058;

loc_1002a4058:
    s0 = *(int32_t *)(r19 + r27);
    asm { fcvt       d1, s0 };
    asm { fcvt       s2, d9 };
    if (d9 > d1) {
            asm { fcsel      s0, s0, s2, gt };
    }
    *(int32_t *)(r19 + r26) = s0;
    *(int32_t *)(r19 + r22) = s0;
    *(int32_t *)(r19 + r24) = *(int32_t *)(r19 + r26);
    return;

loc_1002a3f3c:
    r23 = r0;
    var_A8 = r24;
    stack[-160] = r22;
    if (*(int32_t *)0x1011abe58 == 0x0) goto loc_1002a4038;

loc_1002a3f50:
    r24 = 0x0;
    r25 = (int64_t *)&r19->mMaxDimensions;
    goto loc_1002a3f7c;

loc_1002a3f7c:
    r20 = @selector(computeMultiline:withSize:);
    var_98 = *r25;
    asm { fcvt       s8, d9 };
    r0 = objc_msgSend(r19, r20);
    d0 = var_98;
    d1 = *r25;
    if (d0 > d1) goto loc_1002a3fd0;

loc_1002a3fac:
    r22 = r0;
    [r19 getTextHeight:r2 withSize:r3];
    d1 = *(r25 + 0x8);
    if (d0 <= d1) goto loc_1002a3fe0;

loc_1002a3fd0:
    r22 = r23;
    v9 = v12;
    goto loc_1002a4014;

loc_1002a4014:
    v12 = v9;
    d9 = (d11 + d9) * 0x3fe0000000000000;
    r24 = r24 + 0x1;
    r23 = r22;
    if (r24 < *(int32_t *)0x1011abe58) goto loc_1002a3f7c;

loc_1002a403c:
    [r19 setString:r22 updateLabel:0x0];
    r24 = var_A8;
    r22 = stack[-160];
    goto loc_1002a4058;

loc_1002a3fe0:
    if (r24 == 0x0) goto loc_1002a403c;

loc_1002a3fe4:
    d2 = var_98;
    d3 = *r25;
    asm { fabd       d2, d2, d3 };
    asm { fcvt       d4, s4 };
    COND = d2 < d3 * d4;
    asm { fabd       d0, d0, d1 };
    d1 = d1 * d4;
    if (COND) {
            asm { fccmp      d0, d1, #0x0, mi };
    }
    if (CPU_FLAGS & S) goto loc_1002a403c;
    goto loc_1002a4014;

loc_1002a4038:
    r22 = r23;
    goto loc_1002a403c;
}

-(void)didLoadFromCCB {
    [self updateLabel];
    return;
}

-(float)fontScale {
    r0 = self;
    return r0;
}

-(bool)forceSingleLine {
    r0 = *(int8_t *)(int64_t *)&self->mForceSingleLine;
    return r0;
}

-(struct CGSize)maxDimensions {
    r0 = self;
    return r0;
}

-(void *)computeMultiline:(double *)arg2 withSize:(float)arg3 {
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
    r31 = r31 + 0xffffffffffffff60 - 0x180;
    var_1F8 = arg2;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    var_190 = [[self string] length];
    var_210 = [NSCharacterSet newlineCharacterSet];
    var_160 = q0;
    var_1A0 = self;
    r0 = self->_batchNode;
    r0 = [r0 children];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B8 = r0;
    var_218 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1002a3c3c;

loc_1002a3704:
    r23 = 0x0;
    r25 = r0;
    r26 = @"";
    r19 = *var_160;
    asm { fcvt       d15, s8 };
    d11 = 0x0;
    d9 = 0x0;
    v14 = v12;
    r20 = r26;
    var_1D8 = r19;
    goto loc_1002a3764;

loc_1002a3764:
    r28 = 0x0;
    r27 = @selector(visible);
    r22 = @selector(position);
    r24 = @selector(contentSize);
    var_1C8 = r25;
    stack[-448] = r27;
    goto loc_1002a37b8;

loc_1002a37b8:
    if (*var_160 != r19) {
            objc_enumerationMutation(var_1B8);
    }
    r21 = *(var_168 + r28 * 0x8);
    if (objc_msgSend(r21, r27) == 0x0) goto loc_1002a3bec;

loc_1002a37e8:
    if ((r23 & 0xffffffff80000000) != 0x0) goto loc_1002a3c60;

loc_1002a37ec:
    r25 = r24;
    r24 = r22;
    asm { sxtw       x22, w23 };
    if (var_190 < r22) goto loc_1002a3c60;

loc_1002a3804:
    r22 = [[var_1A0 string] characterAtIndex:r2];
    if (s8 == 0xbff0000000000000) {
            objc_msgSend(r21, r24);
            objc_msgSend(r21, r25);
            d0 = (d8 + d0 * 0xbfe0000000000000) * d15;
            asm { fcvt       s8, d0 };
    }
    if (s14 == 0xbff0000000000000) {
            asm { fcsel      s14, s8, s14, eq };
    }
    if ([[NSCharacterSet newlineCharacterSet] characterIsMember:r2] == 0x0) goto loc_1002a3928;

loc_1002a3878:
    [[r20 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] stringByAppendingFormat:@"%C"];
    r26 = [r26 stringByAppendingString:r2];
    if (d9 > d11) {
            asm { fcsel      d9, d9, d11, gt };
    }
    r23 = r23 + 0x1;
    if (var_190 < sign_extend_64(r23)) goto loc_1002a3c54;

loc_1002a38d4:
    var_188 = @selector(characterAtIndex:);
    var_1A8 = @selector(string);
    asm { sxtw       x20, w23 };
    r22 = objc_msgSend(objc_msgSend(var_1A0, var_1A8), var_188);
    objc_msgSend(r21, r24);
    objc_msgSend(r21, r25);
    d0 = (d8 + d0 * d10) * d15;
    asm { fcvt       s8, d0 };
    v14 = v8;
    r20 = @"";
    goto loc_1002a3928;

loc_1002a3928:
    if ([[NSCharacterSet whitespaceCharacterSet] characterIsMember:r2] != 0x0) {
            r20 = [r20 stringByAppendingFormat:@"%C"];
            r22 = r24;
            objc_msgSend(r21, r24);
            r24 = r25;
            objc_msgSend(r21, r25);
            d0 = (d8 + d0 * 0x3fe0000000000000) * d15;
            asm { fcvt       d11, s14 };
            d0 = d0 - d11;
            r19 = var_1D8;
            if (d9 <= d0) {
                    objc_msgSend(r21, r22);
                    objc_msgSend(r21, r24);
                    d0 = (d8 + d0 * 0x3fe0000000000000) * d15;
                    d9 = d0 - d11;
            }
            r26 = [r26 stringByAppendingString:r2];
            r23 = r23 + 0x1;
            d11 = 0x0;
            r20 = @"";
            r25 = var_1C8;
            r27 = stack[-448];
    }
    else {
            var_198 = @selector(stringByAppendingFormat:);
            var_1E4 = s8;
            v11 = v9;
            v10 = v12;
            objc_msgSend(r21, r24);
            objc_msgSend(r21, r25);
            d0 = (d8 + d0 * d13) * d15;
            v14 = v13;
            var_1E8 = s1;
            asm { fcvt       d13, s1 };
            d9 = *var_1F8;
            r22 = r24;
            r24 = r25;
            r20 = objc_msgSend(r20, var_198);
            objc_msgSend(r21, r22);
            objc_msgSend(r21, r25);
            d0 = (d8 + d0 * d14) * d15 - d13;
            var_1E0 = d0;
            r19 = var_1D8;
            if (d12 > d9) {
                    r0 = [r26 isEqualToString:r2];
                    v12 = v10;
                    v9 = v11;
                    r25 = var_1C8;
                    r27 = stack[-448];
                    if ((r0 & 0x1) == 0x0) {
                            [r26 length] - 0x1;
                            [r26 characterAtIndex:r2];
                            if (([var_210 characterIsMember:r2] & 0x1) != 0x0) {
                                    s14 = var_1E8;
                            }
                            else {
                                    r26 = [[r26 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] stringByAppendingString:r2];
                                    v14 = v12;
                            }
                    }
                    else {
                            r26 = [[r26 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] stringByAppendingString:r2];
                            v14 = v12;
                    }
                    d11 = var_1E0;
                    s8 = var_1E4;
                    r23 = r23 + 0x1;
            }
            else {
                    objc_msgSend(r21, r22);
                    objc_msgSend(r21, r24);
                    d0 = (d8 + d0 * d14) * d15 - 0x3fe0000000000000;
                    v9 = v11;
                    v12 = v10;
                    r25 = var_1C8;
                    r27 = stack[-448];
                    if (d11 <= d0) {
                            objc_msgSend(r21, r22);
                            objc_msgSend(r21, r24);
                            d0 = (d8 + d0 * 0x3fe0000000000000) * d15;
                            d9 = d0 - 0x3fe0000000000000;
                    }
                    r23 = r23 + 0x1;
                    s14 = var_1E8;
                    s8 = var_1E4;
                    d11 = var_1E0;
            }
    }
    goto loc_1002a3bec;

loc_1002a3bec:
    r28 = r28 + 0x1;
    if (r28 < r25) goto loc_1002a37b8;

loc_1002a3bf8:
    r0 = objc_msgSend(var_1B8, var_218);
    r25 = r0;
    if (r0 != 0x0) goto loc_1002a3764;

loc_1002a3c60:
    r0 = [[r26 stringByAppendingFormat:@"%@"] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if (d9 > d11) {
            asm { fcsel      d0, d9, d11, gt };
    }
    *var_1F8 = d0;
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1002a3c54:
    d11 = 0x0;
    r20 = @"";
    goto loc_1002a3c60;

loc_1002a3c3c:
    r20 = @"";
    d11 = 0x0;
    d9 = 0x0;
    r26 = r20;
    goto loc_1002a3c60;
}

@end