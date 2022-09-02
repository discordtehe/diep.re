@implementation UADSBannerProperties

+(void)setDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1bb8, arg2);
    return;
}

+(void *)getDelegate {
    r0 = *0x1011d1bb8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end