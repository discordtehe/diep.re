@implementation CCSpriteBatchNode

+(void *)batchNodeWithTexture:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 capacity:0x1d];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)batchNodeWithTexture:(void *)arg2 capacity:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 capacity:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)batchNodeWithFile:(void *)arg2 capacity:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 capacity:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)batchNodeWithFile:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 capacity:0x1d];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithTexture:[[[CCTexture2D alloc] init] autorelease] capacity:0x0];
    return r0;
}

-(void *)initWithFile:(void *)arg2 capacity:(unsigned long long)arg3 {
    r0 = [self initWithTexture:[[CCTextureCache sharedTextureCache] addImage:arg2] capacity:arg3];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 capacity:(unsigned long long)arg3 {
    r31 = r31 - 0x70;
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_blendFunc = *0x100ba3650;
            r19->_textureAtlas = [[CCTextureAtlas alloc] initWithTexture:r21 capacity:r20];
            [r19 updateBlendFunc];
            r19->_children = [[CCArray alloc] initWithCapacity:r20];
            r19->_descendants = [[CCArray alloc] initWithCapacity:r20];
            r19->_emissionShaderName = @"ShaderPositionTextureColor_uEmission";
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    r21 = (int64_t *)&r19->_mcRenderJob;
                    q0 = *(int128_t *)0x1011e2ea0;
                    q1 = *(int128_t *)0x1011e2eb0;
                    q2 = *(int128_t *)0x1011e2ec0;
                    q3 = *(int128_t *)0x1011e2ed0;
                    *(int128_t *)(r21 + 0x20) = q2;
                    *(int128_t *)(r21 + 0x30) = q3;
                    *(int128_t *)r21 = q0;
                    *(int128_t *)(r21 + 0x10) = q1;
                    sub_100292530();
                    sub_1002c6444(&var_58, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r20, &var_58);
                    *(r21 + 0x140) = r0;
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_58);
                    }
                    *(r21 + 0x18) = *0x100ba3648;
            }
            else {
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [self->_textureAtlas release];
    [self->_descendants release];
    [[&var_20 super] dealloc];
    return;
}

-(void)visit {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_visible != 0x0) {
            r19 = r0;
            sub_1003575dc();
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_grid));
            r0 = *(r19 + r20);
            if (r0 != 0x0 && [r0 active] != 0x0) {
                    [*(r19 + r20) beforeDraw];
                    [r19 transformAncestors];
            }
            [r19 sortAllChildren];
            [r19 transform];
            r1 = @selector(draw);
            objc_msgSend(r19, r1);
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    r1 = @selector(active);
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r0 = *(r19 + r20);
                            r1 = @selector(afterDraw:);
                            r0 = objc_msgSend(r0, r1);
                    }
            }
            loc_100357620(r0, r1);
            r19->_orderOfArrival = 0x0;
    }
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    [[&var_20 super] addChild:r2 z:arg3 tag:arg4];
    [self appendChild:arg2];
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [r0 removeSpriteFromAtlas:r2];
            [[&var_40 super] removeChild:r2 cleanup:r3];
    }
    return;
}

-(void)reorderChild:(void *)arg2 z:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if ([arg2 zOrder] != r19) {
            [[&var_30 super] reorderChild:r20 z:r19];
    }
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_descendants));
    [*(self + r21) makeObjectsPerformSelector:@selector(setBatchNode:) withObject:0x0];
    [[&var_30 super] removeAllChildrenWithCleanup:arg2];
    [*(self + r21) removeAllObjects];
    [self->_textureAtlas removeAllQuads];
    return;
}

-(void)removeChildAtIndex:(unsigned long long)arg2 cleanup:(bool)arg3 {
    [self removeChild:[self->_children objectAtIndex:arg2] cleanup:arg3];
    return;
}

-(void)swap:(long long)arg2 withNewIndex:(long long)arg3 {
    r19 = arg3;
    r20 = arg2;
    r22 = *(*(self->_descendants + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
    [self->_textureAtlas quads];
    r23 = *(r22 + r20 * 0x8);
    asm { madd       x25, x20, x24, x0 };
    var_A0 = *(int128_t *)r25;
    stack[-160] = *(int128_t *)(r25 + 0x10);
    q0 = *(int128_t *)(r25 + 0x20);
    q1 = *(int128_t *)(r25 + 0x30);
    var_60 = *(int128_t *)(r25 + 0x40);
    stack[-96] = *(int128_t *)(r25 + 0x50);
    var_80 = q0;
    stack[-128] = q1;
    [*(r22 + r19 * 0x8) setAtlasIndex:r20];
    r8 = *(r22 + r19 * 0x8);
    *(r22 + r20 * 0x8) = r8;
    asm { madd       x8, x19, x24, x21 };
    q0 = *(int128_t *)r8;
    q1 = *(int128_t *)(r8 + 0x10);
    *(int128_t *)r25 = q0;
    *(int128_t *)(r25 + 0x10) = q1;
    q0 = *(int128_t *)(r8 + 0x20);
    q1 = *(int128_t *)(r8 + 0x30);
    q2 = *(int128_t *)(r8 + 0x40);
    q3 = *(int128_t *)(r8 + 0x50);
    *(int128_t *)(r25 + 0x40) = q2;
    *(int128_t *)(r25 + 0x50) = q3;
    *(int128_t *)(r25 + 0x20) = q0;
    *(int128_t *)(r25 + 0x30) = q1;
    *(r22 + r19 * 0x8) = r23;
    *(int128_t *)r8 = var_A0;
    *(int128_t *)(r8 + 0x10) = stack[-160];
    *(int128_t *)(r8 + 0x40) = var_60;
    *(int128_t *)(r8 + 0x50) = stack[-96];
    *(int128_t *)(r8 + 0x20) = var_80;
    *(int128_t *)(r8 + 0x30) = stack[-128];
    return;
}

-(void)reorderBatch:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isReorderChildDirty = arg2;
    return;
}

-(void)sortAllChildren {
    r0 = self;
    r31 = r31 - 0x90;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_isReorderChildDirty));
    if (*(int8_t *)(r0 + r23) == 0x0) goto .l1;

loc_1002c68f4:
    r22 = r0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r0 = *(r0 + r20);
    r8 = r0->data;
    r9 = *r8;
    if (r9 < 0x2) goto loc_1002c6a24;

loc_1002c6924:
    var_80 = r20;
    var_78 = r23;
    r10 = *(r8 + 0x10);
    r26 = 0x1;
    r27 = 0x2;
    r19 = r10;
    var_60 = r9;
    var_70 = r22;
    var_68 = r10;
    goto loc_1002c6948;

loc_1002c6948:
    r21 = *(r10 + r26 * 0x8);
    r28 = r19;
    r24 = r27;
    r25 = r26;
    goto loc_1002c6960;

loc_1002c6960:
    r20 = @selector(zOrder);
    if (objc_msgSend(r21, r20) < objc_msgSend(*r28, r20)) goto loc_1002c69cc;

loc_1002c6984:
    r20 = @selector(zOrder);
    if (objc_msgSend(r21, r20) != objc_msgSend(*r28, r20)) goto loc_1002c69f0;

loc_1002c69a8:
    if ([r21 orderOfArrival] >= [*r28 orderOfArrival]) goto loc_1002c69f4;

loc_1002c69cc:
    r25 = r25 - 0x1;
    *(r28 + 0x8) = *r28;
    r24 = r24 - 0x1;
    r28 = r28 - 0x8;
    if (r24 > 0x1) goto loc_1002c6960;

loc_1002c69e8:
    r25 = 0x0;
    goto loc_1002c69f4;

loc_1002c69f4:
    r10 = var_68;
    *(r10 + r25 * 0x8) = r21;
    r26 = r26 + 0x1;
    r27 = r27 + 0x1;
    r19 = r19 + 0x8;
    if (r26 != var_60) goto loc_1002c6948;

loc_1002c6a10:
    r23 = var_78;
    r22 = var_70;
    r20 = var_80;
    r0 = *(r22 + r20);
    goto loc_1002c6a24;

loc_1002c6a24:
    if ([r0 count] != 0x0) {
            [*(r22 + r20) makeObjectsPerformSelector:@selector(sortAllChildren)];
            r8 = *(r22 + r20);
            if (r8 != 0x0) {
                    r8 = r8->data;
                    r9 = *r8;
                    if (r9 != 0x0) {
                            r19 = *(r8 + 0x10);
                            r21 = r19 + r9 * 0x8 - 0x8;
                            if (r19 <= r21) {
                                    do {
                                            r19 = r19 + 0x8;
                                            [r22 updateAtlasIndex:r2 currentIndex:r3];
                                    } while (r19 < r21);
                            }
                    }
            }
    }
    *(int8_t *)(r22 + r23) = 0x0;
    return;

.l1:
    return;

loc_1002c69f0:
    r25 = r24 - 0x1;
    goto loc_1002c69f4;
}

-(void)updateAtlasIndex:(void *)arg2 currentIndex:(long long *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    r0 = [arg2 children];
    r23 = r0;
    if ([r0 count] != 0x0) {
            if (([**(r23->data + 0x10) zOrder] & 0xffffffff80000000) == 0x0) {
                    r24 = [r21 atlasIndex];
                    [r21 setAtlasIndex:*r19];
                    [r21 setOrderOfArrival:0x0];
                    if (r24 != *r19) {
                            [r20 swap:r24 withNewIndex:r3];
                            r24 = *r19;
                    }
                    r25 = 0x0;
                    *r19 = r24 + 0x1;
            }
            else {
                    r25 = 0x1;
            }
            r8 = r23->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r23 = *(r8 + 0x10);
                    r24 = r23 + r9 * 0x8 - 0x8;
                    if (r23 <= r24) {
                            do {
                                    r28 = *r23;
                                    if ((r25 & 0x1) != 0x0) {
                                            if (([r28 zOrder] & 0xffffffff80000000) == 0x0) {
                                                    r26 = [r21 atlasIndex];
                                                    [r21 setAtlasIndex:*r19];
                                                    [r21 setOrderOfArrival:0x0];
                                                    r3 = *r19;
                                                    if (r26 != r3) {
                                                            [r20 swap:r26 withNewIndex:r3];
                                                            r26 = *r19;
                                                    }
                                                    r25 = 0x0;
                                                    *r19 = r26 + 0x1;
                                            }
                                            else {
                                                    r25 = 0x1;
                                            }
                                    }
                                    else {
                                            r25 = 0x0;
                                    }
                                    r3 = r19;
                                    [r20 updateAtlasIndex:r2 currentIndex:r3];
                                    r23 = r23 + 0x8;
                            } while (r23 < r24);
                    }
            }
            if (r25 != 0x0) {
                    r22 = [r21 atlasIndex];
                    [r21 setAtlasIndex:*r19];
                    [r21 setOrderOfArrival:0x0];
                    if (r22 != *r19) {
                            [r20 swap:r22 withNewIndex:r3];
                            r22 = *r19;
                    }
                    *r19 = r22 + 0x1;
            }
    }
    else {
            r22 = [r21 atlasIndex];
            [r21 setAtlasIndex:*r19];
            [r21 setOrderOfArrival:0x0];
            if (r22 != *r19) {
                    [r20 swap:r22 withNewIndex:r3];
                    r22 = *r19;
            }
            *r19 = r22 + 0x1;
    }
    return;
}

-(void)increaseAtlasCapacity {
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    r8 = ([*(self + r20) capacity] << 0x2) + 0x4;
    asm { umulh      x8, x8, x9 };
    [*(r19 + r20) resizeCapacity:r8 >> 0x1];
    return;
}

-(unsigned long long)highestAtlasIndexInChild:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [arg2 children];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r19 highestAtlasIndexInChild:[r21 lastObject]];
    }
    else {
            r0 = [r20 atlasIndex];
    }
    return r0;
}

-(unsigned long long)lowestAtlasIndexInChild:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [arg2 children];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r19 lowestAtlasIndexInChild:[r21 objectAtIndex:0x0]];
    }
    else {
            r0 = [r20 atlasIndex];
    }
    return r0;
}

-(unsigned long long)rebuildIndexInOrder:(void *)arg2 atlasIndex:(unsigned long long)arg3 {
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
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    if ([arg2 children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r27 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r28 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r27 <= r28) {
                    do {
                            r25 = *r27;
                            if (([r25 zOrder] & 0xffffffff80000000) != 0x0) {
                                    r19 = [r20 rebuildIndexInOrder:r2 atlasIndex:r3];
                            }
                            r27 = r27 + 0x8;
                    } while (r27 < r28);
            }
    }
    if (([r21 isEqual:r2] & 0x1) == 0x0) {
            [r21 setAtlasIndex:r19];
            r19 = r19 + 0x1;
    }
    if ([r21 children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r23 = *r24;
                            if (([r23 zOrder] & 0xffffffff80000000) == 0x0) {
                                    r19 = [r20 rebuildIndexInOrder:r2 atlasIndex:r3];
                            }
                            r24 = r24 + 0x8;
                    } while (r24 < r25);
            }
    }
    r0 = r19;
    return r0;
}

-(unsigned long long)atlasIndexForChild:(void *)arg2 atZ:(long long)arg3 {
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
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    r0 = [arg2 parent];
    r0 = [r0 children];
    r23 = r0;
    r24 = [r0 indexOfObject:r21];
    r25 = [r21 parent];
    if (r24 != 0x0) {
            r23 = [r23 objectAtIndex:r2];
    }
    else {
            r23 = 0x0;
    }
    if (r25 == r20) goto loc_1002c772c;

loc_1002c76dc:
    if (r24 == 0x0) goto loc_1002c774c;

loc_1002c76e0:
    if (([r23 zOrder] & r19) >= 0x0 && (([r23 zOrder] | r19) & 0xffffffff80000000) != 0x0) {
            r0 = [r21 parent];
            r0 = [r0 atlasIndex];
    }
    else {
            r0 = [r20 highestAtlasIndexInChild:r23];
    }
    goto loc_1002c7744;

loc_1002c7744:
    r0 = r0 + 0x1;
    return r0;

loc_1002c774c:
    r0 = [r21 parent];
    r0 = [r0 atlasIndex];
    r0 = r0 + (r19 ^ 0xffffffff) / 0xffffffff80000000;
    return r0;

loc_1002c772c:
    if (r24 == 0x0) goto loc_1002c7770;

loc_1002c7730:
    r0 = [r20 highestAtlasIndexInChild:r23];
    goto loc_1002c7744;

loc_1002c7770:
    r0 = 0x0;
    return r0;
}

-(void)insertChild:(void *)arg2 inAtlasAtIndex:(unsigned long long)arg3 {
    r31 = r31 - 0xb0;
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
    r22 = arg3;
    r20 = arg2;
    r19 = self;
    [arg2 setBatchNode:r19];
    [r20 setAtlasIndex:r22];
    [r20 setDirty:0x1];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    if ([*(r19 + r24) totalQuads] == [*(r19 + r24) capacity]) {
            [r19 increaseAtlasCapacity];
    }
    if (r20 != 0x0) {
            [r20 quad];
    }
    [*(r19 + r24) insertQuad:&var_A0 atIndex:r22];
    r23 = *(r19->_descendants + sign_extend_64(*(int32_t *)ivar_offset(data)));
    sub_10033a5f8(r23, r20, r22);
    r26 = r22 + 0x1;
    if (r26 < *r23) {
            do {
                    r24 = *(*(r23 + 0x10) + r26 * 0x8);
                    [r24 setAtlasIndex:[r24 atlasIndex] + 0x1];
                    r26 = r26 + 0x1;
            } while (r26 < *r23);
    }
    if ([r20 children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r24 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r23 = *r24;
                            r24 = r24 + 0x8;
                            [r23 zOrder];
                            [r19 atlasIndexForChild:r2 atZ:r3];
                            objc_msgSend(r19, r22);
                    } while (r24 < r25);
            }
    }
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
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    if ([*(self + r25) totalQuads] == 0x0) goto .l14;

loc_1002c6e8c:
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] == 0x0) goto loc_1002c6fd4;

loc_1002c6ec8:
    r1 = @selector(makeObjectsPerformSelector:);
    objc_msgSend(r19->_children, r1);
    r0 = sub_1003812ec();
    r21 = (int64_t *)&r19->_mcRenderJob;
    *(int32_t *)(r21 + 0x18) = r0;
    *(int32_t *)(r21 + 0x1c) = sub_1003812ec();
    if (*(int8_t *)(int64_t *)&r19->_emissionEnabled == 0x0) goto loc_1002c7258;

loc_1002c6f18:
    r13 = (int64_t *)&r19->_mcEmissionColor;
    r3 = (int64_t *)&r19->_emissionColor;
    *(int128_t *)r13 = *(int128_t *)r3;
    r22 = r19->_mcEmissionUniform;
    r23 = r21 + 0x150;
    r27 = ((((r22 << 0x3) + 0x8 ^ r22 / 0x1) * 0x9ddfea08eb382d69 ^ r22 / 0x1 ^ ((r22 << 0x3) + 0x8 ^ r22 / 0x1) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69 ^ (((r22 << 0x3) + 0x8 ^ r22 / 0x1) * 0x9ddfea08eb382d69 ^ r22 / 0x1 ^ ((r22 << 0x3) + 0x8 ^ r22 / 0x1) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69;
    r26 = *(r21 + 0x158);
    if (r26 == 0x0) goto loc_1002c709c;

loc_1002c6f84:
    asm { cnt        v0.8b, v0.8b };
    asm { uaddlv     h0, v0.8b };
    r8 = s0;
    if (r8 >= 0x1) {
            r28 = r27;
            if (r27 >= r26) {
                    r9 = 0x9ddfea08eb382d69;
                    asm { udiv       x9, x27, x26 };
                    r28 = r27 - r9 * r26;
            }
    }
    else {
            r28 = r27 & r26 - 0x1;
    }
    r9 = *r23;
    r9 = *(r9 + r28 * 0x8);
    if (r9 == 0x0) goto loc_1002c710c;

loc_1002c70bc:
    r10 = r26 - 0x1;
    goto loc_1002c70c0;

loc_1002c70c0:
    r9 = *r9;
    if (r9 == 0x0) goto loc_1002c710c;

loc_1002c70c8:
    r11 = *(r9 + 0x8);
    if (r11 == r27) goto loc_1002c70fc;

loc_1002c70d4:
    if (r8 >= 0x1) {
            if (r11 >= r26) {
                    asm { udiv       x12, x11, x26 };
                    r11 = r11 - r12 * r26;
            }
    }
    else {
            r11 = r11 & r10;
    }
    if (r11 != r28) goto loc_1002c710c;

loc_1002c70fc:
    if (*(r9 + 0x10) != r22) goto loc_1002c70c0;

loc_1002c722c:
    [r19->_shaderProgram setUniformLocation:r2 with4fv:r3 count:r4];
    goto loc_1002c7258;

loc_1002c7258:
    r19 = *(r19 + r25);
    [r19 drawNumberOfQuads:[r19 totalQuads] fromIndex:0x0 renderJob:r21];
    return;

.l14:
    return;

loc_1002c710c:
    var_60 = r21;
    var_58 = r3;
    r21 = r13;
    goto loc_1002c7114;

loc_1002c7114:
    r0 = operator new();
    r24 = r0;
    *(int128_t *)(r0 + 0x10) = r22;
    *(int128_t *)(r0 + 0x18) = r21;
    *(int128_t *)r0 = 0x0;
    *(int128_t *)(r0 + 0x8) = r27;
    r8 = *(r23 + 0x18);
    r8 = r8 + 0x1;
    asm { ucvtf      s0, x8 };
    s1 = *(int32_t *)(r23 + 0x20);
    if (r26 != 0x0) {
            asm { ucvtf      s2, x26 };
            if (s1 * s2 < s0) {
                    if (r26 < 0x3) {
                            if (CPU_FLAGS & B) {
                                    r8 = 0x1;
                            }
                    }
                    r9 = r26 - 0x1;
                    if ((r26 & r9) != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r9 = 0x1;
                            }
                    }
                    r8 = r8 | r9;
                    asm { bfi        x8, x26, #0x1, #0x3f };
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
                    sub_10029941c(r23, r1);
                    r26 = *(r23 + 0x8);
                    r8 = r26 - 0x1;
                    if ((r26 & r8) != 0x0) {
                            if (r27 < r26) {
                                    r28 = r27;
                            }
                            else {
                                    asm { udiv       x8, x27, x26 };
                                    r28 = r27 - r8 * r26;
                            }
                    }
                    else {
                            r28 = r8 & r27;
                    }
            }
    }
    else {
            if (r26 < 0x3) {
                    if (CPU_FLAGS & B) {
                            r8 = 0x1;
                    }
            }
            r9 = r26 - 0x1;
            if ((r26 & r9) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            r8 = r8 | r9;
            asm { bfi        x8, x26, #0x1, #0x3f };
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
            sub_10029941c(r23, r1);
            r26 = *(r23 + 0x8);
            r8 = r26 - 0x1;
            if ((r26 & r8) != 0x0) {
                    if (r27 < r26) {
                            r28 = r27;
                    }
                    else {
                            asm { udiv       x8, x27, x26 };
                            r28 = r27 - r8 * r26;
                    }
            }
            else {
                    r28 = r8 & r27;
            }
    }
    r9 = *r23;
    r8 = *(r9 + r28 * 0x8);
    if (r8 == 0x0) goto loc_1002c71cc;

loc_1002c71c0:
    *r24 = *r8;
    goto loc_1002c7218;

loc_1002c7218:
    *r8 = r24;
    goto loc_1002c721c;

loc_1002c721c:
    *(r23 + 0x18) = *(r23 + 0x18) + 0x1;
    r21 = var_60;
    goto loc_1002c722c;

loc_1002c71cc:
    *r24 = *(r23 + 0x10);
    *(r23 + 0x10) = r24;
    *(r9 + r28 * 0x8) = r23 + 0x10;
    r8 = *r24;
    if (r8 == 0x0) goto loc_1002c721c;

loc_1002c71e8:
    r8 = *(r8 + 0x8);
    r9 = r26 - 0x1;
    if ((r26 & r9) != 0x0) {
            if (r8 >= r26) {
                    asm { udiv       x9, x8, x26 };
                    r8 = r8 - r9 * r26;
            }
    }
    else {
            r8 = r8 & r9;
    }
    r8 = *r23 + r8 * 0x8;
    goto loc_1002c7218;

loc_1002c709c:
    var_60 = r21;
    var_58 = r3;
    r21 = r13;
    goto loc_1002c7114;

loc_1002c6fd4:
    sub_10031a6c4();
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r19 + r20) use];
    [*(r19 + r20) setUniformsForBuiltins];
    [r19->_children makeObjectsPerformSelector:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(r19 + r8), *(int128_t *)(0x4 + r19 + r8));
    if (*(int8_t *)(int64_t *)&r19->_emissionEnabled != 0x0) {
            [*(r19 + r20) setUniformLocation:r2 with4fv:r3 count:r4];
    }
    [*(r19 + r25) drawQuads];
    return;
}

-(void)appendChild:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_isReorderChildDirty = 0x1;
    [arg2 setBatchNode:r19];
    [r20 setDirty:0x1];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    if ([*(r19 + r23) totalQuads] == [*(r19 + r23) capacity]) {
            [r19 increaseAtlasCapacity];
    }
    sub_10033a504(*(r19->_descendants + sign_extend_64(*(int32_t *)ivar_offset(data))), r20);
    r21 = *r21 - 0x1;
    [r20 setAtlasIndex:r21];
    if (r20 != 0x0) {
            [r20 quad];
    }
    [*(r19 + r23) insertQuad:&var_90 atIndex:r21];
    if ([r20 children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r23 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r21 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r21) {
                    do {
                            r23 = r23 + 0x8;
                            [r19 appendChild:r2];
                    } while (r23 < r21);
            }
    }
    return;
}

-(void)removeSpriteFromAtlas:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    r22 = self->_textureAtlas;
    r2 = [arg2 atlasIndex];
    [r22 removeQuadAtIndex:r2];
    [r20 setBatchNode:r2];
    r22 = *(r19->_descendants + sign_extend_64(*(int32_t *)ivar_offset(data)));
    r0 = loc_10033a44c(r22, r20, 0x0);
    if (r0 != 0x7fffffffffffffff) {
            r23 = r0;
            sub_10033a68c(r22, r23);
            r27 = *r22;
            if (r23 < r27) {
                    do {
                            r25 = *(*(r22 + 0x10) + r23 * 0x8);
                            [r25 atlasIndex] - 0x1;
                            [r25 setAtlasIndex:r2];
                            r23 = r23 + 0x1;
                    } while (r27 != r23);
            }
    }
    if ([r20 children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r22 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r21 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r22 <= r21) {
                    do {
                            r22 = r22 + 0x8;
                            [r19 removeSpriteFromAtlas:r2];
                    } while (r22 < r21);
            }
    }
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
    return;
}

-(void *)textureAtlas {
    r0 = self->_textureAtlas;
    return r0;
}

-(void)setTextureAtlas:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)texture {
    r0 = self->_textureAtlas;
    r0 = [r0 texture];
    return r0;
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

-(void *)descendants {
    r0 = self->_descendants;
    return r0;
}

-(void *)emissionShaderName {
    r0 = self->_emissionShaderName;
    return r0;
}

-(void)setEmissionShaderName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *).cxx_construct {
    r0 = self;
    return r0;
}

-(void)insertQuadFromSprite:(void *)arg2 quadIndex:(unsigned long long)arg3 {
    r31 = r31 - 0xb0;
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
    r21 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    do {
            if ([*(r21 + r26) capacity] < r20) goto ;
            [r21 increaseAtlasCapacity];
    } while (true);
    [r19 setBatchNode:r21];
    [r19 setAtlasIndex:r20];
    if (r19 != 0x0) {
            [r19 quad];
    }
    [*(r21 + r26) insertQuad:&var_A0 atIndex:r20];
    [r19 setDirty:0x1];
    [r19 updateTransform];
    return;
}

-(void)updateQuadFromSprite:(void *)arg2 quadIndex:(unsigned long long)arg3 {
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
    r19 = arg2;
    r21 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    do {
            if ([*(r21 + r26) capacity] < r20) goto ;
            [r21 increaseAtlasCapacity];
    } while (true);
    [r19 setBatchNode:r21];
    [r19 setAtlasIndex:r20];
    [r19 setDirty:0x1];
    [r19 updateTransform];
    return;
}

-(void)updateEmission {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r9 = (int64_t *)&r0->_displayedEmission;
    r8 = *(int8_t *)r9;
    asm { ucvtf      s0, w8 };
    asm { fdiv       s0, s0, s1 };
    r12 = (int64_t *)&r0->_emissionColor;
    *(int32_t *)r12 = s0;
    r11 = *(int8_t *)(r9 + 0x1);
    asm { ucvtf      s0, w11 };
    asm { fdiv       s0, s0, s1 };
    *(int32_t *)(r12 + 0x4) = s0;
    r10 = *(int8_t *)(r9 + 0x2);
    asm { ucvtf      s0, w10 };
    asm { fdiv       s0, s0, s1 };
    *(int32_t *)(r12 + 0x8) = s0;
    *(int32_t *)(r12 + 0xc) = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_emissionEnabled));
    if (*(int8_t *)(r0 + r9) != 0x0) {
            if (r8 != 0x0 && r11 != 0x0) {
                    if (r10 == 0x0) {
                            *(int8_t *)(r19 + r9) = 0x0;
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_emissionOldShaderProgram));
                            [r19 setShaderProgram:*(r19 + r20)];
                            [*(r19 + r20) release];
                    }
            }
            else {
                    *(int8_t *)(r19 + r9) = 0x0;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_emissionOldShaderProgram));
                    [r19 setShaderProgram:*(r19 + r20)];
                    [*(r19 + r20) release];
            }
    }
    else {
            if ((r11 | r8 | r10) != 0x0) {
                    *(int8_t *)(r19 + r9) = 0x1;
                    r0 = [r19 shaderProgram];
                    r19->_emissionOldShaderProgram = r0;
                    [r0 retain];
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:r19->_emissionShaderName]];
                    *(int32_t *)(int64_t *)&r19->_emissionUniform = glGetUniformLocation([r19->_shaderProgram program], "u_emission");
            }
    }
    return;
}

-(void)updateDisplayedEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedEmission:r2 & 0xffffffff];
    [self updateEmission];
    return;
}

-(void)setEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setEmission:r2 & 0xffffffff];
    [self updateEmission];
    return;
}

-(void *)addSpriteWithoutQuad:(void *)arg2 z:(unsigned long long)arg3 tag:(long long)arg4 {
    r31 = r31 - 0x160;
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
    r22 = arg2;
    r19 = self;
    [arg2 setAtlasIndex:arg3];
    var_110 = q0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_descendants));
    r23 = *(r19 + r26);
    r3 = &stack[-240];
    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1002c8214;

loc_1002c8170:
    r25 = r0;
    var_148 = r22;
    var_140 = r26;
    var_138 = r20;
    r8 = 0x0;
    r28 = *var_110;
    r9 = &@selector(getVSZTexture:);
    goto loc_1002c818c;

loc_1002c818c:
    r20 = 0x0;
    r27 = r8;
    r22 = r9;
    r26 = *(r9 + 0x880);
    goto loc_1002c819c;

loc_1002c819c:
    if (*var_110 != r28) {
            objc_enumerationMutation(r23);
    }
    if (objc_msgSend(*(var_118 + r20 * 0x8), r26) >= r21) goto loc_1002c8200;

loc_1002c81cc:
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_1002c819c;

loc_1002c81d8:
    r3 = &stack[-240];
    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r25 = r0;
    r8 = r27 + r20;
    r9 = r22;
    if (r0 != 0x0) goto loc_1002c818c;

loc_1002c8200:
    r26 = var_140;
    r20 = var_138;
    r22 = var_148;
    goto loc_1002c8214;

loc_1002c8214:
    var_60 = **___stack_chk_guard;
    r0 = *(r19 + r26);
    asm { sxtw       x3, w8 };
    [r0 insertObject:r22 atIndex:r3];
    [[&var_130 super] addChild:r22 z:r21 tag:r20];
    [r19 reorderBatch:0x0];
    if (**___stack_chk_guard == var_60) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end