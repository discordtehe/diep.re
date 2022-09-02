@implementation GADFBAdapterDelegate

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithAdapter:(void *)arg2 connector:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_connector, r20);
            objc_storeWeak((int64_t *)&r21->_adapter, r19);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)adViewDidClick:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 respondsToSelector:@selector(adapterDidGetAdClick:)];
            [r19 adapterDidGetAdClick:r20];
            [r19 adapterWillPresentFullScreenModal:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)adView:(void *)arg2 didFailWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r21 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r20 adapter:r21 didFailAd:r19];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adViewDidLoad:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r21 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    r22 = (int64_t *)&self->_finalBannerSize;
    if (*(int128_t *)r22 == *(int128_t *)*_CGSizeZero) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r19 frame];
            [r19 setFrame:r2];
            *(int128_t *)r22 = *(int128_t *)r23;
    }
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r20 adapter:r21 didReceiveAdView:r19];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adViewDidFinishHandlingClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 adapterDidDismissFullScreenModal:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)interstitialAdDidClick:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            if ([r19 respondsToSelector:@selector(adapterDidGetAdClick:)] != 0x0) {
                    [r19 adapterDidGetAdClick:r20];
            }
            [r19 adapterWillLeaveApplication:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialAdWillLogImpression:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 adapterWillPresentInterstitial:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialAdDidClose:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 adapterDidDismissInterstitial:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialAdWillClose:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 adapterWillDismissInterstitial:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setFinalBannerSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_finalBannerSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGSize)finalBannerSize {
    r0 = self;
    return r0;
}

-(void)interstitialAdDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 respondsToSelector:@selector(adapterDidReceiveInterstitial:)];
            [r19 adapterDidReceiveInterstitial:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialAd:(void *)arg2 didFailWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r21 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r20 adapter:r21 didFailAd:r19];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adapter);
    objc_destroyWeak((int64_t *)&self->_connector);
    return;
}

@end