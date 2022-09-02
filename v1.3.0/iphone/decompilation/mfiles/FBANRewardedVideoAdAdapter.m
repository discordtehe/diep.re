@implementation FBANRewardedVideoAdAdapter

-(void *)adDataModel {
    r0 = [self rewardedVideoDataModel];
    return r0;
}

-(void)loadAdData:(void *)arg2 forSize:(struct FBAdSize)arg3 forOrientation:(long long)arg4 forPlacement:(void *)arg5 placementDefinition:(void *)arg6 dataModelType:(void *)arg7 rewardData:(void *)arg8 extraHint:(void *)arg9 {
    memcpy(&r3, &arg3, 0x8);
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [r4 retain];
    var_58 = [r5 retain];
    var_60 = [r6 retain];
    r23 = [r7 retain];
    r24 = [arg8 retain];
    r0 = [FBAdCommandProcessor new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_commandProcessor));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    r21 = [r20 copy];
    [r20 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
    r0 = *(r22 + r8);
    *(r22 + r8) = r21;
    [r0 release];
    objc_storeStrong((int64_t *)&r22->_dataModelType, r6);
    objc_storeStrong((int64_t *)&r22->_internalRewardData, r7);
    objc_storeStrong((int64_t *)&r22->_placementDefinition, r5);
    objc_storeStrong((int64_t *)&r22->_extraHint, arg8);
    r22->_firstImpressionTime = 0xbff0000000000000;
    r0 = [r19 stringForKeyOrNil:@"request_id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 setRequestId:r21];
    [r21 release];
    if ([r22->_dataModelType isEqualToString:r2] != 0x0) {
            r25 = [[FBAdChooseYourOwnAdDataModel alloc] initWithMetadata:r19];
            objc_storeStrong((int64_t *)&r22->_chooseYourOwnAdDataModel, r25);
            [r22 mapCacheKeys:r25];
            r0 = [FBAdChooseYourOwnAdViewController alloc];
            r0 = [r0 initWithModel:r22->_chooseYourOwnAdDataModel delegate:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_chooseYourOwnAdViewController));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    else {
            r25 = [[FBRewardedVideoAdDataModel alloc] initWithMetadata:r19];
            [r22 setNativeAdData:r25];
            [r22 mapCacheKeys:r25];
            [r22 setupViewControllerForDataModel:r25];
    }
    r0 = [r22 delegate];
    r29 = r29;
    r26 = [r0 retain];
    if (([r22 isAdValid] & 0x1) == 0x0) {
            r20 = [[FBAdError getNSError:0x3e9] retain];
            [r26 adapter:r22 didFailWithError:r20];
            [r20 release];
    }
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [var_60 release];
    [var_58 release];
    [r19 release];
    return;
}

-(bool)setRewardData:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isAdValid] != 0x0) {
            [r20 setInternalRewardData:r19];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)mapCacheKeys:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = [arg2 retain];
    r20 = [FBAdCacheDebugData alloc];
    r0 = [r19 requestId];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithRequestId:r21 adFormat:@"rewarded_video"];
    [r21 release];
    r0 = [r19 respondsToSelector:r2];
    var_130 = r19;
    if (r0 != 0x0) {
            r0 = [r19 performSelector:r2];
            r29 = r29;
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    var_110 = q0;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [FBAdLoggingContext sharedContext];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 mapCacheDebugData:r2 forKey:r3];
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r0 = objc_msgSend(r21, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r21 release];
    [r20 release];
    [var_130 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    r0 = [self startAdFromRootViewController:arg2 animated:0x1];
    return r0;
}

-(union ?)duration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = self->_rewardedVideoDataModel;
    if (r0 != 0x0) {
            r0 = [r0 duration];
    }
    else {
            if (*qword_1011dd148 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
            }
            r8 = *qword_1011dd150;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
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
            [FBAdDebugLogging logAdLoadedForAdFormat:@"rewarded_video" requestId:r19];
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidClick {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidClick:self url:0x0 playerHandles:0x0];
    [r0 release];
    return;
}

-(void)rewardedVideoAdDidClose {
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

-(void)rewardedVideoAdWillClose {
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

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
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
    r21 = self;
    r23 = [arg2 retain];
    if (([r21 isChooseYourOwnAd] & 0x1) != 0x0) {
            r0 = [r21 chooseYourOwnAdViewController];
            r29 = r29;
    }
    else {
            r0 = [r21 currentVideoController];
            r29 = r29;
    }
    r20 = [r0 retain];
    [r21 isAdValid];
    if (r20 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1009fc58c;

loc_1009fc584:
    r24 = 0x0;
    goto loc_1009fc8d0;

loc_1009fc8d0:
    [r20 release];
    [r23 release];
    r0 = r24;
    return r0;

loc_1009fc58c:
    r22 = [[UINavigationController alloc] initWithRootViewController:r20];
    [r21 setNavigationController:r22];
    [r22 release];
    r0 = [r21 navigationController];
    r0 = [r0 retain];
    [r0 setNavigationBarHidden:0x1];
    [r0 release];
    r0 = [r21 navigationController];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r0 release];
    r0 = [r21 navigationController];
    r0 = [r0 retain];
    [r0 setModalTransitionStyle:0x2];
    [r0 release];
    r0 = [FBAdConfigManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 useNewRewardedVideoDesign] == 0x0 || ([r21 isChooseYourOwnAd] & 0x1) != 0x0) goto loc_1009fc704;

loc_1009fc6b0:
    r0 = [r21 videoAdViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    if (r0 == 0x0) goto loc_1009fc70c;

loc_1009fc6dc:
    r0 = [r21 navigationController];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 setTransitioningDelegate:r21];
    goto loc_1009fc704;

loc_1009fc704:
    [r25 release];
    goto loc_1009fc70c;

loc_1009fc70c:
    r25 = [[FBAdViewControllerProxy proxyWithViewController:r23] retain];
    r26 = [[r21 navigationController] retain];
    r24 = 0x1;
    [r25 presentViewController:r26 animated:0x1 completion:0x0];
    [r26 release];
    [r25 release];
    r0 = [r21 navigationController];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 view] retain];
    r0 = [r21 placementID];
    r0 = [r0 retain];
    r19 = r23;
    [FBAdDebugOverlay addToSuperview:r28 withPlacementID:r0];
    [r0 release];
    [r28 release];
    [r27 release];
    r23 = [FBAdMediationOverlay alloc];
    r0 = [r21 extraHint];
    r0 = [r0 retain];
    r27 = [[r0 mediationData] retain];
    r23 = [r23 initWithString:r27];
    [r27 release];
    [r0 release];
    r0 = [r21 navigationController];
    r0 = [r0 retain];
    r22 = [[r0 view] retain];
    [r0 release];
    [r23 attachToView:r22];
    [r22 release];
    r0 = r23;
    r23 = r19;
    [r0 release];
    goto loc_1009fc8d0;
}

-(void)rewardedVideoAdDidLoad {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidLoad:self];
    [self logAdapterLoaded];
    [r0 release];
    return;
}

-(void)rewardedVideoAdWillLogImpression {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterWillLogImpression:self];
    [r0 release];
    return;
}

-(void)rewardedVideoAdDidFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)rewardedVideoAdVideoComplete {
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
    if ([r0 respondsToSelector:@selector(adapterVideoDidComplete:)] != 0x0) {
            [r20 adapterVideoDidComplete:r19];
    }
    [r20 release];
    return;
}

-(void)rewardedVideoAdServerSuccess {
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
    if ([r0 respondsToSelector:@selector(adapterServerRewardSuccess:)] != 0x0) {
            [r20 adapterServerRewardSuccess:r19];
    }
    [r20 release];
    return;
}

-(void)rewardedVideoAdServerFailed {
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
    if ([r0 respondsToSelector:@selector(adapterServerRewardFailed:)] != 0x0) {
            [r20 adapterServerRewardFailed:r19];
    }
    [r20 release];
    return;
}

-(bool)isChooseYourOwnAd {
    r0 = [self dataModelType];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isAdValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isChooseYourOwnAd] & 0x1) != 0x0) {
            r0 = [r19 chooseYourOwnAdDataModel];
    }
    else {
            r0 = [r19 rewardedVideoDataModel];
    }
    r0 = [r0 retain];
    r20 = [r0 isValid];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)loadEndCard {
    r22 = [FBAdEndCardViewController alloc];
    r20 = [[self placementID] retain];
    r21 = [[self rewardedVideoDataModel] retain];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 useNewRewardedVideoDesign];
    r0 = @class(FBAdConfigManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r26 = [r0 useNewToolbarDesign];
    r27 = [[FBAdViewControllerProxy viewController] retain];
    r22 = [r22 initWithPlacementID:r20 adDataModel:r21 useNewLayout:r25 useNewToolbar:r26 rootViewController:r27];
    [self setEndCardViewController:r22];
    [r22 release];
    [r27 release];
    [r0 release];
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = [self endCardViewController];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    return;
}

-(void)dismissControllerWithAdSuccess:(bool)arg2 {
    [self rewardedVideoAdWillClose];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self navigationController] retain];
    objc_copyWeak(&var_58 + 0x20, &saved_fp - 0x28);
    [r21 dismissViewControllerAnimated:0x1 completion:&var_58];
    [r21 release];
    objc_destroyWeak(&var_58 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)setupViewControllerForDataModel:(void *)arg2 {
    r31 = r31 - 0x110;
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
    r19 = [arg2 retain];
    [r20 setRewardedVideoDataModel:r19];
    r0 = [r19 playableAdDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 playableURI];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 != 0x0) {
            r22 = [FBAdPlayableViewController alloc];
            r21 = [[r20 placementID] retain];
            r23 = [[r20 placementDefinition] retain];
            r25 = [[r20 navigationController] retain];
            r24 = [[FBAdViewControllerProxy proxyWithViewController:r25] retain];
            r22 = [r22 initWithPlacementID:r21 adData:r19 placementDefinition:r23 rootViewController:r24];
            [r20 setPlayableController:r22];
            [r22 release];
            [r24 release];
            [r25 release];
            [r23 release];
            [r21 release];
            r0 = [r20 playableController];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
            r0 = [r20 playableController];
            r0 = [r0 retain];
            [r0 loadPlayableAd];
            r0 = r0;
    }
    else {
            if (r19 != 0x0) {
                    [r19 forcedViewTime];
            }
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r0 = sub_100a3e318(&var_88, &var_A0);
            if (r0 >= 0x1) {
                    r22 = &var_B8;
                    if (r19 != 0x0) {
                            [r19 forcedViewTime];
                    }
                    q0 = *(int128_t *)r22;
                    var_60 = *(r22 + 0x10);
                    var_70 = q0;
            }
            else {
                    if (*qword_1011dd178 != -0x1) {
                            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
                    }
                    r8 = *qword_1011dd180;
                    r9 = *(r8 + 0x10);
                    var_70 = *(int128_t *)r8;
                    var_60 = r9;
            }
            r24 = [FBAdVideoAdViewController alloc];
            r26 = [[r20 placementID] retain];
            var_E0 = [[r20 placementDefinition] retain];
            r0 = @class(FBAdConfigManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            var_D8 = r0;
            var_E4 = [r0 useNewRewardedVideoDesign];
            r0 = @class(FBAdConfigManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            r25 = r0;
            r28 = [r0 useNewToolbarDesign];
            r0 = @class(FBAdConfigManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            r27 = r0;
            r23 = [r0 showCTAInRVPreEndCards];
            r22 = [[r20 navigationController] retain];
            r0 = [FBAdViewControllerProxy proxyWithViewController:r22];
            r0 = [r0 retain];
            r23 = [r24 initWithPlacementID:r26 adDataModel:r19 placementDefinition:var_E0 useNewLayout:var_E4 useNewToolbar:r28 showCta:r23 autoplay:0x101 isRewardedAd:&var_D0 forcedViewTime:r0 rootViewController:stack[-248]];
            [r20 setVideoAdViewController:r23];
            [r23 release];
            [r0 release];
            [r22 release];
            [r27 release];
            [r25 release];
            [var_D8 release];
            [var_E0 release];
            [r26 release];
            r0 = [r20 videoAdViewController];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)checkServerSideReward {
    r31 = r31 - 0xd0;
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
    r0 = [self internalRewardData];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 userID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r20 internalRewardData];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 currency];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            [r24 release];
            [r19 release];
            if (r0 != 0x0) {
                    r0 = [r20 placementID];
                    r0 = [r0 retain];
                    r19 = [[r0 componentsSeparatedByString:@"_"] retain];
                    [r0 release];
                    r0 = [r20 internalRewardData];
                    r0 = [r0 retain];
                    r22 = [[r0 userID] retain];
                    [r0 release];
                    r0 = [r20 internalRewardData];
                    r0 = [r0 retain];
                    r23 = [[r0 currency] retain];
                    [r0 release];
                    r0 = [NSUUID UUID];
                    r0 = [r0 retain];
                    r24 = r0;
                    r25 = [[r0 UUIDString] retain];
                    r0 = [r19 objectAtIndexedSubscript:0x0];
                    r0 = [r0 retain];
                    [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4] retain];
                    [r0 release];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    objc_initWeak(&stack[-160], r20);
                    [[FBAdURLSession sharedSession] retain];
                    [[NSURL URLWithString:@"https://www.facebook.com/audience_network/server_side_reward"] retain];
                    objc_copyWeak(&var_B8 + 0x20, &stack[-160]);
                    [r20 requestWithURL:r23 HTTPMethod:@"POST" queryParameters:r21 responseHandler:&var_B8];
                    objc_unsafeClaimAutoreleasedReturnValue();
                    [r23 release];
                    [r20 release];
                    objc_destroyWeak(&var_B8 + 0x20);
                    objc_destroyWeak(&stack[-160]);
                    [r21 release];
                    [r19 release];
            }
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    else {
            var_48 = **___stack_chk_guard;
            [r24 release];
            if (**___stack_chk_guard == var_48) {
                    [r19 release];
            }
            else {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void *)currentEndCardController {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self endCardViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [r20 playableController];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)currentVideoController {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self videoAdViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [r20 playableController];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)processCommandURLfromDataModelExtraData:(void *)arg2 openLinksFromDataModel:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 rewardedVideoDataModel];
    r0 = [r0 retain];
    r21 = [[r0 commandURL] retain];
    [r0 release];
    r0 = [r22 rewardedVideoDataModel];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 inlineClientToken];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    if (r21 != 0x0) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r0 = [r22 commandProcessor];
            r0 = [r0 retain];
            [r0 processCommand:r21 withExtraData:r19 inlineClientToken:r23 skipAppStore:r20 ^ 0x1 completionHandler:0x100ea7740];
            [r0 release];
    }
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)processCommandURLIfWeShouldAtSkipOrEnd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self shouldProcessCommandOnSkippableOrEnd] != 0x0) {
            [r19 setShouldProcessCommandOnSkippableOrEnd:0x0];
            [r19 processCommandURLfromDataModelExtraData:0x0 openLinksFromDataModel:0x1];
    }
    return;
}

-(void)videoAdViewController:(void *)arg2 didFailWithError:(void *)arg3 {
    [self rewardedVideoAdDidFailWithError:arg3];
    return;
}

-(void)videoAdViewControllerDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isChooseYourOwnAd] != 0x0) {
            r20 = [[r19 navigationController] retain];
            r21 = [[r19 currentVideoController] retain];
            [r20 pushViewController:r21 animated:0x1];
            [r21 release];
            [r20 release];
    }
    else {
            [r19 rewardedVideoAdDidLoad];
    }
    [r19 loadEndCard];
    return;
}

-(void)videoAdViewControllerSkipped:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self endCardViewController];
    r0 = [r0 retain];
    [r0 setShouldFadeInCloseButton:0x1];
    [r0 release];
    [self videoAdViewControllerComplete:r21];
    [r21 release];
    return;
}

-(void)videoAdViewControllerWillClose:(void *)arg2 {
    [self dismissControllerWithAdSuccess:0x0];
    return;
}

-(void)videoAdViewControllerComplete:(void *)arg2 {
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
    r19 = self;
    r21 = [arg2 retain];
    [r19 rewardedVideoAdVideoComplete];
    r0 = [r19 playableController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 playableController];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isTerminated];
            [r0 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    r0 = [r19 navigationController];
    r0 = [r0 retain];
    r25 = [[r0 visibleViewController] retain];
    [r21 release];
    [r25 release];
    [r0 release];
    r0 = [r19 currentEndCardController];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"internal_error" code:0x4 description:@"endCardViewController not created in time for presentation"];
    }
    r8 = &@selector(setTitle:forState:);
    if (objc_msgSend(@class(FBAdConnectionInfo), *(r8 + 0x2f0)) == 0x0) {
            r8 = &@selector(setTitle:forState:);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r25 == r21 && r20 != 0x0 && (r22 | r8) == 0x0) {
            r0 = [r19 navigationController];
            r0 = [r0 retain];
            [r0 pushViewController:r20 animated:0x1];
            [r0 release];
            r0 = [r19 currentEndCardController];
            r0 = [r0 retain];
            r23 = [[r0 view] retain];
            r24 = [[r19 placementID] retain];
            [FBAdDebugOverlay addToSuperview:r23 withPlacementID:r24];
            [r24 release];
            [r23 release];
            [r0 release];
            [r19 processCommandURLIfWeShouldAtSkipOrEnd];
    }
    else {
            [r19 dismissControllerWithAdSuccess:0x1];
    }
    [r20 release];
    return;
}

-(void)videoAdViewControllerWantsToLogImpression:(void *)arg2 {
    r2 = arg2;
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
    r20 = [NSMutableDictionary new];
    if ([r19 isChooseYourOwnAd] != 0x0) {
            r0 = [FBAdUtility stringValueForBool:0x1];
            r29 = r29;
            r21 = [r0 retain];
            [r20 setObject:r21 forKeyedSubscript:@"is_cyoa"];
            [r21 release];
    }
    r0 = [r19 extraHint];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 extraHint];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 stringRepresentation];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (r21 != 0x0) {
                    [r20 setObject:r21 forKeyedSubscript:@"extra_hints"];
            }
            [r21 release];
    }
    r21 = [[FBAdEventManager sharedManager] retain];
    r0 = [r19 rewardedVideoDataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    [r21 logImpressionForToken:r23 withExtraData:r20];
    [r23 release];
    [r0 release];
    [r21 release];
    [r19 rewardedVideoAdWillLogImpression];
    [r19 firstImpressionTime];
    if (d0 == 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r19 setFirstImpressionTime:r2];
    }
    [r20 release];
    return;
}

-(void)videoAdViewControllerDidBecomeSkippable:(void *)arg2 {
    [self processCommandURLIfWeShouldAtSkipOrEnd];
    return;
}

-(void)playableViewControllerDidLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isChooseYourOwnAd] != 0x0) {
            r20 = [[r19 navigationController] retain];
            r19 = [[r19 currentVideoController] retain];
            [r20 pushViewController:r19 animated:0x1];
            [r19 release];
            [r20 release];
    }
    else {
            [r19 rewardedVideoAdDidLoad];
    }
    return;
}

-(void)videoAdViewControllerWantsToProcessCTA:(void *)arg2 withEvent:(void *)arg3 isDoneOrSkippable:(bool)arg4 {
    r31 = r31 - 0x90;
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ((r22 & 0x1) == 0x0) {
            [r19 showWaitingToast];
    }
    [r21 firstImpressionTime];
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r21 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    r23 = [r0 retain];
    r24 = [[FBAdUtility touchDictionaryForEvent:r20 delayTime:r23] retain];
    r0 = @class(FBAdUtility);
    r0 = [r0 getJSONStringFromObject:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            r27 = [[FBAdUtility getJSONStringFromObject:r2] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1];
            r0 = [r0 retain];
            r26 = [r0 mutableCopy];
            [r0 release];
            [r27 release];
    }
    else {
            r26 = 0x0;
    }
    var_68 = **___stack_chk_guard;
    [r21 processCommandURLfromDataModelExtraData:r26 openLinksFromDataModel:r22];
    [r21 setShouldProcessCommandOnSkippableOrEnd:r22 ^ 0x1];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)playableViewController:(void *)arg2 didFailWithError:(void *)arg3 {
    [self rewardedVideoAdDidFailWithError:arg3];
    return;
}

-(void)playableViewControllerWillLogImpression:(void *)arg2 {
    [self rewardedVideoAdWillLogImpression];
    return;
}

-(void)playableViewControllerComplete:(void *)arg2 {
    [self rewardedVideoAdVideoComplete];
    return;
}

-(void)playableViewControllerDidClick:(void *)arg2 {
    [self rewardedVideoAdDidClick];
    return;
}

-(void)playableViewControllerWillClose:(void *)arg2 {
    [self dismissControllerWithAdSuccess:0x1];
    return;
}

-(void)playableViewControllerDidTerminate:(void *)arg2 {
    [self dismissControllerWithAdSuccess:0x1];
    return;
}

-(void)endCardViewControllerWillClose:(void *)arg2 {
    [self dismissControllerWithAdSuccess:0x1];
    return;
}

-(void)endCardViewControllerDidClick:(void *)arg2 {
    [self rewardedVideoAdDidClick];
    return;
}

-(void)chooseYourOwnAdViewControllerDidLoad:(void *)arg2 {
    [self rewardedVideoAdDidLoad];
    return;
}

-(void)endCardViewControllerDidTerminate:(void *)arg2 {
    [self dismissControllerWithAdSuccess:0x1];
    return;
}

-(void)chooseYourOwnAdViewController:(void *)arg2 didFailWithError:(void *)arg3 {
    [self rewardedVideoAdDidFailWithError:arg3];
    return;
}

-(void)chooseYourOwnAdViewController:(void *)arg2 didSelectAd:(void *)arg3 touchData:(void *)arg4 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    if (([r20 isPlayableAd] & 0x1) == 0x0) {
            r23 = [[FBAdCache sharedCache] retain];
            r0 = [r20 videoURL];
            r29 = r29;
            r24 = [r0 retain];
            r25 = [r23 fileWithRemoteUrlExistsOnDisk:r24 fetchType:0x3];
            [r24 release];
            [r23 release];
            if ((r25 & 0x1) != 0x0) {
                    r23 = [[r19 generateLoggingDataWithExtraData:r22] retain];
                    r24 = [[FBAdEventManager sharedManager] retain];
                    r25 = [[r20 inlineClientToken] retain];
                    [r24 logAdSelectionForToken:r25 withExtraData:r23];
                    [r25 release];
                    [r24 release];
                    [r21 setupViewControllerForDataModel:r20];
                    [r23 release];
            }
            else {
                    r23 = [[FBAdError getNSError:0x7d9] retain];
                    [r21 rewardedVideoAdDidFailWithError:r23];
                    [r23 release];
                    [r21 dismissControllerWithAdSuccess:0x0];
            }
    }
    else {
            r23 = [[r19 generateLoggingDataWithExtraData:r22] retain];
            r24 = [[FBAdEventManager sharedManager] retain];
            r25 = [[r20 inlineClientToken] retain];
            [r24 logAdSelectionForToken:r25 withExtraData:r23];
            [r25 release];
            [r24 release];
            [r21 setupViewControllerForDataModel:r20];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)chooseYourOwnAdViewController:(void *)arg2 offTargetTouch:(void *)arg3 forModel:(void *)arg4 {
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [r21 mutableCopy];
    [r21 release];
    r21 = [[FBAdUtility stringValueForBool:0x1] retain];
    [r19 setObject:r21 forKeyedSubscript:@"is_cyoa"];
    [r21 release];
    r21 = [[FBAdEventManager sharedManager] retain];
    r22 = [[r20 inlineClientToken] retain];
    [r20 release];
    [r21 logOffTargetClickEventForToken:r22 withExtraData:r19];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)chooseYourOwnAdViewController:(void *)arg2 wantsToFirePreviewImpressionForDataModel:(void *)arg3 cardIndex:(long long)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [arg3 retain];
    r20 = [[FBAdUtility stringValueForBool:0x1] retain];
    r0 = [NSNumber numberWithInteger:arg4];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringValue];
    r0 = [r0 retain];
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
    [r0 release];
    [r21 release];
    [r20 release];
    r20 = [[FBAdEventManager sharedManager] retain];
    r21 = [[r19 inlineClientToken] retain];
    [r19 release];
    [r20 logPreviewImpressionForToken:r21 withExtraData:r23];
    [r21 release];
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
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
    if ([r19 respondsToSelector:r2] == 0x0 || [r20 respondsToSelector:r2] == 0x0) goto loc_1009feb40;

loc_1009feb34:
    r0 = @class(FBCustomEndcardPresentation);
    goto loc_1009feb7c;

loc_1009feb7c:
    r21 = [r0 new];
    goto loc_1009feb94;

loc_1009feb94:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1009feb40:
    if ([r19 conformsToProtocol:r2] == 0x0 || [r20 conformsToProtocol:r2] == 0x0) goto loc_1009feb90;

loc_1009feb74:
    r0 = @class(FBAdCardToFullscreenTransition);
    goto loc_1009feb7c;

loc_1009feb90:
    r21 = 0x0;
    goto loc_1009feb94;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void *)internalRewardData {
    r0 = self->_internalRewardData;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestId, 0x0);
    objc_storeStrong((int64_t *)&self->_commandProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_storeStrong((int64_t *)&self->_chooseYourOwnAdDataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoDataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModelType, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_playableController, 0x0);
    objc_storeStrong((int64_t *)&self->_endCardViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_videoAdViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_chooseYourOwnAdViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_navigationController, 0x0);
    objc_storeStrong((int64_t *)&self->_internalRewardData, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

-(void *)animationControllerForPresentedController:(void *)arg2 presentingController:(void *)arg3 sourceController:(void *)arg4 {
    r21 = [FBAdIntroCardTransition alloc];
    r0 = [self rewardedVideoDataModel];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 title] retain];
    r0 = [self rewardedVideoDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r24 = [[r0 localizedSponsoredText] retain];
    r0 = [self rewardedVideoDataModel];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 iconURL] retain];
    r0 = [self rewardedVideoDataModel];
    r0 = [r0 retain];
    r25 = [[r0 inlineClientToken] retain];
    r21 = [r21 initWithTitle:r20 subtitle:r24 iconURL:r27 iconStyle:0x1 shouldShowIntroCardTransition:0x0 token:r25];
    [r25 release];
    [r0 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)navigationController {
    r0 = self->_navigationController;
    return r0;
}

-(void)setNavigationController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_navigationController, arg2);
    return;
}

-(void)setInternalRewardData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalRewardData, arg2);
    return;
}

-(void *)chooseYourOwnAdViewController {
    r0 = self->_chooseYourOwnAdViewController;
    return r0;
}

-(void)setVideoAdViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoAdViewController, arg2);
    return;
}

-(void)setEndCardViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_endCardViewController, arg2);
    return;
}

-(void)setChooseYourOwnAdViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_chooseYourOwnAdViewController, arg2);
    return;
}

-(void *)videoAdViewController {
    r0 = self->_videoAdViewController;
    return r0;
}

-(void *)endCardViewController {
    r0 = self->_endCardViewController;
    return r0;
}

-(void *)playableController {
    r0 = self->_playableController;
    return r0;
}

-(void)setPlayableController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playableController, arg2);
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void *)dataModelType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataModelType)), 0x0);
    return r0;
}

-(void)setDataModelType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setRewardedVideoDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoDataModel, arg2);
    return;
}

-(void *)rewardedVideoDataModel {
    r0 = self->_rewardedVideoDataModel;
    return r0;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void *)chooseYourOwnAdDataModel {
    r0 = self->_chooseYourOwnAdDataModel;
    return r0;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

-(void)setChooseYourOwnAdDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_chooseYourOwnAdDataModel, arg2);
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

-(void)setCommandProcessor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandProcessor, arg2);
    return;
}

-(void *)commandProcessor {
    r0 = self->_commandProcessor;
    return r0;
}

-(void)setShouldProcessCommandOnSkippableOrEnd:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldProcessCommandOnSkippableOrEnd = arg2;
    return;
}

-(bool)shouldProcessCommandOnSkippableOrEnd {
    r0 = *(int8_t *)(int64_t *)&self->_shouldProcessCommandOnSkippableOrEnd;
    return r0;
}

-(void)setRequestId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)requestId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestId)), 0x0);
    return r0;
}

@end