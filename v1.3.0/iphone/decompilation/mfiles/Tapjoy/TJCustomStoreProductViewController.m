@implementation TJCustomStoreProductViewController

-(void *)presentingViewController {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = r19->_style;
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    r0 = r19->_tjPresentingViewController;
                    r0 = [r0 retain];
            }
            else {
                    r0 = [[&var_30 super] presentingViewController];
                    r0 = [r0 retain];
            }
    }
    else {
            r0 = [[&var_30 super] presentingViewController];
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

-(bool)shouldAutorotate {
    return 0x0;
}

-(void)viewDidAppear:(bool)arg2 {
    [[&var_20 super] viewDidAppear:arg2];
    [self updateFrame];
    return;
}

-(unsigned long long)supportedInterfaceOrientations {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = r19->_style;
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    r0 = 0x18;
            }
            else {
                    r0 = [[&var_30 super] supportedInterfaceOrientations];
            }
    }
    else {
            r0 = [[&var_30 super] supportedInterfaceOrientations];
    }
    return r0;
}

-(void)viewDidDisappear:(bool)arg2 {
    [[&var_20 super] viewDidDisappear:arg2];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2 name:r3 object:r4];
    [r20 release];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    [[&var_20 super] viewWillAppear:arg2];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void)orientationChanged:(void *)arg2 {
    [self updateFrame];
    return;
}

-(void)updateFrame {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = r19->_style;
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    r0 = [r19 view];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 superview];
                    r0 = [r0 retain];
                    [r0 bounds];
                    [r0 release];
                    [r20 release];
                    [r19 updateFrameWithSize:r2];
            }
    }
    return;
}

-(void)updateFrameWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r20 = self;
    r0 = [self view];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_style));
    if ([*(r20 + r22) isEqualToString:r2] != 0x0) {
            [r19 setFrame:@"newAppStoreExperience"];
            r20 = [[CAShapeLayer layer] retain];
            [r19 bounds];
            r0 = [UIBezierPath bezierPathWithRoundedRect:0x3 byRoundingCorners:r3 cornerRadii:r4];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r20 setPath:[r0 CGPath]];
            [r0 release];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setMask:r20];
            [r0 release];
            [r20 release];
    }
    else {
            if ([*(r20 + r22) isEqualToString:r2] != 0x0) {
                    [TJSplitViewUtil rectWithSize:r20->_splitViewLayout layout:r3];
                    [r19 setFrame:r2];
            }
    }
    [r19 release];
    return;
}

-(bool)appSupportsPortrait {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r21 = [[r0 keyWindow] retain];
    [r0 release];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 supportedInterfaceOrientationsForWindow:r21];
    [r19 release];
    if ((r20 & 0x6) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r21 release];
    r0 = r19;
    return r0;
}

-(bool)shouldSupportLandscape {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([r19->_style isEqualToString:r2] != 0x0) {
            r0 = [TJSplitViewUtil supportLandscape:r19->_splitViewLayout];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)showStoreWithView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presentingView, arg2);
    r19 = [arg2 retain];
    [self showStore];
    [r19 release];
    return;
}

-(void)showStoreWhenPortrait:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 orientation];
    [r0 release];
    if (r21 <= 0x2) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 removeObserver:r19 name:**_UIDeviceOrientationDidChangeNotification object:0x0];
            [r0 release];
            [r19 showStore];
    }
    return;
}

-(void *)style {
    r0 = self->_style;
    return r0;
}

-(void)showStore {
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
    r19 = self;
    r20 = r19->_style;
    if (r20 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            if (r20 == r0) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r21 = 0x1;
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_presentingView));
    r0 = *(r19 + r22);
    r0 = [r0 webViewController];
    r29 = r29;
    r20 = [r0 retain];
    if (r21 == 0x0) goto loc_100955c48;

loc_100955c18:
    [r20 presentModalViewController:r19 animated:0x1];
    goto loc_100955c30;

loc_100955c30:
    [r20 release];
    return;

.l5:
    return;

loc_100955c48:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tjPresentingViewController));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 statusBarOrientation];
    [r0 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_presentingOrientation));
    *(r19 + r24) = r21;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_lockedDuringPresentation));
    *(int8_t *)(r19 + r23) = 0x0;
    if (r21 > 0x2 || ([r19 appSupportsPortrait] & 0x1) == 0x0) goto loc_100955ccc;

loc_100955ce0:
    r20 = *(r19 + r22);
    r21 = [[r19 view] retain];
    [r20 addSubview:r21];
    [r21 release];
    [*(r19 + r22) setOrientation:*(r19 + r24)];
    *(int8_t *)(r19 + r23) = 0x1;
    return;

loc_100955ccc:
    if ([r19 shouldSupportLandscape] == 0x0) goto loc_100955d3c;
    goto loc_100955ce0;

loc_100955d3c:
    if ([r19 appSupportsPortrait] == 0x0) goto .l5;

loc_100955d50:
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    r20 = r0;
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    goto loc_100955c30;
}

-(void)closeStore {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = r19->_style;
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r21 != r0) {
                    r0 = [r19 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 removeFromSuperview];
            }
            else {
                    r0 = r19->_presentingView;
                    r0 = [r0 webViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 dismissViewControllerAnimated:0x1 completion:0x0];
            }
    }
    else {
            r0 = r19->_presentingView;
            r0 = [r0 webViewController];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 dismissViewControllerAnimated:0x1 completion:0x0];
    }
    [r20 release];
    if (*(int8_t *)(int64_t *)&r19->_lockedDuringPresentation != 0x0) {
            [r19->_presentingView unsetOrientation];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_presentingView));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    return;
}

-(void)setStyle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_style, arg2);
    return;
}

-(void *)splitViewLayout {
    r0 = self->_splitViewLayout;
    return r0;
}

-(void)setSplitViewLayout:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_splitViewLayout, arg2);
    return;
}

-(void *)tjPresentingViewController {
    r0 = self->_tjPresentingViewController;
    return r0;
}

-(void)setTjPresentingViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tjPresentingViewController, arg2);
    return;
}

-(void *)presentingView {
    r0 = self->_presentingView;
    return r0;
}

-(void)setPresentingView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presentingView, arg2);
    return;
}

-(long long)presentingOrientation {
    r0 = self->_presentingOrientation;
    return r0;
}

-(void)setPresentingOrientation:(long long)arg2 {
    self->_presentingOrientation = arg2;
    return;
}

-(void *)presentationController {
    r0 = self->_presentationController;
    return r0;
}

-(void)setPresentationController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presentationController, arg2);
    return;
}

-(bool)lockedDuringPresentation {
    r0 = *(int8_t *)(int64_t *)&self->_lockedDuringPresentation;
    return r0;
}

-(void)setLockedDuringPresentation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lockedDuringPresentation = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_presentationController, 0x0);
    objc_storeStrong((int64_t *)&self->_presentingView, 0x0);
    objc_storeStrong((int64_t *)&self->_tjPresentingViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_splitViewLayout, 0x0);
    objc_storeStrong((int64_t *)&self->_style, 0x0);
    return;
}

@end