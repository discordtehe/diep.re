@implementation MPGoogleAdMobNativeRenderer

+(void *)rendererConfigurationWithRendererSettings:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [arg2 retain];
    r19 = [objc_alloc() init];
    [r19 setRendererClass:[self class]];
    [r19 setRendererSettings:r21];
    [r21 release];
    r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
    r20 = [r0 retain];
    [r19 setSupportedCustomEvents:r20];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithRendererSettings:(void *)arg2 {
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
    if (r0 != 0x0) {
            r0 = [r19 retain];
            r22 = r0;
            r0 = [r0 renderingViewClass];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            r21 = [[r22 viewSizeHandler] retain];
            [r22 release];
            r0 = [r21 copy];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            [r21 release];
            r0 = [MPNativeAdRendererImageHandler new];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            [*(r20 + 0x28) setDelegate:r20];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)shouldLoadMediaView {
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
    r0 = [self adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r20 adapter];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 mainMediaView];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r22 = @selector(respondsToSelector:);
                    r0 = [r20 adView];
                    r0 = [r0 retain];
                    r20 = objc_msgSend(r0, r22);
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
            [r23 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)nativeAdViewInViewHierarchy {
    r0 = [self adViewInViewHierarchy];
    return r0;
}

-(void *)retrieveViewWithAdapter:(void *)arg2 error:(void * *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [MPGoogleAdMobNativeAdAdapter class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    [r20 setAdapter:r19];
                    r24 = [[r20 renderingViewClass] respondsToSelector:r2];
                    r0 = [r20 renderingViewClass];
                    if (r24 != 0x0) {
                            r0 = [r0 nibForAd];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 instantiateWithOwner:0x0 options:0x0];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 firstObject];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r20 setAdView:r24];
                            [r24 release];
                            [r23 release];
                    }
                    else {
                            r22 = [objc_alloc() init];
                            [r20 setAdView:r22];
                    }
                    [r22 release];
                    r0 = [r20 adView];
                    r0 = [r0 retain];
                    [r0 setAutoresizingMask:0x12];
                    [r0 release];
                    r23 = @class(MPLogging);
                    r24 = @class(MPLogEvent);
                    r25 = [NSStringFromClass([r20 class]) retain];
                    r24 = [[r24 adShowAttemptForAdapter:r25] retain];
                    [r23 logEvent:r24 source:0x0 fromClass:[r20 class]];
                    [r24 release];
                    [r25 release];
                    r23 = @class(MPLogging);
                    r24 = @class(MPLogEvent);
                    r25 = [NSStringFromClass([r20 class]) retain];
                    r24 = [[r24 adWillAppearForAdapter:r25] retain];
                    [r23 logEvent:r24 source:0x0 fromClass:[r20 class]];
                    [r24 release];
                    [r25 release];
                    r21 = [[r20 adapter] retain];
                    [r20 renderUnifiedAdViewWithAdapter:r21];
                    [r21 release];
                    r20 = [[r20 adView] retain];
            }
            else {
                    if (r22 != 0x0) {
                            r0 = sub_1004fdbbc();
                            r0 = [r0 retain];
                            r0 = [r0 autorelease];
                            r20 = 0x0;
                            *r22 = r0;
                    }
                    else {
                            r20 = 0x0;
                    }
            }
    }
    else {
            if (r22 != 0x0) {
                    r0 = sub_1004fdbbc();
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r20 = 0x0;
                    *r22 = r0;
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)adViewWillMoveToSuperview:(void *)arg2 {
    r0 = self;
    r31 = r31 - 0x80;
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
    r20 = arg2;
    r19 = r0;
    if (arg2 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r0 setAdViewInViewHierarchy:r2];
    if (r20 != 0x0) {
            r0 = [r19 adapter];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 properties];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r20 = r0;
                    r0 = [r19 adView];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:r2];
                    [r0 release];
                    [r20 release];
                    [r28 release];
                    [r25 release];
                    if (r24 != 0x0) {
                            var_70 = [[r19 rendererImageHandler] retain];
                            r0 = [r19 adapter];
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = [r0 properties];
                            r0 = [r0 retain];
                            r25 = r0;
                            r21 = [[r0 objectForKeyedSubscript:r2] retain];
                            r20 = [[NSURL URLWithString:r21] retain];
                            r0 = [r19 adView];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 nativeIconImageView];
                            r29 = r29;
                            r26 = [r0 retain];
                            r3 = r26;
                            [var_70 loadImageForURL:r20 intoImageView:r3];
                            [r26 release];
                            [r24 release];
                            [r20 release];
                            [r21 release];
                            [r25 release];
                            [r28 release];
                            [var_70 release];
                    }
            }
            else {
                    [r28 release];
                    [r25 release];
            }
            r23 = @selector(respondsToSelector:);
            r0 = [r19 adView];
            r29 = r29;
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r23, @selector(layoutCustomAssetsWithProperties:imageLoader:), r3);
            [r0 release];
            if (r21 != 0x0) {
                    r20 = objc_alloc();
                    r21 = [[r19 rendererImageHandler] retain];
                    [r20 initWithImageHandler:r21];
                    [r21 release];
                    r21 = [[r19 adView] retain];
                    r0 = [r19 adapter];
                    r0 = [r0 retain];
                    [[r0 properties] retain];
                    [r21 layoutCustomAssetsWithProperties:r2 imageLoader:r3];
                    [r22 release];
                    [r19 release];
                    [r21 release];
                    [r20 release];
            }
    }
    return;
}

-(void *)viewSizeHandler {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setViewSizeHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)adView {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)adapter {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setAdapter:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(bool)adViewInViewHierarchy {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setAdViewInViewHierarchy:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)renderUnifiedAdViewWithAdapter:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r23 = self;
    var_60 = [arg2 retain];
    r0 = [r23 adapter];
    r0 = [r0 retain];
    r20 = [[r0 adMobUnifiedNativeAdView] retain];
    [r0 release];
    r0 = [r23 adView];
    r0 = [r0 retain];
    [r0 addSubview:r20];
    [r0 release];
    [r20 gad_fillSuperview];
    r0 = [r23 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r28 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r28 != 0x0) {
            r0 = [r23 adView];
            r0 = [r0 retain];
            r19 = [[r0 nativeTitleTextLabel] retain];
            r21 = [[r20 headlineView] retain];
            [r19 addSubview:r21];
            [r21 release];
            [r19 release];
            [r0 release];
            r0 = [var_60 properties];
            r0 = [r0 retain];
            r19 = r0;
            r21 = [[r0 objectForKeyedSubscript:*0x100e7ee70] retain];
            r0 = [r23 adView];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 nativeTitleTextLabel];
            r0 = [r0 retain];
            [r0 setText:r21];
            [r0 release];
            [r28 release];
            [r21 release];
            [r19 release];
            r0 = [r20 headlineView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 gad_fillSuperview];
            [r19 release];
    }
    r25 = @selector(respondsToSelector:);
    r0 = [r23 adView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r23 adView];
            r0 = [r0 retain];
            r21 = [[r0 nativeMainTextLabel] retain];
            r27 = [[r20 bodyView] retain];
            [r21 addSubview:r27];
            [r27 release];
            [r21 release];
            [r0 release];
            r0 = [var_60 properties];
            r0 = [r0 retain];
            r19 = r0;
            r21 = [[r0 objectForKeyedSubscript:*0x100e7ee78] retain];
            r0 = [r23 adView];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 nativeMainTextLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setText:r21];
            [r0 release];
            [r27 release];
            [r21 release];
            [r19 release];
            [r20 gad_fillSuperview];
    }
    r25 = @selector(respondsToSelector:);
    r0 = [r23 adView];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (objc_msgSend(r0, r25) == 0x0) goto loc_100464f00;

loc_100464d8c:
    r0 = [r23 adView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 nativeCallToActionTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    [r27 release];
    if (r0 == 0x0) goto loc_100464f08;

loc_100464dd0:
    r0 = [r23 adView];
    r0 = [r0 retain];
    r21 = [[r0 nativeCallToActionTextLabel] retain];
    r28 = [[r20 callToActionView] retain];
    [r21 addSubview:r28];
    [r28 release];
    [r21 release];
    [r0 release];
    r0 = [r20 callToActionView];
    r0 = [r0 retain];
    [r0 gad_fillSuperview];
    [r19 release];
    r0 = [var_60 properties];
    r0 = [r0 retain];
    r27 = r0;
    r19 = [[r0 objectForKeyedSubscript:*0x100e7eea0] retain];
    r0 = [r23 adView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 nativeCallToActionTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setText:r19];
    [r0 release];
    [r21 release];
    [r19 release];
    goto loc_100464f00;

loc_100464f00:
    [r27 release];
    goto loc_100464f08;

loc_100464f08:
    r25 = @selector(respondsToSelector:);
    r0 = [r23 adView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r23 adView];
            r0 = [r0 retain];
            r21 = [[r0 nativeIconImageView] retain];
            r27 = [[r20 iconView] retain];
            [r21 addSubview:r27];
            [r27 release];
            [r21 release];
            [r0 release];
            r0 = [r20 iconView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 gad_fillSuperview];
            [r19 release];
    }
    r25 = @selector(respondsToSelector:);
    r0 = [r23 adView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25, @selector(layoutStarRating:));
    [r0 release];
    if (r21 != 0x0) {
            r0 = [var_60 properties];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e7eea8];
            r29 = r29;
            r27 = [r0 retain];
            [r19 release];
            [NSNumber class];
            if ([r27 isKindOfClass:r2] != 0x0) {
                    [r27 floatValue];
                    asm { fcvt       d0, s0 };
                    if (*0x100be3f30 <= d0) {
                            [r27 floatValue];
                            asm { fcvt       d0, s0 };
                            if (*0x100be3f28 >= d0) {
                                    r0 = [r23 adView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 layoutStarRating:r2];
                                    [r19 release];
                            }
                    }
            }
            [r27 release];
    }
    r25 = @selector(respondsToSelector:);
    r0 = [r23 adView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r23 adView];
            r0 = [r0 retain];
            r21 = [[r0 nativePrivacyInformationIconImageView] retain];
            r27 = [[r20 adChoicesView] retain];
            [r21 addSubview:r27];
            [r27 release];
            [r21 release];
            [r0 release];
            r0 = [r20 adChoicesView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 gad_fillSuperview];
            [r19 release];
    }
    r25 = @selector(respondsToSelector:);
    r0 = [r23 adView];
    r0 = [r0 retain];
    r27 = @selector(nativeVideoView);
    r21 = objc_msgSend(r0, r25);
    [r0 release];
    r0 = [r23 adView];
    r29 = r29;
    r26 = [r0 retain];
    if (r21 == 0x0) goto loc_100465248;

loc_100465240:
    r0 = r26;
    goto loc_100465288;

loc_100465288:
    r19 = [objc_msgSend(r0, r27) retain];
    r23 = [[r20 mediaView] retain];
    [r19 addSubview:r23];
    [r23 release];
    [r19 release];
    [r26 release];
    r0 = [r20 mediaView];
    r0 = [r0 retain];
    [r0 gad_fillSuperview];
    [r19 release];
    goto loc_100465308;

loc_100465308:
    [r20 release];
    [var_60 release];
    return;

loc_100465248:
    r27 = @selector(nativeMainImageView);
    r19 = [r26 respondsToSelector:r2];
    [r26 release];
    if (r19 == 0x0) goto loc_100465308;

loc_100465270:
    r0 = [r23 adView];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    goto loc_100465288;
}

-(void *)rendererImageHandler {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setRendererImageHandler:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)renderingViewClass {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setRenderingViewClass:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)unifiedNativeAdView {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setUnifiedNativeAdView:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end