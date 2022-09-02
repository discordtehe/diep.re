@implementation HUDScoreboardNode

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
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_initialContentSize));
            *(int128_t *)(r19 + r8) = 0x0;
            *(int128_t *)(0x8 + r19 + r8) = 0x0;
            *(int8_t *)(int64_t *)&r19->_ccbLoaded = 0x0;
            r19->_dictSprites = objc_msgSend(objc_alloc(), r20);
            r19->_lastScore = [[NSMutableString stringWithFormat:@""] retain];
            r19->_lastName = [[NSMutableString stringWithFormat:@""] retain];
            r19->_lastState = [[NSMutableString stringWithFormat:@""] retain];
            r19->_nameSprite = 0x0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_opponentName));
            [*(r19 + r22) setString:@""];
            [r19->_player1Name setString:@""];
            [*(r19 + r22) setVisible:0x0];
            r19->_opponentNameString = @"";
            *(int32_t *)(int64_t *)&r19->_xStart = 0xffffffffbf800000;
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lastScore));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lastName));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lastState));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)didLoadFromCCB {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
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
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_bar));
            [*(r0 + r21) contentSize];
            r22 = (int64_t *)&r19->_initialContentSize;
            d1 = *r22;
            if (d0 > d1) {
                    [*(r19 + r21) contentSize];
                    *(int128_t *)r22 = d0;
                    *(int128_t *)(r22 + 0x8) = d1;
                    r21 = *(r19 + r21);
                    [r21 contentSize];
                    [r21 setContentSize:r2];
            }
            [r19 setVisible:r2];
    }
    return;
}

-(void)setCurrentSizeWithPerc:(float)arg2 {
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_barRed));
    if ([*(self + r21) visible] != 0x0) {
            [*(r19 + r21) setVisible:r2];
    }
    r20 = @selector(visible);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_barBlue));
    if (objc_msgSend(*(r19 + r23), r20) != 0x0) {
            [*(r19 + r23) setVisible:r2];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initialContentSize));
    r8 = r19 + r8;
    asm { fcvt       d0, s8 };
    d2 = *(int128_t *)r8;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_bar));
    r0 = *(r19 + r24);
    if (d2 * d0 > d2 * *0x100b9af00) {
            asm { fcsel      d0, d0, d2, gt };
    }
    [r0 setContentSize:r2];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_scoreboardColor));
    r8 = *(int32_t *)(r19 + r26);
    if (r8 == 0xf14e54) {
            [*(r19 + r21) setVisible:r2];
            [*(r19 + r24) contentSize];
            objc_msgSend(r21, r20);
            r8 = *(int32_t *)(r19 + r26);
    }
    if (r8 == 0xb2e1) {
            [*(r19 + r23) setVisible:r2];
            [*(r19 + r24) contentSize];
            objc_msgSend(r21, r20);
    }
    return;
}

-(void *)getCachedTexture:(void *)arg2 color:(int)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r21 = arg2;
    if (*0x1011c91f8 == 0x0) {
            *0x1011c91f8 = [objc_alloc() init];
    }
    r19 = [NSString stringWithFormat:@"%d%@"];
    r0 = *0x1011c91f8;
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) {
            if (r22 == 0x2) {
                    if (!CPU_FLAGS & E) {
                            r22 = 0xffffff;
                    }
                    else {
                            r22 = 0xffff;
                    }
            }
            r0 = objc_alloc();
            r0 = [r0 initWithString:r21 fontName:@"OpenSans-Bold.ttf" fontSize:0x1 dimensions:r5 hAlignment:r6];
            r0 = [r0 retain];
            [r0 setStrokeEnabled:0x1];
            [r0 setFontFillColor:r22 updateImage:0x0];
            [r0 enableStrokeWithColor:0x505050 size:0x1 updateImage:0x1];
            r22 = *0x1011c91f8;
            [r0 texture];
            [r22 setObject:r2 forKey:r3];
            r0 = *0x1011c91f8;
            r0 = objc_msgSend(r0, r20);
    }
    return r0;
}

-(void)setPlayerScoreWithText:(void *)arg2 score:(char *)arg3 {
    [self->_barFrame setVisible:0x0];
    [self->_player1Frame setVisible:0x1];
    [self->_opponentName setVisible:0x0];
    [self->_player1Name setVisible:0x1];
    [NSString stringWithFormat:@"%s"];
    [self render_scoreboard:r2 score:r3 isPlayer:r4];
    return;
}

-(void)setOpponentScoreWithText:(void *)arg2 score:(char *)arg3 {
    [self->_barFrame setVisible:0x1];
    [self->_player1Frame setVisible:0x0];
    [self->_opponentName setVisible:0x1];
    [self->_player1Name setVisible:0x0];
    self->_opponentNameString = arg2;
    [NSString stringWithFormat:@"%s"];
    [self render_scoreboard:r2 score:r3 isPlayer:r4];
    return;
}

-(void)setAsPlayerNode {
    [self->_barFrame setVisible:0x0];
    [self->_player1Frame setVisible:0x1];
    [self->_opponentName setVisible:0x0];
    [self->_player1Name setVisible:0x1];
    [self render_scoreboard:r2 score:r3 isPlayer:r4];
    return;
}

-(void)setAsPlayerNodeWithPlayerName {
    [self setAsPlayerNode];
    return;
}

-(void)setAsPlayerNodeWithText:(void *)arg2 {
    [self setAsPlayerNode];
    [self render_scoreboard:r2 score:r3 isPlayer:r4];
    return;
}

-(void *)barFrame {
    r0 = self->_barFrame;
    return r0;
}

-(void)setBarFrame:(void *)arg2 {
    self->_barFrame = arg2;
    return;
}

-(void *)player1Frame {
    r0 = self->_player1Frame;
    return r0;
}

-(void)setPlayer1Frame:(void *)arg2 {
    self->_player1Frame = arg2;
    return;
}

-(void *)barLimiter {
    r0 = self->_barLimiter;
    return r0;
}

-(void)setBarLimiter:(void *)arg2 {
    self->_barLimiter = arg2;
    return;
}

-(void *)bar {
    r0 = self->_bar;
    return r0;
}

-(void)setBar:(void *)arg2 {
    self->_bar = arg2;
    return;
}

-(void *)opponentName {
    r0 = self->_opponentName;
    return r0;
}

-(void)setOpponentName:(void *)arg2 {
    self->_opponentName = arg2;
    return;
}

-(void *)player1Name {
    r0 = self->_player1Name;
    return r0;
}

-(void)setPlayer1Name:(void *)arg2 {
    self->_player1Name = arg2;
    return;
}

-(void)render_scoreboard:(void *)arg2 score:(void *)arg3 isPlayer:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x180;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    if (r3 == 0x0) goto loc_1000080d0;

loc_100007658:
    r23 = r3;
    r24 = r2;
    r19 = r0;
    if (r4 == 0x0 && ([r19->_player1Name visible] & 0x1) == 0x0) {
            if (([r19->_opponentName visible] & 0x1) != 0x0) {
                    r22 = 0x0;
                    r9 = 0x1;
            }
            else {
                    r9 = 0x2;
                    r22 = 0x1;
            }
    }
    else {
            r9 = 0x2;
            r22 = 0x1;
    }
    *((r29 - 0x78) + 0xffffffffffffff00) = r9;
    *((r29 - 0x88) + 0xffffffffffffff00) = @selector(stringWithFormat:);
    r0 = [NSString stringWithFormat:@"(%@)(%@)(%i)"];
    r31 = (r31 - 0x20) + 0x20;
    r20 = r0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastState));
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1000080d0;

loc_100007714:
    *(int32_t *)((r29 - 0xfc) + 0xffffffffffffff00) = r22;
    r0 = *(r19 + r21);
    *((r29 - 0x68) + 0xffffffffffffff00) = @selector(setString:);
    [r0 setString:r20];
    *(r31 + 0xfffffffffffffff0) = r20;
    NSLog(@"State: %@", @selector(setString:));
    *((r29 - 0x80) + 0xffffffffffffff00) = @selector(length);
    r0 = [r23 length];
    *((r29 - 0xe0) + 0xffffffffffffff00) = &var_220;
    r26 = &var_220 - ((r0 + 0x1 << 0x1) + 0xf & 0x3fffffff0);
    r31 = r26;
    *((r29 - 0xc8) + 0xffffffffffffff00) = r0;
    asm { sxtw       x4, w0 };
    *((r29 - 0x90) + 0xffffffffffffff00) = r23;
    [r23 getCharacters:r26 range:0x0];
    [r19->_opponentName position];
    asm { fcvt       s8, d0 };
    objc_msgSend(*r20, r21);
    asm { fcvt       s10, d1 };
    [*r20 contentSize];
    asm { fcvt       s11, d0 };
    objc_msgSend(*r20, r25);
    asm { fcvt       s9, d1 };
    [*r20 anchorPoint];
    asm { fcvt       s12, d0 };
    *((r29 - 0x108) + 0xffffffffffffff00) = r20;
    r0 = *r20;
    *((r29 - 0x98) + 0xffffffffffffff00) = @selector(scale);
    [r0 scale];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_nameSprite));
    r8 = *(r19 + r28);
    s0 = s11 * s12;
    s11 = s8 - s0;
    asm { fcvt       d8, s10 };
    *((r29 - 0x70) + 0xffffffffffffff00) = r27;
    *((r29 - 0xe8) + 0xffffffffffffff00) = r21;
    *((r29 - 0xf0) + 0xffffffffffffff00) = r25;
    *((r29 - 0xf8) + 0xffffffffffffff00) = r28;
    if (r8 == 0x0) goto loc_1000078a8;

loc_10000788c:
    if (([r24 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = [r19 getCachedTexture:r24 color:*((r29 - 0x78) + 0xffffffffffffff00)];
            r20 = r0;
            if (r0 == 0x0) {
                    *(r31 + 0xfffffffffffffff0) = r24;
                    NSLog(@"Failed to find name in cache: %@", @selector(getCachedTexture:color:));
                    r31 = r31 + 0x0;
            }
            r0 = *(r19 + r28);
            if (r0 != 0x0) {
                    [r0 removeFromParent];
                    [*(r19 + r28) release];
                    *(r19 + r28) = 0x0;
            }
            r25 = @selector(contentSize);
            r2 = r20;
            r0 = [CCSprite spriteWithTexture:r2];
            r0 = [r0 retain];
            *(r19 + r28) = r0;
            asm { fcvt       d0, s11 };
            [r0 setPosition:r2];
            objc_msgSend(*(r19 + r28), r25);
            asm { fcvt       s0, d1 };
            asm { fdiv       s0, s9, s0 };
            s0 = s0 * 0x4020000000000000;
            [*(r19 + r28) setScale:r2];
            d0 = 0x0;
            [*(r19 + r28) setAnchorPoint:r2];
            [*(r19 + r28) setVisible:0x1];
            [r19 addChild:r2 z:r3];
            if (r24 != 0x0) {
                    r8 = objc_msgSend(r24, *((r29 - 0x80) + 0xffffffffffffff00));
                    r0 = r19->_lastName;
                    if (r8 != 0x0) {
                            r1 = *((r29 - 0x68) + 0xffffffffffffff00);
                    }
                    else {
                            r1 = *((r29 - 0x68) + 0xffffffffffffff00);
                    }
                    objc_msgSend(r0, r1);
            }
    }
    goto loc_100007a10;

loc_100007a10:
    r0 = *(r19 + r28);
    if (r0 != 0x0) {
            r25 = @selector(contentSize);
            [r0 position];
            asm { fcvt       s10, d0 };
            objc_msgSend(*(r19 + r28), r25);
            asm { fcvt       s11, d0 };
            objc_msgSend(*(r19 + r28), r23);
            asm { fcvt       s13, d0 };
            objc_msgSend(*(r19 + r28), *((r29 - 0x98) + 0xffffffffffffff00));
            s12 = s0 * s11;
            s11 = s12 + (s10 - s0 * s11 * s13);
    }
    else {
            s12 = 0x0;
    }
    goto loc_100007a70;

loc_100007a70:
    *(int128_t *)((r29 - 0x40) + 0xffffffffffffff00) = q0;
    *(int128_t *)((r29 - 0x30) + 0xffffffffffffff00) = q0;
    *(int128_t *)((r29 - 0x60) + 0xffffffffffffff00) = q0;
    *(int128_t *)((r29 - 0x50) + 0xffffffffffffff00) = q0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_dictSprites));
    r20 = *(r19 + r22);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r21 = **((r29 - 0x50) + 0xffffffffffffff00);
            do {
                    r25 = 0x0;
                    do {
                            if (**((r29 - 0x50) + 0xffffffffffffff00) != r21) {
                                    objc_enumerationMutation(r20);
                            }
                            [[*(r19 + r22) objectForKey:r2] removeFromParent];
                            r25 = r25 + 0x1;
                    } while (r25 < r24);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    [*(r19 + r22) removeAllObjects];
    r21 = *((r29 - 0x90) + 0xffffffffffffff00);
    r8 = objc_msgSend(r21, *((r29 - 0x80) + 0xffffffffffffff00));
    r0 = r19->_lastScore;
    if (r8 != 0x0) {
            r1 = *((r29 - 0x68) + 0xffffffffffffff00);
    }
    else {
            r1 = *((r29 - 0x68) + 0xffffffffffffff00);
    }
    objc_msgSend(r0, r1);
    r20 = *((r29 - 0x70) + 0xffffffffffffff00);
    *((r29 - 0x68) + 0xffffffffffffff00) = @selector(numberWithInt:);
    r23 = @(0x0);
    r2 = @"";
    r0 = objc_msgSend(r21, r20);
    r9 = *((r29 - 0xc8) + 0xffffffffffffff00);
    r25 = *((r29 - 0xf0) + 0xffffffffffffff00);
    r21 = *((r29 - 0x98) + 0xffffffffffffff00);
    if (r9 >= 0x1) {
            r2 = @"";
            if (r0 == 0x0) {
                    r12 = 0x101137000;
                    r11 = 0x100b9a000;
                    *((r29 - 0x80) + 0xffffffffffffff00) = r23;
                    r28 = 0x0;
                    *((r29 - 0x90) + 0xffffffffffffff00) = @selector(getCachedTexture:color:);
                    *((r29 - 0xa0) + 0xffffffffffffff00) = @selector(spriteWithTexture:);
                    *((r29 - 0xa8) + 0xffffffffffffff00) = @selector(setPosition:);
                    asm { fcvt       d13, s9 };
                    *((r29 - 0xb0) + 0xffffffffffffff00) = @selector(setScale:);
                    *((r29 - 0xb8) + 0xffffffffffffff00) = @selector(setAnchorPoint:);
                    *((r29 - 0xc0) + 0xffffffffffffff00) = @selector(setVisible:);
                    r23 = r9 & 0xffffffff;
                    *((r29 - 0xc8) + 0xffffffffffffff00) = @selector(addChild:z:);
                    *((r29 - 0xd0) + 0xffffffffffffff00) = @selector(setObject:forKey:);
                    *((r29 - 0xd8) + 0xffffffffffffff00) = *(r12 + 0x2e0);
                    d9 = 0x3fe0000000000000;
                    d15 = *(r11 + 0xf08);
                    do {
                            r0 = [NSString stringWithCharacters:r26 length:0x1];
                            r20 = r0;
                            r24 = *((r29 - 0x70) + 0xffffffffffffff00);
                            r2 = @" ";
                            if (objc_msgSend(r0, r24) == 0x0) {
                                    r2 = @"\n";
                                    if (objc_msgSend(r20, r24) != 0x0) {
                                            s11 = s11 + 0x4014000000000000;
                                            s12 = s12 + 0x4014000000000000;
                                    }
                                    else {
                                            r1 = *((r29 - 0x90) + 0xffffffffffffff00);
                                            r2 = r20;
                                            r0 = objc_msgSend(r19, r1);
                                            if (r0 != 0x0) {
                                                    r0 = objc_msgSend(@class(CCSprite), *((r29 - 0xa0) + 0xffffffffffffff00));
                                                    r0 = [r0 retain];
                                                    asm { fcvt       d10, s11 };
                                                    objc_msgSend(r0, *((r29 - 0xa8) + 0xffffffffffffff00));
                                                    objc_msgSend(r20, r25);
                                                    asm { fdiv       d0, d13, d1 };
                                                    asm { fcvt       s0, d0 };
                                                    objc_msgSend(r20, *((r29 - 0xb0) + 0xffffffffffffff00));
                                                    objc_msgSend(r20, *((r29 - 0xb8) + 0xffffffffffffff00));
                                                    objc_msgSend(r20, *((r29 - 0xc0) + 0xffffffffffffff00));
                                                    objc_msgSend(r19, *((r29 - 0xc8) + 0xffffffffffffff00));
                                                    objc_msgSend(r20, r25);
                                                    objc_msgSend(r20, r21);
                                                    asm { fcvt       d0, s0 };
                                                    asm { fcvt       s11, d0 };
                                                    objc_msgSend(r20, r25);
                                                    v10 = v0;
                                                    objc_msgSend(r20, r21);
                                                    asm { fcvt       d0, s0 };
                                                    d0 = d15 * d10 * d0;
                                                    asm { fcvt       d1, s12 };
                                                    d0 = d0 + d1;
                                                    asm { fcvt       s12, d0 };
                                                    *(r31 + 0xfffffffffffffff0) = r28;
                                                    objc_msgSend(@class(NSString), *((r29 - 0x88) + 0xffffffffffffff00));
                                                    r31 = r31 + 0x0;
                                                    r0 = *(r19 + r22);
                                                    r1 = *((r29 - 0xd0) + 0xffffffffffffff00);
                                                    objc_msgSend(r0, r1);
                                                    r2 = objc_msgSend(r24, *((r29 - 0xd8) + 0xffffffffffffff00)) + 0x1;
                                                    *((r29 - 0x80) + 0xffffffffffffff00) = objc_msgSend(@class(NSNumber), *((r29 - 0x68) + 0xffffffffffffff00));
                                            }
                                            else {
                                                    *(r31 + 0xfffffffffffffff0) = r20;
                                                    NSLog(@"Failed to find in cache: %@", r1);
                                                    r31 = r31 + 0x0;
                                            }
                                    }
                            }
                            else {
                                    s11 = s11 + 0x4014000000000000;
                                    s12 = s12 + 0x4014000000000000;
                            }
                            r28 = r28 + 0x1;
                            r26 = r26 + 0x2;
                    } while (r23 != r28);
            }
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_xStart));
    s0 = *(int32_t *)(r19 + r20);
    r23 = *((r29 - 0xe8) + 0xffffffffffffff00);
    if (s0 < 0x0) {
            r21 = (int64_t *)&r19->_player1Name;
            objc_msgSend(*r21, r23);
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + r20) = s0;
            COND = *(int32_t *)((r29 - 0xfc) + 0xffffffffffffff00) != 0x0;
            r8 = *((r29 - 0x108) + 0xffffffffffffff00);
            if (COND) {
                    if (!CPU_FLAGS & NE) {
                            r8 = r8;
                    }
                    else {
                            r8 = r21;
                    }
            }
            r21 = *((r29 - 0x98) + 0xffffffffffffff00);
            objc_msgSend(*r8, r23);
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + r20) = s0;
    }
    asm { fcvt       d8, s0 };
    objc_msgSend(*(r19 + *((r29 - 0xf8) + 0xffffffffffffff00)), r23);
    r0 = *(r19 + r20);
    *((r29 - 0x70) + 0xffffffffffffff00) = @selector(setPosition:);
    [r0 setPosition:r2];
    objc_msgSend(*(r19 + r20), r25);
    objc_msgSend(*(r19 + r20), r21);
    r0 = objc_msgSend(@class(NSNumber), *((r29 - 0x68) + 0xffffffffffffff00));
    r24 = r21;
    r21 = r25;
    r25 = r0;
    r0 = *(r19 + r22);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r27 = r0;
            asm { fcvt       d0, s10 };
            d0 = d9 * d0;
            d8 = d0 + d8;
            do {
                    r26 = @selector(intValue);
                    asm { fcvt       s8, d8 };
                    objc_msgSend(r25, r26) + 0x1;
                    r25 = objc_msgSend(@class(NSNumber), *((r29 - 0x68) + 0xffffffffffffff00));
                    asm { fcvt       d8, s8 };
                    objc_msgSend(r27, r23);
                    objc_msgSend(r27, *((r29 - 0x70) + 0xffffffffffffff00));
                    objc_msgSend(r27, r21);
                    objc_msgSend(r27, r24);
                    asm { fcvt       d0, s0 };
                    d0 = d10 * d9 * d0;
                    d8 = d0 + d8;
                    r0 = *(r19 + r22);
                    r0 = objc_msgSend(r0, r20);
                    r27 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1000080d0;

loc_1000080d0:
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;

loc_1000078a8:
    if ([r24 isEqualToString:r2] == 0x0) goto loc_1000078cc;

loc_1000078c0:
    if (*(r19 + r28) != 0x0) goto loc_10000788c;

loc_100007a6c:
    s12 = 0x0;
    goto loc_100007a70;

loc_1000078cc:
    r0 = [r19 getCachedTexture:r24 color:*((r29 - 0x78) + 0xffffffffffffff00)];
    r20 = r0;
    if (r0 == 0x0) {
            *(r31 + 0xfffffffffffffff0) = r24;
            NSLog(@"Failed to find name in cache: %@", @selector(getCachedTexture:color:));
            r31 = r31 + 0x0;
    }
    r0 = *(r19 + r28);
    if (r0 != 0x0) {
            [r0 removeFromParent];
            [*(r19 + r28) release];
            *(r19 + r28) = 0x0;
    }
    r25 = @selector(contentSize);
    r2 = r20;
    r0 = [CCSprite spriteWithTexture:r2];
    r0 = [r0 retain];
    *(r19 + r28) = r0;
    asm { fcvt       d0, s11 };
    [r0 setPosition:r2];
    objc_msgSend(*(r19 + r28), r25);
    asm { fcvt       s0, d1 };
    asm { fdiv       s0, s9, s0 };
    s0 = s0 * 0x4020000000000000;
    [*(r19 + r28) setScale:r2];
    d0 = 0x0;
    [*(r19 + r28) setAnchorPoint:r2];
    [*(r19 + r28) setVisible:0x1];
    [r19 addChild:r2 z:r3];
    if (r24 != 0x0) {
            r8 = objc_msgSend(r24, *((r29 - 0x80) + 0xffffffffffffff00));
            r0 = r19->_lastName;
            if (r8 != 0x0) {
                    r1 = *((r29 - 0x68) + 0xffffffffffffff00);
            }
            else {
                    r1 = *((r29 - 0x68) + 0xffffffffffffff00);
            }
            objc_msgSend(r0, r1);
    }
    goto loc_100007a10;
}

-(unsigned int)scoreboardColor {
    r0 = *(int32_t *)(int64_t *)&self->_scoreboardColor;
    return r0;
}

-(void)setScoreboardColor:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->_scoreboardColor = arg2;
    return;
}

@end