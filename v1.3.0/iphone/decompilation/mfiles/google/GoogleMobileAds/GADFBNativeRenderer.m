@implementation GADFBNativeRenderer

-(void)renderNativeAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [r19 bidResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_isRTBRequest = 0x1;
    }
    r0 = dispatch_queue_create("fb-native-ad", 0x0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [r19 credentials];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placement_id"];
    r29 = r29;
    r23 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r23 != 0x0) {
            r0 = [FBNativeAd alloc];
            r0 = [r0 initWithPlacementID:r23];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            [*(r21 + r24) setDelegate:r21];
            r21 = *(r21 + r24);
            r22 = [[r19 bidResponse] retain];
            [r21 loadAdWithBidPayload:r22];
            r0 = r22;
    }
    else {
            r21 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
            [[(*(r20 + 0x10))(r20, 0x0, r21) retain] release];
            r0 = r21;
    }
    [r0 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)advertiser {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
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

-(void *)body {
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

-(void *)adChoicesView {
    r0 = self->_adOptionsView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)mediaView {
    r0 = self->_mediaView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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

-(void *)extraAssets {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)headline {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_lockQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)price {
    objc_retainAutorelease(@"");
    return @"";
}

-(void *)store {
    objc_retainAutorelease(@"");
    return @"";
}

-(void *)starRating {
    return 0x0;
}

-(void)didRenderInView:(void *)arg2 clickableAssetViews:(void *)arg3 nonclickableAssetViews:(void *)arg4 viewController:(void *)arg5 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    r0 = [r20 allValues];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [GADUnifiedNativeAdView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r24 = [[r20 valueForKey:@"3003"] retain];
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

-(void)didUntrackView:(void *)arg2 {
    [self->_nativeAd unregisterView];
    return;
}

-(bool)hasVideoContent {
    return 0x1;
}

-(void)nativeAdDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
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
    r0 = r19->_adLoadCompletionHandler;
    r21 = [(*(r0 + 0x10))(r0, r19, 0x0) retain];
    [r20 release];
    objc_storeWeak((int64_t *)&r19->_adEventDelegate, r21);
    [r21 release];
    return;
}

-(void)nativeAdDidClick:(void *)arg2 {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_isRTBRequest == 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r0->_adEventDelegate);
            [r0 reportClick];
            [r0 release];
    }
    return;
}

-(void)nativeAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r0 = self->_adLoadCompletionHandler;
    [[(*(r0 + 0x10))(r0, 0x0, arg3, arg3) retain] release];
    return;
}

-(void)nativeAdWillLogImpression:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_impressionLogged));
    if (*(int8_t *)(r20 + r8) == 0x0) {
            *(int8_t *)(r20 + r8) = 0x1;
            if (*(int8_t *)(int64_t *)&r20->_isRTBRequest == 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
                    [r0 reportImpression];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)nativeAdDidFinishHandlingClick:(void *)arg2 {
    return;
}

-(void)nativeAdDidDownloadMedia:(void *)arg2 {
    return;
}

-(void)mediaViewVideoDidComplete:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didEndVideo];
    [r0 release];
    return;
}

-(void)mediaViewVideoDidPlay:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didPlayVideo];
    [r0 release];
    return;
}

-(void)mediaViewVideoDidPause:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didPauseVideo];
    [r0 release];
    return;
}

-(void)mediaViewWillEnterFullscreen:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 willPresentFullScreenView];
    [r0 release];
    return;
}

-(void)mediaViewDidExitFullscreen:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didDismissFullScreenView];
    [r0 release];
    return;
}

-(void)mediaView:(void *)arg2 videoVolumeDidChange:(float)arg3 {
    return;
}

-(void)mediaViewDidLoad:(void *)arg2 {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaView, 0x0);
    objc_storeStrong((int64_t *)&self->_adOptionsView, 0x0);
    objc_storeStrong((int64_t *)&self->_extraAssets, 0x0);
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    return;
}

@end