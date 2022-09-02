@implementation FBStoreProductViewController

-(void *)init {
    r0 = [self initWithNibName:0x0 bundle:0x0];
    return r0;
}

-(void *)createStoreProductViewController {
    r0 = [[FBSKStoreProductViewControllerWithOrientationMask alloc] initWithOrientationMask:[self supportedInterfaceOrientations]];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithNibName:(void *)arg2 bundle:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithNibName:r21 bundle:arg3];
    r19 = r0;
    [r21 release];
    if (r19 != 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 userInterfaceIdiom];
            [r0 release];
            if (r21 == 0x1) {
                    [r19 setModalPresentationStyle:0x2];
                    [r19 setPreferredContentSize:0x2];
            }
            r0 = [FBAdWeakProxy proxyForObject:r19];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_weakProxy));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_orientationWhenPresented = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [NSObject cancelPreviousPerformRequestsWithTarget:self->_weakProxy];
    [self->_storeKitController setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)_dismissStoreKitControllerIfPresented:(void *)arg2 completion:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 presentingViewController];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 dismissViewControllerAnimated:0x0 completion:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)_createAndPrepareStoreProductViewController {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self createStoreProductViewController];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (**_kCFCoreFoundationVersionNumber < *double_value_1140_1) {
            r20 = [UIWindow alloc];
            [FBAdScreen bounds];
            r20 = [r20 initWithFrame:r2];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
            r21 = [UIViewController new];
            [r20 setRootViewController:r21];
            r22 = [[r21 view] retain];
            [r20 addSubview:r22];
            [r22 release];
            [r21 presentViewController:r19 animated:0x0 completion:0x0];
            objc_setAssociatedObject(r19, 0x1011ddce8, r20, 0x1);
            [r21 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)_scheduleAnotherLoad {
    r31 = r31 - 0xb0;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = self;
    r19 = [[self _createAndPrepareStoreProductViewController] retain];
    [r20->_storeKitControllersInProgress addObject:r19];
    CACurrentMediaTime();
    objc_initWeak(&stack[-104], r19);
    objc_initWeak(&stack[-112], r20);
    r21 = &var_A0 + 0x20;
    r22 = &var_A0 + 0x28;
    objc_copyWeak(r21, &stack[-112]);
    objc_copyWeak(r22, &stack[-104]);
    [r19 loadProductWithParameters:r23 completionBlock:&var_A0];
    r8 = *(r20 + r24);
    *(r20 + r24) = r8 + 0x1;
    if (r8 + 0x1 < r20->_maxNumberOfAttempts) {
            [r20->_weakProxy performSelector:r2 withObject:r3 afterDelay:r4];
    }
    objc_destroyWeak(r22);
    objc_destroyWeak(r21);
    objc_destroyWeak(&stack[-112]);
    objc_destroyWeak(&stack[-104]);
    [r19 release];
    return;
}

-(void)loadProductWithParameters:(void *)arg2 completionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadProductWithParameters:r21 numberOfAttempts:0x1 delayBetweenAttempts:arg3 timeoutAfterDelay:r5 completionBlock:r6];
    [r21 release];
    return;
}

-(void)reliablyLoadProductWithParameters:(void *)arg2 completionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    [self loadProductWithParameters:r21 numberOfAttempts:0x3 delayBetweenAttempts:arg3 timeoutAfterDelay:r5 completionBlock:r6];
    [r21 release];
    return;
}

-(void)_timeoutAfterDelay {
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
    r19 = self;
    var_120 = q0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitControllersInProgress));
    r0 = *(self + r24);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 _dismissStoreKitControllerIfPresented:r2 completion:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    [r20 release];
    [*(r19 + r24) removeAllObjects];
    [NSThread cancelPreviousPerformRequestsWithTarget:r19->_weakProxy selector:@selector(_scheduleAnotherLoad) object:0x0];
    r21 = **_SKErrorDomain;
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-240] forKeys:&var_E8 count:0x1] retain];
    r20 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r22] retain];
    [r22 release];
    *(int8_t *)(int64_t *)&r19->_loadCompleted = 0x1;
    r0 = r19->_loadCompletionBlock;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)_loadCompletedWithResult:(bool)arg2 error:(void *)arg3 duration:(double)arg4 loadAttempt:(unsigned long long)arg5 storeKitController:(void *)arg6 {
    r31 = r31 - 0x150;
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
    r24 = arg5;
    r23 = arg4;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r21 = [r24 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_loadCompleted));
    if (*(int8_t *)(r20 + r27) == 0x0) goto loc_100b24a48;

loc_100b24a00:
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_100b24a48:
    if ((r22 & 0x1) == 0x0) goto loc_100b24c44;

loc_100b24a4c:
    objc_storeStrong((int64_t *)&r20->_storeKitController, r24);
    [r20->_storeKitController setDelegate:r20];
    CACurrentMediaTime();
    r20->_loadProductFinishedTime = d0;
    r20->_loadAttemptThatSucceeded = r23;
    *(int8_t *)(int64_t *)&r20->_loadWasSuccessful = 0x1;
    r23 = (int64_t *)&r20->_storeKitControllersInProgress;
    goto loc_100b24ab0;

loc_100b24ab0:
    var_12C = r22;
    var_128 = r19;
    var_110 = q0;
    var_138 = r23;
    r0 = *r23;
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r22 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r22) {
                                    objc_enumerationMutation(r23);
                            }
                            if (*(var_118 + r19 * 0x8) != r21) {
                                    [r20 _dismissStoreKitControllerIfPresented:r2 completion:r3];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r25);
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    [r23 release];
    [*var_138 removeAllObjects];
    r0 = @class(NSObject);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_weakProxy));
    [r0 cancelPreviousPerformRequestsWithTarget:*(r20 + r22) selector:@selector(_scheduleAnotherLoad) object:0x0];
    [NSObject cancelPreviousPerformRequestsWithTarget:*(r20 + r22) selector:@selector(_timeoutAfterDelay) object:0x0];
    *(int8_t *)(r20 + r27) = 0x1;
    r0 = r20->_loadCompletionBlock;
    r19 = var_128;
    r22 = var_12C;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    if (r20->_presentedTime <= 0x0) goto loc_100b24a00;

loc_100b24c1c:
    if (r20->_dismissedTime == 0x0) {
            asm { ccmp       w22, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & E) goto loc_100b24a00;

loc_100b24c34:
    r1 = @selector(_presentProductViewController);
    r0 = r20;
    goto loc_100b24cd4;

loc_100b24cd4:
    objc_msgSend(r0, r1);
    goto loc_100b24a00;

loc_100b24c44:
    [r20 _dismissStoreKitControllerIfPresented:r21 completion:0x0];
    r23 = (int64_t *)&r20->_storeKitControllersInProgress;
    [*r23 removeObject:r21];
    if (r20->_loadAttemptsCount >= r20->_maxNumberOfAttempts) goto loc_100b24cdc;

loc_100b24c9c:
    [NSObject cancelPreviousPerformRequestsWithTarget:r2 selector:r3 object:r4];
    r0 = r20;
    r1 = @selector(_scheduleAnotherLoad);
    goto loc_100b24cd4;

loc_100b24cdc:
    if (CPU_FLAGS & NE || [*r23 count] != 0x0) goto loc_100b24a00;
}

-(void)loadProductWithParameters:(void *)arg2 numberOfAttempts:(int)arg3 delayBetweenAttempts:(double)arg4 timeoutAfterDelay:(double)arg5 completionBlock:(void *)arg6 {
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
    v8 = v1;
    r19 = self;
    r22 = [arg2 retain];
    r23 = @selector(copy);
    r20 = [arg4 retain];
    r24 = objc_msgSend(r22, r23);
    [r22 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadParameters));
    r0 = *(r19 + r8);
    *(r19 + r8) = r24;
    [r0 release];
    asm { sxtw       x8, w21 };
    r19->_maxNumberOfAttempts = r8;
    r19->_delayBetweenAttempts = d9;
    r21 = objc_msgSend(r20, r23);
    [r20 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadCompletionBlock));
    r0 = *(r19 + r8);
    *(r19 + r8) = r21;
    [r0 release];
    r0 = [NSMutableArray array];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitControllersInProgress));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_weakProxy));
    [*(r19 + r21) performSelector:r2 withObject:r3 afterDelay:r4];
    if (d8 > 0x0) {
            [*(r19 + r21) performSelector:r2 withObject:r3 afterDelay:r4];
    }
    return;
}

-(double)timeSpent {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    d1 = r0->_presentedTime;
    if (d1 > 0x0) {
            d2 = r0->_dismissedTime;
    }
    return r0;
}

-(double)timeSpentAfterLoad {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    d1 = r0->_loadProductFinishedTime;
    if (d1 > 0x0) {
            d2 = r0->_dismissedTime;
    }
    return r0;
}

-(double)timeSpentBeforeLoad {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    d0 = r0->_loadProductFinishedTime;
    if (d0 > 0x0) {
            d1 = r0->_presentedTime;
            if (d0 > d1) {
                    asm { fccmp      d1, d2, #0x4, gt };
            }
            if (CPU_FLAGS & G) {
                    asm { fcsel      d0, d0, d2, gt };
            }
    }
    return r0;
}

-(void)loadView {
    r0 = [self _navigationBarView];
    r0 = [r0 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_navigationBarView));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    r20 = [UIView new];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [r20 addSubview:*(self + r22)];
    [self setView:r20];
    [r20 release];
    return;
}

-(void *)_navigationBarView {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x1 target:self action:@selector(_didPressCancel)];
    r0 = [UINavigationItem new];
    r20 = r0;
    [r0 setLeftBarButtonItem:r19];
    r21 = [UINavigationBar new];
    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
    r22 = [r0 retain];
    [r21 setItems:r22 animated:0x0];
    [r22 release];
    [r21 sizeToFit];
    [r21 setAutoresizingMask:0x2];
    [r21 frame];
    [r21 setFrame:0x2];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)preferredInterfaceOrientationForPresentation {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self supportedInterfaceOrientations];
    if ((r0 & 0x2) == 0x0) {
            asm { ubfx       x10, x0, #0x2, #0x1 };
            if ((r0 & 0x8) != 0x0) {
                    asm { csinc      x9, x9, x10, ne };
            }
            if ((r0 & 0x10) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = 0x3;
                    }
                    else {
                            r0 = 0x4;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 userInterfaceIdiom];
    r0 = [r0 release];
    if (r20 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x2;
            }
            else {
                    r0 = 0x1a;
            }
    }
    return r0;
}

-(bool)shouldAutorotate {
    return 0x0;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] viewDidAppear:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewHasAppeared));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            CACurrentMediaTime();
            r19->_presentedTime = d0;
            if (*(int8_t *)(int64_t *)&r19->_loadWasSuccessful != 0x0) {
                    [r19 _presentProductViewController];
            }
    }
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] viewWillAppear:arg2];
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 userInterfaceIdiom];
    [r0 release];
    if (r21 == 0x1) {
            r0 = [r19 view];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 superview];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            [r20 release];
            [r19 release];
    }
    return;
}

-(bool)prefersStatusBarHidden {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 userInterfaceIdiom] == 0x0) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)viewWillDisappear:(bool)arg2 {
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
    r19 = arg2;
    r20 = self;
    r22 = @selector(isBeingDismissed);
    r21 = objc_msgSend(self, r22);
    if (objc_msgSend(r20, r22) != 0x0) {
            if ((r21 & 0x1) != 0x0) {
                    CACurrentMediaTime();
                    r20->_dismissedTime = d0;
                    var_110 = q0;
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitControllersInProgress));
                    r0 = *(r20 + r25);
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r26 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r26) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            [r20 _dismissStoreKitControllerIfPresented:r2 completion:r3];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    [r21 release];
                    [*(r20 + r25) removeAllObjects];
                    [r20 _dismissProductViewControllerWithCompletionBlock:0x0];
                    r0 = @class(NSObject);
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_weakProxy));
                    [r0 cancelPreviousPerformRequestsWithTarget:*(r20 + r23) selector:@selector(_scheduleAnotherLoad) object:0x0];
                    [NSObject cancelPreviousPerformRequestsWithTarget:*(r20 + r23) selector:@selector(_timeoutAfterDelay) object:0x0];
            }
    }
    else {
            r0 = [r20 presentedViewController];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r22 = 0x1;
                    }
            }
            [r0 release];
            if ((r22 & !r21 & 0x1) == 0x0) {
                    CACurrentMediaTime();
                    r20->_dismissedTime = d0;
                    var_110 = q0;
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitControllersInProgress));
                    r0 = *(r20 + r25);
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r26 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r26) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            [r20 _dismissStoreKitControllerIfPresented:r2 completion:r3];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    [r21 release];
                    [*(r20 + r25) removeAllObjects];
                    [r20 _dismissProductViewControllerWithCompletionBlock:0x0];
                    r0 = @class(NSObject);
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_weakProxy));
                    [r0 cancelPreviousPerformRequestsWithTarget:*(r20 + r23) selector:@selector(_scheduleAnotherLoad) object:0x0];
                    [NSObject cancelPreviousPerformRequestsWithTarget:*(r20 + r23) selector:@selector(_timeoutAfterDelay) object:0x0];
            }
    }
    var_60 = **___stack_chk_guard;
    [[&var_130 super] viewWillDisappear:r19];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)_dimmingViewBehindModal {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self view];
    r0 = [r0 retain];
    r19 = [[r0 superview] retain];
    [r0 release];
    r0 = [r19 superview];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 subviews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 indexOfObject:r19];
    [r0 release];
    [r22 release];
    r22 = r24 - 0x1;
    if (r22 >= 0x0) {
            r0 = [r19 superview];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 subviews];
            r0 = [r0 retain];
            r20 = [[r0 objectAtIndexedSubscript:r22] retain];
            [r0 release];
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)_presentProductViewController {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (**_kCFCoreFoundationVersionNumber >= *double_value_1140_1) {
            [UIView setAnimationsEnabled:0x0];
            [CATransaction begin];
            [CATransaction setDisableActions:0x1];
    }
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 userInterfaceIdiom];
    [r0 release];
    if (r21 == 0x1) {
            r0 = [r19 _dimmingViewBehindModal];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setHidden:r2];
            [r21 release];
    }
    [r19->_navigationBarView setHidden:r2];
    if (*r22 < *double_value_1140_1) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitController));
            r0 = *(r19 + r21);
            r0 = objc_getAssociatedObject(r0, 0x1011ddce8);
            r0 = [r0 retain];
            [r0 makeKeyAndVisible];
            [r19 productViewControllerDidAppear:*(r19 + r21)];
            [r0 release];
    }
    else {
            objc_initWeak(&stack[-72], r19);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r19 presentViewController:r21 animated:0x0 completion:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    return;
}

-(void)productViewControllerDidAppear:(void *)arg2 {
    return;
}

-(void)_dismissProductViewControllerWithCompletionBlock:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_storeKitController));
    if (*(r20 + r23) != 0x0) {
            [r20 _dismissStoreKitControllerIfPresented:r2 completion:r19];
            if (**_kCFCoreFoundationVersionNumber < *double_value_1140_1) {
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 window];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 makeKeyAndVisible];
                    [r0 release];
                    [r21 release];
            }
            [*(r20 + r23) setDelegate:0x0];
            r0 = *(r20 + r23);
            *(r20 + r23) = 0x0;
            [r0 release];
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 userInterfaceIdiom];
            [r0 release];
            if (r22 == 0x1) {
                    r0 = [r20 _dimmingViewBehindModal];
                    r0 = [r0 retain];
                    [r0 setHidden:0x0];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [self _dismissProductViewControllerWithCompletionBlock:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r19 release];
    return;
}

-(void)_didPressCancel {
    [self _dismissProductViewControllerWithCompletionBlock:0x0];
    [self _notifyProductViewControllerDidFinish];
    return;
}

-(void)_notifyProductViewControllerDidFinish {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(productViewControllerDidFinish:)] != 0x0) {
            [r20 productViewControllerDidFinish:r19];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_loadCompletionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_loadParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_weakProxy, 0x0);
    objc_storeStrong((int64_t *)&self->_navigationBarView, 0x0);
    objc_storeStrong((int64_t *)&self->_storeKitController, 0x0);
    objc_storeStrong((int64_t *)&self->_storeKitControllersInProgress, 0x0);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)loadWasSuccessful {
    r0 = *(int8_t *)(int64_t *)&self->_loadWasSuccessful;
    return r0;
}

-(unsigned long long)loadAttemptThatSucceeded {
    r0 = self->_loadAttemptThatSucceeded;
    return r0;
}

-(unsigned long long)loadAttemptsCount {
    r0 = self->_loadAttemptsCount;
    return r0;
}

@end