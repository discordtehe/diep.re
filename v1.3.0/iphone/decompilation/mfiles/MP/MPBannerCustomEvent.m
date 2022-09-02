@implementation MPBannerCustomEvent

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 adMarkup:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r20 = [r2 retain];
    [self requestAdWithSize:r20 customEventInfo:r3];
    [r20 release];
    return;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

-(void)didDisplayAd {
    return;
}

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x1;
}

-(void)rotateToOrientation:(long long)arg2 {
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)localExtras {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setLocalExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

-(void)trackImpressionsIncludedInMarkup {
    return;
}

-(void)startViewabilityTracker {
    return;
}

@end