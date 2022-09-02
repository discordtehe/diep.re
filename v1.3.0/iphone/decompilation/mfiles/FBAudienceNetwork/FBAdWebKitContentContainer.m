@implementation FBAdWebKitContentContainer

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
    r0 = objc_getClass("FBAdWebKitContentContainer");
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

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void *)getView {
    r0 = [self webView];
    return r0;
}

-(void *)initWithAdView:(void *)arg2 actualAdSize:(struct CGSize)arg3 adSizeType:(struct FBAdSize)arg4 overrideMarkupImpressionCheck:(bool)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r21 = r3;
    r19 = [arg2 retain];
    r0 = [self init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_parent, r19);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_actualAdSize));
            *(int128_t *)(r20 + r8) = d11;
            *(int128_t *)(0x8 + r20 + r8) = d10;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeType));
            *(int128_t *)(r20 + r8) = d9;
            *(int128_t *)(0x8 + r20 + r8) = d8;
            *(int8_t *)(int64_t *)&r20->_overrideMarkupImpressionCheck = r21;
            if (*qword_1011dd878 != -0x1) {
                    dispatch_once_f(0x1011dd878, 0x1011c6c40, 0x100a3d91c);
            }
            r0 = *0x1011dd880;
            r0 = [r0 new];
            r21 = r0;
            [r0 setAllowsInlineMediaPlayback:0x1];
            [r21 setMediaPlaybackRequiresUserAction:0x0];
            if (*qword_1011dd858 != -0x1) {
                    dispatch_once_f(0x1011dd858, 0x1011c6c28, 0x100a3d91c);
            }
            r0 = *0x1011dd860;
            r0 = [r0 alloc];
            r0 = [r0 initWithFrame:r21 configuration:r3];
            r23 = r0;
            [r0 setNavigationDelegate:r20];
            [r23 setUIDelegate:r20];
            [r23 setHidden:0x1];
            r0 = [r23 scrollView];
            r0 = [r0 retain];
            [r0 setBounces:0x0];
            [r0 release];
            r0 = [r23 scrollView];
            r0 = [r0 retain];
            [r0 setScrollsToTop:0x0];
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
            r24 = *(r20 + r8);
            *(r20 + r8) = r23;
            r23 = [r23 retain];
            [r24 release];
            r0 = [FBAdTouchGestureRecognizer new];
            [r0 setDelegate:r20];
            [r23 addGestureRecognizer:r0];
            [r23 release];
            r20->_firstImpressionTime = 0xbff0000000000000;
            [r0 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)loadAdData:(void *)arg2 minViewability:(int)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    [r19 setOffsiteAd:r21];
    [FBHTMLAdDataModel class];
    r20 = [r21 isKindOfClass:r2];
    [r21 release];
    if (r20 != 0x0) {
            [r19 setLoggedImpression:0x0];
            [r19 setFirstImpressionTime:0x0];
            dispatch_async(*__dispatch_main_q, &var_48);
    }
    return 0x1;
}

-(bool)loadAdMarkup:(void *)arg2 activationCommand:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [self setLoggedImpression:0x0];
    [self setFirstImpressionTime:0x0];
    [self setActivationCommand:r20];
    [r20 release];
    [self setIsJavascriptAdControlInitialized:0x0];
    [[[self webView] retain] loadHTMLString:r19 baseURL:[[FBAdSettings webviewBaseURL] retain]];
    [r19 release];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r21 release];
    [r20 release];
    return 0x1;
}

-(void)initializeJavascriptAdControl {
    [self initializeJavascriptAdControlWithRetries:0x19];
    return;
}

-(void)initializeJavascriptAdControlWithRetries:(long long)arg2 {
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
    r19 = arg2;
    r20 = self;
    if (([self isJavascriptAdControlInitialized] & 0x1) == 0x0) {
            r0 = sub_1009ff3d8();
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r8 = @"";
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r0;
                    }
                    else {
                            r8 = @"";
                    }
            }
            r21 = [[NSString stringWithFormat:@"var AdControl = { getAnalogInfo : function() { return '%@';} };"] retain];
            [r22 release];
            r22 = [[r20 webView] retain];
            r23 = [sub_100aabe00() retain];
            [r22 evaluateJavaScript:r23 completionHandler:&var_60];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(bool)logClickWithExtraData:(void *)arg2 {
    return 0x0;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [self initializeJavascriptAdControl];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDidLoad];
    [r0 release];
    r0 = [self parent];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r19 ensureViewabilityValidation];
    }
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    if ([r19 navigationType] == 0x0) goto loc_100ac8b2c;

loc_100ac8b18:
    (*(r20 + 0x10))(r20, 0x1);
    goto loc_100ac8c50;

loc_100ac8c50:
    [r20 release];
    [r19 release];
    return;

loc_100ac8b2c:
    r0 = [r21 parent];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isModalViewPresenting] != 0x0) goto loc_100ac8c38;

loc_100ac8b58:
    r0 = [r19 request];
    r0 = [r0 retain];
    r24 = [[r0 URL] retain];
    [r0 release];
    [r21 setRequestURL:r24];
    [r24 release];
    r23 = [[r21 requestURL] retain];
    r24 = [[r21 offsiteAd] retain];
    r25 = [r22 processRequestURL:r23 adDataModel:r24 withExtraData:0x0];
    [r24 release];
    [r23 release];
    if (r25 == 0x0) goto loc_100ac8c74;

loc_100ac8c1c:
    *(int8_t *)(int64_t *)&r21->_markupImpressionEventReceived = [r22 isMarkupImpressionEventReceived];
    goto loc_100ac8c38;

loc_100ac8c38:
    (*(r20 + 0x10))(r20, 0x0);
    [r22 release];
    goto loc_100ac8c50;

loc_100ac8c74:
    [r22 release];
    goto loc_100ac8b18;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    r21 = [arg4 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDidFailToLoadWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    r21 = [arg4 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDidFailToLoadWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)webViewWebContentProcessDidTerminate:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(int64_t *)&self->_terminated = 0x1;
    r20 = [[NSNumber numberWithUnsignedLongLong:[FBAdDevice freeDiskBytes]] retain];
    r22 = [[NSNumber numberWithUnsignedLongLong:[FBAdDevice freeMemoryBytes]] retain];
    r0 = [NSNumber numberWithUnsignedLongLong:[FBAdDevice totalMemoryBytes]];
    r0 = [r0 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_68 count:0x3] retain];
    [r0 release];
    [r22 release];
    [r20 release];
    [FBAdDebugLogging logDebugEventWithType:@"internal_error" code:0x0 info:r21];
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r19 adDidTerminate];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)gestureRecognizer:(void *)arg2 beganWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 movedWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    r21 = [arg3 retain];
    [self updateTouchDataWithTouches:r21 andEvent:arg4];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 endedWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19];
    [r19 release];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 cancelledWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19];
    [r19 release];
    [r21 release];
    return;
}

-(bool)logImpression {
    r31 = r31 - 0x130;
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
    r25 = self;
    if (([self hasLoggedImpression] & 0x1) == 0x0) goto loc_100ac82b0;

loc_100ac82a8:
    r19 = 0x1;
    goto loc_100ac8a28;

loc_100ac8a28:
    r0 = r19;
    return r0;

loc_100ac82b0:
    r0 = [FBAdConfigManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 shouldWaitForMarkuptImpressionEventBeforeLogging] == 0x0) goto loc_100ac831c;

loc_100ac82e4:
    r21 = [r25 overrideMarkupImpressionCheck];
    [r20 release];
    if ((r21 & 0x1) != 0x0 || ([r25 isMarkupImpressionEventReceived] & 0x1) != 0x0) goto loc_100ac8324;

loc_100ac8634:
    r19 = 0x0;
    goto loc_100ac8a28;

loc_100ac8324:
    if (([r25 isJavascriptAdControlInitialized] & 0x1) == 0x0) goto loc_100ac84e4;

loc_100ac8338:
    [NSDate timeIntervalSinceReferenceDate];
    [r25 setFirstImpressionTime:r2];
    r0 = [r25 webView];
    r0 = [r0 retain];
    [r0 evaluateJavaScript:@"facebookAd.sendImpression();" completionHandler:&var_100];
    [r0 release];
    r20 = [[NSMutableDictionary dictionary] retain];
    r0 = [r25 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r2 = @selector(contentContainerViewabilityValidator);
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r21 contentContainerViewabilityValidator];
            r0 = [r0 retain];
            r22 = r0;
            var_108 = [[r0 viewabilityHistoryJSON] retain];
            r0 = sub_1009ff3d8();
            r29 = r29;
            var_110 = [r0 retain];
            r0 = [r25 retain];
            r25 = r0;
            [r0 lastTouchStartLocation];
            v8 = v0;
            v9 = v1;
            [r25 lastTouchCurrentLocation];
            v11 = v0;
            v10 = v1;
            r8 = *_CGPointZero;
            d1 = *(int128_t *)r8;
            d0 = *(int128_t *)(r8 + 0x8);
            var_118 = r21;
            if (d8 == d1 && d9 == d0) {
                    r26 = @class(FBAdUtility);
                    r28 = 0x0;
            }
            else {
                    if (d11 == d1) {
                            if (d10 == d0) {
                                    r26 = @class(FBAdUtility);
                                    r28 = 0x0;
                            }
                            else {
                                    [r25 lastTouchRadius];
                                    v13 = v0;
                                    [r25 lastTouchPressure];
                                    v15 = v0;
                                    [r25 lastTouchStartTimestamp];
                                    var_128 = d0;
                                    [r25 lastTouchCurrentTimestamp];
                                    v14 = v0;
                                    [r25 firstImpressionTime];
                                    if (d0 != 0xbff0000000000000) {
                                            [NSDate timeIntervalSinceReferenceDate];
                                            [r25 firstImpressionTime];
                                            r0 = [r26 numberWithDouble:r2];
                                            r29 = r29;
                                            var_130 = [r0 retain];
                                    }
                                    else {
                                            r0 = @(0xffffffffffffffff);
                                            r29 = r29;
                                            var_130 = [r0 retain];
                                    }
                                    r27 = [[NSNumber numberWithDouble:r2] retain];
                                    r23 = [[NSNumber numberWithDouble:r2] retain];
                                    r0 = [FBAdUtility touchDictionaryWithStartLocation:r27 currentLocation:r23 endLocation:var_130 startTime:r5 endTime:r6 touchForce:r7 touchRadius:var_130 delayTime:var_128];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r23 release];
                                    [r27 release];
                                    [var_130 release];
                                    r26 = @class(FBAdUtility);
                            }
                    }
                    else {
                            [r25 lastTouchRadius];
                            v13 = v0;
                            [r25 lastTouchPressure];
                            v15 = v0;
                            [r25 lastTouchStartTimestamp];
                            var_128 = d0;
                            [r25 lastTouchCurrentTimestamp];
                            v14 = v0;
                            [r25 firstImpressionTime];
                            if (d0 != 0xbff0000000000000) {
                                    [NSDate timeIntervalSinceReferenceDate];
                                    [r25 firstImpressionTime];
                                    r0 = [r26 numberWithDouble:r2];
                                    r29 = r29;
                                    var_130 = [r0 retain];
                            }
                            else {
                                    r0 = @(0xffffffffffffffff);
                                    r29 = r29;
                                    var_130 = [r0 retain];
                            }
                            r27 = [[NSNumber numberWithDouble:r2] retain];
                            r23 = [[NSNumber numberWithDouble:r2] retain];
                            r0 = [FBAdUtility touchDictionaryWithStartLocation:r27 currentLocation:r23 endLocation:var_130 startTime:r5 endTime:r6 touchForce:r7 touchRadius:var_130 delayTime:var_128];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r23 release];
                            [r27 release];
                            [var_130 release];
                            r26 = @class(FBAdUtility);
                    }
            }
            [r25 release];
            r26 = [[r26 getJSONStringFromObject:r28] retain];
            [r28 release];
            r0 = [*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0) numberWithInteger:[r22 currentStatus]];
            r0 = [r0 retain];
            r24 = [[r0 stringValue] retain];
            [r20 setObject:r24 forKeyedSubscript:@"vrc"];
            [r24 release];
            [r0 release];
            r23 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            [r22 lastViewabilityPercentage];
            r0 = [r23 numberWithDouble:r24];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 stringValue];
            r29 = r29;
            r24 = [r0 retain];
            [r20 setObject:r24 forKeyedSubscript:@"vp"];
            [r24 release];
            [r23 release];
            r28 = var_108;
            if (r28 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r28;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r20 setObject:r2 forKeyedSubscript:@"vh"];
            if (r26 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r26;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r20 setObject:r2 forKeyedSubscript:@"touch"];
            r21 = r22;
            r22 = var_110;
            if (r22 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r22;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r20 setObject:r2 forKeyedSubscript:@"analog"];
            r19 = [[FBAdEventManager sharedManager] retain];
            r0 = [r25 offsiteAd];
            r0 = [r0 retain];
            r24 = [[r0 inlineClientToken] retain];
            [r19 logImpressionForToken:r24 withExtraData:r20];
            [r24 release];
            [r0 release];
            [r19 release];
            r19 = 0x1;
            [r25 setLoggedImpression:0x1];
            [r26 release];
            [r22 release];
            [r28 release];
            [r21 release];
            r21 = var_118;
    }
    else {
            r19 = 0x0;
    }
    [r21 release];
    [r20 release];
    goto loc_100ac8a28;

loc_100ac84e4:
    objc_initWeak(&stack[-176], r25);
    r0 = [r25 impressionRetryTimer];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r25 impressionRetryTimer];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r21 = r0;
                    r0 = [r25 impressionRetryTimer];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = [r0 isValid];
                    [r0 release];
                    [r21 release];
                    [r19 release];
                    if ((r20 & 0x1) == 0x0) {
                            objc_copyWeak(&var_D8 + 0x20, &stack[-176]);
                            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_D8 block:r4];
                            r20 = [r0 retain];
                            [r25 setImpressionRetryTimer:r20];
                            [r20 release];
                            objc_destroyWeak(&var_D8 + 0x20);
                    }
            }
            else {
                    [r19 release];
            }
    }
    else {
            [r19 release];
            objc_copyWeak(&var_D8 + 0x20, &stack[-176]);
            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_D8 block:r4];
            r20 = [r0 retain];
            [r25 setImpressionRetryTimer:r20];
            [r20 release];
            objc_destroyWeak(&var_D8 + 0x20);
    }
    objc_destroyWeak(&stack[-176]);
    goto loc_100ac8634;

loc_100ac831c:
    [r20 release];
    goto loc_100ac8324;
}

-(void)gestureRecognizerTapped:(void *)arg2 {
    return;
}

-(void)updateTouchDataWithTouches:(void *)arg2 andEvent:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    r20 = [[r21 allObjects] retain];
    [r21 release];
    r21 = [[r20 firstObject] retain];
    r23 = [[r20 lastObject] retain];
    r25 = [[r21 view] retain];
    [r21 locationInView:r25];
    [r25 release];
    r24 = [[r23 view] retain];
    [r23 locationInView:r24];
    [r24 release];
    [self setLastTouchStartLocation:r24];
    [self setLastTouchCurrentLocation:r24];
    sub_100aabd58();
    [r22 release];
    [self setLastTouchCurrentTimestamp:r24];
    [r23 majorRadius];
    [self setLastTouchRadius:r24];
    [r23 force];
    [self setLastTouchPressure:r24];
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_impressionRetryTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_requestURL, 0x0);
    objc_storeStrong((int64_t *)&self->_activationCommand, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->_offsiteAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_parent);
    objc_destroyWeak((int64_t *)&self->_delegate);
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

-(void *)parent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_parent);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setParent:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_parent, arg2);
    return;
}

-(struct CGSize)actualAdSize {
    r0 = self;
    return r0;
}

-(struct FBAdSize)adSizeType {
    r0 = self;
    return r0;
}

-(void)setActualAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_actualAdSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setAdSizeType:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeType));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)offsiteAd {
    r0 = self->_offsiteAd;
    return r0;
}

-(struct CGSize)minimumSize {
    r0 = self;
    return r0;
}

-(void)setOffsiteAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offsiteAd, arg2);
    return;
}

-(void)setMinimumSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_minimumSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGSize)maximumSize {
    r0 = self;
    return r0;
}

-(void)setMaximumSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_maximumSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGPoint)lastTouchStartLocation {
    r0 = self;
    return r0;
}

-(void)setLastTouchStartLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchStartLocation));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGPoint)lastTouchCurrentLocation {
    r0 = self;
    return r0;
}

-(double)lastTouchStartTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastTouchCurrentLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchCurrentLocation));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setLastTouchStartTimestamp:(double)arg2 {
    self->_lastTouchStartTimestamp = d0;
    return;
}

-(double)lastTouchCurrentTimestamp {
    r0 = self;
    return r0;
}

-(void)setLastTouchCurrentTimestamp:(double)arg2 {
    self->_lastTouchCurrentTimestamp = d0;
    return;
}

-(double)lastTouchRadius {
    r0 = self;
    return r0;
}

-(void)setLastTouchRadius:(double)arg2 {
    self->_lastTouchRadius = d0;
    return;
}

-(double)lastTouchPressure {
    r0 = self;
    return r0;
}

-(void)setLastTouchPressure:(double)arg2 {
    self->_lastTouchPressure = d0;
    return;
}

-(bool)hasLoggedImpression {
    r0 = *(int8_t *)(int64_t *)&self->_loggedImpression;
    return r0;
}

-(void)setLoggedImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loggedImpression = arg2;
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

-(bool)isMarkupImpressionEventReceived {
    r0 = *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived;
    return r0;
}

-(void)setMarkupImpressionEventReceived:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived = arg2;
    return;
}

-(bool)overrideMarkupImpressionCheck {
    r0 = *(int8_t *)(int64_t *)&self->_overrideMarkupImpressionCheck;
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)activationCommand {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activationCommand)), 0x0);
    return r0;
}

-(void)setActivationCommand:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isJavascriptAdControlInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_isJavascriptAdControlInitialized;
    return r0;
}

-(void)setIsJavascriptAdControlInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isJavascriptAdControlInitialized = arg2;
    return;
}

-(void *)requestURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestURL)), 0x0);
    return r0;
}

-(void)setRequestURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isTerminated {
    r0 = *(int8_t *)(int64_t *)&self->_terminated;
    return r0;
}

-(void)setTerminated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_terminated = arg2;
    return;
}

-(void *)impressionRetryTimer {
    r0 = self->_impressionRetryTimer;
    return r0;
}

-(void)setImpressionRetryTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_impressionRetryTimer, arg2);
    return;
}

@end