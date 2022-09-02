@implementation GADFBUnifiedNativeAd

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
    r31 = r31 - 0x160;
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
    r22 = self;
    r21 = [arg3 retain];
    var_130 = objc_loadWeakRetained((int64_t *)&r22->_connector);
    var_138 = objc_loadWeakRetained((int64_t *)&r22->_adapter);
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_1005a000c;

loc_10059ff54:
    r21 = 0x0;
    goto loc_10059ff68;

loc_10059ff68:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_120);
    }
    r25 = @selector(class);
    r27 = *(0x0 + r21 * 0x8);
    objc_msgSend(@class(GADNativeAdImageAdLoaderOptions), r25);
    if (objc_msgSend(r27, r26) == 0x0) goto loc_10059ffb0;

loc_10059ffa8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdImageAdLoaderOptions));
    goto loc_10059ffd8;

loc_10059ffd8:
    objc_storeStrong(r22 + r8, r27);
    goto loc_10059ffe4;

loc_10059ffe4:
    r21 = r21 + 0x1;
    if (r21 < r24) goto loc_10059ff68;

loc_10059fff0:
    r24 = objc_msgSend(var_120, var_128);
    if (r24 != 0x0) goto loc_10059ff54;

loc_1005a000c:
    [var_120 release];
    r27 = var_138;
    r21 = var_130;
    if (r21 != 0x0) {
            asm { ccmp       x27, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_1005a0208;

loc_1005a0024:
    r0 = [r21 publisherId];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1005a0134;

loc_1005a0044:
    r0 = [FBNativeAd alloc];
    r0 = [r0 initWithPlacementID:r23];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    r8 = *(r22 + r19);
    *(r22 + r19) = r0;
    [r8 release];
    r0 = *(r22 + r19);
    if (r0 == 0x0) goto loc_1005a0168;

loc_1005a008c:
    [r0 setDelegate:r22];
    r26 = [[GADRequest sdkVersion] retain];
    r25 = [[NSString stringWithFormat:@"GOOGLE_%@:%@"] retain];
    [FBAdSettings setMediationService:r25];
    [r25 release];
    [r26 release];
    [*(r22 + r19) loadAd];
    goto loc_1005a0200;

loc_1005a0200:
    [r23 release];
    goto loc_1005a0208;

loc_1005a0208:
    var_58 = **___stack_chk_guard;
    [r27 release];
    [r21 release];
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1005a0168:
    r22 = [NSString alloc];
    r24 = [NSStringFromClass([FBNativeAd class]) retain];
    r22 = [r22 initWithFormat:@"Failed to initialize %@."];
    [r24 release];
    r24 = [sub_1005a6b3c(r22) retain];
    [r21 adapter:r27 didFailAd:r24];
    [r24 release];
    goto loc_1005a01f8;

loc_1005a01f8:
    [r22 release];
    goto loc_1005a0200;

loc_1005a0134:
    r22 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
    [r21 adapter:r27 didFailAd:r22];
    goto loc_1005a01f8;

loc_10059ffb0:
    [GADNativeAdViewAdOptions class];
    if (objc_msgSend(r27, r26) == 0x0) goto loc_10059ffe4;

loc_10059ffd0:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdViewAdOptions));
    goto loc_10059ffd8;
}

-(void *)headline {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)advertiser {
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

-(void *)store {
    return 0x0;
}

-(void *)starRating {
    return 0x0;
}

-(void *)mediaView {
    r0 = self->_mediaView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)price {
    return 0x0;
}

-(void)didUntrackView:(void *)arg2 {
    [self->_nativeAd unregisterView];
    return;
}

-(void *)adChoicesView {
    r0 = self->_adOptionsView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)hasVideoContent {
    return 0x1;
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

-(void)didRenderInView:(void *)arg2 clickableAssetViews:(void *)arg3 nonclickableAssetViews:(void *)arg4 viewController:(void *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    r24 = [arg3 retain];
    r22 = [arg5 retain];
    r21 = [[arg3 allValues] retain];
    r23 = [[arg3 valueForKey:@"3003"] retain];
    [r24 release];
    [r21 count];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    r0 = *(r19 + r24);
    r3 = r19->_mediaView;
    if (r23 != 0x0) {
            asm { ccmp       x8, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            [r0 registerViewForInteraction:r20 mediaView:r3 iconImageView:r23 viewController:r22];
    }
    else {
            [r0 registerViewForInteraction:r20 mediaView:r3 iconImageView:r23 viewController:r22 clickableViews:r21];
    }
    [r22 release];
    [r20 release];
    [r19->_adOptionsView setNativeAd:*(r19 + r24)];
    [r23 release];
    [r21 release];
    return;
}

-(void)nativeAdDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 unregisterView];
    }
    r21 = *(r19 + r22);
    *(r19 + r22) = r20;
    r20 = [r20 retain];
    [r21 release];
    r0 = [FBMediaView alloc];
    r0 = [r0 init];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    [*(r19 + r21) setDelegate:r19];
    [r19 loadAdOptionsView];
    r21 = objc_loadWeakRetained((int64_t *)&r19->_adapter);
    r0 = objc_loadWeakRetained((int64_t *)&r19->_connector);
    [r0 adapter:r21 didReceiveMediatedNativeAd:r19];
    [r20 release];
    [r0 release];
    [r21 release];
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

-(void)mediaViewVideoDidPlay:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidPlayVideo:self];
    return;
}

-(void)mediaViewVideoDidComplete:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidEndVideoPlayback:self];
    return;
}

-(void)mediaViewDidLoad:(void *)arg2 {
    return;
}

-(void)mediaViewVideoDidPause:(void *)arg2 {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidPauseVideo:self];
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