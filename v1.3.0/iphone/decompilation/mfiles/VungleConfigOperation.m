@implementation VungleConfigOperation

-(void *)initWithConfigController:(void *)arg2 userAgent:(void *)arg3 backgroundInit:(bool)arg4 resultBlock:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r20 = [arg2 retain];
    r22 = [r21 retain];
    r0 = [[&var_40 super] initWithResultBlock:arg5];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r23->_configController, r20);
            objc_storeStrong((int64_t *)&r23->_userAgent, r21);
            *(int8_t *)(int64_t *)&r23->_backgroundInit = r19;
    }
    [r22 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void)start {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_30 super] start];
    if (([r19 isCancelled] & 0x1) == 0x0) {
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:@"Config request operation begins." level:0xf4240 context:@"SDK Initialization"];
            [r0 release];
            objc_initWeak(&stack[-72], r19);
            [[r19 configController] retain];
            [r19 backgroundInit];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r20 fetchConfigWithBackgroundInit:r21 completionBlock:&var_60];
            [r20 release];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    return;
}

-(void *)configController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_configController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setConfigController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_configController, arg2);
    return;
}

-(void *)userAgent {
    r0 = self->_userAgent;
    return r0;
}

-(void)setUserAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userAgent, arg2);
    return;
}

-(bool)backgroundInit {
    r0 = *(int8_t *)(int64_t *)&self->_backgroundInit;
    return r0;
}

-(void)setBackgroundInit:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_backgroundInit = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userAgent, 0x0);
    objc_destroyWeak((int64_t *)&self->_configController);
    return;
}

@end