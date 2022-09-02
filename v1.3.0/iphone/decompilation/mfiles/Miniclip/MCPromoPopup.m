@implementation MCPromoPopup

+(void *)getPromoPopupWithOfferId:(void *)arg2 actionDelegate:(void *)arg3 gameDelegate:(void *)arg4 promoSystem:(void *)arg5 localizationManager:(void *)arg6 {
    r0 = [MCPromoPopup alloc];
    r0 = [r0 initWithOffer:arg2 actionDelegate:arg3 gameDelegate:arg4 promoSystem:arg5 localizationManager:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithOffer:(void *)arg2 actionDelegate:(void *)arg3 gameDelegate:(void *)arg4 promoSystem:(void *)arg5 localizationManager:(void *)arg6 {
    r0 = [self initWithOffer:arg2 actionDelegate:arg3 gameDelegate:arg4 promoSystem:arg5 localizationManager:arg6 atPosition:r7];
    return r0;
}

+(void *)getPromoPopupWithOfferId:(void *)arg2 actionDelegate:(void *)arg3 gameDelegate:(void *)arg4 promoSystem:(void *)arg5 localizationManager:(void *)arg6 atPosition:(struct CGPoint)arg7 {
    memcpy(&r7, &arg7, 0x8);
    r0 = [MCPromoPopup alloc];
    r0 = [r0 initWithOffer:arg2 actionDelegate:arg3 gameDelegate:arg4 promoSystem:arg5 localizationManager:arg6 atPosition:r7];
    r0 = [r0 autorelease];
    return r0;
}

-(void)createExitButtonOnMenu:(void *)arg2 AtPosition:(struct CGPoint)arg3 clientDelegate:(void *)arg4 promoSystem:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r4;
    r22 = r3;
    v9 = v1;
    v10 = v0;
    r20 = arg2;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_isClosing = 0x0;
    if ([r3 respondsToSelector:@selector(getCloseButtonSpriteForPromoPopupForSystem:)] != 0x0) {
            r0 = [r22 getCloseButtonSpriteForPromoPopupForSystem:r21];
            if (r0 != 0x0) {
                    r2 = r0;
                    r0 = [MCMenuItemNodeRGBA itemFromNormalNode:r2 selectedNode:0x0 target:r19 selector:@selector(exitButtonCallback)];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_exitButton));
                    *(r19 + r24) = r0;
                    [r0 setAnchorPoint:r2];
                    [*(r19 + r24) setPosition:r2];
                    r22 = *(r19 + r24);
                    [r22 contentSize];
                    [*(r19 + r24) contentSize];
                    [r22 setContentSize:r2];
                    r22 = [[*(r19 + r24) children] objectAtIndex:0x0];
                    [*(r19 + r24) contentSize];
                    [*(r19 + r24) contentSize];
                    [r22 setPosition:0x0];
                    [r20 addChild:*(r19 + r24) z:0x1];
                    [*(r19 + r24) setID:@"PROMOTION_EXIT"];
            }
    }
    return;
}

-(void *)createFrame:(void *)arg2 clientDelegate:(void *)arg3 promoSystem:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    if (sub_1005d84b0([arg2 objectForKey:r2], 0x1) != 0x0) {
            r22 = @selector(getMCFrameForPromoPopupForSystem:);
            if ([r20 respondsToSelector:r22] == 0x0) {
                    r22 = @selector(getFrameForPromoPopupForSystem:);
                    if ([r20 respondsToSelector:r22] != 0x0) {
                            r0 = objc_msgSend(r20, r22);
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = objc_msgSend(r20, r22);
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getCopy {
    r20 = self->_offerId;
    r21 = self->_actionDelegate;
    r22 = self->_gameDelegate;
    r23 = self->_promoSystem;
    r24 = self->_localizationManager;
    [self position];
    r0 = [MCPromoPopup getPromoPopupWithOfferId:r20 actionDelegate:r21 gameDelegate:r22 promoSystem:r23 localizationManager:r24 atPosition:r7];
    return r0;
}

-(void)enableButtons {
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
    if (*(int8_t *)(int64_t *)&r0->_isClosing == 0x0) {
            r19 = r0;
            var_110 = q0;
            r20 = r0->_buttonList;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r25 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r25) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_118 + r26 * 0x8) setIsEnabled:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            r0 = r19->_exitButton;
            if (r0 != 0x0) {
                    [r0 setIsEnabled:r2];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)disableButtons {
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
    var_110 = q0;
    var_128 = self;
    r20 = self->_buttonList;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r19 * 0x8);
                            if ([r26 isSelected] != 0x0) {
                                    [r26 unselected];
                            }
                            [r26 setIsEnabled:r2];
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    r0 = var_128->_exitButton;
    if (r0 != 0x0) {
            [r0 setIsEnabled:r2];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self->_menu setPosition:r2];
    [[&var_30 super] setPosition:r2];
    return;
}

-(void)exitButtonCallback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_isClosing = 0x1;
    [self disableButtons];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_gameDelegate));
    if ([*(r19 + r21) respondsToSelector:@selector(promoCloseTriggeredForSystem:)] != 0x0) {
            [*(r19 + r21) promoCloseTriggeredForSystem:r19->_promoSystem];
    }
    [r19 closePopup];
    return;
}

-(void)update:(double)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    r0 = *(self + r20);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_offerId));
    if ([r0 isOfferActive:*(r19 + r21)] == 0x0 || ([*(r19 + r20) isOfferPopUpActive:*(r19 + r21)] & 0x1) == 0x0) goto loc_10075e028;

loc_10075dfec:
    sub_10076e3dc(r19->_timerLabel, r19->_timerText, r19->_gameDelegate, *(r19 + r21), *(r19 + r20));
    r1 = @selector(updatePendingInApps);
    goto loc_10075e094;

loc_10075e094:
    objc_msgSend(r19, r1);
    return;

.l1:
    return;

loc_10075e028:
    if ([r19 parent] == 0x0) goto .l1;

loc_10075e040:
    r20 = @selector(parent);
    r20 = objc_msgSend(r19, r20);
    [MCCycleTable class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10075e08c;
    goto .l1;

loc_10075e08c:
    r1 = @selector(exitButtonCallback);
    goto loc_10075e094;
}

-(void *)createButtonsOnMenu:(void *)arg2 data:(void *)arg3 gameDelegate:(void *)arg4 system:(void *)arg5 actionDelegate:(void *)arg6 localizationManager:(void *)arg7 offerId:(void *)arg8 {
    var_0 = arg8;
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x1f0;
    var_160 = arg7;
    var_1B8 = self;
    stack[-448] = arg6;
    r27 = arg5;
    r21 = arg4;
    var_198 = arg2;
    var_190 = [NSMutableArray array];
    r19 = [arg3 objectForKey:@"buttonsConfiguration"];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_228 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r19 = r0;
            var_1A0 = 0x0;
            r23 = var_0;
            r20 = *var_110;
            var_178 = r21;
            var_170 = r20;
            do {
                    r24 = 0x0;
                    var_140 = r19;
                    do {
                            if (*var_110 != r20) {
                                    objc_enumerationMutation(var_138);
                            }
                            r25 = *(var_118 + r24 * 0x8);
                            if (r25 != 0x0 && [r25 count] != 0x0) {
                                    r22 = @selector(objectForKey:);
                                    r19 = sub_1005d84b0(objc_msgSend(r25, r22), 0x0);
                                    r26 = sub_1005d84b0(objc_msgSend(r25, r22), 0x1);
                                    r22 = objc_msgSend(r25, r22);
                                    r0 = [NSDictionary class];
                                    r0 = sub_1005d8554(r22, r0, 0x0);
                                    if (r0 != 0x0) {
                                            r28 = r0;
                                            if ([r0 count] != 0x0) {
                                                    if ((r19 & 0x1) != 0x0) {
                                                            r22 = 0x0;
                                                            r25 = r27;
                                                            r21 = var_178;
                                                    }
                                                    else {
                                                            r3 = [r25 objectForKey:r2];
                                                            r21 = var_178;
                                                            r25 = r27;
                                                            r22 = [var_1B8 getActionBlockForOffer:r23 actionKey:r3 gameDelegate:r21 promoSystem:r27 actionDelegate:stack[-448]];
                                                    }
                                            }
                                            else {
                                                    r28 = r25;
                                                    if ((r19 & 0x1) == 0x0) {
                                                            r3 = [r25 objectForKey:r2];
                                                            r21 = var_178;
                                                            r25 = r27;
                                                            r22 = [var_1B8 getActionBlockForOffer:r23 actionKey:r3 gameDelegate:r21 promoSystem:r27 actionDelegate:stack[-448]];
                                                    }
                                                    else {
                                                            r22 = 0x0;
                                                            r25 = r27;
                                                            r21 = var_178;
                                                    }
                                            }
                                    }
                                    else {
                                            r28 = r25;
                                            if ((r19 & 0x1) == 0x0) {
                                                    r3 = [r25 objectForKey:r2];
                                                    r21 = var_178;
                                                    r25 = r27;
                                                    r22 = [var_1B8 getActionBlockForOffer:r23 actionKey:r3 gameDelegate:r21 promoSystem:r27 actionDelegate:stack[-448]];
                                            }
                                            else {
                                                    r22 = 0x0;
                                                    r25 = r27;
                                                    r21 = var_178;
                                            }
                                    }
                                    r20 = r23;
                                    r25 = [MCPromoButton getPromoButtonForOffer:r23 withConfiguration:r28 block:r22 gameDelegate:r21 promoSystem:r25 localizationManager:var_160];
                                    [r22 release];
                                    [r25 setReleaseBlockAtCleanup:0x1];
                                    if (r25 != 0x0) {
                                            [var_198 addChild:r25];
                                            [var_190 addObject:r25];
                                            if (r19 != 0x0) {
                                                    [r25 setCanActivateButton:0x0];
                                                    r19 = var_140;
                                                    r23 = r20;
                                                    if (r26 != 0x0) {
                                                            var_1F8 = var_1F8 & 0xffffffff00000000 | *(int32_t *)0x1011e2e7c;
                                                            [r25 setNormalColor:0x0];
                                                            r0 = r25;
                                                            r1 = @selector(setDisabledColor:);
                                                            var_200 = var_200 & 0xffffffff00000000 | *(int32_t *)0x1011e2e7c;
                                                    }
                                                    else {
                                                            r0 = r25;
                                                            r1 = @selector(setSelectedColor:);
                                                            var_208 = var_208 & 0xffffffff00000000 | *(int32_t *)0x1011e2e74;
                                                    }
                                                    objc_msgSend(r0, r1);
                                            }
                                            else {
                                                    r23 = r20;
                                                    r0 = [r27 getOfferFromID:r20];
                                                    [r0 uniqueId];
                                                    r22 = var_1A0 + 0x1;
                                                    [r25 setID:[NSString stringWithFormat:@"PROMOTION_POPUP_BUTTON_%@_%d"]];
                                                    r2 = [r28 objectForKey:r2];
                                                    if ((sub_1005d84b0([MCPromoDataAccess executeDataAccessFromConfig:r2], 0x1) & 0x1) == 0x0) {
                                                            var_210 = var_210 & 0xffffffff00000000 | *(int32_t *)0x1011e2e74;
                                                            [r25 setSelectedColor:r2];
                                                    }
                                                    var_1A0 = r22;
                                                    r19 = var_140;
                                            }
                                    }
                                    else {
                                            r19 = var_140;
                                            r23 = r20;
                                    }
                                    r20 = var_170;
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r19);
                    r0 = objc_msgSend(var_138, var_228);
                    r19 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_190;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_offerId));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timerText));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timerLabel));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_gameDelegate));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_menu));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_buttonList));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_pendingInAppInfo));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_actionDelegate));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_localizationManager));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void *)getActionBlockForOffer:(void *)arg2 actionKey:(void *)arg3 gameDelegate:(void *)arg4 promoSystem:(void *)arg5 actionDelegate:(void *)arg6 {
    r3 = arg3;
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg6;
    r20 = arg5;
    r21 = arg4;
    r22 = arg2;
    if (r3 == 0x0) {
            r3 = [NSString string];
    }
    r0 = [&var_68 copy];
    return r0;
}

-(void)updatePendingInApps {
    r31 = r31 - 0x180;
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_pendingInAppInfo));
    r0 = *(self + r20);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            var_160 = [NSMutableArray array];
            var_110 = q0;
            r0 = *(r19 + r20);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r0;
            var_170 = r20;
            var_168 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    var_130 = *var_110;
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_gameDelegate));
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != var_130) {
                                            objc_enumerationMutation(var_138);
                                    }
                                    r20 = *(var_118 + r27 * 0x8);
                                    r26 = [r20 objectAtIndex:0x0];
                                    r21 = [r20 objectAtIndex:0x1];
                                    r0 = *(r19 + r28);
                                    r0 = [r0 getPromotionalPriceForTransaction:r26 priceMayBeOutDated:&var_121 forSystem:*(r19 + r22)];
                                    if (var_121 == 0x0) {
                                            [r21 isKindOfClass:[MCAdjustableLabelTTF class]];
                                            [r21 setString:r0];
                                            [var_160 addObject:r2];
                                    }
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = objc_msgSend(var_138, var_168);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [*(r19 + var_170) removeObjectsInArray:var_160];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)initWithOffer:(void *)arg2 actionDelegate:(void *)arg3 gameDelegate:(void *)arg4 promoSystem:(void *)arg5 localizationManager:(void *)arg6 atPosition:(struct CGPoint)arg7 {
    memcpy(&r7, &arg7, 0x8);
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x120;
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
    if (r2 != 0x0) {
            r19 = r6;
            r20 = r5;
            r23 = r4;
            r21 = r3;
            r24 = r2;
            r25 = r0;
            r0 = [r24 isEqualToString:r2];
            r27 = 0x0;
            if (r23 != 0x0) {
                    r27 = 0x0;
                    if (r21 != 0x0) {
                            r27 = 0x0;
                            if ((r0 & 0x1) == 0x0) {
                                    r0 = [r20 getPopUpInfoForOffer:r24];
                                    if (r0 != 0x0) {
                                            r2 = sub_1005d8554([r0 customData], [NSDictionary class], 0x0);
                                    }
                                    else {
                                            r2 = 0x0;
                                    }
                                    r0 = [MCPromoDataAccess clearAllDataAccessFromConfig:r2];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            if ([r0 count] != 0x0) {
                                                    sub_1005cb618();
                                                    sub_1005cb618();
                                                    if ([r23 respondsToSelector:@selector(getDefaultFrameSizeForSystem:)] != 0x0) {
                                                            [r23 getDefaultFrameSizeForSystem:r20];
                                                            v8 = v0;
                                                            v9 = v1;
                                                    }
                                                    else {
                                                            asm { fcvt       d8, s0 };
                                                            asm { fcvt       d9, s0 };
                                                    }
                                                    var_D8 = [NSMutableArray array];
                                                    r0 = [CCMenu menuWithItems:0x0];
                                                    [r0 setPosition:0x0];
                                                    [r0 setAnchorPoint:0x0];
                                                    [r0 setInvertTouchDetectionOrder:0x1];
                                                    var_C8 = r0;
                                                    [r0 setTouchSwallow:0x0];
                                                    var_C0 = [CCNodeRGBA node];
                                                    r1 = @selector(objectForKey:);
                                                    r2 = @"popUpImage";
                                                    var_D0 = r1;
                                                    r0 = objc_msgSend(r22, r1);
                                                    r0 = sub_1005d85d8(r0, 0x0);
                                                    if (r0 != 0x0) {
                                                            r28 = r0;
                                                            r2 = @"";
                                                            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                                                                    r26 = 0x0;
                                                            }
                                                            else {
                                                                    r2 = @"";
                                                                    r26 = sub_1005d7410(r28, 0x0, 0x0, 0x0);
                                                            }
                                                    }
                                                    else {
                                                            r26 = 0x0;
                                                    }
                                                    if ([r23 respondsToSelector:@selector(getDefaultFrameMarginForSystem:)] != 0x0) {
                                                            r2 = r20;
                                                            [r23 getDefaultFrameMarginForSystem:r2];
                                                    }
                                                    else {
                                                            s10 = 0x4024000000000000;
                                                    }
                                                    r28 = var_C0;
                                                    v11 = v8;
                                                    v12 = v9;
                                                    if (r26 != 0x0) {
                                                            [r26 contentSize];
                                                            asm { fcvt       d12, s10 };
                                                            objc_msgSend(r26, r27);
                                                    }
                                                    r27 = [r25 createFrame:r22 clientDelegate:r23 promoSystem:r20];
                                                    if (r26 != 0x0 || r27 != 0x0) {
                                                            var_F0 = r21;
                                                            if (r27 != 0x0) {
                                                                    var_110 = r25;
                                                                    [FramedSprite class];
                                                                    r0 = [r27 isKindOfClass:r2];
                                                                    stack[-256] = r19;
                                                                    if (r0 != 0x0) {
                                                                            v0 = v11;
                                                                            [r27 requestSize:0x2 round:r3];
                                                                            v8 = v0;
                                                                            v9 = v12;
                                                                            r25 = var_110;
                                                                    }
                                                                    else {
                                                                            r28 = @selector(isKindOfClass:);
                                                                            r2 = [MCFramedSprite class];
                                                                            r0 = objc_msgSend(r27, r28);
                                                                            r25 = var_110;
                                                                            if (r0 != 0x0) {
                                                                                    v0 = v11;
                                                                                    [r27 setContentSize:r2];
                                                                                    [r27 contentSize];
                                                                                    v8 = v0;
                                                                                    v9 = v12;
                                                                                    [r25 position];
                                                                                    [r27 setPosition:r2];
                                                                                    objc_msgSend(r25, r28);
                                                                                    [r26 setPosition:r2];
                                                                            }
                                                                    }
                                                                    [r27 setAnchorPoint:r2];
                                                                    r28 = var_C0;
                                                                    r2 = r27;
                                                                    [r28 addChild:r2];
                                                                    r27 = var_D8;
                                                                    var_E0 = r19;
                                                                    if (r26 != 0x0) {
                                                                            r2 = r26;
                                                                            [r28 addChild:r2];
                                                                    }
                                                                    r21 = @selector(class);
                                                                    r19 = stack[-256];
                                                            }
                                                            else {
                                                                    [r26 contentSize];
                                                                    v8 = v0;
                                                                    v9 = v1;
                                                                    [r26 setAnchorPoint:r2];
                                                                    var_E0 = @selector(addChild:);
                                                                    [r28 addChild:r26];
                                                                    r21 = @selector(class);
                                                                    r27 = var_D8;
                                                            }
                                                            [r28 setContentSize:r2];
                                                            sub_10076d428(r28, r22, @"imageEntries", r23, r20, r19);
                                                            sub_10076d72c(r28, r22, @"textEntries", r23, r20, r19, r27);
                                                            sub_10076dc00(r28, r22, r23, r20, r19, r27);
                                                            var_F8 = [r25 createButtonsOnMenu:var_C8 data:r22 gameDelegate:r23 system:r20 actionDelegate:var_F0 localizationManager:r19 offerId:r24];
                                                            r26 = objc_msgSend(r22, var_D0);
                                                            r0 = objc_msgSend(@class(NSDictionary), r21);
                                                            r0 = sub_1005d8554(r26, r0, 0x0);
                                                            r0 = sub_10076e16c(r0, r28, r23, r20, r19, &var_A0, &var_A8, r24);
                                                            r26 = objc_msgSend(r22, var_D0);
                                                            r26 = sub_1005d8554(r26, objc_msgSend(@class(NSDictionary), r21), 0x0);
                                                            if (sub_1005d84b0(objc_msgSend(r22, var_D0), 0x1) != 0x0) {
                                                                    asm { fcvt       d2, s2 };
                                                                    [r25 createExitButtonOnMenu:var_C8 AtPosition:r23 clientDelegate:r20 promoSystem:r5];
                                                            }
                                                            r0 = [[&var_B8 super] init];
                                                            r27 = r0;
                                                            r28 = var_E0;
                                                            if (r0 != 0x0) {
                                                                    r27->_offerId = [r24 retain];
                                                                    r27->_gameDelegate = [r23 retain];
                                                                    r27->_actionDelegate = [var_F0 retain];
                                                                    r27->_promoSystem = [r20 retain];
                                                                    r27->_localizationManager = [r19 retain];
                                                                    r27->_timerLabel = [var_A8 retain];
                                                                    r27->_timerText = [var_A0 retain];
                                                                    r27->_pendingInAppInfo = [[NSMutableArray array] retain];
                                                                    *(r27 + sign_extend_64(*(int32_t *)ivar_offset(_menu))) = [var_C8 retain];
                                                                    r27->_buttonList = [var_F8 retain];
                                                                    sub_1005d83f0(objc_msgSend(r22, var_D0));
                                                                    *(int32_t *)(int64_t *)&r27->_cycleDuration = 0xbff0000000000000;
                                                                    r27->_onPopupEnterSound = [sub_1005d85d8(objc_msgSend(r26, var_D0), 0x0) retain];
                                                                    [var_C0 sortAllChildren];
                                                                    objc_msgSend(r27, r28);
                                                                    [r27 addChild:*(r27 + r19) z:0x1];
                                                                    [var_C0 contentSize];
                                                                    [r27 setContentSize:r2];
                                                            }
                                                    }
                                            }
                                            else {
                                                    r27 = 0x0;
                                            }
                                    }
                                    else {
                                            r27 = 0x0;
                                    }
                            }
                    }
            }
    }
    else {
            r27 = 0x0;
    }
    r0 = r27;
    return r0;
}

-(bool)activateTableItem {
    [self unscheduleUpdate];
    [self enterPopup];
    return 0x1;
}

-(void)enterPopup {
    [self scheduleUpdate];
    return;
}

-(void)closePopup {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [self unscheduleUpdate];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    [*(self + r20) saveData];
    r0 = *(self + r20);
    r0 = [r0 getPopUpInfoForOffer:self->_offerId];
    if (r0 != 0x0) {
            r0 = [r0 dismissEvent];
            if (r0 != 0x0) {
                    r19 = r0;
                    if ([r0 count] != 0x0) {
                            [[MCPromoEventDispatcher sharedMCPromoEventDispatcher] postEvent:r19];
                    }
            }
    }
    return;
}

-(int)getPriority {
    r0 = [self->_promoSystem getOfferFromID:self->_offerId];
    r0 = [r0 badgePriority];
    return r0;
}

-(float)getCycleDuration {
    r0 = self;
    return r0;
}

-(void *)offerId {
    r0 = self->_offerId;
    return r0;
}

-(void *)buttonList {
    r0 = self->_buttonList;
    return r0;
}

-(bool)isPressingButton {
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
    var_110 = q0;
    r20 = self->_buttonList;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10075e674;

loc_10075e604:
    r22 = r0;
    r24 = *var_110;
    goto loc_10075e614;

loc_10075e614:
    r26 = 0x0;
    goto loc_10075e61c;

loc_10075e61c:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    if (([*(var_118 + r26 * 0x8) isSelected] & 0x1) != 0x0) goto loc_10075e694;

loc_10075e648:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_10075e61c;

loc_10075e654:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_10075e614;

loc_10075e674:
    r0 = r19->_exitButton;
    if (r0 != 0x0 && ([r0 isSelected] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    goto loc_10075e6a0;

loc_10075e6a0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10075e694:
    r0 = 0x1;
    goto loc_10075e6a0;
}

-(void *)onPopupEnterSound {
    r0 = self->_onPopupEnterSound;
    return r0;
}

@end