@implementation USRVClientProperties

+(void)setGameId:(void *)arg2 {
    objc_storeStrong(0x1011a92f8, arg2);
    return;
}

+(void *)getGameId {
    r0 = *0x1011a92f8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(int)getSupportedOrientations {
    r20 = [[UIApplication sharedApplication] retain];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r21 = [[r0 keyWindow] retain];
    r22 = [r20 supportedInterfaceOrientationsForWindow:r21];
    [r21 release];
    [r0 release];
    [r20 release];
    r0 = r22;
    return r0;
}

+(void *)getSupportedOrientationsPlist {
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
    r19 = [[NSArray arrayWithObjects:&stack[-88] count:0x0] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 != 0x0) {
            r22 = @selector(objectForKey:);
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            r22 = [objc_msgSend(r0, r22) retain];
            r23 = [[r19 arrayByAddingObjectsFromArray:r22] retain];
            [r19 release];
            [r22 release];
            [r0 release];
            [r20 release];
            r19 = r23;
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getAppName {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getAppVersion {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)setCurrentViewController:(void *)arg2 {
    objc_storeWeak(0x1011d1b50, arg2);
    return;
}

+(bool)isAppDebuggable {
    return 0x0;
}

+(void *)getCurrentViewController {
    r0 = objc_loadWeakRetained(0x1011d1b50);
    r0 = [r0 autorelease];
    return r0;
}

+(void)setBannerDefaultPosition:(long long)arg2 {
    *0x1011a9300 = arg2;
    return;
}

+(long long)getbannerDefaultPosition {
    return *0x1011a9300;
}

@end