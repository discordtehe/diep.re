@implementation OMIDtapjoyLightJSExecutor

+(void *)lightJSExecutor {
    r21 = [OMIDtapjoyJSTimer new];
    r20 = [OMIDtapjoyJSNetworkBridge new];
    r19 = [[self alloc] initWithTimer:r21 networkBridge:r20];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithTimer:(void *)arg2 networkBridge:(void *)arg3 {
    r31 = r31 - 0x90;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = dispatch_queue_create(0x0, 0x0);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_dispatchQueue));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_timer, r23);
            [r21->_timer setJsInvoker:r21];
            objc_storeStrong((int64_t *)&r21->_networkBridge, r22);
            [r21->_networkBridge setJsInvoker:r21];
            r22 = *(r21 + r25);
            var_58 = [r21 retain];
            dispatch_async(r22, &var_78);
            [var_58 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)supportBackgroundThread {
    return 0x1;
}

-(void *)jsEnvironment {
    r0 = self->_jsContext;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)injectJavaScriptFromString:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_dispatchQueue;
    [r0 retain];
    dispatch_async(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void *)jsContext {
    r0 = self->_jsContext;
    return r0;
}

-(void)invokeScript:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqual:r2] & 0x1) == 0x0) {
            [[[r20->_jsContext evaluateScript:r19] retain] release];
    }
    [r19 release];
    return;
}

-(void)invokeCallback:(void *)arg2 argument:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[NSArray arrayWithObjects:&var_40 count:0x1] retain];
    r20 = [[arg2 callWithArguments:r22] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r22 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)invokeCallback:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isString] == 0x0) goto loc_100963c3c;

loc_100963c04:
    r21 = [[r19 toString] retain];
    [r20 invokeScript:r21];
    r0 = r21;
    goto loc_100963c80;

loc_100963c80:
    [r0 release];
    goto loc_100963c84;

loc_100963c84:
    [r19 release];
    return;

loc_100963c3c:
    if (([r19 isUndefined] & 0x1) != 0x0 || ([r19 isNull] & 0x1) != 0x0) goto loc_100963c84;

loc_100963c64:
    r0 = [r19 callWithArguments:0x0];
    r0 = [r0 retain];
    goto loc_100963c80;
}

-(void *)networkBridge {
    r0 = self->_networkBridge;
    return r0;
}

-(void *)timer {
    r0 = self->_timer;
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