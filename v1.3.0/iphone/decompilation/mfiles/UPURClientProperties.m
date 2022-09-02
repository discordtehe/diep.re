@implementation UPURClientProperties

+(void)setDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1bb0, arg2);
    return;
}

+(void *)getDelegate {
    r0 = *0x1011d1bb0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end