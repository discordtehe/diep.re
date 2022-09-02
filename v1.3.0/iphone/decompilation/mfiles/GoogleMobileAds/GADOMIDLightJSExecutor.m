@implementation GADOMIDLightJSExecutor

+(void *)lightJSExecutor {
    var_30 = [[self alloc] initWithTimer:[GADOMIDJSTimer new] networkBridge:[GADOMIDJSNetworkBridge new]];
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_30 autorelease];
    return r0;
}

-(void *)initWithTimer:(void *)arg2 networkBridge:(void *)arg3 {
    r31 = r31 - 0xb0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    objc_storeStrong(r29 - 0x20, arg3);
    r0 = [[r29 - 0x30 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            r0 = dispatch_queue_create("com.iab.omidLightJSExecutor.serial.queue", 0x0);
            r1 = var_8->_dispatchQueue;
            var_8->_dispatchQueue = r0;
            [r1 release];
            objc_storeStrong((int64_t *)&var_8->_timer, 0x0);
            [var_8->_timer setJsInvoker:var_8];
            objc_storeStrong((int64_t *)&var_8->_networkBridge, 0x0);
            [var_8->_networkBridge setJsInvoker:var_8];
            var_98 = var_8->_dispatchQueue;
            [var_8 retain];
            dispatch_async(var_98, &var_58);
            objc_storeStrong(&var_58 + 0x20, 0x0);
    }
    var_A0 = [var_8 retain];
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_A0;
    return r0;
}

-(bool)supportBackgroundThread {
    r0 = 0x1;
    return r0;
}

-(void *)jsEnvironment {
    r0 = self->_jsContext;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)injectJavaScriptFromString:(void *)arg2 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    var_50 = self->_dispatchQueue;
    [self retain];
    [0x0 retain];
    dispatch_async(var_50, &var_48);
    objc_storeStrong(&var_48 + 0x28, 0x0);
    objc_storeStrong(&var_48 + 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    return;
}

-(void)invokeCallback:(void *)arg2 argument:(void *)arg3 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    var_8 = **___stack_chk_guard;
    objc_storeStrong(&var_28, arg2);
    objc_storeStrong(&var_30, arg3);
    var_50 = [[NSArray arrayWithObjects:&saved_fp - 0x10 count:0x1] retain];
    [[[var_28 callWithArguments:var_50] retain] release];
    [var_50 release];
    objc_storeStrong(&var_30, 0x0);
    objc_storeStrong(&var_28, 0x0);
    if (**___stack_chk_guard != var_8) {
            __stack_chk_fail();
    }
    return;
}

-(void)invokeCallback:(void *)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, arg2);
    if (([var_18 isString] & 0x1) != 0x0) {
            var_28 = [[var_18 toString] retain];
            [var_8 invokeScript:var_28];
            [var_28 release];
    }
    else {
            if (([var_18 isUndefined] & 0x1) == 0x0 && ([var_18 isNull] & 0x1) == 0x0) {
                    [[[var_18 callWithArguments:0x0] retain] release];
            }
    }
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void *)jsContext {
    r0 = self->_jsContext;
    return r0;
}

-(void)invokeScript:(void *)arg2 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, arg2);
    if (([var_18 isEqual:@""] & 0x1) == 0x0) {
            [[[var_8->_jsContext evaluateScript:var_18] retain] release];
    }
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void *)timer {
    r0 = self->_timer;
    return r0;
}

-(void *)networkBridge {
    r0 = self->_networkBridge;
    return r0;
}

-(void *)dispatchQueue {
    r0 = self->_dispatchQueue;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dispatchQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_networkBridge, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_jsContext, 0x0);
    return;
}

@end