@implementation GADJSCoreJSContext

-(void *)initWithEventContext:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithEventContext:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [JSVirtualMachine alloc];
            r0 = [r0 init];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_virtualMachine));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            r0 = [JSContext alloc];
            r0 = [r0 initWithVirtualMachine:*(r19 + r21)];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_JSContext));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setName:@"Google Mobile Ads"];
    }
    r0 = r19;
    return r0;
}

-(void)evaluateScript:(void *)arg2 {
    [[[self->_JSContext evaluateScript:arg2] retain] release];
    return;
}

-(void)asyncEvaluateFunction:(void *)arg2 parameters:(void *)arg3 {
    r0 = [arg2 retain];
    r19 = sub_1008762a4(r0, arg3);
    [r0 release];
    r19 = [r19 retain];
    var_30 = [self retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [var_28 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)functionWithName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_JSContext;
    r0 = [r0 evaluateScript:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isObject] & 0x1) == 0x0) {
            [r19 release];
            r19 = 0x0;
    }
    r20 = [[GADJSCoreJSFunction alloc] initWithFunctionValue:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_JSContext, 0x0);
    objc_storeStrong((int64_t *)&self->_virtualMachine, 0x0);
    return;
}

-(void *)JSContext {
    r0 = self->_JSContext;
    return r0;
}

@end