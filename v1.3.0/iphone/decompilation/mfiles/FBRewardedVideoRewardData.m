@implementation FBRewardedVideoRewardData

-(void *)initWithUserID:(void *)arg2 withCurrency:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = arg2;
    [arg2 retain];
    [r20 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_userID));
            [r19 retain];
            r0 = *(r21 + r22);
            *(r21 + r22) = r19;
            [r0 release];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_currency));
            [r20 retain];
            r0 = *(r21 + r22);
            *(r21 + r22) = r20;
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    r0 = [self initWithUserID:0x0 withCurrency:0x0];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currency, 0x0);
    objc_storeStrong((int64_t *)&self->_userID, 0x0);
    return;
}

-(void *)currency {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currency)), 0x0);
    return r0;
}

-(void *)userID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userID)), 0x0);
    return r0;
}

@end