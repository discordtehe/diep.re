@implementation SupersonicAdsViewController

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
    if (r0 != 0x0) goto loc_100704544;

loc_100704460:
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
    if (r21 == 0x0) goto loc_10070453c;

loc_1007044d4:
    r21 = @selector(isEqual:);
    r24 = r20;
    r0 = objc_msgSend(r24, r23);
    r29 = r29;
    r20 = [r0 retain];
    [r24 release];
    if (objc_msgSend(r20, r21) != 0x0) goto loc_100704538;

loc_10070450c:
    r0 = [r20 presentedViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r23 = @selector(presentedViewController);
    if (r0 != 0x0) goto loc_1007044d4;

loc_100704530:
    r21 = 0x0;
    goto loc_10070453c;

loc_10070453c:
    [r20 release];
    goto loc_100704544;

loc_100704544:
    r0 = r21;
    return r0;

loc_100704538:
    r21 = 0x1;
    goto loc_10070453c;
}

-(void)dealloc {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    [r0 endGeneratingDeviceOrientationNotifications];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)show:(unsigned long long)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = _cmd;
    r19 = self;
    r22 = [[SupersonicAdsView alloc] init];
    [r19 setSupersonicAdsView:r22];
    [r22 release];
    r0 = [r19 supersonicAdsView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 show:arg2];
    [r0 release];
    [r19 setCurrentType:arg2];
    if (([r19 isPresented] & 0x1) != 0x0) goto .l1;

loc_1007046cc:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) == 0x0) goto loc_1007047a4;

loc_10070470c:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 userInterfaceIdiom];
    [r0 release];
    [r21 release];
    if (r23 != 0x1) goto loc_1007047ac;

loc_100704748:
    r21 = [[UIColor colorWithWhite:@selector(userInterfaceIdiom) alpha:r3] retain];
    r0 = [r19 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setBackgroundColor:r21];
    [r0 release];
    goto loc_1007047a4;

loc_1007047a4:
    [r21 release];
    goto loc_1007047ac;

loc_1007047ac:
    [r19 handleStatusBar];
    r0 = [SSAHelperMethods topMostController];
    r0 = [r0 retain];
    [r0 presentViewController:r19 animated:0x0 completion:&var_60];
    [r0 release];
    return;

.l1:
    return;
}

-(void)handleStatusBar {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [self setApplicationHasStatusBar:[r0 isStatusBarHidden] ^ 0x1];
    [r0 release];
    [self setModalPresentationStyle:0x3];
    [self setModalPresentationCapturesStatusBarAppearance:0x1];
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

-(void)SuperSonicViewControllerDidChangeOrientation {
    [SSAHelperMethods setApplicationStatusBarHidden:0x1];
    [self setNeedsStatusBarAppearanceUpdate];
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

-(void)viewWillAppear:(bool)arg2 {
    [[&var_20 super] viewWillAppear:arg2];
    r20 = [[self view] retain];
    [[self supersonicAdsView] retain];
    [r20 addSubview:r2];
    [r19 release];
    [r20 release];
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

-(void)hide {
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
    r19 = self;
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 userInterfaceIdiom];
            [r0 release];
            [r20 release];
            if (r22 != 0x1) {
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    [r0 bounds];
                    r0 = [r19 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setFrame:r2];
                    [r21 release];
                    [r20 release];
            }
    }
    else {
            [r20 release];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 bounds];
            r0 = [r19 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r21 release];
            [r20 release];
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    [r0 release];
    r0 = [r19 supersonicAdsView];
    r0 = [r0 retain];
    [r0 hideSuperSonicAdsViewWithCompletionHandler:&var_78];
    [r0 release];
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

-(unsigned long long)currentType {
    r0 = self->_currentType;
    return r0;
}

-(bool)prefersStatusBarHidden {
    r19 = [[SupersonicLogManager sharedManager] retain];
    r20 = [[NSString stringWithFormat:@"%@"] retain];
    [r19 log:r20 withLevel:0x0 withTag:0x5];
    [r20 release];
    [r19 release];
    return 0x1;
}

-(void)setCurrentType:(unsigned long long)arg2 {
    self->_currentType = arg2;
    return;
}

-(void *)supersonicAdsView {
    r0 = self->_supersonicAdsView;
    return r0;
}

-(void)setApplicationHasStatusBar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_applicationHasStatusBar = arg2;
    return;
}

-(void)setSupersonicAdsView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_supersonicAdsView, arg2);
    return;
}

-(bool)applicationHasStatusBar {
    r0 = *(int8_t *)(int64_t *)&self->_applicationHasStatusBar;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_supersonicAdsView, 0x0);
    return;
}

@end