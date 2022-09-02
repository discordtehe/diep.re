@implementation GADRewardBasedVideoAd

+(void *)sharedInstance {
    if (*qword_1011dbe50 != -0x1) {
            dispatch_once(0x1011dbe50, 0x100e98fa8);
    }
    r0 = *0x1011dbe58;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    [self->_adSource invalidateAndCancel];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.reward-based-video", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADAdSource alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 attachAppSettingsObservers];
    }
    r0 = r19;
    return r0;
}

-(void)updateTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    sub_1008c2bc8(r21);
    var_38 = r21;
    [r21 retain];
    var_30 = [self retain];
    var_28 = r19;
    [r19 retain];
    sub_100860a80();
    [var_28 release];
    [var_30 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)loadRequest:(void *)arg2 withAdUnitID:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r23 retain];
    if ((sub_100818a24() & 0x1) != 0x0) {
            r22 = (int64_t *)&r21->_adUnitID;
            objc_storeStrong(r22, r23);
            if (r19 == 0x0) {
                    r0 = [GADRequest request];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r19 release];
                    r19 = r23;
            }
            r23 = [[NSArray arrayWithObjects:r29 - 0x40 count:0x1] retain];
            [r19 setAdTypes:r23];
            [r23 release];
            r22 = [[GADTargeting alloc] initWithRequest:r19 adUnitID:*r22];
            [r21 stopObservingApplicationConfiguration];
            r21 = [r21 retain];
            var_70 = r22;
            r22 = [r22 retain];
            [r21 updateTargeting:r22 completionHandler:&var_98];
            [var_70 release];
            [r21 release];
            r0 = r22;
    }
    else {
            var_48 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_68);
            r0 = var_48;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeExistingAd {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rewardBasedVideoAd));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    [self setAdMetadata:0x0];
    [self setAdNetworkClassName:0x0];
    return;
}

-(void)loadWithTargeting:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r22 = self;
    r20 = [arg2 retain];
    objc_initWeak(r29 - 0x58, r22);
    r19 = &var_80 + 0x20;
    objc_copyWeak(r19, r29 - 0x58);
    r0 = objc_retainBlock(&var_80);
    r21 = r0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
    if (*(int8_t *)(r22 + r25) != 0x0) {
            NSLog(@"<Google> Ignoring request. Another request is already in progress.");
    }
    else {
            if (*(int8_t *)(int64_t *)&r22->_isAdPresenting != 0x0) {
                    r0 = sub_100809600(0x0, @"Cannot send request while another ad is being presented. Another rewarded ad may be requested after the current ad closes.");
                    r29 = r29;
                    r22 = [r0 retain];
                    var_90 = [r21 retain];
                    var_88 = r22;
                    [r22 retain];
                    dispatch_async(*__dispatch_main_q, &var_B0);
                    [var_88 release];
                    [var_90 release];
                    [r22 release];
            }
            else {
                    [r22 removeExistingAd];
                    objc_copyWeak(&var_E0 + 0x28, r29 - 0x58);
                    var_C0 = [r21 retain];
                    r0 = objc_retainBlock(&var_E0);
                    r24 = r0;
                    *(int8_t *)(r22 + r25) = 0x1;
                    r0 = [r22 adSource];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 loadAdsWithTargeting:r20 completionHandler:r24];
                    [r0 release];
                    [r24 release];
                    [var_C0 release];
                    objc_destroyWeak(&var_E0 + 0x28);
            }
    }
    [r21 release];
    objc_destroyWeak(r19);
    objc_destroyWeak(r29 - 0x58);
    [r20 release];
    return;
}

-(void)presentFromRootViewController:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)adInvalidated {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b728];
    [r0 release];
    if (r21 != 0x0 && [r19 isReady] != 0x0) {
            [r19 setRewardBasedVideoAd:0x0];
            r20 = [sub_100809600(0xb, 0x0) retain];
            r21 = [sub_100809bcc() retain];
            [r19 adLoadCompletedWithError:r21];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)adLoadCompletedWithError:(void *)arg2 {
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
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            if ([r21 respondsToSelector:@selector(rewardBasedVideoAd:didFailToLoadWithError:), r3] != 0x0) {
                    [r21 rewardBasedVideoAd:r20 didFailToLoadWithError:r19];
            }
    }
    else {
            if ([r21 respondsToSelector:@selector(rewardBasedVideoAdDidReceiveAd:)] != 0x0) {
                    [r21 rewardBasedVideoAdDidReceiveAd:r20];
            }
            sub_1008833e8(*0x100e9c018, r20->_rewardBasedVideoAd, 0x0);
            r0 = objc_msgSend(r20, r22);
            r0 = [r0 retain];
            r22 = r0;
            if (objc_msgSend(r0, r23, @selector(rewardBasedVideoAdMetadataDidChange:)) != 0x0) {
                    [r22 rewardBasedVideoAdMetadataDidChange:r2];
            }
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)adNetworkClassName {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setAdNetworkClassName:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)adPresentationDidFail {
    [self retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    var_60 = [r19 retain];
    dispatch_async(r20, &var_80);
    [var_60 release];
    [r19 release];
    return;
}

-(bool)isReady {
    r0 = self;
    if (r0->_rewardBasedVideoAd != 0x0) {
            if (*(int8_t *)(int64_t *)&r0->_isAdPresenting == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)adSource {
    r0 = self->_adSource;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setRewardBasedVideoAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardBasedVideoAd, arg2);
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 metadata];
    r0 = [r0 retain];
    r22 = [[r0 adNetworkClassName] retain];
    [self setAdNetworkClassName:r22];
    [r22 release];
    [r0 release];
    [self attachLifecycleEventObservers];
    [self attachRewardedEventsObservers];
    [r20 release];
    return;
}

-(void *)adMetadata {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setAdMetadata:(void *)arg2 {
    r20 = [arg2 copy];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)attachLifecycleEventObservers {
    r31 = r31 - 0x130;
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
    r21 = self;
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_intermissionObservers));
    r8 = *(r21 + r27);
    *(r21 + r27) = r0;
    [r8 release];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_rewardBasedVideoAd));
    if (*(r21 + r19) != 0x0) {
            objc_initWeak(r29 - 0x68, r21);
            objc_copyWeak(&var_90 + 0x20, r29 - 0x68);
            [r20 addObserverForName:*0x100e9c148 object:r24 queue:0x0 usingBlock:&var_90];
            objc_copyWeak(&var_B8 + 0x20, r29 - 0x68);
            [r23 addObserverForName:*0x100e9c158 object:r25 queue:0x0 usingBlock:&var_B8];
            objc_copyWeak(&var_E0 + 0x20, r29 - 0x68);
            [r24 addObserverForName:*0x100e9bfe8 object:r26 queue:0x0 usingBlock:&var_E0];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_108 + 0x20, r29 - 0x68);
            [r24 addObserverForName:*0x100e9c020 object:r21 queue:r26 usingBlock:&var_108];
            [r26 release];
            objc_destroyWeak(&var_108 + 0x20);
            objc_destroyWeak(&var_E0 + 0x20);
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(r29 - 0x68);
    }
    return;
}

-(void)attachRewardedEventsObservers {
    r31 = r31 - 0x130;
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
    r20 = self;
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedAdObservers));
    r8 = *(r20 + r27);
    *(r20 + r27) = r0;
    [r8 release];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_rewardBasedVideoAd));
    if (*(r20 + r28) != 0x0) {
            objc_initWeak(r29 - 0x68, r20);
            objc_copyWeak(&var_90 + 0x20, r29 - 0x68);
            [r21 addObserverForName:*0x100e9c058 object:r24 queue:0x0 usingBlock:&var_90];
            objc_copyWeak(&var_B8 + 0x20, r29 - 0x68);
            [r23 addObserverForName:*0x100e9c668 object:r25 queue:0x0 usingBlock:&var_B8];
            objc_copyWeak(&var_E0 + 0x20, r29 - 0x68);
            [r24 addObserverForName:*0x100e9c670 object:r26 queue:0x0 usingBlock:&var_E0];
            objc_copyWeak(&var_108 + 0x20, r29 - 0x68);
            [r25 addObserverForName:*0x100e9c660 object:r20 queue:0x0 usingBlock:&var_108];
            objc_destroyWeak(&var_108 + 0x20);
            objc_destroyWeak(&var_E0 + 0x20);
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(r29 - 0x68);
    }
    return;
}

-(void)attachAppSettingsObservers {
    r31 = r31 - 0xc0;
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
    if (sub_100818a24() != 0x0) {
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_appSettingsObservers));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r19);
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            r0 = objc_retainBlock(&var_80);
            r22 = *(r19 + r22);
            r23 = [[NSOperationQueue mainQueue] retain];
            [r22 addObserverForName:*0x100e9c400 object:0x0 queue:r23 usingBlock:r0];
            [r23 release];
            var_88 = [r19 retain];
            sub_100860a80();
            [var_88 release];
            [r21 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    return;
}

-(void)stopObservingApplicationConfiguration {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appSettingsObservers));
    r8 = *(self + r9);
    *(self + r9) = 0x0;
    [r8 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)userIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userIdentifier)), 0x0);
    return r0;
}

-(void)setUserIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setUpAdaptersFromApplicationSettings {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x280;
    r22 = self;
    if (r22->_appSettingsObservers != 0x0) {
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 boolForKey:*0x100e9b7f0];
            [r0 release];
            if (r20 != 0x0) {
                    r0 = [GADRemoteConfigurationSource sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = [r0 didRefreshSinceAppStart];
                    [r0 release];
                    if (r20 != 0x0) {
                            var_2C0 = r22;
                            r0 = [GADSettings sharedInstance];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 arrayForKey:*0x100e9b808];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 release];
                            r19 = [r20 retain];
                            var_238 = [[NSMutableDictionary alloc] init];
                            r0 = [r19 retain];
                            r22 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_278 = r1;
                            r24 = objc_msgSend(r0, r1);
                            if (r24 != 0x0) {
                                    r23 = *0x0;
                                    r25 = *0x100e9e540;
                                    var_2A0 = r23;
                                    stack[-680] = r22;
                                    var_2A8 = r25;
                                    do {
                                            r28 = 0x0;
                                            r20 = @selector(objectForKeyedSubscript:);
                                            var_290 = r24;
                                            var_220 = r20;
                                            do {
                                                    if (*0x0 != r23) {
                                                            objc_enumerationMutation(r22);
                                                    }
                                                    r19 = *(0x0 + r28 * 0x8);
                                                    r0 = objc_msgSend(r19, r20);
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r21 = [r0 isEqual:@"rewarded"];
                                                    [r0 release];
                                                    if (r21 != 0x0) {
                                                            var_288 = r28;
                                                            r19 = [objc_msgSend(r19, var_220) retain];
                                                            r27 = @selector(class);
                                                            r0 = objc_msgSend(@class(NSArray), r27);
                                                            r0 = sub_10081ba6c(r19, *0x100e9e570, r0);
                                                            r29 = r29;
                                                            r20 = [r0 retain];
                                                            [r19 release];
                                                            r0 = [r20 retain];
                                                            r20 = r0;
                                                            r21 = objc_msgSend(r0, var_278);
                                                            r24 = *0x100e9e558;
                                                            if (r21 != 0x0) {
                                                                    var_250 = r20;
                                                                    do {
                                                                            r28 = 0x0;
                                                                            var_228 = r21;
                                                                            do {
                                                                                    if (*0x0 != *0x0) {
                                                                                            objc_enumerationMutation(r20);
                                                                                    }
                                                                                    r23 = *(0x0 + r28 * 0x8);
                                                                                    if ([r23 isKindOfClass:objc_msgSend(@class(NSDictionary), r27)] != 0x0) {
                                                                                            r0 = objc_msgSend(r23, var_220);
                                                                                            r29 = r29;
                                                                                            r21 = [r0 retain];
                                                                                            if ([r21 isKindOfClass:objc_msgSend(@class(NSArray), r27)] != 0x0) {
                                                                                                    r0 = [r21 firstObject];
                                                                                                    r29 = r29;
                                                                                                    r19 = [r0 retain];
                                                                                                    if (r19 != 0x0) {
                                                                                                            r20 = var_238;
                                                                                                            r27 = @selector(objectForKey:);
                                                                                                            r0 = objc_msgSend(r20, r27);
                                                                                                            r29 = r29;
                                                                                                            r0 = [r0 retain];
                                                                                                            [r0 release];
                                                                                                            if (r0 != 0x0) {
                                                                                                                    r0 = objc_msgSend(r20, r27);
                                                                                                                    r29 = r29;
                                                                                                                    r0 = [r0 retain];
                                                                                                            }
                                                                                                            else {
                                                                                                                    r0 = [NSMutableDictionary alloc];
                                                                                                                    r0 = [r0 init];
                                                                                                            }
                                                                                                            r24 = r0;
                                                                                                            r20 = var_220;
                                                                                                            r0 = objc_msgSend(r23, r20);
                                                                                                            r29 = r29;
                                                                                                            r23 = [r0 retain];
                                                                                                            r27 = @selector(class);
                                                                                                            if (r23 != 0x0) {
                                                                                                                    r0 = objc_msgSend(r24, r20);
                                                                                                                    r29 = r29;
                                                                                                                    r0 = [r0 retain];
                                                                                                                    sub_100822370(r0, r23);
                                                                                                                    [r20 release];
                                                                                                                    sub_100822058(var_238, r19, r24);
                                                                                                            }
                                                                                                            [r23 release];
                                                                                                            [r24 release];
                                                                                                            r20 = var_250;
                                                                                                            r24 = *0x100e9e558;
                                                                                                    }
                                                                                                    [r19 release];
                                                                                            }
                                                                                            [r21 release];
                                                                                            r21 = var_228;
                                                                                    }
                                                                                    r28 = r28 + 0x1;
                                                                            } while (r28 < r21);
                                                                            r21 = objc_msgSend(r20, var_278);
                                                                    } while (r21 != 0x0);
                                                            }
                                                            [r20 release];
                                                            [r20 release];
                                                            r23 = var_2A0;
                                                            r22 = stack[-680];
                                                            r24 = var_290;
                                                            r28 = var_288;
                                                            r25 = var_2A8;
                                                    }
                                                    r28 = r28 + 0x1;
                                                    r20 = var_220;
                                            } while (r28 < r24);
                                            r24 = objc_msgSend(r22, var_278);
                                    } while (r24 != 0x0);
                            }
                            [r22 release];
                            [r22 release];
                            r20 = [[var_238 autorelease] retain];
                            r19 = [[[GADRewardBasedVideoAdController sharedInstance] retain] retain];
                            r20 = [r20 retain];
                            var_1E8 = [var_2C0 retain];
                            [r20 enumerateKeysAndObjectsUsingBlock:&var_218];
                            [var_1E8 release];
                            [r20 release];
                            [r19 release];
                            _Block_object_dispose(r29 - 0xd8, 0x8);
                            [r19 release];
                            [r20 release];
                            [r22 release];
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)customRewardString {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_customRewardString)), 0x0);
    return r0;
}

-(void)setCustomRewardString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customRewardString, 0x0);
    objc_storeStrong((int64_t *)&self->_userIdentifier, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_adNetworkClassName, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_appSettingsObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedAdObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_intermissionObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_adSource, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardBasedVideoAd, 0x0);
    return;
}

@end