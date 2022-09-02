@implementation APMAppDelegateInterceptor

+(void *)sharedInstance {
    if (*qword_1011d1fb8 != -0x1) {
            dispatch_once(0x1011d1fb8, 0x100e6e770);
    }
    r0 = *0x1011d1fc0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)application:(void *)arg2 openURL:(void *)arg3 options:(void *)arg4 {
    r19 = [arg3 retain];
    [APMAnalytics handleOpenURL:r19];
    [r19 release];
    return 0x0;
}

-(bool)application:(void *)arg2 openURL:(void *)arg3 sourceApplication:(void *)arg4 annotation:(void *)arg5 {
    r19 = [arg3 retain];
    [APMAnalytics handleOpenURL:r19];
    [r19 release];
    return 0x0;
}

-(void)application:(void *)arg2 handleEventsForBackgroundURLSession:(void *)arg3 completionHandler:(void *)arg4 {
    r20 = [arg3 retain];
    [GULNetwork handleEventsForBackgroundURLSessionID:r20 completionHandler:arg4];
    [r20 release];
    return;
}

-(bool)application:(void *)arg2 continueUserActivity:(void *)arg3 restorationHandler:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg3 retain];
    r19 = [[APMMeasurement deepLinkFromUserActivity:arg3] retain];
    [r20 release];
    r0 = [r19 absoluteString];
    r0 = [r0 retain];
    r21 = [r0 length];
    [r0 release];
    if (r21 != 0x0) {
            [APMAnalytics handleOpenURL:r19];
    }
    [r19 release];
    return 0x0;
}

@end