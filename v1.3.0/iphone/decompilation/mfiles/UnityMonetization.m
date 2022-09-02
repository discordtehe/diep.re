@implementation UnityMonetization

+(void *)getDelegate {
    r0 = [UMONClientProperties getDelegate];
    return r0;
}

+(void)setDelegate:(void *)arg2 {
    [UMONClientProperties setDelegate:arg2];
    return;
}

+(void *)getPlacementContent:(void *)arg2 {
    r0 = [UMONPlacementContents getPlacementContent:arg2];
    return r0;
}

+(bool)isReady:(void *)arg2 {
    r0 = [UMONPlacementContents isReady:arg2];
    return r0;
}

+(void)initialize:(void *)arg2 delegate:(void *)arg3 {
    r21 = [arg2 retain];
    [self initialize:r21 delegate:arg3 testMode:0x0];
    [r21 release];
    return;
}

+(void)initialize:(void *)arg2 delegate:(void *)arg3 testMode:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r22 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    if (r21 != 0x0) {
            [r22 setDelegate:r21];
    }
    [UMONClientProperties setMonetizationEnabled:0x1];
    [UnityServices initialize:r20 delegate:r21 testMode:r19];
    [r20 release];
    [r21 release];
    return;
}

@end