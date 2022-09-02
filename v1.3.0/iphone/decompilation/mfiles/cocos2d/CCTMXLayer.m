@implementation CCTMXLayer

+(void *)layerWithTilesetInfo:(void *)arg2 layerInfo:(void *)arg3 mapInfo:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithTilesetInfo:arg2 layerInfo:arg3 mapInfo:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self->_layerName release];
    [r19->_tileset release];
    [r19->_reusedTile release];
    [r19->_properties release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_atlasIndexArray));
    if (*(r19 + r20) != 0x0) {
            sub_10033aa30();
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_tiles));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            free(r0);
            *(r19 + r20) = 0x0;
    }
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_tiles));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            free(r0);
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_atlasIndexArray));
    if (*(r19 + r20) != 0x0) {
            sub_10033aa30();
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void *)initWithTilesetInfo:(void *)arg2 layerInfo:(void *)arg3 mapInfo:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r21 = arg4;
    r19 = arg3;
    r22 = arg2;
    r20 = self;
    [arg3 layerSize];
    d0 = d0 * d1;
    asm { fcvt       s10, d0 };
    if (r22 != 0x0) {
            r23 = [CCTextureCache sharedTextureCache];
            r2 = [r22 sourceImage];
            r2 = [r23 addImage:r2];
    }
    else {
            r2 = 0x0;
    }
    asm { fcvtzu     x3, s11 };
    r0 = [[&var_60 super] initWithTexture:r2 capacity:r3];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setLayerName:[r19 name]];
            *(int128_t *)(int64_t *)&r20->_layerSize = d8;
            *(int128_t *)((int64_t *)&r20->_layerSize + 0x8) = d9;
            r20->_tiles = [r19 tiles];
            r20->_minGID = [r19 minGID];
            r20->_maxGID = [r19 maxGID];
            *(int8_t *)(int64_t *)&r20->_opacity = [r19 opacity];
            [r20 setProperties:[NSMutableDictionary dictionaryWithDictionary:[r19 properties]]];
            [r20 setTileset:r22];
            [r21 tileSize];
            *(int128_t *)(int64_t *)&r20->_mapTileSize = d0;
            *(int128_t *)((int64_t *)&r20->_mapTileSize + 0x8) = d1;
            r8 = &@selector(addObserver:userInfoKeys:targetObject:);
            objc_msgSend(r21, *(r8 + 0x420));
            asm { sxtw       x8, w0 };
            r20->_layerOrientation = r8;
            [r19 offset];
            [r20 calculateLayerOffset:r2];
            asm { fcvt       d2, s2 };
            asm { fdiv       d0, d0, d2 };
            r1 = @selector(setPosition:);
            asm { fdiv       d1, d1, d2 };
            objc_msgSend(r20, r1);
            asm { fcvtzu     x0, s10 };
            r20->_atlasIndexArray = sub_10033a9f0();
            asm { fcvt       d1, s1 };
            asm { dup        v1.2d, v1.d[0] };
            asm { fdiv       v0.2d, v0.2d, v1.2d };
            [r20 setContentSize:r2];
            *(int8_t *)(int64_t *)&r20->_useAutomaticVertexZ = 0x0;
            r20->_vertexZvalue = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void *)reusedTileWithRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
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
    v10 = v1;
    v11 = v0;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_reusedTile));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 setBatchNode:0x0];
            [*(r19 + r21) setTextureRect:0x0 rotated:r3 untrimmedSize:r4];
            r0 = *(r19 + r21);
    }
    else {
            r0 = [[CCSprite alloc] initWithTexture:[r19->_textureAtlas texture] rect:0x0 rotated:r4];
            *(r19 + r21) = r0;
    }
    [r0 setBatchNode:r2];
    r0 = *(r19 + r21);
    return r0;
}

-(void *)propertyNamed:(void *)arg2 {
    r0 = self->_properties;
    r0 = [r0 valueForKey:arg2];
    return r0;
}

-(void)parseInternalProperties {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self propertyNamed:r2];
    if (r0 != 0x0) {
            r21 = r0;
            if ([r0 isEqualToString:r2] != 0x0) {
                    *(int8_t *)(int64_t *)&r19->_useAutomaticVertexZ = 0x1;
                    [[r19 propertyNamed:r2] floatValue];
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColorAlphaTest"]];
                    [[r19 shaderProgram] setUniformLocation:glGetUniformLocation([[r19 shaderProgram] program], "CC_AlphaValue") withF1:r3];
            }
            else {
                    r8 = 0x101137000;
                    objc_msgSend(r21, *(r8 + 0x2e0));
                    asm { sxtw       x8, w0 };
                    r19->_vertexZvalue = r8;
            }
    }
    return;
}

-(void)setupTiles {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    [[*(self + r21) texture] contentSizeInPixels];
    [r19->_tileset setImageSize:r2];
    [[*(r19 + r21) texture] setAliasTexParameters];
    [r19 parseInternalProperties];
    r22 = (int64_t *)&r19->_layerSize;
    if (*(r22 + 0x8) > 0x0) {
            r23 = 0x0;
            d1 = *r22;
            do {
                    if (d1 > 0x0) {
                            r8 = 0x10116b000;
                            r28 = sign_extend_64(*(int32_t *)(r8 + 0xcc8));
                            r24 = 0x1;
                            do {
                                    asm { fcvtzu     x8, d2 };
                                    r21 = *(int32_t *)(*(r19 + r28) + r8 * 0x4);
                                    if (r21 != 0x0) {
                                            [r19 appendTileForGID:r2 at:r3];
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_minGID));
                                            r9 = *(r19 + r8);
                                            if (r9 > r21) {
                                                    if (!CPU_FLAGS & A) {
                                                            r9 = r9;
                                                    }
                                                    else {
                                                            r9 = r21;
                                                    }
                                            }
                                            *(r19 + r8) = r9;
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_maxGID));
                                            r9 = *(r19 + r8);
                                            if (r9 < r21) {
                                                    if (!CPU_FLAGS & B) {
                                                            r9 = r9;
                                                    }
                                                    else {
                                                            r9 = r21;
                                                    }
                                            }
                                            *(r19 + r8) = r9;
                                            d1 = *r22;
                                    }
                                    d0 = 0x0;
                                    asm { ucvtf      d0, x24 };
                                    r24 = r24 + 0x1;
                            } while (d1 > d0);
                    }
                    d8 = 0x0;
                    r23 = r23 + 0x1;
                    asm { ucvtf      d8, x23 };
            } while (*(r22 + 0x8) > d8);
    }
    return;
}

-(unsigned int)tileGIDAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self tileGIDAt:0x0 withFlags:r3];
    return r0;
}

-(void *)tileAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r0 = [self tileGIDAt:r2];
    if (r0 != 0x0) {
            r22 = r0;
            asm { fcvtzs     w8, d0 };
            asm { sxtw       x20, w8 };
            r0 = [r19 getChildByTag:r2];
            r21 = r0;
            if (r0 == 0x0) {
                    [r19->_tileset rectForGID:r22];
                    asm { fcvt       d4, s4 };
                    asm { fdiv       d10, d0, d4 };
                    asm { fdiv       d11, d1, d4 };
                    asm { fdiv       d12, d2, d4 };
                    r0 = @class(CCSprite);
                    r1 = @selector(alloc);
                    asm { fdiv       d13, d3, d4 };
                    r0 = [objc_msgSend(r0, r1) initWithTexture:[r19 texture] rect:r3];
                    r21 = r0;
                    r2 = r19;
                    [r0 setBatchNode:r2];
                    [r19 positionAt:r2];
                    [r21 setPosition:r2];
                    [r19 vertexZForPos:r2];
                    asm { scvtf      s0, x0 };
                    [r21 setVertexZ:r2];
                    [r21 setAnchorPoint:r2];
                    [r21 setOpacity:*(int8_t *)(int64_t *)&r19->_opacity];
                    [r19 addSpriteWithoutQuad:r21 z:[r19 atlasIndexForExistantZ:r20] tag:r20];
                    [r21 release];
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = r21;
    return r0;
}

-(unsigned int)tileGIDAt:(struct CGPoint)arg2 withFlags:(int *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_layerSize));
    asm { fcvtzs     x8, d0 };
    r8 = *(int32_t *)(r0->_tiles + r8 * 0x4);
    if (r2 != 0x0) {
            *(int32_t *)r2 = r8 & 0xe0000000;
    }
    r0 = r8 & 0x1fffffff;
    return r0;
}

-(void *)insertTileForGID:(unsigned int)arg2 at:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = arg2;
    r20 = self;
    [self->_tileset rectForGID:r2];
    asm { fcvtzs     x21, d4 };
    asm { fcvt       d4, s4 };
    asm { fdiv       d0, d0, d4 };
    asm { fdiv       d1, d1, d4 };
    asm { fdiv       d2, d2, d4 };
    r1 = @selector(reusedTileWithRect:);
    asm { fdiv       d3, d3, d4 };
    r22 = objc_msgSend(r20, r1);
    [r20 setupTileSprite:r22 position:r19 withGID:r4];
    r23 = [r20 atlasIndexForNewZ:r21];
    [r20 insertQuadFromSprite:r22 quadIndex:r23];
    sub_10033aa64(r20->_atlasIndexArray, r21, r23);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(r20 + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r27 = *(r8 + 0x10);
                    r28 = r27 + r9 * 0x8 - 0x8;
                    if (r27 <= r28) {
                            do {
                                    r26 = *r27;
                                    r0 = [r26 atlasIndex];
                                    if (r0 >= r23) {
                                            [r26 setAtlasIndex:r2];
                                    }
                                    r27 = r27 + 0x8;
                            } while (r27 < r28);
                    }
            }
    }
    *(int32_t *)(r20->_tiles + r21 * 0x4) = r19;
    r0 = r22;
    return r0;
}

-(void *)updateTileForGID:(unsigned int)arg2 at:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r19 = arg2;
    r20 = self;
    [self->_tileset rectForGID:r2];
    asm { fcvtzs     w22, d4 };
    asm { fcvt       d4, s4 };
    asm { fdiv       d0, d0, d4 };
    asm { fdiv       d1, d1, d4 };
    asm { fdiv       d2, d2, d4 };
    r1 = @selector(reusedTileWithRect:);
    asm { fdiv       d3, d3, d4 };
    r21 = objc_msgSend(r20, r1);
    r2 = r21;
    [r20 setupTileSprite:r2 position:r19 withGID:r4];
    asm { sxtw       x2, w22 };
    [r21 setAtlasIndex:[r20 atlasIndexForExistantZ:r2]];
    [r21 setDirty:0x1];
    [r21 updateTransform];
    *(int32_t *)(r20->_tiles + r22 * 0x4) = r19;
    r0 = r21;
    return r0;
}

-(void)setupTileSprite:(void *)arg2 position:(struct CGPoint)arg3 withGID:(unsigned int)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    r20 = r3;
    v8 = v1;
    v9 = v0;
    r19 = arg2;
    r23 = self;
    [self positionAt:r2];
    [r19 setPosition:r2];
    [r23 vertexZForPos:r2];
    asm { scvtf      s0, x0 };
    [r19 setVertexZ:r2];
    [r19 setOpacity:*(int8_t *)(int64_t *)&r23->_opacity];
    [r19 setFlipX:0x0];
    [r19 setFlipY:0x0];
    [r19 setRotation:0x0];
    [r23->_tileset tileAnchorPoint];
    [r19 setAnchorPoint:r2];
    if ((r20 & 0x20000000) != 0x0) goto loc_1002e126c;

loc_1002e1240:
    if ((r20 & 0xffffffff80000000) != 0x0) goto loc_1002e1318;

loc_1002e1244:
    if ((r20 & 0x40000000) != 0x0) goto loc_1002e132c;

.l1:
    return;

loc_1002e132c:
    r0 = r19;
    r1 = @selector(setFlipY:);
    goto loc_1002e139c;

loc_1002e139c:
    objc_msgSend(r0, r1);
    return;

loc_1002e1318:
    [r19 setFlipX:0x1];
    if ((r20 & 0x40000000) == 0x0) goto .l1;
    goto loc_1002e132c;

loc_1002e126c:
    [r19 setAnchorPoint:r2];
    [r23 positionAt:0x0];
    [r19 contentSize];
    [r23 positionAt:0x0];
    [r19 contentSize];
    [r19 setPosition:0x0];
    r8 = r20 & 0xc0000000;
    if (r8 == 0x40000000) goto loc_1002e1338;

loc_1002e1304:
    if (r8 != 0xffffffff80000000) goto loc_1002e136c;

loc_1002e1310:
    r8 = 0x42b40000;
    goto loc_1002e133c;

loc_1002e133c:
    [r19 setRotation:0x0];
    return;

loc_1002e136c:
    if (r20 >> 0x1e >= 0x3) {
            r8 = 0x42b40000;
    }
    else {
            r8 = 0x43870000;
    }
    [r19 setRotation:0x0];
    r0 = r19;
    r1 = @selector(setFlipX:);
    goto loc_1002e139c;

loc_1002e1338:
    r8 = 0x43870000;
    goto loc_1002e133c;
}

-(void *)appendTileForGID:(unsigned int)arg2 at:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r20 = arg2;
    r19 = self;
    [self->_tileset rectForGID:r2];
    asm { fcvtzs     x21, d4 };
    asm { fcvt       d4, s4 };
    asm { fdiv       d0, d0, d4 };
    asm { fdiv       d1, d1, d4 };
    asm { fdiv       d2, d2, d4 };
    r1 = @selector(reusedTileWithRect:);
    asm { fdiv       d3, d3, d4 };
    r22 = objc_msgSend(r19, r1);
    [r19 setupTileSprite:r22 position:r20 withGID:r4];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_atlasIndexArray));
    r20 = **(r19 + r23);
    [r19 insertQuadFromSprite:r22 quadIndex:r20];
    sub_10033aa64(*(r19 + r23), r21, r20);
    r0 = r22;
    return r0;
}

-(unsigned long long)atlasIndexForExistantZ:(unsigned long long)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_atlasIndexArray));
    r8 = *(self + r20);
    r0 = bsearch(&var_18, *(r8 + 0x10), *r8, 0x8, 0x1002e1794);
    r0 = r0 - *(*(self + r20) + 0x10) >> 0x3;
    return r0;
}

-(void)setTileGID:(unsigned int)arg2 at:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [self setTileGID:arg2 at:0x0 withFlags:r4];
    return;
}

-(unsigned long long)atlasIndexForNewZ:(unsigned long long)arg2 {
    r2 = arg2;
    r9 = self->_atlasIndexArray;
    r8 = *r9;
    if (r8 != 0x0) {
            r0 = 0x0;
            r9 = *(r9 + 0x10);
            do {
                    if (*(r9 + r0 * 0x8) > r2) {
                        break;
                    }
                    r0 = r0 + 0x1;
            } while (r0 < r8);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    return;
}

-(void)setTileGID:(unsigned int)arg2 at:(struct CGPoint)arg3 withFlags:(int)arg4 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x60;
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
    r21 = r3;
    v8 = v1;
    v9 = v0;
    r24 = arg2;
    r19 = self;
    r0 = [self tileGIDAt:&var_44 withFlags:r3];
    if (r0 == r24) {
            asm { ccmp       w8, w21, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto .l3;

loc_1002e18a4:
    if (r24 == 0x0) goto loc_1002e197c;

loc_1002e18a8:
    r20 = r21 | r24;
    if (r0 == 0x0) goto loc_1002e1998;

loc_1002e18b0:
    asm { fcvtzu     x22, d0 };
    r0 = [r19 getChildByTag:r2];
    if (r0 == 0x0) goto loc_1002e19a4;

loc_1002e18e0:
    r23 = r0;
    [r19->_tileset rectForGID:r24];
    asm { fcvt       d4, s4 };
    asm { fdiv       d0, d0, d4 };
    asm { fdiv       d1, d1, d4 };
    asm { fdiv       d2, d2, d4 };
    r1 = @selector(setTextureRect:rotated:untrimmedSize:);
    asm { fdiv       d3, d3, d4 };
    objc_msgSend(r23, r1);
    if (r21 != 0x0) {
            [r23 position];
            [r19 setupTileSprite:r23 position:r20 withGID:r4];
    }
    *(int32_t *)(r19->_tiles + r22 * 0x4) = r20;
    return;

.l3:
    return;

loc_1002e19a4:
    r1 = @selector(updateTileForGID:at:);
    goto loc_1002e19ac;

loc_1002e19ac:
    objc_msgSend(r19, r1);
    return;

loc_1002e1998:
    r1 = @selector(insertTileForGID:at:);
    goto loc_1002e19ac;

loc_1002e197c:
    [r19 removeTileAt:r2];
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = r0;
            r1 = [r2 atlasIndex];
            r0 = r21->_atlasIndexArray;
            *(int32_t *)(r21->_tiles + *(*(r0 + 0x10) + r1 * 0x8) * 0x4) = 0x0;
            sub_10033aac4(r0, r1);
            [[&var_40 super] removeChild:r2 cleanup:r3];
    }
    return;
}

-(struct CGPoint)calculateLayerOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_layerOrientation));
    r8 = *(r0 + r8);
    if (r8 == 0x2) goto loc_1002e1c34;

loc_1002e1c18:
    if (r8 != 0x0) goto .l3;

loc_1002e1c1c:
    v0 = v1;
    goto loc_1002e1c58;

loc_1002e1c58:
    v0 = v0 * v2;
    return r0;

.l3:
    return r0;

loc_1002e1c34:
    v2 = v2 * 0x3fe0000000000000;
    v0 = 0x3fe0000000000000;
    asm { dup        v1.2d, v1.d[0] };
    v0 = v0 - v1;
    goto loc_1002e1c58;
}

-(struct CGPoint)positionAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_layerOrientation));
    r8 = *(r0 + r8);
    if (r8 == 0x2) goto loc_1002e1ca8;

loc_1002e1c90:
    if (r8 == 0x1) goto loc_1002e1cb4;

loc_1002e1c98:
    if (r8 != 0x0) goto loc_1002e1cd0;

loc_1002e1c9c:
    r1 = @selector(positionForOrthoAt:);
    goto loc_1002e1cbc;

loc_1002e1cbc:
    r0 = objc_msgSend(r0, r1);
    goto loc_1002e1cd0;

loc_1002e1cd0:
    asm { fcvt       d2, s2 };
    asm { fdiv       d0, d0, d2 };
    asm { fdiv       d1, d1, d2 };
    return r0;

loc_1002e1cb4:
    r1 = @selector(positionForHexAt:);
    goto loc_1002e1cbc;

loc_1002e1ca8:
    r1 = @selector(positionForIsoAt:);
    goto loc_1002e1cbc;
}

-(void)removeTileAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
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
    r20 = self;
    if ([self tileGIDAt:r2] != 0x0) {
            asm { fcvtzu     x21, d0 };
            r19 = [r20 atlasIndexForExistantZ:r21];
            *(int32_t *)(r20->_tiles + r21 * 0x4) = 0x0;
            sub_10033aac4(r20->_atlasIndexArray, r19);
            r0 = [r20 getChildByTag:r2];
            if (r0 != 0x0) {
                    [[&var_50 super] removeChild:r0 cleanup:0x1];
            }
            else {
                    [r20->_textureAtlas removeQuadAtIndex:r19];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
                    r8 = *(r20 + r8);
                    if (r8 != 0x0) {
                            r8 = r8->data;
                            r9 = *r8;
                            if (r9 != 0x0) {
                                    r23 = *(r8 + 0x10);
                                    r24 = r23 + r9 * 0x8 - 0x8;
                                    if (r23 <= r24) {
                                            do {
                                                    r22 = *r23;
                                                    r0 = [r22 atlasIndex];
                                                    if (r0 >= r19) {
                                                            [r22 setAtlasIndex:r2];
                                                    }
                                                    r23 = r23 + 0x8;
                                            } while (r23 < r24);
                                    }
                            }
                    }
            }
    }
    return;
}

-(struct CGPoint)positionForOrthoAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(struct CGPoint)positionForIsoAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_layerSize));
    return r0;
}

-(struct CGPoint)positionForHexAt:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvtzs     w8, d0 };
    if (r8 < 0x0) {
            asm { cinc       w9, w8, lt };
    }
    r9 = r8 - (r9 & 0xfffffffe);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mapTileSize));
    d2 = 0x0;
    if (r9 == 0x1) {
            d2 = *(0x8 + r0 + r8);
            d2 = d2 * 0xbfe0000000000000;
            asm { fcvt       s2, d2 };
            asm { fcvt       d2, s2 };
    }
    return r0;
}

-(long long)vertexZForPos:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_useAutomaticVertexZ == 0x0) goto loc_1002e1e5c;

loc_1002e1e1c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_layerOrientation));
    r8 = *(r0 + r8);
    if (r8 == 0x0) goto loc_1002e1e6c;

loc_1002e1e2c:
    if (r8 != 0x2) goto loc_1002e1e8c;

loc_1002e1e34:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_layerSize));
    d2 = *(int128_t *)(r0 + r8);
    d2 = d2 + *(int128_t *)(0x8 + r0 + r8);
    asm { fcvtzu     x8, d2 };
    asm { ucvtf      d2, x8 };
    d0 = d2 - d0 + d1;
    goto loc_1002e1e80;

loc_1002e1e80:
    asm { fcvtzs     x0, d0 };
    return r0;

loc_1002e1e8c:
    r0 = 0x0;
    return r0;

loc_1002e1e6c:
    d0 = *((int64_t *)&r0->_layerSize + 0x8);
    d0 = d0 - d1;
    goto loc_1002e1e80;

loc_1002e1e5c:
    r0 = r0->_vertexZvalue;
    return r0;
}

-(struct CGSize)layerSize {
    r0 = self;
    return r0;
}

-(void)setLayerSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_layerSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)layerName {
    r0 = self->_layerName;
    return r0;
}

-(void)setLayerName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(unsigned int *)tiles {
    r0 = self->_tiles;
    return r0;
}

-(void)setTiles:(unsigned int *)arg2 {
    self->_tiles = arg2;
    return;
}

-(void *)tileset {
    r0 = self->_tileset;
    return r0;
}

-(void)setTileset:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(unsigned long long)layerOrientation {
    r0 = self->_layerOrientation;
    return r0;
}

-(void)setLayerOrientation:(unsigned long long)arg2 {
    self->_layerOrientation = arg2;
    return;
}

-(struct CGSize)mapTileSize {
    r0 = self;
    return r0;
}

-(void)setMapTileSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mapTileSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)properties {
    r0 = self->_properties;
    return r0;
}

-(void)setProperties:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end