@implementation VNGUserAgentOperation

-(void *)initWithResultBlock:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = @selector(init);
            r21 = objc_msgSend(objc_alloc(), r21);
            [r20 setWebViewProvider:r21];
            [r21 release];
            [r20 setUserAgentResultBlock:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)start {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&saved_fp - 0x20 super] start];
    if (([r19 isCancelled] & 0x1) == 0x0) {
            objc_initWeak(&stack[-56], r19);
            [[r19 webViewProvider] retain];
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            [r20 userAgentWithResultBlock:&var_50];
            [r20 release];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    return;
}

-(void)setWebViewProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewProvider, arg2);
    return;
}

-(void *)webViewProvider {
    r0 = self->_webViewProvider;
    return r0;
}

-(void *)userAgentResultBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userAgentResultBlock)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userAgentResultBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewProvider, 0x0);
    return;
}

-(void)setUserAgentResultBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end