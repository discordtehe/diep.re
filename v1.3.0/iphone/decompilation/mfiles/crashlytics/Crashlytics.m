@implementation Crashlytics

-(void *)init {
    r20 = [[Crashlytics sharedInstance] retain];
    [self release];
    r0 = r20;
    return r0;
}

-(void *)initWithSuper {
    r0 = [[&var_10 super] init];
    return r0;
}

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d1e08 != -0x1) {
            dispatch_once(0x1011d1e08, &var_28);
    }
    r0 = *0x1011d1e00;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)start {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([Fabric isCrashlyticsCollectionEnabled] != 0x0) {
            if (*qword_1011d1e10 != -0x1) {
                    dispatch_once(0x1011d1e10, &var_38);
            }
    }
    else {
            NSLog(@"[Crashlytics] Not starting up because data collection is disabled");
    }
    return;
}

-(void *)version {
    r0 = [self class];
    r0 = [r0 kitDisplayVersion];
    return r0;
}

+(void *)bundleIdentifier {
    objc_retainAutorelease(@"com.twitter.crashlytics.ios");
    return @"com.twitter.crashlytics.ios";
}

-(void *)bundleIdentifier {
    r0 = [self class];
    r0 = [r0 bundleIdentifier];
    return r0;
}

+(void *)kitBuildVersion {
    objc_retainAutorelease(@"138");
    return @"138";
}

+(void *)kitDisplayVersion {
    objc_retainAutorelease(@"3.13.0");
    return @"3.13.0";
}

+(void)disableUninitializedKitMessaging {
    *(int8_t *)0x1011d1e28 = 0x1;
    return;
}

+(void)initializeIfNeeded {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    return;
}

-(void *)kitInfo {
    return 0x0;
}

-(void)setKitInfo:(void *)arg2 {
    return;
}

+(void *)startWithAPIKey:(void *)arg2 {
    r0 = [self startWithAPIKey:arg2 delegate:0x0];
    return r0;
}

+(void *)startWithAPIKey:(void *)arg2 afterDelay:(double)arg3 {
    [arg2 retain];
    NSLog(@"[Crashlytics] Warning, startWithAPIKey:afterDelay: is deprecated.");
    r19 = [[self startWithAPIKey:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)APIKey {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [[r0 APIKey] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)startWithAPIKey:(void *)arg2 delegate:(void *)arg3 afterDelay:(double)arg4 {
    [arg2 retain];
    [arg3 retain];
    NSLog(@"[Crashlytics] Warning, startWithAPIKey:delegate:afterDelay: is deprecated.");
    r20 = [[self startWithAPIKey:r21 delegate:r19] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)startWithAPIKey:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r20 = [arg3 retain];
    r0 = [self sharedInstance];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            [r21 setDelegate:r20];
    }
    r22 = NSSelectorFromString(@"initializeKitsWithFabricAPIKey");
    if ([Fabric respondsToSelector:r2] == 0x0) goto loc_100106c04;

loc_100106be8:
    [Fabric performSelector:r2 withObject:r3];
    goto loc_100106e04;

loc_100106e04:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100106c04:
    r23 = @selector(respondsToSelector:);
    NSSelectorFromString(@"installationMode");
    r25 = NSSelectorFromString(@"setInstallationMode:");
    r0 = @class(Fabric);
    r0 = [r0 sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, r23) != 0x0) {
            r23 = @selector(respondsToSelector:);
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r23);
            [r0 release];
    }
    else {
            r23 = 0x0;
    }
    [r24 release];
    r0 = @class(Fabric);
    r0 = [r0 sharedSDK];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == 0x0) goto loc_100106d14;

loc_100106cb0:
    r23 = [r24 installationMode];
    [r24 release];
    r0 = @class(Fabric);
    r0 = [r0 sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setInstallationMode:0x1];
    [r0 release];
    if (r23 != 0x2) goto loc_100106d7c;

loc_100106d04:
    NSLog(@"[Crashlytics] Warning, calling startWithAPIKey:... after [FIRApp configure] or FirebaseApp.configure() is not supported");
    goto loc_100106e04;

loc_100106d7c:
    r0 = @class(Fabric);
    r0 = [r0 sharedSDK];
    r0 = [r0 retain];
    [r0 setAPIKey:r19];
    [r0 release];
    r22 = @class(Fabric);
    r23 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
    r0 = [r22 with:r23];
    goto loc_100106df4;

loc_100106df4:
    [[r0 retain] release];
    [r23 release];
    goto loc_100106e04;

loc_100106d14:
    [r24 setAPIKey:r19];
    [r24 release];
    r22 = @class(Fabric);
    r23 = [[NSArray arrayWithObjects:&var_68 count:0x1] retain];
    r0 = [r22 with:r23];
    goto loc_100106df4;
}

-(void *)installID {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [[r0 installID] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isFirstInstall {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [r0 isFirstInstall];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)settingsDictionary {
    return 0x0;
}

-(bool)isCrashlyticsStarted {
    r0 = self;
    if (r0->_crashReportingController != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setDebugMode:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    [r0 setDebug:0x1];
    [r0 release];
    if ([self isCrashlyticsStarted] != 0x0) {
            NSLog(@"[Crashlytics] Warning, consider enabling debug mode before starting Crashlytics");
    }
    return;
}

-(bool)debugMode {
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r20 = [r0 debug];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    objc_storeStrong((int64_t *)&self->_delegate, arg2);
    if ([self isCrashlyticsStarted] != 0x0) {
            NSLog(@"[Crashlytics] Warning, setting delegate after start. Make sure to set the Crashlytics delegate before calling startWithAPIKey:.., or +[Fabric with...] to avoid missing some delegate callbacks.");
    }
    [r19 release];
    return;
}

-(void)crash {
    r1 = _cmd;
    r0 = self;
    asm { brk        #0x1 };
    -[Crashlytics throwException](r0, r1);
    return;
}

-(void)setUserName:(void *)arg2 {
    sub_1001222ec(*0x100e6bb90, arg2);
    return;
}

-(void)setUserEmail:(void *)arg2 {
    sub_1001222ec(*0x100e6bb98, arg2);
    return;
}

+(void)setUserIdentifier:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setUserIdentifier:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setUserName:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setUserName:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setUserEmail:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setUserEmail:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setObjectValue:(void *)arg2 forKey:(void *)arg3 {
    sub_1001226b0(arg3, [arg2 retain]);
    [r20 release];
    return;
}

-(void)setIntValue:(int)arg2 forKey:(void *)arg3 {
    r23 = [arg3 retain];
    r19 = [[NSNumber numberWithInt:arg2] retain];
    [self setObjectValue:r19 forKey:r23];
    [r23 release];
    [r19 release];
    return;
}

-(void)setBoolValue:(bool)arg2 forKey:(void *)arg3 {
    r23 = [arg3 retain];
    r19 = [[NSNumber numberWithBool:arg2] retain];
    [self setObjectValue:r19 forKey:r23];
    [r23 release];
    [r19 release];
    return;
}

-(void)setFloatValue:(float)arg2 forKey:(void *)arg3 {
    r22 = [arg2 retain];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    [self setObjectValue:r20 forKey:r22];
    [r22 release];
    [r20 release];
    return;
}

+(void)setObjectValue:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setObjectValue:r21 forKey:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

+(void)setIntValue:(int)arg2 forKey:(void *)arg3 {
    r22 = [arg3 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setIntValue:arg2 forKey:r22];
    [r22 release];
    [r0 release];
    return;
}

+(void)setBoolValue:(bool)arg2 forKey:(void *)arg3 {
    r22 = [arg3 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setBoolValue:arg2 forKey:r22];
    [r22 release];
    [r0 release];
    return;
}

+(void)setFloatValue:(float)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setFloatValue:r21 forKey:arg3];
    [r21 release];
    [r0 release];
    return;
}

+(void)setDevelopmentPlatformName:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setDevelopmentPlatformName:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)developmentPlatformName {
    NSLog(@"[Crashlytics] developmentPlatformName is write-only");
    return 0x0;
}

+(void)setDevelopmentPlatformVersion:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 setDevelopmentPlatformVersion:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setDevelopmentPlatformName:(void *)arg2 {
    sub_1001222ec(*0x100e6bba0, arg2);
    return;
}

-(void *)developmentPlatformVersion {
    NSLog(@"[Crashlytics] developmentPlatformVersion is write-only");
    return 0x0;
}

-(void)setDevelopmentPlatformVersion:(void *)arg2 {
    sub_1001222ec(*0x100e6bba8, arg2);
    return;
}

-(void)recordError:(void *)arg2 {
    [self recordError:arg2 withAdditionalUserInfo:0x0];
    return;
}

-(void)recordError:(void *)arg2 withAdditionalUserInfo:(void *)arg3 {
    sub_100122f3c([arg2 retain], [arg3 copy]);
    [r20 release];
    [r19 release];
    return;
}

-(void)monitorErrorsForUIWebView:(void *)arg2 {
    r1 = _cmd;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if ((sub_10010bbe4() & 0x1) == 0x0) {
            NSLog(@"[Crashlytics] Unable to monitor UIWebView (%p)", r1);
    }
    [r19 release];
    return;
}

-(void)recordCustomExceptionName:(void *)arg2 reason:(void *)arg3 frameArray:(void *)arg4 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r25 = [arg4 retain];
    r21 = [arg2 copy];
    [r22 release];
    r0 = objc_retainAutorelease(r21);
    r22 = @selector(UTF8String);
    r26 = objc_msgSend(r0, r22);
    r20 = [arg3 copy];
    [r23 release];
    r0 = objc_retainAutorelease(r20);
    r22 = objc_msgSend(r0, r22);
    r19 = [arg4 copy];
    [r25 release];
    sub_10011bf78(0x4, r26, r22, r19, 0x0);
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(bool)handleWebView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    r0 = [arg2 retain];
    r19 = sub_10010bd38(r0, arg3);
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)monitorErrorsForWKWebViewConfiguration:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userContentController];
    r0 = [r0 retain];
    [r0 addScriptMessageHandler:r2 name:r3];
    [r21 release];
    if ((sub_10010c06c() & 0x1) == 0x0) {
            NSLog(@"[Crashlytics] Unable to monitor %@", @selector(addScriptMessageHandler:name:));
    }
    [r19 release];
    return;
}

-(bool)shouldInstallCrashCallback {
    r0 = self->_delegate;
    r0 = [r0 respondsToSelector:@selector(crashlyticsDidDetectCrash:)];
    return r0;
}

-(bool)delegateRespondsToLegacyMethods {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if (([*(r19 + r21) respondsToSelector:@selector(crashlytics:didDetectCrashDuringPreviousExecution:), r3] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r20 = @selector(respondsToSelector:);
            r0 = *(r19 + r21);
            r0 = objc_msgSend(r0, r20, @selector(crashlyticsDidDetectCrashDuringPreviousExecution:), r3);
    }
    return r0;
}

-(void)warnDelegateAboutMethods {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegateRespondsToLegacyMethods];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if (r0 != 0x0) {
            NSLog(@"[Crashlytics] The Crashlytics delegate '%@' implements deprecated methods.  Please see Crashlytics.h for details.", @selector(delegateRespondsToLegacyMethods));
    }
    if ([*(r19 + r21) respondsToSelector:@selector(crashlyticsCanUseBackgroundSessions:)] != 0x0 && [*(r19 + r21) crashlyticsCanUseBackgroundSessions:r19] != 0x0 && sub_10010b158() != 0x0) {
            NSLog(@"[Crashlytics] Background sessions are not supported in extensions. Please see Crashlytics.h for details.");
    }
    return;
}

-(void)detectedCrash {
    [self->_delegate crashlyticsDidDetectCrash:self];
    return;
}

-(bool)reportingControllerCanUseBackgroundSessions:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(r19 + r21) respondsToSelector:@selector(crashlyticsCanUseBackgroundSessions:)] != 0x0) {
            r0 = *(r19 + r21);
            r0 = [r0 crashlyticsCanUseBackgroundSessions:r19];
    }
    else {
            r0 = sub_10010b158();
            r0 = r0 ^ 0x1;
    }
    return r0;
}

-(bool)reportingControllerMustInformDelegateOfReports:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([r19->_delegate respondsToSelector:@selector(crashlyticsDidDetectReportForLastExecution:completionHandler:), r3] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 delegateRespondsToLegacyMethods];
    }
    return r0;
}

-(void)reportingController:(void *)arg2 didDetectReportForLastExecution:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(r22 + r26) respondsToSelector:@selector(crashlyticsDidDetectReportForLastExecution:)] != 0x0) {
            r0 = [CLSReport alloc];
            r3 = 0x1;
            r23 = [[r0 initWithInternalReport:r20 prefetchData:r3] retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [r23 release];
    }
    else {
            r23 = 0x0;
    }
    if (([r22 reportingControllerMustInformDelegateOfReports:r19] & 0x1) != 0x0) {
            if (r23 == 0x0) {
                    r23 = [[CLSReport alloc] initWithInternalReport:r20];
            }
            if ([*(r22 + r26) respondsToSelector:@selector(crashlyticsDidDetectReportForLastExecution:completionHandler:), r3] != 0x0) {
                    [*(r22 + r26) crashlyticsDidDetectReportForLastExecution:r2 completionHandler:r3];
            }
            else {
                    (*(r21 + 0x10))(r21, 0x1);
            }
            r23 = [r23 retain];
            dispatch_async(*__dispatch_main_q, &var_A0);
            [r23 release];
    }
    else {
            (*(r21 + 0x10))(r21, 0x1);
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)reportingController:(void *)arg2 internalDidDetectReportForLastExecution:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg3 retain];
    r19 = [[CLSReport alloc] initWithInternalReport:r21];
    [r21 release];
    if ([r19 isCrash] != 0x0) {
            [[[r19 dateCreated] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [r0 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(bool)reportingController:(void *)arg2 ensureDeliveryOfUnixSignal:(int)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    r0 = *(r19 + r22);
    r0 = [r0 respondsToSelector:@selector(crashlytics:ensureDeliveryOfUnixSignal:), r3];
    if (r0 != 0x0) {
            r0 = *(r19 + r22);
            r0 = [r0 crashlytics:r19 ensureDeliveryOfUnixSignal:r20];
    }
    return r0;
}

-(void *)installIDForCrashReportingController:(void *)arg2 {
    r0 = [self installID];
    return r0;
}

-(void *)APIKeyForCrashReportingController:(void *)arg2 {
    r0 = [self APIKey];
    return r0;
}

-(bool)isFirstInstallForCrashReportingController:(void *)arg2 {
    r0 = [self isFirstInstall];
    return r0;
}

-(void *)settingsForCrashReportingController:(void *)arg2 {
    r19 = [CLSSettings alloc];
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [[r0 settings] retain];
    r19 = [r19 initWithDictionary:r21];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)APIKeyForBetaController:(void *)arg2 {
    r0 = [self APIKey];
    return r0;
}

-(void *)settingsForBetaController:(void *)arg2 {
    r19 = [CLSSettings alloc];
    r0 = [Fabric sharedSDK];
    r0 = [r0 retain];
    r21 = [[r0 settings] retain];
    r19 = [r19 initWithDictionary:r21];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ((sub_10010c188() & 0x1) == 0x0) {
            NSLog(@"[Crashlytics] Unable to record exception from WKWebView");
    }
    return;
}

-(void)logEvent:(void *)arg2 {
    [Answers logCustomEventWithName:arg2 customAttributes:0x0];
    return;
}

-(void)logEvent:(void *)arg2 attributes:(void *)arg3 {
    r20 = [arg2 retain];
    [Answers logCustomEventWithName:r20 customAttributes:arg3];
    [r20 release];
    return;
}

+(void)logEvent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [Crashlytics sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)logEvent:(void *)arg2 attributes:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [Crashlytics sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r20 attributes:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

-(void *)betaController {
    r0 = self->_betaController;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_betaController, 0x0);
    objc_storeStrong((int64_t *)&self->_crashReportingController, 0x0);
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    return;
}

-(void)throwException {
    sub_10011c664();
    return;
}

-(void)setUserIdentifier:(void *)arg2 {
    sub_1001222ec(*0x100e6bb88, arg2);
    return;
}

@end