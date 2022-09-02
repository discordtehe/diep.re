@implementation MPConsentManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8538 != -0x1) {
            dispatch_once(0x1011d8538, &var_28);
    }
    r0 = *0x1011d8530;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onApplicationWillEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = *(r19 + 0x18);
            *(r19 + 0x18) = 0x0;
            [r0 release];
            *(r19 + 0x28) = 0x4072c00000000000;
            r0 = [r19 newNextUpdateTimer];
            r8 = *(r19 + 0x20);
            *(r19 + 0x20) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [*(self + 0x20) invalidate];
    r0 = *(self + 0x20);
    *(self + 0x20) = 0x0;
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(bool)canCollectPersonalInfo {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isGDPRApplicable] != -0x1) {
            if ([r19 isGDPRApplicable] == 0x1) {
                    r0 = [r19 currentStatus];
                    if (r0 == 0x4) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void *)currentLanguageCode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSLocale preferredLanguages];
    r0 = [r0 retain];
    r21 = [[r0 firstObject] retain];
    r19 = [[self removeRegionFromLanguageCode:r21] retain];
    [r21 release];
    r0 = [r0 release];
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r19;
            }
            else {
                    r0 = @"en";
            }
    }
    r20 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isDoNotTrack {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 boolForKey:@"com.mopub.mopub-ios-sdk.is.do.not.track"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isConsentNeeded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self shouldReacquireConsent] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            if ([r19 currentStatus] != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r0 = [r19 isGDPRApplicable];
                    if (r0 == 0x1) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(long long)rawConsentStatus {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 integerForKey:@"com.mopub.mopub-ios-sdk.consent.status"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(long long)rawIsGDPRApplicable {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 integerForKey:@"com.mopub.mopub-ios-sdk.gdpr.applies"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)shouldReacquireConsent {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 boolForKey:@"com.mopub.mopub-ios-sdk.should.reacquire.consent"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setShouldReacquireConsent:(bool)arg2 {
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
    r22 = [self isConsentNeeded];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setBool:arg2 forKey:@"com.mopub.mopub-ios-sdk.should.reacquire.consent"];
    [r0 release];
    if ((r22 & 0x1) == 0x0 && [r19 isConsentNeeded] != 0x0) {
            [r19 notifyConsentNeeded];
    }
    return;
}

-(void *)removeRegionFromLanguageCode:(void *)arg2 {
    r0 = [arg2 componentsSeparatedByString:@"-"];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)revokeConsent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self setShouldReacquireConsent:0x0];
    if ([r19 setCurrentStatus:0x1 reason:*0x100e7ec70 shouldBroadcast:0x1] != 0x0) {
            r22 = [[NSString stringWithFormat:@"Consent synchronization triggered by publisher revoking consent"] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
            [r19 synchronizeConsentWithCompletion:0x100e7fc48];
    }
    return;
}

-(void)grantConsent {
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
    r19 = self;
    r8 = @"not ";
    if ([self isWhitelisted] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"not ";
            }
            else {
                    r8 = @"";
            }
    }
    r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:r2] retain] level:0x1e];
    r29 = r29;
    [r0 retain];
    [r19 class];
    [MPLogging logEvent:r2 source:r3 fromClass:r4];
    [r27 release];
    [r26 release];
    if (([r19 isWhitelisted] & 0x1) == 0x0) {
            r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:r2] retain] level:0x1e];
            r29 = r29;
            [r0 retain];
            [r19 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r26 release];
            [r27 release];
    }
    [r19 setShouldReacquireConsent:0x0];
    if ([r19 isWhitelisted] != 0x0) {
            asm { cinc       x2, x8, ne };
    }
    r8 = 0x100e7ec58;
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x100e7ec60;
            }
            else {
                    r8 = 0x100e7ec58;
            }
    }
    if ([r19 setCurrentStatus:0x0 reason:*r8 shouldBroadcast:0x1] != 0x0) {
            [[MPLogEvent eventWithMessage:[[NSString stringWithFormat:r2] retain] level:0x14] retain];
            [r19 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r21 release];
            [r20 release];
            [r19 synchronizeConsentWithCompletion:0x100e7fc28];
    }
    return;
}

-(bool)isConsentDialogLoaded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self consentDialogViewController];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)loadConsentDialogWithCompletion:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r29 = &saved_fp;
    r21 = self;
    r0 = [arg2 retain];
    r0 = [r0 retain];
    r19 = r0;
    var_80 = r0;
    r0 = objc_retainBlock(&var_A8);
    r20 = r0;
    if ([r21 currentStatus] != 0x2) goto loc_100506c78;

loc_100506bf0:
    [r21 setConsentDialogViewController:0x0];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.consent" code:0x1 userInfo:r22];
    goto loc_100506d4c;

loc_100506d4c:
    r21 = [r0 retain];
    [r22 release];
    (*(r20 + 0x10))(r20, r21);
    [r21 release];
    goto loc_100506d74;

loc_100506d74:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [var_80 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100506c78:
    if ([r21 isGDPRApplicable] != 0x1) goto loc_100506cc8;

loc_100506c90:
    r0 = [r21 consentDialogViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*(r20 + 0x10))(r20, 0x0);
    }
    else {
            objc_initWeak(&stack[-192], r21);
            r22 = [[MPAdServerURLBuilder consentDialogURL] retain];
            [[MPURLRequest requestWithURL:r22] retain];
            [r22 release];
            r0 = [r20 retain];
            var_C0 = r0;
            objc_copyWeak(&var_E0 + 0x28, &stack[-192]);
            var_E8 = [r24 retain];
            r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r21 responseHandler:&var_E0 errorHandler:&var_108];
            [[r0 retain] release];
            [var_E8 release];
            objc_destroyWeak(&var_E0 + 0x28);
            [var_C0 release];
            [r21 release];
            objc_destroyWeak(&stack[-192]);
    }
    goto loc_100506d74;

loc_100506cc8:
    [r21 setConsentDialogViewController:0x0];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.consent" code:0x3 userInfo:r22];
    goto loc_100506d4c;
}

-(void)showConsentDialogFromViewController:(void *)arg2 didShow:(void *)arg3 didDismiss:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            r24 = [[r19 presentedViewController] retain];
            r0 = [r22 consentDialogViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r24 != r0) {
                    r0 = [MPLogEvent consentDialogShowAttempted];
                    r29 = r29;
                    r27 = [r0 retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r22 class]];
                    [r27 release];
                    if ([r22 isConsentDialogLoaded] != 0x0) {
                            r25 = [[r22 consentDialogViewController] retain];
                            [r19 presentViewController:r25 animated:0x1 completion:r20];
                            [r25 release];
                            [r22 setConsentDialogDidDismissCompletionBlock:r21];
                            r26 = [[MPLogEvent consentDialogShowSuccess] retain];
                            [MPLogging logEvent:r26 source:0x0 fromClass:[r22 class]];
                            r0 = r26;
                    }
                    else {
                            r25 = [[NSError noConsentDialogLoaded] retain];
                            r27 = [[MPLogEvent consentDialogShowFailedWithError:r25] retain];
                            [MPLogging logEvent:r27 source:0x0 fromClass:[r22 class]];
                            [r27 release];
                            r0 = r25;
                    }
            }
            else {
                    r24 = [[NSError consentDialogAlreadyShowing] retain];
                    r23 = [[MPLogEvent error:r24 message:0x0] retain];
                    [MPLogging logEvent:r23 source:0x0 fromClass:[r22 class]];
                    [r23 release];
                    r0 = r24;
            }
            [r0 release];
    }
    else {
            objc_initWeak(&stack[-104], r22);
            objc_copyWeak(&var_98 + 0x38, &stack[-104]);
            var_78 = [r19 retain];
            var_70 = [r20 retain];
            var_68 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_98);
            [var_68 release];
            [var_70 release];
            [var_78 release];
            objc_destroyWeak(&var_98 + 0x38);
            objc_destroyWeak(&stack[-104]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)consentDialogViewControllerWillDisappear:(void *)arg2 {
    [self setConsentDialogViewController:0x0];
    return;
}

-(void)consentDialogViewControllerDidReceiveConsentResponse:(bool)arg2 consentDialogViewController:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self setShouldReacquireConsent:0x0];
    if (arg2 != 0x0) {
            asm { csinc      x2, x8, xzr, ne };
    }
    r8 = 0x100e7ec50;
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x100e7ec68;
            }
            else {
                    r8 = 0x100e7ec50;
            }
    }
    if ([r19 setCurrentStatus:0x0 reason:*r8 shouldBroadcast:0x1] != 0x0) {
            r22 = [[NSString stringWithFormat:@"Consent synchronization triggered by user responding to consent dialog"] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
            [r19 synchronizeConsentWithCompletion:0x100e7fd58];
    }
    return;
}

-(void)consentDialogViewControllerDidDismiss:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            r0 = [r20 consentDialogDidDismissCompletionBlock];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 consentDialogDidDismissCompletionBlock];
                    r0 = [r0 retain];
                    (*(r0 + 0x10))();
                    [r21 release];
                    [r20 setConsentDialogDidDismissCompletionBlock:0x0];
            }
    }
    else {
            objc_initWeak(r29 - 0x28, r20);
            objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
            var_38 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [var_38 release];
            objc_destroyWeak(&var_58 + 0x28);
            objc_destroyWeak(r29 - 0x28);
    }
    [r19 release];
    return;
}

-(void)onApplicationWillEnterForeground:(void *)arg2 {
    [self checkForDoNotTrackAndTransition];
    [self checkForIfaChange];
    r22 = [[NSString stringWithFormat:@"Consent synchronization triggered by application foreground."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self synchronizeConsentWithCompletion:0x100e7fd78];
    return;
}

-(void)notifyConsentChangedTo:(long long)arg2 fromOldStatus:(long long)arg3 reason:(void *)arg4 canCollectPii:(bool)arg5 {
    r31 = r31 - 0xc0;
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
    var_48 = **___stack_chk_guard;
    r24 = [[MPLogEvent consentUpdatedTo:r2 from:r3 reason:arg4 canCollectPersonalInfo:r5] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[self class]];
    [r24 release];
    r23 = [[NSNumber numberWithInteger:arg2] retain];
    r24 = [[NSNumber numberWithInteger:arg3] retain];
    r22 = [[NSNumber numberWithBool:arg5] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3];
    r25 = [r0 retain];
    [r22 release];
    [r24 release];
    [r23 release];
    [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_A8);
    [self handlePersonalDataOnStateChangeTo:arg2 fromOldStatus:arg3];
    [r25 release];
    [r22 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyConsentNeeded {
    r21 = [[MPLogEvent consentShouldShowDialog] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    return;
}

-(void)synchronizeConsentWithCompletion:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r19 = [arg2 retain];
    r24 = [[MPLogEvent consentSyncAttempted] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[r20 class]];
    [r24 release];
    r0 = [r20 nextUpdateTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r20 setNextUpdateTimer:0x0];
    if ([r20 isGDPRApplicable] == -0x1) goto loc_100508028;

loc_100507f10:
    if (([MPIdentityProvider advertisingTrackingEnabled] & 0x1) != 0x0) goto loc_100507f48;

loc_100507f28:
    r0 = [r20 ifaForConsent];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1005082dc;

loc_100507f44:
    [r0 release];
    goto loc_100507f48;

loc_100507f48:
    r0 = [r20 adUnitIdUsedForConsent];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    if (r27 != 0x0) {
            r25 = @class(MPLogEvent);
            r23 = @class(MPLogging);
            r24 = [[r20 adUnitIdUsedForConsent] retain];
            r26 = [[NSString stringWithFormat:@"Ad unit used for GDPR sync: %@"] retain];
            r0 = [r25 eventWithMessage:r26 level:0x14];
            r29 = r29;
            r25 = [r0 retain];
            [r23 logEvent:r25 source:0x0 fromClass:[r20 class]];
            [r25 release];
    }
    else {
            r25 = @class(MPLogEvent);
            r23 = @class(MPLogging);
            r24 = [[NSString stringWithFormat:@"%@"] retain];
            r0 = [r25 eventWithMessage:r24 level:0x1e];
            r29 = r29;
            r26 = [r0 retain];
            [r23 logEvent:r26 source:0x0 fromClass:[r20 class]];
    }
    [r26 release];
    [r24 release];
    [[NSString stringFromConsentStatus:[r20 currentStatus]] retain];
    [[MPURLRequest requestWithURL:[[MPAdServerURLBuilder consentSynchronizationUrl] retain]] retain];
    objc_initWeak(r29 - 0x68, r20);
    objc_copyWeak(&var_A0 + 0x30, r29 - 0x68);
    r0 = [r23 retain];
    var_80 = r0;
    r0 = [r19 retain];
    var_78 = r0;
    objc_copyWeak(&var_D0 + 0x28, r29 - 0x68);
    var_B0 = [r26 retain];
    r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r22 responseHandler:&var_A0 errorHandler:&var_D0];
    [[r0 retain] release];
    [var_B0 release];
    objc_destroyWeak(&var_D0 + 0x28);
    [var_78 release];
    [var_80 release];
    objc_destroyWeak(&var_A0 + 0x30);
    objc_destroyWeak(r29 - 0x68);
    [r22 release];
    [r21 release];
    [r23 release];
    goto loc_1005082b0;

loc_1005082b0:
    [r19 release];
    return;

loc_1005082dc:
    if ([r20 rawIsGDPRApplicable] == 0x0) goto loc_100507f48;

loc_1005082f0:
    r0 = [MPLogEvent consentSyncCompletedWithMessage:@"Currently in a do not track state, consent synchronization will complete immediately"];
    goto loc_100508048;

loc_100508048:
    r24 = [r0 retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[r20 class]];
    [r24 release];
    (*(r19 + 0x10))(r19, 0x0);
    goto loc_1005082b0;

loc_100508028:
    r0 = [MPLogEvent consentSyncCompletedWithMessage:@"GDPR not applicable, consent synchronization will complete immediately"];
    goto loc_100508048;
}

-(void)didFailSynchronizationWithError:(void *)arg2 completion:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [self newNextUpdateTimer];
    [self setNextUpdateTimer:r22];
    [r22 release];
    r23 = [[MPLogEvent consentSyncFailedWithError:r19] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    (*(r20 + 0x10))(r20, r19);
    [r20 release];
    [r19 release];
    return;
}

-(void)didFinishSynchronizationWithData:(void *)arg2 synchronizedStatus:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:@"com.mopub.mopub-ios-sdk.last.synchronized.consent.status"];
    [r21 release];
    [r0 release];
    [r20 cacheAdUnitIdUsedForConsent];
    [r20 setIsForcedGDPRAppliesTransition:0x0];
    r0 = [NSJSONSerialization JSONObjectWithData:r22 options:0x0 error:&var_60];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r0 = [var_60 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100508578;

loc_100508508:
    r24 = [[MPLogEvent consentSyncFailedWithError:r22] retain];
    r4 = [r20 class];
    r2 = r24;
    [MPLogging logEvent:r2 source:0x0 fromClass:r4];
    [r24 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = r22;
    goto loc_1005085fc;

loc_1005085fc:
    (r8)(r0, r1, r2, 0x0, r4);
    goto loc_100508600;

loc_100508600:
    var_48 = **___stack_chk_guard;
    r23 = [r20 newNextUpdateTimer];
    [r20 setNextUpdateTimer:r23];
    [r23 release];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_100508578:
    if (([r20 updateConsentStateWithParameters:r21] & 0x1) == 0x0) goto loc_10050867c;

loc_100508590:
    r24 = [[MPLogEvent consentSyncCompletedWithMessage:0x0] retain];
    r4 = [r20 class];
    r2 = r24;
    [MPLogging logEvent:r2 source:0x0 fromClass:r4];
    [r24 release];
    r8 = *(r19 + 0x10);
    r0 = r19;
    r1 = 0x0;
    goto loc_1005085fc;

loc_10050867c:
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r23 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.consent" code:0x2 userInfo:r24] retain];
    [r24 release];
    r25 = [[MPLogEvent consentSyncFailedWithError:r23] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r20 class]];
    [r25 release];
    (*(r19 + 0x10))(r19, r23);
    [r23 release];
    goto loc_100508600;
}

-(void *)newNextUpdateTimer {
    [self syncFrequency];
    r0 = [MPTimer timerWithTimeInterval:self target:@selector(onNextUpdateFiredWithTimer) selector:0x1 repeats:r5];
    r0 = [r0 retain];
    [r0 scheduleNow];
    r0 = r0;
    return r0;
}

-(void)onNextUpdateFiredWithTimer {
    r22 = [[NSString stringWithFormat:@"Scheduled consent synchronization timer fired."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self synchronizeConsentWithCompletion:0x100e7fdf8];
    return;
}

-(bool)checkForWhitelistAllowedAndTransition {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self currentStatus] == 0x3 && [r19 isWhitelisted] != 0x0) {
            r0 = [r19 setCurrentStatus:0x4 reason:*0x100e7ec58 shouldBroadcast:0x0];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)checkForDoNotTrackAndTransition {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ASIdentifierManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    r0 = [r19 currentStatus];
    if ((r20 & 0x1) != 0x0 || r0 == 0x2) goto loc_100508a3c;

loc_100508a1c:
    r0 = r19;
    goto loc_100508a8c;

loc_100508a8c:
    r0 = [r0 setCurrentStatus:r2 reason:r3 shouldBroadcast:r4];
    return r0;

loc_100508a3c:
    r8 = &@selector(removeAllCachedFiles);
    if (r0 != 0x2) {
            r8 = &@selector(removeAllCachedFiles);
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    if (((r20 ^ 0x1 | r8) & 0x1) != 0x0) goto loc_100508aa0;

loc_100508a50:
    [r19 rawConsentStatus];
    r8 = 0x100e7ec80;
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x100e7ec88;
            }
            else {
                    r8 = 0x100e7ec80;
            }
    }
    r0 = r19;
    goto loc_100508a8c;

loc_100508aa0:
    r0 = 0x0;
    return r0;
}

-(void *)adUnitIdUsedForConsent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.consent.ad.unit.id"] retain];
    [r0 release];
    r0 = r20;
    if (r20 == 0x0) {
            r0 = *(r19 + 0x10);
    }
    r19 = [r0 retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)forceStatusShouldForceExplicitNo:(bool)arg2 shouldInvalidateConsent:(bool)arg3 shouldReacquireConsent:(bool)arg4 shouldForceGDPRApplicability:(bool)arg5 consentChangeReason:(void *)arg6 shouldBroadcast:(bool)arg7 {
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
    r22 = arg7;
    r21 = arg5;
    r23 = arg4;
    r24 = arg3;
    r19 = self;
    r20 = [arg6 retain];
    if (arg2 == 0x0) goto loc_1005098bc;

loc_100509894:
    [r19 setShouldReacquireConsent:0x0];
    r0 = r19;
    goto loc_1005098e4;

loc_1005098e4:
    [r0 setCurrentStatus:r2 reason:r3 shouldBroadcast:r4];
    goto loc_1005098f0;

loc_1005098f0:
    if (r21 != 0x0) {
            [r19 setForceIsGDPRApplicable:0x1];
    }
    [r20 release];
    return;

loc_1005098bc:
    if (r24 == 0x0) goto loc_100509924;

loc_1005098c0:
    [r19 setShouldReacquireConsent:0x0];
    r0 = r19;
    goto loc_1005098e4;

loc_100509924:
    if (r23 != 0x0) {
            [r19 setShouldReacquireConsent:0x1];
    }
    goto loc_1005098f0;
}

-(void)cacheAdUnitIdUsedForConsent {
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
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 stringForKey:@"com.mopub.mopub-ios-sdk.consent.ad.unit.id"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 == 0x0) {
            r21 = [[NSUserDefaults standardUserDefaults] retain];
            [[r19 adUnitIdUsedForConsent] retain];
            [r21 setObject:r2 forKey:r3];
            [r19 release];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)setAdUnitIdUsedForConsent:(void *)arg2 isKnownGood:(bool)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setAdUnitIdUsedForConsent:arg2];
    if (arg3 != 0x0) {
            [r19 cacheAdUnitIdUsedForConsent];
    }
    return;
}

-(bool)setCurrentStatus:(long long)arg2 reason:(void *)arg3 shouldBroadcast:(bool)arg4 {
    r31 = r31 - 0x90;
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
    r24 = arg4;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 currentStatus];
    if (r0 != r22) goto loc_100508bd8;

loc_100508b80:
    r21 = [[NSString stringWithFormat:@"Attempted to set consent status to same value"] retain];
    r0 = [MPLogEvent eventWithMessage:r21 level:0x1e];
    goto loc_100508c50;

loc_100508c50:
    r22 = [r0 retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    r20 = 0x0;
    goto loc_100509000;

loc_100509000:
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;

loc_100508bd8:
    r23 = r0;
    r0 = [MPIdentityProvider advertisingTrackingEnabled];
    if (r23 != 0x2 || (r0 & 0x1) != 0x0) goto loc_100508c8c;

loc_100508bfc:
    r21 = [[NSString stringWithFormat:@"Attempted to set consent status while in a do not track state"] retain];
    r0 = [MPLogEvent eventWithMessage:r21 level:0x1e];
    goto loc_100508c50;

loc_100508c8c:
    var_64 = [r20 isConsentNeeded];
    if (r22 == 0x4) {
            if (r23 != 0x4) {
                    [r20 storeIfa];
            }
    }
    r21 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    [r0 timeIntervalSince1970];
    [r28 release];
    [r21 setDouble:@"com.mopub.mopub-ios-sdk.last.changed.ms" forKey:r3];
    if (r22 != 0x2) {
            [r21 setObject:r2 forKey:r3];
            [r21 setInteger:r22 forKey:@"com.mopub.mopub-ios-sdk.consent.status"];
    }
    if (r22 == 0x4) {
            if (CPU_FLAGS & E) {
                    r28 = 0x1;
            }
    }
    r8 = &@selector(menu);
    objc_msgSend(r21, *(r8 + 0x198));
    if (r23 != 0x3) {
            r8 = &@selector(menu);
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    if (r22 != 0x3 && (r28 & r8) == 0x0) {
            if (r23 == 0x4) {
                    [r21 setObject:r2 forKey:r3];
                    objc_msgSend(r21, r27);
                    objc_msgSend(r21, r27);
            }
    }
    else {
            [[r20 iabVendorList] retain];
            [r21 setObject:r2 forKey:r3];
            [r28 release];
            [[r20 privacyPolicyVersion] retain];
            objc_msgSend(r21, r27);
            [r28 release];
            r0 = [r20 vendorListVersion];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r21, r27);
            [r28 release];
    }
    if (r24 != 0x0) {
            [r20 notifyConsentChangedTo:[r20 currentStatus] fromOldStatus:r23 reason:r19 canCollectPii:[r20 canCollectPersonalInfo]];
            if ((var_64 & 0x1) == 0x0 && [r20 isConsentNeeded] != 0x0) {
                    [r20 notifyConsentNeeded];
            }
    }
    r22 = [[NSString stringFromConsentStatus:r22] retain];
    r25 = [[NSString stringWithFormat:@"Consent state changed to %@: %@"] retain];
    r24 = [[MPLogEvent eventWithMessage:r25 level:0x14] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[r20 class]];
    [r24 release];
    [r25 release];
    r20 = 0x1;
    goto loc_100509000;
}

-(void)setAdUnitIdUsedForConsent:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)clearAdUnitIdUsedForConsent {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r20 release];
    r0 = *(self + 0x10);
    *(self + 0x10) = 0x0;
    [r0 release];
    return;
}

-(void)setAllowLegitimateInterest:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)allowLegitimateInterest {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(bool)isForcedGDPRAppliesTransition {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setIsForcedGDPRAppliesTransition:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void *)consentDialogViewController {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setConsentDialogViewController:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(bool)updateConsentStateWithParameters:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r19 = [arg2 retain];
    r25 = [[NSString stringWithFormat:@"Attempting to update consent with new state:\n%@"] retain];
    r27 = [[MPLogEvent eventWithMessage:r25 level:0x14] retain];
    var_58 = self;
    [MPLogging logEvent:r27 source:0x0 fromClass:[self class]];
    [r27 release];
    [r25 release];
    r20 = [[r19 objectForKeyedSubscript:*0x100e7f608] retain];
    r25 = [[r19 objectForKeyedSubscript:*0x100e7f610] retain];
    r21 = [[r19 objectForKeyedSubscript:*0x100e7f640] retain];
    r22 = [[r19 objectForKeyedSubscript:*0x100e7f618] retain];
    r23 = [[r19 objectForKeyedSubscript:*0x100e7f620] retain];
    r24 = [[r19 objectForKeyedSubscript:*0x100e7f628] retain];
    r0 = [r19 objectForKeyedSubscript:*0x100e7f630];
    r29 = &saved_fp;
    r27 = [r0 retain];
    var_60 = r20;
    var_70 = r24;
    var_68 = r22;
    if (r27 != 0x0 && r24 != 0x0 && r23 != 0x0 && r22 != 0x0 && r21 != 0x0 && r20 != 0x0 && r25 != 0x0) {
            var_78 = r25;
            var_80 = [var_58 currentStatus];
            var_C0 = [var_58 isGDPRApplicable];
            var_9C = [var_58 isConsentNeeded];
            r0 = [NSUserDefaults standardUserDefaults];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r24;
            r24 = r22;
            r22 = r0;
            r2 = [var_60 boolValue];
            [r22 setBool:r2 forKey:@"com.mopub.mopub-ios-sdk.is.whitelisted"];
            var_90 = r21;
            [r22 setObject:r2 forKey:@"com.mopub.mopub-ios-sdk.iab.vendor.list.hash"];
            [r22 setObject:r24 forKey:@"com.mopub.mopub-ios-sdk.vendor.list.url"];
            var_98 = r23;
            [r22 setObject:r23 forKey:@"com.mopub.mopub-ios-sdk.vendor.list.version"];
            [r22 setObject:r20 forKey:@"com.mopub.mopub-ios-sdk.privacy.policy.url"];
            r20 = r27;
            r24 = var_78;
            [r22 setObject:r27 forKey:@"com.mopub.mopub-ios-sdk.privacy.policy.version"];
            if ([var_58 rawIsGDPRApplicable] == 0x0) {
                    if ([r24 boolValue] == 0x0) {
                            asm { cneg       x2, x8, eq };
                    }
                    [r22 setInteger:r2 forKey:@"com.mopub.mopub-ios-sdk.gdpr.applies"];
            }
            r0 = [r19 objectForKeyedSubscript:*0x100e7f5f0];
            r0 = [r0 retain];
            var_88 = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:*0x100e7f5f8];
            r0 = [r0 retain];
            r26 = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:*0x100e7f600];
            r0 = [r0 retain];
            r27 = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:*0x100e7f5b8];
            r0 = [r0 retain];
            r24 = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:*0x100e7f5e0];
            r0 = [r0 retain];
            r2 = var_88;
            var_88 = r0;
            [var_58 forceStatusShouldForceExplicitNo:r2 shouldInvalidateConsent:r26 shouldReacquireConsent:r27 shouldForceGDPRApplicability:r24 consentChangeReason:r6 shouldBroadcast:0x0];
            r0 = [r19 objectForKeyedSubscript:*0x100e7f638];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            r23 = var_98;
            r27 = r20;
            if (r0 != 0x0) {
                    [r22 setObject:r24 forKey:@"com.mopub.mopub-ios-sdk.iab.vendor.list"];
                    r0 = [var_58 consentedPrivacyPolicyVersion];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    r2 = r27;
                    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                            r25 = @selector(isEqualToString:);
                            r0 = [var_58 consentedVendorListVersion];
                            r29 = r29;
                            r0 = [r0 retain];
                            r2 = r23;
                            r25 = objc_msgSend(r0, r25);
                            r27 = r20;
                            [r0 release];
                            [r26 release];
                            if (r25 != 0x0) {
                                    [r22 setObject:r24 forKey:@"com.mopub.mopub-ios-sdk.consented.iab.vendor.list"];
                            }
                    }
                    else {
                            [r26 release];
                    }
            }
            r0 = [r19 objectForKeyedSubscript:*0x100e7f648];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (r0 != 0x0) {
                    [r26 doubleValue];
                    if (d0 > 0x0) {
                            asm { fcsel      d0, d0, d1, gt };
                    }
                    [var_58 setSyncFrequency:r2];
            }
            r0 = [r19 objectForKeyedSubscript:*0x100e7f5e8];
            r0 = [r0 retain];
            r28 = r0;
            r25 = var_78;
            if (r0 != 0x0) {
                    [r22 setObject:r28 forKey:@"com.mopub.mopub-ios-sdk.extras"];
            }
            [var_58 checkForWhitelistAllowedAndTransition];
            r21 = @selector(currentStatus);
            if (var_80 != objc_msgSend(var_58, r21) || var_C0 != [var_58 isGDPRApplicable]) {
                    [var_58 notifyConsentChangedTo:objc_msgSend(var_58, r21) fromOldStatus:var_80 reason:var_88 canCollectPii:[var_58 canCollectPersonalInfo]];
            }
            if ((var_9C & 0x1) == 0x0 && [var_58 isConsentNeeded] != 0x0) {
                    [var_58 notifyConsentNeeded];
            }
            [r28 release];
            [r26 release];
            [r24 release];
            r20 = 0x1;
            r21 = var_90;
            r28 = var_88;
    }
    else {
            r22 = [[NSString stringWithFormat:r2] retain];
            r28 = [[MPLogEvent eventWithMessage:r2 level:r3] retain];
            r4 = [var_58 class];
            r25 = r25;
            r21 = r21;
            r23 = r23;
            [MPLogging logEvent:r28 source:0x0 fromClass:r4];
            r20 = 0x0;
    }
    [r28 release];
    [r22 release];
    [r27 release];
    [var_70 release];
    [r23 release];
    [var_68 release];
    [r21 release];
    [r25 release];
    [var_60 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)nextUpdateTimer {
    r0 = *(self + 0x20);
    return r0;
}

-(double)syncFrequency {
    r0 = self;
    return r0;
}

-(void)setNextUpdateTimer:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setSyncFrequency:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

-(void *)consentDialogDidDismissCompletionBlock {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setConsentDialogDidDismissCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void)setForceIsGDPRApplicable:(bool)arg2 {
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
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            asm { ccmp       w21, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r22 = [r19 isConsentNeeded];
            r24 = [r19 canCollectPersonalInfo];
            [r20 setBool:0x1 forKey:@"com.mopub.mopub-ios-sdk.gdpr.force.applies.true"];
            [r19 setIsForcedGDPRAppliesTransition:0x1];
            if ((r24 ^ [r19 canCollectPersonalInfo]) == 0x1) {
                    [r19 notifyConsentChangedTo:[r19 currentStatus] fromOldStatus:[r19 currentStatus] reason:0x0 canCollectPii:[r19 canCollectPersonalInfo]];
            }
            if ((r22 & 0x1) == 0x0 && [r19 isConsentNeeded] != 0x0) {
                    [r19 notifyConsentNeeded];
            }
            r0 = [r19 adUnitIdUsedForConsent];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r22 = [r19 rawIsGDPRApplicable];
                    [r21 release];
                    if (r22 == -0x1) {
                            r23 = [[NSString stringWithFormat:@"Consent synchronization triggered by forcing GDPR applicable"] retain];
                            r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
                            [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
                            [r22 release];
                            [r23 release];
                            [r19 synchronizeConsentWithCompletion:0x100e7fe18];
                    }
            }
            else {
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(bool)forceIsGDPRApplicable {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 boolForKey:@"com.mopub.mopub-ios-sdk.gdpr.force.applies.true"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)urlWithFormat:(void *)arg2 isoLanguageCode:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 removeRegionFromLanguageCode:arg3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSLocale ISOLanguageCodes];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 containsObject:r2];
            [r0 release];
            if ((r23 & 0x1) != 0x0) {
                    r0 = [r19 stringByReplacingOccurrencesOfString:@"%%LANGUAGE%%" withString:r20];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            r21 = [[NSURL URLWithString:r2] retain];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r22 = [[NSString stringWithFormat:@"%@ is not a valid ISO 639-1 language code"] retain];
                    r24 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
                    [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
                    [r24 release];
                    r21 = 0x0;
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)consentedIabVendorList {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.consented.iab.vendor.list"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)consentedPrivacyPolicyVersion {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.consented.privacy.policy.version"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)consentedVendorListVersion {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.consented.vendor.list.version"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)currentStatus {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (([self isDoNotTrack] & 0x1) != 0x0) {
            r0 = 0x2;
    }
    else {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r20 = [r0 integerForKey:@"com.mopub.mopub-ios-sdk.consent.status"];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void *)extras {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.extras"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)iabVendorList {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.iab.vendor.list"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)isGDPRApplicable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (([self forceIsGDPRApplicable] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r20 = [r0 integerForKey:@"com.mopub.mopub-ios-sdk.gdpr.applies"];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void *)ifaForConsent {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.ifa.for.consent"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)iabVendorListHash {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.iab.vendor.list.hash"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)lastChangedReason {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([self isDoNotTrack] != 0x0) {
            r19 = [*0x100e7ec78 retain];
    }
    else {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r19 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.last.changed.reason"] retain];
            [r0 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)lastSynchronizedStatus {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.last.synchronized.consent.status"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isWhitelisted {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 boolForKey:@"com.mopub.mopub-ios-sdk.is.whitelisted"];
    [r0 release];
    r0 = r20;
    return r0;
}

-(double)lastChangedTimestampInMilliseconds {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 doubleForKey:@"com.mopub.mopub-ios-sdk.last.changed.ms"];
    r0 = [r0 release];
    return r0;
}

-(void *)privacyPolicyVersion {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.privacy.policy.version"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)vendorListUrl {
    r20 = [[self currentLanguageCode] retain];
    r19 = [[self vendorListUrlWithISOLanguageCode:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)privacyPolicyUrlWithISOLanguageCode:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.privacy.policy.url"] retain];
    [r0 release];
    r19 = [[self urlWithFormat:r21 isoLanguageCode:r22] retain];
    [r22 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)privacyPolicyUrl {
    r20 = [[self currentLanguageCode] retain];
    r19 = [[self privacyPolicyUrlWithISOLanguageCode:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)vendorListVersion {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.vendor.list.version"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)vendorListUrlWithISOLanguageCode:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.vendor.list.url"] retain];
    [r0 release];
    r19 = [[self urlWithFormat:r21 isoLanguageCode:r22] retain];
    [r22 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)handlePersonalDataOnStateChangeTo:(long long)arg2 fromOldStatus:(long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = self;
    [self updateAppConversionTracking];
    if (arg2 != 0x4 && r20 == 0x4) {
            r22 = [[NSString stringWithFormat:@"Consent synchronization triggered by one last time"] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
            [r19 synchronizeConsentWithCompletion:&var_48];
    }
    return;
}

-(void)storeIfa {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MPIdentityProvider identifierFromASIdentifierManager:0x0];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 stringForKey:@"com.mopub.mopub-ios-sdk.ifa.for.consent"];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [NSUserDefaults standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 setObject:r2 forKey:r3];
                    [r20 release];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)removeIfa {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r19 release];
    return;
}

-(void)checkForIfaChange {
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
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.ifa.for.consent"] retain];
    [r0 release];
    r0 = [MPIdentityProvider identifierFromASIdentifierManager:0x0];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 currentStatus] == 0x4) {
            r0 = [r20 isEqualToString:r2];
            if (r22 != 0x0 && r0 == 0x0) {
                    r0 = @class(NSUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:@"com.mopub.mopub-ios-sdk.last.synchronized.consent.status"];
                    [r0 release];
                    r0 = @class(NSUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:@"com.mopub.mopub-ios-sdk.ifa.for.consent"];
                    [r0 release];
                    [r19 setCurrentStatus:0x0 reason:*0x100e7ec90 shouldBroadcast:0x1];
            }
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)updateAppConversionTracking {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MPConsentManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r20 != 0x0) {
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r19 = [[r0 stringForKey:@"com.mopub.conversion.appId"] retain];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 boolForKey:@"com.mopub.conversion"];
            [r0 release];
            if ((r21 & 0x1) == 0x0 && [r19 length] != 0x0) {
                    r0 = [MPAdConversionTracker sharedConversionTracker];
                    r0 = [r0 retain];
                    [r0 reportApplicationOpenForApplicationID:r19];
                    [r0 release];
            }
            [r19 release];
    }
    return;
}

@end