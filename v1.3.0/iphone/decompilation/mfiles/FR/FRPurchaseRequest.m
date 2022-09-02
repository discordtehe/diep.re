@implementation FRPurchaseRequest

+(void *)objectWithDictionary:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[FRPurchaseRequest alloc] initWithDictionary:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)campaignId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_campaignId)), 0x1);
    return r0;
}

-(void)setCampaignId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)productId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_productId)), 0x1);
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100923f90;

loc_100923c74:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100923e04;

loc_100923ca0:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_100923d94;

loc_100923ce8:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100923da8;

loc_100923d34:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100923dc8;

loc_100923e04:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100923f90;

loc_100923e28:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_100923f1c;

loc_100923e70:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100923f34;

loc_100923ebc:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100923f54;

loc_100923f90:
    [r19 release];
    r0 = r20;
    return r0;

loc_100923f54:
    r21 = [[r19 valueForKey:r2] retain];
    [r20 setProductId:r21];
    r0 = r21;
    goto loc_100923f8c;

loc_100923f8c:
    [r0 release];
    goto loc_100923f90;

loc_100923f34:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100923f54;

loc_100923f1c:
    [r23 release];
    [r23 release];
    r0 = r22;
    goto loc_100923f8c;

loc_100923dc8:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r20 setCampaignId:r22];
    goto loc_100923dfc;

loc_100923dfc:
    [r22 release];
    goto loc_100923e04;

loc_100923da8:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100923dc8;

loc_100923d94:
    [r23 release];
    [r23 release];
    goto loc_100923dfc;
}

-(void)setProductId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_productId, 0x0);
    objc_storeStrong((int64_t *)&self->_campaignId, 0x0);
    return;
}

@end