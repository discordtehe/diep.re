@implementation CCParticleBatchNode

+(void *)batchNodeWithTexture:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 capacity:0x1f4];
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
    r0 = [r0 initWithFile:arg2 capacity:0x1f4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithFile:(void *)arg2 capacity:(unsigned long long)arg3 {
    r0 = [self initWithTexture:[[CCTextureCache sharedTextureCache] addImage:arg2] capacity:arg3];
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
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_textureAtlas = [[CCTextureAtlas alloc] initWithTexture:r21 capacity:r20];
            r19->_children = [[CCArray alloc] initWithCapacity:r20];
            r19->_blendFunc = *0x100ba3650;
            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
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
    }
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r20 = arg2;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    if ([*(self + r24) count] == 0x0) {
            r19->_blendFunc = [r20 blendFunc];
    }
    r0 = [r19 addChildHelper:r20 z:r22 tag:r21];
    if (r0 != 0x0) {
            r8 = *(r19 + r24);
            r22 = @selector(objectAtIndex:);
            r3 = [objc_msgSend(*(r19 + r24), r22) totalParticles] + [objc_msgSend(r8, r22) atlasIndex];
    }
    else {
            r3 = 0x0;
    }
    [r19 insertChild:r20 inAtlasAtIndex:r3];
    [r20 setBatchNode:r19];
    return;
}

-(unsigned long long)addChildHelper:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    r24 = (int64_t *)&self->_children;
    if (*r24 == 0x0) {
            *r24 = [[CCArray alloc] initWithCapacity:0x4];
    }
    r23 = [r20 searchNewPositionInChildrenForZ:r21];
    [*r24 insertObject:r19 atIndex:r23];
    [r19 setTag:r22];
    [r19 _setZOrder:r21];
    [r19 setParent:r20];
    if (*(int8_t *)(int64_t *)&r20->_isRunning != 0x0) {
            [r19 onEnter];
            [r19 onEnterTransitionDidFinish];
    }
    r0 = r23;
    return r0;
}

-(void)reorderChild:(void *)arg2 z:(long long)arg3 {
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if ([arg2 zOrder] == r19) goto .l1;

loc_1002db7b8:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    if ([*(r21 + r27) count] < 0x2) goto loc_1002db92c;

loc_1002db7e0:
    r0 = [r21 getCurrentIndex:&var_60 newIndex:&var_58 forChild:r20 z:r19];
    if (var_60 == var_58) goto loc_1002db92c;

loc_1002db80c:
    r22 = @selector(count);
    [r20 retain];
    [*(r21 + r27) removeObjectAtIndex:var_60];
    [*(r21 + r27) insertObject:r20 atIndex:var_58];
    [r20 release];
    r23 = [r20 atlasIndex];
    [r21 updateAllAtlasIndexes];
    if (objc_msgSend(*(r21 + r27), r22) == 0x0) goto loc_1002db8cc;

loc_1002db890:
    r25 = 0x0;
    goto loc_1002db89c;

loc_1002db89c:
    if ([*(r21 + r27) objectAtIndex:r2] == r20) goto loc_1002db8d4;

loc_1002db8b4:
    r25 = r25 + 0x1;
    if (r25 < [*(r21 + r27) count]) goto loc_1002db89c;

loc_1002db8cc:
    r22 = 0x0;
    goto loc_1002db8e4;

loc_1002db8e4:
    [r21->_textureAtlas moveQuadsFromIndex:r23 amount:[r20 totalParticles] atIndex:r22];
    [r20 updateWithNoTime];
    goto loc_1002db92c;

loc_1002db92c:
    [r20 _setZOrder:r19];
    return;

.l1:
    return;

loc_1002db8d4:
    r22 = [r20 atlasIndex];
    goto loc_1002db8e4;
}

-(unsigned long long)searchNewPositionInChildrenForZ:(long long)arg2 {
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
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r0 = *(self + r25);
    r0 = [r0 count];
    if (r0 == 0x0) goto loc_1002dbb0c;

loc_1002dbac0:
    r22 = r0;
    r21 = 0x0;
    goto loc_1002dbad8;

loc_1002dbad8:
    if ([[*(r20 + r25) objectAtIndex:r2] zOrder] > r19) goto loc_1002dbb10;

loc_1002dbaf8:
    r21 = r21 + 0x1;
    if (r22 != r21) goto loc_1002dbad8;

loc_1002dbb04:
    r21 = r22;
    goto loc_1002dbb10;

loc_1002dbb10:
    r0 = r21;
    return r0;

loc_1002dbb0c:
    r21 = 0x0;
    goto loc_1002dbb10;
}

-(void)getCurrentIndex:(unsigned long long *)arg2 newIndex:(unsigned long long *)arg3 forChild:(void *)arg4 z:(long long)arg5 {
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
    var_60 = arg3;
    var_58 = arg5;
    r21 = arg4;
    var_70 = arg2;
    r24 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r0 = *(self + r23);
    r0 = [r0 count];
    r22 = r0;
    if (r0 == 0x0) goto loc_1002dba44;

loc_1002db9b4:
    r20 = 0x0;
    r25 = 0x0;
    r19 = 0x0;
    var_68 = 0x0;
    goto loc_1002db9d4;

loc_1002db9d4:
    r27 = @selector(zOrder);
    r26 = @selector(objectAtIndex:);
    r0 = *(r24 + r23);
    r0 = objc_msgSend(r0, r26);
    r28 = r0;
    r0 = objc_msgSend(r0, r27);
    if ((r19 & 0x1) != 0x0 || r0 <= var_58) goto loc_1002dba10;

loc_1002dba00:
    *var_60 = r25;
    if ((r20 & 0x1) != 0x0) goto loc_1002dba50;

loc_1002dba0c:
    r19 = 0x1;
    goto loc_1002dba10;

loc_1002dba10:
    if (r28 != r21) goto loc_1002dba30;

loc_1002dba18:
    *var_70 = r25;
    if ((r19 & 0x1) != 0x0) goto loc_1002dba50;

loc_1002dba24:
    r20 = 0x1;
    var_68 = 0xffffffffffffffff;
    goto loc_1002dba30;

loc_1002dba30:
    r25 = r25 + 0x1;
    if (r22 != r25) goto loc_1002db9d4;

loc_1002dba3c:
    if ((r19 & 0x1) == 0x0) {
            *var_60 = r22;
    }
    goto loc_1002dba50;

loc_1002dba50:
    *var_60 = *var_60 + var_68;
    return;

loc_1002dba44:
    var_68 = 0x0;
    *var_60 = r22;
    goto loc_1002dba50;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [[&var_50 super] removeChild:r2 cleanup:r3];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
            [*(r0 + r24) removeQuadsAtIndex:[r2 atlasIndex] amount:[r2 totalParticles]];
            r21 = *(r0 + r24);
            [r21 fillWithEmptyQuadsFromIndex:[r21 totalQuads] amount:[r2 totalParticles]];
            [r2 setBatchNode:0x0];
            [r0 updateAllAtlasIndexes];
    }
    return;
}

-(void)removeChildAtIndex:(unsigned long long)arg2 cleanup:(bool)arg3 {
    [self removeChild:[self->_children objectAtIndex:arg2] cleanup:arg3];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    [self->_children makeObjectsPerformSelector:@selector(setBatchNode:) withObject:0x0];
    [[&var_20 super] removeAllChildrenWithCleanup:arg2];
    [self->_textureAtlas removeAllQuads];
    return;
}

-(void)increaseAtlasCapacityTo:(unsigned long long)arg2 {
    [self->_textureAtlas resizeCapacity:arg2];
    return;
}

-(void)draw {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    if ([*(self + r22) totalQuads] != 0x0) {
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    r0 = sub_1003812ec();
                    r21 = (int64_t *)&r19->_mcRenderJob;
                    *(int32_t *)(r21 + 0x18) = r0;
                    *(int32_t *)(r21 + 0x1c) = sub_1003812ec();
                    r19 = *(r19 + r22);
                    [r19 drawNumberOfQuads:[r19 totalQuads] fromIndex:0x0 renderJob:r21];
            }
            else {
                    sub_10031a6c4();
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
                    [*(r19 + r20) use];
                    [*(r19 + r20) setUniformsForBuiltins];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
                    sub_10031a4a8(*(int128_t *)(r19 + r8), *(int128_t *)(0x4 + r19 + r8));
                    [*(r19 + r22) drawQuads];
            }
    }
    return;
}

-(void)disableParticle:(unsigned long long)arg2 {
    [self->_textureAtlas quads];
    r8 = 0x60;
    asm { madd       x8, x19, x8, x0 };
    *(r8 + 0x18) = 0x0;
    *r8 = 0x0;
    *(r8 + 0x30) = 0x0;
    *(r8 + 0x48) = 0x0;
    return;
}

-(void)insertChild:(void *)arg2 inAtlasAtIndex:(unsigned long long)arg3 {
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
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    [arg2 setAtlasIndex:arg3];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_textureAtlas));
    if ([r20 totalParticles] + [*(r19 + r26) totalQuads] >= [*(r19 + r26) capacity]) {
            [r19 increaseAtlasCapacityTo:[r20 totalParticles] + [*(r19 + r26) totalQuads]];
            r25 = *(r19 + r26);
            [r25 fillWithEmptyQuadsFromIndex:[r25 capacity] - [r20 totalParticles] amount:[r20 totalParticles]];
    }
    if ([r20 totalParticles] + [r20 atlasIndex] != [*(r19 + r26) totalQuads]) {
            [*(r19 + r26) moveQuadsFromIndex:r21 to:[r20 totalParticles] + r21];
    }
    [*(r19 + r26) increaseTotalQuadsWith:[r20 totalParticles]];
    [r19 updateAllAtlasIndexes];
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

-(void)updateAllAtlasIndexes {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(self + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r23 = *(r8 + 0x10);
                    r24 = r23 + r9 * 0x8 - 0x8;
                    if (r23 <= r24) {
                            r19 = 0x0;
                            do {
                                    r22 = *r23;
                                    r23 = r23 + 0x8;
                                    [r22 setAtlasIndex:r2];
                                    r19 = objc_msgSend(r22, r21) + r19;
                            } while (r23 < r24);
                    }
            }
    }
    return;
}

-(void *)textureAtlas {
    r0 = self->_textureAtlas;
    return r0;
}

-(void)setTexture:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [self->_textureAtlas setTexture:r2];
    if (r20 != 0x0 && ([r20 hasPremultipliedAlpha] & 0x1) == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
            r8 = r19 + r8;
            if (*(int32_t *)r8 == 0x1) {
                    if (*(int32_t *)(r8 + 0x4) == 0x303) {
                            *r8 = *0x100ba36a8;
                    }
            }
    }
    return;
}

-(void *)texture {
    r0 = self->_textureAtlas;
    r0 = [r0 texture];
    return r0;
}

-(void)setTextureAtlas:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

@end