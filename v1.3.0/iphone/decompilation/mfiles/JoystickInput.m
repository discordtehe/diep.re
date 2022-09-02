@implementation JoystickInput

-(void)setAxis:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int128_t *)(self + 0x68) = d0;
    *(int128_t *)(self + 0x70) = d1;
    *(int128_t *)(self + 0x58) = *(int128_t *)(self + 0x68);
    [self updateAxisWithNewAxis:r2 priority:r3];
    return;
}

-(float)totalRadius {
    r0 = self;
    return r0;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(self + 0x38) = d0;
    *(self + 0x40) = d1;
    [*(self + 0x28) onPositionChanged:r2];
    if (*(int128_t *)(r19 + 0x38) == 0xc1e0000000000000) {
            asm { fccmp      d1, d0, #0x0, eq };
    }
    if (CPU_FLAGS & E) {
            [*(r19 + 0x80) removeAllObjects];
    }
    return;
}

-(void)setEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x78) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + 0x78) = r2;
            [*(r0 + 0x80) removeAllObjects];
            [*(r19 + 0x28) onSetEnabled:r2];
            r0 = [CCDirector sharedDirector];
            r0 = [r0 scheduler];
            if (r2 != 0x0) {
                    [r0 scheduleUpdateForTarget:r2 priority:r3 paused:r4];
            }
            else {
                    [r0 unscheduleAllForTarget:r2];
            }
    }
    return;
}

-(void *)initWithPosition:(struct CGPoint)arg2 minRadius:(float)arg3 maxRadius:(float)arg4 viewDelegate:(void *)arg5 joystickType:(int)arg6 updateBlock:(void *)arg7 maxDetectionFactor:(float)arg8 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r4;
    r21 = r3;
    r22 = r2;
    v8 = v1;
    v9 = v0;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(r19 + 0x48) = s12;
            *(int32_t *)(r19 + 0x4c) = s11;
            *(r19 + 0x50) = 0x0;
            *(int8_t *)(r19 + 0x78) = 0x0;
            *(r19 + 0x28) = [r22 retain];
            r8 = *_CGPointZero;
            *(int128_t *)(r19 + 0x58) = *(int128_t *)r8;
            *(int128_t *)(r19 + 0x68) = *(int128_t *)r8;
            *(int32_t *)(r19 + 0x88) = s10;
            *(r19 + 0x80) = [[NSMutableArray array] retain];
            *(int32_t *)(r19 + 0x8) = r21;
            if (r21 <= 0x1) {
                    [*(r19 + 0x28) setDeadZoneSize:r2];
            }
            if (r20 != 0x0) {
                    *(r19 + 0x30) = [r20 copy];
            }
            *(r19 + 0x8c) = *0x100b9afb8;
            [r19 setPosition:r2];
            [r19 setEnabled:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x28) onCleanup];
    [self setEnabled:0x0];
    [*(self + 0x30) release];
    [*(self + 0x28) release];
    [*(self + 0x80) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)update:(double)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x80) count] == 0x0) {
            r8 = *(int32_t *)(r19 + 0x8);
            if (r8 != 0x0) {
                    if (r8 == 0x1 && *(int8_t *)word_1011dea88 == 0x0) {
                            [r19 updateAxisWithNewAxis:r2 priority:r3];
                    }
            }
            else {
                    if (*(int32_t *)0x1011dea80 <= 0x0) {
                            [r19 updateAxisWithNewAxis:r2 priority:r3];
                    }
            }
    }
    return;
}

-(void)updateAxisWithTouchPosition:(struct CGPoint)arg2 priority:(int)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = self;
    d3 = *(int128_t *)(self + 0x38);
    d2 = *(int128_t *)(self + 0x40);
    if (d3 == 0xc1e0000000000000) {
            asm { fccmp      d2, d4, #0x0, eq };
    }
    if (CPU_FLAGS & E || d3 == 0x0 && d2 == 0x0) {
            *(int128_t *)(r20 + 0x38) = d0;
            *(int128_t *)(r20 + 0x40) = d1;
    }
    sub_1003115a8();
    asm { fcvt       d1, s1 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s0, d0 };
    sub_10035d730();
    sub_10035d724();
    v10 = v0;
    sub_1005c39ac();
    asm { fcvt       d11, s10 };
    d0 = d0 * d11;
    d1 = d1 * d11;
    r0 = [r21 onDesiredAxisChanged:r2];
    s0 = *(int32_t *)0x100b9afac;
    if (s10 < s0 && *(int32_t *)(r20 + 0x8) == 0x0) {
            r1 = @selector(onDesiredAxisChanged:);
            r0 = loc_10031164c(r0, r1, r2, r3, r4);
            asm { fcvt       s8, d0 };
            d0 = *(int128_t *)(r20 + 0x58);
            d1 = *(int128_t *)(r20 + 0x60);
            loc_10031164c(r0, r1, r2, r3, r4);
            asm { fcvt       s0, d0 };
            asm { fcvt       d0, s0 };
            sub_100311614();
    }
    else {
            s0 = 0x3fe0000000000000;
            if (s10 < s0) {
                    if (*(int32_t *)(r20 + 0x8) == 0x1) {
                            r1 = @selector(onDesiredAxisChanged:);
                            r0 = loc_10031164c(r0, r1, r2, r3, r4);
                            asm { fcvt       s8, d0 };
                            d0 = *(int128_t *)(r20 + 0x58);
                            d1 = *(int128_t *)(r20 + 0x60);
                            loc_10031164c(r0, r1, r2, r3, r4);
                            asm { fcvt       s0, d0 };
                            asm { fcvt       d0, s0 };
                            sub_100311614();
                    }
            }
    }
    sub_10035d730();
    sub_10035d724();
    sub_1005c39ac();
    asm { fcvt       d2, s10 };
    *(int128_t *)(r20 + 0x68) = d0 * d2;
    *(int128_t *)(r20 + 0x70) = d1 * d2;
    r8 = &@selector(updateMappedKeysWithDesiredAxis);
    if (*(int32_t *)(r20 + 0x8) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(createMappedMouseButtonClick);
            }
            else {
                    r8 = &@selector(updateMappedKeysWithDesiredAxis);
            }
    }
    objc_msgSend(r20, *r8);
    [r20 updateAxisWithNewAxis:r2 priority:r3];
    return;
}

-(float)convertToPositiveRadians:(float)arg2 {
    r0 = self;
    asm { fcvt       d1, s0 };
    asm { fcvt       s1, d1 };
    if (s0 < 0x0) {
            asm { fcsel      s0, s1, s0, mi };
    }
    return r0;
}

-(void)updateMappedKeysWithDesiredAxis {
    r1 = _cmd;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = sub_1003115a8();
    asm { fcvt       s0, d0 };
    if (s0 > *(int32_t *)0x100b9afa8) {
            loc_10031164c(r0, r1, r2, r3, r4);
            asm { fcvt       s0, d0 };
            [r19 convertToPositiveRadians:r2];
            *(int32_t *)0x1011dea78 = -s0;
            *(int32_t *)0x1011dea80 = 0x3f666666;
            *(int8_t *)0x1011deb85 = 0x1;
    }
    else {
            *(int32_t *)0x1011dea80 = 0x0;
    }
    return;
}

-(void)createMappedMouseButtonClick {
    r1 = _cmd;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = sub_1003115a8();
    asm { fcvt       s8, d0 };
    if (s8 > *(int32_t *)0x100b9afa8) {
            loc_10031164c(r0, r1, r2, r3, r4);
            asm { fcvt       s0, d0 };
            [r19 convertToPositiveRadians:r2];
            *(int32_t *)0x1011dea7c = -s0;
            *(int32_t *)0x1011dea84 = s8;
            *(int8_t *)0x1011dea88 = 0x1;
    }
    else {
            *(int8_t *)0x1011dea88 = 0x0;
            *(int32_t *)0x1011dea84 = 0x0;
    }
    return;
}

-(void)touchMoved:(void *)arg2 point:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [self touchMoved:r2 point:r3 variationPriority:r4];
    return;
}

-(bool)isTouchPointInsideJoystick:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v9 = v0;
    s0 = *(int32_t *)(r0 + 0x88);
    if (s0 >= 0x0) {
            [[CCDirector sharedDirector] convertToGL:r2];
            sub_1003115c4();
            r0 = [r19 totalRadius];
            asm { fcvt       d0, s0 };
            if (d8 < d0) {
                    if (CPU_FLAGS & BE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)touchBegan:(void *)arg2 point:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x78) != 0x0) {
            v8 = v1;
            v9 = v0;
            r20 = r0;
            if (*(int128_t *)(r0 + 0x38) == 0xc1e0000000000000) {
                    asm { fccmp      d1, d0, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    r19 = r2;
                    if ([r20 isTouchPointInsideJoystick:r2] != 0x0 && ([*(r20 + 0x80) containsObject:r2] & 0x1) == 0x0) {
                            [*(r20 + 0x80) addObject:r2];
                    }
                    [r20 touchMoved:r2 point:r3 variationPriority:r4];
            }
    }
    return;
}

-(void)updateAxisWithNewAxis:(struct CGPoint)arg2 priority:(int)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = self;
    if (d0 == *(int128_t *)*_CGPointZero) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            *(r20 + 0x68) = d0;
            *(r20 + 0x70) = d1;
    }
    else {
            q0 = *(int128_t *)(r20 + 0x58);
            asm { dup        v1.2d, x8 };
            v0 = v0 * v1;
            *(int128_t *)(r20 + 0x68) = q0;
    }
    [*(r20 + 0x28) onDesiredAxisChanged:r2];
    if (*(r20 + 0x30) != 0x0) {
            r21 = r20 + 0x58;
            sub_1003115c4();
            asm { fcvt       s9, d0 };
            sub_1003115a8();
            r0 = sub_1003115a8();
            s1 = *(int32_t *)(r21 + 0xfffffffffffffff8);
            if (s1 >= s9) {
                    asm { fcvt       s1, d8 };
                    asm { fcvt       s0, d0 };
                    if (s1 > *(int32_t *)0x100b9afb0 && s0 < *(int32_t *)0x100b9afb0) {
                            *(int128_t *)r21 = *(int128_t *)(r20 + 0x68);
                    }
                    else {
                            if (s1 != 0x3ff0000000000000) {
                                    asm { fccmp      s0, s2, #0x0, ne };
                            }
                            if (!CPU_FLAGS & E) {
                                    s1 = *(int128_t *)(r20 + 0x48);
                                    asm { fdiv       s1, s1, s2 };
                                    if (s1 >= s0) {
                                            r1 = @selector(onDesiredAxisChanged:);
                                            r0 = loc_10031164c(r0, r1, r2, r3, r4);
                                            asm { fcvt       s8, d0 };
                                            loc_10031164c(r0, r1, r2, r3, r4);
                                            asm { fcvt       s0, d0 };
                                            asm { fabd       s0, s8, s0 };
                                            if (s0 > *(int32_t *)(r20 + 0x54)) {
                                                    *(int128_t *)r21 = *(int128_t *)(r20 + 0x68);
                                            }
                                            else {
                                                    if (r19 == 0x1) {
                                                            if (!CPU_FLAGS & E) {
                                                                    r19 = r19;
                                                            }
                                                            else {
                                                                    r19 = 0x0;
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            if (r19 == 0x1) {
                                                    if (!CPU_FLAGS & E) {
                                                            r19 = r19;
                                                    }
                                                    else {
                                                            r19 = 0x0;
                                                    }
                                            }
                                    }
                            }
                            else {
                                    *(int128_t *)r21 = *(int128_t *)(r20 + 0x68);
                            }
                    }
            }
            else {
                    *(int128_t *)r21 = *(int128_t *)(r20 + 0x68);
            }
            r0 = *(r20 + 0x30);
            r2 = *(r0 + 0x10);
            (r2)(r0, r19, r2);
    }
    return;
}

-(void)touchEnded:(void *)arg2 point:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    return;
}

-(void)touchMoved:(void *)arg2 point:(struct CGPoint)arg3 variationPriority:(int)arg4 {
    memcpy(&r3, &arg3, 0x8);
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
    r19 = r3;
    v8 = v1;
    v9 = v0;
    r21 = arg2;
    r20 = self;
    if ([*(self + 0x80) count] != 0x0) {
            r22 = @selector(count);
            r23 = *(r20 + 0x80);
            r2 = objc_msgSend(r23, r22) - 0x1;
            if ([r23 objectAtIndex:r2] == r21) {
                    if (*(int8_t *)(r20 + 0x94) != 0x0) {
                            *(int8_t *)(r20 + 0x94) = 0x0;
                            r21 = @selector(sharedDirector);
                            r0 = objc_msgSend(@class(CCDirector), r21);
                            r0 = [r0 scheduler];
                            r2 = r20;
                            [r0 pauseTarget:r2];
                    }
                    else {
                            r21 = @selector(sharedDirector);
                    }
                    [objc_msgSend(@class(CCDirector), r21) convertToGL:r2];
                    [r20 updateAxisWithTouchPosition:r2 priority:r3];
            }
    }
    return;
}

-(void)stopFiring {
    *(int8_t *)0x1011dea88 = 0x0;
    *(int32_t *)0x1011dea84 = 0x0;
    return;
}

-(void)stopMoving {
    *(int32_t *)0x1011dea80 = 0x0;
    return;
}

-(void)onInputStopped {
    [self updateAxisWithTouchPosition:r2 priority:r3];
    return;
}

-(void)clearTouches {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x80) removeAllObjects];
    r8 = *(int32_t *)(r19 + 0x8);
    if (r8 == 0x0) goto loc_10000d57c;

loc_10000d560:
    if (r8 != 0x1 || *(int8_t *)(r19 + 0x21) != 0x0) goto .l1;

loc_10000d570:
    r1 = @selector(stopFiring);
    goto loc_10000d58c;

loc_10000d58c:
    objc_msgSend(r19, r1);
    return;

.l1:
    return;

loc_10000d57c:
    if (*(int8_t *)(r19 + 0x20) == 0x0) goto .l1;

loc_10000d584:
    r1 = @selector(stopMoving);
    goto loc_10000d58c;
}

-(void *)viewDelegate {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setViewDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(struct CGPoint)position {
    r0 = self;
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x78);
    return r0;
}

-(float)decayTime {
    r0 = self;
    return r0;
}

-(void)setDecayTime:(float)arg2 {
    *(int32_t *)(self + 0x8c) = s0;
    return;
}

-(void)setMaxDetectionFactor:(float)arg2 {
    *(int32_t *)(self + 0x88) = s0;
    return;
}

-(float)maxDetectionFactor {
    r0 = self;
    return r0;
}

-(struct CGPoint)axis {
    r0 = self;
    return r0;
}

-(float)minAxisVariationStep {
    r0 = self;
    return r0;
}

-(float)minAngleVariationStep {
    r0 = self;
    return r0;
}

-(void)setMinAxisVariationStep:(float)arg2 {
    *(int32_t *)(self + 0x50) = s0;
    return;
}

-(void)setMinAngleVariationStep:(float)arg2 {
    *(int32_t *)(self + 0x54) = s0;
    return;
}

-(bool)stopOnRelease {
    r0 = *(int8_t *)(self + 0x20);
    return r0;
}

-(void)setStopOnRelease:(bool)arg2 {
    *(int8_t *)(self + 0x20) = arg2;
    return;
}

-(bool)shootOnRelease {
    r0 = *(int8_t *)(self + 0x21);
    return r0;
}

-(void)setShootOnRelease:(bool)arg2 {
    *(int8_t *)(self + 0x21) = arg2;
    return;
}

-(struct CGPoint)joystickFollowTarget {
    r0 = self;
    return r0;
}

-(void)setJoystickFollowTarget:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x10) = d0;
    *(self + 0x18) = d1;
    return;
}

-(int)joystickType {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void)setJoystickType:(int)arg2 {
    *(int32_t *)(self + 0x8) = arg2;
    return;
}

-(void)setTotalRadius:(float)arg2 {
    *(int32_t *)(self + 0x98) = s0;
    return;
}

@end