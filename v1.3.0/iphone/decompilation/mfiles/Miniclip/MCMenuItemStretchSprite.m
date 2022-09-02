@implementation MCMenuItemStretchSprite

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setDisabledHorizontalStretchFrame:0x0];
            [r19 setDisabledHorizontalStretchFrameDescription:0x0];
            [r19 setHorizontalStretchFrame:0x0];
            [r19 setHorizontalStretchFrameDescription:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self setHorizontalStretchFrame:0x0];
    [self setHorizontalStretchFrameDescription:0x0];
    [self setDisabledHorizontalStretchFrameDescription:0x0];
    [self setDisabledHorizontalStretchFrame:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_30 super] setOpacity:r2];
    [[self horizontalStretchFrame] setOpacity:arg2];
    [[self disabledHorizontalStretchFrame] setOpacity:arg2];
    return;
}

-(unsigned char)opacity {
    r0 = [self horizontalStretchFrame];
    r0 = [r0 opacity];
    return r0;
}

-(struct _ccColorThreeB)color {
    r0 = [self horizontalStretchFrame];
    r0 = [r0 color];
    r0 = r0 & 0xffffffff;
    return r0;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_30 super] setColor:r2 & 0xffffffff];
    [[self horizontalStretchFrame] setColor:r2 & 0xffffffff];
    [[self disabledHorizontalStretchFrame] setColor:r2 & 0xffffffff];
    return;
}

-(void)setHorizontalStretchFrameDescription:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionName));
                    *(r19 + r23) = r20;
                    r21 = [[[HorizontalStretchFrameCache sharedInstance] descriptionWithName:r20] objectForKey:@"imageFrameName"];
                    if ([r19 horizontalStretchFrame] != 0x0) {
                            [[r19 horizontalStretchFrame] setImgPrefix:[r21 stringByDeletingPathExtension]];
                    }
                    else {
                            [r19 setHorizontalStretchFrame:[HorizontalStretchFrame horizontalStretchFrameWithPrefix:[r21 stringByDeletingPathExtension]]];
                            r3 = 0xffffffffffffffff;
                            [r19 addChild:r2 z:r3];
                    }
                    [[r19 horizontalStretchFrame] setFrameDescription:*(r19 + r23)];
                    [r19 contentSize];
                    v8 = v0;
                    v9 = v1;
                    if (d8 == *(int128_t *)*_CGSizeZero) {
                            asm { fccmp      d9, d1, #0x0, eq };
                    }
                    if (!CPU_FLAGS & NE) {
                            [[CCSprite spriteWithSpriteFrameName:r21] contentSize];
                            v8 = v0;
                            v9 = v1;
                    }
                    r0 = [r19 horizontalStretchFrame];
                    [r0 setupPosition:0x0 anchorPoint:r3 parent:r4 size:r5];
                    [r19 setContentSize:r2];
            }
    }
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    [[&var_50 super] setContentSize:r2];
    if ([r19 horizontalStretchFrame] != 0x0) {
            [r19 color];
            [r19 horizontalStretchFrame];
            [r19 contentSize];
            [r20 changeSize:r2];
            [r19 setColor:r2];
    }
    if ([r19 disabledHorizontalStretchFrame] != 0x0) {
            [r19 color];
            [r19 disabledHorizontalStretchFrame];
            [r19 contentSize];
            [r20 changeSize:r2];
            [r19 setColor:r2];
    }
    return;
}

-(void)setDisabledHorizontalStretchFrameDescription:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_disabledDescriptionName));
                    *(r19 + r23) = r20;
                    r21 = [[[HorizontalStretchFrameCache sharedInstance] descriptionWithName:r20] objectForKey:@"imageFrameName"];
                    if ([r19 disabledHorizontalStretchFrame] != 0x0) {
                            [[r19 disabledHorizontalStretchFrame] setImgPrefix:[r21 stringByDeletingPathExtension]];
                    }
                    else {
                            [r19 setDisabledHorizontalStretchFrame:[HorizontalStretchFrame horizontalStretchFrameWithPrefix:[r21 stringByDeletingPathExtension]]];
                            r3 = 0xffffffffffffffff;
                            [r19 addChild:r2 z:r3];
                    }
                    [[r19 disabledHorizontalStretchFrame] setFrameDescription:*(r19 + r23)];
                    [r19 contentSize];
                    v8 = v0;
                    v9 = v1;
                    if (d8 == *(int128_t *)*_CGSizeZero) {
                            asm { fccmp      d9, d1, #0x0, eq };
                    }
                    if (!CPU_FLAGS & NE) {
                            [[CCSprite spriteWithSpriteFrameName:r21] contentSize];
                            v8 = v0;
                            v9 = v1;
                    }
                    r0 = [r19 disabledHorizontalStretchFrame];
                    [r0 setupPosition:0x0 anchorPoint:r3 parent:r4 size:r5];
                    [r19 setContentSize:r2];
            }
    }
    return;
}

-(void)setSelectedHorizontalStretchFrameDescription:(void *)arg2 {
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
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r19->_selectedDescriptionName = r20;
                    r21 = [[[HorizontalStretchFrameCache sharedInstance] descriptionWithName:r20] objectForKey:@"imageFrameName"];
                    if ([r19 selectedHorizontalStretchFrame] != 0x0) {
                            [[r19 selectedHorizontalStretchFrame] setImgPrefix:[r21 stringByDeletingPathExtension]];
                    }
                    else {
                            [r19 setSelectedHorizontalStretchFrame:[HorizontalStretchFrame horizontalStretchFrameWithPrefix:[r21 stringByDeletingPathExtension]]];
                            r3 = 0xffffffffffffffff;
                            [r19 addChild:r2 z:r3];
                    }
                    [[r19 selectedHorizontalStretchFrame] setFrameDescription:r19->_disabledDescriptionName];
                    [r19 contentSize];
                    v8 = v0;
                    v9 = v1;
                    if (d8 == *(int128_t *)*_CGSizeZero) {
                            asm { fccmp      d9, d1, #0x0, eq };
                    }
                    if (!CPU_FLAGS & NE) {
                            [[CCSprite spriteWithSpriteFrameName:r21] contentSize];
                            v8 = v0;
                            v9 = v1;
                    }
                    r0 = [r19 selectedHorizontalStretchFrame];
                    [r0 setupPosition:0x0 anchorPoint:r3 parent:r4 size:r5];
                    [r19 setContentSize:r2];
            }
    }
    return;
}

-(void)didLoadFromCCB {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_descriptionName != 0x0) {
            [r19 setHorizontalStretchFrameDescription:r2];
    }
    if (r19->_disabledDescriptionName != 0x0) {
            [r19 setDisabledHorizontalStretchFrameDescription:r2];
    }
    if (r19->_selectedDescriptionName != 0x0) {
            [r19 setSelectedHorizontalStretchFrameDescription:r2];
    }
    [r19 setIsEnabled:r2];
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [self isEnabled];
    [[&var_30 super] setIsEnabled:r2];
    if (arg2 == 0x0) goto loc_1003632b8;

loc_100363278:
    r0 = [r19 horizontalStretchFrame];
    r20 = @selector(setVisible:);
    objc_msgSend(r0, r20);
    r1 = @selector(disabledHorizontalStretchFrame);
    r0 = r19;
    goto loc_1003632a8;

loc_1003632a8:
    r0 = objc_msgSend(r0, r1);
    r1 = r20;
    goto loc_100363308;

loc_100363308:
    objc_msgSend(r0, r1);
    objc_msgSend([r19 selectedHorizontalStretchFrame], r20);
    return;

.l1:
    return;

loc_1003632b8:
    if ([r19 disabledHorizontalStretchFrame] == 0x0) goto loc_10036333c;

loc_1003632d0:
    r0 = [r19 horizontalStretchFrame];
    r20 = @selector(setVisible:);
    objc_msgSend(r0, r20);
    r0 = [r19 disabledHorizontalStretchFrame];
    r1 = r20;
    goto loc_100363308;

loc_10036333c:
    if (r20 == 0x0) goto .l1;

loc_100363340:
    r0 = [r19 horizontalStretchFrame];
    r20 = @selector(setVisible:);
    objc_msgSend(r0, r20);
    r0 = r19;
    r1 = @selector(disabledHorizontalStretchFrame);
    goto loc_1003632a8;
}

-(void)unselected {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self selectedHorizontalStretchFrame] != 0x0) {
            [[r19 horizontalStretchFrame] setVisible:r2];
            objc_msgSend([r19 selectedHorizontalStretchFrame], r21);
    }
    [[&var_30 super] unselected];
    return;
}

-(void)selected {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self selectedHorizontalStretchFrame] != 0x0) {
            [[r19 horizontalStretchFrame] setVisible:r2];
            objc_msgSend([r19 selectedHorizontalStretchFrame], r21);
    }
    [[&var_30 super] selected];
    return;
}

-(void)applyNormalImageColorMultiplier:(float)arg2 {
    [self applyNormalImageColorMultiplierRecursive:self node:r3];
    return;
}

-(void *)horizontalStretchFrameDescription {
    r0 = self->_descriptionName;
    return r0;
}

-(void *)horizontalStretchFrame {
    r0 = self->_horizontalStretchFrame;
    return r0;
}

-(void)setHorizontalStretchFrame:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)applyNormalImageColorMultiplierRecursive:(float)arg2 node:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x140;
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
    if (r2 != 0x0) {
            r20 = r2;
            v8 = v0;
            r19 = r0;
            if ([r20 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
                    r21 = [NSNumber numberWithUnsignedInteger:r20];
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(mColorsDict));
                    r0 = *(r19 + r25);
                    r0 = [r0 objectForKey:r2];
                    if (r0 != 0x0) {
                            r22 = [r0 color];
                            asm { ubfx       x26, x0, #0x8, #0x18 };
                            asm { ubfx       x27, x0, #0x10, #0x10 };
                    }
                    else {
                            [CCLayerColor class];
                            if ([r20 isKindOfClass:r2] != 0x0) {
                                    r0 = [r20 color];
                                    r22 = r0;
                                    asm { ubfx       x26, x0, #0x8, #0x18 };
                                    asm { ubfx       x27, x0, #0x10, #0x10 };
                                    r28 = r0 & 0xff000000;
                            }
                            else {
                                    r28 = 0x0;
                                    r22 = 0xff;
                                    r26 = 0xff;
                                    r27 = 0xff;
                            }
                            [[[ButtonColor alloc] initWithColor:r28 | r22 & 0xff | (r26 & 0xff) * 0x100 | (r27 & 0xff) * 0x10000] autorelease];
                            [*(r19 + r25) setObject:r2 forKey:r3];
                    }
                    asm { ucvtf      s0, w8 };
                    s0 = s0 * s8;
                    asm { fcvtzs     w2, s0 };
                    asm { ucvtf      s0, w8 };
                    asm { fcvtzs     w8, s0 };
                    asm { ucvtf      s0, w9 };
                    asm { fcvtzs     w9, s0 };
                    asm { bfi        w2, w8, #0x8, #0x8 };
                    asm { bfi        w2, w9, #0x10, #0x8 };
                    asm { bfi        w2, w9, #0x18, #0x8 };
                    [r20 setColor:r2];
            }
            [CCLabelBMFont class];
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = r19->_descriptionName;
                    if (r0 == 0x0 || [r0 isEqualToString:r2] != 0x0) {
                            var_120 = q0;
                            r0 = [r20 children];
                            r20 = r0;
                            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    r24 = *var_120;
                                    do {
                                            r26 = 0x0;
                                            do {
                                                    if (*var_120 != r24) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    [r19 applyNormalImageColorMultiplierRecursive:r2 node:r3];
                                                    r26 = r26 + 0x1;
                                            } while (r26 < r22);
                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r22 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
            else {
                    var_120 = q0;
                    r0 = [r20 children];
                    r20 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r24 = *var_120;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_120 != r24) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [r19 applyNormalImageColorMultiplierRecursive:r2 node:r3];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)disabledHorizontalStretchFrameDescription {
    r0 = self->_disabledDescriptionName;
    return r0;
}

-(void *)disabledHorizontalStretchFrame {
    r0 = self->_disabledHorizontalStretchFrame;
    return r0;
}

-(void)setDisabledHorizontalStretchFrame:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)selectedHorizontalStretchFrameDescription {
    r0 = self->_selectedDescriptionName;
    return r0;
}

-(void *)selectedHorizontalStretchFrame {
    r0 = self->_selectedHorizontalStretchFrame;
    return r0;
}

-(void)setSelectedHorizontalStretchFrame:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end