@implementation GADServerSideVerificationOptions

-(void *)userIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userIdentifier)), 0x0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] alloc] init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_userIdentifier));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_customRewardString));
    r0 = *(self + r22);
    r0 = [r0 copy];
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r0 = r20;
    return r0;
}

-(void)setUserIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)customRewardString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_customRewardString)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customRewardString, 0x0);
    objc_storeStrong((int64_t *)&self->_userIdentifier, 0x0);
    return;
}

-(void)setCustomRewardString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end