@implementation USRVUnityPurchasing

+(void *)getDelegate {
    r0 = [UPURClientProperties getDelegate];
    return r0;
}

+(void)setDelegate:(void *)arg2 {
    [UPURClientProperties setDelegate:arg2];
    return;
}

@end