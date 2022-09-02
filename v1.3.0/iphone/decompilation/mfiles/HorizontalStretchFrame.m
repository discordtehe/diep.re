@implementation HorizontalStretchFrame

+(void *)splitFrame:(void *)arg2 leftX:(float)arg3 rightX:(float)arg4 {
    r0 = [self splitFrame:0x0 frameName:arg2 leftX:arg4 rightX:r5];
    return r0;
}

-(void *)prefix {
    r0 = self->_imgPrefix;
    return r0;
}

+(void *)horizontalStretchFrameWithFrameDescription:(void *)arg2 {
    r0 = [HorizontalStretchFrame object];
    [r0 setFrameDescription:arg2];
    r0 = r0;
    return r0;
}

-(void)createSprite_MCC2Ds {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_imgPrefix));
    if (*(r0 + r23) != 0x0) {
            [r0 removeSprites];
            r21 = sub_10034ddb4(0x0, 0x0, [*(r0 + r23) stringByAppendingString:@"Left.png"], 0x0);
            r22 = sub_10034ddb4(0x0, 0x0, [*(r0 + r23) stringByAppendingString:@"Center.png"], 0x0);
            r20 = sub_10034ddb4(0x0, 0x0, [*(r0 + r23) stringByAppendingString:@"Right.png"], 0x0);
            [r0 addChild:r21 z:0x0 tag:0x0];
            [r0 addChild:r22 z:0x0 tag:0x2];
            [r0 addChild:r20 z:0x0 tag:0x4];
            [r0 positionSprites];
    }
    return;
}

+(void *)splitFrame:(void *)arg2 frameName:(void *)arg3 leftX:(float)arg4 rightX:(float)arg5 {
    r5 = arg5;
    r4 = arg4;
    r31 = r31 - 0xf0;
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
    v8 = v1;
    r21 = arg3;
    r22 = arg2;
    r20 = [CCSpriteFrameCache sharedSpriteFrameCache];
    r0 = [r21 stringByDeletingPathExtension];
    r19 = r0;
    r24 = &var_B0 + 0x8;
    [r0 stringByAppendingString:r2];
    r25 = 0x0;
    r26 = &var_C8 + 0x8;
    do {
            *(r26 + r25) = [r19 stringByAppendingString:*(r24 + r25)];
            r25 = r25 + 0x8;
    } while (r25 != 0x10);
    r24 = 0x0;
    r25 = &var_C8;
    goto loc_10030f0cc;

loc_10030f0cc:
    if ([r20 spriteFrameByName:r2] == 0x0) goto loc_10030f0f0;

loc_10030f0e0:
    r24 = r24 + 0x8;
    if (r24 != 0x18) goto loc_10030f0cc;

loc_10030f26c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10030f0f0:
    var_E8 = r19;
    r0 = sub_10034dba0(r22, r21, 0x0);
    r19 = r0;
    [r0 rectInPixels];
    v13 = v2;
    v10 = v3;
    r0 = [r19 rotated];
    r22 = r0;
    if (r0 != 0x0) {
            asm { fcsel      d0, d12, d11, ne };
    }
    asm { fcvt       s11, d0 };
    sub_10035ec68();
    sub_10035ec68();
    s0 = *(int32_t *)0x1011bcf4c;
    asm { fcvt       d1, s11 };
    asm { fcvt       s1, d1 };
    var_E0 = r19;
    objc_msgSend(r19, r23);
    r27 = &var_D8 + 0x4;
    if (r22 != 0x0) {
            asm { fcsel      d0, d0, d1, ne };
    }
    r28 = 0x0;
    asm { fcvt       s0, d0 };
    asm { fcvt       d9, s0 };
    r19 = r20;
    do {
            asm { fcvt       d12, s11 };
            r20 = r28 + 0x1;
            if (*(int32_t *)(r27 + r28 * 0x4) < s11) {
                    asm { fcsel      s0, s1, s0, mi };
            }
            r23 = @selector(texture);
            asm { fcvt       d8, s0 };
            r2 = objc_msgSend(var_E0, r23);
            if (r22 != 0x0) {
                    asm { fcsel      d0, d9, d12, ne };
            }
            if (CPU_FLAGS & NE) {
                    asm { fcsel      d1, d12, d9, ne };
            }
            [CCSpriteFrame frameWithTexture:r2 rectInPixels:r22 rotated:r4 offset:r5 originalSize:r6];
            [r19 addSpriteFrame:r2 name:r3];
            r28 = r20;
    } while (r20 != 0x3);
    r19 = var_E8;
    goto loc_10030f26c;
}

+(void *)horizontalStretchFrame {
    r0 = [HorizontalStretchFrame object];
    return r0;
}

+(void *)horizontalStretchFrameWithPrefix:(void *)arg2 {
    r0 = [HorizontalStretchFrame alloc];
    r0 = [r0 initWithPrefix:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)positionSprites {
    var_80 = d13;
    stack[-136] = d12;
    r31 = r31 + 0xffffffffffffff70;
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
    r21 = self;
    [self contentSize];
    d9 = d1 * 0x3fe0000000000000;
    r23 = [r21 getChildByTag:0x0];
    r22 = [r21 getChildByTag:0x2];
    r20 = [r21 getChildByTag:0x4];
    [r22 setAnchorPoint:0x4];
    [r23 setAnchorPoint:0x4];
    [r23 setPosition:0x4];
    [r20 setAnchorPoint:0x4];
    objc_msgSend(r21, r19);
    [r20 setPosition:r2];
    objc_msgSend(r21, r19);
    objc_msgSend(r23, r19);
    asm { fdiv       d0, d10, d1 };
    asm { fcvt       s0, d0 };
    [r23 setScaleY:r2];
    objc_msgSend(r21, r19);
    objc_msgSend(r22, r19);
    asm { fdiv       d0, d10, d1 };
    asm { fcvt       s0, d0 };
    objc_msgSend(r22, r25);
    objc_msgSend(r21, r19);
    objc_msgSend(r20, r19);
    asm { fdiv       d0, d10, d1 };
    asm { fcvt       s0, d0 };
    objc_msgSend(r20, r25);
    [r23 scaleY];
    [r23 setScaleX:r2];
    [r20 scaleY];
    [r20 setScaleX:r2];
    objc_msgSend(r23, r19);
    [r23 scaleX];
    asm { fcvt       d0, s0 };
    asm { fcvt       s12, d0 };
    objc_msgSend(r20, r19);
    objc_msgSend(r20, r26);
    asm { fcvt       d0, s0 };
    d0 = d10 * d0;
    asm { fcvt       s0, d0 };
    s0 = s12 + s0;
    asm { fcvt       d10, s0 };
    objc_msgSend(r21, r19);
    if (d0 < d10) {
            [r22 setVisible:r2];
            objc_msgSend(r21, r19);
            objc_msgSend(r23, r19);
            asm { fdiv       d0, d9, d0 };
            asm { fcvt       s0, d0 };
            objc_msgSend(r23, r25);
            objc_msgSend(r21, r19);
            objc_msgSend(r20, r19);
            asm { fdiv       d0, d8, d0 };
            asm { fcvt       s0, d0 };
            objc_msgSend(r20, r25);
    }
    else {
            [r22 setVisible:r2];
            objc_msgSend(r23, r19);
            objc_msgSend(r23, r26);
            asm { fcvt       d0, s0 };
            objc_msgSend(r22, r24);
            objc_msgSend(r21, r19);
            objc_msgSend(r23, r19);
            objc_msgSend(r23, r26);
            asm { fcvt       d0, s0 };
            objc_msgSend(r20, r19);
            objc_msgSend(r20, r26);
            asm { fcvt       d0, s0 };
            objc_msgSend(r22, r19);
            asm { fdiv       d0, d8, d0 };
            asm { fcvt       s0, d0 };
            objc_msgSend(r22, r25);
            objc_msgSend(r22, r26);
            if (s0 > 0x0) {
            }
            [r22 setVisible:r2];
    }
    return;
}

-(void *)initWithPrefix:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setImgPrefix:r20];
            [r19 setCascadeOpacityEnabled:0x1];
            [r19 setCascadeColorEnabled:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self setImgPrefix:0x0];
    [self setFrameDescription:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)setupPosition:(struct CGPoint)arg2 anchorPoint:(struct CGPoint)arg3 parent:(void *)arg4 size:(struct CGSize)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [self setupPosition:r2 anchorPoint:0x0 parent:r4 size:r5 z:r6];
    return;
}

-(void)setupPosition:(struct CGPoint)arg2 anchorPoint:(struct CGPoint)arg3 parent:(void *)arg4 size:(struct CGSize)arg5 z:(long long)arg6 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [self setPosition:r2];
    [self setAnchorPoint:r2];
    [r2 addChild:self z:r3];
    [self setContentSize:self];
    [self createSprite_MCC2Ds];
    return;
}

-(void)changeSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    [self contentSize];
    if (d9 == d0) {
            asm { fccmp      d8, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r19 setContentSize:r2];
            [r19 positionSprites];
    }
    return;
}

-(void)setupFromHorizontalStretchFrame:(void *)arg2 {
    [arg2 position];
    [arg2 anchorPoint];
    r21 = [arg2 parent];
    [arg2 contentSize];
    [self setupPosition:r21 anchorPoint:[arg2 zOrder] parent:r4 size:r5 z:r6];
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int8_t *)(int64_t *)&self->_cascadeColorEnabled = 0x1;
    [[&var_10 super] setColor:r2];
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    *(int8_t *)(int64_t *)&self->_cascadeOpacityEnabled = 0x1;
    [[&var_10 super] setOpacity:r2];
    return;
}

-(void *)leftSprite {
    r0 = [self getChildByTag:r2];
    return r0;
}

-(void *)rightSprite {
    r0 = [self getChildByTag:r2];
    return r0;
}

-(void *)centerSprite {
    r0 = [self getChildByTag:r2];
    return r0;
}

-(void)removeSprites {
    [[self getChildByTag:0x0] removeFromParentAndCleanup:r2];
    objc_msgSend([self getChildByTag:0x2], r21);
    objc_msgSend([self getChildByTag:0x4], r21);
    return;
}

-(void)didLoadFromCCB {
    [self setFrameDescription:self->_frameDescription];
    [[&var_20 super] didLoadFromCCB];
    return;
}

-(void *)frameDescription {
    r0 = self->_frameDescription;
    return r0;
}

-(void)setFrameDescription:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_frameDescription));
                    r0 = *(r19 + r21);
                    if (r0 != 0x0) {
                            [r0 release];
                    }
                    *(r19 + r21) = [r20 retain];
                    r0 = [HorizontalStretchFrameCache sharedInstance];
                    r0 = [r0 descriptionWithName:r20];
                    r0 = [r0 objectForKey:@"imageFrameName"];
                    r21 = r0;
                    [r19 setImgPrefix:[r0 stringByDeletingPathExtension]];
                    [r19 contentSize];
                    v8 = v0;
                    v9 = v1;
                    if (d8 == *(int128_t *)*_CGSizeZero) {
                            asm { fccmp      d9, d1, #0x0, eq };
                    }
                    if (!CPU_FLAGS & NE) {
                            r0 = [CCSpriteFrameCache sharedSpriteFrameCache];
                            r0 = [r0 spriteFrameByName:r21];
                            if (r0 != 0x0) {
                                    [[CCSprite spriteWithSpriteFrame:r0] contentSize];
                                    v8 = v0;
                                    v9 = v1;
                            }
                    }
                    [r19 position];
                    [r19 anchorPoint];
                    r20 = *(int8_t *)(int64_t *)&r19->_realOpacity;
                    r21 = *(int32_t *)(int64_t *)&r19->_realColor;
                    [r19 setupPosition:0x0 anchorPoint:r3 parent:r4 size:r5];
                    [r19 setPosition:0x0];
                    [r19 setAnchorPoint:0x0];
                    [r19 setOpacity:r20];
                    [r19 setColor:r21];
                    [r19 setContentSize:r2];
            }
    }
    return;
}

-(void *)imgPrefix {
    r0 = self->_imgPrefix;
    return r0;
}

-(void)setImgPrefix:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end