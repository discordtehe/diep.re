@implementation GADMAdapterVungleInterstitial

+(void *)adapterVersion {
    objc_retainAutorelease(@"6.3.2.3");
    return @"6.3.2.3";
}

+(void *)networkExtrasClass {
    r0 = [VungleAdNetworkExtras class];
    return r0;
}

-(void)dealloc {
    [self stopBeingDelegate];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setConnector:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r21] retain];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapter:self didFailAd:r20];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadInterstitialAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [VungleRouter sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 loadAd:r19->desiredPlacement withDelegate:r19] retain];
    [r0 release];
    if (r20 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_connector);
            [r0 adapter:r19 didFailAd:r20];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void)stopBeingDelegate {
    objc_storeWeak((int64_t *)&self->_connector, 0x0);
    return;
}

-(bool)isBannerAnimationOK:(long long)arg2 {
    return 0x1;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r22 = [[VungleRouter sharedInstance] retain];
    r23 = [[r20 networkExtras] retain];
    r24 = [r22 playAd:r21 delegate:r19 extras:r23];
    [r21 release];
    [r23 release];
    [r22 release];
    if ((r24 & 0x1) == 0x0) {
            [r20 adapterDidDismissInterstitial:r19];
    }
    *(int8_t *)0x1011e5f89 = 0x1;
    [r20 release];
    return;
}

-(void)getInterstitial {
    r31 = r31 - 0x80;
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
    r20 = self;
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r19 = r0;
    r23 = [[r0 credentials] retain];
    r24 = [[r19 networkExtras] retain];
    r0 = [GADMAdapterVungleUtils findPlacement:r23 networkExtras:r24];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(desiredPlacement));
    r8 = *(r20 + r21);
    *(r20 + r21) = r0;
    [r8 release];
    [r24 release];
    [r23 release];
    if (*(r20 + r21) != 0x0) {
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 isInitialized] & 0x1) != 0x0) {
                    [r20 loadInterstitialAd];
            }
            else {
                    r24 = [[r19 credentials] retain];
                    r0 = [GADMAdapterVungleUtils findAppID:r24];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    if (r22 != 0x0) {
                            objc_initWeak(&stack[-128], r20);
                            r20 = [[VungleRouter sharedInstance] retain];
                            r0 = objc_loadWeakRetained(&stack[-128]);
                            [r20 initWithAppId:r22 delegate:r0];
                            [r0 release];
                            [r20 release];
                            objc_destroyWeak(&stack[-128]);
                    }
                    else {
                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                            r23 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r24] retain];
                            [r24 release];
                            [r19 adapter:r20 didFailAd:r23];
                            [r23 release];
                    }
                    [r22 release];
            }
            r0 = r21;
    }
    else {
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r21 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r22] retain];
            [r19 adapter:r20 didFailAd:r21];
            [r21 release];
            r0 = r22;
    }
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)initialized:(bool)arg2 error:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    if ((arg2 & 0x1) != 0x0 && r20->desiredPlacement != 0x0) {
            [r20 loadInterstitialAd];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_connector);
            [r0 adapter:r20 didFailAd:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)adAvailable {
    r0 = self;
    if (*(int8_t *)byte_1011e5f89 == 0x0) {
            r19 = r0;
            r0 = objc_loadWeakRetained((int64_t *)&r0->_connector);
            [r0 adapterDidReceiveInterstitial:r19];
            [r0 release];
    }
    return;
}

-(void)willShowAd {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterWillPresentInterstitial:self];
    [r0 release];
    return;
}

-(void)adNotAvailable:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapter:self didFailAd:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)willCloseAd:(bool)arg2 didDownload:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&self->_connector);
    if (arg3 != 0x0) {
            [r20 adapterDidGetAdClick:r19];
            [r20 adapterWillLeaveApplication:r19];
    }
    [r20 adapterWillDismissInterstitial:r19];
    *(int8_t *)0x1011e5f89 = 0x0;
    [r20 release];
    return;
}

-(void)didCloseAd:(bool)arg2 didDownload:(bool)arg3 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapterDidDismissInterstitial:self];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(desiredPlacement));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void *)connector {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)desiredPlacement {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(desiredPlacement)), 0x1);
    return r0;
}

-(void)setConnector:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_connector, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_connector);
    objc_storeStrong((int64_t *)&self->desiredPlacement, 0x0);
    return;
}

@end