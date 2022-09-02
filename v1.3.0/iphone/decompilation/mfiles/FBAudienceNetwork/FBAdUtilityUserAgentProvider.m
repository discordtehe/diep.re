@implementation FBAdUtilityUserAgentProvider

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_state = 0x0;
            r0 = dispatch_queue_create("fb-ad-utility-user-agent-provider", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = **___NSArray0__;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_handlers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)retrieveUserAgentWithHandler:(void *)arg2 transformBlock:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_60 + 0x30, &saved_fp - 0x28);
    var_40 = r21;
    [r21 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(r20, &var_60);
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r21 release];
    objc_destroyWeak(&var_60 + 0x30);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)enqueueCallback:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r19 = [[r0 handlers] retain];
            objc_retainBlock(r21);
            [r21 release];
            [r19 addObject:r2];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void)invokeCallbacks {
    r0 = [self handlers];
    r0 = [r0 retain];
    r22 = [r0 copy];
    [r0 release];
    r0 = [self handlers];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    [r22 enumerateObjectsUsingBlock:&var_48];
    [r22 release];
    return;
}

-(void)retriveUserAgentOnMainThreadComplete:(void *)arg2 transformBlock:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_78 + 0x28, &saved_fp - 0x48);
    var_58 = r21;
    [r21 retain];
    r0 = objc_retainBlock(&var_78);
    [r0 retain];
    var_80 = r22;
    [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_A8);
    [var_80 release];
    [r0 release];
    [r21 release];
    [var_58 release];
    [r22 release];
    [r20 release];
    objc_destroyWeak(&var_78 + 0x28);
    objc_destroyWeak(&saved_fp - 0x48);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_handlers, 0x0);
    objc_storeStrong((int64_t *)&self->_userAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(long long)state {
    r0 = self->_state;
    return r0;
}

-(void)setState:(long long)arg2 {
    self->_state = arg2;
    return;
}

-(void *)userAgent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userAgent)), 0x0);
    return r0;
}

-(void)setUserAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)handlers {
    r0 = self->_handlers;
    return r0;
}

-(void)setHandlers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_handlers, arg2);
    return;
}

+(void *)shared {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eac200);
    if (*qword_1011ddc48 != -0x1) {
            dispatch_once(0x1011ddc48, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddc50);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)retrieveUserAgentWithHandler:(void *)arg2 transformBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self shared];
    r0 = [r0 retain];
    [r0 retrieveUserAgentWithHandler:r21 transformBlock:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

+(void)fbad_internalClearUserAgent {
    r0 = [self shared];
    r0 = [r0 retain];
    [r0 setState:0x0];
    [r0 setUserAgent:0x0];
    [r0 release];
    return;
}

@end