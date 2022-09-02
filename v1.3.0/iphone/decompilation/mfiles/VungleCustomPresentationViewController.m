@implementation VungleCustomPresentationViewController

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
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewConstraints));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 setModalPresentationCapturesStatusBarAppearance:0x1];
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            [r20 release];
            if (s8 < 0x4020000000000000) {
                    r0 = [NSNotificationCenter defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
                    [r20 release];
            }
    }
    r0 = r19;
    return r0;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)viewWillAppear:(bool)arg2 {
    [[&var_50 super] viewWillAppear:arg2];
    r21 = [[self view] retain];
    r23 = [[self tapPassingView] retain];
    [r21 insertSubview:r23 atIndex:0x0];
    [r23 release];
    [r21 release];
    r23 = [[self view] retain];
    r25 = [[self adContainer] retain];
    [r23 insertSubview:r25 atIndex:0x1];
    [r25 release];
    [r23 release];
    r22 = [[self tapPassingView] retain];
    r23 = [[self view] retain];
    [self addConstraintsToView:r22 fromParentView:r23 withOrientation:[self currentOrientation] isAdView:0x0];
    [r23 release];
    [r22 release];
    r21 = [[self adContainer] retain];
    r20 = [[self view] retain];
    [self addConstraintsToView:r21 fromParentView:r20 withOrientation:[self currentOrientation] isAdView:0x1];
    [r20 release];
    [r21 release];
    return;
}

-(void)deviceOrientationChangeNotification:(void *)arg2 {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = [self MRAIDController];
    r0 = [r0 retain];
    [r0 orientationPropertyChangeWithNewSize:arg2];
    [r0 release];
    [self rotate];
    return;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [[&saved_fp - 0x30 super] viewWillTransitionToSize:[r2 retain] withTransitionCoordinator:r3];
    objc_initWeak(&stack[-72], self);
    objc_copyWeak(&var_70 + 0x20, &stack[-72]);
    [r19 animateAlongsideTransition:0x0 completion:&var_70];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r19 release];
    return;
}

-(void)updateViewConstraints {
    r22 = [self currentOrientation];
    r23 = [[self tapPassingView] retain];
    r24 = [[self view] retain];
    [self addConstraintsToView:r23 fromParentView:r24 withOrientation:r22 isAdView:0x0];
    [r24 release];
    [r23 release];
    r23 = [[self adContainer] retain];
    r24 = [[self view] retain];
    [self addConstraintsToView:r23 fromParentView:r24 withOrientation:r22 isAdView:0x1];
    [r24 release];
    [r23 release];
    r0 = [self tapPassingView];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 bottomAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 bottomAnchor] retain];
    r0 = [r25 constraintEqualToAnchor:r27];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [self tapPassingView];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 leftAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r25 = [[r0 leftAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r27 release];
    [r26 release];
    [r24 release];
    r0 = [self tapPassingView];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 topAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r25 = [[r0 topAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r25];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    [r27 release];
    [r26 release];
    [r24 release];
    r0 = [self tapPassingView];
    r0 = [r0 retain];
    r21 = r0;
    r25 = [[r0 rightAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r20 = r0;
    r24 = [[r0 rightAnchor] retain];
    r0 = [r25 constraintEqualToAnchor:r24];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r24 release];
    [r20 release];
    [r25 release];
    [r21 release];
    [[&var_60 super] updateViewConstraints];
    return;
}

-(long long)currentOrientation {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = [r0 release];
    if (d8 > d9) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)adContainer {
    r0 = self->_adContainer;
    return r0;
}

-(void)rotate {
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
    var_110 = q0;
    r0 = [self adViewConstraints];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r27 * 0x8) setActive:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r0 = [r19 adViewConstraints];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r19 adContainer];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r19 tapPassingView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r23 = [[r19 view] retain];
    r21 = [[r19 tapPassingView] retain];
    [r23 insertSubview:r21 atIndex:0x0];
    [r21 release];
    [r23 release];
    r21 = [[r19 view] retain];
    r20 = [[r19 adContainer] retain];
    [r21 insertSubview:r20 atIndex:0x1];
    [r20 release];
    [r21 release];
    [r19 updateViewConstraints];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setAdContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adContainer, arg2);
    return;
}

-(void *)tapPassingView {
    r0 = self->_tapPassingView;
    return r0;
}

-(void)setTapPassingView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tapPassingView, arg2);
    return;
}

-(void *)MRAIDController {
    r0 = self->_MRAIDController;
    return r0;
}

-(void)setMRAIDController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_MRAIDController, arg2);
    return;
}

-(void)setAdViewConstraints:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adViewConstraints, arg2);
    return;
}

-(void *)adViewConstraints {
    r0 = self->_adViewConstraints;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adViewConstraints, 0x0);
    objc_storeStrong((int64_t *)&self->_MRAIDController, 0x0);
    objc_storeStrong((int64_t *)&self->_tapPassingView, 0x0);
    objc_storeStrong((int64_t *)&self->_adContainer, 0x0);
    return;
}

-(void)addConstraintsToView:(void *)arg2 fromParentView:(void *)arg3 withOrientation:(long long)arg4 isAdView:(bool)arg5 {
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
    r29 = &saved_fp;
    r23 = arg5;
    r22 = arg4;
    r21 = self;
    r28 = [arg2 retain];
    r20 = [arg3 retain];
    if (r22 == 0x0) goto loc_10062ef68;

loc_10062ee9c:
    if (r22 != 0x1) goto loc_10062f5bc;

loc_10062eea4:
    r0 = [r21 adViewConstraints];
    r29 = r29;
    r25 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [[[r28 widthAnchor] retain] constraintEqualToAnchor:[[r20 widthAnchor] retain] multiplier:r3];
            r29 = r29;
            [r0 retain];
            r23 = @selector(addObject:);
            objc_msgSend(r25, r23);
            [r26 release];
            [r19 release];
            [r24 release];
            [r25 release];
    }
    else {
            r26 = [[r28 rightAnchor] retain];
            [[r20 rightAnchor] retain];
            r0 = [r26 constraintEqualToAnchor:r2];
            r29 = r29;
            [r0 retain];
            r23 = @selector(addObject:);
            objc_msgSend(r25, r23);
            [r27 release];
            [r19 release];
            [r26 release];
            [r25 release];
    }
    r19 = [[r21 adViewConstraints] retain];
    r26 = [[r28 bottomAnchor] retain];
    [[r20 bottomAnchor] retain];
    [[r26 constraintEqualToAnchor:r2] retain];
    objc_msgSend(r19, r23);
    [r27 release];
    [r25 release];
    [r26 release];
    [r19 release];
    r19 = [r21 respondsToSelector:@selector(safeAreaLayoutGuide)];
    r25 = [objc_msgSend(r21, r22) retain];
    var_128 = r28;
    r0 = [r28 leftAnchor];
    r29 = r29;
    r26 = [r0 retain];
    r0 = r20;
    if (r19 != 0x0) {
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r19 = r0;
            r27 = [[r0 leftAnchor] retain];
            r0 = [r26 constraintEqualToAnchor:r2];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r25, r23);
            [r28 release];
    }
    else {
            r19 = [[r0 leftAnchor] retain];
            r0 = [r26 constraintEqualToAnchor:r2];
            r29 = r29;
            r27 = [r0 retain];
            objc_msgSend(r25, r23);
    }
    [r27 release];
    [r19 release];
    [r26 release];
    [r25 release];
    r19 = [[r21 adViewConstraints] retain];
    r28 = var_128;
    r26 = [[r28 topAnchor] retain];
    r25 = [[r20 topAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r2];
    r29 = r29;
    goto loc_10062f584;

loc_10062f584:
    [r0 retain];
    objc_msgSend(r19, r23);
    [r24 release];
    [r25 release];
    [r26 release];
    [r19 release];
    goto loc_10062f5bc;

loc_10062f5bc:
    var_110 = q0;
    r0 = [r21 adViewConstraints];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r19 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r26 * 0x8) setActive:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r28 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_10062ef68:
    r0 = [r21 adViewConstraints];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 != 0x0) {
            r25 = [[r28 heightAnchor] retain];
            r26 = [[r20 heightAnchor] retain];
            r0 = [r25 constraintEqualToAnchor:r26 multiplier:r3];
            r29 = r29;
    }
    else {
            r25 = [[r28 topAnchor] retain];
            r26 = [[r20 topAnchor] retain];
            r0 = [r25 constraintEqualToAnchor:r26];
            r29 = r29;
    }
    r27 = [r0 retain];
    [r24 addObject:r27];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r19 = r28;
    r28 = [r21 respondsToSelector:@selector(safeAreaLayoutGuide)];
    r25 = [[r21 adViewConstraints] retain];
    var_128 = r19;
    r0 = [r19 bottomAnchor];
    r29 = r29;
    r26 = [r0 retain];
    r0 = r20;
    if (r28 != 0x0) {
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r28 = r0;
            r27 = [[r0 bottomAnchor] retain];
            r0 = [r26 constraintEqualToAnchor:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r25 addObject:r19];
            [r19 release];
            [r27 release];
            r0 = r28;
    }
    else {
            r19 = [[r0 bottomAnchor] retain];
            r0 = [r26 constraintEqualToAnchor:r2];
            r29 = r29;
            r27 = [r0 retain];
            [r25 addObject:r27];
            [r27 release];
            r0 = r19;
    }
    r23 = @selector(addObject:);
    [r0 release];
    [r26 release];
    [r25 release];
    r19 = [[r21 adViewConstraints] retain];
    r28 = var_128;
    r26 = [[r28 leftAnchor] retain];
    [[r20 leftAnchor] retain];
    [[r26 constraintEqualToAnchor:r2] retain];
    objc_msgSend(r19, r23);
    [r27 release];
    [r25 release];
    [r26 release];
    [r19 release];
    r19 = [objc_msgSend(r21, r22) retain];
    r26 = [[r28 rightAnchor] retain];
    r25 = [[r20 rightAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r2];
    r29 = r29;
    goto loc_10062f584;
}

@end