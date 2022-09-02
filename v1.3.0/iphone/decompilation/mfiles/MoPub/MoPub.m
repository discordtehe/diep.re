@implementation MoPub

+(void *)sharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d82a8 != -0x1) {
            dispatch_once(0x1011d82a8, 0x100e7e6a8);
    }
    r0 = *0x1011d82a0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 handlePersonalData];
    }
    r0 = r19;
    return r0;
}

-(void)setLocationUpdatesEnabled:(bool)arg2 {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 sharedMPGeolocationProvider];
    r0 = [r0 retain];
    [r0 setLocationUpdatesEnabled:arg2];
    [r0 release];
    [r20 release];
    return;
}

-(bool)locationUpdatesEnabled {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sharedMPGeolocationProvider];
    r0 = [r0 retain];
    r21 = [r0 locationUpdatesEnabled];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setFrequencyCappingIdUsageEnabled:(bool)arg2 {
    [MPIdentityProvider setFrequencyCappingIdUsageEnabled:arg2];
    return;
}

-(void)setForceWKWebView:(bool)arg2 {
    [MPWebView forceWKWebView:arg2];
    return;
}

-(bool)forceWKWebView {
    r0 = [MPWebView isForceWKWebView];
    return r0;
}

-(void)setLogLevel:(unsigned long long)arg2 {
    [MPLogging setConsoleLogLevel:arg2];
    return;
}

-(unsigned long long)logLevel {
    r0 = [MPLogging consoleLogLevel];
    return r0;
}

-(void)setClickthroughDisplayAgentType:(long long)arg2 {
    [MOPUBExperimentProvider setDisplayAgentType:arg2];
    return;
}

-(bool)frequencyCappingIdUsageEnabled {
    r0 = [MPIdentityProvider frequencyCappingIdUsageEnabled];
    return r0;
}

-(void *)version {
    return @"5.8.0";
}

-(void *)bundleIdentifier {
    return @"com.mopub.mopub";
}

-(void)initializeSdkWithConfiguration:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (sub_1009f787c(0x2, 0x9, 0x0, 0x0) != 0x0) {
            r0 = [r19 retain];
            r22 = r0;
            var_40 = r0;
            r0 = [r20 retain];
            var_38 = r0;
            if (*qword_1011d82b0 == -0x1) {
                    r23 = r0;
            }
            else {
                    dispatch_once(0x1011d82b0, &var_68);
                    r22 = var_40;
                    r23 = var_38;
            }
    }
    else {
            r22 = [[NSError sdkMinimumOsVersion:0x9] retain];
            r23 = [[MPLogEvent error:r22 message:0x0] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r21 class]];
    }
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setSdkWithConfiguration:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x150;
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
    r20 = [arg2 retain];
    var_138 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [MPLogging setConsoleLogLevel:[r20 loggingLevel]];
    r22 = [[r20 globalMediationSettings] retain];
    [r19 setGlobalMediationSettings:r22];
    [r22 release];
    r0 = dispatch_group_create();
    r23 = r0;
    dispatch_group_enter(r0);
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    var_130 = [[r0 stringForKey:@"com.mopub.mopub-ios-sdk.initialization.publisher.entered.ad.unit.id"] retain];
    [r0 release];
    r0 = [r20 adUnitIdForAppInitialization];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 isEqualToString:r2];
    [r0 release];
    if ((r27 & 0x1) == 0x0) {
            r0 = [MPConsentManager sharedManager];
            r0 = [r0 retain];
            [r0 clearAdUnitIdUsedForConsent];
            [r0 release];
            r25 = [[NSUserDefaults standardUserDefaults] retain];
            r0 = [r20 adUnitIdForAppInitialization];
            r29 = r29;
            [r0 retain];
            [r25 setObject:r2 forKey:r3];
            [r26 release];
            [r25 release];
    }
    r25 = [[r20 adUnitIdForAppInitialization] retain];
    r0 = @class(MPConsentManager);
    r24 = @selector(sharedManager);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    [r0 setAdUnitIdUsedForConsent:r25];
    [r0 release];
    [r25 release];
    r25 = [r20 allowLegitimateInterest];
    r0 = @class(MPConsentManager);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    [r0 setAllowLegitimateInterest:r25];
    [r0 release];
    r0 = @class(MPConsentManager);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    [r0 checkForDoNotTrackAndTransition];
    [r0 release];
    r25 = [objc_msgSend(@class(MPConsentManager), r24) retain];
    r0 = [r23 retain];
    var_70 = r0;
    [r25 synchronizeConsentWithCompletion:r29 - 0x90];
    [r25 release];
    [MPSessionTracker initializeNotificationObservers];
    dispatch_group_enter(r0);
    r24 = [objc_msgSend(@class(MPMediationManager), r24) retain];
    r25 = [[r20 additionalNetworks] retain];
    r26 = [[r20 mediatedNetworkConfigurations] retain];
    r27 = [[r20 moPubRequestOptions] retain];
    r0 = [r23 retain];
    [r24 initializeWithAdditionalProviders:r25 configurations:r26 requestOptions:r27 complete:&var_F0];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r24 = [dispatch_get_global_queue(0x2, 0x0) retain];
    [var_138 retain];
    dispatch_group_notify(r0, r24, &var_128);
    [r24 release];
    [var_138 release];
    [r0 release];
    _Block_object_dispose(&var_C0, 0x8);
    [0x0 release];
    [var_70 release];
    [r21 release];
    [var_130 release];
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)handlePersonalData {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 checkForIfaChange];
    [r0 release];
    return;
}

-(void)disableViewability:(long long)arg2 {
    [MPViewabilityTracker disableViewability:arg2];
    return;
}

-(void)setEngineInformation:(void *)arg2 {
    [MPAdServerURLBuilder setEngineInformation:arg2];
    return;
}

-(void *)globalMediationSettingsForClass:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = arg2;
    r0 = [self globalMediationSettings];
    r0 = [r0 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100488944;

loc_1004888cc:
    r22 = r0;
    r25 = *var_110;
    goto loc_1004888dc;

loc_1004888dc:
    r27 = 0x0;
    goto loc_1004888e4;

loc_1004888e4:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    r23 = @selector(isKindOfClass:);
    r24 = *(var_118 + r27 * 0x8);
    if ((objc_msgSend(r24, r23) & 0x1) != 0x0) goto loc_10048894c;

loc_100488918:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1004888e4;

loc_100488924:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1004888dc;

loc_100488944:
    r19 = 0x0;
    goto loc_100488958;

loc_100488958:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10048894c:
    r19 = [r24 retain];
    goto loc_100488958;
}

-(bool)isSdkInitialized {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsSdkInitialized:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)globalMediationSettings {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setGlobalMediationSettings:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void *)adapterConfigurationNamed:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = NSClassFromString(r19);
            if (r0 != 0x0) {
                    r20 = [[NSPredicate predicateWithFormat:@"self isKindOfClass: %@"] retain];
                    r0 = [MPMediationManager sharedManager];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 adapters];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 allValues];
                    r0 = [r0 retain];
                    r24 = [[r0 filteredArrayUsingPredicate:r20] retain];
                    [r0 release];
                    [r22 release];
                    [r21 release];
                    r21 = [[r24 firstObject] retain];
                    [r24 release];
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)availableAdapterClassNames {
    r0 = @class(MPMediationManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 adapters];
    r0 = [r0 retain];
    r19 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    [r0 release];
    [r21 release];
    r0 = @class(MPMediationManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adapters];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 allValues] retain];
    r0 = [r19 retain];
    [r22 enumerateObjectsUsingBlock:&var_58];
    [r22 release];
    [r21 release];
    [r20 release];
    [r0 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)clearCachedNetworks {
    r0 = [MPMediationManager sharedManager];
    r0 = [r0 retain];
    [r0 clearCache];
    [r19 release];
    return;
}

-(bool)shouldShowConsentDialog {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isConsentNeeded];
    [r0 release];
    r0 = r20;
    return r0;
}

-(long long)isGDPRApplicable {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isGDPRApplicable];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)canCollectPersonalInfo {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 canCollectPersonalInfo];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)forceGDPRApplicable {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 setForceIsGDPRApplicable:0x1];
    [r0 release];
    return;
}

-(void *)currentConsentPrivacyPolicyVersion {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 privacyPolicyVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)currentConsentStatus {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 currentStatus];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)currentConsentIabVendorListFormat {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 iabVendorList] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)currentConsentVendorListVersion {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 vendorListVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)previouslyConsentedPrivacyPolicyVersion {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 consentedPrivacyPolicyVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)previouslyConsentedIabVendorListFormat {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 consentedIabVendorList] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)previouslyConsentedVendorListVersion {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 consentedVendorListVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)loadConsentDialogWithCompletion:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 loadConsentDialogWithCompletion:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)showConsentDialogFromViewController:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    [self showConsentDialogFromViewController:r21 didShow:arg3 didDismiss:0x0];
    [r21 release];
    return;
}

-(bool)allowLegitimateInterest {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 allowLegitimateInterest];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)showConsentDialogFromViewController:(void *)arg2 didShow:(void *)arg3 didDismiss:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 showConsentDialogFromViewController:r21 didShow:r20 didDismiss:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)setAllowLegitimateInterest:(bool)arg2 {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 setAllowLegitimateInterest:arg2];
    [r0 release];
    return;
}

-(void)revokeConsent {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 revokeConsent];
    [r0 release];
    return;
}

-(void)grantConsent {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    [r0 grantConsent];
    [r0 release];
    return;
}

-(bool)isConsentDialogReady {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 isConsentDialogLoaded];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)currentConsentPrivacyPolicyUrl {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 privacyPolicyUrl] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)currentConsentPrivacyPolicyUrlWithISOLanguageCode:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 privacyPolicyUrlWithISOLanguageCode:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)currentConsentVendorListUrl {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 vendorListUrl] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)currentConsentVendorListUrlWithISOLanguageCode:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 vendorListUrlWithISOLanguageCode:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)openURL:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
    r20 = [r0 retain];
    [self openURL:r22 options:r20 completion:0x0];
    [r22 release];
    [r20 release];
    return;
}

+(void)openURL:(void *)arg2 options:(void *)arg3 completion:(void *)arg4 {
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
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    if (sub_1009f787c(0x2, 0xa, 0x0, 0x0) != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r22 = r0;
            [r0 openURL:r20 options:r19 completionHandler:r21];
            [r21 release];
    }
    else {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [r0 openURL:r20];
            [r20 release];
            (*(r21 + 0x10))(r21, r23);
            r20 = r21;
    }
    [r20 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)sendImpressionDelegateAndNotificationFromAd:(void *)arg2 adUnitID:(void *)arg3 impressionData:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self sendImpressionNotificationFromAd:r19 adUnitID:r3 impressionData:r20];
    [r21 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(mopubAd:didTrackImpressionWithImpressionData:), r21];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 mopubAd:r19 didTrackImpressionWithImpressionData:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)sendImpressionNotificationFromAd:(void *)arg2 adUnitID:(void *)arg3 impressionData:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[NSDictionary dictionaryWithObjectsAndKeys:r20] retain];
    [r20 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:*0x100e7fe58 object:r21 userInfo:r19];
    [r21 release];
    [r0 release];
    [r19 release];
    return;
}

@end