@implementation TapjoyDelegateCpp

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc170 != -0x1) {
            dispatch_once(0x1011dc170, &var_28);
    }
    r0 = *0x1011dc168;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)onConnectSuccess:(void *)arg2 {
    dispatch_async(*__dispatch_main_q, 0x100ea25c8);
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onConnectSuccess:) name:@"TJC_Connect_Success" object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onConnectFailure:) name:@"TJC_Connect_Failed" object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onEarnedCurrency:) name:@"TJC_CURRENCY_EARNED_NOTIFICATION" object:0x0];
            [r0 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)onConnectFailure:(void *)arg2 {
    dispatch_async(*__dispatch_main_q, 0x100ea2608);
    return;
}

-(void)videoAdBegan {
    dispatch_async(*__dispatch_main_q, 0x100ea2648);
    return;
}

-(void)videoAdClosed {
    dispatch_async(*__dispatch_main_q, 0x100ea2688);
    return;
}

-(void)videoAdCompleted {
    dispatch_async(*__dispatch_main_q, 0x100ea26c8);
    return;
}

-(void)videoAdError:(void *)arg2 {
    dispatch_async(*__dispatch_main_q, 0x100ea2708);
    return;
}

-(void)onEarnedCurrency:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 object] retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:@"TJC_CURRENCY_KEY_NAME"] retain];
    [r0 release];
    if ([r20 respondsToSelector:r2] != 0x0) {
            r22 = @selector(intValue);
            r22 = objc_msgSend(r20, r22);
            if (r22 >= 0x1) {
                    var_30 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_30 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)connected {
    r0 = *(int8_t *)(int64_t *)&self->_connected & 0x1;
    return r0;
}

-(struct TJConnectListener *)connectListener {
    r0 = self->_connectListener;
    return r0;
}

-(void)setConnected:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_connected = arg2;
    return;
}

-(void)setConnectListener:(struct TJConnectListener *)arg2 {
    self->_connectListener = arg2;
    return;
}

-(struct TJEarnedCurrencyListener *)earnedCurrencyListener {
    r0 = self->_earnedCurrencyListener;
    return r0;
}

-(struct TJVideoListener *)videoListener {
    r0 = self->_videoListener;
    return r0;
}

-(void)setEarnedCurrencyListener:(struct TJEarnedCurrencyListener *)arg2 {
    self->_earnedCurrencyListener = arg2;
    return;
}

-(void)setVideoListener:(struct TJVideoListener *)arg2 {
    self->_videoListener = arg2;
    return;
}

@end