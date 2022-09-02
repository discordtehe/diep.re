@implementation VungleNewRequestOperation

-(void *)initWithNewRequestController:(void *)arg2 userAgent:(void *)arg3 resultBlock:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] initWithResultBlock:arg4];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r22->_requestNewController, r19);
            objc_storeStrong((int64_t *)&r22->_userAgent, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)start {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[r29 - 0x20 super] start];
    if (([r19 isCancelled] & 0x1) == 0x0) {
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:@"New request operation begins." level:0xf4240 context:@"SDK Initialization"];
            [r0 release];
            objc_initWeak(&stack[-56], r19);
            [[r19 requestNewController] retain];
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            [r20 sendNewRequest:&var_50];
            [r20 release];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    return;
}

-(void *)requestNewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_requestNewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)userAgent {
    r0 = self->_userAgent;
    return r0;
}

-(void)setRequestNewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_requestNewController, arg2);
    return;
}

-(void)setUserAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userAgent, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userAgent, 0x0);
    objc_destroyWeak((int64_t *)&self->_requestNewController);
    return;
}

@end