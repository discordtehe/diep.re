@implementation DFPInterstitial

-(void *)initWithAdUnitID:(void *)arg2 {
    r0 = [[&var_10 super] initWithAdUnitID:arg2];
    return r0;
}

-(void *)customRenderedInterstitialDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_customRenderedInterstitialDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCustomRenderedInterstitialDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_customRenderedInterstitialDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_customRenderedInterstitialDelegate);
    return;
}

@end