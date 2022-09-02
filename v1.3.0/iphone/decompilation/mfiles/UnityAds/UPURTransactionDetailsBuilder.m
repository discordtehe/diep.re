@implementation UPURTransactionDetailsBuilder

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setExtras:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)putExtra:(void *)arg2 value:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = self;
    r20 = [arg2 retain];
    if (r19 != 0x0) {
            [r21 retain];
            r0 = [r19 extras];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)productId {
    r0 = self->_productId;
    return r0;
}

-(void)setProductId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productId, arg2);
    return;
}

-(void)setTransactionId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_transactionId, arg2);
    return;
}

-(void *)transactionId {
    r0 = self->_transactionId;
    return r0;
}

-(void *)receipt {
    r0 = self->_receipt;
    return r0;
}

-(void)setReceipt:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_receipt, arg2);
    return;
}

-(void *)price {
    r0 = self->_price;
    return r0;
}

-(void)setPrice:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_price, arg2);
    return;
}

-(void *)currency {
    r0 = self->_currency;
    return r0;
}

-(void)setCurrency:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currency, arg2);
    return;
}

-(void *)extras {
    r0 = self->_extras;
    return r0;
}

-(void)setExtras:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extras, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    objc_storeStrong((int64_t *)&self->_currency, 0x0);
    objc_storeStrong((int64_t *)&self->_price, 0x0);
    objc_storeStrong((int64_t *)&self->_receipt, 0x0);
    objc_storeStrong((int64_t *)&self->_transactionId, 0x0);
    objc_storeStrong((int64_t *)&self->_productId, 0x0);
    return;
}

@end