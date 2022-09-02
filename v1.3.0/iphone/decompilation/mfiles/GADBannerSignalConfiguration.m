@implementation GADBannerSignalConfiguration

-(void *)initWithAdUnitID:(void *)arg2 adSize:(struct GADAdSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r0 = [[&var_20 super] initWithAdUnitID:arg2];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(0x10 + r0 + r8) = *(r19 + 0x10);
            *(int128_t *)(r0 + r8) = *(int128_t *)r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [GADBannerSignalConfiguration alloc];
    r21 = [[self adUnitID] retain];
    r19 = [r20 initWithAdUnitID:r21 adSize:&var_40];
    [r21 release];
    r0 = r19;
    return r0;
}

-(struct GADAdSize)adSize {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(r8 + 0x10) = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    return r0;
}

-(void)setAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(0x10 + self + r8) = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    return;
}

@end