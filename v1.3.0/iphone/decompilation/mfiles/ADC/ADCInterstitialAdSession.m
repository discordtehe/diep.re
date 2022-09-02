@implementation ADCInterstitialAdSession

-(void *)adID {
    r0 = [self interstitialAd];
    r0 = [r0 retain];
    r20 = [[r0 adID] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)creativeID {
    r0 = [self interstitialAd];
    r0 = [r0 retain];
    r20 = [[r0 creativeID] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)pollViewability {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self lastViewabilityUpdate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSinceNow];
    [r0 release];
    if (d8 <= *0x100ba2ab0) {
            r20 = [[AdColony sharedInstance] retain];
            r21 = [[r19 identifier] retain];
            r22 = [[r20 getSession:r21] retain];
            [r21 release];
            [r20 release];
            r0 = [r22 viewabilityMonitor];
            r0 = [r0 retain];
            [r0 checkCurrentViewablePercentage];
            [r0 release];
            r20 = [[NSDate date] retain];
            [r19 setLastViewabilityUpdate:r20];
            [r20 release];
            [r22 release];
    }
    return;
}

-(void *)interstitialAd {
    r0 = self->_interstitialAd;
    return r0;
}

-(void *)avidViewabilityMonitor {
    r0 = self->_avidViewabilityMonitor;
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialAd, arg2);
    return;
}

-(void)setAvidViewabilityMonitor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_avidViewabilityMonitor, arg2);
    return;
}

-(void *)requestSuccess {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestSuccess)), 0x0);
    return r0;
}

-(void)setRequestSuccess:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)requestFailure {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestFailure)), 0x0);
    return r0;
}

-(void)setRequestFailure:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestFailure, 0x0);
    objc_storeStrong((int64_t *)&self->_requestSuccess, 0x0);
    objc_storeStrong((int64_t *)&self->_avidViewabilityMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    return;
}

@end