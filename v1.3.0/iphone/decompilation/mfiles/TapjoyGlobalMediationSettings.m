@implementation TapjoyGlobalMediationSettings

-(void *)sdkKey {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void)setSdkKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)connectFlags {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void)setConnectFlags:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end