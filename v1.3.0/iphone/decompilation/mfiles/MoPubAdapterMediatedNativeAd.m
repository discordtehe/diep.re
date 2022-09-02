@implementation MoPubAdapterMediatedNativeAd

-(void *)headline {
    r0 = self->_nativeAdProperties;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)body {
    r0 = self->_nativeAdProperties;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)initWithMoPubNativeAd:(void *)arg2 mappedImages:(void *)arg3 nativeAdViewOptions:(void *)arg4 networkExtras:(void *)arg5 {
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
    r24 = arg5;
    r25 = arg4;
    r26 = arg2;
    r23 = self;
    r19 = [r26 retain];
    r20 = [arg3 retain];
    r21 = [r25 retain];
    r22 = [r24 retain];
    if (r19 != 0x0) {
            r0 = [[&var_60 super] init];
            r23 = r0;
            if (r23 != 0x0) {
                    objc_storeStrong((int64_t *)&r23->_nativeAd, r26);
                    r0 = [r19 properties];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdProperties));
                    r8 = *(r23 + r28);
                    *(r23 + r28) = r0;
                    [r8 release];
                    objc_storeStrong((int64_t *)&r23->_nativeAdViewOptions, r25);
                    objc_storeStrong((int64_t *)&r23->_networkExtras, r24);
                    if (r20 != 0x0) {
                            r26 = [NSArray alloc];
                            r27 = [[r20 objectForKey:*0x100e7ee90] retain];
                            r0 = [r26 initWithObjects:r27];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mappedImages));
                            r8 = *(r23 + r9);
                            *(r23 + r9) = r0;
                            [r8 release];
                            [r27 release];
                            r0 = [r20 objectForKey:*0x100e7ee80];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r20 objectForKey:*0x100e7ee80];
                                    r0 = [r0 retain];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_mappedLogo));
                                    r8 = *(r23 + r9);
                                    *(r23 + r9) = r0;
                                    r0 = r8;
                            }
                            else {
                                    r26 = [[*(r23 + r28) objectForKey:*0x100e7ee80] retain];
                                    r25 = [[NSURL URLWithString:r2] retain];
                                    [r26 release];
                                    if (r25 != 0x0) {
                                            r0 = [GADNativeAdImage alloc];
                                            r0 = [r0 initWithURL:r25 scale:r3];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mappedLogo));
                                            r8 = *(r23 + r9);
                                            *(r23 + r9) = r0;
                                            [r8 release];
                                    }
                                    r0 = r25;
                            }
                            [r0 release];
                    }
            }
            r23 = [r23 retain];
            r24 = r23;
    }
    else {
            r24 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void *)icon {
    r0 = self->_mappedLogo;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)images {
    r0 = self->_mappedImages;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)callToAction {
    r0 = self->_nativeAdProperties;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void *)advertiser {
    return 0x0;
}

-(void *)extraAssets {
    r0 = self->_extras;
    r0 = objc_retainAutoreleaseReturnValue(r0);
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

-(void *)mediatedNativeAdDelegate {
    r0 = self;
    return r0;
}

-(void)privacyIconTapped {
    r0 = [MPAdDestinationDisplayAgent agentWithDelegate:self];
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_displayDestinationAgent));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    r19 = *(self + r20);
    r20 = [[NSURL URLWithString:*0x100e7eee8] retain];
    [r19 displayDestinationForURL:r20];
    [r20 release];
    return;
}

-(void)mediatedNativeAd:(void *)arg2 didRecordClickOnAssetWithName:(void *)arg3 view:(void *)arg4 viewController:(void *)arg5 {
    r0 = self->_nativeAd;
    if (r0 != 0x0) {
            [r0 performSelector:r2];
    }
    return;
}

-(void *)mediaView {
    r0 = self->_mappedImages;
    r0 = [r0 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r20 = [[r0 valueForKey:@"image"] retain];
    r21 = [[UIImageView alloc] initWithImage:r20];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)mediatedNativeAd:(void *)arg2 didUntrackView:(void *)arg3 {
    r0 = self->_privacyIconImageView;
    if (r0 != 0x0) {
            [r0 removeFromSuperview];
    }
    return;
}

-(void)mediatedNativeAd:(void *)arg2 didRenderInView:(void *)arg3 viewController:(void *)arg4 {
    r2 = arg2;
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    objc_storeStrong((int64_t *)&r21->_baseViewController, arg4);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAd));
    if ([*(r21 + r23) respondsToSelector:@selector(willAttachToView:withAdContentViews:), r3] != 0x0) {
            [*(r21 + r23) performSelector:@selector(willAttachToView:withAdContentViews:) withObject:r19 withObject:0x0];
    }
    else {
            r24 = [[NSString stringWithFormat:@"Could not add impression trackers."] retain];
            r0 = [MPLogEvent eventWithMessage:r24 level:0x14];
            r29 = r29;
            r23 = [r0 retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r21 class]];
            [r23 release];
            [r24 release];
    }
    r22 = [[UITapGestureRecognizer alloc] initWithTarget:r21 action:@selector(privacyIconTapped)];
    r23 = [sub_1004af7bc() retain];
    r24 = [[UIImage imageWithContentsOfFile:r23] retain];
    r0 = [UIImageView alloc];
    r0 = [r0 initWithImage:r24];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_privacyIconImageView));
    r8 = *(r21 + r26);
    *(r21 + r26) = r0;
    [r8 release];
    [*(r21 + r26) setUserInteractionEnabled:0x1];
    [*(r21 + r26) addGestureRecognizer:r22];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_networkExtras));
    r0 = *(r21 + r27);
    if (r0 != 0x0) {
            [r0 privacyIconSize];
            if (s0 < 0x4024000000000000) {
                    d8 = 0x4024000000000000;
            }
            else {
                    [*(r21 + r27) privacyIconSize];
                    if (s0 > 0x403e000000000000) {
                            d8 = 0x403e000000000000;
                    }
                    else {
                            [*(r21 + r27) privacyIconSize];
                            asm { fcvt       d8, s0 };
                    }
            }
    }
    else {
            d8 = 0x4034000000000000;
    }
    r0 = r21->_nativeAdViewOptions;
    r0 = [r0 preferredAdChoicesPosition];
    if (r0 > 0x3) goto loc_1009f52f4;

loc_1009f52e0:
    goto *0x1009f5460[sign_extend_64(*(int32_t *)(0x1009f5460 + r0 * 0x4)) + 0x1009f5460];

loc_1009f52f4:
    [r19 bounds];
    [*(r21 + r26) setFrame:r2];
    r0 = *(r21 + r26);
    goto loc_1009f5404;

loc_1009f5404:
    [r0 setAutoresizingMask:r2];
    [r19 addSubview:r2];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;

loc_1009f5338:
    [*(r21 + r26) setFrame:r2];
    r0 = *(r21 + r26);
    goto loc_1009f5404;

loc_1009f536c:
    [r19 bounds];
    [r19 bounds];
    [*(r21 + r26) setFrame:r2];
    r0 = *(r21 + r26);
    goto loc_1009f5404;

loc_1009f53c4:
    [r19 bounds];
    [*(r21 + r26) setFrame:r2];
    r0 = *(r21 + r26);
    goto loc_1009f5404;
}

-(void *)viewControllerForPresentingModalView {
    r0 = self->_baseViewController;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)displayAgentDidDismissModal {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdWillDismissScreen:self];
    [GADMediatedNativeAdNotificationSource mediatedNativeAdDidDismissScreen:self];
    return;
}

-(void *)mappedImages {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mappedImages)), 0x0);
    return r0;
}

-(void)displayAgentWillPresentModal {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdWillPresentScreen:self];
    return;
}

-(void)displayAgentWillLeaveApplication {
    [GADMediatedNativeAdNotificationSource mediatedNativeAdWillLeaveApplication:self];
    return;
}

-(void)setMappedImages:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)mappedLogo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mappedLogo)), 0x0);
    return r0;
}

-(void)setMappedLogo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)extras {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_extras)), 0x0);
    return r0;
}

-(void)setExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)nativeAdProperties {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_nativeAdProperties)), 0x0);
    return r0;
}

-(void *)nativeAd {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_nativeAd)), 0x0);
    return r0;
}

-(void)setNativeAd:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setNativeAdProperties:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDisplayDestinationAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_displayDestinationAgent, arg2);
    return;
}

-(void *)displayDestinationAgent {
    r0 = self->_displayDestinationAgent;
    return r0;
}

-(void *)baseViewController {
    r0 = self->_baseViewController;
    return r0;
}

-(void)setBaseViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_baseViewController, arg2);
    return;
}

-(void *)networkExtras {
    r0 = self->_networkExtras;
    return r0;
}

-(void *)nativeAdViewOptions {
    r0 = self->_nativeAdViewOptions;
    return r0;
}

-(void)setNativeAdViewOptions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdViewOptions, arg2);
    return;
}

-(void)setNetworkExtras:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_networkExtras, arg2);
    return;
}

-(void *)privacyIconImageView {
    r0 = self->_privacyIconImageView;
    return r0;
}

-(void)setPrivacyIconImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privacyIconImageView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_privacyIconImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_networkExtras, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdViewOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_baseViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_displayDestinationAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    objc_storeStrong((int64_t *)&self->_mappedLogo, 0x0);
    objc_storeStrong((int64_t *)&self->_mappedImages, 0x0);
    return;
}

@end