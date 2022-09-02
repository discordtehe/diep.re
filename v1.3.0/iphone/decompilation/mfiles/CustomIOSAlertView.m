@implementation CustomIOSAlertView

+(void *)viewWithAlertDelegate:(struct AlertViewDelegate *)arg2 {
    r0 = [CustomIOSAlertView alloc];
    r0 = [r0 initWithAlertDelegate:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAlertDelegate:(struct AlertViewDelegate *)arg2 {
    r0 = [self init];
    sub_1000117f0((int64_t *)&r0->delegate);
    sub_1000117f0(r21 + 0x20);
    sub_1000117f0(r21 + 0x40);
    sub_1000117f0(r21 + 0x60);
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->buttonHeight = 0x0;
            r19->buttonSpacerHeight = 0x0;
            [[UIScreen mainScreen] bounds];
            [[UIScreen mainScreen] bounds];
            [r19 setFrame:r2];
            *(int8_t *)(int64_t *)&r19->useMotionEffects = 0x0;
            *(int8_t *)(int64_t *)&r19->usePleaseWaitSpinner = 0x0;
            *(int8_t *)(int64_t *)&r19->closeOnTouchUpOutside = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(config));
            *(0x20 + r19 + r8) = *0x100bf9f40;
            *(int128_t *)(r19 + r8) = *(int128_t *)0x100bf9f20;
            *(int128_t *)(0x10 + r19 + r8) = *(int128_t *)0x100bf9f30;
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(keyboardWillShow:) name:**_UIKeyboardWillShowNotification object:0x0];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(keyboardWillHide:) name:**_UIKeyboardWillHideNotification object:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)show {
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    r19 = self;
    r0 = [self createDialogContainer];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(dialogView));
    *(r19 + r25) = r0;
    [[r0 layer] setShouldRasterize:0x1];
    [[UIScreen mainScreen] scale];
    [[*(r19 + r25) layer] setRasterizationScale:0x1];
    [[r19 layer] setShouldRasterize:0x1];
    [[UIScreen mainScreen] scale];
    r0 = [r19 layer];
    v0 = v0;
    [r0 setRasterizationScale:0x1];
    if (*(int8_t *)(int64_t *)&r19->useMotionEffects != 0x0) {
            [r19 applyMotionEffects];
    }
    [r19 setBackgroundColor:[UIColor colorWithRed:0x1 green:r3 blue:r4 alpha:r5]];
    r2 = *(r19 + r25);
    [r19 addSubview:r2];
    [r19 countScreenSize];
    [r19 countDialogSize];
    [*(r19 + r25) setFrame:r2];
    [[[[[[UIApplication sharedApplication] delegate] window] rootViewController] view] addSubview:r2];
    CATransform3DMakeScale([[*(r19 + r25) layer] setOpacity:r2], @selector(setOpacity:), r19);
    [[*(r19 + r25) layer] setTransform:&var_1E0];
    r0 = *((int64_t *)&r19->delegate + 0x18);
    if (r0 != 0x0) {
            (*(*r0 + 0x30))();
    }
    [UIView animateWithDuration:0x0 delay:&stack[-536] options:&var_230 animations:r5 completion:r6];
    return;
}

-(void)setViewStyle:(int)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 == 0x2) goto loc_1009cd264;

loc_1009cd240:
    if (r2 == 0x1) goto loc_1009cd27c;

loc_1009cd248:
    if (r2 != 0x0) goto .l1;

loc_1009cd24c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(config));
    r8 = r0 + r8;
    r9 = 0x100bf9f20;
    goto loc_1009cd290;

loc_1009cd290:
    r10 = *(r9 + 0x20);
    q0 = *(int128_t *)r9;
    q1 = *(int128_t *)(r9 + 0x10);
    *(int128_t *)r8 = q0;
    *(int128_t *)(r8 + 0x10) = q1;
    *(r8 + 0x20) = r10;
    return;

.l1:
    return;

loc_1009cd27c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(config));
    r8 = r0 + r8;
    r9 = 0x100bf9f48;
    goto loc_1009cd290;

loc_1009cd264:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(config));
    r8 = r0 + r8;
    r9 = 0x100bf9f70;
    goto loc_1009cd290;
}

-(void)customIOS7dialogButtonTouchUpInside:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r0->onButtonTouchUpInside;
    if (r20 != 0x0) {
            r2 = [r2 tag];
            r3 = *(r20 + 0x10);
            (r3)(r20, r0, r2, r3);
    }
    return;
}

-(void)close {
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x450;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(dialogView));
    r0 = *(self + r21);
    r0 = [r0 layer];
    if (r0 != 0x0) {
            [r0 transform];
    }
    else {
            v0 = 0x0;
            var_50 = q0;
            stack[-80] = q0;
            var_70 = q0;
            stack[-112] = q0;
            var_90 = q0;
            stack[-144] = q0;
            var_B0 = q0;
            stack[-176] = q0;
    }
    d0 = **_NSFoundationVersionNumber;
    asm { frintm     d0, d0 };
    if (d0 <= *0x100bf9f08) {
            r0 = *(r19 + r21);
            r2 = @"layer.transform.rotation.z";
            r0 = [r0 valueForKeyPath:r2];
            r1 = @selector(floatValue);
            r0 = objc_msgSend(r0, r1);
            asm { fcvt       d0, s0 };
            CATransform3DMakeScale(CATransform3DMakeRotation(r0, r1, r2, r3), r1, r2);
            CATransform3DConcat(&var_230, &stack[-704]);
            [objc_msgSend(*(r19 + r21), r20) setTransform:&var_3B0];
    }
    r22 = &var_458;
    [[*(r19 + r21) layer] setOpacity:r2];
    r0 = *((int64_t *)&r19->delegate + 0x58);
    if (r0 != 0x0) {
            (*(*r0 + 0x30))();
    }
    *(int128_t *)(r22 + 0x68) = var_70;
    *(int128_t *)(r22 + 0x78) = stack[-112];
    *(int128_t *)(r22 + 0x88) = var_50;
    *(int128_t *)(r22 + 0x98) = stack[-80];
    *(int128_t *)(r22 + 0x58) = stack[-144];
    [UIView animateWithDuration:0x0 delay:&var_458 options:&var_480 animations:r5 completion:r6];
    return;
}

-(void *)createSpinnerView {
    r19 = [[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0x0] autorelease];
    [r19 setColor:[UIColor blackColor]];
    [r19 startAnimating];
    r0 = r19;
    return r0;
}

-(void)addButtonsToView:(void *)arg2 {
    r0 = self;
    r31 = r31 - 0x180;
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
    *(r29 + 0xffffffffffffff60) = arg2;
    var_C8 = (int64_t *)&r0->buttonConfigs;
    if (*(int128_t *)(int64_t *)&r0->buttonConfigs != *(int128_t *)((int64_t *)&r0->buttonConfigs + 0x8)) {
            r27 = r0;
            [*(r29 + 0xffffffffffffff60) bounds];
            v9 = v2;
            r21 = *(int128_t *)var_C8;
            r23 = *(int128_t *)(var_C8 + 0x8);
            [r27->containerView frame];
            r25 = *(int128_t *)var_C8;
            if (*(int128_t *)(var_C8 + 0x8) != r25) {
                    v8 = v3;
                    r28 = 0x0;
                    r22 = 0x0;
                    asm { ucvtf      d0, x8 };
                    r19 = @selector(colorWithRed:green:blue:alpha:);
                    r20 = @selector(addSubview:);
                    asm { fdiv       d9, d9, d0 };
                    var_118 = r27 + 0x18;
                    var_158 = sign_extend_64(*(int32_t *)ivar_offset(_buttonAlignment));
                    var_160 = sign_extend_64(*(int32_t *)ivar_offset(config));
                    do {
                            r26 = [UIButton buttonWithType:0x0];
                            if (*(int32_t *)(r27 + var_158) != 0x0) {
                                    *(r29 + 0xffffffffffffff50) = r22;
                                    [*(r29 + 0xffffffffffffff60) bounds];
                                    *(r29 + 0xffffffffffffff58) = r28;
                                    [r26 setFrame:0x0];
                                    [UIView alloc];
                                    r19 = r19;
                                    r20 = r20;
                                    r25 = r25;
                                    [r23 bounds];
                                    d3 = *(r27 + r21);
                                    [[r24 initWithFrame:0x0] setBackgroundColor:objc_msgSend(@class(UIColor), r19)];
                                    r22 = *(r29 + 0xffffffffffffff50);
                                    objc_msgSend(r23, r20);
                                    d0 = *(r27 + r28);
                                    r28 = *(r29 + 0xffffffffffffff58);
                                    d8 = d8 + d0 + *(r27 + r21);
                            }
                            else {
                                    var_D0 = @selector(bounds);
                                    var_168 = @selector(setFrame:);
                                    asm { ucvtf      d0, x22 };
                                    objc_msgSend(*(r29 + 0xffffffffffffff60), var_D0);
                                    objc_msgSend(r26, var_168);
                            }
                            [r26 addTarget:r27 action:@selector(customIOS7dialogButtonTouchUpInside:) forControlEvents:0x40];
                            r2 = r22;
                            [r26 setTag:r2];
                            if ((sign_extend_64(*(int8_t *)(0x17 + r25 + r28)) & 0xffffffff80000000) != 0x0) {
                                    r2 = *(r25 + r28);
                            }
                            [NSString stringWithUTF8String:r2];
                            [r26 setTitle:r2 forState:r3];
                            [r26 setTitleColor:objc_msgSend(@class(UIColor), r19) forState:0x0];
                            [r26 setTitleColor:objc_msgSend(@class(UIColor), r19) forState:0x1];
                            r1 = @selector(titleLabel);
                            r24 = objc_msgSend(r26, r1);
                            r8 = *(int8_t *)(0x39 + r25 + r28);
                            d0 = *(var_118 + var_160);
                            if (r8 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r1 = @selector(boldSystemFontOfSize:);
                                    }
                                    else {
                                            r1 = @selector(systemFontOfSize:);
                                    }
                            }
                            [r24 setFont:objc_msgSend(@class(UIFont), r1)];
                            [[r26 titleLabel] setNumberOfLines:0x0];
                            [[r26 titleLabel] setTextAlignment:0x1];
                            [[r26 layer] setCornerRadius:0x1];
                            objc_msgSend(*(r29 + 0xffffffffffffff60), r20);
                            r22 = r22 + 0x1;
                            r25 = *(int128_t *)var_C8;
                            r28 = r28 + 0x40;
                    } while (r22 < (*(int128_t *)(var_C8 + 0x8) - r25) / 0x40);
            }
    }
    return;
}

-(void *)createDialogContainer {
    r31 = r31 - 0xd0;
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
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(containerView));
    if (*(self + r20) == 0x0) {
            *(r19 + r20) = [r19 createContainerView];
    }
    var_98 = r20;
    [r19 countScreenSize];
    v8 = v0;
    [r19 countDialogSize];
    [r19 setFrame:r2];
    r20 = [[UIView alloc] initWithFrame:r2];
    r27 = [CAGradientLayer layer];
    [r20 bounds];
    [r27 setFrame:r2];
    r21 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] CGColor];
    [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] CGColor];
    [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] CGColor];
    r2 = [NSArray arrayWithObjects:r21];
    [r27 setColors:r2];
    [r27 setCornerRadius:r2];
    r0 = [r20 layer];
    r2 = r27;
    r19 = r19;
    [r0 insertSublayer:r2 atIndex:0x0];
    [[r20 layer] setCornerRadius:r2];
    r21 = [[*(&@class(MCConfigurationData) + 0x700) colorWithRed:r2 green:0x0 blue:r4 alpha:r5] CGColor];
    [[r20 layer] setBorderColor:r21];
    [[r20 layer] setBorderWidth:r21];
    [[r20 layer] setShadowRadius:r21];
    [[r20 layer] setShadowOpacity:r21];
    [[r20 layer] setShadowOffset:r21];
    r21 = [[*(&@class(MCConfigurationData) + 0x700) blackColor] CGColor];
    [[r20 layer] setShadowColor:r21];
    [r20 bounds];
    v9 = v1;
    [[r20 layer] cornerRadius];
    [[r20 layer] setShadowPath:[[UIBezierPath bezierPathWithRoundedRect:r21 cornerRadius:0x0] CGPath]];
    if (*(int32_t *)(int64_t *)&r19->_buttonAlignment == 0x0) {
            r21 = [UIView alloc];
            [r20 bounds];
            [r20 bounds];
            [[r21 initWithFrame:r2] setBackgroundColor:[*(&@class(MCConfigurationData) + 0x700) colorWithRed:r2 green:0x0 blue:r4 alpha:r5]];
            [r20 addSubview:r2];
    }
    [r20 addSubview:r2];
    [r19 addButtonsToView:r20];
    r0 = r20;
    return r0;
}

-(struct CGSize)countDialogSize {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(containerView));
    [*(self + r22) frame];
    r0 = *(self + r22);
    r0 = [r0 frame];
    asm { ucvtf      d1, x21 };
    return r0;
}

-(struct CGSize)countScreenSize {
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(buttonConfigs));
    if (*(int128_t *)(0x8 + r0 + r8) == *(int128_t *)(r0 + r8)) {
            r0->buttonHeight = 0x0;
            d0 = 0x0;
    }
    else {
            r0->buttonHeight = *((int64_t *)&r0->config + 0x20);
            d0 = 0x3ff0000000000000;
    }
    r0->buttonSpacerHeight = d0;
    [[UIScreen mainScreen] bounds];
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 bounds];
    return r0;
}

-(void *)createContainerView {
    r31 = r31 - 0x170;
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
    *(r29 + 0xffffffffffffff70) = **___stack_chk_guard;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(title));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            r2 = @"";
            if ([r0 isEqualToString:r2] != 0x0) {
                    r0 = r20->message;
                    if (r0 != 0x0) {
                            r2 = @"";
                            if ([r0 isEqualToString:r2] != 0x0) {
                                    r0 = [UIView alloc];
                                    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                                            r0 = [r0 initWithFrame:r2];
                                    }
                                    else {
                                            r0 = __stack_chk_fail();
                                    }
                            }
                            else {
                                    r2 = @"";
                                    r19 = [NSMutableArray array];
                                    r0 = *(r20 + r22);
                                    d8 = 0x0;
                                    if (r0 != 0x0) {
                                            r2 = @"";
                                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                                    r0 = [UIFont boldSystemFontOfSize:@""];
                                                    d9 = 0x0;
                                                    d1 = 0x0;
                                                    v2 = v8;
                                                    r22 = sub_1009cde3c(r0, *(r20 + r22));
                                                    r0 = r20->message;
                                                    if (r0 != 0x0 && [r0 isEqualToString:r2] == 0x0) {
                                                            d9 = *0x100bf9f10;
                                                    }
                                                    d3 = 0x0;
                                                    [r22 frame];
                                                    d8 = d9 + d3;
                                                    r2 = r22;
                                                    [r19 addObject:r2];
                                            }
                                    }
                                    r25 = sign_extend_64(*(int32_t *)ivar_offset(message));
                                    r0 = *(r20 + r25);
                                    if (r0 != 0x0) {
                                            r2 = @"";
                                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                                    r26 = (int64_t *)&r20->config;
                                                    r0 = [UIFont systemFontOfSize:@""];
                                                    v2 = v9;
                                                    r22 = sub_1009cde3c(r0, *(r20 + r25));
                                                    [[UIScreen mainScreen] bounds];
                                                    d12 = 0x0 * *0x100b9b498;
                                                    [r22 bounds];
                                                    if (0x0 >= d12) {
                                                            r28 = 0x1;
                                                            do {
                                                                    r23 = @selector(bounds);
                                                                    r21 = @selector(systemFontOfSize:);
                                                                    r0 = @class(UIFont);
                                                                    asm { scvtf      d1, w28 };
                                                                    r0 = objc_msgSend(r0, r21);
                                                                    v2 = v9;
                                                                    r0 = sub_1009cde3c(r0, *(r20 + r25));
                                                                    r22 = r0;
                                                                    r28 = r28 + 0x1;
                                                                    objc_msgSend(r0, r23);
                                                            } while (0x0 >= d12);
                                                    }
                                                    if ([r19 count] == 0x0) {
                                                            asm { fcsel      d0, d10, d0, eq };
                                                    }
                                                    d3 = 0x0;
                                                    [r22 frame];
                                                    d8 = d3 + d8 + 0x4012000000000000;
                                                    r2 = r22;
                                                    [r19 addObject:r2];
                                            }
                                    }
                                    if (*(int8_t *)(int64_t *)&r20->usePleaseWaitSpinner != 0x0) {
                                            r0 = [r20 createSpinnerView];
                                            r21 = r0;
                                            [r0 frame];
                                            v9 = v0;
                                            v10 = v2;
                                            v11 = v3;
                                            if ([r19 count] == 0x0) {
                                                    asm { fcsel      d0, d1, d0, eq };
                                            }
                                            [r21 setFrame:r2];
                                            [r21 frame];
                                            d8 = d3 + d8 + 0x4024000000000000;
                                            r2 = r21;
                                            [r19 addObject:r2];
                                    }
                                    r0 = @class(UIView);
                                    r0 = [r0 alloc];
                                    r21 = [r0 initWithFrame:r2];
                                    var_168 = [[UIView alloc] initWithFrame:r2];
                                    v0 = 0x0;
                                    var_150 = q0;
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            r20 = *var_150;
                                            do {
                                                    r28 = 0x0;
                                                    do {
                                                            if (*var_150 != r20) {
                                                                    objc_enumerationMutation(r19);
                                                            }
                                                            [r21 addSubview:*(var_158 + r28 * 0x8)];
                                                            [r21 center];
                                                            objc_msgSend(r27, r25);
                                                            v0 = v0;
                                                            objc_msgSend(r27, r26);
                                                            r28 = r28 + 0x1;
                                                    } while (r28 < r23);
                                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r23 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r19 = var_168;
                                    [r19 addSubview:r21];
                                    [r19 center];
                                    [r21 setCenter:r21];
                                    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                                            r0 = r19;
                                    }
                                    else {
                                            r0 = __stack_chk_fail();
                                    }
                            }
                    }
                    else {
                            r0 = [UIView alloc];
                            if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                                    r0 = [r0 initWithFrame:r2];
                            }
                            else {
                                    r0 = __stack_chk_fail();
                            }
                    }
            }
            else {
                    r2 = @"";
                    r19 = [NSMutableArray array];
                    r0 = *(r20 + r22);
                    d8 = 0x0;
                    if (r0 != 0x0) {
                            r2 = @"";
                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                    r0 = [UIFont boldSystemFontOfSize:@""];
                                    d9 = 0x0;
                                    d1 = 0x0;
                                    v2 = v8;
                                    r22 = sub_1009cde3c(r0, *(r20 + r22));
                                    r0 = r20->message;
                                    if (r0 != 0x0 && [r0 isEqualToString:r2] == 0x0) {
                                            d9 = *0x100bf9f10;
                                    }
                                    d3 = 0x0;
                                    [r22 frame];
                                    d8 = d9 + d3;
                                    r2 = r22;
                                    [r19 addObject:r2];
                            }
                    }
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(message));
                    r0 = *(r20 + r25);
                    if (r0 != 0x0) {
                            r2 = @"";
                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                    r26 = (int64_t *)&r20->config;
                                    r0 = [UIFont systemFontOfSize:@""];
                                    v2 = v9;
                                    r22 = sub_1009cde3c(r0, *(r20 + r25));
                                    [[UIScreen mainScreen] bounds];
                                    d12 = 0x0 * *0x100b9b498;
                                    [r22 bounds];
                                    if (0x0 >= d12) {
                                            r28 = 0x1;
                                            do {
                                                    r23 = @selector(bounds);
                                                    r21 = @selector(systemFontOfSize:);
                                                    r0 = @class(UIFont);
                                                    asm { scvtf      d1, w28 };
                                                    r0 = objc_msgSend(r0, r21);
                                                    v2 = v9;
                                                    r0 = sub_1009cde3c(r0, *(r20 + r25));
                                                    r22 = r0;
                                                    r28 = r28 + 0x1;
                                                    objc_msgSend(r0, r23);
                                            } while (0x0 >= d12);
                                    }
                                    if ([r19 count] == 0x0) {
                                            asm { fcsel      d0, d10, d0, eq };
                                    }
                                    d3 = 0x0;
                                    [r22 frame];
                                    d8 = d3 + d8 + 0x4012000000000000;
                                    r2 = r22;
                                    [r19 addObject:r2];
                            }
                    }
                    if (*(int8_t *)(int64_t *)&r20->usePleaseWaitSpinner != 0x0) {
                            r0 = [r20 createSpinnerView];
                            r21 = r0;
                            [r0 frame];
                            v9 = v0;
                            v10 = v2;
                            v11 = v3;
                            if ([r19 count] == 0x0) {
                                    asm { fcsel      d0, d1, d0, eq };
                            }
                            [r21 setFrame:r2];
                            [r21 frame];
                            d8 = d3 + d8 + 0x4024000000000000;
                            r2 = r21;
                            [r19 addObject:r2];
                    }
                    r0 = @class(UIView);
                    r0 = [r0 alloc];
                    r21 = [r0 initWithFrame:r2];
                    var_168 = [[UIView alloc] initWithFrame:r2];
                    v0 = 0x0;
                    var_150 = q0;
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r20 = *var_150;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_150 != r20) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            [r21 addSubview:*(var_158 + r28 * 0x8)];
                                            [r21 center];
                                            objc_msgSend(r27, r25);
                                            v0 = v0;
                                            objc_msgSend(r27, r26);
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    r19 = var_168;
                    [r19 addSubview:r21];
                    [r19 center];
                    [r21 setCenter:r21];
                    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                            r0 = r19;
                    }
                    else {
                            r0 = __stack_chk_fail();
                    }
            }
    }
    else {
            r0 = r20->message;
            if (r0 != 0x0) {
                    r2 = @"";
                    if ([r0 isEqualToString:r2] != 0x0) {
                            r0 = [UIView alloc];
                            if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                                    r0 = [r0 initWithFrame:r2];
                            }
                            else {
                                    r0 = __stack_chk_fail();
                            }
                    }
                    else {
                            r2 = @"";
                            r19 = [NSMutableArray array];
                            r0 = *(r20 + r22);
                            d8 = 0x0;
                            if (r0 != 0x0) {
                                    r2 = @"";
                                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                            r0 = [UIFont boldSystemFontOfSize:@""];
                                            d9 = 0x0;
                                            d1 = 0x0;
                                            v2 = v8;
                                            r22 = sub_1009cde3c(r0, *(r20 + r22));
                                            r0 = r20->message;
                                            if (r0 != 0x0 && [r0 isEqualToString:r2] == 0x0) {
                                                    d9 = *0x100bf9f10;
                                            }
                                            d3 = 0x0;
                                            [r22 frame];
                                            d8 = d9 + d3;
                                            r2 = r22;
                                            [r19 addObject:r2];
                                    }
                            }
                            r25 = sign_extend_64(*(int32_t *)ivar_offset(message));
                            r0 = *(r20 + r25);
                            if (r0 != 0x0) {
                                    r2 = @"";
                                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                            r26 = (int64_t *)&r20->config;
                                            r0 = [UIFont systemFontOfSize:@""];
                                            v2 = v9;
                                            r22 = sub_1009cde3c(r0, *(r20 + r25));
                                            [[UIScreen mainScreen] bounds];
                                            d12 = 0x0 * *0x100b9b498;
                                            [r22 bounds];
                                            if (0x0 >= d12) {
                                                    r28 = 0x1;
                                                    do {
                                                            r23 = @selector(bounds);
                                                            r21 = @selector(systemFontOfSize:);
                                                            r0 = @class(UIFont);
                                                            asm { scvtf      d1, w28 };
                                                            r0 = objc_msgSend(r0, r21);
                                                            v2 = v9;
                                                            r0 = sub_1009cde3c(r0, *(r20 + r25));
                                                            r22 = r0;
                                                            r28 = r28 + 0x1;
                                                            objc_msgSend(r0, r23);
                                                    } while (0x0 >= d12);
                                            }
                                            if ([r19 count] == 0x0) {
                                                    asm { fcsel      d0, d10, d0, eq };
                                            }
                                            d3 = 0x0;
                                            [r22 frame];
                                            d8 = d3 + d8 + 0x4012000000000000;
                                            r2 = r22;
                                            [r19 addObject:r2];
                                    }
                            }
                            if (*(int8_t *)(int64_t *)&r20->usePleaseWaitSpinner != 0x0) {
                                    r0 = [r20 createSpinnerView];
                                    r21 = r0;
                                    [r0 frame];
                                    v9 = v0;
                                    v10 = v2;
                                    v11 = v3;
                                    if ([r19 count] == 0x0) {
                                            asm { fcsel      d0, d1, d0, eq };
                                    }
                                    [r21 setFrame:r2];
                                    [r21 frame];
                                    d8 = d3 + d8 + 0x4024000000000000;
                                    r2 = r21;
                                    [r19 addObject:r2];
                            }
                            r0 = @class(UIView);
                            r0 = [r0 alloc];
                            r21 = [r0 initWithFrame:r2];
                            var_168 = [[UIView alloc] initWithFrame:r2];
                            v0 = 0x0;
                            var_150 = q0;
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r23 = r0;
                                    r20 = *var_150;
                                    do {
                                            r28 = 0x0;
                                            do {
                                                    if (*var_150 != r20) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    [r21 addSubview:*(var_158 + r28 * 0x8)];
                                                    [r21 center];
                                                    objc_msgSend(r27, r25);
                                                    v0 = v0;
                                                    objc_msgSend(r27, r26);
                                                    r28 = r28 + 0x1;
                                            } while (r28 < r23);
                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r23 = r0;
                                    } while (r0 != 0x0);
                            }
                            r19 = var_168;
                            [r19 addSubview:r21];
                            [r19 center];
                            [r21 setCenter:r21];
                            if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                                    r0 = r19;
                            }
                            else {
                                    r0 = __stack_chk_fail();
                            }
                    }
            }
            else {
                    r0 = [UIView alloc];
                    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff70)) {
                            r0 = [r0 initWithFrame:r2];
                    }
                    else {
                            r0 = __stack_chk_fail();
                    }
            }
    }
    return r0;
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:**_UIKeyboardWillHideNotification object:0x0];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:**_UIKeyboardWillShowNotification object:0x0];
    [[&var_30 super] dealloc];
    return;
}

-(void)changeOrientationForIOS7 {
    r31 = r31 - 0xf0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = &saved_fp - 0x50;
    r20 = [[UIApplication sharedApplication] statusBarOrientation];
    r0 = [r19 valueForKeyPath:@"layer.transform.rotation.z"];
    r0 = [r0 floatValue];
    asm { fcvt       d0, s0 };
    if (r20 != 0x2) {
            if (r20 != 0x3) {
                    if (r20 == 0x4) {
                            d1 = *0x100be3f88;
                    }
                    else {
                            d1 = 0x0;
                    }
            }
            else {
                    d1 = *0x100b9e2b8;
            }
    }
    else {
            d1 = *0x100b9b018;
    }
    CGAffineTransformMakeRotation(r0);
    *(int128_t *)r21 = var_80;
    *(int128_t *)(r21 + 0x10) = stack[-128];
    *(int128_t *)(r21 + 0x20) = var_60;
    [UIView animateWithDuration:0x0 delay:&var_D8 options:0x0 animations:r5 completion:r6];
    return;
}

-(void)applyMotionEffects {
    r31 = r31 - 0x90;
    var_60 = d9;
    stack[-104] = d8;
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
    var_68 = **___stack_chk_guard;
    r21 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0x0];
    r2 = [NSNumber numberWithDouble:@"center.x"];
    [r21 setMinimumRelativeValue:r2];
    [r21 setMaximumRelativeValue:[NSNumber numberWithDouble:r2]];
    r23 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:0x1];
    r2 = [NSNumber numberWithDouble:@"center.y"];
    [r23 setMinimumRelativeValue:r2];
    [r23 setMaximumRelativeValue:[NSNumber numberWithDouble:r2]];
    r20 = [[UIMotionEffectGroup alloc] init];
    [r20 setMotionEffects:[NSArray arrayWithObjects:&var_78 count:0x2]];
    [self->dialogView addMotionEffect:r20];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)changeOrientationForIOS8:(void *)arg2 {
    [[UIScreen mainScreen] bounds];
    [[UIScreen mainScreen] bounds];
    [UIView animateWithDuration:0x0 delay:&var_80 options:0x0 animations:r5 completion:r6];
    return;
}

-(void)deviceOrientationDidChange:(void *)arg2 {
    r0 = self;
    if (r0->parentView == 0x0) {
            [r0 changeOrientationForIOS7];
    }
    return;
}

-(void)keyboardWillHide:(void *)arg2 {
    [self countScreenSize];
    [self countDialogSize];
    [UIView animateWithDuration:0x0 delay:&var_68 options:0x0 animations:r5 completion:r6];
    return;
}

-(void)keyboardWillShow:(void *)arg2 {
    [self countScreenSize];
    [self countDialogSize];
    [[[arg2 userInfo] objectForKey:**_UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    [UIView animateWithDuration:0x0 delay:&var_88 options:0x0 animations:r5 completion:r6];
    return;
}

-(void *)onButtonTouchUpInside {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(onButtonTouchUpInside)), 0x1);
    return r0;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->closeOnTouchUpOutside != 0x0) {
            r19 = r0;
            r20 = [[r2 anyObject] view];
            [CustomIOSAlertView class];
            if ([r20 isKindOfClass:r2] != 0x0) {
                    [r19 close];
            }
    }
    return;
}

-(struct vector<mc::AlertPopup::ButtonConfig, std::__1::allocator<mc::AlertPopup::ButtonConfig> >)buttonConfigs {
    r0 = sub_1009cf59c(r8, (int64_t *)&self->buttonConfigs);
    return r0;
}

-(void)setOnButtonTouchUpInside:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void)setButtonConfigs:(struct vector<mc::AlertPopup::ButtonConfig, std::__1::allocator<mc::AlertPopup::ButtonConfig> >)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = (int64_t *)&self->buttonConfigs;
    if (r0 != r2) {
            sub_1009cf78c(r0, *(int128_t *)r2, *(int128_t *)(r2 + 0x8));
    }
    return;
}

-(void)setUseMotionEffects:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->useMotionEffects = arg2;
    return;
}

-(bool)useMotionEffects {
    r0 = *(int8_t *)(int64_t *)&self->useMotionEffects;
    return r0;
}

-(bool)usePleaseWaitSpinner {
    r0 = *(int8_t *)(int64_t *)&self->usePleaseWaitSpinner;
    return r0;
}

-(void)setUsePleaseWaitSpinner:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->usePleaseWaitSpinner = arg2;
    return;
}

-(void)setCloseOnTouchUpOutside:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->closeOnTouchUpOutside = arg2;
    return;
}

-(bool)closeOnTouchUpOutside {
    r0 = *(int8_t *)(int64_t *)&self->closeOnTouchUpOutside;
    return r0;
}

-(void *)message {
    r0 = self->message;
    return r0;
}

-(void *)title {
    r0 = self->title;
    return r0;
}

-(void)setTitle:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setMessage:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(int)buttonAlignment {
    r0 = *(int32_t *)(int64_t *)&self->_buttonAlignment;
    return r0;
}

-(void)setButtonAlignment:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_buttonAlignment = arg2;
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(delegate));
    *(0x18 + r0 + r8) = 0x0;
    *(0x38 + r0 + r8) = 0x0;
    *(0x58 + r0 + r8) = 0x0;
    *(0x78 + r0 + r8) = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(buttonConfigs));
    *(int128_t *)(r0 + r8) = 0x0;
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(0x10 + r0 + r8) = 0x0;
    return r0;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    sub_1009cf6f0((int64_t *)&self->buttonConfigs);
    r19 = (int64_t *)&self->delegate;
    r0 = *(r19 + 0x78);
    if (r19 + 0x60 == r0) goto loc_1009cf4c8;

loc_1009cf4b8:
    if (r0 == 0x0) goto loc_1009cf4d4;

loc_1009cf4bc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009cf4d0;

loc_1009cf4d0:
    (r8)();
    goto loc_1009cf4d4;

loc_1009cf4d4:
    r0 = *(r19 + 0x58);
    if (r19 + 0x40 == r0) goto loc_1009cf4f4;

loc_1009cf4e4:
    if (r0 == 0x0) goto loc_1009cf500;

loc_1009cf4e8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009cf4fc;

loc_1009cf4fc:
    (r8)();
    goto loc_1009cf500;

loc_1009cf500:
    r0 = *(r19 + 0x38);
    if (r19 + 0x20 == r0) goto loc_1009cf520;

loc_1009cf510:
    if (r0 == 0x0) goto loc_1009cf52c;

loc_1009cf514:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009cf528;

loc_1009cf528:
    (r8)();
    goto loc_1009cf52c;

loc_1009cf52c:
    r0 = *(r19 + 0x18);
    if (r19 == r0) goto loc_1009cf548;

loc_1009cf538:
    if (r0 == 0x0) goto .l1;

loc_1009cf53c:
    r1 = *(*r0 + 0x28);
    goto loc_1009cf550;

loc_1009cf550:
    (r1)();
    return;

.l1:
    return;

loc_1009cf548:
    r1 = *(*r0 + 0x20);
    goto loc_1009cf550;

loc_1009cf520:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009cf528;

loc_1009cf4f4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009cf4fc;

loc_1009cf4c8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009cf4d0;
}

@end