@implementation OMIDtapjoyManager

+(void *)getInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc230 != -0x1) {
            dispatch_once(0x1011dc230, &var_28);
    }
    r0 = *0x1011dc238;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setup {
    r0 = [OMIDtapjoyAdSessionRegistry getInstance];
    r0 = [r0 retain];
    [r0 addStateObserver:self];
    [r0 release];
    return;
}

-(void)stop {
    r0 = @class(OMIDtapjoyStateWatcher);
    r0 = [r0 getInstance];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = @class(OMIDtapjoyStateWatcher);
    r0 = [r0 getInstance];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    r0 = [OMIDtapjoyTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    return;
}

-(void)appDidBecomeActive {
    r0 = [OMIDtapjoyTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    return;
}

-(void)start {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = @class(OMIDtapjoyStateWatcher);
    r0 = [r0 getInstance];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = @class(OMIDtapjoyStateWatcher);
    r0 = [r0 getInstance];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    r0 = @class(OMIDtapjoyStateWatcher);
    r0 = [r0 getInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 appIsActive];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [OMIDtapjoyTreeWalker getInstance];
            r0 = [r0 retain];
            [r0 start];
            [r0 release];
    }
    return;
}

-(void)adSessionRegistryDidBecomeActive {
    [self start];
    return;
}

-(void)appDidResignActive {
    r0 = [OMIDtapjoyTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    return;
}

-(void)adSessionRegistryDidResignActive {
    [self stop];
    return;
}

-(void)adSessionDidBecomeActive:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [OMIDtapjoyStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 adSessionDidBecomeActive:r21];
    [r21 release];
    [r0 release];
    return;
}

@end