@implementation FBDisplayAdController

-(void)loadAdWithPlacementId:(void *)arg2 withPlacementType:(long long)arg3 withTemplateID:(long long)arg4 {
    [self loadAdWithPlacementId:arg2 withPlacementType:arg3 withTemplateID:arg4 withAdSize:r5];
    return;
}

-(void)loadAdWithPlacementId:(void *)arg2 withPlacementType:(long long)arg3 withTemplateID:(long long)arg4 withAdSize:(struct FBAdSize)arg5 {
    memcpy(&r5, &arg5, 0x8);
    [self loadAdWithPlacementId:arg2 withPlacementType:arg3 withTemplateID:arg4 withAdSize:0x0 withAdProvider:r6];
    return;
}

-(void)loadAdWithPlacementId:(void *)arg2 withPlacementType:(long long)arg3 withTemplateID:(long long)arg4 withAdSize:(struct FBAdSize)arg5 withAdProvider:(void *)arg6 {
    memcpy(&r5, &arg5, 0x8);
    r23 = [arg2 retain];
    [self loadAdWithPlacementId:r23 withPlacementType:arg3 withTemplateID:arg4 withAdSize:r5 withAdProvider:0x0 withRewardData:r7];
    [r23 release];
    return;
}

-(void)loadAdWithPlacementId:(void *)arg2 withPlacementType:(long long)arg3 withTemplateID:(long long)arg4 withAdSize:(struct FBAdSize)arg5 withAdProvider:(void *)arg6 withRewardData:(void *)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r24 = [arg2 retain];
    r20 = [r5 retain];
    [self loadAdWithPlacementId:r24 withPlacementType:arg3 withTemplateID:arg4 withAdSize:r20 withAdProvider:r6 withRewardData:0x0 withBidPayload:var_40];
    [r20 release];
    [r24 release];
    return;
}

-(void)dealloc {
    [self disableViewabilityValidator];
    [self stopObservingNotifications];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadAdWithPlacementId:(void *)arg2 withPlacementType:(long long)arg3 withTemplateID:(long long)arg4 withAdSize:(struct FBAdSize)arg5 withAdProvider:(void *)arg6 withRewardData:(void *)arg7 withBidPayload:(void *)arg8 {
    r7 = arg7;
    memcpy(&r5, &arg5, 0x8);
    r31 = r31 - 0x80;
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
    v8 = v1;
    v9 = v0;
    r24 = arg4;
    r25 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [r5 retain];
    r21 = [r6 retain];
    r22 = [r7 retain];
    [r23 checkInitialization];
    r0 = [NSDate date];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r23 setRequestTime:r2];
    [r0 release];
    if (r22 == 0x0) goto loc_100acf3d8;

loc_100acf374:
    r26 = [[FBAdBidPayload alloc] initWithJsonData:r22 placementID:r19 templateID:r24 error:&var_68];
    r0 = [var_68 retain];
    r27 = r0;
    if (r0 == 0x0) goto loc_100acf3f0;

loc_100acf3c0:
    [r23 notifyAdError:r27];
    goto loc_100acf4dc;

loc_100acf4dc:
    [r27 release];
    [r26 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100acf3f0:
    var_70 = r21;
    r21 = r20;
    [r27 release];
    goto loc_100acf400;

loc_100acf400:
    r27 = [FBAdEnvironmentData alloc];
    r28 = [[r23 extraHint] retain];
    if (r25 <= 0x4) {
            r0 = [r27 initWithPlacementId:r19 placementType:r25 templateID:r24 adSize:0x1 numAdsRequested:r26 bidPayload:r28 extraHint:var_70];
    }
    else {
            r0 = [r27 initWithPlacementId:r19 placementType:r25 templateID:r24 adSize:r26 bidPayload:r28 extraHint:r7];
    }
    r27 = r0;
    r20 = r21;
    [r28 release];
    [r23 startObservingNotifications];
    r2 = r21;
    r21 = var_70;
    [r23 startAdapterController:r2 withEnvironment:r27 withRewardData:r21];
    goto loc_100acf4dc;

loc_100acf3d8:
    var_70 = r21;
    r21 = r20;
    r26 = 0x0;
    goto loc_100acf400;
}

-(void)checkInitialization {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self initialized] == 0x0) {
            [r19 setInitialized:0x1];
    }
    else {
            objc_exception_throw([[[NSException exceptionWithName:**_NSInternalInconsistencyException reason:@"Ad controller was initialized more than once." userInfo:0x0] retain] autorelease]);
    }
    return;
}

-(void)startAdapterController:(void *)arg2 withEnvironment:(void *)arg3 withRewardData:(void *)arg4 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [FBDisplayAdAdapterController new];
    [self setAdapterController:r23];
    [r23 release];
    r0 = [self adapterController];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self adapterController];
    r0 = [r0 retain];
    [r0 loadAdWithProvider:r19 withEnvironment:r20 withRewardData:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    [r0 release];
    return;
}

-(bool)startAd {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0xd6 format:@"%s"];
    r0 = [self startAdFromRootViewController:0x0];
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 {
    r22 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0xdc format:@"%s"];
    r19 = [self startAdFromRootViewController:r22 animated:0x1];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)passRewardData:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adapterController];
    r0 = [r0 retain];
    r20 = [r0 updateRewardData:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)refresh {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0x104 format:@"%s"];
    r0 = [self adapterController];
    r0 = [r0 retain];
    [r0 refresh];
    [r19 release];
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0xe2 format:@"%s"];
    [r20 loaded];
    sub_100ad1b04(r20, _cmd);
    if ([r20 started] != 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x1 description:@"Ad is already started"];
            r22 = [[FBAdError getNSError:0x1b59] retain];
            [r20 notifyAdError:r22];
            r21 = 0x0;
    }
    else {
            [r20 setStarted:0x1];
            [r20 startListeningToInterfaceOrientationChanges];
            r0 = [r20 adapterController];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 adapter];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 adDataModel];
            r29 = r29;
            r22 = [r0 retain];
            [r26 release];
            [r25 release];
            if (r22 != 0x0) {
                    r25 = [[FBAdEventManager sharedManager] retain];
                    r0 = [r22 inlineClientToken];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 logShowAdCalledEventForToken:r26 withExtraData:0x0];
                    [r26 release];
                    [r25 release];
            }
            r0 = [r20 adapterController];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 adapter];
            r0 = [r0 retain];
            r27 = [[r0 adView] retain];
            r25 = [[FBAdViewControllerProxy proxyWithViewController:r19 withView:r27] retain];
            [r19 release];
            [r27 release];
            [r0 release];
            [r26 release];
            r0 = [r20 adapterController];
            r29 = r29;
            r23 = [r0 retain];
            r19 = [r25 retain];
            r21 = [r23 startAdFromRootViewController:r19 animated:r21];
            [r19 release];
            [r23 release];
            if (r21 != 0x0) {
                    [r20 notifyAdViewPresented];
                    [r20 viewabilityValidator:0x0 checkedWithStatus:0x1];
            }
            else {
                    r23 = [[FBAdError getNSError:0x7d1 description:@"Ad failed to show"] retain];
                    [r20 notifyAdError:r23];
                    [r23 release];
            }
    }
    [r22 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)logImpressionFromSource:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    if ([self adapterHadImpression] == 0x0 || ([r19 controllerHadImpression] & 0x1) == 0x0) goto loc_100acfcf0;

.l1:
    return;

loc_100acfcf0:
    if (r21 == 0x0) goto loc_100acfd34;

loc_100acfcf4:
    if (r21 != 0x1) goto loc_100acfd78;

loc_100acfcfc:
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0x116 format:@"Adapter logged impression"];
    r8 = &@selector(setAdapterHadImpression:);
    goto loc_100acfd68;

loc_100acfd68:
    objc_msgSend(r19, *r8);
    goto loc_100acfd78;

loc_100acfd78:
    if ([r19 controllerHadImpression] != 0x0) {
            if ([r19 adapterHadImpression] != 0x0) {
                    [r19 notifyAdImpression];
            }
    }
    return;

loc_100acfd34:
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0x11a format:@"Controller logged impression"];
    r8 = &@selector(setControllerHadImpression:);
    goto loc_100acfd68;
}

-(void)registerViewForInteraction:(void *)arg2 withViewController:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self adapterController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adapter];
    r0 = [r0 retain];
    [r0 registerViewForInteraction:r21 withViewController:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    [r20 release];
    return;
}

-(void *)getPlacementDefinition {
    r0 = [self adapterController];
    r0 = [r0 retain];
    r20 = [[r0 placementDefinition] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)unregisterView {
    r0 = [self adapterController];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 adapter];
    r0 = [r0 retain];
    [r0 unregisterView];
    [r0 release];
    [r19 release];
    return;
}

-(union ?)adapterDuration {
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
    r19 = r8;
    r0 = [self adapterController];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    [r0 release];
    r0 = [r23 release];
    if (r24 != 0x0) {
            r0 = [r20 adapterController];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 adapter];
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    [r21 duration];
            }
            else {
                    *(int128_t *)r19 = 0x0;
                    *(int128_t *)(r19 + 0x8) = 0x0;
                    *(r19 + 0x10) = 0x0;
            }
            [r21 release];
            r0 = [r20 release];
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

-(bool)adExpired {
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    d8 = d0 * *double_value_1000;
    [r0 release];
    r0 = [self adapterController];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 placementDefinition];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 requestTime];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [r0 longLongValue];
    r0 = [self adapterController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 placementDefinition];
    r0 = [r0 retain];
    r22 = r0;
    [r0 invalidationDuration] + r25;
    asm { scvtf      d9, x8 };
    [r22 release];
    [r20 release];
    [r24 release];
    [r21 release];
    r0 = [r19 release];
    if (d8 > d9) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)notifyAdLoaded {
    [self setLoaded:0x1];
    [[[self delegate] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)notifyAdImpression {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerImpression:)] != 0x0) {
            var_20 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_40);
            [var_20 release];
    }
    [r19 release];
    return;
}

-(void)notifyAdStopped {
    [[[self delegate] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)notifyAdViewPresented {
    r31 = r31 - 0xe0;
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r19 = [r0 retain];
    objc_initWeak(r29 - 0x48, r21);
    if (r19 != 0x0) {
            r0 = [r21 adapterController];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 adapter];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 nativeAdData];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r20 release];
            if (r0 != 0x0) {
                    r0 = [r21 adapterController];
                    r0 = [r0 retain];
                    r20 = [[r0 adapter] retain];
                    [r0 release];
                    r0 = [r21 adapterController];
                    r0 = [r0 retain];
                    r22 = [[r0 adCandidate] retain];
                    [r0 release];
                    objc_initWeak(r29 - 0x50, r20);
                    objc_initWeak(r29 - 0x58, r22);
                    r0 = [r21 adapterController];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 adapter];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 nativeAdData];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r24 release];
                    [r23 release];
                    if ([r19 respondsToSelector:@selector(displayAdController:presentedData:onImpression:onImpressionMiss:onClick:), r3, r4, r5, r6] != 0x0) {
                            objc_copyWeak(&var_A0 + 0x30, r29 - 0x48);
                            var_80 = [r19 retain];
                            var_78 = [r21 retain];
                            objc_copyWeak(&var_A0 + 0x38, r29 - 0x50);
                            objc_copyWeak(&var_A0 + 0x40, r29 - 0x58);
                            dispatch_async(*__dispatch_main_q, &var_A0);
                            objc_destroyWeak(&var_A0 + 0x40);
                            objc_destroyWeak(&var_A0 + 0x38);
                            [var_78 release];
                            [var_80 release];
                            objc_destroyWeak(&var_A0 + 0x30);
                    }
                    [r21 release];
                    objc_destroyWeak(r29 - 0x58);
                    objc_destroyWeak(r29 - 0x50);
                    [r22 release];
                    [r20 release];
            }
            else {
                    if ([r19 respondsToSelector:@selector(displayAdController:presentedView:), r3] != 0x0) {
                            objc_copyWeak(&var_D0 + 0x28, r29 - 0x48);
                            var_B0 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_D0);
                            [var_B0 release];
                            objc_destroyWeak(&var_D0 + 0x28);
                    }
            }
    }
    objc_destroyWeak(r29 - 0x48);
    [r19 release];
    return;
}

-(void)notifyAdError:(void *)arg2 {
    r20 = [arg2 retain];
    [[[self delegate] retain] retain];
    var_18 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_48);
    [var_18 release];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyAdUserClose {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerUserClosed:)] != 0x0) {
            var_20 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_40);
            [var_20 release];
    }
    [r19 release];
    return;
}

-(void)notifyAdVideoComplete {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerVideoComplete:)] != 0x0) {
            var_20 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_40);
            [var_20 release];
    }
    [r19 release];
    return;
}

-(void)adapterServerRewardSuccess:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerServerRewardSuccess:)] != 0x0) {
            var_20 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_40);
            [var_20 release];
    }
    [r19 release];
    return;
}

-(void)notifyAdClickThruWithURL:(void *)arg2 playerHandles:(bool)arg3 {
    r31 = r31 - 0xd0;
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
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r8 = @"NO";
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"NO";
            }
            else {
                    r8 = @"YES";
            }
    }
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    if (r19 != 0x0 || r22 == 0x0) goto loc_100ad0860;

loc_100ad083c:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    goto loc_100ad0acc;

loc_100ad0acc:
    [r19 release];
    return;

loc_100ad0860:
    if ((r22 & 0x1) == 0x0) goto loc_100ad0a20;

loc_100ad0864:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_100ad0ac4;

loc_100ad08b0:
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [r0 openURL:r21];
    [r0 release];
    r0 = [r20 adapterController];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 adapter];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 nativeAdData];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 inlineClientToken];
    r29 = r29;
    r27 = [r0 retain];
    [FBAdUserReturnHandler moveOutOfApp:r22 withToken:r27];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r22 == 0x0) goto loc_100ad0ac4;

loc_100ad0994:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerClickThrough:)] != 0x0) {
            var_90 = [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_B0);
            [var_90 release];
    }
    r0 = r22;
    goto loc_100ad0ac0;

loc_100ad0ac0:
    [r0 release];
    goto loc_100ad0ac4;

loc_100ad0ac4:
    [r21 release];
    goto loc_100ad0acc;

loc_100ad0a20:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerClickThrough:)] == 0x0) goto loc_100ad0ac4;

loc_100ad0a74:
    var_60 = [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    r0 = var_60;
    goto loc_100ad0ac0;
}

-(void)adapterServerRewardFailed:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(displayAdControllerServerRewardFailed:)] != 0x0) {
            var_20 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_40);
            [var_20 release];
    }
    [r19 release];
    return;
}

-(void)disableViewabilityValidator {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 stopViewabilityCheck];
            [r0 release];
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 setDelegate:0x0];
            [r0 release];
    }
    return;
}

-(void)ensureViewabilityValidator {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r0 = [self adapterController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adapter];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r20 release];
    if (r0 != 0x0) {
            [r19 setControllerHadImpression:r2];
            r0 = [r19 adapterController];
            r0 = [r0 retain];
            r20 = [[r0 placementDefinition] retain];
            [r0 release];
            r24 = [FBAdViewabilityValidator alloc];
            r0 = [r19 adapterController];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 adapter];
            r0 = [r0 retain];
            r23 = [[r0 adView] retain];
            [r20 viewabilityCheckInterval];
            [r20 viewabilityCheckInitialDelay];
            r24 = [r24 initWithView:r23 withInterval:[r20 minViewabilityPercentage] withInitialDelay:[r20 minViewabilityTicks] withMinViewability:0x0 withTickDuration:r6 shouldObserveNotifications:r7];
            [r19 setViewabilityValidator:r24];
            [r24 release];
            [r23 release];
            [r0 release];
            [r21 release];
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 scheduleViewabilityCheck];
            [r0 release];
            [r20 release];
    }
    else {
            [r19 setControllerHadImpression:r2];
    }
    return;
}

-(void)adapterDidLoad:(void *)arg2 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
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
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0x209 format:@"%s"];
    [r20 setAdapterHadImpression:0x0];
    [r20 setControllerHadImpression:0x0];
    [r20 ensureViewabilityValidator];
    if ([r20 started] != 0x0) {
            [r20 notifyAdViewPresented];
    }
    else {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r20 requestTime];
            [r0 release];
            r0 = [NSMutableDictionary new];
            r21 = r0;
            [r0 setNSTimeInterval:@"load_time_ms" forKey:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m"];
            r22 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r24 = [[r0 inlineClientToken] retain];
            [r22 logUXFunnelEventOfSubtype:@"ad_loaded_callback" withToken:r24 withExtraData:r21];
            [r24 release];
            [r0 release];
            [r22 release];
            [r20 notifyAdLoaded];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)adapter:(void *)arg2 didFailWithError:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0x21f format:@"Adapter failed with error:%@"];
    [self notifyAdError:r22];
    [r22 release];
    return;
}

-(void)startObservingNotifications {
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    [FBAdUtility startObservingBackgroundNotifications:self usingBackgroundBlock:&var_70 usingForegroundBlock:&var_98];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    return;
}

-(void)onApplicationBackgrounded {
    [self disableViewabilityValidator];
    return;
}

-(void)onApplicationForegrounded {
    [self ensureViewabilityValidator];
    return;
}

-(void)stopObservingNotifications {
    [FBAdUtility stopObservingBackgroundNotifications:self];
    return;
}

-(void)startListeningToInterfaceOrientationChanges {
    r19 = [FBApplicationInterfaceOrientationProvider new];
    [self setInterfaceOrientationProvider:r19];
    [r19 release];
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    r0 = [self interfaceOrientationProvider];
    r0 = [r0 retain];
    [r0 setDidChangeHandler:&var_40];
    [r0 release];
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    r0 = self;
    if (arg3 == 0x1) {
            [r0 logImpressionFromSource:0x0];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)loadDidFailWithAdapter:(void *)arg2 withError:(void *)arg3 {
    r21 = [arg2 retain];
    [self adapter:r21 didFailWithError:arg3];
    [r21 release];
    return;
}

-(void)adWithAdapter:(void *)arg2 performAction:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r22 = _cmd;
    r20 = self;
    r19 = [arg2 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdController.m" lineNumber:0x264 format:@"%s"];
    if (r21 == 0x0) goto loc_100ad16d4;

loc_100ad1684:
    [r20 loaded];
    sub_100ad1b04(r20, r22);
    if (r21 > 0x4) goto loc_100ad16ec;

loc_100ad16ac:
    if (r21 < 0x4) goto loc_100ad1710;

loc_100ad16b8:
    if (r21 == 0x1) goto loc_100ad171c;

loc_100ad16c0:
    if (r21 != 0x4) goto loc_100ad1740;

loc_100ad16c8:
    r1 = @selector(notifyAdStopped);
    goto loc_100ad1738;

loc_100ad1738:
    objc_msgSend(r20, r1);
    goto loc_100ad1740;

loc_100ad1740:
    [r19 release];
    return;

loc_100ad171c:
    r1 = @selector(logImpressionFromSource:);
    r0 = r20;
    goto loc_100ad16e4;

loc_100ad16e4:
    objc_msgSend(r0, r1);
    goto loc_100ad1740;

loc_100ad1710:
    r1 = @selector(notifyAdUserClose);
    goto loc_100ad1738;

loc_100ad16ec:
    if (r21 == 0x5) goto loc_100ad1730;

loc_100ad16f4:
    if (r21 == 0x6) goto loc_100ad1758;

loc_100ad16fc:
    if (r21 != 0x7) goto loc_100ad1740;

loc_100ad1704:
    r1 = @selector(adapterServerRewardFailed:);
    goto loc_100ad16dc;

loc_100ad16dc:
    r0 = r20;
    goto loc_100ad16e4;

loc_100ad1758:
    r1 = @selector(adapterServerRewardSuccess:);
    goto loc_100ad16dc;

loc_100ad1730:
    r1 = @selector(notifyAdVideoComplete);
    goto loc_100ad1738;

loc_100ad16d4:
    r1 = @selector(adapterDidLoad:);
    goto loc_100ad16dc;
}

-(void)loadedAdDidClickWithAdapter:(void *)arg2 withURL:(void *)arg3 playerHandles:(bool)arg4 {
    [self notifyAdClickThruWithURL:arg3 playerHandles:arg4];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterController, 0x0);
    objc_storeStrong((int64_t *)&self->_interfaceOrientationProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(bool)isFlexibleAdSize {
    r0 = *(int8_t *)(int64_t *)&self->_flexibleAdSize;
    return r0;
}

-(void)setFlexibleAdSize:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_flexibleAdSize = arg2;
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(bool)loaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

-(bool)started {
    r0 = *(int8_t *)(int64_t *)&self->_started;
    return r0;
}

-(void)setStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_started = arg2;
    return;
}

-(bool)adapterHadImpression {
    r0 = *(int8_t *)(int64_t *)&self->_adapterHadImpression;
    return r0;
}

-(bool)controllerHadImpression {
    r0 = *(int8_t *)(int64_t *)&self->_controllerHadImpression;
    return r0;
}

-(void)setAdapterHadImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adapterHadImpression = arg2;
    return;
}

-(void)setControllerHadImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_controllerHadImpression = arg2;
    return;
}

-(void *)interfaceOrientationProvider {
    r0 = self->_interfaceOrientationProvider;
    return r0;
}

-(void)setInterfaceOrientationProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interfaceOrientationProvider, arg2);
    return;
}

-(void *)adapterController {
    r0 = self->_adapterController;
    return r0;
}

-(void)setAdapterController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapterController, arg2);
    return;
}

-(double)requestTime {
    r0 = self;
    return r0;
}

-(void)setRequestTime:(double)arg2 {
    self->_requestTime = d0;
    return;
}

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
    r0 = objc_getClass("FBDisplayAdController");
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

@end