@implementation GADMediationBannerAdConfiguration

-(void *)initWithAdSize:(struct GADAdSize)arg2 adConfiguration:(struct NSDictionary *)arg3 targeting:(void *)arg4 credentials:(void *)arg5 extras:(void *)arg6 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r24 = [r3 retain];
    r22 = [r4 retain];
    r21 = [r5 retain];
    r0 = [[&var_40 super] initWithAdConfiguration:r24 targeting:r22 credentials:r21 extras:r6];
    r20 = r0;
    [r21 release];
    [r22 release];
    [r24 release];
    if (r20 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(0x10 + r20 + r8) = *(r19 + 0x10);
            *(int128_t *)(r20 + r8) = *(int128_t *)r19;
    }
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithAdConfiguration:(struct NSDictionary *)arg2 targeting:(void *)arg3 credentials:(void *)arg4 extras:(void *)arg5 {
    [self release];
    return 0x0;
}

-(struct GADAdSize)adSize {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(r8 + 0x10) = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    return r0;
}

@end