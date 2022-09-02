@implementation MCPromoSystemClient

+(void *)getClientForSystem:(void *)arg2 withGameDelegate:(void *)arg3 withLocalizationManager:(void *)arg4 {
    r0 = [MCPromoSystemClient alloc];
    r0 = [r0 initClientForSystem:arg2 withGameDelegate:arg3 withLocalizationManager:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getClientForSystem:(void *)arg2 withGameDelegate:(void *)arg3 {
    r0 = [MCPromoSystemClient alloc];
    r0 = [r0 initClientForSystem:arg2 withGameDelegate:arg3 withLocalizationManager:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getClientWithConfiguration:(void *)arg2 withDefaultSaveKey:(void *)arg3 forUser:(void *)arg4 withGameDelegate:(void *)arg5 withLocalizationManager:(void *)arg6 {
    r0 = [MCPromoSystemBase alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    r26 = r0;
    [r0 setDefaultSaveDataKey:arg3];
    [r26 initWithOffersConfiguration:arg2 forUser:arg4];
    r0 = [MCPromoSystemClient alloc];
    r0 = [r0 initClientForSystem:r26 withGameDelegate:arg5 withLocalizationManager:arg6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getClientWithConfiguration:(void *)arg2 withDefaultSaveKey:(void *)arg3 forUser:(void *)arg4 withGameDelegate:(void *)arg5 {
    r0 = [MCPromoSystemBase alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    r25 = r0;
    [r0 setDefaultSaveDataKey:arg3];
    [r25 initWithOffersConfiguration:arg2 forUser:arg4];
    r0 = [MCPromoSystemClient alloc];
    r0 = [r0 initClientForSystem:r25 withGameDelegate:arg5 withLocalizationManager:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getClientWithConfiguration:(void *)arg2 withSystemId:(void *)arg3 forUser:(void *)arg4 withPromoClientDelegate:(void *)arg5 withPromoSystemDelegate:(void *)arg6 withLocalizationManager:(void *)arg7 {
    r0 = [MCPromoSystemBase alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    r27 = r0;
    [r0 setPromoSystemId:arg3];
    [r27 setDefaultSaveDataKey:[NSString stringWithFormat:@"%@SaveData"]];
    [r27 initWithOffersConfiguration:arg2 forUser:arg4];
    [r27 setDelegate:arg6];
    r0 = [MCPromoSystemClient alloc];
    r0 = [r0 initClientForSystem:r27 withGameDelegate:arg5 withLocalizationManager:arg7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initClientForSystem:(void *)arg2 withGameDelegate:(void *)arg3 withLocalizationManager:(void *)arg4 {
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
    r22 = arg3;
    r23 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [r23 retain];
            *(r19 + 0x10) = [r22 retain];
            if (r20 != 0x0) {
                    *(r19 + 0x18) = [r20 retain];
            }
            *(int128_t *)(r19 + 0x30) = [[NSMutableArray array] retain];
            *(int128_t *)(r19 + 0x38) = 0xbff0000000000000;
            *(int8_t *)(r19 + 0x40) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[[CCDirector sharedDirector] scheduler] unscheduleSelector:@selector(updatePromotionBadge) forTarget:r19];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setCurrentTimestamp:(double)arg2 {
    [[self promoSystem] setCurrentTimestamp:arg2];
    [self checkIfOffersShouldBeKilled];
    return;
}

-(void)addOfferIdToShownPopups:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x30) containsObject:r2] != 0x0) {
            [*(r20 + 0x30) removeObject:r19];
    }
    [*(r20 + 0x30) addObject:r2];
    return;
}

-(void)loadPreviouslyShownOffers {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(self + 0x28) != 0x0) {
            r0 = [r19 getNextShowableBadgeOfferId];
            if (r0 == 0x0 || [r0 isEqualToString:r2] != 0x0) {
                    if ([*(r19 + 0x10) respondsToSelector:@selector(hideCurrentBadgeForSystem:)] != 0x0) {
                            [*(int128_t *)(r19 + 0x10) hideCurrentBadgeForSystem:r2];
                    }
            }
            r0 = *(r19 + 0x28);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x28) = 0x0;
            }
    }
    if (*(int8_t *)(r19 + 0x40) != 0x0) {
            if ([*(r19 + 0x10) respondsToSelector:r2] != 0x0) {
                    r20 = [*(r19 + 0x10) getCurrentUserId];
            }
            else {
                    r20 = @"NId";
            }
            [*(r19 + 0x8) promoSystemId];
            *(r19 + 0x20) = [[NSString stringWithFormat:@"PromoClient_PreviouslyShownBadges-%@-%@"] retain];
            if ([MCPromoSystem useNewUserDefaults] != 0x0) {
                    r21 = sub_1009d6c9c();
                    r0 = [NSArray class];
                    r0 = sub_1005d8554(r21, r0, 0x0);
            }
            else {
                    r0 = [NSUserDefaults standardUserDefaults];
                    r0 = [r0 objectForKey:r2];
            }
            r21 = r0;
            if (r0 != 0x0 && [r21 count] != 0x0) {
                    r0 = [NSMutableArray arrayWithArray:r21];
            }
            else {
                    r0 = [NSMutableArray array];
            }
    }
    else {
            r0 = [NSMutableArray array];
    }
    *(r19 + 0x28) = [r0 retain];
    *(r19 + 0x38) = 0xbff0000000000000;
    return;
}

-(void)checkIfOffersShouldBeKilled {
    r31 = r31 - 0x170;
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
    r0 = *(self + 0x8);
    r0 = [r0 getActiveOffers];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-240];
    var_148 = r0;
    var_158 = r1;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            var_140 = *var_110;
            do {
                    r4 = 0x10;
                    r28 = 0x0;
                    do {
                            if (*var_110 != var_140) {
                                    objc_enumerationMutation(var_148);
                            }
                            r20 = *(var_118 + r28 * 0x8);
                            r22 = [[*(r19 + 0x8) getOfferFromID:r20] popUpCustomData];
                            r22 = sub_1005d8554(r22, [NSDictionary class], 0x0);
                            if ([*(r19 + 0x10) respondsToSelector:@selector(userOwnsProductsInList:mustOwnAllProducts:forSystem:), r3, r4] != 0x0) {
                                    r27 = [r22 objectForKey:@"productsThatKill"];
                                    r27 = sub_1005d8554(r27, [NSArray class], 0x0);
                                    r3 = sub_1005d84b0([r22 objectForKey:@"needAllProductsToKill"], 0x0);
                                    r4 = *(int128_t *)(r19 + 0x8);
                                    if ([*(int128_t *)(r19 + 0x10) userOwnsProductsInList:r27 mustOwnAllProducts:r3 forSystem:r4] == 0x0) {
                                            if ([*(r19 + 0x10) respondsToSelector:@selector(userHasAppsInstalled:mustHaveAllAppsInstalled:forSystem:), r3, r4] != 0x0) {
                                                    r27 = [r22 objectForKey:@"appsThatKill"];
                                                    r27 = sub_1005d8554(r27, [NSArray class], 0x0);
                                                    r3 = sub_1005d84b0([r22 objectForKey:@"needAllAppsToKill"], 0x0);
                                                    r4 = *(int128_t *)(r19 + 0x8);
                                                    if ([*(int128_t *)(r19 + 0x10) userHasAppsInstalled:r27 mustHaveAllAppsInstalled:r3 forSystem:r4] != 0x0) {
                                                            [*(r19 + 0x8) killOffer:r2];
                                                    }
                                            }
                                    }
                                    else {
                                            [*(r19 + 0x8) killOffer:r2];
                                    }
                            }
                            else {
                                    if ([*(r19 + 0x10) respondsToSelector:@selector(userHasAppsInstalled:mustHaveAllAppsInstalled:forSystem:), r3, r4] != 0x0) {
                                            r27 = [r22 objectForKey:@"appsThatKill"];
                                            r27 = sub_1005d8554(r27, [NSArray class], 0x0);
                                            r3 = sub_1005d84b0([r22 objectForKey:@"needAllAppsToKill"], 0x0);
                                            r4 = *(int128_t *)(r19 + 0x8);
                                            if ([*(int128_t *)(r19 + 0x10) userHasAppsInstalled:r27 mustHaveAllAppsInstalled:r3 forSystem:r4] != 0x0) {
                                                    [*(r19 + 0x8) killOffer:r2];
                                            }
                                    }
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < var_128);
                    r3 = &stack[-240];
                    r0 = objc_msgSend(var_148, var_158);
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addOfferIdToShownBadges:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([*(self + 0x28) containsObject:r2] != 0x0) {
            [*(r20 + 0x28) removeObject:r19];
    }
    if (*(int8_t *)(r20 + 0x40) != 0x0) {
            if ([MCPromoSystem useNewUserDefaults] != 0x0) {
                    sub_1009d6e58(*(int128_t *)(r20 + 0x28), *(int128_t *)(r20 + 0x20), @"PromoClient");
            }
            else {
                    r21 = [NSUserDefaults standardUserDefaults];
                    [NSArray arrayWithArray:*(r20 + 0x28)];
                    [r21 setObject:r2 forKey:r3];
            }
    }
    [*(r20 + 0x8) currentTimestamp];
    *(r20 + 0x38) = d0;
    [*(r20 + 0x28) addObject:r2];
    return;
}

-(void *)getPopupForOffer:(void *)arg2 isAuto:(bool)arg3 {
    r0 = [self getPopupForOffer:arg2 atPosition:arg3 isAuto:r4];
    return r0;
}

-(void *)getPopupForOffer:(void *)arg2 atPosition:(struct CGPoint)arg3 isAuto:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r21 = r3;
            r19 = r2;
            r20 = r0;
            if (([r19 isEqualToString:r2] & 0x1) == 0x0 && [*(int128_t *)(r20 + 0x10) canShowOfferPopup:r19 forSystem:*(int128_t *)(r20 + 0x8) isAuto:r21] != 0x0) {
                    r0 = [MCPromoPopup getPromoPopupWithOfferId:r19 actionDelegate:r20 gameDelegate:*(int128_t *)(r20 + 0x10) promoSystem:*(int128_t *)(r20 + 0x8) localizationManager:*(r20 + 0x18)];
                    r21 = r0;
                    if (r0 != 0x0) {
                            [r20 addOfferIdToShownPopups:r19];
                            [[*(r20 + 0x8) getOfferFromID:r19] setPopUpActiveState:0x1];
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = r21;
    return r0;
}

-(void *)getBadgeForOffer:(void *)arg2 {
    r0 = [self getBadgeForOffer:arg2 atPosition:r3];
    return r0;
}

-(void *)getBadgeForOffer:(void *)arg2 atPosition:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if (([r19 isEqualToString:r2] & 0x1) == 0x0 && [*(int128_t *)(r20 + 0x10) canShowOfferBadge:r19 forSystem:*(int128_t *)(r20 + 0x8)] != 0x0) {
                    r21 = [[*(r20 + 0x8) getBadgeInfoForOffer:r19] badgeConfiguration];
                    r22 = *(int128_t *)(r20 + 0x10);
                    r22 = sub_1005cb080(r22, @selector(badgeButtonPressed:forSystem:), [NSArray arrayWithObjects:r2]);
                    r21 = [MCPromoButton getPromoButtonForOffer:r19 withConfiguration:r21 block:r22 gameDelegate:*(int128_t *)(r20 + 0x10) promoSystem:*(int128_t *)(r20 + 0x8) localizationManager:*(r20 + 0x18)];
                    [[*(r20 + 0x8) getOfferFromID:r19] uniqueId];
                    [r21 setID:[NSString stringWithFormat:@"PROMOTION_BADGE_BUTTON_%@"]];
                    [r22 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = r21;
    return r0;
}

-(void *)getNextShowablePopupOfferId {
    r0 = [self getNextShowablePopupOfferIdIsAuto:0x1];
    return r0;
}

-(void *)getNextShowablePopupOfferIdIsAuto:(bool)arg2 {
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
    r0 = *(self + 0x8);
    r0 = [r0 getActiveOffers];
    r21 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10076160c;

loc_10076153c:
    r23 = r0;
    r26 = *var_110;
    goto loc_100761548;

loc_100761548:
    r24 = 0x0;
    goto loc_100761568;

loc_100761568:
    if (*var_110 != r26) {
            objc_enumerationMutation(r21);
    }
    r28 = *(var_118 + r24 * 0x8);
    if (r28 == 0x0 || ([r28 isEqualToString:@""] & 0x1) != 0x0) goto loc_1007615e0;

loc_1007615a4:
    if (r19 != 0x0) {
            r22 = [*(r20 + 0x8) isOfferPopUpActive:r28];
    }
    else {
            r22 = 0x1;
    }
    r0 = *(int128_t *)(r20 + 0x10);
    r0 = [r0 canShowOfferPopup:r2 forSystem:r3 isAuto:r4];
    if (r22 == 0x0 || (r0 & 0x1) == 0x0) goto loc_1007615e0;

loc_100761610:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r28;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1007615e0:
    r24 = r24 + 0x1;
    if (r24 < r23) goto loc_100761568;

loc_1007615ec:
    r0 = objc_msgSend(r21, var_130);
    r23 = r0;
    if (r0 != 0x0) goto loc_100761548;

loc_10076160c:
    r28 = 0x0;
    goto loc_100761610;
}

-(void *)getNextShowablePopupIsAuto:(bool)arg2 {
    r0 = [self getPopupForOffer:[self getNextShowablePopupOfferIdIsAuto:r2] atPosition:arg2 isAuto:r4];
    return r0;
}

-(void *)getNextShowablePopup {
    r0 = [self getNextShowablePopupIsAuto:0x1];
    return r0;
}

-(void)activateBadgeCycling {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x40) == 0x0) {
            r19 = r0;
            [r0 getBadgeCycleCooldownTime];
            if (s0 != 0xbff0000000000000 && *(int8_t *)(r19 + 0x40) == 0x0) {
                    *(int8_t *)(r19 + 0x40) = 0x1;
            }
            [r19 loadPreviouslyShownOffers];
            [[[CCDirector sharedDirector] scheduler] scheduleSelector:@selector(updatePromotionBadge) forTarget:r19 interval:0x0 paused:r5];
    }
    return;
}

-(void *)getTopShowableBadgeOfferId {
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
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 getActiveOffers];
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1007617e8;

loc_10076172c:
    r22 = r0;
    r28 = *var_110;
    goto loc_100761740;

loc_100761740:
    r21 = 0x0;
    goto loc_10076175c;

loc_10076175c:
    if (*var_110 != r28) {
            objc_enumerationMutation(r20);
    }
    r27 = *(var_118 + r21 * 0x8);
    if (r27 == 0x0 || ([*(int128_t *)(r19 + 0x10) canShowOfferBadge:r2 forSystem:r3] & 0x1) == 0x0 || ([r27 isEqualToString:@""] & 0x1) != 0x0 || [r19 offerHasBadgeConfiguration:r2] == 0x0) goto loc_1007617bc;

loc_1007617ec:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1007617bc:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_10076175c;

loc_1007617c8:
    r0 = objc_msgSend(r20, var_128);
    r22 = r0;
    if (r0 != 0x0) goto loc_100761740;

loc_1007617e8:
    r27 = 0x0;
    goto loc_1007617ec;
}

-(void)deactivateBadgeCycling {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x40) != 0x0) {
            *(int8_t *)(r0 + 0x40) = 0x0;
            [[[CCDirector sharedDirector] scheduler] unscheduleSelector:@selector(updatePromotionBadge) forTarget:r0];
    }
    return;
}

-(void *)getNextShowableBadge {
    r0 = [self getBadgeForOffer:[self getNextShowableBadgeOfferId]];
    return r0;
}

-(bool)offerHasBadgeConfiguration:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x8);
    r0 = [r0 getBadgeInfoForOffer:arg2];
    if (r0 != 0x0) {
            r0 = [r0 badgeConfiguration];
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(float)getBadgeCycleCooldownTime {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    r0 = [r0 respondsToSelector:@selector(getDefaultBadgeCycleCooldownForSystem:)];
    if (r0 != 0x0) {
            r2 = *(int128_t *)(r19 + 0x8);
            r0 = *(int128_t *)(r19 + 0x10);
            r0 = [r0 getDefaultBadgeCycleCooldownForSystem:r2];
            if (s0 >= 0x0) {
                    r0 = *(r19 + 0x28);
                    r0 = [r0 lastObject];
                    if (r0 != 0x0) {
                            r20 = r0;
                            r0 = [r0 isEqualToString:r2];
                            if ((r0 & 0x1) == 0x0) {
                                    r0 = *(r19 + 0x8);
                                    r0 = [r0 getOfferFromID:r20];
                                    r0 = [r0 badgeCycleCooldown];
                                    if (d0 != 0x0) {
                                            d10 = 0xbff0000000000000;
                                            asm { fcvt       s0, d10 };
                                            if (d10 < 0x0) {
                                                    asm { fcsel      s8, s9, s0, mi };
                                            }
                                    }
                            }
                            else {
                                    d10 = 0xbff0000000000000;
                                    asm { fcvt       s0, d10 };
                                    if (d10 < 0x0) {
                                            asm { fcsel      s8, s9, s0, mi };
                                    }
                            }
                    }
                    else {
                            d10 = 0xbff0000000000000;
                            asm { fcvt       s0, d10 };
                            if (d10 < 0x0) {
                                    asm { fcsel      s8, s9, s0, mi };
                            }
                    }
            }
    }
    return r0;
}

-(void)resetShownBadges {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x28) count] != 0x0) {
            [*(r19 + 0x28) removeAllObjects];
            if ([MCPromoSystem useNewUserDefaults] != 0x0) {
                    sub_1009d6e58(*(int128_t *)(r19 + 0x28), *(int128_t *)(r19 + 0x20), @"PromoClient");
            }
            else {
                    r20 = [NSUserDefaults standardUserDefaults];
                    [NSArray arrayWithArray:*(r19 + 0x28)];
                    [r20 setObject:r2 forKey:r3];
            }
    }
    return;
}

-(void *)getNextShowableBadgeOfferId {
    r31 = r31 - 0x170;
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
    [self getBadgeCycleCooldownTime];
    [*(r19 + 0x8) currentTimestamp];
    d1 = *(r19 + 0x38);
    if (d1 == 0xbff0000000000000) {
            r20 = 0x1;
    }
    else {
            d2 = 0xbff0000000000000;
            r8 = &@selector(fetchCompletion);
            asm { fcvt       d2, s8 };
            if (d0 - d1 > d2) {
                    r8 = &@selector(fetchCompletion);
                    if (CPU_FLAGS & G) {
                            r8 = 0x1;
                    }
            }
            if (s8 != 0xbff0000000000000) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            r20 = r9 & r8;
    }
    if (*(int8_t *)(r19 + 0x40) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    r0 = *(r19 + 0x8);
    r0 = [r0 getActiveOffers];
    r21 = r0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100761a58;

loc_100761908:
    r23 = r0;
    r27 = 0x0;
    var_14C = r20 & r22;
    r28 = *var_120;
    goto loc_100761928;

loc_100761928:
    r22 = 0x0;
    goto loc_100761960;

loc_100761960:
    if (*var_120 != r28) {
            objc_enumerationMutation(r21);
    }
    r20 = *(var_128 + r22 * 0x8);
    if (r20 == 0x0 || [*(int128_t *)(r19 + 0x10) canShowOfferBadge:r2 forSystem:r3] == 0x0 || ([r20 isEqualToString:@""] & 0x1) != 0x0 || [r19 offerHasBadgeConfiguration:r20] == 0x0) goto loc_100761a20;

loc_1007619c0:
    if ((var_14C | [r20 isEqualToString:[*(r19 + 0x28) lastObject]] ^ 0x1) != 0x1) goto loc_100761a50;

loc_1007619f0:
    if (r27 != 0x0) {
            if ([r27 isEqualToString:@""] != 0x0) {
                    r27 = r20;
            }
    }
    else {
            r27 = r20;
    }
    if ([*(r19 + 0x28) containsObject:r2] == 0x0) goto loc_100761a50;

loc_100761a20:
    r22 = r22 + 0x1;
    if (r22 < r23) goto loc_100761960;

loc_100761a2c:
    r0 = objc_msgSend(r21, var_158);
    r23 = r0;
    if (r0 != 0x0) goto loc_100761928;

loc_100761a5c:
    r21 = [*(r19 + 0x28) containsObject:r27];
    [*(r19 + 0x28) lastObject];
    r20 = [r27 isEqualToString:r2];
    if (r21 != 0x0) {
            [r19 resetShownBadges];
    }
    if (r20 != 0x0) {
            [r19 addOfferIdToShownBadges:r27];
    }
    goto loc_100761acc;

loc_100761acc:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100761a50:
    r27 = r20;
    goto loc_100761acc;

loc_100761a58:
    r27 = 0x0;
    goto loc_100761a5c;
}

-(void *)promoSystem {
    r0 = *(self + 0x8);
    return r0;
}

-(int)executeAction:(void *)arg2 withParameters:(void *)arg3 successEvents:(void *)arg4 successOnFirstEvent:(bool)arg5 failureEvents:(void *)arg6 failureOnFirstEvent:(bool)arg7 {
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
    r24 = arg7;
    r21 = arg6;
    r22 = arg5;
    r23 = arg4;
    r19 = arg2;
    r27 = self;
    r25 = [MCPromoDataAccess clearAllDataAccessFromConfig:arg3];
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_100760814;

loc_10076080c:
    r0 = 0x0;
    goto loc_100761004;

loc_100761004:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100760814:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1007608ac;

loc_10076082c:
    r0 = [r25 objectForKey:r2];
    if (r0 == 0x0) goto loc_100761000;

loc_100760848:
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_100761000;

loc_100760860:
    var_60 = **___stack_chk_guard;
    r4 = *(int128_t *)(r27 + 0x8);
    r0 = *(int128_t *)(r27 + 0x10);
    if (**___stack_chk_guard == var_60) {
            r0 = [r0 redirectToTarget:r19 customParams:r25 forSystem:r4];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100761000:
    r0 = 0x1;
    goto loc_100761004;

loc_1007608ac:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1007609a0;

loc_1007608c4:
    r0 = [r25 objectForKey:r2];
    if (r0 == 0x0) goto loc_1007608fc;

loc_1007608e4:
    r19 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100760918;

loc_1007608fc:
    r0 = [r25 objectForKey:r2];
    r19 = r0;
    if (r0 == 0x0) goto loc_100761000;

loc_100760918:
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_100761000;

loc_100760930:
    r0 = *(r27 + 0x10);
    r28 = r27;
    r0 = [r0 respondsToSelector:@selector(makePurchase:offerId:customParams:successEvents:successOnFirstEvent:failureEvents:failureOnFirstEvent:forSystem:), r3, r4, r5, r6, r7, var_190, var_188];
    r26 = *(r28 + 0x10);
    if (r0 == 0x0) goto loc_100760e08;

loc_10076095c:
    [*(r28 + 0x30) lastObject];
    r0 = r26;
    r1 = @selector(makePurchase:offerId:customParams:successEvents:successOnFirstEvent:failureEvents:failureOnFirstEvent:forSystem:);
    goto loc_10076098c;

loc_10076098c:
    r0 = objc_msgSend(r0, r1);
    goto loc_100761004;

loc_100760e08:
    if ([r26 respondsToSelector:@selector(makePurchase:offerId:successEvents:successOnFirstEvent:failureEvents:failureOnFirstEvent:forSystem:), r3, r4, r5, r6, r7, var_190] != 0x0) {
            r25 = *(r28 + 0x10);
            [*(r28 + 0x30) lastObject];
            r0 = [r25 makePurchase:r2 offerId:r3 successEvents:r4 successOnFirstEvent:r5 failureEvents:r6 failureOnFirstEvent:r7 forSystem:stack[-416]];
    }
    else {
            r0 = 0x1;
    }
    goto loc_100761004;

loc_1007609a0:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100760a88;

loc_1007609b8:
    r26 = @selector(objectForKey:);
    r19 = objc_msgSend(r25, r26);
    r0 = objc_msgSend(r25, r26);
    if (r19 == 0x0) goto loc_100761000;

loc_1007609f0:
    r25 = r0;
    r8 = [r19 isEqualToString:r2];
    r0 = 0x1;
    if (r25 == 0x0) goto loc_100761004;

loc_100760a14:
    r0 = 0x1;
    if ((r8 & 0x1) != 0x0) goto loc_100761004;

loc_100760a18:
    if (([r25 isEqualToString:r2] & 0x1) != 0x0 || [*(r27 + 0x10) respondsToSelector:@selector(claimEntitlement:transaction:offerId:successEvents:successOnFirstEvent:failureEvents:failureOnFirstEvent:forSystem:), r3, r4, r5, r6, r7, var_190, var_188] == 0x0) goto loc_100761000;

loc_100760a50:
    r26 = *(r27 + 0x10);
    [*(r27 + 0x30) lastObject];
    r0 = r26;
    r1 = @selector(claimEntitlement:transaction:offerId:successEvents:successOnFirstEvent:failureEvents:failureOnFirstEvent:forSystem:);
    goto loc_10076098c;

loc_100760a88:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100760d58;

loc_100760aa0:
    r21 = @selector(isEqualToString:);
    var_178 = r27;
    r20 = @selector(objectForKey:);
    r19 = objc_msgSend(r25, r20);
    var_160 = r20;
    r0 = objc_msgSend(r25, r20);
    var_158 = r19;
    if (r0 != 0x0) {
            r23 = r0;
            r1 = @selector(count);
            var_150 = r1;
            r0 = objc_msgSend(r0, r1);
            r20 = r21;
            if (r0 != 0x0) {
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    r3 = &stack[-240];
                    var_180 = r1;
                    r0 = objc_msgSend(r23, r1);
                    if (r0 != 0x0) {
                            r26 = r0;
                            r21 = *var_110;
                            r19 = var_160;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r21) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            r28 = *(var_118 + r22 * 0x8);
                                            if ([r28 isKindOfClass:[NSDictionary class]] != 0x0) {
                                                    r0 = [NSDictionary class];
                                                    r0 = sub_1005d8554(r28, r0, 0x0);
                                                    if (r0 != 0x0 && objc_msgSend(r0, var_150) != 0x0) {
                                                            r24 = r23;
                                                            r0 = objc_msgSend(r28, r19);
                                                            r0 = sub_1005d85d8(r0, 0x0);
                                                            r23 = r19;
                                                            r19 = r0;
                                                            if (objc_msgSend(r0, r20) != 0x0) {
                                                                    objc_msgSend(r28, r23);
                                                                    r0 = [MCPromoDataAccessManager sharedMCPromoDataAccessManager];
                                                                    r0 = [r0 getPropertyType:r2 withPropertyInfo:r3];
                                                                    if (r0 != 0x0) {
                                                                            r28 = r0;
                                                                            if (objc_msgSend(r0, r20) != 0x0) {
                                                                                    r28 = @"";
                                                                            }
                                                                    }
                                                                    else {
                                                                            r28 = @"";
                                                                    }
                                                                    var_158 = sub_1005ba614(var_158, @"%@", r28);
                                                                    r19 = var_160;
                                                                    r23 = r24;
                                                            }
                                                            else {
                                                                    r0 = objc_msgSend(r19, r20);
                                                                    r23 = r24;
                                                                    if (r0 != 0x0) {
                                                                            r19 = var_160;
                                                                            r0 = objc_msgSend(r28, r19);
                                                                            r0 = sub_10076c0ec(r0, *(int128_t *)(var_178 + 0x18), *(int128_t *)(var_178 + 0x10));
                                                                            if (r0 != 0x0) {
                                                                                    r28 = r0;
                                                                                    if (objc_msgSend(r0, r20) != 0x0) {
                                                                                            r28 = @"";
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r28 = @"";
                                                                            }
                                                                            var_158 = sub_1005ba614(var_158, @"%@", r28);
                                                                    }
                                                                    else {
                                                                            r19 = var_160;
                                                                    }
                                                            }
                                                    }
                                            }
                                            r22 = r22 + 0x1;
                                    } while (r22 < r26);
                                    r3 = &stack[-240];
                                    r0 = objc_msgSend(r23, var_180);
                                    r26 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    else {
            r20 = r21;
    }
    r21 = var_158;
    if (r21 != 0x0 && (objc_msgSend(r21, r20) & 0x1) == 0x0) {
            r20 = var_178;
            if ([*(r20 + 0x10) respondsToSelector:@selector(openBrowserWithURL:forSystem:), r3] != 0x0) {
                    r3 = *(int128_t *)(r20 + 0x8);
                    r0 = *(int128_t *)(r20 + 0x10);
                    r0 = [r0 openBrowserWithURL:r21 forSystem:r3];
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x1;
    }
    goto loc_100761004;

loc_100760d58:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100760e68;

loc_100760d70:
    r0 = [r25 objectForKey:r2];
    if (r0 == 0x0) goto loc_100761000;

loc_100760d8c:
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0 || [*(r27 + 0x10) respondsToSelector:@selector(openStoreWithAppId:forSystem:), r3] == 0x0) goto loc_100761000;

loc_100760dc4:
    var_60 = **___stack_chk_guard;
    r3 = *(int128_t *)(r27 + 0x8);
    r0 = *(int128_t *)(r27 + 0x10);
    if (**___stack_chk_guard == var_60) {
            r0 = [r0 openStoreWithAppId:r19 forSystem:r3];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100760e68:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100760f60;

loc_100760e80:
    r0 = [r25 objectForKey:r2];
    if (r0 == 0x0) goto loc_100761000;

loc_100760e9c:
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_100761000;

loc_100760eb4:
    sub_10099124c(&stack[-320]);
    sub_100761070(&var_148, [r19 UTF8String]);
    r0 = sub_10099f154(&stack[-320], &var_148, 0x0);
    if ((sign_extend_64(var_131) & 0xffffffff80000000) != 0x0) {
            operator delete(var_148);
    }
    sub_10099f150(&stack[-320]);
    goto loc_10076080c;

loc_100760f60:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100760f88;

loc_100760f78:
    r0 = *(r27 + 0x10);
    r19 = @selector(upgradeToFacebookAccountForSystem:);
    goto loc_100760fac;

loc_100760fac:
    if ([r0 respondsToSelector:r2] == 0x0) goto loc_100761000;

loc_100760fc0:
    var_60 = **___stack_chk_guard;
    r0 = *(int128_t *)(r27 + 0x10);
    if (**___stack_chk_guard == var_60) {
            r0 = objc_msgSend(r0, r19);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100760f88:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_100761000;

loc_100760fa0:
    r0 = *(r27 + 0x10);
    r19 = @selector(inviteFriendsForSystem:);
    goto loc_100760fac;
}

-(void)updatePromotionBadge {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self checkIfOffersShouldBeKilled];
    r0 = [r19 getNextShowableBadgeOfferId];
    if (r0 != 0x0) {
            r20 = r0;
            r8 = r19 + 0x28;
            if ([r0 isEqualToString:@""] == 0x0) {
                    if (([r20 isEqualToString:[*r8 lastObject]] & 0x1) == 0x0) {
                            [r19 addOfferIdToShownBadges:r20];
                            r20 = [r19 getBadgeForOffer:r20];
                            if ([*(r19 + 0x10) respondsToSelector:@selector(showBadge:forSystem:), r3] != 0x0) {
                                    [*(int128_t *)(r19 + 0x10) showBadge:r20 forSystem:*(int128_t *)(r19 + 0x8)];
                            }
                    }
            }
            else {
                    r0 = *r8;
                    if (r0 != 0x0 && [r0 count] != 0x0) {
                            [r19 resetShownBadges];
                            if ([*(r19 + 0x10) respondsToSelector:@selector(hideCurrentBadgeForSystem:)] != 0x0) {
                                    [*(int128_t *)(r19 + 0x10) hideCurrentBadgeForSystem:*(int128_t *)(r19 + 0x8)];
                            }
                    }
            }
    }
    else {
            r8 = r19 + 0x28;
            r0 = *r8;
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    [r19 resetShownBadges];
                    if ([*(r19 + 0x10) respondsToSelector:@selector(hideCurrentBadgeForSystem:)] != 0x0) {
                            [*(int128_t *)(r19 + 0x10) hideCurrentBadgeForSystem:*(int128_t *)(r19 + 0x8)];
                    }
            }
    }
    return;
}

-(void *)gameDelegate {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)localizationManager {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)shownBadgeForOfferIds {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)shownPopupForOfferIds {
    r0 = *(self + 0x30);
    return r0;
}

@end