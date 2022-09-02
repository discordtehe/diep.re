@implementation SupersonicAdsPublisher

+(void *)sharedInstance {
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
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (*0x1011dad48 == 0x0) {
            r0 = [SupersonicAdsPublisher alloc];
            r0 = [r0 initInstance];
            r8 = *0x1011dad48;
            *0x1011dad48 = r0;
            [r8 release];
            [*0x1011dad48 initControllerInternal:0x1 productionDebugMode:0x0];
            r20 = [[SupersonicLogManager sharedManager] retain];
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r21 = r0;
            [r0 respondsToSelector:@selector(operatingSystemVersion)];
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r25 = [[r0 objectForInfoDictionaryKey:@"DTPlatformVersion"] retain];
            r22 = [[NSString stringWithFormat:@"SupersonicAdsPublisher sharedInstance: is iOS8? %i, linked iOS SDK version: %@"] retain];
            [r20 log:r22 withLevel:0x1 withTag:0x5];
            [r22 release];
            [r25 release];
            [r0 release];
            [r21 release];
            [r20 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    r0 = *0x1011dad48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setControllerURL:(void *)arg2 {
    objc_storeStrong(0x1011dad50, arg2);
    return;
}

+(void)setDebugMode:(long long)arg2 {
    *0x1011dad68 = arg2;
    return;
}

+(void)setControllerConfig:(void *)arg2 {
    objc_storeStrong(0x1011dad58, arg2);
    return;
}

+(void)setStorekitTimeout:(void *)arg2 {
    objc_storeStrong(0x1011dad60, arg2);
    return;
}

+(void *)getUserGroup {
    r0 = *0x1011c2500;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setUserGroup:(void *)arg2 {
    objc_storeStrong(0x1011c2500, arg2);
    return;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    [r0 removeDelegate:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)viewController {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_viewController));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r0 = [SupersonicAdsViewController alloc];
            r0 = [r0 init];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)shouldUseWKWebViewWhenCreatingWebViews {
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
    if (*0x1011dad58 != 0x0) {
            r21 = [[*0x1011dad58 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:&var_38];
            r29 = r29;
            r19 = [r0 retain];
            r20 = [var_38 retain];
            [r21 release];
            if (r20 != 0x0) {
                    r22 = 0x0;
            }
            else {
                    r0 = [r19 objectForKeyedSubscript:@"webviewType"];
                    r29 = r29;
                    r21 = [r0 retain];
                    if ([@"wk" isEqualToString:r2] != 0x0) {
                            r0 = [UIDevice currentDevice];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 systemVersion];
                            r0 = [r0 retain];
                            r24 = r0;
                            if ([r0 compare:@"10.0" options:0x40] != -0x1) {
                                    if (CPU_FLAGS & NE) {
                                            r22 = 0x1;
                                    }
                            }
                            [r24 release];
                            [r23 release];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r21 release];
            }
            [r19 release];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    r0 = r22;
    return r0;
}

-(void *)createwebViewControllerWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [SSWVBrowsingConfiguration alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setMediaPlaybackRequiresUserAction:0x0];
    [r20 setMediaPlaybackAllowsInLine:0x1];
    [r20 setUseWK:[self shouldUseWKWebViewWhenCreatingWebViews]];
    r23 = [@(YES) retain];
    [r20 setAllowFileAccessFromFileURLs:r23];
    [r23 release];
    r0 = [SSWVConnectivityConfiguration alloc];
    r0 = [r0 init];
    r21 = r0;
    [r0 setMessageHandlerName:@"supersonicMainMsgHandler"];
    [r21 setParser:0x0];
    [r21 setInterface:0x0];
    r22 = [[SSWVWebViewFactory defaultWebViewWithFrame:r21 connectivityConfiguration:r20 browsingConfiguration:r4] retain];
    r23 = [[UIColor clearColor] retain];
    r0 = [r22 view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r23];
    [r0 release];
    [r23 release];
    r0 = [r22 view];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x3f];
    [r0 release];
    r0 = [r22 view];
    r0 = [r0 retain];
    [r0 setOpaque:0x0];
    [r0 release];
    r0 = [r22 scrollView];
    r0 = [r0 retain];
    [r0 setBounces:0x0];
    [r0 release];
    [r22 setWebViewDelegate:self];
    [r21 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)initInstance {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r22 = @selector(init);
            [NSURLCache setSharedURLCache:[[NSURLCache alloc] initWithMemoryCapacity:0x400000 diskCapacity:0x400000 diskPath:@"nsurlcache"]];
            r0 = [SSADemandSourcesCollection sharedInstance];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_demandSourcesCollection));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [SSADataManager alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dataManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r19 setAdViewContainerCounter:0x0];
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            [r0 addDelegate:r19];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(appDidEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(appWillEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(appWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(appDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(audioHardwareRouteChanged:) name:**_AVAudioSessionRouteChangeNotification object:0x0];
            [r0 release];
            *(int8_t *)(int64_t *)&r19->firstISAvailabiltyStatusReported = 0x0;
            *(int8_t *)(int64_t *)&r19->shouldCatchAppStoreSchemes = 0x1;
            r0 = [SSAJSInterfaceHandler alloc];
            r0 = [r0 initWithPublisherAgent:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_jsInterfaceHandler));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [ISNRingerButtonJSHandler alloc];
            r0 = [r0 initWithPublisherAgent:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_ringerButtonJSInterfaceHandler));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [ISNProductPresenterJSHandler alloc];
            r0 = [r0 initWithPublisherAgent:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_presenterJSInterfaceHandler));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(ISNNativeSessionConfiguration);
            r0 = [r0 defaultConfiguration];
            r0 = [r0 retain];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_nativeSessionConfiguration));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r0 = [ISNOrientationJSHandler alloc];
            r0 = [r0 initWithPublisherAgent:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_orientationJSInterfaceHandler));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r21 = [[ISNAdViewJSInterfaceHandler alloc] initWithPublisherAgent:r19];
            [r19 setIsnAdViewJSInterfaceHandler:r21];
            [r21 release];
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_controllerCommandsQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(ISNNativeSessionConfiguration);
            r0 = [r0 defaultConfiguration];
            r0 = [r0 retain];
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            var_58 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_78);
            [var_58 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)downloadController {
    r31 = r31 - 0xc0;
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
    if ([SSEReachabilityManager checkReachability] != 0x0) {
            [r19 setControllerState:r2];
            r23 = [*0x1011dad50 length];
            r0 = [SupersonicLogManager sharedManager];
            r29 = r29;
            r22 = [r0 retain];
            [r22 log:r2 withLevel:r3 withTag:r4];
            [r22 release];
            r21 = [[SupersonicLogManager sharedManager] retain];
            [[NSString stringWithFormat:@"downloading controller from %@"] retain];
            [r21 log:r2 withLevel:r3 withTag:r4];
            [r22 release];
            [r21 release];
            r0 = [r19 dataManager];
            r0 = [r0 retain];
            r20 = r0;
            r2 = *0x1011dad50;
            [r0 getURL:r2 timeout:&stack[-144] completionHandler:&var_A8 fail:r5];
    }
    else {
            [r19 setControllerState:r2];
            r0 = [r19 controllerGlobalInitTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setControllerGlobalInitTimer:0x0];
            r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x50 forKeys:&var_58 count:0x1] retain];
            r20 = [[NSError errorWithDomain:@"SSAErrorDomain" code:0x3ee userInfo:r21] retain];
            [r21 release];
            [r19 controllerFailedInitiatingWithError:r20 demandSourceName:0x0];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)controllerGlobalInitTimerFired:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[SupersonicLogManager sharedManager] retain];
    r21 = [[NSString stringWithFormat:@"%@"] retain];
    [r20 log:r21 withLevel:0x1 withTag:0x5];
    [r21 release];
    [r20 release];
    r0 = [r19 controllerGlobalInitTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [r19 setControllerGlobalInitTimer:0x0];
    r0 = [r19 controllerLoadTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 controllerLoadTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setControllerLoadTimer:0x0];
    }
    var_28 = **___stack_chk_guard;
    [r19 setControllerState:0x5];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"SSAErrorDomain" code:0x3ec userInfo:r21] retain];
    [r21 release];
    [r19 controllerFailedInitiatingWithError:r20 demandSourceName:0x0];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)initControllerInternal:(bool)arg2 productionDebugMode:(bool)arg3 {
    r3 = arg3;
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
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_isInitingController = 0x1;
    if ((arg2 & 0x1) == 0x0) {
            var_2BC = r3;
            r0 = [r19 demandSourcesCollection];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 demandSourcesForProductType:0x0];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 allKeys];
            r29 = r29;
            r23 = [r0 retain];
            [r22 release];
            [r20 release];
            var_208 = q0;
            r0 = [r23 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_2A8 = r1;
            var_2A0 = r0;
            r26 = objc_msgSend(r0, r1);
            if (r26 != 0x0) {
                    r22 = *var_208;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_208 != r22) {
                                            objc_enumerationMutation(var_2A0);
                                    }
                                    r0 = [r19 demandSourcesCollection];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 demandSourceForProductType:r2 demandSourceName:r3];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r24 release];
                                    [r20 setInitState:r2];
                                    [r20 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r26);
                            r26 = objc_msgSend(var_2A0, var_2A8);
                    } while (r26 != 0x0);
            }
            [var_2A0 release];
            r0 = [r19 demandSourcesCollection];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 demandSourcesForProductType:r2];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 allKeys];
            r29 = r29;
            r26 = [r0 retain];
            [r24 release];
            [r20 release];
            var_248 = q0;
            r0 = [r26 retain];
            r26 = r0;
            r27 = objc_msgSend(r0, var_2A8);
            if (r27 != 0x0) {
                    r23 = *var_248;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_248 != r23) {
                                            objc_enumerationMutation(r26);
                                    }
                                    r24 = *(var_250 + r22 * 0x8);
                                    r0 = [r19 demandSourcesCollection];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 demandSourceForProductType:0x1 demandSourceName:r24];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r25 release];
                                    [r24 setInitState:r2];
                                    [r24 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r27);
                            r27 = objc_msgSend(r26, var_2A8);
                    } while (r27 != 0x0);
            }
            var_2C8 = r26;
            [r26 release];
            r0 = [r19 demandSourcesCollection];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 demandSourcesForProductType:r2];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 allKeys];
            r29 = r29;
            r25 = [r0 retain];
            [r24 release];
            [r20 release];
            var_288 = q0;
            r0 = [r25 retain];
            r24 = r0;
            r25 = objc_msgSend(r0, var_2A8);
            if (r25 != 0x0) {
                    r22 = *var_288;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_288 != r22) {
                                            objc_enumerationMutation(r24);
                                    }
                                    r28 = *(var_290 + r26 * 0x8);
                                    r0 = [r19 demandSourcesCollection];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 demandSourceForProductType:0x4 demandSourceName:r28];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r23 release];
                                    [r28 setInitState:r2];
                                    [r28 release];
                                    r26 = r26 + 0x1;
                            } while (r26 < r25);
                            r25 = objc_msgSend(r24, var_2A8);
                    } while (r25 != 0x0);
            }
            [r24 release];
            *(int8_t *)(int64_t *)&r19->_initOWCalledButControllerNotInitiatedYet = 0x0;
            *(int8_t *)(int64_t *)&r19->_getOWCreditsCalledButControllerNotInitiatedYet = 0x0;
            [r19 setControllerState:0x0];
            [r24 release];
            [var_2C8 release];
            [var_2A0 release];
            r3 = var_2BC;
    }
    [r19 setShouldSendDebugModeInProduction:r3];
    r20 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(controllerGlobalInitTimerFired:) selector:0x0 userInfo:0x0 repeats:r6] retain];
    [r19 setControllerGlobalInitTimer:r20];
    [r20 release];
    r0 = [r19 webViewController];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    r0 = [r19 supersonicAdsView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 supersonicAdsView];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 ssaSecondWebView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            if (r0 != 0x0) {
                    r0 = [r19 supersonicAdsView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 moveSecondaryToFrontAndSendCloseMessage];
                    [r0 release];
            }
            r0 = [r19 supersonicAdsView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 activityIndicator];
            r0 = [r0 retain];
            [r0 startAnimating];
            [r0 release];
            [r20 release];
    }
    if ([r19 controllerState] != 0x0) {
            r1 = @selector(loadController);
    }
    else {
            r1 = @selector(downloadController);
    }
    var_58 = **___stack_chk_guard;
    objc_msgSend(r19, r1);
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)controllerConfigMandatoryParams:(void *)arg2 withError:(void * *)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r22 = [[r19 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r22 options:0x0 error:&var_A0];
            r29 = r29;
            r21 = [r0 retain];
            r24 = [var_A0 retain];
            if (r24 != 0x0) {
                    r23 = [NSError alloc];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1];
                    r25 = [r0 retain];
                    *r20 = [[r23 initWithDomain:@"ironsrc.com" code:0x0 userInfo:r25] autorelease];
                    [r25 release];
                    r23 = 0x0;
                    r27 = r22;
            }
            else {
                    var_B0 = [[r21 objectForKeyedSubscript:@"applicationKey"] retain];
                    r0 = [r21 objectForKeyedSubscript:@"webviewType"];
                    r29 = r29;
                    r25 = [r0 retain];
                    r26 = [NSMutableDictionary new];
                    if (var_B0 != 0x0) {
                            [r26 setObject:r2 forKey:r3];
                    }
                    if (r25 != 0x0) {
                            [r26 setObject:r2 forKey:r3];
                    }
                    r0 = [r21 objectForKeyedSubscript:@"isSecured"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r21 objectForKeyedSubscript:@"isSecured"];
                            r0 = [r0 retain];
                            r27 = [r0 boolValue];
                            [r0 release];
                            r0 = [NSNumber numberWithBool:r27];
                            r29 = r29;
                            [r0 retain];
                            [r26 setObject:r2 forKey:r3];
                            [r23 release];
                    }
                    r0 = [NSJSONSerialization dataWithJSONObject:r26 options:0x0 error:&var_A8];
                    r29 = r29;
                    r27 = [r0 retain];
                    r28 = [var_A8 retain];
                    [r24 release];
                    [r22 release];
                    if (r28 != 0x0) {
                            r22 = [NSError alloc];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-144] forKeys:&var_88 count:0x1];
                            r23 = [r0 retain];
                            *r20 = [[r22 initWithDomain:@"ironsrc.com" code:0x0 userInfo:r23] autorelease];
                            [r23 release];
                            r23 = 0x0;
                    }
                    else {
                            r23 = [[NSString alloc] initWithData:r27 encoding:0x4];
                    }
                    [r26 release];
                    [r25 release];
                    [var_B0 release];
                    r24 = r28;
            }
            [r21 release];
            [r24 release];
            [r27 release];
    }
    else {
            r21 = [NSError alloc];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
            r22 = [r0 retain];
            *r20 = [[r21 initWithDomain:@"ironsrc.com" code:0x0 userInfo:r22] autorelease];
            [r22 release];
            r23 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)invokePendingCommands {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dad70 != -0x1) {
            dispatch_once(0x1011dad70, &var_28);
    }
    return;
}

-(void)controllerLoadTimerFired:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = [[SupersonicLogManager sharedManager] retain];
    [r20 numberOfControllerLoadFails];
    r0 = [NSString stringWithFormat:@"controllerLoadTimerFired, fails: %d"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r22 log:r23 withLevel:0x1 withTag:0x5];
    [r23 release];
    [r22 release];
    if ([r20 numberOfControllerLoadFails] != 0x0) {
            r0 = [r20 controllerGlobalInitTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r20 setControllerGlobalInitTimer:0x0];
            [r20 setControllerLoadTimer:0x0];
            [r20 setControllerState:0x3];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r21 = [[NSError errorWithDomain:@"SSAErrorDomain" code:0x3eb userInfo:r22] retain];
            [r22 release];
            [r20 controllerFailedInitiatingWithError:r21 demandSourceName:0x0];
    }
    else {
            [r20 setNumberOfControllerLoadFails:[r20 numberOfControllerLoadFails] + 0x1];
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:@"url"] retain];
            [r0 release];
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            r22 = [[NSTimer scheduledTimerWithTimeInterval:r20 target:@selector(controllerLoadTimerFired:) selector:r23 userInfo:0x0 repeats:r6] retain];
            [r20 setControllerLoadTimer:r22];
            [r22 release];
            [r23 release];
            r22 = [NSURLRequest alloc];
            r23 = [[NSURL URLWithString:r21] retain];
            r22 = [r22 initWithURL:r23];
            [r23 release];
            r0 = [r20 webViewController];
            r0 = [r0 retain];
            [r0 loadRequest:r22];
            [r0 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)controllerFailedInitiatingWithError:(void *)arg2 demandSourceName:(void *)arg3 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:**_NSLocalizedRecoverySuggestionErrorKey];
    r0 = [r0 retain];
    r26 = r0;
    [r0 release];
    [r21 release];
    r0 = [SupersonicLogManager sharedManager];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r26 != 0x0) {
            r23 = **_NSLocalizedRecoverySuggestionErrorKey;
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 objectForKeyedSubscript:r23] retain];
            r24 = [[NSString stringWithFormat:@"Mobile controller Failed initiating. %@"] retain];
            [r21 log:r24 withLevel:0x3 withTag:0x8];
            [r24 release];
            [r23 release];
    }
    else {
            r22 = [[NSString stringWithFormat:@"%@"] retain];
            [r21 log:r22 withLevel:0x3 withTag:0x8];
    }
    [r22 release];
    [r21 release];
    [r20 handleInitControllerCallbackWithSuccess:0x0 error:r19];
    [r19 release];
    return;
}

-(void)dispatchCommandOnJavaScriptLayer:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)loadController {
    r31 = r31 - 0x150;
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
    r0 = [NSURL URLWithString:*0x1011dad50];
    r0 = [r0 retain];
    r19 = [[r0 scheme] retain];
    var_88 = r0;
    r21 = [[r0 host] retain];
    r20 = [[NSArray arrayWithObjects:&saved_fp - 0x68 count:0x2] retain];
    [r21 release];
    [r19 release];
    r0 = [self dataManager];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 downloadMgr] retain];
    r24 = [[NSString stringWithFormat:@"%@.html"] retain];
    r0 = [r21 getUrlFileByName:r24 andFolderName:@"mobileController" shouldUseCacheFolderRoot:0x1];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    [r21 release];
    [r19 release];
    r19 = self;
    r0 = [self shouldUseWKWebViewWhenCreatingWebViews];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"ui";
            }
            else {
                    r0 = @"wk";
            }
    }
    r27 = [r0 retain];
    var_98 = r23;
    r26 = [[r23 absoluteString] retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [[r0 systemVersion] retain];
    r24 = @class(NSString);
    r28 = [[r20 objectAtIndex:0x0] retain];
    r24 = [[r24 stringWithFormat:@"%@:"] retain];
    var_90 = r20;
    r0 = r20;
    r20 = r19;
    r25 = [[r0 objectAtIndex:0x1] retain];
    r19 = [[NSMutableString stringWithFormat:@"%@?%@=%@&%@=%@&%@=%@&%@=%@&%@=%@&%@=%ld&%@=%@"] retain];
    [r27 release];
    [r25 release];
    [r24 release];
    [r28 release];
    [r23 release];
    [r21 release];
    [r26 release];
    r0 = [r20 controllerConfigMandatoryParams:*0x1011dad58 withError:r29 - 0x80];
    r29 = r29;
    r27 = [r0 retain];
    r26 = [0x0 retain];
    if (r26 != 0x0) {
            r24 = [[SupersonicLogManager sharedManager] retain];
            [[r26 localizedDescription] retain];
            r0 = [NSString stringWithFormat:@"failed to fetch mandatory controller config data %@"];
            r29 = r29;
            [r0 retain];
            [r24 log:r2 withLevel:r3 withTag:r4];
            [r28 release];
            [r25 release];
            [r24 release];
            [@"{}" retain];
            [r27 release];
            r27 = @"{}";
    }
    r28 = [[NSString stringWithFormat:@"%@&%@=%@"] retain];
    [r19 release];
    r19 = [[SupersonicLogManager sharedManager] retain];
    [[NSString stringWithFormat:@"loading webview with parameters:\n%@"] retain];
    [r19 log:r2 withLevel:r3 withTag:r4];
    [r21 release];
    [r19 release];
    [r20 setNumberOfControllerLoadFails:0x0];
    r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r19 = [[NSTimer scheduledTimerWithTimeInterval:r20 target:@selector(controllerLoadTimerFired:) selector:r22 userInfo:0x0 repeats:r6] retain];
    [r20 setControllerLoadTimer:r19];
    [r19 release];
    [r22 release];
    r21 = [NSURLRequest alloc];
    r22 = @class(NSURL);
    r23 = [[r28 stringByAddingPercentEscapesUsingEncoding:0x4] retain];
    r24 = [[r22 URLWithString:r2] retain];
    r22 = [r21 initWithURL:r24];
    [r24 release];
    [r23 release];
    r19 = [NSURL alloc];
    r0 = [r20 dataManager];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 downloadMgr];
    r0 = [r0 retain];
    r25 = [[r0 getInstanceCacheFolderUseRoot:0x1] retain];
    r23 = [r19 initFileURLWithPath:r25 isDirectory:0x1];
    [r25 release];
    [r0 release];
    [r21 release];
    r0 = [r20 webViewController];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 webViewClass];
    r0 = NSStringFromClass(r0);
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    if (r25 != 0x0) {
            r0 = [r20 webViewController];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            [r21 release];
            r21 = [[SSAHelperMethods applicationKeyWindow] retain];
            r0 = [r20 webViewController];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 view];
            r29 = r29;
            r24 = [r0 retain];
            [r21 insertSubview:r24 atIndex:0x0];
            [r24 release];
            [r25 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    r0 = [r20 webViewController];
    r0 = [r0 retain];
    [r0 loadFileRequest:r22 allowingReadAccessToURL:r23];
    [r0 release];
    [r23 release];
    [r22 release];
    [r27 release];
    [r26 release];
    [r28 release];
    [var_98 release];
    [var_90 release];
    [var_88 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)runCommand:(void *)arg2 andParameters:(void *)arg3 successMethodName:(void *)arg4 failMethodName:(void *)arg5 decodeFirst:(bool)arg6 {
    r31 = r31 - 0x90;
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
    r25 = arg6;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [r19 mutableCopy];
    if (r20 != 0x0) {
            r26 = [[SSAHelperMethods deepEncodeValuesInDictionary:r20 decodeFirst:r25] retain];
            r0 = [NSJSONSerialization dataWithJSONObject:r26 options:0x0 error:&var_58];
            r29 = r29;
            r27 = [r0 retain];
            r28 = [var_58 retain];
            r25 = [[NSString alloc] initWithData:r27 encoding:0x4];
            [r28 release];
            [r27 release];
            [r26 release];
    }
    else {
            r25 = 0x0;
    }
    var_60 = r22;
    if (r21 != 0x0 && r22 != 0x0) {
            if (r25 != 0x0 && [r25 isEqualToString:r2] == 0x0) {
                    r22 = r23;
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
            }
            else {
                    r22 = r23;
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
            }
    }
    else {
            if (r25 != 0x0 && [r25 isEqualToString:r2] == 0x0) {
                    r22 = r23;
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
            }
            else {
                    r22 = r23;
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
            }
    }
    r26 = [r0 retain];
    r0 = [r20 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 containsObject:r2];
    [r0 release];
    if ((r23 & 0x1) == 0x0) {
            r27 = @selector(stringWithFormat:);
            r23 = [[SupersonicLogManager sharedManager] retain];
            r0 = objc_msgSend(@class(NSString), r27);
            r29 = r29;
            r27 = [r0 retain];
            [r23 log:r27 withLevel:0x1 withTag:0x6];
            [r27 release];
            [r23 release];
    }
    if ([r24 controllerState] != 0x4 && [r24 controllerCommandSupportsQueue:r19] != 0x0) {
            r23 = [[r24 controllerCommandsQueue] retain];
            [r26 copy];
            [r23 addObject:r2];
            [r24 release];
            [r23 release];
    }
    else {
            [r24 dispatchCommandOnJavaScriptLayer:r26];
    }
    [r26 release];
    [r25 release];
    [r22 release];
    [var_60 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)controllerCommandSupportsQueue:(void *)arg2 {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r19 = [[NSArray arrayWithObjects:&saved_fp - 0x48 count:0x4] retain];
    r20 = [r20 retain];
    [r19 enumerateObjectsUsingBlock:&var_98];
    r21 = *(int8_t *)(&var_68 + 0x18);
    [r20 release];
    _Block_object_dispose(&var_68, 0x8);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)handleInitControllerCallbackWithSuccess:(bool)arg2 error:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2c0;
    r19 = arg2;
    r20 = self;
    var_2A0 = [arg3 retain];
    r0 = [SupersonicLogManager sharedManager];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r8 = @"NO";
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"NO";
            }
            else {
                    r8 = @"YES";
            }
    }
    r1 = @selector(stringWithFormat:);
    var_300 = r1;
    r0 = objc_msgSend(@class(NSString), r1);
    r29 = r29;
    r22 = [r0 retain];
    [r21 log:r22 withLevel:0x1 withTag:0x9];
    [r22 release];
    [r21 release];
    *(int8_t *)(int64_t *)&r20->_isInitingController = 0x0;
    var_2E4 = r19;
    if (r19 != 0x0) {
            [r20 invokePendingCommands];
    }
    r0 = [r20 demandSourcesCollection];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 demandSourcesForProductType:0x0];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    [r21 release];
    *(int128_t *)(&stack[-759] + 0xff) = q0;
    *(int128_t *)(&stack[-775] + 0xff) = q0;
    *(int128_t *)(&stack[-791] + 0xff) = q0;
    r0 = [r23 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2A8 = r0;
    var_2D8 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            r24 = *var_208;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_208 != r24) {
                                    objc_enumerationMutation(var_2A8);
                            }
                            r28 = *(var_210 + r22 * 0x8);
                            r0 = [r20 demandSourcesCollection];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 demandSourceForProductType:0x0 demandSourceName:r28];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r19 release];
                            if ([r28 initState] == 0x1) {
                                    [[r20 parametersForRV] retain];
                                    r0 = [r28 name];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 initProduct:r2 withParameters:r3 error:r4 demandSourceName:r5];
                                    [r23 release];
                                    [r19 release];
                            }
                            [r28 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r25 = objc_msgSend(var_2A8, var_2D8);
            } while (r25 != 0x0);
    }
    [var_2A8 release];
    r0 = [r20 demandSourcesCollection];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 demandSourcesForProductType:r2];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r22 = [r0 retain];
    [r21 release];
    [r19 release];
    var_248 = q0;
    r0 = [r22 retain];
    var_2B0 = r0;
    r25 = objc_msgSend(r0, var_2D8);
    if (r25 != 0x0) {
            r28 = *var_248;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_248 != r28) {
                                    objc_enumerationMutation(var_2B0);
                            }
                            r19 = *(var_250 + r22 * 0x8);
                            r0 = [r20 demandSourcesCollection];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 demandSourceForProductType:0x1 demandSourceName:r19];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r24 release];
                            if ([r27 initState] == 0x1) {
                                    [[r20 parametersForIS] retain];
                                    r0 = [r27 name];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 initProduct:r2 withParameters:r3 error:r4 demandSourceName:r5];
                                    [r24 release];
                                    [r19 release];
                            }
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r25 = objc_msgSend(var_2B0, var_2D8);
            } while (r25 != 0x0);
    }
    [var_2B0 release];
    r0 = [r20 demandSourcesCollection];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 demandSourcesForProductType:r2];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r22 = [r0 retain];
    [r21 release];
    [r19 release];
    var_288 = q0;
    r0 = [r22 retain];
    var_2B8 = r0;
    r24 = objc_msgSend(r0, var_2D8);
    if (r24 != 0x0) {
            r22 = *var_288;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_288 != r22) {
                                    objc_enumerationMutation(var_2B8);
                            }
                            r19 = *(var_290 + r27 * 0x8);
                            r0 = [r20 demandSourcesCollection];
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = [r0 demandSourceForProductType:0x4 demandSourceName:r19];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r28 release];
                            if ([r23 initState] == 0x1) {
                                    [[r20 parametersForBN] retain];
                                    r0 = [r23 name];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 initProduct:r2 withParameters:r3 error:r4 demandSourceName:r5];
                                    [r28 release];
                                    [r19 release];
                            }
                            [r23 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r24);
                    r24 = objc_msgSend(var_2B8, var_2D8);
            } while (r24 != 0x0);
    }
    [var_2B8 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_initOWCalledButControllerNotInitiatedYet));
    r23 = var_2E4;
    r25 = @selector(log:withLevel:withTag:);
    r24 = @selector(sharedManager);
    r27 = var_300;
    if (*(int8_t *)(r20 + r22) != 0x0) {
            r19 = [objc_msgSend(@class(SupersonicLogManager), r24) retain];
            r0 = @class(NSString);
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r19, r25);
            [r21 release];
            [r19 release];
            if (r23 != 0x0) {
                    *(int8_t *)(r20 + r22) = 0x0;
            }
            r0 = [r20 parametersForOW];
            r29 = r29;
            r19 = [r0 retain];
            [r20 initProduct:0x2 withParameters:r19 error:var_2A0 demandSourceName:0x0];
            [r19 release];
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_getOWCreditsCalledButControllerNotInitiatedYet));
    if (*(int8_t *)(r20 + r22) != 0x0) {
            r19 = [objc_msgSend(@class(SupersonicLogManager), r24) retain];
            r0 = @class(NSString);
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r19, r25);
            [r21 release];
            [r19 release];
            if (r23 != 0x0) {
                    *(int8_t *)(r20 + r22) = 0x0;
            }
            r0 = [r20 parametersForOW];
            r29 = r29;
            r19 = [r0 retain];
            [r20 initProduct:0x3 withParameters:r19 error:var_2A0 demandSourceName:0x0];
            [r19 release];
    }
    if ((r23 & 0x1) == 0x0 && [r20 controllerState] == 0x3) {
            [r20 setControllerState:0x0];
    }
    var_58 = **___stack_chk_guard;
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    [r0 allowFileAccessFromFileURLs:0x0];
    [r0 release];
    [r19 release];
    [var_2B8 release];
    [var_2B0 release];
    [var_2A8 release];
    [var_2A0 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getInitProductCommandForType:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = 0x0;
    if (r2 > 0x4) goto loc_100729f3c;

loc_100729ef4:
    r19 = 0x0;
    goto *0x100729f4c[sign_extend_64(*(int32_t *)(0x100729f4c + r2 * 0x4)) + 0x100729f4c];

loc_100729f08:
    r19 = @"initRewardedVideo";
    goto loc_100729f34;

loc_100729f34:
    [r19 retain];
    goto loc_100729f3c;

loc_100729f3c:
    r0 = [r19 autorelease];
    return r0;

loc_100729f14:
    r19 = @"initInterstitial";
    goto loc_100729f34;

loc_100729f20:
    r19 = @"initOfferWall";
    goto loc_100729f34;

loc_100729f2c:
    r19 = @"initBanner";
    goto loc_100729f34;
}

-(void)initRewardedVideoWithApplicationKey:(void *)arg2 userId:(void *)arg3 demandSourceName:(void *)arg4 delegate:(void *)arg5 additionalParameters:(void *)arg6 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [arg5 retain];
    r27 = [arg6 retain];
    r21 = [[SSADemandSource alloc] initWithName:r20 extraParams:r27 delegate:r24];
    [r27 release];
    [r24 release];
    r0 = [self demandSourcesCollection];
    r0 = [r0 retain];
    [r0 addDemandSourceWithProductType:0x0 withDemandSource:r21];
    [r0 release];
    r24 = [[SSAProductParameters alloc] initWithAppKey:r22 userId:r23];
    [r23 release];
    [r22 release];
    [self setParametersForRV:r24];
    [r24 release];
    r22 = [[self parametersForRV] retain];
    [self initProduct:0x0 withParameters:r22 error:0x0 demandSourceName:r20];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)sendInitFailureForProduct:(unsigned long long)arg2 withError:(void *)arg3 demandSourceName:(void *)arg4 {
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
    r23 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if (r19 == 0x0) {
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r0 = [NSError errorWithDomain:@"SSAErrorDomain" code:0x0 userInfo:r24];
            r29 = r29;
            r21 = [r0 retain];
            [r19 release];
            [r24 release];
            r19 = r21;
    }
    r0 = [r22 demandSourcesCollection];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 demandSourceForProductType:r23 demandSourceName:r20];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    [r21 setInitState:0x3];
    if (r23 > 0x3) goto loc_10072a2a8;

loc_10072a0a4:
    goto *0x10072a2fc[sign_extend_64(*(int32_t *)(0x10072a2fc + r23 * 0x4)) + 0x10072a2fc];

loc_10072a0b8:
    if (r21 == 0x0) goto loc_10072a2a8;

loc_10072a0bc:
    r0 = [r21 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(ssaRewardedVideoDidFailInitWithError:)];
    [r0 release];
    if (r25 == 0x0) goto loc_10072a2a8;

loc_10072a104:
    r23 = @selector(ssaRewardedVideoDidFailInitWithError:);
    r0 = [r21 delegate];
    goto loc_10072a174;

loc_10072a174:
    r0 = [r0 retain];
    r22 = r0;
    r1 = r23;
    goto loc_10072a298;

loc_10072a298:
    objc_msgSend(r0, r1);
    [r22 release];
    goto loc_10072a2a8;

loc_10072a2a8:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10072a118:
    if (r21 == 0x0) goto loc_10072a2a8;

loc_10072a11c:
    r0 = [r21 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(supersonicISInitFailedWithError:)];
    [r0 release];
    if (r25 == 0x0) goto loc_10072a2a8;

loc_10072a164:
    r23 = @selector(supersonicISInitFailedWithError:);
    r0 = [r21 delegate];
    goto loc_10072a174;

loc_10072a184:
    r0 = [r22 offerWallDelegate];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_10072a2a8;

loc_10072a1a8:
    r0 = [r22 offerWallDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(ssaOfferWallShowFailedWithError:)];
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_10072a2a8;

loc_10072a1ec:
    r0 = [r22 offerWallDelegate];
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(ssaInitOfferWallFailedWithError:);
    goto loc_10072a298;

loc_10072a210:
    r0 = [r22 offerWallDelegate];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_10072a2a8;

loc_10072a234:
    r0 = [r22 offerWallDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(ssaOfferwallDidFailGettingCreditWithError:)];
    [r0 release];
    [r25 release];
    if (r27 == 0x0) goto loc_10072a2a8;

loc_10072a27c:
    r0 = [r22 offerWallDelegate];
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(ssaOfferwallDidFailGettingCreditWithError:);
    goto loc_10072a298;
}

-(void)initInterstitialWithApplicationKey:(void *)arg2 userId:(void *)arg3 demandSourceName:(void *)arg4 delegate:(void *)arg5 additionalParameters:(void *)arg6 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [arg5 retain];
    r27 = [arg6 retain];
    r21 = [[SSADemandSource alloc] initWithName:r20 extraParams:r27 delegate:r24];
    [r27 release];
    [r24 release];
    r0 = [self demandSourcesCollection];
    r0 = [r0 retain];
    [r0 addDemandSourceWithProductType:0x1 withDemandSource:r21];
    [r0 release];
    r24 = [[SSAProductParameters alloc] initWithAppKey:r22 userId:r23];
    [r23 release];
    [r22 release];
    [self setParametersForIS:r24];
    [r24 release];
    r22 = [[self parametersForIS] retain];
    [self initProduct:0x1 withParameters:r22 error:0x0 demandSourceName:r20];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)loadBanner:(void *)arg2 andParameters:(void *)arg3 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self presenterJSInterfaceHandler];
    r0 = [r0 retain];
    r24 = [[r0 productPresenter] retain];
    r25 = [[arg2 rootViewController] retain];
    [r24 setViewControllerForProductType:0x4 viewController:r25];
    [r25 release];
    [r24 release];
    [r0 release];
    r24 = [[self isnAdViewJSInterfaceHandler] retain];
    [arg2 setCommunicatorDelegate:r24];
    [r24 release];
    r0 = [self isnAdViewJSInterfaceHandler];
    r0 = [r0 retain];
    [r0 setIsnAdView:arg2];
    [r22 release];
    [r0 release];
    [self sendBannerLoadMessageToController:r20];
    [r20 release];
    return;
}

-(void)initBannerWithApplicationKey:(void *)arg2 userId:(void *)arg3 demandSourceName:(void *)arg4 delegate:(void *)arg5 additionalParameters:(void *)arg6 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = [arg5 retain];
    r27 = [arg6 retain];
    r20 = [[SSADemandSource alloc] initWithName:r21 extraParams:r27 delegate:r24];
    [r27 release];
    [r24 release];
    r0 = [self demandSourcesCollection];
    r0 = [r0 retain];
    [r0 addDemandSourceWithProductType:0x4 withDemandSource:r20];
    [r0 release];
    r24 = [[SSAProductParameters alloc] initWithAppKey:r22 userId:r23];
    [r23 release];
    [r22 release];
    [self setParametersForBN:r24];
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_externalAdViewDemandSourceName));
    r22 = *(self + r8);
    *(self + r8) = r21;
    r21 = [r21 retain];
    [r22 release];
    r22 = [[self parametersForBN] retain];
    [self initProduct:0x4 withParameters:r22 error:0x0 demandSourceName:r21];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)setInitCalledFlagForProduct:(unsigned long long)arg2 isTrue:(bool)arg3 demandSourceName:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x270;
    r21 = arg3;
    r22 = arg2;
    r20 = self;
    r0 = [arg4 retain];
    if (r22 > 0x4) goto loc_10072a828;

loc_10072a358:
    goto *0x10072a868[sign_extend_64(*(int32_t *)(0x10072a868 + r22 * 0x4)) + 0x10072a868];

loc_10072a36c:
    var_2B8 = r0;
    r0 = [r20 demandSourcesCollection];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 demandSourcesForProductType:0x0];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r24 = [r0 retain];
    [r23 release];
    [r22 release];
    var_208 = q0;
    r0 = [r24 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2A8 = r1;
    var_2A0 = r0;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r23 = *var_208;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_208 != r23) {
                                    objc_enumerationMutation(var_2A0);
                            }
                            r28 = *(var_210 + r22 * 0x8);
                            r0 = [r20 demandSourcesCollection];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 demandSourceForProductType:0x0 demandSourceName:r28];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r19 release];
                            if ([r28 initState] == 0x0) {
                                    [r28 setInitState:r2];
                            }
                            [r28 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r24 = objc_msgSend(var_2A0, var_2A8);
            } while (r24 != 0x0);
    }
    goto loc_10072a810;

loc_10072a810:
    [var_2A0 release];
    [var_2A0 release];
    r0 = var_2B8;
    goto loc_10072a828;

loc_10072a828:
    var_58 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10072a4e8:
    var_2B8 = r0;
    r0 = [r20 demandSourcesCollection];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 demandSourcesForProductType:0x1];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    [r19 release];
    var_248 = q0;
    r0 = [r23 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2A0 = r0;
    var_2B0 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r22 = *var_248;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_248 != r22) {
                                    objc_enumerationMutation(var_2A0);
                            }
                            r19 = *(var_250 + r27 * 0x8);
                            r0 = [r20 demandSourcesCollection];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 demandSourceForProductType:0x1 demandSourceName:r19];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r23 release];
                            if ([r28 initState] == 0x0) {
                                    [r28 setInitState:r2];
                            }
                            [r28 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r24);
                    r24 = objc_msgSend(var_2A0, var_2B0);
            } while (r24 != 0x0);
    }
    goto loc_10072a810;

loc_10072a670:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initOWCalledButControllerNotInitiatedYet));
    goto loc_10072a684;

loc_10072a684:
    *(int8_t *)(r20 + r8) = r21;
    goto loc_10072a828;

loc_10072a67c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_getOWCreditsCalledButControllerNotInitiatedYet));
    goto loc_10072a684;

loc_10072a68c:
    var_2B8 = r0;
    r0 = [r20 demandSourcesCollection];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 demandSourcesForProductType:0x4];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    [r19 release];
    var_288 = q0;
    r0 = [r23 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2A0 = r0;
    var_2B0 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r22 = *var_288;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_288 != r22) {
                                    objc_enumerationMutation(var_2A0);
                            }
                            r19 = *(var_290 + r27 * 0x8);
                            r0 = [r20 demandSourcesCollection];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 demandSourceForProductType:0x4 demandSourceName:r19];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r23 release];
                            if ([r28 initState] == 0x0) {
                                    [r28 setInitState:r2];
                            }
                            [r28 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r24);
                    r24 = objc_msgSend(var_2A0, var_2B0);
            } while (r24 != 0x0);
    }
    goto loc_10072a810;
}

-(void)reloadBanner:(void *)arg2 {
    [self sendBannerLoadMessageToController:arg2];
    return;
}

-(void)sendBannerLoadMessageToController:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)resetIsnAdViewJSInterfaceHandler {
    r0 = [self isnAdViewJSInterfaceHandler];
    r0 = [r0 retain];
    [r0 setIsnAdView:0x0];
    [r0 release];
    return;
}

-(void *)getExternalAdViewIdAndIncreaseAdViewCounter {
    [self adViewContainerCounter];
    r20 = [[NSString stringWithFormat:@"%@_%ld"] retain];
    [self setAdViewContainerCounter:[self adViewContainerCounter] + 0x1];
    r0 = [r20 autorelease];
    return r0;
}

-(void)initOfferWallWithApplicationKey:(void *)arg2 userId:(void *)arg3 delegate:(void *)arg4 additionalParameters:(void *)arg5 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    [self setOfferWallDelegate:r21];
    r24 = [[SSAGeneralParameters alloc] initWithAppKey:r23 userId:r22 delegate:r21 parames:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    [self setParametersForOW:r24];
    [r24 release];
    r20 = [[self parametersForOW] retain];
    [self initProduct:0x2 withParameters:r20 error:0x0 demandSourceName:0x0];
    [r20 release];
    return;
}

-(void)getOfferWallCreditsWithApplicationKey:(void *)arg2 userId:(void *)arg3 delegate:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self setOfferWallDelegate:r20];
    r23 = [[SSAGeneralParameters alloc] initWithAppKey:r22 userId:r21 delegate:r20 parames:0x0];
    [r20 release];
    [r21 release];
    [r22 release];
    [self setParametersForOW:r23];
    [r23 release];
    r20 = [[self parametersForOW] retain];
    [self initProduct:0x3 withParameters:r20 error:0x0 demandSourceName:0x0];
    [r20 release];
    return;
}

-(void)showOfferWallFromViewController:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)showRewardedVideoFromViewController:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)showInterstitialFromViewController:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)loadInterstitialWithParameters:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            r23 = [r20 isInterstitialAdAvailableWithDemandSourceName:r22];
            [r22 release];
            if ((r23 & 0x1) != 0x0) {
                    r22 = [[r20 demandSourcesCollection] retain];
                    r21 = [[r19 objectForKeyedSubscript:r2] retain];
                    r20 = [[r22 demandSourceForProductType:0x1 demandSourceName:r21] retain];
                    [r21 release];
                    [r22 release];
                    r0 = [r20 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:r2];
                    [r0 release];
                    if (r24 != 0x0) {
                            r0 = [r20 delegate];
                            r0 = [r0 retain];
                            [r0 supersonicISLoadSuccess];
                            [r0 release];
                    }
                    r0 = r20;
            }
            else {
                    r22 = @class(NSString);
                    r21 = [[@"success" capitalizedString] retain];
                    r22 = [[r22 stringWithFormat:@"%@%@"] retain];
                    r27 = @class(NSString);
                    r23 = [[@"fail" capitalizedString] retain];
                    r24 = [[r27 stringWithFormat:@"%@%@"] retain];
                    [r20 runCommand:@"loadInterstitial" andParameters:r19 successMethodName:r22 failMethodName:r24 decodeFirst:0x1];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    r0 = r21;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

+(void *)getSDKVersion {
    objc_retainAutorelease(@"5.60");
    return @"5.60";
}

-(bool)isInterstitialAdAvailableWithDemandSourceName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self demandSourcesCollection];
    r0 = [r0 retain];
    r19 = [[r0 demandSourceForProductType:0x1 demandSourceName:r21] retain];
    [r21 release];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 isAdAvailable];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)updateConsentInfo:(void *)arg2 {
    [self runCommand:@"updateConsentInfo" andParameters:arg2 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
    return;
}

-(void)setMediationStateForProductType:(void *)arg2 withDemandSourceName:(void *)arg3 withState:(long long)arg4 {
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
    r20 = arg4;
    r22 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [ISProductContext convertProductNameToProductType:r21 error:&var_38];
    [r21 release];
    r21 = [var_38 retain];
    if (r21 == 0x0) {
            r0 = [r22 demandSourcesCollection];
            r0 = [r0 retain];
            r22 = [[r0 demandSourceForProductType:r23 demandSourceName:r19] retain];
            [r0 release];
            if (r22 != 0x0) {
                    [r22 setMediationState:r20];
            }
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)orientationDataForProductType:(unsigned long long)arg2 {
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
    r0 = [self nativeSessionConfiguration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [SSEOrientationContext applicationOrientationDataWithAppDelegateDataIfAllowed:[r0 allowOrientationFromAppDelegate]];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 dictionaryRepresentation];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    [r23 release];
    [r22 release];
    r0 = [self presenterJSInterfaceHandler];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 productPresenter];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 viewControllerForProductType:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            [SSEOrientationContext supportedOrientationForViewController:r20];
            r21 = [[NSString stringWithFormat:@"%ld"] retain];
            [r19 setObject:r21 forKeyedSubscript:@"viewControllerToPresentFrom"];
            [r21 release];
    }
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)initProduct:(unsigned long long)arg2 withParameters:(void *)arg3 error:(void *)arg4 demandSourceName:(void *)arg5 {
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
    r29 = &saved_fp;
    r23 = arg2;
    r22 = self;
    r27 = [arg3 retain];
    r28 = [arg4 retain];
    r21 = [arg5 retain];
    if (r23 == 0x4 || r23 == 0x1) goto loc_100728ea4;

loc_100728da0:
    if (r23 != 0x0) goto loc_100728fac;

loc_100728da4:
    r0 = [r22 demandSourcesCollection];
    r0 = [r0 retain];
    r25 = [[r0 demandSourceForProductType:0x0 demandSourceName:r21] retain];
    [r0 release];
    r0 = [r27 appKey];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r27;
    r27 = r0;
    r0 = [r0 length];
    var_140 = r26;
    if (r0 == 0x0) goto loc_100729488;

loc_100728e24:
    r20 = @selector(length);
    r19 = r22;
    r22 = r21;
    r21 = r28;
    r1 = @selector(userId);
    var_148 = r1;
    r0 = objc_msgSend(r26, r1);
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (objc_msgSend(r0, r20) == 0x0) goto loc_100729554;

loc_100728e5c:
    r0 = [r25 delegate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    [r27 release];
    r28 = r21;
    r21 = r22;
    r22 = r19;
    if (r0 == 0x0) goto loc_100729570;

loc_100728e9c:
    r0 = r25;
    goto loc_100728fa0;

loc_100728fa0:
    [r0 release];
    r27 = var_140;
    goto loc_1007290b0;

loc_1007290b0:
    if ([r22 controllerState] != 0x4) goto loc_100729314;

loc_1007290cc:
    if (r23 > 0x4) goto loc_100729628;

loc_1007290d4:
    goto *0x100729ec8[sign_extend_64(*(int32_t *)(0x100729ec8 + r23 * 0x4)) + 0x100729ec8];

loc_1007290e8:
    var_150 = r28;
    r24 = [[r27 appKey] retain];
    var_140 = r27;
    r25 = [objc_msgSend(r27, var_148) retain];
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-248] forKeys:&var_F8 count:0x2] retain];
    r23 = [[NSMutableDictionary dictionaryWithDictionary:r26] retain];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [r22 demandSourcesCollection];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 demandSourceForProductType:0x0 demandSourceName:r21];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    if (r21 != 0x0 && r19 != 0x0) {
            [r23 setValue:r21 forKey:@"demandSourceName"];
            r0 = [r19 extraParams];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 extraParams];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r23 addEntriesFromDictionary:r20];
                    [r20 release];
            }
    }
    r20 = @class(NSString);
    r25 = [[@"success" capitalizedString] retain];
    r27 = @selector(stringWithFormat:);
    r28 = @"initRewardedVideo";
    var_148 = r19;
    r19 = r23;
    r20 = [objc_msgSend(r20, r27) retain];
    r24 = @class(NSString);
    r26 = [[@"fail" capitalizedString] retain];
    r0 = objc_msgSend(r24, r27);
    goto loc_100729e60;

loc_100729e60:
    r23 = [r0 retain];
    [r22 runCommand:r28 andParameters:r19 successMethodName:r20 failMethodName:r23 decodeFirst:0x0];
    [r23 release];
    [r26 release];
    [r20 release];
    [r25 release];
    [var_148 release];
    [r19 release];
    r28 = var_150;
    goto loc_100729624;

loc_100729624:
    r27 = var_140;
    goto loc_100729628;

loc_100729628:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r28 release];
    [r27 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1007296a4:
    var_150 = r28;
    r24 = [[r27 appKey] retain];
    var_140 = r27;
    r25 = [objc_msgSend(r27, var_148) retain];
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-280] forKeys:&var_118 count:0x2] retain];
    r23 = [[NSMutableDictionary dictionaryWithDictionary:r26] retain];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [r22 demandSourcesCollection];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 demandSourceForProductType:0x1 demandSourceName:r21];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    if (r21 != 0x0 && r19 != 0x0) {
            [r23 setValue:r21 forKey:@"demandSourceName"];
            r0 = [r19 extraParams];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 extraParams];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r23 addEntriesFromDictionary:r20];
                    [r20 release];
            }
    }
    r20 = @class(NSString);
    r25 = [[@"success" capitalizedString] retain];
    r27 = @selector(stringWithFormat:);
    r28 = @"initInterstitial";
    var_148 = r19;
    r19 = r23;
    r20 = [objc_msgSend(r20, r27) retain];
    r24 = @class(NSString);
    r26 = [[@"fail" capitalizedString] retain];
    r0 = objc_msgSend(r24, r27);
    goto loc_100729e60;

loc_1007298d0:
    var_150 = r28;
    r24 = [[r27 appKey] retain];
    r25 = [objc_msgSend(r27, var_148) retain];
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-216] forKeys:&var_D8 count:0x2] retain];
    r0 = [NSMutableDictionary dictionaryWithDictionary:r26];
    r29 = r29;
    r19 = [r0 retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [SSAGeneralParameters class];
    if ([r27 isKindOfClass:r2] != 0x0) {
            r0 = [r27 additionalParameters];
            r29 = r29;
            r20 = [r0 retain];
            [r19 addEntriesFromDictionary:r20];
            [r20 release];
    }
    r20 = @class(NSString);
    r24 = [[@"success" capitalizedString] retain];
    r20 = [[r20 stringWithFormat:@"%@%@"] retain];
    r23 = @class(NSString);
    r25 = [[@"fail" capitalizedString] retain];
    r23 = [[r23 stringWithFormat:@"%@%@"] retain];
    r27 = r27;
    [r22 runCommand:@"initOfferWall" andParameters:r19 successMethodName:r20 failMethodName:r23 decodeFirst:0x0];
    [r23 release];
    [r25 release];
    [r20 release];
    [r24 release];
    [r19 release];
    r28 = var_150;
    goto loc_100729628;

loc_100729af0:
    r23 = [objc_msgSend(r27, var_148) retain];
    r24 = [[r27 appKey] retain];
    r20 = [[NSDictionary dictionaryWithObjects:r29 - 0xa0 forKeys:&var_B8 count:0x3] retain];
    r26 = [[@"fail" capitalizedString] retain];
    r25 = [[NSString stringWithFormat:@"%@%@"] retain];
    r27 = r27;
    [r22 runCommand:@"getUserCredits" andParameters:r20 successMethodName:@"null" failMethodName:r25 decodeFirst:0x0];
    [r25 release];
    [r26 release];
    [r20 release];
    [r24 release];
    [r23 release];
    goto loc_100729628;

loc_100729c38:
    var_150 = r28;
    r24 = [[r27 appKey] retain];
    var_140 = r27;
    r25 = [objc_msgSend(r27, var_148) retain];
    r26 = [[NSDictionary dictionaryWithObjects:&stack[-312] forKeys:&var_138 count:0x2] retain];
    r23 = [[NSMutableDictionary dictionaryWithDictionary:r26] retain];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [r22 demandSourcesCollection];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 demandSourceForProductType:0x4 demandSourceName:r21];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    if (r21 != 0x0 && r19 != 0x0) {
            [r23 setValue:r21 forKey:@"demandSourceName"];
            r0 = [r19 extraParams];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 extraParams];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r23 addEntriesFromDictionary:r20];
                    [r20 release];
            }
    }
    r20 = @class(NSString);
    r25 = [[@"success" capitalizedString] retain];
    r27 = @selector(stringWithFormat:);
    r28 = @"initBanner";
    var_148 = r19;
    r19 = r23;
    r20 = [objc_msgSend(r20, r27) retain];
    r24 = @class(NSString);
    r26 = [[@"fail" capitalizedString] retain];
    r0 = objc_msgSend(r24, r27);
    goto loc_100729e60;

loc_100729314:
    [r22 setInitCalledFlagForProduct:r2 isTrue:r3 demandSourceName:r4];
    if (objc_msgSend(r22, r26) != 0x5 && [r22 controllerState] != 0x3) {
            if (*(int8_t *)(int64_t *)&r22->_isInitingController == 0x0) {
                    [r22 initControllerInternal:0x1 productionDebugMode:0x0];
            }
    }
    else {
            [r22 sendInitFailureForProduct:r23 withError:r28 demandSourceName:r21];
            [r22 setInitCalledFlagForProduct:r2 isTrue:r3 demandSourceName:r4];
    }
    goto loc_100729628;

loc_100729570:
    r20 = [NSError alloc];
    r23 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    r20 = [r20 initWithDomain:@"SSAErrorDomain" code:0x3ed userInfo:r23];
    [r23 release];
    [r22 sendInitFailureForProduct:0x0 withError:r20 demandSourceName:r21];
    [r20 release];
    r0 = r25;
    goto loc_100729620;

loc_100729620:
    [r0 release];
    goto loc_100729624;

loc_100729554:
    [r28 release];
    [r27 release];
    r28 = r21;
    r21 = r22;
    r22 = r19;
    goto loc_100729570;

loc_100729488:
    [r27 release];
    goto loc_100729570;

loc_100728fac:
    r19 = r22;
    r22 = r21;
    r21 = r28;
    [SSAGeneralParameters class];
    if ([r27 isKindOfClass:r2] != 0x0) {
            r0 = [r27 delegate];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r28 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r28 = 0x1;
    }
    r0 = [r27 appKey];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 length] == 0x0) goto loc_100729494;

loc_100729050:
    r20 = @selector(length);
    r8 = 0x101137000;
    r1 = *(r8 + 0xa68);
    var_148 = r1;
    r0 = objc_msgSend(r27, r1);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r27;
    r27 = r0;
    if (objc_msgSend(r0, r20) != 0x0) {
            r8 = 0x101137000;
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r20 = r28 & r8;
    r0 = r27;
    r27 = r25;
    [r0 release];
    [r26 release];
    r28 = r21;
    if (r20 != 0x1) goto loc_1007294a0;

loc_1007290a8:
    r21 = r22;
    r22 = r19;
    goto loc_1007290b0;

loc_1007294a0:
    r20 = [NSError alloc];
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1] retain];
    r20 = [r20 initWithDomain:@"SSAErrorDomain" code:0x3ed userInfo:r24];
    [r24 release];
    [r19 sendInitFailureForProduct:r23 withError:r20 demandSourceName:0x0];
    [r20 release];
    r21 = r22;
    goto loc_100729628;

loc_100729494:
    [r26 release];
    r28 = r21;
    goto loc_1007294a0;

loc_100728ea4:
    r0 = [r22 demandSourcesCollection];
    r0 = [r0 retain];
    r26 = [[r0 demandSourceForProductType:r23 demandSourceName:r21] retain];
    [r0 release];
    r0 = [r27 appKey];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r27;
    r27 = r0;
    r0 = [r0 length];
    var_140 = r25;
    if (r0 == 0x0) goto loc_10072900c;

loc_100728f24:
    r20 = @selector(length);
    r19 = r22;
    r22 = r21;
    r21 = r28;
    r1 = @selector(userId);
    var_148 = r1;
    r0 = objc_msgSend(r25, r1);
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (objc_msgSend(r0, r20) == 0x0) goto loc_100729394;

loc_100728f5c:
    r0 = [r26 delegate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    [r27 release];
    r28 = r21;
    r21 = r22;
    r22 = r19;
    if (r0 == 0x0) goto loc_1007293b0;

loc_100728f9c:
    r0 = r26;
    goto loc_100728fa0;

loc_1007293b0:
    r20 = [NSError alloc];
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    r20 = [r20 initWithDomain:@"SSAErrorDomain" code:0x3ed userInfo:r24];
    [r24 release];
    r24 = [[r26 name] retain];
    [r22 sendInitFailureForProduct:r23 withError:r20 demandSourceName:r24];
    [r24 release];
    [r20 release];
    r0 = r26;
    goto loc_100729620;

loc_100729394:
    [r28 release];
    [r27 release];
    r28 = r21;
    r21 = r22;
    r22 = r19;
    goto loc_1007293b0;

loc_10072900c:
    [r27 release];
    goto loc_1007293b0;
}

-(void *)parseParametersToDictionary:(void *)arg2 {
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
    r22 = [arg2 retain];
    var_138 = [[NSMutableDictionary dictionary] retain];
    r0 = [arg2 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    var_108 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r19;
    var_140 = r1;
    r23 = objc_msgSend(r19, r1);
    if (r23 != 0x0) {
            r24 = @selector(componentsSeparatedByString:);
            r28 = *var_108;
            do {
                    r21 = 0x0;
                    r20 = @selector(count);
                    do {
                            if (*var_108 != r28) {
                                    objc_enumerationMutation(var_120);
                            }
                            r22 = *(var_110 + r21 * 0x8);
                            if ([r22 length] != 0x0) {
                                    r0 = objc_msgSend(r22, r24);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    if (objc_msgSend(r0, r20) >= 0x2) {
                                            [[r22 objectAtIndex:r2] retain];
                                            r0 = [r22 objectAtIndex:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [var_138 setObject:r2 forKey:r3];
                                            r0 = r24;
                                            r24 = r20;
                                            r20 = r27;
                                            [r0 release];
                                            [r19 release];
                                    }
                                    [r22 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    r23 = objc_msgSend(var_120, var_140);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_138 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)handleSecondaryCallbacks:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 rangeOfString:@"itunes.apple.com"];
    [r0 release];
    [r21 release];
    if (r23 == 0x7fffffffffffffff) {
            var_58 = r20;
            r0 = [r19 URL];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 absoluteString];
            r0 = [r0 retain];
            var_60 = [[r0 lowercaseString] retain];
            [r0 release];
            [r21 release];
            r0 = [r19 URL];
            r0 = [r0 retain];
            r23 = [[r0 host] retain];
            [r0 release];
            r28 = [[SupersonicLogManager sharedManager] retain];
            r0 = [r19 URL];
            r0 = [r0 retain];
            r20 = [[r0 absoluteString] retain];
            r21 = [[NSString stringWithFormat:@"secondary: %@"] retain];
            [r28 log:r21 withLevel:0x0 withTag:0x9];
            [r21 release];
            [r20 release];
            [r0 release];
            [r28 release];
            r0 = [SupersonicLogManager sharedManager];
            r29 = r29;
            r28 = [r0 retain];
            var_68 = r23;
            if (r23 != 0x0) {
                    r24 = @selector(URL);
                    r22 = 0x0;
                    r27 = r23;
            }
            else {
                    r0 = [r19 URL];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 absoluteString];
                    r29 = r29;
                    r27 = [r0 retain];
                    r22 = 0x1;
            }
            r23 = @selector(log:withLevel:withTag:);
            r25 = @selector(stringWithFormat:);
            r0 = objc_msgSend(@class(NSString), r25);
            r29 = r29;
            [r0 retain];
            objc_msgSend(r28, r23);
            [r20 release];
            if (r22 != 0x0) {
                    [r27 release];
                    [r24 release];
            }
            [r28 release];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(shouldCatchAppStoreSchemes));
            r27 = var_58;
            if (*(int8_t *)(r27 + r24) != 0x0 && [r27->appStoreSchemes count] != 0x0) {
                    r20 = [[SupersonicLogManager sharedManager] retain];
                    r22 = var_60;
                    [objc_msgSend(@class(NSString), r25) retain];
                    objc_msgSend(r20, r23);
                    [r21 release];
                    [r20 release];
                    r21 = var_68;
                    r20 = [r27 checkAndHandleAppStoreRedirectForCommand:r21 andFullUrl:r22 isSecondary:0x1];
            }
            else {
                    r0 = [SupersonicLogManager sharedManager];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (*(int8_t *)(r27 + r24) == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r24 = @"YES";
                            }
                            else {
                                    r24 = @"NO";
                            }
                    }
                    r21 = @selector(count);
                    r0 = r27->appStoreSchemes;
                    objc_msgSend(r0, r21);
                    [objc_msgSend(@class(NSString), r25) retain];
                    r20 = 0x1;
                    objc_msgSend(r22, r23);
                    [r21 release];
                    [r22 release];
                    r21 = var_68;
                    r22 = var_60;
            }
            [r21 release];
            [r22 release];
    }
    else {
            r20 = [[UIApplication sharedApplication] retain];
            [[r19 URL] retain];
            [r20 openURL:r2];
            [r21 release];
            [r20 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)handleInitController:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [r20 supersonicAdsView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_10072ee2c;

loc_10072edb8:
    r0 = [r20 supersonicAdsView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 ssaSecondWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r0 == 0x0) goto loc_10072ee34;

loc_10072ee00:
    r0 = [r20 supersonicAdsView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 moveSecondaryToFrontAndSendCloseMessage];
    r0 = r0;
    goto loc_10072ee30;

loc_10072ee30:
    [r0 release];
    goto loc_10072ee34;

loc_10072ee34:
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 isEqualToString:r2];
                    [r0 release];
                    if (r24 != 0x0) {
                            r0 = [r20 controllerLoadTimer];
                            r0 = [r0 retain];
                            [r0 invalidate];
                            [r0 release];
                            [r20 setControllerLoadTimer:0x0];
                            [r20 setNumberOfControllerLoadFails:0x0];
                            [r20 setControllerState:0x2];
                    }
                    else {
                            r22 = @selector(isEqualToString:);
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = objc_msgSend(r0, r22);
                            [r0 release];
                            if (r24 != 0x0) {
                                    r0 = [r20 controllerGlobalInitTimer];
                                    r0 = [r0 retain];
                                    [r0 invalidate];
                                    [r0 release];
                                    [r20 setControllerGlobalInitTimer:0x0];
                                    [r20 setControllerState:0x4];
                                    [r20 handleInitControllerCallbackWithSuccess:0x1 error:0x0];
                            }
                            else {
                                    r22 = @selector(isEqualToString:);
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r22 = objc_msgSend(r0, r22);
                                    [r0 release];
                                    if (r22 != 0x0) {
                                            r0 = [r20 controllerGlobalInitTimer];
                                            r0 = [r0 retain];
                                            [r0 invalidate];
                                            [r0 release];
                                            [r20 setControllerGlobalInitTimer:0x0];
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            if (r23 != 0x0) {
                                                    r0 = [r19 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r22 = [r0 integerValue];
                                                    [r0 release];
                                            }
                                            else {
                                                    r22 = 0x0;
                                            }
                                            [r23 release];
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            if (r23 == 0x0) {
                                                    if (!CPU_FLAGS & E) {
                                                            r0 = r23;
                                                    }
                                                    else {
                                                            r0 = @"failed to init controller";
                                                    }
                                            }
                                            r21 = [r0 retain];
                                            [r23 release];
                                            r23 = [NSError alloc];
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
                                            r24 = [r0 retain];
                                            r22 = [r23 initWithDomain:@"SSAErrorDomain" code:r22 userInfo:r24];
                                            [r24 release];
                                            [r20 setControllerState:0x5];
                                            [r20 handleInitControllerCallbackWithSuccess:0x0 error:r22];
                                            [r21 release];
                                            [r22 release];
                                    }
                            }
                    }
            }
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_10072ee2c:
    r0 = r22;
    goto loc_10072ee30;
}

-(void)handleSetNativeSessionConfiguration:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[SupersonicLogManager sharedManager] retain];
    r22 = [[NSString stringWithFormat:@"%s: %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x5];
    [r22 release];
    [r21 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [r0 boolValue];
            r0 = [r20 nativeSessionConfiguration];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setSupportViewControllerFromAdapter:r23];
            [r0 release];
            [r22 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [r0 boolValue];
            r0 = [r20 nativeSessionConfiguration];
            r0 = [r0 retain];
            [r0 setAllowOrientationFromAppDelegate:r23];
            [r0 release];
            [r22 release];
            r22 = [[r20 nativeSessionConfiguration] retain];
            r0 = [ISNAppOrientationHolder sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setSessionConfiguration:r22];
            [r0 release];
            [r22 release];
    }
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&stack[-88] count:0x0];
    r22 = [r0 retain];
    [r20 runCommand:r21 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleInitRewardedVideoWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r19 = self;
    r28 = [arg2 retain];
    r21 = [arg3 retain];
    r25 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r28 isEqualToString:r2];
    [r26 release];
    [r25 release];
    if (r27 != 0x0) {
            r0 = [SSASettings alloc];
            r20 = r21;
            r22 = [r0 initWithDictionary:r20];
            r0 = [r19 dataManager];
            r0 = [r0 retain];
            [r0 setSettings:r22];
            [r0 release];
            [r22 release];
    }
    else {
            r24 = @selector(isEqualToString:);
            r22 = [[@"fail" capitalizedString] retain];
            r0 = [NSString stringWithFormat:@"%@%@"];
            r29 = r29;
            r25 = [r0 retain];
            r24 = objc_msgSend(r28, r24);
            [r25 release];
            [r22 release];
            r20 = r21;
            if (r24 != 0x0) {
                    var_78 = r28;
                    r24 = [[SupersonicLogManager sharedManager] retain];
                    r25 = @class(NSString);
                    r26 = [[r20 objectForKeyedSubscript:@"errMsg"] retain];
                    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Init Rewarded Video"] retain];
                    r23 = [[r25 stringWithFormat:@"%@: %@"] retain];
                    [r24 log:r23 withLevel:0x3 withTag:0x9];
                    [r23 release];
                    [r27 release];
                    [r26 release];
                    [r24 release];
                    r0 = [r20 objectForKeyedSubscript:@"errCode"];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:@"errCode"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = [r0 integerValue];
                            [r0 release];
                    }
                    else {
                            r23 = 0x0;
                    }
                    r21 = r19;
                    [r24 release];
                    r0 = [r20 objectForKeyedSubscript:@"errMsg"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r24 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r24;
                            }
                            else {
                                    r0 = @"Init rewarded video failed";
                            }
                    }
                    r19 = [r0 retain];
                    [r24 release];
                    r24 = [NSError alloc];
                    var_80 = r19;
                    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    var_70 = [r24 initWithDomain:@"SSAErrorDomain" code:r23 userInfo:r25];
                    [r25 release];
                    r23 = [[r21 demandSourcesCollection] retain];
                    r27 = [[r20 objectForKeyedSubscript:@"demandSourceName"] retain];
                    r25 = [[r23 demandSourceForProductType:0x0 demandSourceName:r27] retain];
                    [r27 release];
                    [r23 release];
                    r0 = [r25 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 respondsToSelector:@selector(ssaRewardedVideoDidFailInitWithError:)];
                    r19 = r21;
                    [r24 release];
                    if (r0 != 0x0) {
                            r22 = [[r20 objectForKeyedSubscript:@"demandSourceName"] retain];
                            r0 = [r19 demandSourcesCollection];
                            r0 = [r0 retain];
                            r24 = [[r0 demandSourceForProductType:0x0 demandSourceName:r22] retain];
                            [r0 release];
                            [r24 setInitState:0x3];
                            r0 = [r25 delegate];
                            r0 = [r0 retain];
                            [r0 ssaRewardedVideoDidFailInitWithError:var_70];
                            [r0 release];
                            [r24 release];
                            [r22 release];
                    }
                    [r25 release];
                    [var_70 release];
                    [var_80 release];
                    r28 = var_78;
            }
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r28 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)checkInstalledApps:(void *)arg2 {
    r31 = r31 - 0x1e0;
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
    r24 = self;
    r0 = [arg2 retain];
    r22 = r0;
    r0 = [r0 objectForKey:@"requestId"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 length] == 0x0) goto loc_10072f720;

loc_10072f550:
    r0 = [r22 objectForKey:@"appIds"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10072f780;

loc_10072f578:
    r19 = [[r22 objectForKey:@"appIds"] retain];
    r26 = [[SSAHelperMethods decodeFromPercentEscapeString:r19] retain];
    [r19 release];
    r20 = [[r26 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x1 error:&var_130];
    r29 = r29;
    r25 = [r0 retain];
    r27 = [var_130 retain];
    [r20 release];
    if (r27 != 0x0) {
            r21 = [[r27 localizedDescription] retain];
            r20 = [[NSString stringWithFormat:@"failed to parse application url schemes:\n%@"] retain];
            [r21 release];
            r19 = [[r22 objectForKeyedSubscript:@"fail"] retain];
            r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1] retain];
            [r24 runCommand:r19 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r19 release];
            r0 = r20;
    }
    else {
            var_198 = r27;
            var_178 = [[NSMutableDictionary alloc] init];
            var_190 = r25;
            r0 = [r25 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_188 = r1;
            var_180 = r0;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    var_1B8 = r26;
                    stack[-448] = r24;
                    var_1A8 = r23;
                    stack[-432] = r22;
                    r19 = 0x0;
                    do {
                            r24 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_180);
                                    }
                                    r21 = @selector(numberWithBool:);
                                    r20 = @selector(setObject:forKey:);
                                    r22 = [[NSMutableDictionary alloc] init];
                                    [r19 release];
                                    r0 = objc_msgSend(@class(NSNumber), r21);
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r22, r20);
                                    [r19 release];
                                    objc_msgSend(var_178, r20);
                                    r24 = r24 + 0x1;
                                    r19 = r22;
                            } while (r24 < r25);
                            r25 = objc_msgSend(var_180, var_188);
                            r19 = r22;
                    } while (r25 != 0x0);
                    [r22 release];
                    r23 = var_1A8;
                    r22 = stack[-432];
                    r26 = var_1B8;
                    r24 = stack[-448];
            }
            [var_180 release];
            r0 = [NSDictionary dictionaryWithObjects:&var_118 forKeys:&var_128 count:0x2];
            r29 = r29;
            r20 = [r0 retain];
            if (var_178 != 0x0) {
                    r0 = [r22 objectForKeyedSubscript:r2];
            }
            else {
                    r0 = [r22 objectForKeyedSubscript:r2];
            }
            r19 = [r0 retain];
            [r24 runCommand:r19 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
            [r19 release];
            r27 = var_198;
            r25 = var_190;
            [r20 release];
            r0 = var_178;
    }
    [r0 release];
    [r25 release];
    [r27 release];
    r0 = r26;
    goto loc_10072fa6c;

loc_10072fa6c:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10072f780:
    r19 = [[r22 objectForKeyedSubscript:@"fail"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_10072f7dc;

loc_10072f7dc:
    r20 = [r0 retain];
    [r24 runCommand:r19 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r20 release];
    r0 = r19;
    goto loc_10072fa6c;

loc_10072f720:
    r19 = [[r22 objectForKeyedSubscript:@"fail"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_10072f7dc;
}

-(void)handleShowRewardedVideo:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r20 = [arg3 retain];
    r23 = [[self demandSourcesCollection] retain];
    var_70 = r20;
    r24 = [[r20 objectForKeyedSubscript:@"demandSourceName"] retain];
    r20 = [[r23 demandSourceForProductType:0x0 demandSourceName:r24] retain];
    [r24 release];
    [r23 release];
    r26 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r28 = [r19 isEqualToString:r2];
    [r27 release];
    [r26 release];
    if (r28 == 0x0) goto loc_100730254;

loc_1007301b8:
    r0 = [r20 delegate];
    r29 = r29;
    r24 = [r0 retain];
    r21 = r19;
    r19 = var_70;
    r28 = r20;
    if (r24 == 0x0) goto loc_10073054c;

loc_1007301e8:
    r0 = [r28 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:r2];
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_10073054c;

loc_100730230:
    r0 = [r28 delegate];
    r0 = [r0 retain];
    r22 = r0;
    [r0 ssaRewardedVideoWindowWillOpen];
    goto loc_100730544;

loc_100730544:
    [r22 release];
    goto loc_10073054c;

loc_10073054c:
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100730254:
    r25 = @selector(isEqualToString:);
    r24 = [[@"fail" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r26 = [r0 retain];
    r25 = objc_msgSend(r19, r25);
    [r26 release];
    [r24 release];
    r21 = r19;
    r19 = var_70;
    r28 = r20;
    if (r25 == 0x0) goto loc_10073054c;

loc_1007302cc:
    r24 = [[SupersonicLogManager sharedManager] retain];
    r25 = @class(NSString);
    r20 = @selector(objectForKeyedSubscript:);
    r26 = [objc_msgSend(r19, r20) retain];
    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Show Rewarded Video"] retain];
    r23 = [[r25 stringWithFormat:@"%@: %@"] retain];
    [r24 log:r23 withLevel:0x3 withTag:0x9];
    [r23 release];
    [r27 release];
    [r26 release];
    [r24 release];
    r0 = objc_msgSend(r19, r20);
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = objc_msgSend(r19, r20);
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 integerValue];
            [r0 release];
    }
    else {
            r23 = 0x0;
    }
    [r24 release];
    r0 = objc_msgSend(r19, r20);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = @"show rewarded video failed";
            }
    }
    r22 = [r0 retain];
    [r24 release];
    r24 = [NSError alloc];
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r23 = [r24 initWithDomain:@"SSAErrorDomain" code:r23 userInfo:r25];
    [r25 release];
    r0 = [r28 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(ssaRewardedVideoDidFailShowWithError:)];
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r28 delegate];
            r0 = [r0 retain];
            [r0 ssaRewardedVideoDidFailShowWithError:r23];
            [r0 release];
    }
    [r23 release];
    goto loc_100730544;
}

-(void)handleInitInterstitialWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r24 = [[r23 demandSourcesCollection] retain];
    r25 = [[r27 objectForKeyedSubscript:@"demandSourceName"] retain];
    r0 = [r24 demandSourceForProductType:0x1 demandSourceName:r25];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r28 != 0x0) {
            var_70 = r28;
            r22 = r27;
            r27 = [[@"success" capitalizedString] retain];
            r0 = [NSString stringWithFormat:@"%@%@"];
            r29 = r29;
            r28 = [r0 retain];
            r0 = [r19 isEqualToString:r2];
            r21 = r19;
            [r28 release];
            [r27 release];
            if (r0 != 0x0) {
                    r0 = [SSASettings alloc];
                    r27 = r22;
                    r19 = [r0 initWithDictionary:r27];
                    r0 = [r23 dataManager];
                    r0 = [r0 retain];
                    [r0 setSettings:r19];
                    [r0 release];
                    [r19 release];
                    r28 = var_70;
                    r0 = [r28 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:r2];
                    [r0 release];
                    r19 = r21;
                    if (r24 != 0x0) {
                            r0 = [r28 delegate];
                            r0 = [r0 retain];
                            [r0 supersonicISInitSuccess];
                            r19 = r19;
                            [r0 release];
                    }
            }
            else {
                    r26 = @selector(isEqualToString:);
                    r23 = [[@"fail" capitalizedString] retain];
                    r0 = [NSString stringWithFormat:@"%@%@"];
                    r29 = r29;
                    r19 = [r0 retain];
                    r25 = objc_msgSend(r21, r26);
                    [r19 release];
                    [r23 release];
                    r19 = r21;
                    r27 = r22;
                    r21 = @selector(objectForKeyedSubscript:);
                    r28 = var_70;
                    if (r25 != 0x0) {
                            r20 = r19;
                            r23 = [[SupersonicLogManager sharedManager] retain];
                            r25 = [objc_msgSend(r27, r21) retain];
                            r26 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Init Interstitial"] retain];
                            r19 = [[NSString stringWithFormat:@"%@: %@"] retain];
                            [r23 log:r19 withLevel:0x3 withTag:0x9];
                            [r19 release];
                            [r26 release];
                            [r25 release];
                            [r23 release];
                            r0 = objc_msgSend(r27, r21);
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = objc_msgSend(r27, r21);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 integerValue];
                                    [r0 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r24 release];
                            r0 = objc_msgSend(r27, r21);
                            r29 = r29;
                            r0 = [r0 retain];
                            r19 = r0;
                            if (r19 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = r19;
                                    }
                                    else {
                                            r0 = @"Init interstitial failed";
                                    }
                            }
                            r22 = [r0 retain];
                            [r19 release];
                            r19 = [NSError alloc];
                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                            r23 = [r19 initWithDomain:@"SSAErrorDomain" code:r23 userInfo:r24];
                            [r24 release];
                            r0 = [r28 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 respondsToSelector:@selector(supersonicISInitFailedWithError:)];
                            [r0 release];
                            if (r26 != 0x0) {
                                    r0 = [r28 delegate];
                                    r0 = [r0 retain];
                                    [r0 supersonicISInitFailedWithError:r23];
                                    [r0 release];
                            }
                            [r23 release];
                            [r22 release];
                            r19 = r20;
                    }
            }
    }
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)handleControllerCallback:(void *)arg2 navigationType:(long long)arg3 {
    r31 = r31 - 0x1f0;
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
    r25 = arg3;
    r23 = self;
    r0 = [arg2 retain];
    r26 = r0;
    r27 = @selector(URL);
    r0 = objc_msgSend(r0, r27);
    r0 = [r0 retain];
    r20 = r0;
    r22 = @selector(absoluteString);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r24 = [[r0 lowercaseString] retain];
    [r0 release];
    [r20 release];
    r0 = objc_msgSend(r26, r27);
    r0 = [r0 retain];
    r19 = [[r0 path] retain];
    [r0 release];
    r0 = objc_msgSend(r26, r27);
    r0 = [r0 retain];
    var_180 = [[r0 host] retain];
    [r0 release];
    r0 = objc_msgSend(r26, r27);
    r0 = [r0 retain];
    r21 = [[r0 query] retain];
    [r0 release];
    var_1A0 = r21;
    r28 = [[r23 parseParametersToDictionary:r21] retain];
    r0 = objc_msgSend(r26, r27);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    var_178 = [r0 retain];
    [r20 release];
    var_170 = r24;
    r0 = [r24 hasPrefix:@"logmessage:"];
    var_198 = r28;
    var_190 = r22;
    var_188 = r19;
    if ((r0 & 0x1) == 0x0) {
            var_1C0 = r25;
            var_1B8 = r23;
            r24 = [[SupersonicLogManager sharedManager] retain];
            r0 = [r26 URL];
            r0 = [r0 retain];
            r19 = r26;
            r28 = [[r0 absoluteString] retain];
            r21 = [[NSString stringWithFormat:@"main: %@"] retain];
            [r24 log:r21 withLevel:0x0 withTag:0x9];
            [r21 release];
            [r28 release];
            [r0 release];
            [r24 release];
            r0 = [SupersonicLogManager sharedManager];
            r29 = r29;
            r22 = [r0 retain];
            r26 = var_180;
            if (r26 != 0x0) {
                    r25 = @selector(URL);
                    r24 = r25;
                    r21 = r19;
                    r19 = 0x0;
            }
            else {
                    r21 = r19;
                    r24 = @selector(URL);
                    r0 = [r19 URL];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 absoluteString];
                    r29 = r29;
                    r26 = [r0 retain];
                    r19 = 0x1;
            }
            r0 = [NSString stringWithFormat:@"main: %@"];
            r29 = r29;
            r20 = [r0 retain];
            [r22 log:r20 withLevel:0x1 withTag:0x9];
            [r20 release];
            if (r19 != 0x0) {
                    [r26 release];
                    [r25 release];
            }
            [r22 release];
            r26 = r21;
            r22 = var_190;
            r19 = var_188;
            r28 = var_198;
            r25 = var_1C0;
            r23 = var_1B8;
            r27 = r24;
    }
    if ([r23 controllerState] != 0x4) goto loc_10072cb00;

loc_10072ca94:
    r21 = [[r26 mainDocumentURL] retain];
    r0 = objc_msgSend(r26, r27);
    r29 = r29;
    r22 = [r0 retain];
    r20 = [r21 isEqual:r2];
    r0 = r22;
    r22 = var_190;
    [r0 release];
    [r21 release];
    if (r25 < 0x2 || r20 != 0x0) goto loc_10072cdc4;

loc_10072cb00:
    if ([var_178 isEqualToString:r2] == 0x0) goto loc_10072cc68;

loc_10072cb20:
    r21 = @selector(isEqualToString:);
    r24 = var_170;
    r20 = [[r28 objectForKeyedSubscript:@"acknowledgeWith"] retain];
    r27 = var_180;
    r25 = var_1A0;
    r22 = [[NSString stringWithFormat:@"%@?%@"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1];
    r0 = [r0 retain];
    r19 = r23;
    [r19 runCommand:r20 andParameters:r0 successMethodName:r27 failMethodName:0x0 decodeFirst:0x1];
    [r0 release];
    [r22 release];
    [r20 release];
    if (objc_msgSend(r27, r21) == 0x0) goto loc_10072cf44;

loc_10072cc10:
    var_100 = [r28 retain];
    dispatch_async(*__dispatch_main_q, &var_128);
    r0 = var_100;
    goto loc_10072cc60;

loc_10072cc60:
    [r0 release];
    goto loc_10072cf60;

loc_10072cf60:
    r20 = 0x0;
    goto loc_10072cf64;

loc_10072cf64:
    r19 = var_188;
    goto loc_10072d08c;

loc_10072d08c:
    var_58 = **___stack_chk_guard;
    [var_178 release];
    [r28 release];
    [r25 release];
    [r27 release];
    [r19 release];
    [var_170 release];
    [r26 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10072cf44:
    [r19 handleSupersonicCallbackWithCommand:r27 andParameters:r25 withFullUrl:r24];
    goto loc_10072cf60;

loc_10072cc68:
    var_190 = r27;
    r20 = @selector(hasPrefix:);
    if ((objc_msgSend(var_170, r20) & 0x1) != 0x0 || objc_msgSend(var_170, r20) != 0x0) goto loc_10072cca0;

loc_10072d100:
    if (objc_msgSend(var_170, r20) == 0x0) goto loc_10072d1e0;

loc_10072d118:
    r0 = [r23 webViewController];
    r0 = [r0 retain];
    [r0 evaluateJavaScript:@"SSA_CORE.Msg.Ios.endMessage('tel')"];
    [r0 release];
    r20 = [[var_170 stringByReplacingOccurrencesOfString:@"tel:+" withString:@"tel://"] retain];
    r21 = [[UIApplication sharedApplication] retain];
    [[NSURL URLWithString:r20] retain];
    [r21 openURL:r2];
    [r22 release];
    goto loc_10072d27c;

loc_10072d27c:
    [r21 release];
    [r20 release];
    r20 = 0x0;
    r27 = var_180;
    r25 = var_1A0;
    goto loc_10072d08c;

loc_10072d1e0:
    if (objc_msgSend(var_170, r20) == 0x0) goto loc_10072d29c;

loc_10072d1f8:
    r0 = [r23 webViewController];
    r0 = [r0 retain];
    [r0 evaluateJavaScript:@"SSA_CORE.Msg.Ios.endMessage('mailto')"];
    [r0 release];
    r20 = [[UIApplication sharedApplication] retain];
    r21 = [objc_msgSend(r26, var_190) retain];
    [r20 openURL:r2];
    goto loc_10072d27c;

loc_10072d29c:
    r0 = objc_msgSend(var_170, r20);
    r27 = var_190;
    if (r0 == 0x0) goto loc_10072d468;

loc_10072d2b8:
    r0 = [r28 objectForKeyedSubscript:@"acknowledgeWith"];
    r0 = [r0 retain];
    r27 = var_180;
    r24 = [[NSString stringWithFormat:@"%@?%@"] retain];
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
    [r23 runCommand:r0 andParameters:r25 successMethodName:r27 failMethodName:0x0 decodeFirst:0x1];
    [r25 release];
    [r24 release];
    [r0 release];
    r23 = [[SupersonicLogManager sharedManager] retain];
    r20 = [[var_198 objectForKeyedSubscript:@"message"] retain];
    r25 = var_1A0;
    r22 = [[SSAHelperMethods decodeFromPercentEscapeString:r20] retain];
    r28 = var_198;
    r21 = [[NSString stringWithFormat:@"%@"] retain];
    [r23 log:r21 withLevel:0x1 withTag:0x7];
    [r21 release];
    [r22 release];
    [r20 release];
    r0 = r23;
    goto loc_10072cc60;

loc_10072d468:
    r19 = sign_extend_64(*(int32_t *)ivar_offset(appStoreSchemes));
    r0 = *(r23 + r19);
    r0 = [r0 count];
    r25 = var_1A0;
    if (r0 == 0x0 || *(int8_t *)(int64_t *)&r23->shouldCatchAppStoreSchemes == 0x0) goto loc_10072d4d0;

loc_10072d498:
    if (NSClassFromString(@"SKStoreProductViewController") == 0x0) goto loc_10072d4dc;

loc_10072d4a8:
    r27 = var_180;
    r20 = [r23 checkAndHandleAppStoreRedirectForCommand:r27 andFullUrl:var_170 isSecondary:0x0];
    goto loc_10072cf64;

loc_10072d4dc:
    var_1A8 = r26;
    var_158 = q0;
    var_1B8 = r23;
    r0 = *(r23 + r19);
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B0 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_10072d5c4;

loc_10072d528:
    r19 = *var_158;
    r8 = 0x101137000;
    r9 = 0x101137000;
    goto loc_10072d538;

loc_10072d538:
    r26 = 0x0;
    r28 = r8;
    r23 = *(r8 + 0x260);
    r20 = r9;
    r24 = *(r9 + 0x910);
    goto loc_10072d54c;

loc_10072d54c:
    if (*var_158 != r19) {
            objc_enumerationMutation(r21);
    }
    r25 = *(var_160 + r26 * 0x8);
    if (objc_msgSend(r25, r23) == 0x0 || objc_msgSend(var_180, r24) == 0x0) goto loc_10072d590;

loc_10072d5d8:
    r0 = [var_1B8 webViewController];
    r0 = [r0 retain];
    [r0 evaluateJavaScript:@"SSA_CORE.Msg.Ios.endMessage('itms-apps')"];
    [r0 release];
    r0 = [var_1B8 webViewController];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    r20 = [[UIApplication sharedApplication] retain];
    r26 = var_1A8;
    [objc_msgSend(r26, r27) retain];
    [r20 openURL:r2];
    [r22 release];
    [r20 release];
    r0 = r21;
    goto loc_10072cf30;

loc_10072cf30:
    [r0 release];
    goto loc_10072cf34;

loc_10072cf34:
    r20 = 0x0;
    goto loc_10072cf38;

loc_10072cf38:
    r19 = var_188;
    r27 = var_180;
    r25 = var_1A0;
    r28 = var_198;
    goto loc_10072d08c;

loc_10072d590:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_10072d54c;

loc_10072d59c:
    r22 = objc_msgSend(r21, var_1B0);
    r8 = r28;
    r9 = r20;
    if (r22 != 0x0) goto loc_10072d538;

loc_10072d5c4:
    [r21 release];
    r20 = 0x1;
    r26 = var_1A8;
    goto loc_10072cf38;

loc_10072d4d0:
    r20 = 0x1;
    r19 = var_188;
    r27 = var_180;
    goto loc_10072d08c;

loc_10072cca0:
    r0 = objc_msgSend(var_170, r20);
    r27 = r22;
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = @"safarihttp";
            }
            else {
                    r22 = @"safarihttps";
            }
    }
    r21 = @selector(isEqualToString:);
    r24 = [r22 retain];
    r23 = [[r23 webViewController] retain];
    r25 = [[NSString stringWithFormat:@"SSA_CORE.Msg.Ios.endMessage('%@')"] retain];
    [r23 evaluateJavaScript:r25];
    [r25 release];
    [r23 release];
    r21 = objc_msgSend(r22, r21);
    [r24 release];
    r0 = objc_msgSend(r26, var_190);
    r0 = [r0 retain];
    r20 = r0;
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r22 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r22 stringByReplacingOccurrencesOfString:r2 withString:r3];
            r29 = r29;
    }
    else {
            r0 = [r22 stringByReplacingOccurrencesOfString:r2 withString:r3];
            r29 = r29;
    }
    r21 = [r0 retain];
    [r22 release];
    [r20 release];
    r27 = var_180;
    r25 = var_1A0;
    r0 = [r21 rangeOfString:@"//"];
    r28 = var_198;
    r19 = var_188;
    if (r0 != 0x7fffffffffffffff) {
            r0 = [r21 substringFromIndex:[r21 rangeOfString:@"//"] + 0x2];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            r21 = r20;
    }
    r20 = [[UIApplication sharedApplication] retain];
    [[NSURL URLWithString:r21] retain];
    [r20 openURL:r2];
    [r22 release];
    [r20 release];
    [r21 release];
    r20 = 0x0;
    goto loc_10072d08c;

loc_10072cdc4:
    r0 = [r23 dataManager];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [[r0 downloadMgr] retain];
    r0 = [NSString stringWithFormat:@"%@.html"];
    r0 = [r0 retain];
    r25 = r19;
    r19 = r23;
    r23 = r0;
    r0 = [r22 getUrlFileByName:r23 andFolderName:@"mobileController" shouldUseCacheFolderRoot:0x1];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 path];
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r25 isEqualToString:r2];
    [r24 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r20 release];
    if ((r25 & 0x1) != 0x0) goto loc_10072cf34;

loc_10072ceb4:
    r20 = [[r19 supersonicAdsView] retain];
    r0 = objc_msgSend(r26, r27);
    r0 = [r0 retain];
    r22 = [objc_msgSend(r0, var_190) retain];
    [r20 openSecondaryWebviewWithUrl:r22 controlsFrames:0x0 isHidden:0x0 completion:0x0];
    [r22 release];
    [r0 release];
    r0 = r20;
    goto loc_10072cf30;
}

-(void)handleInitOfferWallWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r19 = self;
    r28 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r28 isEqualToString:r2];
    [r26 release];
    [r25 release];
    if (r27 != 0x0) {
            r22 = [[SSASettings alloc] initWithDictionary:r20];
            r0 = [r19 dataManager];
            r0 = [r0 retain];
            [r0 setSettings:r22];
            [r0 release];
            [r22 release];
            r0 = [r19 offerWallDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:r2];
            [r0 release];
            r0 = r19;
            r19 = r28;
            if (r25 != 0x0) {
                    r0 = [r0 offerWallDelegate];
                    r0 = [r0 retain];
                    [r0 ssaInitOfferWallSuccess];
                    [r0 release];
            }
    }
    else {
            r24 = @selector(isEqualToString:);
            r23 = [[@"fail" capitalizedString] retain];
            r0 = [NSString stringWithFormat:@"%@%@"];
            r29 = r29;
            r25 = [r0 retain];
            r24 = objc_msgSend(r28, r24);
            [r25 release];
            [r23 release];
            r21 = r19;
            r19 = r28;
            if (r24 != 0x0) {
                    r24 = [[SupersonicLogManager sharedManager] retain];
                    r25 = @class(NSString);
                    r0 = [r20 objectForKeyedSubscript:@"errMsg"];
                    r0 = [r0 retain];
                    r28 = r20;
                    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Init Offerwall"] retain];
                    r22 = [[r25 stringWithFormat:@"%@: %@"] retain];
                    [r24 log:r22 withLevel:0x3 withTag:0x9];
                    [r22 release];
                    [r27 release];
                    [r0 release];
                    [r24 release];
                    r0 = [r20 objectForKeyedSubscript:@"errCode"];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:@"errCode"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = [r0 integerValue];
                            [r0 release];
                    }
                    else {
                            r24 = 0x0;
                    }
                    [r22 release];
                    r0 = [r20 objectForKeyedSubscript:@"errMsg"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r23 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r23;
                            }
                            else {
                                    r0 = @"Init offerwall failed";
                            }
                    }
                    r22 = [r0 retain];
                    [r23 release];
                    r23 = [NSError alloc];
                    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    r23 = [r23 initWithDomain:@"SSAErrorDomain" code:r24 userInfo:r25];
                    [r25 release];
                    r0 = [r21 offerWallDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 respondsToSelector:@selector(ssaInitOfferWallFailedWithError:)];
                    [r0 release];
                    if (r27 != 0x0) {
                            r0 = [r21 offerWallDelegate];
                            r0 = [r0 retain];
                            [r0 ssaInitOfferWallFailedWithError:r23];
                            [r0 release];
                    }
                    [r23 release];
                    [r22 release];
                    r20 = r28;
            }
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleLoadInterstitial:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r28 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self demandSourcesCollection] retain];
    r24 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    r0 = [r23 demandSourceForProductType:0x1 demandSourceName:r24];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r20 == 0x0) goto loc_100731588;

loc_100731124:
    r22 = r20;
    r21 = r19;
    r26 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r27 = [r0 retain];
    r0 = [r28 isEqualToString:r2];
    r20 = r28;
    [r27 release];
    [r26 release];
    if (r0 == 0x0) goto loc_100731278;

loc_1007311c4:
    [r22 setAdAvailable:0x1];
    r0 = [r22 delegate];
    r29 = r29;
    r24 = [r0 retain];
    r28 = r20;
    r20 = r22;
    r19 = r21;
    if (r24 == 0x0) goto loc_100731588;

loc_10073120c:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:r2];
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_100731588;

loc_100731254:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r22 = r0;
    [r0 supersonicISLoadSuccess];
    goto loc_100731580;

loc_100731580:
    [r22 release];
    goto loc_100731588;

loc_100731588:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    [r28 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100731278:
    r25 = @selector(isEqualToString:);
    r24 = [[@"fail" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r26 = [r0 retain];
    r25 = objc_msgSend(r20, r25);
    [r26 release];
    [r24 release];
    r28 = r20;
    r19 = r21;
    r20 = r22;
    r21 = @selector(objectForKeyedSubscript:);
    if (r25 == 0x0) goto loc_100731588;

loc_1007312f8:
    [r20 setAdAvailable:0x0];
    r24 = [[SupersonicLogManager sharedManager] retain];
    r25 = @class(NSString);
    r26 = [objc_msgSend(r19, r21) retain];
    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Load Interstitial"] retain];
    r23 = [[r25 stringWithFormat:@"%@: %@"] retain];
    [r24 log:r23 withLevel:0x3 withTag:0x9];
    [r23 release];
    [r27 release];
    [r26 release];
    [r24 release];
    r0 = objc_msgSend(r19, r21);
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = objc_msgSend(r19, r21);
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 integerValue];
            [r0 release];
    }
    else {
            r23 = 0x0;
    }
    [r24 release];
    r0 = objc_msgSend(r19, r21);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = @"load interstitial failed";
            }
    }
    r22 = [r0 retain];
    [r24 release];
    r24 = [NSError alloc];
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r23 = [r24 initWithDomain:@"SSAErrorDomain" code:r23 userInfo:r25];
    [r25 release];
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(supersonicISLoadFailedWithError:)];
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 supersonicISLoadFailedWithError:r23];
            [r0 release];
    }
    [r23 release];
    goto loc_100731580;
}

-(void)handleShowInterstitial:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r28 = [[r0 objectForKeyedSubscript:@"demandSourceName"] retain];
    r0 = [self demandSourcesCollection];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 demandSourceForProductType:0x1 demandSourceName:r28];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    if (r22 == 0x0) goto loc_100731ad4;

loc_100731698:
    var_78 = r28;
    stack[-128] = r20;
    [r22 setAdAvailable:0x0];
    r27 = [[@"success" capitalizedString] retain];
    r20 = r21;
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r28 = [r0 retain];
    r19 = [r20 isEqualToString:r2];
    [r28 release];
    [r27 release];
    if (r19 == 0x0) goto loc_1007317e0;

loc_100731744:
    r0 = [r22 delegate];
    r29 = r29;
    r25 = [r0 retain];
    r21 = r20;
    r28 = var_78;
    r20 = stack[-128];
    if (r25 == 0x0) goto loc_100731ad4;

loc_100731770:
    r0 = [r22 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:r2];
    [r0 release];
    [r25 release];
    if (r26 == 0x0) goto loc_100731ad4;

loc_1007317b8:
    r0 = [r22 delegate];
    r0 = [r0 retain];
    [r0 supersonicISShowSuccess];
    r0 = r0;
    goto loc_100731ad0;

loc_100731ad0:
    [r0 release];
    goto loc_100731ad4;

loc_100731ad4:
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r28 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1007317e0:
    r26 = @selector(isEqualToString:);
    r25 = [[@"fail" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r19 = [r0 retain];
    r26 = objc_msgSend(r20, r26);
    [r19 release];
    [r25 release];
    r21 = r20;
    r28 = var_78;
    r20 = stack[-128];
    if (r26 == 0x0) goto loc_100731ad4;

loc_100731858:
    r25 = [[SupersonicLogManager sharedManager] retain];
    r19 = @class(NSString);
    r26 = [[r20 objectForKeyedSubscript:@"errMsg"] retain];
    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Show Interstitial"] retain];
    r19 = [[r19 stringWithFormat:@"%@: %@"] retain];
    [r25 log:r19 withLevel:0x3 withTag:0x9];
    [r19 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [r20 objectForKeyedSubscript:@"errCode"];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:@"errCode"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 integerValue];
            [r0 release];
    }
    else {
            r24 = 0x0;
    }
    [r25 release];
    r0 = [r20 objectForKeyedSubscript:@"errMsg"];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r19;
            }
            else {
                    r0 = @"show interstitial failed";
            }
    }
    r23 = [r0 retain];
    [r19 release];
    r19 = [NSError alloc];
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r24 = [r19 initWithDomain:@"SSAErrorDomain" code:r24 userInfo:r25];
    [r25 release];
    r0 = [r22 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(supersonicISShowFailWithError:)];
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r22 delegate];
            r0 = [r0 retain];
            [r0 supersonicISShowFailWithError:r24];
            [r0 release];
    }
    [r24 release];
    r0 = r23;
    goto loc_100731ad0;
}

-(void)handleShowOWWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r19 = self;
    r28 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r28 isEqualToString:r2];
    [r26 release];
    [r25 release];
    if (r27 != 0x0) {
            r0 = [r19 offerWallDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(ssaOfferWallShowSuccess:)];
            [r0 release];
            r26 = r28;
            if (r25 != 0x0) {
                    r0 = [r20 objectForKey:r2];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0 && [r24 length] != 0x0) {
                            r0 = [r19 offerWallDelegate];
                            r0 = [r0 retain];
                            r21 = r0;
                    }
                    else {
                            r0 = [r19 offerWallDelegate];
                            r0 = [r0 retain];
                            r21 = r0;
                    }
                    [r0 ssaOfferWallShowSuccess:r2];
                    [r21 release];
                    [r24 release];
            }
    }
    else {
            r24 = @selector(isEqualToString:);
            r23 = [[@"fail" capitalizedString] retain];
            r0 = [NSString stringWithFormat:@"%@%@"];
            r29 = r29;
            r25 = [r0 retain];
            r24 = objc_msgSend(r28, r24);
            [r25 release];
            [r23 release];
            r21 = r19;
            r26 = r28;
            if (r24 != 0x0) {
                    r19 = r26;
                    r24 = [[SupersonicLogManager sharedManager] retain];
                    r25 = @class(NSString);
                    r26 = [[r20 objectForKeyedSubscript:@"errMsg"] retain];
                    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Show Offer Wall"] retain];
                    r22 = [[r25 stringWithFormat:@"%@: %@"] retain];
                    [r24 log:r22 withLevel:0x3 withTag:0x9];
                    [r22 release];
                    [r27 release];
                    [r26 release];
                    [r24 release];
                    r0 = [r20 objectForKeyedSubscript:@"errCode"];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:@"errCode"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = [r0 integerValue];
                            [r0 release];
                    }
                    else {
                            r24 = 0x0;
                    }
                    [r22 release];
                    r0 = [r20 objectForKeyedSubscript:@"errMsg"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r23 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r23;
                            }
                            else {
                                    r0 = @"show offer wall failed";
                            }
                    }
                    r22 = [r0 retain];
                    [r23 release];
                    r23 = [NSError alloc];
                    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                    r23 = [r23 initWithDomain:@"SSAErrorDomain" code:r24 userInfo:r25];
                    [r25 release];
                    r0 = [r21 offerWallDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 respondsToSelector:@selector(ssaOfferWallShowFailedWithError:)];
                    [r0 release];
                    if (r27 != 0x0) {
                            r0 = [r21 offerWallDelegate];
                            r0 = [r0 retain];
                            [r0 ssaOfferWallShowFailedWithError:r23];
                            [r0 release];
                    }
                    [r23 release];
                    [r22 release];
                    r26 = r19;
            }
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r26 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleInitBannerWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r24 = [[r23 demandSourcesCollection] retain];
    r25 = [[r27 objectForKeyedSubscript:@"demandSourceName"] retain];
    r0 = [r24 demandSourceForProductType:0x4 demandSourceName:r25];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r28 != 0x0) {
            var_70 = r28;
            r22 = r27;
            r27 = [[@"success" capitalizedString] retain];
            r0 = [NSString stringWithFormat:@"%@%@"];
            r29 = r29;
            r28 = [r0 retain];
            r0 = [r19 isEqualToString:r2];
            r21 = r19;
            [r28 release];
            [r27 release];
            if (r0 != 0x0) {
                    r0 = [SSASettings alloc];
                    r27 = r22;
                    r19 = [r0 initWithDictionary:r27];
                    r0 = [r23 dataManager];
                    r0 = [r0 retain];
                    [r0 setSettings:r19];
                    [r0 release];
                    [r19 release];
                    r28 = var_70;
                    r0 = [r28 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:r2];
                    [r0 release];
                    r19 = r21;
                    if (r24 != 0x0) {
                            r0 = [r28 delegate];
                            r0 = [r0 retain];
                            [r0 ISNBannerInitSuccess];
                            r19 = r19;
                            [r0 release];
                    }
            }
            else {
                    r26 = @selector(isEqualToString:);
                    r23 = [[@"fail" capitalizedString] retain];
                    r0 = [NSString stringWithFormat:@"%@%@"];
                    r29 = r29;
                    r19 = [r0 retain];
                    r25 = objc_msgSend(r21, r26);
                    [r19 release];
                    [r23 release];
                    r19 = r21;
                    r27 = r22;
                    r21 = @selector(objectForKeyedSubscript:);
                    r28 = var_70;
                    if (r25 != 0x0) {
                            r20 = r19;
                            r23 = [[SupersonicLogManager sharedManager] retain];
                            r25 = [objc_msgSend(r27, r21) retain];
                            r26 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in InitBanner"] retain];
                            r19 = [[NSString stringWithFormat:@"%@: %@"] retain];
                            [r23 log:r19 withLevel:0x3 withTag:0x9];
                            [r19 release];
                            [r26 release];
                            [r25 release];
                            [r23 release];
                            r0 = objc_msgSend(r27, r21);
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = objc_msgSend(r27, r21);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 integerValue];
                                    [r0 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r24 release];
                            r0 = objc_msgSend(r27, r21);
                            r29 = r29;
                            r0 = [r0 retain];
                            r19 = r0;
                            if (r19 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = r19;
                                    }
                                    else {
                                            r0 = @"Init Banner Failed";
                                    }
                            }
                            r22 = [r0 retain];
                            [r19 release];
                            r19 = [NSError alloc];
                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                            r23 = [r19 initWithDomain:@"SSAErrorDomain" code:r23 userInfo:r24];
                            [r24 release];
                            r0 = [r28 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 respondsToSelector:@selector(ISNBannerInitFailedWithError:)];
                            [r0 release];
                            if (r26 != 0x0) {
                                    r0 = [r28 delegate];
                                    r0 = [r0 retain];
                                    [r0 ISNBannerInitFailedWithError:r23];
                                    [r0 release];
                            }
                            [r23 release];
                            [r22 release];
                            r19 = r20;
                    }
            }
    }
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleLoadBannerWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r24 = [[r23 demandSourcesCollection] retain];
    r25 = [[r27 objectForKeyedSubscript:@"demandSourceName"] retain];
    r0 = [r24 demandSourceForProductType:0x4 demandSourceName:r25];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r28 != 0x0) {
            var_70 = r27;
            r22 = r28;
            r27 = [[@"success" capitalizedString] retain];
            r0 = [NSString stringWithFormat:@"%@%@"];
            r29 = r29;
            r28 = [r0 retain];
            r0 = [r19 isEqualToString:r2];
            r21 = r19;
            [r28 release];
            [r27 release];
            if (r0 != 0x0) {
                    r28 = r22;
                    [r28 setAdAvailable:0x1];
                    r0 = [SSASettings alloc];
                    r27 = var_70;
                    r19 = [r0 initWithDictionary:r27];
                    r0 = [r23 dataManager];
                    r0 = [r0 retain];
                    [r0 setSettings:r19];
                    [r0 release];
                    [r19 release];
                    r0 = [r28 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:r2];
                    [r0 release];
                    r19 = r21;
                    if (r24 != 0x0) {
                            r0 = [r28 delegate];
                            r0 = [r0 retain];
                            [r0 ISNBannerLoadSuccess];
                            r19 = r19;
                            [r0 release];
                    }
            }
            else {
                    r26 = @selector(isEqualToString:);
                    r23 = [[@"fail" capitalizedString] retain];
                    r0 = [NSString stringWithFormat:@"%@%@"];
                    r29 = r29;
                    r19 = [r0 retain];
                    r25 = objc_msgSend(r21, r26);
                    [r19 release];
                    [r23 release];
                    r19 = r21;
                    r21 = @selector(objectForKeyedSubscript:);
                    r27 = var_70;
                    r28 = r22;
                    if (r25 != 0x0) {
                            r20 = r19;
                            [r28 setAdAvailable:0x0];
                            r23 = [[SupersonicLogManager sharedManager] retain];
                            r25 = [objc_msgSend(r27, r21) retain];
                            r26 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in LoadBanner"] retain];
                            r19 = [[NSString stringWithFormat:@"%@: %@"] retain];
                            [r23 log:r19 withLevel:0x3 withTag:0x9];
                            [r19 release];
                            [r26 release];
                            [r25 release];
                            [r23 release];
                            r0 = objc_msgSend(r27, r21);
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r0 = objc_msgSend(r27, r21);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 integerValue];
                                    [r0 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r24 release];
                            r0 = objc_msgSend(r27, r21);
                            r29 = r29;
                            r0 = [r0 retain];
                            r19 = r0;
                            if (r19 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = r19;
                                    }
                                    else {
                                            r0 = @"Load Banner Failed";
                                    }
                            }
                            r22 = [r0 retain];
                            [r19 release];
                            r19 = [NSError alloc];
                            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
                            r23 = [r19 initWithDomain:@"SSAErrorDomain" code:r23 userInfo:r24];
                            [r24 release];
                            r0 = [r28 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 respondsToSelector:@selector(ISNBannerLoadFailedWithError:)];
                            [r0 release];
                            if (r26 != 0x0) {
                                    r0 = [r28 delegate];
                                    r0 = [r0 retain];
                                    [r0 ISNBannerLoadFailedWithError:r23];
                                    [r0 release];
                            }
                            [r23 release];
                            [r22 release];
                            r19 = r20;
                    }
            }
    }
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleAdUnitsReady:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"productType"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    if (r23 == 0x0) goto loc_100733034;

loc_100732c3c:
    r23 = [[r21 demandSourcesCollection] retain];
    r26 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    r20 = [[r23 demandSourceForProductType:0x0 demandSourceName:r26] retain];
    [r26 release];
    [r23 release];
    r0 = [r19 objectForKeyedSubscript:@"numOfAdUnits"];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 intValue];
    [r0 release];
    if (r26 == 0x0) goto loc_10073305c;

loc_100732cf0:
    r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0];
    r0 = [r0 retain];
    r23 = [r0 mutableCopy];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"numOfAdUnits"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"numOfAdUnits"];
            r29 = r29;
            r27 = [r0 retain];
            [r23 setObject:r27 forKeyedSubscript:@"numOfAdUnits"];
            [r27 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"firstCampaignCredits"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"firstCampaignCredits"];
            r29 = r29;
            r27 = [r0 retain];
            [r23 setObject:r27 forKeyedSubscript:@"firstCampaignCredits"];
            [r27 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"totalNumberCredits"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"totalNumberCredits"];
            r29 = r29;
            r27 = [r0 retain];
            [r23 setObject:r27 forKeyedSubscript:@"totalNumberCredits"];
            [r27 release];
    }
    r0 = [r20 delegate];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r26 = @selector(delegate);
            r0 = objc_msgSend(r20, r26);
            r29 = r29;
            r0 = [r0 retain];
            var_68 = r26;
            r25 = [r0 respondsToSelector:@selector(ssaRewardedVideoDidUpdateAdUnits:)];
            r23 = r23;
            r20 = r20;
            r21 = r21;
            r19 = r19;
            [r0 release];
            [r27 release];
            if (r25 != 0x0) {
                    r27 = @selector(respondsToSelector:);
                    r22 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
                    r0 = [r21 demandSourcesCollection];
                    r0 = [r0 retain];
                    r21 = [[r0 demandSourceForProductType:r2 demandSourceName:r3] retain];
                    [r0 release];
                    [r21 setInitState:0x2];
                    r26 = var_68;
                    r0 = objc_msgSend(r21, r26);
                    r29 = r29;
                    r24 = [r0 retain];
                    r28 = @selector(ssaRewardedVideoDidUpdateAdUnits:);
                    if (r24 != 0x0) {
                            r0 = objc_msgSend(r21, r26);
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = objc_msgSend(r0, r27);
                            [r0 release];
                            [r24 release];
                            if (r27 != 0x0) {
                                    r0 = objc_msgSend(r21, r26);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, r28);
                                    [r24 release];
                            }
                    }
                    [r21 release];
                    [r22 release];
            }
    }
    r0 = r23;
    goto loc_100733028;

loc_100733028:
    [r0 release];
    goto loc_10073302c;

loc_10073302c:
    [r20 release];
    goto loc_100733034;

loc_100733034:
    [r19 release];
    return;

loc_10073305c:
    r0 = [r20 delegate];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10073302c;

loc_100733080:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:r2];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_10073302c;

loc_1007330c8:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 ssaRewardedVideoNoMoreOffers];
    r0 = r0;
    goto loc_100733028;
}

-(void)handleSupersonicCallbackWithCommand:(void *)arg2 andParameters:(void *)arg3 withFullUrl:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r23 parseParametersToDictionary:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10072def0;

loc_10072dee4:
    r1 = @selector(handleInitController:);
    goto loc_10072dff0;

loc_10072dff0:
    objc_msgSend(r23, r1);
    goto loc_10072dffc;

loc_10072dffc:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10072def0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072df1c;

loc_10072df10:
    r1 = @selector(handleGetUserData:);
    goto loc_10072dff0;

loc_10072df1c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072df40;

loc_10072df34:
    r1 = @selector(handleSetUserDate:);
    goto loc_10072dff0;

loc_10072df40:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072df64;

loc_10072df58:
    r1 = @selector(handleGetOrientation:);
    goto loc_10072dff0;

loc_10072df64:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072df88;

loc_10072df7c:
    r1 = @selector(handleGetAppOrientationData:);
    goto loc_10072dff0;

loc_10072df88:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072dfac;

loc_10072dfa0:
    r1 = @selector(handleSetBackgroundColor:);
    goto loc_10072dff0;

loc_10072dfac:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072dfd0;

loc_10072dfc4:
    r1 = @selector(handleSetUserUniqueId:);
    goto loc_10072dff0;

loc_10072dfd0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e044;

loc_10072dfe8:
    r1 = @selector(handleGetUserUniqueId:);
    goto loc_10072dff0;

loc_10072e044:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e078;

loc_10072e05c:
    r1 = @selector(handleGetUDIAWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e064:
    r0 = r23;
    goto loc_10072e070;

loc_10072e070:
    objc_msgSend(r0, r1);
    goto loc_10072dffc;

loc_10072e078:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e09c;

loc_10072e090:
    r1 = @selector(handleToggleUDIA:);
    goto loc_10072dff0;

loc_10072e09c:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10072e0f0;

loc_10072e0b4:
    r0 = [r23 jsInterfaceHandler];
    r0 = [r0 retain];
    r23 = r0;
    [r0 getControllerConfig:r22 withConfiguration:*0x1011dad58];
    goto loc_10072e0e8;

loc_10072e0e8:
    r0 = r23;
    goto loc_10072e240;

loc_10072e240:
    [r0 release];
    goto loc_10072dffc;

loc_10072e0f0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e14c;

loc_10072e108:
    r25 = @selector(isEqualToString:);
    r0 = [r22 objectForKeyedSubscript:@"enable"];
    r0 = [r0 retain];
    r24 = r0;
    *(int8_t *)(int64_t *)&r23->shouldCatchAppStoreSchemes = objc_msgSend(r0, r25);
    goto loc_10072e23c;

loc_10072e23c:
    r0 = r24;
    goto loc_10072e240;

loc_10072e14c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e248;

loc_10072e164:
    r25 = [[r22 objectForKeyedSubscript:@"searchKeys"] retain];
    r24 = [[SSAHelperMethods decodeFromPercentEscapeString:r25] retain];
    [r25 release];
    r26 = [[r24 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r26 options:0x1 error:&var_78];
    r25 = [r0 retain];
    r27 = [var_78 retain];
    [r26 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(appStoreSchemes));
    r0 = *(r23 + r8);
    *(r23 + r8) = r25;
    goto loc_10072e230;

loc_10072e230:
    [r0 release];
    r0 = r27;
    goto loc_10072e238;

loc_10072e238:
    [r0 release];
    goto loc_10072e23c;

loc_10072e248:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e330;

loc_10072e260:
    r24 = [[SupersonicLogManager sharedManager] retain];
    r26 = [[r22 objectForKeyedSubscript:@"orientation"] retain];
    r25 = [[NSString stringWithFormat:@"setOrientation: %@"] retain];
    [r24 log:r25 withLevel:0x1 withTag:0x9];
    [r25 release];
    [r26 release];
    [r24 release];
    r23 = [[r23 orientationJSInterfaceHandler] retain];
    r1 = @selector(setPresentationOrientation:sendCallback:);
    goto loc_10072e414;

loc_10072e414:
    objc_msgSend(r23, r1);
    goto loc_10072e0e8;

loc_10072e330:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e428;

loc_10072e348:
    r24 = [[SupersonicLogManager sharedManager] retain];
    r26 = [[r22 objectForKeyedSubscript:@"appOrientation"] retain];
    r25 = [[NSString stringWithFormat:@"setAppOrientation: %@"] retain];
    [r24 log:r25 withLevel:0x1 withTag:0x9];
    [r25 release];
    [r26 release];
    [r24 release];
    r23 = [[r23 orientationJSInterfaceHandler] retain];
    r1 = @selector(setAppOrientation:sendCallback:);
    goto loc_10072e414;

loc_10072e428:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e4e4;

loc_10072e440:
    if (r22 == 0x0) goto loc_10072dffc;

loc_10072e444:
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10072dffc;

loc_10072e474:
    r25 = @selector(isEqualToString:);
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r25);
    [r0 release];
    if (r25 == 0x0) goto loc_10072dffc;

loc_10072e4b4:
    r0 = [r23 supersonicAdsView];
    r0 = [r0 retain];
    r23 = r0;
    r1 = @selector(animateSecondaryClose:);
    goto loc_10072e4dc;

loc_10072e4dc:
    objc_msgSend(r0, r1);
    goto loc_10072e0e8;

loc_10072e4e4:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e58c;

loc_10072e4fc:
    if (r22 == 0x0) goto loc_10072dffc;

loc_10072e500:
    r0 = [r22 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10072dffc;

loc_10072e530:
    r23 = [[r23 supersonicAdsView] retain];
    r24 = [[r22 objectForKeyedSubscript:r2] retain];
    [r23 handleSecondaryWebViewCallbackWithAction:r24];
    [r24 release];
    goto loc_10072e0e8;

loc_10072e58c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e5b0;

loc_10072e5a4:
    r1 = @selector(preLoadAppPage:);
    goto loc_10072dff0;

loc_10072e5b0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e5d4;

loc_10072e5c8:
    r1 = @selector(clearStoreKitAppPage:);
    goto loc_10072dff0;

loc_10072e5d4:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e5f8;

loc_10072e5ec:
    r1 = @selector(handleOpenUrl:);
    goto loc_10072dff0;

loc_10072e5f8:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e6c0;

loc_10072e610:
    if (r22 == 0x0) goto loc_10072dffc;

loc_10072e614:
    r0 = [r23 webViewController];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    r27 = r0;
    [r0 frame];
    [SSAHelperMethods frameForButtonFromParamsDictionary:r22 relativeToFrame:r3];
    r0 = [r23 webViewController];
    r0 = [r0 retain];
    [r0 setFrameForCloseButton:r22];
    r0 = r0;
    goto loc_10072e230;

loc_10072e6c0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e6e4;

loc_10072e6d8:
    r1 = @selector(handleInitRewardedVideoWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e6e4:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e708;

loc_10072e6fc:
    r1 = @selector(handleInitInterstitialWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e708:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e72c;

loc_10072e720:
    r1 = @selector(handleLoadInterstitial:parameters:);
    goto loc_10072e064;

loc_10072e72c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e750;

loc_10072e744:
    r1 = @selector(handleInitOfferWallWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e750:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e774;

loc_10072e768:
    r1 = @selector(handleShowOWWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e774:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e798;

loc_10072e78c:
    r1 = @selector(handleInitBannerWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e798:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e7bc;

loc_10072e7b0:
    r1 = @selector(handleLoadBannerWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e7bc:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e7e0;

loc_10072e7d4:
    r1 = @selector(handleGetDeviceStatus:);
    goto loc_10072dff0;

loc_10072e7e0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e804;

loc_10072e7f8:
    r1 = @selector(handleGetApplicationInfo:);
    goto loc_10072dff0;

loc_10072e804:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e828;

loc_10072e81c:
    r1 = @selector(handleGetUserCreditsWithCommand:parameters:);
    goto loc_10072e064;

loc_10072e828:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e84c;

loc_10072e840:
    r1 = @selector(handleDisplayWebViewWithparameters:);
    goto loc_10072dff0;

loc_10072e84c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e870;

loc_10072e864:
    r1 = @selector(handleShowRewardedVideo:parameters:);
    goto loc_10072e064;

loc_10072e870:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e894;

loc_10072e888:
    r1 = @selector(handleShowInterstitial:parameters:);
    goto loc_10072e064;

loc_10072e894:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e8b8;

loc_10072e8ac:
    r1 = @selector(handleSaveFile:);
    goto loc_10072dff0;

loc_10072e8b8:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e8dc;

loc_10072e8d0:
    r1 = @selector(handleDeleteFolder:);
    goto loc_10072dff0;

loc_10072e8dc:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e900;

loc_10072e8f4:
    r1 = @selector(handleDeleteFile:);
    goto loc_10072dff0;

loc_10072e900:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e930;

loc_10072e918:
    r1 = @selector(handleGetCachedFilesMap:string:);
    r0 = r23;
    goto loc_10072e070;

loc_10072e930:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e954;

loc_10072e948:
    r1 = @selector(handleAdUnitsReady:);
    goto loc_10072dff0;

loc_10072e954:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e978;

loc_10072e96c:
    r1 = @selector(handleCallSupersonicAdsFunction:parameters:);
    goto loc_10072e064;

loc_10072e978:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e99c;

loc_10072e990:
    r1 = @selector(handleGetBandwidth:);
    goto loc_10072dff0;

loc_10072e99c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e9c0;

loc_10072e9b4:
    r1 = @selector(handleAdCredited:);
    goto loc_10072dff0;

loc_10072e9c0:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072e9e4;

loc_10072e9d8:
    r1 = @selector(handleAdWindowsClosed:);
    goto loc_10072dff0;

loc_10072e9e4:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ea08;

loc_10072e9fc:
    r1 = @selector(handleSetWebViewHidden:);
    goto loc_10072dff0;

loc_10072ea08:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ea48;

loc_10072ea20:
    r23 = [[r23 jsInterfaceHandler] retain];
    r1 = @selector(adClicked:);
    goto loc_10072ea84;

loc_10072ea84:
    r0 = r23;
    goto loc_10072e4dc;

loc_10072ea48:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ea90;

loc_10072ea60:
    r23 = [[r23 jsInterfaceHandler] retain];
    r1 = @selector(sendHTTPRequest:);
    goto loc_10072ea84;

loc_10072ea90:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072eab4;

loc_10072eaa8:
    r1 = @selector(checkInstalledApps:);
    goto loc_10072dff0;

loc_10072eab4:
    if (*(int8_t *)(int64_t *)&r23->shouldCatchAppStoreSchemes == 0x0 || [r23->appStoreSchemes count] == 0x0) goto loc_10072eb00;

loc_10072eae0:
    [r23 checkAndHandleAppStoreRedirectForCommand:r19 andFullUrl:r21 isSecondary:0x0];
    goto loc_10072dffc;

loc_10072eb00:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072eb24;

loc_10072eb18:
    r1 = @selector(handleHybridViewRatioConstrains:);
    goto loc_10072dff0;

loc_10072eb24:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072eb64;

loc_10072eb3c:
    r23 = [[r23 jsInterfaceHandler] retain];
    r1 = @selector(handleAdEventNotification:);
    goto loc_10072ea84;

loc_10072eb64:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ec5c;

loc_10072eb7c:
    r0 = [r23 moatJSInterfaceHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r25 = [[ISNMOATJSInterface alloc] initWithPublisherAgent:r23];
            [r23 setMoatJSInterfaceHandler:r25];
            [r25 release];
    }
    r24 = [[r23 moatJSInterfaceHandler] retain];
    r0 = [r23 webViewController];
    r0 = [r0 retain];
    r25 = [[r0 view] retain];
    [r24 invokeAPIWithParams:r22 adView:r25];
    [r25 release];
    r0 = r0;
    goto loc_10072e238;

loc_10072ec5c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ec80;

loc_10072ec74:
    r1 = @selector(handleGetDeviceVolume:);
    goto loc_10072dff0;

loc_10072ec80:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072eca4;

loc_10072ec98:
    r1 = @selector(handleAllowFileAccessFromFileURLs:);
    goto loc_10072dff0;

loc_10072eca4:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ecc8;

loc_10072ecbc:
    r1 = @selector(handleGetDemandSourceState:);
    goto loc_10072dff0;

loc_10072ecc8:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ed08;

loc_10072ece0:
    r0 = [r23 ringerButtonJSInterfaceHandler];
    goto loc_10072ecf4;

loc_10072ecf4:
    r23 = [r0 retain];
    r1 = @selector(invokeAPIWithJSParams:);
    goto loc_10072ea84;

loc_10072ed08:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072ed2c;

loc_10072ed20:
    r1 = @selector(handleSetNativeSessionConfiguration:);
    goto loc_10072dff0;

loc_10072ed2c:
    if ([r19 hasPrefix:r2] == 0x0) goto loc_10072dffc;

loc_10072ed44:
    r0 = [r23 isnAdViewJSInterfaceHandler];
    goto loc_10072ecf4;
}

-(void)handleSetWebViewHidden:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = [r0 boolValue];
            [r0 release];
            r0 = [r20 webViewController];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 setHidden:r22];
            [r0 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)handleAdCredited:(void *)arg2 {
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
    r26 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"productType"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isEqualToString:r2];
    [r0 release];
    if (r24 == 0x0) goto loc_100733204;

loc_10073317c:
    r0 = [r19 objectForKeyedSubscript:@"credits"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r19 objectForKeyedSubscript:@"credits"] retain];
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
    }
    else {
            r22 = 0x0;
    }
    r23 = [[r26 demandSourcesCollection] retain];
    r21 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    r20 = [[r23 demandSourceForProductType:0x0 demandSourceName:r21] retain];
    [r21 release];
    [r23 release];
    r0 = [r20 delegate];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 respondsToSelector:@selector(ssaRewardedVideoDidReceiveCredit:)];
            [r0 release];
            [r24 release];
            if (r26 != 0x0) {
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 ssaRewardedVideoDidReceiveCredit:r22];
                    [r0 release];
            }
    }
    [r20 release];
    r0 = r22;
    goto loc_100733838;

loc_100733838:
    [r0 release];
    goto loc_10073383c;

loc_10073383c:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100733204:
    r23 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r23);
    [r0 release];
    if (r24 == 0x0) goto loc_10073383c;

loc_100733244:
    r0 = [NSDictionary dictionaryWithObjects:&stack[-144] forKeys:&stack[-144] count:0x0];
    r0 = [r0 retain];
    r20 = [r0 mutableCopy];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"credits"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"credits"];
            r29 = r29;
            [r0 retain];
            [r20 setObject:r2 forKey:r3];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"total"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"total"];
            r29 = r29;
            [r0 retain];
            [r20 setObject:r2 forKey:r3];
            [r22 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"totalCreditsFlag"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"totalCreditsFlag"];
            r29 = r29;
            [r0 retain];
            [r20 setObject:r2 forKey:r3];
            [r24 release];
    }
    r23 = @selector(isEqualToString:);
    var_90 = r20;
    var_98 = [[r19 objectForKeyedSubscript:@"signature"] retain];
    r0 = [r19 objectForKeyedSubscript:@"total"];
    r0 = [r0 retain];
    r27 = r0;
    [r0 intValue];
    r0 = [r26 parametersForOW];
    r0 = [r0 retain];
    r28 = r0;
    r22 = [[r0 appKey] retain];
    var_88 = r26;
    r0 = [r26 parametersForOW];
    r0 = [r0 retain];
    r20 = r0;
    r26 = [[r0 userId] retain];
    r24 = [[NSString stringWithFormat:@"%d%@%@"] retain];
    r0 = [SSAHelperMethods getMD5Hash:r24];
    r29 = r29;
    r25 = [r0 retain];
    [r24 release];
    [r26 release];
    [r20 release];
    [r22 release];
    [r28 release];
    [r27 release];
    r27 = var_98;
    if (objc_msgSend(var_98, r23) != 0x0) {
            r0 = [var_88 offerWallDelegate];
            r29 = r29;
            r24 = [r0 retain];
            r28 = var_90;
            if (r24 != 0x0) {
                    r0 = [var_88 offerWallDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 respondsToSelector:@selector(ssaOfferWallDidReceiveCredit:)];
                    [r0 release];
                    [r24 release];
                    if (r26 != 0x0) {
                            r0 = [var_88 offerWallDelegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 ssaOfferWallDidReceiveCredit:r28];
                            [r0 release];
                            if (r22 != 0x0) {
                                    r20 = [[r19 objectForKeyedSubscript:@"success"] retain];
                                    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
                                    r21 = [[r19 objectForKeyedSubscript:@"timestamp"] retain];
                                    [var_88 sendAdCreditedVerificationSuccess:r20 fail:r22 timeStamp:r21];
                                    [r21 release];
                                    [r22 release];
                                    [r20 release];
                            }
                    }
            }
    }
    else {
            r20 = [[r19 objectForKeyedSubscript:@"fail"] retain];
            r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [var_88 runCommand:r20 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r20 release];
            r28 = var_90;
    }
    [r25 release];
    [r27 release];
    r0 = r28;
    goto loc_100733838;
}

-(void)handleAdWindowsClosed:(void *)arg2 {
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
    r22 = arg2;
    r21 = self;
    r20 = [r22 retain];
    r0 = [r22 objectForKeyedSubscript:@"productType"];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r24 = [ISProductContext convertProductNameToProductType:r25 error:&var_48];
    r19 = [var_48 retain];
    [r25 release];
    if (r19 == 0x0) goto loc_1007339bc;

loc_100733918:
    r25 = [[r19 localizedDescription] retain];
    r24 = [[NSString stringWithFormat:@"%@"] retain];
    r22 = [[r22 objectForKeyedSubscript:@"fail"] retain];
    [r20 release];
    [r21 sendFailCallbackToControllerWithErrorMsg:r24 callbackName:r22];
    [r22 release];
    [r24 release];
    r0 = r25;
    goto loc_100733c74;

loc_100733c74:
    [r0 release];
    [r19 release];
    return;

loc_1007339bc:
    r25 = [[r21 demandSourcesCollection] retain];
    r22 = [[r22 objectForKeyedSubscript:@"demandSourceName"] retain];
    [r20 release];
    r0 = [r25 demandSourceForProductType:r24 demandSourceName:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    [r25 release];
    if (r24 > 0x4) goto loc_100733c70;

loc_100733a3c:
    goto *0x100733c9c[sign_extend_64(*(int32_t *)(0x100733c9c + r24 * 0x4)) + 0x100733c9c];

loc_100733a50:
    r0 = [r20 delegate];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_100733c70;

loc_100733a74:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:r2];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_100733c70;

loc_100733abc:
    r22 = @selector(ssaRewardedVideoWindowDidClose);
    r0 = [r20 delegate];
    goto loc_100733c58;

loc_100733c58:
    r0 = [r0 retain];
    r21 = r0;
    r1 = r22;
    goto loc_100733c64;

loc_100733c64:
    objc_msgSend(r0, r1);
    [r21 release];
    goto loc_100733c70;

loc_100733c70:
    r0 = r20;
    goto loc_100733c74;

loc_100733ad0:
    r0 = [r20 delegate];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_100733c70;

loc_100733af4:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:r2];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_100733c70;

loc_100733b3c:
    r22 = @selector(supersonicISAdClosed);
    r0 = [r20 delegate];
    goto loc_100733c58;

loc_100733b50:
    r0 = [r21 offerWallDelegate];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_100733c70;

loc_100733b74:
    r0 = [r21 offerWallDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:r2];
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_100733c70;

loc_100733bbc:
    r0 = [r21 offerWallDelegate];
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(ssaOfferWallDidClose);
    goto loc_100733c64;

loc_100733bdc:
    r0 = [r20 delegate];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_100733c70;

loc_100733c00:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:r2];
    [r0 release];
    [r23 release];
    if (r25 == 0x0) goto loc_100733c70;

loc_100733c48:
    r22 = @selector(ISNBannerAdClosed);
    r0 = [r20 delegate];
    goto loc_100733c58;
}

-(void *)getViewFromStringViewType:(void *)arg2 viewUniqueId:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 isEqualToString:r2] != 0x0) {
            r21 = [[r21 supersonicAdsView] retain];
    }
    else {
            if ([r19 isEqualToString:r2] != 0x0) {
                    r0 = [ISAppStoreInsideSession sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 getAppStoreViewCtrlByViewUniqueId:r20];
                    r0 = [r0 retain];
                    r21 = [[r0 view] retain];
                    [r0 release];
                    [r22 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)handleCallSupersonicAdsFunction:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r19 = self;
    r28 = [arg2 retain];
    var_70 = [arg3 retain];
    r25 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r28 isEqualToString:r2];
    [r26 release];
    [r25 release];
    if (r27 == 0x0) goto loc_100734c24;

loc_100734ba4:
    r0 = [r19 superSonicAdsDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(ssaGenericFunctionResponse:withError:), r3];
    [r0 release];
    r0 = r19;
    r19 = r28;
    r28 = var_70;
    if (r25 == 0x0) goto loc_100734ed0;

loc_100734bf8:
    r0 = [r0 superSonicAdsDelegate];
    r0 = [r0 retain];
    [r0 ssaGenericFunctionResponse:r28 withError:0x0];
    r0 = r0;
    goto loc_100734ecc;

loc_100734ecc:
    [r0 release];
    goto loc_100734ed0;

loc_100734ed0:
    var_58 = **___stack_chk_guard;
    [r28 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100734c24:
    r24 = @selector(isEqualToString:);
    r23 = [[@"fail" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r25 = [r0 retain];
    r24 = objc_msgSend(r28, r24);
    [r25 release];
    [r23 release];
    r21 = r19;
    r19 = r28;
    r28 = var_70;
    if (r24 == 0x0) goto loc_100734ed0;

loc_100734c9c:
    r24 = [[SupersonicLogManager sharedManager] retain];
    var_78 = r19;
    r26 = @class(NSString);
    r27 = [[r28 objectForKeyedSubscript:@"errMsg"] retain];
    r28 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Call SupersonicAds Function"] retain];
    r22 = [[r26 stringWithFormat:@"%@: %@"] retain];
    [r24 log:r22 withLevel:r3 withTag:0x9];
    [r22 release];
    r0 = r28;
    r28 = var_70;
    [r0 release];
    [r27 release];
    [r24 release];
    r0 = [r21 superSonicAdsDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(ssaGenericFunctionResponse:withError:), 0x3];
    r19 = var_78;
    [r0 release];
    if (r27 == 0x0) goto loc_100734ed0;

loc_100734dc8:
    r23 = [[r28 objectForKeyedSubscript:@"errMsg"] retain];
    r25 = [[SSAHelperMethods decodeFromPercentEscapeString:r23] retain];
    r27 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r26 = [[NSError errorWithDomain:@"SSAErrorDomain" code:0xffffffffffffffff userInfo:r27] retain];
    [r27 release];
    [r25 release];
    [r23 release];
    r0 = [r21 superSonicAdsDelegate];
    r0 = [r0 retain];
    [r0 ssaGenericFunctionResponse:0x0 withError:r26];
    [r0 release];
    r0 = r26;
    r19 = var_78;
    goto loc_100734ecc;
}

-(double)getScreenRatioFromHybridViewDictionary:(void *)arg2 useDefualtIfNotFound:(double)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"screenRatio"];
            r0 = [r0 retain];
            [r0 doubleValue];
            v8 = v0;
            [r0 release];
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void)sendAdCreditedVerificationSuccess:(void *)arg2 fail:(void *)arg3 timeStamp:(void *)arg4 {
    r31 = r31 - 0xf0;
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
    r24 = self;
    r25 = [arg2 retain];
    r26 = [arg3 retain];
    r23 = [arg4 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:@"ssaUserData"] retain];
    r28 = [[SSAHelperMethods decodeFromPercentEscapeString:r21] retain];
    [r21 release];
    [r0 release];
    r21 = [[r28 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r21 options:0x3 error:&var_70];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r27 = [var_70 retain];
    if (r20 != 0x0) {
            asm { ccmp       x27, #0x0, #0x0, ne };
    }
    var_80 = r20;
    if (CPU_FLAGS & NE) goto loc_1007349b0;

loc_1007345dc:
    var_88 = r28;
    var_A8 = r26;
    r0 = [r24 parametersForOW];
    r0 = [r0 retain];
    var_B0 = r0;
    r26 = [[r0 appKey] retain];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r24;
    r24 = r0;
    if (r24 == 0x0) goto loc_100734994;

loc_10073464c:
    r0 = [r28 parametersForOW];
    r0 = [r0 retain];
    var_C8 = r0;
    r0 = [r0 appKey];
    r0 = [r0 retain];
    var_98 = r23;
    r23 = r0;
    r0 = [r20 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    var_C0 = r25;
    r25 = r0;
    r0 = [r28 parametersForOW];
    r0 = [r0 retain];
    var_B8 = r21;
    r21 = r0;
    r1 = @selector(userId);
    var_D8 = r1;
    r20 = [objc_msgSend(r0, r1) retain];
    r0 = [r25 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    r0 = r20;
    r20 = var_80;
    [r0 release];
    r0 = r21;
    r21 = var_B8;
    [r0 release];
    r0 = r25;
    r25 = var_C0;
    [r0 release];
    r0 = r23;
    r23 = var_98;
    [r0 release];
    [var_C8 release];
    [r24 release];
    [r26 release];
    [var_B0 release];
    r26 = var_A8;
    r24 = r28;
    r28 = var_88;
    if (r22 != 0x0) {
            r0 = [r24 parametersForOW];
            r0 = [r0 retain];
            r28 = r20;
            r20 = r0;
            r21 = [[r0 appKey] retain];
            r22 = [[r28 objectForKeyedSubscript:r2] retain];
            r0 = [r24 parametersForOW];
            r0 = [r0 retain];
            r23 = r0;
            r0 = objc_msgSend(r0, var_D8);
            r0 = [r0 retain];
            var_A0 = r24;
            r24 = r0;
            r0 = [r22 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r0 setObject:var_98 forKeyedSubscript:@"timestamp"];
            [r0 release];
            [r24 release];
            r0 = r23;
            r23 = var_98;
            [r0 release];
            [r22 release];
            [r21 release];
            [r20 release];
            var_78 = 0x0;
            r19 = [[NSJSONSerialization dataWithJSONObject:r28 options:0x0 error:&var_78] retain];
            r20 = [var_78 retain];
            [r27 release];
            r22 = [[NSString alloc] initWithData:r19 encoding:0x4];
            r21 = [[SSAHelperMethods encodeToPercentEscapeString:r22] retain];
            [r22 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r21 forKey:@"ssaUserData"];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 synchronize];
            [r0 release];
            r28 = var_88;
            [var_A0 runCommand:r25 andParameters:0x0 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            r0 = r21;
            r21 = var_B8;
            [r0 release];
            [r19 release];
            r27 = r20;
    }
    else {
            if (r27 != 0x0) {
                    r0 = [r27 localizedDescription];
                    r29 = r29;
                    r19 = [r0 retain];
            }
            else {
                    r19 = @"missing entry in userDefaults";
                    [r19 retain];
            }
            r20 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
            [r24 runCommand:r26 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r20 release];
            [r19 release];
    }
    goto loc_100734a50;

loc_100734a50:
    var_58 = **___stack_chk_guard;
    [var_80 release];
    [r27 release];
    [r21 release];
    [r28 release];
    [r23 release];
    [r26 release];
    [r25 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100734994:
    [r26 release];
    [var_B0 release];
    r26 = var_A8;
    r24 = r28;
    r28 = var_88;
    goto loc_1007349b0;

loc_1007349b0:
    if (r27 != 0x0) {
            r0 = [r27 localizedDescription];
            r29 = r29;
            r19 = [r0 retain];
    }
    else {
            r19 = @"missing entry in userDefaults";
            [r19 retain];
    }
    r20 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    [r24 runCommand:r26 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r20 release];
    [r19 release];
    goto loc_100734a50;
}

-(void)didDisplaySplitViewCtrlWithViewUniqueId:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r21 = [[SupersonicLogManager sharedManager] retain];
    r22 = [[NSString stringWithFormat:@"%s with viewUniqueId: %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x5];
    [r22 release];
    [r21 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
    r21 = [r0 retain];
    [self runCommand:@"appStoreInsideDisplayHybrid" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleDisplayWebViewWithparameters:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r21 = [[SupersonicLogManager sharedManager] retain];
    r25 = [[NSString stringWithFormat:@"%s: %@"] retain];
    [r21 log:r25 withLevel:0x1 withTag:0x5];
    [r25 release];
    [r21 release];
    r0 = [self orientationJSInterfaceHandler];
    r0 = [r0 retain];
    [r0 setAppOrientation:r19 sendCallback:0x0];
    [r0 release];
    var_80 = self;
    r0 = [self nativeSessionConfiguration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 supportViewControllerFromAdapter];
    r26 = 0x0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"hybridView"];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 boolValue] ^ 0x1;
            [r0 release];
    }
    [r21 release];
    r0 = @class(SupersonicLogManager);
    r0 = [r0 sharedManager];
    r29 = r29;
    r21 = [r0 retain];
    if (r26 == 0x0) goto loc_100733fb8;

loc_100733f38:
    r23 = [[NSString stringWithFormat:@"%s: presenting using received view controller"] retain];
    [r21 log:r23 withLevel:0x1 withTag:0x5];
    [r23 release];
    [r21 release];
    r0 = [var_80 presenterJSInterfaceHandler];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(handleWebViewVisibility:);
    goto loc_100733fa8;

loc_100733fa8:
    objc_msgSend(r0, r1);
    goto loc_100733fac;

loc_100733fac:
    [r20 release];
    goto loc_100734278;

loc_100734278:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100733fb8:
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"%s: presenting using top most view controller"];
    r29 = r29;
    r25 = [r0 retain];
    [r21 log:r25 withLevel:0x1 withTag:0x5];
    [r25 release];
    [r21 release];
    if (r19 == 0x0) goto loc_100734278;

loc_100734004:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_100734278;

loc_100734030:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    if (r0 == 0x0) goto loc_100734278;

loc_100734060:
    r24 = [[SupersonicLogManager sharedManager] retain];
    r23 = [[NSString stringWithFormat:@"%s: %@"] retain];
    [r24 log:r23 withLevel:0x3 withTag:0x5];
    [r23 release];
    [r24 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if (r24 == 0x0) goto loc_100734260;

loc_100734104:
    r20 = var_80;
    r0 = [r20 currentSession];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            r23 = r0;
            [r0 timeIntervalSince1970];
            r24 = [[NSNumber numberWithDouble:@"display"] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 mutableCopy];
            [r20 setCurrentSession:r26];
            [r26 release];
            [r0 release];
            [r24 release];
            [r23 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    if ((r25 & 0x1) != 0x0) {
            r23 = 0x2;
    }
    else {
            r23 = @selector(isEqualToString:);
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r23);
            [r0 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 boolValue];
    [r0 release];
    if (r25 == 0x0) goto loc_1007343a0;

loc_10073432c:
    r21 = [[SupersonicAdsView alloc] init];
    [r20 setSupersonicAdsView:r21];
    [r21 release];
    r0 = [r20 supersonicAdsView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 show:r23 withView:0x0];
    goto loc_100733fac;

loc_1007343a0:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 boolValue] & 0x1) == 0x0) goto loc_10073445c;

loc_1007343cc:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) goto loc_100734464;

loc_100734400:
    r21 = [[SupersonicAdsView alloc] init];
    [r20 setSupersonicAdsView:r21];
    [r21 release];
    [r20 showHybridViewControllerWithDictionary:r19 withProductType:r23];
    goto loc_100734278;

loc_100734464:
    r0 = [r20 viewController];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(show:);
    goto loc_100733fa8;

loc_10073445c:
    [r21 release];
    goto loc_100734464;

loc_100734260:
    [var_80 closeWebViewIsSecondaryWebview:0x0 withParametersDict:r19];
    goto loc_100734278;
}

-(void)didHideSplitViewCtrlWithViewUniqueId:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r21 = [[SupersonicLogManager sharedManager] retain];
    r22 = [[NSString stringWithFormat:@"%s with viewUniqueId: %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x5];
    [r22 release];
    [r21 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
    r21 = [r0 retain];
    [self runCommand:@"appStoreInsideHideHybrid" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)clearStoreKitAppPage:(void *)arg2 {
    r19 = [[arg2 objectForKeyedSubscript:@"viewUniqueId"] retain];
    r0 = [ISAppStoreInsideSession sharedInstance];
    r0 = [r0 retain];
    [r0 cleanupForViewUniqueId:r19];
    [r0 release];
    r20 = [[SupersonicLogManager sharedManager] retain];
    r21 = [[NSString stringWithFormat:@"%s: for viewUniqueID: %@"] retain];
    [r20 log:r21 withLevel:0x1 withTag:0x5];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)showHybridViewControllerWithDictionary:(void *)arg2 withProductType:(unsigned long long)arg3 {
    r31 = r31 - 0xf0;
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
    var_B8 = arg3;
    var_B0 = self;
    r20 = [arg2 retain];
    var_70 = [[arg2 objectForKeyedSubscript:@"viewUniqueId"] retain];
    r19 = [[arg2 objectForKeyedSubscript:@"hybridJson"] retain];
    [r20 release];
    var_A8 = r19;
    r27 = [[SSAHelperMethods decodeFromPercentEscapeString:r19] retain];
    r23 = [[SupersonicLogManager sharedManager] retain];
    r24 = [[NSString stringWithFormat:@"%@: %@"] retain];
    [r23 log:r24 withLevel:0x1 withTag:0x5];
    [r24 release];
    [r23 release];
    r0 = @class(SSAHelperMethods);
    r28 = r27;
    r0 = [r0 decodeJSONObject:r27 forEncoding:0x4 withError:&saved_fp - 0x68];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r24 = [0x0 retain];
    if (r24 != 0x0) {
            r22 = [[SupersonicLogManager sharedManager] retain];
            r20 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Call SupersonicAds Function"] retain];
            r21 = [[NSString stringWithFormat:@"%@: %@"] retain];
            [r22 log:r21 withLevel:0x3 withTag:0x9];
            [r21 release];
            [r20 release];
            [r22 release];
            r25 = var_70;
            r22 = r24;
    }
    else {
            r19 = var_B0;
            [NSArray class];
            r0 = [r27 isKindOfClass:r2];
            r25 = var_70;
            r22 = r24;
            if (r0 != 0x0) {
                    var_C0 = r27;
                    r27 = [r27 retain];
                    r23 = [NSMutableArray new];
                    if ([r27 count] != 0x0) {
                            var_D0 = r22;
                            stack[-216] = r28;
                            r20 = 0x0;
                            do {
                                    r0 = [r27 objectAtIndexedSubscript:r20];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 objectForKeyedSubscript:@"screenRatio"];
                                    r0 = [r0 retain];
                                    [r0 doubleValue];
                                    [r0 release];
                                    r0 = [r19 getViewFromStringViewType:[[r24 objectForKeyedSubscript:@"viewType"] retain] viewUniqueId:r25];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    r0 = [ISHybridObject alloc];
                                    v0 = v0;
                                    [r0 initWithView:r21 viewRatio:r25];
                                    [r23 addObject:r2];
                                    r0 = r25;
                                    r25 = var_70;
                                    [r0 release];
                                    [r21 release];
                                    [r22 release];
                                    [r24 release];
                                    r20 = r20 + 0x1;
                            } while (objc_msgSend(r27, r28) > r20);
                            r22 = var_D0;
                            r28 = stack[-216];
                            r21 = r19;
                            r1 = @selector(alloc);
                    }
                    else {
                            r1 = @selector(alloc);
                            r21 = r19;
                    }
                    r19 = [objc_msgSend(@class(ISSplitViewController), r1) initWithViewJsonArray:r23 andViewUniqueId:r25];
                    [r21 setSplitViewCtrl:r19];
                    [r19 release];
                    r0 = [r21 splitViewCtrl];
                    r0 = [r0 retain];
                    [r0 setDelegate:r21];
                    [r0 release];
                    r0 = [r21 splitViewCtrl];
                    r0 = [r0 retain];
                    [r0 show:var_B8 andViewUniqueId:r25];
                    [r0 release];
                    [r23 release];
                    [r27 release];
                    r27 = var_C0;
            }
    }
    [r27 release];
    [r22 release];
    [r28 release];
    [var_A8 release];
    [r25 release];
    return;
}

-(void)preLoadAppPage:(void *)arg2 {
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
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyedSubscript:@"appId"] retain];
    r0 = [r19 objectForKeyedSubscript:@"viewUniqueId"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([SSAHelperMethods isStringExistAndNotEmpty:r2] != 0x0 && ([SSAHelperMethods isStringExistAndNotEmpty:r2] & 0x1) != 0x0) {
            r0 = @class(ISAppStoreInsideSession);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 setDelegate:r22];
            [r0 release];
            r0 = @class(ISAppStoreInsideSession);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            [r0 loadStoreWithAppId:r20 viewUniqueId:r21 showIfSuccess:0x0];
    }
    else {
            r22 = [[SupersonicLogManager sharedManager] retain];
            r23 = [[NSString stringWithFormat:@"%s: appId or viewUniqueID is null or empty"] retain];
            [r22 log:r23 withLevel:0x3 withTag:0x5];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleHybridViewRatioConstrains:(void *)arg2 {
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
    var_60 = self;
    r19 = [[arg2 objectForKeyedSubscript:@"hybridJson"] retain];
    r20 = [[SSAHelperMethods decodeFromPercentEscapeString:r19] retain];
    r22 = [[SupersonicLogManager sharedManager] retain];
    r23 = [[NSString stringWithFormat:@"%@: %@"] retain];
    [r22 log:r23 withLevel:0x3 withTag:0x5];
    [r23 release];
    [r22 release];
    r0 = @class(SSAHelperMethods);
    r0 = [r0 decodeJSONObject:r20 forEncoding:0x4 withError:&var_58];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [var_58 retain];
    if (r23 != 0x0) goto loc_100735a80;

loc_1007359ec:
    [NSArray class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_100735a80;

loc_100735a18:
    r21 = var_60;
    r0 = [r21 splitViewCtrl];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100735b14;

loc_100735a44:
    r25 = [r22 retain];
    r0 = [r21 splitViewCtrl];
    r0 = [r0 retain];
    r21 = r0;
    [r0 updateConstraintsForViews:r25];
    r0 = r25;
    goto loc_100735b08;

loc_100735b08:
    [r0 release];
    [r21 release];
    goto loc_100735b14;

loc_100735b14:
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;

loc_100735a80:
    r21 = [[SupersonicLogManager sharedManager] retain];
    r24 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Call SupersonicAds Function"] retain];
    r26 = [[NSString stringWithFormat:@"%@: %@"] retain];
    [r21 log:r26 withLevel:0x3 withTag:0x9];
    [r26 release];
    r0 = r24;
    goto loc_100735b08;
}

-(void)handleOpenUrl:(void *)arg2 {
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
    r29 = &saved_fp;
    r25 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1007363e0;

loc_100735f20:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1007363e0;

loc_100735f4c:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == 0x0) goto loc_1007363e0;

loc_100735f7c:
    var_90 = [[r19 objectForKeyedSubscript:r2] retain];
    r21 = @class(SSAHelperMethods);
    r22 = [[r19 objectForKeyedSubscript:r2] retain];
    r21 = [[r21 decodeFromPercentEscapeString:r22] retain];
    [r22 release];
    r22 = @class(SSAHelperMethods);
    r24 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [r22 decodeFromPercentEscapeString:r24];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    if ([r22 length] != 0x0) {
            r27 = [[r22 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r27 options:0x1 error:&var_60];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [var_60 retain];
            [r27 release];
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-104] count:0x0];
            r29 = r29;
            r23 = [r0 retain];
            r24 = 0x0;
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    if (r20 == 0x0) goto loc_10073619c;

loc_10073612c:
    r0 = [r25 supersonicAdsView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 openSecondaryWebviewWithUrl:r21 controlsFrames:r23 isHidden:0x0 completion:&var_88];
    goto loc_100736194;

loc_100736194:
    r0 = r20;
    goto loc_1007363b4;

loc_1007363b4:
    [r0 release];
    goto loc_1007363b8;

loc_1007363b8:
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [var_90 release];
    goto loc_1007363e0;

loc_1007363e0:
    [r19 release];
    return;

loc_10073619c:
    r27 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r27);
    [r0 release];
    if (r28 == 0x0) goto loc_10073629c;

loc_1007361dc:
    r0 = [r25 getPresentedViewController];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_100736344;

loc_1007361fc:
    r0 = [ISAppStoreInsideSession sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 hasAppStorePageForViewUniqueId:var_90];
    [r0 release];
    if (r28 == 0x0) goto loc_100736344;

loc_100736240:
    r0 = @class(ISAppStoreInsideSession);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setViewControllerToPresentFrom:r25];
    [r0 release];
    r0 = @class(ISAppStoreInsideSession);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r26 = r0;
    [r0 showStoreForUniqueId:var_90];
    goto loc_1007363a8;

loc_1007363a8:
    [r26 release];
    goto loc_1007363b0;

loc_1007363b0:
    r0 = r25;
    goto loc_1007363b4;

loc_100736344:
    if (r21 == 0x0) goto loc_1007363b0;

loc_100736348:
    r26 = [[UIApplication sharedApplication] retain];
    [[NSURL URLWithString:r21] retain];
    [r26 openURL:r2];
    [r27 release];
    goto loc_1007363a8;

loc_10073629c:
    r27 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r27);
    [r0 release];
    if (r21 == 0x0 || r25 == 0x0) goto loc_1007363b8;

loc_1007362e0:
    r20 = [[UIApplication sharedApplication] retain];
    [[NSURL URLWithString:r21] retain];
    [r20 openURL:r2];
    [r25 release];
    goto loc_100736194;
}

-(void)didStartAppStoreInsideSessionForAppId:(void *)arg2 andViewUniqueId:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r22 = [[SupersonicLogManager sharedManager] retain];
            r23 = [[NSString stringWithFormat:@"%s for appKey: %@ and viewUniqueId: %@"] retain];
            [r22 log:r23 withLevel:0x1 withTag:0x5];
            [r23 release];
            [r22 release];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
            r22 = [r0 retain];
            [r20 runCommand:@"appStoreInsideStarted" andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)didFinishAppStoreInsideSession:(bool)arg2 forAppId:(void *)arg3 andViewUniqueId:(void *)arg4 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r23 = [[SupersonicLogManager sharedManager] retain];
            r24 = [[NSString stringWithFormat:@"%s for appKey: %@ and viewUniqueId: %@"] retain];
            [r23 log:r24 withLevel:0x1 withTag:0x5];
            [r24 release];
            [r23 release];
            r0 = [ISAppStoreInsideSession sharedInstance];
            r0 = [r0 retain];
            [r0 cleanupForViewUniqueId:r21];
            [r0 release];
            r22 = [[NSNumber numberWithBool:r22] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_68 count:0x3];
            r23 = [r0 retain];
            [r20 runCommand:@"appStoreInsideClosed" andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r23 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)didLoadAppStoreInsideSession:(bool)arg2 forAppId:(void *)arg3 andViewUniqueId:(void *)arg4 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r23 = [[SupersonicLogManager sharedManager] retain];
            r24 = [[NSString stringWithFormat:@"%s for appKey: %@ and viewUniqueId: %@"] retain];
            [r23 log:r24 withLevel:0x1 withTag:0x5];
            [r24 release];
            [r23 release];
            r22 = [[NSNumber numberWithBool:r22] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_68 count:0x3];
            r23 = [r0 retain];
            [r20 runCommand:@"appStoreInsideLoaded" andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r23 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)didShowAppStoreInsideForAppId:(void *)arg2 andViewUniqueId:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r22 = [[SupersonicLogManager sharedManager] retain];
            r23 = [[NSString stringWithFormat:@"%s for appKey: %@ and viewUniqueId: %@"] retain];
            [r22 log:r23 withLevel:0x1 withTag:0x5];
            [r23 release];
            [r22 release];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
            r22 = [r0 retain];
            [r20 runCommand:@"appStoreInsideDisplayStoreKit" andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleGetOrientation:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = self;
    r21 = [r22 retain];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 statusBarOrientation];
    [r0 release];
    r8 = r23 - 0x3;
    if (r8 >= 0x0) goto loc_100736d04;

loc_100736cf8:
    r20 = @"portrait";
    goto loc_100736d14;

loc_100736d14:
    [r20 retain];
    goto loc_100736d1c;

loc_100736d1c:
    var_38 = **___stack_chk_guard;
    r23 = [[SupersonicLogManager sharedManager] retain];
    r24 = [[NSString stringWithFormat:@"handleGetOrientation: %@"] retain];
    [r23 log:r24 withLevel:0x1 withTag:0x9];
    [r24 release];
    [r23 release];
    r22 = [[r22 objectForKeyedSubscript:@"success"] retain];
    [r21 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
    r21 = [r0 retain];
    [r19 runCommand:r22 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r21 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100736d04:
    if (r8 >= 0x2) goto loc_100736e64;

loc_100736d0c:
    r20 = @"landscape";
    goto loc_100736d14;

loc_100736e64:
    r20 = 0x0;
    goto loc_100736d1c;
}

-(void)handleGetAppOrientationData:(void *)arg2 {
    r19 = [[arg2 objectForKeyedSubscript:@"success"] retain];
    r0 = [self nativeSessionConfiguration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [SSEOrientationContext applicationOrientationDataWithAppDelegateDataIfAllowed:[r0 allowOrientationFromAppDelegate]];
    r0 = [r0 retain];
    r23 = [[r0 dictionaryRepresentation] retain];
    [self runCommand:r19 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r23 release];
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)handleSetBackgroundColor:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = [[r19 objectForKeyedSubscript:r2] retain];
                    r0 = [SSAHelperMethods decodeFromPercentEscapeString:r23];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r23 release];
                    if ([r21 isEqualToString:r2] != 0x0) {
                            [@"#00000000" retain];
                            [r21 release];
                            r21 = @"#00000000";
                    }
                    r22 = [[SSAHelperMethods colorWithHexString:r21] retain];
                    r0 = [r20 webViewController];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    [r0 setBackgroundColor:r22];
                    [r0 release];
                    [r20 release];
                    [r22 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)handleSetUserUniqueId:(void *)arg2 {
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
    if (r19 == 0x0) goto loc_10073738c;

loc_10073712c:
    [@"" retain];
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    if (r25 == 0x0) goto loc_100737198;

loc_10073718c:
    r23 = @"userUniqueIdRV";
    goto loc_10073722c;

loc_10073722c:
    [r23 retain];
    [@"" release];
    goto loc_100737240;

loc_100737240:
    r25 = [[NSUserDefaults standardUserDefaults] retain];
    r26 = [[r19 objectForKeyedSubscript:@"uniqueId"] retain];
    [r25 setObject:r26 forKey:r23];
    [r26 release];
    [r25 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r24 = [[r19 objectForKeyedSubscript:@"success"] retain];
    r21 = [[r19 objectForKeyedSubscript:@"productType"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r22 = [r0 retain];
    [r20 runCommand:r24 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r22 release];
    [r21 release];
    [r24 release];
    [r23 release];
    goto loc_10073738c;

loc_10073738c:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100737198:
    r23 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r23);
    [r0 release];
    if (r25 == 0x0) goto loc_1007371e4;

loc_1007371d8:
    r23 = @"userUniqueIdIS";
    goto loc_10073722c;

loc_1007371e4:
    r23 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r23);
    [r0 release];
    if (r23 == 0x0) goto loc_1007373cc;

loc_100737224:
    r23 = @"userUniqueIdOW";
    goto loc_10073722c;

loc_1007373cc:
    r23 = @"";
    goto loc_100737240;
}

-(void)handleGetUserUniqueId:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100737624;

loc_10073741c:
    [@"" retain];
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:r2];
    [r0 release];
    if (r26 == 0x0) goto loc_1007374bc;

loc_100737480:
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    goto loc_100737534;

loc_100737534:
    r0 = [r0 retain];
    r26 = r0;
    if (r26 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r26;
            }
            else {
                    r0 = @"";
            }
    }
    r23 = [r0 retain];
    [@"" release];
    [r26 release];
    [r25 release];
    goto loc_100737564;

loc_100737564:
    r24 = [[r19 objectForKeyedSubscript:@"success"] retain];
    r21 = [[r19 objectForKeyedSubscript:@"productType"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_68 count:0x2];
    r22 = [r0 retain];
    [r20 runCommand:r24 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r22 release];
    [r21 release];
    [r24 release];
    [r23 release];
    goto loc_100737624;

loc_100737624:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1007374bc:
    r23 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r23);
    [r0 release];
    if (r26 == 0x0) goto loc_100737660;

loc_1007374fc:
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    goto loc_100737534;

loc_100737660:
    r23 = @selector(isEqualToString:);
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r23);
    [r0 release];
    r23 = @"";
    if (r25 != 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r25 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r25;
                    }
                    else {
                            r0 = @"";
                    }
            }
            r26 = [r0 retain];
            [@"" release];
            [r25 release];
            [r24 release];
            r23 = r26;
    }
    goto loc_100737564;
}

-(void)handleToggleUDIA:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r0 = [r2 objectForKeyedSubscript:@"getByFlag"];
            r0 = [r0 retain];
            r20 = [r0 intValue];
            [r0 release];
            r21 = [[NSUserDefaults standardUserDefaults] retain];
            r20 = [[NSNumber numberWithInt:r20] retain];
            [r21 setObject:r20 forKey:@"SSAAnalyticsFlag"];
            [r20 release];
            [r21 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            [r0 synchronize];
            [r19 release];
    }
    return;
}

-(void)handleAllowFileAccessFromFileURLs:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 webViewController] retain];
    r19 = [[arg2 objectForKeyedSubscript:@"allowFileAccess"] retain];
    [r22 release];
    [r21 allowFileAccessFromFileURLs:[r19 boolValue]];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)handleGetDeviceVolume:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r20 = [[SSEDeviceStatus alloc] init];
    r21 = [[arg2 objectForKeyedSubscript:@"success"] retain];
    [r23 release];
    r22 = [[r20 volume] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r23 = [r0 retain];
    [self runCommand:r21 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendFailCallbackToControllerWithErrorMsg:(void *)arg2 callbackName:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
    r22 = [r0 retain];
    [self runCommand:r19 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
    [r19 release];
    [r21 release];
    [r22 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleGetDemandSourceState:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r27 = [r0 retain];
            r24 = [ISProductContext convertProductNameToProductType:r27 error:&var_90];
            r22 = [var_90 retain];
            [r27 release];
            if (r22 != 0x0) {
                    r25 = [[r22 localizedDescription] retain];
                    r24 = [[NSString stringWithFormat:@"%@"] retain];
                    r23 = [[r19 objectForKeyedSubscript:r2] retain];
                    [r21 sendFailCallbackToControllerWithErrorMsg:r24 callbackName:r23];
                    [r23 release];
                    [r24 release];
                    r0 = r25;
            }
            else {
                    r0 = [r21 demandSourcesCollection];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 demandSourceForProductType:r24 demandSourceName:r20];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r27 release];
                    if (r24 != 0x0) {
                            r28 = [r24 mediationState];
                            r27 = [[r19 objectForKeyedSubscript:r2] retain];
                            r23 = [[r19 objectForKeyedSubscript:r2] retain];
                            r25 = [[NSNumber numberWithInteger:r28] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3];
                            r26 = [r0 retain];
                            [r21 runCommand:r27 andParameters:r26 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                            [r26 release];
                            [r25 release];
                            [r23 release];
                            r0 = r27;
                    }
                    else {
                            r23 = [[r19 objectForKeyedSubscript:r2] retain];
                            [r21 sendFailCallbackToControllerWithErrorMsg:@"demand source is not exist" callbackName:r23];
                            r0 = r23;
                    }
                    [r0 release];
                    r0 = r24;
            }
            [r0 release];
    }
    else {
            r22 = [[r19 objectForKeyedSubscript:r2] retain];
            [r21 sendFailCallbackToControllerWithErrorMsg:@"missing demand source name" callbackName:r22];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleGetUDIAWithCommand:(void *)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    var_B0 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [[@"success" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r19 isEqualToString:r2];
    [r26 release];
    [r25 release];
    if (r27 == 0x0) goto loc_10073788c;

loc_1007377ec:
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:@"savedSessions"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:@"inAppPurchasesArray"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    r0 = r21;
    goto loc_100737ddc;

loc_100737ddc:
    [r0 release];
    goto loc_100737de0;

loc_100737de0:
    [r20 release];
    [r19 release];
    return;

loc_10073788c:
    r24 = @selector(isEqualToString:);
    r26 = [[@"fail" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = r29;
    r25 = [r0 retain];
    r24 = objc_msgSend(r19, r24);
    [r25 release];
    [r26 release];
    if (r24 == 0x0) goto loc_1007379c8;

loc_1007378f8:
    r22 = [[SupersonicLogManager sharedManager] retain];
    r23 = @class(NSString);
    r24 = [[r20 objectForKeyedSubscript:@"errMsg"] retain];
    r25 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in getUDIA"] retain];
    r21 = [[r23 stringWithFormat:@"%@: %@"] retain];
    [r22 log:r21 withLevel:0x3 withTag:0x9];
    [r21 release];
    [r25 release];
    [r24 release];
    r0 = r22;
    goto loc_100737ddc;

loc_1007379c8:
    if (r20 == 0x0) goto loc_100737de0;

loc_1007379cc:
    r0 = [r20 objectForKeyedSubscript:@"getByFlag"];
    r0 = [r0 retain];
    [r0 intValue];
    [r0 release];
    var_80 = &var_88;
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x58 forKeys:r29 - 0x58 count:0x0];
    r29 = r29;
    r0 = [r0 retain];
    var_60 = [r0 mutableCopy];
    [r0 release];
    var_A0 = &var_A8;
    asm { sxtw       x24, w26 };
    if ((r24 & 0x1) != 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKey:@"inAppPurchasesArray"];
            r29 = r29;
            r26 = [r0 retain];
            [r27 release];
            if ([r26 count] != 0x0) {
                    r22 = 0x0;
                    r27 = r26;
            }
            else {
                    r0 = [NSArray arrayWithObjects:r29 - 0x58 count:0x0];
                    r29 = r29;
                    r27 = [r0 retain];
                    r22 = 0x1;
            }
            [*(var_80 + 0x28) setObject:r27 forKeyedSubscript:@"iaps"];
            if (r22 != 0x0) {
                    [r27 release];
            }
            *(int32_t *)(var_A0 + 0x18) = *(int32_t *)(var_A0 + 0x18) | 0x1;
            [r26 release];
    }
    if ((r24 & 0x8) == 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 arrayForKey:@"savedSessions"];
            r29 = r29;
            r26 = [r0 retain];
            [r27 release];
            if ([r26 count] != 0x0) {
                    r22 = 0x0;
                    r27 = r26;
            }
            else {
                    r0 = [NSArray arrayWithObjects:r29 - 0x58 count:0x0];
                    r29 = r29;
                    r27 = [r0 retain];
                    r22 = 0x1;
            }
            [*(var_80 + 0x28) setObject:r27 forKeyedSubscript:@"sessions"];
            if (r22 != 0x0) {
                    [r27 release];
            }
            [r26 release];
            if ((r24 & 0x4) != 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x58 forKeys:r29 - 0x58 count:0x0];
                    r29 = r29;
                    r25 = [r0 retain];
                    [*(var_80 + 0x28) setObject:r25 forKeyedSubscript:@"location"];
                    [r25 release];
                    r9 = *(int32_t *)(var_A0 + 0x18);
                    *(int32_t *)(var_A0 + 0x18) = r9 | 0x4;
                    if (r24 == (r9 | 0x4)) {
                            r24 = [[r20 objectForKeyedSubscript:r2] retain];
                            r26 = *(var_80 + 0x28);
                            r27 = @class(NSString);
                            r25 = [[@"success" capitalizedString] retain];
                            r27 = [[r27 stringWithFormat:@"%@%@"] retain];
                            r28 = @class(NSString);
                            r23 = [[@"fail" capitalizedString] retain];
                            r21 = [[r28 stringWithFormat:@"%@%@"] retain];
                            [var_B0 runCommand:r24 andParameters:r26 successMethodName:r27 failMethodName:r21 decodeFirst:0x0];
                            [r21 release];
                            [r23 release];
                            [r27 release];
                            [r25 release];
                            [r24 release];
                    }
            }
    }
    else {
            *(int32_t *)(var_A0 + 0x18) = *(int32_t *)(var_A0 + 0x18) | 0x8;
            if ((r24 & 0x4) != 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x58 forKeys:r29 - 0x58 count:0x0];
                    r29 = r29;
                    r25 = [r0 retain];
                    [*(var_80 + 0x28) setObject:r25 forKeyedSubscript:@"location"];
                    [r25 release];
                    r9 = *(int32_t *)(var_A0 + 0x18);
                    *(int32_t *)(var_A0 + 0x18) = r9 | 0x4;
                    if (r24 == (r9 | 0x4)) {
                            r24 = [[r20 objectForKeyedSubscript:r2] retain];
                            r26 = *(var_80 + 0x28);
                            r27 = @class(NSString);
                            r25 = [[@"success" capitalizedString] retain];
                            r27 = [[r27 stringWithFormat:@"%@%@"] retain];
                            r28 = @class(NSString);
                            r23 = [[@"fail" capitalizedString] retain];
                            r21 = [[r28 stringWithFormat:@"%@%@"] retain];
                            [var_B0 runCommand:r24 andParameters:r26 successMethodName:r27 failMethodName:r21 decodeFirst:0x0];
                            [r21 release];
                            [r23 release];
                            [r27 release];
                            [r25 release];
                            [r24 release];
                    }
            }
    }
    _Block_object_dispose(&var_A8, 0x8);
    _Block_object_dispose(&var_88, 0x8);
    r0 = var_60;
    goto loc_100737ddc;
}

-(void)handleGetBandwidth:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[SSACommManager sharedManager] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 testBandwidthWithCompletionBlock:&var_50];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)handleGetUserData:(void *)arg2 {
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
    r19 = self;
    r21 = [arg2 retain];
    r23 = [[NSUserDefaults standardUserDefaults] retain];
    r26 = [[arg2 objectForKeyedSubscript:@"key"] retain];
    r20 = [[r23 objectForKey:r26] retain];
    [r26 release];
    [r23 release];
    r23 = [[arg2 objectForKeyedSubscript:@"success"] retain];
    r0 = [arg2 objectForKeyedSubscript:@"key"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    r8 = @"{}";
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r20;
            }
            else {
                    r8 = @"{}";
            }
    }
    var_48 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
    r21 = [r0 retain];
    [r19 runCommand:r23 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r21 release];
    [r22 release];
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleSetUserDate:(void *)arg2 {
    r31 = r31 - 0x90;
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
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r24 release];
                    if (r0 != 0x0) {
                            r25 = [[NSUserDefaults standardUserDefaults] retain];
                            r26 = [[r19 objectForKeyedSubscript:r2] retain];
                            r27 = [[r19 objectForKeyedSubscript:r2] retain];
                            [r25 setObject:r26 forKey:r27];
                            [r27 release];
                            [r26 release];
                            [r25 release];
                            r0 = @class(NSUserDefaults);
                            r0 = [r0 standardUserDefaults];
                            r0 = [r0 retain];
                            [r0 synchronize];
                            [r0 release];
                            r24 = [[r19 objectForKeyedSubscript:r2] retain];
                            r22 = [[r19 objectForKeyedSubscript:r2] retain];
                            r21 = [[r19 objectForKeyedSubscript:r2] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
                            r23 = [r0 retain];
                            [r20 runCommand:r24 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
                            [r23 release];
                            [r21 release];
                            [r22 release];
                            r0 = r24;
                    }
                    else {
                            r21 = [[r19 objectForKeyedSubscript:r2] retain];
                            [r20 runCommand:r21 andParameters:0x0 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                            r0 = r21;
                    }
            }
            else {
                    r21 = [[r19 objectForKeyedSubscript:r2] retain];
                    [r20 runCommand:r21 andParameters:0x0 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                    r0 = r21;
            }
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleGetApplicationInfo:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"productType"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r25 = [ISProductContext convertProductNameToProductType:r23 error:&var_58];
    r20 = [var_58 retain];
    [r23 release];
    if (r20 == 0x0) goto loc_100738ec4;

loc_100738e28:
    r24 = [[r20 localizedDescription] retain];
    r23 = [[NSString stringWithFormat:@"%@"] retain];
    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
    [r21 sendFailCallbackToControllerWithErrorMsg:r23 callbackName:r22];
    [r22 release];
    [r23 release];
    r0 = r24;
    goto loc_100739560;

loc_100739560:
    [r0 release];
    [r20 release];
    [r19 release];
    return;

loc_100738ec4:
    r23 = [NSMutableDictionary new];
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    [r0 retain];
    [r23 setObject:r2 forKey:r3];
    [r27 release];
    if (r25 == 0x0) goto loc_100739010;

loc_100738f28:
    if ((r25 | 0x1) != 0x3) goto loc_1007391a0;

loc_100738f34:
    r24 = @selector(setObject:forKey:);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_parametersForOW));
    [[*(r21 + r26) appKey] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    [[*(r21 + r26) userId] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    r0 = *(r21 + r26);
    r0 = [r0 additionalParameters];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394f0;

loc_100738fdc:
    r0 = *(r21 + r26);
    r0 = [r0 additionalParameters];
    r29 = r29;
    r24 = [r0 retain];
    [r23 addEntriesFromDictionary:r24];
    r0 = r24;
    goto loc_1007394ec;

loc_1007394ec:
    [r0 release];
    goto loc_1007394f0;

loc_1007394f0:
    if (r23 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"success"];
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"fail"];
    }
    r22 = [r0 retain];
    [r21 runCommand:r22 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
    [r22 release];
    r0 = r23;
    goto loc_100739560;

loc_1007391a0:
    if (r25 != 0x1) goto loc_100739338;

loc_1007391a8:
    r24 = @selector(setObject:forKey:);
    [[*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_parametersForIS))) appKey] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    [[*(r21 + r26) userId] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    r0 = [r19 objectForKeyedSubscript:@"demandSourceName"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394f0;

loc_100739250:
    r24 = @selector(setObject:forKey:);
    r26 = [[r21 demandSourcesCollection] retain];
    r28 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    r25 = [[r26 demandSourceForProductType:0x1 demandSourceName:r28] retain];
    [r28 release];
    [r26 release];
    [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    objc_msgSend(r23, r24);
    [r26 release];
    r0 = [r25 extraParams];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394e8;

loc_100739324:
    r0 = [r25 extraParams];
    r29 = r29;
    goto loc_1007394c4;

loc_1007394c4:
    r24 = [r0 retain];
    [r23 addEntriesFromDictionary:r24];
    [r24 release];
    goto loc_1007394e8;

loc_1007394e8:
    r0 = r25;
    goto loc_1007394ec;

loc_100739338:
    r24 = @selector(setObject:forKey:);
    [[*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_parametersForBN))) appKey] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    [[*(r21 + r26) userId] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    r0 = [r19 objectForKeyedSubscript:@"demandSourceName"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394f0;

loc_1007393e0:
    r24 = @selector(setObject:forKey:);
    r26 = [[r21 demandSourcesCollection] retain];
    r28 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    r25 = [[r26 demandSourceForProductType:0x4 demandSourceName:r28] retain];
    [r28 release];
    [r26 release];
    [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    objc_msgSend(r23, r24);
    [r26 release];
    r0 = [r25 extraParams];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394e8;

loc_1007394b4:
    r0 = [r25 extraParams];
    r29 = r29;
    goto loc_1007394c4;

loc_100739010:
    r24 = @selector(setObject:forKey:);
    [[*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_parametersForRV))) appKey] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    [[*(r21 + r26) userId] retain];
    objc_msgSend(r23, r24);
    [r25 release];
    r0 = [r19 objectForKeyedSubscript:@"demandSourceName"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394f0;

loc_1007390b8:
    r24 = @selector(setObject:forKey:);
    r26 = [[r21 demandSourcesCollection] retain];
    r28 = [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    r25 = [[r26 demandSourceForProductType:0x0 demandSourceName:r28] retain];
    [r28 release];
    [r26 release];
    [[r19 objectForKeyedSubscript:@"demandSourceName"] retain];
    objc_msgSend(r23, r24);
    [r26 release];
    r0 = [r25 extraParams];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007394e8;

loc_10073918c:
    r0 = [r25 extraParams];
    r29 = r29;
    goto loc_1007394c4;
}

-(void)handleGetDeviceStatus:(void *)arg2 {
    r31 = r31 - 0x90;
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
    var_78 = [arg2 retain];
    r20 = [[SSAHelperMethods getGeneralParamsDic] retain];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 getReachabilityObject];
    r0 = [r0 retain];
    r22 = [[r0 getDeviceReachabilityType] retain];
    [r0 release];
    [r19 release];
    [r20 setObject:r22 forKey:@"connectionType"];
    r0 = [NSLocale preferredLanguages];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r23 = [[r0 uppercaseString] retain];
    [r0 release];
    [r19 release];
    [r20 setObject:r23 forKey:@"deviceLanguage"];
    var_80 = self;
    r0 = [self nativeSessionConfiguration];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [SSEOrientationContext applicationOrientationDataWithAppDelegateDataIfAllowed:[r0 allowOrientationFromAppDelegate]];
    r0 = [r0 retain];
    r25 = [[r0 dictionaryRepresentation] retain];
    [r0 release];
    [r26 release];
    [r20 setObject:r25 forKey:@"orientationRestriction"];
    r0 = [ISNAppOrientationHolder sharedInstance];
    r0 = [r0 retain];
    r26 = [[ISOrientationUtillis lockedStateAsControllerString:[ISOrientationUtillis orientationLockedStateFromOrientation:[r0 appOrientation]]] retain];
    [r0 release];
    r19 = [r26 copy];
    [r20 setObject:r19 forKey:@"appOrientation"];
    [r19 release];
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 scale];
    [r0 release];
    r27 = [[NSNumber numberWithDouble:r19] retain];
    [r20 setObject:r27 forKey:@"deviceScreenSize[width]"];
    [r27 release];
    r27 = [[NSNumber numberWithDouble:r27] retain];
    [r20 setObject:r27 forKey:@"deviceScreenSize[height]"];
    [r27 release];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithDouble:r27];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 setObject:r19 forKey:@"deviceScreenScale"];
    [r19 release];
    if (([SSAHelperMethods isIphoneAppOnIpadDevice] & 0x1) != 0x0) {
            r1 = @selector(numberWithInt:);
            r0 = @class(NSNumber);
            r2 = 0x1;
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
    }
    else {
            r1 = @selector(numberWithInt:);
            r0 = @class(NSNumber);
            r2 = 0x0;
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
    }
    r19 = [r0 retain];
    [r20 setObject:r19 forKey:@"iphoneAppOnIpadDevice"];
    [r19 release];
    r0 = [NSNumber numberWithUnsignedLongLong:[SSAHelperMethods getFreeDiskspace]];
    r29 = r29;
    r19 = [r0 retain];
    [r20 setObject:r19 forKey:@"diskFreeSize"];
    [r19 release];
    r0 = [SSEDeviceStatus alloc];
    r0 = [r0 init];
    r27 = r0;
    if ([r0 jailBroken] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"false";
            }
            else {
                    r2 = @"true";
            }
    }
    [r20 setObject:r2 forKey:@"unLocked"];
    r19 = [[r27 volume] retain];
    [r20 setObject:r19 forKey:@"deviceVolume"];
    [r19 release];
    r19 = [[r27 batteryLevel] retain];
    [r20 setObject:r19 forKey:@"batteryLevel"];
    [r19 release];
    r19 = [[r27 mobileCountryCode] retain];
    [r20 setObject:r19 forKey:@"mcc"];
    [r19 release];
    r19 = [[r27 mobileNetworkCode] retain];
    [r20 setObject:r19 forKey:@"mnc"];
    [r19 release];
    r0 = [SSEApplicationContext getAllowsArbitraryLoadsFlagInATS];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 != 0x0) {
            [r20 setObject:r28 forKey:@"allowArbitraryLoads"];
    }
    r0 = [SSEApplicationContext getAllowsArbitraryLoadsInWebContentFlagInATS];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [r20 setObject:r19 forKey:@"allowArbitraryLoadsInWebContent"];
    }
    r0 = [SSEApplicationContext getAppVersion];
    r29 = r29;
    r21 = [r0 retain];
    [r20 setObject:r21 forKey:@"appVersion"];
    [r21 release];
    if (r20 != 0x0) {
            r24 = var_78;
            r21 = [[r24 objectForKeyedSubscript:r2] retain];
            r0 = var_80;
    }
    else {
            r24 = var_78;
            r21 = [[r24 objectForKeyedSubscript:r2] retain];
            r0 = var_80;
    }
    [r0 runCommand:r2 andParameters:r3 successMethodName:r4 failMethodName:r5 decodeFirst:r6];
    [r21 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r24 release];
    return;
}

-(void)handleGetUserCreditsWithCommand:(void *)arg2 parameters:(void *)arg3 {
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
    r20 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r25 = [[@"fail" capitalizedString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r21 = [arg2 isEqualToString:r2];
    [r23 release];
    [r24 release];
    [r25 release];
    if (r21 != 0x0) {
            r23 = [[SupersonicLogManager sharedManager] retain];
            r24 = @class(NSString);
            r25 = [[r19 objectForKeyedSubscript:@"errMsg"] retain];
            r26 = [[SSAHelperMethods decodeFromPercentEscapeString:@"Error in Get User Credits"] retain];
            r22 = [[r24 stringWithFormat:@"%@: %@"] retain];
            [r23 log:r22 withLevel:0x3 withTag:0x9];
            [r22 release];
            [r26 release];
            [r25 release];
            [r23 release];
            r0 = [r19 objectForKeyedSubscript:@"errCode"];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"errCode"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 integerValue];
                    [r0 release];
            }
            else {
                    r22 = 0x0;
            }
            [r23 release];
            r0 = [r19 objectForKeyedSubscript:@"errMsg"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r23 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r23;
                    }
                    else {
                            r0 = @"Get User Credits failed";
                    }
            }
            r21 = [r0 retain];
            [r23 release];
            r23 = [NSError alloc];
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r22 = [r23 initWithDomain:@"SSAErrorDomain" code:r22 userInfo:r24];
            [r24 release];
            r0 = [r20 offerWallDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 respondsToSelector:@selector(ssaOfferwallDidFailGettingCreditWithError:)];
            [r0 release];
            if (r26 != 0x0) {
                    r0 = [r20 offerWallDelegate];
                    r0 = [r0 retain];
                    [r0 ssaOfferwallDidFailGettingCreditWithError:r22];
                    [r0 release];
            }
            [r22 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleSaveFile:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"path"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 rangeOfString:r2 options:r3];
    [r0 release];
    if (r25 != 0x7fffffffffffffff) {
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_parametersForRV));
            r0 = *(r19 + r28);
            r0 = [r0 userId];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = @selector(userId);
                    r25 = [[NSUserDefaults standardUserDefaults] retain];
                    [objc_msgSend(*(r19 + r28), r24) retain];
                    r0 = [NSString stringWithFormat:@"%@_%@"];
                    r29 = r29;
                    [r0 retain];
                    [r25 setObject:r2 forKey:r3];
                    [r26 release];
                    [r24 release];
                    [r25 release];
            }
            r0 = *(r19 + r28);
            r0 = [r0 appKey];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r25 = [[NSUserDefaults standardUserDefaults] retain];
                    [[*(r19 + r28) appKey] retain];
                    r0 = [NSString stringWithFormat:@"%@_%@"];
                    r29 = r29;
                    [r0 retain];
                    [r25 setObject:r2 forKey:r3];
                    [r23 release];
                    [r24 release];
                    [r25 release];
            }
    }
    r0 = [r20 objectForKeyedSubscript:@"path"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 rangeOfString:r2 options:r3];
    [r0 release];
    if (r25 != 0x7fffffffffffffff) {
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_parametersForIS));
            r0 = *(r19 + r27);
            r0 = [r0 userId];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = @selector(userId);
                    r25 = [[NSUserDefaults standardUserDefaults] retain];
                    [objc_msgSend(*(r19 + r27), r24) retain];
                    r0 = [NSString stringWithFormat:@"%@_%@"];
                    r29 = r29;
                    [r0 retain];
                    [r25 setObject:r2 forKey:r3];
                    [r26 release];
                    [r24 release];
                    [r25 release];
            }
            r0 = *(r19 + r27);
            r0 = [r0 appKey];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r25 = [[NSUserDefaults standardUserDefaults] retain];
                    [[*(r19 + r27) appKey] retain];
                    r0 = [NSString stringWithFormat:@"%@_%@"];
                    r29 = r29;
                    [r0 retain];
                    [r25 setObject:r2 forKey:r3];
                    [r23 release];
                    [r24 release];
                    [r25 release];
            }
    }
    r0 = [r20 objectForKeyedSubscript:@"path"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 rangeOfString:r2 options:r3];
    [r0 release];
    if (r22 != 0x7fffffffffffffff) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_parametersForOW));
            r0 = *(r19 + r26);
            r0 = [r0 userId];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = @selector(userId);
                    r24 = [[NSUserDefaults standardUserDefaults] retain];
                    [objc_msgSend(*(r19 + r26), r22) retain];
                    r0 = [NSString stringWithFormat:@"%@_%@"];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKey:r3];
                    [r25 release];
                    [r22 release];
                    [r24 release];
            }
            r0 = *(r19 + r26);
            r0 = [r0 appKey];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = [[NSUserDefaults standardUserDefaults] retain];
                    [[*(r19 + r26) appKey] retain];
                    r0 = [NSString stringWithFormat:@"%@_%@"];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKey:r3];
                    [r23 release];
                    [r22 release];
                    [r24 release];
            }
    }
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r22 = [[r19 dataManager] retain];
    r21 = [[r20 objectForKeyedSubscript:@"file"] retain];
    r23 = [[SSAHelperMethods decodeFromPercentEscapeString:r21] retain];
    r0 = [r20 retain];
    r20 = [r0 retain];
    [r22 getURL:r23 timeout:&var_90 completionHandler:&var_C0 fail:r5];
    [r23 release];
    [r21 release];
    [r22 release];
    [r0 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)handleDeleteFolder:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 dataManager];
    r0 = [r0 retain];
    r28 = r0;
    r22 = [[r0 downloadMgr] retain];
    r23 = [[r19 objectForKeyedSubscript:@"path"] retain];
    r0 = [SSAHelperMethods decodeFromPercentEscapeString:r23];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r22 deleteEntireFolder:r25 error:&var_A0];
    r21 = [var_A0 retain];
    [r25 release];
    [r23 release];
    [r22 release];
    [r28 release];
    if (r21 != 0x0) {
            r0 = [r21 localizedDescription];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r28 = [[r19 objectForKeyedSubscript:@"path"] retain];
                    r22 = [[r21 localizedDescription] retain];
                    r23 = [[NSNumber numberWithInteger:[r21 code]] retain];
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r23 release];
                    [r22 release];
                    r0 = r28;
            }
            else {
                    r22 = [[r19 objectForKeyedSubscript:@"path"] retain];
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r27 = [r0 retain];
                    r0 = r22;
            }
    }
    else {
            r22 = [[r19 objectForKeyedSubscript:@"path"] retain];
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r27 = [r0 retain];
            r0 = r22;
    }
    [r0 release];
    if ((r26 & 0x1) != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"success"];
            r29 = r29;
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"fail"];
            r29 = r29;
    }
    var_58 = **___stack_chk_guard;
    r22 = [r0 retain];
    [r20 runCommand:r22 andParameters:r27 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r22 release];
    r0 = [r20 dataManager];
    r0 = [r0 retain];
    r22 = [[r0 downloadMgr] retain];
    r24 = [[r19 objectForKeyedSubscript:@"path"] retain];
    r23 = [[SSAHelperMethods decodeFromPercentEscapeString:r2] retain];
    [r22 setLastUpdateTimeForPath:r23 andTimestamp:0x0];
    [r23 release];
    [r24 release];
    [r22 release];
    [r0 release];
    [r27 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleDeleteFile:(void *)arg2 {
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
    r24 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = @class(SSAHelperMethods);
    r23 = [[r0 objectForKeyedSubscript:@"path"] retain];
    r22 = [[r20 decodeFromPercentEscapeString:r23] retain];
    [r23 release];
    r20 = @class(SSAHelperMethods);
    r25 = [[r19 objectForKeyedSubscript:@"file"] retain];
    r20 = [[r20 decodeFromPercentEscapeString:r25] retain];
    [r25 release];
    r0 = [r24 dataManager];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 downloadMgr];
    r0 = [r0 retain];
    var_88 = r22;
    var_98 = r20;
    r20 = [r0 deleteFileWithName:r20 atPath:r22 error:&var_80];
    r25 = [var_80 retain];
    [r0 release];
    [r26 release];
    r26 = [[r19 objectForKeyedSubscript:@"path"] retain];
    r23 = [[r19 objectForKeyedSubscript:@"file"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r28 = [r0 mutableCopy];
    [r0 release];
    [r23 release];
    [r26 release];
    if (r25 != 0x0) {
            r0 = [r25 localizedDescription];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r25 localizedDescription];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r28 setObject:r23 forKeyedSubscript:@"errMsg"];
                    [r23 release];
            }
    }
    if ((r20 & 0x1) != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"success"];
            r29 = r29;
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"fail"];
            r29 = r29;
    }
    var_58 = **___stack_chk_guard;
    r20 = [r0 retain];
    [r24 runCommand:r20 andParameters:r28 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r20 release];
    r0 = [r24 dataManager];
    r0 = [r0 retain];
    r23 = [[r0 downloadMgr] retain];
    r21 = [[r19 objectForKeyedSubscript:@"path"] retain];
    r22 = [[SSAHelperMethods decodeFromPercentEscapeString:r2] retain];
    [r23 setLastUpdateTimeForPath:r22 andTimestamp:0x0];
    [r22 release];
    [r21 release];
    [r23 release];
    [r0 release];
    [r28 release];
    [var_98 release];
    [var_88 release];
    [r25 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)windowDidBecomeVisible:(void *)arg2 {
    return;
}

-(void *)getKeyInDictionaryWithPrefix:(void *)arg2 andPrefix:(void *)arg3 {
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
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[NSMutableArray alloc] init];
    r0 = [r21 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r26 = *(0x0 + r22 * 0x8);
                            if ([r26 rangeOfString:r19] != 0x7fffffffffffffff) {
                                    [r20 addObject:r2];
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(r21, var_120);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)appDidEnterBackground:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self webViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
            r20 = [r0 retain];
            [r19 runCommand:@"enterBackground" andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)appWillEnterForeground:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self webViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [@(NO) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
            r21 = [r0 retain];
            [r19 runCommand:@"enterForeground" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)reachabilityChanged:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 getDeviceReachabilityType];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ([r19 controllerState] == 0x4) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
            r21 = [r0 retain];
            [r19 runCommand:@"deviceStatusChanged" andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)appWillResignActive:(void *)arg2 {
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
    r19 = self;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:@"SSAAnalyticsFlag"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 intValue];
    [r0 release];
    [r20 release];
    if ((r22 & 0x8) == 0x0) {
            [r19 saveCurrentSession];
    }
    r0 = [r19 webViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [@(NO) retain];
            r23 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            [r19 runCommand:@"enterForeground" andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r23 release];
            [r22 release];
            r21 = [@(NO) retain];
            r0 = @class(NSDictionary);
            r0 = [r0 dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
            r20 = [r0 retain];
            [r19 runCommand:@"viewableChange" andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r20 release];
            [r21 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)audioHardwareRouteChanged:(void *)arg2 {
    r31 = r31 - 0x90;
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
    if ([r20 controllerState] == 0x4) {
            r0 = [r20 webViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 userInfo];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 valueForKey:**_AVAudioSessionRouteChangeReasonKey];
                    r0 = [r0 retain];
                    r23 = [r0 integerValue];
                    [r0 release];
                    if (r23 == 0x2) {
                            r1 = &var_58;
                    }
                    else {
                            r1 = &var_80;
                    }
                    dispatch_async(*__dispatch_main_q, r1);
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)appDidBecomeActive:(void *)arg2 {
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
    r19 = self;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:@"SSAAnalyticsFlag"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 intValue];
    [r0 release];
    [r20 release];
    if ((r22 & 0x8) == 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            r20 = r0;
            [r0 timeIntervalSince1970];
            r0 = [NSNumber numberWithDouble:@"SSAAnalyticsFlag"];
            r29 = r29;
            r21 = [r0 retain];
            r8 = @"launched";
            if ([r19 isComingBackFromBG] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"launched";
                    }
                    else {
                            r8 = @"backFromBG";
                    }
            }
            r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 mutableCopy];
            [r19 setCurrentSession:r23];
            [r23 release];
            [r0 release];
            [r21 release];
            [r20 release];
    }
    [r19 setIsComingBackFromBG:0x1];
    r0 = [r19 webViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [@(YES) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1];
            r29 = r29;
            r24 = [r0 retain];
            [r19 runCommand:@"enterForeground" andParameters:r24 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r24 release];
            [r23 release];
            if ([r19 isAnyViewPresented] != 0x0) {
                    r21 = [@(YES) retain];
                    r0 = @class(NSDictionary);
                    r0 = [r0 dictionaryWithObjects:&var_80 forKeys:&var_88 count:0x1];
                    r20 = [r0 retain];
                    [r19 runCommand:@"viewableChange" andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
                    [r20 release];
                    [r21 release];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)closeWebViewIsSecondaryWebview:(bool)arg2 withParametersDict:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r19 = [arg3 retain];
    if (arg2 == 0x0) goto loc_10073da4c;

loc_10073da24:
    r20 = [[r20 supersonicAdsView] retain];
    r1 = @selector(moveSecondaryToFrontAndSendCloseMessage);
    goto loc_10073dbe4;

loc_10073dbe4:
    objc_msgSend(r20, r1);
    r0 = r20;
    goto loc_10073dbf0;

loc_10073dbf0:
    [r0 release];
    [r19 release];
    return;

loc_10073da4c:
    r0 = [r19 objectForKeyedSubscript:@"standaloneView"];
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"hybridView"];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    if (r24 == 0x0) goto loc_10073db24;

loc_10073dac8:
    r21 = [[r20 supersonicAdsView] retain];
    goto loc_10073dbb0;

loc_10073dbb0:
    [r21 hideSuperSonicAdsViewWithCompletionHandler:r2];
    r0 = r21;
    goto loc_10073dbf0;

loc_10073db24:
    if (r21 == 0x0) goto loc_10073dbc0;

loc_10073db28:
    r0 = [r20 splitViewCtrl];
    r0 = [r0 retain];
    [r0 hide];
    [r0 release];
    r21 = [[r20 supersonicAdsView] retain];
    goto loc_10073dbb0;

loc_10073dbc0:
    r20 = [[r20 viewController] retain];
    r1 = @selector(hide);
    goto loc_10073dbe4;
}

-(void)saveCurrentSession {
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
    r19 = self;
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r22 = [r20 currentReachabilityStatus];
    [@"" retain];
    if (r22 == 0x2) goto loc_10073d59c;

loc_10073d584:
    if (r22 == 0x1) goto loc_10073d5a8;

loc_10073d58c:
    r21 = @"";
    if (r22 != 0x0) goto loc_10073d708;

loc_10073d590:
    r21 = @"None";
    goto loc_10073d688;

loc_10073d688:
    [r21 retain];
    r0 = @"";
    goto loc_10073d704;

loc_10073d704:
    [r0 release];
    goto loc_10073d708;

loc_10073d708:
    r0 = [r19 currentSession];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 mutableCopy];
            [r19 setCurrentSession:r24];
            [r24 release];
            [r0 release];
    }
    r0 = [r19 currentSession];
    r0 = [r0 retain];
    [r0 setObject:r21 forKeyedSubscript:@"connectivity"];
    [r0 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r25 = r0;
    [r0 timeIntervalSince1970];
    r24 = [[NSNumber numberWithDouble:r21] retain];
    r0 = [r19 currentSession];
    r0 = [r0 retain];
    [r0 setObject:r24 forKeyedSubscript:@"sessionEndTime"];
    [r0 release];
    [r24 release];
    [r25 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r25 release];
    if (r23 != 0x0) {
            r25 = [r23 mutableCopy];
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-104] count:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 mutableCopy];
            [r0 release];
    }
    r22 = [[r19 currentSession] retain];
    [r25 addObject:r22];
    [r22 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r25 forKey:@"savedSessions"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    [r19 setCurrentSession:0x0];
    [r25 release];
    [r23 release];
    [r21 release];
    [r20 release];
    return;

loc_10073d5a8:
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 compare:@"7.0" options:0x40];
    [r0 release];
    [r21 release];
    if (r23 == -0x1) goto loc_10073d680;

loc_10073d614:
    r0 = [CTTelephonyNetworkInfo new];
    r22 = r0;
    r0 = [r0 currentRadioAccessTechnology];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    if (r25 != 0x0) {
            r21 = @"2G";
    }
    else {
            r23 = @selector(isEqualToString:);
            r0 = [r22 currentRadioAccessTechnology];
            r29 = r29;
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r23);
            [r0 release];
            if (r23 != 0x0) {
                    r21 = @"4G";
            }
            else {
                    r21 = @"3G";
            }
    }
    [r21 retain];
    [@"" release];
    r0 = r22;
    goto loc_10073d704;

loc_10073d680:
    r21 = @"3G";
    goto loc_10073d688;

loc_10073d59c:
    r21 = @"Wifi";
    goto loc_10073d688;
}

-(bool)isAnyViewPresented {
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
    r0 = [self viewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isPresented] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r0 = [r21 splitViewCtrl];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (([r0 isPresented] & 0x1) != 0x0) {
                    r21 = 0x1;
            }
            else {
                    r0 = [r21 presenterJSInterfaceHandler];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 productPresenter];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (([r0 isCurrentlyPresented] & 0x1) != 0x0) {
                            r21 = 0x1;
                    }
                    else {
                            r0 = [r21 supersonicAdsView];
                            r0 = [r0 retain];
                            r21 = [r0 isPresented];
                            [r0 release];
                    }
                    [r24 release];
                    [r23 release];
            }
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)stopForceCloseTimerFromJsParams:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"standaloneView"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 boolValue] != 0x0) goto loc_10073de24;

loc_10073ddf0:
    r0 = [r19 objectForKeyedSubscript:@"hybridView"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (([r0 boolValue] & 0x1) == 0x0) goto loc_10073de94;

loc_10073de1c:
    [r22 release];
    goto loc_10073de24;

loc_10073de24:
    [r21 release];
    r0 = [r20 supersonicAdsView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 forceCloseTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    goto loc_10073de74;

loc_10073de74:
    [r20 release];
    [r19 release];
    return;

loc_10073de94:
    r0 = [r20 nativeSessionConfiguration];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 supportViewControllerFromAdapter];
    [r0 release];
    [r22 release];
    [r21 release];
    if ((r24 & 0x1) == 0x0) {
            r0 = [r20 viewController];
            r0 = [r0 retain];
            r20 = r0;
            [r0 forceCloseTimer];
    }
    else {
            r0 = [r20 supersonicAdsView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 forceCloseTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
    }
    goto loc_10073de74;
}

-(void *)getPresentedViewController {
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
    r0 = [self nativeSessionConfiguration];
    r0 = [r0 retain];
    r22 = [r0 supportViewControllerFromAdapter];
    [r0 release];
    r0 = [r19 splitViewCtrl];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r22 == 0x0) goto loc_10073dfcc;

loc_10073df78:
    if (r21 == 0x0) goto loc_10073e020;

loc_10073df7c:
    r0 = [r19 splitViewCtrl];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isPresented];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_10073e028;

loc_10073dfb8:
    r0 = [r19 splitViewCtrl];
    goto loc_10073e158;

loc_10073e158:
    r19 = [r0 retain];
    goto loc_10073e280;

loc_10073e280:
    r0 = [r19 autorelease];
    return r0;

loc_10073e028:
    r0 = [r19 presenterJSInterfaceHandler];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 productPresenter];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isCurrentlyPresented];
    [r0 release];
    [r22 release];
    if (r24 == 0x0) goto loc_10073e27c;

loc_10073e088:
    r0 = [r19 presenterJSInterfaceHandler];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 productPresenter];
    r0 = [r0 retain];
    r19 = [[r0 presentedViewController] retain];
    [r0 release];
    goto loc_10073e0d4;

loc_10073e0d4:
    [r20 release];
    goto loc_10073e280;

loc_10073e27c:
    r19 = 0x0;
    goto loc_10073e280;

loc_10073e020:
    [r21 release];
    goto loc_10073e028;

loc_10073dfcc:
    if (r21 == 0x0) goto loc_10073e0e0;

loc_10073dfd0:
    r0 = [r19 splitViewCtrl];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isPresented];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_10073e0e8;

loc_10073e00c:
    r0 = [r19 splitViewCtrl];
    goto loc_10073e158;

loc_10073e0e8:
    r0 = [r19 viewController];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10073e164;

loc_10073e10c:
    r0 = [r19 viewController];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isPresented];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_10073e16c;

loc_10073e148:
    r0 = [r19 viewController];
    goto loc_10073e158;

loc_10073e16c:
    r0 = [r19 supersonicAdsView];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10073e274;

loc_10073e190:
    r0 = [r19 supersonicAdsView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isPresented] == 0x0) goto loc_10073e26c;

loc_10073e1b8:
    r0 = [r19 supersonicAdsView];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 nextResponder];
    r29 = r29;
    r25 = [r0 retain];
    [UIViewController class];
    r26 = [r25 isKindOfClass:r2];
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    if (r26 == 0x0) goto loc_10073e27c;

loc_10073e23c:
    r0 = [r19 supersonicAdsView];
    r0 = [r0 retain];
    r20 = r0;
    r19 = [[r0 nextResponder] retain];
    goto loc_10073e0d4;

loc_10073e26c:
    [r22 release];
    goto loc_10073e274;

loc_10073e274:
    [r21 release];
    goto loc_10073e27c;

loc_10073e164:
    [r21 release];
    goto loc_10073e16c;

loc_10073e0e0:
    [r21 release];
    goto loc_10073e0e8;
}

-(void)handleGetCachedFilesMap:(void *)arg2 string:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2e0;
    r27 = self;
    r22 = [arg2 retain];
    r0 = [r27 dataManager];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 downloadMgr] retain];
    r25 = [[r22 objectForKeyedSubscript:@"path"] retain];
    r26 = [[SSAHelperMethods decodeFromPercentEscapeString:r25] retain];
    r0 = [r24 getFolderFiles:r26];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            var_2A8 = r21;
            var_2E8 = r22;
            r0 = [r27 dataManager];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 downloadMgr];
            r0 = [r0 retain];
            r28 = [[r0 getInstanceCacheFolderUseRoot:0x1] retain];
            r21 = [[NSString stringWithFormat:@"%@/%@"] retain];
            [r28 release];
            [r0 release];
            [r26 release];
            r25 = [[SupersonicLogManager sharedManager] retain];
            var_2F0 = r21;
            r26 = [[NSString stringWithFormat:@"%@"] retain];
            [r25 log:r26 withLevel:0x1 withTag:0x5];
            [r26 release];
            [r25 release];
            r26 = @class(NSString);
            var_2E0 = r27;
            r0 = [r27 dataManager];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 downloadMgr];
            r0 = [r0 retain];
            r20 = r0;
            r23 = [[r0 getInstanceCacheFolderUseRoot:0x1] retain];
            r24 = [[r26 stringWithFormat:@"%@/%@"] retain];
            r0 = [NSMutableDictionary dictionaryWithContentsOfFile:r24];
            r29 = r29;
            r25 = [r0 retain];
            [r24 release];
            [r23 release];
            [r20 release];
            [r19 release];
            *(int128_t *)(&stack[-759] + 0xff) = q0;
            *(int128_t *)(&stack[-775] + 0xff) = q0;
            *(int128_t *)(&stack[-791] + 0xff) = q0;
            *(int128_t *)(&stack[-807] + 0xff) = q0;
            r0 = [r25 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_2B0 = r0;
            var_2D8 = r1;
            r19 = objc_msgSend(r0, r1);
            if (r19 != 0x0) {
                    r20 = *var_208;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_208 != r20) {
                                            objc_enumerationMutation(var_2B0);
                                    }
                                    r28 = @selector(setObject:forKey:);
                                    r22 = [[var_2A8 valueForKeyPath:[[*(var_210 + r23 * 0x8) stringByReplacingOccurrencesOfString:@"/" withString:@"."] retain]] retain];
                                    r0 = [var_2B0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r22, r28);
                                    [r24 release];
                                    [r22 release];
                                    [r21 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r19);
                            r19 = objc_msgSend(var_2B0, var_2D8);
                    } while (r19 != 0x0);
            }
            [var_2B0 release];
            r21 = [[NSUserDefaults standardUserDefaults] retain];
            r28 = @selector(stringWithFormat:);
            r22 = [objc_msgSend(@class(NSString), r28) retain];
            r24 = [[r21 objectForKey:r22] retain];
            [r22 release];
            [r21 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:@"userUniqueIdIS"];
            r29 = r29;
            r27 = [r0 retain];
            [r21 release];
            r1 = @selector(length);
            var_2D0 = r1;
            if (objc_msgSend(r27, r1) != 0x0) {
                    r23 = r27;
            }
            else {
                    r21 = [[NSUserDefaults standardUserDefaults] retain];
                    r22 = [objc_msgSend(@class(NSString), r28) retain];
                    r0 = [r21 objectForKey:r22];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r27 release];
                    [r22 release];
                    [r21 release];
            }
            var_2C8 = r24;
            r21 = [[NSUserDefaults standardUserDefaults] retain];
            r22 = [objc_msgSend(@class(NSString), r28) retain];
            var_2B8 = [[r21 objectForKey:r22] retain];
            [r22 release];
            [r21 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:@"userUniqueIdRV"];
            r29 = r29;
            r27 = [r0 retain];
            [r21 release];
            if (objc_msgSend(r27, var_2D0) != 0x0) {
                    var_2C0 = r27;
            }
            else {
                    r21 = [[NSUserDefaults standardUserDefaults] retain];
                    r22 = [objc_msgSend(@class(NSString), r28) retain];
                    r0 = [r21 objectForKey:r22];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r27 release];
                    [r22 release];
                    [r21 release];
                    var_2C0 = r24;
            }
            r21 = [[NSUserDefaults standardUserDefaults] retain];
            r22 = [objc_msgSend(@class(NSString), r28) retain];
            var_2F8 = [[r21 objectForKey:r22] retain];
            [r22 release];
            [r21 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:@"userUniqueIdOW"];
            r29 = r29;
            r27 = [r0 retain];
            [r21 release];
            if (objc_msgSend(r27, var_2D0) != 0x0) {
                    r22 = var_2B8;
                    r26 = r27;
            }
            else {
                    r20 = [[NSUserDefaults standardUserDefaults] retain];
                    r21 = [objc_msgSend(@class(NSString), r28) retain];
                    r0 = [r20 objectForKey:r21];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r27 release];
                    [r21 release];
                    [r20 release];
                    r22 = var_2B8;
            }
            r25 = @selector(allKeys);
            r0 = objc_msgSend(var_2B0, r25);
            r29 = r29;
            r0 = [r0 retain];
            r28 = @selector(count);
            r20 = objc_msgSend(r0, r28);
            [r0 release];
            r21 = var_2A8;
            r27 = @selector(objectForKeyedSubscript:);
            r24 = var_2C0;
            if (r20 != 0x0) {
                    var_310 = @selector(count);
                    var_308 = r26;
                    r19 = [[r21 allKeys] retain];
                    r0 = [var_2E0 getKeyInDictionaryWithPrefix:r19 andPrefix:@"RewardedVideo"];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 release];
                    *(int128_t *)(&stack[-823] + 0xff) = q0;
                    var_248 = q0;
                    r0 = [r20 retain];
                    var_2D0 = r0;
                    r19 = objc_msgSend(r0, var_2D8);
                    if (r19 != 0x0) {
                            r22 = *var_248;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_248 != r22) {
                                                    objc_enumerationMutation(var_2D0);
                                            }
                                            r27 = *(var_250 + r28 * 0x8);
                                            if (r24 != 0x0) {
                                                    r20 = @selector(setObject:forKey:);
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    objc_msgSend(r0, r20);
                                                    r0 = r21;
                                                    r21 = var_2A8;
                                                    [r0 release];
                                            }
                                            r24 = var_2B8;
                                            if (r24 != 0x0) {
                                                    r20 = @selector(setObject:forKey:);
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    objc_msgSend(r0, r20);
                                                    r0 = r21;
                                                    r21 = var_2A8;
                                                    [r0 release];
                                            }
                                            r28 = r28 + 0x1;
                                            r24 = var_2C0;
                                    } while (r28 < r19);
                                    r19 = objc_msgSend(var_2D0, var_2D8);
                            } while (r19 != 0x0);
                    }
                    [var_2D0 release];
                    r19 = [[r21 allKeys] retain];
                    r0 = [var_2E0 getKeyInDictionaryWithPrefix:r2 andPrefix:r3];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 release];
                    var_288 = q0;
                    r0 = [r20 retain];
                    r19 = r0;
                    r25 = objc_msgSend(r0, var_2D8);
                    if (r25 != 0x0) {
                            r22 = *var_288;
                            do {
                                    r24 = 0x0;
                                    do {
                                            if (*var_288 != r22) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r28 = *(var_290 + r24 * 0x8);
                                            if (r23 != 0x0) {
                                                    r27 = @selector(setObject:forKey:);
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    objc_msgSend(r0, r27);
                                                    r0 = r21;
                                                    r21 = var_2A8;
                                                    [r0 release];
                                            }
                                            r26 = r23;
                                            r23 = var_2C8;
                                            if (r23 != 0x0) {
                                                    r27 = @selector(setObject:forKey:);
                                                    r0 = [r21 objectForKeyedSubscript:r2];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    objc_msgSend(r0, r27);
                                                    r0 = r21;
                                                    r21 = var_2A8;
                                                    [r0 release];
                                            }
                                            r24 = r24 + 0x1;
                                            r23 = r26;
                                    } while (r24 < r25);
                                    r25 = objc_msgSend(r19, var_2D8);
                            } while (r25 != 0x0);
                    }
                    [r19 release];
                    [r19 release];
                    [var_2D0 release];
                    r27 = @selector(objectForKeyedSubscript:);
                    r24 = var_2C0;
                    r22 = var_2B8;
                    r26 = var_308;
                    r25 = @selector(allKeys);
                    r28 = var_310;
            }
            r0 = objc_msgSend(var_2B0, r25);
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (objc_msgSend(r0, r28) != 0x0) {
                    r0 = objc_msgSend(r21, r27);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r19 release];
                    r25 = var_2F8;
                    if (r0 != 0x0) {
                            if (r26 != 0x0) {
                                    r0 = objc_msgSend(r21, r27);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 setObject:r2 forKey:r3];
                                    [r19 release];
                            }
                            if (r25 != 0x0) {
                                    r0 = objc_msgSend(r21, r27);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 setObject:r2 forKey:r3];
                                    [r19 release];
                            }
                    }
            }
            else {
                    [r19 release];
                    r25 = var_2F8;
            }
            r20 = var_2E8;
            r19 = [objc_msgSend(r20, r27) retain];
            [var_2E0 runCommand:r19 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
            [r19 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r22 release];
            [r23 release];
            [var_2C8 release];
            [var_2B0 release];
            [var_2F0 release];
    }
    else {
            r19 = [[r22 objectForKeyedSubscript:@"fail"] retain];
            [r27 runCommand:r19 andParameters:0x0 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
            [r19 release];
            r20 = r22;
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)image:(void *)arg2 didFinishSavingWithError:(void *)arg3 contextInfo:(void *)arg4 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg4 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_48 count:0x2];
    r20 = [r0 retain];
    [self runCommand:@"assetCached" andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)failedToLoadWithError:(void *)arg2 webView:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [[SupersonicLogManager sharedManager] retain];
    r19 = [[arg2 localizedDescription] retain];
    [r20 release];
    r20 = [[NSString stringWithFormat:@"WebView failed to load with error: %@"] retain];
    [r21 log:r20 withLevel:0x1 withTag:0x5];
    [r20 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)loadSuccessfully:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 supersonicAdsView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 supersonicAdsView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 activityIndicator];
            r29 = r29;
            r0 = [r0 retain];
            [r0 stopAnimating];
            [r0 release];
            [r20 release];
    }
    r0 = [r19 view];
    r0 = [r0 retain];
    r22 = r0;
    [r0 frame];
    r0 = [r19 view];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 window];
    r29 = r29;
    r0 = [r0 retain];
    [r0 frame];
    [r0 release];
    [r23 release];
    [r22 release];
    if (d8 < d9) {
            r0 = [r19 view];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 frame];
            asm { fcvtzs     w8, d2 };
            r0 = [@"var viewport = document.querySelector('meta[name=viewport]');" stringByAppendingFormat:@"viewport.setAttribute('content', 'width=%i, initial-scale=1.0, user-scalable=1');"];
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            [r19 evaluateJavaScript:r21];
            [r21 release];
    }
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 setContentOffset:0x0 animated:r3];
    [r0 release];
    [r19 release];
    return;
}

-(bool)shouldLoadRequestForWebview:(void *)arg2 request:(void *)arg3 navigationType:(long long)arg4 {
    r0 = [self handleControllerCallback:arg3 navigationType:arg4];
    return r0;
}

-(void *)offerWallDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_offerWallDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOfferWallDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_offerWallDelegate, arg2);
    return;
}

-(void *)superSonicAdsDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_superSonicAdsDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSuperSonicAdsDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_superSonicAdsDelegate, arg2);
    return;
}

-(void *)dataManager {
    r0 = self->_dataManager;
    return r0;
}

-(void)setDataManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataManager, arg2);
    return;
}

-(void *)parametersForRV {
    r0 = self->_parametersForRV;
    return r0;
}

-(void)setParametersForRV:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parametersForRV, arg2);
    return;
}

-(void *)parametersForIS {
    r0 = self->_parametersForIS;
    return r0;
}

-(void)setParametersForIS:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parametersForIS, arg2);
    return;
}

-(void *)parametersForBN {
    r0 = self->_parametersForBN;
    return r0;
}

-(void)setParametersForBN:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parametersForBN, arg2);
    return;
}

-(void *)parametersForOW {
    r0 = self->_parametersForOW;
    return r0;
}

-(void *)adCreditedParameters {
    r0 = self->_adCreditedParameters;
    return r0;
}

-(void)setParametersForOW:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parametersForOW, arg2);
    return;
}

-(bool)checkAndHandleAppStoreRedirectForCommand:(void *)arg2 andFullUrl:(void *)arg3 isSecondary:(bool)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x460;
    var_48C = arg4;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    var_498 = self;
    r0 = self->appStoreSchemes;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_418 = r0;
    var_3D0 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_10073eb48;

loc_10073e34c:
    r8 = *_SKStoreProductParameterITunesItemIdentifier;
    r25 = *0x0;
    var_4A0 = *r8;
    var_420 = r23;
    var_440 = r25;
    var_438 = r22;
    goto loc_10073e37c;

loc_10073e37c:
    r19 = 0x0;
    var_430 = r24;
    goto loc_10073e42c;

loc_10073e42c:
    if (*0x0 != r25) {
            objc_enumerationMutation(var_418);
    }
    var_3E8 = r19;
    r19 = *(0x0 + r19 * 0x8);
    r20 = [[SupersonicLogManager sharedManager] retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"checking %@"];
    r29 = r29;
    r21 = [r0 retain];
    [r20 log:r21 withLevel:0x1 withTag:0x9];
    [r21 release];
    [r20 release];
    if ([r19 length] == 0x0 || [r22 hasSuffix:r19] == 0x0) goto loc_10073eb18;

loc_10073e4d4:
    r19 = [[SupersonicLogManager sharedManager] retain];
    r20 = [[NSString stringWithFormat:@"%@"] retain];
    [r19 log:r20 withLevel:0x1 withTag:0x9];
    [r20 release];
    [r19 release];
    r0 = [r23 lastPathComponent];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 componentsSeparatedByString:@"&"];
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    *(int128_t *)(&stack[-824] + 0x60) = q0;
    *(int128_t *)(&stack[-824] + 0x70) = q0;
    *(int128_t *)(&stack[-824] + 0x40) = q0;
    *(int128_t *)(&stack[-824] + 0x50) = q0;
    r0 = [r20 retain];
    r19 = r0;
    r20 = objc_msgSend(r0, var_3D0);
    if (r20 != 0x0) {
            r28 = 0x0;
            r22 = *var_2D8;
            var_3B0 = r19;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_2D8 != r22) {
                                    objc_enumerationMutation(var_3B0);
                            }
                            r26 = *(var_2E0 + r19 * 0x8);
                            if ([r26 hasPrefix:@"id"] != 0x0) {
                                    r0 = [r26 substringFromIndex:0x2];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    [r0 longLongValue];
                                    r0 = [NSNumber numberWithLongLong:r2];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r28 release];
                                    [r26 release];
                                    r28 = r27;
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r20);
                    r3 = &stack[-360];
                    r19 = var_3B0;
                    r20 = objc_msgSend(r19, var_3D0);
            } while (r20 != 0x0);
            [r19 release];
            r23 = var_420;
            if (r28 == 0x0) {
                    r0 = [r23 pathComponents];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 release];
                    *(int128_t *)(&stack[-824] + 0x20) = q0;
                    *(int128_t *)(&stack[-824] + 0x30) = q0;
                    *(int128_t *)(&stack[-824] + 0x10) = q0;
                    *(int128_t *)(&stack[-1079] + 0xff) = q0;
                    r0 = [r20 retain];
                    r19 = r0;
                    r3 = &stack[-488];
                    r20 = objc_msgSend(r0, var_3D0);
                    if (r20 != 0x0) {
                            r28 = 0x0;
                            r22 = *var_318;
                            var_3B0 = r19;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_318 != r22) {
                                                    objc_enumerationMutation(var_3B0);
                                            }
                                            r26 = *(var_320 + r19 * 0x8);
                                            if ([r26 hasPrefix:@"id"] != 0x0) {
                                                    r0 = [r26 substringFromIndex:0x2];
                                                    r0 = [r0 retain];
                                                    r26 = r0;
                                                    [r0 longLongValue];
                                                    r0 = [NSNumber numberWithLongLong:r2];
                                                    r29 = r29;
                                                    r27 = [r0 retain];
                                                    [r28 release];
                                                    [r26 release];
                                                    r28 = r27;
                                            }
                                            r19 = r19 + 0x1;
                                    } while (r19 < r20);
                                    r3 = &stack[-488];
                                    r19 = var_3B0;
                                    r20 = objc_msgSend(r19, var_3D0);
                            } while (r20 != 0x0);
                            [r19 release];
                            r23 = var_420;
                            if (r28 == 0x0) {
                                    r0 = [NSURL URLWithString:r23];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    if (r0 != 0x0) {
                                            var_458 = r0;
                                            r0 = [r0 query];
                                            r0 = [r0 retain];
                                            var_460 = r0;
                                            r0 = [r0 componentsSeparatedByString:@"&"];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            [r19 release];
                                            *(int128_t *)(&stack[-1095] + 0xff) = q0;
                                            *(int128_t *)(&stack[-1111] + 0xff) = q0;
                                            *(int128_t *)(&stack[-1127] + 0xff) = q0;
                                            *(int128_t *)(&stack[-1143] + 0xff) = q0;
                                            r0 = [r20 retain];
                                            r19 = r0;
                                            r3 = &stack[-616];
                                            r0 = objc_msgSend(r0, var_3D0);
                                            r22 = 0x0;
                                            r21 = r0;
                                            if (r21 != 0x0) {
                                                    r22 = 0x0;
                                                    r23 = *var_358;
                                                    do {
                                                            r20 = 0x0;
                                                            do {
                                                                    if (*var_358 != r23) {
                                                                            objc_enumerationMutation(r19);
                                                                    }
                                                                    r25 = *(var_360 + r20 * 0x8);
                                                                    if ([r25 hasPrefix:@"id"] != 0x0) {
                                                                            r0 = [r25 componentsSeparatedByString:@"="];
                                                                            r29 = r29;
                                                                            r0 = [r0 retain];
                                                                            r25 = r0;
                                                                            if ([r0 count] != 0x0) {
                                                                                    r28 = r19;
                                                                                    if ([r25 count] == 0x2) {
                                                                                            r0 = [r25 lastObject];
                                                                                            r0 = [r0 retain];
                                                                                            var_3C0 = r0;
                                                                                            [r0 longLongValue];
                                                                                            r0 = [NSNumber numberWithLongLong:r2];
                                                                                            r29 = r29;
                                                                                            r0 = [r0 retain];
                                                                                            r19 = 0x1;
                                                                                            var_3C8 = r0;
                                                                                    }
                                                                                    else {
                                                                                            r19 = 0x0;
                                                                                            r0 = 0x0;
                                                                                    }
                                                                                    r26 = [r0 retain];
                                                                                    [r22 release];
                                                                                    if (r19 != 0x0) {
                                                                                            [var_3C8 release];
                                                                                            [var_3C0 release];
                                                                                    }
                                                                                    r22 = r26;
                                                                                    r19 = r28;
                                                                            }
                                                                            [r25 release];
                                                                    }
                                                                    r20 = r20 + 0x1;
                                                            } while (r20 < r21);
                                                            r3 = &stack[-616];
                                                            r21 = objc_msgSend(r19, var_3D0);
                                                    } while (r21 != 0x0);
                                            }
                                            [r19 release];
                                            [var_460 release];
                                            r23 = var_420;
                                            r28 = r22;
                                            r0 = var_458;
                                    }
                                    else {
                                            r28 = 0x0;
                                    }
                                    [r0 release];
                            }
                    }
                    else {
                            [r19 release];
                            r0 = [NSURL URLWithString:r23];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    var_458 = r0;
                                    r0 = [r0 query];
                                    r0 = [r0 retain];
                                    var_460 = r0;
                                    r0 = [r0 componentsSeparatedByString:@"&"];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r19 release];
                                    *(int128_t *)(&stack[-1095] + 0xff) = q0;
                                    *(int128_t *)(&stack[-1111] + 0xff) = q0;
                                    *(int128_t *)(&stack[-1127] + 0xff) = q0;
                                    *(int128_t *)(&stack[-1143] + 0xff) = q0;
                                    r0 = [r20 retain];
                                    r19 = r0;
                                    r3 = &stack[-616];
                                    r0 = objc_msgSend(r0, var_3D0);
                                    r22 = 0x0;
                                    r21 = r0;
                                    if (r21 != 0x0) {
                                            r22 = 0x0;
                                            r23 = *var_358;
                                            do {
                                                    r20 = 0x0;
                                                    do {
                                                            if (*var_358 != r23) {
                                                                    objc_enumerationMutation(r19);
                                                            }
                                                            r25 = *(var_360 + r20 * 0x8);
                                                            if ([r25 hasPrefix:@"id"] != 0x0) {
                                                                    r0 = [r25 componentsSeparatedByString:@"="];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    r25 = r0;
                                                                    if ([r0 count] != 0x0) {
                                                                            r28 = r19;
                                                                            if ([r25 count] == 0x2) {
                                                                                    r0 = [r25 lastObject];
                                                                                    r0 = [r0 retain];
                                                                                    var_3C0 = r0;
                                                                                    [r0 longLongValue];
                                                                                    r0 = [NSNumber numberWithLongLong:r2];
                                                                                    r29 = r29;
                                                                                    r0 = [r0 retain];
                                                                                    r19 = 0x1;
                                                                                    var_3C8 = r0;
                                                                            }
                                                                            else {
                                                                                    r19 = 0x0;
                                                                                    r0 = 0x0;
                                                                            }
                                                                            r26 = [r0 retain];
                                                                            [r22 release];
                                                                            if (r19 != 0x0) {
                                                                                    [var_3C8 release];
                                                                                    [var_3C0 release];
                                                                            }
                                                                            r22 = r26;
                                                                            r19 = r28;
                                                                    }
                                                                    [r25 release];
                                                            }
                                                            r20 = r20 + 0x1;
                                                    } while (r20 < r21);
                                                    r3 = &stack[-616];
                                                    r21 = objc_msgSend(r19, var_3D0);
                                            } while (r21 != 0x0);
                                    }
                                    [r19 release];
                                    [var_460 release];
                                    r23 = var_420;
                                    r28 = r22;
                                    r0 = var_458;
                            }
                            else {
                                    r28 = 0x0;
                            }
                            [r0 release];
                    }
            }
    }
    else {
            [r19 release];
            r0 = [r23 pathComponents];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            *(int128_t *)(&stack[-824] + 0x20) = q0;
            *(int128_t *)(&stack[-824] + 0x30) = q0;
            *(int128_t *)(&stack[-824] + 0x10) = q0;
            *(int128_t *)(&stack[-1079] + 0xff) = q0;
            r0 = [r20 retain];
            r19 = r0;
            r3 = &stack[-488];
            r20 = objc_msgSend(r0, var_3D0);
            if (r20 != 0x0) {
                    r28 = 0x0;
                    r22 = *var_318;
                    var_3B0 = r19;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_318 != r22) {
                                            objc_enumerationMutation(var_3B0);
                                    }
                                    r26 = *(var_320 + r19 * 0x8);
                                    if ([r26 hasPrefix:@"id"] != 0x0) {
                                            r0 = [r26 substringFromIndex:0x2];
                                            r0 = [r0 retain];
                                            r26 = r0;
                                            [r0 longLongValue];
                                            r0 = [NSNumber numberWithLongLong:r2];
                                            r29 = r29;
                                            r27 = [r0 retain];
                                            [r28 release];
                                            [r26 release];
                                            r28 = r27;
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r20);
                            r3 = &stack[-488];
                            r19 = var_3B0;
                            r20 = objc_msgSend(r19, var_3D0);
                    } while (r20 != 0x0);
                    [r19 release];
                    r23 = var_420;
                    if (r28 == 0x0) {
                            r0 = [NSURL URLWithString:r23];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    var_458 = r0;
                                    r0 = [r0 query];
                                    r0 = [r0 retain];
                                    var_460 = r0;
                                    r0 = [r0 componentsSeparatedByString:@"&"];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r19 release];
                                    *(int128_t *)(&stack[-1095] + 0xff) = q0;
                                    *(int128_t *)(&stack[-1111] + 0xff) = q0;
                                    *(int128_t *)(&stack[-1127] + 0xff) = q0;
                                    *(int128_t *)(&stack[-1143] + 0xff) = q0;
                                    r0 = [r20 retain];
                                    r19 = r0;
                                    r3 = &stack[-616];
                                    r0 = objc_msgSend(r0, var_3D0);
                                    r22 = 0x0;
                                    r21 = r0;
                                    if (r21 != 0x0) {
                                            r22 = 0x0;
                                            r23 = *var_358;
                                            do {
                                                    r20 = 0x0;
                                                    do {
                                                            if (*var_358 != r23) {
                                                                    objc_enumerationMutation(r19);
                                                            }
                                                            r25 = *(var_360 + r20 * 0x8);
                                                            if ([r25 hasPrefix:@"id"] != 0x0) {
                                                                    r0 = [r25 componentsSeparatedByString:@"="];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    r25 = r0;
                                                                    if ([r0 count] != 0x0) {
                                                                            r28 = r19;
                                                                            if ([r25 count] == 0x2) {
                                                                                    r0 = [r25 lastObject];
                                                                                    r0 = [r0 retain];
                                                                                    var_3C0 = r0;
                                                                                    [r0 longLongValue];
                                                                                    r0 = [NSNumber numberWithLongLong:r2];
                                                                                    r29 = r29;
                                                                                    r0 = [r0 retain];
                                                                                    r19 = 0x1;
                                                                                    var_3C8 = r0;
                                                                            }
                                                                            else {
                                                                                    r19 = 0x0;
                                                                                    r0 = 0x0;
                                                                            }
                                                                            r26 = [r0 retain];
                                                                            [r22 release];
                                                                            if (r19 != 0x0) {
                                                                                    [var_3C8 release];
                                                                                    [var_3C0 release];
                                                                            }
                                                                            r22 = r26;
                                                                            r19 = r28;
                                                                    }
                                                                    [r25 release];
                                                            }
                                                            r20 = r20 + 0x1;
                                                    } while (r20 < r21);
                                                    r3 = &stack[-616];
                                                    r21 = objc_msgSend(r19, var_3D0);
                                            } while (r21 != 0x0);
                                    }
                                    [r19 release];
                                    [var_460 release];
                                    r23 = var_420;
                                    r28 = r22;
                                    r0 = var_458;
                            }
                            else {
                                    r28 = 0x0;
                            }
                            [r0 release];
                    }
            }
            else {
                    [r19 release];
                    r0 = [NSURL URLWithString:r23];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            var_458 = r0;
                            r0 = [r0 query];
                            r0 = [r0 retain];
                            var_460 = r0;
                            r0 = [r0 componentsSeparatedByString:@"&"];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 release];
                            *(int128_t *)(&stack[-1095] + 0xff) = q0;
                            *(int128_t *)(&stack[-1111] + 0xff) = q0;
                            *(int128_t *)(&stack[-1127] + 0xff) = q0;
                            *(int128_t *)(&stack[-1143] + 0xff) = q0;
                            r0 = [r20 retain];
                            r19 = r0;
                            r3 = &stack[-616];
                            r0 = objc_msgSend(r0, var_3D0);
                            r22 = 0x0;
                            r21 = r0;
                            if (r21 != 0x0) {
                                    r22 = 0x0;
                                    r23 = *var_358;
                                    do {
                                            r20 = 0x0;
                                            do {
                                                    if (*var_358 != r23) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    r25 = *(var_360 + r20 * 0x8);
                                                    if ([r25 hasPrefix:@"id"] != 0x0) {
                                                            r0 = [r25 componentsSeparatedByString:@"="];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r25 = r0;
                                                            if ([r0 count] != 0x0) {
                                                                    r28 = r19;
                                                                    if ([r25 count] == 0x2) {
                                                                            r0 = [r25 lastObject];
                                                                            r0 = [r0 retain];
                                                                            var_3C0 = r0;
                                                                            [r0 longLongValue];
                                                                            r0 = [NSNumber numberWithLongLong:r2];
                                                                            r29 = r29;
                                                                            r0 = [r0 retain];
                                                                            r19 = 0x1;
                                                                            var_3C8 = r0;
                                                                    }
                                                                    else {
                                                                            r19 = 0x0;
                                                                            r0 = 0x0;
                                                                    }
                                                                    r26 = [r0 retain];
                                                                    [r22 release];
                                                                    if (r19 != 0x0) {
                                                                            [var_3C8 release];
                                                                            [var_3C0 release];
                                                                    }
                                                                    r22 = r26;
                                                                    r19 = r28;
                                                            }
                                                            [r25 release];
                                                    }
                                                    r20 = r20 + 0x1;
                                            } while (r20 < r21);
                                            r3 = &stack[-616];
                                            r21 = objc_msgSend(r19, var_3D0);
                                    } while (r21 != 0x0);
                            }
                            [r19 release];
                            [var_460 release];
                            r23 = var_420;
                            r28 = r22;
                            r0 = var_458;
                    }
                    else {
                            r28 = 0x0;
                    }
                    [r0 release];
            }
    }
    r0 = [SupersonicLogManager sharedManager];
    r29 = r29;
    r20 = [r0 retain];
    if (r28 != 0x0) goto loc_10073eb58;

loc_10073eaa8:
    r0 = [NSString stringWithFormat:@"could not find product id for url: %@", r3];
    r29 = r29;
    r21 = [r0 retain];
    [r20 log:r21 withLevel:0x3 withTag:0x9];
    [r21 release];
    [r20 release];
    [r19 release];
    [r28 release];
    r22 = var_438;
    r24 = var_430;
    r25 = var_440;
    goto loc_10073eb18;

loc_10073eb18:
    r19 = var_3E8 + 0x1;
    if (r19 < r24) goto loc_10073e42c;

loc_10073eb28:
    r24 = objc_msgSend(var_418, var_3D0);
    if (r24 != 0x0) goto loc_10073e37c;

loc_10073eb48:
    [var_418 release];
    r19 = 0x1;
    goto loc_10073ec7c;

loc_10073ec7c:
    var_3A8 = **___stack_chk_guard;
    [r23 release];
    [r22 release];
    if (**___stack_chk_guard == var_3A8) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10073eb58:
    r21 = [[NSString stringWithFormat:@"productId: %@"] retain];
    [r20 log:r21 withLevel:0x1 withTag:0x9];
    [r21 release];
    [r20 release];
    r0 = [NSDictionary dictionaryWithObjects:&var_260 forKeys:&var_268 count:0x1];
    r20 = [r0 retain];
    r0 = [SKStoreProductViewController alloc];
    r0 = [r0 init];
    var_378 = r0;
    r0 = [r0 retain];
    [r0 loadProductWithParameters:r20 completionBlock:&var_3A0];
    [var_378 release];
    [r0 release];
    [r20 release];
    [r19 release];
    [r28 release];
    [var_418 release];
    r19 = 0x0;
    r22 = var_438;
    goto loc_10073ec7c;
}

-(void)setAdCreditedParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adCreditedParameters, arg2);
    return;
}

-(void)setShouldInterceptMRAID:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldInterceptMRAID = arg2;
    return;
}

-(bool)shouldInterceptMRAID {
    r0 = *(int8_t *)(int64_t *)&self->_shouldInterceptMRAID;
    return r0;
}

-(void)setDemandSourcesCollection:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_demandSourcesCollection, arg2);
    return;
}

-(void *)demandSourcesCollection {
    r0 = self->_demandSourcesCollection;
    return r0;
}

-(void *)splitViewCtrl {
    r0 = self->_splitViewCtrl;
    return r0;
}

-(void)setSplitViewCtrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_splitViewCtrl, arg2);
    return;
}

-(void)setMoatJSInterfaceHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_moatJSInterfaceHandler, arg2);
    return;
}

-(void *)moatJSInterfaceHandler {
    r0 = self->_moatJSInterfaceHandler;
    return r0;
}

-(void)setRingerButtonJSInterfaceHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ringerButtonJSInterfaceHandler, arg2);
    return;
}

-(void *)ringerButtonJSInterfaceHandler {
    r0 = self->_ringerButtonJSInterfaceHandler;
    return r0;
}

-(void *)presenterJSInterfaceHandler {
    r0 = self->_presenterJSInterfaceHandler;
    return r0;
}

-(void)setPresenterJSInterfaceHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presenterJSInterfaceHandler, arg2);
    return;
}

-(void *)orientationJSInterfaceHandler {
    r0 = self->_orientationJSInterfaceHandler;
    return r0;
}

-(void)setOrientationJSInterfaceHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_orientationJSInterfaceHandler, arg2);
    return;
}

-(void *)isnAdViewJSInterfaceHandler {
    r0 = self->_isnAdViewJSInterfaceHandler;
    return r0;
}

-(void)setIsnAdViewJSInterfaceHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isnAdViewJSInterfaceHandler, arg2);
    return;
}

-(void)setAdViewContainerCounter:(long long)arg2 {
    self->_adViewContainerCounter = arg2;
    return;
}

-(long long)adViewContainerCounter {
    r0 = self->_adViewContainerCounter;
    return r0;
}

-(void *)externalAdViewDemandSourceName {
    r0 = self->_externalAdViewDemandSourceName;
    return r0;
}

-(void)setExternalAdViewDemandSourceName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_externalAdViewDemandSourceName, arg2);
    return;
}

-(bool)shouldSendDebugModeInProduction {
    r0 = *(int8_t *)(int64_t *)&self->_shouldSendDebugModeInProduction;
    return r0;
}

-(void)setShouldSendDebugModeInProduction:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldSendDebugModeInProduction = arg2;
    return;
}

-(void)setWebViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewController, arg2);
    return;
}

-(void *)webViewController {
    r0 = self->_webViewController;
    return r0;
}

-(void *)expandProperties {
    r0 = self->_expandProperties;
    return r0;
}

-(void)setExpandProperties:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_expandProperties, arg2);
    return;
}

-(void *)orientationProperties {
    r0 = self->_orientationProperties;
    return r0;
}

-(void)setOrientationProperties:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_orientationProperties, arg2);
    return;
}

-(void *)resizeProperties {
    r0 = self->_resizeProperties;
    return r0;
}

-(void)setResizeProperties:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_resizeProperties, arg2);
    return;
}

-(void *)controllerOrientationsDict {
    r0 = self->_controllerOrientationsDict;
    return r0;
}

-(void)setControllerOrientationsDict:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerOrientationsDict, arg2);
    return;
}

-(bool)hasSecondaryView {
    r0 = *(int8_t *)(int64_t *)&self->_hasSecondaryView;
    return r0;
}

-(unsigned long long)controllerState {
    r0 = self->_controllerState;
    return r0;
}

-(void)setControllerState:(unsigned long long)arg2 {
    self->_controllerState = arg2;
    return;
}

-(bool)isComingBackFromBG {
    r0 = *(int8_t *)(int64_t *)&self->_isComingBackFromBG;
    return r0;
}

-(void)setIsComingBackFromBG:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isComingBackFromBG = arg2;
    return;
}

-(void *)currentSession {
    r0 = self->_currentSession;
    return r0;
}

-(void)setCurrentSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentSession, arg2);
    return;
}

-(void *)controllerLoadTimer {
    r0 = self->_controllerLoadTimer;
    return r0;
}

-(void)setControllerLoadTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerLoadTimer, arg2);
    return;
}

-(void *)controllerGlobalInitTimer {
    r0 = self->_controllerGlobalInitTimer;
    return r0;
}

-(void)setControllerGlobalInitTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerGlobalInitTimer, arg2);
    return;
}

-(long long)numberOfControllerLoadFails {
    r0 = self->_numberOfControllerLoadFails;
    return r0;
}

-(void)setNumberOfControllerLoadFails:(long long)arg2 {
    self->_numberOfControllerLoadFails = arg2;
    return;
}

-(void *)jsInterfaceHandler {
    r0 = self->_jsInterfaceHandler;
    return r0;
}

-(void)setJsInterfaceHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_jsInterfaceHandler, arg2);
    return;
}

-(void)setViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewController, arg2);
    return;
}

-(void *)nativeSessionConfiguration {
    r0 = self->_nativeSessionConfiguration;
    return r0;
}

-(void)setNativeSessionConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeSessionConfiguration, arg2);
    return;
}

-(void *)controllerCommandsQueue {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_controllerCommandsQueue)), 0x1);
    return r0;
}

-(void)setControllerCommandsQueue:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)supersonicAdsView {
    r0 = self->_supersonicAdsView;
    return r0;
}

-(void)setSupersonicAdsView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_supersonicAdsView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_supersonicAdsView, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerCommandsQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeSessionConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_viewController, 0x0);
    objc_storeStrong((int64_t *)&self->_jsInterfaceHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerGlobalInitTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerLoadTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_currentSession, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerOrientationsDict, 0x0);
    objc_storeStrong((int64_t *)&self->_resizeProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_orientationProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_expandProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_externalAdViewDemandSourceName, 0x0);
    objc_storeStrong((int64_t *)&self->_isnAdViewJSInterfaceHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_orientationJSInterfaceHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_presenterJSInterfaceHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_ringerButtonJSInterfaceHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_moatJSInterfaceHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_splitViewCtrl, 0x0);
    objc_storeStrong((int64_t *)&self->_demandSourcesCollection, 0x0);
    objc_storeStrong((int64_t *)&self->_adCreditedParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_parametersForOW, 0x0);
    objc_storeStrong((int64_t *)&self->_parametersForBN, 0x0);
    objc_storeStrong((int64_t *)&self->_parametersForIS, 0x0);
    objc_storeStrong((int64_t *)&self->_parametersForRV, 0x0);
    objc_storeStrong((int64_t *)&self->_dataManager, 0x0);
    objc_destroyWeak((int64_t *)&self->_superSonicAdsDelegate);
    objc_destroyWeak((int64_t *)&self->_offerWallDelegate);
    objc_storeStrong((int64_t *)&self->appStoreSchemes, 0x0);
    return;
}

@end