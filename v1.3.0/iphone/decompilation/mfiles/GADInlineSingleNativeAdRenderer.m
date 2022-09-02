@implementation GADInlineSingleNativeAdRenderer

-(void)invalidateAndCancel {
    [self->_session invalidateAndCancel];
    return;
}

-(void)dealloc {
    [self->_session invalidateAndCancel];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r21 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_assets));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_group_create();
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadingGroup));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r21 = [[NSURLSessionConfiguration defaultSessionConfiguration] retain];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b940];
            [r0 release];
            [r21 setTimeoutIntervalForResource:*0x100e9b940];
            r0 = [GADURLSession alloc];
            r0 = [r0 initWithConfiguration:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_session));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isVideo {
    r19 = [[self->_adConfiguration objectForKeyedSubscript:*0x100e95a68] retain];
    [NSDictionary class];
    r20 = [r19 isKindOfClass:r2];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x100;
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
    r22 = self;
    [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    var_C8 = r0;
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    r26 = (int64_t *)&r22->_adConfiguration;
    objc_storeStrong(r26, arg3);
    r19 = [GADEventContext alloc];
    var_B8 = r23;
    r0 = [r23 serverRequest];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [[r0 context] retain];
    r0 = [r19 initWithParent:r23 component:*0x100e97468];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_adContext));
    r8 = *(r22 + r28);
    *(r22 + r28) = r0;
    [r8 release];
    [r23 release];
    [r21 release];
    r23 = [[GADNativeAdFeatures alloc] initWithAdConfiguration:r20];
    r19 = [GADInternalNativeAd adClassFromSingleNativeAdConfiguration:r20];
    r24 = [[GADAdMetadata alloc] initWithAdNetworkClassName:*0x100e8f668];
    r0 = @class(GADInternalNativeAd);
    r0 = [r0 alloc];
    var_D0 = r24;
    var_C0 = r23;
    r21 = [r0 initWithContext:*(r22 + r28) metadata:r24 adClass:r19 nativeAdFeatures:r23];
    objc_storeStrong((int64_t *)&r22->_internalNativeAd, r21);
    r0 = [r20 objectForKeyedSubscript:@"options"];
    r0 = [r0 retain];
    r24 = [[r0 objectForKeyedSubscript:@"native"] retain];
    [r0 release];
    r0 = [r24 objectForKeyedSubscript:@"disable_image_loading"];
    r0 = [r0 retain];
    var_D8 = r0;
    *(int8_t *)(int64_t *)&r22->_disableImageLoading = [r0 boolValue];
    r0 = [r20 objectForKeyedSubscript:@"required_assets"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [NSSet alloc];
            r0 = [r0 initWithArray:r23];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requiredAssets));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    r0 = [r20 objectForKeyedSubscript:@"custom_template_id"];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 copy];
    var_E0 = r23;
    [r25 release];
    r25 = [[*r26 objectForKeyedSubscript:*0x100e95950] retain];
    r19 = [[*r26 objectForKeyedSubscript:*0x100e95918] retain];
    r26 = [[NSURL URLWithString:r19] retain];
    var_E8 = r26;
    [r19 release];
    r27 = [[GADSafeBrowsingMonitor alloc] initWithAdView:0x0 adRequestTransaction:var_B8 baseURL:r26 monitoredContext:*(r22 + r28) configuration:r25];
    [r22 renderSingleAssets];
    [r22 renderCustomAssets];
    [r22 renderMuteAdInfo];
    [r22 renderImages];
    [r22 renderMediaContent];
    [r22 renderInstreamMediaContent];
    [r22 loadAdVerificationWebView];
    [r22 renderAttribution];
    r26 = r22->_assetLoadingGroup;
    var_90 = [r22 retain];
    [var_C8 retain];
    var_80 = r21;
    [r21 retain];
    var_78 = r24;
    [r24 retain];
    [r0 retain];
    var_68 = r20;
    [r20 retain];
    var_60 = r27;
    [r27 retain];
    [var_B8 retain];
    dispatch_group_notify(r26, *__dispatch_main_q, &var_B0);
    [var_B8 release];
    [var_60 release];
    [var_68 release];
    [r0 release];
    [var_78 release];
    [var_80 release];
    [var_C8 release];
    [var_90 release];
    [r27 release];
    [r24 release];
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [var_E8 release];
    [r25 release];
    [var_E0 release];
    [var_D8 release];
    [var_D0 release];
    [var_C0 release];
    return;
}

-(void)renderMuteAdInfo {
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
    r0 = r20->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r25 = [r0 copy];
            r21 = [sub_10089a520() retain];
            [r25 release];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = [r0 copy];
            [r0 release];
            [r23 release];
            r23 = [[NSURL URLWithString:r2] retain];
            if (r21 != 0x0) {
                    asm { ccmp       x23, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E) {
                    sub_100822058(*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_assets))), *0x100e96780, r21);
                    sub_100822058(*(r20 + r24), *0x100e96788, r23);
            }
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)renderImages {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[r19->_adConfiguration objectForKeyedSubscript:@"images"] retain];
    r0 = sub_100808f40();
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_images));
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    [r20 release];
    r20 = [[NSMutableArray alloc] init];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_disableImageLoading));
    r8 = *(int8_t *)(r19 + r8);
    r0 = r19->_assets;
    if (r8 != 0x0) {
            sub_100822058(r0, *0x100e96750, *(r19 + r21));
    }
    else {
            sub_100822058(r0, *0x100e96750, r20);
            [r19 loadImageArray:*(r19 + r21) loadedImages:r20];
    }
    [r20 release];
    return;
}

-(void)renderSingleAssets {
    r31 = r31 - 0xc0;
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
    r20 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"headline"];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    r24 = [[*(r20 + r26) objectForKeyedSubscript:*0x100e95a30] retain];
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b958];
    [r0 release];
    if (r19 != 0x0 && (r21 & [r24 boolValue]) == 0x1) {
            r0 = [@"Test Ad: " stringByAppendingString:r19];
            r29 = r29;
            r21 = [r0 retain];
            [r19 release];
            r19 = r21;
    }
    var_78 = r24;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_assets));
    var_70 = r19;
    sub_100822058(*(r20 + r28), *0x100e96720, r19);
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"call_to_action"];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    var_80 = r19;
    sub_100822058(*(r20 + r28), *0x100e96728, r19);
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"body"];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    var_88 = r19;
    sub_100822058(*(r20 + r28), *0x100e96738, r19);
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"store"];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    var_90 = r19;
    sub_100822058(*(r20 + r28), *0x100e96740, r19);
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"price"];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    var_98 = r19;
    sub_100822058(*(r20 + r28), *0x100e96748, r19);
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"advertiser"];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    var_A0 = r19;
    sub_100822058(*(r20 + r28), *0x100e96778, r19);
    r0 = *(r20 + r26);
    r0 = [r0 objectForKeyedSubscript:@"rating"];
    r29 = r29;
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    if (r19 != 0x0) {
            [r19 decimalValue];
            r0 = [NSDecimalNumber decimalNumberWithDecimal:&stack[-120]];
            r29 = r29;
            sub_100822058(*(r20 + r28), *0x100e96768, [r0 retain]);
            [r21 release];
    }
    sub_100822058(*(r20 + r28), *0x100e96730, [[GADNativeAdImage alloc] initWithDictionary:[[*(r20 + r26) objectForKeyedSubscript:@"app_icon"] retain]]);
    [r20 loadSingleImage:r23 assetName:*0x100e96730];
    sub_100822058(*(r20 + r28), *0x100e96770, [[GADNativeAdImage alloc] initWithDictionary:[[*(r20 + r26) objectForKeyedSubscript:@"secondary_image"] retain]]);
    [r20 loadSingleImage:r19 assetName:*0x100e96770];
    [r19 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r19 release];
    [var_A0 release];
    [var_98 release];
    [var_90 release];
    [var_88 release];
    [var_80 release];
    [var_78 release];
    [var_70 release];
    return;
}

-(void)renderMediaContent {
    r20 = [[self->_images firstObject] retain];
    r0 = [GADAdMediaContent alloc];
    r0 = [r0 initWithInternalNativeAd:self->_internalNativeAd adConfiguration:self->_adConfiguration mainImage:r20];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_mediaContent));
    r8 = *(self + r23);
    *(self + r23) = r0;
    [r8 release];
    r0 = self->_assetLoadingGroup;
    r0 = [r0 retain];
    dispatch_group_enter(r0);
    objc_initWeak(&saved_fp - 0x38, self);
    objc_copyWeak(&var_78 + 0x38, &saved_fp - 0x38);
    r22 = [r22 retain];
    r20 = [r20 retain];
    var_48 = [self retain];
    [r23 loadVideoWithCompletionHandler:&var_78];
    [var_48 release];
    [r20 release];
    [r22 release];
    objc_destroyWeak(&var_78 + 0x38);
    objc_destroyWeak(&saved_fp - 0x38);
    [r22 release];
    [r20 release];
    return;
}

-(void)renderCustomAssets {
    r31 = r31 - 0x180;
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
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:@"custom_assets"];
    r29 = &saved_fp;
    [r0 retain];
    r9 = [[NSMutableDictionary alloc] init];
    var_158 = self;
    var_140 = r9;
    sub_100822058(self->_assets, *0x100e967a8, r9);
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_168 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            r23 = @selector(objectForKeyedSubscript:);
            var_138 = r23;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_128);
                            }
                            r27 = *(0x0 + r20 * 0x8);
                            if ([r27 isKindOfClass:[NSDictionary class]] != 0x0) {
                                    r22 = [objc_msgSend(r27, r23) retain];
                                    r0 = objc_msgSend(r27, r23);
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if ([r22 length] != 0x0 && [r26 length] != 0x0) {
                                            if ([r26 isEqual:@"string"] != 0x0) {
                                                    r0 = objc_msgSend(r27, r23);
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    if ([r23 isKindOfClass:[NSString class]] != 0x0) {
                                                            sub_100822058(var_140, r22, r23);
                                                    }
                                                    [r23 release];
                                                    r23 = var_138;
                                            }
                                            if ([r26 isEqual:@"image"] != 0x0) {
                                                    r0 = objc_msgSend(r27, r23);
                                                    r29 = r29;
                                                    sub_100822058(var_140, r22, [[GADNativeAdImage alloc] initWithDictionary:[r0 retain]]);
                                                    [var_158 loadSingleImage:r2 assetName:r3];
                                                    [r27 release];
                                                    r0 = r23;
                                                    r23 = var_138;
                                                    [r0 release];
                                            }
                                    }
                                    [r26 release];
                                    [r22 release];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r25);
                    r25 = objc_msgSend(var_128, var_168);
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    [var_140 release];
    [var_128 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)renderInstreamMediaContent {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
    if (*(r19 + r20) != 0x0) {
            r0 = [GADInstreamMediaContent alloc];
            r0 = [r0 initWithInternalNativeAd:*(r19 + r20) adConfiguration:r19->_adConfiguration];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_instreamContent));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r0 = r19->_assetLoadingGroup;
            r0 = [r0 retain];
            dispatch_group_enter(r0);
            objc_initWeak(r29 - 0x28, r19);
            objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
            r19 = [r21 retain];
            [r22 loadWithCompletionHandler:&var_58];
            [r19 release];
            objc_destroyWeak(&var_58 + 0x28);
            objc_destroyWeak(r29 - 0x28);
            [r19 release];
    }
    return;
}

-(void)loadAdVerificationWebView {
    r31 = r31 - 0x100;
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
    r22 = self;
    if (([self isVideo] & 0x1) == 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r0 = *(r22 + r20);
            r0 = [r0 objectForKeyedSubscript:*0x100e95a18];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 boolValue] != 0x0) {
                    r0 = *(r22 + r20);
                    r0 = [r0 objectForKeyedSubscript:*0x100e95a40];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKeyedSubscript:*0x100e95a48];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r25 release];
                    if (r28 != 0x0) {
                            r0 = *(r22 + r20);
                            r0 = [r0 objectForKeyedSubscript:*0x100e95a40];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 objectForKeyedSubscript:*0x100e95a58];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r25 release];
                            var_E8 = r26;
                            r21 = r28;
                            if (r26 != 0x0) {
                                    r0 = [NSURL URLWithString:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                            }
                            else {
                                    r25 = 0x0;
                            }
                            [r22->_assetLoadingGroup retain];
                            r27 = [[GADWebViewConfiguration alloc] init];
                            r0 = *(r22 + r20);
                            r0 = [r0 objectForKeyedSubscript:*0x100e95958];
                            r0 = [r0 retain];
                            [r27 setNetworkNotificationsEnabled:[r0 boolValue]];
                            [r0 release];
                            objc_initWeak(r29 - 0x68, r22);
                            r24 = [GADOperation alloc];
                            r28 = r21;
                            r26 = [r26 retain];
                            var_88 = [r22 retain];
                            [r27 retain];
                            var_78 = [r28 retain];
                            [r25 retain];
                            r24 = [r24 initWithBlock:&var_B0];
                            r0 = [GADSettings sharedInstance];
                            r0 = [r0 retain];
                            [r0 doubleForKey:*0x100e9b980];
                            [r24 setTimeout:*0x100e9b980];
                            [r0 release];
                            [r26 retain];
                            objc_copyWeak(&var_E0 + 0x28, r29 - 0x68);
                            [r24 setCompletionBlock:&var_E0];
                            [r24 start];
                            objc_destroyWeak(&var_E0 + 0x28);
                            [r25 release];
                            [r24 release];
                            [r23 release];
                            [var_78 release];
                            [r22 release];
                            [var_88 release];
                            [r26 release];
                            objc_destroyWeak(r29 - 0x68);
                            [r22 release];
                            [r25 release];
                            [r23 release];
                            [var_E8 release];
                    }
                    [r28 release];
            }
            [r19 release];
    }
    return;
}

-(void)loadSingleImage:(void *)arg2 assetName:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && *(int8_t *)(int64_t *)&r21->_disableImageLoading == 0x0) {
            dispatch_group_enter(r21->_assetLoadingGroup);
            r21 = [r21 retain];
            var_40 = [r20 retain];
            r22 = [r19 retain];
            r0 = objc_retainBlock(&var_68);
            r24 = [[r22 imageURL] retain];
            [r22 scale];
            sub_1008c6390(r24, r21->_session, r21->_adContext, r0);
            [r24 release];
            [r23 release];
            [r22 release];
            [var_40 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)renderAttribution {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:@"attribution"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [NSDictionary class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r0 = [r20 objectForKeyedSubscript:@"images"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    r0 = [r20 objectForKeyedSubscript:@"image"];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
                            r29 = r29;
                            r21 = [r0 retain];
                    }
                    [r22 release];
            }
            [sub_100808f40() retain];
            r24 = [[NSMutableArray alloc] init];
            r0 = [GADNativeAdAttribution alloc];
            r0 = [r0 initWithDictionary:r20 icons:r24];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_attribution));
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            sub_100822058(r19->_assets, *0x100e96798, *(r19 + r23));
            [r19 loadImageArray:r22 loadedImages:r24];
            [r24 release];
            [r22 release];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadImageArray:(void *)arg2 loadedImages:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    var_30 = [self retain];
    var_28 = r19;
    r19 = [r19 retain];
    [arg2 enumerateObjectsUsingBlock:&var_50];
    [r22 release];
    [var_28 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_assetLoadingGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaContentWebViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_adVerificationWebViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_attribution, 0x0);
    objc_storeStrong((int64_t *)&self->_requiredAssets, 0x0);
    objc_storeStrong((int64_t *)&self->_instreamContent, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaContent, 0x0);
    objc_storeStrong((int64_t *)&self->_internalNativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_images, 0x0);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_assets, 0x0);
    objc_storeStrong((int64_t *)&self->_adContext, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    return;
}

@end