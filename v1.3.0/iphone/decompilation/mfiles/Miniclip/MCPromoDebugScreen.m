@implementation MCPromoDebugScreen

+(void *)getPromoDebugScreenWithSystem:(void *)arg2 delegate:(void *)arg3 mainDebugScreen:(void *)arg4 mainDebugMenu:(void *)arg5 {
    r0 = [MCPromoDebugScreen alloc];
    r0 = [r0 initPromoDebugScreenWithSystem:arg2 delegate:arg3 mainDebugScreen:arg4 mainDebugMenu:arg5 withLocalizationManager:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getPromoDebugScreenWithSystem:(void *)arg2 delegate:(void *)arg3 mainDebugScreen:(void *)arg4 mainDebugMenu:(void *)arg5 withLocalizationManager:(void *)arg6 {
    r0 = [MCPromoDebugScreen alloc];
    r0 = [r0 initPromoDebugScreenWithSystem:arg2 delegate:arg3 mainDebugScreen:arg4 mainDebugMenu:arg5 withLocalizationManager:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void)activateOffersCallback {
    [self activateAllOffers];
    return;
}

-(void *)initPromoDebugScreenWithSystem:(void *)arg2 delegate:(void *)arg3 mainDebugScreen:(void *)arg4 mainDebugMenu:(void *)arg5 withLocalizationManager:(void *)arg6 {
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    r19 = 0x0;
    if (r2 != 0x0) {
            r19 = 0x0;
            r24 = r3;
            if (r3 != 0x0) {
                    r19 = 0x0;
                    r21 = r4;
                    if (r4 != 0x0) {
                            r19 = 0x0;
                            r20 = r5;
                            if (r5 != 0x0) {
                                    r22 = r6;
                                    r25 = r2;
                                    r0 = [[&var_50 super] init];
                                    r19 = r0;
                                    if (r0 != 0x0) {
                                            r19->_promoSystem = [r25 retain];
                                            r19->_gameDelegate = [r24 retain];
                                            if (r22 != 0x0) {
                                                    r19->_localizationManager = [r22 retain];
                                            }
                                            r19->_mainDebugScreen = [r21 retain];
                                            r19->_mainDebugMenu = [r20 retain];
                                    }
                            }
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(void)displayBadgesCallback {
    r0 = [MCPromoDebugBadges getPromoBadgeDebugScreenForSystem:self->_promoSystem withDelegate:self->_gameDelegate withLocalizationManager:self->_localizationManager];
    self->_debugBadgesScreen = r0;
    [self addChild:r0];
    [self hideMainDebugScreen];
    return;
}

-(void)closeDebugScreen {
    r0 = self;
    if (r0->_debugBadgesScreen != 0x0) {
            [r0 hideBadgesScreen];
    }
    return;
}

-(void)hideMainDebugScreen {
    [self->_mainDebugMenu setVisible:0x0];
    [self->_mainDebugScreen setVisible:0x0];
    return;
}

-(void)showMainDebugScreen {
    [self->_mainDebugMenu setVisible:0x1];
    [self->_mainDebugScreen setVisible:0x1];
    return;
}

-(void)hideBadgesScreen {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_debugBadgesScreen));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r20) = 0x0;
    }
    [r19 showMainDebugScreen];
    return;
}

-(void)activateOffer:(void *)arg2 {
    return;
}

-(void)activateAllOffers {
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
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    r0 = *(self + r26);
    r0 = [r0 getOffers];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = *(var_118 + r28 * 0x8);
                            if (([*(r19 + r26) isOfferActive:r2] & 0x1) == 0x0) {
                                    [r19 activateOffer:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)enableInput {
    [self->_debugBadgesScreen enableInput];
    return;
}

-(void)disableInput {
    [self->_debugBadgesScreen disableInput];
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
    [self hideBadgesScreen];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_localizationManager));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mainDebugScreen));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mainDebugMenu));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

@end