@implementation FNFColorConversion

+(float[9] *)matrix3x3ForType:(long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x100bfce44;
            }
            else {
                    r0 = 0x100bfce20;
            }
    }
    return r0;
}

+(float[12] *)matrix3x4ForType:(long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x100bfcdf0;
            }
            else {
                    r0 = 0x100bfcdc0;
            }
    }
    return r0;
}

@end