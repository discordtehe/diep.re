@implementation ISSplitViewController

-(void *)initWithViewJsonArray:(void *)arg2 andViewUniqueId:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_hybridObjectsArray, r22);
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewsArray));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewHeightConstraintArray));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r20 view];
            r0 = [r0 retain];
            [r0 bounds];
            r20->_viewOriginalBounds = d0;
            *((int64_t *)&r20->_viewOriginalBounds + 0x8) = d1;
            *((int64_t *)&r20->_viewOriginalBounds + 0x10) = d2;
            *((int64_t *)&r20->_viewOriginalBounds + 0x18) = d3;
            [r0 release];
            r0 = [ISAbstractView alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_baseViewContainer));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isPresented {
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
    r0 = [SSAHelperMethods applicationKeyWindow];
    r0 = [r0 retain];
    r20 = [[r0 rootViewController] retain];
    [r0 release];
    r23 = @selector(presentedViewController);
    r0 = objc_msgSend(r20, r23);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10070904c;

loc_100708ff0:
    r21 = @selector(isEqual:);
    r24 = r20;
    r0 = objc_msgSend(r24, r23);
    r29 = r29;
    r20 = [r0 retain];
    [r24 release];
    if (objc_msgSend(r20, r21) != 0x0) goto loc_100709054;

loc_100709028:
    r0 = [r20 presentedViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r23 = @selector(presentedViewController);
    if (r0 != 0x0) goto loc_100708ff0;

loc_10070904c:
    r19 = 0x0;
    goto loc_100709058;

loc_100709058:
    [r20 release];
    r0 = r19;
    return r0;

loc_100709054:
    r19 = 0x1;
    goto loc_100709058;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r21 = [[self baseViewContainer] retain];
    [self setView:r21];
    [r21 release];
    r0 = [self baseViewContainer];
    r0 = [r0 retain];
    [r0 setOrientationUpdates:0x1];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void)ISSplitViewControllerDidChangeOrientation {
    [SSAHelperMethods setApplicationStatusBarHidden:0x1];
    [self setNeedsStatusBarAppearanceUpdate];
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    [[&var_20 super] viewWillAppear:arg2];
    [self createViews];
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

-(void)didReceiveMemoryWarning {
    [[&var_10 super] didReceiveMemoryWarning];
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    r31 = r31 - 0x90;
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
    [[&var_78 super] viewWillDisappear:arg2];
    r26 = @selector(hybridObjectsArray);
    r0 = objc_msgSend(r19, r26);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r20 = 0x0;
            do {
                    r0 = objc_msgSend(r19, r26);
                    r0 = [r0 retain];
                    r27 = [[r0 objectAtIndexedSubscript:r20] retain];
                    [r0 release];
                    r0 = [r27 view];
                    r0 = [r0 retain];
                    [r0 setTranslatesAutoresizingMaskIntoConstraints:r2];
                    [r26 release];
                    [r27 release];
                    r20 = r20 + 0x1;
                    r0 = objc_msgSend(r19, r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = objc_msgSend(r0, r25);
                    [r0 release];
                    r26 = r24;
            } while (r27 > r20);
    }
    var_58 = **___stack_chk_guard;
    r19 = [[SupersonicAdsPublisher sharedInstance] retain];
    r20 = [@(NO) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r21 = [r0 retain];
    [r19 runCommand:@"viewableChange" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)show:(unsigned long long)arg2 andViewUniqueId:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r21 = [arg3 retain];
    var_A8 = arg2;
    [r19 setProductType:arg2];
    [r19 setViewUniqueId:r21];
    [r21 release];
    r20 = @selector(hybridObjectsArray);
    r0 = objc_msgSend(r19, r20);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r21 = 0x0;
            r22 = @selector(objectAtIndexedSubscript:);
            var_88 = r22;
            r27 = @selector(respondsToSelector:);
            do {
                    r0 = objc_msgSend(r19, r20);
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = objc_msgSend(r0, r22);
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = objc_msgSend(r0, r27, @selector(show:));
                    [r0 release];
                    [r24 release];
                    [r28 release];
                    if (r25 != 0x0) {
                            r0 = objc_msgSend(r19, r20);
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = objc_msgSend(r0, r22);
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 view];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r25 release];
                            [r24 release];
                            [r26 show:var_A8];
                            [r26 release];
                    }
                    r0 = objc_msgSend(r19, r20);
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = objc_msgSend(r0, r22);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r27;
                    r28 = objc_msgSend(r0, r27, @selector(setOrientationUpdates:));
                    [r0 release];
                    [r25 release];
                    [r24 release];
                    if (r28 != 0x0) {
                            r0 = objc_msgSend(r19, r20);
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = objc_msgSend(r0, var_88);
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 view];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r24 release];
                            [r20 release];
                            [r25 setOrientationUpdates:0x0];
                            [r25 release];
                    }
                    var_A0 = @selector(count);
                    r21 = r21 + 0x1;
                    r0 = [r19 hybridObjectsArray];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = objc_msgSend(r0, var_A0);
                    [r0 release];
                    r20 = @selector(hybridObjectsArray);
                    r27 = r22;
                    r22 = var_88;
            } while (r21 < r24);
    }
    [r19 handleStatusBar];
    r0 = [SSAHelperMethods topMostController];
    r0 = [r0 retain];
    [r0 presentViewController:r19 animated:0x0 completion:&var_78];
    [r0 release];
    return;
}

-(void)handleStatusBar {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [self setApplicationHasStatusBar:[r0 isStatusBarHidden] ^ 0x1];
    [r0 release];
    [self setModalPresentationCapturesStatusBarAppearance:0x1];
    [SSAHelperMethods setApplicationStatusBarHidden:0x1];
    [self setNeedsStatusBarAppearanceUpdate];
    return;
}

-(void)hide {
    r31 = r31 - 0xd0;
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
    r0 = [self baseViewContainer];
    r0 = [r0 retain];
    [r0 setOrientationUpdates:0x0];
    [r0 release];
    r28 = @selector(hybridObjectsArray);
    r0 = objc_msgSend(r19, r28);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r20 = 0x0;
            do {
                    r0 = objc_msgSend(r19, r28);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectAtIndexedSubscript:r20];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 respondsToSelector:@selector(hideWithSuperSonicAdsViewWithCompletionHandler:)];
                    [r0 release];
                    [r23 release];
                    [r25 release];
                    if (r27 != 0x0) {
                            r0 = objc_msgSend(r19, r28);
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectAtIndexedSubscript:r20];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 view];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r24 release];
                            [r23 release];
                            [r25 hideSuperSonicAdsViewWithCompletionHandler:0x0];
                            [r25 release];
                    }
                    var_B8 = @selector(count);
                    r20 = r20 + 0x1;
                    r0 = [r19 hybridObjectsArray];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = objc_msgSend(r0, var_B8);
                    [r0 release];
                    r28 = @selector(hybridObjectsArray);
            } while (r20 < r24);
    }
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    [r0 release];
    [UIView animateWithDuration:&stack[-136] animations:&var_A0 completion:0x0];
    return;
}

-(void)addSubviewWithFullScreenConstrains:(void *)arg2 toView:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 addSubview:r21];
    [arg2 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r19 = [[ISConstrainsHelper setFullScreenConstraintsForViewAccordingToSuperView:r21] retain];
    [r21 release];
    [r19 release];
    return;
}

-(void)updateConstraintsForViews:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r25 = self;
    r22 = [arg2 retain];
    r27 = [[NSMutableArray alloc] init];
    r0 = [r22 count];
    if (r0 != 0x0) {
            r23 = 0x0;
            var_70 = r0;
            var_68 = r22;
            do {
                    var_C8 = @selector(addObject:);
                    r0 = [r22 objectAtIndexedSubscript:r23];
                    r0 = [r0 retain];
                    r0 = [r0 objectForKeyedSubscript:@"screenRatio"];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r0 = [r25 viewHeightConstraintArray];
                    r0 = [r0 retain];
                    r28 = [[r0 objectAtIndexedSubscript:r23] retain];
                    [r0 release];
                    r20 = [[r28 firstItem] retain];
                    [r28 firstAttribute];
                    [r28 relation];
                    r26 = [[r28 secondItem] retain];
                    [r28 secondAttribute];
                    v0 = v0;
                    r25 = r25;
                    r0 = [NSLayoutConstraint constraintWithItem:r2 attribute:r3 relatedBy:r4 toItem:r5 attribute:r6 multiplier:r7 constant:stack[-224]];
                    r29 = r29;
                    [r0 retain];
                    [r26 release];
                    [r20 release];
                    objc_msgSend(r27, var_C8);
                    [r19 release];
                    [r28 release];
                    r0 = r22;
                    r22 = var_68;
                    [r0 release];
                    r23 = r23 + 0x1;
            } while (var_70 != r23);
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r19 release];
    if (r21 != -0x1) {
            r19 = @class(NSLayoutConstraint);
            r20 = [[r25 viewHeightConstraintArray] retain];
            [r19 deactivateConstraints:r20];
            [r20 release];
            [NSLayoutConstraint activateConstraints:r27];
    }
    else {
            r20 = [[r25 view] retain];
            r21 = [[r25 viewHeightConstraintArray] retain];
            [r20 removeConstraints:r21];
            [r21 release];
            [r20 release];
            r0 = [r25 view];
            r0 = [r0 retain];
            [r0 addConstraints:r27];
            [r0 release];
    }
    r19 = [r27 mutableCopy];
    [r25 setViewHeightConstraintArray:r19];
    [r19 release];
    [r27 release];
    [r22 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(unsigned long long)productType {
    r0 = self->_productType;
    return r0;
}

-(void)createViews {
    r31 = r31 - 0xf0;
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
    r20 = [[UIColor blackColor] retain];
    r0 = [r19 view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r20];
    [r0 release];
    [r20 release];
    r22 = @selector(hybridObjectsArray);
    r0 = objc_msgSend(r19, r22);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 != 0x0) {
            r23 = 0x0;
            r26 = @selector(objectAtIndexedSubscript:);
            r27 = @selector(viewsArray);
            r20 = @selector(addObject:);
            var_70 = r26;
            var_88 = r20;
            var_80 = r27;
            do {
                    r0 = objc_msgSend(r19, r22);
                    r0 = [r0 retain];
                    r28 = [objc_msgSend(r0, r26) retain];
                    [r0 release];
                    r22 = [UIView new];
                    [[UIColor blackColor] retain];
                    [r22 setBackgroundColor:r2];
                    [r25 release];
                    r0 = objc_msgSend(r19, r27);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r20);
                    [r25 release];
                    r0 = [r19 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    [r25 release];
                    if (r23 != 0x0) {
                            r0 = objc_msgSend(r19, r27);
                            r0 = [r0 retain];
                            r26 = [objc_msgSend(r0, r26) retain];
                            [r0 release];
                            [r28 viewRatio];
                            r0 = [ISConstrainsHelper setView:r22 ToTopView:r26 withScreenRatio:0x0 isFirstViewOnScreen:r5];
                            r29 = r29;
                            r25 = [r0 retain];
                            r0 = r26;
                    }
                    else {
                            r24 = [[r19 view] retain];
                            [r28 viewRatio];
                            r0 = [ISConstrainsHelper setView:r22 ToTopView:r24 withScreenRatio:0x1 isFirstViewOnScreen:r5];
                            r29 = r29;
                            r25 = [r0 retain];
                            r0 = r24;
                    }
                    [r0 release];
                    r0 = [r28 view];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 nextResponder];
                    r29 = r29;
                    r26 = [r0 retain];
                    r27 = [r26 isKindOfClass:[ISAppStoreViewController class]];
                    [r26 release];
                    [r24 release];
                    if (r27 != 0x0) {
                            r0 = [r28 view];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 nextResponder];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r24 release];
                            [r19 addChildViewController:r26];
                            [r26 release];
                    }
                    var_C0 = @selector(count);
                    r0 = [r19 viewHeightConstraintArray];
                    r0 = [r0 retain];
                    r20 = var_88;
                    objc_msgSend(r0, r20);
                    [r24 release];
                    r24 = [[r28 view] retain];
                    [r19 addSubviewWithFullScreenConstrains:r24 toView:r22];
                    [r24 release];
                    [r25 release];
                    [r22 release];
                    [r28 release];
                    r23 = r23 + 0x1;
                    r0 = [r19 hybridObjectsArray];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = objc_msgSend(r0, var_C0);
                    [r0 release];
                    r22 = @selector(hybridObjectsArray);
                    r26 = var_70;
                    r27 = var_80;
            } while (r24 > r23);
    }
    return;
}

-(void)setProductType:(unsigned long long)arg2 {
    self->_productType = arg2;
    return;
}

-(void *)hybridObjectsArray {
    r0 = self->_hybridObjectsArray;
    return r0;
}

-(void)setViewsArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewsArray, arg2);
    return;
}

-(void)setHybridObjectsArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_hybridObjectsArray, arg2);
    return;
}

-(void *)viewsArray {
    r0 = self->_viewsArray;
    return r0;
}

-(void *)viewHeightConstraintArray {
    r0 = self->_viewHeightConstraintArray;
    return r0;
}

-(void *)viewUniqueId {
    r0 = self->_viewUniqueId;
    return r0;
}

-(void)setViewUniqueId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewUniqueId, arg2);
    return;
}

-(void)setViewHeightConstraintArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewHeightConstraintArray, arg2);
    return;
}

-(bool)isOrientationAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_isOrientationAllowed;
    return r0;
}

-(void)setIsOrientationAllowed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isOrientationAllowed = arg2;
    return;
}

-(void)setViewOriginalBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewOriginalBounds));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(struct CGRect)viewOriginalBounds {
    r0 = self;
    return r0;
}

-(bool)applicationHasStatusBar {
    r0 = *(int8_t *)(int64_t *)&self->_applicationHasStatusBar;
    return r0;
}

-(void)setBaseViewContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_baseViewContainer, arg2);
    return;
}

-(void)setApplicationHasStatusBar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_applicationHasStatusBar = arg2;
    return;
}

-(void *)baseViewContainer {
    r0 = self->_baseViewContainer;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_baseViewContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_viewUniqueId, 0x0);
    objc_storeStrong((int64_t *)&self->_viewHeightConstraintArray, 0x0);
    objc_storeStrong((int64_t *)&self->_viewsArray, 0x0);
    objc_storeStrong((int64_t *)&self->_hybridObjectsArray, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end