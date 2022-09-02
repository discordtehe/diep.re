@implementation GADNativeContentAdView

-(void)commonInit {
    r0 = [GADEventContext alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [GADNativeAssetViewTracker alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_assetViewTracker));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [[self->_nativeContentAd retain] retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void)setNativeContentAd:(void *)arg2 {
    [arg2 retain];
    objc_storeStrong((int64_t *)&self->_nativeContentAd, arg2);
    [self retain];
    [r21 retain];
    sub_100860a80();
    [r20 updateMediaView];
    [r20 updateAdChoicesView];
    r0 = [r19 internalNativeAd];
    r0 = [r0 retain];
    r22 = [[r0 overlayView] retain];
    [r20 setOverlayView:r22];
    [r22 release];
    [r0 release];
    [r20 orderViews];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)nativeContentAd {
    r0 = self->_nativeContentAd;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)layoutSubviews {
    [[&var_20 super] layoutSubviews];
    sub_1008833e8(*0x100e9c0e8, self, 0x0);
    [self orderViews];
    return;
}

-(void)setHeadlineView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)didMoveToSuperview {
    [[&var_20 super] didMoveToSuperview];
    sub_1008833e8(*0x100e9c0f0, self, 0x0);
    [self orderViews];
    return;
}

-(void)setBodyView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setCallToActionView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setAdvertiserView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setImageView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setLogoView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setMediaView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setAdChoicesView:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)updateMediaView {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_nativeContentAd));
    r0 = *(r19 + r23);
    r0 = [r0 internalMediaContent];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 videoController];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r22 = objc_loadWeakRetained((int64_t *)&r19->_mediaView);
    if ([r21 hasVideoContent] != 0x0 && [r21 videoPlaybackState] != 0x4) {
            r0 = *(r19 + r23);
            [r0 reportIsMediaContentRendered:r2];
    }
    r19 = [[*(r19 + r23) internalMediaContent] retain];
    [r22 setInternalMediaContent:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)orderViews {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_nativeContentAd));
    r0 = *(r19 + r23);
    r0 = [r0 internalNativeAd];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 publisherRenderAdChoicesAllowed] != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_adChoicesView);
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    [r22 release];
    [r20 release];
    sub_10083f558(r19, r19->_overlayView, [[*(r19 + r23) adChoicesContentView] retain], r21);
    [r20 release];
    return;
}

-(void)updateAdChoicesView {
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
    r20 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_assetViewTracker));
    r0 = *(r20 + r23);
    r0 = [r0 adChoicesContentViewForAdView:r20];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r20) {
            [r19 removeFromSuperview];
    }
    [*(r20 + r23) setAdChoicesContentView:0x0 forAdView:r20];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_nativeContentAd));
    r0 = *(r20 + r25);
    r0 = [r0 adChoicesContentView];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [*(r20 + r23) setAdChoicesContentView:r21 forAdView:r20];
            r0 = *(r20 + r25);
            r0 = [r0 internalNativeAd];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 nativeAdFeatures];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            r23 = objc_loadWeakRetained((int64_t *)&r20->_adChoicesView);
            r0 = [r22 publisherRenderAdChoicesAllowed];
            if (r23 != 0x0 && r0 != 0x0) {
                    [r23 setAdChoicesContentView:r21];
            }
            else {
                    [r21 setTranslatesAutoresizingMaskIntoConstraints:0x0];
                    [r20 addSubview:r21];
                    r0 = *(r20 + r25);
                    r0 = [r0 internalNativeAd];
                    r0 = [r0 retain];
                    r25 = [sub_10083f164(r20, r21, [r0 preferredAdChoicesPosition]) retain];
                    [r0 release];
                    [r20 setConstraints:r25];
                    [r25 release];
            }
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setConstraints:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r21 = arg2;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_constraints));
    r20 = *(r19 + r26);
    var_1E0 = [r21 retain];
    r0 = [r20 retain];
    r23 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            [r19 removeConstraint:r2];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r24 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    [r23 release];
    r21 = [r21 copy];
    [var_1E0 release];
    r0 = *(r19 + r26);
    *(r19 + r26) = r21;
    [r0 release];
    r0 = *(r19 + r26);
    r0 = [r0 retain];
    r21 = r0;
    r22 = objc_msgSend(r0, r20);
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 addConstraint:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(void)setOverlayView:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r21 = self;
    r20 = [r22 retain];
    r23 = (int64_t *)&r21->_overlayView;
    r19 = [*r23 retain];
    r20 = [r20 retain];
    if (r19 != r20) {
            [r19 removeFromSuperview];
            objc_storeStrong(r23, r22);
            if (r20 != 0x0) {
                    [r21 addSubview:r20];
                    [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
                    sub_1008897a8();
            }
    }
    [r20 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)headlineView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headlineView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)bodyView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bodyView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)imageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_imageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)logoView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logoView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)callToActionView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_callToActionView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)advertiserView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_advertiserView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)mediaView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediaView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adChoicesView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adChoicesView);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adChoicesView);
    objc_destroyWeak((int64_t *)&self->_mediaView);
    objc_destroyWeak((int64_t *)&self->_advertiserView);
    objc_destroyWeak((int64_t *)&self->_callToActionView);
    objc_destroyWeak((int64_t *)&self->_logoView);
    objc_destroyWeak((int64_t *)&self->_imageView);
    objc_destroyWeak((int64_t *)&self->_bodyView);
    objc_destroyWeak((int64_t *)&self->_headlineView);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_constraints, 0x0);
    objc_storeStrong((int64_t *)&self->_assetViewTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_overlayView, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeContentAd, 0x0);
    return;
}

@end