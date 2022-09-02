@implementation GADTwoFingersLongPressGestureRecognizer

-(void)reset {
    [[&var_20 super] reset];
    self->_gestureState = 0x0;
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [[r29 - 0x50 super] touchesBegan:r19 withEvent:r20];
    if ([r21 state] == 0x5) goto loc_10081c404;

loc_10081c198:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_gestureState));
    if (*(r21 + r23) >= 0x2) goto loc_10081c2a0;

loc_10081c1ac:
    objc_initWeak(&stack[-104], r21);
    if ([r19 count] != 0x1) goto loc_10081c2b8;

loc_10081c1d4:
    r8 = *(r21 + r23);
    if (r8 != 0x1) {
            if (r8 == 0x0) {
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    [r0 doubleForKey:*0x100e9b9d8];
                    [r0 release];
                    *(r21 + r23) = 0x1;
                    r22 = &var_80 + 0x20;
                    objc_copyWeak(r22, &stack[-104]);
                    r0 = sub_100802050(0x0, &var_80);
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfTouchesTimer));
            }
            else {
                    r22 = [[NSDate alloc] init];
                    [r22 timeIntervalSince1970];
                    r21->_startTimestamp = d0;
                    [r22 release];
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    [r0 doubleForKey:*0x100e9b9c8];
                    [r0 release];
                    r22 = &var_A8 + 0x20;
                    objc_copyWeak(r22, &stack[-104]);
                    r0 = sub_100802050(0x0, &var_A8);
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_debugGestureTimer));
            }
    }
    else {
            *(r21 + r23) = 0x2;
            r22 = [[NSDate alloc] init];
            [r22 timeIntervalSince1970];
            r21->_startTimestamp = d0;
            [r22 release];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b9c8];
            [r0 release];
            r22 = &var_A8 + 0x20;
            objc_copyWeak(r22, &stack[-104]);
            r0 = sub_100802050(0x0, &var_A8);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_debugGestureTimer));
    }
    goto loc_10081c3cc;

loc_10081c3cc:
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    objc_destroyWeak(r22);
    goto loc_10081c3fc;

loc_10081c3fc:
    objc_destroyWeak(&stack[-104]);
    goto loc_10081c404;

loc_10081c404:
    [r20 release];
    [r19 release];
    return;

loc_10081c2b8:
    if ([r19 count] != 0x2) goto loc_10081c3e8;

loc_10081c2cc:
    *(r21 + r23) = 0x2;
    r22 = [[NSDate alloc] init];
    [r22 timeIntervalSince1970];
    r21->_startTimestamp = d0;
    [r22 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b9c8];
    [r0 release];
    r22 = &var_A8 + 0x20;
    objc_copyWeak(r22, &stack[-104]);
    r0 = sub_100802050(0x0, &var_A8);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_debugGestureTimer));
    goto loc_10081c3cc;

loc_10081c3e8:
    [r21 setState:0x5];
    goto loc_10081c3fc;

loc_10081c2a0:
    [r21 setState:0x5];
    goto loc_10081c404;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0xb0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r20 = self;
    r19 = [arg2 retain];
    [[&var_B0 super] touchesMoved:r19 withEvent:arg3];
    if ([r20 state] != 0x5) {
            r0 = [r19 allObjects];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 firstObject] retain];
            r23 = [[r21 lastObject] retain];
            r25 = [[r20 view] retain];
            [r22 locationInView:r25];
            [r25 release];
            r25 = [[r20 view] retain];
            [r22 previousLocationInView:r25];
            [r25 release];
            r25 = [[r20 view] retain];
            [r23 locationInView:r25];
            v10 = v0;
            v11 = v1;
            [r25 release];
            r24 = [[r20 view] retain];
            [r23 previousLocationInView:r24];
            v12 = v0;
            v13 = v1;
            [r24 release];
            if ((sub_10081c7cc() & 0x1) != 0x0 || sub_10081c7cc() != 0x0) {
                    [r20 setState:0x5];
                    [r20 invalidateDebugGestureTimers];
            }
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [[&var_30 super] touchesCancelled:r21 withEvent:arg3];
    [r21 release];
    [self setState:0x5];
    [self invalidateDebugGestureTimers];
    [self reset];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r19 = self;
    r21 = [arg2 retain];
    [[&var_50 super] touchesEnded:r21 withEvent:arg3];
    [r21 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b9c8];
    [r0 release];
    r0 = [NSDate alloc];
    r0 = [r0 init];
    [r0 timeIntervalSince1970];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_endTimestamp));
    *(r19 + r21) = d0;
    [r0 release];
    d9 = *(r19 + r21);
    d10 = r19->_startTimestamp;
    [r19 state];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_gestureState));
    if (d9 - d10 > d8) {
            asm { ccmp       x0, #0x0, #0x0, gt };
    }
    if (!CPU_FLAGS & NE && *(r19 + r20) == 0x2) {
            [r19 setState:0x3];
    }
    else {
            [r19 setState:0x5];
            *(r19 + r20) = 0x0;
    }
    [r19 invalidateDebugGestureTimers];
    return;
}

-(void)invalidateDebugGestureTimers {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_debugGestureTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfTouchesTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 invalidate];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_numberOfTouchesTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_debugGestureTimer, 0x0);
    return;
}

@end