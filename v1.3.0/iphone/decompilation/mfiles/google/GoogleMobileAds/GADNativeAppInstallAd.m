@implementation GADNativeAppInstallAd

-(void *)headline {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96720];
    return r0;
}

-(void *)callToAction {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96728];
    return r0;
}

-(void *)icon {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96730];
    return r0;
}

-(void *)store {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96740];
    return r0;
}

-(void *)body {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96738];
    return r0;
}

-(void *)price {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96748];
    return r0;
}

-(void *)images {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96750];
    return r0;
}

-(void *)starRating {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96768];
    return r0;
}

-(void *)adChoicesIcon {
    r0 = self->_internalNativeAd;
    r0 = [r0 adChoicesIcon];
    return r0;
}

-(void *)videoController {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
    r0 = *(r19 + r23);
    if (r0 == 0x0) {
            r0 = [GADVideoController alloc];
            r0 = [r0 init];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            r20 = *(r19 + r23);
            r0 = [r19 internalMediaContent];
            r0 = [r0 retain];
            r22 = [[r0 videoController] retain];
            [r20 setInternalVideoController:r22];
            [r22 release];
            [r0 release];
            r0 = *(r19 + r23);
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adType {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e978b8);
    return r0;
}

-(void)performClickWithData:(void *)arg2 {
    [[&var_10 super] performClickWithData:arg2];
    return;
}

-(void)reportTouchEventWithData:(void *)arg2 {
    [[&var_10 super] reportTouchEventWithData:arg2];
    return;
}

-(bool)recordImpressionWithData:(void *)arg2 {
    r0 = [[&var_10 super] recordImpressionWithData:arg2];
    return r0;
}

-(void)registerAdView:(void *)arg2 assetViews:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0];
    r22 = [r0 retain];
    [self registerAdView:r21 clickableAssetViews:r19 nonclickableAssetViews:r22];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)registerAdView:(void *)arg2 clickableAssetViews:(void *)arg3 nonclickableAssetViews:(void *)arg4 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = r22->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r0 = [r0 retain];
    r24 = [r0 publisherOwnedAdViewAllowed];
    [r0 release];
    if ((r24 & 0x1) != 0x0) {
            [GADNativeAppInstallAdView class];
            r1 = @selector(isKindOfClass:);
            if ((objc_msgSend(r19, r1) & 0x1) == 0x0) {
                    r24 = @selector(isKindOfClass:);
                    [GADNativeContentAdView class];
                    r1 = r24;
                    if (objc_msgSend(r19, r1) != 0x0) {
                            NSLog(@"<Google> Not allowed to register AdMob native ad view: %@", r1);
                    }
                    else {
                            var_50 = [r20 retain];
                            var_48 = [r21 retain];
                            var_40 = [r19 retain];
                            var_38 = [r22 retain];
                            sub_100860a80();
                            [var_38 release];
                            [var_40 release];
                            [var_48 release];
                            [var_50 release];
                    }
            }
            else {
                    NSLog(@"<Google> Not allowed to register AdMob native ad view: %@", r1);
            }
    }
    else {
            NSLog(@"<Google> Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account. In the meantime, this method is a no-op.");
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)updateAdChoicesView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [GADAdChoicesView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [[r20 adChoicesContentView] retain];
            [r19 setAdChoicesContentView:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)updateMediaView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [GADMediaView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [[r20 internalMediaContent] retain];
            [r19 setInternalMediaContent:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)unregisterAdView {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r0 = [r0 retain];
    r21 = [r0 publisherOwnedAdViewAllowed];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            var_28 = [r19 retain];
            sub_100860a80();
            [var_28 release];
    }
    else {
            NSLog(@"<Google> Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account. In the meantime, this method is a no-op.");
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    return;
}

@end