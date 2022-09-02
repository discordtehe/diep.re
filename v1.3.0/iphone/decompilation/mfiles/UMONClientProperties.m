@implementation UMONClientProperties

+(void *)getDelegate {
    r0 = *0x1011d1cf8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1cf8, arg2);
    return;
}

+(void)setMonetizationEnabled:(bool)arg2 {
    *(int8_t *)0x1011d1d00 = arg2;
    return;
}

+(bool)monetizationEnabled {
    return *(int8_t *)0x1011d1d00;
}

@end