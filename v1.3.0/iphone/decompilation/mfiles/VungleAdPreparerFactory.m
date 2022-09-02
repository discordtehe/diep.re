@implementation VungleAdPreparerFactory

+(void *)preparerWithAd:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 adType];
    if (r0 != 0x0 && r0 != 0x1) {
            if (r0 == 0x2) {
                    r0 = objc_alloc();
                    r0 = [r0 init];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = objc_alloc();
            r0 = [r0 init];
    }
    r0 = [r0 autorelease];
    return r0;
}

@end