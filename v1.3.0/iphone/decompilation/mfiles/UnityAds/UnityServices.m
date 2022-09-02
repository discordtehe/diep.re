@implementation UnityServices

+(void)initialize:(void *)arg2 delegate:(void *)arg3 {
    return;
}

+(bool)getDebugMode {
    r0 = [USRVSdkProperties getDebugMode];
    return r0;
}

+(void)setDebugMode:(bool)arg2 {
    [USRVSdkProperties setDebugMode:arg2];
    return;
}

+(bool)isSupported {
    r0 = self;
    if (**_NSFoundationVersionNumber >= *0x100ba1e78) {
            if (CPU_FLAGS & GE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)initialize:(void *)arg2 delegate:(void *)arg3 testMode:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
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
    r29 = &saved_fp;
    r21 = r4;
    r22 = self;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if (([USRVSdkProperties isInitialized] & 0x1) != 0x0 || *(int8_t *)byte_1011d1a28 == 0x1) goto loc_1000b7588;

loc_1000b7650:
    r23 = 0x0;
    r24 = 0x0;
    if (r19 == 0x0) goto loc_1000b7764;

loc_1000b765c:
    if ([r19 length] == 0x0) goto loc_1000b7764;

loc_1000b7670:
    if (r24 != 0x0) goto loc_1000b77ac;

loc_1000b7674:
    r23 = @class(USRVSdkProperties);
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x2, d0 };
    [r23 setInitializationTime:r2];
    [r24 release];
    *(int8_t *)0x1011d1a28 = 0x1;
    r0 = [r22 retain];
    r22 = r0;
    objc_sync_enter(r0);
    if (r21 == 0x0) goto loc_1000b77ec;

loc_1000b76fc:
    if ([USRVDeviceLog getLogLevel] < 0x3) goto loc_1000b7858;

loc_1000b7708:
    r23 = [[USRVSdkProperties getVersionName] retain];
    [USRVSdkProperties getVersionCode];
    NSLog(@"%@/UnityAds: %s (line:%d) :: Initializing Unity Ads %@ (%d) with game id %@ in test mode", @selector(getVersionCode), r2, r3, r4, r5, r6);
    goto loc_1000b7850;

loc_1000b7850:
    [r23 release];
    goto loc_1000b7858;

loc_1000b7858:
    if (([USRVEnvironmentProperties isEnvironmentOk] & 0x1) == 0x0) {
            *(int8_t *)0x1011d1a28 = 0x0;
    }
    [UnityServices setDebugMode:[USRVSdkProperties getDebugMode]];
    [USRVSdkProperties setDelegate:r20];
    [USRVClientProperties setGameId:r19];
    [USRVSdkProperties setTestMode:r21];
    r21 = [[USRVConfiguration alloc] init];
    [USRVInitialize initialize:r21];
    [r21 release];
    objc_sync_exit(r22);
    [r22 release];
    *(int8_t *)0x1011d1a28 = 0x0;
    goto loc_1000b7938;

loc_1000b7938:
    [r20 release];
    [r19 release];
    return;

loc_1000b77ec:
    if ([USRVDeviceLog getLogLevel] < 0x3) goto loc_1000b7858;

loc_1000b77f8:
    r23 = [[USRVSdkProperties getVersionName] retain];
    [USRVSdkProperties getVersionCode];
    NSLog(@"%@/UnityAds: %s (line:%d) :: Initializing Unity Ads %@ (%d) with game id %@ in production mode", @selector(getVersionCode), r2, r3, r4, r5, r6);
    goto loc_1000b7850;

loc_1000b77ac:
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(unityServicesDidError:withMessage:), r3] != 0x0) {
            [r20 unityServicesDidError:r23 withMessage:@""];
    }
    goto loc_1000b7938;

loc_1000b7764:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity ads init: invalid argument, halting init", @selector(getLogLevel), r2, r3);
    }
    r23 = 0x0;
    goto loc_1000b77ac;

loc_1000b7588:
    r0 = [USRVClientProperties getGameId];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [USRVClientProperties getGameId];
            r29 = r29;
            r0 = [r0 retain];
            r2 = r19;
            r25 = [r0 isEqualToString:r2];
            [r0 release];
            [r23 release];
            if ((r25 & 0x1) == 0x0) {
                    if ([USRVDeviceLog getLogLevel] >= 0x2) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: You are trying to re-initialize with different gameId!", @selector(getLogLevel), r2, r3);
                    }
            }
    }
    else {
            [r23 release];
    }
    r23 = 0x1;
    r24 = 0x1;
    if (r19 != 0x0) goto loc_1000b765c;
}

+(void *)getVersion {
    r0 = [USRVSdkProperties getVersionName];
    return r0;
}

+(bool)isInitialized {
    r0 = [USRVSdkProperties isInitialized];
    return r0;
}

@end