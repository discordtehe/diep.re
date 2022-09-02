@implementation MCMenuItemNodeRGBAStatic

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
    r31 = r31 - 0x50;
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
            *(int8_t *)(int64_t *)&r19->_cascadeColorEnabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_cascadeOpacityEnabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_pickOnChildren = 0x0;
            *(int8_t *)(int64_t *)&r19->_needToUpdatePickingAreas = 0x0;
            *(int8_t *)(int64_t *)&r19->_ignoreInvisibleClasses = 0x0;
            r19->_classesToIgnore = [[NSArray alloc] initWithObjects:@"CCNode"];
            [r19 updateNodeBasedInState];
    }
    r0 = r19;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
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
            *(int8_t *)(int64_t *)&r19->_cascadeColorEnabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_cascadeOpacityEnabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_pickOnChildren = 0x0;
            *(int8_t *)(int64_t *)&r19->_needToUpdatePickingAreas = 0x0;
            *(int8_t *)(int64_t *)&r19->_ignoreInvisibleClasses = 0x0;
            r19->_classesToIgnore = [[NSArray alloc] initWithObjects:@"CCNode"];
            [r19 updateNodeBasedInState];
    }
    r0 = r19;
    return r0;
}

-(void *)initFromNormalNode:(void *)arg2 selectedNode:(void *)arg3 disabledNode:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r31 = r31 - 0x60;
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
            *(int32_t *)(int64_t *)&r19->_normalNodeTag = 0x0;
            *(int32_t *)(int64_t *)&r19->_selectedNodeTag = 0xffffffffffffffff;
            *(int32_t *)(int64_t *)&r19->_disabledNodeTag = 0xffffffffffffffff;
            *(int8_t *)(int64_t *)&r19->_cascadeColorEnabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_cascadeOpacityEnabled = 0x1;
            [r19 setNormalNode:r22];
            [r19 setSelectedNode:r21];
            [r19 setDisabledNode:r20];
            [r19 setDefaultStateColors];
            [r19->_normalNode setVisible:0x1];
            [r19->_selectedNode setVisible:0x0];
            [r19->_disabledNode setVisible:0x0];
            *(int32_t *)(int64_t *)&r19->_currentState = 0x0;
            [r19 setAnchorPoint:0x0];
            *(int8_t *)(int64_t *)&r19->_pickOnChildren = 0x0;
            *(int8_t *)(int64_t *)&r19->_needToUpdatePickingAreas = 0x0;
            *(int8_t *)(int64_t *)&r19->_ignoreInvisibleClasses = 0x0;
            r19->_classesToIgnore = [[NSArray alloc] initWithObjects:@"CCNode"];
            [r19 updateNodeBasedInState];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->_classesToIgnore release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setDefaultStateColors {
    *(int32_t *)(int64_t *)&self->_normalColor = *(int32_t *)dword_1011e2e74;
    *(int32_t *)(int64_t *)&self->_selectedColor = *(int32_t *)dword_1011e2e78;
    *(int32_t *)(int64_t *)&self->_disabledColor = *(int32_t *)dword_1011e2e7c;
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

-(struct _ccColor4B)getCascadeColor {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentState));
    r8 = *(int32_t *)(r0 + r8);
    r9 = 0x10116cbf8;
    if (r8 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r9 = 0x10116cbf8;
            }
            else {
                    r9 = 0x10116cc00;
            }
    }
    if (r8 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = r9;
            }
            else {
                    r8 = 0x10116cbfc;
            }
    }
    r0 = *(int32_t *)(r0 + sign_extend_64(*(int32_t *)r8));
    return r0;
}

-(void)showNode:(void *)arg2 withColor:(struct _ccColor4B)arg3 {
    memcpy(&r3, &arg3, 0x4);
    r2 = arg2;
    r0 = self;
    var_50 = d9;
    stack[-88] = d8;
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
    if (r2 != 0x0) {
            r21 = r3;
            r19 = r2;
            r20 = r0;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_normalNode));
            [*(r0 + r23) setVisible:0x0];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_selectedNode));
            [*(r20 + r25) setVisible:0x0];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_disabledNode));
            [*(r20 + r24) setVisible:0x0];
            if (*(r20 + r25) != r19 && *(r20 + r24) != r19) {
                    r0 = *(r20 + r23);
            }
            else {
                    r0 = r19;
            }
            [r0 setVisible:0x1];
            if ([r19 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
                    r22 = @selector(setVisible:);
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
                    r8 = r20 + r8;
                    asm { scvtf      d0, w9 };
                    asm { fdiv       d0, d0, d8 };
                    asm { fcvtzs     w22, d0 };
                    asm { ubfx       w10, w21, #0x8, #0x8 };
                    asm { scvtf      d0, w9 };
                    asm { fdiv       d0, d0, d8 };
                    asm { fcvtzs     w9, d0 };
                    asm { ubfx       w10, w21, #0x10, #0x8 };
                    asm { scvtf      d0, w8 };
                    asm { fdiv       d0, d0, d8 };
                    asm { fcvtzs     w8, d0 };
                    asm { ubfx       x21, x21, #0x18, #0x8 };
                    asm { bfi        w22, w9, #0x8, #0x8 };
                    asm { bfi        w22, w8, #0x10, #0x8 };
                    asm { bfi        w22, w8, #0x18, #0x8 };
                    r21 * [r20 displayedOpacity];
                    asm { scvtf      d0, w8 };
                    asm { fdiv       d0, d0, d8 };
                    asm { fcvt       s8, d0 };
                    r2 = r22;
                    [r19 updateDisplayedColor:r2];
                    asm { fcvtzs     w2, s8 };
                    [r19 updateDisplayedOpacity:r2];
            }
    }
    return;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    r0 = self;
    r31 = r31 - 0x80;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realOpacity));
    asm { scvtf      d0, w8 };
    r8 = 0x100ba3000;
    asm { fdiv       d0, d0, d8 };
    asm { fcvtzs     w8, d0 };
    *(int8_t *)(int64_t *)&r0->_displayedOpacity = r8;
    if (*(int8_t *)(int64_t *)&r0->_cascadeOpacityEnabled != 0x0) {
            asm { csinv      w8, w8, wzr, ne };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r26 = *(r8 + 0x10);
                    r27 = r26 + r9 * 0x8 - 0x8;
                    if (r26 <= r27) {
                            r19 = r0;
                            do {
                                    r24 = *r26;
                                    if ([r24 conformsToProtocol:@protocol()] != 0x0) {
                                            if (r24 != r19->_normalNode && r24 != r19->_selectedNode) {
                                                    r8 = 0x100ba3000;
                                                    if (r24 == r19->_disabledNode) {
                                                            r23 = @selector(displayedOpacity);
                                                            [r19 getCascadeColor];
                                                            asm { ubfx       x25, x0, #0x18, #0x8 };
                                                            r8 = r25 * objc_msgSend(r19, r23);
                                                            asm { scvtf      d0, w8 };
                                                            asm { fdiv       d0, d0, d8 };
                                                            asm { fcvtzs     w8, d0 };
                                                    }
                                            }
                                            else {
                                                    r23 = @selector(displayedOpacity);
                                                    [r19 getCascadeColor];
                                                    asm { ubfx       x25, x0, #0x18, #0x8 };
                                                    r8 = r25 * objc_msgSend(r19, r23);
                                                    asm { scvtf      d0, w8 };
                                                    asm { fdiv       d0, d0, d8 };
                                                    asm { fcvtzs     w8, d0 };
                                            }
                                            [r24 updateDisplayedOpacity:r8 & 0xff];
                                    }
                                    r26 = r26 + 0x8;
                            } while (r26 < r27);
                    }
            }
    }
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r31 = r31 - 0xa0;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realColor));
    r8 = r0 + r8;
    asm { scvtf      d0, w9 };
    r9 = 0x100ba3000;
    asm { fdiv       d0, d0, d8 };
    asm { fcvtzs     w9, d0 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r10 = r0 + r10;
    *(int8_t *)r10 = r9;
    r9 = *(int8_t *)(r8 + 0x1);
    asm { ubfx       w11, w2, #0x8, #0x8 };
    r9 = r11 * r9;
    asm { scvtf      d0, w9 };
    asm { fdiv       d0, d0, d8 };
    asm { fcvtzs     w9, d0 };
    *(int8_t *)(r10 + 0x1) = r9;
    r8 = *(int8_t *)(r8 + 0x2);
    asm { ubfx       w9, w2, #0x10, #0x8 };
    r8 = r9 * r8;
    asm { scvtf      d0, w8 };
    asm { fdiv       d0, d0, d8 };
    asm { fcvtzs     w8, d0 };
    *(int8_t *)(r10 + 0x2) = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cascadeColorEnabled));
    r8 = *(int8_t *)(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r10;
            }
            else {
                    r8 = 0x100bd21d4;
            }
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r9 = *(r0 + r9);
    if (r9 != 0x0) {
            r9 = r9->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r26 = *(r9 + 0x10);
                    r27 = r26 + r10 * 0x8 - 0x8;
                    if (r26 <= r27) {
                            r19 = r0;
                            var_88 = *(int32_t *)r8;
                            do {
                                    r24 = *r26;
                                    r2 = @protocol();
                                    if ([r24 conformsToProtocol:r2] != 0x0) {
                                            if (r24 != r19->_normalNode && r24 != r19->_selectedNode) {
                                                    if (r24 != r19->_disabledNode) {
                                                            var_80 = var_80 & 0xffffffff00000000 | var_88;
                                                    }
                                                    else {
                                                            r23 = @selector(displayedColor);
                                                            r8 = (objc_msgSend(r19, r23) & 0xff) * ([r19 getCascadeColor] & 0xff);
                                                            asm { scvtf      d0, w8 };
                                                            asm { fdiv       d0, d0, d8 };
                                                            asm { fcvtzs     w21, d0 };
                                                            objc_msgSend(r19, r23);
                                                            asm { ubfx       w8, w0, #0x8, #0x8 };
                                                            asm { ubfx       w9, w25, #0x8, #0x8 };
                                                            asm { scvtf      d0, w8 };
                                                            asm { fdiv       d0, d0, d8 };
                                                            asm { fcvtzs     w28, d0 };
                                                            objc_msgSend(r19, r23);
                                                            asm { ubfx       w8, w0, #0x10, #0x8 };
                                                            asm { ubfx       w9, w25, #0x10, #0x8 };
                                                            asm { scvtf      d0, w8 };
                                                            asm { fdiv       d0, d0, d8 };
                                                            asm { fcvtzs     w8, d0 };
                                                            asm { bfi        w21, w28, #0x8, #0x8 };
                                                            asm { bfi        w21, w8, #0x10, #0x8 };
                                                            asm { bfi        w21, w8, #0x18, #0x8 };
                                                            var_68 = var_68 & 0xffffffff00000000 | r21;
                                                    }
                                            }
                                            else {
                                                    r23 = @selector(displayedColor);
                                                    r8 = (objc_msgSend(r19, r23) & 0xff) * ([r19 getCascadeColor] & 0xff);
                                                    asm { scvtf      d0, w8 };
                                                    asm { fdiv       d0, d0, d8 };
                                                    asm { fcvtzs     w21, d0 };
                                                    objc_msgSend(r19, r23);
                                                    asm { ubfx       w8, w0, #0x8, #0x8 };
                                                    asm { ubfx       w9, w25, #0x8, #0x8 };
                                                    asm { scvtf      d0, w8 };
                                                    asm { fdiv       d0, d0, d8 };
                                                    asm { fcvtzs     w28, d0 };
                                                    objc_msgSend(r19, r23);
                                                    asm { ubfx       w8, w0, #0x10, #0x8 };
                                                    asm { ubfx       w9, w25, #0x10, #0x8 };
                                                    asm { scvtf      d0, w8 };
                                                    asm { fdiv       d0, d0, d8 };
                                                    asm { fcvtzs     w8, d0 };
                                                    asm { bfi        w21, w28, #0x8, #0x8 };
                                                    asm { bfi        w21, w8, #0x10, #0x8 };
                                                    asm { bfi        w21, w8, #0x18, #0x8 };
                                                    var_68 = var_68 & 0xffffffff00000000 | r21;
                                            }
                                            [r24 updateDisplayedColor:r2];
                                    }
                                    r26 = r26 + 0x8;
                            } while (r26 < r27);
                    }
            }
    }
    return;
}

-(void)setNormalNode:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 setNormalNode:r2 removeExisting:0x0];
    }
    return;
}

-(void)setNormalNode:(void *)arg2 removeExisting:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r20 = r2;
            r19 = r0;
            if ((r3 & 0x1) != 0x0) {
                    [r19->_normalNode removeFromParent];
            }
            *(int32_t *)(int64_t *)&r19->_normalNodeTag = [r20 tag];
            if (([[r19 children] containsObject:r2] & 0x1) == 0x0) {
                    [r19 addChild:r2];
            }
            r19->_normalNode = r20;
            *(int8_t *)(int64_t *)&r19->_needToUpdatePickingAreas = 0x1;
            [r19 updateNodeBasedInState];
    }
    return;
}

-(void)setSelectedNode:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 setSelectedNode:r2 removeExisting:0x0];
    }
    return;
}

-(void)setDisabledNode:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 setDisabledNode:r2 removeExisting:0x0];
    }
    return;
}

-(void)setSelectedNode:(void *)arg2 removeExisting:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r20 = r2;
            r19 = r0;
            if ((r3 & 0x1) != 0x0) {
                    [r19->_selectedNode removeFromParent];
            }
            *(int32_t *)(int64_t *)&r19->_selectedNodeTag = [r20 tag];
            if (([[r19 children] containsObject:r2] & 0x1) == 0x0) {
                    [r19 addChild:r2];
            }
            r19->_selectedNode = r20;
            [r19 updateNodeBasedInState];
    }
    return;
}

-(void)setPickOnChildren:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_pickOnChildren = arg2;
    *(int8_t *)(int64_t *)&self->_needToUpdatePickingAreas = 0x1;
    return;
}

-(void)setDisabledNode:(void *)arg2 removeExisting:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r20 = r2;
            r19 = r0;
            if ((r3 & 0x1) != 0x0) {
                    [r19->_disabledNode removeFromParent];
            }
            *(int32_t *)(int64_t *)&r19->_disabledNodeTag = [r20 tag];
            if (([[r19 children] containsObject:r2] & 0x1) == 0x0) {
                    [r19 addChild:r2];
            }
            r19->_disabledNode = r20;
            [r19 updateNodeBasedInState];
    }
    return;
}

-(void)updatePickingAreas {
    *(int8_t *)(int64_t *)&self->_needToUpdatePickingAreas = 0x1;
    return;
}

-(void *)pickingAreas {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_needToUpdatePickingAreas));
    if (*(int8_t *)(self + r20) != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_pickOnChildren != 0x0) {
                    [r19->_pickingAreas removeAllObjects];
                    [r19 addPickingAreas:r19->_normalNode];
            }
            *(int8_t *)(r19 + r20) = 0x0;
    }
    r0 = r19->_pickingAreas;
    return r0;
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

-(void)addPickingAreas:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r20 = arg2;
    r19 = self;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    var_160 = q0;
    r0 = [arg2 children];
    r21 = r0;
    r2 = &var_170;
    r3 = &stack[-296];
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_160;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_160 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 addPickingAreas:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r2 = &var_170;
                    r3 = &stack[-296];
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (*(int8_t *)(int64_t *)&r19->_ignoreInvisibleClasses != 0x0) {
            r21 = r19->_classesToIgnore;
            r2 = NSStringFromClass([r20 class]);
            if (([r21 containsObject:r2] & 0x1) == 0x0) {
                    [r20 position];
                    [r19 convertToNodeSpacePoint:r20 fromChild:r3];
                    [r19 anchorPointInPoints];
                    [r19 anchorPointInPoints];
                    [r20 anchorPointInPoints];
                    [r20 anchorPointInPoints];
                    d9 = d9 - d1;
                    [r20 contentSize];
                    d12 = (d8 - d0) + d0;
                    objc_msgSend(r20, r22);
                    d13 = d9 + d1;
                    [r19 anchorPointInPoints];
                    [r19 anchorPointInPoints];
                    d11 = d11 - d1;
                    objc_msgSend(r19, r22);
                    d14 = (d10 - d0) + d0;
                    objc_msgSend(r19, r22);
                    d3 = d11 + d1;
                    if (d8 - d0 < d10 - d0) {
                            asm { fcsel      d0, d10, d8, mi };
                    }
                    if (d9 < d11) {
                            asm { fcsel      d1, d11, d9, mi };
                    }
                    if (d12 > d14) {
                            asm { fcsel      d2, d14, d12, gt };
                    }
                    if (d13 > d3) {
                            asm { fcsel      d3, d3, d13, gt };
                    }
                    if (d0 <= d2) {
                            asm { fccmp      d1, d3, #0x0, le };
                    }
                    if (!CPU_FLAGS & G) {
                            r19 = r19->_pickingAreas;
                            [NSValue valueWithCGRect:r2];
                            [r19 addObject:r2];
                    }
            }
    }
    else {
            [r20 position];
            [r19 convertToNodeSpacePoint:r20 fromChild:r3];
            [r19 anchorPointInPoints];
            [r19 anchorPointInPoints];
            [r20 anchorPointInPoints];
            [r20 anchorPointInPoints];
            d9 = d9 - d1;
            [r20 contentSize];
            d12 = (d8 - d0) + d0;
            objc_msgSend(r20, r22);
            d13 = d9 + d1;
            [r19 anchorPointInPoints];
            [r19 anchorPointInPoints];
            d11 = d11 - d1;
            objc_msgSend(r19, r22);
            d14 = (d10 - d0) + d0;
            objc_msgSend(r19, r22);
            d3 = d11 + d1;
            if (d8 - d0 < d10 - d0) {
                    asm { fcsel      d0, d10, d8, mi };
            }
            if (d9 < d11) {
                    asm { fcsel      d1, d11, d9, mi };
            }
            if (d12 > d14) {
                    asm { fcsel      d2, d14, d12, gt };
            }
            if (d13 > d3) {
                    asm { fcsel      d3, d3, d13, gt };
            }
            if (d0 <= d2) {
                    asm { fccmp      d1, d3, #0x0, le };
            }
            if (!CPU_FLAGS & G) {
                    r19 = r19->_pickingAreas;
                    [NSValue valueWithCGRect:r2];
                    [r19 addObject:r2];
            }
    }
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            __stack_chk_fail();
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
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isEnabled] != 0x0 && [r19 visible] != 0x0) {
            if (r19->_block != 0x0) {
                    [r19 activate];
                    r0 = 0x1;
            }
            else {
                    r0 = [[&var_20 super] simulateTouch];
            }
    }
    else {
            r0 = [[&var_20 super] simulateTouch];
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_normalNode));
    if (*(self + r8) != arg2) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedNode));
            if (*(r21 + r8) != r20) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_disabledNode));
                    if (*(r21 + r8) == r20) {
                            *(r21 + r8) = 0x0;
                    }
            }
            else {
                    *(r21 + r8) = 0x0;
            }
    }
    else {
            *(r21 + r8) = 0x0;
            [r21->_pickingAreas removeAllObjects];
    }
    [[&var_30 super] removeChild:r20 cleanup:r19];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    [self removeChild:self->_normalNode cleanup:arg2];
    [self removeChild:self->_selectedNode cleanup:arg2];
    [self removeChild:self->_disabledNode cleanup:arg2];
    [[&var_30 super] removeAllChildrenWithCleanup:arg2];
    return;
}

-(void)visit {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isHierarchyDirty));
    if (*(int8_t *)(self + r21) != 0x0) {
            [[&var_30 super] cascadeColor];
            [[&var_40 super] cascadeOpacity];
            *(int8_t *)(r19 + r21) = 0x0;
    }
    [[&var_50 super] visit];
    return;
}

-(void *)normalNode {
    r0 = self->_normalNode;
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
    *(int8_t *)(int64_t *)&self->_isHierarchyDirty = 0x1;
    r0 = [self getChildByTag:r2];
    if (r0 != 0x0) goto loc_10037c920;

loc_10037c8ec:
    if ([r19 children] == 0x0) goto loc_10037c934;

loc_10037c904:
    r0 = [r19 children];
    r0 = [r0 objectAtIndex:r2];
    goto loc_10037c920;

loc_10037c920:
    [r19 setNormalNode:r0];
    goto loc_10037c934;

loc_10037c934:
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

-(void *)selectedNode {
    r0 = self->_selectedNode;
    return r0;
}

-(int)normalNodeTag {
    r0 = *(int32_t *)(int64_t *)&self->_normalNodeTag;
    return r0;
}

-(void *)disabledNode {
    r0 = self->_disabledNode;
    return r0;
}

-(void)setNormalNodeTag:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_normalNodeTag = arg2;
    return;
}

-(int)selectedNodeTag {
    r0 = *(int32_t *)(int64_t *)&self->_selectedNodeTag;
    return r0;
}

-(int)disabledNodeTag {
    r0 = *(int32_t *)(int64_t *)&self->_disabledNodeTag;
    return r0;
}

-(void)setSelectedNodeTag:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_selectedNodeTag = arg2;
    return;
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

-(bool)pickOnChildren {
    r0 = *(int8_t *)(int64_t *)&self->_pickOnChildren;
    return r0;
}

-(bool)ignoreInvisibleClasses {
    r0 = *(int8_t *)(int64_t *)&self->_ignoreInvisibleClasses;
    return r0;
}

-(void)setIgnoreInvisibleClasses:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ignoreInvisibleClasses = arg2;
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(occupiedArea));
    *(int128_t *)(r0 + r8) = q0;
    *(int128_t *)(0x10 + r0 + r8) = q0;
    return r0;
}

@end