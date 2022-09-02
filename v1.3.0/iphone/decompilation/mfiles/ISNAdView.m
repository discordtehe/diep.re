@implementation ISNAdView

+(void *)createAdViewWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithSize:r2 position:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithSize:(struct CGSize)arg2 position:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
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
    r0 = [[&var_50 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [ISNAdViewLogic new];
            [r19 setIsnAdViewLogic:r20];
            [r20 release];
            [r19 setAdSize:r20];
            [r19 setPointOfOrigin:r20];
            r0 = [SupersonicAdsPublisher sharedInstance];
            r0 = [r0 retain];
            r21 = [[r0 getExternalAdViewIdAndIncreaseAdViewCounter] retain];
            [r19 setContainerIdentifier:r21];
            [r21 release];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)didMoveToSuperview {
    return;
}

-(void *)createWebViewWithFrame:(struct CGRect)arg2 messageHandler:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r2 retain];
    r19 = [WKWebViewConfiguration new];
    r0 = [WKUserContentController new];
    r20 = r0;
    [r0 addScriptMessageHandler:r21 name:@"containerMsgHandler"];
    [r21 release];
    [r19 setUserContentController:r20];
    r0 = [WKWebView alloc];
    r0 = [r0 initWithFrame:r19 configuration:@"containerMsgHandler"];
    r21 = r0;
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)didMoveToWindow {
    r20 = [[self isnAdViewLogic] retain];
    r21 = [[ISNViewVisibilityParameters collectViewVisibilityParametersIntoDictionary:self] retain];
    r19 = [[self communicatorDelegate] retain];
    [r20 reportAdContainerIsVisible:r21 withDelegate:r19];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(bool)isInFirstLoad {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self isnAdViewLogic];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 configs];
    r0 = [r0 retain];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r0 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)loadAd:(void *)arg2 {
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
    r0 = [arg2 mutableCopy];
    r19 = r0;
    [r0 setObject:r20->_containerIdentifier forKey:@"externalAdViewId"];
    r0 = [r20 rootViewController];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
    }
    r24 = [r0 retain];
    [r19 setObject:r24 forKeyedSubscript:@"isViewControllerSet"];
    [r24 release];
    [r23 release];
    if ([r20 isInFirstLoad] != 0x0) {
            r21 = @selector(numberWithBool:);
            r0 = [r20 isnAdViewLogic];
            r0 = [r0 retain];
            [r0 setConfigs:r19];
            [r0 release];
            r21 = [objc_msgSend(@class(NSNumber), r21) retain];
            [r19 setObject:r21 forKeyedSubscript:@"isInReload"];
            [r21 release];
            r0 = [SupersonicAdsPublisher sharedInstance];
            r0 = [r0 retain];
            [r0 loadBanner:r20 andParameters:r19];
            r0 = r0;
    }
    else {
            r20 = [[NSNumber numberWithBool:r2] retain];
            [r19 setObject:r20 forKeyedSubscript:@"isInReload"];
            [r20 release];
            r0 = [SupersonicAdsPublisher sharedInstance];
            r0 = [r0 retain];
            [r0 reloadBanner:r19];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
    r2 = arg2;
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
    r22 = self;
    r0 = [arg3 body];
    r0 = [r0 retain];
    r19 = [[r0 dataUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x1 error:&var_80];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [var_80 retain];
    if (r20 != 0x0) {
            [[r20 localizedDescription] retain];
            NSLog(@"ISNAdView userContentController JSON Error %@", @selector(localizedDescription));
            r0 = r22;
    }
    else {
            r25 = [[r22 isnAdViewLogic] retain];
            r0 = [r21 objectForKeyedSubscript:@"method"];
            r29 = r29;
            r26 = [r0 retain];
            r27 = [r25 shouldHandeleMessageInContainer:r26];
            [r26 release];
            [r25 release];
            if (r27 != 0x0) {
                    r25 = [[r21 objectForKeyedSubscript:r2] retain];
                    r26 = [[ISNViewVisibilityParameters collectViewVisibilityParametersIntoDictionary:r22] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2] retain];
                    [r26 release];
                    [r25 release];
                    r0 = [SSAHelperMethods JSONStringFromDictionary:r24 error:&var_88];
                    r29 = r29;
                    r25 = [r0 retain];
                    r26 = [var_88 retain];
                    if (r26 == 0x0) {
                            r0 = [r22 isnAdViewLogic];
                            r0 = [r0 retain];
                            [r0 sendMessageToAdunit:r25];
                            [r0 release];
                    }
                    [r25 release];
                    [r26 release];
                    r0 = r24;
            }
            else {
                    r23 = [[r22 isnAdViewLogic] retain];
                    r24 = [[r21 objectForKeyedSubscript:@"method"] retain];
                    r22 = [[r22 communicatorDelegate] retain];
                    [r23 messageHandlerFromAdContainer:r24 params:r21 withDelegate:r22];
                    [r22 release];
                    [r24 release];
                    r0 = r23;
            }
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendMessageWithArray:(void *)arg2 params:(void *)arg3 {
    return;
}

-(void)sendMessage:(void *)arg2 params:(void *)arg3 {
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
    if (*(r21 + r22) == 0x0) {
            r0 = [r21 createWebViewWithFrame:r21 messageHandler:r3];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            [r21->_isnAdViewLogic setWebView:*(r21 + r22)];
            [r21 addSubview:r2];
    }
    r0 = [r21 isnAdViewLogic];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 shouldHandeleMessageInContainer:r19];
    [r0 release];
    if (r24 != 0x0) {
            r22 = [[r21 communicatorDelegate] retain];
            r21 = [[ISNViewVisibilityParameters collectViewVisibilityParametersIntoDictionary:r21] retain];
            [r22 didReceiveMessageFromAdView:@"handleGetViewVisibility" params:r21];
    }
    else {
            r22 = [[r21 isnAdViewLogic] retain];
            r21 = [[r21 communicatorDelegate] retain];
            [r22 messageHandlerFromController:r19 params:r20 withDelegate:r21];
    }
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)performCleanup {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)communicatorDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->communicatorDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCommunicatorDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->communicatorDelegate, arg2);
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

-(void *)isnAdViewLogic {
    r0 = self->_isnAdViewLogic;
    return r0;
}

-(void)setIsnAdViewLogic:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_isnAdViewLogic, arg2);
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

-(struct CGSize)adSize {
    r0 = self;
    return r0;
}

-(void)setAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct CGPoint)pointOfOrigin {
    r0 = self;
    return r0;
}

-(void)setPointOfOrigin:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_pointOfOrigin));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setContainerIdentifier:(void *)arg2 {
    self->_containerIdentifier = arg2;
    return;
}

-(void *)containerIdentifier {
    r0 = self->_containerIdentifier;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_isnAdViewLogic, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_destroyWeak((int64_t *)&self->communicatorDelegate);
    return;
}

@end