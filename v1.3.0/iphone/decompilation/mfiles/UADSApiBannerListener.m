@implementation UADSApiBannerListener

+(void)WebViewExposed_sendShowEvent:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSBannerProperties getDelegate] retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(unityAdsBannerDidShow:)] != 0x0) {
            [r21 unityAdsBannerDidShow:r19];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_sendHideEvent:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSBannerProperties getDelegate] retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(unityAdsBannerDidHide:)] != 0x0) {
            [r21 unityAdsBannerDidHide:r19];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_sendClickEvent:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSBannerProperties getDelegate] retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(unityAdsBannerDidClick:)] != 0x0) {
            [r21 unityAdsBannerDidClick:r19];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_sendErrorEvent:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSBannerProperties getDelegate] retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(unityAdsBannerDidError:)] != 0x0) {
            [r21 unityAdsBannerDidError:r19];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_sendLoadEvent:(void *)arg2 callback:(void *)arg3 {
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
    r0 = [UADSBannerProperties getDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(unityAdsBannerDidLoad:view:), r3] != 0x0) {
            r23 = [[UADSBannerView getInstance] retain];
            [r21 unityAdsBannerDidLoad:r19 view:r23];
            [r23 release];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_sendUnloadEvent:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSBannerProperties getDelegate] retain];
    if (r21 != 0x0 && [r21 respondsToSelector:@selector(unityAdsBannerDidUnload:)] != 0x0) {
            [r21 unityAdsBannerDidUnload:r19];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end