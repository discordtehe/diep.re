@implementation APMInAppPurchaseItem

-(void)setFreeTrial:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_freeTrial = arg2;
    return;
}

-(bool)isFreeTrial {
    r0 = *(int8_t *)(int64_t *)&self->_freeTrial;
    return r0;
}

-(bool)isIntroductoryOffer {
    r0 = *(int8_t *)(int64_t *)&self->_introductoryOffer;
    return r0;
}

-(void)setIntroductoryOffer:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_introductoryOffer = arg2;
    return;
}

-(void *)subscriptionExpirationDateIA5String {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subscriptionExpirationDateIA5String)), 0x0);
    return r0;
}

-(void)setSubscriptionExpirationDateIA5String:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)productID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_productID)), 0x0);
    return r0;
}

-(void)setProductID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)originalTransactionID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_originalTransactionID)), 0x0);
    return r0;
}

-(void)setOriginalTransactionID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)transactionID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_transactionID)), 0x0);
    return r0;
}

-(void)setTransactionID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)purchaseType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_purchaseType)), 0x0);
    return r0;
}

-(void)setPurchaseType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_purchaseType, 0x0);
    objc_storeStrong((int64_t *)&self->_transactionID, 0x0);
    objc_storeStrong((int64_t *)&self->_originalTransactionID, 0x0);
    objc_storeStrong((int64_t *)&self->_productID, 0x0);
    objc_storeStrong((int64_t *)&self->_subscriptionExpirationDateIA5String, 0x0);
    return;
}

@end