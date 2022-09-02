@implementation CCLabelBMFont

+(void)purgeCachedData {
    [*0x1011e2db0 removeAllObjects];
    return;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 width:0x0 alignment:r5 imageOffset:r6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 alignment:(int)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 width:arg4 alignment:arg5 imageOffset:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithString:0x0 fntFile:0x0 width:0x0 alignment:r5 imageOffset:r6];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 alignment:(int)arg5 imageOffset:(struct CGPoint)arg6 {
    memcpy(&r6, &arg6, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fntFile:arg3 width:arg4 alignment:arg5 imageOffset:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 alignment:(int)arg5 {
    r0 = [self initWithString:arg2 fntFile:arg3 width:arg4 alignment:arg5 imageOffset:r6];
    return r0;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 {
    r0 = [self initWithString:arg2 fntFile:arg3 width:0x0 alignment:r5];
    return r0;
}

-(void)dealloc {
    [self->_string release];
    [self->_initialString release];
    [self->_configuration release];
    [self->_fntFile release];
    [self->_reusedChar release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    [*(self + r21) release];
    *(self + r21) = 0x0;
    self->_textureAtlas = 0x0;
    [[&var_30 super] dealloc];
    return;
}

-(void *)initWithString:(void *)arg2 fntFile:(void *)arg3 width:(float)arg4 alignment:(int)arg5 imageOffset:(struct CGPoint)arg6 {
    memcpy(&r6, &arg6, 0x8);
    r31 = r31 - 0x90;
    var_70 = d11;
    stack[-120] = d10;
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
    r20 = arg4;
    r21 = arg3;
    r19 = arg2;
    r23 = self;
    if (arg3 == 0x0) goto loc_1002a6318;

loc_1002a62b4:
    r0 = sub_1002a48e4(r21);
    if (r0 == 0x0) goto loc_1002a6528;

loc_1002a62c0:
    r24 = r0;
    r26 = [[CCTextureCache sharedTextureCache] addImage:[r24 atlasName]];
    r25 = @selector(init);
    goto loc_1002a6354;

loc_1002a6354:
    r0 = [[CCSpriteBatchNode alloc] initWithTexture:r26 capacity:[r19 length]];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    *(r23 + r26) = r0;
    r0 = [r0 textureAtlas];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    *(r23 + r27) = r0;
    r23->_blendFunc = [*(r23 + r26) blendFunc];
    r0 = objc_msgSendSuper2(&var_80, r25);
    r23 = r0;
    if (r0 != 0x0) {
            if (r24 != 0x0) {
                    r23->_configuration = [r24 retain];
            }
            r23->_fntFile = [r21 copy];
            *(int32_t *)(int64_t *)&r23->_width = s10;
            *(int32_t *)(int64_t *)&r23->_alignment = r20;
            *(int8_t *)(int64_t *)&r23->_opacityModifyRGB = [[*(r23 + r27) texture] hasPremultipliedAlpha];
            *(int128_t *)(int64_t *)&r23->_anchorPoint = q0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_imageOffset));
            *(r23 + r8) = d9;
            *(0x8 + r23 + r8) = d8;
            r0 = [[CCSprite alloc] initWithTexture:[*(r23 + r27) texture] rect:0x0 rotated:r4];
            r23->_reusedChar = r0;
            [r0 setBatchNode:*(r23 + r26)];
            [r23 setString:r19 updateLabel:0x1];
            [r23 createFontChars];
    }
    goto loc_1002a653c;

loc_1002a653c:
    r0 = r23;
    return r0;

loc_1002a6528:
    [r23 release];
    r23 = 0x0;
    goto loc_1002a653c;

loc_1002a6318:
    r0 = [CCTexture2D alloc];
    r25 = @selector(init);
    r26 = [objc_msgSend(r0, r25) autorelease];
    r24 = 0x0;
    goto loc_1002a6354;
}

-(void)alignText {
    r31 = r31 - 0x1a0;
    var_70 = d11;
    stack[-120] = d10;
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
    var_148 = self;
    if ([self alignment] == 0x0) goto loc_1002a6e10;

loc_1002a6ba4:
    var_130 = q0;
    r0 = [var_148->_string componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_188 = r1;
    var_180 = r0;
    r0 = objc_msgSend(r0, r1);
    var_160 = r0;
    if (r0 == 0x0) goto loc_1002a6e10;

loc_1002a6c0c:
    r19 = 0x0;
    r20 = 0x0;
    var_168 = *var_130;
    goto loc_1002a6c28;

loc_1002a6c28:
    r23 = 0x0;
    goto loc_1002a6c50;

loc_1002a6c50:
    if (*var_130 != var_168) {
            objc_enumerationMutation(var_180);
    }
    r8 = var_138;
    r28 = *(r8 + r23 * 0x8);
    r0 = [r28 length];
    asm { sxtw       x8, w19 };
    r2 = r0 + r8 + sign_extend_64(r20) - 0x1;
    if (r2 < 0x0) goto loc_1002a6de4;

loc_1002a6c94:
    var_178 = @selector(alignment);
    var_154 = r20;
    var_150 = r19;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    r0 = *(var_148 + r20);
    r0 = [r0 getChildByTag:r2];
    [r0 position];
    [r0 contentSize];
    d0 = d8 + d0 * 0x3fe0000000000000;
    asm { fcvtzs     w19, d0 };
    r0 = objc_msgSend(r21, var_178);
    if (r0 == 0x2) goto loc_1002a6d20;

loc_1002a6cf0:
    if (r0 != 0x1) goto loc_1002a6dc8;

loc_1002a6cf8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentSize));
    d0 = *(var_148 + r8);
    d0 = d0 * 0x3fe0000000000000;
    if (r19 < 0x0) {
            asm { cinc       w8, w19, lt };
    }
    goto loc_1002a6d34;

loc_1002a6d34:
    asm { scvtf      d1, w19 };
    d0 = d0 - d1;
    asm { fcvt       s8, d0 };
    if (s8 != 0x0 && [r28 length] != 0x0) {
            r27 = 0x0;
            r19 = var_154 + var_150;
            asm { fcvt       d8, s8 };
            do {
                    r8 = r19 + r27;
                    if ((r8 & 0xffffffff80000000) == 0x0) {
                            r22 = @selector(setPosition:);
                            r0 = *(var_148 + r20);
                            r0 = [r0 getChildByTag:r8 & 0xffffffff];
                            [r0 position];
                            d0 = d0 + d8;
                            d1 = d1 + 0x0;
                            objc_msgSend(r0, r22);
                    }
                    r27 = r27 + 0x1;
            } while ([r28 length] > r27);
    }
    goto loc_1002a6dc8;

loc_1002a6dc8:
    r20 = var_154 + [r28 length];
    r19 = var_150 + 0x1;
    goto loc_1002a6de4;

loc_1002a6de4:
    r23 = r23 + 0x1;
    if (r23 < var_160) goto loc_1002a6c50;

loc_1002a6df4:
    r0 = objc_msgSend(var_180, var_188);
    var_160 = r0;
    if (r0 != 0x0) goto loc_1002a6c28;

loc_1002a6e10:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1002a6d20:
    d0 = var_148->_contentSize;
    goto loc_1002a6d34;
}

-(void)updateLabel {
    r31 = r31 - 0x160;
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
    r19 = self;
    [self setString:self->_initialString updateLabel:0x0];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_width));
    if (*(int32_t *)(r19 + r21) <= 0x0) goto .l3;

loc_1002a66a8:
    var_F8 = [[r19 string] length];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    r0 = *(r19 + r23);
    r0 = [r0 children];
    r1 = @selector(count);
    var_C8 = r1;
    if (objc_msgSend(r0, r1) == 0x0) goto loc_1002a6adc;

loc_1002a6700:
    var_148 = r21;
    r24 = 0x0;
    r27 = 0x0;
    r25 = 0x0;
    r21 = @"";
    var_B8 = r21;
    v13 = v9;
    goto loc_1002a67c4;

loc_1002a67c4:
    *(r29 + 0xffffffffffffff60) = r27;
    r27 = r27;
    r20 = 0xffffffffffffffff;
    r28 = r24 + zero_extend_64(r25);
    do {
            r0 = *(r19 + r23);
            r0 = [r0 getChildByTag:0x1 + r28 + r20];
            r20 = r20 + 0x1;
    } while (r0 == 0x0);
    r22 = r0;
    if (([r0 visible] & 0x1) == 0x0) goto loc_1002a6a78;

loc_1002a6800:
    if ((*(r29 + 0xffffffffffffff60) & 0xffffffff80000000) != 0x0) goto loc_1002a6a9c;

loc_1002a6808:
    asm { sxtw       x28, w8 };
    if (var_F8 < r28) goto loc_1002a6a9c;

loc_1002a6818:
    r28 = [[r19 string] characterAtIndex:r28];
    if (s13 == 0xbff0000000000000) {
            [r22 position];
            [r22 contentSize];
            d0 = d8 + d0 * 0xbfe0000000000000;
            asm { fcvt       s13, d0 };
    }
    if (s12 == 0xbff0000000000000) {
            asm { fcsel      s12, s13, s12, eq };
    }
    if ([[NSCharacterSet newlineCharacterSet] characterIsMember:r2] == 0x0) goto loc_1002a6974;

loc_1002a688c:
    var_138 = @selector(stringWithFormat:);
    [NSCharacterSet whitespaceCharacterSet];
    r0 = [r21 stringByTrimmingCharactersInSet:r2];
    r21 = r0;
    [r0 length] + zero_extend_64(r20);
    objc_msgSend(@class(NSString), var_138);
    [r21 stringByPaddingToLength:r2 withString:r3 startingAtIndex:r4];
    r0 = [var_B8 stringByAppendingString:r2];
    r27 = *(r29 + 0xffffffffffffff60);
    r27 = r20 + zero_extend_64(r27);
    if ((r27 & 0xffffffff80000000) != 0x0) goto loc_1002a6af4;

loc_1002a6908:
    asm { sxtw       x21, w27 };
    if (var_F8 < r21) goto loc_1002a6af4;

loc_1002a6918:
    var_B8 = r0;
    r28 = [[r19 string] characterAtIndex:r21];
    [r22 position];
    [r22 contentSize];
    d0 = d8 + d0 * 0xbfe0000000000000;
    asm { fcvt       s13, d0 };
    r21 = @"";
    goto loc_1002a6978;

loc_1002a6978:
    if ([[NSCharacterSet whitespaceCharacterSet] characterIsMember:r2] != 0x0) {
            [r21 stringByAppendingFormat:r2];
            var_B8 = [var_B8 stringByAppendingString:r2];
            r27 = r27 + 0x1;
            v13 = v9;
            r21 = @"";
    }
    else {
            var_118 = @selector(stringByAppendingFormat:);
            [r22 position];
            [r22 contentSize];
            d0 = d8 + d0 * 0x3fe0000000000000;
            asm { fcvt       d1, s12 };
            d8 = d0 - d1;
            asm { fcvt       d14, s0 };
            r21 = objc_msgSend(r21, var_118);
            if (d8 > d14) {
                    [NSCharacterSet whitespaceCharacterSet];
                    var_B8 = [[var_B8 stringByTrimmingCharactersInSet:r2] stringByAppendingString:r2];
                    r27 = r27 + 0x1;
            }
            else {
                    r27 = r27 + 0x1;
            }
    }
    goto loc_1002a6a78;

loc_1002a6a78:
    r24 = r24 + 0x1;
    r25 = r20 + zero_extend_64(r25);
    if (objc_msgSend([*(r19 + r23) children], var_C8) > r24) goto loc_1002a67c4;

loc_1002a6a9c:
    r20 = @selector(setString:updateLabel:);
    r1 = @selector(stringByAppendingFormat:);
    r0 = var_B8;
    goto loc_1002a6b04;

loc_1002a6b04:
    objc_msgSend(r0, r1);
    objc_msgSend(r19, r20);
    return;

.l3:
    return;

loc_1002a6af4:
    r21 = @"";
    r20 = @selector(setString:updateLabel:);
    r1 = @selector(stringByAppendingFormat:);
    goto loc_1002a6b04;

loc_1002a6974:
    r27 = *(r29 + 0xffffffffffffff60);
    goto loc_1002a6978;

loc_1002a6adc:
    r20 = @selector(setString:updateLabel:);
    r1 = @selector(stringByAppendingFormat:);
    r21 = @"";
    r0 = r21;
    goto loc_1002a6b04;
}

-(int)kerningAmountForFirst:(unsigned short)arg2 second:(unsigned short)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x10;
    r8 = r3;
    asm { bfi        w8, w2, #0x10, #0x10 };
    var_4 = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r8 = *(r0 + r8);
    r8 = *(r8 + 0x40);
    if (r8 == 0x0) goto loc_1002a6f70;

loc_1002a6e78:
    r9 = (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000;
    r11 = (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 - ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) ^ ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) / 0x20;
    r9 = r11 - (r9 - ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 ^ r11 / 0x8) - (((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 - (r9 - ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 ^ r11 / 0x8) ^ (r9 - ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 ^ r11 / 0x8) * 0x400) ^ (((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 - (r9 - ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 ^ r11 / 0x8) ^ (r9 - ((0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) ^ (0x112410d + sign_extend_64(r3) + (sign_extend_64(r3) & 0xffffff00) + (r2 << 0x10 & 0xff000000) + (r2 << 0x18) / 0x100 ^ 0x7f76d) * 0x100) / 0x2000) - r9 ^ r9 * 0x10000) - r11 ^ r11 / 0x8) * 0x400) / 0x8000;
    r8 = *(r8 + 0x8);
    r9 = r9 & *(int32_t *)(r8 + 0x8) - 0x1;
    r9 = *(*r8 + (r9 << 0x4));
    if (r9 == 0x0) goto loc_1002a6f70;

loc_1002a6f3c:
    r8 = *(r8 + 0x20);
    asm { neg        x8, x8 };
    goto loc_1002a6f44;

loc_1002a6f44:
    r9 = r9 + r8;
    if (*(int32_t *)(r9 + 0x38) != 0x4 || *(int32_t *)*(r9 + 0x30) != var_4) goto loc_1002a6f68;

loc_1002a6f7c:
    r0 = *(int32_t *)(r9 + 0x4);
    return r0;

loc_1002a6f68:
    r9 = *(r9 + 0x28);
    if (r9 != 0x0) goto loc_1002a6f44;

loc_1002a6f70:
    r0 = 0x0;
    return r0;
}

-(void *)string {
    r0 = self->_string;
    return r0;
}

-(void)setCString:(char *)arg2 {
    [NSString stringWithUTF8String:arg2];
    [self setString:r2];
    return;
}

-(void)setString:(void *)arg2 {
    [self setString:arg2 updateLabel:0x1];
    return;
}

-(void)setString:(void *)arg2 updateLabel:(bool)arg3 {
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
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    if ((arg3 & 0x1) != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_initialString));
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    }
    [*(r19 + r8) release];
    *(r19 + r8) = [r21 copy];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    if ([*(r19 + r22) children] != 0x0 && **([*(r19 + r22) children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r23 = *(*(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r22 = *(*(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r22) {
                    do {
                            r21 = @selector(setVisible:);
                            r0 = *r23;
                            r23 = r23 + 0x8;
                            objc_msgSend(r0, r21);
                    } while (r23 < r22);
            }
    }
    [r19 createFontChars];
    if (r20 != 0x0) {
            [r19 updateLabel];
    }
    return;
}

-(struct _ccColorThreeB)color {
    r0 = *(int32_t *)(int64_t *)&self->_realColor;
    return r0;
}

-(struct _ccColorThreeB)displayedColor {
    r0 = *(int32_t *)(int64_t *)&self->_displayedColor;
    return r0;
}

-(unsigned char)opacity {
    r0 = *(int8_t *)(int64_t *)&self->_realOpacity;
    return r0;
}

-(unsigned char)displayedOpacity {
    r0 = *(int8_t *)(int64_t *)&self->_displayedOpacity;
    return r0;
}

-(struct _ccColorThreeB)emission {
    r0 = *(int32_t *)(int64_t *)&self->_realEmission;
    return r0;
}

-(struct _ccColorThreeB)displayedEmission {
    r0 = *(int32_t *)(int64_t *)&self->_displayedEmission;
    return r0;
}

-(void)setOpacityModifyRGB:(bool)arg2 {
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
    r19 = arg2;
    r20 = self;
    *(int8_t *)(int64_t *)&self->_opacityModifyRGB = arg2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(self + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r23 = *(r8 + 0x10);
                    r24 = r23 + r9 * 0x8 - 0x8;
                    if (r23 <= r24) {
                            do {
                                    r0 = *r23;
                                    r23 = r23 + 0x8;
                                    [r0 setOpacityModifyRGB:r2];
                            } while (r23 < r24);
                    }
            }
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    if ([*(r20 + r23) children] != 0x0 && **([*(r20 + r23) children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r24 = *(*(objc_msgSend(*(r20 + r23), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r21 = *(*(objc_msgSend(*(r20 + r23), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(*(r20 + r23), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r21) {
                    do {
                            r0 = *r24;
                            r24 = r24 + 0x8;
                            [r0 setOpacityModifyRGB:r2];
                    } while (r24 < r21);
            }
    }
    return;
}

-(bool)doesOpacityModifyRGB {
    r0 = *(int8_t *)(int64_t *)&self->_opacityModifyRGB;
    return r0;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    r31 = r31 - 0x60;
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
    r19 = self;
    [[&var_50 super] updateDisplayedOpacity:arg2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    if ([*(r19 + r22) children] != 0x0 && **([*(r19 + r22) children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r23 = *(*(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r21 = *(*(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r21) {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
                    do {
                            r0 = *r23;
                            r23 = r23 + 0x8;
                            [r0 updateDisplayedOpacity:*(int8_t *)(r19 + r22)];
                    } while (r23 < r21);
            }
    }
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r31 = r31 - 0x60;
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
    r19 = self;
    [[&var_50 super] updateDisplayedColor:r2 & 0xffffffff];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    if ([*(r19 + r23) children] != 0x0 && **([*(r19 + r23) children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r22 = *(*(objc_msgSend(*(r19 + r23), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r23 = *(*(objc_msgSend(*(r19 + r23), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(*(r19 + r23), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r22 <= r23) {
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
                    do {
                            r0 = *r22;
                            r22 = r22 + 0x8;
                            r21 = r21 & 0xffffffff00000000 | *(int32_t *)(r19 + r24);
                            [r0 updateDisplayedColor:r21];
                    } while (r22 < r23);
            }
    }
    return;
}

-(void)updateDisplayedEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r31 = r31 - 0x60;
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
    r19 = self;
    [[&var_50 super] updateDisplayedEmission:r2 & 0xffffffff];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    [*(r19 + r22) updateDisplayedEmission:r2 & 0xffffffff];
    if ([*(r19 + r22) children] != 0x0 && **([*(r19 + r22) children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r23 = *(*(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r22 = *(*(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(*(r19 + r22), r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r22) {
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_displayedEmission));
                    do {
                            r0 = *r23;
                            r23 = r23 + 0x8;
                            r21 = r21 & 0xffffffff00000000 | *(int32_t *)(r19 + r24);
                            [r0 updateDisplayedEmission:r21];
                    } while (r23 < r22);
            }
    }
    return;
}

-(void)setAnchorPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (d0 == *(int128_t *)(r0 + sign_extend_64(*(int32_t *)ivar_offset(_anchorPoint)))) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [[&var_20 super] setAnchorPoint:r2];
            [r0 createFontChars];
    }
    return;
}

-(void)setWidth:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_width = s0;
    [self updateLabel];
    return;
}

-(void)setAlignment:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_alignment = arg2;
    [self updateLabel];
    return;
}

-(void)setFntFile:(void *)arg2 {
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_fntFile));
    if (*(r0 + r24) != r2) {
            r21 = sub_1002a48e4(r2);
            [*(r0 + r24) release];
            *(r0 + r24) = [r2 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            [*(r0 + r24) release];
            *(r0 + r24) = [r21 retain];
            [r0->_batchNode setTexture:[[CCTextureCache sharedTextureCache] addImage:[*(r0 + r24) atlasName]]];
            [r0 createFontChars];
    }
    return;
}

-(void)createFontChars {
    r31 = r31 - 0x190;
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
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
    r20 = [*(self + r22) characterSet];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    r0 = *(r19 + r25);
    r0 = [r0 length];
    if (r0 == 0x0 || *(r19 + r22) == 0x0) goto .l12;

loc_1002a6ff4:
    r21 = r0;
    *(r29 + 0xffffffffffffff48) = r22;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    var_120 = r8;
    if ([*(r19 + r8) capacity] < r21) {
            [*(r19 + var_120) resizeCapacity:r21];
    }
    r27 = r21 - 0x1;
    if (r27 != 0x0) {
            r22 = 0x0;
            do {
                    if ([*(r19 + r25) characterAtIndex:r2] == 0xa) {
                            asm { cinc       x26, x26, eq };
                    }
                    r22 = r22 + 0x1;
            } while (r27 != r22);
    }
    *(int128_t *)(r29 + 0xffffffffffffff50) = 0x0;
    *(int128_t *)(r29 + 0xffffffffffffff58) = 0x0;
    r22 = 0x0;
    r27 = *(r29 + 0xffffffffffffff48);
    r8 = *(r19 + r27);
    r8 = *(r8 + 0x28);
    var_130 = r8 * 0x1;
    *(r29 + 0xffffffffffffff60) = r8 * 0x1 - r8;
    r24 = @selector(characterIsMember:);
    *(r29 + 0xffffffffffffff68) = @selector(kerningAmountForFirst:second:);
    r28 = 0xffff;
    var_F0 = r20;
    var_118 = r24;
    goto loc_1002a7190;

loc_1002a7190:
    r0 = *(r19 + r25);
    r2 = r22;
    r0 = [r0 characterAtIndex:r2];
    if (r0 < 0x2009) {
            asm { ccmp       w8, #0x0, #0x4, ls };
    }
    r26 = 0x20;
    if (CPU_FLAGS & NE) goto loc_1002a71f4;

loc_1002a71c8:
    r26 = 0x20;
    if (r0 == 0xa0) goto loc_1002a71f4;

loc_1002a71d0:
    if (r0 != 0xa) goto loc_1002a71f0;

loc_1002a71d8:
    r8 = *(r19 + r27);
    r8 = *(r8 + 0x28);
    r9 = *(r29 + 0xffffffffffffff60);
    *(int128_t *)(r29 + 0xffffffffffffff58) = 0x0;
    *(int128_t *)(r29 + 0xffffffffffffff60) = r9 - r8;
    goto loc_1002a731c;

loc_1002a731c:
    r22 = r22 + 0x1;
    if (r22 < r21) goto loc_1002a7190;

loc_1002a7584:
    asm { scvtf      d0, w8 };
    asm { scvtf      d1, x8 };
    if (d13 > d0) {
            asm { fcsel      d0, d2, d1, gt };
    }
    asm { ucvtf      d1, x8 };
    asm { fcvt       d2, s2 };
    asm { fdiv       d0, d0, d2 };
    asm { fdiv       d1, d1, d2 };
    [r19 setContentSize:r2];
    [r19 alignText];
    return;

.l12:
    return;

loc_1002a71f0:
    r26 = r0;
    goto loc_1002a71f4;

loc_1002a71f4:
    r2 = r26;
    if (objc_msgSend(r20, r24) == 0x0) goto loc_1002a731c;

loc_1002a7208:
    r2 = r28 & 0xffff;
    r3 = r26;
    objc_msgSend(r19, *(r29 + 0xffffffffffffff68));
    *(r29 + 0xffffffffffffff70) = r26;
    r8 = *(r19 + r27);
    r8 = *(r8 + 0x20);
    if (r8 == 0x0) goto loc_1002a7314;

loc_1002a722c:
    r11 = (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) - ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) ^ ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) / 0x20;
    r10 = r11 - (((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) - ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 ^ r11 / 0x8) - (((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 - (((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) - ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 ^ r11 / 0x8) ^ (((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) - ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 ^ r11 / 0x8) * 0x400) ^ (((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 - (((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) - ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 ^ r11 / 0x8) ^ (((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) - ((0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) - ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) ^ ((0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) - (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) - (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) ^ (0xfeedbef3 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) + (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) ^ (0x9f49bac6 - (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) ^ (0x112410d + (sign_extend_64(r26) & 0xffffff00) + sign_extend_64(r26) ^ 0x7f76d) * 0x100) / 0x2000) / 0x1000) * 0x10000) - r11 ^ r11 / 0x8) * 0x400) / 0x8000;
    r9 = *(r8 + 0x38);
    r8 = *(int32_t *)(r9 + 0x8);
    r8 = *(*r9 + ((r10 & r8 - 0x1) << 0x4));
    if (r8 == 0x0) goto loc_1002a7314;

loc_1002a72dc:
    asm { sxtw       x12, w0 };
    r9 = *(r9 + 0x20);
    asm { neg        x9, x9 };
    goto loc_1002a72e8;

loc_1002a72e8:
    r8 = r8 + r9;
    if (*(int32_t *)(r8 + 0x68) != 0x4 || *(int32_t *)*(r8 + 0x60) != *(int32_t *)(r29 + 0xffffffffffffff70)) goto loc_1002a730c;

loc_1002a732c:
    var_F8 = @selector(getChildByTag:);
    d1 = *(int128_t *)(r8 + 0x18);
    asm { fcvt       d2, s2 };
    asm { fdiv       d0, d0, d2 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_imageOffset));
    d3 = *(int128_t *)(r19 + r9);
    d13 = *(int128_t *)(r8 + 0x20);
    d0 = *(int128_t *)(r8 + 0x28);
    var_DC = *(int16_t *)(r8 + 0x30);
    var_E8 = sign_extend_64(*(int16_t *)(r8 + 0x32));
    r8 = sign_extend_64(*(int16_t *)(r8 + 0x34));
    var_D8 = r8;
    var_10C = r8 & 0xffff;
    asm { fdiv       d1, d1, d2 };
    asm { fdiv       d9, d13, d2 };
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    r0 = *(r19 + r27);
    asm { fdiv       d8, d0, d2 };
    r0 = objc_msgSend(r0, var_F8);
    if (r0 != 0x0) {
            r28 = r0;
            [r0 setVisible:0x1];
    }
    else {
            r28 = [CCSprite alloc];
            r28 = [r28 initWithTexture:[*(r19 + var_120) texture] rect:r3];
            r3 = r22;
            r4 = r22;
            [*(r19 + r27) addChild:r28 z:r3 tag:r4];
            [r28 release];
            r2 = *(int8_t *)(int64_t *)&r19->_opacityModifyRGB;
            [r28 setOpacityModifyRGB:r2];
            var_188 = var_188 & 0xffffffff00000000 | *(int32_t *)(int64_t *)&r19->_displayedColor;
            [r28 updateDisplayedColor:r2];
            r2 = *(int8_t *)(int64_t *)&r19->_displayedOpacity;
            [r28 updateDisplayedOpacity:r2];
            var_180 = var_180 & 0xffffffff00000000 | *(int32_t *)(int64_t *)&r19->_displayedEmission;
            [r28 updateDisplayedEmission:r2];
    }
    var_108 = @selector(setPosition:);
    var_D0 = 0xfeedbef3;
    d12 = 0x3fe0000000000000;
    [r28 setTextureRect:0x0 rotated:r3 untrimmedSize:r4];
    r27 = *(r29 + 0xffffffffffffff48);
    r8 = *(r19 + r27);
    asm { scvtf      d0, x20 };
    asm { scvtf      d1, w9 };
    d0 = d0 + d1;
    d1 = d13 * d12;
    d0 = d1 + d0;
    asm { scvtf      d1, w24 };
    d0 = d0 + d1;
    asm { scvtf      d1, x9 };
    asm { scvtf      d2, x8 };
    d1 = d1 + d2;
    d2 = d8 * d12;
    asm { fcvt       d3, s3 };
    d2 = d2 * d3;
    d1 = d1 - d2;
    asm { fdiv       d0, d0, d3 };
    asm { fdiv       d1, d1, d3 };
    objc_msgSend(r28, var_108);
    r9 = var_D8 + r20 + r24;
    r8 = *(r29 + 0xffffffffffffff50);
    if (r8 < r9) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r9;
            }
    }
    r2 = 0x0;
    *(int128_t *)(r29 + 0xffffffffffffff50) = r8;
    *(int128_t *)(r29 + 0xffffffffffffff58) = r9;
    r20 = var_F0;
    r24 = var_118;
    goto loc_1002a7318;

loc_1002a7318:
    r28 = r26;
    goto loc_1002a731c;

loc_1002a730c:
    r8 = *(r8 + 0x58);
    if (r8 != 0x0) goto loc_1002a72e8;

loc_1002a7314:
    r26 = r28;
    goto loc_1002a7318;
}

-(void *)fntFile {
    r0 = self->_fntFile;
    return r0;
}

-(void)updateBlendFunc {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([[self->_textureAtlas texture] hasPremultipliedAlpha] & 0x1) == 0x0) {
            r19->_blendFunc = *0x100ba36a8;
    }
    return;
}

-(void)setTexture:(void *)arg2 {
    [self->_textureAtlas setTexture:arg2];
    [self updateBlendFunc];
    return;
}

-(void)draw {
    [self->_batchNode draw];
    return;
}

-(void *)texture {
    r0 = self->_textureAtlas;
    r0 = [r0 texture];
    return r0;
}

-(int)alignment {
    r0 = *(int32_t *)(int64_t *)&self->_alignment;
    return r0;
}

-(struct CGPoint)imageOffset {
    r0 = self;
    return r0;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void)setImageOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_imageOffset));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

-(void *)batchNode {
    r0 = self->_batchNode;
    return r0;
}

-(void)setBatchNode:(void *)arg2 {
    self->_batchNode = arg2;
    return;
}

+(bool)accessInstanceVariablesDirectly {
    return 0x1;
}

@end