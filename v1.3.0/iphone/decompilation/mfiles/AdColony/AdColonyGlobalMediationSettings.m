@implementation AdColonyGlobalMediationSettings

+(void)enableClientSideTestMode {
    [AdColonyController enableClientSideTestMode];
    return;
}

+(void)disableClientSideTestMode {
    [AdColonyController disableClientSideTestMode];
    return;
}

-(void *)customId {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void)setCustomId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end