@implementation GADInAppPurchase

-(void *)init {
    [self release];
    return 0x0;
}

-(void)reportPurchaseStatus:(long long)arg2 {
    return;
}

-(void *)productID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_productID)), 0x0);
    return r0;
}

-(long long)quantity {
    r0 = self->_quantity;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_productID, 0x0);
    return;
}

@end