@implementation MPRewardedVideoReward

-(void *)initWithCurrencyAmount:(void *)arg2 {
    r0 = [self initWithCurrencyType:@"MPMoPubRewardedVideoRewardCurrencyTypeUnspecified" amount:arg2];
    return r0;
}

-(void *)initWithCurrencyType:(void *)arg2 amount:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = [arg2 retain];
    r22 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r23 + 0x8, r21);
            objc_storeStrong(r23 + 0x10, r20);
    }
    [r22 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void *)description {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self amount];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_10048fae0;

loc_10048fa44:
    r0 = [r20 currencyType];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    if (r0 == 0x0) goto loc_10048faf0;

loc_10048fa74:
    r19 = [[r20 amount] retain];
    r21 = [[r20 currencyType] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    goto loc_10048fae4;

loc_10048fae4:
    [r19 release];
    goto loc_10048faf4;

loc_10048faf4:
    r0 = [r20 autorelease];
    return r0;

loc_10048faf0:
    r20 = 0x0;
    goto loc_10048faf4;

loc_10048fae0:
    r20 = 0x0;
    goto loc_10048fae4;
}

-(void *)currencyType {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)amount {
    r0 = *(self + 0x10);
    return r0;
}

@end