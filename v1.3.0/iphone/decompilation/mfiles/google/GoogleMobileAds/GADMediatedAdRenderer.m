@implementation GADMediatedAdRenderer

-(void *)mainAdapterClass {
    sub_1007ce06c(0x0, @"Must never be called. Placeholder.");
    return 0x0;
}

-(void)dealloc {
    [self->_adapter stopBeingDelegate];
    [[&var_20 super] dealloc];
    return;
}

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    return;
}

-(void *)publisherId {
    r0 = [self credentials];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)credentials {
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a08];
    return r0;
}

-(bool)testMode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a30];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r0 = r20->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r20 = [r0 testModeEnabled];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)networkExtras {
    r20 = [self->_adapter class];
    r0 = self->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r20 = [[r0 networkExtrasForAdapterClass:r20] retain];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)childDirectedTreatment {
    r0 = self->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r20 = [[r0 targeting] retain];
    r21 = [sub_1007dab88() retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)maxAdContentRating {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringForKey:*0x100e9b9f0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r0 = [GADMobileAds sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 requestConfiguration];
            r0 = [r0 retain];
            r20 = [[r0 maxAdContentRating] retain];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)underAgeOfConsent {
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 requestConfiguration];
    r0 = [r0 retain];
    r21 = [[r0 underAgeOfConsent] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(long long)userGender {
    r0 = self->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r21 = [r0 gender];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)userBirthday {
    r0 = self->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r21 = [[r0 birthday] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)userHasLocation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = sub_1008b6e44();
    if (r0 != 0x0) {
            r0 = r19->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 location];
            r0 = [r0 retain];
            r22 = [r0 precise];
            [r0 release];
            [r20 release];
            [r19 release];
            r0 = r22;
    }
    return r0;
}

-(double)userLatitude {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self userHasLocation];
    if (r0 != 0x0) {
            r0 = r19->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 latitude];
            [r0 release];
            [r20 release];
            r0 = [r19 release];
    }
    return r0;
}

-(double)userLongitude {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self userHasLocation];
    if (r0 != 0x0) {
            r0 = r19->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 longitude];
            [r0 release];
            [r20 release];
            r0 = [r19 release];
    }
    return r0;
}

-(double)userLocationAccuracyInMeters {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self userHasLocation];
    if (r0 != 0x0) {
            r0 = r19->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 accuracy];
            [r0 release];
            [r20 release];
            r0 = [r19 release];
    }
    return r0;
}

-(void *)userLocationDescription {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (sub_1008b6e44() != 0x0) {
            r0 = r19->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 location];
            r0 = [r0 retain];
            r19 = [[r0 locationDescription] retain];
            [r0 release];
            [r21 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)userKeywords {
    r0 = self->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r21 = [[r0 keywords] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(float)adVolume {
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    [r0 applicationVolume];
    sub_1008080bc();
    r0 = [r19 release];
    return r0;
}

-(void)adapter:(void *)arg2 didFailAd:(void *)arg3 {
    return;
}

-(bool)adMuted {
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 applicationMuted];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)viewControllerForPresentingModalView {
    return 0x0;
}

-(void)adapterDidReceiveInterstitial:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling interstitial callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapterWillPresentInterstitial:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling interstitial callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapterWillDismissInterstitial:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling interstitial callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapterDidDismissInterstitial:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling interstitial callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapter:(void *)arg2 didReceiveMediatedNativeAd:(void *)arg3 {
    [arg2 retain];
    [self class];
    sub_1007ce06c(0x0, @"Adapter calling native callback. Adapter: %@, Renderer: %@.");
    [r20 release];
    return;
}

-(void)adapter:(void *)arg2 didReceiveAdView:(void *)arg3 {
    [arg2 retain];
    [self class];
    sub_1007ce06c(0x0, @"Adapter calling banner callback. Adapter: %@, Renderer: %@.");
    [r20 release];
    return;
}

-(void)adapter:(void *)arg2 didReceiveMediatedUnifiedNativeAd:(void *)arg3 {
    [arg2 retain];
    [self class];
    sub_1007ce06c(0x0, @"Adapter calling native callback. Adapter: %@, Renderer: %@.");
    [r20 release];
    return;
}

-(void)adapterWillPresentFullScreenModal:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling banner callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapterWillDismissFullScreenModal:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling banner callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapterDidGetAdClick:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling didGetAdClick. Adapter : %@, Renderer: %@");
    [r21 release];
    return;
}

-(void)adapterDidDismissFullScreenModal:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling banner callback. Adapter: %@, Renderer: %@.");
    [r21 release];
    return;
}

-(void)adapterWillLeaveApplication:(void *)arg2 {
    r20 = @selector(class);
    [arg2 retain];
    objc_msgSend(self, r20);
    sub_1007ce06c(0x0, @"Adapter calling willLeaveApplication. Adapter : %@, Renderer: %@");
    [r21 release];
    return;
}

-(void)adapter:(void *)arg2 didReceiveInterstitial:(void *)arg3 {
    r0 = [arg2 retain];
    [NSStringFromClass([r0 class]) retain];
    sub_1007ce06c(0x0, @"Mediation adapter %@ is using deprecated API %s");
    [r21 release];
    [self adapterDidReceiveInterstitial:r20];
    [r20 release];
    return;
}

-(void)adapter:(void *)arg2 didFailInterstitial:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    [NSStringFromClass([r21 class]) retain];
    sub_1007ce06c(0x0, @"Mediation adapter %@ is using deprecated API %s");
    [r22 release];
    [self adapter:r21 didFailAd:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_transaction, 0x0);
    return;
}

-(void)adapter:(void *)arg2 clickDidOccurInBanner:(void *)arg3 {
    r0 = [arg2 retain];
    [NSStringFromClass([r0 class]) retain];
    sub_1007ce06c(0x0, @"Mediation adapter %@ is using deprecated API %s");
    [r21 release];
    [self adapterDidGetAdClick:r20];
    [r20 release];
    return;
}

@end