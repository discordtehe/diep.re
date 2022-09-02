@implementation SSAProductParameters

-(void *)initWithAppKey:(void *)arg2 userId:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setAppKey:r19];
            [r21 setUserId:r2];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)appKey {
    r0 = self->_appKey;
    return r0;
}

-(void)setAppKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_appKey, arg2);
    return;
}

-(void *)userId {
    r0 = self->_userId;
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userId, 0x0);
    objc_storeStrong((int64_t *)&self->_appKey, 0x0);
    return;
}

@end