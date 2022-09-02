@implementation VungleWebViewUserAgentProvider

-(void)userAgentWithResultBlock:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_48 + 0x28, &saved_fp - 0x18);
    var_28 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [var_28 release];
    [r20 release];
    objc_destroyWeak(&var_48 + 0x28);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)dealloc {
    var_18 = [[self webViewFacade] retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    _Block_object_dispose(&var_40, 0x8);
    [var_18 release];
    [[&var_78 super] dealloc];
    return;
}

-(void *)webViewFacade {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setWebViewFacade:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end