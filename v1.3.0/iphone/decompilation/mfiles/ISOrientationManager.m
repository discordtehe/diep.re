@implementation ISOrientationManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dacd0 != -0x1) {
            dispatch_once(0x1011dacd0, &var_28);
    }
    r0 = *0x1011dacc8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [NSMutableArray new];
            [r19 setViewsArray:r20];
            [r20 release];
            r20 = [[SupersonicLogManager sharedManager] retain];
            r21 = [[NSString stringWithFormat:@"%@"] retain];
            [r20 log:r21 withLevel:0x1 withTag:0x5];
            [r21 release];
            [r20 release];
            r20 = [ISOrientationPolicy alloc];
            r0 = [ISNAppOrientationHolder sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r20 initWithWithOrientation:[r0 appOrientation]];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_orientationPolicy));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(recentOrientations));
            *(int128_t *)(r19 + r8) = *0x100bf31d0;
            *(int128_t *)(0x8 + r19 + r8) = *0x100bf31d8;
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [[UIDevice currentDevice] retain];
            [r20 addObserver:r2 selector:r3 name:r4 object:r5];
            [r23 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)ironSourceOnChangedDeviceOrientation:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 object];
    r0 = [r0 retain];
    r20 = r0;
    r9 = [r0 orientation] - 0x1;
    if (r9 < 0x4) {
            r8 = 0x0;
            r9 = *(int32_t *)(0x100bf31e0 + r9 * 0x4);
            r10 = sign_extend_64(*(int32_t *)ivar_offset(recentOrientations));
            r10 = r19 + r10;
            *(int32_t *)r10 = r9;
            r11 = 0x1;
            r12 = &var_30;
            do {
                    r13 = *(int32_t *)(r12 + r8);
                    if (r13 != r9) {
                            *(int32_t *)(r10 + r11 * 0x4) = r13;
                            r11 = r11 + 0x1;
                    }
                    r8 = r8 + 0x4;
            } while (r8 != 0x10);
    }
    var_18 = **___stack_chk_guard;
    [r19 updateViewsOrientation];
    if (**___stack_chk_guard == var_18) {
            [r20 release];
    }
    else {
            __stack_chk_fail();
    }
    return;
}

-(int)preferredOrientation:(int)arg2 {
    r2 = arg2;
    r8 = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(recentOrientations));
    r9 = self + r9;
    goto loc_100706100;

loc_100706100:
    r0 = *(int32_t *)(r9 + r8 * 0x4);
    if ((r0 & r2) != 0x0) goto .l1;

loc_10070610c:
    r8 = r8 + 0x1;
    if (r8 < 0x3) goto loc_100706100;

loc_100706118:
    r0 = 0x0;
    return r0;

.l1:
    return r0;
}

-(void)updateOrientationPolicy:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    r22 = [[r20 orientationPolicy] retain];
    r23 = [r19 isEqual:r2];
    [r22 release];
    if ((r23 & 0x1) == 0x0) {
            objc_storeStrong((int64_t *)&r20->_orientationPolicy, r21);
            [r20 updateViewsOrientation];
    }
    [r19 release];
    return;
}

-(void)updateViewsOrientation {
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
    r0 = [self viewsArray];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(0x0 + r28 * 0x8) setNeedsLayout];
                            objc_msgSend(r24, r23);
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)insertView:(void *)arg2 {
    [arg2 retain];
    r0 = [self viewsArray];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r22 release];
    [r20 release];
    return;
}

-(void)removeView:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self viewsArray];
    r0 = [r0 retain];
    [r0 removeObject:arg2];
    [r22 release];
    [r0 release];
    return;
}

-(void)removeViews {
    r0 = [self viewsArray];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r19 release];
    return;
}

-(void *)orientationPolicy {
    r0 = self->_orientationPolicy;
    return r0;
}

-(void *)viewsArray {
    r0 = self->_viewsArray;
    return r0;
}

-(void)setViewsArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewsArray, arg2);
    return;
}

-(long long)currentDeviceOrientation {
    r0 = self->_currentDeviceOrientation;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewsArray, 0x0);
    objc_storeStrong((int64_t *)&self->_orientationPolicy, 0x0);
    return;
}

@end