@implementation GADFBInterstitialAd

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 adapter:(void *)arg3 {
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
            objc_storeWeak((int64_t *)&r21->_adapter, r20);
            objc_storeWeak((int64_t *)&r21->_connector, r19);
            r0 = [GADFBAdapterDelegate alloc];
            r0 = [r0 initWithAdapter:r20 connector:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegate));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)stopBeingDelegate {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegate));
    r8 = *(self + r9);
    *(self + r9) = 0x0;
    [r8 release];
    return;
}

-(void)getInterstitial {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r22->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&r22->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_10059fd10;

loc_10059fb2c:
    r0 = [r19 publisherId];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10059fc40;

loc_10059fb4c:
    r0 = [FBInterstitialAd alloc];
    r0 = [r0 initWithPlacementID:r21];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAd));
    r8 = *(r22 + r26);
    *(r22 + r26) = r0;
    [r8 release];
    r0 = *(r22 + r26);
    if (r0 == 0x0) goto loc_10059fc74;

loc_10059fb90:
    [r0 setDelegate:r22->_adapterDelegate];
    r25 = [[GADRequest sdkVersion] retain];
    r24 = [[NSString stringWithFormat:@"GOOGLE_%@:%@"] retain];
    [FBAdSettings setMediationService:r24];
    [r24 release];
    [r25 release];
    [*(r22 + r26) loadAd];
    goto loc_10059fd08;

loc_10059fd08:
    [r21 release];
    goto loc_10059fd10;

loc_10059fd10:
    [r20 release];
    [r19 release];
    return;

loc_10059fc74:
    r23 = [NSStringFromClass([FBInterstitialAd class]) retain];
    r22 = [[NSString stringWithFormat:@"%@ failed to initialize."] retain];
    [r23 release];
    r23 = [sub_1005a6b3c(r22) retain];
    [r19 adapter:r20 didFailAd:r23];
    [r23 release];
    goto loc_10059fd00;

loc_10059fd00:
    [r22 release];
    goto loc_10059fd08;

loc_10059fc40:
    r22 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
    [r19 adapter:r20 didFailAd:r22];
    goto loc_10059fd00;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    [self->_interstitialAd showAdFromRootViewController:arg2];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_adapter);
    objc_destroyWeak((int64_t *)&self->_connector);
    return;
}

@end