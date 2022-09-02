@implementation TJPlacementDelegateCpp

-(void)requestDidSucceed:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void *)initWithListener:(struct TJPlacementListener *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setListener:r19];
    }
    r0 = r21;
    return r0;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)contentIsReady:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)contentDidAppear:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)contentDidDisappear:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)placement:(void *)arg2 didRequestPurchase:(void *)arg3 productId:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    [r22 retain];
    var_30 = r20;
    [r20 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_28 release];
    [var_30 release];
    [r22 release];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)placement:(void *)arg2 didRequestReward:(void *)arg3 itemId:(void *)arg4 quantity:(int)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [r23 retain];
    var_48 = r21;
    [r21 retain];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_78);
    [r20 release];
    [var_48 release];
    [r23 release];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(struct TJPlacementListener *)listener {
    r0 = self->_listener;
    return r0;
}

-(void)setListener:(struct TJPlacementListener *)arg2 {
    self->_listener = arg2;
    return;
}

@end