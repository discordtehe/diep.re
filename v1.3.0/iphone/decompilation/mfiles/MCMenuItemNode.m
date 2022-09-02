@implementation MCMenuItemNode

+(void *)itemFromNormalNode:(void *)arg2 selectedNode:(void *)arg3 {
    r0 = [self itemFromNormalNode:arg2 selectedNode:arg3 disabledNode:0x0 target:0x0 selector:0x0];
    return r0;
}

+(void *)itemFromNormalNode:(void *)arg2 selectedNode:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self itemFromNormalNode:arg2 selectedNode:arg3 disabledNode:0x0 target:arg4 selector:arg5];
    return r0;
}

+(void *)itemFromNormalNode:(void *)arg2 selectedNode:(void *)arg3 disabledNode:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self alloc];
    r0 = [r0 initFromNormalNode:arg2 selectedNode:arg3 disabledNode:arg4 target:arg5 selector:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithBlock:(void *)arg2 selectedBlock:(void *)arg3 unselectedBlock:(void *)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithBlock:arg2 selectedBlock:arg3 unselectedBlock:arg4];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setDefaultStateColors];
            [r19 setAnchorPoint:r2];
            *(int32_t *)(int64_t *)&r19->_normalNodeTag = 0x0;
            *(int32_t *)(int64_t *)&r19->_selectedNodeTag = 0xffffffffffffffff;
            *(int32_t *)(int64_t *)&r19->_disabledNodeTag = 0xffffffffffffffff;
    }
    r0 = r19;
    return r0;
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
            [r19 setDefaultStateColors];
            *(int32_t *)(int64_t *)&r19->_currentState = 0x0;
            [r19 setAnchorPoint:r2];
            *(int32_t *)(int64_t *)&r19->_normalNodeTag = 0x0;
            *(int32_t *)(int64_t *)&r19->_selectedNodeTag = 0xffffffffffffffff;
            *(int32_t *)(int64_t *)&r19->_disabledNodeTag = 0xffffffffffffffff;
    }
    r0 = r19;
    return r0;
}

-(void *)initFromNormalNode:(void *)arg2 selectedNode:(void *)arg3 disabledNode:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r31 = r31 - 0x50;
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
    r0 = [[&var_40 super] initWithTarget:arg5 selector:arg6];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_normalNodeTag = 0x0;
            *(int32_t *)(int64_t *)&r19->_selectedNodeTag = 0xffffffffffffffff;
            *(int32_t *)(int64_t *)&r19->_disabledNodeTag = 0xffffffffffffffff;
            [r19 setNormalNode:r22];
            [r19 setSelectedNode:r21];
            [r19 setDisabledNode:r20];
            [r19 setDefaultStateColors];
            [r19 storeOriginalColorsRecursively:r22];
            [r19 storeOriginalColorsRecursively:r21];
            [r19 storeOriginalColorsRecursively:r20];
            [r19->_normalNode setVisible:0x1];
            [r19->_selectedNode setVisible:0x0];
            [r19->_disabledNode setVisible:0x0];
            *(int32_t *)(int64_t *)&r19->_currentState = 0x0;
            [r19 setAnchorPoint:r2];
    }
    r0 = r19;
    return r0;
}

-(void)setDefaultStateColors {
    [self setNormalColor:0xffffffffffffffff];
    [self setSelectedColor:0xff7f7f7f];
    [self setDisabledColor:r2];
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
    r20 = (int64_t *)&self->_originalColors;
    r23 = *r20;
    r22 = r20 + 0x8;
    if (r23 != r22) {
            do {
                    [*(r23 + 0x20) release];
                    r8 = *(r23 + 0x8);
                    if (r8 != 0x0) {
                            do {
                                    r23 = r8;
                                    r8 = *r8;
                            } while (r8 != 0x0);
                    }
                    else {
                            r8 = r23 + 0x10;
                            r9 = *r8;
                            if (*r9 != r23) {
                                    do {
                                            r9 = *r8;
                                            r8 = r9 + 0x10;
                                            r23 = *r8;
                                    } while (*r23 != r9);
                            }
                            else {
                                    r23 = r9;
                            }
                    }
            } while (r23 != r22);
    }
    loc_10036a4f8(r20, *(r20 + 0x8));
    *(int128_t *)(r20 + 0x8) = 0x0;
    *(int128_t *)(r20 + 0x10) = 0x0;
    *r20 = r22;
    [[&var_40 super] dealloc];
    return;
}

-(void)setNormalColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_normalColor = r2;
    [self updateNodeBasedInState];
    return;
}

-(void)setSelectedColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_selectedColor = r2;
    [self updateNodeBasedInState];
    return;
}

-(void)setDisabledColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_disabledColor = r2;
    [self updateNodeBasedInState];
    return;
}

-(void)storeOriginalColorForNode:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto .l1;

loc_100368e18:
    r20 = r2;
    r19 = r0;
    if ([r20 conformsToProtocol:@protocol(CCRGBAProtocol)] == 0x0) goto .l1;

loc_100368e3c:
    r19 = (int64_t *)&r19->_originalColors;
    r8 = *(r19 + 0x8);
    if (r8 == 0x0) goto loc_100368e6c;

loc_100368e50:
    if (*(r8 + 0x20) > r20) goto loc_100368e64;

loc_100368e5c:
    if (CPU_FLAGS & NB) goto loc_100368e7c;

loc_100368e60:
    r8 = r8 + 0x8;
    goto loc_100368e64;

loc_100368e64:
    r8 = *r8;
    if (r8 != 0x0) goto loc_100368e50;

loc_100368e6c:
    [r20 retain];
    goto loc_100368e7c;

loc_100368e7c:
    [r20 color];
    r23 = [r20 color];
    r21 = [r20 color];
    [r20 opacity];
    r8 = r21 & 0xff0000;
    r9 = r23 & 0xff00;
    asm { bfxil      w9, w22, #0x0, #0x8 };
    r20 = r9 | r8;
    asm { bfi        w20, w0, #0x18, #0x8 };
    r0 = sub_10036a538(r19, &var_48, 0x100bd2118, &var_38);
    *(int32_t *)(r0 + 0x28) = r20;
    return;

.l1:
    return;
}

-(void)storeOriginalColorsRecursively:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x130;
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
            r19 = r0;
            [r0 storeOriginalColorForNode:r2];
            [CCLabelBMFont class];
            if (([r20 isKindOfClass:r2] & 0x1) == 0x0) {
                    var_110 = q0;
                    r0 = [r20 children];
                    r20 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r24 = *var_110;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_110 != r24) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [r19 storeOriginalColorsRecursively:r2];
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

-(void)setOriginalColorsRecursively:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x130;
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
            r19 = r0;
            [r0 setOriginalColorForNode:r2];
            [CCLabelBMFont class];
            if (([r20 isKindOfClass:r2] & 0x1) == 0x0) {
                    var_110 = q0;
                    r0 = [r20 children];
                    r20 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r24 = *var_110;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_110 != r24) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [r19 setOriginalColorsRecursively:r2];
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

-(void)setOriginalColorForNode:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto .l1;

loc_100369090:
    r19 = r2;
    r20 = (int64_t *)&r0->_originalColors;
    r8 = *(r20 + 0x8);
    if (r8 == 0x0) goto loc_1003690c4;

loc_1003690a8:
    if (*(r8 + 0x20) > r19) goto loc_1003690bc;

loc_1003690b4:
    if (CPU_FLAGS & NB) goto loc_1003690d4;

loc_1003690b8:
    r8 = r8 + 0x8;
    goto loc_1003690bc;

loc_1003690bc:
    r8 = *r8;
    if (r8 != 0x0) goto loc_1003690a8;

loc_1003690c4:
    [r0 storeOriginalColorForNode:r19];
    goto loc_1003690d4;

loc_1003690d4:
    if ([r19 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
            r0 = sub_10036a538(r20, &var_28, 0x100bd2118, &var_18);
            r2 = *(int16_t *)(r0 + 0x28);
            asm { bfi        x2, x8, #0x10, #0x8 };
            asm { bfi        x2, x8, #0x18, #0x8 };
            [r19 setColor:r2];
            [r19 setOpacity:r2];
    }
    return;

.l1:
    return;
}

-(void)removeFromOriginalColorsRecursively:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x130;
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
    var_E0 = r2;
    if (r2 == 0x0) goto loc_1003692a4;

loc_100369194:
    r19 = r0;
    r0 = (int64_t *)&r0->_originalColors;
    r8 = *(r0 + 0x8);
    if (r8 == 0x0) goto loc_1003691c8;

loc_1003691ac:
    if (*(r8 + 0x20) > r2) goto loc_1003691c0;

loc_1003691b8:
    if (CPU_FLAGS & NB) goto loc_1003691d0;

loc_1003691bc:
    r8 = r8 + 0x8;
    goto loc_1003691c0;

loc_1003691c0:
    r8 = *r8;
    if (r8 != 0x0) goto loc_1003691ac;

loc_1003691c8:
    r24 = 0x0;
    goto loc_1003691e0;

loc_1003691e0:
    var_110 = q0;
    r0 = [r2 children];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 removeFromOriginalColorsRecursively:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (r24 != 0x0) {
            [var_E0 release];
    }
    goto loc_1003692a4;

loc_1003692a4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1003691d0:
    r0 = sub_10036a65c(r0, &var_E0);
    r24 = 0x1;
    r2 = var_E0;
    goto loc_1003691e0;
}

-(void)showNode:(void *)arg2 withColor:(struct _ccColor4B)arg3 {
    memcpy(&r3, &arg3, 0x4);
    r2 = arg2;
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
    if (r2 != 0x0) {
            r20 = r3;
            r21 = r2;
            r19 = r0;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_normalNode));
            [*(r0 + r23) setVisible:0x0];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_selectedNode));
            [*(r19 + r24) setVisible:0x0];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_disabledNode));
            [*(r19 + r25) setVisible:0x0];
            r0 = *(r19 + r23);
            if (r0 != r21) {
                    if (*(r19 + r24) != r21) {
                            if (*(r19 + r25) != r21) {
                                    [r0 setVisible:0x1];
                            }
                            else {
                                    [r21 setVisible:0x1];
                            }
                    }
                    else {
                            [r21 setVisible:0x1];
                    }
            }
            else {
                    [r21 setVisible:0x1];
            }
            [r19 tintRecursively:r2 color:r3];
    }
    return;
}

-(void)setNormalNode:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_normalNode));
    if (*(self + r21) != 0x0) {
            [r19 setOriginalColorsRecursively:r2];
            [r19 removeFromOriginalColorsRecursively:*(r19 + r21)];
    }
    if (r20 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_normalNodeTag = [r20 tag];
            [r19 storeOriginalColorsRecursively:r20];
            if (([[r19 children] containsObject:r2] & 0x1) == 0x0) {
                    [r19 addChild:r2];
            }
            *(r19 + r21) = r20;
            r2 = r20;
            [r19 calculateAreaOfNode:r2];
            asm { fabd       d8, d2, d0 };
            asm { fabd       d9, d3, d1 };
            [r19 anchorPoint];
            [r19 anchorPoint];
            [r19 anchorPoint];
            [r19 anchorPoint];
            *(int128_t *)(int64_t *)&r19->occupiedArea = d0 * d8;
            *(int128_t *)((int64_t *)&r19->occupiedArea + 0x8) = d1 * d9;
            *(int128_t *)((int64_t *)&r19->occupiedArea + 0x10) = d8 * (0x3ff0000000000000 - d0);
            *(int128_t *)((int64_t *)&r19->occupiedArea + 0x18) = d9 * (0x3ff0000000000000 - d1);
            [r19 setContentSize:r2];
            [r19 centerChild:*(r19 + r21) inArea:r3];
    }
    return;
}

-(void)setSelectedNode:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedNode));
    if (*(self + r21) != 0x0) {
            [r20 setOriginalColorsRecursively:r2];
            [r20 removeFromOriginalColorsRecursively:*(r20 + r21)];
    }
    if (r19 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_selectedNodeTag = [r19 tag];
            [r20 storeOriginalColorsRecursively:r19];
            if (([[r20 children] containsObject:r2] & 0x1) == 0x0) {
                    [r20 addChild:r2];
            }
            *(r20 + r21) = r19;
            [r20 centerChild:r19 inArea:r3];
    }
    return;
}

-(void)tintRecursively:(void *)arg2 color:(struct _ccColor4B)arg3 {
    memcpy(&r3, &arg3, 0x4);
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
            r20 = r3;
            r21 = r2;
            r19 = r0;
            if ([r21 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
                    asm { ubfx       x24, x20, #0x18, #0x8 };
                    [r19 setOriginalColorForNode:r21];
                    r22 = @selector(color);
                    objc_msgSend(r21, r22);
                    asm { scvtf      s0, w8 };
                    r8 = 0x437f0000;
                    asm { fdiv       s0, s0, s8 };
                    asm { fcvtzs     w23, s0 };
                    objc_msgSend(r21, r22);
                    asm { ubfx       w8, w0, #0x8, #0x8 };
                    asm { ubfx       w9, w20, #0x8, #0x8 };
                    asm { scvtf      s0, w8 };
                    asm { fdiv       s0, s0, s8 };
                    asm { fcvtzs     w25, s0 };
                    objc_msgSend(r21, r22);
                    asm { ubfx       w8, w0, #0x10, #0x8 };
                    asm { ubfx       w9, w20, #0x10, #0x8 };
                    asm { scvtf      s0, w8 };
                    asm { fdiv       s0, s0, s8 };
                    asm { fcvtzs     w8, s0 };
                    asm { bfi        w23, w25, #0x8, #0x8 };
                    asm { bfi        w23, w8, #0x10, #0x8 };
                    asm { bfi        w23, w8, #0x18, #0x8 };
                    [r21 setColor:r23];
                    r24 * [r21 opacity];
                    asm { scvtf      s0, w8 };
                    asm { fdiv       s0, s0, s8 };
                    asm { fcvtzs     w2, s0 };
                    [r21 setOpacity:r2];
            }
            [CCLabelBMFont class];
            if (([r21 isKindOfClass:r2] & 0x1) == 0x0) {
                    var_120 = q0;
                    r0 = [r21 children];
                    r21 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r25 = *var_120;
                            r26 = r20 & 0xffffffff;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_120 != r25) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            r20 = r20 & 0xffffffff00000000 | r26;
                                            [r19 tintRecursively:r2 color:r3];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDisabledNode:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_disabledNode));
    if (*(self + r21) != 0x0) {
            [r20 setOriginalColorsRecursively:r2];
            [r20 removeFromOriginalColorsRecursively:*(r20 + r21)];
    }
    if (r19 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_disabledNodeTag = [r19 tag];
            [r20 storeOriginalColorsRecursively:r19];
            if (([[r20 children] containsObject:r2] & 0x1) == 0x0) {
                    [r20 addChild:r2];
            }
            *(r20 + r21) = r19;
            [r20 centerChild:r19 inArea:r3];
    }
    return;
}

-(void)selected {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            [[&var_20 super] selected];
            *(int32_t *)(int64_t *)&r0->_currentState = 0x1;
            [r0 updateNodeBasedInState];
    }
    return;
}

-(void)centerChild:(void *)arg2 inArea:(struct pair<CGPoint, CGPoint>)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [self calculateAreaOfNode:r2];
    [arg2 position];
    [arg2 position];
    [arg2 setPosition:r2];
    return;
}

-(void)unselected {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            [[&var_20 super] unselected];
            *(int32_t *)(int64_t *)&r0->_currentState = 0x0;
            [r0 updateNodeBasedInState];
    }
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != r2) {
            r19 = r0;
            [[&var_20 super] setIsEnabled:r2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentState));
            r9 = 0x2;
            if (r2 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r9 = 0x2;
                    }
                    else {
                            r9 = 0x0;
                    }
            }
            *(int32_t *)(r19 + r8) = r9;
            [r19 updateNodeBasedInState];
    }
    return;
}

-(void)updateNodeBasedInState {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentState));
    r8 = *(int32_t *)(r0 + r8);
    if (r8 != 0x2) {
            if (r8 == 0x1) {
                    if (r0->_selectedNode == 0x0) {
                            r2 = r0->_normalNode;
                    }
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedColor));
            }
            else {
                    r2 = r0->_normalNode;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_normalColor));
            }
    }
    else {
            if (r0->_disabledNode == 0x0) {
                    r2 = r0->_normalNode;
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_disabledColor));
    }
    [r0 showNode:r2 withColor:*(int32_t *)(r0 + r8)];
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
    r22 = (int64_t *)&self->_normalNode;
    if (*r22 != arg2) {
            r22 = (int64_t *)&r21->_selectedNode;
            if (*r22 != r20) {
                    r22 = (int64_t *)&r21->_disabledNode;
                    if (*r22 == r20) {
                            [r21 setOriginalColorsRecursively:r20];
                            [r21 removeFromOriginalColorsRecursively:*r22];
                            *r22 = 0x0;
                    }
            }
            else {
                    [r21 setOriginalColorsRecursively:r20];
                    [r21 removeFromOriginalColorsRecursively:*r22];
                    *r22 = 0x0;
            }
    }
    else {
            [r21 setOriginalColorsRecursively:r20];
            [r21 removeFromOriginalColorsRecursively:*r22];
            *r22 = 0x0;
    }
    [[&var_30 super] removeChild:r20 cleanup:r19];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    [self removeChild:self->_normalNode cleanup:arg2];
    [self removeChild:self->_selectedNode cleanup:arg2];
    [self removeChild:self->_disabledNode cleanup:arg2];
    return;
}

-(struct pair<CGPoint, CGPoint>)calculateAreaOfNode:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r19 = arg2;
    r20 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    var_160 = q0;
    r0 = [arg2 children];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_160;
            d11 = 0x0;
            d14 = 0x0;
            d10 = 0x0;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_160 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 calculateAreaOfNode:r2];
                            if (d0 < 0x0) {
                                    asm { fccmp      d0, d11, #0x0, mi };
                            }
                            if (CPU_FLAGS & S) {
                                    asm { fcsel      d13, d0, d13, mi };
                            }
                            if (d1 < 0x0) {
                                    asm { fccmp      d1, d11, #0x0, mi };
                            }
                            if (CPU_FLAGS & S) {
                                    asm { fcsel      d15, d1, d15, mi };
                            }
                            [r19 contentSize];
                            if (d9 > d0) {
                                    [r19 contentSize];
                                    d0 = d9 - d0;
                                    if (d0 > d14) {
                                            [r19 contentSize];
                                            d14 = d9 - d0;
                                    }
                            }
                            [r19 contentSize];
                            if (d8 > d1) {
                                    [r19 contentSize];
                                    d0 = d8 - d1;
                                    if (d0 > d10) {
                                            [r19 contentSize];
                                            d10 = d8 - d1;
                                    }
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            d14 = 0x0;
            d10 = 0x0;
    }
    d13 = 0x0;
    [r19 position];
    var_178 = d0;
    [r19 contentSize];
    [r19 anchorPoint];
    [r19 scaleX];
    asm { fcvt       d0, s0 };
    d0 = d8 * d0;
    if (d13 >= d0) {
            r23 = @selector(scaleX);
            [r19 contentSize];
            [r19 anchorPoint];
            objc_msgSend(r19, r23);
            asm { fcvt       d0, s0 };
            d13 = d8 * d0;
    }
    d15 = 0x0;
    [r19 position];
    var_180 = d1;
    [r19 contentSize];
    [r19 anchorPoint];
    d8 = d1 * -d1;
    [r19 scaleY];
    asm { fcvt       d0, s0 };
    d0 = d8 * d0;
    if (d15 >= d0) {
            r24 = @selector(scaleY);
            [r19 contentSize];
            [r19 anchorPoint];
            d8 = d1 * -d1;
            objc_msgSend(r19, r24);
            asm { fcvt       d0, s0 };
            d15 = d8 * d0;
    }
    r23 = @selector(scaleX);
    [r19 position];
    [r19 contentSize];
    [r19 anchorPoint];
    d11 = d11 * (0x3ff0000000000000 - d0);
    objc_msgSend(r19, r23);
    asm { fcvt       d0, s0 };
    d0 = d11 * d0;
    if (d14 <= d0) {
            r23 = @selector(scaleX);
            [r19 contentSize];
            [r19 anchorPoint];
            d11 = d11 * (0x3ff0000000000000 - d0);
            objc_msgSend(r19, r23);
            asm { fcvt       d0, s0 };
            d14 = d11 * d0;
    }
    r24 = @selector(scaleY);
    [r19 position];
    [r19 contentSize];
    [r19 anchorPoint];
    d0 = 0x3ff0000000000000 - d1;
    d12 = d12 * d0;
    r0 = objc_msgSend(r19, r24);
    asm { fcvt       d0, s0 };
    if (d10 <= d12 * d0) {
            r24 = @selector(scaleY);
            [r19 contentSize];
            [r19 anchorPoint];
            d0 = 0x3ff0000000000000 - d1;
            d9 = d12 * d0;
            r0 = objc_msgSend(r19, r24);
            asm { fcvt       d0, s0 };
            d10 = d9 * d0;
    }
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)didLoadFromCCBAfterChildren {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self getChildByTag:r2];
    if (r0 != 0x0) goto loc_10036a340;

loc_10036a30c:
    if ([r19 children] == 0x0) goto loc_10036a354;

loc_10036a324:
    r0 = [r19 children];
    r0 = [r0 objectAtIndex:r2];
    goto loc_10036a340;

loc_10036a340:
    [r19 setNormalNode:r0];
    goto loc_10036a354;

loc_10036a354:
    if (sign_extend_64(*(int32_t *)(int64_t *)&r19->_selectedNodeTag) != -0x1) {
            r0 = [r19 getChildByTag:r2];
            if (r0 != 0x0) {
                    [r19 setSelectedNode:r0];
            }
    }
    if (sign_extend_64(*(int32_t *)(int64_t *)&r19->_disabledNodeTag) != -0x1) {
            r0 = [r19 getChildByTag:r2];
            if (r0 != 0x0) {
                    [r19 setDisabledNode:r0];
            }
    }
    [r19 updateNodeBasedInState];
    return;
}

-(void *)normalNode {
    r0 = self->_normalNode;
    return r0;
}

-(void *)selectedNode {
    r0 = self->_selectedNode;
    return r0;
}

-(void *)disabledNode {
    r0 = self->_disabledNode;
    return r0;
}

-(int)normalNodeTag {
    r0 = *(int32_t *)(int64_t *)&self->_normalNodeTag;
    return r0;
}

-(int)selectedNodeTag {
    r0 = *(int32_t *)(int64_t *)&self->_selectedNodeTag;
    return r0;
}

-(void)setNormalNodeTag:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_normalNodeTag = arg2;
    return;
}

-(void)setSelectedNodeTag:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_selectedNodeTag = arg2;
    return;
}

-(int)disabledNodeTag {
    r0 = *(int32_t *)(int64_t *)&self->_disabledNodeTag;
    return r0;
}

-(struct _ccColor4B)normalColor {
    r0 = *(int32_t *)(int64_t *)&self->_normalColor;
    return r0;
}

-(void)setDisabledNodeTag:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_disabledNodeTag = arg2;
    return;
}

-(struct _ccColor4B)selectedColor {
    r0 = *(int32_t *)(int64_t *)&self->_selectedColor;
    return r0;
}

-(struct _ccColor4B)disabledColor {
    r0 = *(int32_t *)(int64_t *)&self->_disabledColor;
    return r0;
}

-(int)currentState {
    r0 = *(int32_t *)(int64_t *)&self->_currentState;
    return r0;
}

-(void).cxx_destruct {
    r0 = (int64_t *)&self->_originalColors;
    r1 = *(r0 + 0x8);
    if (r1 != 0x0) {
            loc_10036a4f8(r0, *r1);
            loc_10036a4f8(r20, *(r1 + 0x8));
            operator delete(r1);
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_originalColors));
    *(0x10 + r0 + r8) = 0x0;
    *(0x8 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x8 + r0 + r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(occupiedArea));
    *(int128_t *)(r0 + r8) = q0;
    *(int128_t *)(0x10 + r0 + r8) = q0;
    return r0;
}

@end