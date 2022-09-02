@implementation MPNativeAdRendererConfiguration

-(void *)rendererSettings {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setRendererSettings:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)supportedCustomEvents {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)rendererClass {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setRendererClass:(void *)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void)setSupportedCustomEvents:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

@end