@implementation HUDStatsNode

+(void *)HUDStatsNodeWithStatType:(int)arg2 {
    r0 = [CCBReader nodeGraphFromFile:@"DiepStatsNode.ccbi"];
    [r0 setStatType:arg2];
    [r0 setStatNameText];
    [r0 setStatImages];
    [r0 setTarget:r2 selector:r3];
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_ccbLoaded = 0x0;
            *(int32_t *)(int64_t *)&r0->_currentStatValue = 0x0;
            *(int32_t *)(int64_t *)&r0->_statMax = 0x7;
    }
    return r0;
}

-(void)didLoadFromCCB {
    r0 = self;
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_ccbLoaded));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            *(int8_t *)(r0 + r8) = 0x1;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty1));
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty2));
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty3));
            r11 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty4));
            r12 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty5));
            r0->_emptyBars = [[NSArray arrayWithObjects:r2] retain];
            [r0 setStatWithValue:r2];
    }
    return;
}

-(void)setStatType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_statType = arg2;
    return;
}

-(void)setStatNameText {
    sub_10000e618();
    [r19 setString:r2];
    return;
}

-(void)setStatImages {
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
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_statType));
    r0 = sub_10000e6a4();
    if (r0 != 0x0) {
            r0 = sub_1005d7410(@"DiepGameUI.png", @"DiepGameUI.plist", r0, 0x0);
            if (r0 != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_upperBody));
                    [*(r19 + r23) addChild:r0 z:0xffffffffffffffff];
                    [*(r19 + r23) contentSize];
                    [*(r19 + r23) contentSize];
                    [r0 setPosition:r0];
                    r8 = *(int32_t *)(r19 + r22);
                    if (r8 <= 0x7) {
                            (0x100021950 + *(int8_t *)(0x100b9b5ac + r8) * 0x4)();
                    }
            }
    }
    return;
}

-(void)callback {
    r0 = self;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    sub_10002025c(r8, *(int32_t *)(int64_t *)&r0->_statType);
            }
    }
    return;
}

-(void)refreshStat {
    r0 = self;
    r8 = *0x1011dea68;
    r9 = *(r8 + 0x830);
    if (r9 != *(r8 + 0x838)) {
            r9 = *r9;
            if (r9 != 0x0 && *(int8_t *)(*0x1011dea68 + 0x24ca48) != 0x0) {
                    *(int32_t *)(int64_t *)&r0->_currentStatValue = *(int32_t *)(0x68 + r9 + sign_extend_64(*(int32_t *)(int64_t *)&r0->_statType) * 0x4);
                    [r0 setStatWithValue:r2];
            }
    }
    return;
}

-(void)setStatWithValue:(int)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_emptyBars));
    if ([*(self + r26) count] != 0x0) {
            r22 = 0x0;
            do {
                    r24 = @selector(setVisible:);
                    r23 = @selector(objectAtIndex:);
                    objc_msgSend(objc_msgSend(*(r19 + r26), r23), r24);
                    r22 = r22 + 0x1;
            } while (objc_msgSend(*(r19 + r26), r21) > r22);
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_statMax));
    r8 = *(int32_t *)(r19 + r22);
    if (r8 > r20) {
            r27 = 0x101137000;
            r25 = 0x101137000;
            r0 = *(r19 + r26);
            asm { sxtw       x2, w20 };
            r0 = objc_msgSend(r0, *(r27 + 0x418));
            r21 = *(r25 + 0x1f8);
            objc_msgSend(r0, r21);
            r8 = *(int32_t *)(r19 + r22);
    }
    else {
            r21 = @selector(setVisible:);
    }
    if (r8 != r20) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    if (CPU_FLAGS & E) {
            if (CPU_FLAGS & E) {
                    r22 = 0x1;
            }
    }
    r0 = r19->_iconComplete;
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r23 = 0xff7f7f7f;
            }
            else {
                    r23 = 0xffffffffffffffff;
            }
    }
    objc_msgSend(r0, r21);
    objc_msgSend(r19->_iconIncomplete, r21);
    objc_msgSend(r19->_fullStatSprite, r21);
    [r19 setSelectedColor:r2];
    return;
}

-(void)refreshStatName {
    r0 = self;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    r19 = r0;
                    sub_100077dd0(*(int32_t *)(r8 + 0x224));
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_statType));
                    asm { madd       x8, x8, x9, x0 };
                    r20 = &var_28;
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                    r8 = sign_extend_64(var_11);
                    r9 = var_28;
                    if (r8 < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r8 = r20;
                            }
                            else {
                                    r8 = r9;
                            }
                    }
                    [r19->_statName setString:[NSString stringWithFormat:r2]];
                    if ((sign_extend_64(var_11) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_28);
                    }
            }
    }
    return;
}

@end