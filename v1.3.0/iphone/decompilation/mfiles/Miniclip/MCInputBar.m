@implementation MCInputBar

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithTarget:self selector:@selector(inputTextCallback)];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 contentSize];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_filterAreaSize));
            *(int128_t *)(r19 + r8) = d0;
            *(int128_t *)(0x8 + r19 + r8) = d1;
            r19->mTouchBeganCallback = [Callback new];
            r19->mTouchMovedCallback = [Callback new];
            [[r19 touchBeganCallback] setTarget:r19];
            [[r19 touchBeganCallback] setSelector:@selector(inputTextEditBeganCallback:)];
            [[r19 touchMovedCallback] setTarget:r19];
            [[r19 touchMovedCallback] setSelector:@selector(inputTextEditMovedCallback:)];
            *(int8_t *)(int64_t *)&r19->_filterEditing = 0x0;
            *(int8_t *)(int64_t *)&r19->_clearing = 0x0;
            *(int8_t *)(int64_t *)&r19->_bypassDismissOnClearChecks = 0x0;
            *(int32_t *)(int64_t *)&r19->_defaultTextColor = 0xa6a6a6;
            *(int32_t *)(int64_t *)&r19->_textColor = 0xffffff;
            r19->_defaultText = @" ";
            r19->_fontName = [@"Arial-BoldMT" retain];
            sub_1005cb618();
            *(int32_t *)(int64_t *)&r19->_fontSize = *(int32_t *)0x1011c07c4 * 0x4034000000000000;
            *(int32_t *)(int64_t *)&r19->_labelLength = 0x1e;
            *(int8_t *)(int64_t *)&r19->_hideShortcutBar = 0x0;
            *(int8_t *)(int64_t *)&r19->_dismissOnClear = 0x1;
            *(int8_t *)(int64_t *)&r19->_isBlinkingEnabled = 0x0;
            r19->_blinkingFont = 0x0;
            r19->_blinkingCursor = 0x0;
            r19->_delegates = [[NSMutableArray array] retain];
            *(int8_t *)(int64_t *)&r19->_dismissWhenFocused = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)onEnter {
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self priority:0xffffffff80000001 swallowsTouches:0x0];
    [[self touchBeganCallback] setTarget:self];
    [[self touchBeganCallback] setSelector:@selector(inputTextEditBeganCallback:)];
    [[self touchMovedCallback] setTarget:self];
    [[self touchMovedCallback] setSelector:@selector(inputTextEditMovedCallback:)];
    [[&var_30 super] onEnter];
    return;
}

-(void)onExit {
    [[[CCDirector sharedDirector] touchDispatcher] removeDelegate:self];
    [[self touchBeganCallback] setTarget:0x0];
    [[self touchBeganCallback] setSelector:0x0];
    [[self touchMovedCallback] setTarget:0x0];
    [[self touchMovedCallback] setSelector:0x0];
    [[&var_30 super] onExit];
    return;
}

-(void)keyboardDismissed {
    [self dismissKeyboard];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
    [*(self + r20) stopAllActions];
    [*(self + r20) setVisible:r2];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchBeganCallback));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTouchMovedCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegates));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_defaultText));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)createCursor {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r19->_blinkingFont != 0x0 && *(int8_t *)(int64_t *)&r19->_isBlinkingEnabled != 0x0 && [self normalImage] != 0x0 && r19->_filterTextLabel != 0x0) {
            if ([r19 normalImage] != 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->_isBlinkingFontTTF != 0x0) {
                            r1 = @selector(createTTFCursor);
                    }
                    else {
                            r1 = @selector(createBMFCursor);
                    }
                    objc_msgSend(r19, r1);
            }
    }
    return;
}

-(void)createTTFCursor {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = @class(MCAdjustableLabelTTF);
    asm { fcvt       d0, s0 };
    r0 = [r0 labelWithString:r2 fontName:r3 fontSize:r4];
    if (r0 != 0x0) {
            [r0 setColor:*(int32_t *)(int64_t *)&r19->_textColor];
            [r0 setVisible:0x0];
            [r19 removeExistingCursor];
            [r19 addChild:r0 z:0x32];
            r19->_blinkingCursor = r0;
    }
    return;
}

-(void)createLabel {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
    if (*(self + r20) != 0x0) {
            [r19 removeChild:r2 cleanup:0x0];
    }
    if ([r19 normalImage] != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_defaultText));
            r2 = *(r19 + r21);
            r0 = @class(CCLabelTTF);
            r3 = r19->_fontName;
            asm { fcvt       d0, s0 };
            r0 = [r0 labelWithString:r2 fontName:r3 fontSize:r4];
            *(r19 + r20) = r0;
            [r0 setAnchorPoint:r2];
            [*(r19 + r20) setTextFillColor:*(int32_t *)(int64_t *)&r19->_defaultTextColor];
            r2 = *(r19 + r21);
            [*(r19 + r20) setString:r2];
            [r19 contentSize];
            [*(r19 + r20) setPosition:r2];
            [*(r19 + r20) setStrokeEnabled:0x1];
            [r19 addChild:*(r19 + r20) z:0x2d];
            [r19 updateLabelVisibility:*(r19 + r20)];
    }
    return;
}

-(void)createBMFCursor {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [MCAdjustableLabelBMFont labelWithString:@"|" fntFile:r19->_blinkingFont];
    if (r0 != 0x0) {
            r2 = @"|";
            r20 = r0;
            [r19->_filterTextLabel contentSize];
            [r20 contentSize];
            asm { fdiv       d0, d8, d1 };
            asm { fcvt       s0, d0 };
            [r20 setScaleY:r2];
            [r20 setVisible:0x0];
            [r20 setColor:*(int32_t *)(int64_t *)&r19->_textColor];
            [r19 removeExistingCursor];
            [r19 addChild:r20 z:0x32];
            r19->_blinkingCursor = r20;
    }
    return;
}

-(void)removeExistingCursor {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
    if (*(r0 + r20) != 0x0) {
            [r0 removeChild:r2 cleanup:0x1];
            *(r0 + r20) = 0x0;
    }
    return;
}

-(void)updateLabelVisibility:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            var_20 = r20;
            stack[-24] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r2;
            r0 = [r2 string];
            if (r0 != 0x0) {
                    [r0 isEqualToString:r2] ^ 0x1;
            }
            [r19 setVisible:r2];
    }
    return;
}

-(void)createInnerClearButton:(void *)arg2 {
    [self setClearButton:arg2];
    return;
}

-(void)setClearButton:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_clearButton));
    if (*(self + r21) != 0x0) {
            [r19 removeChild:r2 cleanup:0x1];
    }
    *(r19 + r21) = r20;
    [r19 addChild:r20];
    [*(r19 + r21) setVisible:r2];
    return;
}

-(void *)clearButton {
    r0 = self->_clearButton;
    return r0;
}

-(void)createBMFBlinkingCursor:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_isBlinkingEnabled = 0x1;
    [self setBMFBlinkingFont:arg2];
    return;
}

-(void)createInputWithDefaultText:(void *)arg2 fontName:(void *)arg3 fontSize:(float)arg4 maxLength:(int)arg5 offset:(struct CGPoint)arg6 contentSizeOffset:(struct CGPoint)arg7 {
    memcpy(&r7, &arg7, 0x8);
    memcpy(&r6, &arg6, 0x8);
    r4 = arg4;
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
    r21 = arg3;
    r20 = arg2;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_labelOffset));
    *(int128_t *)(r0 + r8) = d1;
    *(int128_t *)(0x8 + r0 + r8) = d2;
    r8 = 0x1e;
    if (r4 > 0x0) {
            if (!CPU_FLAGS & G) {
                    r8 = 0x1e;
            }
            else {
                    r8 = r4;
            }
    }
    *(int32_t *)(int64_t *)&r0->_labelLength = r8;
    *(int32_t *)(int64_t *)&r0->_fontSize = s0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r0 = *(r0 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    *(r19 + r22) = [r21 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_labelSizeOffset));
    *(r19 + r8) = d9;
    *(0x8 + r19 + r8) = d8;
    [r19 setDefaultText:r20];
    [r19 createLabel];
    if (r19->_blinkingFont != 0x0) {
            [r19 createBlinkingCursor:r2];
    }
    return;
}

-(void)createBlinkingCursor:(void *)arg2 {
    [self createBMFBlinkingCursor:arg2];
    return;
}

-(void)createTTFBlinkingCursor:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_isBlinkingEnabled = 0x1;
    [self setTTFBlinkingFont:arg2];
    return;
}

-(void)dismissKeyboard {
    [[KeyboardInput sharedKeyboardInput] hideKeyboardInput];
    [self inputTextEnteredCallback:r2];
    return;
}

-(void)registerDelegate:(void *)arg2 {
    [self->_delegates addObject:r2];
    return;
}

-(void *)filterArray:(void *)arg2 withCompareBlock:(void *)arg3 {
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r22 = [NSMutableArray array];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r27 = *var_110;
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_filterText));
            do {
                    r23 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r23 * 0x8);
                            if ((*(r19 + 0x10))(r19, r26, *(r21 + r28)) != 0x0) {
                                    [r22 addObject:r2];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r0 = objc_msgSend(r20, var_128);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)clearInput {
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
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_filterText));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    *(r19 + r20) = [@"" retain];
    if (*(int8_t *)(int64_t *)&r19->_dismissOnClear != 0x0 && *(int8_t *)(int64_t *)&r19->_bypassDismissOnClearChecks == 0x0) {
            *(int8_t *)(int64_t *)&r19->_filterEditing = 0x0;
    }
    if ([[KeyboardInput sharedKeyboardInput] isActive] != 0x0) {
            [[KeyboardInput sharedKeyboardInput] clearText];
            r8 = &@selector(inputTextUpdatedCallback:);
    }
    else {
            r8 = &@selector(inputTextEnteredCallback:);
    }
    objc_msgSend(r19, *r8);
    r0 = r19->_clearButton;
    if (r0 != 0x0) {
            [r0 setVisible:r2];
    }
    var_110 = q0;
    r19 = r19->_delegates;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_118 + r26 * 0x8) inputTextUpdatedCallback:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)filterArray:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    var_128 = [NSMutableArray array];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r19);
                            }
                            r27 = *(var_118 + r21 * 0x8);
                            if ([r27 conformsToProtocol:@protocol()] != 0x0 && [r27 filtered:r20->_filterText] != 0x0) {
                                    [var_128 addObject:r2];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r0 = objc_msgSend(r19, var_130);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_128;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)unregisterDelegate:(void *)arg2 {
    [self->_delegates removeObject:arg2];
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_filterEditing != 0x0) {
            r19 = r2;
            r20 = r0;
            if ([r0 touchMovedCallback] != 0x0 && [[r20 touchMovedCallback] target] != 0x0) {
                    if ([[r20 touchMovedCallback] selector] != 0x0) {
                            [r20 inputTextEditMovedCallback:r19];
                    }
            }
    }
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
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
    r0 = [self isEnabled];
    if (r0 != 0x0) {
            r8 = *_CGPointZero;
            [r20 locationInView:[r20 view]];
            v8 = v0;
            v9 = v1;
            [[CCDirector sharedDirector] convertToGL:r2];
            if ([r19 isEnabled] != 0x0) {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clearButton));
                    r0 = *(r19 + r22);
                    if (r0 != 0x0 && [r0 visible] != 0x0) {
                            [*(r19 + r22) convertToNodeSpace:r2];
                            [*(r19 + r22) contentSize];
                            if (CGRectContainsPoint(objc_msgSend(*(r19 + r22), r21), r21) != 0x0) {
                                    if (*(int8_t *)(int64_t *)&r19->_dismissOnClear != 0x0) {
                                            [r19 dismissKeyboard];
                                            *(int8_t *)(int64_t *)&r19->_filterEditing = 0x0;
                                    }
                                    [r19 clearInput];
                                    r0 = 0x1;
                                    *(int8_t *)(int64_t *)&r19->_clearing = r0;
                            }
                            else {
                                    if (*(int8_t *)(int64_t *)&r19->_filterEditing != 0x0 && *(int8_t *)(int64_t *)&r19->_dismissWhenFocused != 0x0) {
                                            [r19 convertToNodeSpace:r2];
                                            [r19 contentSize];
                                            if ((CGRectContainsPoint(objc_msgSend(r19, r21), r21) & 0x1) != 0x0) {
                                                    r0 = [r19 touchBeganCallback];
                                                    if (r0 != 0x0) {
                                                            r0 = [r19 touchBeganCallback];
                                                            r0 = [r0 target];
                                                            if (r0 != 0x0) {
                                                                    r0 = [r19 touchBeganCallback];
                                                                    r0 = [r0 selector];
                                                                    if (r0 != 0x0) {
                                                                            [r19 inputTextEditBeganCallback:r20];
                                                                            r0 = 0x0;
                                                                    }
                                                            }
                                                    }
                                            }
                                            else {
                                                    [r19 dismissKeyboard];
                                                    r0 = 0x1;
                                            }
                                    }
                                    else {
                                            r0 = [r19 touchBeganCallback];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 touchBeganCallback];
                                                    r0 = [r0 target];
                                                    if (r0 != 0x0) {
                                                            r0 = [r19 touchBeganCallback];
                                                            r0 = [r0 selector];
                                                            if (r0 != 0x0) {
                                                                    [r19 inputTextEditBeganCallback:r20];
                                                                    r0 = 0x0;
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                    else {
                            if (*(int8_t *)(int64_t *)&r19->_filterEditing != 0x0 && *(int8_t *)(int64_t *)&r19->_dismissWhenFocused != 0x0) {
                                    [r19 convertToNodeSpace:r2];
                                    [r19 contentSize];
                                    if ((CGRectContainsPoint(objc_msgSend(r19, r21), r21) & 0x1) != 0x0) {
                                            r0 = [r19 touchBeganCallback];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 touchBeganCallback];
                                                    r0 = [r0 target];
                                                    if (r0 != 0x0) {
                                                            r0 = [r19 touchBeganCallback];
                                                            r0 = [r0 selector];
                                                            if (r0 != 0x0) {
                                                                    [r19 inputTextEditBeganCallback:r20];
                                                                    r0 = 0x0;
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            [r19 dismissKeyboard];
                                            r0 = 0x1;
                                    }
                            }
                            else {
                                    r0 = [r19 touchBeganCallback];
                                    if (r0 != 0x0) {
                                            r0 = [r19 touchBeganCallback];
                                            r0 = [r0 target];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 touchBeganCallback];
                                                    r0 = [r0 selector];
                                                    if (r0 != 0x0) {
                                                            [r19 inputTextEditBeganCallback:r20];
                                                            r0 = 0x0;
                                                    }
                                            }
                                    }
                            }
                    }
            }
            else {
                    if (*(int8_t *)(int64_t *)&r19->_filterEditing != 0x0 && *(int8_t *)(int64_t *)&r19->_dismissWhenFocused != 0x0) {
                            [r19 convertToNodeSpace:r2];
                            [r19 contentSize];
                            if ((CGRectContainsPoint(objc_msgSend(r19, r21), r21) & 0x1) != 0x0) {
                                    r0 = [r19 touchBeganCallback];
                                    if (r0 != 0x0) {
                                            r0 = [r19 touchBeganCallback];
                                            r0 = [r0 target];
                                            if (r0 != 0x0) {
                                                    r0 = [r19 touchBeganCallback];
                                                    r0 = [r0 selector];
                                                    if (r0 != 0x0) {
                                                            [r19 inputTextEditBeganCallback:r20];
                                                            r0 = 0x0;
                                                    }
                                            }
                                    }
                            }
                            else {
                                    [r19 dismissKeyboard];
                                    r0 = 0x1;
                            }
                    }
                    else {
                            r0 = [r19 touchBeganCallback];
                            if (r0 != 0x0) {
                                    r0 = [r19 touchBeganCallback];
                                    r0 = [r0 target];
                                    if (r0 != 0x0) {
                                            r0 = [r19 touchBeganCallback];
                                            r0 = [r0 selector];
                                            if (r0 != 0x0) {
                                                    [r19 inputTextEditBeganCallback:r20];
                                                    r0 = 0x0;
                                            }
                                    }
                            }
                    }
            }
    }
    return r0;
}

-(void)inputTextEditBeganCallback:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    if ([self isEnabled] != 0x0 && *(int8_t *)(int64_t *)&r20->_filterEditing != 0x0) {
            r2 = [r19 view];
            [r19 locationInView:r2];
            v9 = v1;
            r0 = [CCDirector sharedDirector];
            v0 = v0;
            [r0 convertToGL:r2];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
            if (*(r20 + r27) != 0x0) {
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
                    r21 = *(r20 + r26);
                    r22 = r20->_filterText;
                    r23 = r20->_fontName;
                    asm { fcvt       d9, s0 };
                    [r21 position];
                    [r21 convertToWorldSpace:r2];
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_labelOffset));
                    d0 = (d8 - d0) + *(r20 + r28);
                    if (d0 > 0x0) {
                            r26 = *(r20 + r26);
                            [r26 position];
                            [r26 convertToWorldSpace:r2];
                            asm { fcvt       s1, d0 };
                    }
                    sub_1005ecb44(r21, r22, r23, *(r20 + r27));
            }
            var_120 = q0;
            r20 = r20->_delegates;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_120;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_120 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_128 + r26 * 0x8) inputTextEditBeganCallback:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)inputTextEditMovedCallback:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    if ([self isEnabled] != 0x0 && *(int8_t *)(int64_t *)&r20->_filterEditing != 0x0) {
            r2 = [r19 view];
            [r19 locationInView:r2];
            v9 = v1;
            r0 = [CCDirector sharedDirector];
            v0 = v0;
            [r0 convertToGL:r2];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
            if (*(r20 + r27) != 0x0) {
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
                    r21 = *(r20 + r26);
                    r22 = r20->_filterText;
                    r23 = r20->_fontName;
                    asm { fcvt       d9, s0 };
                    [r21 position];
                    [r21 convertToWorldSpace:r2];
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_labelOffset));
                    d0 = (d8 - d0) + *(r20 + r28);
                    if (d0 > 0x0) {
                            r26 = *(r20 + r26);
                            [r26 position];
                            [r26 convertToWorldSpace:r2];
                            asm { fcvt       s1, d0 };
                    }
                    sub_1005ecb44(r21, r22, r23, *(r20 + r27));
            }
            var_120 = q0;
            r20 = r20->_delegates;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_120;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_120 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_128 + r26 * 0x8) inputTextEditMovedCallback:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)inputTextEnteredCallback {
    [self inputTextEnteredCallback:r2];
    return;
}

-(void)inputTextCallback {
    r31 = r31 - 0x150;
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
    if ([self isEnabled] != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_clearing));
            if (*(int8_t *)(r19 + r8) != 0x0) {
                    *(int8_t *)(r19 + r8) = 0x0;
                    if (*(int8_t *)(int64_t *)&r19->_dismissOnClear == 0x0 || *(int8_t *)(int64_t *)&r19->_bypassDismissOnClearChecks != 0x0) {
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_filterEditing));
                            if (*(int8_t *)(r19 + r22) == 0x0) {
                                    r0 = [KeyboardInput sharedKeyboardInput];
                                    r20 = r0;
                                    r23 = *(int8_t *)(r19 + r22);
                                    r21 = [r0 getCaretPosition];
                                    [r19 inputTextEnteredCallback:@""];
                                    *(int8_t *)(r19 + r22) = 0x1;
                                    [r20 hideKeyboardInput];
                                    [r20 setTextUpdatedCallback:@selector(inputTextUpdatedCallback:) target:r19];
                                    [r20 setTextEnteredCallback:@selector(inputReturnKeyPressedCallback:) target:r19];
                                    [r20 setTextCancelledCallback:@selector(inputTextEnteredCallback) target:r19];
                                    [r20 setCursorChangedCallback:@selector(inputCursorChangedCallback) target:r19];
                                    [r20 setCancelOnEmptyText:0x0];
                                    [r20 setSecureTextEntry:0x0];
                                    [r20 setMaxCharLength:sign_extend_64(*(int32_t *)(int64_t *)&r19->_labelLength)];
                                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_filterText));
                                    r0 = *(r19 + r25);
                                    if (r0 != 0x0) {
                                            if ([r0 isEqualToString:r2] != 0x0) {
                                                    [r20 showKeyboardInput:@"" hideShortcutBar:*(int8_t *)(int64_t *)&r19->_hideShortcutBar];
                                                    [r19->_filterTextLabel setString:r2];
                                            }
                                            else {
                                                    [r20 showKeyboardInput:*(r19 + r25) hideShortcutBar:*(int8_t *)(int64_t *)&r19->_hideShortcutBar];
                                            }
                                    }
                                    else {
                                            [r20 showKeyboardInput:@"" hideShortcutBar:*(int8_t *)(int64_t *)&r19->_hideShortcutBar];
                                            [r19->_filterTextLabel setString:r2];
                                    }
                                    [r20 setDismissButtonEnabled:0x0];
                                    if (r23 == 0x0) {
                                            r21 = [*(r19 + r25) length];
                                    }
                                    [r20 setCaretPosition:r21];
                                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
                                    r3 = *(r19 + r24);
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
                                    if (r3 != 0x0) {
                                            r0 = *(r19 + r23);
                                            r1 = *(r19 + r25);
                                            r2 = r19->_fontName;
                                            asm { fcvt       d0, s0 };
                                            sub_1005ec9f4(r0, r1, r2, r3);
                                            [*(r19 + r24) stopAllActions];
                                            [*(r19 + r24) setOpacity:0xff];
                                            [*(r19 + r24) setVisible:0x1];
                                            [CCFadeOut actionWithDuration:0x1];
                                            [CCFadeIn actionWithDuration:0x1];
                                            [*(r19 + r24) runAction:[CCRepeatForever actionWithAction:[CCSequence actions:r2]]];
                                            [*(r19 + r24) resumeSchedulerAndActions];
                                    }
                                    [r19 updateLabelVisibility:*(r19 + r23)];
                                    [r19 setIsEnabled:0x1];
                                    var_120 = q0;
                                    r19 = r19->_delegates;
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r21 = r0;
                                            r23 = *var_120;
                                            do {
                                                    r25 = 0x0;
                                                    do {
                                                            if (*var_120 != r23) {
                                                                    objc_enumerationMutation(r19);
                                                            }
                                                            [*(var_128 + r25 * 0x8) inputTextCallback];
                                                            r25 = r25 + 0x1;
                                                    } while (r25 < r21);
                                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r21 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                    }
            }
            else {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_filterEditing));
                    if (*(int8_t *)(r19 + r22) == 0x0) {
                            r0 = [KeyboardInput sharedKeyboardInput];
                            r20 = r0;
                            r23 = *(int8_t *)(r19 + r22);
                            r21 = [r0 getCaretPosition];
                            [r19 inputTextEnteredCallback:@""];
                            *(int8_t *)(r19 + r22) = 0x1;
                            [r20 hideKeyboardInput];
                            [r20 setTextUpdatedCallback:@selector(inputTextUpdatedCallback:) target:r19];
                            [r20 setTextEnteredCallback:@selector(inputReturnKeyPressedCallback:) target:r19];
                            [r20 setTextCancelledCallback:@selector(inputTextEnteredCallback) target:r19];
                            [r20 setCursorChangedCallback:@selector(inputCursorChangedCallback) target:r19];
                            [r20 setCancelOnEmptyText:0x0];
                            [r20 setSecureTextEntry:0x0];
                            [r20 setMaxCharLength:sign_extend_64(*(int32_t *)(int64_t *)&r19->_labelLength)];
                            r25 = sign_extend_64(*(int32_t *)ivar_offset(_filterText));
                            r0 = *(r19 + r25);
                            if (r0 != 0x0) {
                                    if ([r0 isEqualToString:r2] != 0x0) {
                                            [r20 showKeyboardInput:@"" hideShortcutBar:*(int8_t *)(int64_t *)&r19->_hideShortcutBar];
                                            [r19->_filterTextLabel setString:r2];
                                    }
                                    else {
                                            [r20 showKeyboardInput:*(r19 + r25) hideShortcutBar:*(int8_t *)(int64_t *)&r19->_hideShortcutBar];
                                    }
                            }
                            else {
                                    [r20 showKeyboardInput:@"" hideShortcutBar:*(int8_t *)(int64_t *)&r19->_hideShortcutBar];
                                    [r19->_filterTextLabel setString:r2];
                            }
                            [r20 setDismissButtonEnabled:0x0];
                            if (r23 == 0x0) {
                                    r21 = [*(r19 + r25) length];
                            }
                            [r20 setCaretPosition:r21];
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
                            r3 = *(r19 + r24);
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
                            if (r3 != 0x0) {
                                    r0 = *(r19 + r23);
                                    r1 = *(r19 + r25);
                                    r2 = r19->_fontName;
                                    asm { fcvt       d0, s0 };
                                    sub_1005ec9f4(r0, r1, r2, r3);
                                    [*(r19 + r24) stopAllActions];
                                    [*(r19 + r24) setOpacity:0xff];
                                    [*(r19 + r24) setVisible:0x1];
                                    [CCFadeOut actionWithDuration:0x1];
                                    [CCFadeIn actionWithDuration:0x1];
                                    [*(r19 + r24) runAction:[CCRepeatForever actionWithAction:[CCSequence actions:r2]]];
                                    [*(r19 + r24) resumeSchedulerAndActions];
                            }
                            [r19 updateLabelVisibility:*(r19 + r23)];
                            [r19 setIsEnabled:0x1];
                            var_120 = q0;
                            r19 = r19->_delegates;
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    r23 = *var_120;
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*var_120 != r23) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    [*(var_128 + r25 * 0x8) inputTextCallback];
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r21);
                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r21 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)inputReturnKeyPressedCallback:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    if ([self isEnabled] != 0x0) {
            [r19 inputTextEnteredCallback:r20];
            var_110 = q0;
            r19 = r19->_delegates;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r25 = *var_110;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_110 != r25) {
                                            objc_enumerationMutation(r19);
                                    }
                                    r23 = @selector(respondsToSelector:);
                                    r24 = *(var_118 + r28 * 0x8);
                                    if (objc_msgSend(r24, r23) != 0x0) {
                                            [r24 inputReturnKeyPressedCallback];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)inputTextUpdatedCallback:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([self isEnabled] != 0x0) {
            [r20 inputTextUpdatedCallback:r19 skipDelegates:0x0];
    }
    return;
}

-(void)inputCursorChangedCallback {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingCursor));
    if (*(r0 + r23) != 0x0) {
            r19 = r0;
            r20 = *(r0 + sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel)));
            r21 = r0->_filterText;
            r22 = r0->_fontName;
            asm { fcvt       d8, s0 };
            [r0 contentSize];
            asm { fcvt       s1, d0 };
            sub_1005ec830(r20, r21, r22, 0x0, *(r19 + r23));
            [r19 updateLabelVisibility:*(r19 + r24)];
    }
    return;
}

-(void)inputTextEnteredCallback:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    if ([self isEnabled] != 0x0) {
            r0 = r20->_filterText;
            if (r0 == 0x0 || [r0 isEqualToString:r2] != 0x0) {
                    r2 = r20->_defaultText;
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
                    r0 = *(r20 + r22);
                    [r0 setString:r2];
                    [*(r20 + r22) setTextFillColor:*(int32_t *)(int64_t *)&r20->_defaultTextColor];
                    [r20 updateLabelVisibility:*(r20 + r22)];
                    r0 = r20->_clearButton;
                    if (r0 != 0x0) {
                            [r0 setVisible:r2];
                    }
            }
            r0 = r20->_blinkingCursor;
            if (r0 != 0x0) {
                    [r0 setVisible:r2];
            }
            *(int8_t *)(int64_t *)&r20->_filterEditing = 0x0;
            var_110 = q0;
            r20 = r20->_delegates;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_118 + r26 * 0x8) inputTextEnteredCallback:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setClearButtonPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_clearButtonPosition));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    r0 = self->_clearButton;
    if (r0 != 0x0) {
            [r0 setPosition:r2];
    }
    return;
}

-(struct CGPoint)clearButtonPosition {
    r0 = self;
    return r0;
}

-(void)setIsEnabled:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [[&var_20 super] setIsEnabled:r2];
    r8 = &@selector(enableInput);
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(disableInput);
            }
            else {
                    r8 = &@selector(enableInput);
            }
    }
    objc_msgSend(r20, *r8);
    return;
}

-(void)inputTextUpdatedCallback:(void *)arg2 skipDelegates:(bool)arg3 {
    r3 = arg3;
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
    r21 = r3;
    r20 = arg2;
    r19 = self;
    if ([self isEnabled] != 0x0 && *(int8_t *)(int64_t *)&r19->_filterEditing != 0x0) {
            r2 = *(int32_t *)(int64_t *)&r19->_textColor;
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
            [*(r19 + r27) setTextFillColor:r2];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_filterText));
            r0 = *(r19 + r25);
            if (r0 != 0x0) {
                    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                            r22 = 0x0;
                    }
                    else {
                            r22 = [*(r19 + r25) length];
                    }
                    r0 = *(r19 + r25);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + r25) = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
            }
            if (r20 != 0x0) {
                    r0 = [NSString stringWithString:r20];
                    r0 = [r0 retain];
                    *(r19 + r25) = r0;
                    if (r0 != 0x0) {
                            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                                    r0 = 0x0;
                            }
                            else {
                                    r0 = *(r19 + r25);
                                    r0 = [r0 length];
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
            r23 = *(r19 + r27);
            r24 = *(r19 + r25);
            r22 = r19->_fontName;
            asm { fcvt       d8, s0 };
            [r19 contentSize];
            asm { fcvt       s1, d0 };
            asm { sxtw       x3, w26 };
            sub_1005ec830(r23, r24, r22, r3, r19->_blinkingCursor);
            [r19 updateLabelVisibility:*(r19 + r27)];
            if ((r21 & 0x1) == 0x0) {
                    var_120 = q0;
                    r21 = r19->_delegates;
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r27 = *var_120;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_120 != r27) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            [*(var_128 + r26 * 0x8) inputTextUpdatedCallback:r2];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
            }
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_clearButton));
            if (*(r19 + r20) != 0x0) {
                    r8 = [*(r19 + r25) isEqualToString:@""];
                    r0 = *(r19 + r20);
                    [r0 setVisible:r2];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)enableInput {
    [[self touchBeganCallback] setTarget:self];
    [[self touchBeganCallback] setSelector:@selector(inputTextEditBeganCallback:)];
    [[self touchMovedCallback] setTarget:self];
    [[self touchMovedCallback] setSelector:@selector(inputTextEditMovedCallback:)];
    return;
}

-(void)setFontName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    *(r19 + r21) = [r20 retain];
    [r19 createLabel];
    return;
}

-(void)disableInput {
    [[self touchBeganCallback] setTarget:0x0];
    [[self touchBeganCallback] setSelector:0x0];
    [[self touchMovedCallback] setTarget:0x0];
    [[self touchMovedCallback] setSelector:0x0];
    return;
}

-(void)setFontSize:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_fontSize = s0;
    [self createLabel];
    return;
}

-(void *)fontName {
    r0 = self->_fontName;
    return r0;
}

-(void)setBlinkingFont:(void *)arg2 {
    [self setBMFBlinkingFont:arg2];
    return;
}

-(float)fontSize {
    r0 = self;
    return r0;
}

-(void)setBMFBlinkingFont:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_isBlinkingFontTTF = 0x0;
    [self setAndCreateBlinkingCursor:arg2];
    return;
}

-(void)setTTFBlinkingFont:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_isBlinkingFontTTF = 0x1;
    [self setAndCreateBlinkingCursor:arg2];
    return;
}

-(void *)blinkingFont {
    r0 = self->_blinkingFont;
    return r0;
}

-(void)setAndCreateBlinkingCursor:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_blinkingFont));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    *(r19 + r21) = [r20 retain];
    [r19 createCursor];
    return;
}

-(struct CGSize)frameSize {
    r0 = self;
    return r0;
}

-(void)setFrameSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    r20 = [self normalImage];
    [FramedSprite class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            [r20 requestSize:0x2 round:r3];
    }
    else {
            r22 = @selector(isKindOfClass:);
            [MCFramedSprite class];
            if (objc_msgSend(r20, r22) != 0x0) {
                    [r20 setRoundType:0x2];
                    [r20 setContentSize:r2];
            }
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_frameSize));
    *(r19 + r8) = d9;
    *(0x8 + r19 + r8) = d8;
    return;
}

-(void)setLabelText:(void *)arg2 {
    r2 = sub_1005b9c04(arg2, *(int32_t *)(int64_t *)&self->_labelLength);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_filterEditing));
    r21 = *(int8_t *)(self + r20);
    *(int8_t *)(self + r20) = 0x1;
    [self inputTextUpdatedCallback:r2 skipDelegates:0x1];
    *(int8_t *)(self + r20) = r21;
    return;
}

-(void *)getLabelText {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r0 = [r8 string];
    }
    else {
            r0 = r0->_filterText;
    }
    return r0;
}

-(void)setLabelOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r20 = (int64_t *)&r0->_labelOffset;
    *(int128_t *)r20 = d0;
    *(int128_t *)(r20 + 0x8) = d1;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_filterTextLabel));
    if (*(r0 + r21) != 0x0) {
            [r0 contentSize];
            [*(r0 + r21) setPosition:r2];
    }
    return;
}

-(void)setFrame:(void *)arg2 {
    [arg2 contentSize];
    [self setContentSize:r2];
    [self setNormalImage:arg2];
    [self createCursor];
    return;
}

-(void *)frame {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self normalImage];
    [FramedSprite class];
    r0 = [r19 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void *)getFrame {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self normalImage];
    [FramedSprite class];
    r0 = [r19 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void)setMcFramedSprite:(void *)arg2 {
    [arg2 contentSize];
    [self setContentSize:r2];
    [self setNormalImage:arg2];
    [self createCursor];
    return;
}

-(void *)mcFramedSprite {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self normalImage];
    [MCFramedSprite class];
    r0 = [r19 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void *)getMcFramedSprite {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self normalImage];
    [MCFramedSprite class];
    r0 = [r19 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setContentSize:r2];
    [self setLabelOffset:r2];
    return;
}

-(void)setTextColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_textColor = r2;
    [self->_filterTextLabel setTextFillColor:r2 & 0xffffffff];
    [self setCursorColor:r2 & 0xffffffff];
    return;
}

-(void)setCursorColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [self->_blinkingCursor setColor:r2];
    return;
}

-(void)setDefaultText:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            r20 = r2;
            if ([r20 isEqualToString:r2] != 0x0) {
                    r20 = @" ";
            }
    }
    else {
            r20 = @" ";
    }
    r20 = sub_1005b9c04(r20, *(int32_t *)(int64_t *)&r19->_labelLength);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_defaultText));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    *(r19 + r21) = [r20 retain];
    return;
}

-(void)setTextFillColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [self->_filterTextLabel setTextFillColor:r2 & 0xffffffff];
    return;
}

-(struct _ccColorThreeB)textFillColor {
    r0 = self->_filterTextLabel;
    r0 = [r0 textFillColor];
    r0 = r0 & 0xffffffff;
    return r0;
}

-(void)setStrokeEnabled:(bool)arg2 {
    [self->_filterTextLabel setStrokeEnabled:r2];
    return;
}

-(void)setLabelLength:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_labelLength = arg2;
    return;
}

-(bool)strokeEnabled {
    r0 = self->_filterTextLabel;
    r0 = [r0 strokeEnabled];
    return r0;
}

-(int)labelLength {
    r0 = *(int32_t *)(int64_t *)&self->_labelLength;
    return r0;
}

-(void)setIsBlinkingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isBlinkingEnabled = arg2;
    return;
}

-(struct _ccColorThreeB)textColor {
    r0 = *(int32_t *)(int64_t *)&self->_textColor;
    return r0;
}

-(bool)isBlinkingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isBlinkingEnabled;
    return r0;
}

-(struct CGPoint)labelOffset {
    r0 = self;
    return r0;
}

-(bool)dismissWhenFocused {
    r0 = *(int8_t *)(int64_t *)&self->_dismissWhenFocused;
    return r0;
}

-(void)setDefaultTextColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_defaultTextColor = r2;
    return;
}

-(struct _ccColorThreeB)defaultTextColor {
    r0 = *(int32_t *)(int64_t *)&self->_defaultTextColor;
    return r0;
}

-(struct CGPoint)labelSizeOffset {
    r0 = self;
    return r0;
}

-(void)setDismissWhenFocused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_dismissWhenFocused = arg2;
    return;
}

-(void)setLabelSizeOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_labelSizeOffset));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)labelText {
    r0 = self->_filterText;
    return r0;
}

-(bool)dismissOnClear {
    r0 = *(int8_t *)(int64_t *)&self->_dismissOnClear;
    return r0;
}

-(void *)defaultText {
    r0 = self->_defaultText;
    return r0;
}

-(void)setDismissOnClear:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_dismissOnClear = arg2;
    return;
}

-(bool)hideShortcutBar {
    r0 = *(int8_t *)(int64_t *)&self->_hideShortcutBar;
    return r0;
}

-(bool)bypassDismissOnClearChecks {
    r0 = *(int8_t *)(int64_t *)&self->_bypassDismissOnClearChecks;
    return r0;
}

-(void)setHideShortcutBar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hideShortcutBar = arg2;
    return;
}

-(void)setBypassDismissOnClearChecks:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bypassDismissOnClearChecks = arg2;
    return;
}

@end