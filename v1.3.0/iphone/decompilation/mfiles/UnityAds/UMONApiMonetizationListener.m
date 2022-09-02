@implementation UMONApiMonetizationListener

+(void)WebViewExposed_isMonetizationEnabled:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[UMONClientProperties monetizationEnabled]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_sendPlacementContentReady:(void *)arg2 withCallBack:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [UMONClientProperties getDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[UMONPlacementContents getPlacementContent:r19] retain];
            [r21 placementContentReady:r19 placementContent:r22];
            [r20 invoke:0x0];
    }
    else {
            r22 = [sub_1000f3bd0() retain];
            [r20 error:r22 arg1:0x0];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_sendPlacementContentStateChanged:(void *)arg2 withPreviousState:(void *)arg3 withNewState:(void *)arg4 withCallBack:(void *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [UMONClientProperties getDelegate];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r24 = [[UMONPlacementContents getPlacementContent:r19] retain];
            [r23 placementContentStateDidChange:r19 placementContent:r24 previousState:sub_1000f2f80() newState:sub_1000f2f80()];
            [r22 invoke:0x0];
    }
    else {
            r24 = [sub_1000f3bd0() retain];
            [r22 error:r24 arg1:0x0];
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end