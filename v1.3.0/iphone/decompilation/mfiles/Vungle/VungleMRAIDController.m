@implementation VungleMRAIDController

-(void *)initWithMRAIDPlacement:(void *)arg2 adFrame:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x70;
    var_50 = d11;
    stack[-88] = d10;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r20 + 0x38, r21);
            r0 = [r19 adUnit];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            *(int16_t *)(r20 + 0x8) = 0x0;
            *(int8_t *)(r20 + 0xa) = 0x0;
            r0 = objc_alloc();
            r0 = [r0 initWithFrame:r2];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = [r0 initWithWebViewFacade:*(r20 + 0x28) delegate:r20];
            r8 = *(r20 + 0x40);
            *(r20 + 0x40) = r0;
            [r8 release];
            r21 = objc_alloc();
            r0 = *(r20 + 0x28);
            r0 = [r0 contentView];
            r29 = r29;
            r22 = [r0 retain];
            r0 = [r21 initWithContainedView:r22];
            r8 = *(r20 + 0x48);
            *(r20 + 0x48) = r0;
            [r8 release];
            [r22 release];
            [*(r20 + 0x48) setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r21 = [VungleMRAIDAdReport new];
            r22 = *(r20 + 0x30);
            [VungleInternalMRAIDAd class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r0 = *(r20 + 0x30);
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 templateID];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 setTemplateID:r22];
                    [r23 release];
                    [r22 release];
            }
            r22 = [[*(r20 + 0x30) cacheKey] retain];
            [r21 setAdCacheKey:r22];
            [r22 release];
            r0 = objc_alloc();
            r0 = [r0 initWithReport:r21 placement:r19];
            r8 = *(r20 + 0x50);
            *(r20 + 0x50) = r0;
            [r8 release];
            [*(r20 + 0x40) setReportBuilderDelegate:*(r20 + 0x50)];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)orientationPropertyChangeWithNewSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [VungleMRAIDViewProperties new];
    [r0 setDimensionsWithSize:r2];
    r19 = [[self MRAIDbridge] retain];
    r21 = [[r0 toDictionary] retain];
    [r19 dispatchPropertiesChangeWithDictionary:r21];
    [r21 release];
    [r19 release];
    [r0 release];
    return;
}

-(void)viewablePropertyChange:(bool)arg2 {
    r0 = [VungleMRAIDViewProperties new];
    [r0 setIsViewable:arg2];
    r19 = [[self MRAIDbridge] retain];
    r20 = [[r0 toDictionary] retain];
    [r19 dispatchPropertiesChangeWithDictionary:r20];
    [r20 release];
    [r19 release];
    [r0 release];
    return;
}

-(void)storeViewLoadSuccessful {
    [self setIsStoreViewLoaded:0x1];
    r0 = [self MRAIDbridge];
    r0 = [r0 retain];
    [r0 dispatchPrepareStoreViewSuccessful];
    [r0 release];
    return;
}

-(void)calculateAdDurationForNativeClose {
    r21 = self;
    r23 = @class(VungleUtil);
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    [r0 timeIntervalSince1970];
    r24 = @selector(reportBuilder);
    r0 = objc_msgSend(r21, r24);
    r0 = [r0 retain];
    r20 = r0;
    r25 = @selector(report);
    r0 = objc_msgSend(r0, r25);
    r0 = [r0 retain];
    r22 = r0;
    [r0 adStartTime];
    asm { ucvtf      d0, x0 };
    r0 = [r23 convertFromSecondsToMilliseconds:r2];
    r0 = [r0 retain];
    r23 = r0;
    r26 = [r0 integerValue];
    r0 = objc_msgSend(r21, r24);
    r0 = [r0 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r25);
    r0 = [r0 retain];
    [r0 setAdDuration:r26];
    [r0 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)injectCloseEvent:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self reportBuilder] retain];
    [r19 aggregateEvent:r2];
    [r19 release];
    return;
}

-(void)finalizeAdExperience {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self didFinishDisplayingAd] & 0x1) == 0x0) {
            [r19 setDidFinishDisplayingAd:0x1];
            objc_initWeak(r29 - 0x18, r19);
            objc_copyWeak(&var_40 + 0x20, r29 - 0x18);
            dispatch_async(*__dispatch_main_q, &var_40);
            objc_destroyWeak(&var_40 + 0x20);
            objc_destroyWeak(r29 - 0x18);
    }
    return;
}

-(void)reactToApplicationEnteringBackground:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(vungleMRAIDControllerIsEnteringBackgroundWithReportable:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r20 delegate] retain];
            r0 = [r20 reportBuilder];
            r0 = [r0 retain];
            r22 = [[r0 report] retain];
            [r21 vungleMRAIDControllerIsEnteringBackgroundWithReportable:r22];
            [r22 release];
            [r0 release];
            [r21 release];
    }
    return;
}

-(void)unsubscribeFromEnteringBackgroundEvents {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2 name:r3 object:r4];
    [r20 release];
    return;
}

-(void *)ctaButtonURL {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self ad];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [VungleInternalMRAIDAd class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r20 ad];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 buildNonCacheableReplacementsDictionary];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r19 = [[r20 objectForKeyedSubscript:@"CTA_BUTTON_URL"] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)dealloc {
    [self unsubscribeFromEnteringBackgroundEvents];
    [self setWebViewFacade:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadAdWithPlayOptions:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r27 = [arg2 retain];
    [r20 setIsAdLoading:0x1];
    r0 = [r20 ad];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 state];
    [r0 release];
    if (r22 == 0x4) goto loc_10065b214;

loc_10065b0e8:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(vungleMRAIDController:didFailToLoadAd:error:), r3, r4];
    [r0 release];
    if (r24 == 0x0) goto loc_10065b214;

loc_10065b130:
    r23 = objc_alloc();
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r23 = [r23 initWithDomain:@"com.vungle.mraid.controller" code:0xffffffffffffd8f1 userInfo:r24];
    [r24 release];
    r22 = [[r20 delegate] retain];
    r21 = [[r20 ad] retain];
    [r22 vungleMRAIDController:r20 didFailToLoadAd:r21 error:r23];
    [r21 release];
    [r22 release];
    [r23 release];
    goto loc_10065bbe0;

loc_10065bbe0:
    var_58 = **___stack_chk_guard;
    [r27 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10065b214:
    r0 = [r20 ad];
    r29 = r29;
    r19 = [r0 retain];
    [VungleInternalMRAIDAd class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r20 ad];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 buildCacheableReplacementsDictionary];
            r29 = r29;
            var_90 = [r0 retain];
            [r22 release];
    }
    else {
            var_90 = 0x0;
    }
    r24 = @selector(isKindOfClass:);
    [r19 release];
    r0 = [r20 ad];
    r29 = r29;
    r19 = [r0 retain];
    [VungleInternalMRAIDAd class];
    if (objc_msgSend(r19, r24) != 0x0) {
            r0 = [r20 ad];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 buildNonCacheableReplacementsDictionary];
            r29 = r29;
            r26 = [r0 retain];
            [r22 release];
    }
    else {
            r26 = 0x0;
    }
    [r19 release];
    r0 = [r20 ad];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 incentivized] == 0x0) goto loc_10065b448;

loc_10065b350:
    r24 = @selector(isKindOfClass:);
    r0 = [r20 ad];
    r29 = r29;
    r25 = [r0 retain];
    [VungleInternalMRAIDAd class];
    if ((objc_msgSend(r25, r24) & 0x1) == 0x0) goto loc_10065b440;

loc_10065b388:
    r0 = [r27 customIncentivizedTexts];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r27;
    [r0 release];
    [r25 release];
    [r19 release];
    if (r0 != 0x0) {
            r19 = [[r20 ad] retain];
            r22 = [[r28 customIncentivizedTexts] retain];
            r0 = [r19 updateNonCacheableReplacements:r26 withIncentivizedTexts:r22];
            r29 = r29;
            r25 = [r0 retain];
            [r26 release];
            [r22 release];
            [r19 release];
            r26 = r25;
    }
    r27 = r28;
    goto loc_10065b450;

loc_10065b450:
    r24 = @selector(isKindOfClass:);
    r22 = [[r20 ad] retain];
    r19 = [[VungleMRAIDViewPropertiesFactory buildDefaultPropertiesForAd:r22] retain];
    [r20 setMraidViewProperties:r19];
    [r19 release];
    [r22 release];
    r0 = [r20 ad];
    r29 = r29;
    r19 = [r0 retain];
    [VungleInternalMRAIDAd class];
    r22 = objc_msgSend(r19, r24);
    [r19 release];
    if ((r22 & 0x1) == 0x0) goto loc_10065b660;

loc_10065b4f8:
    r0 = [r20 ad];
    r29 = r29;
    r0 = [r0 retain];
    r19 = [r0 templateType];
    [r0 release];
    if (r19 > 0x3) goto loc_10065b588;

loc_10065b530:
    (0x10065b548 + *(int8_t *)(0x100bf2eec + r19) * 0x4)();
    return;

loc_10065b588:
    r0 = [r20 mraidViewProperties];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 setPlacementType:r2];
    [r19 release];
    goto loc_10065b660;

loc_10065b660:
    r19 = [r27 startMuted];
    r0 = [r20 mraidViewProperties];
    r0 = [r0 retain];
    [r0 setStartMuted:r19];
    [r0 release];
    r0 = [r20 ad];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 updateNonCacheableReplacements:r26 withStartMutedStatus:r19];
    r29 = r29;
    var_98 = [r0 retain];
    [r26 release];
    [r22 release];
    if ([r27 ordinalView] != 0x0) {
            r19 = [r27 ordinalView];
            r0 = [r20 reportBuilder];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 report];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setOrdinalView:r19];
            [r0 release];
            [r22 release];
    }
    var_88 = r27;
    r25 = [[VNGPersistenceManager sharedManager] retain];
    [VNGUserConsentInfoModel class];
    r26 = [[VNGUserConsentInfoModel key] retain];
    r0 = [r25 loadObjectWithClass:r2 key:r3 error:r4];
    r29 = r29;
    var_80 = [r0 retain];
    r19 = [0x0 retain];
    [r26 release];
    [r25 release];
    if (r19 == 0x0 && [var_80 consentRequired] != 0x0) {
            r0 = [var_80 consentStatus];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 isEqualToString:r2];
            [r0 release];
            if (r26 != 0x0) {
                    r0 = [r20 mraidViewProperties];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setIsConsentRequired:0x1];
                    [r0 release];
            }
    }
    r25 = [[VNGPersistenceManager sharedManager] retain];
    [VNGUserLocalConsentMessage class];
    r22 = [[VNGUserLocalConsentMessage key] retain];
    r0 = [r25 loadObjectWithClass:r2 key:r3 error:r4];
    r29 = r29;
    r27 = [r0 retain];
    r23 = [r19 retain];
    [r19 release];
    [r22 release];
    [r25 release];
    if (r27 != 0x0 && r23 == 0x0) {
            r19 = [[r20 mraidViewProperties] retain];
            r22 = [[r27 consentMessageTitleText] retain];
            [r19 setConsentMessageTitle:r22];
            [r22 release];
            [r19 release];
            r19 = [[r20 mraidViewProperties] retain];
            r22 = [[r27 consentMessageBodyText] retain];
            [r19 setConsentMessageBody:r22];
            [r22 release];
            [r19 release];
            r19 = [[r20 mraidViewProperties] retain];
            r22 = [[r27 consentAcceptButtonText] retain];
            [r19 setConsentMessageAcceptButton:r22];
            [r22 release];
            [r19 release];
            r19 = [[r20 mraidViewProperties] retain];
            r0 = [r27 consentDenyButtonText];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setConsentMessageDenyButton:r22];
            [r22 release];
            [r19 release];
    }
    r0 = [r20 ad];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 cacheKey] retain];
    r0 = [VNGPersistenceManager URLForAdKey:r22];
    r0 = [r0 retain];
    r19 = [[r0 URLByAppendingPathComponent:@"index.html"] retain];
    [r0 release];
    [r22 release];
    [r21 release];
    r21 = [[r20 MRAIDbridge] retain];
    r0 = [r20 mraidViewProperties];
    r0 = [r0 retain];
    r22 = [[r0 toDictionary] retain];
    [r21 loadHTMLFileWithURL:r19 cacheableReplacements:var_90 nonCacheableReplacements:var_98 viewProperties:r22];
    [r22 release];
    [r0 release];
    [r21 release];
    [r19 release];
    [r27 release];
    [var_80 release];
    [r23 release];
    [var_98 release];
    [var_90 release];
    r27 = var_88;
    goto loc_10065bbe0;

loc_10065b440:
    [r25 release];
    goto loc_10065b448;

loc_10065b448:
    [r19 release];
    goto loc_10065b450;
}

-(void)MRAIDBridge:(void *)arg2 didFailToLoad:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
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
    r23 = [r0 respondsToSelector:@selector(vungleMRAIDController:didFailToLoadAd:error:), arg3, r4];
    [r0 release];
    if (r23 != 0x0) {
            r22 = objc_alloc();
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            r22 = [r22 initWithDomain:@"com.vungle.mraid.controller" code:0xffffffffffffd8f0 userInfo:r23];
            [r23 release];
            r21 = [[r19 delegate] retain];
            r23 = [[r19 ad] retain];
            [r21 vungleMRAIDController:r19 didFailToLoadAd:r23 error:r22];
            [r23 release];
            [r21 release];
            [r22 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)MRAIDBridgeDidLoadAd:(void *)arg2 {
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    dispatch_async(*__dispatch_main_q, &var_40);
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)handleNativeCommandCloseWithBridge:(void *)arg2 {
    [self finalizeAdExperience];
    return;
}

-(void)bridge:(void *)arg2 handleDisplayForDestinationURL:(void *)arg3 {
    [arg3 retain];
    r0 = [self adContainerView];
    r0 = [r0 retain];
    r22 = [[r0 enclosedView] retain];
    [r22 isKindOfClass:NSClassFromString(@"WKWebView")];
    [r22 release];
    [r0 release];
    objc_initWeak(&stack[-72], self);
    var_50 = r19;
    [r19 retain];
    objc_copyWeak(&var_70 + 0x28, &stack[-72]);
    dispatch_async(*__dispatch_main_q, &var_70);
    objc_destroyWeak(&var_70 + 0x28);
    [var_50 release];
    [r19 release];
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandUseCustomClose:(long long)arg3 {
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:(unsigned long long)arg3 {
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_48 + 0x20, &saved_fp - 0x18);
    dispatch_async(*__dispatch_main_q, &var_48);
    objc_destroyWeak(&var_48 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)handleNativeCommandCriticalErrorWithBridge:(void *)arg2 {
    [self finalizeAdExperience];
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandTPATKey:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r20 = [arg3 retain];
    r23 = [[r22 ad] retain];
    r0 = [r22 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 respondsToSelector:@selector(vungleMRAIDController:executeRequestWithTPATURLArray:), r3];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            var_138 = r22;
            r24 = [NSMutableArray new];
            var_110 = q0;
            var_140 = r23;
            var_130 = r20;
            r0 = [r23 TPATForKey:r20];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r27 = r0;
                    r20 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r20) {
                                            objc_enumerationMutation(r25);
                                    }
                                    r19 = @selector(copy);
                                    r0 = *(var_118 + r26 * 0x8);
                                    r0 = [r0 URL];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = objc_msgSend(r0, r19);
                                    [r0 release];
                                    if (r22 != 0x0) {
                                            [r24 addObject:r2];
                                    }
                                    [r22 release];
                                    r26 = r26 + 0x1;
                            } while (r26 < r27);
                            r0 = objc_msgSend(r25, var_128);
                            r27 = r0;
                    } while (r0 != 0x0);
            }
            [r25 release];
            r19 = [[var_138 delegate] retain];
            [r24 copy];
            [r19 vungleMRAIDController:r2 executeRequestWithTPATURLArray:r3];
            [r21 release];
            [r19 release];
            [r24 release];
            r20 = var_130;
            r23 = var_140;
    }
    var_60 = **___stack_chk_guard;
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandIsSuccessfulView:(bool)arg3 {
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
    r19 = arg3;
    r20 = self;
    if (([self didFinishDisplayingAd] & 0x1) == 0x0) {
            [r20 setIsSuccessfulAdView:0x1];
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(vungleMRAIDControllerSuccessfulView:reportable:), r3];
            [r0 release];
            if (r24 != 0x0) {
                    r22 = [[r20 delegate] retain];
                    r0 = [r20 reportBuilder];
                    r0 = [r0 retain];
                    r23 = [[r0 report] retain];
                    [r22 vungleMRAIDControllerSuccessfulView:r19 reportable:r23];
                    [r23 release];
                    [r0 release];
                    [r22 release];
            }
    }
    return;
}

-(void)handleNativePrepareStoreView:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(vungleMRAIDController:prepareStoreViewWithAppStoreParams:), r3];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 vungleMRAIDController:r20 prepareStoreViewWithAppStoreParams:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)handleNativePresentStoreView {
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
    r19 = self;
    objc_initWeak(&stack[-72], r19);
    if (([VungleUtil isOrientationLandscapeOnly] & 0x1) != 0x0) {
            r19 = [[r19 ctaButtonURL] retain];
            r20 = [[NSURL URLWithString:r19] retain];
            r21 = [[NSArray arrayWithObjects:&var_70 count:0x2] retain];
            r0 = [r20 scheme];
            r29 = r29;
            r23 = [r0 retain];
            r22 = [r21 containsObject:r23];
            [r23 release];
            [r21 release];
            if (r22 != 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 openURL:r2];
            }
            else {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 openURL:r2];
            }
            [r21 release];
            [r20 release];
            [r19 release];
    }
    else {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r20 = [r0 respondsToSelector:r2];
            [r0 release];
            if (r20 != 0x0) {
                    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                    dispatch_async(*__dispatch_main_q, &var_60);
                    objc_destroyWeak(&var_60 + 0x20);
            }
    }
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void)bridge:(void *)arg2 handleExpandCommand:(void *)arg3 {
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
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(vungleMRAIDController:expandWith:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 vungleMRAIDController:r20 expandWith:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)bridge:(void *)arg2 handleResizeCommand:(void *)arg3 {
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
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(vungleMRAIDController:resizeWith:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 vungleMRAIDController:r20 resizeWith:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(bool)urlContainsStoreKitAppID:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSURLComponents componentsWithURL:arg2 resolvingAgainstBaseURL:0x1];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 host];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r0 = [r19 path];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 lastPathComponent];
            r0 = [r0 retain];
            r21 = [r0 hasPrefix:@"id"];
            [r0 release];
            [r22 release];
            [r20 release];
    }
    else {
            [r20 release];
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)storeViewLoadDismissed {
    [self setIsStoreViewLoaded:0x0];
    r0 = [self MRAIDbridge];
    r0 = [r0 retain];
    [r0 dispatchPreprentStoreViewFinished];
    [r0 release];
    return;
}

-(void *)mraidViewProperties {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setMraidViewProperties:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)presenterViewController {
    r0 = objc_loadWeakRetained(self + 0x20);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPresenterViewController:(void *)arg2 {
    objc_storeWeak(self + 0x20, arg2);
    return;
}

-(void *)webViewFacade {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setWebViewFacade:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(bool)isAdLoading {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsAdLoading:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)ad {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setAd:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void)setPlacement:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)placement {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)MRAIDbridge {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setMRAIDbridge:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)adContainerView {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setAdContainerView:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(bool)didFinishDisplayingAd {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setDidFinishDisplayingAd:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void)setReportBuilder:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)reportBuilder {
    r0 = *(self + 0x50);
    return r0;
}

-(bool)isSuccessfulAdView {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setIsSuccessfulAdView:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(bool)isStoreKitWorkaround {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setIsStoreKitWorkaround:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(bool)isStoreViewLoaded {
    r0 = *(int8_t *)(self + 0xc);
    return r0;
}

-(void)setIsStoreViewLoaded:(bool)arg2 {
    *(int8_t *)(self + 0xc) = arg2;
    return;
}

-(bool)shouldProcessCloseEvent {
    r0 = *(int8_t *)(self + 0xd);
    return r0;
}

-(void)setShouldProcessCloseEvent:(bool)arg2 {
    *(int8_t *)(self + 0xd) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_destroyWeak(self + 0x20);
    objc_destroyWeak(self + 0x18);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end