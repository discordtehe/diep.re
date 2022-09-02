@implementation CCNode

-(struct CGSize)inchSize {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = sub_1005cb30c(&var_14, &var_18);
    r0 = [CCDirector sharedDirector];
    r0 = [r0 winSize];
    r9 = (int64_t *)&r19->_contentSize;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_scaleX));
    asm { fcvt       d2, s2 };
    d3 = *(int128_t *)r9;
    d4 = *(int128_t *)(r9 + 0x8);
    d3 = d3 * d2;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_scaleY));
    asm { fcvt       d2, s2 };
    d2 = d4 * d2;
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_parent));
    r11 = *(r19 + r10);
    if (r11 != 0x0) {
            do {
                    asm { fcvt       d4, s4 };
                    d3 = d3 * d4;
                    asm { fcvt       d4, s4 };
                    d2 = d2 * d4;
                    r11 = *(r11 + r10);
            } while (r11 != 0x0);
    }
    asm { fdiv       d0, d3, d0 };
    asm { fcvt       d3, s3 };
    asm { fcvt       s0, d0 };
    asm { fdiv       d1, d2, d1 };
    asm { fcvt       d2, s2 };
    asm { fcvt       s1, d1 };
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    return r0;
}

-(void)setInchWidth:(float)arg2 proportional:(bool)arg3 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r20 = self;
    [self setScaleX:r2];
    r1 = @selector(inchSize);
    objc_msgSend(r20, r1);
    asm { fcvt       d1, s8 };
    asm { fdiv       d0, d1, d0 };
    asm { fcvt       s8, d0 };
    asm { fcvt       d0, s8 };
    printf("scaleX: %f\n", r1);
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r1 = @selector(setScaleX:);
            }
            else {
                    r1 = @selector(setScale:);
            }
    }
    objc_msgSend(r20, r1);
    return;
}

-(void)setInchHeight:(float)arg2 proportional:(bool)arg3 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r20 = self;
    [self setScaleY:r2];
    r1 = @selector(inchSize);
    objc_msgSend(r20, r1);
    asm { fcvt       d0, s8 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s8, d0 };
    asm { fcvt       d0, s8 };
    printf("scaleY: %f\n", r1);
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r1 = @selector(setScaleY:);
            }
            else {
                    r1 = @selector(setScale:);
            }
    }
    objc_msgSend(r20, r1);
    return;
}

-(void)setInchSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r19 = r0;
    asm { fcvt       s0, d0 };
    [r0 setInchWidth:0x0 proportional:r3];
    asm { fcvt       s0, d8 };
    [r19 setInchHeight:r2 proportional:r3];
    return;
}

+(void *)node {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void)cleanup {
    [self stopAllActions];
    [self unscheduleAllSelectors];
    [*(self + 0x230) makeObjectsPerformSelector:@selector(cleanup)];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(r19 + 0x2be) = 0x0;
            *(r19 + 0x2b0) = 0x0;
            *(r19 + 0x290) = 0x0;
            *(r19 + 0x2a4) = 0x0;
            r8 = *_CGPointZero;
            *(int128_t *)(r19 + 0x1e0) = *(int128_t *)r8;
            *(int128_t *)(r19 + 0x210) = *(int128_t *)*_CGSizeZero;
            *(int128_t *)(r19 + 0x200) = *(int128_t *)r8;
            q0 = *(int128_t *)r8;
            *(int128_t *)(r19 + 0x1f0) = q0;
            *(int8_t *)(r19 + 0x2a0) = 0x0;
            *(r19 + 0x298) = 0x0;
            *(int16_t *)(r19 + 0x2bc) = 0x101;
            *(int32_t *)(r19 + 0x2ac) = 0x0;
            *(int16_t *)(r19 + 0x2bf) = 0x1;
            *(int128_t *)(r19 + 0x270) = q0;
            *(int128_t *)(r19 + 0x280) = *(int128_t *)0x100ba3670;
            *(int32_t *)(r19 + 0x2b8) = 0x0;
            *(int128_t *)(r19 + 0x230) = q0;
            *(int128_t *)(r19 + 0x240) = q0;
            *(int128_t *)(r19 + 0x220) = q0;
            r0 = [CCDirector sharedDirector];
            [r19 setActionManager:[r0 actionManager]];
            [r19 setScheduler:[r0 scheduler]];
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)didLoadFromCCBAfterChildren {
    return;
}

-(void)didLoadFromCCB {
    return;
}

-(void)dealloc {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x260) release];
    objc_msgSend(*(r19 + 0x268), r20);
    objc_msgSend(*(r19 + 0x258), r20);
    objc_msgSend(*(r19 + 0x250), r20);
    objc_msgSend(*(r19 + 0x220), r20);
    objc_msgSend(*(r19 + 0x228), r20);
    objc_msgSend(*(r19 + 0x248), r20);
    objc_msgSend(*(r19 + 0x270), r20);
    r0 = *(r19 + 0x230);
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(data));
            r8 = *(r0 + r8);
            r9 = *r8;
            if (r9 != 0x0) {
                    r22 = *(r8 + 0x10);
                    r23 = r22 + r9 * 0x8 - 0x8;
                    if (r22 <= r23) {
                            do {
                                    r0 = *r22;
                                    r22 = r22 + 0x8;
                                    [r0 setParent:r2];
                            } while (r22 < r23);
                            r0 = *(r19 + 0x230);
                    }
            }
    }
    [r0 release];
    [[&var_40 super] dealloc];
    return;
}

-(void)setRotation:(float)arg2 {
    *(int32_t *)(self + 0x294) = s0;
    *(int32_t *)(self + 0x290) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(float)rotation {
    r0 = self;
    return r0;
}

-(void)setRotationY:(float)arg2 {
    *(int32_t *)(self + 0x294) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setRotationX:(float)arg2 {
    *(int32_t *)(self + 0x290) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setScaleX:(float)arg2 {
    *(int32_t *)(self + 0x2a4) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setSkewX:(float)arg2 {
    *(int32_t *)(self + 0x2b0) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setScaleY:(float)arg2 {
    *(int32_t *)(self + 0x2a8) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setSkewY:(float)arg2 {
    *(int32_t *)(self + 0x2b4) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int128_t *)(self + 0x1e0) = d0;
    *(int128_t *)(self + 0x1e8) = d1;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setIgnoreAnchorPointForPosition:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x2c0) != r2) {
            *(int8_t *)(r0 + 0x2c0) = r2;
            *(int16_t *)(r0 + 0x2bc) = 0x101;
    }
    return;
}

-(void)setAnchorPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    if (d0 == *(r0 + 0x200)) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            *(r0 + 0x200) = d0;
            *(r0 + 0x208) = d1;
            *(int128_t *)(r0 + 0x1f0) = q0;
            *(int16_t *)(r0 + 0x2bc) = 0x101;
    }
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    if (d0 == *(r0 + 0x210)) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            *(r0 + 0x210) = d0;
            *(r0 + 0x218) = d1;
            *(int128_t *)(r0 + 0x1f0) = q0;
            *(int16_t *)(r0 + 0x2bc) = 0x101;
    }
    return;
}

-(struct CGRect)boundingBox {
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0 != 0x0) {
            r1 = @selector(nodeToParentTransform);
            objc_msgSend(r0, r1);
    }
    r0 = CGRectApplyAffineTransform(&var_40, r1);
    return r0;
}

-(void)setVertexZ:(float)arg2 {
    *(int32_t *)(self + 0x2ac) = s0;
    return;
}

-(float)scale {
    r0 = self;
    return r0;
}

-(void)setScale:(float)arg2 {
    *(int32_t *)(self + 0x2a8) = s0;
    *(int32_t *)(self + 0x2a4) = s0;
    *(int16_t *)(self + 0x2bc) = 0x101;
    return;
}

-(void)setZOrder:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [self _setZOrder:r2];
    r0 = *(r20 + 0x238);
    if (r0 != 0x0) {
            [r0 reorderChild:r20 z:r19];
    }
    return;
}

-(void)childrenAlloc {
    *(self + 0x230) = [[CCArray alloc] initWithCapacity:0x4];
    return;
}

-(void *)camera {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x220);
    if (r0 == 0x0) {
            r0 = [CCCamera alloc];
            r0 = [r0 init];
            *(r19 + 0x220) = r0;
    }
    return r0;
}

-(void *)getChildByTag:(long long)arg2 {
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(self + 0x230);
    if (r8 == 0x0) goto loc_100296538;

loc_1002964e0:
    r8 = r8->data;
    r9 = *r8;
    if (r9 == 0x0) goto loc_100296538;

loc_1002964f8:
    r22 = *(r8 + 0x10);
    r23 = r22 + r9 * 0x8 - 0x8;
    if (r22 > r23) goto loc_100296538;

loc_10029650c:
    r19 = r2;
    goto loc_100296518;

loc_100296518:
    r20 = *r22;
    r22 = r22 + 0x8;
    if ([r20 tag] == r19) goto loc_10029653c;

loc_100296530:
    if (r22 < r23) goto loc_100296518;

loc_100296538:
    r20 = 0x0;
    goto loc_10029653c;

loc_10029653c:
    r0 = r20;
    return r0;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r19 = arg2;
    r20 = self;
    if (*(self + 0x230) == 0x0) {
            [r20 childrenAlloc];
    }
    [r20 insertChild:r19 z:r22];
    [r19 setTag:r21];
    [r19 setParent:r20];
    *0x1011abdb8 = *0x1011abdb8 + 0x1;
    [r19 setOrderOfArrival:r20];
    if (*(int8_t *)(r20 + 0x2be) != 0x0) {
            [r19 onEnter];
            [r19 onEnterTransitionDidFinish];
    }
    return;
}

-(void)addChild:(void *)arg2 {
    [self addChild:arg2 z:[arg2 zOrder] tag:[arg2 tag]];
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 {
    [self addChild:arg2 z:arg3 tag:[arg2 tag]];
    return;
}

-(void)removeFromParent {
    [self removeFromParentAndCleanup:r2];
    return;
}

-(void)removeFromParentAndCleanup:(bool)arg2 {
    [*(self + 0x238) removeChild:self cleanup:arg2];
    return;
}

-(void)removeChild:(void *)arg2 {
    [self removeChild:arg2 cleanup:0x1];
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r3;
            r20 = r2;
            r21 = r0;
            if ([*(r0 + 0x230) containsObject:r2] != 0x0) {
                    [r21 detachChild:r20 cleanup:r19];
            }
    }
    return;
}

-(void)removeChildByTag:(long long)arg2 {
    [self removeChildByTag:arg2 cleanup:0x1];
    return;
}

-(void)removeChildByTag:(long long)arg2 cleanup:(bool)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r0 = [self getChildByTag:r2];
    if (r0 != 0x0) {
            [r20 removeChild:r0 cleanup:r19];
    }
    return;
}

-(void)removeAllChildren {
    [self removeAllChildrenWithCleanup:0x1];
    return;
}

-(void)detachChild:(void *)arg2 cleanup:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(self + 0x2be) != 0x0) {
            [r19 onExitTransitionDidStart];
            [r19 onExit];
    }
    if ((r21 & 0x1) != 0x0) {
            [r19 cleanup];
    }
    [r19 setParent:0x0];
    [*(r20 + 0x230) removeObject:r19];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    r2 = arg2;
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
    r19 = self;
    r0 = *(self + 0x230);
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(data));
            r8 = *(r0 + r8);
            r9 = *r8;
            if (r9 != 0x0) {
                    r26 = *(r8 + 0x10);
                    r27 = r26 + r9 * 0x8 - 0x8;
                    if (r26 <= r27) {
                            r20 = r2;
                            do {
                                    r25 = *r26;
                                    if (*(int8_t *)(r19 + 0x2be) != 0x0) {
                                            [r25 onExitTransitionDidStart];
                                            [r25 onExit];
                                    }
                                    if (r20 != 0x0) {
                                            [r25 cleanup];
                                    }
                                    [r25 setParent:r2];
                                    r26 = r26 + 0x8;
                            } while (r26 < r27);
                            r0 = *(r19 + 0x230);
                    }
            }
    }
    [r0 removeAllObjects];
    return;
}

-(void)_setZOrder:(long long)arg2 {
    *(self + 0x278) = arg2;
    return;
}

-(void)insertChild:(void *)arg2 z:(long long)arg3 {
    *(int8_t *)(self + 0x2c1) = 0x1;
    sub_10033a504(*(*(self + 0x230) + sign_extend_64(*(int32_t *)ivar_offset(data))), arg2);
    [arg2 _setZOrder:arg3];
    return;
}

-(void)reorderChild:(void *)arg2 z:(long long)arg3 {
    *(int8_t *)(self + 0x2c1) = 0x1;
    *0x1011abdb8 = *0x1011abdb8 + 0x1;
    [arg2 setOrderOfArrival:r2];
    [arg2 _setZOrder:arg3];
    return;
}

-(void)draw {
    return;
}

-(void)sortAllChildren {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x2c1) == 0x0) goto .l1;

loc_100296a50:
    var_68 = r0;
    r9 = *(r0 + 0x230);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(data));
    r8 = *(r9 + r8);
    r9 = *r8;
    var_58 = r9;
    if (r9 < 0x2) goto loc_100296b5c;

loc_100296a78:
    r9 = *(r8 + 0x10);
    r28 = 0x1;
    r24 = 0x2;
    r19 = r9;
    var_60 = r9;
    goto loc_100296a94;

loc_100296a94:
    r21 = *(r9 + r28 * 0x8);
    r25 = r19;
    r27 = r24;
    r26 = r28;
    goto loc_100296aac;

loc_100296aac:
    r20 = @selector(zOrder);
    if (objc_msgSend(r21, r20) < objc_msgSend(*r25, r20)) goto loc_100296b18;

loc_100296ad0:
    r20 = @selector(zOrder);
    if (objc_msgSend(r21, r20) != objc_msgSend(*r25, r20)) goto loc_100296b3c;

loc_100296af4:
    if ([r21 orderOfArrival] >= [*r25 orderOfArrival]) goto loc_100296b40;

loc_100296b18:
    r26 = r26 - 0x1;
    *(r25 + 0x8) = *r25;
    r27 = r27 - 0x1;
    r25 = r25 - 0x8;
    if (r27 > 0x1) goto loc_100296aac;

loc_100296b34:
    r26 = 0x0;
    goto loc_100296b40;

loc_100296b40:
    r9 = var_60;
    *(r9 + r26 * 0x8) = r21;
    r28 = r28 + 0x1;
    r24 = r24 + 0x1;
    r19 = r19 + 0x8;
    if (r28 != var_58) goto loc_100296a94;

loc_100296b5c:
    *(int8_t *)(var_68 + 0x2c1) = 0x0;
    return;

.l1:
    return;

loc_100296b3c:
    r26 = r27 - 0x1;
    goto loc_100296b40;
}

-(void)transformAncestors {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x238);
    if (r0 != 0x0) {
            [r0 transformAncestors];
            [*(r19 + 0x238) transform];
    }
    return;
}

-(void)visit {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x2bf) != 0x0) {
            r19 = r0;
            sub_1003575dc();
            r0 = *(r19 + 0x228);
            if (r0 != 0x0 && [r0 active] != 0x0) {
                    [*(r19 + 0x228) beforeDraw];
            }
            [r19 transform];
            if (*(r19 + 0x230) != 0x0) {
                    [r19 sortAllChildren];
                    r24 = *(*(r19 + 0x230) + sign_extend_64(*(int32_t *)ivar_offset(data)));
                    r25 = 0x0;
                    if (*r24 != 0x0) {
                            r25 = 0x0;
                            do {
                                    r20 = @selector(zOrder);
                                    r22 = *(*(r24 + 0x10) + r25 * 0x8);
                                    if ((objc_msgSend(r22, r20) & 0xffffffff80000000) == 0x0) {
                                        break;
                                    }
                                    [r22 visit];
                                    r25 = r25 + 0x1;
                            } while (r25 < *r24);
                    }
                    [r19 draw];
                    if (r25 < *r24) {
                            do {
                                    [*(*(r24 + 0x10) + r25 * 0x8) visit];
                                    r25 = r25 + 0x1;
                            } while (r25 < *r24);
                    }
            }
            else {
                    [r19 draw];
            }
            *(r19 + 0x288) = 0x0;
            r0 = *(r19 + 0x228);
            if (r0 != 0x0 && [r0 active] != 0x0) {
                    [*(r19 + 0x228) afterDraw:r19];
            }
            r0 = *0x1011e2de0;
            r8 = sign_extend_64(*(int32_t *)(r0 + 0x4));
            *(int32_t *)(r0 + 0x4) = r8 - 0x1;
            *(r0 + 0x8) = *(r0 + 0x10) + r8 * 0x40 - 0x80;
    }
    return;
}

-(void)transform {
    r31 = r31 - 0x90;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self != 0x0) {
            [r19 nodeToParentTransform];
    }
    sub_10031185c(&var_80, &stack[-96]);
    sub_100357694(&stack[-96]);
    if (*(int32_t *)(r19 + 0x298) != 0x0) {
            s1 = 0x0;
            sub_100357754();
    }
    s0 = *(int32_t *)(r19 + 0x29c);
    if (s0 != 0x0) {
            s1 = 0x3ff0000000000000;
            sub_100357754();
    }
    if (*(r19 + 0x220) != 0x0) {
            r0 = *(r19 + 0x228);
            if (r0 == 0x0 || ([r0 active] & 0x1) == 0x0) {
                    d0 = *(int128_t *)(r19 + 0x1f0);
                    d1 = *(int128_t *)(r19 + 0x1f8);
                    if (d0 == 0x0 && d1 == 0x0) {
                            [*(r19 + 0x220) locate];
                    }
                    else {
                            asm { fcvt       s0, d0 };
                            asm { fcvt       s1, d1 };
                            sub_10035771c();
                            [*(r19 + 0x220) locate];
                            asm { fcvt       s0, d0 };
                            asm { fcvt       s1, d1 };
                            sub_10035771c();
                    }
            }
    }
    return;
}

-(void)onEnter {
    [*(self + 0x230) makeObjectsPerformSelector:@selector(onEnter)];
    [self resumeSchedulerAndActions];
    *(int8_t *)(self + 0x2be) = 0x1;
    return;
}

-(void)onEnterTransitionDidFinish {
    [*(self + 0x230) makeObjectsPerformSelector:@selector(onEnterTransitionDidFinish)];
    return;
}

-(void)onExitTransitionDidStart {
    [*(self + 0x230) makeObjectsPerformSelector:@selector(onExitTransitionDidStart)];
    return;
}

-(void)onExit {
    [self pauseSchedulerAndActions];
    *(int8_t *)(self + 0x2be) = 0x0;
    [*(self + 0x230) makeObjectsPerformSelector:@selector(onExit)];
    return;
}

-(void)setActionManager:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x258) != r2) {
            [r0 stopAllActions];
            [*(r0 + 0x258) release];
            *(r0 + 0x258) = [r2 retain];
    }
    return;
}

-(void *)actionManager {
    r0 = *(self + 0x258);
    return r0;
}

-(void)stopAllActions {
    [*(self + 0x258) removeAllActionsFromTarget:self];
    return;
}

-(void *)runAction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = *(self + 0x258);
    if (*(int8_t *)(self + 0x2be) == 0x0) {
            if (CPU_FLAGS & E) {
                    r4 = 0x1;
            }
    }
    [r0 addAction:r2 target:r3 paused:r4];
    r0 = r19;
    return r0;
}

-(void)stopAction:(void *)arg2 {
    [*(self + 0x258) removeAction:arg2];
    return;
}

-(void)stopActionByTag:(long long)arg2 {
    [*(self + 0x258) removeActionByTag:arg2 target:self];
    return;
}

-(void *)getActionByTag:(long long)arg2 {
    r0 = *(self + 0x258);
    r0 = [r0 getActionByTag:arg2 target:self];
    return r0;
}

-(unsigned long long)numberOfRunningActions {
    r0 = *(self + 0x258);
    r0 = [r0 numberOfRunningActionsInTarget:self];
    return r0;
}

-(void)setScheduler:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x250) != r2) {
            [r0 unscheduleAllSelectors];
            [*(r0 + 0x250) release];
            *(r0 + 0x250) = [r2 retain];
    }
    return;
}

-(void)scheduleUpdate {
    [self scheduleUpdateWithPriority:r2];
    return;
}

-(void *)scheduler {
    r0 = *(self + 0x250);
    return r0;
}

-(void)scheduleUpdateWithPriority:(long long)arg2 {
    r0 = *(self + 0x250);
    if (*(int8_t *)(self + 0x2be) == 0x0) {
    }
    [r0 scheduleUpdateForTarget:r2 priority:r3 paused:r4];
    return;
}

-(void)unscheduleUpdate {
    [*(self + 0x250) unscheduleUpdateForTarget:r2];
    return;
}

-(void)schedule:(void *)arg2 {
    [self schedule:arg2 interval:0xfffffffffffffffe repeat:r4 delay:r5];
    return;
}

-(void)schedule:(void *)arg2 interval:(double)arg3 {
    [self schedule:arg2 interval:0xfffffffffffffffe repeat:r4 delay:r5];
    return;
}

-(void)schedule:(void *)arg2 interval:(double)arg3 repeat:(unsigned int)arg4 delay:(double)arg5 {
    r5 = arg5;
    r2 = arg2;
    r4 = arg3;
    r0 = *(self + 0x250);
    if (*(int8_t *)(self + 0x2be) == 0x0) {
            if (CPU_FLAGS & E) {
                    r5 = 0x1;
            }
    }
    [r0 scheduleSelector:r2 forTarget:r3 interval:r4 repeat:r5 delay:r6 paused:r7];
    return;
}

-(void)scheduleOnce:(void *)arg2 delay:(double)arg3 {
    [self schedule:arg2 interval:0x0 repeat:r4 delay:r5];
    return;
}

-(void)unschedule:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [*(r0 + 0x250) unscheduleSelector:r2 forTarget:r0];
    }
    return;
}

-(void)unscheduleAllSelectors {
    [*(self + 0x250) unscheduleAllForTarget:r2];
    return;
}

-(void)resumeSchedulerAndActions {
    [*(self + 0x250) resumeTarget:self];
    [*(self + 0x258) resumeTarget:self];
    return;
}

-(void)pauseSchedulerAndActions {
    [*(self + 0x250) pauseTarget:r2];
    objc_msgSend(*(self + 0x258), r20);
    return;
}

-(void)update:(double)arg2 {
    return;
}

-(struct CGAffineTransform)parentToNodeTransform {
    r0 = self;
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r0;
    r19 = r8;
    if (*(int8_t *)(r0 + 0x2bd) != 0x0) {
            [r20 nodeToParentTransform];
            r0 = CGAffineTransformInvert(&stack[-128]);
            *(int128_t *)(r20 + 0x1c0) = stack[-64];
            *(int128_t *)(r20 + 0x1d0) = var_20;
            *(int128_t *)(r20 + 0x1b0) = var_40;
            *(int8_t *)(r20 + 0x2bd) = 0x0;
    }
    q0 = *(int128_t *)(r20 + 0x1b0);
    q1 = *(int128_t *)(r20 + 0x1c0);
    q2 = *(int128_t *)(r20 + 0x1d0);
    *(int128_t *)(r19 + 0x10) = q1;
    *(int128_t *)(r19 + 0x20) = q2;
    *(int128_t *)r19 = q0;
    return r0;
}

-(struct CGAffineTransform)worldToNodeTransform {
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (r0 != 0x0) {
            [r0 nodeToWorldTransform];
    }
    r0 = CGAffineTransformInvert(&var_40);
    return r0;
}

-(struct CGAffineTransform)nodeToWorldTransform {
    r0 = self;
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = r0;
    r19 = r8;
    if (r0 != 0x0) {
            r0 = [r21 nodeToParentTransform];
    }
    else {
            *(int128_t *)(r19 + 0x10) = q0;
            *(int128_t *)(r19 + 0x20) = q0;
            *(int128_t *)r19 = q0;
    }
    r21 = *(r21 + 0x238);
    if (r21 != 0x0) {
            do {
                    [r21 nodeToParentTransform];
                    CGAffineTransformConcat(&var_80, &stack[-192]);
                    *(int128_t *)(r19 + 0x10) = stack[-80];
                    *(int128_t *)(r19 + 0x20) = var_30;
                    *(int128_t *)r19 = var_50;
                    r0 = objc_msgSend(r21, r22);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    return r0;
}

-(struct CGAffineTransform)nodeToParentTransform {
    r0 = self;
    r31 = r31 - 0x120;
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
    r29 = &saved_fp;
    r20 = r0;
    r19 = r8;
    if (*(int8_t *)(r0 + 0x2bc) != 0x0) {
            asm { fcvtn      v16.2s, v0.2d };
            if (*(int8_t *)(r20 + 0x2c0) != 0x0) {
                    asm { fcvtl      v1.2d, v16.2s };
                    asm { fcvtn      v16.2s, v0.2d };
            }
            s0 = *(int32_t *)(r20 + 0x290);
            s1 = *(int32_t *)(r20 + 0x294);
            if (s0 == 0x0 && s1 == 0x0) {
                    s10 = 0x3ff0000000000000;
                    s0 = 0x0;
                    s9 = 0x0;
            }
            else {
                    s9 = s0 * *(int32_t *)0x100ba3690;
                    r0 = cosf(r0);
                    r0 = sinf(r0);
                    r0 = cosf(r0);
                    r0 = sinf(r0);
            }
            s11 = *(int32_t *)(r20 + 0x2b0);
            if (s11 == 0x0 && *(int32_t *)(r20 + 0x2b4) == 0x0) {
                    d3 = *(int128_t *)(r20 + 0x1f0);
                    d2 = *(int128_t *)(r20 + 0x1f8);
                    r8 = *_CGPointZero;
                    d4 = *(int128_t *)r8;
                    d5 = *(int128_t *)(r8 + 0x8);
                    if (d3 == d4) {
                            asm { fccmp      d2, d5, #0x0, eq };
                    }
                    r8 = 0x0;
                    if (!CPU_FLAGS & E) {
                            r8 = 0x0;
                            asm { fcvt       d4, s10 };
                            d5 = -d3;
                            d3 = d4 * d3;
                            asm { fcvt       d4, s4 };
                            d3 = d3 * d4;
                            asm { fcvt       d6, s9 };
                            d6 = d6 * d2;
                            asm { fcvt       d7, s7 };
                            d6 = d6 * d7;
                            d3 = d6 - d3;
                            asm { fcvt       d6, s16 };
                            d3 = d3 + d6;
                            asm { fcvt       s16, d3 };
                            asm { fcvt       d3, s0 };
                            d3 = d4 * d3 * d5;
                            asm { fcvt       d4, s8 };
                            d2 = d3 - d7 * d4 * d2;
                            asm { fcvt       d1, s1 };
                            asm { fcvt       s1, d1 };
                    }
            }
            else {
                    r8 = 0x1;
            }
            asm { fcvt       d3, s3 };
            asm { fcvt       d0, s0 };
            asm { fcvt       d2, s2 };
            asm { fcvt       d4, s4 };
            asm { fcvt       d5, s16 };
            *(int128_t *)(r20 + 0x180) = d3;
            *(int128_t *)(r20 + 0x188) = d0;
            *(int128_t *)(r20 + 0x190) = d2;
            *(int128_t *)(r20 + 0x198) = d4;
            asm { fcvt       d0, s1 };
            *(int128_t *)(r20 + 0x1a0) = d5;
            *(int128_t *)(r20 + 0x1a8) = d0;
            if (r8 != 0x0) {
                    r21 = r20 + 0x180;
                    r0 = tanf(r0);
                    asm { fcvt       d9, s0 };
                    tanf(r0);
                    asm { fcvt       d0, s0 };
                    r1 = &var_D0;
                    r0 = CGAffineTransformConcat(&var_A0, r1);
                    *(int128_t *)(r21 + 0x10) = stack[-112];
                    *(int128_t *)(r21 + 0x20) = var_50;
                    *(int128_t *)r21 = var_70;
                    d0 = *(int128_t *)(r20 + 0x1f0);
                    d1 = *(int128_t *)(r20 + 0x1f8);
                    if (d0 != **_CGPointZero || d1 != *(*_CGPointZero + 0x8)) {
                            r0 = CGAffineTransformTranslate(&var_100, r1, r2);
                            *(int128_t *)(r21 + 0x10) = stack[-112];
                            *(int128_t *)(r21 + 0x20) = var_50;
                            *(int128_t *)r21 = var_70;
                    }
            }
            *(int8_t *)(r20 + 0x2bc) = 0x0;
    }
    q0 = *(int128_t *)(r20 + 0x180);
    q1 = *(int128_t *)(r20 + 0x190);
    q2 = *(int128_t *)(r20 + 0x1a0);
    *(int128_t *)(r19 + 0x10) = q1;
    *(int128_t *)(r19 + 0x20) = q2;
    *(int128_t *)r19 = q0;
    return r0;
}

-(struct CGPoint)convertToNodeSpace:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0 != 0x0) {
            r0 = [r0 worldToNodeTransform];
    }
    else {
            v4 = 0x0;
            v3 = 0x0;
            v2 = 0x0;
    }
    return r0;
}

-(struct CGPoint)convertToNodeSpaceAR:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self convertToNodeSpace:r2];
    return r0;
}

-(struct CGPoint)convertToWorldSpaceAR:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self convertToWorldSpace:r2];
    return r0;
}

-(struct CGPoint)convertToWorldSpace:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0 != 0x0) {
            r0 = [r0 nodeToWorldTransform];
    }
    else {
            v4 = 0x0;
            v3 = 0x0;
            v2 = 0x0;
    }
    return r0;
}

-(struct CGPoint)convertToWindowSpace:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self convertToWorldSpace:r2];
    r0 = [CCDirector sharedDirector];
    r0 = [r0 convertToUI:r2];
    return r0;
}

-(struct CGPoint)convertTouchToNodeSpace:(void *)arg2 {
    r2 = [arg2 view];
    [arg2 locationInView:r2];
    [[CCDirector sharedDirector] convertToGL:r2];
    r0 = [self convertToNodeSpace:r2];
    return r0;
}

-(struct CGPoint)convertTouchToNodeSpaceAR:(void *)arg2 {
    r2 = [arg2 view];
    [arg2 locationInView:r2];
    [[CCDirector sharedDirector] convertToGL:r2];
    r0 = [self convertToNodeSpaceAR:r2];
    return r0;
}

-(struct CGPoint)convertToNodeSpacePoint:(struct CGPoint)arg2 fromChild:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = self;
    if ([r2 parent] != r19) {
            r0 = [r20 parent];
            if (r19 != 0x0) {
                    r0 = [r19 nodeToNodeTransform:r0];
                    d4 = var_60;
                    d3 = stack[-104];
                    d5 = var_50;
                    d2 = stack[-88];
                    d0 = var_40;
                    d1 = stack[-72];
            }
            else {
                    d1 = 0x0;
                    d2 = 0x0;
                    d3 = 0x0;
                    d0 = 0x0;
                    d5 = 0x0;
                    d4 = 0x0;
            }
    }
    else {
            r0 = [r20 position];
    }
    return r0;
}

-(struct CGAffineTransform)nodeToNodeTransform:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg2;
    r19 = self;
    r20 = r8;
    if (arg2 != 0x0) {
            [r23 nodeToParentTransform];
    }
    else {
            *(int128_t *)(r20 + 0x10) = q0;
            *(int128_t *)(r20 + 0x20) = q0;
            *(int128_t *)r20 = q0;
    }
    r0 = [r23 parent];
    if (r0 != 0x0) {
            asm { ccmp       x0, x19, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r23 = r0;
            do {
                    [r23 nodeToParentTransform];
                    CGAffineTransformConcat(&var_90, &stack[-208]);
                    *(int128_t *)(r20 + 0x10) = stack[-96];
                    *(int128_t *)(r20 + 0x20) = var_40;
                    *(int128_t *)r20 = var_60;
                    r0 = objc_msgSend(r23, r22);
                    if (r0 == 0x0) {
                        break;
                    }
                    r23 = r0;
            } while (r0 != r19);
    }
    return r0;
}

-(void *)debugTag {
    r0 = *(self + 0x260);
    return r0;
}

-(void)setDebugTag:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)debugContext {
    r0 = *(self + 0x268);
    return r0;
}

-(void)setDebugContext:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)children {
    r0 = *(self + 0x230);
    return r0;
}

-(bool)visible {
    r0 = *(int8_t *)(self + 0x2bf);
    return r0;
}

-(void)setVisible:(bool)arg2 {
    *(int8_t *)(self + 0x2bf) = arg2;
    return;
}

-(void *)parent {
    r0 = *(self + 0x238);
    return r0;
}

-(void)setParent:(void *)arg2 {
    *(self + 0x238) = arg2;
    return;
}

-(void *)grid {
    r0 = *(self + 0x228);
    return r0;
}

-(void)setGrid:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(long long)zOrder {
    r0 = *(self + 0x278);
    return r0;
}

-(long long)tag {
    r0 = *(self + 0x280);
    return r0;
}

-(void)setTag:(long long)arg2 {
    *(self + 0x280) = arg2;
    return;
}

-(float)vertexZ {
    r0 = self;
    return r0;
}

-(bool)isRunning {
    r0 = *(int8_t *)(self + 0x2be);
    return r0;
}

-(void)setUserData:(void *)arg2 {
    *(self + 0x240) = arg2;
    return;
}

-(void *)userData {
    r0 = *(self + 0x240);
    return r0;
}

-(void *)userObject {
    r0 = *(self + 0x270);
    return r0;
}

-(void)setUserObject:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setShaderProgram:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)shaderProgram {
    r0 = *(self + 0x248);
    return r0;
}

-(unsigned long long)orderOfArrival {
    r0 = *(self + 0x288);
    return r0;
}

-(void)setOrderOfArrival:(unsigned long long)arg2 {
    *(self + 0x288) = arg2;
    return;
}

-(int)glServerState {
    r0 = *(int32_t *)(self + 0x2b8);
    return r0;
}

-(void)setGlServerState:(int)arg2 {
    *(int32_t *)(self + 0x2b8) = arg2;
    return;
}

-(float)rotationY {
    r0 = self;
    return r0;
}

-(float)rotationX {
    r0 = self;
    return r0;
}

-(float)scaleX {
    r0 = self;
    return r0;
}

-(float)scaleY {
    r0 = self;
    return r0;
}

-(struct CGPoint)anchorPoint {
    r0 = self;
    return r0;
}

-(struct CGPoint)position {
    r0 = self;
    return r0;
}

-(struct CGPoint)anchorPointInPoints {
    r0 = self;
    return r0;
}

-(struct CGSize)contentSize {
    r0 = self;
    return r0;
}

-(bool)ignoreAnchorPointForPosition {
    r0 = *(int8_t *)(self + 0x2c0);
    return r0;
}

-(float)skewX {
    r0 = self;
    return r0;
}

-(float)skewY {
    r0 = self;
    return r0;
}

-(float)yAxisRotation {
    r0 = self;
    return r0;
}

-(void)setYAxisRotation:(float)arg2 {
    *(int32_t *)(self + 0x298) = s0;
    return;
}

-(float)xAxisRotation {
    r0 = self;
    return r0;
}

-(void)setXAxisRotation:(float)arg2 {
    *(int32_t *)(self + 0x29c) = s0;
    return;
}

-(bool)isBeingLoadedFromCCB {
    r0 = *(int8_t *)(self + 0x2a0);
    return r0;
}

-(void)setIsBeingLoadedFromCCB:(bool)arg2 {
    *(int8_t *)(self + 0x2a0) = arg2;
    return;
}

-(void).cxx_destruct {
    sub_1002c59fc(self + 0x158);
    sub_100298524(self + 0x130);
    loc_100381804(self + 0xf0, _cmd);
    loc_100381804(self + 0xb8, _cmd);
    loc_100381804(self + 0x80, _cmd);
    return;
}

-(void *).cxx_construct {
    sub_10029857c(self + 0x8);
    r0 = self;
    return r0;
}

-(void)setIsRelativeAnchorPoint:(bool)arg2 {
    [self setIgnoreAnchorPointForPosition:arg2 ^ 0x1];
    return;
}

-(bool)isRelativeAnchorPoint {
    r0 = [self ignoreAnchorPointForPosition];
    r0 = r0 ^ 0x1;
    return r0;
}

-(void)setHeight:(float)arg2 {
    r19 = self;
    [self contentSize];
    asm { fcvt       d1, s8 };
    [r19 setContentSize:r2];
    return;
}

-(void)setWidth:(float)arg2 {
    r0 = self;
    r19 = r0;
    asm { fcvt       d8, s0 };
    [r0 contentSize];
    [r19 setContentSize:r2];
    return;
}

-(void)setRelativePosition:(struct CGPoint)arg2 type:(int)arg3 parentSize:(struct CGSize)arg4 propertyName:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r20 = self;
    [self absolutePositionFromRelative:r2 type:r3 parentSize:r4 propertyName:r5];
    v9 = v0;
    v8 = v1;
    if ([r19 isEqualToString:r2] != 0x0) {
            [r20 setPosition:r2];
    }
    else {
            [r20 setValue:[NSValue valueWithCGPoint:@"position"] forKey:r19];
    }
    return;
}

-(struct CGPoint)absolutePositionFromRelative:(struct CGPoint)arg2 type:(int)arg3 parentSize:(struct CGSize)arg4 propertyName:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_30 = d13;
    stack[-56] = d12;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 <= 0x9) {
            r0 = (0x10034ec50 + *(int8_t *)(0x100bcd203 + r2) * 0x4)();
    }
    return r0;
}

-(void)setRelativePosition:(struct CGPoint)arg2 type:(int)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [self setRelativePosition:r2 type:@"position" parentSize:r4 propertyName:r5];
    return;
}

-(void)setRelativePosition:(struct CGPoint)arg2 type:(int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [[self parent] contentSize];
    [self setRelativePosition:r2 type:@"position" parentSize:r4 propertyName:r5];
    return;
}

-(struct CGSize)calculateRelativeSize:(struct CGSize)arg2 type:(int)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_20 = d11;
    stack[-40] = d10;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 <= 0x5) {
            r0 = (0x10034ef48 + *(int8_t *)(0x100bcd20d + r2) * 0x4)();
    }
    return r0;
}

-(void)setRelativeSize:(struct CGSize)arg2 type:(int)arg3 parentSize:(struct CGSize)arg4 propertyName:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r20 = self;
    [self calculateRelativeSize:r2 type:r3 parentSize:r4];
    v9 = v0;
    v8 = v1;
    if ([r19 isEqualToString:r2] != 0x0) {
            [r20 setContentSize:r2];
    }
    else {
            [r20 setValue:[NSValue valueWithCGSize:@"contentSize"] forKey:r19];
    }
    return;
}

-(void)setRelativeSize:(struct CGSize)arg2 type:(int)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [self setRelativeSize:r2 type:@"contentSize" parentSize:r4 propertyName:r5];
    return;
}

-(void)setRelativeSize:(struct CGSize)arg2 type:(int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [[self parent] contentSize];
    [self setRelativeSize:r2 type:@"contentSize" parentSize:r4 propertyName:r5];
    return;
}

-(float)resolutionScale {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)0x1011e2dd8 == 0x0) {
            r0 = [CCConfiguration sharedConfiguration];
            r0 = [r0 useNewResourceManagement];
            if (r0 != 0x0) {
                    r0 = loc_10042cdf4(r0, @selector(useNewResourceManagement));
            }
            else {
                    r0 = [CCResourcePackManager sharedInstance];
                    r0 = [r0 currentDeviceCategoryPointScale];
            }
            *(int32_t *)0x1011e2dd8 = *(int32_t *)0x1011e2dd8;
    }
    return r0;
}

-(float)calculateRelativeFloat:(float)arg2 type:(int)arg3 {
    r0 = self;
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    if (arg2 == 0x0) {
            r0 = [r0 resolutionScale];
    }
    return r0;
}

-(void)setRelativeScaleX:(float)arg2 Y:(float)arg3 type:(int)arg4 {
    [self setRelativeScaleX:arg2 Y:@"scale" type:arg4 propertyName:r5];
    return;
}

-(void)setRelativeScaleX:(float)arg2 Y:(float)arg3 type:(int)arg4 propertyName:(void *)arg5 {
    var_40 = d9;
    stack[-72] = d8;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    if ([arg3 isEqualToString:r2] != 0x0) {
            [r19 setScaleX:@"scale"];
            [r19 setScaleY:@"scale"];
    }
    else {
            r22 = [r20 stringByAppendingString:@"X"];
            r20 = [r20 stringByAppendingString:@"Y"];
            r2 = [NSNumber numberWithFloat:@"Y"];
            [r19 setValue:r2 forKey:r22];
            [r19 setValue:[NSNumber numberWithFloat:r2] forKey:r20];
    }
    return;
}

-(void)setRelativeFloat:(float)arg2 type:(int)arg3 propertyName:(void *)arg4 {
    [self calculateRelativeFloat:arg2 type:r3];
    [self setValue:[NSNumber numberWithFloat:arg2] forKey:arg3];
    return;
}

+(float)deviceModifier {
    r0 = sub_10042e9e0();
    return r0;
}

+(struct CGPoint)sdPosToLocal:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [CCNode deviceModifier];
    asm { fcvt       d1, s0 };
    return r0;
}

+(struct CGSize)sdSizeToLocal:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [CCNode deviceModifier];
    asm { fcvt       d1, s0 };
    return r0;
}

-(void)setID:(void *)arg2 {
    return;
}

-(void)setID:(void *)arg2 context:(void *)arg3 {
    return;
}

-(void *)context {
    return @"";
}

-(void *)uniqueID {
    return @"";
}

-(bool)simulateTouch {
    return 0x0;
}

-(bool)simulateRelease {
    return 0x0;
}

-(bool)simulateDragToTag:(void *)arg2 {
    return 0x0;
}

-(bool)simulateDrag:(float)arg2 :(float)arg3 {
    return 0x0;
}

-(int)countSubitems {
    return 0x0;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([self children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r23 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r24 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r24 = r24 + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r24) {
                    do {
                            r22 = *r23;
                            r23 = r23 + 0x8;
                            [r22 performSelector:r19];
                            [r22 makeDescendantsPerformSelector:r2];
                    } while (r23 < r24);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 predicate:(void * *)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    r19 = r3;
    r20 = r2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r1 = r22;
            r25 = r25 + **(objc_msgSend(r21, r1) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r23 = *r24;
                            if ((r19)(r23, r1, r2, r3) != 0x0) {
                                    [r23 performSelector:r20];
                            }
                            r1 = @selector(makeDescendantsPerformSelector:predicate:);
                            r2 = r20;
                            r3 = r19;
                            objc_msgSend(r23, r1);
                            r24 = r24 + 0x8;
                    } while (r24 < r25);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 target:(void *)arg3 predicateSelector:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
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
    r19 = r4;
    r20 = r3;
    r21 = arg2;
    r23 = self;
    r22 = [r3 methodForSelector:r4];
    if ([r23 children] != 0x0 && **([r23 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r24 = @selector(children);
            r26 = *(*(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r27 = *(*(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r27 = r27 + **(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r26 <= r27) {
                    do {
                            r25 = *r26;
                            if ((r22)(r20, r19, r25, r3, r4) != 0x0) {
                                    [r25 performSelector:r21];
                            }
                            r3 = r20;
                            r4 = r19;
                            [r25 makeDescendantsPerformSelector:r2 target:r3 predicateSelector:r4];
                            r26 = r26 + 0x8;
                    } while (r26 < r27);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 withObject:(void *)arg3 {
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
    r20 = arg2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = r25 + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r23 = *r24;
                            r24 = r24 + 0x8;
                            [r23 performSelector:r20 withObject:r19];
                            [r23 makeDescendantsPerformSelector:r2 withObject:r3];
                    } while (r24 < r25);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 withObject:(void *)arg3 predicate:(void * *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
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
    r19 = r4;
    r20 = r3;
    r21 = r2;
    r22 = self;
    if ([self children] != 0x0 && **([r22 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r23 = @selector(children);
            r25 = *(*(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = *(*(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r1 = r23;
            r26 = r26 + **(objc_msgSend(r22, r1) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r25 <= r26) {
                    do {
                            r24 = *r25;
                            if ((r19)(r24, r1, r2, r3, r4) != 0x0) {
                                    [r24 performSelector:r21 withObject:r20];
                            }
                            r1 = @selector(makeDescendantsPerformSelector:withObject:predicate:);
                            r2 = r21;
                            r3 = r20;
                            r4 = r19;
                            objc_msgSend(r24, r1);
                            r25 = r25 + 0x8;
                    } while (r25 < r26);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 withObject:(void *)arg3 predicateTarget:(void *)arg4 predicateSelector:(void *)arg5 {
    r4 = arg4;
    r3 = arg3;
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
    r19 = arg5;
    r20 = r4;
    r21 = r3;
    r22 = arg2;
    r24 = self;
    r23 = [r4 methodForSelector:arg5];
    if ([r24 children] != 0x0 && **([r24 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r25 = @selector(children);
            r27 = *(*(objc_msgSend(r24, r25) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r28 = *(*(objc_msgSend(r24, r25) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r28 = r28 + **(objc_msgSend(r24, r25) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r27 <= r28) {
                    do {
                            r26 = *r27;
                            if ((r23)(r20, r19, r26, r3, r4) != 0x0) {
                                    [r26 performSelector:r22 withObject:r21];
                            }
                            r3 = r21;
                            r4 = r20;
                            [r26 makeDescendantsPerformSelector:r2 withObject:r3 predicateTarget:r4 predicateSelector:r5];
                            r27 = r27 + 0x8;
                    } while (r27 < r28);
            }
    }
    return;
}

-(void)makeDescendantsRunAction:(void *)arg2 {
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
    if ([self children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r25 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r25 <= r26) {
                    do {
                            r24 = *r25;
                            r25 = r25 + 0x8;
                            [r24 runAction:[[r19 copy] autorelease]];
                            [r24 makeDescendantsRunAction:r2];
                    } while (r25 < r26);
            }
    }
    return;
}

-(void)makeDescendantsRunAction:(void *)arg2 predicate:(void * *)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    r19 = r3;
    r20 = r2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r26 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r1 = r22;
            r27 = r24 + **(objc_msgSend(r21, r1) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r26 <= r27) {
                    do {
                            r25 = *r26;
                            if ((r19)(r25, r1, r2, r3) != 0x0) {
                                    [r25 runAction:[[r20 copy] autorelease]];
                            }
                            r1 = @selector(makeDescendantsRunAction:predicate:);
                            r2 = r20;
                            r3 = r19;
                            objc_msgSend(r25, r1);
                            r26 = r26 + 0x8;
                    } while (r26 < r27);
            }
    }
    return;
}

-(void)makeDescendantsRunAction:(void *)arg2 predicateTarget:(void *)arg3 predicateSelector:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
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
    r19 = r4;
    r20 = r3;
    r21 = arg2;
    r23 = self;
    r22 = [r3 methodForSelector:r4];
    if ([r23 children] != 0x0 && **([r23 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r24 = @selector(children);
            r28 = *(*(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r23 = *(*(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r28 <= r23) {
                    do {
                            r27 = *r28;
                            if ((r22)(r20, r19, r27, r3, r4) != 0x0) {
                                    [r27 runAction:[[r21 copy] autorelease]];
                            }
                            r3 = r20;
                            r4 = r19;
                            [r27 makeDescendantsRunAction:r2 predicateTarget:r3 predicateSelector:r4];
                            r28 = r28 + 0x8;
                    } while (r28 < r23);
            }
    }
    return;
}

-(void)visitDescendants:(void * *)arg2 {
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = self;
    if ([self children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r22 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r24 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r1 = r21;
            r23 = r24 + **(objc_msgSend(r20, r1) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r22 <= r23) {
                    do {
                            r21 = *r22;
                            r22 = r22 + 0x8;
                            (r19)(r21, r1, r2);
                            r1 = r20;
                            r2 = r19;
                            objc_msgSend(r21, r1);
                    } while (r22 < r23);
            }
    }
    return;
}

-(void)visitDescendants:(void * *)arg2 withObject:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    r19 = r3;
    r20 = r2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r23 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r24) {
                    do {
                            r22 = *r23;
                            r23 = r23 + 0x8;
                            (r20)(r22, r19, r2, r3);
                            r2 = r20;
                            r3 = r19;
                            objc_msgSend(r22, r21);
                    } while (r23 < r24);
            }
    }
    return;
}

-(void)visitDescendants:(void * *)arg2 withData:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    r19 = r3;
    r20 = r2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r23 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r23 <= r24) {
                    do {
                            r22 = *r23;
                            r23 = r23 + 0x8;
                            (r20)(r22, r19, r2, r3);
                            r2 = r20;
                            r3 = r19;
                            objc_msgSend(r22, r21);
                    } while (r23 < r24);
            }
    }
    return;
}

-(void)visitDescendantsUsingTarget:(void *)arg2 selector:(void *)arg3 {
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
    r20 = arg2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = r25 + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r23 = *r24;
                            r24 = r24 + 0x8;
                            [r20 performSelector:r19 withObject:r23];
                            [r23 visitDescendantsUsingTarget:r2 selector:r3];
                    } while (r24 < r25);
            }
    }
    return;
}

-(void)visitDescendantsUsingTarget:(void *)arg2 selector:(void *)arg3 withObject:(void *)arg4 {
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
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if ([self children] != 0x0 && **([r22 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r23 = @selector(children);
            r25 = *(*(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = *(*(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = r26 + **(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r25 <= r26) {
                    do {
                            r24 = *r25;
                            r25 = r25 + 0x8;
                            [r21 performSelector:r20 withObject:r24 withObject:r19];
                            [r24 visitDescendantsUsingTarget:r2 selector:r3 withObject:r4];
                    } while (r25 < r26);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 predicateBlock:(void *)arg3 {
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
    r20 = arg2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r25 = r25 + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r24 <= r25) {
                    do {
                            r23 = *r24;
                            if ((*(r19 + 0x10))(r19, r23) != 0x0) {
                                    [r23 performSelector:r20];
                            }
                            [r23 makeDescendantsPerformSelector:r2 predicateBlock:r3];
                            r24 = r24 + 0x8;
                    } while (r24 < r25);
            }
    }
    return;
}

-(void)visitDescendantsUsingTarget:(void *)arg2 selector:(void *)arg3 withData:(void *)arg4 {
    r4 = arg4;
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
    r19 = r4;
    r20 = arg3;
    r21 = arg2;
    r23 = self;
    r22 = [arg2 methodForSelector:arg3];
    if ([r23 children] != 0x0 && **([r23 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r24 = @selector(children);
            r25 = *(*(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = *(*(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r23, r24) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r25 <= r26) {
                    do {
                            r24 = *r25;
                            r25 = r25 + 0x8;
                            (r22)(r21, r20, r24, r19, r4);
                            r4 = r19;
                            objc_msgSend(r24, r23);
                    } while (r25 < r26);
            }
    }
    return;
}

-(void)makeDescendantsPerformSelector:(void *)arg2 withObject:(void *)arg3 predicateBlock:(void *)arg4 {
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
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if ([self children] != 0x0 && **([r22 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r23 = @selector(children);
            r25 = *(*(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = *(*(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r26 = r26 + **(objc_msgSend(r22, r23) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r25 <= r26) {
                    do {
                            r24 = *r25;
                            if ((*(r19 + 0x10))(r19, r24) != 0x0) {
                                    [r24 performSelector:r21 withObject:r20];
                            }
                            [r24 makeDescendantsPerformSelector:r2 withObject:r3 predicateBlock:r4];
                            r25 = r25 + 0x8;
                    } while (r25 < r26);
            }
    }
    return;
}

-(void)visitDescendantsUsingBlock:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([self children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r22 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r23 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r22 <= r23) {
                    do {
                            r21 = *r22;
                            r22 = r22 + 0x8;
                            (*(r19 + 0x10))(r19, r21);
                            objc_msgSend(r21, r20);
                    } while (r22 < r23);
            }
    }
    return;
}

-(void)makeDescendantsRunAction:(void *)arg2 predicateBlock:(void *)arg3 {
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
    r20 = arg2;
    r21 = self;
    if ([self children] != 0x0 && **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r26 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r27 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r26 <= r27) {
                    do {
                            r25 = *r26;
                            if ((*(r19 + 0x10))(r19, r25) != 0x0) {
                                    [r25 runAction:[[r20 copy] autorelease]];
                            }
                            [r25 makeDescendantsRunAction:r2 predicateBlock:r3];
                            r26 = r26 + 0x8;
                    } while (r26 < r27);
            }
    }
    return;
}

@end