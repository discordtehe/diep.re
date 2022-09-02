@implementation GADMAdapterIronSource

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    objc_storeWeak((int64_t *)&r20->_interstitialConnector, r19);
                    objc_storeStrong((int64_t *)&r20->_instanceID, @"0");
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(void *)adapterVersion {
    objc_retainAutorelease(@"6.8.3.0");
    return @"6.8.3.0";
}

+(void *)networkExtrasClass {
    return 0x0;
}

-(void)stopBeingDelegate {
    return;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString stringWithFormat:@"Present IronSource interstitial ad for instance %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = [ISMediationManager sharedManager];
    r0 = [r0 retain];
    [r0 presentInterstitialAdFromViewController:r22 delegate:self];
    [r22 release];
    [r0 release];
    return;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self showBannersNotSupportedError];
    return;
}

-(bool)isBannerAnimationOK:(long long)arg2 {
    [self showBannersNotSupportedError];
    return 0x1;
}

-(void)getInterstitial {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r20->_interstitialConnector);
    r19 = r0;
    r21 = [[r0 credentials] retain];
    [r20 setIsLogEnabled:[r19 testMode]];
    r22 = @"";
    [r22 retain];
    r0 = [r21 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            [@"" release];
    }
    r0 = [r21 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_instanceID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    if ([GADMAdapterIronSourceUtils isEmpty:r22] != 0x0) {
            r23 = [[GADMAdapterIronSourceUtils createErrorWith:@"IronSource Adapter failed to get interstitial" andReason:@"'appKey' parameter is missing" andSuggestion:@"make sure that 'appKey' server parameter is added"] retain];
            [r19 adapter:r20 didFailAd:r23];
    }
    else {
            r23 = [[ISMediationManager sharedManager] retain];
            r24 = [[NSSet setWithObject:@"interstitial"] retain];
            [r23 initIronSourceSDKWithAppKey:r22 forAdUnits:r24];
            [r24 release];
            [r23 requestInterstitialAdWithDelegate:r20];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)showBannersNotSupportedError {
    r20 = [[GADMAdapterIronSourceUtils createErrorWith:@"IronSource Adapter doesn't support banner ads" andReason:r3 andSuggestion:@""] retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    [r0 adapter:self didFailAd:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)interstitialDidLoad:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r20 = [[NSString stringWithFormat:@"IronSource interstitial ad did load for instance %@"] retain];
    [r19 onLog:r20];
    [r20 release];
    r20 = [r19->_instanceID isEqualToString:r2];
    [r22 release];
    if (r20 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_interstitialConnector);
            [r0 adapterDidReceiveInterstitial:r19];
            [r0 release];
    }
    return;
}

-(void)interstitialDidOpen:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"IronSource interstitial ad did open for instance %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    [r0 adapterWillPresentInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 instanceId:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r23 = [[r19 localizedDescription] retain];
    r0 = [NSString stringWithFormat:@"IronSource interstitial ad did fail to load with error: %@, for instance: %@"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r20 onLog:r21];
    r22 = [r20->_instanceID isEqualToString:r2];
    [r24 release];
    if (r22 != 0x0) {
            if (r19 == 0x0) {
                    r22 = [[GADMAdapterIronSourceUtils createErrorWith:@"Network load error" andReason:@"IronSource network failed to load" andSuggestion:@"Check that your network configuration are according to the documentation."] retain];
                    [r19 release];
                    r19 = r22;
            }
            r0 = objc_loadWeakRetained((int64_t *)&r20->_interstitialConnector);
            [r0 adapter:r20 didFailAd:r19];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidClose:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"IronSource interstitial ad did close for instance %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    [r0 adapterWillDismissInterstitial:self];
    [r0 adapterDidDismissInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidShow:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"IronSource interstitial ad did show for instance %@"] retain];
    [self onLog:r20];
    [r20 release];
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = [[r20 localizedDescription] retain];
    r0 = [NSString stringWithFormat:@"IronSource interstitial ad did fail to show with error %@, for instance: %@"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    [r19 onLog:r22];
    [r22 release];
    [r23 release];
    if (r20 == 0x0) {
            r21 = [[GADMAdapterIronSourceUtils createErrorWith:@"Interstitial show error" andReason:@"IronSource network failed to show an interstitial ad" andSuggestion:@"Please check that your configurations are according to the documentation."] retain];
            [r20 release];
            r20 = r21;
    }
    r0 = objc_loadWeakRetained((int64_t *)&r19->_interstitialConnector);
    [r0 adapter:r19 didFailAd:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)didClickInterstitial:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"Did click IronSource interstitial ad for instance %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    [r0 adapterDidGetAdClick:self];
    [r0 adapterWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void)onLog:(void *)arg2 {
    r2 = arg2;
    r1 = _cmd;
    if (*(int8_t *)(int64_t *)&self->_isLogEnabled != 0x0) {
            NSLog(@"IronSourceAdapter: %@", r1);
    }
    return;
}

-(void)didFailToLoadAdWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    [r0 adapter:self didFailAd:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)getInstanceID {
    r0 = self->_instanceID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isLogEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isLogEnabled;
    return r0;
}

-(void)setIsLogEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLogEnabled = arg2;
    return;
}

-(void)setInstanceID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_instanceID, arg2);
    return;
}

-(void *)instanceID {
    r0 = self->_instanceID;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instanceID, 0x0);
    objc_destroyWeak((int64_t *)&self->_interstitialConnector);
    return;
}

@end