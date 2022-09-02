@implementation MCLocalizationManager

+(void *)getMCLocalizationManagerWithDelegate:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r0 = [MCLocalizationManager alloc];
            r0 = [r0 initWithDelegate:r2];
            r0 = [r0 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)initWithDelegate:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r0 = [[&var_30 super] init];
            r19 = r0;
            if (r0 != 0x0) {
                    *(r19 + 0x8) = [r20 retain];
                    [r19 setFallbackLanguage];
                    [r19 updateCurrentLanguage];
                    [r19 reloadLocalizationData];
                    *(r19 + 0x40) = [@"ForceReloadLocalizationData" retain];
                    [r19 registerForGameEvents];
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setReloadNotification:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    [r19 unregisterForGameEvents];
                    r0 = *(r19 + 0x40);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x40) = 0x0;
                    }
                    *(r19 + 0x40) = [r20 retain];
                    [r19 registerForGameEvents];
            }
    }
    return;
}

-(void)registerForGameEvents {
    [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
    return;
}

-(void)unregisterForGameEvents {
    [[NSNotificationCenter defaultCenter] removeObserver:r2 name:r3 object:r4];
    return;
}

-(void *)stripReturnText:(void *)arg2 {
    r0 = [arg2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n"];
    return r0;
}

-(void *)textForKey:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    if (arg2 != 0x0) {
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = *(r19 + 0x30);
                    r0 = [r0 objectForKey:r2];
                    if (r0 != 0x0) {
                            r0 = [r19 stripReturnText:[r0 localizedText]];
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r0 = r20;
            }
    }
    else {
            r0 = r20;
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self unregisterForGameEvents];
    [r19 cleanLocalizationData];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
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
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)resourceForKey:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (arg2 == 0x0) goto loc_1005d5d14;

loc_1005d5cc0:
    r20 = r0;
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_1005d5ce8;

loc_1005d5ce0:
    r19 = 0x0;
    goto loc_1005d5d14;

loc_1005d5d14:
    r0 = r19;
    return r0;

loc_1005d5ce8:
    r0 = *(r20 + 0x38);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 localizedResourceId];
    }
    else {
            r0 = r19;
    }
    return r0;
}

-(void)setFallbackLanguage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 getFallbackUserCountryCode];
    if (r0 != 0x0) {
            r22 = r0;
            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    *(r19 + 0x20) = [r22 retain];
                    r0 = *(r19 + 0x8);
                    r0 = [r0 getFallbackUserRegionCode];
                    if (r0 != 0x0) {
                            r22 = r0;
                            if ([r0 isEqualToString:r2] != 0x0) {
                                    r22 = [*(r19 + 0x8) getDefaultRegionCodeForCountryCode:*(r19 + 0x20)];
                            }
                    }
                    else {
                            r22 = [*(r19 + 0x8) getDefaultRegionCodeForCountryCode:*(r19 + 0x20)];
                    }
                    *(r19 + 0x28) = [r22 retain];
            }
    }
    return;
}

-(bool)isEqualToFallbackCountry:(void *)arg2 andFallbackRegion:(void *)arg3 {
    r0 = [self isCountryCode:*(int128_t *)(self + 0x20) andRegionCode:*(int128_t *)(self + 0x28) equalToCountryCode:arg2 andRegionCode:arg3];
    return r0;
}

-(void)setCurrentCountryCode:(void *)arg2 andRegionCode:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    *(r19 + 0x10) = [r22 retain];
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    *(r19 + 0x18) = [r20 retain];
    return;
}

-(void)updateCurrentLanguage {
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
    r20 = [*(self + 0x8) getCurrentUserCountryCode];
    r21 = [*(r19 + 0x8) getCurrentUserRegionCode];
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) goto loc_1005d5e4c;

loc_1005d5e70:
    if (r21 != 0x0) {
            if ([r21 isEqualToString:r2] != 0x0) {
                    r21 = [*(r19 + 0x8) getDefaultRegionCodeForCountryCode:r20];
            }
    }
    else {
            r21 = [*(r19 + 0x8) getDefaultRegionCodeForCountryCode:r20];
    }
    goto loc_1005d5ea4;

loc_1005d5ea4:
    if ([r19 isEqualToFallbackCountry:r20 andFallbackRegion:r21] == 0x0) goto loc_1005d5ee8;

loc_1005d5ec0:
    r0 = r19;
    goto loc_1005d5ed4;

loc_1005d5ed4:
    [r0 setCurrentCountryCode:r2 andRegionCode:r3];
    return;

.l1:
    return;

loc_1005d5ee8:
    if (([r19 isEqualToCurrentCountry:r20 andCurrentRegion:r21] & 0x1) == 0x0) goto loc_1005d5f18;
    goto .l1;

loc_1005d5f18:
    r0 = r19;
    goto loc_1005d5ed4;

loc_1005d5e4c:
    if (r21 == 0x0 || [r21 isEqualToString:r2] != 0x0) goto loc_1005d5ec0;

loc_1005d5e74:
    if ([r21 isEqualToString:r2] != 0x0) {
            r21 = [*(r19 + 0x8) getDefaultRegionCodeForCountryCode:r20];
    }
    goto loc_1005d5ea4;
}

-(bool)isEqualToCurrentCountry:(void *)arg2 andCurrentRegion:(void *)arg3 {
    r0 = [self isCountryCode:*(int128_t *)(self + 0x10) andRegionCode:*(int128_t *)(self + 0x18) equalToCountryCode:arg2 andRegionCode:arg3];
    return r0;
}

-(void)forceReloadLocalizationData {
    [self cleanLocalizationData];
    [self updateCurrentLanguage];
    [self reloadLocalizationData];
    return;
}

-(void)reloadLocalizationData {
    [self reloadTexts];
    [self reloadResources];
    return;
}

-(bool)isCountryCode:(void *)arg2 andRegionCode:(void *)arg3 equalToCountryCode:(void *)arg4 andRegionCode:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r21 = arg4;
    r20 = arg3;
    r22 = arg2;
    if (arg2 != 0x0 && [r22 isEqualToString:r2] == 0x0) {
            if (([r22 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [r22 isEqualToString:r2];
                    if (r0 != 0x0) {
                            if (r20 != 0x0 && [r20 isEqualToString:r2] == 0x0) {
                                    if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                                            r0 = 0x0;
                                    }
                                    else {
                                            r0 = [r20 isEqualToString:r2];
                                            if (r0 != 0x0) {
                                                    r0 = 0x1;
                                            }
                                    }
                            }
                            else {
                                    if (r19 != 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
                                            if (r20 != 0x0) {
                                                    if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                                                            r0 = 0x0;
                                                    }
                                                    else {
                                                            r0 = [r20 isEqualToString:r2];
                                                            if (r0 != 0x0) {
                                                                    r0 = 0x1;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r0 = 0x0;
                                            }
                                    }
                                    else {
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            if (r21 != 0x0 && ([r21 isEqualToString:r2] & 0x1) == 0x0) {
                    if (r22 != 0x0) {
                            if (([r22 isEqualToString:r2] & 0x1) == 0x0) {
                                    r0 = [r22 isEqualToString:r2];
                                    if (r0 != 0x0) {
                                            if (r20 != 0x0 && [r20 isEqualToString:r2] == 0x0) {
                                                    if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                                                            r0 = 0x0;
                                                    }
                                                    else {
                                                            r0 = [r20 isEqualToString:r2];
                                                            if (r0 != 0x0) {
                                                                    r0 = 0x1;
                                                            }
                                                    }
                                            }
                                            else {
                                                    if (r19 != 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
                                                            if (r20 != 0x0) {
                                                                    if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                                                                            r0 = 0x0;
                                                                    }
                                                                    else {
                                                                            r0 = [r20 isEqualToString:r2];
                                                                            if (r0 != 0x0) {
                                                                                    r0 = 0x1;
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    r0 = 0x0;
                                                            }
                                                    }
                                                    else {
                                                            r0 = 0x1;
                                                    }
                                            }
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    if (r20 != 0x0 && [r20 isEqualToString:r2] == 0x0) {
                            if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                                    r0 = 0x0;
                            }
                            else {
                                    r0 = [r20 isEqualToString:r2];
                                    if (r0 != 0x0) {
                                            r0 = 0x1;
                                    }
                            }
                    }
                    else {
                            if (r19 != 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
                                    if (r20 != 0x0) {
                                            if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                                                    r0 = 0x0;
                                            }
                                            else {
                                                    r0 = [r20 isEqualToString:r2];
                                                    if (r0 != 0x0) {
                                                            r0 = 0x1;
                                                    }
                                            }
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            else {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(void)reloadTexts {
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
    r21 = [NSMutableDictionary dictionary];
    r20 = [r19 getLocalizedTextsForCountry:*(int128_t *)(r19 + 0x10) andRegion:*(int128_t *)(r19 + 0x18) alreadyRequested:r21];
    r21 = [r19 getLocalizedTextsForCountry:*(int128_t *)(r19 + 0x20) andRegion:*(int128_t *)(r19 + 0x28) alreadyRequested:r21];
    if (r20 == 0x0 || [r20 count] == 0x0) goto loc_1005d620c;

loc_1005d6228:
    if ([r20 count] != 0x0) {
            if (r21 != 0x0) {
                    if ([r21 count] != 0x0) {
                            r0 = [r19 mergeLocalizationList:r21 intoLocalizationList:r20];
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r0 = r20;
            }
    }
    else {
            r0 = r21;
    }
    goto loc_1005d628c;

loc_1005d628c:
    *(r19 + 0x30) = [r0 retain];
    return;

.l1:
    return;

loc_1005d620c:
    if (r21 == 0x0 || [r21 count] == 0x0) goto .l1;

loc_1005d6224:
    if (r20 != 0x0) {
            if ([r20 count] != 0x0) {
                    if (r21 != 0x0) {
                            if ([r21 count] != 0x0) {
                                    r0 = [r19 mergeLocalizationList:r21 intoLocalizationList:r20];
                            }
                            else {
                                    r0 = r20;
                            }
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r0 = r21;
            }
    }
    else {
            r0 = r21;
    }
    goto loc_1005d628c;
}

-(void)cleanLocalizationData {
    [self removeLocalizedTexts];
    [self removeLocalizedResources];
    return;
}

-(void)removeLocalizedTexts {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    return;
}

-(void)reloadResources {
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
    r21 = [NSMutableDictionary dictionary];
    r20 = [r19 getLocalizedResourcesForCountry:*(int128_t *)(r19 + 0x10) andRegion:*(int128_t *)(r19 + 0x18) alreadyRequested:r21];
    r21 = [r19 getLocalizedResourcesForCountry:*(int128_t *)(r19 + 0x20) andRegion:*(int128_t *)(r19 + 0x28) alreadyRequested:r21];
    if (r20 == 0x0 || [r20 count] == 0x0) goto loc_1005d632c;

loc_1005d6348:
    if ([r20 count] != 0x0) {
            if (r21 != 0x0) {
                    if ([r21 count] != 0x0) {
                            r0 = [r19 mergeLocalizationList:r21 intoLocalizationList:r20];
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r0 = r20;
            }
    }
    else {
            r0 = r21;
    }
    goto loc_1005d63ac;

loc_1005d63ac:
    *(r19 + 0x38) = [r0 retain];
    return;

.l1:
    return;

loc_1005d632c:
    if (r21 == 0x0 || [r21 count] == 0x0) goto .l1;

loc_1005d6344:
    if (r20 != 0x0) {
            if ([r20 count] != 0x0) {
                    if (r21 != 0x0) {
                            if ([r21 count] != 0x0) {
                                    r0 = [r19 mergeLocalizationList:r21 intoLocalizationList:r20];
                            }
                            else {
                                    r0 = r20;
                            }
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r0 = r21;
            }
    }
    else {
            r0 = r21;
    }
    goto loc_1005d63ac;
}

-(void)removeLocalizedResources {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x38);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            [*(r19 + 0x8) cleanUpResourceList:[r19 getResourceListToRemoveFromResourceLocalizations:[*(r19 + 0x38) allValues]]];
            r0 = *(r19 + 0x38);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x38) = 0x0;
            }
    }
    return;
}

-(void *)description {
    [*(self + 0x30) count];
    r0 = *(self + 0x38);
    [r0 count];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)processResourceList:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if ([r2 count] != 0x0) {
                    r21 = [NSMutableDictionary dictionary];
                    [r19 enumerateKeysAndObjectsUsingBlock:&var_50];
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

-(void *)getResourceListToRemoveFromResourceLocalizations:(void *)arg2 {
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
            r0 = [r2 count];
            if (r0 != 0x0) {
                    r20 = @selector(count);
                    r20 = [NSMutableSet setWithCapacity:objc_msgSend(r19, r20)];
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r1;
                    r0 = objc_msgSend(r19, r1);
                    if (r0 != 0x0) {
                            r22 = r0;
                            r21 = *var_110;
                            do {
                                    r27 = 0x0;
                                    do {
                                            if (*var_110 != r21) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r0 = *(var_118 + r27 * 0x8);
                                            r0 = [r0 localizedResourceId];
                                            if (r0 != 0x0) {
                                                    r28 = r0;
                                                    if (([r0 isEqualToString:@""] & 0x1) == 0x0 && ([r20 containsObject:r28] & 0x1) == 0x0) {
                                                            [r20 addObject:r2];
                                                    }
                                            }
                                            r27 = r27 + 0x1;
                                    } while (r27 < r22);
                                    r0 = objc_msgSend(r19, var_130);
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
                    r0 = [r20 allObjects];
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

-(void *)reloadNotification {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)mergeLocalizationList:(void *)arg2 intoLocalizationList:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    if (arg2 != 0x0 && [r20 count] != 0x0) {
            if ([r20 count] != 0x0) {
                    if (r19 != 0x0 && [r19 count] != 0x0) {
                            r0 = [NSMutableDictionary dictionaryWithDictionary:r20];
                            [r0 addEntriesFromDictionary:r19];
                            r0 = [NSDictionary dictionaryWithDictionary:r0];
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r0 = r19;
            }
    }
    else {
            if (r19 != 0x0) {
                    r0 = [r19 count];
                    r8 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r19;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    if (r20 != 0x0 && r8 != 0x0) {
                            if ([r20 count] != 0x0) {
                                    if (r19 != 0x0 && [r19 count] != 0x0) {
                                            r0 = [NSMutableDictionary dictionaryWithDictionary:r20];
                                            [r0 addEntriesFromDictionary:r19];
                                            r0 = [NSDictionary dictionaryWithDictionary:r0];
                                    }
                                    else {
                                            r0 = r20;
                                    }
                            }
                            else {
                                    r0 = r19;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void *)gameDelegate {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setGameDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)getLocalizedResourcesForCountry:(void *)arg2 andRegion:(void *)arg3 alreadyRequested:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r19 = r4;
            r23 = r3;
            r21 = r2;
            r25 = r0;
            if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                    r22 = 0x0;
            }
            else {
                    var_168 = r19;
                    r0 = [r19 objectForKey:r2];
                    r0 = sub_1005d86c0(r0, 0x0);
                    var_128 = r0;
                    if (r0 != 0x0) {
                            if (r23 == 0x0) {
                                    r19 = @"(null)";
                            }
                            else {
                                    r0 = [r23 isEqualToString:r2];
                                    r19 = r23;
                                    if (r0 != 0x0) {
                                            r19 = @"(null)";
                                    }
                            }
                    }
                    else {
                            var_128 = [NSMutableDictionary dictionary];
                            if (r23 != 0x0) {
                                    r0 = [r23 isEqualToString:r2];
                                    r19 = r23;
                                    if (r0 != 0x0) {
                                            r19 = @"(null)";
                                    }
                            }
                            else {
                                    r19 = @"(null)";
                            }
                    }
                    r27 = @selector(objectForKey:);
                    if (objc_msgSend(var_128, r27) != 0x0) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = [*(r25 + 0x8) getLocalizationResourceDataForCountryCode:r21 andRegionCode:r23];
                            [var_128 setObject:r2 forKey:r3];
                    }
                    r22 = [r25 processResourceList:r20];
                    var_150 = r25;
                    var_148 = r21;
                    r0 = *(r25 + 0x8);
                    r0 = [r0 getAllRegionsForCountryCode:r21];
                    r28 = r0;
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_160 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r20 = r0;
                            r25 = *var_110;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r28);
                                            }
                                            r24 = @selector(isEqualToString:);
                                            r21 = *(var_118 + r19 * 0x8);
                                            if ((objc_msgSend(r21, r24) & 0x1) == 0x0 && objc_msgSend(var_128, r27) == 0x0) {
                                                    [*(var_150 + 0x8) getLocalizationResourceDataForCountryCode:var_148 andRegionCode:r21];
                                                    r2 = [var_150 processResourceList:r2];
                                                    r27 = r27;
                                                    r22 = [var_150 mergeLocalizationList:r2 intoLocalizationList:r22];
                                                    [var_128 setObject:r2 forKey:r3];
                                            }
                                            r19 = r19 + 0x1;
                                    } while (r19 < r20);
                                    r0 = objc_msgSend(r28, var_160);
                                    r20 = r0;
                            } while (r0 != 0x0);
                    }
                    if (r23 != 0x0) {
                            r0 = [r23 isEqualToString:r2];
                            r19 = var_148;
                            if ((r0 & 0x1) == 0x0 && objc_msgSend(var_128, r27) == 0x0) {
                                    [*(var_150 + 0x8) getLocalizationResourceDataForCountryCode:r19 andRegionCode:0x0];
                                    r22 = [var_150 mergeLocalizationList:[var_150 processResourceList:r2] intoLocalizationList:r22];
                                    [var_128 setObject:r2 forKey:r3];
                            }
                    }
                    else {
                            r19 = var_148;
                    }
                    [var_168 setObject:r2 forKey:r3];
            }
    }
    else {
            r22 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getLocalizedTextsForCountry:(void *)arg2 andRegion:(void *)arg3 alreadyRequested:(void *)arg4 {
    r4 = arg4;
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
    if (r2 != 0x0) {
            r19 = r4;
            r23 = r3;
            r20 = r2;
            r21 = r0;
            if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                    r23 = 0x0;
            }
            else {
                    var_160 = r19;
                    r0 = [r19 objectForKey:r2];
                    r0 = sub_1005d86c0(r0, 0x0);
                    r22 = r0;
                    if (r0 != 0x0) {
                            if (r23 == 0x0) {
                                    r19 = @"(null)";
                            }
                            else {
                                    r0 = [r23 isEqualToString:r2];
                                    r19 = r23;
                                    if (r0 != 0x0) {
                                            r19 = @"(null)";
                                    }
                            }
                    }
                    else {
                            r22 = [NSMutableDictionary dictionary];
                            if (r23 != 0x0) {
                                    r0 = [r23 isEqualToString:r2];
                                    r19 = r23;
                                    if (r0 != 0x0) {
                                            r19 = @"(null)";
                                    }
                            }
                            else {
                                    r19 = @"(null)";
                            }
                    }
                    r28 = @selector(objectForKey:);
                    if (objc_msgSend(r22, r28) != 0x0) {
                            var_128 = 0x0;
                    }
                    else {
                            var_128 = [*(r21 + 0x8) getLocalizationTextDataForCountryCode:r20 andRegionCode:r23];
                            [r22 setObject:r2 forKey:r3];
                    }
                    var_150 = r21;
                    var_148 = r20;
                    r0 = *(r21 + 0x8);
                    r0 = [r0 getAllRegionsForCountryCode:r20];
                    r27 = r0;
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_158 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r20 = r0;
                            r25 = *var_110;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r27);
                                            }
                                            r24 = @selector(isEqualToString:);
                                            r26 = *(var_118 + r19 * 0x8);
                                            if ((objc_msgSend(r26, r24) & 0x1) == 0x0 && objc_msgSend(r22, r28) == 0x0) {
                                                    r2 = [*(var_150 + 0x8) getLocalizationTextDataForCountryCode:var_148 andRegionCode:r26];
                                                    r28 = r28;
                                                    var_128 = [var_150 mergeLocalizationList:r2 intoLocalizationList:var_128];
                                                    [r22 setObject:r2 forKey:r3];
                                            }
                                            r19 = r19 + 0x1;
                                    } while (r19 < r20);
                                    r0 = objc_msgSend(r27, var_158);
                                    r20 = r0;
                            } while (r0 != 0x0);
                    }
                    if (r23 != 0x0) {
                            r0 = [r23 isEqualToString:r2];
                            r19 = var_148;
                            if ((r0 & 0x1) == 0x0) {
                                    r0 = objc_msgSend(r22, r28);
                                    r23 = var_128;
                                    if (r0 == 0x0) {
                                            r23 = [var_150 mergeLocalizationList:[*(var_150 + 0x8) getLocalizationTextDataForCountryCode:r19 andRegionCode:0x0] intoLocalizationList:r23];
                                            [r22 setObject:r2 forKey:r3];
                                    }
                            }
                            else {
                                    r23 = var_128;
                            }
                    }
                    else {
                            r19 = var_148;
                            r23 = var_128;
                    }
                    [var_160 setObject:r2 forKey:r3];
            }
    }
    else {
            r23 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end