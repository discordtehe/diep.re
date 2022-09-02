@implementation GADWiggleGestureRecognizer

-(void)reset {
    [[&var_20 super] reset];
    self->_gestureState = 0x0;
    self->_distanceMoved = 0x0;
    return;
}

-(bool)isMovementInYAxisWithCurrentPoint:(struct CGPoint)arg2 previousPoint:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    if (Abs(d1 - d3) > 0x4014000000000000) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    [[&var_30 super] touchesBegan:r22 withEvent:arg3];
    r20 = [arg2 count];
    [r22 release];
    if (r20 != 0x1) {
            [r19 setState:0x5];
    }
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    [[&var_30 super] touchesEnded:r21 withEvent:arg3];
    [r21 release];
    r0 = [r19 state];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_gestureState));
    if (r0 == 0x0 && *(r19 + r20) == 0x4) {
            [r19 setState:0x3];
    }
    else {
            [r19 setState:0x5];
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesCancelled:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    [self reset];
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [[&var_60 super] touchesMoved:r19 withEvent:arg3];
    if ([r20 state] != 0x5) {
            r22 = [[r19 anyObject] retain];
            r24 = [[r20 view] retain];
            [r22 locationInView:r24];
            [r24 release];
            [r22 release];
            r21 = [[r19 anyObject] retain];
            r22 = [[r20 view] retain];
            [r21 previousLocationInView:r22];
            [r22 release];
            [r21 release];
            if ([r20 isMovementInYAxisWithCurrentPoint:r22 previousPoint:r3] != 0x0) {
                    [r20 setState:0x5];
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_gestureState));
                    r9 = *(r20 + r8);
                    if (r9 <= 0x4) {
                            d0 = Abs(d8 - d9);
                            switch (sign_extend_64(*(int32_t *)(0x1008887e8 + r9 * 0x4)) + 0x1008887e8) {
                                case 0:
                                    if (d8 >= d9) {
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                            *(r20 + r9) = d0 + *(r20 + r9);
                                            *(r20 + r8) = 0x1;
                                    }
                                    else {
                                            [r20 setState:0x5];
                                    }
                                    break;
                                case 1:
                                    if (d8 >= d9) {
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                            *(r20 + r9) = d0 + *(r20 + r9);
                                            *(r20 + r8) = 0x1;
                                    }
                                    else {
                                            if (!CPU_FLAGS & A) {
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                                    if (*(r20 + r9) >= 0x402e000000000000) {
                                                            *(r20 + r9) = d0;
                                                            *(r20 + r8) = 0x2;
                                                    }
                                                    else {
                                                            [r20 setState:0x5];
                                                    }
                                            }
                                    }
                                    break;
                                case 2:
                                    if (d8 <= d9) {
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                            d0 = d0 + *(r20 + r9);
                                            *(r20 + r9) = d0;
                                            *(r20 + r8) = 0x2;
                                    }
                                    else {
                                            if (!CPU_FLAGS & L) {
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                                    if (*(r20 + r9) >= 0x402e000000000000) {
                                                            *(r20 + r9) = d0;
                                                            *(r20 + r8) = 0x3;
                                                    }
                                                    else {
                                                            [r20 setState:0x5];
                                                    }
                                            }
                                    }
                                    break;
                                case 3:
                                    if (d8 >= d9) {
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                            d0 = d0 + *(r20 + r9);
                                            *(r20 + r9) = d0;
                                            *(r20 + r8) = 0x3;
                                    }
                                    else {
                                            if (!CPU_FLAGS & A) {
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                                    if (*(r20 + r9) >= 0x402e000000000000) {
                                                            *(r20 + r9) = d0;
                                                            *(r20 + r8) = 0x4;
                                                    }
                                                    else {
                                                            [r20 setState:0x5];
                                                    }
                                            }
                                    }
                                    break;
                                case 4:
                                    if (d8 <= d9) {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_distanceMoved));
                                            *(r20 + r8) = d0 + *(r20 + r8);
                                    }
                                    else {
                                            if (CPU_FLAGS & GE) {
                                                    [r20 setState:0x5];
                                            }
                                    }
                                    break;
                            }
                    }
            }
    }
    [r19 release];
    return;
}

@end