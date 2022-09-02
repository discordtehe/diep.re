@implementation VungleMRAIDViewController

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setModalPresentationCapturesStatusBarAppearance:0x1];
            [r19 enableAVPlayerObservation];
    }
    r0 = r19;
    return r0;
}

-(void)willPresentInterstitialAd {
    return;
}

-(void)presentAdFromViewController:(void *)arg2 isInterstitial:(bool)arg3 animated:(bool)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 presentingViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r20 setPresenterController:r19];
            [r20 setInterstitial:r22];
            if ([r20 isInterstitial] != 0x0) {
                    r0 = [r20 presenterController];
                    r0 = [r0 retain];
                    [r0 setDefinesPresentationContext:0x1];
                    [r0 release];
                    [r20 setModalPresentationStyle:0x3];
                    r21 = [[r20 presenterController] retain];
                    [r20 presentViewController:r20 fromViewController:r21];
                    r0 = r21;
            }
            else {
                    r22 = [objc_alloc() initWithInterstitial:r22];
                    [r20 setPresentationManager:r22];
                    [r22 release];
                    r23 = [[r20 presentationManager] retain];
                    r0 = [r20 parentPresentationController];
                    r0 = [r0 retain];
                    [r0 setTransitioningDelegate:r23];
                    [r0 release];
                    [r23 release];
                    r0 = [r20 parentPresentationController];
                    r0 = [r0 retain];
                    [r0 setModalPresentationStyle:0x4];
                    [r0 release];
                    r23 = [[r20 presenterController] retain];
                    r20 = [[r20 parentPresentationController] retain];
                    [r23 presentViewController:r20 animated:r21 completion:0x0];
                    [r20 release];
                    r0 = r23;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)didPresentInterstitialAd {
    return;
}

-(void)willDismissInterstitialAd {
    [self restoreCommandCenterControls];
    return;
}

-(void)didDismissInterstitialAd {
    return;
}

-(void)presentViewController:(void *)arg2 fromViewController:(void *)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    [r22 release];
    if (s8 < 0x4020000000000000) {
            r1 = @selector(presentIOS7TransparentController:fromViewController:);
    }
    else {
            r1 = @selector(presentIOS8orHigherTransparentController:fromViewController:);
    }
    objc_msgSend(r20, r1);
    [r21 release];
    [r19 release];
    return;
}

-(void)presentIOS7TransparentController:(void *)arg2 fromViewController:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 parentViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r20 parentViewController] retain];
            [r20 release];
    }
    else {
            r21 = r20;
    }
    objc_initWeak(&stack[-72], r22);
    [r20 setDefinesPresentationContext:0x1];
    [r21 modalPresentationStyle];
    [r21 setModalPresentationStyle:0x3];
    [r21 retain];
    objc_copyWeak(&var_70 + 0x28, &stack[-72]);
    [r20 presentViewController:r19 animated:0x1 completion:&var_70];
    objc_destroyWeak(&var_70 + 0x28);
    [r0 release];
    objc_destroyWeak(&stack[-72]);
    [r21 release];
    [r20 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)presentIOS8orHigherTransparentController:(void *)arg2 fromViewController:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&stack[-56], self);
    [r20 setDefinesPresentationContext:0x1];
    [self setModalPresentationStyle:0x0];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r20 presentViewController:r19 animated:0x0 completion:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r20 release];
    [r19 release];
    return;
}

-(void)dismissInterstitialAdAnimated:(bool)arg2 complete:(void *)arg3 {
    [arg3 retain];
    [self willDismissInterstitialAd];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self presenterController] retain];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    r0 = [r20 retain];
    [r21 dismissViewControllerAnimated:0x1 completion:&var_58];
    [r21 release];
    [r0 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    [r20 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = [self orientationMask];
    return r0;
}

-(void)enableAVPlayerObservation {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([NSClassFromString(@"MPRemoteCommand") class] != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    return;
}

-(void)restoreCommandCenterControls {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([NSClassFromString(@"MPRemoteCommand") class] != 0x0) {
            r20 = [r19 playCommandEnabled];
            r0 = [VungleMRAIDViewController playCommand];
            r0 = [r0 retain];
            [r0 setEnabled:r20];
            [r0 release];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 removeObserver:r2];
            [r20 release];
    }
    return;
}

-(void)disableRemoteCommandCenterControls:(void *)arg2 {
    r0 = @class(VungleMRAIDViewController);
    r0 = [r0 playCommand];
    r0 = [r0 retain];
    [self setPlayCommandEnabled:[r0 isEnabled]];
    [r0 release];
    r0 = @class(VungleMRAIDViewController);
    r0 = [r0 playCommand];
    r0 = [r0 retain];
    [r0 setEnabled:r2];
    [r19 release];
    return;
}

+(void *)playCommand {
    r0 = [MPRemoteCommandCenter sharedCommandCenter];
    r0 = [r0 retain];
    r20 = [[r0 playCommand] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(unsigned long long)orientationMask {
    r0 = self->_orientationMask;
    return r0;
}

-(void)setOrientationMask:(unsigned long long)arg2 {
    self->_orientationMask = arg2;
    return;
}

-(void *)presenterController {
    r0 = self->_presenterController;
    return r0;
}

-(void *)parentPresentationController {
    r0 = self->_parentPresentationController;
    return r0;
}

-(void)setPresenterController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presenterController, arg2);
    return;
}

-(void)setParentPresentationController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parentPresentationController, arg2);
    return;
}

-(void *)presentationManager {
    r0 = self->_presentationManager;
    return r0;
}

-(void)setPresentationManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presentationManager, arg2);
    return;
}

-(bool)isInterstitial {
    r0 = *(int8_t *)(int64_t *)&self->_interstitial;
    return r0;
}

-(void)setInterstitial:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_interstitial = arg2;
    return;
}

-(bool)playCommandEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_playCommandEnabled;
    return r0;
}

-(void)setPlayCommandEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playCommandEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_presentationManager, 0x0);
    objc_storeStrong((int64_t *)&self->_parentPresentationController, 0x0);
    objc_storeStrong((int64_t *)&self->_presenterController, 0x0);
    return;
}

@end