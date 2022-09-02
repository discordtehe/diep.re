@implementation UMONApiPlacementContents

+(void)WebViewExposed_createPlacementContent:(void *)arg2 withParams:(void *)arg3 withCallBack:(void *)arg4 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg3 mutableCopy];
    [r23 release];
    r23 = [[UMONPlacementContentFactory create:r22 withParams:r21] retain];
    [r21 release];
    r21 = [[UMONPlacementContents putPlacementContent:r22 withPlacementContent:r23] retain];
    [r22 release];
    [r21 release];
    [arg4 invoke:0x0];
    [r20 release];
    [r23 release];
    return;
}

+(void)WebViewExposed_sendAdStarted:(void *)arg2 withCallBack:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [UMONShowAdDelegateManager sharedInstance];
    r0 = [r0 retain];
    [r0 sendAdStarted:r20];
    [r20 release];
    [r0 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_setPlacementContentState:(void *)arg2 withState:(void *)arg3 withCallBack:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [arg4 retain];
    r24 = sub_1000f2f80();
    [r20 release];
    [UMONPlacementContents setPlacementContentState:r21 withPlacementContentState:r24];
    [r21 release];
    [arg4 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_sendAdFinished:(void *)arg2 withFinishState:(void *)arg3 withCallBack:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    r22 = [[UMONShowAdDelegateManager sharedInstance] retain];
    r23 = sub_1000f31a0();
    [r20 release];
    [r22 sendAdFinished:r21 withFinishState:r23];
    [r21 release];
    [r22 release];
    [arg4 invoke:0x0];
    [r24 release];
    return;
}

@end