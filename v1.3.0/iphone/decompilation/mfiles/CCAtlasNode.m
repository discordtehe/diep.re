@implementation CCAtlasNode

-(void *)init {
    r0 = self;
    return r0;
}

+(void *)atlasWithTileFile:(void *)arg2 tileWidth:(unsigned long long)arg3 tileHeight:(unsigned long long)arg4 itemsToRender:(unsigned long long)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithTileFile:arg2 tileWidth:arg3 tileHeight:arg4 itemsToRender:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTileFile:(void *)arg2 tileWidth:(unsigned long long)arg3 tileHeight:(unsigned long long)arg4 itemsToRender:(unsigned long long)arg5 {
    r0 = [self initWithTexture:[[CCTextureCache sharedTextureCache] addImage:arg2] tileWidth:arg3 tileHeight:arg4 itemsToRender:arg5];
    return r0;
}

-(void)dealloc {
    [self->_textureAtlas release];
    [[&var_20 super] dealloc];
    return;
}

-(void)calculateMaxItems {
    r19 = self;
    [[self->_textureAtlas texture] contentSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_itemHeight));
    asm { ucvtf      d2, d2 };
    asm { fdiv       d1, d1, d2 };
    asm { fcvtzu     x8, d1 };
    r19->_itemsPerColumn = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_itemWidth));
    asm { ucvtf      d1, d1 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzu     x8, d0 };
    r19->_itemsPerRow = r8;
    return;
}

-(void *)initWithTexture:(void *)arg2 tileWidth:(unsigned long long)arg3 tileHeight:(unsigned long long)arg4 itemsToRender:(unsigned long long)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r22 = arg4;
    r23 = arg3;
    r21 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_itemWidth = r23;
            r19->_itemHeight = r22;
            *(int32_t *)(int64_t *)&r19->_colorUnmodified = 0xffffff;
            *(int8_t *)(int64_t *)&r19->_opacityModifyRGB = 0x1;
            r19->_blendFunc = *0x100ba3650;
            r0 = [CCTextureAtlas alloc];
            r0 = [r0 initWithTexture:r21 capacity:r20];
            r19->_textureAtlas = r0;
            if (r0 != 0x0) {
                    [r19 updateBlendFunc];
                    [r19 updateOpacityModifyRGB];
                    [r19 calculateMaxItems];
                    [r19 setQuadsToDraw:r20];
                    if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                            r21 = (int64_t *)&r19->_mcRenderJob;
                            q0 = *(int128_t *)0x1011e2ec0;
                            q1 = *(int128_t *)0x1011e2ed0;
                            q2 = *(int128_t *)0x1011e2ea0;
                            q3 = *(int128_t *)0x1011e2eb0;
                            *(int128_t *)r21 = q2;
                            *(int128_t *)(r21 + 0x10) = q3;
                            *(int128_t *)(r21 + 0x20) = q0;
                            *(int128_t *)(r21 + 0x30) = q1;
                            *(r21 + 0x18) = *0x100ba3648;
                            sub_100292530();
                            sub_100298a28(&var_58, [@"ShaderPositionTexture_uColor" UTF8String]);
                            r0 = sub_10037ec20(r20, &var_58);
                            r20 = r0;
                            *(r21 + 0x140) = r0;
                            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_58);
                                    r20 = *(r21 + 0x140);
                            }
                            sub_100298a28(&var_70, "u_color");
                            r0 = sub_100382990(r20, &var_70);
                            r19->_mcColorUniform = r0;
                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_70);
                            }
                    }
                    else {
                            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTexture_uColor"]];
                            *(int32_t *)(int64_t *)&r19->_uniformColor = glGetUniformLocation([r19->_shaderProgram program], "u_color");
                    }
            }
            else {
                    [r19 release];
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(void)updateAtlasValues {
    [NSException raise:@"CCAtlasNode:Abstract" format:@"updateAtlasValue not overriden"];
    return;
}

-(struct _ccColorThreeB)color {
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_opacityModifyRGB != 0x0) {
            r0 = *(int32_t *)(int64_t *)&r0->_colorUnmodified;
    }
    else {
            r0 = [[&var_10 super] color];
    }
    r0 = r0;
    return r0;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    *(int32_t *)(int64_t *)&r0->_colorUnmodified = r2;
    if (*(int8_t *)(int64_t *)&r0->_opacityModifyRGB != 0x0) {
            asm { ubfx       w8, w2, #0x8, #0x8 };
            asm { ubfx       w12, w2, #0x10, #0x8 };
    }
    else {
            asm { ubfx       x8, x2, #0x8, #0x18 };
            asm { ubfx       x10, x2, #0x10, #0x10 };
    }
    asm { bfxil      w2, w9, #0x0, #0x8 };
    asm { bfi        w2, w8, #0x8, #0x8 };
    asm { bfi        w2, w10, #0x10, #0x8 };
    [[&var_10 super] setColor:r2];
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setOpacity:arg2];
    if (*(int8_t *)(int64_t *)&r19->_opacityModifyRGB != 0x0) {
            [r19 setColor:r2];
    }
    return;
}

-(void)setOpacityModifyRGB:(bool)arg2 {
    [self color];
    *(int8_t *)(int64_t *)&self->_opacityModifyRGB = arg2;
    [self setColor:r2];
    return;
}

-(bool)doesOpacityModifyRGB {
    r0 = *(int8_t *)(int64_t *)&self->_opacityModifyRGB;
    return r0;
}

-(void)updateOpacityModifyRGB {
    *(int8_t *)(int64_t *)&self->_opacityModifyRGB = [[self->_textureAtlas texture] hasPremultipliedAlpha];
    return;
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
    [self updateOpacityModifyRGB];
    return;
}

-(void)draw {
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
    r19 = self;
    r0 = [CCConfiguration sharedConfiguration];
    r1 = @selector(useNewRenderer);
    if (objc_msgSend(r0, r1) == 0x0) goto loc_100298d24;

loc_100298c10:
    r24 = (int64_t *)&r19->_mcDisplayedColor;
    s0 = *(int8_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_displayedColor)));
    asm { ushll      v0.4s, v0.4h, #0x0 };
    asm { ucvtf      v0.4s, v0.4s };
    asm { dup        v1.4s, w8 };
    asm { fdiv       v0.4s, v0.4s, v1.4s };
    *(int128_t *)r24 = q0;
    r0 = sub_1003812ec();
    r20 = (int64_t *)&r19->_mcRenderJob;
    *(int32_t *)(r20 + 0x18) = r0;
    *(int32_t *)(r20 + 0x1c) = sub_1003812ec();
    r27 = r19->_mcColorUniform;
    r21 = r20 + 0x150;
    r25 = ((((r27 << 0x3) + 0x8 ^ r27 / 0x1) * 0x9ddfea08eb382d69 ^ r27 / 0x1 ^ ((r27 << 0x3) + 0x8 ^ r27 / 0x1) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69 ^ (((r27 << 0x3) + 0x8 ^ r27 / 0x1) * 0x9ddfea08eb382d69 ^ r27 / 0x1 ^ ((r27 << 0x3) + 0x8 ^ r27 / 0x1) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69;
    r23 = *(r20 + 0x158);
    if (r23 == 0x0) goto loc_100298ea4;

loc_100298cf4:
    asm { cnt        v0.8b, v0.8b };
    asm { uaddlv     h0, v0.8b };
    r8 = s0;
    if (r8 >= 0x1) {
            r26 = r25;
            if (r25 >= r23) {
                    r9 = 0x9ddfea08eb382d69;
                    asm { udiv       x9, x25, x23 };
                    r26 = r25 - r9 * r23;
            }
    }
    else {
            r26 = r25 & r23 - 0x1;
    }
    r9 = *r21;
    r9 = *(r9 + r26 * 0x8);
    if (r9 == 0x0) goto loc_100298ea4;

loc_100298e54:
    r10 = r23 - 0x1;
    goto loc_100298e58;

loc_100298e58:
    r9 = *r9;
    if (r9 == 0x0) goto loc_100298ea4;

loc_100298e60:
    r11 = *(r9 + 0x8);
    if (r11 == r25) goto loc_100298e94;

loc_100298e6c:
    if (r8 >= 0x1) {
            if (r11 >= r23) {
                    asm { udiv       x12, x11, x23 };
                    r11 = r11 - r12 * r23;
            }
    }
    else {
            r11 = r11 & r10;
    }
    if (r11 != r26) goto loc_100298ea4;

loc_100298e94:
    if (*(r9 + 0x10) != r27) goto loc_100298e58;

loc_100298fb4:
    [r19->_textureAtlas drawNumberOfQuads:r19->_quadsToDraw fromIndex:0x0 renderJob:r20];
    return;

loc_100298ea4:
    r0 = operator new();
    r22 = r0;
    *(int128_t *)(r0 + 0x10) = r27;
    *(int128_t *)(r0 + 0x18) = r24;
    *(int128_t *)r0 = 0x0;
    *(int128_t *)(r0 + 0x8) = r25;
    r8 = *(r21 + 0x18);
    r8 = r8 + 0x1;
    asm { ucvtf      s0, x8 };
    s1 = *(int32_t *)(r21 + 0x20);
    if (r23 != 0x0) {
            asm { ucvtf      s2, x23 };
            if (s1 * s2 < s0) {
                    if (r23 < 0x3) {
                            if (CPU_FLAGS & B) {
                                    r8 = 0x1;
                            }
                    }
                    r9 = r23 - 0x1;
                    if ((r23 & r9) != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r9 = 0x1;
                            }
                    }
                    r8 = r8 | r9;
                    asm { bfi        x8, x23, #0x1, #0x3f };
                    asm { fdiv       s0, s0, s1 };
                    asm { fcvtpu     x9, s0 };
                    if (r8 < r9) {
                            if (!CPU_FLAGS & B) {
                                    r1 = r8;
                            }
                            else {
                                    r1 = r9;
                            }
                    }
                    sub_10029941c(r21, r1);
                    r23 = *(r21 + 0x8);
                    r8 = r23 - 0x1;
                    if ((r23 & r8) != 0x0) {
                            if (r25 < r23) {
                                    r26 = r25;
                            }
                            else {
                                    asm { udiv       x8, x25, x23 };
                                    r26 = r25 - r8 * r23;
                            }
                    }
                    else {
                            r26 = r8 & r25;
                    }
            }
    }
    else {
            if (r23 < 0x3) {
                    if (CPU_FLAGS & B) {
                            r8 = 0x1;
                    }
            }
            r9 = r23 - 0x1;
            if ((r23 & r9) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            r8 = r8 | r9;
            asm { bfi        x8, x23, #0x1, #0x3f };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtpu     x9, s0 };
            if (r8 < r9) {
                    if (!CPU_FLAGS & B) {
                            r1 = r8;
                    }
                    else {
                            r1 = r9;
                    }
            }
            sub_10029941c(r21, r1);
            r23 = *(r21 + 0x8);
            r8 = r23 - 0x1;
            if ((r23 & r8) != 0x0) {
                    if (r25 < r23) {
                            r26 = r25;
                    }
                    else {
                            asm { udiv       x8, x25, x23 };
                            r26 = r25 - r8 * r23;
                    }
            }
            else {
                    r26 = r8 & r25;
            }
    }
    r9 = *r21;
    r8 = *(r9 + r26 * 0x8);
    if (r8 == 0x0) goto loc_100298f58;

loc_100298f4c:
    *r22 = *r8;
    goto loc_100298fa4;

loc_100298fa4:
    *r8 = r22;
    goto loc_100298fa8;

loc_100298fa8:
    *(r21 + 0x18) = *(r21 + 0x18) + 0x1;
    goto loc_100298fb4;

loc_100298f58:
    *r22 = *(r21 + 0x10);
    *(r21 + 0x10) = r22;
    *(r9 + r26 * 0x8) = r21 + 0x10;
    r8 = *r22;
    if (r8 == 0x0) goto loc_100298fa8;

loc_100298f74:
    r8 = *(r8 + 0x8);
    r9 = r23 - 0x1;
    if ((r23 & r9) != 0x0) {
            if (r8 >= r23) {
                    asm { udiv       x9, x8, x23 };
                    r8 = r8 - r9 * r23;
            }
    }
    else {
            r8 = r8 & r9;
    }
    r8 = *r21 + r8 * 0x8;
    goto loc_100298fa4;

loc_100298d24:
    sub_10031a6c4();
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r19 + r20) use];
    [*(r19 + r20) setUniformsForBuiltins];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(r19 + r8), *(int128_t *)(0x4 + r19 + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
    asm { ushll      v0.4s, v0.4h, #0x0 };
    asm { ucvtf      v0.4s, v0.4s };
    asm { dup        v1.4s, w8 };
    asm { fdiv       v0.4s, v0.4s, v1.4s };
    [*(r19 + r20) setUniformLocation:*(int32_t *)(int64_t *)&r19->_uniformColor with4fv:&var_60 count:0x1];
    [r19->_textureAtlas drawNumberOfQuads:r19->_quadsToDraw fromIndex:0x0];
    return;
}

-(void *)texture {
    r0 = self->_textureAtlas;
    r0 = [r0 texture];
    return r0;
}

-(void *)textureAtlas {
    r0 = self->_textureAtlas;
    return r0;
}

-(void)setTextureAtlas:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void)setQuadsToDraw:(unsigned long long)arg2 {
    self->_quadsToDraw = arg2;
    return;
}

-(void *).cxx_construct {
    r0 = self;
    return r0;
}

-(unsigned long long)quadsToDraw {
    r0 = self->_quadsToDraw;
    return r0;
}

@end