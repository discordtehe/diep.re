@implementation MPSessionTracker

+(void)initializeNotificationObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(trackEvent) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(trackEvent) name:**_UIApplicationDidFinishLaunchingNotification object:0x0];
    [r0 release];
    return;
}

+(void)trackEvent {
    r19 = objc_alloc();
    r20 = [[MPAdServerURLBuilder sessionTrackingURL] retain];
    r19 = [r19 initWithURL:r20];
    [r20 release];
    [[[MPHTTPNetworkSession startTaskWithHttpRequest:r19 responseHandler:0x0 errorHandler:0x0] retain] release];
    [r19 release];
    return;
}

@end