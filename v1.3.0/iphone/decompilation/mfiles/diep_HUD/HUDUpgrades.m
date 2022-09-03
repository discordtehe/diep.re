@implementation HUDUpgrades

-(void)didLoadFromCCB {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_ccbLoaded));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            *(int8_t *)(r0 + r8) = 0x1;
            [r0 createUpgrades];
    }
    return;
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
            r20 = @selector(init);
            *(int8_t *)(int64_t *)&r19->_ccbLoaded = 0x0;
            r19->_upgrades = objc_msgSend(objc_alloc(), r20);
    }
    r0 = r19;
    return r0;
}

-(void)enterUpgrades {
    r20 = [self userObject];
    [self enableAllButtons];
    [r20 runAnimationsForSequenceNamed:r2];
    return;
}

-(void)leaveUpgrades {
    r20 = [self userObject];
    [self disableAllButtons];
    [r20 runAnimationsForSequenceNamed:r2];
    return;
}

-(void)enableAllButtons {
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_upgrades));
    if ([*(self + r24) count] != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r24) objectAtIndex:r2] setIsEnabled:r2];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r24), r20));
    }
    return;
}

-(void)createUpgrades {
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
    r19 = self;
    [self->_upgradesMenu removeAllChildrenWithCleanup:0x1];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_upgrades));
    [*(r19 + r25) removeAllObjects];
    r0 = [HUDUpgradesNode HUDUpgradesNodeIgnore];
    [r0 setDisabledColor:0xffffffffffffffff];
    [*(r19 + r25) addObject:r0];
    r27 = 0x5;
    do {
            r0 = [HUDUpgradesNode HUDUpgradesNodeEmpty];
            r23 = r23 | 0xffffffff;
            [r0 setDisabledColor:r23];
            [*(r19 + r25) addObject:r0];
            r27 = r27 - 0x1;
    } while (r27 != 0x0);
    return;
}

-(void)disableAllButtons {
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_upgrades));
    if ([*(self + r24) count] != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r24) objectAtIndex:r2] setIsEnabled:r2];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r24), r20));
    }
    return;
}

-(void)refreshUpgrades {
    r31 = r31 - 0xb0;
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_upgradesMenu));
    [*(self + r23) removeAllChildrenWithCleanup:0x1];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_upgrades));
    var_78 = r8;
    [*(r19 + r23) addChild:[*(r19 + r8) objectAtIndex:0x0]];
    r0 = *(int32_t *)(**(*0x1011dea68 + 0x830) + 0x224);
    r0 = sub_100077dd0(r0);
    if (*(int128_t *)(r0 + 0x40) != *(int128_t *)(r0 + 0x38)) {
            r28 = 0x0;
            do {
                    if (*(int32_t *)(sub_100077dd0(*(int32_t *)(*(sub_100077dd0(*(int32_t *)(**(*0x1011dea68 + 0x830) + 0x224)) + 0x38) + r28 * 0x4)) + 0x68) > *(int32_t *)(**(*0x1011dea68 + 0x830) + 0x22c)) {
                        break;
                    }
                    r22 = [*(r19 + var_78) objectAtIndex:r2];
                    [r22 refreshWithClassType:sub_10000c004(*(int32_t *)(*(sub_100077dd0(*(int32_t *)(**(*0x1011dea68 + 0x830) + 0x224)) + 0x38) + r28 * 0x4))];
                    [r22 setClassBackgroundImage:r28];
                    [*(r19 + r23) addChild:r2];
                    [[*(r19 + r23) children] getNSArray];
                    [*(r19 + r23) contentSize];
                    sub_1005cb618();
                    asm { fcvt       d9, s0 };
                    sub_1005cb618();
                    loc_1005d74e8(r28, 0x1);
                    objc_msgSend(r22, r27);
                    r0 = *(int32_t *)(**(*r21 + 0x830) + 0x224);
                    r0 = sub_100077dd0(r0);
                    r28 = r20;
            } while (r20 < (*(int128_t *)(r0 + 0x40) - *(int128_t *)(r0 + 0x38)) / 0x4);
    }
    return;
}

@end