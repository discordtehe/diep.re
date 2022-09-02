@implementation AdColony_AvidStateWatcher

+(void *)getInstance {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011d23b8 != -0x1) {
            r0 = dispatch_once(0x1011d23b8, &var_28);
    }
    r0 = *0x1011d23c0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)appIsActive {
    r0 = self;
    if (r0->_state == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(long long)appState {
    r0 = self->_state;
    return r0;
}

-(void)start {
    *(int8_t *)(int64_t *)&self->_isStarted = 0x1;
    [self setup];
    [self notifyAppStateChanged];
    return;
}

-(void)stop {
    *(int8_t *)(int64_t *)&self->_isStarted = 0x0;
    [self setDelegate:0x0];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)setup {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    self->_state = [r0 applicationState];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppDidBecomeActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppWillResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onAppDidEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    [r0 release];
    return;
}

-(void)notifyAppStateChanged {
    r0 = [AdColony_AvidAdSessionRegistry getInstance];
    r0 = [r0 retain];
    r21 = [[r0 internalAvidAdSessions] retain];
    var_28 = [self retain];
    [r21 enumerateObjectsUsingBlock:&var_48];
    [r21 release];
    [r0 release];
    [var_28 release];
    return;
}

-(void)onAppDidBecomeActive {
    self->_state = 0x0;
    [self onAppStateChanged];
    return;
}

-(void)onAppWillResignActive {
    self->_state = 0x1;
    [self onAppStateChanged];
    return;
}

-(void)onAppDidEnterBackground {
    self->_state = 0x2;
    [self onAppStateChanged];
    return;
}

-(void)onAppStateChanged {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_isStarted != 0x0) {
            [r19 notifyAppStateChanged];
            r20 = [[r19 delegate] retain];
            [r20 onAppStateChanged:[r19 appIsActive]];
            [r20 release];
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end