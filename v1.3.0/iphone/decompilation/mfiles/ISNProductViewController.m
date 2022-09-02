@implementation ISNProductViewController

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ISNViewControllerPresentationConfiguration defaultConfiguration];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r21 = [self init];
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_configuration, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(bool)isPresented {
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
    r20 = [[SupersonicLogManager sharedManager] retain];
    r23 = [NSStringFromClass([r19 class]) retain];
    r24 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"%@ | %@ | checking if view controller presented"] retain];
    r21 = 0x1;
    [r20 log:r22 withLevel:0x1 withTag:0x5];
    [r22 release];
    [r24 release];
    [r23 release];
    [r20 release];
    r0 = [r19 presentingViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_10071110c;

loc_100711028:
    r0 = [SSAHelperMethods applicationKeyWindow];
    r0 = [r0 retain];
    r20 = [[r0 rootViewController] retain];
    [r0 release];
    r23 = @selector(presentedViewController);
    r0 = objc_msgSend(r20, r23);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    if (r21 == 0x0) goto loc_100711104;

loc_10071109c:
    r21 = @selector(isEqual:);
    r24 = r20;
    r0 = objc_msgSend(r24, r23);
    r29 = r29;
    r20 = [r0 retain];
    [r24 release];
    if (objc_msgSend(r20, r21) != 0x0) goto loc_100711100;

loc_1007110d4:
    r0 = [r20 presentedViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r23 = @selector(presentedViewController);
    if (r0 != 0x0) goto loc_10071109c;

loc_1007110f8:
    r21 = 0x0;
    goto loc_100711104;

loc_100711104:
    [r20 release];
    goto loc_10071110c;

loc_10071110c:
    r0 = r21;
    return r0;

loc_100711100:
    r21 = 0x1;
    goto loc_100711104;
}

-(void)presentFromViewController:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    [r0 setPresentingViewController:r21];
    [r0 release];
    r0 = [self configuration];
    r0 = [r0 retain];
    r25 = [r0 animateIn];
    var_50 = r23;
    r23 = [r23 retain];
    [arg2 presentViewController:self animated:r25 completion:&var_78];
    [r21 release];
    [r0 release];
    [var_50 release];
    [r23 release];
    return;
}

-(void)presentProductFromViewController:(void *)arg2 productType:(unsigned long long)arg3 completionHandler:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if ([r21 isPresented] == 0x0) goto loc_100711240;

loc_1007111f0:
    r21 = [[SSAHelperMethods errorWithReason:@"some product is already presented on screen" code:0x0 domain:@"ironsrc.com.errors.presentation"] retain];
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, r21);
    }
    r0 = r21;
    goto loc_10071143c;

loc_10071143c:
    [r0 release];
    goto loc_100711440;

loc_100711440:
    [r20 release];
    [r19 release];
    return;

loc_100711240:
    r23 = [[SupersonicAdsView alloc] init];
    [r21 setSupersonicAdsView:r23];
    [r23 release];
    r0 = [r21 supersonicAdsView];
    r0 = [r0 retain];
    [r0 show:r22 withView:0x0];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) == 0x0) goto loc_100711390;

loc_1007112f8:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 userInterfaceIdiom];
    [r0 release];
    [r22 release];
    if (r24 != 0x1) goto loc_100711398;

loc_100711334:
    r22 = [[UIColor colorWithWhite:@selector(userInterfaceIdiom) alpha:0x0] retain];
    r0 = [r21 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setBackgroundColor:r22];
    [r0 release];
    goto loc_100711390;

loc_100711390:
    [r22 release];
    goto loc_100711398;

loc_100711398:
    [r21 hideStatusBarIfNeeded];
    r0 = [r21 configuration];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 calcTopViewController];
    [r0 release];
    if (r19 == 0x0 || r22 != 0x0) goto loc_100711400;

loc_1007113e4:
    [r21 presentFromViewController:r19 completionHandler:r20];
    goto loc_100711440;

loc_100711400:
    r22 = [[SSAHelperMethods topMostController] retain];
    [r21 presentFromViewController:r22 completionHandler:r20];
    r0 = r22;
    goto loc_10071143c;
}

-(void)hideStatusBarIfNeeded {
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
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r19 setApplicationHasStatusBar:[r0 isStatusBarHidden] ^ 0x1];
    [r0 release];
    r0 = [r19 configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 ModalPresentationStyle];
    [r0 release];
    if (r23 != -0x1) {
            r0 = [r19 configuration];
            r0 = [r0 retain];
            [r19 setModalPresentationStyle:[r0 ModalPresentationStyle]];
            [r0 release];
    }
    [r19 setModalPresentationCapturesStatusBarAppearance:0x1];
    [SSAHelperMethods setApplicationStatusBarHidden:0x1];
    [r19 setNeedsStatusBarAppearanceUpdate];
    return;
}

-(void)SuperSonicViewControllerDidChangeOrientation {
    [SSAHelperMethods setApplicationStatusBarHidden:0x1];
    [self setNeedsStatusBarAppearanceUpdate];
    return;
}

-(void)viewDidLoad {
    [[&var_20 super] viewDidLoad];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    [[&var_20 super] viewWillAppear:arg2];
    r20 = [[self view] retain];
    [[self supersonicAdsView] retain];
    [r20 addSubview:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    [[&var_48 super] viewDidAppear:arg2];
    r19 = [[SupersonicAdsPublisher sharedInstance] retain];
    r20 = [@(YES) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r21 = [r0 retain];
    [r19 runCommand:@"viewableChange" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)forceCloseTimer {
    r0 = [self supersonicAdsView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 forceCloseTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r19 release];
    return;
}

-(void)dismissWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
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
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 userInterfaceIdiom];
            [r0 release];
            [r21 release];
            if (r23 != 0x1) {
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    [r0 bounds];
                    r0 = [r20 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setFrame:r2];
                    [r22 release];
                    [r21 release];
            }
    }
    else {
            [r21 release];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 bounds];
            r0 = [r20 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r22 release];
            [r21 release];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r20 name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    [r0 release];
    r21 = [[r20 supersonicAdsView] retain];
    var_58 = r19;
    r19 = [r19 retain];
    [r21 hideSuperSonicAdsViewWithCompletionHandler:&var_80];
    [r21 release];
    [var_58 release];
    [r19 release];
    return;
}

-(void)viewDidDisappear:(bool)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [[SupersonicAdsPublisher sharedInstance] retain];
    r22 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r23 = [r0 retain];
    [r21 runCommand:@"viewableChange" andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r23 release];
    [r22 release];
    [r21 release];
    [[&var_58 super] viewDidDisappear:arg2];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(bool)prefersStatusBarHidden {
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = [r0 hideStatusBar];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setSupersonicAdsView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_supersonicAdsView, arg2);
    return;
}

-(void *)supersonicAdsView {
    r0 = self->_supersonicAdsView;
    return r0;
}

-(bool)applicationHasStatusBar {
    r0 = *(int8_t *)(int64_t *)&self->_applicationHasStatusBar;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void)setApplicationHasStatusBar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_applicationHasStatusBar = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_supersonicAdsView, 0x0);
    return;
}

@end