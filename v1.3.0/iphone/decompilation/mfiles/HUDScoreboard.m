@implementation HUDScoreboard

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_ccbLoaded = 0x0;
            *(int8_t *)(int64_t *)&r19->_firstDraw = 0x1;
            *(int8_t *)(int64_t *)&r19->_firstDrawPlayer = 0x1;
            [r19 scheduleUpdate];
            *(int8_t *)(int64_t *)&r19->_scoreboardOpen = 0x0;
            r19->_dt = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)enterLeaderboard {
    [[self userObject] runAnimationsForSequenceNamed:r2];
    return;
}

-(void)didLoadFromCCB {
    r0 = self;
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_ccbLoaded));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = 0x1;
            [r0->_animatedScoreboardNode setVisible:0x0];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar2));
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar3));
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar4));
            r11 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar5));
            r0 = [NSArray arrayWithObjects:r2];
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_scoreboardNodes));
            *(r19 + r24) = r0;
            r0 = [r0 count];
            r0 = sub_1000829d8(&var_50, r0, &var_54);
            r22 = (int64_t *)&r19->_scores;
            r0 = *r22;
            if (r0 != 0x0) {
                    *(r22 + 0x8) = r0;
                    operator delete(r0);
                    *(int128_t *)r22 = 0x0;
                    *(int128_t *)(r22 + 0x8) = 0x0;
                    *(r22 + 0x10) = 0x0;
            }
            *(int128_t *)r22 = var_50;
            *(r22 + 0x10) = var_40;
            *(int32_t *)(int64_t *)&r19->_lastScore = 0x0;
            if ([*(r19 + r24) count] != 0x0) {
                    r22 = 0x0;
                    do {
                            [[*(r19 + r24) objectAtIndex:r2] setVisible:0x0];
                            r22 = r22 + 0x1;
                    } while ([*(r19 + r24) count] > r22);
            }
    }
    return;
}

-(void)leaveLeaderboard {
    [[self userObject] runAnimationsForSequenceNamed:r2];
    return;
}

-(void)toggleLeaderboard {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_scoreboardOpen));
    r8 = *(int8_t *)(r0 + r20);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(leaveLeaderboard);
            }
            else {
                    r8 = &@selector(enterLeaderboard);
            }
    }
    objc_msgSend(r0, *r8);
    *(int8_t *)(r19 + r20) = *(int8_t *)(r19 + r20) ^ 0x1;
    return;
}

-(void)dealloc {
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar1));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r20) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar2));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r21) = 0x0;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar3));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r22) = 0x0;
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar4));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r23) = 0x0;
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_scoreBar5));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r25) = 0x0;
    }
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r23) = 0x0;
    }
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r25) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_scoreboardNodes));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_50 super] dealloc];
    return;
}

-(bool)isScoreboardValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(*0x1011dea68 + 0x24ca48) != 0x0) {
            r8 = *0x1011dea68;
            r9 = *(r8 + 0x800);
            if (r9 != *(r8 + 0x808)) {
                    r19 = *r9;
            }
            else {
                    r19 = 0x0;
            }
            r8 = *0x1011dea68;
            r9 = *(r8 + 0x830);
            if (r9 != *(r8 + 0x838)) {
                    r8 = *r9;
                    if (r8 != 0x0) {
                            r8 = sub_100035e48(r8 + 0x218);
                            r0 = 0x0;
                            if (r19 != 0x0) {
                                    r0 = 0x0;
                                    if (r8 != 0x0) {
                                            r0 = 0x0;
                                            if (*(int32_t *)(r19 + 0x370) != 0x0) {
                                                    r0 = 0x0;
                                                    if (CPU_FLAGS & NE) {
                                                            r0 = 0x1;
                                                    }
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
            r0 = 0x0;
    }
    return r0;
}

-(void *)getFormattedName:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([arg2 length] != 0x0) {
            r0 = [NSString stringWithFormat:r2];
    }
    else {
            r0 = [NSString stringWithFormat:r2];
    }
    return r0;
}

-(void).cxx_destruct {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_scores));
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_scores));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    return r0;
}

-(void)update:(double)arg2 {
    r31 = r31 - 0x1e0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    v8 = v0;
    r27 = self;
    *(r29 + 0xffffffffffffff70) = **___stack_chk_guard;
    r0 = sub_100089a40(0x1011e2cb8);
    r8 = *(int8_t *)(r0 + 0x17);
    r10 = *(r0 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 != 0x3 || std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) goto loc_100082008;

loc_100082850:
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff70)) {
            __stack_chk_fail();
    }
    return;

loc_100082008:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dt));
    var_178 = r8;
    *(r27 + r8) = *(r27 + r8) + d8;
    if ([r27 isScoreboardValid] == 0x0) goto loc_100082850;

loc_100082034:
    r8 = *0x1011dea68;
    r9 = *(r8 + 0x800);
    if (r9 != *(r8 + 0x808)) {
            r24 = *r9;
    }
    else {
            r24 = 0x0;
    }
    r25 = *(int32_t *)(*0x1011dea68 + 0x24ca78);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_scoreboardNodes));
    r21 = [*(r27 + r20) count];
    r23 = ***(*0x1011dea68 + 0x830);
    do {
            do {
                    r22 = r23;
                    if (sub_10005c22c(r23) == 0x0) {
                        break;
                    }
                    r23 = r22;
                    do {
                            r0 = sub_10005c22c(r23);
                            r23 = r0;
                    } while (sub_10005c22c(r0) != 0x0);
            } while (r23 != r22);
            r0 = loc_10005c3c8(r22);
            r23 = r0;
    } while (r0 != 0x0);
    r8 = *(r22 + 0x88);
    if (r8 != 0x0) {
            r8 = *(int32_t *)(r8 + 0x1c);
            if (r8 != 0xf14e54) {
                    if (r8 == 0xb2e1) {
                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
                    }
            }
            else {
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            }
    }
    else {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    r28 = r21 & 0xffffffff;
    var_170 = r20;
    var_158 = r27;
    if (r28 == 0x0) goto loc_100082554;

loc_100082154:
    r22 = 0x0;
    var_1A4 = 0x0;
    r21 = 0x0;
    var_1C8 = r24 + 0xb9;
    goto loc_1000821d8;

loc_1000821d8:
    r19 = r25;
    if (r25 < 0x5 || r21 != 0x5) goto loc_1000821ec;

loc_10008253c:
    r21 = r21 + 0x1;
    r22 = r22 + 0x1;
    r25 = r19;
    if (r21 != r28) goto loc_1000821d8;

loc_100082558:
    r0 = sub_100089a40(0x1011e2cb8);
    r8 = *(int8_t *)(r0 + 0x17);
    r10 = *(r0 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 != 0x3) goto loc_1000825a4;

loc_100082588:
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare();
    if (r0 == 0x0) goto loc_100082610;

loc_1000825a4:
    if (r25 < 0x5) goto loc_1000825d0;

loc_1000825ac:
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
    }
    else {
            r8 = 0x0;
    }
    sub_100063a24(r8 + 0x1e8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastScore));
    s1 = *(int32_t *)(r27 + r8);
    if (s1 != 0x0) {
            asm { fccmp      s1, s0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            s0 = s0 + s1 * 0x4022000000000000;
            asm { fdiv       s0, s0, s1 };
    }
    *(int32_t *)(r27 + r8) = s0;
    s1 = *r27->_scores;
    asm { fdiv       s2, s0, s1 };
    if (s1 > 0x0) {
            asm { fcsel      s8, s2, s9, hi };
    }
    sub_100050d04(&stack[-288]);
    r0 = *(r27 + r20);
    r0 = [r0 objectAtIndex:r2];
    r20 = r0;
    [r0 setVisible:0x1];
    r21 = [r27 getFormattedName:[[[Application sharedApplication] userData] nickname]];
    r2 = *(int32_t *)(r24 + 0x7c);
    [r20 setScoreboardColor:r2];
    if ([r27->_animatedScoreboardNode visible] != 0x0) {
            [r20 setCurrentSizeWithPerc:r2];
            if (*(r27 + var_178) > *0x100b9b7b0) {
                    [r20 setPlayerScoreWithText:r21 score:&stack[-288]];
            }
    }
    goto loc_100082820;

loc_100082820:
    d0 = *(r27 + var_178);
    goto loc_100082828;

loc_100082828:
    if (d0 > *0x100b9b7b0) {
            *(var_158 + var_178) = 0x0;
    }
    goto loc_100082840;

loc_100082840:
    if ((sign_extend_64(var_121) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    goto loc_100082850;

loc_1000825d0:
    r0 = *(r27 + r20);
    r0 = [r0 objectAtIndex:r2];
    r8 = var_178;
    d0 = *(r27 + r8);
    if (d0 <= *0x100b9b7b0) {
            if (CPU_FLAGS & LE) {
                    r8 = 0x1;
            }
    }
    if (((var_1A4 | r8) & 0x1) != 0x0) goto loc_100082828;

loc_100082600:
    [r0 setAsPlayerNodeWithPlayerName];
    goto loc_100082820;

loc_100082610:
    r22 = *(int32_t *)(r24 + 0x370);
    if (r22 < 0x1) goto loc_100082840;

loc_10008261c:
    r8 = var_121;
    r9 = sign_extend_64(r8);
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r20 = r8;
            }
            else {
                    r20 = 0x0;
            }
    }
    r8 = &var_138;
    if (CPU_FLAGS & L) {
            if (!CPU_FLAGS & L) {
                    r21 = r8;
            }
            else {
                    r21 = 0x0;
            }
    }
    r23 = 0x0;
    r24 = r24 + 0xb9;
    r25 = r21 + 0x1;
    goto loc_10008264c;

loc_10008264c:
    asm { madd       x9, x23, x26, x27 };
    r8 = *(int8_t *)(r9 + 0xcf);
    r10 = sign_extend_64(r8);
    r11 = *(r9 + 0xc0);
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = r8;
            }
            else {
                    r10 = r11;
            }
    }
    if (r10 != r20) goto loc_1000826d0;

loc_10008266c:
    r10 = r9 + 0xb8;
    r11 = sign_extend_64(r8);
    r9 = *r10;
    if (r11 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r10;
            }
            else {
                    r0 = r9;
            }
    }
    if ((r11 & 0xffffffff80000000) != 0x0) goto loc_1000826bc;

loc_100082684:
    if (r20 == 0x0) goto loc_100082894;

loc_100082688:
    if (*(int8_t *)r21 != zero_extend_64(r9)) goto loc_1000826d0;

loc_100082694:
    r8 = r8 - 0x1;
    r9 = r25;
    r10 = r24;
    goto loc_1000826a0;

loc_1000826a0:
    if (r8 == 0x0) goto loc_100082894;

loc_1000826a4:
    r11 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r12 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_1000826a0;

loc_1000826d0:
    r23 = r23 + 0x1;
    r24 = r24 + 0x18;
    if (r23 != r22) goto loc_10008264c;
    goto loc_100082840;

loc_100082894:
    [[*(var_158 + var_170) objectAtIndex:r2] setAsPlayerNode];
    goto loc_100082840;

loc_1000826bc:
    if (r20 == 0x0) goto loc_100082894;

loc_1000826c0:
    r0 = memcmp(r0, r21, r20);
    if (r0 == 0x0) goto loc_100082894;
    goto loc_1000826d0;

loc_1000821ec:
    r26 = [*(r27 + r20) objectAtIndex:r2];
    if (r21 >= *(int32_t *)(r24 + 0x370)) goto loc_10008233c;

loc_10008220c:
    s0 = *(int32_t *)(0x318 + r24 + (r21 << 0x20) / 0x40000000);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_scores));
    r8 = *(r27 + r8);
    s1 = *(int32_t *)(r8 + r21 * 0x4);
    if (s1 != 0x0) {
            asm { fccmp      s1, s0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            s0 = s0 + s1 * 0x4022000000000000;
            asm { fdiv       s0, s0, s12 };
    }
    *(int32_t *)(r8 + r21 * 0x4) = s0;
    s1 = *(int32_t *)r8;
    asm { fdiv       s2, s0, s1 };
    if (s1 > 0x0) {
            asm { fcsel      s8, s2, s9, hi };
    }
    var_168 = @selector(setVisible:);
    asm { fcvtas     w27, s0 };
    asm { scvtf      s0, w27 };
    sub_100050d04(&stack[-288]);
    r2 = 0x1;
    objc_msgSend(r26, var_168);
    asm { sxtw       x23, w21 };
    r20 = r24;
    r8 = 0x18;
    asm { madd       x8, x23, x8, x24 };
    r25 = r8 + 0xb8;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r9 = var_150;
    r8 = &var_150;
    if (sign_extend_64(var_139) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    [NSString stringWithUTF8String:r2];
    r24 = [var_158 getFormattedName:r2];
    r0 = sub_100089a40(0x1011e2cb8);
    r8 = *(int8_t *)(r0 + 0x17);
    r10 = *(r0 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 == 0x3 && std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) {
            if (r27 == 0x1) {
                    r0 = [NSString stringWithFormat:r2];
            }
            else {
                    r0 = [NSString stringWithFormat:r2];
            }
            r24 = r0;
    }
    var_198 = @selector(visible);
    [r26 setScoreboardColor:r2];
    if (objc_msgSend(var_158->_animatedScoreboardNode, var_198) == 0x0) goto loc_100082520;

loc_10008239c:
    [r26 setCurrentSizeWithPerc:r2];
    r0 = sub_100089a40(0x1011e2cb8);
    r8 = *(int8_t *)(r0 + 0x17);
    r10 = *(r0 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    r27 = var_158;
    if (r8 != 0x3) goto loc_1000823f4;

loc_1000823d8:
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare();
    if (r0 == 0x0) goto loc_100082444;

loc_1000823f4:
    if (*(r27 + var_178) > *0x100b9b7b0) {
            if (r21 == r19) {
                    [r26 setPlayerScoreWithText:r2 score:r3];
                    var_1A4 = 0x1;
            }
            else {
                    [r26 setOpponentScoreWithText:r2 score:r3];
            }
    }
    goto loc_100082520;

loc_100082520:
    if ((sign_extend_64(var_139) & 0xffffffff80000000) != 0x0) {
            operator delete(var_150);
    }
    r24 = r20;
    r20 = var_170;
    r27 = var_158;
    goto loc_10008253c;

loc_100082444:
    r2 = 0xffffffffffffffff;
    r8 = *(int8_t *)(r25 + 0x17);
    r9 = sign_extend_64(r8);
    r10 = 0x18;
    asm { madd       x10, x23, x10, x20 };
    r10 = *(r10 + 0xc0);
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r10;
            }
    }
    r9 = var_121;
    r10 = sign_extend_64(r9);
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r9;
            }
            else {
                    r9 = 0x0;
            }
    }
    if (r2 != r9) goto loc_1000824ec;

loc_10008247c:
    r11 = sign_extend_64(r8);
    r9 = *r25;
    if (r11 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r25;
            }
            else {
                    r0 = r9;
            }
    }
    r1 = 0x0;
    COND = r10 < 0x0;
    r10 = &var_138;
    if (COND) {
            if (!CPU_FLAGS & L) {
                    r1 = r10;
            }
            else {
                    r1 = 0x0;
            }
    }
    if ((r11 & 0xffffffff80000000) != 0x0) goto loc_1000824e0;

loc_1000824a0:
    if (r2 == 0x0) goto loc_100082508;

loc_1000824a4:
    if (*(int8_t *)r1 != zero_extend_64(r9)) goto loc_1000824ec;

loc_1000824b0:
    r9 = var_1C8;
    asm { smaddl     x9, w22, w10, x9 };
    r8 = r8 - 0x1;
    r10 = r1 + 0x1;
    goto loc_1000824c4;

loc_1000824c4:
    if (r8 == 0x0) goto loc_100082508;

loc_1000824c8:
    r11 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r12 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_1000824c4;

loc_1000824ec:
    [r26 setOpponentScoreWithText:r2 score:r3];
    goto loc_100082520;

loc_100082508:
    [r26 setPlayerScoreWithText:r2 score:r3];
    goto loc_100082520;

loc_1000824e0:
    if (r2 != 0x0 && memcmp(r0, r1, r2) != 0x0) {
            [r26 setOpponentScoreWithText:r2 score:r3];
    }
    else {
            [r26 setPlayerScoreWithText:r2 score:r3];
    }
    goto loc_100082520;

loc_10008233c:
    [r26 setVisible:r2];
    goto loc_10008253c;

loc_100082554:
    var_1A4 = 0x0;
    goto loc_100082558;
}

@end