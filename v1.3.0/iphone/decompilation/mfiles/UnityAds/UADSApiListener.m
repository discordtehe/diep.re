@implementation UADSApiListener

+(void)WebViewExposed_sendReadyEvent:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    [arg3 retain];
    var_28 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [arg3 invoke:0x0];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_sendStartEvent:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    [arg3 retain];
    var_28 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [arg3 invoke:0x0];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_sendFinishEvent:(void *)arg2 result:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    [arg4 retain];
    var_30 = r20;
    [r20 retain];
    var_28 = r21;
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [arg4 invoke:0x0];
    [r22 release];
    [var_28 release];
    [var_30 release];
    [r21 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_sendClickEvent:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    [arg3 retain];
    var_28 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [arg3 invoke:0x0];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_sendPlacementStateChangedEvent:(void *)arg2 oldState:(void *)arg3 newState:(void *)arg4 callback:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [arg5 retain];
    var_48 = r21;
    [r21 retain];
    var_40 = r20;
    [r20 retain];
    var_38 = r22;
    [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [arg5 invoke:0x0];
    [r23 release];
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r22 release];
    [r20 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_sendErrorEvent:(void *)arg2 message:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    [arg4 retain];
    var_30 = r21;
    [r21 retain];
    var_28 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [arg4 invoke:0x0];
    [r22 release];
    [var_28 release];
    [var_30 release];
    [r20 release];
    [r21 release];
    return;
}

@end