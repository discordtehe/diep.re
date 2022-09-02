@implementation CustomIOS7AlertView

-(void *)init {
    r0 = [self initWithParentView:0x0];
    return r0;
}

-(void *)initWithParentView:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if (r20 != 0x0) {
                    [r20 frame];
                    [r19 setFrame:r2];
                    r19->parentView = r20;
            }
            else {
                    [[UIScreen mainScreen] bounds];
                    [[UIScreen mainScreen] bounds];
                    [r19 setFrame:r2];
            }
            r19->delegate = r19;
            *(int8_t *)(int64_t *)&r19->useMotionEffects = 0x0;
            [r19 setButtonTitles:[NSArray arrayWithObjects:&var_40 count:0x1]];
            [[NSNotificationCenter defaultCenter] addObserver:r2 selector:r3 name:r4 object:r5];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)customIOS7dialogButtonTouchUpInside:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = self->delegate;
    if (r21 != 0x0) {
            [r21 customIOS7dialogButtonTouchUpInside:r19 clickedButtonAtIndex:[r20 tag]];
    }
    r21 = r19->onButtonTouchUpInside;
    if (r21 != 0x0) {
            r2 = [r20 tag];
            r3 = *(r21 + 0x10);
            (r3)(r21, r19, r2, r3);
    }
    return;
}

-(void)show {
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    r19 = self;
    r21 = &stack[-352];
    r2 = [self createContainerView];
    [r19 setDialogView:r2];
    if (*(int8_t *)(int64_t *)&r19->useMotionEffects != 0x0) {
            [r19 applyMotionEffects];
    }
    CATransform3DMakeScale([[*(r19 + sign_extend_64(*(int32_t *)ivar_offset(dialogView))) layer] setOpacity:r2], @selector(setOpacity:), r2);
    r0 = *(r19 + r22);
    r0 = [r0 layer];
    q0 = *(int128_t *)(r21 + 0xc0);
    q1 = *(int128_t *)(r21 + 0xd0);
    *(int128_t *)(r21 + 0x40) = q0;
    *(int128_t *)(r21 + 0x50) = q1;
    q0 = *(int128_t *)(r21 + 0xe0);
    q1 = *(int128_t *)(r21 + 0xf0);
    *(int128_t *)(r21 + 0x60) = q0;
    *(int128_t *)(r21 + 0x70) = q1;
    q0 = *(int128_t *)(r21 + 0x80);
    q1 = *(int128_t *)(r21 + 0x90);
    *(int128_t *)r21 = q0;
    *(int128_t *)(r21 + 0x10) = q1;
    q0 = *(int128_t *)(r21 + 0xa0);
    q1 = *(int128_t *)(r21 + 0xb0);
    *(int128_t *)(r21 + 0x20) = q0;
    *(int128_t *)(r21 + 0x30) = q1;
    [r0 setTransform:&stack[-352]];
    [r19 setBackgroundColor:[UIColor colorWithRed:&stack[-352] green:r3 blue:r4 alpha:r5]];
    [r19 addSubview:*(r19 + r22)];
    r0 = r19->parentView;
    if (r0 != 0x0) goto loc_1005b7ff8;

loc_1005b7eec:
    r0 = [UIApplication sharedApplication];
    r0 = [r0 statusBarOrientation];
    if (r0 == 0x2) goto loc_1005b7f44;

loc_1005b7f18:
    if (r0 == 0x3) goto loc_1005b7f60;

loc_1005b7f20:
    if (r0 != 0x4) goto loc_1005b7f94;

loc_1005b7f28:
    r24 = &stack[-400];
    CGAffineTransformMakeRotation(r0);
    r2 = &stack[-448];
    goto loc_1005b7f78;

loc_1005b7f78:
    q0 = *(int128_t *)r24;
    q1 = *(int128_t *)(r24 + 0x10);
    q2 = *(int128_t *)(r24 + 0x20);
    *(int128_t *)(r2 + 0x10) = q1;
    *(int128_t *)(r2 + 0x20) = q2;
    *(int128_t *)r2 = q0;
    [r19 setTransform:r2];
    goto loc_1005b7f94;

loc_1005b7f94:
    [r19 frame];
    [r19 frame];
    [r19 setFrame:r2];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 windows];
    r0 = [r0 lastObject];
    goto loc_1005b7ff8;

loc_1005b7ff8:
    [r0 addSubview:r19];
    [UIView animateWithDuration:0x0 delay:&var_298 options:0x0 animations:r5 completion:r6];
    return;

loc_1005b7f60:
    r24 = &stack[-496];
    CGAffineTransformMakeRotation(r0);
    r2 = &stack[-544];
    goto loc_1005b7f78;

loc_1005b7f44:
    r24 = &stack[-592];
    CGAffineTransformMakeRotation(r0);
    r2 = &stack[-640];
    goto loc_1005b7f78;
}

-(void)customIOS7dialogButtonTouchUpInside:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    [self close];
    return;
}

-(void)close {
    [self close:0x0];
    return;
}

-(void)close:(void *)arg2 {
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x3e0;
    r19 = arg2;
    r20 = self;
    r23 = &stack[-848];
    r22 = &var_3E8;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(dialogView));
    r0 = *(self + r24);
    r0 = [r0 layer];
    if (r0 != 0x0) {
            [r0 transform];
    }
    else {
            v0 = 0x0;
            *(int128_t *)(r23 + 0x2e0) = q0;
            *(int128_t *)(r23 + 0x2f0) = q0;
            *(int128_t *)(r23 + 0x2c0) = q0;
            *(int128_t *)(r23 + 0x2d0) = q0;
            *(int128_t *)(r23 + 0x2a0) = q0;
            *(int128_t *)(r23 + 0x2b0) = q0;
            *(int128_t *)(r23 + 0x280) = q0;
            *(int128_t *)(r23 + 0x290) = q0;
    }
    r0 = *(r20 + r24);
    r2 = @"layer.transform.rotation.z";
    r0 = [r0 valueForKeyPath:r2];
    r1 = @selector(floatValue);
    r0 = objc_msgSend(r0, r1);
    asm { fcvt       d0, s0 };
    CATransform3DMakeScale(CATransform3DMakeRotation(r0, r1, r2, r3), r1, r2);
    q0 = *(int128_t *)(r23 + 0x240);
    q1 = *(int128_t *)(r23 + 0x250);
    *(int128_t *)(r23 + 0xc0) = q0;
    *(int128_t *)(r23 + 0xd0) = q1;
    q0 = *(int128_t *)(r23 + 0x260);
    q1 = *(int128_t *)(r23 + 0x270);
    *(int128_t *)(r23 + 0xe0) = q0;
    *(int128_t *)(r23 + 0xf0) = q1;
    q0 = *(int128_t *)(r23 + 0x200);
    q1 = *(int128_t *)(r23 + 0x210);
    *(int128_t *)(r23 + 0x80) = q0;
    *(int128_t *)(r23 + 0x90) = q1;
    q0 = *(int128_t *)(r23 + 0x220);
    q1 = *(int128_t *)(r23 + 0x230);
    *(int128_t *)(r23 + 0xa0) = q0;
    *(int128_t *)(r23 + 0xb0) = q1;
    CATransform3DConcat(&stack[-720], &stack[-592]);
    r0 = *(r20 + r24);
    r0 = objc_msgSend(r0, r21);
    q0 = *(int128_t *)(r23 + 0x1c0);
    q1 = *(int128_t *)(r23 + 0x1d0);
    *(int128_t *)(r22 + 0xe8) = q0;
    *(int128_t *)(r22 + 0xf8) = q1;
    q0 = *(int128_t *)(r23 + 0x1e0);
    q1 = *(int128_t *)(r23 + 0x1f0);
    *(int128_t *)(r23 + 0x60) = q0;
    *(int128_t *)(r23 + 0x70) = q1;
    q0 = *(int128_t *)(r23 + 0x180);
    q1 = *(int128_t *)(r23 + 0x190);
    *(int128_t *)r23 = q0;
    *(int128_t *)(r23 + 0x10) = q1;
    q0 = *(int128_t *)(r23 + 0x1a0);
    q1 = *(int128_t *)(r23 + 0x1b0);
    *(int128_t *)(r23 + 0x20) = q0;
    *(int128_t *)(r23 + 0x30) = q1;
    [r0 setTransform:&stack[-848]];
    [objc_msgSend(*(r20 + r24), r21) setOpacity:&stack[-848]];
    q1 = *(int128_t *)(r23 + 0x2c0);
    q2 = *(int128_t *)(r23 + 0x2d0);
    *(int128_t *)(r22 + 0x68) = q1;
    *(int128_t *)(r22 + 0x78) = q2;
    q1 = *(int128_t *)(r23 + 0x2e0);
    q2 = *(int128_t *)(r23 + 0x2f0);
    *(int128_t *)(r22 + 0x88) = q1;
    *(int128_t *)(r22 + 0x98) = q2;
    *(int128_t *)(r22 + 0x58) = *(int128_t *)(r23 + 0x2b0);
    [UIView animateWithDuration:0x0 delay:&var_3E8 options:&var_418 animations:r5 completion:r6];
    return;
}

-(void)setSubView:(void *)arg2 {
    self->containerView = arg2;
    return;
}

-(void)deviceOrientationDidChange:(void *)arg2 {
    r0 = self;
    r31 = r31 - 0xf0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0->parentView == 0x0) {
            r19 = r0;
            r21 = r29 - 0x50;
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
    }
    return;
}

-(void)addButtonsToView:(void *)arg2 {
    r31 = r31 - 0x110;
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
    r19 = arg2;
    r20 = self;
    [arg2 bounds];
    v8 = v2;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(buttonTitles));
    r0 = *(r20 + r21);
    r26 = @selector(count);
    objc_msgSend(r0, r26);
    if (objc_msgSend(*(r20 + r21), r26) != 0x0) {
            r28 = @selector(bounds);
            r23 = 0x0;
            asm { ucvtf      d0, x22 };
            asm { fdiv       d8, d8, d0 };
            do {
                    var_E0 = @selector(setTitle:forState:);
                    var_E8 = @selector(titleLabel);
                    var_100 = @selector(layer);
                    var_108 = @selector(setCornerRadius:);
                    var_110 = @selector(addSubview:);
                    var_B8 = @selector(setFrame:);
                    var_C8 = @selector(addTarget:action:forControlEvents:);
                    var_D0 = @selector(setTag:);
                    var_D8 = @selector(objectAtIndex:);
                    var_F0 = @selector(boldSystemFontOfSize:);
                    var_F8 = @selector(setFont:);
                    [UIButton buttonWithType:0x0];
                    asm { scvtf      d0, w23 };
                    objc_msgSend(r19, r28);
                    objc_msgSend(r27, var_B8);
                    objc_msgSend(r27, var_C8);
                    objc_msgSend(r27, var_D0);
                    objc_msgSend(*(r20 + r21), var_D8);
                    objc_msgSend(r27, var_E0);
                    d0 = 0x0;
                    objc_msgSend(@class(UIColor), r22);
                    objc_msgSend(r27, r25);
                    objc_msgSend(@class(UIColor), r22);
                    objc_msgSend(r27, r25);
                    objc_msgSend(r27, var_E8);
                    objc_msgSend(@class(UIFont), var_F0);
                    r28 = r28;
                    r26 = r24;
                    objc_msgSend(r0, var_F8);
                    objc_msgSend(objc_msgSend(r27, var_100), var_108);
                    objc_msgSend(r19, var_110);
                    r23 = r23 + 0x1;
            } while (objc_msgSend(*(r20 + r21), r24) > r23);
    }
    return;
}

-(void)applyMotionEffects {
    r0 = self;
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
    d0 = **_NSFoundationVersionNumber;
    asm { frintm     d0, d0 };
    if (d0 >= *0x100be0110) {
            r22 = [[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0x0] autorelease];
            r2 = [NSNumber numberWithDouble:@"center.x"];
            [r22 setMinimumRelativeValue:r2];
            [r22 setMaximumRelativeValue:[NSNumber numberWithDouble:r2]];
            r24 = [[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:0x1] autorelease];
            r2 = [NSNumber numberWithDouble:@"center.y"];
            [r24 setMinimumRelativeValue:r2];
            [r24 setMaximumRelativeValue:[NSNumber numberWithDouble:r2]];
            r20 = [[[UIMotionEffectGroup alloc] init] autorelease];
            [r20 setMotionEffects:[NSArray arrayWithObjects:&var_78 count:0x2]];
            [r0->dialogView addMotionEffect:r20];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)parentView {
    r0 = self->parentView;
    return r0;
}

-(void)dealloc {
    [[&var_20 super] dealloc];
    [[NSNotificationCenter defaultCenter] removeObserver:r2 name:r3 object:r4];
    return;
}

-(void)setParentView:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)containerView {
    r0 = self->containerView;
    return r0;
}

-(void)setContainerView:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)createContainerView {
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
    if ([self->buttonTitles count] == 0x0) {
            asm { fcsel      d0, d1, d0, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d1, d1, d2, eq };
    }
    *0x1011e4f08 = 0x4049000000000000;
    *0x1011e4f10 = 0x0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(containerView));
    r0 = *(r19 + r21);
    if (r0 == 0x0) {
            r0 = [UIView alloc];
            d3 = *0x100b9b348;
            [r19 setContainerView:[[r0 initWithFrame:r2] autorelease]];
            r0 = *(r19 + r21);
    }
    var_A0 = @selector(autorelease);
    [r0 frame];
    v8 = v2;
    [*(r19 + r21) frame];
    d9 = *0x1011e4f10 + *0x1011e4f08 + d3;
    var_98 = r21;
    [[UIScreen mainScreen] bounds];
    v10 = v2;
    [[UIScreen mainScreen] bounds];
    v11 = v3;
    r8 = &@selector(alloc);
    objc_msgSend([[UIDevice currentDevice] systemVersion], *(r8 + 0xf28));
    if (s0 >= 0x4020000000000000) {
            r8 = &@selector(alloc);
            if (CPU_FLAGS & GE) {
                    r8 = 0x1;
            }
    }
    if (d10 > d11) {
            if (CPU_FLAGS & G) {
                    r9 = 0x1;
            }
    }
    if ((r9 & r8) != 0x0) {
            asm { fcsel      d12, d10, d11, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d11, d11, d10, ne };
    }
    if ([[UIApplication sharedApplication] statusBarOrientation] < 0x5) {
            asm { fcsel      d10, d11, d12, lo };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      d11, d12, d11, lo };
    }
    [r19 setFrame:r2];
    r24 = [[[UIView alloc] initWithFrame:r2] autorelease];
    r27 = [CAGradientLayer layer];
    [r24 bounds];
    [r27 setFrame:r2];
    r21 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] CGColor];
    [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] CGColor];
    [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] CGColor];
    r2 = [NSArray arrayWithObjects:r21];
    [r27 setColors:r2];
    [r27 setCornerRadius:r2];
    [[r24 layer] insertSublayer:r27 atIndex:0x0];
    [[r24 layer] setCornerRadius:r27];
    r20 = [[UIColor colorWithRed:r27 green:0x0 blue:r4 alpha:r5] CGColor];
    r0 = [r24 layer];
    r2 = r20;
    [r0 setBorderColor:r2];
    [[r24 layer] setBorderWidth:r2];
    [[r24 layer] setShadowRadius:r2];
    [[r24 layer] setShadowOpacity:r2];
    [[r24 layer] setShadowOffset:r2];
    r20 = [UIView alloc];
    [r24 bounds];
    [r24 bounds];
    r20 = objc_msgSend([r20 initWithFrame:r2], var_A0);
    [r20 setBackgroundColor:[UIColor colorWithRed:r2 green:0x0 blue:r4 alpha:r5]];
    [r24 addSubview:r20];
    [r24 addSubview:*(r19 + var_98)];
    [r19 addButtonsToView:r24];
    r0 = r24;
    return r0;
}

-(void)setButtonView:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)dialogView {
    r0 = self->dialogView;
    return r0;
}

-(void)setDialogView:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setOnButtonTouchUpInside:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void *)buttonView {
    r0 = self->buttonView;
    return r0;
}

-(void *)delegate {
    r0 = self->delegate;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    self->delegate = arg2;
    return;
}

-(void *)onButtonTouchUpInside {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(onButtonTouchUpInside)), 0x1);
    return r0;
}

-(void *)buttonTitles {
    r0 = self->buttonTitles;
    return r0;
}

-(bool)useMotionEffects {
    r0 = *(int8_t *)(int64_t *)&self->useMotionEffects;
    return r0;
}

-(void)setButtonTitles:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setUseMotionEffects:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->useMotionEffects = arg2;
    return;
}

@end