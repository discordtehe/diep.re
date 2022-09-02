@implementation FBAdWebContentContainer

-(void *)htmlDataModel {
    r0 = [self offsiteAd];
    return r0;
}

-(void *)rewardedVideoDataModel {
    r0 = [self offsiteAd];
    return r0;
}

-(void *)initWithAdView:(void *)arg2 actualAdSize:(struct CGSize)arg3 adSizeType:(struct FBAdSize)arg4 overrideMarkupImpressionCheck:(bool)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x80;
    var_60 = d11;
    stack[-104] = d10;
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
    r0 = [[&var_70 super] init];
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
            r0 = [UIWebView new];
            r23 = r0;
            [r0 setDelegate:r20];
            [r23 setHidden:0x1];
            r0 = [r23 scrollView];
            r0 = [r0 retain];
            [r0 setBounces:0x0];
            [r0 release];
            [r23 setDataDetectorTypes:0x0];
            [r23 setAllowsInlineMediaPlayback:0x1];
            [r23 setMediaPlaybackRequiresUserAction:0x0];
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
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->_webView setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)getView {
    r0 = [self webView];
    return r0;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
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
    r20 = [[self webView] retain];
    r21 = [[FBAdSettings webviewBaseURL] retain];
    [r20 loadHTMLString:r19 baseURL:r21];
    [r19 release];
    [r21 release];
    [r20 release];
    return 0x1;
}

-(void)initializeJavascriptAdControl {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isJavascriptAdControlInitialized] & 0x1) == 0x0) {
            r0 = sub_1009ff3d8();
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r8 = @"";
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r0;
                    }
                    else {
                            r8 = @"";
                    }
            }
            r20 = [[NSString stringWithFormat:@"var AdControl = { getAnalogInfo : function() { return '%@';} };"] retain];
            [r21 release];
            var_28 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
            [r20 release];
    }
    [r19 setIsJavascriptAdControlInitialized:0x1];
    return;
}

-(bool)logClickWithExtraData:(void *)arg2 {
    return 0x0;
}

-(void)gestureRecognizer:(void *)arg2 beganWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19 logTouch:0x1];
    [r19 release];
    [r21 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r0 = [r20 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    if (arg4 != 0x0) {
            r22 = 0x1;
    }
    else {
            r0 = [r20 parent];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 isModalViewPresenting] & 0x1) != 0x0) {
                    r22 = 0x0;
            }
            else {
                    r22 = [[r19 URL] retain];
                    [r20 setRequestURL:r22];
                    [r22 release];
                    r22 = [[r20 requestURL] retain];
                    r23 = [[r20 offsiteAd] retain];
                    r24 = [r21 processRequestURL:r22 adDataModel:r23 withExtraData:0x0];
                    [r23 release];
                    [r22 release];
                    if (r24 != 0x0) {
                            r0 = [r21 isMarkupImpressionEventReceived];
                            r22 = 0x0;
                            *(int8_t *)(int64_t *)&r20->_markupImpressionEventReceived = r0;
                    }
                    else {
                            r22 = 0x1;
                    }
            }
            [r21 release];
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
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
    r21 = [arg2 retain];
    [r19 initializeJavascriptAdControl];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 adDidLoad];
    [r0 release];
    r0 = [r19 parent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 ensureViewabilityValidation];
    }
    r22 = [FBAdJSBridgedInterface new];
    [r19 setJsBridgedInterface:r22];
    [r22 release];
    r0 = [r19 jsBridgedInterface];
    r0 = [r0 retain];
    [r0 setDelegate:r19];
    [r0 release];
    r0 = [r21 valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    r29 = r29;
    r22 = [r0 retain];
    [r21 release];
    if (r22 != 0x0) {
            if (*qword_1011dd888 != -0x1) {
                    dispatch_once_f(0x1011dd888, 0x1011c6c58, 0x100a3d91c);
            }
            r21 = *0x1011dd890;
            r19 = [[r19 jsBridgedInterface] retain];
            r21 = [[r21 valueWithObject:r19 inContext:r22] retain];
            [r19 release];
            [r22 setObject:r21 forKeyedSubscript:@"FbPlayableAd"];
            [r21 release];
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 movedWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    r21 = [arg3 retain];
    [self updateTouchDataWithTouches:r21 andEvent:arg4 logTouch:0x0];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 endedWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19 logTouch:0x0];
    [r19 release];
    [r21 release];
    return;
}

-(void)gestureRecognizer:(void *)arg2 cancelledWithTouches:(void *)arg3 andEvent:(void *)arg4 {
    [arg3 retain];
    [arg4 retain];
    sub_100aabd58();
    [self setLastTouchStartTimestamp:arg2];
    [self updateTouchDataWithTouches:r21 andEvent:r19 logTouch:0x0];
    [r19 release];
    [r21 release];
    return;
}

-(void)gestureRecognizerTapped:(void *)arg2 {
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x0;
}

-(void)onCTAClick {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adCTAClick];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_jsBridgedInterface, 0x0);
    objc_storeStrong((int64_t *)&self->_requestURL, 0x0);
    objc_storeStrong((int64_t *)&self->_activationCommand, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->_offsiteAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_parent);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(bool)logImpression {
    r31 = r31 - 0xf0;
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
    if ([self isJavascriptAdControlInitialized] != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 shouldWaitForMarkuptImpressionEventBeforeLogging] != 0x0) {
                    r21 = [r25 overrideMarkupImpressionCheck];
                    [r20 release];
                    if ((r21 & 0x1) == 0x0 && ([r25 isMarkupImpressionEventReceived] & 0x1) == 0x0) {
                            r19 = 0x0;
                    }
                    else {
                            if (([r25 hasLoggedImpression] & 0x1) != 0x0) {
                                    r19 = 0x1;
                            }
                            else {
                                    [NSDate timeIntervalSinceReferenceDate];
                                    [r25 setFirstImpressionTime:r2];
                                    dispatch_async(*__dispatch_main_q, &var_C8);
                                    r20 = [[NSMutableDictionary dictionary] retain];
                                    r0 = [r25 delegate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r2 = @selector(contentContainerViewabilityValidator);
                                    if ([r0 respondsToSelector:r2] != 0x0) {
                                            r0 = [r28 contentContainerViewabilityValidator];
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r26 = [[r0 viewabilityHistoryJSON] retain];
                                            r0 = sub_1009ff3d8();
                                            r29 = r29;
                                            r22 = [r0 retain];
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
                                            var_D8 = r28;
                                            var_D0 = r26;
                                            var_E8 = r22;
                                            if (d8 == d1 && d9 == d0) {
                                                    r28 = 0x0;
                                            }
                                            else {
                                                    if (d11 == d1) {
                                                            if (d10 == d0) {
                                                                    r28 = 0x0;
                                                            }
                                                            else {
                                                                    [r25 lastTouchRadius];
                                                                    v13 = v0;
                                                                    [r25 lastTouchPressure];
                                                                    v15 = v0;
                                                                    [r25 lastTouchStartTimestamp];
                                                                    var_E0 = d0;
                                                                    [r25 lastTouchCurrentTimestamp];
                                                                    v14 = v0;
                                                                    [r25 firstImpressionTime];
                                                                    if (d0 != 0xbff0000000000000) {
                                                                            [NSDate timeIntervalSinceReferenceDate];
                                                                            [r25 firstImpressionTime];
                                                                            r0 = [NSNumber numberWithDouble:r2];
                                                                            r29 = r29;
                                                                            r22 = [r0 retain];
                                                                    }
                                                                    else {
                                                                            r0 = @(0xffffffffffffffff);
                                                                            r29 = r29;
                                                                            r22 = [r0 retain];
                                                                    }
                                                                    r27 = [[NSNumber numberWithDouble:r2] retain];
                                                                    r23 = [[NSNumber numberWithDouble:r2] retain];
                                                                    r0 = [FBAdUtility touchDictionaryWithStartLocation:r27 currentLocation:r23 endLocation:r22 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-240] delayTime:var_E8];
                                                                    r29 = r29;
                                                                    r28 = [r0 retain];
                                                                    [r23 release];
                                                                    [r27 release];
                                                                    [r22 release];
                                                            }
                                                    }
                                                    else {
                                                            [r25 lastTouchRadius];
                                                            v13 = v0;
                                                            [r25 lastTouchPressure];
                                                            v15 = v0;
                                                            [r25 lastTouchStartTimestamp];
                                                            var_E0 = d0;
                                                            [r25 lastTouchCurrentTimestamp];
                                                            v14 = v0;
                                                            [r25 firstImpressionTime];
                                                            if (d0 != 0xbff0000000000000) {
                                                                    [NSDate timeIntervalSinceReferenceDate];
                                                                    [r25 firstImpressionTime];
                                                                    r0 = [NSNumber numberWithDouble:r2];
                                                                    r29 = r29;
                                                                    r22 = [r0 retain];
                                                            }
                                                            else {
                                                                    r0 = @(0xffffffffffffffff);
                                                                    r29 = r29;
                                                                    r22 = [r0 retain];
                                                            }
                                                            r27 = [[NSNumber numberWithDouble:r2] retain];
                                                            r23 = [[NSNumber numberWithDouble:r2] retain];
                                                            r0 = [FBAdUtility touchDictionaryWithStartLocation:r27 currentLocation:r23 endLocation:r22 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-240] delayTime:var_E8];
                                                            r29 = r29;
                                                            r28 = [r0 retain];
                                                            [r23 release];
                                                            [r27 release];
                                                            [r22 release];
                                                    }
                                            }
                                            [r25 release];
                                            r26 = [[FBAdUtility getJSONStringFromObject:r28] retain];
                                            [r28 release];
                                            var_E0 = r25;
                                            r0 = [NSNumber numberWithInteger:[r21 currentStatus]];
                                            r0 = [r0 retain];
                                            r24 = [[r0 stringValue] retain];
                                            [r20 setObject:r24 forKeyedSubscript:@"vrc"];
                                            [r24 release];
                                            [r0 release];
                                            r23 = @class(NSNumber);
                                            [r21 lastViewabilityPercentage];
                                            r0 = [r23 numberWithDouble:r24];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            r0 = [r0 stringValue];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r20 setObject:r24 forKeyedSubscript:@"vp"];
                                            [r24 release];
                                            [r23 release];
                                            r28 = var_D0;
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
                                            r22 = var_E8;
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
                                            r0 = [var_E0 offsiteAd];
                                            r0 = [r0 retain];
                                            r24 = [[r0 inlineClientToken] retain];
                                            [r19 logImpressionForToken:r24 withExtraData:r20];
                                            [r24 release];
                                            [r0 release];
                                            [r19 release];
                                            r19 = 0x1;
                                            [var_E0 setLoggedImpression:0x1];
                                            [r26 release];
                                            [r22 release];
                                            [r28 release];
                                            [r21 release];
                                            r28 = var_D8;
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                                    [r28 release];
                                    [r20 release];
                            }
                    }
            }
            else {
                    [r20 release];
                    if (([r25 hasLoggedImpression] & 0x1) != 0x0) {
                            r19 = 0x1;
                    }
                    else {
                            [NSDate timeIntervalSinceReferenceDate];
                            [r25 setFirstImpressionTime:r2];
                            dispatch_async(*__dispatch_main_q, &var_C8);
                            r20 = [[NSMutableDictionary dictionary] retain];
                            r0 = [r25 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            r2 = @selector(contentContainerViewabilityValidator);
                            if ([r0 respondsToSelector:r2] != 0x0) {
                                    r0 = [r28 contentContainerViewabilityValidator];
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    r26 = [[r0 viewabilityHistoryJSON] retain];
                                    r0 = sub_1009ff3d8();
                                    r29 = r29;
                                    r22 = [r0 retain];
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
                                    var_D8 = r28;
                                    var_D0 = r26;
                                    var_E8 = r22;
                                    if (d8 == d1 && d9 == d0) {
                                            r28 = 0x0;
                                    }
                                    else {
                                            if (d11 == d1) {
                                                    if (d10 == d0) {
                                                            r28 = 0x0;
                                                    }
                                                    else {
                                                            [r25 lastTouchRadius];
                                                            v13 = v0;
                                                            [r25 lastTouchPressure];
                                                            v15 = v0;
                                                            [r25 lastTouchStartTimestamp];
                                                            var_E0 = d0;
                                                            [r25 lastTouchCurrentTimestamp];
                                                            v14 = v0;
                                                            [r25 firstImpressionTime];
                                                            if (d0 != 0xbff0000000000000) {
                                                                    [NSDate timeIntervalSinceReferenceDate];
                                                                    [r25 firstImpressionTime];
                                                                    r0 = [NSNumber numberWithDouble:r2];
                                                                    r29 = r29;
                                                                    r22 = [r0 retain];
                                                            }
                                                            else {
                                                                    r0 = @(0xffffffffffffffff);
                                                                    r29 = r29;
                                                                    r22 = [r0 retain];
                                                            }
                                                            r27 = [[NSNumber numberWithDouble:r2] retain];
                                                            r23 = [[NSNumber numberWithDouble:r2] retain];
                                                            r0 = [FBAdUtility touchDictionaryWithStartLocation:r27 currentLocation:r23 endLocation:r22 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-240] delayTime:var_E8];
                                                            r29 = r29;
                                                            r28 = [r0 retain];
                                                            [r23 release];
                                                            [r27 release];
                                                            [r22 release];
                                                    }
                                            }
                                            else {
                                                    [r25 lastTouchRadius];
                                                    v13 = v0;
                                                    [r25 lastTouchPressure];
                                                    v15 = v0;
                                                    [r25 lastTouchStartTimestamp];
                                                    var_E0 = d0;
                                                    [r25 lastTouchCurrentTimestamp];
                                                    v14 = v0;
                                                    [r25 firstImpressionTime];
                                                    if (d0 != 0xbff0000000000000) {
                                                            [NSDate timeIntervalSinceReferenceDate];
                                                            [r25 firstImpressionTime];
                                                            r0 = [NSNumber numberWithDouble:r2];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                    }
                                                    else {
                                                            r0 = @(0xffffffffffffffff);
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                    }
                                                    r27 = [[NSNumber numberWithDouble:r2] retain];
                                                    r23 = [[NSNumber numberWithDouble:r2] retain];
                                                    r0 = [FBAdUtility touchDictionaryWithStartLocation:r27 currentLocation:r23 endLocation:r22 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-240] delayTime:var_E8];
                                                    r29 = r29;
                                                    r28 = [r0 retain];
                                                    [r23 release];
                                                    [r27 release];
                                                    [r22 release];
                                            }
                                    }
                                    [r25 release];
                                    r26 = [[FBAdUtility getJSONStringFromObject:r28] retain];
                                    [r28 release];
                                    var_E0 = r25;
                                    r0 = [NSNumber numberWithInteger:[r21 currentStatus]];
                                    r0 = [r0 retain];
                                    r24 = [[r0 stringValue] retain];
                                    [r20 setObject:r24 forKeyedSubscript:@"vrc"];
                                    [r24 release];
                                    [r0 release];
                                    r23 = @class(NSNumber);
                                    [r21 lastViewabilityPercentage];
                                    r0 = [r23 numberWithDouble:r24];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 stringValue];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r20 setObject:r24 forKeyedSubscript:@"vp"];
                                    [r24 release];
                                    [r23 release];
                                    r28 = var_D0;
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
                                    r22 = var_E8;
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
                                    r0 = [var_E0 offsiteAd];
                                    r0 = [r0 retain];
                                    r24 = [[r0 inlineClientToken] retain];
                                    [r19 logImpressionForToken:r24 withExtraData:r20];
                                    [r24 release];
                                    [r0 release];
                                    [r19 release];
                                    r19 = 0x1;
                                    [var_E0 setLoggedImpression:0x1];
                                    [r26 release];
                                    [r22 release];
                                    [r28 release];
                                    [r21 release];
                                    r28 = var_D8;
                            }
                            else {
                                    r19 = 0x0;
                            }
                            [r28 release];
                            [r20 release];
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
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

-(void)updateTouchDataWithTouches:(void *)arg2 andEvent:(void *)arg3 logTouch:(bool)arg4 {
    r31 = r31 - 0xc0;
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
    r23 = arg4;
    r22 = self;
    r20 = [arg2 retain];
    [arg3 retain];
    r19 = [[r20 allObjects] retain];
    [r20 release];
    r20 = [[r19 firstObject] retain];
    r21 = [[r19 lastObject] retain];
    r26 = [[r20 view] retain];
    [r20 locationInView:r26];
    [r26 release];
    r0 = [r21 view];
    r29 = &var_10;
    r25 = [r0 retain];
    [r21 locationInView:r25];
    [r25 release];
    [r22 setLastTouchStartLocation:r25];
    v1 = v1;
    [r22 setLastTouchCurrentLocation:r25];
    sub_100aabd58();
    [r24 release];
    v0 = v10;
    [r22 setLastTouchCurrentTimestamp:r25];
    [r21 majorRadius];
    [r22 setLastTouchRadius:r25];
    [r21 force];
    [r22 setLastTouchPressure:r25];
    [r22 firstImpressionTime];
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r22 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r24 = [r0 retain];
    if (r23 != 0x0) {
            r23 = @class(FBAdUtility);
            [r22 lastTouchStartLocation];
            [r22 lastTouchCurrentLocation];
            [r22 lastTouchCurrentLocation];
            [r22 lastTouchStartTimestamp];
            [r22 lastTouchCurrentTimestamp];
            r25 = @class(NSNumber);
            [r22 lastTouchPressure];
            r26 = @selector(numberWithDouble:);
            r25 = [objc_msgSend(r25, r26) retain];
            r27 = @class(NSNumber);
            [r22 lastTouchRadius];
            r26 = [objc_msgSend(r27, r26) retain];
            r23 = [[r23 touchDictionaryWithStartLocation:r25 currentLocation:r26 endLocation:r24 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-192] delayTime:var_B8] retain];
            [r26 release];
            [r25 release];
            r0 = @class(FBAdUtility);
            r0 = [r0 getJSONStringFromObject:r23];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    r26 = [[NSDictionary dictionaryWithObjects:&stack[-176] forKeys:&var_B8 count:0x1] retain];
                    r27 = [[FBAdEventManager sharedManager] retain];
                    r0 = [r22 rewardedVideoDataModel];
                    r0 = [r0 retain];
                    r28 = [[r0 inlineClientToken] retain];
                    [r27 logOffTargetClickEventForToken:r28 withExtraData:r26];
                    [r28 release];
                    [r0 release];
                    [r27 release];
                    [r26 release];
            }
            [r25 release];
            [r23 release];
    }
    var_A8 = **___stack_chk_guard;
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_A8) {
            __stack_chk_fail();
    }
    return;
}

-(void)setParent:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_parent, arg2);
    return;
}

-(void *)parent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_parent);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setActualAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_actualAdSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGSize)actualAdSize {
    r0 = self;
    return r0;
}

-(void)setAdSizeType:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeType));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct FBAdSize)adSizeType {
    r0 = self;
    return r0;
}

-(void *)offsiteAd {
    r0 = self->_offsiteAd;
    return r0;
}

-(void)setOffsiteAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offsiteAd, arg2);
    return;
}

-(struct CGSize)minimumSize {
    r0 = self;
    return r0;
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

-(void)setLastTouchCurrentLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastTouchCurrentLocation));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(double)lastTouchStartTimestamp {
    r0 = self;
    return r0;
}

-(double)lastTouchRadius {
    r0 = self;
    return r0;
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

-(double)lastTouchPressure {
    r0 = self;
    return r0;
}

-(void)setLastTouchRadius:(double)arg2 {
    self->_lastTouchRadius = d0;
    return;
}

-(void)setLastTouchPressure:(double)arg2 {
    self->_lastTouchPressure = d0;
    return;
}

-(bool)hasLoggedImpression {
    r0 = *(int8_t *)(int64_t *)&self->_loggedImpression;
    return r0;
}

-(void)setFirstImpressionTime:(double)arg2 {
    self->_firstImpressionTime = d0;
    return;
}

-(void)setLoggedImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loggedImpression = arg2;
    return;
}

-(double)firstImpressionTime {
    r0 = self;
    return r0;
}

-(bool)isTerminated {
    r0 = *(int8_t *)(int64_t *)&self->_terminated;
    return r0;
}

-(bool)isMarkupImpressionEventReceived {
    r0 = *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived;
    return r0;
}

-(bool)overrideMarkupImpressionCheck {
    r0 = *(int8_t *)(int64_t *)&self->_overrideMarkupImpressionCheck;
    return r0;
}

-(void)setMarkupImpressionEventReceived:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived = arg2;
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void)setActivationCommand:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isJavascriptAdControlInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_isJavascriptAdControlInitialized;
    return r0;
}

-(void *)activationCommand {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activationCommand)), 0x0);
    return r0;
}

-(void *)requestURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestURL)), 0x0);
    return r0;
}

-(void)setIsJavascriptAdControlInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isJavascriptAdControlInitialized = arg2;
    return;
}

-(void)setRequestURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)jsBridgedInterface {
    r0 = self->_jsBridgedInterface;
    return r0;
}

-(void)setJsBridgedInterface:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_jsBridgedInterface, arg2);
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
    r0 = objc_getClass("FBAdWebContentContainer");
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