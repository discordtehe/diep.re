@implementation MCPromoCyclicTable

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentPopup));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_promoClient));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_promoClients));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)onEnter {
    [[&var_20 super] onEnter];
    [self schedule:@selector(update:)];
    return;
}

-(void)onExit {
    [[&var_20 super] onExit];
    [self unschedule:r2];
    return;
}

-(void *)getActiveOffersPopUpsFromMultipleSystems:(void *)arg2 ordered:(bool)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    var_20C = arg3;
    r19 = [NSMutableArray array];
    var_190 = q0;
    var_208 = arg2;
    r0 = [arg2 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1F0 = r0;
    if (r0 != 0x0) {
            var_200 = *var_190;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_190 != var_200) {
                                    objc_enumerationMutation(var_208);
                            }
                            r22 = @selector(countByEnumeratingWithState:objects:count:);
                            var_1E8 = r20;
                            r25 = *(var_198 + r20 * 0x8);
                            r0 = [r25 getActiveOffers];
                            r26 = r0;
                            var_1D0 = q0;
                            r0 = objc_msgSend(r0, r22);
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    r24 = *var_1D0;
                                    do {
                                            r21 = 0x0;
                                            do {
                                                    if (*var_1D0 != r24) {
                                                            objc_enumerationMutation(r26);
                                                    }
                                                    r0 = [r25 getOfferFromID:r2];
                                                    if (r0 != 0x0) {
                                                            [r19 addObject:r2];
                                                    }
                                                    r21 = r21 + 0x1;
                                            } while (r21 < r27);
                                            r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r27 = r0;
                                    } while (r0 != 0x0);
                            }
                            r20 = var_1E8 + 0x1;
                    } while (r20 < var_1F0);
                    r0 = [var_208 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    var_1F0 = r0;
            } while (r0 != 0x0);
    }
    if (var_20C != 0x0) {
            [r19 sortUsingFunction:0x1009e3958 context:0x0];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithPromoSystemClient:(void *)arg2 defaultCyclePeriod:(float)arg3 leftButton:(void *)arg4 rightButton:(void *)arg5 bookmarkNormalSpriteDict:(void *)arg6 bookmarkHiglightedSpriteDict:(void *)arg7 bookmarkDisabledSpriteDictionary:(void *)arg8 {
    r7 = arg7;
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x1f0;
    var_70 = d11;
    stack[-120] = d10;
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
            r19 = r7;
            r20 = r6;
            r21 = r5;
            r22 = r4;
            r23 = r3;
            v8 = v0;
            r28 = r0;
            r0 = [r2 retain];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_promoClient));
            var_1A8 = r8;
            *(r28 + r8) = r0;
            r0 = [r0 promoSystem];
            if (r0 != 0x0) {
                    r26 = r0;
                    var_1D8 = r23;
                    stack[-480] = r22;
                    var_1C8 = r21;
                    stack[-464] = r20;
                    var_1B8 = r19;
                    r20 = [r0 getActiveOffers];
                    d9 = *(*_CGSizeZero + 0x8);
                    r19 = [NSMutableArray array];
                    var_130 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_190 = r20;
                    var_1B0 = r1;
                    r0 = objc_msgSend(r20, r1);
                    var_158 = r0;
                    if (r0 != 0x0) {
                            var_168 = *var_130;
                            r22 = var_1A8;
                            do {
                                    r27 = 0x0;
                                    do {
                                            if (*var_130 != var_168) {
                                                    objc_enumerationMutation(var_190);
                                            }
                                            r20 = *(var_138 + r27 * 0x8);
                                            r25 = [[r26 getOfferFromID:r20] popUpCustomData];
                                            r0 = [NSDictionary class];
                                            r0 = sub_1005d8554(r25, r0, 0x0);
                                            if (r0 != 0x0) {
                                                    r25 = r0;
                                                    if ([r0 count] != 0x0) {
                                                            r2 = [r25 objectForKey:@"popUpIncludedInCyclicTable"];
                                                            r28 = r28;
                                                            r19 = r19;
                                                            r22 = var_1A8;
                                                            if (sub_1005d84b0([MCPromoDataAccess executeDataAccessFromConfig:r2], 0x1) != 0x0) {
                                                                    r0 = *(r28 + r22);
                                                                    r0 = [r0 getPopupForOffer:r20 isAuto:0x0];
                                                                    if (r0 != 0x0) {
                                                                            r24 = @selector(contentSize);
                                                                            r25 = r0;
                                                                            [r26 showOfferPopUp:[r26 getOfferFromID:r20] prioritize:0x0];
                                                                            [r19 addObject:r25];
                                                                            objc_msgSend(r25, r24);
                                                                            asm { fcvt       d1, s11 };
                                                                            if (d0 > d1) {
                                                                                    [r25 contentSize];
                                                                                    asm { fcvt       s11, d0 };
                                                                            }
                                                                            [r25 contentSize];
                                                                            if (d1 > d9) {
                                                                                    [r25 contentSize];
                                                                            }
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            r0 = *(r28 + r22);
                                                            r0 = [r0 getPopupForOffer:r20 isAuto:0x0];
                                                            if (r0 != 0x0) {
                                                                    r24 = @selector(contentSize);
                                                                    r25 = r0;
                                                                    [r26 showOfferPopUp:[r26 getOfferFromID:r20] prioritize:0x0];
                                                                    [r19 addObject:r25];
                                                                    objc_msgSend(r25, r24);
                                                                    asm { fcvt       d1, s11 };
                                                                    if (d0 > d1) {
                                                                            [r25 contentSize];
                                                                            asm { fcvt       s11, d0 };
                                                                    }
                                                                    [r25 contentSize];
                                                                    if (d1 > d9) {
                                                                            [r25 contentSize];
                                                                    }
                                                            }
                                                    }
                                            }
                                            else {
                                                    r0 = *(r28 + r22);
                                                    r0 = [r0 getPopupForOffer:r20 isAuto:0x0];
                                                    if (r0 != 0x0) {
                                                            r24 = @selector(contentSize);
                                                            r25 = r0;
                                                            [r26 showOfferPopUp:[r26 getOfferFromID:r20] prioritize:0x0];
                                                            [r19 addObject:r25];
                                                            objc_msgSend(r25, r24);
                                                            asm { fcvt       d1, s11 };
                                                            if (d0 > d1) {
                                                                    [r25 contentSize];
                                                                    asm { fcvt       s11, d0 };
                                                            }
                                                            [r25 contentSize];
                                                            if (d1 > d9) {
                                                                    [r25 contentSize];
                                                            }
                                                    }
                                            }
                                            r27 = r27 + 0x1;
                                    } while (r27 < var_158);
                                    r0 = objc_msgSend(var_190, var_1B0);
                                    var_158 = r0;
                            } while (r0 != 0x0);
                    }
                    if ([r19 count] != 0x0) {
                            [[CCDirector sharedDirector] winSize];
                            r0 = [[&var_150 super] initWithItems:r19 defaultCyclePeriod:var_1D8 size:stack[-480] leftButton:var_1C8 rightButton:stack[-464] bookmarkNormalSpriteDict:var_1B8 bookmarkHiglightedSpriteDict:stack[-496] bookmarkDisabledSpriteDictionary:var_1D8];
                            r19 = r0;
                            if (r0 != 0x0) {
                                    s9 = 0x0 * *(int32_t *)0x100bf3240;
                                    if (sub_1005cb7c8(0x1) < 0x6) {
                                            asm { fcsel      s11, s0, s1, lo };
                                    }
                                    asm { fcvt       d0, s0 };
                                    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_leftButton))) position];
                                    [*(r19 + r21) setPosition:r2];
                                    asm { fcvt       d0, s0 };
                                    objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_rightButton))), r20);
                                    objc_msgSend(*(r19 + r22), r21);
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)update:(double)arg2 {
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
    [[&var_40 super] update:arg2];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            r0 = [r0 getCellForCurrentOffset];
            if (r0 != 0x0) {
                    r20 = r0;
                    if ([r0 isPressingButton] != 0x0) {
                            [*(r19 + r21) restartMovingCaroussel];
                    }
                    r22 = [r20 offerId];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_currentPopup));
                    if (r22 != [*(r19 + r23) offerId]) {
                            r0 = *(r19 + r23);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + r23) = 0x0;
                            }
                            *(r19 + r23) = [r20 retain];
                            r0 = r19->_promoClients;
                            if (r0 != 0x0 && [r0 count] != 0x0) {
                                    r19 = [r19 getClientWithPromo:[r20 offerId]];
                                    [r19 addOfferIdToShownPopups:[r20 offerId]];
                            }
                            else {
                                    r19 = r19->_promoClient;
                                    if (r19 != 0x0) {
                                            [r19 addOfferIdToShownPopups:[r20 offerId]];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)promoActivated:(void *)arg2 {
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
    if (*(r0 + r22) == 0x0) goto .l1;

loc_1007643ec:
    r20 = r2;
    r19 = r0;
    r0 = r0->_promoClient;
    if (r0 == 0x0) goto loc_100764510;

loc_100764404:
    r0 = [r0 getPopupForOffer:r20 isAuto:0x0];
    if (r0 == 0x0) goto .l1;

loc_10076441c:
    r20 = r0;
    r0 = [NSMutableArray arrayWithArray:[*(r19 + r22) getItems]];
    r21 = r0;
    if ([r0 count] >= 0x2) {
            [r21 removeLastObject];
            [r21 removeObjectAtIndex:0x0];
    }
    if ([r21 count] == 0x0) goto loc_1007644f8;

loc_10076449c:
    r23 = 0x0;
    goto loc_1007644b0;

loc_1007644b0:
    if ([[r21 objectAtIndex:r23] getPriority] < [r20 getPriority]) goto loc_100764560;

loc_1007644e0:
    r23 = r23 + 0x1;
    if ([r21 count] > r23) goto loc_1007644b0;

loc_1007644f8:
    [r21 addObject:r2];
    goto loc_100764598;

loc_100764598:
    [r19 updateItems:r21];
    return;

.l1:
    return;

loc_100764560:
    [r21 insertObject:r20 atIndex:r23];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedIndex));
    r9 = *(int32_t *)(r19 + r8);
    if (r9 > r23) {
            *(int32_t *)(r19 + r8) = r9 + 0x1;
    }
    goto loc_100764598;

loc_100764510:
    r0 = r19->_promoClients;
    if (r0 == 0x0 || [r0 count] == 0x0) goto .l1;

loc_100764530:
    r0 = [r19 getClientWithPromo:r20];
    if (r0 != 0x0) goto loc_100764404;
}

-(void *)getActivePromotions {
    r0 = self->_cTable;
    if (r0 != 0x0) {
            r0 = [r0 getItems];
    }
    return r0;
}

-(void *)getCurrentItem {
    r0 = [[&var_10 super] getCurrentItem];
    return r0;
}

-(void)promoDeactivated:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x70;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
    if (*(r0 + r21) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = r0->_promoClient;
            if (r0 != 0x0) {
                    if ([r0 promoSystem] != 0x0) {
                            var_58 = [NSMutableArray array];
                            r0 = *(r19 + r21);
                            r0 = [r0 getItems];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    if ([r0 count] != 0x0) {
                                            if ([r22 count] >= 0x3) {
                                                    r28 = 0x1;
                                                    do {
                                                            r26 = @selector(isEqualToString:);
                                                            r25 = @selector(offerId);
                                                            r0 = [r22 objectAtIndex:r2];
                                                            r21 = r0;
                                                            if ((objc_msgSend(objc_msgSend(r0, r25), r26) & 0x1) != 0x0) {
                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedIndex));
                                                                    r9 = sign_extend_64(*(int32_t *)(r19 + r8));
                                                                    if (r28 > r9) {
                                                                            *(int32_t *)(r19 + r8) = r9 - 0x1;
                                                                    }
                                                            }
                                                            else {
                                                                    [var_58 addObject:r2];
                                                            }
                                                            r28 = r28 + 0x1;
                                                    } while ([r22 count] - 0x1 > r28);
                                            }
                                            [r19 updateItems:var_58];
                                    }
                                    else {
                                            [r19 closeCycleTable];
                                    }
                            }
                            else {
                                    [r19 closeCycleTable];
                            }
                    }
            }
            else {
                    r0 = r19->_promoClients;
                    if (r0 != 0x0 && [r0 count] != 0x0) {
                            r0 = [r19 getClientWithPromo:r20];
                            if (r0 != 0x0) {
                                    if ([r0 promoSystem] != 0x0) {
                                            var_58 = [NSMutableArray array];
                                            r0 = *(r19 + r21);
                                            r0 = [r0 getItems];
                                            if (r0 != 0x0) {
                                                    r22 = r0;
                                                    if ([r0 count] != 0x0) {
                                                            if ([r22 count] >= 0x3) {
                                                                    r28 = 0x1;
                                                                    do {
                                                                            r26 = @selector(isEqualToString:);
                                                                            r25 = @selector(offerId);
                                                                            r0 = [r22 objectAtIndex:r2];
                                                                            r21 = r0;
                                                                            if ((objc_msgSend(objc_msgSend(r0, r25), r26) & 0x1) != 0x0) {
                                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedIndex));
                                                                                    r9 = sign_extend_64(*(int32_t *)(r19 + r8));
                                                                                    if (r28 > r9) {
                                                                                            *(int32_t *)(r19 + r8) = r9 - 0x1;
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    [var_58 addObject:r2];
                                                                            }
                                                                            r28 = r28 + 0x1;
                                                                    } while ([r22 count] - 0x1 > r28);
                                                            }
                                                            [r19 updateItems:var_58];
                                                    }
                                                    else {
                                                            [r19 closeCycleTable];
                                                    }
                                            }
                                            else {
                                                    [r19 closeCycleTable];
                                            }
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)postDismissEventForPopup:(void *)arg2 inSystem:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg3 getPopUpInfoForOffer:[arg2 offerId]];
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

-(void *)initWithPromoSystemClients:(void *)arg2 defaultCyclePeriod:(float)arg3 leftButton:(void *)arg4 rightButton:(void *)arg5 bookmarkNormalSpriteDict:(void *)arg6 bookmarkHiglightedSpriteDict:(void *)arg7 bookmarkDisabledSpriteDictionary:(void *)arg8 ordered:(bool)arg9 {
    var_0 = arg8;
    r7 = arg7;
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r0 = self;
    var_70 = d11;
    stack[-120] = d10;
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff80 - 0x250;
    r22 = arg2;
    if (arg2 != 0x0) {
            v8 = v0;
            var_2B0 = r3;
            stack[-696] = r4;
            var_2A0 = r5;
            stack[-680] = r6;
            var_290 = r7;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_promoClient));
            var_2B8 = r8;
            var_278 = r0;
            *(r0 + r8) = 0x0;
            r19 = [NSMutableArray array];
            r21 = [NSMutableArray array];
            var_1B0 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_288 = r1;
            r0 = objc_msgSend(r22, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r28 = *var_1B0;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_1B0 != r28) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r26 = *(var_1B8 + r27 * 0x8);
                                    r0 = [r26 promoSystem];
                                    if (r0 != 0x0) {
                                            [r19 addObject:r2];
                                            objc_msgSend(r21, r25);
                                    }
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = objc_msgSend(r22, var_288);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            if (r19 != 0x0) {
                    r1 = @selector(count);
                    var_228 = r1;
                    r0 = objc_msgSend(r19, r1);
                    r22 = 0x0;
                    if (r21 != 0x0) {
                            r22 = 0x0;
                            r28 = var_278;
                            if (r0 != 0x0) {
                                    if (objc_msgSend(r21, var_228) != 0x0) {
                                            r0 = [r21 copy];
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_promoClients));
                                            var_2C0 = r8;
                                            *(r28 + r8) = r0;
                                            d9 = *(*_CGSizeZero + 0x8);
                                            var_280 = [NSMutableArray array];
                                            r0 = [r28 getActiveOffersPopUpsFromMultipleSystems:r19 ordered:var_0];
                                            var_1F0 = q0;
                                            var_238 = r0;
                                            r0 = objc_msgSend(r0, var_288);
                                            if (r0 != 0x0) {
                                                    r19 = r0;
                                                    var_218 = *var_1F0;
                                                    do {
                                                            r27 = 0x0;
                                                            r21 = @selector(popUpCustomData);
                                                            do {
                                                                    if (*var_1F0 != var_218) {
                                                                            objc_enumerationMutation(var_238);
                                                                    }
                                                                    r26 = *(var_1F8 + r27 * 0x8);
                                                                    r24 = objc_msgSend(r26, r21);
                                                                    r0 = [NSDictionary class];
                                                                    r0 = sub_1005d8554(r24, r0, 0x0);
                                                                    if (r0 != 0x0) {
                                                                            r24 = r0;
                                                                            if (objc_msgSend(r0, var_228) == 0x0 || sub_1005d84b0([MCPromoDataAccess executeDataAccessFromConfig:[r24 objectForKey:r2]], 0x1) != 0x0) {
                                                                                    r0 = [r28 getClientWithPromo:[r26 name]];
                                                                                    if (r0 != 0x0) {
                                                                                            r24 = r0;
                                                                                            r0 = [r24 getPopupForOffer:[r26 name] isAuto:0x0];
                                                                                            if (r0 != 0x0) {
                                                                                                    r25 = r0;
                                                                                                    r22 = r21;
                                                                                                    r21 = r19;
                                                                                                    [[r24 promoSystem] showOfferPopUp:[[r24 promoSystem] getOfferFromID:[r26 name]] prioritize:0x0];
                                                                                                    [var_280 addObject:r25];
                                                                                                    r24 = @selector(contentSize);
                                                                                                    objc_msgSend(r25, r24);
                                                                                                    asm { fcvt       d1, s11 };
                                                                                                    if (d0 > d1) {
                                                                                                            objc_msgSend(r25, r24);
                                                                                                            asm { fcvt       s11, d0 };
                                                                                                    }
                                                                                                    objc_msgSend(r25, r24);
                                                                                                    r19 = r21;
                                                                                                    if (d1 > d9) {
                                                                                                            objc_msgSend(r25, r24);
                                                                                                    }
                                                                                                    r28 = var_278;
                                                                                                    r21 = r22;
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                                    else {
                                                                            r0 = [r28 getClientWithPromo:[r26 name]];
                                                                            if (r0 != 0x0) {
                                                                                    r24 = r0;
                                                                                    r0 = [r24 getPopupForOffer:[r26 name] isAuto:0x0];
                                                                                    if (r0 != 0x0) {
                                                                                            r25 = r0;
                                                                                            r22 = r21;
                                                                                            r21 = r19;
                                                                                            [[r24 promoSystem] showOfferPopUp:[[r24 promoSystem] getOfferFromID:[r26 name]] prioritize:0x0];
                                                                                            [var_280 addObject:r25];
                                                                                            r24 = @selector(contentSize);
                                                                                            objc_msgSend(r25, r24);
                                                                                            asm { fcvt       d1, s11 };
                                                                                            if (d0 > d1) {
                                                                                                    objc_msgSend(r25, r24);
                                                                                                    asm { fcvt       s11, d0 };
                                                                                            }
                                                                                            objc_msgSend(r25, r24);
                                                                                            r19 = r21;
                                                                                            if (d1 > d9) {
                                                                                                    objc_msgSend(r25, r24);
                                                                                            }
                                                                                            r28 = var_278;
                                                                                            r21 = r22;
                                                                                    }
                                                                            }
                                                                    }
                                                                    r27 = r27 + 0x1;
                                                            } while (r27 < r19);
                                                            r0 = objc_msgSend(var_238, var_288);
                                                            r19 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                            [[CCDirector sharedDirector] winSize];
                                            r0 = [[&var_210 super] initWithItems:var_280 defaultCyclePeriod:var_2B0 size:stack[-696] leftButton:var_2A0 rightButton:stack[-680] bookmarkNormalSpriteDict:var_290 bookmarkHiglightedSpriteDict:var_2C0 bookmarkDisabledSpriteDictionary:var_2B8];
                                            if (r0 != 0x0) {
                                                    r22 = r0;
                                                    s9 = 0x0 * *(int32_t *)0x100bf3240;
                                                    if (sub_1005cb7c8(0x1) < 0x6) {
                                                            asm { fcsel      s11, s0, s1, lo };
                                                    }
                                                    asm { fcvt       d0, s0 };
                                                    [*(r22 + sign_extend_64(*(int32_t *)ivar_offset(_leftButton))) position];
                                                    [*(r22 + r20) setPosition:r2];
                                                    asm { fcvt       d0, s0 };
                                                    objc_msgSend(*(r22 + sign_extend_64(*(int32_t *)ivar_offset(_rightButton))), r19);
                                                    objc_msgSend(*(r22 + r21), r20);
                                            }
                                            else {
                                                    r20 = var_2B8;
                                                    r0 = *r20;
                                                    if (r0 != 0x0) {
                                                            [r0 release];
                                                            *r20 = 0x0;
                                                    }
                                                    r20 = var_2C0;
                                                    r0 = *r20;
                                                    if (r0 != 0x0) {
                                                            [r0 release];
                                                            r22 = 0x0;
                                                            *r20 = 0x0;
                                                    }
                                                    else {
                                                            r22 = 0x0;
                                                    }
                                            }
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                    }
            }
            else {
                    r22 = 0x0;
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getClientWithPromo:(void *)arg2 {
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
    var_110 = q0;
    r20 = self->_promoClients;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100764c58;

loc_100764bc4:
    r22 = r0;
    r26 = *var_110;
    r8 = &@selector(fetchCompletion);
    goto loc_100764bd8;

loc_100764bd8:
    r27 = 0x0;
    r28 = r8;
    r24 = *(r8 + 0x170);
    goto loc_100764be8;

loc_100764be8:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_118 + r27 * 0x8);
    if (objc_msgSend([r25 promoSystem], r24) != 0x0) goto loc_100764c5c;

loc_100764c24:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_100764be8;

loc_100764c30:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    r8 = r28;
    if (r0 != 0x0) goto loc_100764bd8;

loc_100764c58:
    r25 = 0x0;
    goto loc_100764c5c;

loc_100764c5c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)closeCycleTable {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    r0 = self->_promoClient;
    if (r0 == 0x0) goto loc_10076494c;

loc_100764868:
    r20 = [r0 promoSystem];
    r0 = [NSArray arrayWithArray:[r19 getActivePromotions]];
    r21 = r0;
    var_190 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_190;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_190 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 postDismissEventForPopup:r2 inSystem:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    goto loc_100764a84;

loc_100764a84:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10076494c:
    r0 = r19->_promoClients;
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_100764a84;

loc_10076496c:
    r0 = [NSArray arrayWithArray:[r19 getActivePromotions]];
    r20 = r0;
    var_1D0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100764a84;

loc_1007649c8:
    r22 = r0;
    r28 = *var_1D0;
    goto loc_1007649d4;

loc_1007649d4:
    r21 = 0x0;
    goto loc_1007649f8;

loc_1007649f8:
    if (*var_1D0 != r28) {
            objc_enumerationMutation(r20);
    }
    r27 = *(var_1D8 + r21 * 0x8);
    [r27 offerId];
    r0 = [r19 getClientWithPromo:r2];
    if (r0 == 0x0) goto loc_100764a58;

loc_100764a38:
    r0 = [r0 promoSystem];
    if (r0 == 0x0) goto loc_100764a84;

loc_100764a44:
    [r19 postDismissEventForPopup:r2 inSystem:r3];
    goto loc_100764a58;

loc_100764a58:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1007649f8;

loc_100764a64:
    r0 = objc_msgSend(r20, var_1E8);
    r22 = r0;
    if (r0 != 0x0) goto loc_1007649d4;
}

@end