@implementation UPURProduct

+(void *)build:(void *)arg2 {
    (*([arg2 retain] + 0x10))(arg2, [[UPURProductBuilder alloc] init]);
    [r22 release];
    r19 = [[UPURProduct alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)productId {
    r0 = self->_productId;
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
            r21 = [[r19 localizedPriceString] retain];
            [r20 setLocalizedPriceString:r21];
            [r21 release];
            r21 = [[r19 localizedTitle] retain];
            [r20 setLocalizedTitle:r21];
            [r21 release];
            r21 = [[r19 isoCurrencyCode] retain];
            [r20 setIsoCurrencyCode:r21];
            [r21 release];
            r21 = [[r19 localizedPrice] retain];
            [r20 setLocalizedPrice:r21];
            [r21 release];
            r21 = [[r19 localizedDescription] retain];
            [r20 setLocalizedDescription:r21];
            [r21 release];
            r21 = [[r19 productType] retain];
            [r20 setProductType:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setProductId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productId, arg2);
    return;
}

-(void *)localizedPriceString {
    r0 = self->_localizedPriceString;
    return r0;
}

-(void)setLocalizedPriceString:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedPriceString, arg2);
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

-(void)setLocalizedTitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedTitle, arg2);
    return;
}

-(void)setIsoCurrencyCode:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isoCurrencyCode, arg2);
    return;
}

-(void)setLocalizedPrice:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localizedPrice, arg2);
    return;
}

-(void *)localizedPrice {
    r0 = self->_localizedPrice;
    return r0;
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

-(void *)getProductJSONDictionary {
    r31 = r31 - 0x150;
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
    r24 = self;
    r0 = [self productId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_D0 = r0;
    if (r0 != 0x0) {
            r0 = [r24 productId];
            r29 = r29;
            r0 = [r0 retain];
            var_E0 = 0x0;
            var_DC = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_E0 = 0x1;
            var_DC = 0x0;
    }
    var_D8 = r0;
    r0 = [r24 localizedPriceString];
    r29 = r29;
    r0 = [r0 retain];
    var_E8 = r0;
    if (r0 != 0x0) {
            r0 = [r24 localizedPriceString];
            r29 = r29;
            r20 = [r0 retain];
            var_F8 = 0x0;
            var_F4 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r20 = [r0 retain];
            var_F8 = 0x1;
            var_F4 = 0x0;
    }
    r0 = [r24 localizedTitle];
    r29 = r29;
    r0 = [r0 retain];
    var_100 = r0;
    if (r0 != 0x0) {
            r0 = [r24 localizedTitle];
            r29 = r29;
            r21 = [r0 retain];
            var_110 = 0x0;
            var_10C = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r21 = [r0 retain];
            var_110 = 0x1;
            var_10C = 0x0;
    }
    r0 = [r24 isoCurrencyCode];
    r29 = r29;
    r0 = [r0 retain];
    var_118 = r0;
    if (r0 != 0x0) {
            r0 = [r24 isoCurrencyCode];
            r29 = r29;
            r22 = [r0 retain];
            var_128 = 0x0;
            var_124 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r22 = [r0 retain];
            var_128 = 0x1;
            var_124 = 0x0;
    }
    r0 = [r24 localizedPrice];
    r29 = r29;
    r0 = [r0 retain];
    var_130 = r0;
    var_F0 = r20;
    var_108 = r21;
    if (r0 != 0x0) {
            r0 = [r24 localizedPrice];
            r29 = r29;
            r19 = [r0 retain];
            var_138 = 0x0;
            var_134 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r19 = [r0 retain];
            var_138 = 0x1;
            var_134 = 0x0;
    }
    r0 = [r24 localizedDescription];
    r29 = r29;
    r20 = [r0 retain];
    var_120 = r22;
    if (r20 != 0x0) {
            r0 = [r24 localizedDescription];
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
    r0 = [r24 productType];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r24 productType];
            r29 = r29;
            r23 = [r0 retain];
            r28 = 0x0;
            r27 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r23 = [r0 retain];
            r27 = 0x0;
            r28 = 0x1;
    }
    r24 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r28 != 0x0) {
            [r23 release];
    }
    if (r27 != 0x0) {
            [r23 release];
    }
    [r22 release];
    if (r26 != 0x0) {
            [r21 release];
    }
    r22 = var_120;
    if (r25 != 0x0) {
            [r21 release];
    }
    [r20 release];
    if (var_138 != 0x0) {
            [r19 release];
    }
    r20 = var_F0;
    r21 = var_108;
    if (var_134 != 0x0) {
            [r19 release];
    }
    [var_130 release];
    if (var_128 != 0x0) {
            [r22 release];
    }
    r19 = var_D8;
    if (var_124 != 0x0) {
            [r22 release];
    }
    [var_118 release];
    if (var_110 != 0x0) {
            [r21 release];
    }
    if (var_10C != 0x0) {
            [r21 release];
    }
    [var_100 release];
    if (var_F8 != 0x0) {
            [r20 release];
    }
    if (var_F4 != 0x0) {
            [r20 release];
    }
    [var_E8 release];
    if (var_E0 != 0x0) {
            [r19 release];
    }
    if (var_DC != 0x0) {
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [var_D0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end