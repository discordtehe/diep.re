@implementation MPMRAIDInterstitialViewController

-(void *)initWithAdConfiguration:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 preferredSize];
            v9 = v8;
            if (d0 > 0x3ff0000000000000) {
                    [r19 preferredSize];
                    v9 = v0;
            }
            [r19 preferredSize];
            if (d1 > 0x3ff0000000000000) {
                    [r19 preferredSize];
                    v8 = v1;
            }
            r21 = objc_alloc();
            r21 = [r21 initWithAdViewFrame:[r19 orientationType] supportedOrientations:0x1 adPlacementType:r20 delegate:r5];
            [r20 setMraidController:r21];
            [r21 release];
            [r20 setConfiguration:r19];
            r0 = [r20 configuration];
            r0 = [r0 retain];
            [r20 setOrientationType:[r0 orientationType]];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)startLoading {
    r20 = [[self mraidController] retain];
    r19 = [[self configuration] retain];
    [r20 loadAdWithConfiguration:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)didPresentInterstitial {
    dispatch_after(dispatch_time(0x0, 0x0), *__dispatch_main_q, &var_38);
    return;
}

-(void)willPresentInterstitial {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self mraidController];
    r0 = [r0 retain];
    [r0 handleMRAIDInterstitialWillPresentWithViewController:r19];
    [r0 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialWillAppear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialWillAppear:r19];
            [r0 release];
    }
    return;
}

-(void)willDismissInterstitial {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self mraidController];
    r0 = [r0 retain];
    [r0 disableRequestHandling];
    [r0 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialWillDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialWillDisappear:r19];
            [r0 release];
    }
    return;
}

-(void *)location {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r19 = [[r0 location] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)didDismissInterstitial {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidDisappear:r19];
            [r0 release];
    }
    return;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adConfiguration {
    r0 = [self configuration];
    return r0;
}

-(void *)viewControllerForPresentingModalView {
    r0 = self;
    return r0;
}

-(void)adWillClose:(void *)arg2 {
    [self dismissInterstitialAnimated:0x1];
    return;
}

-(void)adDidClose:(void *)arg2 {
    return;
}

-(void)adDidFailToLoad:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidFailToLoadAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidFailToLoadAd:r19];
            [r0 release];
    }
    return;
}

-(void)appShouldSuspendForAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidReceiveTapEvent:self];
    [r0 release];
    return;
}

-(void)appShouldResumeFromAd:(void *)arg2 {
    return;
}

-(void)setSupportedOrientationMask:(unsigned long long)arg2 {
    self->_supportedOrientationMask = arg2;
    [UIViewController attemptRotationToDeviceOrientation];
    return;
}

-(void)rewardedVideoEnded {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialRewardedVideoEnded];
            [r0 release];
    }
    return;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[UIApplication sharedApplication] retain];
    if ([r19 mp_supportsOrientationMask:[r20 supportedOrientationMask]] != 0x0) {
            r0 = [r20 supportedOrientationMask];
    }
    else {
            r0 = [[&var_30 super] supportedInterfaceOrientations];
    }
    [r19 release];
    r0 = r0;
    return r0;
}

-(void)adDidLoad:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r21 = [arg2 retain];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [r19 setInterstitialView:r21];
    [r21 release];
    r0 = [r19 view];
    r0 = [r0 retain];
    r22 = r0;
    [r0 bounds];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    [r0 setFrame:r21];
    [r0 release];
    [r22 release];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    r22 = [[r19 view] retain];
    r23 = [[r19 interstitialView] retain];
    [r22 addSubview:r23];
    [r23 release];
    [r22 release];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r0 release];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    var_A8 = r0;
    r0 = [r0 topAnchor];
    r0 = [r0 retain];
    r23 = r0;
    var_B8 = r0;
    r0 = [r19 view];
    r0 = [r0 retain];
    var_B0 = r0;
    r0 = [r0 topAnchor];
    r0 = [r0 retain];
    var_C0 = r0;
    var_C8 = [[r23 constraintEqualToAnchor:r0] retain];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    var_D8 = r0;
    r0 = [r0 leadingAnchor];
    r0 = [r0 retain];
    r23 = r0;
    var_E8 = r0;
    r0 = [r19 view];
    r0 = [r0 retain];
    var_E0 = r0;
    r0 = [r0 leadingAnchor];
    r0 = [r0 retain];
    var_F0 = r0;
    var_F8 = [[r23 constraintEqualToAnchor:r0] retain];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    var_100 = r0;
    r0 = [r0 trailingAnchor];
    r0 = [r0 retain];
    r23 = r0;
    var_108 = r0;
    r0 = [r19 view];
    r0 = [r0 retain];
    r27 = r0;
    r22 = [[r0 trailingAnchor] retain];
    r23 = [[r23 constraintEqualToAnchor:r22] retain];
    r0 = [r19 interstitialView];
    r0 = [r0 retain];
    r20 = r0;
    r24 = [[r0 bottomAnchor] retain];
    r0 = [r19 view];
    r0 = [r0 retain];
    r26 = [[r0 bottomAnchor] retain];
    r25 = [[r24 constraintEqualToAnchor:r26] retain];
    r28 = [[NSArray arrayWithObjects:&var_A0 count:0x4] retain];
    [NSLayoutConstraint activateConstraints:r28];
    [r28 release];
    [r25 release];
    [r26 release];
    [r0 release];
    [r24 release];
    [r20 release];
    [r23 release];
    [r22 release];
    [r27 release];
    [var_108 release];
    [var_100 release];
    [var_F8 release];
    [var_F0 release];
    [var_E0 release];
    [var_E8 release];
    [var_D8 release];
    [var_C8 release];
    [var_C0 release];
    [var_B0 release];
    [var_B8 release];
    [var_A8 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidLoadAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidLoadAd:r19];
            [r0 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void *)mraidController {
    r0 = self->_mraidController;
    return r0;
}

-(void)setMraidController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mraidController, arg2);
    return;
}

-(void *)interstitialView {
    r0 = self->_interstitialView;
    return r0;
}

-(void)setInterstitialView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialView, arg2);
    return;
}

-(unsigned long long)supportedOrientationMask {
    r0 = self->_supportedOrientationMask;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_interstitialView, 0x0);
    objc_storeStrong((int64_t *)&self->_mraidController, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    return;
}

@end