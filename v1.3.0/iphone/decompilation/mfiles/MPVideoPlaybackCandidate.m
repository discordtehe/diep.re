@implementation MPVideoPlaybackCandidate

-(void)setLinearAd:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)linearAd {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)errorURLs {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)impressionURLs {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setErrorURLs:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)setImpressionURLs:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(double)minimumViewabilityTimeInterval {
    r0 = self;
    return r0;
}

-(double)minimumFractionOfVideoVisible {
    r0 = self;
    return r0;
}

-(void)setViewabilityTrackingURL:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void)setMinimumViewabilityTimeInterval:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(void)setMinimumFractionOfVideoVisible:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

-(void *)viewabilityTrackingURL {
    r0 = *(self + 0x30);
    return r0;
}

@end