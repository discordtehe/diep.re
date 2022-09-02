@implementation GADJSCoreNavigator

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [GADNetwork sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 userAgentString];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userAgent));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)userAgent {
    r0 = self->_userAgent;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userAgent, 0x0);
    return;
}

@end