@implementation MCPromoDebugBadges

+(void *)getPromoBadgeDebugScreenForSystem:(void *)arg2 withDelegate:(void *)arg3 withLocalizationManager:(void *)arg4 {
    r0 = [MCPromoDebugBadges alloc];
    r0 = [r0 initPromoBadgeDebugScreenForSystem:arg2 withDelegate:arg3 withLocalizationManager:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initPromoBadgeDebugScreenForSystem:(void *)arg2 withDelegate:(void *)arg3 withLocalizationManager:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = 0x0;
    if (r2 != 0x0) {
            r20 = 0x0;
            r19 = r3;
            if (r3 != 0x0) {
                    r22 = r4;
                    r21 = r2;
                    r0 = [[&var_30 super] init];
                    r20 = r0;
                    if (r0 != 0x0) {
                            [r20 initializeBadgesViewWithSystem:r21 withDelegate:r19 withLocalizationManager:r22];
                            r20->_promoSystem = [r21 retain];
                            r20->_gameDelegate = [r19 retain];
                    }
            }
    }
    r0 = r20;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_promoSystem));
    r0 = *(self + r21);
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_badgesTable));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r20) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)enableInput {
    [self->_badgesTable setEnabled:r2];
    return;
}

-(void)disableInput {
    [self->_badgesTable setEnabled:r2];
    return;
}

-(void)initializeBadgesViewWithSystem:(void *)arg2 withDelegate:(void *)arg3 withLocalizationManager:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffff60 - 0x280;
    r22 = arg3;
    r28 = arg2;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    [[CCDirector sharedDirector] winSize];
    v11 = v1;
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    d8 = d12 + d0;
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    sub_1005cb618();
    asm { fcvt       d9, s0 };
    asm { fdiv       d0, d10, d9 };
    asm { fcvt       s10, d0 };
    r0 = [CCTable alloc];
    r0 = [r0 init:0x1 numVisibleItems:r3 cellSize:r4 direction:r5 itemOffset:r6];
    r0 = [r0 autorelease];
    *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_badgesTable))) = r0;
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    [r19 setPosition:r2];
    var_248 = r23;
    stack[-576] = r20;
    [r20 addChild:*(r20 + r23) z:0x28];
    var_1D0 = r24;
    var_1E8 = [MCPromoSystemClient getClientForSystem:r28 withGameDelegate:r22 withLocalizationManager:r24];
    r0 = [r28 getActiveOffers];
    var_160 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_170;
    var_290 = r0;
    var_2C8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1D8 = r0;
    if (r0 != 0x0) {
            var_1F0 = *var_160;
            d0 = *0x100b9b5f0;
            var_268 = d0;
            var_1A8 = r22;
            var_1B8 = r28;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_160 != var_1F0) {
                                    objc_enumerationMutation(var_290);
                            }
                            r20 = *(var_168 + r24 * 0x8);
                            r0 = [var_1E8 getBadgeForOffer:r20];
                            r21 = r0;
                            if (r0 == 0x0) {
                                    var_280 = r24;
                                    r21 = [r22 canShowOffer:r20 forSystem:r28];
                                    r0 = [r22 respondsToSelector:@selector(getDefaultTTFontForSystem:)];
                                    r25 = @"AdoraFresh.ttf";
                                    if (r0 != 0x0) {
                                            r25 = [r22 getDefaultTTFontForSystem:r28];
                                    }
                                    r28 = [NSNumber numberWithInt:r2];
                                    r23 = [NSNumber numberWithInt:r2];
                                    r0 = @class(NSNumber);
                                    r2 = 0x28;
                                    r0 = [r0 numberWithInt:r2];
                                    if (r21 != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r2 = @"Needs Config";
                                            }
                                            else {
                                                    r2 = @"No Badge";
                                            }
                                    }
                                    if (CPU_FLAGS & NE) {
                                            if (!CPU_FLAGS & NE) {
                                                    r23 = @"Generic_Button_Orange.png";
                                            }
                                            else {
                                                    r23 = @"Generic_Button_Green.png";
                                            }
                                    }
                                    [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:r2]];
                                    r19 = [NSDictionary dictionaryWithObjectsAndKeys:@"generic.plist"];
                                    r23 = [NSNumber numberWithInt:r2];
                                    [NSNumber numberWithInt:r2];
                                    [NSNumber numberWithInt:r2];
                                    r0 = @class(NSNumber);
                                    [r0 numberWithInt:r2];
                                    r28 = var_1B8;
                                    r0 = [NSMutableDictionary dictionaryWithObjectsAndKeys:r23];
                                    [r0 setValue:r19 forKey:@"imageData"];
                                    r2 = r0;
                                    r22 = var_1A8;
                                    r0 = [MCPromoButton getPromoButtonForOffer:r20 withConfiguration:[NSDictionary dictionaryWithObjectsAndKeys:r2] block:sub_1005cb080(r22, @selector(badgeButtonPressed:forSystem:), [NSArray arrayWithObjects:r20]) gameDelegate:r22 promoSystem:r28 localizationManager:var_1D0];
                                    r21 = r0;
                                    r24 = var_280;
                                    if (r0 != 0x0) {
                                            var_180 = @selector(setPosition:);
                                            var_200 = @selector(menuWithItems:);
                                            var_178 = @selector(addChild:);
                                            var_1A0 = @selector(getDefaultTTFontForSystem:);
                                            var_1C8 = @selector(respondsToSelector:);
                                            var_208 = @selector(getOfferFromID:);
                                            r0 = [CCNode node];
                                            r25 = r0;
                                            v0 = v8;
                                            [r0 setContentSize:r2];
                                            sub_1005cb618();
                                            asm { fcvt       d11, s0 };
                                            objc_msgSend(r21, r27);
                                            objc_msgSend(r21, var_180);
                                            r0 = objc_msgSend(@class(CCMutableCellTableMenu), var_200);
                                            d1 = *(int128_t *)(*_CGPointZero + 0x8);
                                            objc_msgSend(r0, var_180);
                                            objc_msgSend(r19, var_178);
                                            objc_msgSend(r25, var_178);
                                            r20 = objc_msgSend(r28, var_208);
                                            r0 = objc_msgSend(r22, var_1C8, var_1A0);
                                            r28 = @"AdoraFresh.ttf";
                                            if (r0 != 0x0) {
                                                    r28 = [r22 getDefaultTTFontForSystem:var_1B8];
                                            }
                                            var_250 = *0x100b9b498;
                                            var_180 = @selector(setPosition:);
                                            var_218 = @selector(beforeBeginNotificationText);
                                            var_178 = @selector(addChild:);
                                            var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                            var_190 = @selector(setAnchorPoint:);
                                            var_198 = @selector(position);
                                            [r20 name];
                                            sub_1005cb618();
                                            asm { fcvt       d11, s0 };
                                            objc_msgSend(r21, r27);
                                            v12 = v0;
                                            objc_msgSend(r21, r27);
                                            r0 = objc_msgSend(r22, var_188);
                                            objc_msgSend(r0, var_190);
                                            objc_msgSend(r21, var_198);
                                            v11 = v11;
                                            objc_msgSend(r21, r27);
                                            sub_1005cb618();
                                            asm { fcvt       d0, s0 };
                                            d11 = d11 + d0;
                                            objc_msgSend(r21, r27);
                                            d0 = var_250;
                                            d1 = d1 * d0;
                                            objc_msgSend(r19, var_180);
                                            objc_msgSend(r25, var_178);
                                            r0 = objc_msgSend(r20, var_218);
                                            if (r0 != 0x0) {
                                                    r19 = r0;
                                                    r0 = [r0 isEqualToString:@""];
                                                    r22 = @"BeforeBegin Notification: -";
                                                    if ((r0 & 0x1) == 0x0) {
                                                            sub_10076c0ec(r19, var_1D0, var_1A8);
                                                            r22 = [NSString stringWithFormat:@"BeforeBegin notification with text - %@"];
                                                    }
                                            }
                                            else {
                                                    r22 = @"BeforeBegin Notification: -";
                                            }
                                            var_258 = *0x100b9b7b0;
                                            var_180 = @selector(setPosition:);
                                            var_220 = @selector(activeNotificationText);
                                            var_178 = @selector(addChild:);
                                            var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                            var_190 = @selector(setAnchorPoint:);
                                            var_198 = @selector(position);
                                            sub_1005cb618();
                                            asm { fcvt       d11, s0 };
                                            objc_msgSend(r21, r27);
                                            objc_msgSend(r21, r27);
                                            r0 = objc_msgSend(r19, var_188);
                                            objc_msgSend(r0, var_190);
                                            objc_msgSend(r21, var_198);
                                            v11 = v11;
                                            objc_msgSend(r21, r27);
                                            sub_1005cb618();
                                            asm { fcvt       d0, s0 };
                                            d11 = d11 + d0;
                                            objc_msgSend(r21, r27);
                                            d0 = var_258;
                                            d1 = d1 * d0;
                                            objc_msgSend(r19, var_180);
                                            objc_msgSend(r25, var_178);
                                            r0 = objc_msgSend(r20, var_220);
                                            if (r0 != 0x0) {
                                                    r19 = r0;
                                                    r0 = [r0 isEqualToString:@""];
                                                    r22 = @"Active Notification: -";
                                                    if ((r0 & 0x1) == 0x0) {
                                                            sub_10076c0ec(r19, var_1D0, var_1A8);
                                                            r22 = [NSString stringWithFormat:@"Active notification with text - %@"];
                                                    }
                                            }
                                            else {
                                                    r22 = @"Active Notification: -";
                                            }
                                            var_260 = *0x100bf3248;
                                            var_180 = @selector(setPosition:);
                                            var_228 = @selector(beforeEndNotificationText);
                                            var_178 = @selector(addChild:);
                                            var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                            var_190 = @selector(setAnchorPoint:);
                                            var_198 = @selector(position);
                                            sub_1005cb618();
                                            asm { fcvt       d11, s0 };
                                            objc_msgSend(r21, r27);
                                            objc_msgSend(r21, r27);
                                            r0 = objc_msgSend(r19, var_188);
                                            objc_msgSend(r0, var_190);
                                            objc_msgSend(r21, var_198);
                                            v11 = v11;
                                            objc_msgSend(r21, r27);
                                            sub_1005cb618();
                                            asm { fcvt       d0, s0 };
                                            d11 = d11 + d0;
                                            objc_msgSend(r21, r27);
                                            d0 = var_260;
                                            d1 = d1 * d0;
                                            objc_msgSend(r19, var_180);
                                            objc_msgSend(r25, var_178);
                                            r0 = objc_msgSend(r20, var_228);
                                            if (r0 != 0x0) {
                                                    r19 = r0;
                                                    r0 = [r0 isEqualToString:@""];
                                                    r20 = @"BeforeEnd Notification: -";
                                                    r22 = var_1A8;
                                                    if ((r0 & 0x1) == 0x0) {
                                                            sub_10076c0ec(r19, var_1D0, r22);
                                                            r20 = [NSString stringWithFormat:@"BeforeEnd notification with text - %@"];
                                                    }
                                            }
                                            else {
                                                    r20 = @"BeforeEnd Notification: -";
                                                    r22 = var_1A8;
                                            }
                                            var_238 = @selector(addCellItem:);
                                            var_180 = @selector(setPosition:);
                                            var_230 = @selector(itemWithNormalSprite:selectedSprite:);
                                            var_178 = @selector(addChild:);
                                            var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                            var_190 = @selector(setAnchorPoint:);
                                            var_198 = @selector(position);
                                            var_1B0 = @selector(setContentSize:);
                                            sub_1005cb618();
                                            asm { fcvt       d11, s0 };
                                            objc_msgSend(r21, r27);
                                            objc_msgSend(r21, r27);
                                            r0 = objc_msgSend(r19, var_188);
                                            objc_msgSend(r0, var_190);
                                            objc_msgSend(r21, var_198);
                                            v11 = v11;
                                            objc_msgSend(r21, r27);
                                            sub_1005cb618();
                                            asm { fcvt       d0, s0 };
                                            d11 = d11 + d0;
                                            objc_msgSend(r21, r27);
                                            d0 = var_268;
                                            objc_msgSend(r19, var_180);
                                            objc_msgSend(r25, var_178);
                                            r0 = objc_msgSend(@class(CCMenuItemSprite), var_230);
                                            objc_msgSend(r0, var_1B0);
                                            objc_msgSend(r19, r20);
                                            r2 = r19;
                                            objc_msgSend(*(stack[-576] + var_248), var_238);
                                            r28 = var_1B8;
                                    }
                            }
                            else {
                                    var_180 = @selector(setPosition:);
                                    var_200 = @selector(menuWithItems:);
                                    var_178 = @selector(addChild:);
                                    var_1A0 = @selector(getDefaultTTFontForSystem:);
                                    var_1C8 = @selector(respondsToSelector:);
                                    var_208 = @selector(getOfferFromID:);
                                    r0 = [CCNode node];
                                    r25 = r0;
                                    v0 = v8;
                                    [r0 setContentSize:r2];
                                    sub_1005cb618();
                                    asm { fcvt       d11, s0 };
                                    objc_msgSend(r21, r27);
                                    objc_msgSend(r21, var_180);
                                    r0 = objc_msgSend(@class(CCMutableCellTableMenu), var_200);
                                    d1 = *(int128_t *)(*_CGPointZero + 0x8);
                                    objc_msgSend(r0, var_180);
                                    objc_msgSend(r19, var_178);
                                    objc_msgSend(r25, var_178);
                                    r20 = objc_msgSend(r28, var_208);
                                    r0 = objc_msgSend(r22, var_1C8, var_1A0);
                                    r28 = @"AdoraFresh.ttf";
                                    if (r0 != 0x0) {
                                            r28 = [r22 getDefaultTTFontForSystem:var_1B8];
                                    }
                                    var_250 = *0x100b9b498;
                                    var_180 = @selector(setPosition:);
                                    var_218 = @selector(beforeBeginNotificationText);
                                    var_178 = @selector(addChild:);
                                    var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                    var_190 = @selector(setAnchorPoint:);
                                    var_198 = @selector(position);
                                    [r20 name];
                                    sub_1005cb618();
                                    asm { fcvt       d11, s0 };
                                    objc_msgSend(r21, r27);
                                    v12 = v0;
                                    objc_msgSend(r21, r27);
                                    r0 = objc_msgSend(r22, var_188);
                                    objc_msgSend(r0, var_190);
                                    objc_msgSend(r21, var_198);
                                    v11 = v11;
                                    objc_msgSend(r21, r27);
                                    sub_1005cb618();
                                    asm { fcvt       d0, s0 };
                                    d11 = d11 + d0;
                                    objc_msgSend(r21, r27);
                                    d0 = var_250;
                                    d1 = d1 * d0;
                                    objc_msgSend(r19, var_180);
                                    objc_msgSend(r25, var_178);
                                    r0 = objc_msgSend(r20, var_218);
                                    if (r0 != 0x0) {
                                            r19 = r0;
                                            r0 = [r0 isEqualToString:@""];
                                            r22 = @"BeforeBegin Notification: -";
                                            if ((r0 & 0x1) == 0x0) {
                                                    sub_10076c0ec(r19, var_1D0, var_1A8);
                                                    r22 = [NSString stringWithFormat:@"BeforeBegin notification with text - %@"];
                                            }
                                    }
                                    else {
                                            r22 = @"BeforeBegin Notification: -";
                                    }
                                    var_258 = *0x100b9b7b0;
                                    var_180 = @selector(setPosition:);
                                    var_220 = @selector(activeNotificationText);
                                    var_178 = @selector(addChild:);
                                    var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                    var_190 = @selector(setAnchorPoint:);
                                    var_198 = @selector(position);
                                    sub_1005cb618();
                                    asm { fcvt       d11, s0 };
                                    objc_msgSend(r21, r27);
                                    objc_msgSend(r21, r27);
                                    r0 = objc_msgSend(r19, var_188);
                                    objc_msgSend(r0, var_190);
                                    objc_msgSend(r21, var_198);
                                    v11 = v11;
                                    objc_msgSend(r21, r27);
                                    sub_1005cb618();
                                    asm { fcvt       d0, s0 };
                                    d11 = d11 + d0;
                                    objc_msgSend(r21, r27);
                                    d0 = var_258;
                                    d1 = d1 * d0;
                                    objc_msgSend(r19, var_180);
                                    objc_msgSend(r25, var_178);
                                    r0 = objc_msgSend(r20, var_220);
                                    if (r0 != 0x0) {
                                            r19 = r0;
                                            r0 = [r0 isEqualToString:@""];
                                            r22 = @"Active Notification: -";
                                            if ((r0 & 0x1) == 0x0) {
                                                    sub_10076c0ec(r19, var_1D0, var_1A8);
                                                    r22 = [NSString stringWithFormat:@"Active notification with text - %@"];
                                            }
                                    }
                                    else {
                                            r22 = @"Active Notification: -";
                                    }
                                    var_260 = *0x100bf3248;
                                    var_180 = @selector(setPosition:);
                                    var_228 = @selector(beforeEndNotificationText);
                                    var_178 = @selector(addChild:);
                                    var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                    var_190 = @selector(setAnchorPoint:);
                                    var_198 = @selector(position);
                                    sub_1005cb618();
                                    asm { fcvt       d11, s0 };
                                    objc_msgSend(r21, r27);
                                    objc_msgSend(r21, r27);
                                    r0 = objc_msgSend(r19, var_188);
                                    objc_msgSend(r0, var_190);
                                    objc_msgSend(r21, var_198);
                                    v11 = v11;
                                    objc_msgSend(r21, r27);
                                    sub_1005cb618();
                                    asm { fcvt       d0, s0 };
                                    d11 = d11 + d0;
                                    objc_msgSend(r21, r27);
                                    d0 = var_260;
                                    d1 = d1 * d0;
                                    objc_msgSend(r19, var_180);
                                    objc_msgSend(r25, var_178);
                                    r0 = objc_msgSend(r20, var_228);
                                    if (r0 != 0x0) {
                                            r19 = r0;
                                            r0 = [r0 isEqualToString:@""];
                                            r20 = @"BeforeEnd Notification: -";
                                            r22 = var_1A8;
                                            if ((r0 & 0x1) == 0x0) {
                                                    sub_10076c0ec(r19, var_1D0, r22);
                                                    r20 = [NSString stringWithFormat:@"BeforeEnd notification with text - %@"];
                                            }
                                    }
                                    else {
                                            r20 = @"BeforeEnd Notification: -";
                                            r22 = var_1A8;
                                    }
                                    var_238 = @selector(addCellItem:);
                                    var_180 = @selector(setPosition:);
                                    var_230 = @selector(itemWithNormalSprite:selectedSprite:);
                                    var_178 = @selector(addChild:);
                                    var_188 = @selector(labelWithString:fontName:fontSize:dimensions:hAlignment:vAlignment:);
                                    var_190 = @selector(setAnchorPoint:);
                                    var_198 = @selector(position);
                                    var_1B0 = @selector(setContentSize:);
                                    sub_1005cb618();
                                    asm { fcvt       d11, s0 };
                                    objc_msgSend(r21, r27);
                                    objc_msgSend(r21, r27);
                                    r0 = objc_msgSend(r19, var_188);
                                    objc_msgSend(r0, var_190);
                                    objc_msgSend(r21, var_198);
                                    v11 = v11;
                                    objc_msgSend(r21, r27);
                                    sub_1005cb618();
                                    asm { fcvt       d0, s0 };
                                    d11 = d11 + d0;
                                    objc_msgSend(r21, r27);
                                    d0 = var_268;
                                    objc_msgSend(r19, var_180);
                                    objc_msgSend(r25, var_178);
                                    r0 = objc_msgSend(@class(CCMenuItemSprite), var_230);
                                    objc_msgSend(r0, var_1B0);
                                    objc_msgSend(r19, r20);
                                    r2 = r19;
                                    objc_msgSend(*(stack[-576] + var_248), var_238);
                                    r28 = var_1B8;
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < var_1D8);
                    r2 = &var_170;
                    r0 = objc_msgSend(var_290, var_2C8);
                    var_1D8 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;
}

@end