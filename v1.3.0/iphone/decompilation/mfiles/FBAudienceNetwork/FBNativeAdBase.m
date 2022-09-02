@implementation FBNativeAdBase

-(void *)init {
    r0 = [self initWithPlacementID:@"" templateId:0xc8 placementType:0x3];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 templateId:(long long)arg3 placementType:(long long)arg4 adProvider:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    r19 = [arg5 retain];
    r20 = [self initWithPlacementID:r23 templateId:arg3 placementType:arg4];
    [r23 release];
    if (r20 != 0x0) {
            [r20 setAdProvider:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self logImpressionMissWithReason:0x1];
    [self unregisterViewInternal];
    [FBNativeAd unregisterOutstandingRequest:self];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 templateId:(long long)arg3 placementType:(long long)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_templateId = r22;
            r20->_placementType = r21;
            [FBAdUtility initializeAudienceNetwork];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSHashTable weakObjectsHashTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_gestureRecognizers));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_firstImpressionTime = 0xbff0000000000000;
            [r20 setMediaCachePolicy:0x1];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [FBNativeAdBase new];
    r20 = [[self dataModel] retain];
    r22 = [[self placementDefinition] retain];
    r23 = [[self onImpression] retain];
    r24 = [[self onImpressionMiss] retain];
    r21 = [[self onClick] retain];
    [r19 populateFromDataModel:r20 placementDefinition:r22 onImpression:r23 onImpressionMiss:r24 onClick:r21];
    [r21 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)loadAd {
    [self doLoadAd:0x0];
    return;
}

-(void)doLoadAd:(void *)arg2 {
    r31 = r31 - 0x50;
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
    [FBNativeAd registerOutstandingRequest:r20];
    if ([r20 hasCalledLoadAd] != 0x0) {
            [r20 class];
            r22 = [[NSString stringWithFormat:@"%@: loadAd can be called only once"] retain];
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x0 description:r22];
            [r22 release];
            r21 = [[FBAdError getNSError:0x1b5a] retain];
            [r20 tellDelegateThatWeDidFailWithError:r21];
    }
    else {
            [r20 setHasCalledLoadAd:0x1];
            r21 = [[NSDate date] retain];
            [r20 setLoadAdStartTime:r21];
            [r21 release];
            r21 = [FBDisplayAdController new];
            [r20 setAdController:r21];
            [r21 release];
            r0 = [r20 adController];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
            r22 = [[r20 extraHint] retain];
            r0 = [r20 adController];
            r0 = [r0 retain];
            [r0 setExtraHint:r22];
            [r0 release];
            [r22 release];
            r21 = [[r20 adController] retain];
            r22 = [[r20 placementID] retain];
            r23 = [r20 placementType];
            r24 = [r20 templateId];
            r20 = [[r20 adProvider] retain];
            [r21 loadAdWithPlacementId:r22 withPlacementType:r23 withTemplateID:r24 withAdSize:r20 withAdProvider:0x0 withRewardData:r19 withBidPayload:var_40];
            [r20 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)loadAdWithMediaCachePolicy:(long long)arg2 {
    [self setMediaCachePolicy:arg2];
    [self loadAd];
    return;
}

-(void)loadAdWithBidPayload:(void *)arg2 {
    [self doLoadAd:arg2];
    return;
}

-(void)loadAdWithBidPayload:(void *)arg2 mediaCachePolicy:(long long)arg3 {
    r22 = [arg2 retain];
    [self setMediaCachePolicy:arg3];
    [self loadAdWithBidPayload:r22];
    [r22 release];
    return;
}

-(void)displayAdControllerLoaded:(void *)arg2 {
    r20 = [[self adController] retain];
    r19 = [[self rootViewController] retain];
    [r20 startAdFromRootViewController:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)populateFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 onImpression:(void *)arg4 onImpressionMiss:(void *)arg5 onClick:(void *)arg6 {
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    [self setHasCalledLoadAd:0x1];
    [self setPlacementDefinition:r23];
    [r23 release];
    [self setDataModel:r24];
    [r24 release];
    [self setOnImpression:r22];
    [r22 release];
    [self setOnImpressionMiss:r21];
    [r21 release];
    [self setOnClick:r20];
    [r20 release];
    return;
}

-(void)downloadMedia {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setDidCallDownloadMedia:0x1];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 downloadMediaFromData:r20 completion:0x0];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerImpression:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self nativeAdBaseDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdBaseWillLogImpression:)] != 0x0) {
            [r20 nativeAdBaseWillLogImpression:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerStopped:(void *)arg2 {
    [arg2 retain];
    r22 = **_NSInternalInconsistencyException;
    r20 = [NSStringFromClass([self class]) retain];
    r19 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"[%@ %@:] not implemented."] retain];
    r21 = [[[NSException exceptionWithName:r22 reason:r23 userInfo:0x0] retain] autorelease];
    [r23 release];
    [r19 release];
    [r20 release];
    objc_exception_throw(r21);
    return;
}

-(void)displayAdControllerClickThrough:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self nativeAdBaseDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdBaseDidClick:)] != 0x0) {
            [r20 nativeAdBaseDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdController:(void *)arg2 presentedData:(void *)arg3 onImpression:(void *)arg4 onImpressionMiss:(void *)arg5 onClick:(void *)arg6 {
    r31 = r31 - 0x80;
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
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r0 = [r24 adController];
    r0 = [r0 retain];
    r26 = [[r0 getPlacementDefinition] retain];
    [r0 release];
    [r24 populateFromDataModel:r20 placementDefinition:r26 onImpression:r21 onImpressionMiss:r22 onClick:r23];
    [r26 release];
    objc_initWeak(&stack[-88], r24);
    r25 = &var_70 + 0x20;
    objc_copyWeak(r25, &stack[-88]);
    r0 = objc_retainBlock(&var_70);
    r26 = r0;
    if ([r24 mediaCachePolicy] == 0x1) {
            [r24 downloadMediaFromData:r20 completion:r26];
    }
    else {
            (*(r26 + 0x10))(r26);
    }
    [r26 release];
    objc_destroyWeak(r25);
    objc_destroyWeak(&stack[-88]);
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)displayAdControllerUserClosed:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self nativeAdBaseDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdBaseDidFinishHandling:)] != 0x0) {
            [r20 nativeAdBaseDidFinishHandling:r19];
    }
    [r20 release];
    return;
}

-(void)disableViewabilityValidator {
    [self setViewabilityValidatorDisabled:0x1];
    return;
}

-(void)displayAdController:(void *)arg2 didFailWithError:(void *)arg3 {
    [self tellDelegateThatWeDidFailWithError:arg3];
    [self setAdController:0x0];
    [FBNativeAdBase unregisterOutstandingRequest:self];
    return;
}

-(void)downloadMediaFromData:(void *)arg2 completion:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    r22 = self;
    r19 = [arg2 retain];
    var_250 = [arg3 retain];
    r23 = [[NSMutableArray array] retain];
    r0 = [r19 image];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 image];
            r29 = r29;
            [r0 retain];
            [r23 addObject:r2];
            [r21 release];
    }
    r0 = [r19 type];
    var_240 = r22;
    var_238 = r19;
    if (r0 == 0x3) {
            var_190 = q0;
            r0 = [r19 multiProductAdContent];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            r20 = @selector(countByEnumeratingWithState:objects:count:);
            r0 = objc_msgSend(r0, r20);
            if (r0 != 0x0) {
                    r26 = r0;
                    r19 = *var_190;
                    do {
                            r28 = r20;
                            r20 = 0x0;
                            do {
                                    if (*var_190 != r19) {
                                            objc_enumerationMutation(r25);
                                    }
                                    r21 = @selector(addObject:);
                                    r0 = *(var_198 + r20 * 0x8);
                                    r0 = [r0 image];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r23, r21);
                                    [r22 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r26);
                            r20 = r28;
                            r0 = objc_msgSend(r25, r28);
                            r26 = r0;
                    } while (r0 != 0x0);
            }
            [r25 release];
            r22 = var_240;
            r19 = var_238;
    }
    else {
            r20 = @selector(countByEnumeratingWithState:objects:count:);
    }
    r0 = [r19 icon];
    r29 = r29;
    [r0 retain];
    r1 = @selector(addObject:);
    var_230 = r23;
    var_248 = r1;
    objc_msgSend(r23, r1);
    [r21 release];
    r0 = [r22 isKindOfClass:[FBNativeBannerAd class]];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"native";
            }
            else {
                    r0 = @"native_banner";
            }
    }
    r23 = [r0 retain];
    r21 = [FBAdCacheDebugData alloc];
    r22 = [[r19 requestId] retain];
    var_258 = r23;
    r25 = [r21 initWithRequestId:r22 adFormat:r23];
    [r22 release];
    r0 = [r19 cacheKeysForCreatives];
    r29 = r29;
    r0 = [r0 retain];
    var_1D0 = q0;
    r0 = [r0 retain];
    r26 = r0;
    r0 = objc_msgSend(r0, r20);
    if (r0 != 0x0) {
            r28 = r0;
            r19 = *var_1D0;
            var_228 = r20;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_1D0 != r19) {
                                    objc_enumerationMutation(r26);
                            }
                            r0 = [FBAdLoggingContext sharedContext];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 mapCacheDebugData:r2 forKey:r3];
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r28);
                    r0 = objc_msgSend(r26, var_228);
                    r28 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r26 release];
    [[var_238 videoURL] retain];
    [[var_238 adChoicesIcon] retain];
    objc_msgSend(var_230, var_248);
    [r21 release];
    objc_initWeak(&stack[-504], var_240);
    [var_230 copy];
    r0 = [r23 retain];
    var_200 = r0;
    objc_copyWeak(&var_220 + 0x30, &stack[-504]);
    r0 = [var_250 retain];
    [FBAdImage loadImagesAsync:r27 withBlock:&var_220];
    [r27 release];
    [r0 release];
    objc_destroyWeak(&var_220 + 0x30);
    [var_200 release];
    objc_destroyWeak(&stack[-504]);
    [r23 release];
    [r26 release];
    [r25 release];
    [var_258 release];
    [var_230 release];
    [r21 release];
    [var_238 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isAdValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self shouldBypassValidation] & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            r0 = [r19 adController];
            r0 = [r0 retain];
            r20 = r0;
            if (([r0 adExpired] & 0x1) != 0x0) {
                    r19 = 0x0;
            }
            else {
                    r19 = [r19 isValidForTapGestures];
            }
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isValidForTapGestures {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self shouldBypassValidation] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 hasCalledLoadAd];
            if (r0 != 0x0) {
                    r0 = [r19 dataModel];
                    r0 = [r0 retain];
                    r20 = [r0 isValid];
                    [r0 release];
                    r0 = r20;
            }
    }
    return r0;
}

-(bool)isRegistered {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self nativeAdView];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)unregisterView {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self nativeAdView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [FBNativeAdBase viewToNativeAdMap];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            if (r0 != r20) {
                    [r20 class];
                    r20 = [[NSString stringWithFormat:@"%@: view is not registered"] retain];
                    [FBAdDebugLogging logDebugEventWithType:@"internal_inconsistency" code:0x2 description:r20];
            }
            else {
                    [r20 unregisterViewInternal];
                    r0 = [r20 adController];
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 unregisterView];
            }
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)unregisterViewInternal {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self nativeAdView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [FBNativeAdBase viewToNativeAdMap];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r20];
            [r0 release];
            [r19 setNativeAdView:0x0];
            [r19 setClickableViews:0x0];
            [r19 detachTapGestureRecognizers];
    }
    [r20 release];
    return;
}

-(double)aspectRatio {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = [[r0 image] retain];
    [r0 release];
    if ([r19 height] != 0x0) {
            r20 = @selector(height);
            [r19 width];
            asm { scvtf      d8, x0 };
            objc_msgSend(r19, r20);
            asm { scvtf      d0, x0 };
            asm { fdiv       d8, d8, d0 };
    }
    r0 = [r19 release];
    return r0;
}

-(void *)generateLoggingData {
    r0 = [self generateLoggingDataWithExtraData:0x0];
    return r0;
}

-(void)logImpressionMissWithReason:(long long)arg2 {
    r31 = r31 - 0x70;
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
    r22 = arg2;
    r19 = self;
    [self firstImpressionTime];
    if (d0 == 0xbff0000000000000) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isImpressionMissTrackingEnabled];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r19 onImpressionMiss];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = r0;
                    if (r0 != 0x0) {
                            r21 = [[r19 onImpressionMiss] retain];
                            r0 = [NSNumber numberWithInteger:r22];
                            r0 = [r0 retain];
                            [[r0 stringValue] retain];
                            (*(r21 + 0x10))(r21, [[r19 generateLoggingDataWithExtraData:[[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain]] retain], [[r19 generateViewPostData] retain]);
                            [r19 release];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                            [r22 release];
                            [r21 release];
                    }
                    [r20 release];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)generateViewPostData {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSMutableDictionary dictionary] retain];
    r0 = [r20 dataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 viewJSONLoggingEnabled];
    [r0 release];
    if (r22 != 0x0) {
            r20 = [[r20 generateViewLogging] retain];
            [r19 setObject:r20 forKeyedSubscript:@"view"];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)generateViewLogging {
    r20 = [[self nativeAdView] retain];
    r21 = [[self clickableViews] retain];
    r19 = [[self generateLoggingWithView:r20 withClickableViews:r21] retain];
    [r21 release];
    [r20 release];
    r20 = [[FBAdUtility getJSONStringFromObject:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateLoggingDataWithExtraData:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [[NSMutableDictionary dictionary] retain];
    r0 = [r21 nativeAdView];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [FBNativeAdTemplateView class];
    r24 = [r23 isKindOfClass:r2];
    [r23 release];
    if (r24 != 0x0) {
            r0 = [r21 nativeAdView];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [NSNumber numberWithInteger:[r0 type]];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 stringValue];
            r29 = r29;
            r24 = [r0 retain];
            [r20 setObject:r24 forKeyedSubscript:@"nti"];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    if ([r21 isHScroll] != 0x0) {
            r0 = [FBAdUtility stringValueForBool:[r21 isHScroll]];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setObject:r22 forKeyedSubscript:@"nhs"];
            [r22 release];
    }
    r22 = [[r21 lastTouchData] retain];
    r0 = sub_1009ff3d8();
    r29 = r29;
    r23 = [r0 retain];
    if ([r21 mediaCachePolicy] != 0x1) {
            [r21 didCallDownloadMedia];
    }
    [r20 setObject:r2 forKeyedSubscript:r3];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r26 = [r0 retain];
            [r21 setLastTouchData:r26];
            [r26 release];
    }
    else {
            [r20 setObject:r2 forKeyedSubscript:r3];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r19 != 0x0) {
                    [r20 addEntriesFromDictionary:r19];
            }
    }
    else {
            [r20 setObject:r2 forKeyedSubscript:r3];
            if (r19 != 0x0) {
                    [r20 addEntriesFromDictionary:r19];
            }
    }
    [r23 release];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateLoggingWithView:(void *)arg2 withClickableViews:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r21 loggingDataForView:r19 withSubviews:0x1] retain];
            [r20 addEntriesFromDictionary:r21];
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)registerViewForInteraction:(void *)arg2 viewController:(void *)arg3 clickableViews:(void *)arg4 viewToCheckForViewability:(void *)arg5 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x230;
    r22 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r28 = [arg4 retain];
    r20 = [arg5 retain];
    if (r28 != 0x0) {
            if (r19 != 0x0) {
                    if (r24 != 0x0) {
                            r0 = [r22 placementID];
                            r29 = r29;
                            r25 = [r0 retain];
                            [FBAdDebugOverlay addToSuperview:r19 withPlacementID:r25];
                            [r25 release];
                    }
                    r0 = [FBAdViewControllerProxy proxyWithViewController:r24 withView:r19];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r24 release];
                    if (r28 != 0x0 && [r28 count] != 0x0) {
                            if (([r22 isAdValid] & 0x1) != 0x0) {
                                    var_260 = r26;
                                    var_278 = r20;
                                    r0 = [r22 nativeAdView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x1dc format:@"FBNativeAd was already registered with a UIView. Auto unregistering and proceeding"];
                                            [r22 unregisterViewInternal];
                                    }
                                    r23 = &var_200;
                                    r0 = [FBNativeAdBase viewToNativeAdMap];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r26 release];
                                    if (r0 != 0x0) {
                                            r25 = @selector(objectForKey:);
                                            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x1e1 format:@"UIView was already registered with a FBNativeAd. Auto unregistering and proceeding"];
                                            r0 = @class(FBNativeAdBase);
                                            r0 = [r0 viewToNativeAdMap];
                                            r0 = [r0 retain];
                                            r0 = objc_msgSend(r0, r25);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 unregisterViewInternal];
                                            [r25 release];
                                            [r26 release];
                                    }
                                    [FBAdUtility markView:r19];
                                    r0 = @class(FBNativeAdBase);
                                    r0 = [r0 viewToNativeAdMap];
                                    r0 = [r0 retain];
                                    [r0 setObject:r22 forKey:r19];
                                    [r0 release];
                                    r24 = [FBAdMediationOverlay alloc];
                                    r0 = [r22 extraHint];
                                    r0 = [r0 retain];
                                    r26 = [[r0 mediationData] retain];
                                    r20 = [r24 initWithString:r26];
                                    [r26 release];
                                    [r0 release];
                                    var_280 = r20;
                                    [r20 attachToView:r19];
                                    var_268 = r19;
                                    [r22 setNativeAdView:r19];
                                    r0 = [NSHashTable weakObjectsHashTable];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r22 setClickableViews:r24];
                                    [r24 release];
                                    *(int128_t *)(r23 + 0x60) = q0;
                                    *(int128_t *)(r23 + 0x70) = q0;
                                    *(int128_t *)(r23 + 0x40) = q0;
                                    *(int128_t *)(r23 + 0x50) = q0;
                                    var_270 = r28;
                                    r0 = [r28 retain];
                                    r26 = r0;
                                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r27 = r0;
                                            r20 = *var_1B0;
                                            do {
                                                    r19 = 0x0;
                                                    do {
                                                            if (*var_1B0 != r20) {
                                                                    objc_enumerationMutation(r26);
                                                            }
                                                            r24 = @selector(addObject:);
                                                            r0 = [r22 clickableViews];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            objc_msgSend(r0, r24);
                                                            [r23 release];
                                                            r19 = r19 + 0x1;
                                                    } while (r19 < r27);
                                                    r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r27 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r25 = @selector(countByEnumeratingWithState:objects:count:);
                                    [r26 release];
                                    [r22 setRootViewController:var_260];
                                    *(int128_t *)(&var_200 + 0x30) = q0;
                                    var_1F0 = q0;
                                    r0 = [r26 retain];
                                    r26 = r0;
                                    r0 = objc_msgSend(r0, r25);
                                    if (r0 != 0x0) {
                                            r27 = r0;
                                            r19 = *var_1F0;
                                            do {
                                                    r24 = 0x0;
                                                    do {
                                                            if (*var_1F0 != r19) {
                                                                    objc_enumerationMutation(r26);
                                                            }
                                                            r28 = *__dispatch_main_q;
                                                            dispatch_async(r28, &var_230);
                                                            r24 = r24 + 0x1;
                                                    } while (r24 < r27);
                                                    r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r27 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [r26 release];
                                    r0 = [r22 adController];
                                    r0 = [r0 retain];
                                    r19 = var_268;
                                    r26 = var_260;
                                    [r0 registerViewForInteraction:r19 withViewController:r26];
                                    [r0 release];
                                    r0 = [r22 dataModel];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 viewSnapshotLoggingEnabled];
                                    [r0 release];
                                    if (r23 != 0x0) {
                                            r0 = [r22 dataModel];
                                            r0 = [r0 retain];
                                            dispatch_after(dispatch_time(0x0, [r0 snapshotDelayPostInSecond] * 0x3b9aca00), *__dispatch_main_q, &var_258);
                                            [r21 release];
                                    }
                                    [var_280 release];
                                    r20 = var_278;
                                    r28 = var_270;
                            }
                            else {
                                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x1d7 format:@"FBNativeAd registerViewForInteraction can only be called when native ad did loaded"];
                            }
                    }
                    else {
                            [r22 class];
                            r22 = [[NSString stringWithFormat:@"%@: registerViewForInteraction requires a valid array for clickableViews"] retain];
                            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:r22];
                            [r22 release];
                    }
            }
            else {
                    [r22 class];
                    r22 = [[NSString stringWithFormat:@"%@: registerViewForInteraction requires a nonnull UIView"] retain];
                    [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:r22];
                    [r22 release];
                    r26 = r24;
            }
    }
    else {
            r0 = [FBAdUtility allInteractableTargets:r19];
            r0 = [r0 retain];
            r23 = r0;
            [r0 removeObject:r19];
            [r19 setUserInteractionEnabled:0x1];
            r0 = [r23 allObjects];
            r29 = r29;
            r25 = [r0 retain];
            [r28 release];
            [r23 release];
            r28 = r25;
            if (r19 == 0x0) {
                    [r22 class];
                    r22 = [[NSString stringWithFormat:@"%@: registerViewForInteraction requires a nonnull UIView"] retain];
                    [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:r22];
                    [r22 release];
                    r26 = r24;
            }
            else {
                    if (r24 != 0x0) {
                            r0 = [r22 placementID];
                            r29 = r29;
                            r25 = [r0 retain];
                            [FBAdDebugOverlay addToSuperview:r19 withPlacementID:r25];
                            [r25 release];
                    }
                    r0 = [FBAdViewControllerProxy proxyWithViewController:r24 withView:r19];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r24 release];
                    if (r28 != 0x0 && [r28 count] != 0x0) {
                            if (([r22 isAdValid] & 0x1) != 0x0) {
                                    var_260 = r26;
                                    var_278 = r20;
                                    r0 = [r22 nativeAdView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x1dc format:@"FBNativeAd was already registered with a UIView. Auto unregistering and proceeding"];
                                            [r22 unregisterViewInternal];
                                    }
                                    r23 = &var_200;
                                    r0 = [FBNativeAdBase viewToNativeAdMap];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    r0 = [r0 objectForKey:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r26 release];
                                    if (r0 != 0x0) {
                                            r25 = @selector(objectForKey:);
                                            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x1e1 format:@"UIView was already registered with a FBNativeAd. Auto unregistering and proceeding"];
                                            r0 = @class(FBNativeAdBase);
                                            r0 = [r0 viewToNativeAdMap];
                                            r0 = [r0 retain];
                                            r0 = objc_msgSend(r0, r25);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 unregisterViewInternal];
                                            [r25 release];
                                            [r26 release];
                                    }
                                    [FBAdUtility markView:r19];
                                    r0 = @class(FBNativeAdBase);
                                    r0 = [r0 viewToNativeAdMap];
                                    r0 = [r0 retain];
                                    [r0 setObject:r22 forKey:r19];
                                    [r0 release];
                                    r24 = [FBAdMediationOverlay alloc];
                                    r0 = [r22 extraHint];
                                    r0 = [r0 retain];
                                    r26 = [[r0 mediationData] retain];
                                    r20 = [r24 initWithString:r26];
                                    [r26 release];
                                    [r0 release];
                                    var_280 = r20;
                                    [r20 attachToView:r19];
                                    var_268 = r19;
                                    [r22 setNativeAdView:r19];
                                    r0 = [NSHashTable weakObjectsHashTable];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r22 setClickableViews:r24];
                                    [r24 release];
                                    *(int128_t *)(r23 + 0x60) = q0;
                                    *(int128_t *)(r23 + 0x70) = q0;
                                    *(int128_t *)(r23 + 0x40) = q0;
                                    *(int128_t *)(r23 + 0x50) = q0;
                                    var_270 = r28;
                                    r0 = [r28 retain];
                                    r26 = r0;
                                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r27 = r0;
                                            r20 = *var_1B0;
                                            do {
                                                    r19 = 0x0;
                                                    do {
                                                            if (*var_1B0 != r20) {
                                                                    objc_enumerationMutation(r26);
                                                            }
                                                            r24 = @selector(addObject:);
                                                            r0 = [r22 clickableViews];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            objc_msgSend(r0, r24);
                                                            [r23 release];
                                                            r19 = r19 + 0x1;
                                                    } while (r19 < r27);
                                                    r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r27 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r25 = @selector(countByEnumeratingWithState:objects:count:);
                                    [r26 release];
                                    [r22 setRootViewController:var_260];
                                    *(int128_t *)(&var_200 + 0x30) = q0;
                                    var_1F0 = q0;
                                    r0 = [r26 retain];
                                    r26 = r0;
                                    r0 = objc_msgSend(r0, r25);
                                    if (r0 != 0x0) {
                                            r27 = r0;
                                            r19 = *var_1F0;
                                            do {
                                                    r24 = 0x0;
                                                    do {
                                                            if (*var_1F0 != r19) {
                                                                    objc_enumerationMutation(r26);
                                                            }
                                                            r28 = *__dispatch_main_q;
                                                            dispatch_async(r28, &var_230);
                                                            r24 = r24 + 0x1;
                                                    } while (r24 < r27);
                                                    r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r27 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [r26 release];
                                    r0 = [r22 adController];
                                    r0 = [r0 retain];
                                    r19 = var_268;
                                    r26 = var_260;
                                    [r0 registerViewForInteraction:r19 withViewController:r26];
                                    [r0 release];
                                    r0 = [r22 dataModel];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 viewSnapshotLoggingEnabled];
                                    [r0 release];
                                    if (r23 != 0x0) {
                                            r0 = [r22 dataModel];
                                            r0 = [r0 retain];
                                            dispatch_after(dispatch_time(0x0, [r0 snapshotDelayPostInSecond] * 0x3b9aca00), *__dispatch_main_q, &var_258);
                                            [r21 release];
                                    }
                                    [var_280 release];
                                    r20 = var_278;
                                    r28 = var_270;
                            }
                            else {
                                    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x1d7 format:@"FBNativeAd registerViewForInteraction can only be called when native ad did loaded"];
                            }
                    }
                    else {
                            [r22 class];
                            r22 = [[NSString stringWithFormat:@"%@: registerViewForInteraction requires a valid array for clickableViews"] retain];
                            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:r22];
                            [r22 release];
                    }
            }
    }
    var_78 = **___stack_chk_guard;
    [r20 release];
    [r28 release];
    [r26 release];
    [r19 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(void *)generateViewSnapshot {
    r0 = [self generateViewSnapshotData];
    r0 = [r0 retain];
    r20 = [[r0 base64EncodedStringWithOptions:0x0] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateViewSnapshotData {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self nativeAdView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100b0799c;

loc_100b078f4:
    r22 = [[r19 nativeAdView] retain];
    r0 = [FBAdUtility snapshotOfView:r22 withBlock:0x0];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    if (r20 == 0x0) goto loc_100b07994;

loc_100b07944:
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    [r0 snapshotCompressionQuality];
    r19 = [UIImageJPEGRepresentation() retain];
    [r0 release];
    [r20 release];
    goto loc_100b079a0;

loc_100b079a0:
    r0 = [r19 autorelease];
    return r0;

loc_100b07994:
    [r20 release];
    goto loc_100b0799c;

loc_100b0799c:
    r19 = 0x0;
    goto loc_100b079a0;
}

-(void)handleTap:(void *)arg2 {
    [self handleTap:arg2 withEvent:0x0];
    return;
}

-(void)detachTapGestureRecognizers {
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
    var_110 = q0;
    stack[-312] = self;
    r0 = [self gestureRecognizers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [*(var_118 + r19 * 0x8) view];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 removeGestureRecognizer:r2];
                            [r27 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    r0 = [stack[-312] gestureRecognizers];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)tellDelegateThatWeDidFailWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 nativeAdBaseDelegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdBase:didFailWithError:), r3] != 0x0) {
            [r21 nativeAdBase:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)logImpressionWithExtraData:(void *)arg2 {
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
    r19 = [arg2 retain];
    [NSDate timeIntervalSinceReferenceDate];
    [r20 setFirstImpressionTime:r2];
    r19 = [r19 retain];
    r0 = [r20 extraHint];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 extraHint];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 stringRepresentation];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            if (r22 != 0x0) {
                    r0 = [r19 mutableCopy];
                    r21 = r0;
                    [r0 setObject:r22 forKeyedSubscript:@"extra_hints"];
                    [r19 release];
            }
            else {
                    r21 = r19;
            }
            [r22 release];
    }
    else {
            r21 = r19;
    }
    r0 = [r20 onImpression];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r23 = [[r20 onImpression] retain];
            (*(r23 + 0x10))(r23, [[r20 generateLoggingDataWithExtraData:r21] retain], [[r20 generateViewPostData] retain]);
            [r20 release];
            [r24 release];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)generateTapLoggingWithLocation:(struct CGPoint)arg2 viewTag:(unsigned long long)arg3 inRect:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x160;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r21 = r2;
    r23 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    [self firstImpressionTime];
    var_148 = r23;
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r23 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r20 = [r0 retain];
    }
    r26 = @selector(numberWithInt:);
    r19 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    var_158 = r20;
    r24 = @class(FBAdUtility);
    r0 = *(r19 + 0xfc0);
    asm { fcvtzs     w2, d13 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    var_150 = [r0 retain];
    r0 = *(r19 + 0xfc0);
    asm { fcvtzs     w2, d12 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r23 = [r0 retain];
    r0 = *(r19 + 0xfc0);
    asm { fcvtzs     w2, d11 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r25 = [r0 retain];
    r0 = *(r19 + 0xfc0);
    asm { fcvtzs     w2, d10 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r27 = [r0 retain];
    r0 = *(r19 + 0xfc0);
    asm { fcvtzs     w2, d9 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r28 = [r0 retain];
    r0 = *(r19 + 0xfc0);
    asm { fcvtzs     w2, d8 };
    r26 = [objc_msgSend(r0, r26) retain];
    r20 = [[*(r19 + 0xfc0) numberWithUnsignedInteger:r21] retain];
    r19 = [[NSDictionary dictionaryWithObjects:&var_F0 forKeys:&var_130 count:0x8] retain];
    r0 = [r24 getJSONStringFromObject:r19];
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    [r20 release];
    [r26 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r23 release];
    [var_150 release];
    r8 = @"";
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r24;
            }
            else {
                    r8 = @"";
            }
    }
    r20 = [[NSDictionary dictionaryWithObjects:&var_138 forKeys:&var_140 count:0x1] retain];
    r19 = [[var_148 generateLoggingDataWithExtraData:r20] retain];
    [r20 release];
    [r24 release];
    [var_158 release];
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff60)) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)criteriasForLoggingImpressionAreMet {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self lastAdViewabilityStatus];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)headline {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 headline] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)linkDescription {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 linkDescription] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)loggingDataForView:(void *)arg2 withSubviews:(bool)arg3 {
    r31 = r31 - 0x1c0;
    var_70 = d11;
    stack[-120] = d10;
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
    var_188 = arg3;
    r21 = self;
    r22 = [arg2 retain];
    r27 = [[NSMutableDictionary dictionary] retain];
    r20 = [[r22 window] retain];
    [r22 bounds];
    [r20 convertRect:r22 fromView:r3];
    [r20 release];
    r24 = [[NSString stringWithFormat:@"%p"] retain];
    [r27 setObject:r24 forKeyedSubscript:@"id"];
    [r24 release];
    r25 = @class(NSString);
    r19 = r22;
    r26 = [NSStringFromClass([r22 class]) retain];
    r20 = [[r25 stringWithFormat:@"%@"] retain];
    r24 = r27;
    r2 = r20;
    [r27 setObject:r2 forKeyedSubscript:@"class"];
    [r20 release];
    [r26 release];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r27 = [[NSNumber numberWithDouble:r2] retain];
    r28 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x90 forKeys:&saved_fp - 0xa0 count:0x2] retain];
    [r24 setObject:r28 forKeyedSubscript:@"origin"];
    [r28 release];
    [r27 release];
    [r20 release];
    r20 = [[NSNumber numberWithDouble:r28] retain];
    r25 = [[NSNumber numberWithDouble:r28] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0xb0 forKeys:&saved_fp - 0xc0 count:0x2] retain];
    [r24 setObject:r26 forKeyedSubscript:@"size"];
    [r26 release];
    [r25 release];
    [r20 release];
    r20 = @class(NSNumber);
    r0 = [r21 clickableViews];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r20 numberWithBool:[r0 containsObject:r19]];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r24 setObject:r20 forKeyedSubscript:@"clickable"];
    [r20 release];
    [r25 release];
    [@"unknown" retain];
    [UIButton class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100b075a8;

loc_100b0759c:
    r20 = @"button";
    goto loc_100b07638;

loc_100b07638:
    [r20 retain];
    [@"unknown" release];
    goto loc_100b0764c;

loc_100b0764c:
    [r24 setObject:r2 forKeyedSubscript:r3];
    if (var_188 != 0x0) {
            var_198 = r20;
            var_190 = r24;
            var_1A8 = @selector(setObject:forKeyedSubscript:);
            r0 = [r19 subviews];
            r0 = [r0 retain];
            r25 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
            [r0 release];
            var_170 = q0;
            var_188 = r19;
            r0 = [r19 subviews];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r28 = r0;
                    r24 = *var_170;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_170 != r24) {
                                            objc_enumerationMutation(r26);
                                    }
                                    r20 = @selector(addObject:);
                                    r0 = [r21 loggingDataForView:*(var_178 + r19 * 0x8) withSubviews:0x1];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r25, r20);
                                    [r22 release];
                                    r19 = r19 + 0x1;
                            } while (r19 < r28);
                            r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r28 = r0;
                    } while (r0 != 0x0);
            }
            [r26 release];
            r0 = [r25 count];
            r24 = var_190;
            if (r0 != 0x0) {
                    objc_msgSend(r24, var_1A8);
            }
            [r25 release];
            r19 = var_188;
            r20 = var_198;
    }
    var_80 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_80) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b075a8:
    [UILabel class];
    if ((objc_msgSend(r19, r20) & 0x1) == 0x0) goto loc_100b075d8;

loc_100b075cc:
    r20 = @"label";
    goto loc_100b07638;

loc_100b075d8:
    [UIImageView class];
    if ((objc_msgSend(r19, r20) & 0x1) == 0x0) goto loc_100b07608;

loc_100b075fc:
    r20 = @"image";
    goto loc_100b07638;

loc_100b07608:
    if ([r19 isMemberOfClass:[UIView class]] == 0x0) goto loc_100b07854;

loc_100b07630:
    r20 = @"view";
    goto loc_100b07638;

loc_100b07854:
    r20 = @"unknown";
    goto loc_100b0764c;
}

-(void *)advertiserName {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 advertiserName] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)handleTap:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x110;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r23 = self;
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r19 = [[r23 nativeAdView] retain];
    r27 = [[r23 rootViewController] retain];
    r20 = [r20 retain];
    r22 = [r22 retain];
    r0 = [r19 window];
    r29 = &var_10;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100b08298;

loc_100b07c10:
    r0 = [r19 window];
    r29 = r29;
    r25 = [r0 retain];
    [r19 bounds];
    [r25 convertRect:r19 fromView:r3];
    v13 = v0;
    v12 = v1;
    v10 = v2;
    v9 = v3;
    [r25 release];
    [UIGestureRecognizer class];
    r0 = [r20 isKindOfClass:r2];
    var_E0 = r22;
    var_D8 = r27;
    if (r0 == 0x0) goto loc_100b07d3c;

loc_100b07ca0:
    r0 = [r20 retain];
    r27 = [[r0 view] retain];
    [r0 locationInView:r19];
    v8 = v0;
    v11 = v1;
    [r0 release];
    r2 = [r27 nativeAdViewTag];
    v2 = v13;
    r0 = [r23 generateTapLoggingWithLocation:r2 viewTag:r3 inRect:r4];
    r29 = r29;
    r25 = [r0 retain];
    r0 = r27;
    goto loc_100b07f4c;

loc_100b07f4c:
    [r0 release];
    r26 = 0x0;
    goto loc_100b0802c;

loc_100b0802c:
    r0 = [FBAdConfigManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r2 = [r0 adTapMarginPercentage];
    v0 = v8;
    v1 = v11;
    r28 = [r19 fb_isTap:r2 inBoundsByMarginPercentage:r3];
    [r0 release];
    if ((r28 & 0x1) == 0x0) goto loc_100b08204;

loc_100b08084:
    [r23 firstImpressionTime];
    r0 = [r23 dataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 inlineClientToken];
    r29 = r29;
    r22 = [r0 retain];
    r28 = [FBAdUtility enforceAdClickguard:r22 withToken:r25 withExtraData:r4];
    [r22 release];
    [r21 release];
    if ((r28 & 0x1) != 0x0) goto loc_100b08288;

loc_100b08110:
    if ((r26 & 0x1) != 0x0 || [FBAdUtility enforceTwoStepConfirmation] == 0x0) goto loc_100b082f4;

loc_100b0812c:
    objc_initWeak(&stack[-160], r23);
    r0 = [r23 dataModel];
    r0 = [r0 retain];
    [[r0 inlineClientToken] retain];
    objc_copyWeak(&var_D0 + 0x28, &stack[-160]);
    r0 = [var_D8 retain];
    [FBAdUtility showTwoStepConfirmationDialogFrom:r0 withToken:r24 withExtraData:r25 completionHandler:&var_D0];
    [r24 release];
    [r27 release];
    [r0 release];
    objc_destroyWeak(&var_D0 + 0x28);
    objc_destroyWeak(&stack[-160]);
    goto loc_100b08288;

loc_100b08288:
    [r25 release];
    r27 = var_D8;
    goto loc_100b08294;

loc_100b08294:
    r22 = var_E0;
    goto loc_100b08298;

loc_100b08298:
    [r22 release];
    [r20 release];
    [r27 release];
    [r19 release];
    [r22 release];
    [r20 release];
    return;

loc_100b082f4:
    r0 = [r23 onClick];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    r27 = var_D8;
    if (r0 != 0x0) {
            r0 = [r23 onClick];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r21 release];
    }
    [r24 release];
    [r25 release];
    goto loc_100b08294;

loc_100b08204:
    [r19 bounds];
    [r19 bounds];
    [r19 bounds];
    [r19 bounds];
    [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdBase.m" lineNumber:0x312 format:@"Invalid tap (%f, %f) in view bounds (%f, %f, %f, %f"];
    goto loc_100b08288;

loc_100b07d3c:
    r26 = @selector(isKindOfClass:);
    [UIButton class];
    if (objc_msgSend(r20, r26) == 0x0) goto loc_100b07e40;

loc_100b07d60:
    r26 = @selector(isKindOfClass:);
    [UIEvent class];
    if (objc_msgSend(r22, r26) == 0x0) goto loc_100b07e40;

loc_100b07d84:
    r0 = [r22 touchesForView:r20];
    r0 = [r0 retain];
    r26 = [[r0 anyObject] retain];
    [r0 release];
    r27 = [r20 retain];
    [r26 locationInView:r19];
    v8 = v0;
    v11 = v1;
    r25 = [r27 nativeAdViewTag];
    [r27 release];
    v2 = v13;
    r0 = [r23 generateTapLoggingWithLocation:r25 viewTag:r3 inRect:r4];
    r29 = r29;
    goto loc_100b07f40;

loc_100b07f40:
    r25 = [r0 retain];
    r0 = r26;
    goto loc_100b07f4c;

loc_100b07e40:
    r26 = @selector(isKindOfClass:);
    [UIControl class];
    if (objc_msgSend(r20, r26) == 0x0) goto loc_100b07f58;

loc_100b07e64:
    r26 = @selector(isKindOfClass:);
    [UIEvent class];
    if (objc_msgSend(r22, r26) == 0x0) goto loc_100b07f58;

loc_100b07e88:
    r0 = [r22 touchesForView:r19];
    r0 = [r0 retain];
    r26 = [[r0 anyObject] retain];
    [r0 release];
    r27 = [r20 retain];
    [r26 locationInView:r19];
    v8 = v0;
    v11 = v1;
    r25 = [r27 nativeAdViewTag];
    [r27 release];
    v2 = v13;
    r0 = [r23 generateTapLoggingWithLocation:r25 viewTag:r3 inRect:r4];
    r29 = r29;
    goto loc_100b07f40;

loc_100b07f58:
    r26 = @selector(isKindOfClass:);
    [UIButton class];
    if (objc_msgSend(r20, r26) != 0x0) {
            r26 = @selector(isKindOfClass:);
            [NSValue class];
            if (objc_msgSend(r22, r26) != 0x0) {
                    [r22 CGPointValue];
                    v8 = v0;
                    v11 = v1;
                    r26 = 0x0;
            }
            else {
                    r26 = @selector(isKindOfClass:);
                    r8 = *_CGPointZero;
                    d8 = *(int128_t *)r8;
                    d11 = *(int128_t *)(r8 + 0x8);
                    [UIButton class];
                    if (objc_msgSend(r20, r26) != 0x0) {
                            r0 = [NSNull null];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 isEqual:r2];
                            [r0 release];
                    }
                    else {
                            r26 = 0x0;
                    }
            }
    }
    else {
            r26 = @selector(isKindOfClass:);
            r8 = *_CGPointZero;
            d8 = *(int128_t *)r8;
            d11 = *(int128_t *)(r8 + 0x8);
            [UIButton class];
            if (objc_msgSend(r20, r26) != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 isEqual:r2];
                    [r0 release];
            }
            else {
                    r26 = 0x0;
            }
    }
    r25 = 0x0;
    goto loc_100b0802c;
}

-(void *)socialContext {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 socialContext] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)callToAction {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 callToAction] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)icon {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 icon] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)rawBodyText {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 body] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)sponsoredTranslation {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 sponsoredTranslation] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)bodyText {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 body];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] >= 0x5b) {
            [r20 enumerateSubstringsInRange:0x0 options:[r20 length] usingBlock:0x3];
            r8 = *(&var_50 + 0x18);
            if (r8 != 0x0) {
                    r21 = [[r20 substringToIndex:r8 + 0x1] retain];
                    r23 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
                    r0 = [r21 stringByTrimmingCharactersInSet:r23];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
                    [r23 release];
            }
            else {
                    r0 = [r20 substringToIndex:0x5a];
                    r29 = r29;
                    r22 = [r0 retain];
            }
            r21 = [[NSString stringWithFormat:r2] retain];
            [r22 release];
            _Block_object_dispose(&var_50, 0x8);
    }
    else {
            r21 = [r20 retain];
    }
    [r20 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(long long)adFormatType {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [r0 type];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)adTranslation {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 adTranslation] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)promotedTranslation {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 promotedTranslation] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adChoicesIcon {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 adChoicesIcon] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adChoicesLinkURL {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 adChoicesLinkURL] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adChoicesText {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 adChoicesText] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adViewAttributes {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 adViewAttributes] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)gestureRecognizerShouldBegin:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isValidForTapGestures] != 0x0) {
            r0 = [r19 nativeAdView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 window];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            [r0 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_onClick, 0x0);
    objc_storeStrong((int64_t *)&self->_onImpressionMiss, 0x0);
    objc_storeStrong((int64_t *)&self->_onImpression, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_lastTouchData, 0x0);
    objc_storeStrong((int64_t *)&self->_clickableViews, 0x0);
    objc_destroyWeak((int64_t *)&self->_nativeAdView);
    objc_storeStrong((int64_t *)&self->_loadAdStartTime, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_gestureRecognizers, 0x0);
    objc_storeStrong((int64_t *)&self->_adProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_adController, 0x0);
    objc_destroyWeak((int64_t *)&self->_nativeAdBaseDelegate);
    objc_storeStrong((int64_t *)&self->_extraHint, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(long long)mediaCachePolicy {
    r0 = self->_mediaCachePolicy;
    return r0;
}

-(void *)extraHint {
    r0 = self->_extraHint;
    return r0;
}

-(void)setMediaCachePolicy:(long long)arg2 {
    self->_mediaCachePolicy = arg2;
    return;
}

-(void)setExtraHint:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraHint, arg2);
    return;
}

-(void *)nativeAdBaseDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdBaseDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adController {
    r0 = self->_adController;
    return r0;
}

-(void)setNativeAdBaseDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdBaseDelegate, arg2);
    return;
}

-(void)setAdController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adController, arg2);
    return;
}

-(void *)adProvider {
    r0 = self->_adProvider;
    return r0;
}

-(bool)hasCalledLoadAd {
    r0 = *(int8_t *)(int64_t *)&self->_hasCalledLoadAd;
    return r0;
}

-(void)setAdProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adProvider, arg2);
    return;
}

-(void)setHasCalledLoadAd:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasCalledLoadAd = arg2;
    return;
}

-(void *)gestureRecognizers {
    r0 = self->_gestureRecognizers;
    return r0;
}

-(void)setGestureRecognizers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gestureRecognizers, arg2);
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void *)loadAdStartTime {
    r0 = self->_loadAdStartTime;
    return r0;
}

-(void *)nativeAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLoadAdStartTime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loadAdStartTime, arg2);
    return;
}

-(void)setNativeAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdView, arg2);
    return;
}

-(void *)clickableViews {
    r0 = self->_clickableViews;
    return r0;
}

-(void)setClickableViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_clickableViews, arg2);
    return;
}

-(bool)viewabilityValidatorDisabled {
    r0 = *(int8_t *)(int64_t *)&self->_viewabilityValidatorDisabled;
    return r0;
}

-(void)setViewabilityValidatorDisabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_viewabilityValidatorDisabled = arg2;
    return;
}

-(bool)didCallDownloadMedia {
    r0 = *(int8_t *)(int64_t *)&self->_didCallDownloadMedia;
    return r0;
}

-(void)setDidCallDownloadMedia:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didCallDownloadMedia = arg2;
    return;
}

-(bool)shouldBypassValidation {
    r0 = *(int8_t *)(int64_t *)&self->_bypassValidation;
    return r0;
}

-(void)setBypassValidation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_bypassValidation = arg2;
    return;
}

-(void *)lastTouchData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_lastTouchData)), 0x0);
    return r0;
}

-(long long)templateId {
    r0 = self->_templateId;
    return r0;
}

-(void)setLastTouchData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTemplateId:(long long)arg2 {
    self->_templateId = arg2;
    return;
}

-(long long)placementType {
    r0 = self->_placementType;
    return r0;
}

-(void)setPlacementType:(long long)arg2 {
    self->_placementType = arg2;
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

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void)setIsHScroll:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isHScroll = arg2;
    return;
}

-(bool)isHScroll {
    r0 = *(int8_t *)(int64_t *)&self->_isHScroll;
    return r0;
}

-(void)setOnImpression:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onImpression {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onImpression)), 0x0);
    return r0;
}

-(void *)onImpressionMiss {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onImpressionMiss)), 0x0);
    return r0;
}

-(void)setOnImpressionMiss:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOnClick:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onClick {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onClick)), 0x0);
    return r0;
}

+(void *)requests {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eae428);
    if (*qword_1011ddcc8 != -0x1) {
            dispatch_once(0x1011ddcc8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddcd0);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)unregisterOutstandingRequest:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 requests];
    r0 = [r0 retain];
    [r0 removeObjectIdenticalTo:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)registerOutstandingRequest:(void *)arg2 {
    [arg2 retain];
    r0 = [self class];
    r0 = [r0 requests];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    [r19 release];
    return;
}

+(void *)viewToNativeAdMap {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eae3e8);
    if (*qword_1011ddcb8 != -0x1) {
            dispatch_once(0x1011ddcb8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddcc0);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)fakeNativeAdBase {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eae3a8);
    if (*qword_1011ddca8 != -0x1) {
            dispatch_once(0x1011ddca8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddcb0);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)nativeAdWithPlacementId:(void *)arg2 bidPayload:(void *)arg3 error:(void * *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg4;
    r19 = [arg2 retain];
    r0 = [FBAdBidPayload adTemplateIdWithJsonData:arg3];
    if (r0 == 0x1f4) goto loc_100b0a1e4;

loc_100b0a1b0:
    if (r0 != 0xc8) goto loc_100b0a218;

loc_100b0a1b8:
    r0 = [FBNativeAd alloc];
    goto loc_100b0a20c;

loc_100b0a20c:
    r21 = [r0 initWithPlacementID:r2 templateId:r3 placementType:r4];
    goto loc_100b0a258;

loc_100b0a258:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100b0a218:
    if (r20 != 0x0) {
            r0 = [FBAdError getNSError:0xfa2 description:@"Could not get a valid template ID from bid payload"];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r21 = 0x0;
            *r20 = r0;
    }
    else {
            r21 = 0x0;
    }
    goto loc_100b0a258;

loc_100b0a1e4:
    r0 = [FBNativeBannerAd alloc];
    goto loc_100b0a20c;
}

@end