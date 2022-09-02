@implementation VungleMRAIDBridge

-(void *)initWithWebViewFacade:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x20, r22);
            r0 = *(r21 + 0x20);
            r0 = [r0 contentView];
            r0 = [r0 retain];
            [r0 setNavigationDelegate:r21];
            objc_storeWeak(r21 + 0x10, r20);
            *(int8_t *)(r21 + 0x8) = 0x0;
            r0 = objc_alloc();
            r0 = [r0 initWithDelegate:r21 webViewFacade:r19];
            r8 = *(r21 + 0x28);
            *(r21 + 0x28) = r0;
            [r8 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dispatchPropertiesChangeWithDictionary:(void *)arg2 {
    [[[self propertiesChangeJSExpressionWithProperties:arg2] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)loadHTMLFileWithURL:(void *)arg2 cacheableReplacements:(void *)arg3 nonCacheableReplacements:(void *)arg4 viewProperties:(void *)arg5 {
    r31 = r31 - 0x140;
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
    r28 = [arg3 retain];
    var_F0 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [VungleMRAIDJS MRAIDJS];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_10063da98;

loc_10063d540:
    r0 = [VungleMRAIDJS MRAIDJS];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 isEqualToString:r2];
    [r0 release];
    [r20 release];
    if (r27 != 0x0) goto loc_10063daa0;

loc_10063d588:
    r20 = [[NSFileManager defaultManager] retain];
    r0 = [r19 path];
    r29 = r29;
    r26 = [r0 retain];
    r27 = [r20 fileExistsAtPath:r26 isDirectory:0x0];
    [r26 release];
    [r20 release];
    if ((r27 & 0x1) == 0x0) goto loc_10063db54;

loc_10063d5f4:
    var_F8 = r28;
    r20 = [[VNGPersistenceManager sharedManager] retain];
    r27 = [VNGUserConsentInfoModel class];
    r28 = [[VNGUserConsentInfoModel key] retain];
    r0 = [r20 loadObjectWithClass:r27 key:r28 error:r29 - 0x70];
    r29 = r29;
    r27 = [r0 retain];
    r26 = [0x0 retain];
    [r28 release];
    [r20 release];
    var_120 = r26;
    var_118 = r27;
    if (r26 == 0x0 && [r27 consentRequired] != 0x0) {
            r25 = @selector(isEqualToString:);
            r0 = [r27 consentStatus];
            r29 = r29;
            r0 = [r0 retain];
            r25 = objc_msgSend(r0, r25);
            [r0 release];
            if (r25 != 0x0) {
                    [r23 setIsConsentDialogRequired:0x1];
                    r20 = [[VNGPersistenceManager sharedManager] retain];
                    [VNGUserLocalConsentMessage class];
                    r27 = [[VNGUserLocalConsentMessage key] retain];
                    r25 = [[r20 loadObjectWithClass:r2 key:r3 error:r4] retain];
                    [r27 release];
                    [r20 release];
                    r20 = [[r25 consentMessageVersion] retain];
                    r26 = [[VNGUserConsentInfoModel sharedModel] retain];
                    r0 = [NSDate date];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r26 updateWithConsentStatus:@"opted_out_by_timeout" consentSource:@"vungle_modal" consentMessageVersion:r20 consentTimeStamp:r27 consentRequired:0x1];
                    [r27 release];
                    [r26 release];
                    [r20 release];
                    [r25 release];
            }
    }
    var_100 = [[r23 readyJSExpressionWithCacheableReplacements:var_F8 nonCacheableReplacements:var_F0] retain];
    [[r23 propertiesChangeJSExpressionWithProperties:r22] retain];
    objc_initWeak(r29 - 0x78, r23);
    objc_alloc();
    objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
    var_128 = r28;
    var_110 = [r20 initWithJSExpression:r28 webViewFacade:r25 resultBlock:&var_A0];
    r28 = [objc_alloc() initWithJSExpression:var_100 webViewFacade:*(r23 + 0x20) resultBlock:0x0];
    r20 = [[r23 finishResultBlock] retain];
    [r28 setResultBlock:r20];
    [r20 release];
    objc_alloc();
    [[VungleMRAIDJS MRAIDJS] retain];
    objc_copyWeak(&var_E8 + 0x40, r29 - 0x78);
    var_C8 = [r19 retain];
    r0 = [var_110 retain];
    var_C0 = r0;
    r0 = [r28 retain];
    r25 = [r25 initWithJSExpression:r20 webViewFacade:r21 resultBlock:&var_E8];
    [r20 release];
    [r25 setIsArbitraryJavascript:0x1];
    [*(r23 + 0x28) handleJSCommand:r25];
    [r25 release];
    [r0 release];
    [var_C0 release];
    [var_C8 release];
    objc_destroyWeak(&var_E8 + 0x40);
    [r28 release];
    [r27 release];
    objc_destroyWeak(&var_A0 + 0x20);
    objc_destroyWeak(r29 - 0x78);
    [var_128 release];
    [var_100 release];
    [var_118 release];
    [var_120 release];
    r28 = var_F8;
    goto loc_10063db10;

loc_10063db10:
    [r22 release];
    [var_F0 release];
    [r28 release];
    [r19 release];
    return;

loc_10063db54:
    r20 = [[NSError errorWithDomain:@"com.vungle.mraid.bridge" code:0xffffffffffffd8f1 userInfo:0x0] retain];
    r0 = [r23 delegate];
    goto loc_10063dae4;

loc_10063dae4:
    r0 = [r0 retain];
    [r0 MRAIDBridge:r23 didFailToLoad:r20];
    [r0 release];
    [r20 release];
    goto loc_10063db10;

loc_10063daa0:
    r20 = [[NSError errorWithDomain:@"com.vungle.mraid.bridge" code:0xffffffffffffd8f0 userInfo:0x0] retain];
    r0 = [r23 delegate];
    goto loc_10063dae4;

loc_10063da98:
    [r20 release];
    goto loc_10063daa0;
}

-(void)dispatchPrepareStoreViewSuccessful {
    r0 = [VungleJavascriptGeneratorFactory notifyPrepareStoreViewSuccessGenerator];
    r0 = [r0 retain];
    [[[r0 generateJavascript] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)dispatchPreprentStoreViewFinished {
    r0 = [VungleJavascriptGeneratorFactory notifyPresentStoreViewFinshedGenerator];
    r0 = [r0 retain];
    [[[r0 generateJavascript] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)finishResultBlock {
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_48 + 0x28, &saved_fp - 0x18);
    r0 = objc_retainBlock(&var_48);
    objc_destroyWeak(&var_48 + 0x28);
    objc_destroyWeak(&saved_fp - 0x18);
    r0 = [r19 autorelease];
    return r0;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [[arg3 request] retain];
    [r23 release];
    r22 = [self handleBridgeActionWithRequest:r21];
    [r21 release];
    r8 = *(r20 + 0x10);
    (r8)();
    [r20 release];
    return;
}

+(void *)parseCommandFromRequest:(void *)arg2 {
    r0 = [arg2 URL];
    r0 = [r0 retain];
    r20 = [[r0 host] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)handleBridgeActionWithRequest:(void *)arg2 {
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
    r0 = [r0 URL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    if (r23 != 0x0) {
            r21 = [[VungleMRAIDBridge parseCommandFromRequest:r19] retain];
            r22 = [[VungleMRAIDBridge parseParametersFromRequest:r19] retain];
            r0 = [r20 commandHandler];
            r0 = [r0 retain];
            [r0 handleNativeCommand:r21 parameters:r22];
            [r0 release];
            [r22 release];
            [r21 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)parseParametersFromRequest:(void *)arg2 {
    r0 = [arg2 URL];
    r0 = [r0 retain];
    r21 = [[r0 query] retain];
    r19 = [[VungleUtil dictionaryWithURLQueryString:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)readyJSExpressionWithCacheableReplacements:(void *)arg2 nonCacheableReplacements:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r0 = [VungleJavascriptGeneratorFactory notifyReadyEventGeneratorWithCacheableReplacements:r19 nonCacheableReplacements:r20];
            r29 = r29;
    }
    else {
            r0 = [VungleJavascriptGeneratorFactory notifyReadyEventGenerator];
            r29 = r29;
    }
    r0 = [r0 retain];
    r21 = [[r0 generateJavascript] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)propertiesChangeJSExpressionWithProperties:(void *)arg2 {
    r0 = [VungleJavascriptGeneratorFactory propertiesEventGeneratorWithDictionary:arg2];
    r0 = [r0 retain];
    r20 = [[r0 generateJavascript] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)commandHandlerHandleMRAIDClose:(void *)arg2 {
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
    if ([self isConsentDialogRequired] != 0x0) {
            [r19 setIsConsentDialogRequired:0x0];
    }
    r20 = r19 + 0x10;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(handleNativeCommandCloseWithBridge:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r19 + 0x18);
            [r0 aggregateEvent:@"mraidClose"];
            [r0 release];
            r0 = objc_loadWeakRetained(r20);
            [r0 handleNativeCommandCloseWithBridge:r19];
            [r0 release];
    }
    return;
}

-(void)commandHandler:(void *)arg2 handleMRAIDCustomClose:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r21 = self + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleNativeCommandUseCustomClose:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r20 handleNativeCommandUseCustomClose:r19];
            [r0 release];
    }
    return;
}

-(void)commandHandler:(void *)arg2 handleMRAIDOpenCallForURL:(void *)arg3 {
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
    r21 = r20 + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleDisplayForDestinationURL:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r20 + 0x18);
            [r0 aggregateEvent:@"mraidOpen"];
            [r0 release];
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r20 handleDisplayForDestinationURL:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandHandler:(void *)arg2 handleMRAIDSetOrientationPropertiesWithForceOrientationMask:(unsigned long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r21 = self + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r20 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:r19];
            [r0 release];
    }
    return;
}

-(void)commandHandler:(void *)arg2 handleUIAction:(void *)arg3 {
    r20 = [arg3 retain];
    r0 = objc_loadWeakRetained(self + 0x18);
    [r0 aggregateEvent:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)commandHandler:(void *)arg2 handleTPAT:(void *)arg3 {
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
    r21 = r20 + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleNativeCommandTPATKey:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r20 handleNativeCommandTPATKey:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandHandler:(void *)arg2 handleUIAction:(void *)arg3 withValue:(void *)arg4 {
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = objc_loadWeakRetained(self + 0x18);
    [r0 aggregateEvent:r21 withValue:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)commandHandler:(void *)arg2 handleConsentAction:(void *)arg3 {
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
    r19 = [arg3 retain];
    r0 = [VNGUserLocalConsentMessage sharedMessage];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 consentMessageVersion];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10063edc0;

loc_10063edb4:
    r23 = @"opted_in";
    goto loc_10063ede0;

loc_10063ede0:
    [r23 retain];
    goto loc_10063edf0;

loc_10063edf0:
    r24 = [[VNGUserConsentInfoModel sharedModel] retain];
    r25 = [[NSDate date] retain];
    [r24 updateWithConsentStatus:r23 consentSource:@"vungle_modal" consentMessageVersion:r22 consentTimeStamp:r25 consentRequired:0x1];
    [r25 release];
    [r24 release];
    [r20 setIsConsentDialogRequired:0x0];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_10063edc0:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10063edec;

loc_10063edd8:
    r23 = @"opted_out";
    goto loc_10063ede0;

loc_10063edec:
    r23 = 0x0;
    goto loc_10063edf0;
}

-(void)commandHandler:(void *)arg2 handleErrorCode:(void *)arg3 {
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
    r21 = [arg3 retain];
    r0 = objc_loadWeakRetained(self + 0x18);
    [r0 aggregateError:r21];
    [r21 release];
    [r0 release];
    r20 = r19 + 0x10;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(handleNativeCommandCriticalErrorWithBridge:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 handleNativeCommandCriticalErrorWithBridge:r19];
            [r0 release];
    }
    return;
}

-(void)commandHandler:(void *)arg2 handleSuccessfulView:(bool)arg3 {
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
    r19 = self;
    r21 = self + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleNativeCommandIsSuccessfulView:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r19 handleNativeCommandIsSuccessfulView:r20];
            [r0 release];
    }
    return;
}

-(void)commandHandler:(void *)arg2 handlePrepareStoreViewWithAppStoreParameters:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = self + 0x10;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(handleNativePrepareStoreView:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 handleNativePrepareStoreView:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)commandHandlerHandlePresentStoreView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self + 0x10;
    r0 = objc_loadWeakRetained(r19);
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            [r0 handleNativePresentStoreView];
            [r0 release];
    }
    return;
}

-(void)commandHandler:(void *)arg2 handleExpandWith:(void *)arg3 {
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
    r21 = r20 + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleExpandCommand:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r20 handleExpandCommand:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)MRAIDJSInjectionError {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_28 count:0x2] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.mraid.bridge" code:0xffffffffffff4460 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)commandHandler:(void *)arg2 handleResizeWtih:(void *)arg3 {
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
    r21 = r20 + 0x10;
    r0 = objc_loadWeakRetained(r21);
    r24 = [r0 respondsToSelector:@selector(bridge:handleResizeCommand:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            [r0 bridge:r20 handleResizeCommand:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)localAdTemplateRequestErrorWithError:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [[arg2 localizedDescription] retain];
    r0 = [arg2 localizedFailureReason];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r8 = @"The file system failed to load the ad template";
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r21;
            }
            else {
                    r8 = @"The file system failed to load the ad template";
            }
    }
    var_28 = **___stack_chk_guard;
    r22 = [[NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_48 count:0x2] retain];
    r20 = [[NSError errorWithDomain:@"com.vungle.mraid.bridge" code:0xffffffffffff4461 userInfo:r22] retain];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dealloc {
    [self setWebViewFacade:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)reportBuilderDelegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setReportBuilderDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)webViewFacade {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setWebViewFacade:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)commandHandler {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setCommandHandler:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(bool)isConsentDialogRequired {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_destroyWeak(self + 0x18);
    objc_destroyWeak(self + 0x10);
    return;
}

-(void)setIsConsentDialogRequired:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

@end