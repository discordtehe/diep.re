@implementation BnDelegateWrapper

+(void *)sharedInstance {
    if (*qword_1011dabc8 != -0x1) {
            dispatch_once(0x1011dabc8, 0x100e8b860);
    }
    r0 = *0x1011dabc0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    [arg2 retain];
    objc_sync_enter(self);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    [self retain];
    r0 = *(self + r22);
    *(self + r22) = r20;
    [r0 release];
    objc_sync_exit(self);
    [r21 release];
    return;
}

-(void)bannerDidLoad:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)bannerDidFailToLoadWithError:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)didClickBanner {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)bannerWillPresentScreen {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)bannerDidDismissScreen {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)bannerWillLeaveApplication {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    return;
}

@end