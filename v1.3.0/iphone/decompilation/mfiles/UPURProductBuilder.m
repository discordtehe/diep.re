@implementation UPURProductBuilder

-(void)setProductId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productId, arg2);
    return;
}

-(void *)productId {
    r0 = self->_productId;
    return r0;
}

-(void *)localizedPriceString {
    r0 = self->_localizedPriceString;
    return r0;
}

-(void)setLocalizedPriceString:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedPriceString, arg2);
    return;
}

-(void)setLocalizedTitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedTitle, arg2);
    return;
}

-(void *)localizedTitle {
    r0 = self->_localizedTitle;
    return r0;
}

-(void *)isoCurrencyCode {
    r0 = self->_isoCurrencyCode;
    return r0;
}

-(void)setIsoCurrencyCode:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isoCurrencyCode, arg2);
    return;
}

-(void *)localizedPrice {
    r0 = self->_localizedPrice;
    return r0;
}

-(void)setLocalizedPrice:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedPrice, arg2);
    return;
}

-(void *)localizedDescription {
    r0 = self->_localizedDescription;
    return r0;
}

-(void)setLocalizedDescription:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedDescription, arg2);
    return;
}

-(void *)productType {
    r0 = self->_productType;
    return r0;
}

-(void)setProductType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productType, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_productType, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedPrice, 0x0);
    objc_storeStrong((int64_t *)&self->_isoCurrencyCode, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedTitle, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedPriceString, 0x0);
    objc_storeStrong((int64_t *)&self->_productId, 0x0);
    return;
}

@end