@implementation GADJSCoreEnvironment

-(void *)initWithJSCoreJSContext:(void *)arg2 eventContext:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_environment, @"jscore");
            r0 = [GADJSCoreNavigator alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_navigator));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_platform, @"ios");
            objc_storeStrong((int64_t *)&r21->_sdkVersion, *0x100e9f558);
            r0 = [GADJSCoreInterface alloc];
            r0 = [r0 initWithJSCoreJSContext:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_googleAdsJsInterface));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADJSCoreConsole alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_console));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADJSCoreTimers alloc];
            r0 = [r0 initWithJSCoreJSContext:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADJSCorePinger alloc];
            r0 = [r0 initWithEventContext:r20];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_pinger));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADJSCoreLocalStorage alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_localStorage));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)environment {
    r0 = self->_environment;
    return r0;
}

-(void *)platform {
    r0 = self->_platform;
    return r0;
}

-(void *)sdkVersion {
    r0 = self->_sdkVersion;
    return r0;
}

-(void *)googleAdsJsInterface {
    r0 = self->_googleAdsJsInterface;
    return r0;
}

-(void *)navigator {
    r0 = self->_navigator;
    return r0;
}

-(void *)console {
    r0 = self->_console;
    return r0;
}

-(void *)timers {
    r0 = self->_timers;
    return r0;
}

-(void *)localStorage {
    r0 = self->_localStorage;
    return r0;
}

-(void *)pinger {
    r0 = self->_pinger;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_localStorage, 0x0);
    objc_storeStrong((int64_t *)&self->_pinger, 0x0);
    objc_storeStrong((int64_t *)&self->_timers, 0x0);
    objc_storeStrong((int64_t *)&self->_console, 0x0);
    objc_storeStrong((int64_t *)&self->_googleAdsJsInterface, 0x0);
    objc_storeStrong((int64_t *)&self->_navigator, 0x0);
    objc_storeStrong((int64_t *)&self->_sdkVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_platform, 0x0);
    objc_storeStrong((int64_t *)&self->_environment, 0x0);
    return;
}

@end