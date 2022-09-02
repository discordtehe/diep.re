@implementation EventDispatcherImpIOSHelper

-(void)registerApplicationEvents {
    r0 = [NSNotificationCenter defaultCenter];
    [r0 addObserver:self selector:@selector(willResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 addObserver:self selector:@selector(didEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 addObserver:self selector:@selector(willEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
    [r0 addObserver:self selector:@selector(didBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 addObserver:self selector:@selector(didFinishLaunching:) name:**_UIApplicationDidFinishLaunchingNotification object:0x0];
    return;
}

-(void)willResignActive:(void *)arg2 {
    (**sub_100975cd0())();
    (**sub_100975cd0())();
    return;
}

-(void)didEnterBackground:(void *)arg2 {
    (**sub_100975cd0())();
    (**sub_100975cd0())();
    return;
}

-(void)willEnterForeground:(void *)arg2 {
    (**sub_100975cd0())();
    (**sub_100975cd0())();
    return;
}

-(void)didBecomeActive:(void *)arg2 {
    (**sub_100975cd0())();
    (**sub_100975cd0())();
    return;
}

-(void)didFinishLaunching:(void *)arg2 {
    (**sub_100975cd0())();
    return;
}

@end