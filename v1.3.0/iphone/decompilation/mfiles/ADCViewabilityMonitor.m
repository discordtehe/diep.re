@implementation ADCViewabilityMonitor

-(void *)initWithSessionID:(void *)arg2 advancedMeasurementEnabled:(bool)arg3 viewabilityUpdateHandler:(void *)arg4 {
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
    r29 = &saved_fp;
    r23 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_polling = 0x1;
            *(int8_t *)(int64_t *)&r21->_advancedMeasurement = r23;
            objc_storeStrong((int64_t *)&r21->_sessionID, r22);
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_handler));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_lastViewablePercentage = 0x0;
            r21->_lastViewableVolume = 0x0;
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 setCategory:**0x100e60000 withOptions:0x0 error:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(onApplicationWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(onApplicationDidBecomeActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(double)checkCurrentViewablePercentage {
    r0 = self;
    r31 = r31 - 0x80;
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
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r19->_polling != 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 outputVolume];
            v8 = v0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_advancedMeasurement));
            r8 = *(int8_t *)(r19 + r8);
            if (r8 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = &@selector(advancedVisibilityCheck);
                    }
                    else {
                            r8 = &@selector(standardVisibilityCheck);
                    }
            }
            r0 = objc_msgSend(r19, *r8);
            v9 = v0;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_lastViewablePercentage));
            if (d9 != *(r19 + r23)) {
                    r24 = *(int32_t *)ivar_offset(_lastViewableVolume);
                    asm { fcvt       d10, s8 };
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    r21 = [[r0 getSession:r19->_sessionID] retain];
                    [r0 release];
                    r22 = [[r21 identifier] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor checkCurrentViewablePercentage]" line:0x36 withFormat:@"Ad session with id: %@ detecting viewable percentage change from %f to %f percent"];
                    [r22 release];
                    r0 = r19->_handler;
                    (*(r0 + 0x10))(r0);
                    *(r19 + r23) = d9;
                    *(r19 + (r24 << @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:))) = d10;
                    r0 = [r21 release];
            }
            else {
                    asm { fcvt       d10, s8 };
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_lastViewableVolume));
                    if (*(r19 + r24) != d10) {
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            r21 = [[r0 getSession:r19->_sessionID] retain];
                            [r0 release];
                            r22 = [[r21 identifier] retain];
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor checkCurrentViewablePercentage]" line:0x36 withFormat:@"Ad session with id: %@ detecting viewable percentage change from %f to %f percent"];
                            [r22 release];
                            r0 = r19->_handler;
                            (*(r0 + 0x10))(r0);
                            *(r19 + r23) = d9;
                            *(r19 + (r24 << @selector(fullLogWithModuleID:isPublic:level:function:line:withFormat:))) = d10;
                            r0 = [r21 release];
                    }
            }
    }
    else {
            v9 = 0x0;
    }
    return r0;
}

-(void)getSubviewHiddenRects:(void *)arg2 forRect:(struct CGRect)arg3 forView:(void *)arg4 forWindow:(void *)arg5 superViewWindowRect:(struct CGRect)arg6 ignoreIfContainedInSuperview:(bool)arg7 {
    r7 = arg7;
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    r31 = r31 + 0xffffffffffffff60 - 0x1b0;
    r25 = r5;
    var_1D0 = d6;
    stack[-456] = d7;
    var_1E0 = d4;
    stack[-472] = d5;
    var_178 = d2;
    stack[-368] = d3;
    var_188 = d0;
    stack[-384] = d1;
    r22 = self;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r21 = [arg2 retain];
    r26 = [r3 retain];
    r27 = [r4 retain];
    var_1B8 = r21;
    if (r27 != 0x0 && r21 != 0x0 && r26 != 0x0) {
            r0 = [r26 subviews];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r26 subviews];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 count];
                    [r0 release];
                    [r20 release];
                    if (r24 != 0x0) {
                            v0 = 0x0;
                            *(int128_t *)(&stack[-567] + 0xff) = q0;
                            *(int128_t *)(&stack[-583] + 0xff) = q0;
                            var_158 = q0;
                            var_228 = r26;
                            r0 = [r26 subviews];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_220 = r1;
                            r26 = objc_msgSend(r0, r1);
                            if (r26 != 0x0) {
                                    r23 = *var_158;
                                    var_1EC = r25;
                                    var_200 = r28;
                                    stack[-504] = r27;
                                    do {
                                            r19 = 0x0;
                                            do {
                                                    if (*var_158 != r23) {
                                                            objc_enumerationMutation(r28);
                                                    }
                                                    r24 = *(var_160 + r19 * 0x8);
                                                    if (([r22 isViewHidden:r24] & 0x1) == 0x0) {
                                                            r0 = [r24 superview];
                                                            r29 = r29;
                                                            r20 = [r0 retain];
                                                            [r24 frame];
                                                            [r20 convertRect:r2 toView:r3];
                                                            v8 = v0;
                                                            v9 = v1;
                                                            v10 = v2;
                                                            v11 = v3;
                                                            r0 = [r20 release];
                                                            if (r25 != 0x0) {
                                                                    r0 = CGRectContainsRect(r0, @selector(convertRect:toView:));
                                                                    if ((r0 & 0x1) == 0x0) {
                                                                            r0 = CGRectIntersection(r0, @selector(convertRect:toView:));
                                                                            v12 = v0;
                                                                            v13 = v1;
                                                                            v14 = v2;
                                                                            v15 = v3;
                                                                            if ((CGRectIsNull(r0) & 0x1) == 0x0) {
                                                                                    r25 = [NSStringFromCGRect() retain];
                                                                                    r27 = [NSStringFromCGRect() retain];
                                                                                    v0 = v8;
                                                                                    v1 = v9;
                                                                                    v2 = v10;
                                                                                    v3 = v11;
                                                                                    r0 = NSStringFromCGRect();
                                                                                    r29 = r29;
                                                                                    r28 = [r0 retain];
                                                                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor getSubviewHiddenRects:forRect:forView:forWindow:superViewWindowRect:ignoreIfContainedInSuperview:]" line:0x181 withFormat:@"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@"];
                                                                                    [r28 release];
                                                                                    [r27 release];
                                                                                    [r25 release];
                                                                                    r2 = r24;
                                                                                    if (([r22 isViewTransparent:r2] & 0x1) != 0x0) {
                                                                                            r7 = @"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@";
                                                                                            r6 = 0x181;
                                                                                            r0 = [r24 clipsToBounds];
                                                                                            r25 = var_1EC;
                                                                                            r28 = var_200;
                                                                                            r27 = stack[-504];
                                                                                            if (r0 != 0x0) {
                                                                                                    r7 = @"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@";
                                                                                                    [r22 getSubviewHiddenRectsInsideOfSuperviewBounds:var_1B8 forRect:r24 forView:r27 forWindow:"-[ADCViewabilityMonitor getSubviewHiddenRects:forRect:forView:forWindow:superViewWindowRect:ignoreIfContainedInSuperview:]" superViewWindowRect:0x181];
                                                                                            }
                                                                                    }
                                                                                    else {
                                                                                            r7 = @"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@";
                                                                                            r6 = 0x181;
                                                                                            v0 = v12;
                                                                                            v1 = v13;
                                                                                            v2 = v14;
                                                                                            v3 = v15;
                                                                                            r0 = [NSValue valueWithCGRect:r2];
                                                                                            r29 = r29;
                                                                                            [r0 retain];
                                                                                            [var_1B8 addObject:r2];
                                                                                            [r20 release];
                                                                                            r25 = var_1EC;
                                                                                            r28 = var_200;
                                                                                            r27 = stack[-504];
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    r0 = CGRectIntersection(r0, @selector(convertRect:toView:));
                                                                    v12 = v0;
                                                                    v13 = v1;
                                                                    v14 = v2;
                                                                    v15 = v3;
                                                                    if ((CGRectIsNull(r0) & 0x1) == 0x0) {
                                                                            r25 = [NSStringFromCGRect() retain];
                                                                            r27 = [NSStringFromCGRect() retain];
                                                                            v0 = v8;
                                                                            v1 = v9;
                                                                            v2 = v10;
                                                                            v3 = v11;
                                                                            r0 = NSStringFromCGRect();
                                                                            r29 = r29;
                                                                            r28 = [r0 retain];
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor getSubviewHiddenRects:forRect:forView:forWindow:superViewWindowRect:ignoreIfContainedInSuperview:]" line:0x181 withFormat:@"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@"];
                                                                            [r28 release];
                                                                            [r27 release];
                                                                            [r25 release];
                                                                            r2 = r24;
                                                                            if (([r22 isViewTransparent:r2] & 0x1) != 0x0) {
                                                                                    r7 = @"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@";
                                                                                    r6 = 0x181;
                                                                                    r0 = [r24 clipsToBounds];
                                                                                    r25 = var_1EC;
                                                                                    r28 = var_200;
                                                                                    r27 = stack[-504];
                                                                                    if (r0 != 0x0) {
                                                                                            r7 = @"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@";
                                                                                            [r22 getSubviewHiddenRectsInsideOfSuperviewBounds:var_1B8 forRect:r24 forView:r27 forWindow:"-[ADCViewabilityMonitor getSubviewHiddenRects:forRect:forView:forWindow:superViewWindowRect:ignoreIfContainedInSuperview:]" superViewWindowRect:0x181];
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    r7 = @"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@";
                                                                                    r6 = 0x181;
                                                                                    v0 = v12;
                                                                                    v1 = v13;
                                                                                    v2 = v14;
                                                                                    v3 = v15;
                                                                                    r0 = [NSValue valueWithCGRect:r2];
                                                                                    r29 = r29;
                                                                                    [r0 retain];
                                                                                    [var_1B8 addObject:r2];
                                                                                    [r20 release];
                                                                                    r25 = var_1EC;
                                                                                    r28 = var_200;
                                                                                    r27 = stack[-504];
                                                                            }
                                                                    }
                                                            }
                                                            if (([r24 clipsToBounds] & 0x1) == 0x0) {
                                                                    [r22 getSubviewHiddenRects:var_1B8 forRect:r24 forView:r27 forWindow:[r22 isViewTransparent:r24] ^ 0x1 superViewWindowRect:r6 ignoreIfContainedInSuperview:r7];
                                                            }
                                                    }
                                                    r19 = r19 + 0x1;
                                            } while (r19 < r26);
                                            r26 = objc_msgSend(r28, var_220);
                                    } while (r26 != 0x0);
                            }
                            [r28 release];
                            r26 = var_228;
                    }
            }
            else {
                    [r20 release];
            }
    }
    [r27 release];
    [r26 release];
    [var_1B8 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            __stack_chk_fail();
    }
    return;
}

-(void)getSuperviewHiddenRects:(void *)arg2 forRect:(struct CGRect)arg3 forView:(void *)arg4 forWindow:(void *)arg5 checkNonClippingSubViews:(bool)arg6 {
    r6 = arg6;
    r5 = arg5;
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x140;
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
    r22 = r5;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    if (r19 == 0x0) goto loc_1002337a4;

loc_10023371c:
    r2 = r21;
    if (([r20 isEqual:r2] & 0x1) != 0x0) goto loc_1002337a4;

loc_100233734:
    if (r20 == 0x0 || r21 == 0x0) goto loc_100233758;

loc_10023373c:
    r28 = @selector(isViewHidden:);
    r2 = r20;
    if (objc_msgSend(r23, r28) == 0x0) goto loc_1002337e8;

loc_100233758:
    r0 = [NSValue valueWithCGRect:r2];
    goto loc_100233780;

loc_100233780:
    [r0 retain];
    [r19 addObject:r2];
    r0 = r22;
    goto loc_1002337a0;

loc_1002337a0:
    [r0 release];
    goto loc_1002337a4;

loc_1002337a4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1002337e8:
    r0 = [r20 superview];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1002339e8;

loc_100233810:
    if ([r20 clipsToBounds] == 0x0) goto loc_100233a80;

loc_100233828:
    r0 = [r20 superview];
    r29 = r29;
    r24 = [r0 retain];
    [r20 frame];
    [r24 convertRect:r2 toView:r3];
    v12 = v0;
    v13 = v1;
    v14 = v2;
    v15 = v3;
    r0 = [r24 release];
    v0 = v12;
    v1 = v13;
    v2 = v14;
    v3 = v15;
    r0 = CGRectContainsRect(r0, r1);
    if ((r0 & 0x1) != 0x0) goto loc_100233a80;

loc_1002338a4:
    var_E0 = @selector(isViewHidden:);
    CGRectIntersection(r0, @selector(convertRect:toView:));
    v12 = v11;
    v13 = v10;
    v14 = v9;
    v15 = v8;
    r26 = [NSStringFromCGRect() retain];
    r27 = [NSStringFromCGRect() retain];
    r0 = NSStringFromCGRect();
    r29 = r29;
    r28 = [r0 retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor getSuperviewHiddenRects:forRect:forView:forWindow:checkNonClippingSubViews:]" line:0x122 withFormat:@"Found superview with clipping! Super view rect = %@, windowRectToCheck = %@, intersection rect = %@"];
    [r28 release];
    [r27 release];
    if ((CGRectIsNull([r26 release]) & 0x1) == 0x0) goto loc_100233a14;

loc_1002339bc:
    r0 = [NSValue valueWithCGRect:0x0];
    goto loc_100233780;

loc_100233a14:
    r7 = @"Found superview with clipping! Super view rect = %@, windowRectToCheck = %@, intersection rect = %@";
    r6 = 0x122;
    r5 = "-[ADCViewabilityMonitor getSuperviewHiddenRects:forRect:forView:forWindow:checkNonClippingSubViews:]";
    v0 = v12;
    v1 = v13;
    v2 = v14;
    v3 = v15;
    r0 = [r23 subtractRect:0x0 fromRect:0x0];
    r29 = r29;
    r24 = [r0 retain];
    [r19 addObjectsFromArray:r24];
    [r24 release];
    v11 = v12;
    v10 = v13;
    v9 = v14;
    v8 = v15;
    r28 = var_E0;
    goto loc_100233a80;

loc_100233a80:
    r25 = @selector(superview);
    r0 = objc_msgSend(r20, r25);
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 subviews];
    r29 = r29;
    r27 = [r0 retain];
    [r24 release];
    if ([r27 count] == 0x1) {
            r0 = [r20 superview];
    }
    else {
            r26 = @selector(count);
            r24 = [r27 indexOfObject:r20];
            if (r24 == objc_msgSend(r27, r26) - 0x1) {
                    r0 = [r20 superview];
            }
            else {
                    r1 = @selector(count);
                    r26 = r24 + 0x1;
                    var_A8 = r1;
                    if (r26 < objc_msgSend(r27, r1)) {
                            var_FC = r22 ^ 0x1;
                            var_E0 = r28;
                            do {
                                    r0 = [r27 objectAtIndexedSubscript:r26];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    if ((objc_msgSend(r23, r28) & 0x1) == 0x0) {
                                            r28 = r25;
                                            r0 = objc_msgSend(r24, r25);
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            [r24 frame];
                                            [r25 convertRect:r21 toView:r3];
                                            r0 = [r25 release];
                                            v0 = v11;
                                            v1 = v10;
                                            v2 = v9;
                                            v3 = v8;
                                            var_C8 = d13;
                                            stack[-192] = d12;
                                            var_D8 = d15;
                                            stack[-208] = d14;
                                            r0 = CGRectIntersection(r0, @selector(convertRect:toView:));
                                            v12 = v0;
                                            v13 = v1;
                                            v14 = v2;
                                            v15 = v3;
                                            if ((CGRectIsNull(r0) & 0x1) == 0x0) {
                                                    r2 = r24;
                                                    if (([r23 isViewTransparent:r2] & 0x1) != 0x0) {
                                                            if ([r24 clipsToBounds] != 0x0) {
                                                                    v0 = v11;
                                                                    v1 = v10;
                                                                    v2 = v9;
                                                                    v3 = v8;
                                                                    [r23 getSubviewHiddenRectsInsideOfSuperviewBounds:r19 forRect:r24 forView:r21 forWindow:r5 superViewWindowRect:r6];
                                                            }
                                                    }
                                                    else {
                                                            v0 = v12;
                                                            v1 = v13;
                                                            v2 = v14;
                                                            v3 = v15;
                                                            r0 = [NSValue valueWithCGRect:r2];
                                                            r29 = r29;
                                                            [r0 retain];
                                                            [r19 addObject:r2];
                                                            [r25 release];
                                                    }
                                            }
                                            r0 = [r24 clipsToBounds];
                                            r25 = r28;
                                            r28 = var_E0;
                                            if (((r0 | var_FC) & 0x1) == 0x0) {
                                                    r5 = [r23 isViewTransparent:r24] ^ 0x1;
                                                    v0 = v11;
                                                    v1 = v10;
                                                    v2 = v9;
                                                    v3 = v8;
                                                    [r23 getSubviewHiddenRects:r19 forRect:r24 forView:r21 forWindow:r5 superViewWindowRect:r6 ignoreIfContainedInSuperview:r7];
                                            }
                                    }
                                    [r24 release];
                                    r26 = r26 + 0x1;
                            } while (r26 < objc_msgSend(r27, var_A8));
                    }
                    r0 = objc_msgSend(r20, r25);
            }
    }
    r24 = [r0 retain];
    [r23 getSuperviewHiddenRects:r19 forRect:r24 forView:r21 forWindow:r22 checkNonClippingSubViews:r6];
    [r24 release];
    r0 = r27;
    goto loc_1002337a0;

loc_1002339e8:
    r0 = [NSValue valueWithCGRect:r2];
    goto loc_100233780;
}

-(double)standardVisibilityCheck {
    r31 = r31 - 0xe0;
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
    r23 = self;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 getSession:r23->_sessionID];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 appViewController];
    r29 = &var_10;
    r21 = [r0 retain];
    [ADCInterstitialAdSession class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_1002327e8;

loc_1002327c8:
    r0 = [r20 fullscreenContainer];
    r29 = r29;
    r22 = [r0 retain];
    goto loc_10023288c;

loc_10023288c:
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            r23 = [[r22 view] retain];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 bounds];
            [r0 release];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 frame];
            var_C0 = d11;
            stack[-184] = d10;
            var_B0 = d9;
            stack[-168] = d8;
            var_C8 = r26;
            [r0 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 frame];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [r0 release];
            r28 = [[r23 superview] retain];
            [r23 frame];
            [r28 convertRect:0x0 toView:r3];
            v15 = v0;
            v14 = v1;
            v13 = v2;
            v12 = v3;
            [r28 release];
            r0 = [r21 view];
            r29 = r29;
            r28 = [r0 retain];
            r19 = [r23 isDescendantOfView:r2];
            r0 = [r28 release];
            if (r19 != 0x0) {
                    r0 = [r21 view];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 superview];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r19 release];
                    if (r0 != 0x0) {
                            r0 = [r21 view];
                            r0 = [r0 retain];
                            r28 = r0;
                            r27 = [[r0 superview] retain];
                            r0 = [r21 view];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 frame];
                            [r27 convertRect:0x0 toView:r3];
                            v8 = v0;
                            v9 = v1;
                            v10 = v2;
                            v11 = v3;
                            [r0 release];
                            [r27 release];
                            [r28 release];
                    }
                    r0 = [r21 navigationController];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 navigationBar];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r19 release];
                    if (r25 != 0x0 && ([r25 isHidden] & 0x1) == 0x0 && [r25 isTranslucent] != 0x0) {
                            [r25 frame];
                            v9 = v3;
                            [r25 frame];
                            d9 = d9 + d1;
                            d11 = d11 - d9;
                    }
                    r0 = [r21 tabBarController];
                    r0 = [r0 retain];
                    r19 = r0;
                    r1 = @selector(tabBar);
                    r0 = objc_msgSend(r0, r1);
                    r29 = r29;
                    r26 = [r0 retain];
                    r0 = [r19 release];
                    if (r26 != 0x0) {
                            r1 = @selector(isHidden);
                            r0 = objc_msgSend(r26, r1);
                            if ((r0 & 0x1) == 0x0) {
                                    r0 = [UIDevice currentDevice];
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = [r0 systemVersion];
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r1 = @selector(compare:options:);
                                    if (objc_msgSend(r0, r1) != -0x1) {
                                            r1 = @selector(isTranslucent);
                                            r19 = objc_msgSend(r26, r1);
                                            [r28 release];
                                            r0 = [r27 release];
                                            if (r19 != 0x0) {
                                                    r1 = @selector(frame);
                                                    r0 = objc_msgSend(r26, r1);
                                            }
                                    }
                                    else {
                                            [r28 release];
                                            r0 = [r27 release];
                                    }
                            }
                    }
                    r0 = CGRectIntersection(r0, r1);
                    if (d15 < d8) {
                            asm { fcsel      d0, d1, d0, mi };
                    }
                    d2 = -(d9 - d14);
                    if (d14 < d9) {
                            asm { fcsel      d1, d2, d1, mi };
                    }
                    v2 = v13;
                    CGRectIntersection(r0, r1);
                    [r26 release];
                    [r25 release];
            }
            else {
                    v2 = v13;
                    CGRectIntersection(r0, @selector(isDescendantOfView:));
            }
            [r23 frame];
            r26 = var_C8;
            v10 = 0x0;
            if (d2 > 0x0) {
                    [r23 frame];
                    if (d3 > 0x0) {
                            [r23 frame];
                            v10 = v2;
                            [r23 frame];
                            asm { fdiv       d0, d0, d1 };
                            asm { fcvtzs     w8, d0 };
                            asm { scvtf      d10, w8 };
                    }
            }
            [r23 release];
    }
    goto loc_100232d70;

loc_100232d70:
    [r21 release];
    [r22 release];
    [r20 release];
    r0 = [r26 release];
    return r0;

loc_1002327e8:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r20, r24) == 0x0) goto loc_100232858;

loc_10023280c:
    r0 = [r20 retain];
    r24 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 opened] != 0x0) {
            r0 = [r24 fullscreenContainer];
            r29 = r29;
    }
    else {
            r0 = [r24 customizableContainer];
            r29 = r29;
    }
    r22 = [r0 retain];
    [r25 release];
    [r24 release];
    goto loc_10023288c;

loc_100232858:
    r22 = 0x0;
    goto loc_100232d70;
}

-(struct CGRect)roundUpCGrect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { frinta     d0, d0 };
    asm { frinta     d1, d1 };
    asm { frinta     d2, d2 };
    asm { frinta     d3, d3 };
    return r0;
}

-(double)advancedVisibilityCheck {
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
    r31 = r31 + 0xffffffffffffff60 - 0x2b0;
    r21 = self;
    *(&var_10 + 0xffffffffffffff68) = **___stack_chk_guard;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r25 = [[r0 getSession:r21->_sessionID] retain];
    [r0 release];
    r0 = [r25 appViewController];
    r29 = &var_10;
    r26 = [r0 retain];
    r2 = [ADCInterstitialAdSession class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100232fb0;

loc_100232f8c:
    r0 = [r25 fullscreenContainer];
    r29 = r29;
    r27 = [r0 retain];
    r23 = 0x1;
    goto loc_100233058;

loc_100233058:
    if (r26 != 0x0) {
            asm { ccmp       x27, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            r0 = [r27 view];
            r0 = [r0 retain];
            r28 = r0;
            r19 = [[r0 superview] retain];
            [r28 frame];
            r22 = [[r28 window] retain];
            v0 = v0;
            v1 = v1;
            v2 = v2;
            v3 = v3;
            [r19 convertRect:r22 toView:r3];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [r22 release];
            [r19 release];
            r0 = [UIScreen mainScreen];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(bounds);
            objc_msgSend(r0, r1);
            v12 = v0;
            v13 = v1;
            v14 = v2;
            v15 = v3;
            r0 = [r22 release];
            if ((r23 & 0x1) == 0x0) {
                    r0 = [UIScreen mainScreen];
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(applicationFrame);
                    objc_msgSend(r0, r1);
                    v12 = v0;
                    v13 = v1;
                    v14 = v2;
                    v15 = v3;
                    r0 = [r19 release];
            }
            v2 = v10;
            v3 = v11;
            r0 = CGRectIntersection(r0, r1);
            v10 = v8;
            v11 = v9;
            v8 = v2;
            v9 = v3;
            r0 = CGRectIsEmpty(r0);
            v12 = 0x0;
            if ((r0 & 0x1) == 0x0) {
                    r22 = [[NSMutableArray array] retain];
                    r0 = [r28 window];
                    r29 = r29;
                    r19 = [r0 retain];
                    v2 = v8;
                    [r21 getSuperviewHiddenRects:r22 forRect:r28 forView:r19 forWindow:0x0 checkNonClippingSubViews:r6];
                    [r19 release];
                    if ([r22 count] != 0x0) {
                            var_340 = r28;
                            stack[-824] = r27;
                            var_330 = r26;
                            stack[-808] = r25;
                            r28 = [[NSMutableArray array] retain];
                            v1 = v11;
                            v2 = v8;
                            v3 = v9;
                            r0 = [NSValue valueWithCGRect:r2];
                            r29 = r29;
                            r19 = [r0 retain];
                            [r28 addObject:r19];
                            [r19 release];
                            v0 = 0x0;
                            *(int128_t *)(&stack[-823] + 0xff) = q0;
                            *(int128_t *)(&stack[-839] + 0xff) = q0;
                            var_258 = q0;
                            var_348 = r22;
                            r0 = [r22 retain];
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_318 = r0;
                            var_2F0 = r1;
                            r0 = objc_msgSend(r0, r1);
                            var_300 = r0;
                            if (r0 != 0x0) {
                                    r24 = @selector(array);
                                    var_310 = *var_258;
                                    var_308 = r24;
                                    r22 = r28;
                                    do {
                                            r19 = 0x0;
                                            do {
                                                    if (*var_258 != var_310) {
                                                            objc_enumerationMutation(var_318);
                                                    }
                                                    var_2F8 = r19;
                                                    [*(var_260 + r19 * 0x8) CGRectValue];
                                                    v8 = v0;
                                                    v9 = v1;
                                                    v10 = v2;
                                                    v11 = v3;
                                                    r0 = @class(NSMutableArray);
                                                    r0 = objc_msgSend(r0, r24);
                                                    r29 = r29;
                                                    r28 = [r0 retain];
                                                    r0 = [r22 retain];
                                                    r23 = r0;
                                                    r2 = &var_2A8;
                                                    r3 = &stack[-424];
                                                    r22 = objc_msgSend(r0, var_2F0);
                                                    if (r22 != 0x0) {
                                                            do {
                                                                    r27 = 0x0;
                                                                    do {
                                                                            if (*0x0 != *0x0) {
                                                                                    objc_enumerationMutation(r23);
                                                                            }
                                                                            [*(0x0 + r27 * 0x8) CGRectValue];
                                                                            v0 = v8;
                                                                            v1 = v9;
                                                                            v2 = v10;
                                                                            v3 = v11;
                                                                            r0 = [r21 subtractRect:r2 fromRect:r3];
                                                                            r29 = r29;
                                                                            r2 = [r0 retain];
                                                                            objc_msgSend(r28, r24);
                                                                            [r26 release];
                                                                            r27 = r27 + 0x1;
                                                                    } while (r27 < r22);
                                                                    r2 = &var_2A8;
                                                                    r3 = &stack[-424];
                                                                    r22 = objc_msgSend(r23, var_2F0);
                                                            } while (r22 != 0x0);
                                                    }
                                                    [r23 release];
                                                    [r23 release];
                                                    r19 = var_2F8 + 0x1;
                                                    r22 = r28;
                                                    r24 = var_308;
                                            } while (r19 < var_300);
                                            r0 = objc_msgSend(var_318, var_2F0);
                                            r22 = r28;
                                            var_300 = r0;
                                    } while (r0 != 0x0);
                            }
                            [var_318 release];
                            var_2D8 = q0;
                            r0 = [r28 retain];
                            r20 = r0;
                            r19 = objc_msgSend(r0, var_2F0);
                            if (r19 != 0x0) {
                                    r22 = *var_2D8;
                                    r26 = var_330;
                                    r25 = stack[-808];
                                    r28 = var_340;
                                    r27 = stack[-824];
                                    do {
                                            r24 = 0x0;
                                            do {
                                                    if (*var_2D8 != r22) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    [*(var_2E0 + r24 * 0x8) CGRectValue];
                                                    d9 = d9 + d2 * d3;
                                                    r24 = r24 + 0x1;
                                            } while (r24 < r19);
                                            r19 = objc_msgSend(r20, var_2F0);
                                    } while (r19 != 0x0);
                            }
                            else {
                                    r26 = var_330;
                                    r25 = stack[-808];
                                    r28 = var_340;
                                    r27 = stack[-824];
                            }
                            [r20 release];
                            [r20 release];
                            r22 = var_348;
                    }
                    [r28 frame];
                    [r28 frame];
                    d0 = d8 * d3;
                    v12 = 0x0;
                    if (d0 > 0x0) {
                            asm { fdiv       d0, d9, d0 };
                    }
                    [r22 release];
            }
            [r28 release];
    }
    goto loc_10023363c;

loc_10023363c:
    [r26 release];
    [r27 release];
    r0 = [r25 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100232fb0:
    r20 = @selector(isKindOfClass:);
    r2 = [ADCNativeAdSession class];
    if (objc_msgSend(r25, r20) == 0x0) goto loc_100233020;

loc_100232fd4:
    r0 = [r25 retain];
    r19 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 opened] != 0x0) {
            r0 = [r19 fullscreenContainer];
            r29 = r29;
    }
    else {
            r0 = [r19 customizableContainer];
            r29 = r29;
    }
    r27 = [r0 retain];
    [r20 release];
    [r19 release];
    r23 = 0x0;
    goto loc_100233058;

loc_100233020:
    r27 = 0x0;
    goto loc_10023363c;
}

-(struct CGRect)rectBetweenRect1:(struct CGRect)arg2 andRect2:(struct CGRect)arg3 withRemainder:(struct CGRect *)arg4 alongEdge:(unsigned int)arg5 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_50 = d15;
    stack[-88] = d14;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r20 = r2;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = CGRectIntersection(self, _cmd);
    v15 = v0;
    v13 = v1;
    v14 = v2;
    v12 = v3;
    r0 = CGRectIsEmpty(r0);
    if (r0 == 0x0) goto loc_100234ca8;

.l1:
    return r0;

loc_100234ca8:
    if (r19 > 0x3) goto loc_100234d7c;

loc_100234cb0:
    goto *0x100234dc8[sign_extend_64(*(int32_t *)(0x100234dc8 + r19 * 0x4)) + 0x100234dc8];

loc_100234cc8:
    CGRectGetMaxX(CGRectGetMaxX(r0));
    d1 = d0;
    d0 = d1 - d0;
    goto loc_100234d44;

loc_100234d44:
    asm { fcvt       s0, d0 };
    asm { fcvt       d1, s0 };
    if (d9 < d1) {
            asm { fcvt       s0, d9 };
    }
    goto loc_100234d7c;

loc_100234d7c:
    asm { fcvt       d4, s0 };
    r0 = CGRectDivide(r20, &var_70, r19, r3, r4);
    return r0;

loc_100234d08:
    CGRectGetMaxY(CGRectGetMaxY(r0));
    d1 = d0;
    d0 = d1 - d0;
    goto loc_100234d64;

loc_100234d64:
    asm { fcvt       s0, d0 };
    asm { fcvt       d1, s0 };
    if (d8 < d1) {
            asm { fcvt       s0, d8 };
    }
    goto loc_100234d7c;

loc_100234d40:
    d0 = d15 - d11;
    goto loc_100234d44;

loc_100234d60:
    d0 = d13 - d10;
    goto loc_100234d64;
}

-(void *)subtractRect:(struct CGRect)arg2 fromRect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_60 = d15;
    stack[-104] = d14;
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
    r29 = &saved_fp;
    r19 = self;
    [self roundUpCGrect:r2];
    v15 = v4;
    v14 = v5;
    v13 = v6;
    v12 = v7;
    r0 = [r19 roundUpCGrect:r2];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r0 = CGRectIsEmpty(r0);
    if (r0 == 0x0) goto loc_1002348e4;

loc_1002348b8:
    r0 = [NSArray arrayWithObjects:&stack[-136] count:0x0];
    r20 = [r0 retain];
    goto loc_100234be8;

loc_100234be8:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1002348e4:
    r0 = CGRectIntersection(r0, @selector(roundUpCGrect:));
    v8 = v15;
    v9 = v14;
    v10 = v13;
    v11 = v12;
    if (CGRectIsEmpty(r0) == 0x0) goto loc_100234980;

loc_100234920:
    r19 = [[NSValue valueWithCGRect:r2] retain];
    r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
    r20 = [r0 retain];
    goto loc_100234be0;

loc_100234be0:
    [r19 release];
    goto loc_100234be8;

loc_100234980:
    r20 = [NSMutableArray new];
    r2 = &var_98;
    v0 = v15;
    v1 = v14;
    v2 = v13;
    v3 = v12;
    r0 = [r19 rectBetweenRect1:r2 andRect2:r3 withRemainder:r4 alongEdge:r5];
    v15 = v0;
    v14 = v1;
    v13 = v2;
    v12 = v3;
    if ((CGRectIsEmpty(r0) & 0x1) == 0x0) {
            v0 = v15;
            v1 = v14;
            v2 = v13;
            v3 = v12;
            r0 = [NSValue valueWithCGRect:r2];
            r29 = r29;
            [r0 retain];
            [r20 addObject:r2];
            [r22 release];
    }
    r2 = &var_98;
    r0 = [r19 rectBetweenRect1:r2 andRect2:r3 withRemainder:r4 alongEdge:r5];
    v15 = v0;
    v14 = v1;
    v13 = v2;
    v12 = v3;
    if ((CGRectIsEmpty(r0) & 0x1) == 0x0) {
            v0 = v15;
            v1 = v14;
            v2 = v13;
            v3 = v12;
            r0 = [NSValue valueWithCGRect:r2];
            r29 = r29;
            [r0 retain];
            [r20 addObject:r2];
            [r22 release];
    }
    r2 = &var_98;
    r0 = [r19 rectBetweenRect1:r2 andRect2:r3 withRemainder:r4 alongEdge:r5];
    v15 = v0;
    v14 = v1;
    v13 = v2;
    v12 = v3;
    if ((CGRectIsEmpty(r0) & 0x1) == 0x0) {
            v0 = v15;
            v1 = v14;
            v2 = v13;
            v3 = v12;
            r0 = [NSValue valueWithCGRect:r2];
            r29 = r29;
            [r0 retain];
            [r20 addObject:r2];
            [r22 release];
    }
    r2 = &var_98;
    r0 = [r19 rectBetweenRect1:r2 andRect2:r3 withRemainder:r4 alongEdge:r5];
    v11 = v0;
    v10 = v1;
    v9 = v2;
    v8 = v3;
    if ((CGRectIsEmpty(r0) & 0x1) != 0x0) goto loc_100234be8;

loc_100234b9c:
    r19 = [[NSValue valueWithCGRect:r2] retain];
    [r20 addObject:r2];
    goto loc_100234be0;
}

-(bool)isViewHidden:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 window];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r19 superview] retain];
            if (r21 != 0x0) {
                    r22 = [r19 isHidden];
                    [r21 release];
                    [r20 release];
                    if ((r22 & 0x1) == 0x0) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = 0x1;
                    }
            }
            else {
                    [r20 release];
                    r20 = 0x1;
            }
    }
    else {
            [r20 release];
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)onApplicationWillResignActive {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lastViewablePercentage));
    d0 = *(r19 + r20);
    if (d0 != 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor onApplicationWillResignActive]" line:0x23f withFormat:0x0];
            *(r19 + r20) = 0x0;
            r0 = r19->_handler;
            asm { fcvt       s1, d0 };
            (*(r0 + 0x10))(r0);
            *(int8_t *)(int64_t *)&r19->_polling = 0x0;
    }
    return;
}

-(void)onApplicationDidBecomeActive {
    *(int8_t *)(int64_t *)&self->_polling = 0x1;
    return;
}

-(void)getSubviewHiddenRectsInsideOfSuperviewBounds:(void *)arg2 forRect:(struct CGRect)arg3 forView:(void *)arg4 forWindow:(void *)arg5 superViewWindowRect:(struct CGRect)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    r31 = r31 + 0xffffffffffffff60 - 0x1a0;
    v12 = v7;
    v13 = v6;
    v14 = v5;
    v15 = v4;
    var_178 = d2;
    stack[-368] = d3;
    var_188 = d0;
    stack[-384] = d1;
    r21 = self;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r24 = [arg2 retain];
    r19 = [r3 retain];
    r23 = [r4 retain];
    if (r23 != 0x0 && r24 != 0x0 && r19 != 0x0) {
            var_1F8 = r23;
            r0 = [r19 subviews];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [r19 subviews];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_200 = r24;
                    r25 = [r0 count];
                    r24 = var_200;
                    [r0 release];
                    [r23 release];
                    r23 = var_1F8;
                    if (r25 != 0x0) {
                            v0 = 0x0;
                            *(int128_t *)(&stack[-567] + 0xff) = q0;
                            var_158 = q0;
                            var_218 = r19;
                            r0 = [r19 subviews];
                            r29 = r29;
                            r0 = [r0 retain];
                            r19 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_210 = r1;
                            r25 = objc_msgSend(r0, r1);
                            if (r25 != 0x0) {
                                    r22 = *var_158;
                                    var_1C8 = d13;
                                    stack[-448] = d12;
                                    var_1D8 = d15;
                                    stack[-464] = d14;
                                    var_208 = r19;
                                    do {
                                            r20 = 0x0;
                                            r27 = @selector(isViewTransparent:);
                                            var_198 = r27;
                                            do {
                                                    if (*var_158 != r22) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    r26 = *(var_160 + r20 * 0x8);
                                                    if (([r21 isViewHidden:r26] & 0x1) == 0x0) {
                                                            if ((objc_msgSend(r21, r27) & 0x1) == 0x0) {
                                                                    r0 = [r26 superview];
                                                                    r29 = r29;
                                                                    r27 = [r0 retain];
                                                                    [r26 frame];
                                                                    [r27 convertRect:r2 toView:r3];
                                                                    v8 = v0;
                                                                    v9 = v1;
                                                                    v10 = v2;
                                                                    v11 = v3;
                                                                    r0 = [r27 release];
                                                                    v0 = v15;
                                                                    v1 = v14;
                                                                    v2 = v13;
                                                                    v3 = v12;
                                                                    r0 = CGRectContainsRect(r0, r1);
                                                                    if ((r0 & 0x1) == 0x0) {
                                                                            v0 = v15;
                                                                            v1 = v14;
                                                                            v2 = v13;
                                                                            v3 = v12;
                                                                            r0 = CGRectIntersection(r0, @selector(convertRect:toView:));
                                                                            v8 = v0;
                                                                            v9 = v1;
                                                                            v10 = v2;
                                                                            v11 = v3;
                                                                    }
                                                                    r0 = CGRectIntersection(r0, @selector(convertRect:toView:));
                                                                    v12 = v0;
                                                                    v13 = v1;
                                                                    v14 = v2;
                                                                    v15 = v3;
                                                                    if ((CGRectIsNull(r0) & 0x1) == 0x0) {
                                                                            r19 = [NSStringFromCGRect() retain];
                                                                            r24 = [NSStringFromCGRect() retain];
                                                                            r23 = [NSStringFromCGRect() retain];
                                                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor getSubviewHiddenRectsInsideOfSuperviewBounds:forRect:forView:forWindow:superViewWindowRect:]" line:0x1b7 withFormat:@"Found intersecting rect = %@, for windowRectToCheck = %@ versus subviewWindowRect = %@"];
                                                                            r0 = r23;
                                                                            r23 = var_1F8;
                                                                            [r0 release];
                                                                            r0 = r24;
                                                                            r24 = var_200;
                                                                            [r0 release];
                                                                            [r19 release];
                                                                            v0 = v12;
                                                                            v1 = v13;
                                                                            v2 = v14;
                                                                            v3 = v15;
                                                                            r0 = [NSValue valueWithCGRect:0x0];
                                                                            r29 = r29;
                                                                            [r0 retain];
                                                                            [r24 addObject:r2];
                                                                            r0 = r19;
                                                                            r19 = var_208;
                                                                            [r0 release];
                                                                    }
                                                                    r0 = [r26 clipsToBounds];
                                                                    r27 = var_198;
                                                                    if ((r0 & 0x1) == 0x0) {
                                                                            [r21 getSubviewHiddenRectsInsideOfSuperviewBounds:r2 forRect:r3 forView:r4 forWindow:r5 superViewWindowRect:r6];
                                                                    }
                                                            }
                                                            else {
                                                                    [r21 getSubviewHiddenRectsInsideOfSuperviewBounds:r2 forRect:r3 forView:r4 forWindow:r5 superViewWindowRect:r6];
                                                            }
                                                    }
                                                    r20 = r20 + 0x1;
                                            } while (r20 < r25);
                                            r25 = objc_msgSend(r19, var_210);
                                    } while (r25 != 0x0);
                            }
                            [r19 release];
                            r19 = var_218;
                    }
            }
            else {
                    [r23 release];
                    r23 = var_1F8;
            }
    }
    [r23 release];
    [r19 release];
    [r24 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isViewTransparent:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 alpha];
    if (d0 == 0x0) goto loc_100234fbc;

loc_100234ec0:
    r20 = [[r19 backgroundColor] retain];
    r0 = [UIColor clearColor];
    r29 = r29;
    r21 = [r0 retain];
    r2 = r21;
    if (([r20 isEqual:r2] & 0x1) == 0x0) goto loc_100234f30;

loc_100234f1c:
    [r21 release];
    [r20 release];
    goto loc_100234fbc;

loc_100234fbc:
    r20 = 0x1;
    goto loc_100234fc0;

loc_100234fc0:
    [r19 release];
    r0 = r20;
    return r0;

loc_100234f30:
    r23 = @selector(isEqual:);
    r24 = [[r19 backgroundColor] retain];
    r0 = [r19 backgroundColor];
    r0 = [r0 retain];
    r25 = [[r0 colorWithAlphaComponent:r2] retain];
    r23 = objc_msgSend(r24, r23);
    [r25 release];
    [r0 release];
    [r24 release];
    [r21 release];
    [r20 release];
    if ((r23 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    goto loc_100234fc0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCViewabilityMonitor dealloc]" line:0x252 withFormat:0x0];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    [[&var_40 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_handler, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionID, 0x0);
    return;
}

-(void)finish {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_handler));
    r8 = *(self + r9);
    *(self + r9) = 0x0;
    [r8 release];
    return;
}

@end