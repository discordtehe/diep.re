@implementation FBInterstitialNativeAdInternal

-(bool)isAdValid {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [r0 isValid];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)adDataModel {
    r0 = [self dataModel];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 adData:(void *)arg3 placementDefinition:(void *)arg4 extraHint:(void *)arg5 {
    r31 = r31 - 0x70;
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
    r25 = arg5;
    r26 = arg4;
    r19 = [arg3 retain];
    r20 = [r26 retain];
    r21 = [r25 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [[FBNativeAdDataModel alloc] initWithMetadata:r19 placementType:[r20 type]];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataModel));
            r27 = *(r22 + r8);
            *(r22 + r8) = r0;
            [r0 retain];
            [r27 release];
            objc_storeStrong((int64_t *)&r22->_placementDefinition, r26);
            r22->_firstImpressionTime = 0xbff0000000000000;
            objc_storeStrong((int64_t *)&r22->_extraHint, r25);
            r0 = [r23 icon];
            r0 = [r0 retain];
            [r0 preloadImageAsync];
            [r0 release];
            r0 = [r23 image];
            r0 = [r0 retain];
            [r0 preloadImageAsync];
            [r0 release];
            r24 = [FBInterstitialAdNativeView alloc];
            [FBAdScreen boundsInOrientation];
            r0 = [r24 initWithFrame:r19];
            r24 = r0;
            [r0 setAutoresizingMask:0x12];
            [r24 setDelegate:r22];
            r0 = [r22 view];
            r0 = [r0 retain];
            [r0 addSubview:r24];
            [r23 release];
            [r0 release];
            objc_storeWeak((int64_t *)&r22->_nativeView, r24);
            [r24 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)viewWillDisappear:(bool)arg2 {
    [[&var_20 super] viewWillDisappear:arg2];
    r0 = [self nativeView];
    r0 = [r0 retain];
    [r0 setPlaying:0x0 forced:0x0];
    [r0 release];
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    [[&var_20 super] viewDidAppear:arg2];
    r0 = [self nativeView];
    r0 = [r0 retain];
    [r0 setPlaying:0x1 forced:0x0];
    [r0 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)loadAdFromMarkup:(void *)arg2 activationCommand:(void *)arg3 orientation:(long long)arg4 {
    return;
}

-(bool)showAdFromRootViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdViewControllerProxy viewController] retain];
            [r20 release];
            r20 = r21;
    }
    r19 = [r19 showAdFromRootViewController:r20 animated:0x1];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)loadAd {
    r20 = [[self nativeView] retain];
    r21 = [[self dataModel] retain];
    r19 = [[self placementDefinition] retain];
    [r20 loadAdFromDataModel:r21 placementDefinition:r19];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(bool)showAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isAdValid] != 0x0) {
            r21 = [[FBAdViewControllerProxy proxyWithViewController:r19] retain];
            [r20 setRootViewController:r21];
            [r21 release];
            r0 = [r20 rootViewController];
            r0 = [r0 retain];
            r21 = 0x1;
            [r0 presentViewController:r20 animated:0x1 completion:0x0];
            [r0 release];
            r0 = [r20 nativeView];
            r0 = [r0 retain];
            [r0 showAd];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(unsigned long long)supportedInterfaceOrientations {
    return 0x1e;
}

-(void)setupCommandProcessorIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self commandProcessor];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdCommandProcessor new];
            [r20 release];
            [r21 setDelegate:r19];
            objc_storeStrong((int64_t *)&r19->_commandProcessor, r21);
            r20 = r21;
    }
    [r20 release];
    return;
}

-(long long)preferredInterfaceOrientationForPresentation {
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
    r21 = self;
    r19 = [FBAdScreen orientation];
    r0 = [r21 dataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 view];
            r0 = [r0 retain];
            r25 = [[r0 window] retain];
            r23 = [FBAdUtility supportedInterfaceOrientationsForWindow:r25];
            [r25 release];
            [r0 release];
            r0 = [r21 dataModel];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 orientation] <= 0x2) {
                    [r24 release];
                    if (r19 <= 0x4) {
                            if ((r23 & 0x2) == 0x0) {
                                    if ((r23 & 0x4) != 0x0) {
                                            r19 = 0x2;
                                    }
                            }
                            else {
                                    r19 = 0x1;
                            }
                    }
                    else {
                            r0 = [r21 dataModel];
                            r0 = [r0 retain];
                            r21 = r0;
                            if ([r0 orientation] <= 0x4) {
                                    [r21 release];
                                    if (r19 <= 0x2) {
                                            if ((r23 & 0x8) == 0x0) {
                                                    if ((r23 & 0x10) != 0x0) {
                                                            r19 = 0x4;
                                                    }
                                            }
                                            else {
                                                    r19 = 0x3;
                                            }
                                    }
                            }
                            else {
                                    [r21 release];
                            }
                    }
            }
            else {
                    [r24 release];
                    r0 = [r21 dataModel];
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 orientation] <= 0x4) {
                            [r21 release];
                            if (r19 <= 0x2) {
                                    if ((r23 & 0x8) == 0x0) {
                                            if ((r23 & 0x10) != 0x0) {
                                                    r19 = 0x4;
                                            }
                                    }
                                    else {
                                            r19 = 0x3;
                                    }
                            }
                    }
                    else {
                            [r21 release];
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [FBAdViewControllerProxy proxyWithViewController:self];
    return r0;
}

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
    return 0x0;
}

-(void *)interstitialAdNativeViewRootViewController:(void *)arg2 {
    r0 = self;
    return r0;
}

-(void)interstitialAdNativeViewDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdDidLoad:self];
    [r0 release];
    return;
}

-(void)interstitialAdNativeViewDidClick:(void *)arg2 withEvent:(void *)arg3 withCommand:(void *)arg4 skipAppStore:(bool)arg5 withPageNumber:(void *)arg6 withPageTotal:(void *)arg7 {
    r25 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r20 = [arg6 retain];
    [self interstitialAdNativeViewDidClick:r25 withEvent:r23 withCommand:r22 skipAppStore:arg5 withPageNumber:r20 withPageTotal:arg7 completionHandler:0x0];
    [r20 release];
    [r22 release];
    [r23 release];
    [r25 release];
    return;
}

-(void)interstitialAdNativeViewDidClick:(void *)arg2 withEvent:(void *)arg3 withCommand:(void *)arg4 skipAppStore:(bool)arg5 withPageNumber:(void *)arg6 withPageTotal:(void *)arg7 completionHandler:(void *)arg8 {
    r31 = r31 - 0x80;
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
    r20 = arg5;
    r22 = self;
    r19 = [arg2 retain];
    r25 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r26 = [arg8 retain];
    [r22 firstImpressionTime];
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r22 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r27 = [r0 retain];
    r28 = [[FBAdUtility touchDictionaryForEvent:r25 delayTime:r27] retain];
    [r25 release];
    [r22 interstitialAdNativeViewDidInteract:r19 withTouchData:r28 touchType:@"touch" withCommand:r21 skipAppStore:r20 withPageNumber:r23 withPageTotal:r24 completionHandler:r26];
    [r26 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    [r28 release];
    [r27 release];
    return;
}

-(void)interstitialAdNativeViewDidLogImpression:(void *)arg2 withViewabilityValidator:(void *)arg3 withPageNumber:(void *)arg4 withPageTotal:(void *)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    [NSDate timeIntervalSinceReferenceDate];
    [r21 setFirstImpressionTime:arg2];
    r0 = [r21 dataModel];
    r0 = [r0 retain];
    r22 = [[r0 inlineClientToken] retain];
    [r0 release];
    r23 = [**___NSDictionary0__ mutableCopy];
    r0 = sub_1009ff3d8();
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    [r23 setObject:r2 forKeyedSubscript:r3];
    if (r19 != 0x0 && r20 != 0x0) {
            [[r19 stringValue] retain];
            [r23 setObject:r2 forKeyedSubscript:r3];
            [r27 release];
            r0 = [r20 stringValue];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r23, r25);
            [r26 release];
    }
    r0 = [r21 extraHint];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 stringRepresentation];
    r29 = r29;
    r26 = [r0 retain];
    [r27 release];
    if (r26 != 0x0) {
            [r23 setObject:r2 forKeyedSubscript:r3];
    }
    r0 = [r21 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAdWillLogImpression:)] != 0x0) {
            [r25 interstitialAdWillLogImpression:r21];
    }
    r0 = [FBAdEventManager sharedManager];
    r0 = [r0 retain];
    [r0 logImpressionForToken:r22 withExtraData:r23];
    [r0 release];
    [r25 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)processCommand:(void *)arg2 withExtraData:(void *)arg3 skipAppStore:(bool)arg4 completionHandler:(void *)arg5 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    objc_initWeak(&stack[-88], self);
    [[self commandProcessor] retain];
    r0 = [self dataModel];
    r0 = [r0 retain];
    r0 = [r0 inlineClientToken];
    r24 = &var_70 + 0x20;
    [r0 retain];
    objc_copyWeak(r24, &stack[-88]);
    [r23 processCommand:r19 withExtraData:r20 inlineClientToken:r26 skipAppStore:arg4 completionHandler:&var_70];
    [r26 release];
    [r25 release];
    [r23 release];
    if (r21 != 0x0) {
            (*(r21 + 0x10))(r21, 0x1);
    }
    objc_destroyWeak(r24);
    objc_destroyWeak(&stack[-88]);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialAdNativeViewDidClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialAdWillClose:self];
    [r0 release];
    r0 = [self nativeView];
    r0 = [r0 retain];
    [r0 destroyAd];
    [r0 release];
    [self dismissViewControllerAnimated:0x0 completion:&var_38];
    return;
}

-(void)interstitialAdNativeViewDidInteract:(void *)arg2 withTouchData:(void *)arg3 touchType:(void *)arg4 withCommand:(void *)arg5 skipAppStore:(bool)arg6 withPageNumber:(void *)arg7 withPageTotal:(void *)arg8 completionHandler:(void *)arg9 {
    r31 = r31 - 0x120;
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
    var_104 = arg6;
    r26 = self;
    var_E8 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [arg4 retain];
    var_D8 = [arg5 retain];
    r27 = [arg7 retain];
    var_D0 = [arg8 retain];
    r20 = [arg9 retain];
    [r26 firstImpressionTime];
    var_E0 = r20;
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r26 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r24 = [r0 retain];
    var_F0 = r23;
    r0 = [r23 mutableCopy];
    r28 = r0;
    var_100 = r24;
    [r0 setObject:r24 forKeyedSubscript:@"clickDelayTime"];
    var_F8 = r21;
    r21 = [[FBAdUtility getJSONStringFromObject:r28] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    [r21 release];
    if (r27 != 0x0) {
            r0 = [r27 stringValue];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"cardind"];
            [r21 release];
    }
    r25 = r27;
    r0 = var_D0;
    if (r0 != 0x0) {
            r0 = [r0 stringValue];
            r29 = r29;
            r21 = [r0 retain];
            [r19 setObject:r21 forKeyedSubscript:@"cardcnt"];
            [r21 release];
    }
    [r26 setupCommandProcessorIfNeeded];
    r23 = @class(FBAdUtility);
    [r26 firstImpressionTime];
    r0 = [r26 dataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 inlineClientToken];
    r29 = r29;
    r27 = [r0 retain];
    r23 = [r23 enforceAdClickguard:r27 withToken:r19 withExtraData:0x1];
    [r27 release];
    [r22 release];
    if (r23 != 0x0) {
            r20 = var_E8;
            r24 = var_E0;
            r23 = var_D8;
            r27 = r25;
            r21 = var_100;
            if (r24 != 0x0) {
                    (*(r24 + 0x10))(r24, 0x0);
            }
    }
    else {
            r0 = [FBAdUtility enforceTwoStepConfirmation];
            r27 = r25;
            if (r0 != 0x0) {
                    objc_initWeak(&stack[-152], r26);
                    [[r26 rootViewController] retain];
                    r0 = [r26 dataModel];
                    r0 = [r0 retain];
                    [[r0 inlineClientToken] retain];
                    r24 = var_E0;
                    var_A8 = [r24 retain];
                    objc_copyWeak(&var_C8 + 0x30, &stack[-152]);
                    r23 = var_D8;
                    var_A0 = [r23 retain];
                    [r25 showTwoStepConfirmationDialogFrom:r22 withToken:r26 withExtraData:r19 completionHandler:&var_C8];
                    [r26 release];
                    [r21 release];
                    [r22 release];
                    [var_A0 release];
                    objc_destroyWeak(&var_C8 + 0x30);
                    [var_A8 release];
                    objc_destroyWeak(&stack[-152]);
            }
            else {
                    r24 = var_E0;
                    r23 = var_D8;
                    [r26 processCommand:r23 withExtraData:r19 skipAppStore:var_104 completionHandler:r24];
            }
            r20 = var_E8;
            r21 = var_100;
    }
    var_70 = **___stack_chk_guard;
    [r19 release];
    [r28 release];
    [r21 release];
    [r24 release];
    [var_D0 release];
    [r27 release];
    [r23 release];
    [var_F8 release];
    [var_F0 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_destroyWeak((int64_t *)&self->_nativeView);
    objc_storeStrong((int64_t *)&self->_commandProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_rootViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)interstitialAdNativeView:(void *)arg2 didFailWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(interstitialAd:didFailWithError:), r3] != 0x0) {
            [r21 interstitialAd:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
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

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void *)rootViewController {
    r0 = self->_rootViewController;
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void *)commandProcessor {
    r0 = self->_commandProcessor;
    return r0;
}

-(void)setCommandProcessor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandProcessor, arg2);
    return;
}

-(double)firstImpressionTime {
    r0 = self;
    return r0;
}

-(void)setFirstImpressionTime:(double)arg2 {
    self->_firstImpressionTime = d0;
    return;
}

-(void *)nativeView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setNativeView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeView, arg2);
    return;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

@end