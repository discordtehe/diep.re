@implementation MPAdServerURLBuilder

+(void *)engineInformation {
    r0 = *0x1011d8330;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setEngineInformation:(void *)arg2 {
    objc_storeStrong(0x1011d8330, arg2);
    return;
}

+(void *)URLWithEndpointPath:(void *)arg2 postData:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[MPAPIEndpoints baseURLComponentsWithPath:r20] retain];
    [r20 release];
    r20 = [[MPURL URLWithComponents:r21 postData:r19] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)baseParametersDictionaryWithIDFAUsingIDFAForConsent:(bool)arg2 withIDParameter:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg3 retain];
    r21 = [[MPConsentManager sharedManager] retain];
    r0 = [self baseParametersDictionaryWithIDParameter:r23];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r23 release];
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @class(MPIdentityProvider);
            }
            else {
                    r0 = r21;
            }
    }
    r8 = &@selector(ifaForConsent);
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(identifier);
            }
            else {
                    r8 = &@selector(ifaForConsent);
            }
    }
    r19 = [objc_msgSend(r0, *r8) retain];
    [r20 setObject:r19 forKeyedSubscript:*0x100e7f478];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)applicationVersion {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8340 != -0x1) {
            dispatch_once(0x1011d8340, 0x100e7e908);
    }
    r0 = *0x1011d8338;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)engineNameValue {
    r0 = [self engineInformation];
    r0 = [r0 retain];
    r20 = [[r0 name] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)baseParametersDictionaryWithIDParameter:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    r19 = [[MPConsentManager sharedManager] retain];
    r0 = [NSMutableDictionary dictionary];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setObject:r23 forKeyedSubscript:*0x100e7f460];
    [r23 release];
    [r20 setObject:@"8" forKeyedSubscript:*0x100e7f468];
    [r20 setObject:@"5.8.0" forKeyedSubscript:*0x100e7f498];
    r23 = [[self engineNameValue] retain];
    [r20 setObject:r23 forKeyedSubscript:*0x100e7f4a0];
    [r23 release];
    r23 = [[self engineVersionValue] retain];
    [r20 setObject:r23 forKeyedSubscript:*0x100e7f4a8];
    [r23 release];
    r0 = [self applicationVersion];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r20 setObject:r22 forKeyedSubscript:*0x100e7f470];
    [r22 release];
    if ([r19 isGDPRApplicable] != 0x0) {
            if ([r19 isGDPRApplicable] > 0x0) {
                    if (!CPU_FLAGS & G) {
                            r2 = @"0";
                    }
                    else {
                            r2 = @"1";
                    }
            }
            [r20 setObject:r2 forKeyedSubscript:*0x100e7f598];
    }
    if ([r19 forceIsGDPRApplicable] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r20 setObject:r2 forKeyedSubscript:*0x100e7f5b8];
    r0 = [NSString stringFromConsentStatus:[r19 currentStatus]];
    r29 = r29;
    r22 = [r0 retain];
    [r20 setObject:r22 forKeyedSubscript:*0x100e7f5a0];
    [r22 release];
    if ([MPIdentityProvider advertisingTrackingEnabled] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"1";
            }
            else {
                    r2 = 0x0;
            }
    }
    [r20 setObject:r2 forKeyedSubscript:*0x100e7f490];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = [[r0 bundleIdentifier] retain];
    [r20 setObject:r23 forKeyedSubscript:*0x100e7f488];
    [r23 release];
    [r0 release];
    r22 = [[MPIdentityProvider unobfuscatedMoPubIdentifier] retain];
    [r20 setObject:r22 forKeyedSubscript:*0x100e7f480];
    [r22 release];
    r22 = [[r19 consentedPrivacyPolicyVersion] retain];
    [r20 setObject:r22 forKeyedSubscript:*0x100e7f5b0];
    [r22 release];
    r22 = [[r19 consentedVendorListVersion] retain];
    [r20 setObject:r22 forKeyedSubscript:*0x100e7f5a8];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)engineVersionValue {
    r0 = [self engineInformation];
    r0 = [r0 retain];
    r20 = [[r0 version] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)URLWithAdUnitID:(void *)arg2 targeting:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self URLWithAdUnitID:r21 targeting:arg3 desiredAssets:0x0 viewability:0x1] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)URLWithAdUnitID:(void *)arg2 targeting:(void *)arg3 desiredAssets:(void *)arg4 viewability:(bool)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [[self URLWithAdUnitID:r23 targeting:r21 desiredAssets:arg4 adSequence:0xffffffffffffffff viewability:arg5] retain];
    [r21 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)orientationValue {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = [r19 release];
    if (d8 > d9) {
            if (!CPU_FLAGS & G) {
                    r0 = @"p";
            }
            else {
                    r0 = @"l";
            }
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)timeZoneValue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (*0x1011d8348 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r8 = *0x1011d8348;
            *0x1011d8348 = r0;
            [r8 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [*0x1011d8348 setDateFormat:@"Z"];
    r19 = [[NSDate date] retain];
    r20 = [[*0x1011d8348 stringFromDate:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)scaleFactorValue {
    sub_1004aef94();
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)isMRAIDEnabledSDKValue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 isMraidJavascriptAvailable] != 0x0 && NSClassFromString(@"MPMRAIDBannerCustomEvent") != 0x0) {
            if (NSClassFromString(@"MPMRAIDInterstitialCustomEvent") == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r20 = @"1";
                    }
                    else {
                            r20 = 0x0;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = objc_retainAutoreleaseReturnValue(r20);
    return r0;
}

+(void *)carrierNameValue {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sharedCarrierInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)connectionTypeValue {
    r0 = [MPReachabilityManager sharedManager];
    r0 = [r0 retain];
    [r0 currentStatus];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)isoCountryCodeValue {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sharedCarrierInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)mobileCountryCodeValue {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sharedCarrierInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)mobileNetworkCodeValue {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 sharedCarrierInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)deviceNameValue {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 mp_hardwareDeviceName] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)adSequenceValue:(long long)arg2 {
    r2 = arg2;
    if ((r2 & 0xffffffff80000000) == 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)desiredAdAssetsValue:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 componentsJoinedByString:@","];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 length];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r19;
            }
            else {
                    r0 = 0x0;
            }
    }
    r20 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)physicalScreenResolutionWidthValue {
    sub_1004aef60();
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)creativeSafeWidthValue:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_1004aef94();
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)physicalScreenResolutionHeightValue {
    sub_1004aef60();
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)URLWithAdUnitID:(void *)arg2 targeting:(void *)arg3 desiredAssets:(void *)arg4 adSequence:(long long)arg5 viewability:(bool)arg6 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r26 = [arg4 retain];
    r20 = [[self baseParametersDictionaryWithIDFAUsingIDFAForConsent:0x0 withIDParameter:r22] retain];
    r27 = [[self orientationValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4b0];
    [r27 release];
    r27 = [[self scaleFactorValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4b8];
    [r27 release];
    r27 = [[self timeZoneValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4c0];
    [r27 release];
    r27 = [[self isMRAIDEnabledSDKValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4c8];
    [r27 release];
    r27 = [[self connectionTypeValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4d0];
    [r27 release];
    r27 = [[self carrierNameValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4d8];
    [r27 release];
    r27 = [[self isoCountryCodeValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4e0];
    [r27 release];
    r27 = [[self mobileNetworkCodeValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4e8];
    [r27 release];
    r27 = [[self mobileCountryCodeValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4f0];
    [r27 release];
    r27 = [[self deviceNameValue] retain];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f4f8];
    [r27 release];
    r27 = [[self desiredAdAssetsValue:r26] retain];
    [r26 release];
    [r20 setObject:r27 forKeyedSubscript:*0x100e7f500];
    [r27 release];
    r25 = [[self adSequenceValue:arg5] retain];
    [r20 setObject:r25 forKeyedSubscript:*0x100e7f508];
    [r25 release];
    r25 = [[self physicalScreenResolutionWidthValue] retain];
    [r20 setObject:r25 forKeyedSubscript:*0x100e7f510];
    [r25 release];
    r25 = [[self physicalScreenResolutionHeightValue] retain];
    [r20 setObject:r25 forKeyedSubscript:*0x100e7f518];
    [r25 release];
    [r21 creativeSafeSize];
    r26 = [[self creativeSafeWidthValue:r25] retain];
    [r20 setObject:r26 forKeyedSubscript:*0x100e7f578];
    [r26 release];
    [r21 creativeSafeSize];
    r25 = [[self creativeSafeHeightValue:r26] retain];
    [r20 setObject:r25 forKeyedSubscript:*0x100e7f580];
    [r25 release];
    r25 = [[self appTransportSecurityStatusValue] retain];
    [r20 setObject:r25 forKeyedSubscript:*0x100e7f520];
    [r25 release];
    r25 = [[r21 keywords] retain];
    r26 = [[self keywordsValue:r25] retain];
    [r20 setObject:r26 forKeyedSubscript:*0x100e7f530];
    [r26 release];
    [r25 release];
    r25 = [[r21 userDataKeywords] retain];
    r26 = [[self userDataKeywordsValue:r25] retain];
    [r20 setObject:r26 forKeyedSubscript:*0x100e7f538];
    [r26 release];
    [r25 release];
    r24 = [[self viewabilityStatusValue:arg6] retain];
    [r20 setObject:r24 forKeyedSubscript:*0x100e7f528];
    [r24 release];
    r24 = [[self advancedBiddingValue] retain];
    [r20 setObject:r24 forKeyedSubscript:*0x100e7f540];
    [r24 release];
    r24 = [[self backoffMillisecondsValueForAdUnitID:r22] retain];
    [r20 setObject:r24 forKeyedSubscript:*0x100e7f568];
    [r24 release];
    r0 = [MPRateLimitManager sharedInstance];
    r0 = [r0 retain];
    r25 = [[r0 lastRateLimitReasonForAdUnitId:r22] retain];
    [r22 release];
    [r20 setObject:r25 forKeyedSubscript:*0x100e7f570];
    [r25 release];
    [r0 release];
    r22 = [[r21 location] retain];
    [r21 release];
    r21 = [[self locationInformationDictionary:r22] retain];
    [r20 addEntriesFromDictionary:r21];
    [r21 release];
    [r22 release];
    r19 = [[self URLWithEndpointPath:@"/m/ad" postData:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)creativeSafeHeightValue:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_1004aef94();
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)keywordsValue:(void *)arg2 {
    r0 = [arg2 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)appTransportSecurityStatusValue {
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r20 = [[NSNumber numberWithUnsignedInteger:[r0 appTransportSecuritySettings]] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)userDataKeywordsValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r21 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)viewabilityStatusValue:(bool)arg2 {
    if (arg2 != 0x0) {
            [MPViewabilityTracker enabledViewabilityVendors];
            r0 = [NSString stringWithFormat:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    else {
            r0 = [0x0 autorelease];
    }
    return r0;
}

+(void *)backoffMillisecondsValueForAdUnitID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [MPRateLimitManager sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = [r0 lastRateLimitMillisecondsForAdUnitId:r21];
    [r21 release];
    [r0 release];
    if (r19 != 0x0) {
            r19 = [[NSNumber numberWithUnsignedInteger:r19] retain];
            r20 = [[NSString stringWithFormat:r2] retain];
            [r19 release];
            r0 = [r20 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)advancedBiddingValue {
    r31 = r31 - 0x60;
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
    r0 = [MPMediationManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 advancedBiddingTokens];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_48];
            r29 = r29;
            r20 = [r0 retain];
            r22 = [var_48 retain];
            if (r20 != 0x0) {
                    r21 = [objc_alloc() initWithData:r20 encoding:0x4];
                    [r22 release];
            }
            else {
                    r23 = [[NSError serializationOfJson:r19 failedWithError:r22] retain];
                    r25 = [[MPLogEvent error:r23 message:0x0] retain];
                    [MPLogging logEvent:r25 source:0x0 fromClass:[r21 class]];
                    [r22 release];
                    [r25 release];
                    [r23 release];
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)adapterInformation {
    r0 = [MPMediationManager sharedManager];
    r0 = [r0 retain];
    r20 = [[r0 adRequestPayload] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)openEndpointURLWithIDParameter:(void *)arg2 isSessionTracking:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self baseParametersDictionaryWithIDFAUsingIDFAForConsent:0x0 withIDParameter:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (arg3 != 0x0) {
            [r20 setObject:@"1" forKeyedSubscript:*0x100e7f590];
    }
    r19 = [[r19 URLWithEndpointPath:@"/m/open" postData:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)conversionTrackingURLForAppID:(void *)arg2 {
    r0 = [self openEndpointURLWithIDParameter:arg2 isSessionTracking:0x0];
    return r0;
}

+(void *)sessionTrackingURL {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 bundleIdentifier] retain];
    [r0 release];
    r19 = [[self openEndpointURLWithIDParameter:r21 isSessionTracking:0x1] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)locationInformationDictionary:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [MPConsentManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r19 != 0x0 && r20 != 0x0) {
            r20 = [[NSMutableDictionary dictionary] retain];
            r21 = [r19 retain];
            r0 = [MPCoreInstanceProvider sharedProvider];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 sharedMPGeolocationProvider];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 lastKnownLocation];
            r29 = r29;
            r26 = [r0 retain];
            [r24 release];
            [r23 release];
            if (r26 != 0x0) {
                    r23 = [r26 retain];
                    [r21 release];
                    r21 = r23;
            }
            [r21 horizontalAccuracy];
            if (d0 >= 0x0) {
                    var_70 = r26;
                    r23 = @class(NSNumber);
                    [r21 coordinate];
                    [[r23 numberWithDouble:r2] retain];
                    r23 = @class(NSNumber);
                    [r21 coordinate];
                    [[r23 numberWithDouble:r2] retain];
                    r0 = [NSString stringWithFormat:@"%@,%@"];
                    r29 = r29;
                    r2 = [r0 retain];
                    [r20 setObject:r2 forKeyedSubscript:r3];
                    [r23 release];
                    [r27 release];
                    [r28 release];
                    objc_msgSend(r21, r25);
                    if (d0 != 0x0) {
                            [r21 horizontalAccuracy];
                            [[NSNumber numberWithDouble:r2] retain];
                            r0 = [NSString stringWithFormat:@"%@"];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r24);
                            [r23 release];
                            [r25 release];
                    }
                    r26 = var_70;
                    if (r21 == r26) {
                            [r20 setObject:r2 forKeyedSubscript:r3];
                    }
                    r23 = [[NSDate date] retain];
                    r25 = [[r21 timestamp] retain];
                    [r23 timeIntervalSinceDate:r25];
                    [r25 release];
                    [r23 release];
                    [[NSString stringWithFormat:@"%.0f"] retain];
                    [r20 setObject:r2 forKeyedSubscript:r3];
                    [r23 release];
            }
            [r26 release];
            [r21 release];
    }
    else {
            r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)consentDialogURL {
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r21 = [[r0 adUnitIdUsedForConsent] retain];
    r22 = [[self baseParametersDictionaryWithIDParameter:r21] retain];
    [r21 release];
    r21 = [[r0 currentLanguageCode] retain];
    [r22 setObject:r21 forKeyedSubscript:*0x100e7f650];
    [r21 release];
    r20 = [[self URLWithEndpointPath:@"/m/gdpr_consent_dialog" postData:r22] retain];
    [r22 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)nativePositionUrlForAdUnitId:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r20 = [[r0 baseParametersDictionaryWithIDFAUsingIDFAForConsent:0x0 withIDParameter:r2] retain];
            r19 = [[r0 URLWithEndpointPath:@"/m/pos" postData:r20] retain];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)consentSynchronizationUrl {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [MPConsentManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 adUnitIdUsedForConsent] retain];
    r21 = [[r20 baseParametersDictionaryWithIDFAUsingIDFAForConsent:0x1 withIDParameter:r22] retain];
    [r22 release];
    r23 = [[r19 lastSynchronizedStatus] retain];
    [r21 setObject:r23 forKeyedSubscript:*0x100e7f5c8];
    [r23 release];
    r0 = [r19 lastChangedReason];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r21 setObject:r23 forKeyedSubscript:*0x100e7f5e0];
    [r23 release];
    [r19 lastChangedTimestampInMilliseconds];
    if (d0 > 0x0) {
            [r19 lastChangedTimestampInMilliseconds];
            asm { fcvtzu     x8, d0 };
            r0 = [r24 stringWithFormat:r2];
            r29 = r29;
            r2 = [r0 retain];
            objc_msgSend(r21, r22);
            [r23 release];
    }
    else {
            [r21 setObject:0x0 forKeyedSubscript:*0x100e7f5c0];
    }
    r23 = [[r19 iabVendorListHash] retain];
    [r21 setObject:r23 forKeyedSubscript:*0x100e7f5d0];
    [r23 release];
    r0 = [r19 extras];
    r29 = r29;
    r23 = [r0 retain];
    [r21 setObject:r23 forKeyedSubscript:*0x100e7f5e8];
    [r23 release];
    if ([r19 isForcedGDPRAppliesTransition] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = 0x0;
            }
            else {
                    r2 = @"1";
            }
    }
    [r21 setObject:r2 forKeyedSubscript:*0x100e7f5d8];
    r20 = [[r20 URLWithEndpointPath:@"/m/gdpr_sync" postData:r21] retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)rewardedCompletionUrl:(void *)arg2 withCustomerId:(void *)arg3 rewardType:(void *)arg4 rewardAmount:(void *)arg5 customEventName:(void *)arg6 additionalData:(void *)arg7 {
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
    r25 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    r23 = [arg7 retain];
    r24 = [[NSURLComponents componentsWithString:r25] retain];
    [r25 release];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    [r0 setObject:@"1" forKeyedSubscript:*0x100e7f468];
    [r25 setObject:@"5.8.0" forKeyedSubscript:*0x100e7f498];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            [r25 setObject:r19 forKeyedSubscript:*0x100e7f660];
    }
    if (r20 != 0x0) {
            r0 = [r20 length];
            if (r21 != 0x0 && r0 != 0x0) {
                    [r25 setObject:r20 forKeyedSubscript:*0x100e7f668];
                    [r21 intValue];
                    r0 = [NSString stringWithFormat:@"%i"];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r25 setObject:r27 forKeyedSubscript:*0x100e7f670];
                    [r27 release];
            }
    }
    if (r22 != 0x0) {
            [r25 setObject:r22 forKeyedSubscript:*0x100e7f678];
    }
    if (r23 != 0x0) {
            [r25 setObject:r23 forKeyedSubscript:*0x100e7f680];
    }
    r26 = [[MPURL URLWithComponents:r24 postData:r25] retain];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r26 autorelease];
    return r0;
}

@end