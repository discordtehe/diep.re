@implementation RateNotificationObserver

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
    if (r0 != 0x0) {
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(sessionStart:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(sessionEnd:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)sessionStart:(void *)arg2 {
    (*(*sub_1003d0cdc() + 0x28))(self, _cmd, arg2);
    return;
}

-(void)sessionEnd:(void *)arg2 {
    (*(*sub_1003d0cdc() + 0x30))(self, _cmd, arg2);
    return;
}

@end