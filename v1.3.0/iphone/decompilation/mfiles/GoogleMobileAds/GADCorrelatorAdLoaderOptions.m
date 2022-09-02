@implementation GADCorrelatorAdLoaderOptions

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_correlator));
    objc_storeStrong(r0 + r8, *(self + r8));
    r0 = r20;
    return r0;
}

-(void *)correlator {
    r0 = self->_correlator;
    return r0;
}

-(void)setCorrelator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_correlator, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_correlator, 0x0);
    return;
}

@end