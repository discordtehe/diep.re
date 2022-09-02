@implementation FBAdSettings

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdSettings");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)testDeviceHash {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eab3a0);
    if (*qword_1011ddba0 != -0x1) {
            dispatch_once(0x1011ddba0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddba8);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)testDevices {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddb90 != -0x1) {
            dispatch_once(0x1011ddb90, 0x100eab360);
    }
    r0 = *0x1011ddb98;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)persistTestDevices {
    r0 = [self testDevices];
    r0 = [r0 retain];
    r20 = [[r0 allObjects] retain];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r20 forKey:@"fb_an_test_devices"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    [r20 release];
    return;
}

+(void)addTestDevice:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 testDevices];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 containsObject:r2];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            r0 = [r20 testDevices];
            r0 = [r0 retain];
            [r0 addObject:r19];
            [r0 release];
            [FBAdSettings persistTestDevices];
    }
    [r19 release];
    return;
}

+(void)addTestDevices:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = [[NSSet setWithArray:r19] retain];
    r0 = [r20 testDevices];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [r22 isSubsetOfSet:r23];
    [r23 release];
    [r22 release];
    if ((r24 & 0x1) == 0x0) {
            r0 = [r20 testDevices];
            r0 = [r0 retain];
            [r0 addObjectsFromArray:r19];
            [r0 release];
            [FBAdSettings persistTestDevices];
    }
    [r19 release];
    return;
}

+(void)clearTestDevices {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self testDevices];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 testDevices];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            [FBAdSettings persistTestDevices];
    }
    return;
}

+(void)clearTestDevice:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 testDevices];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 containsObject:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r20 testDevices];
            r0 = [r0 retain];
            [r0 removeObject:r19];
            [r0 release];
            [FBAdSettings persistTestDevices];
    }
    [r19 release];
    return;
}

+(bool)isChildDirected {
    return *(int8_t *)0x1011ddb89;
}

+(void)setIsChildDirected:(bool)arg2 {
    *(int8_t *)0x1011ddb89 = arg2;
    return;
}

+(bool)isTestMode {
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
    if (*(int8_t *)0x1011ddb8a != 0x1) {
            r23 = [[r19 testDevices] retain];
            r0 = [r19 testDeviceHash];
            r29 = r29;
            r24 = [r0 retain];
            r25 = [r23 containsObject:r2];
            [r24 release];
            [r23 release];
            if ((r25 & 0x1) == 0x0) {
                    r23 = @class(FBAdLogger);
                    r24 = [[r19 testDeviceHash] retain];
                    [r23 logAtLevel:0x1 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdSettings.m" lineNumber:0x94 format:@"When testing your app with Facebook's ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: [FBAdSettings addTestDevice:@\"%@\"]"];
                    [r24 release];
                    r23 = @class(FBAdLogger);
                    r0 = [r19 testDeviceHash];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 logAtLevel:0x1 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdSettings.m" lineNumber:0x95 format:@"Test mode device hash: %@"];
                    [r24 release];
                    *(int8_t *)0x1011ddb8a = 0x1;
            }
    }
    r22 = @selector(containsObject:);
    r20 = [[r19 testDevices] retain];
    r19 = [[r19 testDeviceHash] retain];
    r21 = objc_msgSend(r20, r22);
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(bool)isBackgroundVideoPlaybackAllowed {
    return *(int8_t *)0x1011ddb88;
}

+(void)setBackgroundVideoPlaybackAllowed:(bool)arg2 {
    *(int8_t *)0x1011ddb88 = arg2;
    return;
}

+(void)setMediationService:(void *)arg2 {
    objc_storeStrong(0x1011c7590, arg2);
    return;
}

+(void *)getMediationService {
    r0 = *0x1011c7590;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setUrlPrefix:(void *)arg2 {
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
    r20 = arg2;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            objc_storeStrong(0x1011ddb78, r20);
            r0 = @class(FBAdURLSession);
            r0 = [r0 sharedSession];
            r0 = [r0 retain];
            [r0 setSSLValidationDisabled:0x1];
            [r0 release];
            r0 = @class(FBAdURLSession);
            r0 = [r0 sharedSession];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 setCustomRequestTimeout:0x28];
    }
    else {
            r0 = *0x1011ddb78;
            *0x1011ddb78 = 0x0;
            [r0 release];
            r0 = @class(FBAdURLSession);
            r0 = [r0 sharedSession];
            r0 = [r0 retain];
            [r0 setSSLValidationDisabled:0x0];
            [r0 release];
            r0 = @class(FBAdURLSession);
            r0 = [r0 sharedSession];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 clearCustomRequestTimeout];
    }
    [r20 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r20 release];
    [r19 release];
    return;
}

+(void *)urlPrefix {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddb80 != -0x1) {
            dispatch_once(0x1011ddb80, 0x100eab320);
    }
    r0 = *0x1011ddb78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)deliveryEndpointURL {
    r20 = [[FBAdSettings baseURL] retain];
    r19 = [[NSURL URLWithString:@"network_ads_common/" relativeToURL:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)webviewBaseURL {
    r0 = [FBAdSettings baseURL];
    return r0;
}

+(void *)baseURLWithDefault:(void *)arg2 withFormat:(void *)arg3 {
    r31 = r31 - 0x50;
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
    r0 = [FBAdSettings urlPrefix];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [FBAdSettings urlPrefix];
            r0 = [r0 retain];
            r22 = [[NSString stringWithFormat:r20] retain];
            [r0 release];
            r21 = [[NSURL URLWithString:r2] retain];
            [r22 release];
    }
    else {
            r21 = [[NSURL URLWithString:r2] retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)baseEventURL {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r19 = [[r0 loggingEndpointPrefix] retain];
    [r0 release];
    r22 = [[@"https://www.facebook.com" stringByReplacingOccurrencesOfString:@"www" withString:r19] retain];
    r20 = [[@"https://www.%@.facebook.com" stringByReplacingOccurrencesOfString:@"www" withString:r19] retain];
    r23 = [[FBAdSettings baseURLWithDefault:r22 withFormat:r20] retain];
    r21 = [[NSURL URLWithString:@"adnw_logging/" relativeToURL:r23] retain];
    [r23 release];
    [r20 release];
    [r22 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)baseBiddingURL {
    r20 = [[FBAdSettings baseURLWithDefault:@"https://an.facebook.com" withFormat:@"https://an.%@.facebook.com"] retain];
    r19 = [[NSURL URLWithString:@"placementbid.ortb/" relativeToURL:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)baseURL {
    r0 = [self baseURLWithDefault:@"https://graph.facebook.com" withFormat:@"https://graph.%@.facebook.com"];
    return r0;
}

+(void *)synchronizationEndpointURL {
    r20 = [[FBAdSettings baseURLWithDefault:@"https://www.facebook.com" withFormat:@"https://www.%@.facebook.com"] retain];
    r19 = [[NSURL URLWithString:@"adnw_sync/" relativeToURL:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(long long)getLogLevel {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddb70 != -0x1) {
            dispatch_once(0x1011ddb70, 0x100eab2e0);
    }
    return *0x1011c7588;
}

+(void)setLogLevel:(long long)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011c7588 != r2) {
            *0x1011c7588 = r2;
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 setInteger:*0x1011c7588 forKey:@"fb_an_log_lv"];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 synchronize];
            [r19 release];
    }
    return;
}

+(void *)sessionID {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011ddb60 != -0x1) {
            dispatch_once(0x1011ddb60, &var_28);
    }
    r0 = *0x1011ddb58;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)resetSessionID {
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 UUIDString];
    r0 = [r0 retain];
    r8 = *0x1011ddb58;
    *0x1011ddb58 = r0;
    [r8 release];
    [r19 release];
    [FBAdDebugLogging recalculateCacheDebugEventsSamplingRate];
    return;
}

+(long long)mediaViewRenderingMethod {
    return *0x1011ddb50;
}

+(void)setMediaViewRenderingMethod:(long long)arg2 {
    *0x1011ddb50 = arg2;
    return;
}

+(long long)testAdType {
    return *0x1011ddb48;
}

+(void)setTestAdType:(long long)arg2 {
    *0x1011ddb48 = arg2;
    return;
}

+(void *)loggingDelegate {
    r0 = objc_loadWeakRetained(0x1011ddb40);
    r0 = [r0 autorelease];
    return r0;
}

+(void)setLoggingDelegate:(void *)arg2 {
    objc_storeWeak(0x1011ddb40, arg2);
    return;
}

+(void *)bidderToken {
    r0 = [FBAdEnvironmentData staticEnvironmentParamsEncoded];
    return r0;
}

+(void *)routingToken {
    r0 = [FBAdEnvironmentData staticEnvironmentParamsEncoded];
    return r0;
}

+(bool)assertionsEnabled {
    objc_sync_enter(self);
    objc_sync_exit(self);
    return 0x0;
}

@end