@implementation MenuSettingsView

-(void)setupInitialState {
    [self createTable];
    [self createNodes];
    return;
}

-(void *)bgNode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_1005cb540();
    r8 = 0x101169ea8;
    if (s0 < *(int32_t *)0x100b9af20) {
            if (!CPU_FLAGS & S) {
                    r8 = 0x101169ea8;
            }
            else {
                    r8 = 0x101169ea4;
            }
    }
    r0 = *(r19 + sign_extend_64(*(int32_t *)r8));
    return r0;
}

+(float)numVisibleItems {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = sub_1005cb540();
    if (s0 < *(int32_t *)0x100b9af20) {
            asm { fcsel      s0, s1, s0, mi };
    }
    return r0;
}

+(struct CGSize)cellSize {
    [[CCDirector sharedDirector] winSize];
    r0 = [MenuSettingsView numVisibleItems];
    asm { fcvt       d3, s3 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d1, d1, d0 };
    return r0;
}

-(void)createTable {
    r20 = [self bgNode];
    [MenuSettingsView cellSize];
    *(int128_t *)(int64_t *)&self->_cellSize = d0;
    *(int128_t *)((int64_t *)&self->_cellSize + 0x8) = d1;
    objc_alloc();
    [r20 position];
    [r20 contentSize];
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r21);
    [MenuSettingsView numVisibleItems];
    asm { fcvt       d0, s0 };
    asm { fdiv       d11, d11, d0 };
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r21);
    r0 = [r23 init:0x1 cellSize:r3 visibleArea:r4 direction:r5 itemOffset:r6 effectsDistanceFraction:r7 visibleAreaOffset:0x0];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    *(r19 + r27) = r0;
    [r0 enableScroll];
    [*(r19 + r27) setSnapEnabled:0x0];
    [[*(r19 + r27) viewChangedCallback] setTarget:r19];
    [[*(r19 + r27) viewChangedCallback] setSelector:@selector(scrollCallback)];
    [r20 zOrder] + 0x1;
    [r19 addChild:r2 z:r3];
    [*(r19 + r27) release];
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r21);
    asm { fcvt       s8, d0 };
    [*(r19 + r27) currentScrollHandleRecommendedSize];
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r22);
    r0 = sub_100088a10();
    r19->_scrollbar = r0;
    [r19 addChild:r0];
    r0 = objc_alloc();
    r0 = [r0 initWithId:r19 andSelector:@selector(closeTargetedAdsPopup)];
    *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_targetedAdsPopup))) = r0;
    [r0 setVisible:0x0];
    objc_msgSend(r19, r24);
    objc_msgSend(r20, r21);
    *r26 = r22;
    *(r26 + 0x8) = *0x100b9fa80 * *0x100b9fa88;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_menuHelp));
    [[*(r19 + r21) parent] reorderChild:*(r19 + r21) z:objc_msgSend(*(r19 + r27), r23) + 0x1];
    *(int8_t *)(int64_t *)&r19->_helpTransparentLayerOpacity = [r19->_helpTransparentLayer opacity];
    [r19 setButtonCallbackLock:0x0];
    return;
}

-(void)createNodeByType:(int)arg2 {
    r20 = self;
    r21 = [self bgNode];
    r22 = objc_alloc();
    [r21 contentSize];
    [r21 contentSize];
    [MenuSettingsView numVisibleItems];
    asm { fcvt       d0, s0 };
    r1 = @selector(initWithType:size:);
    asm { fdiv       d1, d9, d0 };
    r22 = [objc_msgSend(r22, r1) autorelease];
    [r20->_table addCellItem:r22];
    [r21 position];
    [r22 setPosition:r22];
    asm { sxtw       x2, w19 };
    [r22 setTag:r2];
    return;
}

-(bool)canShowSetting:(int)arg2 {
    return 0x1;
}

-(void)createNodes {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bgNode];
    [r19 createNodeByType:0x4];
    [r19 createNodeByType:0x7];
    [r19 createNodeByType:0x9];
    [r19 createNodeByType:0x8];
    [r19 createNodeByType:0xa];
    [r19 createNodeByType:0xb];
    [r19 createNodeByType:0xc];
    [r19 createNodeByType:0x16];
    [r19 createNodeByType:0x17];
    [r19 createNodeByType:0x18];
    if ([[[Application sharedApplication] gdprManager] isRelevant] != 0x0) {
            [r19 createNodeByType:0x19];
    }
    [r19 createNodeByType:0x1a];
    [r19 createNodeByType:0x1b];
    [r19 createNodeByType:0x1c];
    [r19->_table refresh];
    return;
}

-(void)onEnter {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [[*(self + r22) viewChangedCallback] setTarget:self];
    [[*(self + r22) viewChangedCallback] setSelector:@selector(scrollCallback)];
    [[&var_30 super] onEnter];
    return;
}

-(void)onExit {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [[*(self + r21) viewChangedCallback] setTarget:0x0];
    [[*(self + r21) viewChangedCallback] setSelector:0x0];
    [[&var_30 super] onExit];
    return;
}

-(void)scrollCallback {
    r20 = self->_scrollbar;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [*(self + r21) currentScrollProgress];
    [*(self + r21) currentScrollHandleRecommendedSize];
    [r20 scrollCallback:r2 andUpdateLength:r3];
    return;
}

-(void)updateUIValues {
    r31 = r31 - 0x120;
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
    var_100 = q0;
    r0 = self->_table;
    r0 = [r0 children];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) updateUIValues];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)showFixedJoysticksHint {
    [self showMenuHelp:self->_fixedJoysticksHint atNodePosition:[[self->_table getChildByTag:0x7] hint]];
    return;
}

-(void)showShootJoystickOnRightHint {
    [self showMenuHelp:self->_shootJoystickOnRightHint atNodePosition:[[self->_table getChildByTag:0x9] hint]];
    return;
}

-(void)showStopOnReleaseHint {
    [self showMenuHelp:self->_stopOnReleaseHint atNodePosition:[[self->_table getChildByTag:0x8] hint]];
    return;
}

-(void)showShootOnReleaseHint {
    [self showMenuHelp:self->_shootOnReleaseHint atNodePosition:[[self->_table getChildByTag:0xa] hint]];
    return;
}

-(void)showArrowHint {
    [self showMenuHelp:self->_showArrowHint atNodePosition:[[self->_table getChildByTag:0xb] hint]];
    return;
}

-(void)showMinimapHint {
    [self showMenuHelp:self->_showMinimapHint atNodePosition:[[self->_table getChildByTag:0xc] hint]];
    return;
}

-(void)showTargetedAdsPopup {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([[[Application sharedApplication] gdprManager] isConsentGranted] != 0x0) {
            [r19->_targetedAdsPopup setVisible:r2];
    }
    else {
            [[r19->_table getChildByTag:0x19] updateUIValues];
    }
    return;
}

-(void)closeTargetedAdsPopup {
    [self->_targetedAdsPopup setVisible:0x0];
    [[self->_table getChildByTag:0x19] updateUIValues];
    return;
}

-(void)showMenuHelp:(void *)arg2 atNodePosition:(void *)arg3 {
    r23 = [arg3 parent];
    [arg3 position];
    [r23 convertToWorldSpace:r2];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_hintContainerRoot));
    [[*(self + r21) parent] convertToNodeSpace:r2];
    [*(self + r21) setPosition:r2];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_menuHelp))) setVisible:0x1];
    [self->_hintSprite setVisible:0x1];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_helpTransparentLayer));
    [*(self + r22) setOpacity:0x0];
    [*(self + r22) setVisible:0x1];
    r21 = *(self + r22);
    r2 = *(int8_t *)(int64_t *)&self->_helpTransparentLayerOpacity;
    r2 = [CCFadeTo actionWithDuration:r2 opacity:r3];
    [r21 runAction:r2];
    sub_1005d7c34([CCSequence actionOne:[CCShow action] two:[CCFadeIn actionWithDuration:r2]], arg2, @protocol(CCRGBAProtocol), [NSArray arrayWithObjects:0x0], 0x1);
    [self disableInput];
    [*(self + r23) setEnabled:0x1];
    [*(self + r23) setTouchEnabled:r2];
    return;
}

-(bool)showingHints {
    r0 = self->_menuHelp;
    r0 = [r0 visible];
    return r0;
}

-(void)resetTouches {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_table))) setTouchEnabled:r2];
    objc_msgSend(*(self + r21), r20);
    return;
}

-(void)closeHints {
    r31 = r31 - 0xb0;
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
    r19 = self;
    [self->_hintSprite setVisible:0x0];
    r20 = r19->_menuHelp;
    r21 = @class(CCSequence);
    r22 = [CCDelayTime actionWithDuration:0x0];
    r3 = [CCHide action];
    [r20 runAction:[r21 actionOne:r22 two:r3]];
    r20 = @class(CCSequence);
    r20 = [r20 actionOne:[CCFadeTo actionWithDuration:0x0 opacity:r3] two:[CCHide action]];
    [r19->_helpTransparentLayer runAction:r20];
    r21 = r19->_fixedJoysticksHint;
    r25 = 0x8;
    r28 = &var_98;
    do {
            if ([r21 visible] != 0x0) {
                    sub_1005d7c34(r20, r21, @protocol(), [NSArray arrayWithObjects:r2], 0x1);
            }
            if (r25 == 0x30) {
                break;
            }
            r21 = *(r28 + r25);
            r25 = r25 + 0x8;
    } while (true);
    var_68 = **___stack_chk_guard;
    [r19 resetTouches];
    [r19 performSelector:@selector(enableInput) withObject:0x0 afterDelay:r4];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(bool)buttonCallbackLock {
    r0 = *(int8_t *)(int64_t *)&self->_buttonCallbackLock;
    return r0;
}

-(void)setButtonCallbackLock:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_buttonCallbackLock = arg2;
    return;
}

-(void)enableInput {
    r31 = r31 - 0x140;
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
    [[&var_E8 super] enableInput];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [*(self + r21) setScrollableTable:0x1];
    var_120 = q0;
    r0 = *(self + r21);
    r0 = [r0 children];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = *(var_128 + r27 * 0x8);
                            if ([r24 view] != 0x0) {
                                    [r24 enableInput];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)disableInput {
    r31 = r31 - 0x140;
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
    [[&var_E8 super] disableInput];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [*(self + r21) setScrollableTable:0x0];
    var_120 = q0;
    r0 = *(self + r21);
    r0 = [r0 children];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = *(var_128 + r27 * 0x8);
                            if ([r24 view] != 0x0) {
                                    [r24 disableInput];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end