@implementation GADDefaultInAppPurchase

+(void)enableDefaultPurchaseFlowWithDelegate:(void *)arg2 {
    return;
}

+(void)disableDefaultPurchaseFlow {
    return;
}

-(void)finishTransaction {
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

-(void *)paymentTransaction {
    r0 = self->_paymentTransaction;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_paymentTransaction, 0x0);
    objc_storeStrong((int64_t *)&self->_productID, 0x0);
    return;
}

@end