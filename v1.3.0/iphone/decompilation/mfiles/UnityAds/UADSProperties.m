@implementation UADSProperties

+(void)setDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1a30, arg2);
    return;
}

+(void *)getDelegate {
    r0 = *0x1011d1a30;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(int)getShowTimeout {
    return *(int32_t *)0x1011a9158;
}

+(void)setShowTimeout:(int)arg2 {
    *(int32_t *)0x1011a9158 = arg2;
    return;
}

@end