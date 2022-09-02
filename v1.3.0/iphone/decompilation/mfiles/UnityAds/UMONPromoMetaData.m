@implementation UMONPromoMetaData

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
            r21 = [[r19 impressionDate] retain];
            [r20 setImpressionDate:r21];
            [r21 release];
            [r19 offerDuration];
            [r20 setOfferDuration:r21];
            r21 = [[r19 premiumProduct] retain];
            [r20 setPremiumProduct:r21];
            [r21 release];
            r21 = [[r19 costs] retain];
            [r20 setCosts:r21];
            [r21 release];
            r21 = [[r19 payouts] retain];
            [r20 setPayouts:r21];
            [r21 release];
            r21 = [[r19 userInfo] retain];
            [r20 setUserInfo:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isExpired {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self timeRemaining];
    if (d0 < 0x0) {
            if (CPU_FLAGS & BE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isPremium {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self premiumProduct];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(double)timeRemaining {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self impressionDate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    r0 = [r19 offerDuration];
    v8 = v0;
    if (r21 != 0x0) {
            r21 = [[NSDate date] retain];
            r19 = [[r19 impressionDate] retain];
            [r21 timeIntervalSinceDate:r19];
            [r19 release];
            r0 = [r21 release];
    }
    return r0;
}

-(void *)cost {
    r0 = [self costs];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)payout {
    r0 = [self payouts];
    r0 = [r0 retain];
    r20 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)build:(void *)arg2 {
    (*([arg2 retain] + 0x10))(arg2, [[UMONPromoMetaDataBuilder alloc] init]);
    [r22 release];
    r19 = [[UMONPromoMetaData alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)impressionDate {
    r0 = self->_impressionDate;
    return r0;
}

-(void)setImpressionDate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_impressionDate, arg2);
    return;
}

-(double)offerDuration {
    r0 = self;
    return r0;
}

-(void)setOfferDuration:(double)arg2 {
    self->_offerDuration = d0;
    return;
}

-(void *)premiumProduct {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_premiumProduct)), 0x1);
    return r0;
}

-(void)setPremiumProduct:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)costs {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_costs)), 0x1);
    return r0;
}

-(void)setCosts:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)payouts {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_payouts)), 0x1);
    return r0;
}

-(void)setPayouts:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)userInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userInfo)), 0x1);
    return r0;
}

-(void)setUserInfo:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_payouts, 0x0);
    objc_storeStrong((int64_t *)&self->_costs, 0x0);
    objc_storeStrong((int64_t *)&self->_premiumProduct, 0x0);
    objc_storeStrong((int64_t *)&self->_impressionDate, 0x0);
    return;
}

@end