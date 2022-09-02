@implementation MCPromoDataAccessIndirect

-(void *)getPropertyValue {
    return 0x0;
}

-(void *)resolveDataAccess {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->mConfig;
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009d8ac0;

loc_1009d8964:
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009d8ac0;

loc_1009d8978:
    r19 = r0;
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0 || [[r19 allKeys] containsObject:r2] == 0x0) goto loc_1009d8a00;

loc_1009d89d8:
    r0 = [MCPromoDataAccess getDataAccessFromConfiguration:r19];
    r0 = [r0 execute];
    goto loc_1009d8a8c;

loc_1009d8a8c:
    r2 = r0;
    if (r0 != 0x0) {
            r0 = [MCPromoDataAccess getDataAccessFromConfiguration:r2];
            r0 = [r0 execute];
    }
    else {
            r0 = 0x0;
    }
    return r0;

loc_1009d8a00:
    r21 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_1009d8a44;

loc_1009d8a24:
    r0 = [MCPromoIndirectManager sharedMCPromoIndirectManager];
    r1 = @selector(getIndirectForKey:);
    goto loc_1009d8a84;

loc_1009d8a84:
    r0 = objc_msgSend(r0, r1);
    goto loc_1009d8a8c;

loc_1009d8a44:
    r21 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_1009d8ac0;

loc_1009d8a68:
    r0 = [MCPromoIndirectManager sharedMCPromoIndirectManager];
    r1 = @selector(getIndirectForPath:);
    goto loc_1009d8a84;

loc_1009d8ac0:
    r0 = 0x0;
    return r0;
}

@end