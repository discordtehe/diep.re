@implementation VNGAppLifecycleCoordinator

-(void)appDidEnterBackground {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"App entering background" level:0xf4240 context:@"SDK Lifecycle"];
    [r0 release];
    r0 = [self defaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:@"vungleLoggerEnabled"];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 flush];
            [r0 release];
            r0 = [VNGFileSizeTracker sharedInstance];
            r0 = [r0 retain];
            [r0 resetTotalFileSize];
            [r0 release];
    }
    return;
}

-(void *)initWithSDKInitializer:(void *)arg2 adRequestCoordinator:(void *)arg3 userDefaults:(void *)arg4 {
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
    r29 = &saved_fp;
    r25 = arg4;
    r23 = arg3;
    r24 = arg2;
    r19 = [arg2 retain];
    r20 = [r23 retain];
    r21 = [r25 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r22 + 0x8, r25);
            objc_storeStrong(r22 + 0x10, r24);
            objc_storeStrong(r22 + 0x18, r23);
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appWillEnterForeground) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appDidEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r22 selector:@selector(appWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)appWillEnterForeground {
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"App entering foreground" level:0xf4240 context:@"SDK Lifecycle"];
    [r0 release];
    objc_initWeak(&saved_fp - 0x18, self);
    [[self initializer] retain];
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    [r20 initializeFromBackgroundWithCompletionBlock:&var_40];
    [r20 release];
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void *)defaults {
    r0 = *(self + 0x8);
    return r0;
}

-(void)appWillResignActive {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"App resigning active status" level:0xf4240 context:@"SDK Lifecycle"];
    [r0 release];
    r0 = [self defaults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:@"vungleLoggerEnabled"];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 flush];
            [r0 release];
            r0 = [VNGFileSizeTracker sharedInstance];
            r0 = [r0 retain];
            [r0 resetTotalFileSize];
            [r0 release];
    }
    return;
}

-(void)setDefaults:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)initializer {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setInitializer:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)adRequestCoordinator {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setAdRequestCoordinator:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end