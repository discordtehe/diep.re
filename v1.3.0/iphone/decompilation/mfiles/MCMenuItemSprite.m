@implementation MCMenuItemSprite

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->mColorsDict = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(int8_t *)(int64_t *)&r19->mDarkenedOnDisable = 0x1;
            *(int32_t *)(int64_t *)&r19->mDarkenMultiplayer = 0x3f000000;
            [r19 setIsEnabled:[r19 isEnabled]];
            [r19 setColor:r2];
    }
    r0 = r19;
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 target:arg4 selector:arg5];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 target:0x0 selector:0x0];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 target:arg5 selector:arg6];
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mColorsDict));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] initWithTarget:arg5 selector:arg6];
    r19 = r0;
    if (r0 != 0x0) {
            r19->mColorsDict = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            [r19 setNormalImage:r22];
            [r19 setSelectedImage:r21];
            [r19 setDisabledImage:r20];
            [r19->normalImage_ contentSize];
            [r19 setContentSize:r20];
            *(int8_t *)(int64_t *)&r19->mDarkenedOnDisable = 0x1;
            *(int32_t *)(int64_t *)&r19->mDarkenMultiplayer = 0x3f000000;
            [r19 isEnabled];
            [r19 setIsEnabled:r2];
    }
    r0 = r19;
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 block:(void *)arg4 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 block:arg4];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 block:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] initWithBlock:arg5];
    r19 = r0;
    if (r0 != 0x0) {
            r19->mColorsDict = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            [r19 setNormalImage:r22];
            [r19 setSelectedImage:r21];
            [r19 setDisabledImage:r20];
            [r19->normalImage_ contentSize];
            [r19 setContentSize:r20];
            *(int8_t *)(int64_t *)&r19->mDarkenedOnDisable = 0x1;
            *(int32_t *)(int64_t *)&r19->mDarkenMultiplayer = 0x3f000000;
            [r19 isEnabled];
            [r19 setIsEnabled:r2];
    }
    r0 = r19;
    return r0;
}

+(void)initialize {
    *0x1011d3408 = [[NSMutableArray arrayWithObjects:[NSNumber numberWithUnsignedInteger:[CCLabelBMFont class]]] retain];
    [[&var_30 super] initialize];
    return;
}

+(void)addColorRecursionException:(void *)arg2 {
    r19 = *0x1011d3408;
    [NSNumber numberWithUnsignedInteger:arg2];
    [r19 addObject:r2];
    return;
}

-(void)setSelectedImage:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(selectedImage_));
    if (*(r0 + r21) != r2) {
            [r2 setAnchorPoint:r2];
            [r2 setVisible:0x0];
            [r0 removeChild:*(r0 + r21) cleanup:0x1];
            [r0 addChild:r2];
            *(r20 + r21) = r19;
    }
    return;
}

-(void)setDisabledImage:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(disabledImage_));
    if (*(r0 + r21) != r2) {
            [r2 setAnchorPoint:r2];
            [r2 setVisible:0x0];
            [r0 removeChild:*(r0 + r21) cleanup:0x1];
            [r0 addChild:r2];
            *(r20 + r21) = r19;
    }
    return;
}

-(void)setNormalImage:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x170;
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
    r19 = sign_extend_64(*(int32_t *)ivar_offset(normalImage_));
    var_128 = self;
    if (*(self + r19) != r2) {
            [r2 setAnchorPoint:r2];
            [r2 setVisible:0x1];
            [var_128 removeChild:*(var_128 + r19) cleanup:0x1];
            [var_128 addChild:r2];
            *(var_128 + r19) = r2;
            [r2 contentSize];
            [var_128 setContentSize:r2];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mColorsDict));
            [*(var_128 + r21) removeAllObjects];
            r27 = *(var_128 + r21);
            var_130 = r21;
            [[[ButtonColor alloc] initWithColor:[*(var_128 + r19) color] & 0xffffffff] autorelease];
            [NSNumber numberWithUnsignedInteger:*(var_128 + r19)];
            [r27 setObject:r2 forKey:r3];
            if ((sub_1002df6c8() & 0x1) == 0x0) {
                    var_110 = q0;
                    r0 = *(var_128 + r19);
                    r0 = [r0 children];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_158 = r1;
                    var_150 = r0;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r28 = r0;
                            r21 = *var_110;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r21) {
                                                    objc_enumerationMutation(var_150);
                                            }
                                            var_148 = @selector(initWithColor:);
                                            r19 = *(var_118 + r22 * 0x8);
                                            [ButtonColor alloc];
                                            [r19 color];
                                            asm { bfxil      x27, x0, #0x0, #0x20 };
                                            objc_msgSend(objc_msgSend(r20, var_148), r23);
                                            objc_msgSend(@class(NSNumber), r24);
                                            objc_msgSend(r26, r25);
                                            r22 = r22 + 0x1;
                                    } while (r22 < r28);
                                    r0 = objc_msgSend(var_150, var_158);
                                    r28 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [self->normalImage_ setOpacity:r2];
    [self->selectedImage_ setOpacity:arg2];
    [self->disabledImage_ setOpacity:arg2];
    return;
}

-(unsigned char)opacity {
    r0 = self->normalImage_;
    r0 = [r0 opacity];
    return r0;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [self->normalImage_ setColor:r2 & 0xffffffff];
    [self->selectedImage_ setColor:r2 & 0xffffffff];
    [self->disabledImage_ setColor:r2 & 0xffffffff];
    return;
}

-(struct _ccColorThreeB)color {
    r0 = self->normalImage_;
    r0 = [r0 color];
    r0 = r0 & 0xffffffff;
    return r0;
}

-(void)applyNormalImageColorMultiplier:(float)arg2 {
    [self applyNormalImageColorMultiplierRecursive:self->normalImage_ node:r3];
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
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(mColorsDict));
                    r0 = *(r19 + r23);
                    r0 = [r0 objectForKey:r21];
                    if (r0 != 0x0) {
                            r22 = [r0 color];
                    }
                    else {
                            r22 = [r20 color];
                            [[[ButtonColor alloc] initWithColor:r22 & 0xffffffff] autorelease];
                            [*(r19 + r23) setObject:r2 forKey:r3];
                    }
                    asm { scvtf      s0, w8 };
                    s0 = s0 * s8;
                    asm { fcvtzs     w2, s0 };
                    asm { ubfx       w8, w22, #0x8, #0x8 };
                    asm { scvtf      s0, w8 };
                    asm { fcvtzs     w8, s0 };
                    asm { ubfx       w9, w22, #0x10, #0x8 };
                    asm { scvtf      s0, w9 };
                    asm { fcvtzs     w9, s0 };
                    asm { bfi        w2, w8, #0x8, #0x8 };
                    asm { bfi        w2, w9, #0x10, #0x8 };
                    asm { bfi        w2, w9, #0x18, #0x8 };
                    [r20 setColor:r2];
            }
            if ((sub_1002df6c8() & 0x1) == 0x0) {
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

-(void)selected {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r19 = r0;
            [[&var_30 super] selected];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(selectedImage_));
            r8 = *(r19 + r21);
            r0 = r19->normalImage_;
            r1 = @selector(setVisible:);
            if (r8 != 0x0) {
                    objc_msgSend(r0, r1);
                    objc_msgSend(*(r19 + r21), r20);
                    objc_msgSend(r19->disabledImage_, r20);
            }
            else {
                    objc_msgSend(r0, r1);
                    objc_msgSend(*(r19 + r21), r20);
                    objc_msgSend(r19->disabledImage_, r20);
                    [r19 applyNormalImageColorMultiplier:0x0];
            }
    }
    return;
}

-(void)unselected {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r19 = r0;
            [[&var_30 super] unselected];
            [r19->normalImage_ setVisible:0x1];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(selectedImage_));
            [*(r19 + r21) setVisible:0x0];
            [r19->disabledImage_ setVisible:0x0];
            if (*(r19 + r21) == 0x0) {
                    [r19 applyNormalImageColorMultiplier:0x0];
            }
    }
    return;
}

-(void)resetNormalImageColor {
    [self applyNormalImageColorMultiplier:r2];
    return;
}

-(bool)simulateTouch {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isEnabled];
    if (r0 != 0x0) {
            r0 = [r19 visible];
            if (r0 != 0x0) {
                    [r19 activate];
                    r0 = 0x1;
            }
    }
    return r0;
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
    [[&var_30 super] setIsEnabled:r2];
    if (arg2 == 0x0) goto loc_1002e024c;

loc_1002e01e0:
    [r19->normalImage_ setVisible:0x1];
    [r19->selectedImage_ setVisible:0x0];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(disabledImage_));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            [r19 applyNormalImageColorMultiplier:0x0];
            r0 = *(r19 + r21);
    }
    r1 = @selector(setVisible:);
    goto loc_1002e02a0;

loc_1002e02a0:
    objc_msgSend(r0, r1);
    return;

loc_1002e024c:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(disabledImage_));
    r8 = *(r19 + r21);
    r0 = r19->normalImage_;
    r1 = @selector(setVisible:);
    if (r8 == 0x0) goto loc_1002e02b8;

loc_1002e0274:
    objc_msgSend(r0, r1);
    objc_msgSend(r19->selectedImage_, r20);
    r0 = *(r19 + r21);
    r1 = r20;
    goto loc_1002e02a0;

loc_1002e02b8:
    objc_msgSend(r0, r1);
    objc_msgSend(r19->selectedImage_, r20);
    objc_msgSend(*(r19 + r21), r20);
    [r19 applyNormalImageColorMultiplier:0x0];
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
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
    r22 = (int64_t *)&self->normalImage_;
    if (*r22 != arg2) {
            r22 = (int64_t *)&r21->selectedImage_;
            if (*r22 != r20) {
                    r22 = (int64_t *)&r21->disabledImage_;
                    if (*r22 == r20) {
                            *r22 = 0x0;
                    }
            }
            else {
                    *r22 = 0x0;
            }
    }
    else {
            [r21 applyNormalImageColorMultiplierRecursive:r20 node:r3];
            *r22 = 0x0;
    }
    [[&var_30 super] removeChild:r20 cleanup:r19];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(normalImage_));
    [self applyNormalImageColorMultiplierRecursive:*(self + r21) node:r3];
    [[&var_30 super] removeAllChildrenWithCleanup:arg2];
    *(self + r21) = 0x0;
    self->selectedImage_ = 0x0;
    self->disabledImage_ = 0x0;
    return;
}

-(void)setNormalSpriteFrame:(void *)arg2 {
    [self setNormalImage:[CCSprite spriteWithSpriteFrame:arg2]];
    return;
}

-(void)setSelectedSpriteFrame:(void *)arg2 {
    [self setSelectedImage:[CCSprite spriteWithSpriteFrame:arg2]];
    return;
}

-(void)setDisabledSpriteFrame:(void *)arg2 {
    [self setDisabledImage:[CCSprite spriteWithSpriteFrame:arg2]];
    return;
}

-(void *)normalImage {
    r0 = self->normalImage_;
    return r0;
}

-(void *)disabledImage {
    r0 = self->disabledImage_;
    return r0;
}

-(void *)selectedImage {
    r0 = self->selectedImage_;
    return r0;
}

-(bool)darkenedOnDisable {
    r0 = *(int8_t *)(int64_t *)&self->mDarkenedOnDisable;
    return r0;
}

-(void)setDarkenedOnDisable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mDarkenedOnDisable = arg2;
    return;
}

-(float)darkenMultiplayer {
    r0 = self;
    return r0;
}

-(void)setDarkenMultiplayer:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mDarkenMultiplayer = s0;
    return;
}

@end