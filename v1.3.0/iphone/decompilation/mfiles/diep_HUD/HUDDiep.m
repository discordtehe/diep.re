@implementation HUDDiep

-(void *)init {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&saved_fp - 0x20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_currentClassAdvancements = 0x0;
            *(int32_t *)(int64_t *)&r19->_currentPointsAvailable = 0x0;
            r0 = sub_10000ffbc(&var_40, 0x4, &var_44);
            r20 = (int64_t *)&r19->_currentAdvancements;
            r0 = *r20;
            if (r0 != 0x0) {
                    *(r20 + 0x8) = r0;
                    operator delete(r0);
                    *(int128_t *)r20 = 0x0;
                    *(int128_t *)(r20 + 0x8) = 0x0;
                    *(r20 + 0x10) = 0x0;
            }
            *(int128_t *)r20 = var_40;
            *(r20 + 0x10) = var_30;
            *(int32_t *)(int64_t *)&r19->_currentActiveClass = 0x0;
            [r19 schedule:@selector(updateLevelBar:) interval:r3];
            [r19 schedule:@selector(updateHUD) interval:r3];
            *(int8_t *)(int64_t *)&r19->_statsShown = 0x0;
            *(int8_t *)(int64_t *)&r19->_upgradesShown = 0x0;
            *(int8_t *)(int64_t *)&r19->_levelBarShown = 0x0;
            *(int8_t *)(int64_t *)&r19->_refreshUpgrades = 0x0;
            *(int8_t *)(int64_t *)&r19->_refreshStats = 0x0;
            *(int8_t *)(int64_t *)&r19->_refresh = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self unschedule:@selector(updateLevelBar)];
    [self unschedule:@selector(updateHUD)];
    [[&var_20 super] dealloc];
    return;
}

-(void)updateLevelBar:(double)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r19 = r0;
            r0 = *r8;
            if (r0 != 0x0) {
                    asm { fcvt       s0, d0 };
                    asm { fmin       s0, s0, s1 };
                    sub_1000201b0(r0);
                    [r19 updateLevelBar];
            }
    }
    return;
}

-(void)updateLevelBar {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_levelBarShown != 0x0) {
            r9 = *0x1011dea68;
            r8 = *(r9 + 0x830);
            if (r8 != *(r9 + 0x838)) {
                    r8 = *r8;
                    if (r8 != 0x0) {
                            r0 = *(int32_t *)(r8 + 0x224);
                            sub_10000c004(*(int32_t *)sub_100077dd0(r0));
                            sub_10000c014();
                            r2 = [NSString stringWithFormat:@"Level %i %@"];
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_hudLevelBar));
                            [*(r19 + r20) setXPBarWithText:r2];
                            r0 = *(r19 + r20);
                            s0 = *(int32_t *)(**(*0x1011dea68 + 0x830) + 0x264);
                            asm { fmin       s1, s0, s1 };
                            if (s0 < 0x0) {
                                    asm { fcsel      s0, s0, s1, mi };
                            }
                            [r0 setXPWithValue:r2];
                    }
            }
    }
    return;
}

-(void)enterUpgrades {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_upgradesShown));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_statsShown != 0x0) {
                    [r19 leaveStats];
            }
            if (*(int8_t *)(int64_t *)&r19->_levelBarShown != 0x0) {
                    [r19 leaveLevelBar];
            }
            *(int8_t *)(r19 + r20) = 0x1;
            [r19->_hudUpgrades enterUpgrades];
            [[r19 userObject] runAnimationsForSequenceNamed:r2];
    }
    return;
}

-(void)enterStats {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_upgradesShown == 0x0) {
            r19 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_statsShown));
            if (*(int8_t *)(r0 + r20) == 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->_levelBarShown != 0x0) {
                            [r19 leaveLevelBar];
                    }
                    *(int8_t *)(r19 + r20) = 0x1;
                    [r19->_hudStats enterStats];
            }
    }
    return;
}

-(void)updateHUD {
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 == *(r9 + 0x838)) goto .l5;

loc_10000f784:
    r8 = *r8;
    if (r8 == 0x0) goto .l5;

loc_10000f78c:
    r19 = r0;
    r0 = *(int32_t *)(r8 + 0x224);
    r0 = sub_100077dd0(r0);
    r0 = sub_10000fee4(&var_48, r0 + 0x38);
    r8 = *0x1011dea68;
    r8 = *(r8 + 0x830);
    r8 = *r8;
    r21 = *(int32_t *)(r8 + 0x22c);
    r20 = *(int32_t *)(r8 + 0x24c);
    r22 = *(int32_t *)sub_100077dd0(*(int32_t *)(r8 + 0x224));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentClassAdvancements));
    if (*(int32_t *)(r19 + r8) != r21) {
            *(int8_t *)(int64_t *)&r19->_refresh = 0x1;
            *(int8_t *)(int64_t *)&r19->_refreshUpgrades = 0x1;
    }
    r1 = var_48;
    r2 = var_40;
    if (r1 == r2) goto loc_10000f838;

loc_10000f804:
    r10 = *(int128_t *)(int64_t *)&r19->_currentAdvancements;
    if (*(int128_t *)((int64_t *)&r19->_currentAdvancements + 0x8) == r10) goto loc_10000fa2c;

loc_10000f818:
    if (*(int32_t *)r10 != *(int32_t *)r1) {
            *(int8_t *)(int64_t *)&r19->_refreshUpgrades = 0x1;
    }
    goto loc_10000f838;

loc_10000f838:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_currentPointsAvailable));
    if (*(int32_t *)(r19 + r24) != r20) {
            *(int8_t *)(int64_t *)&r19->_refresh = 0x1;
    }
    r0 = (int64_t *)&r19->_currentAdvancements;
    r9 = *(int128_t *)r0;
    r12 = *(int128_t *)(r0 + 0x8);
    r11 = r12 - r9;
    r10 = r2 - r1;
    if (r11 != r10) {
            *(int8_t *)(int64_t *)&r19->_refresh = 0x1;
    }
    if (r9 == r12) goto loc_10000f8c8;

loc_10000f888:
    if (r1 == r2) goto loc_10000f8ec;

loc_10000f890:
    if (r11 == 0x0) goto loc_10000fa34;

loc_10000f894:
    if (r10 == 0x0) goto loc_10000fa3c;

loc_10000f898:
    if (*(int32_t *)r9 != *(int32_t *)r1) {
            *(int8_t *)(int64_t *)&r19->_refresh = 0x1;
    }
    *(int32_t *)(r19 + r8) = r21;
    if (&var_48 != r0) {
            sub_100010040(r0, r1, r2);
    }
    goto loc_10000f8f0;

loc_10000f8f0:
    *(int32_t *)(r19 + r24) = r20;
    [r19 enterLevelBar];
    if (*(int8_t *)(int64_t *)&r19->_refresh != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_hudStats));
            [*(r19 + r23) refreshStats];
            if (r21 < 0x1 || var_48 == var_40) {
                    [r19 leaveUpgrades];
            }
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_currentActiveClass));
            if (*(int32_t *)(r19 + r24) != r22) {
                    [*(r19 + r23) refreshStatNames];
                    [*(r19 + r23) refreshStatType];
                    *(int32_t *)(r19 + r24) = r22;
            }
            if (r20 <= 0x0) {
                    [r19 leaveStats];
            }
            if (r21 >= 0x1 && var_40 != var_48) {
                    [r19 enterUpgrades];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_refreshUpgrades));
                    if (*(int8_t *)(r19 + r21) != 0x0) {
                            [r19->_hudUpgrades refreshUpgrades];
                    }
                    *(int8_t *)(r19 + r21) = 0x0;
            }
            if (r20 >= 0x1) {
                    [r19 enterStats];
            }
    }
    r0 = var_48;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    return;

.l5:
    return;

loc_10000fa3c:
    std::__1::__vector_base_common<true>::__throw_out_of_range();
    return;

loc_10000fa34:
    std::__1::__vector_base_common<true>::__throw_out_of_range();
    return;

loc_10000f8ec:
    *(int32_t *)(r19 + r8) = r21;
    goto loc_10000f8f0;

loc_10000f8c8:
    *(int32_t *)(r19 + r8) = r21;
    r8 = &var_48;
    if (r8 == r0) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r1 != r2 && (r8 & 0x1) == 0x0) {
            sub_100010040(r0, r1, r2);
    }
    goto loc_10000f8f0;

loc_10000fa2c:
    std::__1::__vector_base_common<true>::__throw_out_of_range();
    return;
}

-(void)enterLevelBar {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self updateLevelBar];
    if (*(int8_t *)(int64_t *)&r19->_upgradesShown == 0x0 && *(int8_t *)(int64_t *)&r19->_statsShown == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_levelBarShown));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    [r19->_hudLevelBar enterLevelBar];
            }
    }
    return;
}

-(void)leaveUpgrades {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_upgradesShown));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            *(int8_t *)(r0 + r8) = 0x0;
            [r0->_hudUpgrades leaveUpgrades];
            [[r0 userObject] runAnimationsForSequenceNamed:r2];
    }
    return;
}

-(void)leaveStats {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_statsShown));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            *(int8_t *)(r0 + r8) = 0x0;
            [r0->_hudStats leaveStats];
    }
    return;
}

-(void)leaveLevelBar {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_levelBarShown));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            *(int8_t *)(r0 + r8) = 0x0;
            [r0->_hudLevelBar leaveLevelBar];
    }
    return;
}

-(void *)hudUpgrades {
    r0 = self->_hudUpgrades;
    return r0;
}

-(void *)hudStats {
    r0 = self->_hudStats;
    return r0;
}

-(void *)hudLevelBar {
    r0 = self->_hudLevelBar;
    return r0;
}

-(void *)hudScoreboard {
    r0 = self->_hudScoreboard;
    return r0;
}

-(void).cxx_destruct {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentAdvancements));
    r8 = self + r8;
    r0 = *r8;
    if (r0 != 0x0) {
            *(r8 + 0x8) = r0;
            operator delete(r0);
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentAdvancements));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    return r0;
}

@end