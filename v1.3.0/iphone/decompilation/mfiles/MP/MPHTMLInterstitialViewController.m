@implementation MPHTMLInterstitialViewController

-(void)dealloc {
    r0 = [self backingViewAgent];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self backingView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r20 = [[UIColor blackColor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r20];
    [r0 release];
    [r20 release];
    r20 = objc_alloc();
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    r20 = [r20 initWithAdWebViewFrame:self delegate:r3];
    [self setBackingViewAgent:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)willPresentInterstitial {
    r0 = [self backingView];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialWillAppear:self];
    [r0 release];
    return;
}

-(void)didPresentInterstitial {
    r0 = [self backingViewAgent];
    r0 = [r0 retain];
    [r0 enableRequestHandling];
    [r0 release];
    r0 = [self backingViewAgent];
    r0 = [r0 retain];
    [r0 invokeJavaScriptForEvent:0x0];
    [r0 release];
    r0 = [self backingViewAgent];
    r0 = [r0 retain];
    [r0 forceRedraw];
    [r0 release];
    [UIView beginAnimations:0x0 context:0x0];
    [UIView setAnimationDuration:0x0];
    r0 = [self backingView];
    r0 = [r0 retain];
    [r0 setAlpha:0x0];
    [r0 release];
    [UIView commitAnimations];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidAppear:self];
    [r0 release];
    return;
}

-(void)didDismissInterstitial {
    r0 = [self backingViewAgent];
    r0 = [r0 retain];
    [r0 invokeJavaScriptForEvent:0x1];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidDisappear:self];
    [r0 release];
    return;
}

-(void)willDismissInterstitial {
    r0 = [self backingViewAgent];
    r0 = [r0 retain];
    [r0 disableRequestHandling];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialWillDisappear:self];
    [r0 release];
    return;
}

-(void)viewWillTransitionToSize:(struct CGSize)arg2 withTransitionCoordinator:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [r2 retain];
    [r0 animateAlongsideTransition:&var_58 completion:0x0];
    [[&var_68 super] viewWillTransitionToSize:r0 withTransitionCoordinator:0x0];
    [r0 release];
    return;
}

-(void *)location {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)loadConfiguration:(void *)arg2 {
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
    r20 = [arg2 retain];
    [[[r19 view] retain] release];
    r0 = [r19 backingViewAgent];
    r0 = [r0 retain];
    [r0 loadConfiguration:r20];
    [r20 release];
    [r0 release];
    r0 = [r19 backingViewAgent];
    r0 = [r0 retain];
    r22 = [[r0 view] retain];
    [r19 setBackingView:r22];
    [r22 release];
    [r0 release];
    r20 = [[r19 view] retain];
    r22 = [[r19 backingView] retain];
    [r20 addSubview:r22];
    [r22 release];
    [r20 release];
    r0 = [r19 view];
    r0 = [r0 retain];
    r20 = r0;
    [r0 bounds];
    r0 = [r19 backingView];
    r0 = [r0 retain];
    [r0 setFrame:r22];
    [r0 release];
    [r20 release];
    r0 = [r19 backingView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
            r0 = [r19 backingView];
            r0 = [r0 retain];
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r0 release];
            r0 = [r19 backingView];
            r0 = [r0 retain];
            var_B0 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            r22 = r0;
            var_C0 = r0;
            r0 = [r19 view];
            r0 = [r0 retain];
            var_B8 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            var_C8 = r0;
            var_D0 = [[r22 constraintEqualToAnchor:r0] retain];
            r0 = [r19 backingView];
            r0 = [r0 retain];
            var_E0 = r0;
            r0 = [r0 leadingAnchor];
            r0 = [r0 retain];
            r22 = r0;
            var_F0 = r0;
            r0 = [r19 view];
            r0 = [r0 retain];
            var_E8 = r0;
            r0 = [r0 leadingAnchor];
            r0 = [r0 retain];
            var_F8 = r0;
            var_100 = [[r22 constraintEqualToAnchor:r0] retain];
            r0 = [r19 backingView];
            r0 = [r0 retain];
            var_108 = r0;
            r0 = [r0 trailingAnchor];
            r0 = [r0 retain];
            r20 = r0;
            var_110 = r0;
            r0 = [r19 view];
            r0 = [r0 retain];
            r22 = r0;
            r24 = [[r0 trailingAnchor] retain];
            r25 = [[r20 constraintEqualToAnchor:r24] retain];
            r0 = [r19 backingView];
            r0 = [r0 retain];
            r23 = r0;
            r26 = [[r0 bottomAnchor] retain];
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            r20 = [[r0 bottomAnchor] retain];
            r27 = [[r26 constraintEqualToAnchor:r20] retain];
            r0 = [NSArray arrayWithObjects:&var_A0 count:0x4];
            r29 = r29;
            r28 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r28];
            [r28 release];
            [r27 release];
            [r20 release];
            [r21 release];
            [r26 release];
            [r23 release];
            [r25 release];
            [r24 release];
            [r22 release];
            [var_110 release];
            [var_108 release];
            [var_100 release];
            [var_F8 release];
            [var_E8 release];
            [var_F0 release];
            [var_E0 release];
            [var_D0 release];
            [var_C8 release];
            [var_B8 release];
            [var_C0 release];
            [var_B0 release];
    }
    var_80 = **___stack_chk_guard;
    r0 = [r19 backingViewAgent];
    r0 = [r0 retain];
    r21 = [[r0 viewabilityTracker] retain];
    r19 = [[r19 closeButton] retain];
    [r21 registerFriendlyObstructionView:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    if (**___stack_chk_guard != var_80) {
            __stack_chk_fail();
    }
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = self;
    return r0;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)adDidFinishLoadingAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidLoadAd:self];
    [r0 release];
    return;
}

-(void)adDidFailToLoadAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidFailToLoadAd:self];
    [r0 release];
    return;
}

-(void)adActionDidFinish:(void *)arg2 {
    return;
}

-(void)adActionWillBegin:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidReceiveTapEvent:self];
    [r0 release];
    return;
}

-(void)adActionWillLeaveApplication:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialWillLeaveApplication:self];
    [r0 release];
    [self dismissInterstitialAnimated:0x0];
    return;
}

-(void)adDidClose:(void *)arg2 {
    return;
}

-(void)setBackingViewAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backingViewAgent, arg2);
    return;
}

-(void *)backingViewAgent {
    r0 = self->_backingViewAgent;
    return r0;
}

-(void *)backingView {
    r0 = self->_backingView;
    return r0;
}

-(void)setBackingView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backingView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_backingView, 0x0);
    objc_storeStrong((int64_t *)&self->_backingViewAgent, 0x0);
    return;
}

@end