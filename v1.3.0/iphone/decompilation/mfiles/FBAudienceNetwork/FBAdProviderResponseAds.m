@implementation FBAdProviderResponseAds

-(void *)initWithAdPlacement:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 retain];
    r0 = [[&var_20 super] initWithType:0x2];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setAdPlacement:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adPlacement, 0x0);
    return;
}

-(void *)adPlacement {
    r0 = self->_adPlacement;
    return r0;
}

-(void)setAdPlacement:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adPlacement));
    [arg2 retain];
    r0 = *(self + r21);
    *(self + r21) = arg2;
    [r0 release];
    return;
}

@end