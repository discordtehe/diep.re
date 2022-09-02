@implementation GADFullScreenAdViewController

-(void *)initWithView:(void *)arg2 context:(void *)arg3 {
    r31 = r31 - 0xf0;
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
    r29 = &saved_fp;
    r24 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r24 retain];
    r0 = [[&var_70 super] initWithNibName:0x0 bundle:0x0];
    r21 = r0;
    if (r21 != 0x0) {
            var_D0 = r19;
            [r21 setModalTransitionStyle:0x0];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setOpaque:0x1];
            [r0 release];
            r25 = [[r21 view] retain];
            r26 = [[UIColor blackColor] retain];
            [r25 setBackgroundColor:r26];
            [r26 release];
            [r25 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setClipsToBounds:0x1];
            [r0 release];
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_monitors));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_context, r24);
            r21->_supportedInterfaceOrientations = 0x1e;
            objc_storeStrong((int64_t *)&r21->_adView, r23);
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 addSubview:r21->_adView];
            [r0 release];
            r0 = [GADCloseButton alloc];
            var_D8 = r20;
            r0 = [r0 initWithContext:r20];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
            r8 = *(r21 + r19);
            *(r21 + r19) = r0;
            [r8 release];
            r23 = [GADCloseButtonMonitor alloc];
            r27 = *(r21 + r19);
            r28 = [[r21 view] retain];
            r20 = [r23 initWithCloseButton:r27 closeButtonContainerView:r28];
            [r28 release];
            var_E0 = r20;
            [r21 addMonitor:r20];
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r20);
            *(r21 + r20) = r0;
            [r8 release];
            objc_initWeak(&stack[-136], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c260 object:r24 queue:r27 usingBlock:&var_A0];
            [r27 release];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c6a8 object:r28 queue:0x0 usingBlock:&var_C8];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
            [var_E0 release];
            r20 = var_D8;
            r19 = var_D0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    [self release];
    return 0x0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)initWithNibName:(void *)arg2 bundle:(void *)arg3 {
    [self release];
    return 0x0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setOpaque:0x1];
    [r0 release];
    r21 = [[self view] retain];
    r22 = [[UIColor blackColor] retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    [r21 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setClipsToBounds:0x1];
    [r0 release];
    return;
}

-(void)configureView {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r20 = *(self + r22);
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r20 setFrame:r2];
    [r0 release];
    [*(self + r22) setHidden:0x0];
    [self positionTestAdLabel];
    return;
}

-(bool)contentFitsInSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self->_adView intrinsicContentSize];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b530];
    r0 = [r0 release];
    if (d1 - d10 < d10) {
            if (d9 - d8 < d10) {
                    if (CPU_FLAGS & S) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    [[&var_40 super] viewWillTransitionToSize:r2 withTransitionCoordinator:r3];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b3c0];
    [r0 release];
    if (r21 != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
            [*(r19 + r20) frame];
            [*(r19 + r20) setFrame:*0x100e9b3c0];
            if (([r19 contentFitsInSize:*0x100e9b3c0] & 0x1) == 0x0) {
                    NSLog(@"<Google> Window size has changed and is too small for the full screen ad. Ad should close.");
                    sub_1008b4218();
            }
    }
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r1 = @selector(viewWillAppear:);
    objc_msgSendSuper2(&var_20, r1);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewWasConfigured));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            r1 = @selector(configureView);
            objc_msgSend(r19, r1);
    }
    *(int8_t *)(int64_t *)&r19->_viewHasAppearedAtLeastOnce = 0x1;
    if (r19->_adOrientations != 0x0) {
            loc_10088ca70(r19, r1, r2);
    }
    return;
}

-(void)viewDidDisappear:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] viewDidDisappear:arg2];
    if ([r19 isBeingDismissed] != 0x0 && *(int8_t *)(int64_t *)&r19->_relinquishScreenCalled == 0x0) {
            sub_1008833e8(*0x100e9c118, r19, 0x0);
    }
    return;
}

-(void)viewWillLayoutSubviews {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] viewWillLayoutSubviews];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r21 = [[*(r19 + r23) superview] retain];
    r0 = [r19 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r21 == r0) {
            r21 = *(r19 + r23);
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 bounds];
            [r21 setFrame:r2];
            [r19 release];
    }
    return;
}

-(void)addMonitor:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            sub_100822370(r0->_monitors, r2);
    }
    return;
}

-(void)handleCloseButtonPressed {
    sub_1008b4218();
    return;
}

-(void)positionTestAdLabel {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r20 = [sub_100841b10() retain];
    [*(self + r21) addSubview:r20];
    sub_100889958(r20, [[self view] retain], 0x1);
    [r19 release];
    [r20 release];
    return;
}

-(void)didRotateFromInterfaceOrientation:(long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] didRotateFromInterfaceOrientation:arg2];
    if (r19->_forcedAdOrientation == 0x0) {
            r2 = [r19 interfaceOrientation];
    }
    [r19 viewChangedToOrientation:r2];
    return;
}

-(void)viewChangedToOrientation:(long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    [[NSNumber numberWithInteger:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    sub_1008833e8(*0x100e9c128, self, [r0 retain]);
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(bool)canPresent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_webViewProcessDidTerminate != 0x0) {
            r19 = 0x0;
    }
    else {
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 boolForKey:*0x100e9b3c0];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = sub_10089a8cc();
                    r0 = [r0 retain];
                    r20 = r0;
                    CGRectStandardize([r0 frame]);
                    if (([r19 contentFitsInSize:*0x100e9b3c0] & 0x1) != 0x0) {
                            r19 = 0x1;
                    }
                    else {
                            NSLog(@"<Google> Ad cannot be presented. The full screen ad content size exceeds the current window size.");
                            r19 = 0x0;
                    }
                    [r20 release];
            }
            else {
                    r19 = 0x1;
            }
    }
    r0 = r19;
    return r0;
}

-(bool)shouldDismissOnApplicationEnteringForeground {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self presentedViewController];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [UIAlertController class];
    r21 = [r20 isKindOfClass:r2];
    [r20 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = [GADApplication sharedInstance];
            r0 = [r0 retain];
            [r0 backgroundTimeIntervalSinceBoot];
            [r0 release];
            if (d8 >= 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_maxBackgroundTimeIntervalWithoutDismissing));
                    d0 = *(r19 + r20);
                    if (d0 >= 0x0) {
                            r0 = sub_1008b9904();
                            if (d0 - d8 > *(r19 + r20)) {
                                    if (CPU_FLAGS & G) {
                                            r0 = 0x1;
                                    }
                            }
                    }
                    else {
                            r0 = 0x1;
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)relinquishScreenWithCompletion:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_relinquishScreenCalled = 0x1;
    sub_1007fab68(self, arg2);
    return;
}

-(void)presentFromViewController:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    *(int8_t *)(int64_t *)&self->_presented = 0x1;
    sub_1007fa8b0(self, r21, arg3);
    [r21 release];
    return;
}

-(void)setAdOrientations:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ((sub_10088c73c() & 0x1) != 0x0) goto .l13;

loc_10080efa4:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adOrientations));
    if (*(r19 + r8) != r20) goto loc_10080efc4;

.l13:
    return;

loc_10080efc4:
    *(r19 + r8) = r20;
    if (*(int8_t *)(int64_t *)&r19->_viewHasAppearedAtLeastOnce == 0x0) goto loc_10080efe8;

loc_10080efd8:
    r0 = r19;
    r29 = saved_fp;
    r30 = stack[-8];
    r20 = var_10;
    r19 = stack[-24];
    r31 = r31 + 0x20;
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r22;
    stack[-72] = r21;
    var_30 = r20;
    stack[-56] = r19;
    var_20 = r29;
    stack[-40] = r30;
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 presentingViewController];
    r29 = &var_20;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10088cc58;

loc_10088cab0:
    r21 = [r19 adOrientations];
    if (r21 == 0x0) goto loc_10088cc58;

loc_10088cac8:
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    [r0 statusBarOrientation];
    [r20 release];
    asm { sxtw       x20, w8 };
    r9 = 0x18;
    if ((r21 & 0x18) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = 0x18;
            }
            else {
                    r9 = 0x6;
            }
    }
    if ((r21 & 0x6) != 0x0) {
            asm { ccmp       x8, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r21 = 0x1e;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x1e) {
            r0 = r19;
    }
    else {
            r0 = r19;
    }
    [r0 setSupportedInterfaceOrientations:r2];
    if ((r20 & r21) == 0x0) goto loc_10088cbc8;

loc_10088cb64:
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    [r0 standardizedOrientedScreenBounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r19 setForcedAdOrientation:0x0];
    [r0 release];
    r20 = 0x0;
    goto loc_10088cc18;

loc_10088cc18:
    sub_10088c79c(r19, r20);
    [r19 viewChangedToOrientation:[r19 forcedAdOrientation]];
    goto loc_10088cc58;

loc_10088cc58:
    [r19 release];
    return;

loc_10088cbc8:
    if ((r20 & 0x2) != 0x0 || (r20 & 0x4) != 0x0) goto loc_10088cbec;

loc_10088cbd0:
    if ((r20 & 0x10) != 0x0) goto loc_10088cc74;

loc_10088cbd4:
    if ((r20 & 0x8) != 0x0) goto loc_10088cca4;

loc_10088cbd8:
    sub_1007ce06c(0x0, @"Can't force orient ad. Unknown application interface orientation.");
    goto loc_10088cc58;

loc_10088cca4:
    sub_100803324();
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r19 setForcedAdOrientation:0x1];
    r20 = 0x3;
    goto loc_10088cc18;

loc_10088cc74:
    sub_100803324();
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r20 = 0x1;
    [r19 setForcedAdOrientation:0x1];
    goto loc_10088cc18;

loc_10088cbec:
    sub_1008033e4();
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r19 setForcedAdOrientation:0x3];
    r20 = 0x1;
    goto loc_10088cc18;

loc_10080efe8:
    if (*(int8_t *)(int64_t *)&r19->_viewWasConfigured != 0x0) goto .l13;

loc_10080eff8:
    if (sub_10089acfc(r20) == 0x0) goto loc_10080f018;

loc_10080f004:
    r0 = r19;
    goto loc_10080f060;

loc_10080f060:
    [r0 setSupportedInterfaceOrientations:r2];
    return;

loc_10080f018:
    if ((r20 & 0x18) == 0x0 || sub_10089acfc(0x18) == 0x0) goto loc_10080f03c;

loc_10080f05c:
    r0 = r19;
    goto loc_10080f060;

loc_10080f03c:
    if ((r20 & 0x6) == 0x0 || sub_10089acfc(0x6) == 0x0) goto .l13;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setSupportedInterfaceOrientations:(unsigned long long)arg2 {
    self->_supportedInterfaceOrientations = arg2;
    return;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self->_supportedInterfaceOrientations;
    return r0;
}

-(unsigned long long)adOrientations {
    r0 = self->_adOrientations;
    return r0;
}

-(long long)forcedAdOrientation {
    r0 = self->_forcedAdOrientation;
    return r0;
}

-(void)setForcedAdOrientation:(long long)arg2 {
    self->_forcedAdOrientation = arg2;
    return;
}

-(double)orientationUpdateAnimationDuration {
    r0 = self;
    return r0;
}

-(void)setOrientationUpdateAnimationDuration:(double)arg2 {
    self->_orientationUpdateAnimationDuration = d0;
    return;
}

-(bool)adOrientationsOverridesLockedOrientation {
    r0 = *(int8_t *)(int64_t *)&self->_adOrientationsOverridesLockedOrientation;
    return r0;
}

-(void)setAdOrientationsOverridesLockedOrientation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adOrientationsOverridesLockedOrientation = arg2;
    return;
}

-(bool)presented {
    r0 = *(int8_t *)(int64_t *)&self->_presented;
    return r0;
}

-(double)maxBackgroundTimeIntervalWithoutDismissing {
    r0 = self;
    return r0;
}

-(void)setMaxBackgroundTimeIntervalWithoutDismissing:(double)arg2 {
    self->_maxBackgroundTimeIntervalWithoutDismissing = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_monitors, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    return;
}

@end