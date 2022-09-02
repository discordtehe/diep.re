@implementation FBANInterstitialAdAdapter

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBANInterstitialAdAdapter");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

-(bool)useNewToolbarInInterstitial {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 useNewInterstitialVideoDesign] != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r20 = [r0 useNewToolbarDesign];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)adDataModel {
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
    r0 = [self nativeAdData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 type] == 0x2) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 useNewInterstitialVideoDesign];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r19 = [[r19 nativeAdData] retain];
            }
            else {
                    r0 = [r19 target];
                    r0 = [r0 retain];
                    r19 = [[r0 adDataModel] retain];
                    [r0 release];
            }
    }
    else {
            [r21 release];
            r0 = [r19 target];
            r0 = [r0 retain];
            r19 = [[r0 adDataModel] retain];
            [r0 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    r0 = [self startAdFromRootViewController:arg2 animated:0x1];
    return r0;
}

-(void *)adView {
    return 0x0;
}

-(void)loadEndCard {
    r22 = [FBAdEndCardViewController alloc];
    r20 = [[self placementID] retain];
    r21 = [[self nativeAdData] retain];
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r24 = [r0 useNewInterstitialVideoDesign];
    r25 = [self useNewToolbarInInterstitial];
    r26 = [[FBAdViewControllerProxy viewController] retain];
    r22 = [r22 initWithPlacementID:r20 adDataModel:r21 useNewLayout:r24 useNewToolbar:r25 rootViewController:r26];
    [self setEndCardViewController:r22];
    [r22 release];
    [r26 release];
    [r0 release];
    [r21 release];
    [r20 release];
    r0 = [self endCardViewController];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    return;
}

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
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
    r0 = [r21 navigationController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = 0x1;
            [r19 presentViewController:r20 animated:0x1 completion:0x0];
            r0 = [r20 view];
            r29 = r29;
            r23 = [r0 retain];
    }
    else {
            r24 = [[r21 target] retain];
            r25 = [[FBAdViewControllerProxy proxyWithViewController:r19] retain];
            r22 = [r24 showAdFromRootViewController:r25];
            [r25 release];
            [r24 release];
            r0 = [r21 target];
            r0 = [r0 retain];
            r27 = [[r0 view] retain];
            r28 = [[r21 placementID] retain];
            [FBAdDebugOverlay addToSuperview:r27 withPlacementID:r28];
            [r28 release];
            [r27 release];
            [r0 release];
            r0 = [r21 target];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 view];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
    }
    r24 = [FBAdMediationOverlay alloc];
    r0 = [r21 extraHint];
    r0 = [r0 retain];
    r25 = [[r0 mediationData] retain];
    r24 = [r24 initWithString:r25];
    [r25 release];
    [r0 release];
    [r24 attachToView:r23];
    [r24 release];
    [r20 release];
    [r23 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)pushEndCardViewController {
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
    r19 = [[self endCardViewController] retain];
    r0 = [r20 navigationController];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 visibleViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    [r23 release];
    [FBAdConnectionInfo currentReachabilityStatus];
    if (r22 != r19) {
            asm { ccmp       x19, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            if (r22 != r19) {
                    [r20 dismissViewControllerAnimated];
            }
    }
    else {
            r0 = [r20 navigationController];
            r0 = [r0 retain];
            [r0 pushViewController:r19 animated:0x1];
            [r0 release];
            r22 = [[r19 view] retain];
            r20 = [[r20 placementID] retain];
            [FBAdDebugOverlay addToSuperview:r22 withPlacementID:r20];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)logAdapterLoaded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self requestId];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [FBAdDebugLogging logAdLoadedForAdFormat:@"interstitial" requestId:r19];
    }
    [r19 release];
    return;
}

-(void)dismissViewControllerAnimated {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adapterWillUnload:)] != 0x0) {
            [r20 adapterWillUnload:r19];
    }
    objc_initWeak(r29 - 0x28, r20);
    [[r19 navigationController] retain];
    [r20 retain];
    objc_copyWeak(&var_60 + 0x30, r29 - 0x28);
    [r22 dismissViewControllerAnimated:0x1 completion:&var_60];
    [r22 release];
    objc_destroyWeak(&var_60 + 0x30);
    [r0 release];
    objc_destroyWeak(r29 - 0x28);
    [r20 release];
    return;
}

-(void)interstitialAdDidClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidClick:self url:0x0 playerHandles:0x0];
    [r0 release];
    return;
}

-(void)interstitialAdDidClose:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adapterDidUnload:)] != 0x0) {
            [r20 adapterDidUnload:r19];
    }
    [r20 release];
    return;
}

-(void)viewControllerWantToProcessCTAWithEvent:(void *)arg2 {
    r31 = r31 - 0x80;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r22 = [arg2 retain];
    [r19 firstImpressionTime];
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r19 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    r20 = [r0 retain];
    r21 = [[FBAdUtility touchDictionaryForEvent:r22 delayTime:r20] retain];
    [r22 release];
    r0 = @class(FBAdUtility);
    r0 = [r0 getJSONStringFromObject:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r24 = [[FBAdUtility getJSONStringFromObject:r2] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 mutableCopy];
            [r0 release];
            [r24 release];
    }
    else {
            r23 = 0x0;
    }
    r0 = [r19 nativeAdData];
    r0 = [r0 retain];
    r24 = [[r0 commandURL] retain];
    [r0 release];
    r0 = [r19 nativeAdData];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 inlineClientToken];
    r29 = r29;
    r25 = [r0 retain];
    [r26 release];
    if (r24 != 0x0 && r25 != 0x0) {
            r0 = [r19 commandProcessor];
            r0 = [r0 retain];
            [r0 processCommand:r24 withExtraData:r23 inlineClientToken:r25 skipAppStore:0x0 completionHandler:0x100ea7670];
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialAdWillClose:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adapterWillUnload:)] != 0x0) {
            [r20 adapterWillUnload:r19];
    }
    [r20 release];
    return;
}

-(void)interstitialAdDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidLoad:self];
    [r0 release];
    [self logAdapterLoaded];
    return;
}

-(void)interstitialAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)interstitialAdWillLogImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterWillLogImpression:self];
    [r0 release];
    return;
}

-(void)videoAdViewControllerDidLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidLoad:r19];
    [r0 release];
    if ([r19 showEndCard] != 0x0) {
            [r19 loadEndCard];
    }
    [r19 logAdapterLoaded];
    return;
}

-(void)videoAdViewController:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)videoAdViewControllerComplete:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self showEndCard] != 0x0) {
            [r19 pushEndCardViewController];
    }
    return;
}

-(void)videoAdViewControllerSkipped:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = &@selector(dismissViewControllerAnimated);
    if ([self showEndCard] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(dismissViewControllerAnimated);
            }
            else {
                    r8 = &@selector(pushEndCardViewController);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)videoAdViewControllerWillClose:(void *)arg2 {
    [self dismissViewControllerAnimated];
    return;
}

-(void)videoAdViewControllerWantsToLogImpression:(void *)arg2 {
    r20 = [[FBAdEventManager sharedManager] retain];
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r22 = [[r0 inlineClientToken] retain];
    [r20 logImpressionForToken:r22 withExtraData:0x0];
    [r22 release];
    [r0 release];
    [r20 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterWillLogImpression:self];
    [r0 release];
    return;
}

-(void)videoAdViewControllerWantsToProcessCTA:(void *)arg2 withEvent:(void *)arg3 isDoneOrSkippable:(bool)arg4 {
    [self viewControllerWantToProcessCTAWithEvent:arg3];
    return;
}

-(void)endCardViewControllerDidClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidClick:self url:0x0 playerHandles:0x0];
    [r0 release];
    return;
}

-(void)loadAdData:(void *)arg2 forSize:(struct FBAdSize)arg3 forOrientation:(long long)arg4 forPlacement:(void *)arg5 placementDefinition:(void *)arg6 dataModelType:(void *)arg7 rewardData:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x1d0;
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
    r22 = [arg2 retain];
    r20 = [r4 retain];
    r23 = [r5 retain];
    r19 = [arg8 retain];
    var_178 = r20;
    [self setPlacementID:r20];
    var_168 = r19;
    [self setExtraHint:r19];
    r19 = [[r22 stringForKeyOrNil:@"request_id"] retain];
    [self setRequestId:r19];
    [r19 release];
    r19 = [FBNativeAdDataModel alloc];
    var_150 = r23;
    r3 = [r23 type];
    var_180 = r22;
    r19 = [r19 initWithMetadata:r22 placementType:r3];
    [self setNativeAdData:r19];
    [r19 release];
    r19 = [FBAdCacheDebugData alloc];
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r21 = [[r0 requestId] retain];
    r24 = [r19 initWithRequestId:r21 adFormat:@"interstitial"];
    [r21 release];
    [r0 release];
    var_158 = self;
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 cacheKeysForCreatives];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    var_110 = q0;
    r0 = [r20 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_120;
    var_140 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r21 = r0;
            r28 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r25);
                            }
                            r19 = @selector(mapCacheDebugData:forKey:);
                            r0 = [FBAdLoggingContext sharedContext];
                            r29 = r29;
                            r0 = [r0 retain];
                            objc_msgSend(r0, r19);
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r21);
                    r2 = &var_120;
                    r0 = objc_msgSend(r25, var_140);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    [r25 release];
    r26 = var_158;
    r27 = @selector(nativeAdData);
    r0 = objc_msgSend(r26, r27);
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    r22 = @selector(type);
    if (objc_msgSend(r0, r22) != 0x2) goto loc_1009f9074;

loc_1009f906c:
    r22 = 0x0;
    goto loc_1009f90a0;

loc_1009f90a0:
    r23 = var_180;
    r0 = [r23 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    if (r22 != 0x0) {
            [r19 release];
    }
    r2 = @"dynamic_sdk_layer_html_url";
    [r20 release];
    r28 = var_178;
    r22 = @selector(type);
    if (r21 == 0x0) goto loc_1009f92b4;

loc_1009f90ec:
    [r26 setFirstImpressionTime:@"dynamic_sdk_layer_html_url"];
    r19 = [FBAdCommandProcessor new];
    [r26 setCommandProcessor:r19];
    [r19 release];
    r19 = [FBAdDSLBridgeViewController alloc];
    r0 = objc_msgSend(r26, r27);
    r29 = r29;
    r21 = [r0 retain];
    r20 = [r19 initWithAdData:r23 withNativeAdDataModel:r21];
    [r21 release];
    if (r20 == 0x0) goto loc_1009f92b4;

loc_1009f9188:
    [r20 setDelegate:r26];
    r19 = [[UINavigationController alloc] initWithRootViewController:r20];
    [r26 setNavigationController:r19];
    [r19 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setNavigationBarHidden:0x1];
    [r0 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setDelegate:r26];
    [r0 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setTransitioningDelegate:r26];
    [r0 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setModalTransitionStyle:0x2];
    goto loc_1009f964c;

loc_1009f964c:
    [r19 release];
    goto loc_1009f985c;

loc_1009f985c:
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r25 release];
    [r24 release];
    [var_168 release];
    [var_150 release];
    [r28 release];
    [r23 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1009f92b4:
    r0 = objc_msgSend(r26, r27);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (objc_msgSend(r0, r22) != 0x2) goto loc_1009f946c;

loc_1009f92dc:
    r0 = [FBAdConfigManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 useNewInterstitialVideoDesign];
    [r0 release];
    [r19 release];
    if (r26 == 0x0) goto loc_1009f9474;

loc_1009f9328:
    r26 = var_158;
    [r26 setFirstImpressionTime:r2];
    r19 = [FBAdCommandProcessor new];
    [r26 setCommandProcessor:r19];
    [r19 release];
    var_180 = [FBAdVideoAdViewController alloc];
    var_140 = [[r26 placementID] retain];
    var_148 = [[r26 nativeAdData] retain];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    var_188 = r0;
    var_18C = [r0 useNewInterstitialVideoDesign];
    var_19C = [r26 useNewToolbarInInterstitial];
    r0 = [r26 nativeAdData];
    r0 = [r0 retain];
    var_198 = r0;
    r0 = [r0 videoAutoplayEnabled];
    r0 = [r0 retain];
    r22 = r0;
    r20 = [r0 boolValue];
    r0 = [r26 nativeAdData];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (r0 != 0x0) {
            [r28 forcedViewTime];
    }
    r0 = [FBAdViewControllerProxy proxyWithViewController:0x0];
    r0 = [r0 retain];
    r20 = [var_180 initWithPlacementID:var_140 adDataModel:var_148 placementDefinition:var_150 useNewLayout:var_18C useNewToolbar:var_19C showCta:0x1 autoplay:r20 isRewardedAd:&var_138 forcedViewTime:r0 rootViewController:stack[-440]];
    [r0 release];
    [r28 release];
    [r22 release];
    [var_198 release];
    [var_188 release];
    [var_148 release];
    [var_140 release];
    [r20 setDelegate:r26];
    r0 = [r26 nativeAdData];
    r0 = [r0 retain];
    [r26 setShowEndCard:[r0 showEndCard]];
    [r0 release];
    r19 = [[UINavigationController alloc] initWithRootViewController:r20];
    [r26 setNavigationController:r19];
    [r19 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setNavigationBarHidden:0x1];
    [r0 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setDelegate:r26];
    [r0 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setTransitioningDelegate:r26];
    [r0 release];
    r0 = [r26 navigationController];
    r0 = [r0 retain];
    [r0 setModalTransitionStyle:0x2];
    [r0 release];
    r28 = var_178;
    goto loc_1009f985c;

loc_1009f9474:
    r0 = [r23 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = @class(FBInterstitialDisplayAdInternal);
    }
    else {
            r0 = [r23 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = @class(FBInterstitialPlayableAdViewController);
            }
            else {
                    r0 = @class(FBInterstitialNativeAdInternal);
            }
    }
    r19 = [[r0 alloc] initWithPlacementID:r28 adData:r23 placementDefinition:var_150 extraHint:var_168];
    r26 = var_158;
    [r26 setTarget:r19];
    [r19 release];
    r0 = [r26 target];
    r0 = [r0 retain];
    [r0 setDelegate:r26];
    [r0 release];
    r0 = [r26 target];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_1009f95ec;

loc_1009f9588:
    r0 = [r26 target];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isAdValid];
    [r0 release];
    [r19 release];
    if ((r22 & 0x1) == 0x0) goto loc_1009f95f4;

loc_1009f95c4:
    r0 = [r26 target];
    r0 = [r0 retain];
    r20 = r0;
    [r0 loadAd];
    goto loc_1009f985c;

loc_1009f95f4:
    r20 = [[r26 delegate] retain];
    r19 = [[FBAdError getNSError:0x3e9] retain];
    [r20 adapter:r26 didFailWithError:r19];
    goto loc_1009f964c;

loc_1009f95ec:
    [r19 release];
    goto loc_1009f95f4;

loc_1009f946c:
    [r19 release];
    goto loc_1009f9474;

loc_1009f9074:
    r0 = objc_msgSend(r26, r27);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (objc_msgSend(r0, r22) != 0x1) goto loc_1009f92a0;

loc_1009f909c:
    r22 = 0x1;
    goto loc_1009f90a0;

loc_1009f92a0:
    [r19 release];
    [r20 release];
    r23 = var_180;
    r28 = var_178;
    goto loc_1009f92b4;
}

-(void)videoAdViewControllerDidBecomeSkippable:(void *)arg2 {
    return;
}

-(void)endCardViewControllerWillClose:(void *)arg2 {
    [self dismissViewControllerAnimated];
    return;
}

-(void)endCardViewControllerDidTerminate:(void *)arg2 {
    [self dismissViewControllerAnimated];
    return;
}

-(void *)navigationController:(void *)arg2 animationControllerForOperation:(long long)arg3 fromViewController:(void *)arg4 toViewController:(void *)arg5 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    if ([r19 respondsToSelector:r2] == 0x0 || [r20 respondsToSelector:r2] == 0x0) goto loc_1009faa44;

loc_1009faa38:
    r0 = @class(FBCustomEndcardPresentation);
    goto loc_1009faa80;

loc_1009faa80:
    r21 = [r0 new];
    goto loc_1009faa98;

loc_1009faa98:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1009faa44:
    if ([r19 conformsToProtocol:r2] == 0x0 || [r20 conformsToProtocol:r2] == 0x0) goto loc_1009faa94;

loc_1009faa78:
    r0 = @class(FBAdCardToFullscreenTransition);
    goto loc_1009faa80;

loc_1009faa94:
    r21 = 0x0;
    goto loc_1009faa98;
}

-(void *)animationControllerForPresentedController:(void *)arg2 presentingController:(void *)arg3 sourceController:(void *)arg4 {
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 adCreativeType];
    r0 = [r0 retain];
    var_58 = [r0 isEqualToString:@"contextual_app"] ^ 0x1;
    [r0 release];
    [r19 release];
    var_60 = [FBAdIntroCardTransition alloc];
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 title] retain];
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedSponsoredText] retain];
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 iconURL] retain];
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r23 = r0;
    r21 = [r0 showIntroCardTransition];
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r24 = [[r0 inlineClientToken] retain];
    r21 = [var_60 initWithTitle:r22 subtitle:r26 iconURL:r28 iconStyle:var_58 shouldShowIntroCardTransition:r21 token:r24];
    [r24 release];
    [r0 release];
    [r23 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r22 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)animationControllerForDismissedController:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self nativeAdData];
    r0 = [r0 retain];
    r20 = [r0 showExitTransition];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [FBAdExitTransition new];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void)dynamicAdViewController:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)dynamicAdViewControllerDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidLoad:self];
    [r0 release];
    return;
}

-(void)dynamicAdViewControllerWantsToProcessCTA:(void *)arg2 withEvent:(void *)arg3 {
    [self viewControllerWantToProcessCTAWithEvent:arg3];
    return;
}

-(void)dynamicAdViewControllerWillClose:(void *)arg2 {
    [self dismissViewControllerAnimated];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestId, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_storeStrong((int64_t *)&self->_commandProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_endCardViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_navigationController, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_target, 0x0);
    return;
}

-(void *)target {
    r0 = self->_target;
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_target, arg2);
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)navigationController {
    r0 = self->_navigationController;
    return r0;
}

-(void)setNavigationController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_navigationController, arg2);
    return;
}

-(void *)endCardViewController {
    r0 = self->_endCardViewController;
    return r0;
}

-(void)setEndCardViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_endCardViewController, arg2);
    return;
}

-(bool)showEndCard {
    r0 = *(int8_t *)(int64_t *)&self->_showEndCard;
    return r0;
}

-(void)setShowEndCard:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showEndCard = arg2;
    return;
}

-(void *)commandProcessor {
    r0 = self->_commandProcessor;
    return r0;
}

-(void)setCommandProcessor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandProcessor, arg2);
    return;
}

-(double)firstImpressionTime {
    r0 = self;
    return r0;
}

-(void)setFirstImpressionTime:(double)arg2 {
    self->_firstImpressionTime = d0;
    return;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

-(void *)requestId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestId)), 0x0);
    return r0;
}

-(void)setRequestId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end