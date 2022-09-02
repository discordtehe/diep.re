@implementation LocalizedCCBReader

-(void *)getLocalizedResourceNameFor:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [Application sharedApplication];
    r0 = [r0 localizationManager];
    r0 = [r0 resourceForKey:r2];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void *)getLocalizedTextForTag:(void *)arg2 {
    r0 = [Application sharedApplication];
    r0 = [r0 localizationManager];
    r0 = [r0 textForKey:r2];
    return r0;
}

@end