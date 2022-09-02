@implementation LocalizationManagerDelegate

+(void *)localizationManagerDelegate {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [sub_1005cbc68() retain];
            [r19 updateCurrentLanguage];
            [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
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
    [[NSNotificationCenter defaultCenter] removeObserver:r19];
    [[&var_20 super] dealloc];
    return;
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
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 account];
    r0 = [r0 userId];
    r0 = sub_100012814(r0, 0x1, *(r19 + 0x10));
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
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_10004afec;

loc_10004afe4:
    r0 = *(r19 + 0x8);
    goto loc_10004b004;

loc_10004b004:
    r0 = [r0 objectAtIndex:r2];
    return r0;

loc_10004afec:
    r0 = *(r19 + 0x10);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_10004b01c;

loc_10004b000:
    r0 = *(r19 + 0x10);
    goto loc_10004b004;

loc_10004b01c:
    r0 = 0x0;
    return r0;
}

-(void *)getCurrentUserRegionCode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self updateCurrentLanguage];
    if ([*(r19 + 0x8) count] == 0x1) goto loc_10004b094;

loc_10004b064:
    r0 = *(r19 + 0x8);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_10004b080;

loc_10004b078:
    r0 = *(r19 + 0x8);
    goto loc_10004b0a8;

loc_10004b0a8:
    r0 = [r0 objectAtIndex:r2];
    return r0;

loc_10004b080:
    if ([*(r19 + 0x10) count] >= 0x2) goto loc_10004b0a4;

loc_10004b094:
    r0 = 0x0;
    return r0;

loc_10004b0a4:
    r0 = *(r19 + 0x10);
    goto loc_10004b0a8;
}

-(void *)getFallbackUserCountryCode {
    return @"en";
}

-(void *)getFallbackUserRegionCode {
    return 0x0;
}

-(void *)getBaseResourceData {
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
    r19 = [[MCConfigurationData sharedMCConfigurationData] tableWithId:@"Localization - Assets"];
    r20 = [NSMutableDictionary dictionary];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r21 = *var_110;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(r19);
                            }
                            r28 = [*(var_118 + r24 * 0x8) objectForKey:@"baseResource"];
                            if ([r20 objectForKey:r28] == 0x0) {
                                    [MCLocalizationResourceEntry mcLocalizationResourceEntryWithId:r2 withLocalizedResourceId:r3 withCountryCode:r4 andRegionCode:r5 isSpritesheetResource:r6 shouldSkipResourceCheck:r7];
                                    objc_msgSend(r20, r27);
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r22);
                    r0 = objc_msgSend(r19, var_128);
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
    r21 = sub_1005d8554([[MCConfigurationData sharedMCConfigurationData] tableWithId:@"Localization - Languages"], [NSArray class], 0x0);
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
                    r0 = @"en_text.plist";
            }
            else {
                    if (r20 != 0x0) {
                            [r20 isEqualToString:r2];
                    }
                    r0 = [NSString stringWithFormat:r2];
            }
    }
    else {
            r0 = @"en_text.plist";
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
    r20 = [[MCConfigurationData sharedMCConfigurationData] tableWithId:@"Localization - Region Codes"];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r20, r0, 0x0);
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10004bd84;

loc_10004bc90:
    r22 = r0;
    r25 = *var_110;
    goto loc_10004bcac;

loc_10004bcac:
    r19 = 0x0;
    goto loc_10004bcc0;

loc_10004bcc0:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    r26 = @selector(objectForKey:);
    r28 = *(var_118 + r19 * 0x8);
    r0 = objc_msgSend(r28, r26);
    r0 = sub_1005d85d8(r0, 0x0);
    if (r0 == 0x0) goto loc_10004bd58;

loc_10004bcfc:
    r21 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0 || [r21 isEqualToString:r2] == 0x0) goto loc_10004bd58;

loc_10004bd24:
    r0 = [r28 objectForKey:r2];
    r0 = sub_1005d85d8(r0, 0x0);
    if (r0 == 0x0) goto loc_10004bd58;

loc_10004bd44:
    r28 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_10004bd88;

loc_10004bd58:
    r19 = r19 + 0x1;
    if (r19 < r22) goto loc_10004bcc0;

loc_10004bd64:
    r0 = objc_msgSend(r20, var_130);
    r22 = r0;
    if (r0 != 0x0) goto loc_10004bcac;

loc_10004bd84:
    r28 = 0x0;
    goto loc_10004bd88;

loc_10004bd88:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r28;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isResourceValid:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (([arg2 skipResourceCheck] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [[CCFileUtils sharedFileUtils] fullPathForFilename:[r19 localizedResourceId]];
            if (r0 != 0x0) {
                    r0 = [r0 isEqualToString:r2];
                    r0 = r0 ^ 0x1;
            }
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
    if (r2 == 0x0) goto loc_10004b62c;

loc_10004b600:
    r20 = r3;
    r26 = r2;
    r22 = r0;
    if (([r26 isEqualToString:r2] & 0x1) == 0x0) goto loc_10004b66c;

loc_10004b62c:
    r25 = 0x0;
    goto loc_10004b630;

loc_10004b630:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10004b66c:
    if ([@"en" isEqualToString:r2] == 0x0 || r20 != 0x0 && [r20 isEqualToString:r2] == 0x0) goto loc_10004b6e4;

loc_10004b6a0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r22 getBaseResourceData];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10004b6e4:
    r19 = [[MCConfigurationData sharedMCConfigurationData] tableWithId:@"Localization - Assets"];
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
    goto loc_10004b630;
}

-(void)cleanUpResourceList:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x110;
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
                    var_F0 = q0;
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r21 = r0;
                            r22 = *var_F0;
                            do {
                                    r23 = 0x0;
                                    do {
                                            if (*var_F0 != r22) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            sub_1005d7f88(*(var_F8 + r23 * 0x8));
                                            r23 = r23 + 0x1;
                                    } while (r23 < r21);
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
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

-(void)valueMapWasMerged {
    r19 = [NSNotificationCenter defaultCenter];
    [[[Application sharedApplication] localizationManager] reloadNotification];
    [r19 postNotificationName:r2 object:r3];
    return;
}

@end