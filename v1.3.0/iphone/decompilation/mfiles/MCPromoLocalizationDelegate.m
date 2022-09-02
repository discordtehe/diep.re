@implementation MCPromoLocalizationDelegate

-(void *)initWithPromoClientDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [sub_1005cbc68() retain];
            *(r19 + 0x18) = [r20 retain];
            [r19 updateCurrentLanguage];
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
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)getCurrentUserCountryCode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self updateCurrentLanguage];
    r0 = *(r19 + 0x8);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_10075ea68;

loc_10075ea60:
    r0 = *(r19 + 0x8);
    goto loc_10075ea94;

loc_10075ea94:
    r0 = [r0 objectAtIndex:r2];
    return r0;

loc_10075ea68:
    r0 = *(r19 + 0x10);
    if ([*(r19 + 0x10) count] == 0x0 || r0 == 0x0 || [r0 count] == 0x0) goto loc_10075eaac;

loc_10075ea90:
    r0 = *(r19 + 0x10);
    goto loc_10075ea94;

loc_10075eaac:
    r0 = 0x0;
    return r0;
}

-(void *)getFallbackUserCountryCode {
    return @"en";
}

-(void)updateCurrentLanguage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x18) respondsToSelector:r2] != 0x0) {
            r0 = *(r19 + 0x18);
            r0 = [r0 getUserLanguage];
            if (r0 != 0x0) {
                    r20 = r0;
                    if ([r0 count] != 0x0) {
                            r0 = *(r19 + 0x10);
                            if (r0 != 0x0 && [r0 count] != 0x0) {
                                    r8 = [*(r19 + 0x10) isEqualToArray:r20];
                                    r19 = r19 + 0x8;
                                    r0 = *r19;
                                    if (r8 != 0x0) {
                                            if (r0 != 0x0) {
                                                    [r0 release];
                                                    *r19 = 0x0;
                                            }
                                    }
                                    else {
                                            if (([*r19 isEqualToArray:r20] & 0x1) == 0x0 || r0 == 0x0 || [r0 count] == 0x0) {
                                                    r0 = *r19;
                                                    if (r0 != 0x0) {
                                                            [r0 release];
                                                            *r19 = 0x0;
                                                    }
                                                    *r19 = [r20 retain];
                                            }
                                    }
                            }
                            else {
                                    r19 = r19 + 0x8;
                                    r0 = *r19;
                                    if (([*r19 isEqualToArray:r20] & 0x1) == 0x0 || r0 == 0x0 || [r0 count] == 0x0) {
                                            r0 = *r19;
                                            if (r0 != 0x0) {
                                                    [r0 release];
                                                    *r19 = 0x0;
                                            }
                                            *r19 = [r20 retain];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void *)getCurrentUserRegionCode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self updateCurrentLanguage];
    if ([*(r19 + 0x8) count] != 0x1) goto loc_10075eb04;

loc_10075eaf4:
    r0 = 0x0;
    return r0;

loc_10075eb04:
    r0 = *(r19 + 0x8);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_10075eb20;

loc_10075eb18:
    r0 = *(r19 + 0x8);
    goto loc_10075eb4c;

loc_10075eb4c:
    r0 = [r0 objectAtIndex:r2];
    return r0;

loc_10075eb20:
    r0 = *(r19 + 0x10);
    if ([*(r19 + 0x10) count] < 0x2 || r0 == 0x0 || [r0 count] == 0x0) goto loc_10075eaf4;

loc_10075eb48:
    r0 = *(r19 + 0x10);
    goto loc_10075eb4c;
}

-(void *)getFallbackUserRegionCode {
    return 0x0;
}

-(void *)getBaseResourceData {
    r31 = r31 - 0x150;
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
    r19 = [[MCPromoConfigurationManager sharedMCPromoConfigurationManager] promoTableWithId:@"localizationResourcesList"];
    r20 = [NSMutableDictionary dictionary];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r19;
    var_138 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r19 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(var_128);
                            }
                            r25 = *(var_118 + r28 * 0x8);
                            r24 = [r25 objectForKey:@"baseResource"];
                            if ([r20 objectForKey:r24] == 0x0) {
                                    [MCLocalizationResourceEntry mcLocalizationResourceEntryWithId:r24 withLocalizedResourceId:r24 withCountryCode:@"en" andRegionCode:0x0 isSpritesheetResource:sub_1005d84b0([r25 objectForKey:@"isSpritesheetResource"], 0x0) shouldSkipResourceCheck:sub_1005d84b0([r25 objectForKey:@"skipResourceCheck"], 0x0)];
                                    [r20 setValue:r2 forKey:r3];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = objc_msgSend(var_128, var_138);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getLocalizationTextDataForCountryCode:(void *)arg2 andRegionCode:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    if (r2 != 0x0) {
            r20 = r3;
            r19 = r2;
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = @"en_promo_text.plist";
            }
            else {
                    if (r20 != 0x0) {
                            [r20 isEqualToString:r2];
                    }
                    r0 = [NSString stringWithFormat:r2];
            }
    }
    else {
            r0 = @"en_promo_text.plist";
    }
    r0 = sub_1005d8bf8(r0, 0x3);
    if (r0 != 0x0) {
            r20 = r0;
            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                    var_130 = 0x0;
            }
            else {
                    r0 = [NSDictionary dictionaryWithContentsOfFile:r20];
                    r22 = r0;
                    if (r0 != 0x0 && [r22 count] != 0x0) {
                            r2 = [r22 count];
                    }
                    else {
                            r2 = 0x1;
                    }
                    var_130 = [NSMutableDictionary dictionaryWithCapacity:r2];
                    r0 = [r22 objectForKey:@"texts"];
                    r0 = sub_1005d8790(r0, 0x10004bfd0, 0x0);
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r0;
                    var_148 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r24 = r0;
                            r20 = *var_110;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r20) {
                                                    objc_enumerationMutation(var_128);
                                            }
                                            r23 = *(var_118 + r22 * 0x8);
                                            r28 = sub_1005d85d8([r23 objectForKey:@"k"], 0x0);
                                            r0 = [r23 objectForKey:@"v"];
                                            r0 = sub_1005d85d8(r0, 0x0);
                                            if (r28 != 0x0) {
                                                    r23 = r0;
                                                    r0 = [r28 isEqualToString:r2];
                                                    if (([r23 isEqualToString:r2] & 0x1) == 0x0 && r23 != 0x0 && (r0 & 0x1) == 0x0) {
                                                            if ([var_130 objectForKey:r28] == 0x0) {
                                                                    [MCLocalizationTextEntry mcLocalizationTextEntryWithId:r28 withLocalizedText:r23];
                                                                    [var_130 setObject:r2 forKey:r3];
                                                            }
                                                    }
                                            }
                                            r22 = r22 + 0x1;
                                    } while (r22 < r24);
                                    r0 = objc_msgSend(var_128, var_148);
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    else {
            var_130 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_130;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getAllRegionsForCountryCode:(void *)arg2 {
    r31 = r31 - 0x150;
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
    var_128 = arg2;
    r21 = sub_1005d8554([[MCPromoConfigurationManager sharedMCPromoConfigurationManager] promoTableWithId:@"languageList"], [NSArray class], 0x0);
    var_138 = [NSMutableArray array];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    r0 = objc_msgSend(r21, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r22 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r22) {
                                    objc_enumerationMutation(r21);
                            }
                            r20 = *(var_118 + r19 * 0x8);
                            r0 = [r20 objectForKey:@"countryCode"];
                            r0 = sub_1005d85d8(r0, 0x0);
                            if (r0 != 0x0) {
                                    r26 = r0;
                                    if (([r0 isEqualToString:@""] & 0x1) == 0x0 && [r26 isEqualToString:var_128] != 0x0) {
                                            r0 = [r20 objectForKey:@"regionCode"];
                                            r0 = sub_1005d85d8(r0, 0x0);
                                            if (r0 != 0x0) {
                                                    r20 = r0;
                                                    if (([r0 isEqualToString:@""] & 0x1) == 0x0) {
                                                            [var_138 addObject:r2];
                                                    }
                                            }
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = objc_msgSend(r21, var_140);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r19 = var_138;
    if (r19 != 0x0) {
            r0 = [r19 count];
            if (r0 != 0x0) {
                    r0 = [NSArray arrayWithArray:r19];
            }
    }
    else {
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getDefaultRegionCodeForCountryCode:(void *)arg2 {
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
    var_128 = arg2;
    r20 = [[MCPromoConfigurationManager sharedMCPromoConfigurationManager] promoTableWithId:@"localizationList"];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r20, r0, 0x0);
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10075f870;

loc_10075f77c:
    r22 = r0;
    r25 = *var_110;
    goto loc_10075f798;

loc_10075f798:
    r19 = 0x0;
    goto loc_10075f7ac;

loc_10075f7ac:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    r26 = @selector(objectForKey:);
    r28 = *(var_118 + r19 * 0x8);
    r0 = objc_msgSend(r28, r26);
    r0 = sub_1005d85d8(r0, 0x0);
    if (r0 == 0x0) goto loc_10075f844;

loc_10075f7e8:
    r21 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0 || [r21 isEqualToString:r2] == 0x0) goto loc_10075f844;

loc_10075f810:
    r0 = [r28 objectForKey:r2];
    r0 = sub_1005d85d8(r0, 0x0);
    if (r0 == 0x0) goto loc_10075f844;

loc_10075f830:
    r28 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_10075f874;

loc_10075f844:
    r19 = r19 + 0x1;
    if (r19 < r22) goto loc_10075f7ac;

loc_10075f850:
    r0 = objc_msgSend(r20, var_130);
    r22 = r0;
    if (r0 != 0x0) goto loc_10075f798;

loc_10075f870:
    r28 = 0x0;
    goto loc_10075f874;

loc_10075f874:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r28;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getLocalizationResourceDataForCountryCode:(void *)arg2 andRegionCode:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_10075f118;

loc_10075f0ec:
    r20 = r3;
    r26 = r2;
    r22 = r0;
    if (([r26 isEqualToString:r2] & 0x1) == 0x0) goto loc_10075f158;

loc_10075f118:
    r25 = 0x0;
    goto loc_10075f11c;

loc_10075f11c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10075f158:
    if ([@"en" isEqualToString:r2] == 0x0 || r20 != 0x0 && [r20 isEqualToString:r2] == 0x0) goto loc_10075f1d0;

loc_10075f18c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r22 getBaseResourceData];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10075f1d0:
    r19 = [[MCPromoConfigurationManager sharedMCPromoConfigurationManager] promoTableWithId:@"localizationResourcesList"];
    r25 = [NSMutableDictionary dictionary];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r19;
    var_160 = r1;
    r0 = objc_msgSend(r19, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            var_130 = *var_110;
            var_158 = r25;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != var_130) {
                                    objc_enumerationMutation(var_138);
                            }
                            r21 = @selector(isEqualToString:);
                            r22 = *(var_118 + r19 * 0x8);
                            r27 = sub_1005d85d8([r22 objectForKey:@"countryCode"], 0x0);
                            if (objc_msgSend(r26, r21) != 0x0) {
                                    r24 = sub_1005d85d8([r22 objectForKey:@"regionCode"], 0x0);
                                    if (r20 != 0x0) {
                                            if (([r20 isEqualToString:r2] & 0x1) != 0x0 || [r20 isEqualToString:r2] != 0x0) {
                                                    [r20 isEqualToString:r2];
                                                    if (r24 != 0x0) {
                                                            asm { ccmp       w0, #0x0, #0x4, ne };
                                                    }
                                                    if (!CPU_FLAGS & NE) {
                                                            r23 = [r22 objectForKey:@"baseResource"];
                                                            if ([r25 objectForKey:r23] == 0x0) {
                                                                    var_140 = sub_1005d85d8([r22 objectForKey:@"id"], 0x0);
                                                                    r0 = [r22 objectForKey:@"skipResourceCheck"];
                                                                    r0 = sub_1005d84b0(r0, 0x0);
                                                                    r6 = sub_1005d84b0([r22 objectForKey:@"isSpritesheetResource"], 0x0);
                                                                    r20 = r20;
                                                                    r26 = r26;
                                                                    r25 = var_158;
                                                                    [MCLocalizationResourceEntry mcLocalizationResourceEntryWithId:r23 withLocalizedResourceId:var_140 withCountryCode:r27 andRegionCode:r24 isSpritesheetResource:r6 shouldSkipResourceCheck:r0];
                                                                    [r25 setValue:r2 forKey:r3];
                                                            }
                                                    }
                                                    else {
                                                            if ([r24 isEqualToString:r2] != 0x0) {
                                                                    r23 = [r22 objectForKey:@"baseResource"];
                                                                    if ([r25 objectForKey:r23] == 0x0) {
                                                                            var_140 = sub_1005d85d8([r22 objectForKey:@"id"], 0x0);
                                                                            r0 = [r22 objectForKey:@"skipResourceCheck"];
                                                                            r0 = sub_1005d84b0(r0, 0x0);
                                                                            r6 = sub_1005d84b0([r22 objectForKey:@"isSpritesheetResource"], 0x0);
                                                                            r20 = r20;
                                                                            r26 = r26;
                                                                            r25 = var_158;
                                                                            [MCLocalizationResourceEntry mcLocalizationResourceEntryWithId:r23 withLocalizedResourceId:var_140 withCountryCode:r27 andRegionCode:r24 isSpritesheetResource:r6 shouldSkipResourceCheck:r0];
                                                                            [r25 setValue:r2 forKey:r3];
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            if (r24 != 0x0) {
                                                    if ([r24 isEqualToString:r2] != 0x0) {
                                                            r23 = [r22 objectForKey:@"baseResource"];
                                                            if ([r25 objectForKey:r23] == 0x0) {
                                                                    var_140 = sub_1005d85d8([r22 objectForKey:@"id"], 0x0);
                                                                    r0 = [r22 objectForKey:@"skipResourceCheck"];
                                                                    r0 = sub_1005d84b0(r0, 0x0);
                                                                    r6 = sub_1005d84b0([r22 objectForKey:@"isSpritesheetResource"], 0x0);
                                                                    r20 = r20;
                                                                    r26 = r26;
                                                                    r25 = var_158;
                                                                    [MCLocalizationResourceEntry mcLocalizationResourceEntryWithId:r23 withLocalizedResourceId:var_140 withCountryCode:r27 andRegionCode:r24 isSpritesheetResource:r6 shouldSkipResourceCheck:r0];
                                                                    [r25 setValue:r2 forKey:r3];
                                                            }
                                                    }
                                            }
                                            else {
                                                    r23 = [r22 objectForKey:@"baseResource"];
                                                    if ([r25 objectForKey:r23] == 0x0) {
                                                            var_140 = sub_1005d85d8([r22 objectForKey:@"id"], 0x0);
                                                            r0 = [r22 objectForKey:@"skipResourceCheck"];
                                                            r0 = sub_1005d84b0(r0, 0x0);
                                                            r6 = sub_1005d84b0([r22 objectForKey:@"isSpritesheetResource"], 0x0);
                                                            r20 = r20;
                                                            r26 = r26;
                                                            r25 = var_158;
                                                            [MCLocalizationResourceEntry mcLocalizationResourceEntryWithId:r23 withLocalizedResourceId:var_140 withCountryCode:r27 andRegionCode:r24 isSpritesheetResource:r6 shouldSkipResourceCheck:r0];
                                                            [r25 setValue:r2 forKey:r3];
                                                    }
                                            }
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < var_128);
                    r0 = objc_msgSend(var_138, var_160);
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    goto loc_10075f11c;
}

-(void)cleanUpResourceList:(void *)arg2 {
    r2 = arg2;
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
    if (r2 != 0x0) {
            r19 = r2;
            if ([r2 count] != 0x0) {
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r1;
                    r0 = objc_msgSend(r19, r1);
                    if (r0 != 0x0) {
                            r21 = r0;
                            r28 = *var_110;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r27 = *(var_118 + r20 * 0x8);
                                            sub_1005d7f88(r27);
                                            if ([[r27 pathExtension] isEqualToString:@"plist"] != 0x0) {
                                                    [[CCSpriteFrameCache sharedSpriteFrameCache] removeSpriteFramesFromFile:r2];
                                            }
                                            r20 = r20 + 0x1;
                                    } while (r20 < r21);
                                    r0 = objc_msgSend(r19, var_128);
                                    r21 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isResourceValid:(void *)arg2 {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (([arg2 skipResourceCheck] & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                    r0 = [r19 localizedResourceId];
                    if (r0 != 0x0) {
                            r1 = [r0 UTF8String];
                    }
                    else {
                            r1 = "";
                    }
                    sub_10075fa50(r29 - 0x28, r1);
                    r0 = sub_10042cbe8(r29 - 0x28, &var_48, &var_60);
                    r19 = r0;
                    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_60);
                    }
                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                            operator delete(0x0);
                    }
                    if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_28);
                    }
            }
            else {
                    r0 = [[CCFileUtils sharedFileUtils] fullPathForFilename:[r19 localizedResourceId]];
                    if (r0 != 0x0) {
                            r19 = [r0 isEqualToString:r2] ^ 0x1;
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    r0 = r19;
    return r0;
}

@end