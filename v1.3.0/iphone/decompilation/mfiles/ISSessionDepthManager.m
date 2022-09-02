@implementation ISSessionDepthManager

+(void *)sharedManager {
    if (*qword_1011dac20 != -0x1) {
            dispatch_once(0x1011dac20, 0x100e8bd80);
    }
    r0 = *0x1011dac28;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_offerwallDepth = 0x1;
            r0->_rewardedVideoDepth = 0x1;
            r0->_bannerDepth = 0x1;
            r0->_interstitialDepth = 0x1;
    }
    return r0;
}

-(void)increaseSessionDepth:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 <= 0x3) {
            r8 = *(0x100e8bda0 + r2 * 0x8);
            r8 = sign_extend_64(*(int32_t *)r8);
            *(r0 + r8) = *(r0 + r8) + 0x1;
    }
    return;
}

-(unsigned long long)getSessionDepth:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 <= 0x3) {
            r0 = objc_msgSend(r0, **(0x100e8bdc0 + r2 * 0x8));
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

-(unsigned long long)offerwallDepth {
    r0 = self->_offerwallDepth;
    return r0;
}

-(void)setOfferwallDepth:(unsigned long long)arg2 {
    self->_offerwallDepth = arg2;
    return;
}

-(void)setRewardedVideoDepth:(unsigned long long)arg2 {
    self->_rewardedVideoDepth = arg2;
    return;
}

-(unsigned long long)rewardedVideoDepth {
    r0 = self->_rewardedVideoDepth;
    return r0;
}

-(unsigned long long)interstitialDepth {
    r0 = self->_interstitialDepth;
    return r0;
}

-(void)setInterstitialDepth:(unsigned long long)arg2 {
    self->_interstitialDepth = arg2;
    return;
}

-(unsigned long long)bannerDepth {
    r0 = self->_bannerDepth;
    return r0;
}

-(void)setBannerDepth:(unsigned long long)arg2 {
    self->_bannerDepth = arg2;
    return;
}

@end