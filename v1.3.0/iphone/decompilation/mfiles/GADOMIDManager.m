@implementation GADOMIDManager

+(void *)getInstance {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x10, &var_48);
    if (*0x1011dc010 != -0x1) {
            dispatch_once(0x1011dc010, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = *qword_1011dc018;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setup {
    r0 = [GADOMIDAdSessionRegistry getInstance];
    r0 = [r0 retain];
    [r0 addStateObserver:self];
    [r0 release];
    return;
}

-(void)start {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADOMIDStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [GADOMIDStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    r0 = [GADOMIDStateWatcher getInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_2C = [r0 appIsActive];
    [r0 release];
    if ((var_2C & 0x1) != 0x0) {
            r0 = [GADOMIDTreeWalker getInstance];
            r0 = [r0 retain];
            [r0 start];
            [r0 release];
    }
    return;
}

-(void)appDidBecomeActive {
    r0 = [GADOMIDTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    return;
}

-(void)stop {
    r0 = [GADOMIDStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [GADOMIDStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    r0 = [GADOMIDTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    return;
}

-(void)appDidResignActive {
    r0 = [GADOMIDTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    return;
}

-(void)adSessionRegistryDidBecomeActive {
    [self start];
    return;
}

-(void)adSessionRegistryDidResignActive {
    [self stop];
    return;
}

-(void)adSessionDidBecomeActive:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    r0 = [GADOMIDStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 adSessionDidBecomeActive:var_18];
    [r0 release];
    objc_storeStrong(&var_18, 0x0);
    return;
}

@end