@implementation MenuSettingsLocView

-(void)setupLayout {
    self->_flagSprite = 0x0;
    self->_selNode = 0x0;
    [self setCurrentCountry];
    [self createTable];
    [self addNodesFromConfig];
    return;
}

-(void)scrollCallback {
    r20 = self->_scrollbar;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [*(self + r21) currentScrollProgress];
    [*(self + r21) currentScrollHandleRecommendedSize];
    [r20 scrollCallback:r2 andUpdateLength:r3];
    return;
}

-(void)callbackNodeSelected:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_selNode));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 setSelected:r2];
    }
    *(r20 + r21) = r19;
    return;
}

-(void)createTable {
    sub_1005cb618();
    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_tableArea))) contentSize];
    asm { fcvt       s0, d1 };
    [*(r19 + r26) position];
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    objc_msgSend(*(r19 + r26), r21);
    objc_msgSend(*(r19 + r26), r20);
    asm { fdiv       s0, s8, s12 };
    asm { fcvt       d13, s0 };
    r0 = objc_alloc();
    r0 = [r0 init:0x1 numVisibleItems:r3 cellSize:r4 direction:r5 itemOffset:r6 springOffset:r7];
    r0 = [r0 autorelease];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    *(r19 + r28) = r0;
    [[r0 viewChangedCallback] setTarget:r19];
    [[*(r19 + r28) viewChangedCallback] setSelector:@selector(scrollCallback)];
    r24 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_outerFrame)));
    r25 = *(r19 + r28);
    [*(r19 + r26) zOrder] + 0x1;
    [r24 addChild:r2 z:r3];
    objc_msgSend(*(r19 + r27), r20);
    objc_msgSend(*(r19 + r26), r20);
    objc_msgSend(*(r19 + r26), r21);
    objc_msgSend(*(r19 + r26), r20);
    asm { fcvt       d1, s1 };
    objc_msgSend(*(r19 + r26), r20);
    sub_1005cb618();
    asm { fcvt       d3, s0 };
    [r24 setClipRect:r2];
    [*(r19 + r28) currentScrollHandleRecommendedSize];
    objc_msgSend(*(r19 + r26), r21);
    objc_msgSend(*(r19 + r26), r20);
    objc_msgSend(*(r19 + r26), r21);
    r0 = sub_100088a10();
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_scrollbar));
    *(r19 + r21) = r0;
    r20 = [*(r19 + r26) parent];
    objc_msgSend(*(r19 + r28), r22) + 0x1;
    objc_msgSend(r20, r23);
    return;
}

-(void *)addNode:(void *)arg2 flag:(void *)arg3 code:(void *)arg4 region:(void *)arg5 {
    r0 = objc_alloc();
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    r0 = [r0 initWithTable:*(self + r25)];
    r0 = [r0 autorelease];
    [r0 setCountryVisuals:arg2 flag:arg3];
    [r0 setCountryDetails:arg4 region:arg5];
    [r0 setSelectionCallbackDetails:@selector(callbackNodeSelected:) target:self];
    [*(self + r25) addCellItem:r0];
    [*(self + r25) refresh];
    r0 = r24;
    return r0;
}

+(float)numVisibleItems {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = sub_1005cb540();
    if (s0 < *(int32_t *)0x100b9af20) {
            asm { fcsel      s0, s1, s0, mi };
    }
    return r0;
}

+(struct CGSize)cellSize {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [[CCDirector sharedDirector] winSize];
    r0 = sub_1005cb540();
    if (s0 < *(int32_t *)0x100b9af20) {
            asm { fcsel      s1, s1, s0, mi };
    }
    asm { fcvt       d4, s4 };
    asm { fcvt       d1, s1 };
    asm { fdiv       d1, d2, d1 };
    return r0;
}

-(void *)getSelectedNode {
    r0 = self->_selNode;
    return r0;
}

-(void)addNodesFromConfig {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    var_1E8 = self;
    r0 = sub_1005cbc68();
    if (r0 != 0x0) {
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r22 = @selector(count);
                    r23 = [r20 objectAtIndex:r2];
                    r0 = objc_msgSend(r20, r22);
                    var_1F0 = 0x0;
                    if (r0 >= 0x2) {
                            var_1F0 = [r20 objectAtIndex:r2];
                    }
                    if (r23 == 0x0) {
                            r0 = @class(Application);
                            r20 = @selector(sharedApplication);
                            r0 = objc_msgSend(r0, r20);
                            r21 = @selector(localizationManager);
                            r23 = [[objc_msgSend(r0, r21) gameDelegate] getFallbackUserCountryCode];
                            var_1F0 = [[objc_msgSend(objc_msgSend(@class(Application), r20), r21) gameDelegate] getFallbackUserRegionCode];
                    }
            }
            else {
                    r0 = @class(Application);
                    r20 = @selector(sharedApplication);
                    r0 = objc_msgSend(r0, r20);
                    r21 = @selector(localizationManager);
                    r23 = [[objc_msgSend(r0, r21) gameDelegate] getFallbackUserCountryCode];
                    var_1F0 = [[objc_msgSend(objc_msgSend(@class(Application), r20), r21) gameDelegate] getFallbackUserRegionCode];
            }
    }
    else {
            r0 = @class(Application);
            r20 = @selector(sharedApplication);
            r0 = objc_msgSend(r0, r20);
            r21 = @selector(localizationManager);
            r23 = [[objc_msgSend(r0, r21) gameDelegate] getFallbackUserCountryCode];
            var_1F0 = [[objc_msgSend(objc_msgSend(@class(Application), r20), r21) gameDelegate] getFallbackUserRegionCode];
    }
    r0 = [MCConfigurationData sharedMCConfigurationData];
    r0 = [r0 tableWithId:@"Localization - Languages"];
    var_190 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F8 = r0;
    var_228 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100009b2c;

loc_1000099ec:
    r20 = r0;
    r19 = *var_190;
    goto loc_1000099f8;

loc_1000099f8:
    r24 = 0x0;
    goto loc_100009a14;

loc_100009a14:
    if (*var_190 != r19) {
            objc_enumerationMutation(var_1F8);
    }
    r26 = @selector(isEqualToString:);
    r25 = @selector(class);
    r22 = @selector(objectForKey:);
    r21 = *(var_198 + r24 * 0x8);
    r27 = objc_msgSend(r21, r22);
    r27 = sub_1005d85d8(objc_msgSend(sub_1005d8554(r27, objc_msgSend(@class(NSDictionary), r25), 0x0), r22), 0x0);
    r28 = sub_1005d85d8(objc_msgSend(r21, r22), 0x0);
    r21 = sub_1005d85d8(objc_msgSend(r21, r22), 0x0);
    if (objc_msgSend(r28, r26) == 0x0 || (var_1F0 | r21) != 0x0 && (r21 == 0x0 || [r21 isEqualToString:r2] == 0x0)) goto loc_100009b00;

loc_100009b8c:
    [[[Application sharedApplication] localizationManager] textForKey:@"settings_localization_system_language"];
    r19 = var_1E8;
    r0 = r19;
    goto loc_100009be0;

loc_100009be0:
    r0 = [r0 addNode:r2 flag:r3 code:r4 region:r5];
    [r0 setSelected:0x1];
    [r19 callbackNodeSelected:r0];
    r0 = [MCConfigurationData sharedMCConfigurationData];
    r0 = [r0 tableWithId:r2];
    var_1D0 = q0;
    var_210 = r0;
    r0 = objc_msgSend(r0, var_228);
    var_1F0 = r0;
    if (r0 != 0x0) {
            var_200 = *var_1D0;
            var_208 = sign_extend_64(*(int32_t *)ivar_offset(_startCountryCode));
            r20 = var_1E8;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_1D0 != var_200) {
                                    objc_enumerationMutation(var_210);
                            }
                            r23 = *(var_1D8 + r24 * 0x8);
                            r26 = sub_1005d85d8([r23 objectForKey:@"languageName"], 0x0);
                            r27 = sub_1005d85d8([sub_1005d8554([r23 objectForKey:@"languageIcon"], [NSDictionary class], 0x0) objectForKey:@"spriteFilename"], 0x0);
                            r19 = sub_1005d85d8([r23 objectForKey:@"countryCode"], 0x0);
                            r25 = sub_1005d85d8([r23 objectForKey:@"regionCode"], 0x0);
                            r23 = [r20 addNode:r26 flag:r27 code:r19 region:r25];
                            if ([r19 isEqualToString:*(r20 + var_208)] != 0x0) {
                                    r2 = var_1E8->_startCountryRegion;
                                    if (r25 != 0x0) {
                                            if ([r25 isEqualToString:r2] != 0x0) {
                                                    [r23 setSelected:r2];
                                                    [var_1E8 callbackNodeSelected:r2];
                                            }
                                    }
                                    else {
                                            if (r2 == 0x0) {
                                                    [r23 setSelected:r2];
                                                    [var_1E8 callbackNodeSelected:r2];
                                            }
                                    }
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < var_1F0);
                    r0 = objc_msgSend(var_210, var_228);
                    var_1F0 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100009b00:
    r24 = r24 + 0x1;
    if (r24 < r20) goto loc_100009a14;

loc_100009b0c:
    r0 = objc_msgSend(var_1F8, var_228);
    r20 = r0;
    if (r0 != 0x0) goto loc_1000099f8;

loc_100009b2c:
    [[[Application sharedApplication] localizationManager] textForKey:@"settings_localization_system_language"];
    r19 = var_1E8;
    r0 = r19;
    goto loc_100009be0;
}

-(void)setCurrentCountry {
    r31 = r31 - 0x160;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_flagSprite));
    var_148 = r8;
    if (*(self + r8) != 0x0) {
            [r19->_outerFrame removeChild:r2];
    }
    var_140 = r19;
    r23 = [[[[Application sharedApplication] localizationManager] gameDelegate] getCurrentUserCountryCode];
    var_130 = [[[[Application sharedApplication] localizationManager] gameDelegate] getCurrentUserRegionCode];
    var_128 = r23;
    if (r23 == 0x0) {
            var_128 = [[[[Application sharedApplication] localizationManager] gameDelegate] getFallbackUserCountryCode];
            var_130 = [[[[Application sharedApplication] localizationManager] gameDelegate] getFallbackUserRegionCode];
    }
    r0 = [MCConfigurationData sharedMCConfigurationData];
    r0 = [r0 tableWithId:@"Localization - Languages"];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10000a4b0;

loc_10000a200:
    r25 = r0;
    r23 = *var_110;
    goto loc_10000a218;

loc_10000a218:
    r20 = 0x0;
    goto loc_10000a228;

loc_10000a228:
    if (*var_110 != r23) {
            objc_enumerationMutation(var_138);
    }
    r27 = @selector(isEqualToString:);
    r26 = @selector(class);
    r22 = @selector(objectForKey:);
    r24 = *(var_118 + r20 * 0x8);
    r21 = sub_1005d85d8(objc_msgSend(r24, r22), 0x0);
    r28 = objc_msgSend(r24, r22);
    r28 = sub_1005d85d8(objc_msgSend(sub_1005d8554(r28, objc_msgSend(@class(NSDictionary), r26), 0x0), r22), 0x0);
    r19 = sub_1005d85d8(objc_msgSend(r24, r22), 0x0);
    r24 = sub_1005d85d8(objc_msgSend(r24, r22), 0x0);
    r2 = var_128;
    if (objc_msgSend(r19, r27) == 0x0) goto loc_10000a328;

loc_10000a310:
    if (r24 == 0x0) goto loc_10000a364;

loc_10000a314:
    r2 = var_130;
    if ([r24 isEqualToString:r2] != 0x0) goto loc_10000a364;

loc_10000a328:
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_10000a228;

loc_10000a334:
    r0 = objc_msgSend(var_138, var_150);
    r25 = r0;
    if (r0 != 0x0) goto loc_10000a218;

loc_10000a4b0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10000a364:
    var_140->_startCountryCode = var_128;
    var_140->_startCountryRegion = var_130;
    var_140->_startCountryFlag = r28;
    *(var_140 + var_148) = sub_1005d7410(@"flags.png", @"flags.plist", r28, 0x0);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_flagPosition));
    [*(var_140 + r19) contentSize];
    [*(var_140 + var_148) setContentSize:r2];
    [*(var_140 + r19) position];
    [*(var_140 + var_148) setPosition:r2];
    [*(var_140 + r19) anchorPoint];
    [*(var_140 + var_148) setAnchorPoint:r2];
    [*(var_140 + r19) scale];
    [*(var_140 + var_148) setScale:r2];
    [*(var_140 + var_148) setZOrder:[*(var_140 + r19) zOrder] + 0x1];
    [*(var_140 + var_148) setVisible:0x1];
    [var_140->_outerFrame addChild:*(var_140 + var_148)];
    [var_140->_countryLabel setString:r2];
    goto loc_10000a4b0;
}

@end