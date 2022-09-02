@implementation UMONPromoMetaDataBuilder

-(void *)impressionDate {
    r0 = self->_impressionDate;
    return r0;
}

-(void)setImpressionDate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_impressionDate, arg2);
    return;
}

-(double)offerDuration {
    r0 = self;
    return r0;
}

-(void)setOfferDuration:(double)arg2 {
    self->_offerDuration = d0;
    return;
}

-(void *)premiumProduct {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_premiumProduct)), 0x1);
    return r0;
}

-(void)setPremiumProduct:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)costs {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_costs)), 0x1);
    return r0;
}

-(void)setCosts:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)payouts {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_payouts)), 0x1);
    return r0;
}

-(void)setPayouts:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)userInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userInfo)), 0x1);
    return r0;
}

-(void)setUserInfo:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_payouts, 0x0);
    objc_storeStrong((int64_t *)&self->_costs, 0x0);
    objc_storeStrong((int64_t *)&self->_premiumProduct, 0x0);
    objc_storeStrong((int64_t *)&self->_impressionDate, 0x0);
    return;
}

@end