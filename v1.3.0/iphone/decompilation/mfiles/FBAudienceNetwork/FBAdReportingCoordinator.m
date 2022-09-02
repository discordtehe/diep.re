@implementation FBAdReportingCoordinator

-(void *)initWithData:(void *)arg2 viewController:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r19 inlineClientToken];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [FBAdReportingConfig sharedConfig];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adReportingConfig));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 icon];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_logoImage));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r19 adChoicesLinkURL];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesURL));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_viewController, r20);
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userJourney));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_selectedOptions));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_flowViews));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_currentStep = 0x1;
            r21->_layoutType = 0x0;
            objc_storeWeak((int64_t *)&r21->_funnelLogger, [[[[FBAdFunnelLogging sharedFunnelLogger] retain] funnelLoggerForToken:[[r19 inlineClientToken] retain]] retain]);
            [r24 release];
            [r22 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)startAdReportingFlowInView:(void *)arg2 layoutType:(long long)arg3 {
    r31 = r31 - 0xc0;
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
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 adReportingConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isReadyForNonFullscreen];
    [r0 release];
    if (r23 != 0x0) {
            [r20 setLayoutType:r22];
            r0 = [r20 userJourney];
            r0 = [r0 retain];
            [r0 addObject:@"start"];
            [r0 release];
            r0 = [r20 adChoicesViewController];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            [r24 release];
            r22 = [[FBAdChoicesViewController alloc] initWithLayoutType:r22];
            [r20 setAdChoicesViewController:r22];
            [r22 release];
            [[r20 adChoicesViewController] retain];
            objc_initWeak(&stack[-104], r20);
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r23 setOnDismiss:&var_80];
            objc_copyWeak(&var_B0 + 0x28, &stack[-104]);
            r0 = [r19 retain];
            var_90 = r0;
            [r23 setOnOptionSelected:&var_B0];
            r25 = [[r23 view] retain];
            [r0 bounds];
            [r25 setFrame:&var_B0];
            [r25 setAutoresizingMask:0x12];
            [r0 addSubview:r25];
            r0 = [r20 flowViews];
            r0 = [r0 retain];
            [r0 addObject:r25];
            [r0 release];
            [r25 release];
            [var_90 release];
            objc_destroyWeak(&var_B0 + 0x28);
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
            [r23 release];
    }
    [r19 release];
    return;
}

-(void *)coverView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_coverView;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [UIView new];
            [r20 release];
            [r21 setAutoresizingMask:0x12];
            r20 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [r21 setBackgroundColor:r20];
            [r20 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)startAdReportingFlow {
    r31 = r31 - 0xb0;
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
    r0 = [self adReportingConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isReadyForFullscreen];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 userJourney];
            r0 = [r0 retain];
            [r0 addObject:@"start"];
            [r0 release];
            r20 = [[r19 coverView] retain];
            r0 = [r19 viewController];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 bounds];
            [r20 setFrame:@"start"];
            [r0 release];
            r24 = [[NSArray arrayWithObjects:&var_50 count:0x1] retain];
            [FBAdUtility animateWithFadeIn:r24 completion:0x0];
            [r24 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            r0 = [FBAdChoicesViewController new];
            [r0 setModalPresentationStyle:0x5];
            [r0 setModalTransitionStyle:0x2];
            [r0 setOnDismiss:&var_78];
            [r0 setOnOptionSelected:&var_A0];
            [r21 presentViewController:r0 animated:0x1 completion:0x0];
            [r0 release];
            [r21 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)stopAdReportingFlow {
    r31 = r31 - 0x190;
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
    r0 = [self flowViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            var_120 = q0;
            r0 = [r19 flowViews];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_120;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_120 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_128 + r26 * 0x8) removeFromSuperview];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            [r20 release];
            [r19 notifyDelegateAboutFlowCancelation];
            [r19 clearReport];
    }
    else {
            [r19 logReport];
            r21 = [[r19 coverView] retain];
            r22 = [[NSArray arrayWithObjects:&var_F0 count:0x1] retain];
            [FBAdUtility animateWithFadeOut:r22 completion:&var_158];
            [r22 release];
            [r21 release];
            r0 = [r19 viewController];
            r0 = [r0 retain];
            [r0 dismissViewControllerAnimated:0x1 completion:&var_180];
            [r0 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)clearReport {
    r0 = [self userJourney];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [self selectedOptions];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    return;
}

-(void)notifyDelegateAboutFlowCancelation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adReportingCoordinatorDidCancelFlow:)] != 0x0) {
            [r20 adReportingCoordinatorDidCancelFlow:r19];
    }
    [r20 release];
    return;
}

-(void)logReport {
    r20 = [[self adReportingExtraData] retain];
    r21 = [[FBAdEventManager sharedManager] retain];
    r19 = [[self inlineClientToken] retain];
    [r21 logAdReportingEventForToken:r19 withExtraData:r20];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)adReportingExtraData {
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [[self selectedOptions] retain];
    r8 = &@selector(getTemplateForKey:);
    r22 = *(r8 + 0x758);
    r0 = objc_msgSend(@class(FBAdUtility), r22);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"";
            }
    }
    r8 = &@selector(adParser);
    r24 = [objc_msgSend(r21, *(r8 + 0x368)) retain];
    r0 = objc_msgSend(@class(FBAdUtility), r22);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r0;
            }
            else {
                    r8 = @"";
            }
    }
    var_48 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2];
    r21 = [r0 retain];
    [r22 release];
    [r24 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)presentReportingOptionsViewControllerWithTitle:(void *)arg2 heading:(void *)arg3 items:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self presentReportingOptionsViewControllerWithTitle:r22 heading:r20 items:arg4 inView:0x0];
    [r20 release];
    [r22 release];
    return;
}

-(void)presentAdHiddenViewControllerWithReason:(void *)arg2 inView:(void *)arg3 {
    r31 = r31 - 0x110;
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
    r20 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [FBAdHiddenViewController alloc];
    r22 = [[r20 logoImage] retain];
    r21 = [r21 initWithReason:r23 logoImage:r22 flowType:[r20 flowType] layoutType:[r20 layoutType]];
    [r20 setAdHiddenViewController:r21];
    [r21 release];
    [r22 release];
    r0 = [r20 adHiddenViewController];
    r29 = &saved_fp;
    r22 = [r0 retain];
    objc_initWeak(r29 - 0x78, r20);
    r21 = &var_A8 + 0x28;
    objc_copyWeak(r21, r29 - 0x78);
    r0 = [r23 retain];
    r23 = r0;
    var_88 = r0;
    [r22 setOnDismiss:&var_A8];
    r24 = &var_D0 + 0x20;
    objc_copyWeak(r24, r29 - 0x78);
    [r22 setOnManageAdSettings:&var_D0];
    if (r19 != 0x0) {
            [r19 bounds];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r26 = [[r22 view] retain];
            [r19 addSubview:r26];
            [r26 release];
            r26 = [[r20 flowViews] retain];
            r0 = [r22 view];
            r29 = r29;
            r25 = [r0 retain];
            [r26 addObject:r25];
            [r25 release];
            [r26 release];
            [r20 logReport];
            [r20 clearReport];
    }
    else {
            [r22 setModalPresentationStyle:0x5];
            [r22 setModalTransitionStyle:0x2];
            r0 = [r20 viewController];
            r29 = r29;
            r25 = [r0 retain];
            var_D8 = [r22 retain];
            [r25 dismissViewControllerAnimated:0x1 completion:&var_100];
            [r25 release];
            [var_D8 release];
    }
    objc_destroyWeak(r24);
    [var_88 release];
    objc_destroyWeak(r21);
    objc_destroyWeak(r29 - 0x78);
    [r22 release];
    [r19 release];
    [r23 release];
    return;
}

-(void)presentManageAdPreferencesViewController {
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
    r19 = self;
    r0 = [self userJourney];
    r0 = [r0 retain];
    [r0 addObject:@"manage_ad_preferences"];
    [r0 release];
    r20 = [[r19 viewController] retain];
    r21 = [[r19 adHiddenViewController] retain];
    r0 = [r19 adReportingConfig];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 manageAdPreferencesURL];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r20 != 0x0 && r21 != 0x0) {
            if (r22 != 0x0) {
                    r23 = @class(FBAdSafariViewController);
                    r24 = [[r19 inlineClientToken] retain];
                    [r23 presentSafariViewControllerWithURL:r22 withRootViewController:r20 withInlineClientToken:r24 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:r19];
                    [r24 release];
            }
    }
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)presentWhyAmISeeingThisViewController {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r0 = [self userJourney];
    r0 = [r0 retain];
    [r0 addObject:@"why_am_i_seeing_this"];
    [r0 release];
    r21 = [[self coverView] retain];
    r22 = [[NSArray arrayWithObjects:&var_30 count:0x1] retain];
    [FBAdUtility animateWithFadeOut:r22 completion:0x0];
    [r22 release];
    [r21 release];
    [self logReport];
    r0 = [self viewController];
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:&var_58];
    [r0 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)funnelLogWhySeeingThisSelected {
    r0 = [self funnelLogger];
    r0 = [r0 retain];
    [r0 logAdReportWhySeeingThisClickedWithData:0x0];
    [r0 release];
    return;
}

-(void)registerOptionsStepForFlowType:(long long)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 == 0x1) goto loc_100a7fe44;

loc_100a7fde4:
    if (r2 != 0x0) goto .l1;

loc_100a7fde8:
    [r19 currentStep];
    r0 = [@"hide_" stringByAppendingFormat:@"%ld"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a7febc;

loc_100a7fe2c:
    r0 = [r19 userJourney];
    goto loc_100a7fe9c;

loc_100a7fe9c:
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r19 release];
    goto loc_100a7febc;

loc_100a7febc:
    [r20 release];
    return;

.l1:
    return;

loc_100a7fe44:
    [r19 currentStep];
    r0 = [@"report_" stringByAppendingFormat:@"%ld"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a7febc;

loc_100a7fe88:
    r0 = [r19 userJourney];
    goto loc_100a7fe9c;
}

-(void)presentReportingOptionsViewControllerWithTitle:(void *)arg2 heading:(void *)arg3 items:(void *)arg4 inView:(void *)arg5 {
    r31 = r31 - 0x160;
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
    r23 = self;
    r22 = [arg2 retain];
    r24 = [arg3 retain];
    r25 = [arg4 retain];
    [arg5 retain];
    r19 = [FBAdReportingOptionsViewController alloc];
    r19 = [r19 initWithTitle:r22 heading:r24 items:r25 layoutType:[r23 layoutType]];
    [r23 setReportingOptionsViewController:r19];
    [r19 release];
    r0 = [r23 reportingOptionsViewController];
    r29 = &saved_fp;
    r21 = [r0 retain];
    objc_initWeak(r29 - 0x80, r23);
    r20 = &var_A8 + 0x20;
    objc_copyWeak(r20, r29 - 0x80);
    [r21 setOnDismiss:&var_A8];
    var_150 = r22;
    r22 = &var_D8 + 0x28;
    objc_copyWeak(r22, r29 - 0x80);
    r0 = [r26 retain];
    var_B8 = r0;
    [r21 setOnBack:&var_D8];
    r26 = &var_118 + 0x38;
    objc_copyWeak(r26, r29 - 0x80);
    r0 = [r24 retain];
    r24 = r0;
    var_F8 = r0;
    r0 = [r25 retain];
    r25 = r0;
    var_F0 = r0;
    r0 = [r27 retain];
    r27 = r0;
    var_E8 = r0;
    [r21 setOnSelect:&var_118];
    [r23 registerOptionsStepForFlowType:[r23 flowType]];
    if (r27 != 0x0) {
            [r27 bounds];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r19 = [[r21 view] retain];
            [r27 addSubview:r19];
            [r19 release];
            r23 = [[r23 flowViews] retain];
            r0 = [r21 view];
            r29 = r29;
            [r0 retain];
            [r23 addObject:r2];
            [r19 release];
            r0 = r23;
    }
    else {
            [r21 setModalPresentationStyle:0x5];
            [r21 setModalTransitionStyle:0x2];
            r0 = [r23 viewController];
            r29 = r29;
            r28 = [r0 retain];
            var_120 = [r21 retain];
            [r28 dismissViewControllerAnimated:0x1 completion:&var_148];
            [r28 release];
            r0 = var_120;
    }
    [r0 release];
    [var_E8 release];
    [var_F0 release];
    [var_F8 release];
    objc_destroyWeak(r26);
    [var_B8 release];
    objc_destroyWeak(r22);
    objc_destroyWeak(r20);
    objc_destroyWeak(r29 - 0x80);
    [r21 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [var_150 release];
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adChoicesViewController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [r20 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adReportingCoordinatorDidCloseWhyAmISeeingThis:)] != 0x0) {
            [r20 adReportingCoordinatorDidCloseWhyAmISeeingThis:r19];
    }
    [r20 release];
    return;
}

-(void)funnelLogManagePrefsSelected {
    r0 = [self funnelLogger];
    r0 = [r0 retain];
    [r0 logAdReportManagePrefsClickedWithData:0x0];
    [r0 release];
    return;
}

-(void)funnelLogAdReported {
    r20 = [[self funnelLogger] retain];
    r19 = [[self userJourney] retain];
    [r20 logAdReportedWithData:0x0 userJourney:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_funnelLogger);
    objc_storeStrong((int64_t *)&self->_flowViews, 0x0);
    objc_storeStrong((int64_t *)&self->_adHiddenViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_reportingOptionsViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_selectedOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_userJourney, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesURL, 0x0);
    objc_storeStrong((int64_t *)&self->_previousHeading, 0x0);
    objc_storeStrong((int64_t *)&self->_previousItems, 0x0);
    objc_storeStrong((int64_t *)&self->_logoImage, 0x0);
    objc_storeStrong((int64_t *)&self->_adReportingConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_coverView, 0x0);
    objc_destroyWeak((int64_t *)&self->_viewController);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(void)setCoverView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_coverView, arg2);
    return;
}

-(void *)viewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_viewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adReportingConfig {
    r0 = self->_adReportingConfig;
    return r0;
}

-(void *)logoImage {
    r0 = self->_logoImage;
    return r0;
}

-(void)setLogoImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logoImage, arg2);
    return;
}

-(void)setAdReportingConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adReportingConfig, arg2);
    return;
}

-(void *)previousItems {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_previousItems)), 0x0);
    return r0;
}

-(void)setPreviousItems:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPreviousHeading:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)previousHeading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_previousHeading)), 0x0);
    return r0;
}

-(long long)flowType {
    r0 = self->_flowType;
    return r0;
}

-(void)setFlowType:(long long)arg2 {
    self->_flowType = arg2;
    return;
}

-(void *)adChoicesURL {
    r0 = self->_adChoicesURL;
    return r0;
}

-(void)setAdChoicesURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesURL, arg2);
    return;
}

-(void *)userJourney {
    r0 = self->_userJourney;
    return r0;
}

-(void)setUserJourney:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userJourney, arg2);
    return;
}

-(void *)selectedOptions {
    r0 = self->_selectedOptions;
    return r0;
}

-(void)setSelectedOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_selectedOptions, arg2);
    return;
}

-(long long)currentStep {
    r0 = self->_currentStep;
    return r0;
}

-(void)setCurrentStep:(long long)arg2 {
    self->_currentStep = arg2;
    return;
}

-(void)setAdChoicesViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesViewController, arg2);
    return;
}

-(void *)adChoicesViewController {
    r0 = self->_adChoicesViewController;
    return r0;
}

-(void *)reportingOptionsViewController {
    r0 = self->_reportingOptionsViewController;
    return r0;
}

-(void)setReportingOptionsViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingOptionsViewController, arg2);
    return;
}

-(void)setAdHiddenViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adHiddenViewController, arg2);
    return;
}

-(void *)adHiddenViewController {
    r0 = self->_adHiddenViewController;
    return r0;
}

-(void *)flowViews {
    r0 = self->_flowViews;
    return r0;
}

-(long long)layoutType {
    r0 = self->_layoutType;
    return r0;
}

-(void)setFlowViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_flowViews, arg2);
    return;
}

-(void)setLayoutType:(long long)arg2 {
    self->_layoutType = arg2;
    return;
}

-(void *)funnelLogger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_funnelLogger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFunnelLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_funnelLogger, arg2);
    return;
}

+(bool)canPresentInView:(void *)arg2 layoutType:(long long)arg3 {
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = 0x101137000;
    r20 = *(r8 + 0x9d8);
    r0 = [arg2 retain];
    CGRectGetWidth(objc_msgSend(r0, r20));
    objc_msgSend(r21, r20);
    CGRectGetHeight([r21 release]);
    if (arg3 == 0x1) {
            r8 = 0x101137000;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    d1 = *(0x100bfccf0 + r8 * 0x8);
    d2 = *(0x100bfcd00 + r8 * 0x8);
    if (d0 >= d1) {
            if (CPU_FLAGS & GE) {
                    r8 = 0x1;
            }
    }
    r9 = 0x100bfcd00;
    if (d8 >= d2) {
            r9 = 0x100bfcd00;
            if (CPU_FLAGS & GE) {
                    r9 = 0x1;
            }
    }
    r0 = r9 & r8;
    return r0;
}

@end