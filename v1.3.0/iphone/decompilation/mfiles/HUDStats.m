@implementation HUDStats

-(void)didLoadFromCCB {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_ccbLoaded));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            *(int8_t *)(r0 + r8) = 0x1;
            [r0 createStats];
            [r0 createSmasherStats];
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            *(int8_t *)(int64_t *)&r19->_ccbLoaded = 0x0;
            r19->_stats = objc_msgSend(objc_alloc(), r20);
            r19->_smasherStats = objc_msgSend(objc_alloc(), r20);
    }
    r0 = r19;
    return r0;
}

-(void)enterStats {
    r20 = [self userObject];
    [self enableAllButtons];
    [r20 runAnimationsForSequenceNamed:r2];
    return;
}

-(void)leaveStats {
    r20 = [self userObject];
    [self disableAllButtons];
    [r20 runAnimationsForSequenceNamed:r2];
    return;
}

-(void)createSmasherStats {
    r31 = r31 - 0x90;
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
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_smasherStatsMenu));
    [*(self + r28) removeAllChildrenWithCleanup:0x1];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_smasherStats));
    [*(r19 + r21) removeAllObjects];
    sub_1005cb618();
    if (sub_1005cb7c8(0x1) <= 0x1) {
            sub_1005cb618();
    }
    r20 = 0x0;
    do {
            r22 = @selector(setDisabledColor:);
            r0 = [HUDSmasherStatsNode HUDSmasherStatsNodeWithStatType:sub_10000e608(r20)];
            r25 = r25 | 0xffffffff;
            objc_msgSend(r0, r22);
            objc_msgSend(*(r19 + r28), r23);
            objc_msgSend(*(r19 + r21), r24);
            objc_msgSend(r27, r26);
            r20 = r20 + 0x1;
    } while (r20 != 0x4);
    [*(r19 + r28) contentSize];
    objc_msgSend(*(r19 + r28), r21);
    loc_1005d74e8(r20, 0x1);
    return;
}

-(void)refreshStatNames {
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_stats));
    if ([*(self + r24) count] != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r24) objectAtIndex:r21] refreshStatName];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r24), r20));
    }
    return;
}

-(void)refreshStats {
    r31 = r31 - 0x60;
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
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_stats));
    if ([*(self + r26) count] != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r26) objectAtIndex:r2] refreshStat];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r26), r20));
    }
    r20 = @selector(count);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_smasherStats));
    if (objc_msgSend(*(r19 + r26), r20) != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r26) objectAtIndex:r2] refreshStat];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r26), r20));
    }
    r8 = *0x1011dea68;
    r8 = *(r8 + 0x830);
    [NSString stringWithFormat:r2];
    [r19->_statsAvailable setString:r2];
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_stats));
    if ([*(self + r24) count] != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r24) objectAtIndex:r2] setIsEnabled:r2];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r24), r20));
    }
    return;
}

-(void)refreshStatType {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(int32_t *)(**(*0x1011dea68 + 0x830) + 0x224);
    r0 = sub_100077dd0(r0);
    r0 = *(int32_t *)r0;
    r0 = sub_10000c004(r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_smasherStatsMenu));
    r8 = *(r19 + r8);
    r9 = r0 - 0x24;
    if (r9 > 0x2) {
            if (CPU_FLAGS & A) {
                    r21 = 0x1;
            }
    }
    if (r9 < 0x3) {
            if (CPU_FLAGS & B) {
                    r2 = 0x1;
            }
    }
    [r8 setVisible:r2];
    [r19->_statsMenu setVisible:r21];
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_stats));
    if ([*(self + r24) count] != 0x0) {
            r21 = 0x0;
            do {
                    [[*(r19 + r24) objectAtIndex:r2] setIsEnabled:r2];
                    r21 = r21 + 0x1;
            } while (r21 < objc_msgSend(*(r19 + r24), r20));
    }
    return;
}

-(void)createStats {
    r31 = r31 - 0x90;
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
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_statsMenu));
    [*(self + r28) removeAllChildrenWithCleanup:0x1];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_stats));
    [*(r19 + r21) removeAllObjects];
    sub_1005cb618();
    if (sub_1005cb7c8(0x1) <= 0x1) {
            sub_1005cb618();
            s0 = *(int32_t *)0x1011c07c4;
            s8 = s0 + s0;
    }
    else {
            s8 = *(int32_t *)0x1011c07c4;
            s0 = 0x4024000000000000;
            s8 = s8 * s0;
    }
    r20 = 0x0;
    do {
            r22 = @selector(setDisabledColor:);
            r0 = [HUDStatsNode HUDStatsNodeWithStatType:sub_10000e5f8(r20)];
            r25 = r25 | 0xffffffff;
            objc_msgSend(r0, r22);
            objc_msgSend(*(r19 + r28), r23);
            objc_msgSend(*(r19 + r21), r24);
            objc_msgSend(r27, r26);
            r20 = r20 + 0x1;
    } while (r20 != 0x8);
    [*(r19 + r28) contentSize];
    objc_msgSend(*(r19 + r28), r21);
    r0 = r20;
    v0 = v9;
    r29 = saved_fp;
    r30 = stack[-8];
    r20 = var_10;
    r19 = stack[-24];
    r22 = var_20;
    r21 = stack[-40];
    r24 = var_30;
    r23 = stack[-56];
    r26 = var_40;
    r25 = stack[-72];
    r28 = var_50;
    r27 = stack[-88];
    d9 = var_60;
    d8 = stack[-104];
    d11 = var_70;
    d10 = stack[-120];
    r31 = r31 + 0x90;
    var_90 = d15;
    stack[-152] = d14;
    var_80 = d13;
    var_78 = d12;
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
    r31 = r31 + 0xffffffffffffff60 - 0x200;
    var_258 = s2;
    if (r0 == 0x0) goto loc_1005d79e0;

loc_1005d7538:
    r19 = r0;
    r0 = [r0 count];
    d1 = 0x0;
    if (r0 == 0x0) goto loc_1005d79e0;

loc_1005d7560:
    r20 = [r19 count];
    var_1B8 = 0x0;
    var_1B0 = 0x0;
    var_1A8 = 0x0;
    var_1D0 = 0x0;
    var_1C8 = 0x0;
    var_1C0 = 0x0;
    var_200 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_280 = r1;
    r0 = objc_msgSend(r19, r1);
    r23 = r0;
    if (r0 == 0x0) goto loc_1005d7804;

loc_1005d75b4:
    var_288 = r20;
    var_268 = *var_200;
    s15 = 0x0;
    var_278 = r19;
    goto loc_1005d75d0;

loc_1005d75d0:
    r21 = 0x0;
    var_270 = r23;
    goto loc_1005d75f0;

loc_1005d75f0:
    if (*var_200 != var_268) {
            objc_enumerationMutation(var_278);
    }
    [*(var_208 + r21 * 0x8) contentSize];
    v11 = v1;
    objc_msgSend(r22, r26);
    objc_msgSend(r22, r27);
    asm { fcvt       d1, s13 };
    d1 = d12 * d1;
    asm { fcvt       s12, d1 };
    asm { fcvt       d0, s0 };
    d0 = d11 * d0;
    asm { fcvt       s11, d0 };
    if (s14 < s11) {
            asm { fcsel      s14, s11, s14, mi };
    }
    r9 = var_1B0;
    r8 = var_1A8;
    if (r9 == r8) goto loc_1005d767c;

loc_1005d7670:
    *(int32_t *)r9 = s12;
    var_1B0 = r9 + 0x4;
    goto loc_1005d7710;

loc_1005d7710:
    r9 = var_1C8;
    r8 = var_1C0;
    if (r9 == r8) goto loc_1005d7728;

loc_1005d771c:
    *(int32_t *)r9 = s11;
    var_1C8 = r9 + 0x4;
    goto loc_1005d77bc;

loc_1005d77bc:
    s15 = s15 + s12;
    r21 = r21 + 0x1;
    if (r21 < r23) goto loc_1005d75f0;

loc_1005d77cc:
    r19 = var_278;
    r0 = objc_msgSend(r19, var_280);
    r23 = r0;
    if (r0 != 0x0) goto loc_1005d75d0;

loc_1005d77ec:
    r21 = var_1B8;
    r22 = var_1D0;
    r20 = var_288;
    goto loc_1005d7814;

loc_1005d7814:
    COND = r8 > 0x0;
    asm { ucvtf      s0, x8 };
    s0 = s0 * var_258 + s15;
    if (COND) {
            asm { fcsel      s0, s0, s15, hi };
    }
    var_268 = s0;
    if (0x0 != 0x0) {
            asm { fcsel      s15, s13, s12, ne };
    }
    var_240 = q0;
    r0 = objc_msgSend(r19, var_280);
    r23 = r0;
    if (r0 != 0x0) {
            asm { fcvt       d0, s0 };
            d0 = d10 + d0;
            asm { fcvt       s10, d0 };
            asm { fcvt       s0, d9 };
            r27 = *var_240;
            asm { fcvt       d9, s0 };
            do {
                    r28 = 0x0;
                    do {
                            if (*var_240 != r27) {
                                    objc_enumerationMutation(r19);
                            }
                            r26 = *(var_248 + r28 * 0x8);
                            s15 = *(int32_t *)r21 * 0x3fe0000000000000;
                            s11 = *(int32_t *)r22;
                            if (0x0 != 0x0) {
                                    asm { fcsel      s8, s0, s15, ne };
                            }
                            var_25C = 0x1;
                            [r26 anchorPoint];
                            s10 = s10 + s8;
                            asm { fcvt       d3, s3 };
                            d0 = d0 * d3;
                            asm { fcvt       d3, s15 };
                            d0 = d3 - d0;
                            asm { fcvt       d3, s3 };
                            d4 = d1 * d3;
                            asm { fcvt       d1, s2 };
                            d1 = d1 - d4;
                            asm { fcvt       s2, d4 };
                            d3 = d3 - d4;
                            asm { fcvt       s3, d3 };
                            asm { fmaxnm     s2, s2, s3 };
                            asm { fmaxnm     s2, s14, s2 };
                            r8 = var_25C;
                            if ((r8 & 0x1) != 0x0) {
                                    asm { fcsel      s14, s14, s2, ne };
                            }
                            asm { fcvt       d2, s10 };
                            d0 = d2 - d0;
                            d1 = d9 - d1;
                            if (r8 != 0x0) {
                                    asm { fcsel      d1, d1, d9, ne };
                            }
                            [r26 setPosition:r2];
                            s0 = s15 + var_258;
                            if (0x0 != 0x0) {
                                    asm { fcsel      s0, s1, s0, ne };
                            }
                            s10 = s10 + s0;
                            r21 = r21 + 0x4;
                            r22 = r22 + 0x4;
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = objc_msgSend(r19, var_280);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r0 = var_1D0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_1B8;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    asm { fcvt       d11, s0 };
    asm { fcvt       d1, s14 };
    goto loc_1005d79e0;

loc_1005d79e0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005d7728:
    r28 = var_1D0;
    r23 = r9 - r28;
    r19 = SAR(r23, 0x2);
    r9 = r19 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1005d7a3c;

loc_1005d7740:
    r8 = r8 - r28;
    r10 = SAR(r8, 0x1);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r20 = 0x3fffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1005d777c;

loc_1005d7764:
    if (r20 >> 0x3e != 0x0) goto loc_1005d7a50;

loc_1005d776c:
    r22 = operator new();
    goto loc_1005d7780;

loc_1005d7780:
    r24 = r22 + r19 * 0x4;
    r19 = r22 + r20 * 0x4;
    *(int32_t *)r24 = s11;
    r24 = r24 + 0x4;
    if (r23 >= 0x1) {
            memcpy(r22, r28, r23);
    }
    var_1D0 = r22;
    var_1C8 = r24;
    var_1C0 = r19;
    r23 = var_270;
    if (r28 != 0x0) {
            operator delete(r28);
    }
    goto loc_1005d77bc;

loc_1005d7a50:
    sub_1005d80e0();
    return;

loc_1005d777c:
    r22 = 0x0;
    goto loc_1005d7780;

loc_1005d7a3c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1005d767c:
    r28 = var_1B8;
    r23 = r9 - r28;
    r19 = SAR(r23, 0x2);
    r9 = r19 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1005d7a30;

loc_1005d7694:
    r8 = r8 - r28;
    r10 = SAR(r8, 0x1);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r20 = 0x3fffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1005d76d0;

loc_1005d76b8:
    if (r20 >> 0x3e != 0x0) goto loc_1005d7a48;

loc_1005d76c0:
    r22 = operator new();
    goto loc_1005d76d4;

loc_1005d76d4:
    r24 = r22 + r19 * 0x4;
    r19 = r22 + r20 * 0x4;
    *(int32_t *)r24 = s12;
    r24 = r24 + 0x4;
    if (r23 >= 0x1) {
            memcpy(r22, r28, r23);
    }
    var_1B8 = r22;
    var_1B0 = r24;
    var_1A8 = r19;
    r23 = var_270;
    if (r28 != 0x0) {
            operator delete(r28);
    }
    goto loc_1005d7710;

loc_1005d7a48:
    sub_1005d80e0();
    return;

loc_1005d76d0:
    r22 = 0x0;
    goto loc_1005d76d4;

loc_1005d7a30:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1005d7804:
    r22 = 0x0;
    r21 = 0x0;
    s15 = 0x0;
    goto loc_1005d7814;
}

@end