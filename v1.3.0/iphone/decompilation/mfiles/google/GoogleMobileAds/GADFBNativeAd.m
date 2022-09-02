@implementation GADFBNativeAd

+(void)mediatedNativeAdDidRecordImpression:(void *)arg2 {
    return;
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
            r0 = dispatch_queue_create("fb-native-ad", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
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
    [self->_nativeAd setDelegate:0x0];
    [self->_mediaView setDelegate:0x0];
    return;
}

-(void *)mediatedNativeAdDelegate {
    r0 = self;
    return r0;
}

-(void)loadAdOptionsView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adOptionsView));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [FBAdOptionsView alloc];
            r0 = [r0 init];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            r20 = [[UIColor clearColor] retain];
            [*(r19 + r23) setBackgroundColor:r20];
            [r20 release];
            r21 = [[NSLayoutConstraint constraintWithItem:*(r19 + r23) attribute:0x8 relatedBy:0x0 toItem:0x0 attribute:0x0 multiplier:r7 constant:var_30] retain];
            r20 = [[NSLayoutConstraint constraintWithItem:*(r19 + r23) attribute:0x7 relatedBy:0x0 toItem:0x0 attribute:0x0 multiplier:r7 constant:var_30] retain];
            [*(r19 + r23) addConstraint:r21];
            [*(r19 + r23) addConstraint:r20];
            [*(r19 + r23) updateConstraints];
            [r20 release];
            [r21 release];
            r0 = *(r19 + r23);
    }
    [r0 setNativeAd:r19->_nativeAd];
    return;
}

-(void *)extraAssets {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)getNativeAdWithAdTypes:(void *)arg2 options:(void *)arg3 {
    r31 = r31 - 0x170;
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
    r29 = &saved_fp;
    r23 = self;
    r22 = [arg2 retain];
    r27 = [arg3 retain];
    r28 = objc_loadWeakRetained((int64_t *)&r23->_connector);
    r25 = objc_loadWeakRetained((int64_t *)&r23->_adapter);
    if ([r22 containsObject:r2] == 0x0 || ([r22 containsObject:r2] & 0x1) == 0x0) goto loc_1005a5418;

loc_1005a51cc:
    var_130 = r22;
    var_128 = r25;
    var_140 = r28;
    var_138 = r27;
    var_108 = q0;
    r0 = [r27 retain];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 == 0x0) goto loc_1005a52e8;

loc_1005a5218:
    r21 = *var_108;
    goto loc_1005a5228;

loc_1005a5228:
    r19 = 0x0;
    goto loc_1005a523c;

loc_1005a523c:
    if (*var_108 != r21) {
            objc_enumerationMutation(r24);
    }
    r27 = @selector(class);
    r20 = *(var_110 + r19 * 0x8);
    objc_msgSend(@class(GADNativeAdImageAdLoaderOptions), r27);
    if (objc_msgSend(r20, r28) == 0x0) goto loc_1005a5288;

loc_1005a527c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdImageAdLoaderOptions));
    goto loc_1005a52b0;

loc_1005a52b0:
    objc_storeStrong(r23 + r8, r20);
    goto loc_1005a52bc;

loc_1005a52bc:
    r19 = r19 + 0x1;
    if (r19 < r26) goto loc_1005a523c;

loc_1005a52c8:
    r26 = objc_msgSend(r24, var_120);
    if (r26 != 0x0) goto loc_1005a5228;

loc_1005a52e8:
    [r24 release];
    r27 = var_138;
    r22 = var_130;
    r28 = var_140;
    r25 = var_128;
    if (r28 == 0x0 || r25 == 0x0) goto loc_1005a5450;

loc_1005a5304:
    r0 = [r28 publisherId];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1005a54a8;

loc_1005a5324:
    r0 = [FBNativeAd alloc];
    r0 = [r0 initWithPlacementID:r24];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    r8 = *(r23 + r19);
    *(r23 + r19) = r0;
    [r8 release];
    r0 = *(r23 + r19);
    if (r0 == 0x0) goto loc_1005a54dc;

loc_1005a536c:
    [r0 setDelegate:r23];
    r26 = [[GADRequest sdkVersion] retain];
    r25 = [[NSString stringWithFormat:@"GOOGLE_%@:%@"] retain];
    [FBAdSettings setMediationService:r25];
    r0 = r25;
    r25 = var_128;
    [r0 release];
    [r26 release];
    [*(r23 + r19) loadAd];
    goto loc_1005a5574;

loc_1005a5574:
    r0 = r24;
    goto loc_1005a544c;

loc_1005a544c:
    [r0 release];
    goto loc_1005a5450;

loc_1005a5450:
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r28 release];
    [r27 release];
    [r22 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1005a54dc:
    r20 = [NSString alloc];
    r23 = [NSStringFromClass([FBNativeAd class]) retain];
    r20 = [r20 initWithFormat:@"Failed to initialize %@."];
    [r23 release];
    r23 = [sub_1005a6b3c(r20) retain];
    [r28 adapter:r25 didFailAd:r23];
    [r23 release];
    goto loc_1005a556c;

loc_1005a556c:
    [r20 release];
    goto loc_1005a5574;

loc_1005a54a8:
    r20 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
    [r28 adapter:r25 didFailAd:r20];
    goto loc_1005a556c;

loc_1005a5288:
    [GADNativeAdViewAdOptions class];
    if (objc_msgSend(r20, r28) == 0x0) goto loc_1005a52bc;

loc_1005a52a8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdViewAdOptions));
    goto loc_1005a52b0;

loc_1005a5418:
    r20 = [sub_1005a6b3c(@"Ad types must include kGADAdLoaderAdTypeNativeAppInstall and kGADAdLoaderAdTypeNativeContent.") retain];
    [r28 adapter:r25 didFailAd:r20];
    r0 = r20;
    goto loc_1005a544c;
}

-(void *)headline {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)images {
    return 0x0;
}

-(void *)body {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)icon {
    UIGraphicsBeginImageContextWithOptions();
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r19 = self->_lockQueue;
    var_50 = r20;
    [r20 retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    [r20 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)callToAction {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)starRating {
    return 0x0;
}

-(void *)store {
    return 0x0;
}

-(void *)price {
    return 0x0;
}

-(void *)mediaView {
    r0 = self->_mediaView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)adChoicesView {
    r0 = self->_adOptionsView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)hasVideoContent {
    return 0x1;
}

-(void)mediatedNativeAd:(void *)arg2 didUntrackView:(void *)arg3 {
    [self->_nativeAd unregisterView];
    return;
}

-(void)mediatedNativeAd:(void *)arg2 didRenderInView:(void *)arg3 clickableAssetViews:(void *)arg4 nonclickableAssetViews:(void *)arg5 viewController:(void *)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg6 retain];
    r0 = [r20 allValues];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [GADNativeAppInstallAdView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r24 = [[r20 valueForKey:@"2003"] retain];
    }
    else {
            r24 = 0x0;
    }
    r8 = [r22 count];
    r0 = r23->_nativeAd;
    r3 = r23->_mediaView;
    if (r24 != 0x0 && r8 != 0x0) {
            [r0 registerViewForInteraction:r19 mediaView:r3 iconImageView:r24 viewController:r21 clickableViews:r22];
    }
    else {
            [r0 registerViewForInteraction:r19 mediaView:r3 iconImageView:r24 viewController:r21];
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdWillLogImpression:(void *)arg2 {
    r8 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_impressionLogged));
    if (*(int8_t *)(r8 + r9) == 0x0) {
            *(int8_t *)(r8 + r9) = 0x1;
            [GADMediatedNativeAdNotificationSource mediatedNativeAdDidRecordImpression:r8];
    }
    return;
}

-(void)nativeAdDidLoad:(void *)arg2 {
    r0 = [FBMediaView alloc];
    r0 = [r0 init];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [*(self + r20) setDelegate:self];
    [self loadAdOptionsView];
    r20 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    r0 = objc_loadWeakRetained((int64_t *)&self->_connector);
    [r0 adapter:r20 didReceiveMediatedNativeAd:self];
    [r0 release];
    [r20 release];
    return;
}

-(void)nativeAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_connector);
    r19 = objc_loadWeakRetained((int64_t *)&self->_adapter);
    [r20 adapter:r19 didFailAd:r21];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)nativeAdDidClick:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidRecordClick:self];
    return;
}

-(void)nativeAdDidFinishHandlingClick:(void *)arg2 {
    return;
}

-(void)mediaViewVideoDidComplete:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidEndVideoPlayback:self];
    return;
}

-(void)mediaViewVideoDidPlay:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidPlayVideo:self];
    return;
}

-(void)mediaViewVideoDidPause:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidPauseVideo:self];
    return;
}

-(void)mediaViewDidLoad:(void *)arg2 {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediaView, 0x0);
    objc_storeStrong((int64_t *)&self->_adOptionsView, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_extraAssets, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdViewAdOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdImageAdLoaderOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_adapter);
    objc_destroyWeak((int64_t *)&self->_connector);
    return;
}

@end