@implementation FBBDTouchSignalValue

-(void *)initWithTouchId:(void *)arg2 withTouchEventAction:(int)arg3 withTouchType:(long long)arg4 withLocation:(struct CGPoint)arg5 withForce:(double)arg6 withMaxForce:(double)arg7 withMajorRadius:(double)arg8 withMajorRadiusTolerance:(double)arg9 withAzimuthAngle:(double)arg10 withMinDistanceBetweenTouches:(double)arg11 {
    memcpy(&r5, &arg5, 0x8);
    r31 = r31 - 0x90;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r23 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_80 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_touchId, r23);
            *(int32_t *)(int64_t *)&r20->_touchEventAction = r22;
            r20->_touchType = r21;
            d0 = *double_value_1000;
            d1 = d15 * d0;
            asm { frinta     d1, d1 };
            asm { fdiv       d1, d1, d0 };
            r20->_force = d1;
            d1 = d14 * d0;
            asm { frinta     d1, d1 };
            asm { fdiv       d1, d1, d0 };
            r20->_majorRadius = d1;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_location));
            r8 = r20 + r8;
            d1 = d13 * d0;
            asm { frinta     d1, d1 };
            asm { fdiv       d1, d1, d0 };
            d2 = d12 * d0;
            asm { frinta     d2, d2 };
            asm { fdiv       d2, d2, d0 };
            *(int128_t *)r8 = d1;
            *(int128_t *)(r8 + 0x8) = d2;
            d1 = d11 * d0;
            asm { frinta     d1, d1 };
            asm { fdiv       d1, d1, d0 };
            r20->_azimuthAngle = d1;
            d1 = d10 * d0;
            asm { frinta     d1, d1 };
            asm { fdiv       d1, d1, d0 };
            r20->_maxForce = d1;
            asm { frinta     d1, d1 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_majorRadiusTolerance));
            asm { fdiv       d0, d1, d0 };
            *(r20 + r8) = d0;
            r20->_minDistanceBetweenTouches = d8;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEqualToTouch:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = r20->_touchId;
    r21 = [[r0 touchId] retain];
    if ([r22 isEqualToNumber:r21] != 0x0 && *(int32_t *)(int64_t *)&r20->_touchEventAction == [r19 touchEventAction]) {
            d8 = r20->_majorRadius;
            [r19 majorRadius];
            if (d8 == d0 && r20->_touchType == [r19 touchType]) {
                    d8 = r20->_force;
                    [r19 force];
                    if (d8 == d0) {
                            d8 = r20->_maxForce;
                            [r19 maxForce];
                            if (d8 == d0) {
                                    d8 = r20->_majorRadiusTolerance;
                                    [r19 majorRadiusTolerance];
                                    if (d8 == d0) {
                                            d8 = r20->_azimuthAngle;
                                            [r19 azimuthAngle];
                                            if (d8 == d0) {
                                                    r20 = [r20 isDistanceWithValue:r19 lessThan:r3];
                                                    [r21 release];
                                                    if ((r20 & 0x1) != 0x0) {
                                                            r20 = 0x1;
                                                    }
                                                    else {
                                                            r20 = 0x0;
                                                    }
                                            }
                                            else {
                                                    [r21 release];
                                                    r20 = 0x0;
                                            }
                                    }
                                    else {
                                            [r21 release];
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    [r21 release];
                                    r20 = 0x0;
                            }
                    }
                    else {
                            [r21 release];
                            r20 = 0x0;
                    }
            }
            else {
                    [r21 release];
                    r20 = 0x0;
            }
    }
    else {
            [r21 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)touchValueDict {
    r31 = r31 - 0x130;
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
    var_60 = **___stack_chk_guard;
    r0 = @class(NSNumber);
    r2 = *(int32_t *)(int64_t *)&self->_touchEventAction;
    var_118 = [[r0 numberWithInt:r2] retain];
    var_120 = [[NSNumber numberWithDouble:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-272] forKeys:&var_110 count:0x2];
    r26 = [r0 retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithDouble:&stack[-272]];
    r28 = [r0 retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithDouble:&stack[-272]];
    r19 = [r0 retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithDouble:&stack[-272]];
    r25 = [r0 retain];
    r20 = [[NSNumber numberWithInteger:self->_touchType] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_A8 forKeys:&var_F0 count:0x9];
    r21 = [r0 retain];
    [r20 release];
    [r25 release];
    [r19 release];
    [r28 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [var_120 release];
    [var_118 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_touchId, 0x0);
    return;
}

-(bool)isDistanceWithValue:(void *)arg2 lessThan:(double)arg3 {
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
    r21 = [arg2 retain];
    [self location];
    [r21 location];
    [self location];
    [r21 location];
    r0 = [r21 release];
    d0 = (d9 - d0) * (d9 - d0) + (d9 - d10) * (d9 - d10);
    asm { fsqrt      d0, d0 };
    if (d0 - d8 < 0x3e80000000000000) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)touchId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_touchId)), 0x0);
    return r0;
}

-(struct CGPoint)location {
    r0 = self;
    return r0;
}

-(int)touchEventAction {
    r0 = *(int32_t *)(int64_t *)&self->_touchEventAction;
    return r0;
}

-(double)majorRadius {
    r0 = self;
    return r0;
}

-(double)force {
    r0 = self;
    return r0;
}

-(double)majorRadiusTolerance {
    r0 = self;
    return r0;
}

-(double)maxForce {
    r0 = self;
    return r0;
}

-(long long)touchType {
    r0 = self->_touchType;
    return r0;
}

-(double)azimuthAngle {
    r0 = self;
    return r0;
}

@end