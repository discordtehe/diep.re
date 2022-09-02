@implementation UADSApiPlacement

+(void)WebViewExposed_setDefaultBannerPlacement:(void *)arg2 webViewCallback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    [UADSPlacement setDefaultBannerPlacement:r20];
    [r20 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_setDefaultPlacement:(void *)arg2 webViewCallback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    [UADSPlacement setDefaultPlacement:r20];
    [r20 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_setPlacementState:(void *)arg2 placementState:(void *)arg3 webViewCallback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    [UADSPlacement setPlacementState:r21 placementState:r20];
    [r20 release];
    [r21 release];
    [arg4 invoke:0x0];
    [r24 release];
    return;
}

@end