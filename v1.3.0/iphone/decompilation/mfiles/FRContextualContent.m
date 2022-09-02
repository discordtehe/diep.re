@implementation FRContextualContent

+(void *)objectWithDictionary:(void *)arg2 placement:(void *)arg3 delegate:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[FRContextualContent alloc] initWithDictionary:r21 placement:r20 delegate:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)hasContent {
    r0 = [self retain];
    objc_sync_enter(r0);
    [r19 _hasContent];
    objc_sync_exit(r19);
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)didExpired {
    return 0x0;
}

-(void *)bestLayoutForFrame:(struct CGRect)arg2 orientation:(long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = r2;
    r20 = self;
    r0 = [self layouts];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 == 0x0) goto loc_100957204;

loc_1009570d8:
    var_108 = q0;
    r0 = [r20 layouts];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r21 = 0x0;
    r23 = r0;
    if (r23 == 0x0) goto loc_1009571c8;

loc_10095712c:
    r21 = 0x0;
    r26 = *var_108;
    goto loc_100957138;

loc_100957138:
    r28 = 0x0;
    goto loc_100957140;

loc_100957140:
    if (*var_108 != r26) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_110 + r28 * 0x8);
    if ([r25 orientation] == r19) goto loc_1009571e4;

loc_100957174:
    if ([r25 orientation] == 0x0) {
            r25 = [r25 retain];
            [r21 release];
            r21 = r25;
    }
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100957140;

loc_1009571a8:
    r23 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_100957138;

loc_1009571c8:
    [r20 release];
    r19 = [r21 retain];
    r21 = r19;
    goto loc_1009571f8;

loc_1009571f8:
    [r21 release];
    goto loc_100957208;

loc_100957208:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009571e4:
    r19 = [r25 retain];
    [r20 release];
    goto loc_1009571f8;

loc_100957204:
    r19 = 0x0;
    goto loc_100957208;
}

-(void)show {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self showViews];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(orientationWillChange:) name:**_UIApplicationWillChangeStatusBarOrientationNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(orientationDidChange:) name:**_UIApplicationDidChangeStatusBarOrientationNotification object:0x0];
    [r0 release];
    [r19 maxShowTime];
    if (d0 > 0x0) {
            objc_initWeak(&stack[-72], r19);
            [r19 maxShowTime];
            r19 = &var_60 + 0x20;
            asm { fcvtzs     x1, d0 };
            dispatch_time(0x0, r1);
            objc_copyWeak(r19, &stack[-72]);
            dispatch_after(r20, *__dispatch_main_q, &var_60);
            objc_destroyWeak(r19);
            objc_destroyWeak(&stack[-72]);
    }
    return;
}

-(void *)initWithDictionary:(void *)arg2 placement:(void *)arg3 delegate:(void *)arg4 {
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
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = [[&var_168 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setPlacement:r22];
            [r21 set_delegate:r26];
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r24 = [[r19 valueForKey:r2] retain];
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r24 release];
                    [r20 release];
                    if (r24 != r0) {
                            r0 = [r19 valueForKey:r2];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r21 setMeta:r20];
                            [r20 release];
                    }
            }
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r24 = [[r19 valueForKey:r2] retain];
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r24 release];
                    [r20 release];
                    if (r24 != r0) {
                            r0 = [r19 valueForKey:r2];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r21 setAdContent:r20];
                            [r20 release];
                    }
            }
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r24 = [[r19 valueForKey:r2] retain];
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r24 release];
                    [r20 release];
                    if (r24 != r0) {
                            r0 = [r19 valueForKey:r2];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r21 setRedirectURL:r20];
                            [r20 release];
                    }
            }
            r23 = @selector(valueForKey:);
            r0 = objc_msgSend(r19, r23);
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r23 = @selector(valueForKey:);
                    r24 = [objc_msgSend(r19, r23) retain];
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r24 release];
                    [r20 release];
                    if (r24 != r0) {
                            var_208 = r26;
                            var_200 = r22;
                            var_1F8 = r19;
                            var_210 = @selector(valueForKey:);
                            r20 = [[r19 valueForKey:r2] retain];
                            r0 = [NSMutableArray array];
                            r29 = r29;
                            r26 = [r0 retain];
                            r0 = [r20 retain];
                            r24 = r0;
                            r25 = @selector(countByEnumeratingWithState:objects:count:);
                            r27 = objc_msgSend(r0, r25);
                            if (r27 != 0x0) {
                                    var_1F0 = @selector(countByEnumeratingWithState:objects:count:);
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    r20 = @selector(addObject:);
                                                    r0 = [FRContextualLayout objectWithDictionary:*(0x0 + r25 * 0x8) content:r21];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    objc_msgSend(r26, r20);
                                                    [r22 release];
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r27);
                                            r25 = var_1F0;
                                            r27 = objc_msgSend(r24, r25);
                                    } while (r27 != 0x0);
                            }
                            [r24 release];
                            [r21 setLayouts:r26];
                            [r21 setCallbackCount:0x0];
                            [r21 setCallbackLoaded:0x1];
                            [r21 set_hasContent:0x0];
                            var_1D8 = q0;
                            r0 = [r26 retain];
                            r26 = r0;
                            r20 = objc_msgSend(r0, r25);
                            if (r20 != 0x0) {
                                    r19 = *var_1D8;
                                    do {
                                            r23 = 0x0;
                                            do {
                                                    if (*var_1D8 != r19) {
                                                            objc_enumerationMutation(r26);
                                                    }
                                                    [*(var_1E0 + r23 * 0x8) load];
                                                    r23 = r23 + 0x1;
                                            } while (r23 < r20);
                                            r20 = objc_msgSend(r26, r25);
                                    } while (r20 != 0x0);
                            }
                            [r26 release];
                            [r26 release];
                            [r24 release];
                            r22 = var_200;
                            r19 = var_1F8;
                            r23 = var_210;
                            r26 = var_208;
                    }
            }
            r2 = @"max_show_time";
            r0 = objc_msgSend(r19, r23);
            r0 = [r0 retain];
            r20 = r0;
            [r0 floatValue];
            asm { fcvt       d0, s0 };
            [r21 setMaxShowTime:r2];
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dismiss {
    [self setDismissed:0x1];
    [self dismissViews];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)createViewsForLayout:(void *)arg2 parentView:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffff60 - 0x180;
    var_210 = self;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [arg3 retain];
    var_1D0 = r0;
    [r0 bounds];
    v9 = v2;
    [r20 windowAspectRatio];
    d14 = 0x0;
    if (d0 != 0x0) {
            [r20 windowAspectRatio];
            if (d1 != 0x0) {
                    [r20 windowAspectRatio];
                    d8 = d9 * d1;
                    objc_msgSend(r20, r19);
                    asm { fdiv       d0, d8, d0 };
                    asm { fdiv       d0, d0, d10 };
                    if (d0 < 0x3ff0000000000000) {
                            [r20 windowAspectRatio];
                            d8 = d9 * 0x3ff0000000000000;
                            [r20 windowAspectRatio];
                            asm { fdiv       d0, d8, d0 };
                            d15 = (d10 - d0) * 0x3fe0000000000000;
                    }
                    else {
                            if (!CPU_FLAGS & LE) {
                                    [r20 windowAspectRatio];
                                    d8 = d10 * d0;
                                    [r20 windowAspectRatio];
                                    asm { fdiv       d0, d8, d1 };
                                    d14 = (d9 - d0) * 0x3fe0000000000000;
                                    d15 = 0x0;
                                    v9 = v0;
                            }
                            else {
                                    d15 = 0x0;
                            }
                    }
            }
            else {
                    d15 = 0x0;
            }
    }
    else {
            d15 = 0x0;
    }
    var_1F0 = d10;
    r0 = objc_retainBlock(&var_158);
    r22 = r0;
    var_1D8 = [[NSMutableArray array] retain];
    var_208 = r20;
    r0 = [r20 buttons];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-296];
    var_1E8 = r0;
    var_200 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1A0 = r0;
    if (r0 != 0x0) {
            d9 = d14 + d8;
            d0 = d15 + var_1F0;
            var_1F8 = d0;
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1E8);
                            }
                            r19 = *(0x0 + r23 * 0x8);
                            (*(r22 + 0x10))(r22, [r19 width], @selector(width), @selector(width));
                            v10 = v0;
                            (*(r22 + 0x10))(r22, [r19 height], @selector(height), @selector(height));
                            v11 = v0;
                            if ([r19 align] != 0x0) {
                                    [r19 align];
                                    (*(r22 + 0x10))(r22, [r19 x], @selector(x), @selector(x));
                                    d0 = d9 - d0 - d10;
                                    if (r24 != 0x2) {
                                            asm { fcsel      d12, d1, d0, ne };
                                    }
                            }
                            else {
                                    (*(r22 + 0x10))(r22, [r19 x], @selector(x), @selector(x));
                            }
                            if ([r19 valign] != 0x0) {
                                    [r19 valign];
                                    (*(r22 + 0x10))(r22, [r19 y], @selector(y), @selector(y));
                                    if (r24 == 0x2) {
                                            d0 = var_1F8 - d0;
                                    }
                                    else {
                                            d0 = d15 + d0;
                                    }
                            }
                            else {
                                    (*(r22 + 0x10))(r22, [r19 y], @selector(y), @selector(y));
                            }
                            r28 = @selector(addObject:);
                            r0 = [FRContextualButtonView alloc];
                            v0 = v12;
                            r19 = [r0 initWithFrame:r19 button:r3];
                            [var_1D0 addSubview:r19];
                            [var_1D0 bringSubviewToFront:r19];
                            objc_msgSend(var_1D8, r28);
                            [r19 release];
                            r23 = r23 + 0x1;
                    } while (r23 < var_1A0);
                    r3 = &stack[-296];
                    r0 = objc_msgSend(var_1E8, var_200);
                    var_1A0 = r0;
            } while (r0 != 0x0);
    }
    [var_1E8 release];
    [var_210 setViews:var_1D8];
    [var_1D8 release];
    [r22 release];
    [var_1D0 release];
    [var_208 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            __stack_chk_fail();
    }
    return;
}

-(void)orientationWillChange:(void *)arg2 {
    [self dismissViews];
    return;
}

-(void)dismissViews {
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
    r19 = self;
    r0 = [self views];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r19 views] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r21 release];
            if (r22 != r0) {
                    var_108 = q0;
                    r0 = [r19 views];
                    r0 = [r0 retain];
                    r20 = r0;
                    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r22 != 0x0) {
                            r24 = *var_108;
                            do {
                                    r26 = 0x0;
                                    do {
                                            if (*var_108 != r24) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [*(var_110 + r26 * 0x8) removeFromSuperview];
                                            r26 = r26 + 0x1;
                                    } while (r26 < r22);
                                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r22 != 0x0);
                    }
                    [r20 release];
                    [r19 setViews:0x0];
            }
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    else {
            if (**___stack_chk_guard == **___stack_chk_guard) {
                    [r21 release];
            }
            else {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)orientationDidChange:(void *)arg2 {
    dispatch_after(dispatch_time(0x0, 0x17d78400), *__dispatch_main_q, &var_38);
    return;
}

-(void)showViews {
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
    r24 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [[r0 keyWindow] retain];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r19 release];
    if (r22 != -0x1) goto loc_100957da8;

loc_100957bd8:
    r3 = 0x40;
    r0 = [r20 subviews];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) goto loc_100957da8;

loc_100957c14:
    r0 = [r20 subviews];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 lastObject];
    r29 = r29;
    r21 = [r0 retain];
    [r20 release];
    var_108 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-232];
    var_128 = r1;
    var_120 = r0;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_100957d90;

loc_100957c8c:
    var_138 = r21;
    var_130 = r24;
    r20 = *var_108;
    goto loc_100957cb4;

loc_100957cb4:
    r21 = 0x0;
    goto loc_100957cc4;

loc_100957cc4:
    if (*var_108 != r20) {
            objc_enumerationMutation(var_120);
    }
    r26 = @selector(class);
    r22 = *(var_110 + r21 * 0x8);
    objc_msgSend(r22, r26);
    r0 = objc_msgSend(@class(NSString), r27);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (objc_msgSend(r0, r28) != 0x0) goto loc_100957d6c;

loc_100957d28:
    [r19 release];
    r21 = r21 + 0x1;
    if (r21 < r23) goto loc_100957cc4;

loc_100957d3c:
    r3 = &stack[-232];
    r23 = objc_msgSend(var_120, var_128);
    if (r23 != 0x0) goto loc_100957cb4;

loc_100957d64:
    r20 = var_138;
    goto loc_100957d88;

loc_100957d88:
    r24 = var_130;
    goto loc_100957d94;

loc_100957d94:
    [var_120 release];
    [var_120 release];
    goto loc_100957da8;

loc_100957da8:
    [r20 frame];
    if ([FRPlacementContent viewOrientationWithFrame:0x1 landscapeForSquare:r3] < 0x3) {
            asm { cinc       x19, x22, lo };
    }
    [r20 frame];
    r0 = [r24 bestLayoutForFrame:@class(FRPlacementContent) orientation:r3];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    [r24 dismissViews];
                    [r24 createViewsForLayout:r21 parentView:r20];
            }
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100957d6c:
    r20 = [r22 retain];
    [var_138 release];
    [r19 release];
    goto loc_100957d88;

loc_100957d90:
    r20 = r21;
    goto loc_100957d94;
}

-(void)layout:(void *)arg2 loaded:(bool)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    [r20 setCallbackCount:[r20 callbackCount] + 0x1];
    [r20 setCallbackLoaded:[r20 callbackLoaded] & arg3];
    r21 = [r20 callbackCount];
    r0 = [r20 layouts];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r21 < r23) {
            objc_sync_exit(r20);
            [r20 release];
    }
    else {
            [r20 set_hasContent:0x1];
            objc_sync_exit(r20);
            [r20 release];
            if (([r20 delegateGotReady] & 0x1) == 0x0) {
                    r0 = [r20 _delegate];
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            dispatch_async(*__dispatch_main_q, &var_58);
                    }
            }
    }
    [r19 release];
    return;
}

-(void)buttonClicked:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if ([r0 bDismiss] != 0x0) {
            [r19 dismiss];
    }
    [FiveRocks handleClick:r20 placementContent:r19];
    [r20 release];
    return;
}

-(double)maxShowTime {
    r0 = self;
    return r0;
}

-(void)setMaxShowTime:(double)arg2 {
    self->_maxShowTime = d0;
    return;
}

-(void *)layouts {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_layouts)), 0x1);
    return r0;
}

-(void)setLayouts:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)views {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_views)), 0x1);
    return r0;
}

-(void)setViews:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(long long)callbackCount {
    r0 = self->_callbackCount;
    return r0;
}

-(void)setCallbackCount:(long long)arg2 {
    self->_callbackCount = arg2;
    return;
}

-(bool)callbackLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_callbackLoaded & 0x1;
    return r0;
}

-(void)setCallbackLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_callbackLoaded = arg2;
    return;
}

-(bool)_hasContent {
    r0 = *(int8_t *)(int64_t *)&self->__hasContent & 0x1;
    return r0;
}

-(void)set_hasContent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->__hasContent = arg2;
    return;
}

-(bool)delegateGotReady {
    r0 = *(int8_t *)(int64_t *)&self->_delegateGotReady & 0x1;
    return r0;
}

-(void)setDelegateGotReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_delegateGotReady = arg2;
    return;
}

-(bool)dismissed {
    r0 = *(int8_t *)(int64_t *)&self->_dismissed & 0x1;
    return r0;
}

-(void)setDismissed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_dismissed = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_views, 0x0);
    objc_storeStrong((int64_t *)&self->_layouts, 0x0);
    return;
}

@end