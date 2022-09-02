@implementation IronSourceAdapterConfiguration

-(void *)adapterVersion {
    return @"6.8.3.0.0";
}

-(void *)biddingToken {
    return 0x0;
}

-(void *)moPubNetworkName {
    return @"Ironsource";
}

-(void *)networkSdkVersion {
    r0 = [IronSource sdkVersion];
    return r0;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
    r3 = arg3;
    if (r3 != 0x0) {
            r2 = *(r3 + 0x10);
            (r2)(r3, 0x0, r2);
    }
    return;
}

@end