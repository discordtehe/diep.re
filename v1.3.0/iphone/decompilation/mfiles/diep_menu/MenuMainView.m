@implementation MenuMainView

-(void)forceInputBarBlurListener:(void *)arg2 {
    [self->_inputBar dismissKeyboard];
    return;
}

-(void)onEnter {
    [[&var_20 super] onEnter];
    [self->_inputBar registerDelegate:self];
    [self->_iosNewsFeedIcon setVisible:r2];
    return;
}

-(void)onExit {
    [self->_inputBar unregisterDelegate:self];
    [[&var_20 super] onExit];
    return;
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)setControl:(void *)arg2 {
    self->_control = arg2;
    return;
}

-(void)inputTextEditBeganCallback:(void *)arg2 {
    return;
}

-(void)setupLayout:(void *)arg2 {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    r21 = arg2;
    r19 = self;
    sub_10004ef7c(self, @"Default Timeline");
    r19->setProfileXpTimestamp = 0x0;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_inputBox));
    [*(r19 + r28) contentSize];
    v8 = v0;
    v9 = v1;
    r0 = [CCNode node];
    r20 = r0;
    [r0 setContentSize:r2];
    r0 = [MCInputBar object];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_inputBar));
    *(r19 + r27) = r0;
    [r0 setFrame:r20];
    r0 = objc_alloc();
    r0 = [r0 initWithId:r19 andSelector:@selector(closeGDPRPopup)];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_gdprPopup));
    *(r19 + r20) = r0;
    [r19 addChild:r19 z:0x2];
    [*(r19 + r20) setVisible:0x0];
    r0 = sub_1005d7410(@"DiepMenusUI.png", @"DiepMenusUI.plist", @"clear.png", 0x0);
    [r0 contentSize];
    [r0 contentSize];
    [r0 setPosition:0x0];
    r26 = [[objc_alloc() init] autorelease];
    [r0 contentSize];
    [r0 contentSize];
    [r26 setContentSize:0x0];
    [r26 addChild:r0];
    r2 = r26;
    [*(r19 + r27) createInnerClearButton:r2];
    r26 = *(r19 + r27);
    [r26 contentSize];
    v10 = v8;
    [r0 contentSize];
    [*(r19 + r27) contentSize];
    [r26 setClearButtonPosition:r2];
    d1 = d9 * 0x3fe0000000000000 + 0x3ff0000000000000;
    [*(r19 + r27) setPosition:r2];
    if ((sub_1005cb7c8(0x1) | 0x1) == 0x7) {
            asm { fcsel      s10, s0, s1, eq };
    }
    [*(r19 + r27) createInputWithDefaultText:@"" fontName:[[[Application sharedApplication] localizationManager] resourceForKey:@"OpenSans-Bold.ttf"] fontSize:0xf maxLength:r5 offset:r6 contentSizeOffset:r7];
    [r19 setNickname:r21];
    [*(r19 + r27) createBlinkingCursor:@"InputCaret.fnt"];
    [r19->_inputMenu addChild:*(r19 + r27)];
    [r19->_logo position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_logoStartPosition));
    *(r19 + r8) = 0xc000000000000000;
    *(0x8 + r19 + r8) = d1;
    [r19->_subtitle position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_subtitleStartPosition));
    *(r19 + r8) = 0xc000000000000000;
    *(0x8 + r19 + r8) = d1;
    [*(r19 + r28) position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inputBoxStartPosition));
    *(r19 + r8) = 0xc000000000000000;
    *(0x8 + r19 + r8) = d1;
    [*(r19 + r27) position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inputBarStartPosition));
    *(r19 + r8) = 0xc000000000000000;
    *(0x8 + r19 + r8) = d1;
    [r19->_playButton position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playButtonStartPosition));
    *(r19 + r8) = 0xc000000000000000;
    *(0x8 + r19 + r8) = d1;
    [r19->_gameModeLabel position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gameModeStartPosition));
    *(r19 + r8) = 0xc000000000000000;
    *(0x8 + r19 + r8) = d1;
    [*(r19 + r27) setDismissOnClear:0x0];
    sub_100088c18(r19, r19->_background);
    [r19->_newsfeedButton setVisible:0x0];
    *(int8_t *)(int64_t *)&r19->_newsfeedButtonShowing = 0x0;
    [[KeyboardInput sharedKeyboardInput] setReturnKeyType:0x1];
    [[KeyboardInput sharedKeyboardInput] setCancelOnEmptyText:0x0];
    *(int8_t *)(int64_t *)&r19->_helpTransparentLayerOpacity = [r19->_helpTransparentLayer opacity];
    [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(forceInputBarBlurListener:) name:**_UIKeyboardWillHideNotification object:0x0];
    [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(forceInputBarBlurListener:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(forceInputBarBlurListener:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r19->_tankAnim setVisible:0x0];
    [r19->_pbutton setVisible:0x1];
    return;
}

-(void)inputTextEditMovedCallback:(void *)arg2 {
    return;
}

-(void)inputTextCallback {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    sub_10004ef7c(self, @"Default Timeline");
    [r19->_nicknameLabel setVisible:0x0];
    [r19 disableInput];
    [r19->_inputMenu setEnabled:0x1];
    r2 = *(int32_t *)0x1011cb830;
    [r19->_inputBar setTextColor:r2];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_inputBox));
    r0 = *(r19 + r23);
    [r0 convertToWorldSpace:r2];
    [[CCDirector sharedDirector] winSize];
    v8 = v1;
    [*(r19 + r23) contentSize];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_logo));
    [*(r19 + r27) position];
    [*(r19 + r27) contentSize];
    asm { fcvt       s0, d0 };
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_yOffsetForTextEntry));
    *(int32_t *)(r19 + r25) = s0;
    if (s0 > 0x0) {
            [*(r19 + r23) stopActionByTag:r2];
            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfe8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_inputBoxStartPosition));
            asm { fcvt       d3, s1 };
            r0 = [r0 actionWithDuration:r2 position:r3];
            [r0 setTag:r2];
            [*(r19 + r23) runAction:r2];
            objc_msgSend(*(r19 + r27), r20);
            r0 = *(r26 + 0xfe8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_logoStartPosition));
            asm { fcvt       d3, s1 };
            r0 = objc_msgSend(r0, r21);
            objc_msgSend(r0, r22);
            objc_msgSend(*(r19 + r27), r23);
            objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_subtitle))), r20);
            r0 = *(r26 + 0xfe8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_subtitleStartPosition));
            asm { fcvt       d3, s1 };
            r0 = objc_msgSend(r0, r21);
            objc_msgSend(r0, r22);
            objc_msgSend(*(r19 + r27), r23);
            objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_playButton))), r20);
            r0 = *(r26 + 0xfe8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playButtonStartPosition));
            asm { fcvt       d3, s1 };
            r0 = objc_msgSend(r0, r21);
            objc_msgSend(r0, r22);
            objc_msgSend(*(r19 + r27), r23);
            objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_gameModeLabel))), r20);
            r0 = *(r26 + 0xfe8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_gameModeStartPosition));
            asm { fcvt       d3, s1 };
            r0 = objc_msgSend(r0, r21);
            objc_msgSend(r0, r22);
            objc_msgSend(*(r19 + r24), r23);
    }
    return;
}

-(void)inputTextUpdatedCallback:(void *)arg2 {
    [self setNickname:r2];
    return;
}

-(void)inputReturnKeyPressedCallback {
    [self->_control playButtonCallback];
    return;
}

-(void)inputTextEnteredCallback:(void *)arg2 {
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
    r19 = self;
    [self checkAndShowNicknameLabel];
    if ([[[Application sharedApplication] stateMachine] currentState] == 0x1) {
            [r19 enableInput];
    }
    if (*(int32_t *)(int64_t *)&r19->_yOffsetForTextEntry > 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_inputBox));
            [*(r19 + r23) stopActionByTag:0x126139d];
            r0 = @class(CCMoveTo);
            r0 = [r0 actionWithDuration:0x126139d position:r3];
            [r0 setTag:0x126139d];
            [*(r19 + r23) runAction:r0];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_logo));
            [*(r19 + r26) stopActionByTag:0x126139d];
            r0 = @class(CCMoveTo);
            r0 = [r0 actionWithDuration:0x126139d position:r3];
            [r0 setTag:0x126139d];
            [*(r19 + r26) runAction:r0];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_subtitle));
            [*(r19 + r26) stopActionByTag:0x126139d];
            r0 = @class(CCMoveTo);
            r0 = [r0 actionWithDuration:0x126139d position:r3];
            [r0 setTag:0x126139d];
            [*(r19 + r26) runAction:r0];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_playButton));
            [*(r19 + r26) stopActionByTag:0x126139d];
            r0 = @class(CCMoveTo);
            r0 = [r0 actionWithDuration:0x126139d position:r3];
            [r0 setTag:0x126139d];
            [*(r19 + r26) runAction:r0];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_gameModeLabel));
            [*(r19 + r24) stopActionByTag:0x126139d];
            r0 = @class(CCMoveTo);
            r0 = [r0 actionWithDuration:0x126139d position:r3];
            [r0 setTag:0x126139d];
            [*(r19 + r24) runAction:r0];
    }
    return;
}

-(void)dismissNicknameKeyboard {
    [self enableInput];
    [self->_inputBar dismissKeyboard];
    return;
}

-(void *)nickname {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_inputBar));
    if ([*(self + r23) labelText] == 0x0) {
            r21 = @selector(defaultText);
            r22 = objc_msgSend(*(r19 + r23), r21);
            [[[Application sharedApplication] localizationManager] textForKey:@"menu_enter_nickname"];
            if ([r22 isEqualToString:r2] != 0x0) {
                    r21 = @selector(labelText);
            }
    }
    else {
            r21 = @selector(labelText);
    }
    r0 = *(r19 + r23);
    r0 = objc_msgSend(r0, r21);
    return r0;
}

-(void)clearNickname {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_inputBar));
    [*(self + r21) setLabelText:@""];
    [*(self + r21) inputTextEnteredCallback:@""];
    [self->_nicknameLabel setVisible:r2];
    return;
}

-(void)setNickname:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_inputBar));
    [*(self + r23) labelText];
    if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
            if (r20 != 0x0 && [r20 isEqualToString:r2] == 0x0) {
                    [*(r19 + r23) setLabelText:r20];
                    [*(r19 + r23) setTextColor:r2];
            }
            else {
                    if ([*(r19 + r23) labelText] != 0x0) {
                            [*(r19 + r23) labelText];
                            [[[Application sharedApplication] localizationManager] textForKey:r2];
                            if ((objc_msgSend(r22, r21) & 0x1) == 0x0) {
                                    [*(r19 + r23) setLabelText:r20];
                                    [*(r19 + r23) setTextColor:r2];
                            }
                    }
            }
    }
    [r19 checkAndShowNicknameLabel];
    return;
}

-(void)showNewsfeedButton:(bool)arg2 {
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_newsfeedButtonShowing));
    r8 = *(int8_t *)(self + r22);
    if (arg2 != 0x0) {
            if (r8 == 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_newsfeedButton));
                    [*(r19 + r21) setIsEnabled:0x1];
                    [*(r19 + r21) stopActionByTag:0x487c8727];
                    if (([*(r19 + r21) visible] & 0x1) == 0x0) {
                            [*(r19 + r21) setVisible:0x1];
                            [*(r19 + r21) setOpacity:r2];
                    }
                    if ([*(r19 + r21) opacity] != 0xff) {
                            r0 = [CCFadeTo actionWithDuration:0xff opacity:r3];
                            [r0 setTag:0x487c8727];
                            [*(r19 + r21) runAction:r2];
                    }
                    *(int8_t *)(r19 + r22) = 0x1;
            }
    }
    else {
            if (r8 != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_newsfeedButton));
                    [*(r19 + r23) setIsEnabled:0x0];
                    [*(r19 + r23) stopActionByTag:0x487c8727];
                    if ([*(r19 + r23) visible] != 0x0) {
                            r21 = [CCFadeTo actionWithDuration:0x0 opacity:r3];
                            [CCHide action];
                            r0 = [CCSequence actions:r21];
                            [r0 setTag:0x487c8727];
                            [*(r19 + r23) runAction:r2];
                    }
                    *(int8_t *)(r19 + r22) = 0x0;
            }
    }
    return;
}

-(void)setNewsfeedNumber:(int)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_newsfeedBadge;
    if (r2 >= 0x1) {
            [r0 setVisible:r2];
            asm { scvtf      s0, w20 };
            sub_10035d730();
            sub_10035d724();
            asm { fcvtzs     w8, s0 };
            r20 = [r21 stringWithFormat:r2];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_newsfeedAmountLabel));
            if (([[*(r19 + r21) string] isEqualToString:r2] & 0x1) == 0x0) {
                    [*(r19 + r21) setString:r2];
            }
    }
    else {
            [r0 setVisible:r2];
    }
    return;
}

-(double)refresh {
    r0 = self;
    return r0;
}

-(double)onEnterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self->_inputBar;
    r0 = [r0 setIsEnabled:r2];
    return r0;
}

-(double)defaultAnimation {
    r0 = sub_10004ef7c(self, @"Default Timeline");
    return r0;
}

-(double)onLeaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_inputBar));
    [*(self + r21) dismissKeyboard];
    r0 = *(r19 + r21);
    r0 = [r0 setIsEnabled:r2];
    if ((arg3 & 0x1) == 0x0) {
            [r19 hideFeatureMenu];
            r0 = [r19 hidePromoMenu];
    }
    return r0;
}

-(void)hidePromoElements {
    [self->_promoMenu runAction:[self hidePromoMenuAction]];
    [self->_featureMenu runAction:[self hideFeatureMenuAction]];
    return;
}

-(void)showPromoElements {
    [self->_promoMenu runAction:[self showPromoMenuAction]];
    [self->_featureMenu runAction:[self showFeatureMenuAction]];
    return;
}

-(void)showPromoMenuWithPromoButton:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    r20 = arg2;
    r19 = self;
    [arg2 setAnchorPoint:r2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_promoMenu));
    [*(r19 + r22) stopAllActions];
    if ([[*(r19 + r22) children] count] == 0x0) goto loc_10001b044;

loc_10001ae34:
    var_158 = r20;
    var_110 = q0;
    var_170 = r22;
    stack[-376] = r19;
    r0 = *(r19 + r22);
    r0 = [r0 children];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_160 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10001af58;

loc_10001ae78:
    r23 = r0;
    r19 = *var_110;
    goto loc_10001ae98;

loc_10001ae98:
    r20 = 0x0;
    goto loc_10001aeac;

loc_10001aeac:
    if (*var_110 != r19) {
            objc_enumerationMutation(r21);
    }
    r24 = @selector(class);
    r28 = *(var_118 + r20 * 0x8);
    objc_msgSend(@class(MCPromoButton), r24);
    if (objc_msgSend(r28, r25) == 0x0) goto loc_10001af1c;

loc_10001aeec:
    r26 = @selector(offerId);
    objc_msgSend(r28, r26);
    objc_msgSend(var_158, r26);
    if ((objc_msgSend(r28, r27) & 0x1) != 0x0) goto loc_10001b00c;

loc_10001af1c:
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_10001aeac;

loc_10001af28:
    r0 = objc_msgSend(r21, var_160);
    r23 = r0;
    if (r0 != 0x0) goto loc_10001ae98;

loc_10001af58:
    r21 = *(stack[-376] + var_170);
    r23 = [stack[-376] hidePromoMenuAction];
    [CCCallBlock actionWithBlock:&var_150];
    [stack[-376] showPromoMenuAction];
    [CCSequence actions:r23];
    [r21 runAction:r2];
    goto loc_10001b00c;

loc_10001b00c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10001b044:
    var_60 = **___stack_chk_guard;
    [*(r19 + r22) addChild:r20];
    r20 = *(r19 + r22);
    r0 = [r19 showPromoMenuAction];
    if (**___stack_chk_guard == var_60) {
            [r20 runAction:r2];
    }
    else {
            __stack_chk_fail();
    }
    return;
}

-(void)hideFeatureMenu {
    r20 = self->_featureMenu;
    r22 = [self hideFeatureMenuAction];
    [CCCallBlock actionWithBlock:&var_48];
    [CCSequence actions:r22];
    [r20 runAction:r2];
    return;
}

-(void)showFeatureMenuWithPromoButton:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    r20 = arg2;
    r19 = self;
    [arg2 setAnchorPoint:r2];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_featureMenu));
    [*(r19 + r22) stopAllActions];
    if ([[*(r19 + r22) children] count] == 0x0) goto loc_10001b408;

loc_10001b1f8:
    var_158 = r20;
    var_110 = q0;
    var_170 = r22;
    stack[-376] = r19;
    r0 = *(r19 + r22);
    r0 = [r0 children];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_160 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10001b31c;

loc_10001b23c:
    r23 = r0;
    r19 = *var_110;
    goto loc_10001b25c;

loc_10001b25c:
    r20 = 0x0;
    goto loc_10001b270;

loc_10001b270:
    if (*var_110 != r19) {
            objc_enumerationMutation(r21);
    }
    r24 = @selector(class);
    r28 = *(var_118 + r20 * 0x8);
    objc_msgSend(@class(MCPromoButton), r24);
    if (objc_msgSend(r28, r25) == 0x0) goto loc_10001b2e0;

loc_10001b2b0:
    r26 = @selector(offerId);
    objc_msgSend(r28, r26);
    objc_msgSend(var_158, r26);
    if ((objc_msgSend(r28, r27) & 0x1) != 0x0) goto loc_10001b3d0;

loc_10001b2e0:
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_10001b270;

loc_10001b2ec:
    r0 = objc_msgSend(r21, var_160);
    r23 = r0;
    if (r0 != 0x0) goto loc_10001b25c;

loc_10001b31c:
    r21 = *(stack[-376] + var_170);
    r23 = [stack[-376] hideFeatureMenuAction];
    [CCCallBlock actionWithBlock:&var_150];
    [stack[-376] showFeatureMenuAction];
    [CCSequence actions:r23];
    [r21 runAction:r2];
    goto loc_10001b3d0;

loc_10001b3d0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10001b408:
    var_60 = **___stack_chk_guard;
    [*(r19 + r22) addChild:r20];
    r20 = *(r19 + r22);
    r0 = [r19 showFeatureMenuAction];
    if (**___stack_chk_guard == var_60) {
            [r20 runAction:r2];
    }
    else {
            __stack_chk_fail();
    }
    return;
}

-(void)hidePromoMenu {
    r20 = self->_promoMenu;
    r22 = [self hidePromoMenuAction];
    [CCCallBlock actionWithBlock:&var_48];
    [CCSequence actions:r22];
    [r20 runAction:r2];
    return;
}

-(void *)hidePromoMenuAction {
    [self->_promoMenu position];
    sub_10076b628();
    asm { fcvt       d2, s0 };
    r0 = [r19 actionWithDuration:r2 position:r3];
    return r0;
}

-(void *)showPromoMenuAction {
    [self->_promoMenu position];
    sub_10076b628();
    asm { fcvt       d2, s0 };
    r0 = [r19 actionWithDuration:r2 position:r3];
    return r0;
}

-(void *)hideFeatureMenuAction {
    sub_10076b628();
    asm { fcvt       d8, s0 };
    [r19->_featureMenu position];
    r0 = [r20 actionWithDuration:r2 position:r3];
    return r0;
}

-(void *)showFeatureMenuAction {
    sub_10076b628();
    asm { fcvt       d8, s0 };
    [r19->_featureMenu position];
    r0 = [r20 actionWithDuration:r2 position:r3];
    return r0;
}

-(void)enableInput:(bool)arg2 {
    r0 = self;
    r8 = &@selector(enableInput);
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(disableInput);
            }
            else {
                    r8 = &@selector(enableInput);
            }
    }
    objc_msgSend(r0, *r8);
    return;
}

-(void)fadeEnabledState:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_fade;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = 0x0;
            }
            else {
                    r2 = 0x50;
            }
    }
    [CCFadeTo actionWithDuration:r2 opacity:r3];
    [r19 runAction:r2];
    return;
}

-(void)tankAnimShowState:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            sub_10004ef7c(r19, @"Tank Anim");
            [r19->_tankAnim setVisible:0x1];
            r0 = r19->_pbutton;
    }
    else {
            [r19->_tankAnim setVisible:r2];
            r0 = r19->_pbutton;
    }
    [r0 setVisible:r2];
    return;
}

-(void)closeGDPRPopup {
    [self showGDPRPopup:r2];
    return;
}

-(void)showGDPRPopup:(bool)arg2 {
    [self->_gdprPopup setVisible:r2];
    [self->_inputBar setIsEnabled:r2];
    return;
}

-(bool)isHelpShown {
    r0 = self->_menuHelp;
    r0 = [r0 visible];
    return r0;
}

-(void)showHelp:(bool)arg2 {
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
    r19 = self;
    if (arg2 != 0x0) {
            if (([[[[Application sharedApplication] userData] settings] shootJoystickOnRight] & 0x1) != 0x0) {
                    [r19->_helpRightPosition position];
                    [r19->_shootHelpImage setPosition:r2];
                    r8 = 0x1011697a0;
            }
            else {
                    [r19->_helpLeftPosition position];
                    [r19->_shootHelpImage setPosition:r2];
                    r8 = 0x1011697a8;
            }
            [*(r19 + sign_extend_64(*(int32_t *)r8)) position];
            [r19->_moveHelpImage setPosition:r2];
            [r19->_menuHelp setVisible:0x1];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_helpTransparentLayer));
            [*(r19 + r21) setOpacity:0x0];
            [*(r19 + r21) setVisible:0x1];
            r20 = *(r19 + r21);
            r2 = *(int8_t *)(int64_t *)&r19->_helpTransparentLayerOpacity;
            r2 = [CCFadeTo actionWithDuration:r2 opacity:r3];
            [r20 runAction:r2];
            [CCShow action];
            [CCFadeIn actionWithDuration:r2];
            [CCSequence actionOne:r2 two:r3];
    }
    else {
            r20 = r19->_menuHelp;
            r21 = @class(CCSequence);
            r22 = [CCDelayTime actionWithDuration:r2];
            r3 = [CCHide action];
            [r20 runAction:[r21 actionOne:r22 two:r3]];
            [r19->_helpTransparentLayer runAction:[CCSequence actionOne:[CCFadeTo actionWithDuration:0x0 opacity:r3] two:[CCHide action]]];
    }
    [r19->_inputBar setIsEnabled:r2];
    return;
}

-(void)checkAndShowNicknameLabel {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_inputBar;
    r0 = [r0 labelText];
    if (r0 != 0x0) {
            r8 = [r0 isEqualToString:@""];
            r0 = r19->_nicknameLabel;
    }
    else {
            r0 = r19->_nicknameLabel;
    }
    [r0 setVisible:r2];
    return;
}

-(void)switchGameMode:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self->_gameModeButton setIsEnabled:0x0];
    [self->_inputBar setIsEnabled:0x0];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_10004ee0c(self, @"ModeLeave", &var_60);
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    return;
}

-(void *)gameModeLabel {
    r0 = self->_gameModeLabel;
    return r0;
}

-(void)setGameModeLabel:(void *)arg2 {
    self->_gameModeLabel = arg2;
    return;
}

-(void).cxx_destruct {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_showing_skin_id));
    r8 = self + r8;
    if ((sign_extend_64(*(int8_t *)(r8 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r8);
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_showing_skin_id));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    return r0;
}

@end