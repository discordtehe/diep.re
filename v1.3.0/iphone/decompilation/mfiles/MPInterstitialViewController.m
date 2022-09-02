@implementation MPInterstitialViewController

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r20 = [[UIColor blackColor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r20];
    [r0 release];
    [r20 release];
    [self setModalPresentationStyle:0x0];
    return;
}

-(bool)prefersHomeIndicatorAutoHidden {
    return 0x1;
}

-(void)willPresentInterstitial {
    return;
}

-(void)presentInterstitialFromViewController:(void *)arg2 complete:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 presentingViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004b0490;

loc_1004b0454:
    if (r20 == 0x0) goto loc_1004b0510;

loc_1004b0458:
    (*(r20 + 0x10))(r20, [[NSError fullscreenAdAlreadyOnScreen] retain]);
    r0 = r21;
    goto loc_1004b050c;

loc_1004b050c:
    [r0 release];
    goto loc_1004b0510;

loc_1004b0510:
    [r20 release];
    [r19 release];
    return;

loc_1004b0490:
    [r21 willPresentInterstitial];
    [r21 layoutCloseButton];
    var_28 = [r20 retain];
    [r19 presentViewController:r21 animated:0x1 completion:&var_50];
    r0 = var_28;
    goto loc_1004b050c;
}

-(void)didPresentInterstitial {
    return;
}

-(void)didDismissInterstitial {
    return;
}

-(void)willDismissInterstitial {
    return;
}

-(bool)shouldDisplayCloseButton {
    return 0x1;
}

-(void *)closeButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
    r0 = *(self + r22);
    if (r0 == 0x0) {
            r0 = [MPExtendedHitBoxButton buttonWithType:0x0];
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [*(r19 + r22) setAutoresizingMask:0x21];
            r21 = [sub_1004af7bc() retain];
            r20 = [[UIImage imageNamed:r21] retain];
            [r21 release];
            [*(r19 + r22) setImage:r20 forState:0x0];
            [*(r19 + r22) sizeToFit];
            [*(r19 + r22) addTarget:r19 action:@selector(closeButtonPressed) forControlEvents:0x40];
            [*(r19 + r22) setAccessibilityLabel:@"Close Interstitial Ad"];
            [r20 release];
            r0 = *(r19 + r22);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setCloseButtonImageWithImageNamed:(void *)arg2 {
    r20 = [[UIImage imageNamed:arg2] retain];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setImage:r20 forState:0x0];
    [r0 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 sizeToFit];
    [r0 release];
    [r20 release];
    return;
}

-(void)setCloseButtonStyle:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    self->_closeButtonStyle = r2;
    if (r2 != 0x2) {
            r0 = r19;
            if (r2 != 0x1) {
                    if (r2 == 0x0) {
                            r0 = [r0 closeButton];
                    }
                    else {
                            r0 = [r0 closeButton];
                    }
                    r0 = [r0 retain];
                    r19 = r0;
            }
            else {
                    r0 = [r0 closeButton];
                    r0 = [r0 retain];
                    r19 = r0;
            }
    }
    else {
            [r19 shouldDisplayCloseButton] ^ 0x1;
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            r19 = r0;
    }
    [r0 setHidden:r2];
    [r19 release];
    return;
}

-(void)closeButtonPressed {
    [self dismissInterstitialAnimated:0x1];
    return;
}

-(void)dismissInterstitialAnimated:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self willDismissInterstitial];
    r0 = [r19 presentingViewController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 presentedViewController];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            [r19 didDismissInterstitial];
    }
    else {
            [r20 dismissViewControllerAnimated:0x1 completion:&var_48];
    }
    [r20 release];
    return;
}

-(void)layoutCloseButton {
    r31 = r31 - 0xd0;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = self;
    r22 = [[self view] retain];
    r23 = [[r19 closeButton] retain];
    r2 = r23;
    [r22 addSubview:r2];
    [r23 release];
    [r22 release];
    r0 = [r19 view];
    r0 = [r0 retain];
    r23 = r0;
    [r0 bounds];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    [r23 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r23 = r0;
    [r0 bounds];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r24 = r0;
    [r0 bounds];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r24 release];
    [r23 release];
    r0 = [r19 closeButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setTouchAreaInsets:r2];
    [r0 release];
    [r19 setCloseButtonStyle:[r19 closeButtonStyle]];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r0 release];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            var_90 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            r20 = r0;
            var_B0 = r0;
            r0 = [r19 view];
            r0 = [r0 retain];
            var_98 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            var_A8 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            var_B8 = r0;
            var_C0 = [[r20 constraintEqualToAnchor:r0 constant:0x0] retain];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            r25 = r0;
            r22 = [[r0 trailingAnchor] retain];
            r0 = [r19 view];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r20 = [[r0 trailingAnchor] retain];
            r26 = [[r22 constraintEqualToAnchor:r20 constant:0x0] retain];
            r0 = [NSArray arrayWithObjects:&var_88 count:0x2];
            r29 = r29;
            r27 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r27];
            [r27 release];
            [r26 release];
            [r20 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r25 release];
            [var_C0 release];
            [var_B8 release];
            [var_A8 release];
            [var_98 release];
            [var_B0 release];
            [var_90 release];
    }
    var_78 = **___stack_chk_guard;
    r20 = [[r19 view] retain];
    r19 = [[r19 closeButton] retain];
    [r20 bringSubviewToFront:r19];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(unsigned long long)closeButtonStyle {
    r0 = self->_closeButtonStyle;
    return r0;
}

-(long long)preferredInterfaceOrientationForPresentation {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self supportedInterfaceOrientations];
    r0 = sub_1004aec08();
    r8 = 0x1 << r0;
    asm { sxtw       x8, w8 };
    if ((r19 & r8) == 0x0) {
            if ((r19 & 0x2) == 0x0) {
                    if ((r19 & 0x10) != 0x0) {
                            asm { cinc       x9, x9, ne };
                    }
                    if ((r19 & 0x4) != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = 0x3;
                            }
                            else {
                                    r0 = 0x2;
                            }
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(unsigned long long)orientationType {
    r0 = self->_orientationType;
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
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
    r21 = [[UIApplication sharedApplication] retain];
    r0 = sub_1004aec5c();
    r29 = &saved_fp;
    r22 = [r0 retain];
    r20 = [r21 supportedInterfaceOrientationsForWindow:r22];
    [r22 release];
    r0 = [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_orientationType));
    r8 = *(r19 + r8);
    r10 = r20 & 0x18;
    r12 = r20 & 0x6;
    if (r8 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r12 = r12;
            }
            else {
                    r12 = r20;
            }
    }
    r9 = @"any";
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r9 = @"portrait";
            }
            else {
                    r9 = @"any";
            }
    }
    if (r8 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r0 = r12;
            }
            else {
                    r0 = r10;
            }
    }
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r8 = r9;
            }
            else {
                    r8 = @"landscape";
            }
    }
    if (r0 == 0x0) {
            r23 = [[NSString stringWithFormat:r2] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
            [r22 release];
            [r23 release];
            r0 = r20;
    }
    return r0;
}

-(void)setOrientationType:(unsigned long long)arg2 {
    self->_orientationType = arg2;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    return;
}

@end