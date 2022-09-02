@implementation GADAdLoader

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithAdUnitID:(void *)arg2 rootViewController:(void *)arg3 adTypes:(void *)arg4 options:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r24 = @selector(init);
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [NSSet alloc];
            r0 = [r0 initWithArray:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adTypes));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r23 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_options));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [GADAdSource alloc];
            r0 = objc_msgSend(r0, r24);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r22->_rootViewController, r20);
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [self->_adSource invalidateAndCancel];
    [[&var_20 super] dealloc];
    return;
}

-(void)setDelegate:(void *)arg2 {
    r31 = r31 - 0x1c0;
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
    r20 = self;
    r26 = [arg2 retain];
    r19 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r19);
    [r0 release];
    if (r0 == r26) goto loc_10083635c;

loc_100835fa4:
    if (r26 == 0x0) goto loc_100836350;

loc_100835fa8:
    var_180 = r19;
    r0 = r20->_adTypes;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_178 = r1;
    r27 = objc_msgSend(r0, r1);
    if (r27 == 0x0) goto loc_1008362f4;

loc_100835ff4:
    r20 = *0x0;
    var_158 = r26;
    goto loc_100836074;

loc_100836074:
    r24 = 0x0;
    r28 = @selector(conformsToProtocol:);
    r19 = @selector(isEqual:);
    var_120 = r19;
    var_138 = r27;
    goto loc_1008360a0;

loc_1008360a0:
    if (*0x0 != r20) {
            objc_enumerationMutation(var_130);
    }
    r21 = *(0x0 + r24 * 0x8);
    r25 = [r26 retain];
    r21 = [[r21 retain] retain];
    if (r21 == 0x0) goto loc_1008361a8;

loc_1008360e0:
    if (objc_msgSend(r21, r19) == 0x0) goto loc_100836100;

loc_1008360f4:
    r0 = @protocol();
    goto loc_10083619c;

loc_10083619c:
    r22 = [r0 retain];
    goto loc_1008361ac;

loc_1008361ac:
    [r21 release];
    if ((objc_msgSend(r25, r28) & 0x1) != 0x0) {
            r23 = 0x0;
            r19 = 0x1;
    }
    else {
            var_140 = @selector(class);
            r26 = [NSStringFromProtocol(r22) retain];
            r0 = objc_msgSend(r25, var_140);
            r0 = NSStringFromClass(r0);
            r0 = [r0 retain];
            r27 = r28;
            r28 = r20;
            r20 = r0;
            r19 = [[NSString alloc] initWithFormat:r2];
            r0 = sub_100809600(0xc, r19);
            r29 = r29;
            r23 = [[r0 retain] autorelease];
            [r19 release];
            r0 = r20;
            r20 = r28;
            r28 = r27;
            [r0 release];
            r0 = r26;
            r26 = var_158;
            r27 = var_138;
            [r0 release];
            r19 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r25 release];
    r21 = [r23 retain];
    if (r19 == 0x0) goto loc_100836308;

loc_1008362a8:
    [r21 release];
    r24 = r24 + 0x1;
    r19 = var_120;
    if (r24 < r27) goto loc_1008360a0;

loc_1008362c0:
    r27 = objc_msgSend(var_130, var_178);
    if (r27 != 0x0) goto loc_100836074;

loc_1008362f4:
    [var_130 release];
    r0 = var_180;
    r1 = r26;
    goto loc_100836358;

loc_100836358:
    objc_storeWeak(r0, r1);
    goto loc_10083635c;

loc_10083635c:
    var_58 = **___stack_chk_guard;
    [r26 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100836308:
    [[r21 localizedDescription] retain];
    NSLog(@"<Google> %@", @selector(localizedDescription));
    [r19 release];
    [r21 release];
    [var_130 release];
    goto loc_10083635c;

loc_100836100:
    if (objc_msgSend(r21, r19) == 0x0) goto loc_100836120;

loc_100836114:
    r0 = @protocol();
    goto loc_10083619c;

loc_100836120:
    if (objc_msgSend(r21, r19) == 0x0) goto loc_100836140;

loc_100836134:
    r0 = @protocol();
    goto loc_10083619c;

loc_100836140:
    if (objc_msgSend(r21, r19) == 0x0) goto loc_100836160;

loc_100836154:
    r0 = @protocol();
    goto loc_10083619c;

loc_100836160:
    if (objc_msgSend(r21, r19) == 0x0) goto loc_100836180;

loc_100836174:
    r0 = @protocol();
    goto loc_10083619c;

loc_100836180:
    if (objc_msgSend(r21, r19) == 0x0) goto loc_1008361a8;

loc_100836194:
    r0 = @protocol();
    goto loc_10083619c;

loc_1008361a8:
    r22 = 0x0;
    goto loc_1008361ac;

loc_100836350:
    r0 = r19;
    r1 = 0x0;
    goto loc_100836358;
}

-(void)loadRequest:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x220;
    r20 = self;
    r19 = [arg2 retain];
    if ((sub_100818a24() & 0x1) == 0x0) goto loc_1008365fc;

loc_1008363e8:
    objc_initWeak(&stack[-320], r20);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adTypes));
    r0 = *(r20 + r26);
    r0 = [r0 count];
    if (r0 == 0x0) goto loc_100836654;

loc_100836410:
    r23 = [*(r20 + r26) containsObject:*0x100e978d0];
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolForKey:*0x100e9b9b8];
    [r0 release];
    if (((r24 | r23 ^ 0x1) & 0x1) == 0x0) goto loc_1008366d4;

loc_100836488:
    var_260 = r26;
    var_248 = r19;
    r0 = r20->_options;
    r0 = [r0 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_240 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_10083658c;

loc_1008364f0:
    r22 = 0x0;
    goto loc_100836500;

loc_100836500:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r23);
    }
    r26 = @selector(class);
    r21 = *(0x0 + r22 * 0x8);
    objc_msgSend(@class(GADMultipleAdsAdLoaderOptions), r26);
    if (objc_msgSend(r21, r27) == 0x0 || [r21 numberOfAds] > 0x0) goto loc_100836554;

loc_100836758:
    r21 = [sub_100809600(0x0, @"Requested ad count must be positive.") retain];
    var_1E0 = [r20 retain];
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_200);
    [r21 release];
    [var_1E0 release];
    [r20 release];
    [r23 release];
    r19 = var_248;
    goto loc_100836a28;

loc_100836a28:
    objc_destroyWeak(&stack[-320]);
    goto loc_100836a30;

loc_100836a30:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100836554:
    r22 = r22 + 0x1;
    if (r22 < r25) goto loc_100836500;

loc_100836560:
    r25 = objc_msgSend(r23, var_240);
    if (r25 != 0x0) goto loc_1008364f0;

loc_10083658c:
    [r23 release];
    r26 = *0x100e978d0;
    r19 = var_248;
    r23 = var_260;
    r22 = @selector(containsObject:);
    if (r19 == 0x0) {
            r0 = [GADRequest request];
            r29 = r29;
            r21 = [r0 retain];
            [r19 release];
            r19 = r21;
    }
    r0 = [r19 adTypes];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r24 = [*(r20 + r23) retain];
            r25 = [[NSMutableArray alloc] init];
            if (objc_msgSend(r24, r22) != 0x0) {
                    sub_100822370(r25, *0x100e99628);
            }
            r22 = [NSSet alloc];
            r26 = [[NSArray arrayWithObjects:r29 - 0x80 count:0x5] retain];
            r21 = [r22 initWithArray:r26];
            [r26 release];
            if ([r24 intersectsSet:r21] != 0x0) {
                    sub_100822370(r25, *0x100e99648);
            }
            [r21 release];
            [r24 release];
            r21 = [[r25 autorelease] retain];
            [r19 setAdTypes:r21];
            [r21 release];
    }
    [r20 updateTargeting:[[GADTargeting alloc] initWithRequest:r19 adUnitID:r20->_adUnitID]];
    var_218 = [r20 retain];
    objc_copyWeak(&var_238 + 0x30, &stack[-320]);
    r20 = [r22 retain];
    sub_100860a80();
    [r20 release];
    objc_destroyWeak(&var_238 + 0x30);
    r0 = var_218;
    goto loc_100836a1c;

loc_100836a1c:
    [r0 release];
    [r20 release];
    goto loc_100836a28;

loc_1008366d4:
    r21 = [sub_100809600(0x0, @"Requesting unified native ad is disabled.") retain];
    var_170 = [r20 retain];
    r20 = [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_190);
    [r21 release];
    r0 = var_170;
    goto loc_100836a1c;

loc_100836654:
    r21 = [sub_100809600(r0, @"Must specify at least one ad type.") retain];
    var_140 = [r20 retain];
    r20 = [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_160);
    [r21 release];
    r0 = var_140;
    goto loc_100836a1c;

loc_1008365fc:
    var_108 = [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_128);
    [var_108 release];
    goto loc_100836a30;
}

-(void)finishRenderingAd:(void *)arg2 withRenderedAds:(void *)arg3 errors:(void *)arg4 configuration:(struct NSDictionary *)arg5 {
    [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    [arg5 retain];
    objc_initWeak(&saved_fp - 0x68, self);
    var_C0 = r23;
    [r23 retain];
    var_B8 = r24;
    [r24 retain];
    [r25 retain];
    objc_copyWeak(&var_E0 + 0x48, &saved_fp - 0x68);
    [r26 retain];
    r0 = objc_retainBlock(&var_E0);
    var_F0 = [self retain];
    [r0 retain];
    dispatch_async(*__dispatch_main_q, &var_110);
    [r0 release];
    [var_F0 release];
    [r21 release];
    [r26 release];
    objc_destroyWeak(&var_E0 + 0x48);
    [r25 release];
    [var_B8 release];
    [var_C0 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    _Block_object_dispose(&var_90, 0x8);
    objc_destroyWeak(&saved_fp - 0x68);
    return;
}

-(void)adSourceDidLoadAds:(void *)arg2 withErrors:(void *)arg3 configuration:(struct NSDictionary *)arg4 {
    r31 = r31 - 0xa0;
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [GADUnrenderedAd class];
    r22 = [[NSPredicate predicateWithFormat:@"self isKindOfClass: %@"] retain];
    r0 = [r19 filteredArrayUsingPredicate:r22];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 count] != 0x0) {
            if ([r23 count] >= 0x2) {
                    sub_1007ce06c(0x0, @"Multiple unrendered ads are not supported. Honoring only the first ad.");
            }
            r25 = [[r23 firstObject] retain];
            r0 = [r19 mutableCopy];
            [r0 removeObjectsInArray:r23];
            [r24 finishRenderingAd:r25 withRenderedAds:r0 errors:r20 configuration:r21];
            [r0 release];
            r0 = r25;
    }
    else {
            var_60 = [r24 retain];
            var_58 = [r19 retain];
            var_50 = [r21 retain];
            var_48 = [r20 retain];
            sub_100860a80();
            [var_48 release];
            [var_50 release];
            [var_58 release];
            r0 = var_60;
    }
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)adSource {
    r0 = self->_adSource;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)publicAdFromInternalAd:(void *)arg2 info:(struct NSDictionary *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x90;
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
    r22 = arg4;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = objc_loadWeakRetained((int64_t *)&r24->_rootViewController);
    [GADBannerAd class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 retain];
            r23 = r0;
            r0 = [r0 adView];
            r0 = [r0 retain];
            [r0 frame];
            sub_100845a5c();
            [r25 release];
            r0 = [DFPBannerView alloc];
            r0 = [r0 initWithAdSize:&var_70];
            r25 = r0;
            [r0 setRootViewController:r21];
            r24 = [[r24 validAdSizes] retain];
            [r25 setValidAdSizes:r24];
            [r24 release];
            r0 = [r25 bannerView];
            r0 = [r0 retain];
            [r0 loadAd:r23 info:r20 error:&var_78];
            r26 = [var_78 retain];
            [r0 release];
            r24 = 0x0;
            if (r26 == 0x0) {
                    r24 = [r25 retain];
            }
            [r25 release];
            [r23 release];
            if (r22 != 0x0) {
                    if (r26 != 0x0) {
                            r26 = objc_retainAutorelease(r26);
                            *r22 = r26;
                    }
            }
    }
    else {
            r25 = @selector(isKindOfClass:);
            [GADInternalNativeAd class];
            if (objc_msgSend(r19, r25) != 0x0) {
                    r25 = @selector(isKindOfClass:);
                    r0 = [r19 retain];
                    r22 = r0;
                    r24 = sub_100835ab4(r0, r24->_adTypes);
                    [r22 setPublicAdClass:r24];
                    r24 = [[r24 alloc] initWithInternalNativeAd:r22];
                    [GADNativeAd class];
                    if (objc_msgSend(r24, r25) == 0x0) {
                            r25 = @selector(isKindOfClass:);
                            [GADUnifiedNativeAd class];
                            if (objc_msgSend(r24, r25) != 0x0) {
                                    [r24 setRootViewController:r21];
                            }
                    }
                    else {
                            [r24 setRootViewController:r21];
                    }
                    [r22 release];
                    r26 = 0x0;
            }
            else {
                    sub_1007ce06c(0x0, @"Invalid ad type returned to for GADAdLoader request. Ad: %@");
                    r26 = [sub_100809600(0xb, @"Failed to create public ad: ad type not supported") retain];
                    r24 = 0x0;
                    if (r22 != 0x0) {
                            if (r26 != 0x0) {
                                    r26 = objc_retainAutorelease(r26);
                                    *r22 = r26;
                            }
                    }
            }
    }
    [r26 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void *)validAdSizes {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r19 = r0;
    if ([r0 conformsToProtocol:@protocol(DFPBannerAdLoaderDelegate)] != 0x0) {
            r20 = [[r19 validBannerSizesForAdLoader:r20] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)failedToReceiveAdWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [sub_100809bcc() retain];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adLoader:didFailToReceiveAdWithError:), r3] != 0x0) {
            [r21 adLoader:r19 didFailToReceiveAdWithError:r20];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)updateTargeting:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [sub_1008676a4() retain];
    [r19 setSignalSource:r20 forKey:*0x100e92160];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adTypes));
    r0 = sub_100867b3c();
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 setSignalSource:r22 forKey:*0x100e92220];
    if ([*(r21 + r27) containsObject:r2] != 0x0) {
            r0 = [r21 customTemplateIDs];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if ([r0 count] != 0x0) {
                    r0 = sub_100867f74();
                    r29 = r29;
                    r26 = [r0 retain];
                    [r19 setSignalSource:r26 forKey:*0x100e92190];
                    [r26 release];
            }
            [r25 release];
    }
    if ([*(r21 + r27) containsObject:r2] != 0x0) {
            r0 = [r21 validAdSizes];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if ([r0 count] != 0x0) {
                    r0 = sub_10085b5f8();
                    r29 = r29;
                    r26 = [r0 retain];
                    [r19 setSignalSource:r26 forKey:*0x100e92228];
                    [r26 release];
            }
            [r25 release];
    }
    if (([*(r21 + r27) containsObject:r2] & 0x1) != 0x0 || ([*(r21 + r27) containsObject:r2] & 0x1) != 0x0 || [*(r21 + r27) containsObject:r2] != 0x0) {
            r24 = [sub_100868040() retain];
            [r19 setSignalSource:r24 forKey:*0x100e921d0];
            [r24 release];
    }
    sub_1008c2bc8(r19);
    r23 = objc_loadWeakRetained((int64_t *)&r21->_rootViewController);
    [r19 setRootViewController:r23];
    [r23 release];
    r21 = [*(r21 + r27) copy];
    [r19 setNativeAdTypes:r21];
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)finishLoading {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adLoaderDidFinishLoading:)] != 0x0) {
            [r20 adLoaderDidFinishLoading:r19];
    }
    [r20 release];
    return;
}

-(void *)customTemplateIDs {
    r31 = r31 - 0x170;
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
    var_120 = [[NSMutableArray alloc] init];
    r0 = objc_loadWeakRetained((int64_t *)&r22->_delegate);
    r19 = r0;
    r0 = [r0 respondsToSelector:@selector(nativeCustomTemplateIDsForAdLoader:)];
    var_148 = r19;
    if (r0 != 0x0) {
            r0 = [r19 nativeCustomTemplateIDsForAdLoader:r22];
            r29 = r29;
            r22 = [r0 retain];
    }
    else {
            r22 = 0x0;
    }
    var_130 = [[NSNumberFormatter alloc] init];
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_140 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_1008386f0;

loc_100838598:
    r19 = 0x0;
    goto loc_1008385c8;

loc_1008385c8:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_128);
    }
    r26 = *(0x0 + r19 * 0x8);
    if ([r26 isKindOfClass:[NSString class]] == 0x0) goto loc_100838660;

loc_100838608:
    r0 = [var_130 numberFromString:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) {
            NSLog(@"<Google> Received non-numeric custom template ID. The template ID may be invalid: %@", @selector(numberFromString:));
    }
    sub_100822370(var_120, [r26 copy]);
    [r26 release];
    goto loc_1008386a8;

loc_1008386a8:
    [r25 release];
    goto loc_1008386c4;

loc_1008386c4:
    r19 = r19 + 0x1;
    if (r19 < r24) goto loc_1008385c8;

loc_1008386d0:
    r24 = objc_msgSend(var_128, var_140);
    if (r24 != 0x0) goto loc_100838598;

loc_1008386f0:
    var_58 = **___stack_chk_guard;
    [var_128 release];
    [var_130 release];
    [var_148 release];
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_120 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100838660:
    [NSNumber class];
    if ([r26 isKindOfClass:r2] == 0x0) goto loc_1008386b4;

loc_100838684:
    r0 = [r26 stringValue];
    r29 = r29;
    r25 = [r0 retain];
    sub_100822370(var_120, r25);
    goto loc_1008386a8;

loc_1008386b4:
    NSLog(@"<Google> Received non-string custom template ID: %@", @selector(isKindOfClass:));
    goto loc_1008386c4;
}

-(bool)requestInProgress {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(bool)isLoading {
    r0 = [self requestInProgress];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adUnitID {
    r0 = self->_adUnitID;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    objc_storeStrong((int64_t *)&self->_adTypes, 0x0);
    objc_storeStrong((int64_t *)&self->_adSource, 0x0);
    return;
}

-(void)receivePublicAd:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    [DFPBannerView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r23 = r0;
            if ([r0 respondsToSelector:@selector(adLoader:didReceiveDFPBannerView:), r3] != 0x0) {
                    r3 = r19;
                    [r23 adLoader:r20 didReceiveDFPBannerView:r3];
            }
            [r23 release];
    }
    r22 = @selector(isKindOfClass:);
    [GADNativeContentAd class];
    if (objc_msgSend(r19, r22) != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r23 = r0;
            if ([r0 respondsToSelector:@selector(adLoader:didReceiveNativeContentAd:), r3] != 0x0) {
                    r3 = r19;
                    [r23 adLoader:r20 didReceiveNativeContentAd:r3];
            }
            [r23 release];
    }
    r22 = @selector(isKindOfClass:);
    [GADNativeAppInstallAd class];
    if (objc_msgSend(r19, r22) != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r23 = r0;
            if ([r0 respondsToSelector:@selector(adLoader:didReceiveNativeAppInstallAd:), r3] != 0x0) {
                    r3 = r19;
                    [r23 adLoader:r20 didReceiveNativeAppInstallAd:r3];
            }
            [r23 release];
    }
    r22 = @selector(isKindOfClass:);
    [GADNativeCustomTemplateAd class];
    if (objc_msgSend(r19, r22) != 0x0) {
            r0 = [r19 retain];
            r23 = r0;
            r0 = [r0 mediaView];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    sub_1008833e8(*0x100e9c550, [[r23 internalNativeAd] retain], 0x0);
                    [r27 release];
                    r3 = &var_68;
                    sub_1008833e8(*0x100e9c558, [[r23 internalNativeAd] retain], [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:r3 count:0x1] retain]);
                    [r26 release];
                    [r25 release];
            }
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r25 = r0;
            if ([r0 respondsToSelector:@selector(adLoader:didReceiveNativeCustomTemplateAd:), r3] != 0x0) {
                    r3 = r23;
                    [r25 adLoader:r20 didReceiveNativeCustomTemplateAd:r3];
            }
            [r25 release];
            [r24 release];
            [r23 release];
    }
    r22 = @selector(isKindOfClass:);
    [GADUnifiedNativeAd class];
    if (objc_msgSend(r19, r22) != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r23 = r0;
            if ([r0 respondsToSelector:@selector(adLoader:didReceiveUnifiedNativeAd:), r3] != 0x0) {
                    r3 = r19;
                    [r23 adLoader:r20 didReceiveUnifiedNativeAd:r3];
            }
            [r23 release];
    }
    r22 = @selector(isKindOfClass:);
    [GADInstreamNativeAd class];
    if (objc_msgSend(r19, r22) != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r21 = r0;
            if ([r0 respondsToSelector:@selector(adLoader:didReceiveInstreamNativeAd:), r3] != 0x0) {
                    [r21 adLoader:r20 didReceiveInstreamNativeAd:r19];
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end