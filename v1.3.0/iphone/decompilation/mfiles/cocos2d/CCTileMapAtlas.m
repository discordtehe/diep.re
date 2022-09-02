@implementation CCTileMapAtlas

+(void *)tileMapAtlasWithTileFile:(void *)arg2 mapFile:(void *)arg3 tileWidth:(int)arg4 tileHeight:(int)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithTileFile:arg2 mapFile:arg3 tileWidth:arg4 tileHeight:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTileFile:(void *)arg2 mapFile:(void *)arg3 tileWidth:(int)arg4 tileHeight:(int)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r22 = self;
    [self loadTGAfile:arg3];
    [r22 calculateItemsToRender];
    asm { sxtw       x3, w20 };
    asm { sxtw       x4, w19 };
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_itemsToRender));
    r0 = [[&var_30 super] initWithTileFile:r21 tileWidth:r3 tileHeight:r4 itemsToRender:sign_extend_64(*(int32_t *)(r22 + r20))];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_posToAtlasIndex = [[NSMutableDictionary dictionaryWithCapacity:sign_extend_64(*(int32_t *)(r19 + r20))] retain];
            [r19 updateAtlasValues];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_tgaInfo));
            r8 = *(r19 + r8);
            asm { ucvtf      d0, x9 };
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_itemHeight));
            asm { ucvtf      d1, x8 };
            [r19 setContentSize:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_tgaInfo != 0x0) {
            sub_100310d84();
    }
    [r19->_posToAtlasIndex release];
    [[&var_20 super] dealloc];
    return;
}

-(void)releaseMap {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_tgaInfo));
    if (*(self + r20) != 0x0) {
            sub_100310d84();
    }
    *(r19 + r20) = 0x0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_posToAtlasIndex));
    [*(r19 + r20) release];
    *(r19 + r20) = 0x0;
    return;
}

-(void)calculateItemsToRender {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_itemsToRender));
    *(int32_t *)(r0 + r8) = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_tgaInfo));
    r9 = *(r0 + r9);
    r12 = sign_extend_64(*(int16_t *)(r9 + 0x6));
    if (r12 >= 0x1) {
            r10 = 0x0;
            r11 = 0x0;
            r12 = r12 & 0xffff;
            r13 = *(int16_t *)(r9 + 0x8);
            r14 = r12 << 0x2;
            do {
                    if (sign_extend_64(r13) >= 0x1) {
                            r15 = 0x0;
                            r16 = *(r9 + 0x10);
                            r16 = r16 + r11 * 0x4;
                            do {
                                    if (*(int8_t *)r16 != 0x0) {
                                            r10 = r10 + 0x1;
                                            *(int32_t *)(r0 + r8) = r10;
                                    }
                                    r15 = r15 + 0x1;
                                    r16 = r16 + r14;
                            } while (r15 < r13);
                    }
                    r11 = r11 + 0x1;
            } while (r11 < r12);
    }
    return;
}

-(struct _ccColorThreeB)tileAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tgaInfo));
    r8 = *(self + r8);
    r9 = *(r8 + 0x10);
    r8 = sign_extend_64(*(int16_t *)(r8 + 0x6));
    asm { scvtf      d2, w8 };
    asm { fcvtzu     x8, d0 };
    r0 = *(int32_t *)(r9 + r8 * 0x4);
    return r0;
}

-(void)loadTGAfile:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (([[CCConfiguration sharedConfiguration] useNewResourceManagement] & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = [CCFileUtils sharedFileUtils];
            r0 = [r0 fullPathForFilename:r20];
    }
    r0 = [r0 UTF8String];
    r0 = sub_100310c54(r0);
    r19->_tgaInfo = r0;
    if (*(int32_t *)r0 != 0x0) {
            [NSException raise:@"TileMapAtlasLoadTGA" format:@"TileMapAtas cannot load TGA file"];
    }
    return;
}

-(void)setTile:(struct _ccColorThreeB)arg2 at:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v9 = v0;
    r9 = r0->_tgaInfo;
    r8 = *(r9 + 0x10);
    r9 = sign_extend_64(*(int16_t *)(r9 + 0x6));
    asm { scvtf      d0, w9 };
    asm { fcvtzu     x9, d0 };
    if (*(int8_t *)(r8 + (r9 << 0x2)) != 0x0) {
            r20 = r2;
            r19 = r0;
            *(int32_t *)(r8 + r9 * 0x4) = r20;
            r21 = r0->_posToAtlasIndex;
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
            asm { fcvtzs     x8, d9 };
            asm { fcvtzs     x9, d1 };
            [r19 updateAtlasValueAt:r20 & 0xffffffff withValue:[[r21 objectForKey:[r0 stringWithFormat:r2]] integerValue] withIndex:r4];
    }
    return;
}

-(struct sImageTGA *)tgaInfo {
    r0 = self->_tgaInfo;
    return r0;
}

-(void)updateAtlasValueAt:(struct CGPoint)arg2 withValue:(struct _ccColorThreeB)arg3 withIndex:(unsigned long long)arg4 {
    memcpy(&r3, &arg3, 0x4);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0xc0;
    r19 = r3;
    r20 = r0;
    asm { fcvtzs     x24, d0 };
    asm { fcvtzs     x23, d1 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_itemsPerRow));
    asm { udiv       x10, x8, x9 };
    asm { ucvtf      s8, x8 };
    asm { ucvtf      s9, x10 };
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    r21 = @selector(texture);
    [objc_msgSend(*(r0 + r22), r21) pixelsWide];
    asm { ucvtf      s10, x0 };
    [objc_msgSend(*(r20 + r22), r21) pixelsHigh];
    asm { ucvtf      s0, x0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_itemWidth));
    r8 = *(r20 + r8);
    asm { ucvtf      s1, x8 };
    s2 = *(int32_t *)0x1011bcc00;
    s1 = s2 * s1;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_itemHeight));
    r9 = *(r20 + r9);
    asm { ucvtf      s3, x9 };
    s2 = s2 * s3;
    s3 = s1 * s8;
    asm { fdiv       s3, s3, s10 };
    asm { fdiv       s1, s1, s10 };
    s4 = s2 * s9;
    asm { fdiv       s4, s4, s0 };
    asm { fdiv       s0, s2, s0 };
    asm { scvtf      s2, w10 };
    asm { scvtf      s0, w11 };
    asm { scvtf      s1, w8 };
    asm { scvtf      s0, w8 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
    [*(r20 + r22) updateQuad:&var_B0 atIndex:r19];
    return;
}

-(void)updateAtlasValues {
    r0 = self;
    r31 = r31 - 0x90;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tgaInfo));
    var_70 = r8;
    r8 = *(r0 + r8);
    if (sign_extend_64(*(int16_t *)(r8 + 0x6)) >= 0x1) {
            r19 = r0;
            r20 = 0x0;
            r21 = 0x0;
            do {
                    if (sign_extend_64(*(int16_t *)(r8 + 0x8)) >= 0x1) {
                            r28 = 0x0;
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_itemsToRender));
                            asm { scvtf      d8, w21 };
                            do {
                                    if (r20 < *(int32_t *)(r19 + r23)) {
                                            r10 = *(r8 + 0x10);
                                            r9 = sign_extend_64(*(int16_t *)(r8 + 0x6));
                                            asm { madd       w11, w28, w9, w21 };
                                            asm { sbfiz      x9, x11, #0x2, #0x20 };
                                            r9 = *(int8_t *)(r10 + r9);
                                            if (r9 != 0x0) {
                                                    var_68 = @selector(updateAtlasValueAt:withValue:withIndex:);
                                                    asm { sxtw       x8, w11 };
                                                    asm { ldurh      w8, [x8, #0x1] };
                                                    asm { bfi        x8, x10, #0x10, #0x8 };
                                                    asm { scvtf      d1, w28 };
                                                    asm { sxtw       x3, w20 };
                                                    r22 = r22 & 0xffffffff00000000 | r9;
                                                    asm { bfi        x22, x8, #0x8, #0x18 };
                                                    objc_msgSend(r19, var_68);
                                                    objc_msgSend(@class(NSString), r24);
                                                    objc_msgSend(@class(NSNumber), r25);
                                                    objc_msgSend(r19->_posToAtlasIndex, r26);
                                                    r20 = r20 + 0x1;
                                                    r8 = *(r19 + var_70);
                                            }
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < sign_extend_64(*(int16_t *)(r8 + 0x8)));
                    }
                    r21 = r21 + 0x1;
            } while (r21 < sign_extend_64(*(int16_t *)(r8 + 0x6)));
    }
    return;
}

@end