@implementation MCTableWithNavigation

-(void)enableButtons {
    [self->_rightButton setIsEnabled:0x1];
    [self->_leftButton setIsEnabled:0x1];
    return;
}

-(void)buttonPressed {
    [self unschedule:@selector(reEnableButtons)];
    [self scheduleOnce:@selector(reEnableButtons) delay:r3];
    return;
}

-(void)reEnableButtons {
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
    if (*(int8_t *)(int64_t *)&r0->_forceDisableArrowButtons == 0x0) {
            r19 = r0;
            if ([r0 getActionByTag:r2] == 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rightButton));
                    if ([*(r19 + r23) getActionByTag:r2] == 0x0) {
                            [*(r19 + r23) setIsEnabled:r2];
                    }
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_leftButton));
                    if ([*(r19 + r23) getActionByTag:r2] == 0x0) {
                            [*(r19 + r23) setIsEnabled:r2];
                    }
            }
            r20 = @selector(getActionByTag:);
            r22 = 0x10116e000;
            [r19 getCurrentGridOffset];
            asm { fcvtas     w20, s0 };
            r8 = sign_extend_64(*(int32_t *)(r22 + 0xf0));
            if (r20 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = &@selector(setButtonVisible:);
                    }
                    else {
                            r8 = &@selector(setButtonInvisible:);
                    }
            }
            objc_msgSend(r19, *r8);
            r0 = [r19 getNumElements];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_numActiveItems));
            r8 = *(int32_t *)(r19 + r8);
            r8 = r0 - r8;
            if (r8 == @selector(getActionByTag:)) {
                    if (!CPU_FLAGS & E) {
                            r8 = &@selector(setButtonVisible:);
                    }
                    else {
                            r8 = &@selector(setButtonInvisible:);
                    }
            }
            objc_msgSend(r19, *r8);
    }
    return;
}

-(void)setButtonVisible:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 stopActionByTag:0x1];
    if (([r19 visible] & 0x1) == 0x0 && [r19 getActionByTag:0x0] == 0x0) {
            [r19 setVisible:0x1];
            r0 = [CCFadeIn actionWithDuration:0x1];
            [r0 setTag:0x0];
            [r19 runAction:r2];
    }
    return;
}

-(void)setButtonInvisible:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 stopActionByTag:0x0];
    if ([r19 visible] != 0x0 && [r19 getActionByTag:0x1] == 0x0) {
            r20 = [CCFadeOut actionWithDuration:0x1];
            [CCCallBlock actionWithBlock:&var_48];
            r0 = [CCSequence actions:r20];
            [r0 setTag:0x1];
            [r19 runAction:r2];
    }
    return;
}

-(void)rightButtonPressed {
    [self->_rightButton setIsEnabled:0x0];
    [self buttonPressed];
    [self forceMoveCaroussel:0x0];
    return;
}

-(void)leftButtonPressed {
    [self->_leftButton setIsEnabled:0x0];
    [self buttonPressed];
    [self forceMoveCaroussel:0x1];
    return;
}

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 springOffset:(float)arg7 menu:(void *)arg8 leftButton:(void *)arg9 rightButton:(void *)arg10 numActiveItems:(int)arg11 screenOffset:(int)arg12 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r19 = self;
    [[&var_A0 super] init:0x0 numVisibleItems:r3 cellSize:r4 direction:r5 itemOffset:r6 springOffset:r7];
    *(int32_t *)(int64_t *)&r19->_numActiveItems = r6;
    [r19 setScrollableTable:0x0];
    [r5 setScale:0x0];
    [r4 setScale:0x0];
    [r5 scaleX];
    [r5 setScaleX:0x0];
    r0 = @class(MCMenuItemNodeRGBAStatic);
    r0 = [r0 alloc];
    r0 = [r0 initFromNormalNode:r4 selectedNode:0x0 disabledNode:0x0 target:r19 selector:@selector(leftButtonPressed)];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_leftButton));
    *(r19 + r20) = r0;
    [r0 setAnchorPoint:r4];
    r28 = *(r19 + r20);
    [r4 contentSize];
    [r4 contentSize];
    [r4 contentSize];
    [r4 contentSize];
    [r28 setActiveArea:r4];
    r0 = @class(MCMenuItemNodeRGBAStatic);
    r0 = [r0 alloc];
    r0 = [r0 initFromNormalNode:r5 selectedNode:0x0 disabledNode:0x0 target:r19 selector:@selector(rightButtonPressed)];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_rightButton));
    *(r19 + r26) = r0;
    [r0 setAnchorPoint:r5];
    r25 = *(r19 + r26);
    [r5 contentSize];
    [r5 contentSize];
    [r5 contentSize];
    [r5 contentSize];
    [r25 setActiveArea:r5];
    [r3 addChild:*(r19 + r20)];
    [r3 addChild:*(r19 + r26)];
    [*(r19 + r20) setVisible:0x0];
    [*(r19 + r26) setVisible:0x0];
    [[CCDirector sharedDirector] winSize];
    asm { scvtf      d10, w22 };
    [r19 clipRect];
    asm { scvtf      d0, w8 };
    objc_msgSend(r19, r21);
    [r19 setClipRect:r2];
    [r19 setPickRect:r2];
    [*(r19 + r20) setPosition:r2];
    [*(r19 + r26) setPosition:r2];
    [r19 getMenuGameTypeButtonShaderProgram:0x1];
    [r19 scheduleOnce:@selector(reEnableButtons) delay:r3];
    *(int8_t *)(int64_t *)&r19->_forceDisableArrowButtons = 0x0;
    r0 = r19;
    return r0;
}

-(void)forceMoveCaroussel:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self schedule:@selector(update:)];
    r0 = [r19 getScrollSequenceWithOrientation:arg2];
    if (r0 != 0x0) {
            [r19 runAction:r2];
    }
    return;
}

-(void)setOpacityGradientShaderToChildren {
    [self setOpacityGradientShaderToChildren:self];
    return;
}

-(void *)getScrollSequenceWithOrientation:(unsigned long long)arg2 {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
    objc_msgSend(self, *(r8 + 0x158));
    asm { frinta     s1, s0 };
    asm { fcvtzs     x8, s0 };
    if (r8 < 0x0) {
            asm { cneg       x8, x8, mi };
    }
    if (r20 == 0x1) {
            asm { fcsel      s1, s1, s0, eq };
    }
    if (r20 == 0x0) {
            asm { fcsel      s1, s0, s1, eq };
    }
    if (&@selector(renderNativeAdForAdConfiguration:completionHandler:) != 0x0) {
            asm { scvtf      s2, x8 };
            asm { fcvt       d0, s0 };
    }
    [TableScrollAction actionWithDuration:r2 table:r3 numNodesToScroll:r4];
    r0 = @class(CCCallBlock);
    r23 = [r0 actionWithBlock:&var_78];
    [CCCallBlock actionWithBlock:&var_A0];
    r0 = [CCSequence actions:r23];
    [r0 setTag:r2];
    r0 = r19;
    return r0;
}

-(void)setLeftButton:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)leftButton {
    r0 = self->_leftButton;
    return r0;
}

-(void *)rightButton {
    r0 = self->_rightButton;
    return r0;
}

-(void)setRightButton:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)getMenuGameTypeButtonShaderProgram:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r0 = [CCShaderCache sharedShaderCache];
    r20 = r0;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = @"ShaderMenuGameTypeButtonPositionTextureColor";
            }
            else {
                    r21 = @"ShaderMenuGameTypeButtonPositionTextureColor_Emission";
            }
    }
    r0 = [r0 programForKey:r2];
    r19 = r0;
    if (r0 == 0x0) {
            r0 = [CCGLProgram alloc];
            r8 = 0x1011ac250;
            if (r22 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x1011ac218;
                    }
                    else {
                            r8 = 0x1011ac250;
                    }
            }
            r2 = *r8;
            if (CPU_FLAGS & NE) {
                    if (!CPU_FLAGS & NE) {
                            r3 = "                                                                           \n    #ifdef GL_ES                                                                \n    precision lowp float;                                                       \n    #endif        …";
                    }
                    else {
                            r3 = "                                                                           \n    #ifdef GL_ES                                                                \n    precision lowp float;                                                       \n    #endif        …";
                    }
            }
            r0 = [r0 initWithVertexShaderByteArray:r2 fragmentShaderByteArray:r3];
            r19 = r0;
            [r0 addAttribute:@"a_position" index:0x0];
            [r19 addAttribute:@"a_color" index:0x1];
            [r19 addAttribute:@"a_texCoord" index:0x2];
            [r19 link];
            [r19 updateUniforms];
            [r20 addProgram:r19 forKey:r21];
            r20 = glGetUniformLocation([r19 program], "MGTB_alphaThresholds");
            [[CCDirector sharedDirector] winSize];
            asm { fcvtn      v0.2s, v0.2d };
            asm { fcvtn2     v0.4s, v1.2d };
            [r19 setUniformLocation:r20 with4fv:&var_30 count:0x1];
            [r19 release];
    }
    r0 = r19;
    return r0;
}

-(void)setOpacityGradientShaderToChildren:(void *)arg2 {
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
    if (r2 == 0x0) goto loc_1005b78e4;

loc_1005b7690:
    r20 = r2;
    r19 = r0;
    [AdjustableLabelBMFont class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_1005b775c;

loc_1005b76cc:
    var_58 = **___stack_chk_guard;
    [[r20 batchNode] setShaderProgram:[r19 getMenuGameTypeButtonShaderProgram:0x0]];
    r0 = [r20 batchNode];
    if (**___stack_chk_guard == var_58) {
            [r0 setEmissionShaderName:@"ShaderMenuGameTypeButtonPositionTextureColor_Emission"];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_1005b775c:
    r22 = @selector(isKindOfClass:);
    [CCLabelBMFont class];
    if (objc_msgSend(r20, r22) != 0x0) {
            [r19 getMenuGameTypeButtonShaderProgram:0x0];
            [[r20 batchNode] setShaderProgram:r2];
            [[r20 batchNode] setEmissionShaderName:r2];
    }
    r22 = @selector(isKindOfClass:);
    [CCSprite class];
    if (objc_msgSend(r20, r22) != 0x0) {
            [r19 getMenuGameTypeButtonShaderProgram:0x0];
            [r20 setShaderProgram:r2];
            [r20 setEmissionShaderName:r2];
    }
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
                            [r19 setOpacityGradientShaderToChildren:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1005b78e4;

loc_1005b78e4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)forceDisableArrowButtons {
    r0 = *(int8_t *)(int64_t *)&self->_forceDisableArrowButtons & 0x1;
    return r0;
}

-(void)setForceDisableArrowButtons:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceDisableArrowButtons = arg2;
    return;
}

@end