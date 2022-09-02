@implementation UPURTransactionDetails

-(void *)getJSONDictionary {
    r31 = r31 - 0x130;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r0 = [self productId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_C0 = r0;
    if (r0 != 0x0) {
            r0 = [r23 productId];
            r29 = r29;
            r0 = [r0 retain];
            var_D0 = 0x0;
            var_CC = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_D0 = 0x1;
            var_CC = 0x0;
    }
    var_C8 = r0;
    r0 = [r23 transactionId];
    r29 = r29;
    r0 = [r0 retain];
    var_D8 = r0;
    if (r0 != 0x0) {
            r0 = [r23 transactionId];
            r29 = r29;
            r20 = [r0 retain];
            var_E8 = 0x0;
            var_E4 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r20 = [r0 retain];
            var_E8 = 0x1;
            var_E4 = 0x0;
    }
    r0 = [r23 receipt];
    r29 = r29;
    r0 = [r0 retain];
    var_F0 = r0;
    if (r0 != 0x0) {
            r0 = [r23 receipt];
            r29 = r29;
            r21 = [r0 retain];
            var_100 = 0x0;
            var_FC = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            var_100 = 0x1;
            var_FC = 0x0;
    }
    r0 = [r23 price];
    r29 = r29;
    r0 = [r0 retain];
    var_108 = r0;
    if (r0 != 0x0) {
            r0 = [r23 price];
            r29 = r29;
            r27 = [r0 retain];
            var_110 = 0x0;
            var_10C = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r27 = [r0 retain];
            var_110 = 0x1;
            var_10C = 0x0;
    }
    r0 = [r23 currency];
    r29 = r29;
    r28 = [r0 retain];
    var_E0 = r20;
    var_F8 = r21;
    if (r28 != 0x0) {
            r0 = [r23 currency];
            r29 = r29;
            r19 = [r0 retain];
            r24 = 0x0;
            r22 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r19 = [r0 retain];
            r22 = 0x0;
            r24 = 0x1;
    }
    r0 = [r23 extras];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r23 extras];
            r29 = r29;
            r21 = [r0 retain];
            r26 = 0x0;
            r25 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            r25 = 0x0;
            r26 = 0x1;
    }
    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r26 != 0x0) {
            [r21 release];
    }
    if (r25 != 0x0) {
            [r21 release];
    }
    [r20 release];
    if (r24 != 0x0) {
            [r19 release];
    }
    r20 = var_E0;
    r21 = var_F8;
    if (r22 != 0x0) {
            [r19 release];
    }
    [r28 release];
    if (var_110 != 0x0) {
            [r27 release];
    }
    r19 = var_C8;
    if (var_10C != 0x0) {
            [r27 release];
    }
    [var_108 release];
    if (var_100 != 0x0) {
            [r21 release];
    }
    if (var_FC != 0x0) {
            [r21 release];
    }
    [var_F0 release];
    if (var_E8 != 0x0) {
            [r20 release];
    }
    if (var_E4 != 0x0) {
            [r20 release];
    }
    [var_D8 release];
    if (var_D0 != 0x0) {
            [r19 release];
    }
    if (var_CC != 0x0) {
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [var_C0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithBuilder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[r19 productId] retain];
            [r20 setProductId:r21];
            [r21 release];
            r21 = [[r19 transactionId] retain];
            [r20 setTransactionId:r21];
            [r21 release];
            r21 = [[r19 receipt] retain];
            [r20 setReceipt:r21];
            [r21 release];
            r21 = [[r19 price] retain];
            [r20 setPrice:r21];
            [r21 release];
            r21 = [[r19 currency] retain];
            [r20 setCurrency:r21];
            [r21 release];
            r0 = [r19 extras];
            r0 = [r0 retain];
            r22 = [r0 mutableCopy];
            [r20 setExtras:r22];
            [r22 release];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)build:(void *)arg2 {
    (*([arg2 retain] + 0x10))(arg2, [[UPURTransactionDetailsBuilder alloc] init]);
    [r22 release];
    r19 = [[UPURTransactionDetails alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
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

-(void *)receipt {
    r0 = self->_receipt;
    return r0;
}

-(void *)transactionId {
    r0 = self->_transactionId;
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

-(void *)currency {
    r0 = self->_currency;
    return r0;
}

-(void)setPrice:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_price, arg2);
    return;
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