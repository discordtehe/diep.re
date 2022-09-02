@implementation FacebookNativeAdRenderer

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

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void *)retrieveViewWithAdapter:(void *)arg2 error:(void * *)arg3 {
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
    r29 = &saved_fp;
    r23 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_1004c6e4c;

loc_1004c6d3c:
    [FacebookNativeAdAdapter class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1004c6e4c;

loc_1004c6d70:
    [r20 setAdapter:r19];
    if ([r20 renderingViewClass] == 0x0) goto loc_1004c6e74;

loc_1004c6d9c:
    r26 = [[r20 renderingViewClass] respondsToSelector:r2];
    r0 = [r20 renderingViewClass];
    if (r26 != 0x0) {
            r0 = [r0 nibForAd];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 instantiateWithOwner:0x0 options:0x0];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 firstObject];
            r29 = r29;
            r26 = [r0 retain];
            [r20 setAdView:r26];
            [r26 release];
            [r25 release];
    }
    else {
            r23 = [objc_alloc() init];
            [r20 setAdView:r23];
    }
    r24 = @selector(respondsToSelector:);
    [r23 release];
    r0 = [r20 adView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r24);
    [r0 release];
    if (r28 != 0x0) {
            r0 = [r19 properties];
            r0 = [r0 retain];
            r27 = r0;
            r28 = [[r0 objectForKey:*0x100e7ee78] retain];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativeMainTextLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setText:r28];
            [r0 release];
            [r25 release];
            [r28 release];
            [r27 release];
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r19 properties];
            r0 = [r0 retain];
            r25 = r0;
            r27 = [[r0 objectForKey:*0x100e7ee70] retain];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 nativeTitleTextLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setText:r27];
            [r0 release];
            [r28 release];
            [r27 release];
            [r25 release];
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (objc_msgSend(r0, r24) == 0x0) goto loc_1004c7214;

loc_1004c713c:
    r0 = [r20 adView];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 nativeCallToActionTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r26 release];
    if (r0 == 0x0) goto loc_1004c721c;

loc_1004c7180:
    r0 = [r19 properties];
    r0 = [r0 retain];
    r26 = r0;
    r25 = [[r0 objectForKey:*0x100e7eea0] retain];
    r0 = [r20 adView];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 nativeCallToActionTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setText:r25];
    [r0 release];
    [r28 release];
    [r25 release];
    goto loc_1004c7214;

loc_1004c7214:
    [r26 release];
    goto loc_1004c721c;

loc_1004c721c:
    r24 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r2 = @selector(nativePrivacyInformationIconImageView);
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    if (r27 != 0x0) {
            r27 = [[r19 privacyInformationIconView] retain];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativePrivacyInformationIconImageView];
            r0 = [r0 retain];
            [r0 bounds];
            [r27 setFrame:r2];
            [r0 release];
            [r25 release];
            r2 = 0x12;
            [r27 setAutoresizingMask:r2];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativePrivacyInformationIconImageView];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            [r25 release];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativePrivacyInformationIconImageView];
            r0 = [r0 retain];
            [r0 addSubview:r27];
            [r0 release];
            [r25 release];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativePrivacyInformationIconImageView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setHidden:0x0];
            [r0 release];
            [r25 release];
            [r27 release];
    }
    if ([r20 hasIconView] != 0x0) {
            r0 = [r20 adapter];
            r0 = [r0 retain];
            r26 = [[r0 iconMediaView] retain];
            [r0 release];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativeIconImageView];
            r29 = r29;
            r27 = [r0 retain];
            [r25 release];
            [r27 bounds];
            [r26 setFrame:r2];
            [r26 setAutoresizingMask:r2];
            [r27 setUserInteractionEnabled:0x1];
            r2 = r26;
            [r27 addSubview:r2];
            [r27 release];
            [r26 release];
    }
    if ([r20 shouldLoadMediaView] != 0x0) {
            r0 = [r20 adapter];
            r0 = [r0 retain];
            r26 = [[r0 mainMediaView] retain];
            [r0 release];
            r0 = [r20 adView];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 nativeMainImageView];
            r29 = r29;
            r27 = [r0 retain];
            [r25 release];
            [r27 bounds];
            [r26 setFrame:r2];
            [r26 setAutoresizingMask:r2];
            [r27 setUserInteractionEnabled:0x1];
            [r27 addSubview:r2];
            [r27 release];
            [r26 release];
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r24, @selector(layoutStarRating:));
    [r0 release];
    if (r24 != 0x0) {
            r22 = @selector(isKindOfClass:);
            r0 = [r19 properties];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKey:*0x100e7eea8];
            r29 = r29;
            r24 = [r0 retain];
            [r26 release];
            [NSNumber class];
            if (objc_msgSend(r24, r22) != 0x0) {
                    [r24 floatValue];
                    asm { fcvt       d0, s0 };
                    if (*0x100be3f30 <= d0) {
                            [r24 floatValue];
                            asm { fcvt       d0, s0 };
                            if (*0x100be3f28 >= d0) {
                                    r0 = [r20 adView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 layoutStarRating:r2];
                                    [r21 release];
                            }
                    }
            }
            [r24 release];
    }
    r20 = [[r20 adView] retain];
    goto loc_1004c76e8;

loc_1004c76e8:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1004c6e74:
    r0 = [r20 adapter];
    r0 = [r0 retain];
    r21 = [[r0 fbNativeAd] retain];
    [r0 release];
    r0 = [FBNativeAdView nativeAdViewWithNativeAd:r21];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setAutoresizingMask:0x12];
    [r21 release];
    goto loc_1004c76e8;

loc_1004c6e4c:
    if (r23 != 0x0) {
            r0 = sub_1004fdbbc();
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r20 = 0x0;
            *r23 = r0;
    }
    else {
            r20 = 0x0;
    }
    goto loc_1004c76e8;
}

@end