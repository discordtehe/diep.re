@implementation UMONItem

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
            [r20 setItemId:r21];
            [r21 release];
            [r19 quantity];
            [r20 setQuantity:r21];
            r21 = [[r19 type] retain];
            [r20 setType:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)build:(void *)arg2 {
    (*([arg2 retain] + 0x10))(arg2, [[UMONItemBuilder alloc] init]);
    [r22 release];
    r19 = [[UMONItem alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)productId {
    r0 = self->_productId;
    return r0;
}

-(double)quantity {
    r0 = self;
    return r0;
}

-(void)setQuantity:(double)arg2 {
    self->_quantity = d0;
    return;
}

-(void)setType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_type, arg2);
    return;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void *)itemId {
    r0 = self->_itemId;
    return r0;
}

-(void)setItemId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_itemId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_itemId, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_productId, 0x0);
    return;
}

@end