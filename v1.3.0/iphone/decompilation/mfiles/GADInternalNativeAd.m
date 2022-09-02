@implementation GADInternalNativeAd

-(void *)initWithContext:(void *)arg2 metadata:(void *)arg3 adClass:(void *)arg4 nativeAdFeatures:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg5;
    r22 = arg4;
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r19 = [r20 retain];
    r0 = [[&var_40 super] initWithContext:r23 metadata:r24];
    r21 = r0;
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_adConfigurationAdClass, r22);
            objc_storeStrong((int64_t *)&r21->_publicAdClass, r22);
            objc_storeStrong((int64_t *)&r21->_nativeAdFeatures, r20);
            r0 = sub_100860a2c("com.google.admob.n.internal-native-ad", *__dispatch_queue_attr_concurrent, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_concurrentQueue));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setAssets:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 copy];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_assets));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    r0 = *(r19 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = *(r19 + r22);
            r8 = 0x100e96000;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r8 = 0x100e96000;
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r19->_customMuteThisAdAvailable = r8;
            [r0 release];
    }
    else {
            *(int8_t *)(int64_t *)&r19->_customMuteThisAdAvailable = 0x0;
    }
    [r20 release];
    return;
}

-(void *)initWithContext:(void *)arg2 metadata:(void *)arg3 {
    [self release];
    return 0x0;
}

+(void *)adClassFromSingleNativeAdConfiguration:(struct NSDictionary *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"type"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isEqual:r2] == 0x0) goto loc_1007de614;

loc_1007de5f0:
    r22 = [[GADInstreamNativeAd class] retain];
    goto loc_1007de6ec;

loc_1007de6ec:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_1007de614:
    if ([r20 isEqual:r2] == 0x0) goto loc_1007de694;

loc_1007de62c:
    r22 = @selector(isEqual:);
    r21 = [[r19 objectForKeyedSubscript:@"template_id"] retain];
    r0 = [NSNumber numberWithInteger:r2];
    r29 = r29;
    r24 = [r0 retain];
    if ((objc_msgSend(r21, r22) & 0x1) == 0x0) goto loc_1007de69c;

loc_1007de688:
    [r24 release];
    goto loc_1007de6c4;

loc_1007de6c4:
    r0 = [GADNativeAppInstallAd class];
    goto loc_1007de6dc;

loc_1007de6dc:
    r22 = [r0 retain];
    goto loc_1007de6e4;

loc_1007de6e4:
    [r21 release];
    goto loc_1007de6ec;

loc_1007de69c:
    r25 = [r21 isEqual:r2];
    [r24 release];
    if ((r25 & 0x1) == 0x0) goto loc_1007de718;
    goto loc_1007de6c4;

loc_1007de718:
    r22 = @selector(isEqual:);
    r0 = [NSNumber numberWithInteger:r2];
    r29 = r29;
    r24 = [r0 retain];
    if ((objc_msgSend(r21, r22) & 0x1) == 0x0) goto loc_1007de754;

loc_1007de748:
    [r24 release];
    goto loc_1007de77c;

loc_1007de77c:
    r0 = [GADNativeContentAd class];
    goto loc_1007de6dc;

loc_1007de754:
    r25 = [r21 isEqual:r2];
    [r24 release];
    if ((r25 & 0x1) == 0x0) goto loc_1007de798;
    goto loc_1007de77c;

loc_1007de798:
    r22 = @selector(isEqual:);
    r0 = [NSNumber numberWithInteger:r2];
    r29 = r29;
    r24 = [r0 retain];
    if ((objc_msgSend(r21, r22) & 0x1) == 0x0) goto loc_1007de7d4;

loc_1007de7c8:
    [r24 release];
    goto loc_1007de7fc;

loc_1007de7fc:
    r0 = [GADNativeCustomTemplateAd class];
    goto loc_1007de6dc;

loc_1007de7d4:
    r25 = [r21 isEqual:r2];
    [r24 release];
    if ((r25 & 0x1) == 0x0) goto loc_1007de818;
    goto loc_1007de7fc;

loc_1007de818:
    r22 = @selector(isEqual:);
    r0 = [NSNumber numberWithInteger:r2];
    r29 = r29;
    r23 = [r0 retain];
    if ((objc_msgSend(r21, r22) & 0x1) == 0x0) goto loc_1007de854;

loc_1007de848:
    [r23 release];
    goto loc_1007de87c;

loc_1007de87c:
    r0 = [GADUnifiedNativeAd class];
    goto loc_1007de6dc;

loc_1007de854:
    r22 = @selector(isEqual:);
    r22 = objc_msgSend(r21, r22);
    [r23 release];
    if ((r22 & 0x1) == 0x0) goto loc_1007de898;
    goto loc_1007de87c;

loc_1007de898:
    r22 = 0x0;
    goto loc_1007de6e4;

loc_1007de694:
    r22 = 0x0;
    goto loc_1007de6ec;
}

-(void *)assetForKey:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r0 = r0->_assets;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    else {
            r0 = [0x0 autorelease];
    }
    return r0;
}

-(void)setViewAwareAPIUsed:(bool)arg2 {
    asm { stlrb      w2, [x8] };
    return;
}

-(bool)viewAwareAPIUsed {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewAwareAPIUsed));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)setCustomMuteThisAdRequested:(bool)arg2 {
    asm { stlrb      w2, [x8] };
    return;
}

-(bool)customMuteThisAdRequested {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_customMuteThisAdRequested));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)setCustomOnePointFiveClickImplementedByPublisher:(bool)arg2 {
    asm { stlrb      w2, [x8] };
    return;
}

-(bool)customOnePointFiveClickImplementedByPublisher {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_customOnePointFiveClickImplementedByPublisher));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)setClickConfirmationRequired:(bool)arg2 {
    r20 = self->_concurrentQueue;
    var_20 = [self retain];
    dispatch_barrier_async(r20, &var_40);
    [var_20 release];
    return;
}

-(bool)isCustomOnePointFiveClickEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b9b0];
    [r0 release];
    [r19->_nativeAdFeatures customOnePointFiveClickWhitelisted];
    if (r21 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r0 = 0x0;
    }
    else {
            r0 = [r19 customOnePointFiveClickImplementedByPublisher];
    }
    return r0;
}

-(bool)clickConfirmationRequired {
    r19 = self->_concurrentQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)setUnconfirmedClickTimestamp:(double)arg2 {
    r19 = self->_concurrentQueue;
    var_30 = [self retain];
    dispatch_barrier_async(r19, &var_50);
    [var_30 release];
    return;
}

-(double)unconfirmedClickTimestamp {
    r19 = self->_concurrentQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void)setUnconfirmedClickIdentifier:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_concurrentQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_barrier_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)unconfirmedClickIdentifier {
    r19 = self->_concurrentQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setCustomClickGestureEnabledByPublisher:(bool)arg2 {
    asm { stlrb      w2, [x8] };
    return;
}

-(bool)customClickGestureEnabledByPublisher {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_customClickGestureEnabledByPublisher));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)registerClickConfirmingView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(bool)isCustomClickGestureEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_nativeAdFeatures;
    r0 = [r0 customClickGestureAllowed];
    if (r0 != 0x0) {
            r0 = [r19 customClickGestureEnabledByPublisher];
    }
    return r0;
}

-(void)unregisterClickConfirmingView {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)handleAssociatedNativeAd:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"native_ad"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != r20) {
            r22 = objc_loadWeakRetained((int64_t *)&r20->_clickConfirmingView);
            r0 = [r19 object];
            r0 = [r0 retain];
            [r0 release];
            if (r22 == r0) {
                    [r20 unregisterClickConfirmingView];
            }
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)resetUnconfirmedClick {
    [self unregisterClickConfirmingView];
    r20 = self->_concurrentQueue;
    var_18 = [self retain];
    dispatch_barrier_async(r20, &var_38);
    [var_18 release];
    return;
}

-(double)confirmationClickTimeInterval {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSDate alloc];
    r0 = [r0 init];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = [self unconfirmedClickTimestamp];
    if (d0 > 0x0) {
            asm { fcsel      d0, d1, d0, gt };
    }
    return r0;
}

-(void *)adConfigurationAdClass {
    r0 = self->_adConfigurationAdClass;
    return r0;
}

-(void *)publicAdClass {
    r0 = self->_publicAdClass;
    return r0;
}

-(void)setPublicAdClass:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_publicAdClass, arg2);
    return;
}

-(void *)overlayView {
    r0 = self->_overlayView;
    return r0;
}

-(void)setOverlayView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_overlayView, arg2);
    return;
}

-(void *)assetViewTracker {
    r0 = self->_assetViewTracker;
    return r0;
}

-(void)setAssetViewTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_assetViewTracker, arg2);
    return;
}

-(void *)nativeAdContext {
    r0 = self->_nativeAdContext;
    return r0;
}

-(void)setNativeAdContext:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdContext, arg2);
    return;
}

-(void *)nativeAdFeatures {
    r0 = self->_nativeAdFeatures;
    return r0;
}

-(long long)preferredAdChoicesPosition {
    r0 = self->_preferredAdChoicesPosition;
    return r0;
}

-(void)setPreferredAdChoicesPosition:(long long)arg2 {
    self->_preferredAdChoicesPosition = arg2;
    return;
}

-(void *)customTemplateID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_customTemplateID)), 0x0);
    return r0;
}

-(void)setCustomTemplateID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adChoicesIcon {
    r0 = self->_adChoicesIcon;
    return r0;
}

-(void)setAdChoicesIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesIcon, arg2);
    return;
}

-(long long)mediaType {
    r0 = self->_mediaType;
    return r0;
}

-(void)setMediaType:(long long)arg2 {
    self->_mediaType = arg2;
    return;
}

-(void *)clickConfirmingView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_clickConfirmingView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setClickConfirmingView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_clickConfirmingView, arg2);
    return;
}

-(bool)customMuteThisAdAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_customMuteThisAdAvailable;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_clickConfirmingView);
    objc_storeStrong((int64_t *)&self->_adChoicesIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_customTemplateID, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdFeatures, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdContext, 0x0);
    objc_storeStrong((int64_t *)&self->_assetViewTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_overlayView, 0x0);
    objc_storeStrong((int64_t *)&self->_publicAdClass, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfigurationAdClass, 0x0);
    objc_storeStrong((int64_t *)&self->_unconfirmedClickIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_concurrentQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_clickConfirmingViewObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_assets, 0x0);
    return;
}

@end