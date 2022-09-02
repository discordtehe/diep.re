@implementation FRRewardRequest

+(void *)objectWithDictionary:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[FRRewardRequest alloc] initWithDictionary:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)rewardId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardId)), 0x1);
    return r0;
}

-(void)setRewardId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x1);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(unsigned long long)quantity {
    r0 = self->_quantity;
    return r0;
}

-(void)setQuantity:(unsigned long long)arg2 {
    self->_quantity = arg2;
    return;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x1);
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
    if (r20 == 0x0) goto loc_100914010;

loc_1009139d8:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100913b68;

loc_100913a04:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_100913af8;

loc_100913a4c:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100913b0c;

loc_100913a98:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100913b2c;

loc_100913b68:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100913cf0;

loc_100913b8c:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_100913c80;

loc_100913bd4:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100913c94;

loc_100913c20:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100913cb4;

loc_100913cf0:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100913e84;

loc_100913d14:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_100913e08;

loc_100913d5c:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100913e1c;

loc_100913da8:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100913e3c;

loc_100913e84:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_100914010;

loc_100913ea8:
    r23 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 == r24) goto loc_100913f9c;

loc_100913ef0:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_100913fb4;

loc_100913f3c:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r27 != 0x0) goto loc_100913fd4;

loc_100914010:
    [r19 release];
    r0 = r20;
    return r0;

loc_100913fd4:
    r21 = [[r19 valueForKey:r2] retain];
    [r20 setToken:r21];
    r0 = r21;
    goto loc_10091400c;

loc_10091400c:
    [r0 release];
    goto loc_100914010;

loc_100913fb4:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100913fd4;

loc_100913f9c:
    [r23 release];
    [r23 release];
    r0 = r22;
    goto loc_10091400c;

loc_100913e3c:
    r2 = @"quantity";
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 intValue];
    asm { sxtw       x2, w0 };
    [r20 setQuantity:r2];
    goto loc_100913e7c;

loc_100913e7c:
    [r22 release];
    goto loc_100913e84;

loc_100913e1c:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100913e3c;

loc_100913e08:
    [r23 release];
    [r23 release];
    goto loc_100913e7c;

loc_100913cb4:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r20 setName:r22];
    goto loc_100913ce8;

loc_100913ce8:
    [r22 release];
    goto loc_100913cf0;

loc_100913c94:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100913cb4;

loc_100913c80:
    [r23 release];
    [r23 release];
    goto loc_100913ce8;

loc_100913b2c:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r20 setRewardId:r22];
    goto loc_100913b60;

loc_100913b60:
    [r22 release];
    goto loc_100913b68;

loc_100913b0c:
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    goto loc_100913b2c;

loc_100913af8:
    [r23 release];
    [r23 release];
    goto loc_100913b60;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardId, 0x0);
    return;
}

@end