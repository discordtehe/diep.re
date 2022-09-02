@implementation AdColony_AvidManager

+(void *)getInstance {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011d23d8 != -0x1) {
            r0 = dispatch_once(0x1011d23d8, &var_28);
    }
    r0 = *0x1011d23e0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
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
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffff90) = self;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r21 = [[NSNotificationCenter defaultCenter] retain];
            r24 = [[AdColony_AvidAdSessionRegistry getInstance] retain];
            [r21 addObserver:r19 selector:@selector(onSessionRegistryIsEmptyChanged:) name:@"kAvidAdSessionRegistryIsEmptyChangedNotification" object:r24];
            [r24 release];
            [r21 release];
            r20 = [[NSNotificationCenter defaultCenter] retain];
            r0 = @class(AdColony_AvidAdSessionRegistry);
            r0 = [r0 getInstance];
            r29 = r29;
            r22 = [r0 retain];
            [r20 addObserver:r19 selector:@selector(onSessionRegistryHasReadySessionsChanged:) name:@"kAvidAdSessionRegistryHasReadySessionsChangedNotification" object:r22];
            [r22 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)registerAvidAdSession:(void *)arg2 withInternalAvidAdSession:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    [r0 registerAvidAdSession:r20 withInternalAvidAdSession:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

-(void *)findAvidAdSessionById:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r20 = [r0 findAvidAdSessionById:r21];
    [r21 release];
    r20 = [r20 retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)findInternalAvidAdSessionById:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r20 = [r0 findInternalAvidAdSessionById:r21];
    [r21 release];
    r20 = [r20 retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)start {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = @class(AdColony_AvidStateWatcher);
    r0 = [r0 getInstance];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = @class(AdColony_AvidStateWatcher);
    r0 = [r0 getInstance];
    r0 = [r0 retain];
    [r0 start];
    [r0 release];
    r0 = @class(AdColony_AvidStateWatcher);
    r0 = [r0 getInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 appIsActive];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [AdColony_AvidTreeWalker getInstance];
            r0 = [r0 retain];
            [r0 start];
            [r0 release];
    }
    return;
}

-(bool)isActive {
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r20 = [r0 isEmpty] ^ 0x1;
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)stop {
    r0 = [AdColony_AvidStateWatcher getInstance];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    r0 = [AdColony_AvidTreeWalker getInstance];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    return;
}

-(void)notifyAvidReady {
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 internalAvidAdSessions];
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:0x100e76e40];
    [r0 release];
    [r19 release];
    return;
}

-(bool)shouldLoadAvid {
    r0 = [self isActive];
    return r0;
}

-(void)onAvidReady {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r21 = [r0 isEmpty];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [r19 notifyAvidReady];
    }
    return;
}

-(void)onAppStateChanged:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[AdColony_AvidTreeWalker getInstance] retain];
    if (arg2 != 0x0) {
            r1 = @selector(start);
    }
    else {
            r1 = @selector(pause);
    }
    objc_msgSend(r19, r1);
    [r19 release];
    return;
}

-(void)onSessionRegistryIsEmptyChanged:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEmpty];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = @class(AdColony_AvidProvider);
            r0 = [r0 getInstance];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
            r0 = @class(AdColony_AvidProvider);
            r0 = [r0 getInstance];
            r0 = [r0 retain];
            [r0 loadAvid];
            [r0 release];
    }
    return;
}

-(void)onSessionRegistryHasReadySessionsChanged:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r21 = [r0 hasActiveSessions];
    [r0 release];
    if (r21 != 0x0) {
            r1 = @selector(start);
    }
    else {
            r1 = @selector(stop);
    }
    objc_msgSend(r19, r1);
    return;
}

@end