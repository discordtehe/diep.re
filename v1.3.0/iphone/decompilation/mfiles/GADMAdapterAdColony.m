@implementation GADMAdapterAdColony

+(void *)mainAdapterClass {
    r0 = [GADMediationAdapterAdColony class];
    return r0;
}

+(void *)adapterVersion {
    r0 = objc_retainAutoreleaseReturnValue(*0x100ea0af0);
    return r0;
}

+(void *)networkExtrasClass {
    r0 = [GADMAdapterAdColonyExtras class];
    return r0;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setConnector:r19];
            r0 = [r19 credentials];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:*0x100ea0af8] retain];
            [r20 setAppId:r22];
            [r22 release];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)getInterstitial {
    r21 = [[self connector] retain];
    [GADMAdapterAdColonyHelper setupZoneFromConnector:r21 callback:&var_48];
    [r21 release];
    return;
}

-(void)getInterstitialFromZoneId:(void *)arg2 withConnector:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    [self setAd:0x0];
    objc_initWeak(&saved_fp - 0x58, self);
    [[GADMAdapterAdColonyHelper getAdOptionsFromConnector:r23] retain];
    objc_copyWeak(&var_90 + 0x30, &saved_fp - 0x58);
    [r23 retain];
    [r21 retain];
    objc_copyWeak(&var_B8 + 0x20, &saved_fp - 0x58);
    [AdColony requestInterstitialInZone:r21 options:r20 success:&var_90 failure:&var_B8];
    objc_destroyWeak(&var_B8 + 0x20);
    [r21 release];
    [r23 release];
    objc_destroyWeak(&var_90 + 0x30);
    [r20 release];
    objc_destroyWeak(&saved_fp - 0x58);
    [r23 release];
    [r21 release];
    return;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    r31 = r31 - 0x120;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = [arg2 retain];
    objc_initWeak(&saved_fp - 0x68, self);
    r0 = [self ad];
    r19 = &var_90 + 0x20;
    [r0 retain];
    objc_copyWeak(r19, &saved_fp - 0x68);
    [r21 setOpen:&var_90];
    [r21 release];
    r0 = [self ad];
    r21 = &var_B8 + 0x20;
    [r0 retain];
    objc_copyWeak(r21, &saved_fp - 0x68);
    [r24 setClick:&var_B8];
    [r24 release];
    r0 = [self ad];
    r24 = &var_E0 + 0x20;
    [r0 retain];
    objc_copyWeak(r24, &saved_fp - 0x68);
    [r25 setClose:&var_E0];
    [r25 release];
    r0 = [self ad];
    r25 = &var_108 + 0x20;
    [r0 retain];
    objc_copyWeak(r25, &saved_fp - 0x68);
    [r26 setLeftApplication:&var_108];
    [r26 release];
    r0 = [self ad];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 showWithPresentingViewController:r20];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            NSLog(@"AdColonyAdapter [Info] : Failed to show ad.");
    }
    objc_destroyWeak(r25);
    objc_destroyWeak(r24);
    objc_destroyWeak(r21);
    objc_destroyWeak(r19);
    objc_destroyWeak(r29 - 0x68);
    [r20 release];
    return;
}

-(bool)isBannerAnimationOK:(long long)arg2 {
    return 0x0;
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
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:*0x100e92df8 code:0x0 userInfo:r22] retain];
    [r22 release];
    r0 = [self connector];
    r0 = [r0 retain];
    [r0 adapter:self didFailAd:r20];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)stopBeingDelegate {
    return;
}

-(void *)ad {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_ad)), 0x1);
    return r0;
}

-(void)setAd:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)appId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appId)), 0x1);
    return r0;
}

-(void)setAppId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)currentZone {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currentZone)), 0x1);
    return r0;
}

-(void)setCurrentZone:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)zones {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_zones)), 0x1);
    return r0;
}

-(void)setZones:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)connector {
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setConnector:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_connector, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_connector);
    objc_storeStrong((int64_t *)&self->_zones, 0x0);
    objc_storeStrong((int64_t *)&self->_currentZone, 0x0);
    objc_storeStrong((int64_t *)&self->_appId, 0x0);
    objc_storeStrong((int64_t *)&self->_ad, 0x0);
    return;
}

@end