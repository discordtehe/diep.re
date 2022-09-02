@implementation UnityAdsInstanceMediationSettings

-(void)setUserIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end