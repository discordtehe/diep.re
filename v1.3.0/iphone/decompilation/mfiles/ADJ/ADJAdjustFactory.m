@implementation ADJAdjustFactory

+(void *)packageHandlerForActivityHandler:(void *)arg2 startsSending:(bool)arg3 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (*0x1011daac8 != 0x0) {
            r20 = *0x1011daac8;
            r21 = [r2 retain];
            r19 = [[r20 retain] initWithActivityHandler:r21 startsSending:r19];
            [r21 release];
    }
    else {
            r22 = [r2 retain];
            r19 = [ADJPackageHandler handlerWithActivityHandler:r22 startsSending:r19];
            [r22 release];
            r19 = [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)requestHandlerForPackageHandler:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011daad0 != 0x0) {
            r19 = *0x1011daad0;
            r20 = [r2 retain];
            r19 = [[r19 retain] initWithPackageHandler:r20];
            [r20 release];
    }
    else {
            r21 = [r2 retain];
            r19 = [ADJRequestHandler handlerWithPackageHandler:r21];
            [r21 release];
            r19 = [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)activityHandlerWithConfig:(void *)arg2 sessionParametersActionsArray:(void *)arg3 deviceToken:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*0x1011daad8 != 0x0) {
            r22 = *0x1011daad8;
            r23 = [r21 retain];
            r21 = [[r22 retain] initWithConfig:r19 sessionParametersActionsArray:r20 deviceToken:r23];
            [r23 release];
    }
    else {
            r21 = [r21 retain];
            r22 = [ADJActivityHandler handlerWithConfig:r19 sessionParametersActionsArray:r20 deviceToken:r21];
            [r21 release];
            r21 = [r22 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)logger {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011daae0 == 0x0) {
            r0 = [ADJLogger alloc];
            r0 = [r0 init];
            r8 = *0x1011daae0;
            *0x1011daae0 = r0;
            [r8 release];
    }
    r0 = *0x1011daae0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(double)sessionInterval {
    r0 = self;
    if (*0x1011c15d8 == 0xbff0000000000000) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

+(double)subsessionInterval {
    r0 = self;
    if (*0x1011c15e0 == 0xbff0000000000000) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

+(double)timerStart {
    r0 = self;
    if (*0x1011c15f0 == 0xbff0000000000000) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

+(double)timerInterval {
    r0 = self;
    if (*0x1011c15e8 == 0xbff0000000000000) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

+(void *)sdkClickHandlerBackoffStrategy {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if (*0x1011dab00 != 0x0) {
            r0 = *0x1011dab00;
            r0 = [r0 retain];
    }
    else {
            r0 = [ADJBackoffStrategy backoffStrategyWithType:0x1];
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)packageHandlerBackoffStrategy {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if (*0x1011daaf8 != 0x0) {
            r0 = *0x1011daaf8;
            r0 = [r0 retain];
    }
    else {
            r0 = [ADJBackoffStrategy backoffStrategyWithType:0x0];
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)attributionHandlerForActivityHandler:(void *)arg2 withAttributionPackage:(void *)arg3 startsSending:(bool)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r19 = [arg2 retain];
    if (*0x1011daae8 != 0x0) {
            r22 = *0x1011daae8;
            r21 = [r21 retain];
            r20 = [[r22 retain] initWithActivityHandler:r19 withAttributionPackage:r21 startsSending:r20];
            [r21 release];
    }
    else {
            r21 = [r21 retain];
            r20 = [ADJAttributionHandler handlerWithActivityHandler:r19 withAttributionPackage:r21 startsSending:r20];
            [r21 release];
            r20 = [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)sdkClickHandlerWithStartsPaused:(void *)arg2 startsSending:(bool)arg3 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (*0x1011daaf0 != 0x0) {
            r20 = *0x1011daaf0;
            r21 = [r2 retain];
            r19 = [[r20 retain] initWithActivityHandler:r21 startsSending:r19];
            [r21 release];
    }
    else {
            r22 = [r2 retain];
            r19 = [ADJSdkClickHandler handlerWithActivityHandler:r22 startsSending:r19];
            [r22 release];
            r19 = [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

+(double)maxDelayStart {
    r0 = self;
    if (*0x1011c15f8 == 0xbff0000000000000) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

+(bool)testing {
    return *(int8_t *)0x1011dab08;
}

+(void)setRequestHandler:(void *)arg2 {
    objc_storeStrong(0x1011daad0, arg2);
    return;
}

+(void)setPackageHandler:(void *)arg2 {
    objc_storeStrong(0x1011daac8, arg2);
    return;
}

+(void)setActivityHandler:(void *)arg2 {
    objc_storeStrong(0x1011daad8, arg2);
    return;
}

+(void)setLogger:(void *)arg2 {
    objc_storeStrong(0x1011daae0, arg2);
    return;
}

+(void)setSessionInterval:(double)arg2 {
    *0x1011c15d8 = d0;
    return;
}

+(void)setSubsessionInterval:(double)arg2 {
    *0x1011c15e0 = d0;
    return;
}

+(void)setTimerInterval:(double)arg2 {
    *0x1011c15e8 = d0;
    return;
}

+(void)setTimerStart:(double)arg2 {
    *0x1011c15f0 = d0;
    return;
}

+(void)setSdkClickHandler:(void *)arg2 {
    objc_storeStrong(0x1011daaf0, arg2);
    return;
}

+(void)setAttributionHandler:(void *)arg2 {
    objc_storeStrong(0x1011daae8, arg2);
    return;
}

+(void)setPackageHandlerBackoffStrategy:(void *)arg2 {
    objc_storeStrong(0x1011daaf8, arg2);
    return;
}

+(void)setSdkClickHandlerBackoffStrategy:(void *)arg2 {
    objc_storeStrong(0x1011dab00, arg2);
    return;
}

+(void)setTesting:(bool)arg2 {
    *(int8_t *)0x1011dab08 = arg2;
    return;
}

+(void)setMaxDelayStart:(double)arg2 {
    *0x1011c15f8 = d0;
    return;
}

+(void)teardown {
    r0 = *0x1011daac8;
    *0x1011daac8 = 0x0;
    [r0 release];
    r0 = *0x1011daad0;
    *0x1011daad0 = 0x0;
    [r0 release];
    r0 = *0x1011daad8;
    *0x1011daad8 = 0x0;
    [r0 release];
    r0 = *0x1011daae0;
    *0x1011daae0 = 0x0;
    [r0 release];
    r0 = *0x1011daae8;
    *0x1011daae8 = 0x0;
    [r0 release];
    r0 = *0x1011daaf0;
    *0x1011daaf0 = 0x0;
    [r0 release];
    *0x1011c15d8 = 0xbff0000000000000;
    *0x1011c15e0 = 0xbff0000000000000;
    *0x1011c15e8 = 0xbff0000000000000;
    *0x1011c15f0 = 0xbff0000000000000;
    r0 = *0x1011daaf8;
    *0x1011daaf8 = 0x0;
    [r0 release];
    r0 = *0x1011dab00;
    *0x1011dab00 = 0x0;
    [r0 release];
    *0x1011c15f8 = 0xbff0000000000000;
    return;
}

@end