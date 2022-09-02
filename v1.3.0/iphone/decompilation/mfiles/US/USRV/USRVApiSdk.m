@implementation USRVApiSdk

+(void)WebViewExposed_initComplete:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r2;
    r20 = [r19 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Web application initialized", @selector(getLogLevel), r2, r3);
    }
    [USRVSdkProperties setInitialized:0x1];
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    [r0 setWebAppInitialized:0x1];
    [r0 release];
    [r19 invoke:0x0];
    [r20 release];
    return;
}

+(void)WebViewExposed_setDebugMode:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg2 boolValue];
    [r21 release];
    [USRVSdkProperties setDebugMode:r20];
    [arg3 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_getDebugMode:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVSdkProperties getDebugMode]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_logError:(void *)arg2 callback:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: %@", @selector(getLogLevel), r2, r3, r4);
    }
    [r20 invoke:0x0];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_logWarning:(void *)arg2 callback:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x2) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: %@", @selector(getLogLevel), r2, r3, r4);
    }
    [r20 invoke:0x0];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_logInfo:(void *)arg2 callback:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x3) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: %@", @selector(getLogLevel), r2, r3, r4);
    }
    [r20 invoke:0x0];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_loadComplete:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x190;
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
    var_A8 = r2;
    var_B0 = [r2 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Web application loaded", @selector(getLogLevel), r2, r3);
    }
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    [r0 setWebAppLoaded:0x1];
    [r0 release];
    var_A0 = [[USRVClientProperties getGameId] retain];
    var_58 = [[NSNumber numberWithBool:[USRVSdkProperties isTestMode]] retain];
    var_60 = [[USRVClientProperties getAppName] retain];
    var_68 = [[USRVClientProperties getAppVersion] retain];
    var_70 = [[NSNumber numberWithInt:[USRVSdkProperties getVersionCode]] retain];
    var_78 = [[USRVSdkProperties getVersionName] retain];
    var_80 = [[NSNumber numberWithBool:[USRVClientProperties isAppDebuggable]] retain];
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    var_B8 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    var_C0 = r0;
    var_88 = [[r0 configUrl] retain];
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    var_D0 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    var_D8 = r0;
    var_90 = [[r0 webViewUrl] retain];
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    var_E0 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    var_E8 = r0;
    r0 = [r0 webViewHash];
    r29 = r29;
    r0 = [r0 retain];
    var_F0 = r0;
    if (r0 != 0x0) {
            r0 = [USRVWebViewApp getCurrentApp];
            r0 = [r0 retain];
            var_100 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            var_108 = r0;
            r0 = [r0 webViewHash];
            r29 = r29;
            var_98 = [r0 retain];
            var_F8 = 0x0;
            var_F4 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            var_98 = [r0 retain];
            var_F8 = 0x1;
            var_F4 = 0x0;
    }
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 webViewVersion];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [USRVWebViewApp getCurrentApp];
            r0 = [r0 retain];
            var_110 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 webViewVersion];
            r29 = r29;
            r26 = [r0 retain];
            r25 = 0x0;
            r24 = 0x1;
    }
    else {
            r20 = @selector(configuration);
            r0 = [NSNull null];
            r29 = r29;
            r26 = [r0 retain];
            r24 = 0x0;
            r25 = 0x1;
    }
    r27 = @class(NSNumber);
    r27 = [[r27 numberWithLongLong:[USRVSdkProperties getInitializationTime]] retain];
    r28 = @class(NSNumber);
    [USRVSdkProperties isReinitialized];
    r19 = [[r28 numberWithBool:r2] retain];
    r28 = var_A0;
    [var_A8 invoke:r28];
    [var_B0 release];
    [r19 release];
    [r27 release];
    if (r25 != 0x0) {
            [r26 release];
    }
    if (r24 != 0x0) {
            [r26 release];
            [r20 release];
            [var_110 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    if (var_F8 != 0x0) {
            [var_98 release];
    }
    if (var_F4 != 0x0) {
            [var_98 release];
            [var_108 release];
            [var_100 release];
    }
    [var_F0 release];
    [var_E8 release];
    [var_E0 release];
    [var_90 release];
    [var_D8 release];
    [var_D0 release];
    [var_88 release];
    [var_C0 release];
    [var_B8 release];
    [var_80 release];
    [var_78 release];
    [var_70 release];
    [var_68 release];
    [var_60 release];
    [var_58 release];
    [r28 release];
    return;
}

+(void)WebViewExposed_logDebug:(void *)arg2 callback:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: %@", @selector(getLogLevel), r2, r3, r4);
    }
    [r20 invoke:0x0];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_reinitialize:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [r19 setWebAppLoaded:0x0];
            [r19 setWebAppInitialized:0x0];
    }
    [USRVSdkProperties setReinitialized:0x1];
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    r22 = [[r0 configuration] retain];
    [USRVInitialize initialize:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    return;
}

@end