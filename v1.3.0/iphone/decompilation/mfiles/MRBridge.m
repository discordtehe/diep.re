@implementation MRBridge

-(void *)initWithWebView:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x18, r22);
            [*(r21 + 0x18) setDelegate:r21];
            r0 = objc_alloc();
            r0 = [r0 initWithDelegate:r21];
            r8 = *(r21 + 0x20);
            *(r21 + 0x20) = r0;
            [r8 release];
            *(int8_t *)(r21 + 0x8) = 0x1;
            objc_storeWeak(r21 + 0x10, r20);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadHTMLString:(void *)arg2 baseURL:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r20 = [arg3 retain];
    r0 = [MPCoreInstanceProvider sharedProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isMraidJavascriptAvailable];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_1004f2c24;

loc_1004f2bb8:
    if (r19 == 0x0) goto loc_1004f2cc4;

loc_1004f2bbc:
    var_40 = [r19 retain];
    var_38 = [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [var_38 release];
    r0 = var_40;
    goto loc_1004f2cc0;

loc_1004f2cc0:
    [r0 release];
    goto loc_1004f2cc4;

loc_1004f2cc4:
    [r20 release];
    [r19 release];
    return;

loc_1004f2c24:
    r22 = [[NSError errorWithDomain:*0x100e7f170 code:0x0 userInfo:0x0] retain];
    r23 = [[r21 delegate] retain];
    r24 = [[r21 webView] retain];
    [r23 bridge:r21 didFailLoadingWebView:r24 error:r22];
    [r24 release];
    [r23 release];
    r0 = r22;
    goto loc_1004f2cc0;
}

-(void)fireReadyEvent {
    r22 = [[NSString stringWithFormat:@"mraidbridge.fireReadyEvent()"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.fireReadyEvent();"];
    return;
}

-(void)fireChangeEventForProperty:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"{%@}"] retain];
    r21 = [[NSString stringWithFormat:@"mraidbridge.fireChangeEvent(%@)"] retain];
    r23 = [[MPLogEvent eventWithMessage:r21 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    [r21 release];
    [self executeJavascript:@"window.mraidbridge.fireChangeEvent(%@);"];
    [r20 release];
    return;
}

-(void)fireChangeEventsForProperties:(void *)arg2 {
    r20 = @class(NSString);
    r0 = [arg2 componentsJoinedByString:r2];
    r0 = [r0 retain];
    r20 = [[r20 stringWithFormat:@"{%@}"] retain];
    [r0 release];
    r22 = [[NSString stringWithFormat:@"mraidbridge.fireChangeEvent(%@)"] retain];
    r23 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.fireChangeEvent(%@);"];
    [r20 release];
    return;
}

-(void)fireErrorEventForAction:(void *)arg2 withMessage:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r24 = [[NSString stringWithFormat:@"mraidbridge.fireErrorEvent('%@', '%@')"] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    [r24 release];
    [self executeJavascript:@"window.mraidbridge.fireErrorEvent('%@', '%@');"];
    [r21 release];
    [r19 release];
    return;
}

-(void)fireSizeChangeEvent:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [[NSString stringWithFormat:@"mraidbridge.notifySizeChangeEvent(%.1f, %.1f)"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.notifySizeChangeEvent(%.1f, %.1f);"];
    return;
}

-(void)fireSetScreenSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [[NSString stringWithFormat:@"mraidbridge.setScreenSize(%.1f, %.1f)"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.setScreenSize(%.1f, %.1f);"];
    return;
}

-(void)fireSetDefaultPositionWithPositionRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [[NSString stringWithFormat:@"mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f)"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f);"];
    return;
}

-(void)fireSetCurrentPositionWithPositionRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [[NSString stringWithFormat:@"mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f)"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f);"];
    return;
}

-(void)fireSetPlacementType:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[NSString stringWithFormat:@"mraidbridge.setPlacementType('%@')"] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r23 release];
    [self executeJavascript:@"window.mraidbridge.setPlacementType('%@');"];
    [r20 release];
    return;
}

-(void)fireSetMaxSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r22 = [[NSString stringWithFormat:@"mraidbridge.setMaxSize(%.1f, %.1f)"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self executeJavascript:@"window.mraidbridge.setMaxSize(%.1f, %.1f);"];
    return;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    [arg2 disableJavaScriptDialogs];
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bridge:self didFinishLoadingWebView:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if ([r0 code] != -0x3e7) {
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 bridge:r21 didFailLoadingWebView:r19 error:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)executeJavascript:(void *)arg2 {
    [self executeJavascript:arg2 withVarArgs:&saved_fp + 0x10];
    return;
}

-(void)fireNativeCommandCompleteEvent:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[NSString stringWithFormat:@"mraidbridge.nativeCallComplete('%@')"] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r23 release];
    [self executeJavascript:@"window.mraidbridge.nativeCallComplete('%@');"];
    [r20 release];
    return;
}

-(void)handleMRAIDUseCustomClose:(bool)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bridge:self handleNativeCommandUseCustomClose:arg2];
    [r0 release];
    return;
}

-(void)executeJavascript:(void *)arg2 withVarArgs:(char *)arg3 {
    r22 = [arg2 retain];
    r19 = [objc_alloc() initWithFormat:r22 arguments:arg3];
    [r22 release];
    r0 = [self webView];
    r0 = [r0 retain];
    [[[r0 stringByEvaluatingJavaScriptFromString:r19] retain] release];
    [r0 release];
    [r19 release];
    return;
}

-(void)handleMRAIDSetOrientationPropertiesWithForceOrientationMask:(unsigned long long)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bridge:self handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:arg2];
    [r0 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r24 = arg4;
    r23 = self;
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [[r0 absoluteString] retain];
    r21 = [[NSMutableString stringWithString:r22] retain];
    [r22 release];
    r0 = [r20 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1004f3ae0;

loc_1004f39b0:
    r26 = [[NSString stringWithFormat:@"Trying to process command: %@"] retain];
    r25 = [[MPLogEvent eventWithMessage:r26 level:0x14] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r23 class]];
    [r25 release];
    [r26 release];
    r24 = [[r20 host] retain];
    r25 = [[r20 query] retain];
    r26 = [sub_1004af088() retain];
    [r25 release];
    r0 = [r23 nativeCommandHandler];
    r0 = [r0 retain];
    [r0 handleNativeCommand:r24 withProperties:r26];
    [r0 release];
    [r26 release];
    goto loc_1004f3b24;

loc_1004f3b24:
    r0 = r24;
    goto loc_1004f3b28;

loc_1004f3b28:
    [r0 release];
    goto loc_1004f3b2c;

loc_1004f3b2c:
    r28 = 0x0;
    goto loc_1004f3b30;

loc_1004f3b30:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r28;
    return r0;

loc_1004f3ae0:
    if ([r20 mp_isMoPubScheme] == 0x0) goto loc_1004f3b74;

loc_1004f3af4:
    r0 = [r23 delegate];
    r0 = [r0 retain];
    r24 = r0;
    r1 = @selector(bridge:performActionForMoPubSpecificURL:);
    goto loc_1004f3b18;

loc_1004f3b18:
    objc_msgSend(r0, r1);
    goto loc_1004f3b24;

loc_1004f3b74:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1004f3c28;

loc_1004f3b8c:
    [r21 length];
    [r21 replaceOccurrencesOfString:@"%20" withString:@" " options:0x2 range:0x0];
    r25 = [[MPLogEvent javascriptConsoleLogWithMessage:r21] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r23 class]];
    r0 = r25;
    goto loc_1004f3b28;

loc_1004f3c28:
    if ([r23 shouldHandleRequests] == 0x0) goto loc_1004f3b2c;

loc_1004f3c3c:
    if (([r20 mp_hasTelephoneScheme] & 0x1) != 0x0 || [r20 mp_hasTelephonePromptScheme] != 0x0) goto loc_1004f3c64;

loc_1004f3c8c:
    r0 = [r23 delegate];
    r0 = [r0 retain];
    var_58 = [r0 isLoadingAd];
    [r0 release];
    r0 = [r23 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 hasUserInteractedWithWebViewForBridge:r23];
    [r0 release];
    r28 = 0x1;
    if (r24 != 0x0) {
            r28 = 0x1;
            if ((r27 & 0x1) == 0x0) {
                    r28 = [r20 mp_isSafeForLoadingWithoutUserAction];
            }
    }
    if ((var_58 & 0x1) != 0x0 || r24 != 0x5 && r24 != 0x0) goto loc_1004f3b30;

loc_1004f3d30:
    r0 = [r19 URL];
    r0 = [r0 retain];
    r25 = r0;
    var_58 = r0;
    r0 = [r19 mainDocumentURL];
    r29 = r29;
    r27 = [r0 retain];
    r25 = [r25 isEqual:r2];
    [r27 release];
    [var_58 release];
    if ((r25 & 0x1) == 0x0) goto loc_1004f3da8;

loc_1004f3d94:
    r0 = [r23 delegate];
    goto loc_1004f3c78;

loc_1004f3c78:
    r0 = [r0 retain];
    r24 = r0;
    r1 = @selector(bridge:handleDisplayForDestinationURL:);
    goto loc_1004f3b18;

loc_1004f3da8:
    if (r24 != 0x0 || ([r22 isEqualToString:r2] & 0x1) == 0x0 && [r22 isEqualToString:r2] == 0x0) goto loc_1004f3b30;
    goto loc_1004f3d94;

loc_1004f3c64:
    r0 = [r23 delegate];
    goto loc_1004f3c78;
}

-(void)handleMRAIDOpenCallForURL:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bridge:self handleDisplayForDestinationURL:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)handleMRAIDExpandWithParameters:(void *)arg2 {
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
    r0 = [arg2 retain];
    r22 = r0;
    r20 = [[r0 objectForKey:@"url"] retain];
    r23 = [[r19 delegate] retain];
    r0 = [NSNull null];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (r20 == r0) {
            if (!CPU_FLAGS & E) {
                    r25 = r20;
            }
            else {
                    r25 = 0x0;
            }
    }
    r21 = [[r22 objectForKey:@"useCustomClose"] retain];
    [r22 release];
    [r23 bridge:r19 handleNativeCommandExpandWithURL:r25 useCustomClose:[r21 boolValue]];
    [r21 release];
    [r24 release];
    [r23 release];
    [r20 release];
    return;
}

-(void)handleMRAIDResizeWithParameters:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bridge:self handleNativeCommandResizeWithParameters:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)handleMRAIDClose {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 handleNativeCommandCloseWithBridge:self];
    [r0 release];
    return;
}

-(void)nativeCommandWillPresentModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCommandWillPresentModalView];
    [r0 release];
    return;
}

-(void)nativeCommandDidDismissModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCommandDidDismissModalView];
    [r0 release];
    return;
}

-(void)nativeCommandCompleted:(void *)arg2 {
    [self fireNativeCommandCompleteEvent:arg2];
    return;
}

-(void)nativeCommandFailed:(void *)arg2 withMessage:(void *)arg3 {
    r21 = [arg2 retain];
    [self fireErrorEventForAction:r21 withMessage:arg3];
    [r21 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(unsigned long long)adViewPlacementType {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [r0 placementType];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)userInteractedWithWebView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [r0 hasUserInteractedWithWebViewForBridge:self];
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)handlingWebviewRequests {
    r0 = [self shouldHandleRequests];
    return r0;
}

-(bool)shouldHandleRequests {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setShouldHandleRequests:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
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

-(void *)webView {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)nativeCommandHandler {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setNativeCommandHandler:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end