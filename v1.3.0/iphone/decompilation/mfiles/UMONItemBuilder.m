@implementation UMONItemBuilder

-(void *)productId {
    r0 = self->_productId;
    return r0;
}

-(double)quantity {
    r0 = self;
    return r0;
}

-(void)setProductId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productId, arg2);
    return;
}

-(void)setQuantity:(double)arg2 {
    self->_quantity = d0;
    return;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_type, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_productId, 0x0);
    return;
}

@end