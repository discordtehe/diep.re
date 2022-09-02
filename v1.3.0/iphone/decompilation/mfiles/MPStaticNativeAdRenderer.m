@implementation MPStaticNativeAdRenderer

+(void *)rendererConfigurationWithRendererSettings:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSArray arrayWithObjects:&stack[-56] count:0x0] retain];
    r19 = [[MPStaticNativeAdRenderer rendererConfigurationWithRendererSettings:r22 additionalSupportedCustomEvents:r20] retain];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)rendererConfigurationWithRendererSettings:(void *)arg2 additionalSupportedCustomEvents:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [objc_alloc() init];
    [r19 setRendererClass:[self class]];
    [r19 setRendererSettings:r22];
    [r22 release];
    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
    r0 = [r0 retain];
    r22 = [[r0 arrayByAddingObjectsFromArray:r20] retain];
    [r20 release];
    [r19 setSupportedCustomEvents:r22];
    [r22 release];
    [r0 release];
    if (**___stack_chk_guard == var_38) {
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
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r21 = [[r22 viewSizeHandler] retain];
            [r22 release];
            r0 = [r21 copy];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            [r21 release];
            r0 = [MPNativeAdRendererImageHandler new];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            [*(r20 + 0x30) setDelegate:r20];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)hasIconView {
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
            r0 = [r0 iconMediaView];
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

-(void)onPrivacyIconTapped {
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
    r0 = [self adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 adapter];
            r0 = [r0 retain];
            [r0 displayContentForDAAIconTap];
            [r0 release];
    }
    return;
}

-(bool)nativeAdViewInViewHierarchy {
    r0 = [self adViewInViewHierarchy];
    return r0;
}

-(void *)viewSizeHandler {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void *)adView {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)adapter {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setAdapter:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
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
            r0 = [r19 hasIconView];
            r28 = @selector(adapter);
            var_58 = r28;
            if ((r0 & 0x1) == 0x0) {
                    r0 = [r19 adapter];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 properties];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 objectForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r28 = r0;
                            r0 = [r19 adView];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = [r0 respondsToSelector:r2];
                            [r0 release];
                            [r28 release];
                            [r27 release];
                            [r23 release];
                            r28 = var_58;
                            if (r21 != 0x0) {
                                    r26 = @selector(objectForKey:);
                                    r23 = [[r19 rendererImageHandler] retain];
                                    r0 = objc_msgSend(r19, r28);
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = [r0 properties];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r21 = [objc_msgSend(r0, r26) retain];
                                    r20 = [[NSURL URLWithString:r21] retain];
                                    r0 = [r19 adView];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 nativeIconImageView];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r3 = r22;
                                    [r23 loadImageForURL:r20 intoImageView:r3];
                                    [r22 release];
                                    [r25 release];
                                    [r20 release];
                                    [r21 release];
                                    [r24 release];
                                    [r27 release];
                                    [r23 release];
                            }
                    }
                    else {
                            [r27 release];
                            [r23 release];
                            r28 = var_58;
                    }
            }
            r0 = objc_msgSend(r19, r28);
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r21 = *0x101137d90;
            if ((objc_msgSend(r0, r21) & 0x1) != 0x0) {
                    r0 = objc_msgSend(r19, r28);
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 mainMediaView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    if (r0 == 0x0) {
                            r0 = objc_msgSend(r19, r28);
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 properties];
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = [r0 objectForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    r0 = [r19 adView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = objc_msgSend(r0, r21);
                                    [r0 release];
                                    [r20 release];
                                    [r28 release];
                                    [r24 release];
                                    r28 = var_58;
                                    if (r23 != 0x0) {
                                            r27 = @selector(objectForKey:);
                                            r24 = [[r19 rendererImageHandler] retain];
                                            r0 = objc_msgSend(r19, r28);
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            r0 = [r0 properties];
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            r22 = [objc_msgSend(r0, r27) retain];
                                            r20 = [[NSURL URLWithString:r22] retain];
                                            r0 = [r19 adView];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 nativeMainImageView];
                                            r29 = r29;
                                            r26 = [r0 retain];
                                            r3 = r26;
                                            [r24 loadImageForURL:r20 intoImageView:r3];
                                            [r26 release];
                                            [r23 release];
                                            [r20 release];
                                            [r22 release];
                                            [r25 release];
                                            r0 = r28;
                                            r28 = var_58;
                                            [r0 release];
                                            [r24 release];
                                    }
                            }
                            else {
                                    [r28 release];
                                    [r24 release];
                                    r28 = var_58;
                            }
                    }
            }
            else {
                    [r22 release];
                    r0 = objc_msgSend(r19, r28);
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 properties];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 objectForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r20 = r0;
                            r0 = [r19 adView];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = objc_msgSend(r0, r21);
                            [r0 release];
                            [r20 release];
                            [r28 release];
                            [r24 release];
                            r28 = var_58;
                            if (r23 != 0x0) {
                                    r27 = @selector(objectForKey:);
                                    r24 = [[r19 rendererImageHandler] retain];
                                    r0 = objc_msgSend(r19, r28);
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r0 = [r0 properties];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r22 = [objc_msgSend(r0, r27) retain];
                                    r20 = [[NSURL URLWithString:r22] retain];
                                    r0 = [r19 adView];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 nativeMainImageView];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    r3 = r26;
                                    [r24 loadImageForURL:r20 intoImageView:r3];
                                    [r26 release];
                                    [r23 release];
                                    [r20 release];
                                    [r22 release];
                                    [r25 release];
                                    r0 = r28;
                                    r28 = var_58;
                                    [r0 release];
                                    [r24 release];
                            }
                    }
                    else {
                            [r28 release];
                            [r24 release];
                            r28 = var_58;
                    }
            }
            r0 = [r19 adView];
            r29 = r29;
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r21, @selector(layoutCustomAssetsWithProperties:imageLoader:), r3);
            [r0 release];
            if (r21 != 0x0) {
                    r20 = objc_alloc();
                    r21 = [[r19 rendererImageHandler] retain];
                    [r20 initWithImageHandler:r21];
                    [r21 release];
                    r21 = [[r19 adView] retain];
                    r0 = objc_msgSend(r19, r28);
                    r0 = [r0 retain];
                    [[r0 properties] retain];
                    [r21 layoutCustomAssetsWithProperties:r2 imageLoader:r3];
                    [r23 release];
                    [r19 release];
                    [r21 release];
                    [r20 release];
            }
    }
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

-(void *)renderingViewClass {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setRenderingViewClass:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)rendererImageHandler {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setRendererImageHandler:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)retrieveViewWithAdapter:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0xf0;
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
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_1004fb6c8;

loc_1004fb5fc:
    [r20 setAdapter:r19];
    r24 = [[r20 renderingViewClass] respondsToSelector:r2];
    r0 = [r20 renderingViewClass];
    if (r24 != 0x0) {
            r0 = [r0 nibForAd];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 instantiateWithOwner:0x0 options:0x0];
            r0 = [r0 retain];
            r0 = [r0 firstObject];
            r29 = r29;
            [r0 retain];
            [r20 setAdView:r2];
            [r24 release];
            [r23 release];
    }
    else {
            r21 = [objc_alloc() init];
            [r20 setAdView:r2];
    }
    r22 = @selector(respondsToSelector:);
    [r21 release];
    r0 = [r20 adView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r22);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 properties];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [[r0 objectForKey:*0x100e7ee78] retain];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 nativeMainTextLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setText:r26];
            [r0 release];
            [r27 release];
            [r26 release];
            [r25 release];
    }
    r22 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r22);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 properties];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [[r0 objectForKey:*0x100e7ee70] retain];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 nativeTitleTextLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setText:r26];
            [r0 release];
            [r27 release];
            [r26 release];
            [r25 release];
    }
    r22 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, r22) == 0x0) goto loc_1004fba08;

loc_1004fb930:
    r0 = [r20 adView];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 nativeCallToActionTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r24 release];
    if (r0 == 0x0) goto loc_1004fba10;

loc_1004fb974:
    r0 = [r19 properties];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 objectForKey:*0x100e7eea0] retain];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 nativeCallToActionTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setText:r26];
    [r0 release];
    [r27 release];
    [r26 release];
    goto loc_1004fba08;

loc_1004fba08:
    [r24 release];
    goto loc_1004fba10;

loc_1004fba10:
    r22 = @selector(respondsToSelector:);
    r28 = @selector(setAutoresizingMask:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r2 = @selector(nativePrivacyInformationIconImageView);
    r25 = objc_msgSend(r0, r22);
    [r0 release];
    if (r25 == 0x0) goto loc_1004fbe9c;

loc_1004fba50:
    r0 = [r19 properties];
    r0 = [r0 retain];
    r24 = [[r0 objectForKey:*0x100e7eed0] retain];
    [r0 release];
    r0 = [r19 properties];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKey:*0x100e7eec8];
    r29 = r29;
    r25 = [r0 retain];
    [r27 release];
    if (r24 == 0x0) goto loc_1004fbbb4;

loc_1004fbae8:
    r0 = [r20 adView];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r29 = r29;
    r26 = [r0 retain];
    [r27 release];
    [r26 setHidden:0x0];
    [r26 setImage:r24];
    r27 = [objc_alloc() initWithTarget:r20 action:@selector(onPrivacyIconTapped)];
    [r26 setUserInteractionEnabled:0x1];
    [r26 addGestureRecognizer:r27];
    [r27 release];
    r0 = r26;
    goto loc_1004fbba0;

loc_1004fbba0:
    [r0 release];
    r28 = @selector(setAutoresizingMask:);
    goto loc_1004fbe88;

loc_1004fbe88:
    [r25 release];
    [r24 release];
    goto loc_1004fbe9c;

loc_1004fbe9c:
    if ([r20 hasIconView] != 0x0) {
            r0 = [r20 adapter];
            r0 = [r0 retain];
            r24 = [[r0 iconMediaView] retain];
            [r0 release];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 nativeIconImageView];
            r29 = r29;
            r25 = [r0 retain];
            [r23 release];
            [r25 bounds];
            [r24 setFrame:r2];
            objc_msgSend(r24, r28);
            [r25 setUserInteractionEnabled:0x1];
            r2 = r24;
            [r25 addSubview:r2];
            [r25 release];
            [r24 release];
    }
    if ([r20 shouldLoadMediaView] != 0x0) {
            r0 = [r20 adapter];
            r0 = [r0 retain];
            r24 = [[r0 mainMediaView] retain];
            [r0 release];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 nativeMainImageView];
            r29 = r29;
            r25 = [r0 retain];
            [r23 release];
            [r25 bounds];
            [r24 setFrame:r2];
            objc_msgSend(r24, r28);
            [r25 setUserInteractionEnabled:0x1];
            [r25 addSubview:r2];
            [r25 release];
            [r24 release];
    }
    r22 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22, @selector(layoutStarRating:));
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 properties];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:*0x100e7eea8];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [NSNumber class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    [r22 floatValue];
                    asm { fcvt       d0, s0 };
                    if (*0x100be3f30 <= d0) {
                            [r22 floatValue];
                            asm { fcvt       d0, s0 };
                            if (*0x100be3f28 >= d0) {
                                    r0 = [r20 adView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 layoutStarRating:r2];
                                    [r24 release];
                            }
                    }
            }
            [r22 release];
    }
    r20 = [[r20 adView] retain];
    goto loc_1004fc1bc;

loc_1004fc1bc:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1004fbbb4:
    if (r25 == 0x0) goto loc_1004fbcf0;

loc_1004fbbb8:
    var_E0 = [[NSURL URLWithString:r25] retain];
    [[MPURLRequest requestWithURL:r25] retain];
    objc_initWeak(r29 - 0x68, r20);
    r0 = r25;
    var_D8 = r0;
    r0 = [r0 retain];
    var_78 = r0;
    objc_copyWeak(&var_98 + 0x28, r29 - 0x68);
    var_A8 = [r26 retain];
    r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r27 responseHandler:&var_98 errorHandler:&var_C8];
    r29 = r29;
    [[r0 retain] release];
    [var_A8 release];
    objc_destroyWeak(&var_98 + 0x28);
    [var_78 release];
    objc_destroyWeak(r29 - 0x68);
    [r27 release];
    [var_E0 release];
    r25 = var_D8;
    r28 = @selector(setAutoresizingMask:);
    goto loc_1004fbe88;

loc_1004fbcf0:
    r2 = @selector(privacyInformationIconView);
    if ([r19 respondsToSelector:r2] == 0x0) goto loc_1004fc1ec;

loc_1004fbd0c:
    r27 = [[r19 privacyInformationIconView] retain];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r0 = [r0 retain];
    [r0 bounds];
    [r27 setFrame:r2];
    [r0 release];
    [r23 release];
    r2 = 0x12;
    [r27 setAutoresizingMask:r2];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:0x1];
    [r0 release];
    [r23 release];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r0 = [r0 retain];
    [r0 addSubview:r27];
    r28 = @selector(setAutoresizingMask:);
    r25 = r25;
    [r0 release];
    [r23 release];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    [r23 release];
    [r27 release];
    goto loc_1004fbe88;

loc_1004fc1ec:
    r0 = [r20 adView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:0x0];
    [r0 release];
    [r23 release];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nativePrivacyInformationIconImageView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r0 = r23;
    goto loc_1004fbba0;

loc_1004fb6c8:
    if (r21 != 0x0) {
            r0 = sub_1004fdbbc();
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r20 = 0x0;
            *r21 = r0;
    }
    else {
            r20 = 0x0;
    }
    goto loc_1004fc1bc;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end