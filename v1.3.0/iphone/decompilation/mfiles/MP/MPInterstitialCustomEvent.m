@implementation MPInterstitialCustomEvent

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 {
    return;
}

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
    r20 = [arg2 retain];
    [self requestInterstitialWithCustomEventInfo:r20];
    [r20 release];
    return;
}

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x1;
}

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLocalExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)localExtras {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end