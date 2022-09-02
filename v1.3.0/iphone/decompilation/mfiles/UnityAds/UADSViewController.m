@implementation UADSViewController

-(void *)initWithViews:(void *)arg2 supportedOrientations:(void *)arg3 statusBarHidden:(bool)arg4 shouldAutorotate:(bool)arg5 isTransparent:(bool)arg6 homeIndicatorAutoHidden:(bool)arg7 {
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
    r22 = arg7;
    r25 = arg6;
    r23 = arg5;
    r24 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setTransparent:r25];
            [r21 setCurrentViews:r19];
            [r21 setStatusBarHidden:r24];
            [r21 setSupportedOrientations:[r20 intValue]];
            [r21 setAutorotate:r23];
            [r21 setHomeIndicatorAutoHidden:r22];
    }
    r22 = [[USRVWebViewApp getCurrentApp] retain];
    r23 = [sub_1000c0e98() retain];
    r24 = [sub_1000d1038() retain];
    [r22 sendEvent:r23 category:r24 param1:0x0];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)viewDidLoad {
    r31 = r31 - 0x140;
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
    [[&var_E8 super] viewDidLoad];
    r0 = [r19 view];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (([r19 isTransparent] & 0x1) != 0x0) {
            r0 = [UIColor clearColor];
            r29 = r29;
    }
    else {
            r0 = [UIColor blackColor];
            r29 = r29;
    }
    r21 = [r0 retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [r20 release];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers));
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            var_118 = q0;
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r27 = *var_118;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_118 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r2 = *(var_120 + r28 * 0x8);
                                    r0 = *(r19 + r26);
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    if (r25 != 0x0) {
                                            [r25 viewDidLoad:r2];
                                    }
                                    [r25 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r20 = [sub_1000c0e98() retain];
    r21 = [sub_1000d1038() retain];
    [r19 sendEvent:r20 category:r21 param1:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x150;
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
    r19 = arg2;
    r20 = self;
    [[&var_E8 super] viewDidAppear:r2];
    r0 = [r20 currentViews];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 setViews:r21];
    [r21 release];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers));
    r0 = *(r20 + r27);
    if (r0 != 0x0) {
            var_118 = q0;
            r0 = [r0 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r28 = *var_118;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_118 != r28) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r2 = *(var_120 + r22 * 0x8);
                                    r0 = *(r20 + r27);
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            [r26 viewDidAppear:r2 animated:r3];
                                    }
                                    [r26 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r23 = objc_msgSend(r21, var_130);
                    } while (r23 != 0x0);
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r20 = [sub_1000c0e98() retain];
    r21 = [sub_1000d1038() retain];
    [r19 sendEvent:r20 category:r21 param1:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x150;
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
    r19 = arg2;
    r20 = self;
    [[&var_E8 super] viewWillAppear:r2];
    r0 = [r20 currentViews];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 setViews:r21];
    [r21 release];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers));
    r0 = *(r20 + r27);
    if (r0 != 0x0) {
            var_118 = q0;
            r0 = [r0 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r28 = *var_118;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_118 != r28) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r2 = *(var_120 + r22 * 0x8);
                                    r0 = *(r20 + r27);
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            [r26 viewWillAppear:r2 animated:r3];
                                    }
                                    [r26 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r23 = objc_msgSend(r21, var_130);
                    } while (r23 != 0x0);
            }
            [r21 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    r31 = r31 - 0x150;
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
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    [[&var_E8 super] viewWillDisappear:r2];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers));
    r0 = *(r20 + r27);
    if (r0 != 0x0) {
            var_118 = q0;
            r0 = [r0 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r28 = *var_118;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_118 != r28) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r2 = *(var_120 + r22 * 0x8);
                                    r0 = *(r20 + r27);
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            [r26 viewWillDisappear:r2 animated:r3];
                                    }
                                    [r26 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r23 = objc_msgSend(r21, var_130);
                    } while (r23 != 0x0);
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r20 = [sub_1000c0e98() retain];
    r21 = [sub_1000d1038() retain];
    [r19 sendEvent:r20 category:r21 param1:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = [self supportedOrientations];
    asm { sxtw       x0, w0 };
    return r0;
}

-(bool)shouldAutorotate {
    r0 = [self autorotate];
    return r0;
}

-(void)setViewFrame:(void *)arg2 x:(int)arg3 y:(int)arg4 width:(int)arg5 height:(int)arg6 {
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
    r24 = self;
    r26 = [arg2 retain];
    r0 = [r24 getViewHandler:r26];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r25 = [arg2 isEqualToString:r2];
    [r26 release];
    if (r25 == 0x0) goto loc_1000bf684;

loc_1000bf66c:
    r0 = [r24 view];
    goto loc_1000bf69c;

loc_1000bf69c:
    r24 = [r0 retain];
    if (r24 != 0x0) {
            asm { scvtf      d0, w22 };
            asm { scvtf      d1, w21 };
            asm { scvtf      d2, w20 };
            asm { scvtf      d3, w19 };
            [r24 setFrame:r2];
            [r24 release];
    }
    goto loc_1000bf6d0;

loc_1000bf6d0:
    [r23 release];
    return;

loc_1000bf684:
    if (r23 == 0x0) goto loc_1000bf6d0;

loc_1000bf688:
    r0 = [r23 getView];
    goto loc_1000bf69c;
}

-(void)viewDidDisappear:(bool)arg2 {
    r31 = r31 - 0x150;
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
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    [[&var_E8 super] viewDidDisappear:r2];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers));
    r0 = *(r20 + r27);
    if (r0 != 0x0) {
            var_118 = q0;
            r0 = [r0 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r28 = *var_118;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_118 != r28) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r2 = *(var_120 + r22 * 0x8);
                                    r0 = *(r20 + r27);
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            [r26 viewDidDisappear:r2 animated:r3];
                                    }
                                    [r26 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r23 = objc_msgSend(r21, var_130);
                    } while (r23 != 0x0);
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r20 = [sub_1000c0e98() retain];
    r21 = [sub_1000d1038() retain];
    [r19 sendEvent:r20 category:r21 param1:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setSupportedOrientations:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_supportedOrientations = arg2;
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setNeedsLayout];
    [r0 release];
    return;
}

-(void)setStatusBarHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_statusBarHidden = arg2;
    [self setNeedsStatusBarAppearanceUpdate];
    return;
}

-(void)setTransparent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_transparent = arg2;
    return;
}

-(void)setTransform:(float)arg2 {
    r0 = [self view];
    r0 = [r0 retain];
    asm { fcvt       d0, s8 };
    CGAffineTransformMakeRotation(r0);
    [r19 setTransform:&var_80];
    [r19 release];
    return;
}

-(bool)prefersStatusBarHidden {
    r0 = [self statusBarHidden];
    return r0;
}

-(void)setHomeIndicatorAutoHidden:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_homeIndicatorAutoHidden = arg2;
    r20 = NSSelectorFromString(@"setNeedsUpdateOfHomeIndicatorAutoHidden");
    if ([r19 respondsToSelector:r2] != 0x0) {
            r2 = [r19 methodForSelector:r20];
            if (r2 != 0x0) {
                    (r2)(r19, r20, r2);
            }
    }
    return;
}

-(bool)prefersHomeIndicatorAutoHidden {
    r0 = [self homeIndicatorAutoHidden];
    return r0;
}

-(bool)isTransparent {
    r0 = *(int8_t *)(int64_t *)&self->_transparent;
    return r0;
}

-(void *)getViewHandler:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers));
    r0 = *(r20 + r23);
    if (r0 != 0x0) {
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = @selector(objectForKey:);
                    r21 = [objc_msgSend(*(r20 + r23), r21) retain];
            }
            else {
                    r21 = [[r20 createViewHandler:r19] retain];
                    if (r21 != 0x0) {
                            r0 = *(r20 + r23);
                            if (r0 == 0x0) {
                                    r0 = [NSMutableDictionary alloc];
                                    r0 = [r0 init];
                                    r8 = *(r20 + r23);
                                    *(r20 + r23) = r0;
                                    [r8 release];
                                    r0 = *(r20 + r23);
                            }
                            [r0 setObject:r2 forKey:r3];
                    }
            }
    }
    else {
            r21 = [[r20 createViewHandler:r19] retain];
            if (r21 != 0x0) {
                    r0 = *(r20 + r23);
                    if (r0 == 0x0) {
                            r0 = [NSMutableDictionary alloc];
                            r0 = [r0 init];
                            r8 = *(r20 + r23);
                            *(r20 + r23) = r0;
                            [r8 release];
                            r0 = *(r20 + r23);
                    }
                    [r0 setObject:r2 forKey:r3];
            }
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)handleViewPlacement:(void *)arg2 {
    r31 = r31 - 0x80;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 superview];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r24 = [[r19 superview] retain];
            r0 = [r20 view];
            r29 = r29;
            r25 = [r0 retain];
            r2 = r25;
            r26 = [r24 isEqual:r2];
            [r25 release];
            [r24 release];
            [r23 release];
            if (r26 != 0x0) {
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Bringing to front: %@", @selector(getLogLevel), r2, r3, r4);
                    }
                    r21 = [[r20 view] retain];
                    r1 = @selector(bringSubviewToFront:);
            }
            else {
                    r0 = [r19 superview];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            [r19 removeFromSuperview];
                    }
                    [r19 setHidden:0x0];
                    r23 = [[r20 view] retain];
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 center];
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 superview];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r23 convertPoint:r21 fromView:r3];
                    [r19 setCenter:r21];
                    [r21 release];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    [r19 setAutoresizingMask:0x12];
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Adding to view: %@", @selector(getLogLevel), 0x12, r3, r4);
                    }
                    r21 = [[r20 view] retain];
                    r1 = @selector(addSubview:);
            }
    }
    else {
            [r23 release];
            r0 = [r19 superview];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r19 removeFromSuperview];
            }
            [r19 setHidden:0x0];
            r23 = [[r20 view] retain];
            r0 = [r20 view];
            r0 = [r0 retain];
            r24 = r0;
            [r0 center];
            r0 = [r20 view];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 superview];
            r29 = r29;
            r21 = [r0 retain];
            [r23 convertPoint:r21 fromView:r3];
            [r19 setCenter:r21];
            [r21 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r19 setAutoresizingMask:0x12];
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Adding to view: %@", @selector(getLogLevel), 0x12, r3, r4);
            }
            r21 = [[r20 view] retain];
            r1 = @selector(addSubview:);
    }
    objc_msgSend(r21, r1);
    [r21 release];
    [r20 getRect];
    [r19 setFrame:r2];
    [r19 release];
    return;
}

-(struct CGRect)getRect {
    r0 = [self view];
    r0 = [r0 retain];
    CGRectGetMinX([r0 bounds]);
    [r22 release];
    r0 = [self view];
    r0 = [r0 retain];
    CGRectGetMinY([r0 bounds]);
    [r22 release];
    r0 = [self view];
    r0 = [r0 retain];
    CGRectGetWidth([r0 bounds]);
    [r22 release];
    r0 = [self view];
    r0 = [r0 retain];
    CGRectGetHeight([r0 bounds]);
    r0 = [r19 release];
    return r0;
}

-(void *)createViewHandler:(void *)arg2 {
    r31 = r31 - 0x160;
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
    var_138 = [arg2 retain];
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r0 release];
    if (r20 == 0x0) goto loc_1000c0318;

loc_1000c00f4:
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    r21 = [[r0 configuration] retain];
    [r0 release];
    r0 = [r21 getModuleConfigurationList];
    r29 = r29;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_148 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_1000c0298;

loc_1000c0180:
    var_130 = r21;
    goto loc_1000c0190;

loc_1000c0190:
    r20 = 0x0;
    goto loc_1000c01c4;

loc_1000c01c4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r0 = [r21 getModuleConfiguration:*(0x0 + r20 * 0x8)];
    r29 = r29;
    r26 = [r0 retain];
    if ([r26 isKindOfClass:[UADSAdsModuleConfiguration class]] == 0x0) goto loc_1000c0264;

loc_1000c021c:
    r0 = [r26 getAdUnitViewHandlers];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_1000c0258;

loc_1000c0238:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_1000c02a0;

loc_1000c0258:
    [r19 release];
    r21 = var_130;
    goto loc_1000c0264;

loc_1000c0264:
    [r26 release];
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_1000c01c4;

loc_1000c0278:
    r23 = objc_msgSend(var_120, var_148);
    if (r23 != 0x0) goto loc_1000c0190;

loc_1000c0298:
    r19 = 0x1;
    goto loc_1000c02f8;

loc_1000c02f8:
    [var_120 release];
    [var_120 release];
    [r21 release];
    if (r19 != 0x0) {
            r20 = 0x0;
    }
    goto loc_1000c031c;

loc_1000c031c:
    var_58 = **___stack_chk_guard;
    [var_138 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000c02a0:
    r0 = [r19 objectForKey:r2];
    r0 = [r0 retain];
    r20 = [[NSClassFromString(r0) alloc] init];
    [r0 release];
    [r19 release];
    [r26 release];
    r19 = 0x0;
    r21 = var_130;
    goto loc_1000c02f8;

loc_1000c0318:
    r20 = 0x0;
    goto loc_1000c031c;
}

-(void)setViews:(void *)arg2 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    r20 = self;
    r19 = [arg2 retain];
    r25 = [[NSMutableArray alloc] init];
    if (r19 != 0x0) {
            [r25 addObjectsFromArray:r19];
    }
    var_1F8 = r19;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_currentViews));
    if (*(r20 + r24) == 0x0) {
            r23 = @selector(init);
            r0 = [NSArray alloc];
            r0 = objc_msgSend(r0, r23);
            r8 = *(r20 + r24);
            *(r20 + r24) = r0;
            [r8 release];
    }
    r23 = @selector(init);
    r0 = @class(NSMutableArray);
    r0 = [r0 alloc];
    r0 = objc_msgSend(r0, r23);
    r26 = r0;
    [r0 addObjectsFromArray:r25];
    r0 = @class(NSMutableArray);
    r0 = [r0 alloc];
    r0 = objc_msgSend(r0, r23);
    var_208 = r24;
    [r0 addObjectsFromArray:*(r20 + r24)];
    var_210 = r26;
    [r0 removeObjectsInArray:r26];
    var_188 = q0;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E0 = r0;
    var_1F0 = r1;
    r19 = objc_msgSend(r0, r1);
    if (r19 != 0x0) {
            r21 = *var_188;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_188 != r21) {
                                    objc_enumerationMutation(var_1E0);
                            }
                            if (*(var_190 + r28 * 0x8) != 0x0) {
                                    r26 = @selector(destroy);
                                    r0 = [r20 getViewHandler:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, r26);
                                    [r27 release];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r19);
                    r19 = objc_msgSend(var_1E0, var_1F0);
            } while (r19 != 0x0);
    }
    [var_1E0 release];
    var_1C8 = q0;
    r0 = [r25 retain];
    var_1E8 = r0;
    r26 = objc_msgSend(r0, var_1F0);
    if (r26 != 0x0) {
            r23 = *var_1C8;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_1C8 != r23) {
                                    objc_enumerationMutation(var_1E8);
                            }
                            if (*(var_1D0 + r25 * 0x8) != 0x0) {
                                    r0 = [r20 getViewHandler:r2];
                                    r0 = [r0 retain];
                                    [r0 create:r2];
                                    r0 = objc_msgSend(r21, r19);
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r20, r22);
                                    [r24 release];
                                    [r21 release];
                            }
                            r25 = r25 + 0x1;
                    } while (r25 < r26);
                    r26 = objc_msgSend(var_1E8, var_1F0);
            } while (r26 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_1E8 release];
    r0 = [NSArray alloc];
    r0 = [r0 initWithArray:var_1E8 copyItems:0x1];
    r8 = *(r20 + var_208);
    *(r20 + var_208) = r0;
    [r8 release];
    [var_1E0 release];
    [var_210 release];
    [var_1E8 release];
    [var_1F8 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)currentViews {
    r0 = self->_currentViews;
    return r0;
}

-(void)didReceiveMemoryWarning {
    [[&var_30 super] didReceiveMemoryWarning];
    r19 = [[USRVWebViewApp getCurrentApp] retain];
    r20 = [sub_1000c0e98() retain];
    r21 = [sub_1000d1038() retain];
    [r19 sendEvent:r20 category:r21 param1:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setCurrentViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentViews, arg2);
    return;
}

-(int)supportedOrientations {
    r0 = *(int32_t *)(int64_t *)&self->_supportedOrientations;
    return r0;
}

-(bool)statusBarHidden {
    r0 = *(int8_t *)(int64_t *)&self->_statusBarHidden;
    return r0;
}

-(bool)autorotate {
    r0 = *(int8_t *)(int64_t *)&self->_autorotate;
    return r0;
}

-(void)setAutorotate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autorotate = arg2;
    return;
}

-(bool)transparent {
    r0 = *(int8_t *)(int64_t *)&self->_transparent;
    return r0;
}

-(void *)viewHandlers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_viewHandlers)), 0x1);
    return r0;
}

-(bool)homeIndicatorAutoHidden {
    r0 = *(int8_t *)(int64_t *)&self->_homeIndicatorAutoHidden;
    return r0;
}

-(void)setViewHandlers:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_currentViews, 0x0);
    return;
}

@end