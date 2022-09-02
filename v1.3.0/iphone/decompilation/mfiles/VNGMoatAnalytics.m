@implementation VNGMoatAnalytics

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011da9c8 != -0x1) {
            dispatch_once(0x1011da9c8, &var_28);
    }
    r0 = *0x1011da9c0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            [r19 setInitialized:0x0];
            [r19 setInitializeDisplayWebViewCalled:0x0];
            r20 = objc_msgSend([NSMutableArray alloc], r20);
            [r19 setCompletionBlocks:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)startWithOptions:(void *)arg2 {
    [self commonStart:arg2];
    return;
}

-(void)start {
    r20 = [[VNGMoatOptions alloc] init];
    [self startWithOptions:r20];
    [r20 release];
    return;
}

-(void)commonStart:(void *)arg2 {
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
    if ([VNGMoatOnOff getStatus] == 0x1) {
            [r20 initializeAppHooks:r19];
            r0 = r19;
    }
    else {
            r20 = [r19 copy];
            [r19 release];
            r19 = @class(VNGMoatOnOff);
            var_38 = r20;
            r20 = [r20 retain];
            [r19 onResurrectionDo:&var_58 withQueue:@"MoatAnalytics" withKey:[VNGMoatAnalytics class]];
            [var_38 release];
            r0 = r20;
    }
    [r0 release];
    return;
}

-(void)initializeAppHooks:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [VNGMoatAnalytics class];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (([r20 initialized] & 0x1) != 0x0) {
            objc_sync_exit(r21);
            [r21 release];
    }
    else {
            [r20 setInitialized:0x1];
            objc_sync_exit(r21);
            [r21 release];
            [r20 setDebug:[r19 debugLoggingEnabled]];
            [r20 setIDFACollectionBlocked:[r19 IDFACollectionEnabled] ^ 0x1];
            r21 = [[NSHashTable weakObjectsHashTable] retain];
            [r20 setTrackedWebViews:r21];
            [r21 release];
            r21 = [[NSMutableSet set] retain];
            [r20 setRetainedWebViewAndBridges:r21];
            [r21 release];
            [VNGMoatUIUtil setFocusListener];
    }
    [r19 release];
    return;
}

-(void)prepareNativeDisplayTracking:(void *)arg2 {
    [self prepareNativeDisplayTracking:arg2 error:0x0];
    return;
}

-(bool)prepareNativeDisplayTracking:(void *)arg2 error:(void * *)arg3 {
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
    r23 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 retrieveKeyWindow];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100670d64;

loc_100670b9c:
    if (r19 == 0x0 || [r19 length] == 0x0) goto loc_100670c04;

loc_100670bb4:
    [r22 setDisplayPartnerCode:r19];
    r25 = [[NSString alloc] initWithFormat:@"Preparing Native Display Tracking Succeeded (PartnerCode = %@)"];
    r21 = 0x0;
    r23 = 0x1;
    goto loc_100670ccc;

loc_100670ccc:
    objc_initWeak(&stack[-128], r22);
    r24 = &var_A8 + 0x28;
    objc_copyWeak(r24, &stack[-128]);
    r25 = [r25 retain];
    var_88 = r25;
    r0 = objc_retainBlock(&var_A8);
    r26 = r0;
    if ([VNGMoatOnOff getStatus] != 0x0) {
            (*(r26 + 0x10))(r26);
    }
    else {
            r22 = [[r22 displayPartnerCode] retain];
            r28 = [[NSValue valueWithNonretainedObject:r22] retain];
            [VNGMoatOnOff onResurrectionDo:r26 withQueue:@"MoatAnalytics" withKey:r28];
            [r28 release];
            [r22 release];
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [var_88 release];
    objc_destroyWeak(r24);
    objc_destroyWeak(&stack[-128]);
    [r25 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100670c04:
    r21 = @"No partner code provided.";
    [r21 retain];
    r24 = 0x1;
    if (r23 != 0x0) {
            r26 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r0 = [NSError errorWithDomain:@"VNGMoatAnalyticsDomain" code:r24 userInfo:r26];
            r29 = r29;
            *r23 = [[r0 retain] autorelease];
            [r26 release];
    }
    goto loc_100670c98;

loc_100670c98:
    r25 = [[NSString alloc] initWithFormat:@"Prepare Native Display Tracking Failed: %@"];
    r23 = 0x0;
    goto loc_100670ccc;

loc_100670d64:
    r21 = @"No window object available. Ensure your application's delegate has a window property.";
    [r21 retain];
    r24 = 0x0;
    if (r23 == 0x0) {
            r21 = @"No window object available. Ensure your application's delegate has a window property.";
    }
    else {
            r26 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r0 = [NSError errorWithDomain:@"VNGMoatAnalyticsDomain" code:r24 userInfo:r26];
            r29 = r29;
            *r23 = [[r0 retain] autorelease];
            [r26 release];
    }
    goto loc_100670c98;
}

-(void)registerCompletionBlock:(void *)arg2 {
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
    if ([VNGMoatCoreUtil getMajorSystemVersion] == 0x8) {
            r0 = [r20 completionBlocks];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 count];
            [r0 release];
            if (r23 >= 0xf) {
                    r0 = [r20 completionBlocks];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 removeObjectsInRange:0x0];
                    [r0 release];
            }
            r0 = [r20 completionBlocks];
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)removeCompletionBlock:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([VNGMoatCoreUtil getMajorSystemVersion] == 0x8) {
            r0 = [r20 completionBlocks];
            r0 = [r0 retain];
            [r0 removeObject:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(bool)isIDFACollectionBlocked {
    r0 = [self IDFACollectionBlocked];
    return r0;
}

-(bool)isInitialized {
    r0 = [self initialized];
    return r0;
}

-(void *)getBridge {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self initializeDisplayWebViewCalled] & 0x1) == 0x0) {
            r0 = [VNGMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 initializeDisplayWebView];
            [r0 release];
    }
    r0 = [r19 globalDisplayWebView];
    r0 = [r0 retain];
    r20 = [[r0 webBridge] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)addTrackedWebView:(void *)arg2 {
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
    r0 = [r20 trackedWebViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    r22 = 0x0;
    if (r19 != 0x0) {
            r22 = 0x0;
            if (r23 != 0x0) {
                    r0 = [r20 trackedWebViews];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 containsObject:r2];
                    [r0 release];
                    if ((r23 & 0x1) != 0x0) {
                            r22 = 0x0;
                    }
                    else {
                            r0 = [r20 trackedWebViews];
                            r0 = [r0 retain];
                            [r0 addObject:r2];
                            [r20 release];
                            r22 = 0x1;
                    }
            }
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)addRetainedWebViewAndBridge:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    if (r19 != 0x0) {
            [r19 retain];
            [VNGMoatLogging reportDevLogWithObject:r20 format:@"retaining webViewBridge to finish pixel fires."];
            r0 = [r20 retainedWebViewAndBridges];
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r23 release];
            [r20 release];
    }
    return;
}

-(void)removeRetainedWebViewAndBridge:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_initWeak(&stack[-64], arg2);
    [r21 release];
    dispatch_time(0x0, 0x77359400);
    objc_copyWeak(&var_60 + 0x20, &stack[-64]);
    objc_copyWeak(&var_60 + 0x28, &saved_fp - 0x28);
    dispatch_after(r21, *__dispatch_main_q, &var_60);
    objc_destroyWeak(&var_60 + 0x28);
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-64]);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void *)retrieveKeyWindow {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 delegate];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            r20 = [[r19 window] retain];
    }
    else {
            r20 = 0x0;
    }
    [UIWindow class];
    r0 = [r20 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = r20;
            }
    }
    r21 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)completionBlocks {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlocks)), 0x1);
    return r0;
}

-(void)setDebug:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([VNGMoatOnOff isDevelopmentEnvironment] != 0x0) {
            if (r19 != 0x0) {
                    [VNGMoatOnOff setDebug:r2];
                    NSLog(@"[%@] Moat enabled - Version %@.", @selector(setDebug:), 0x1);
            }
            else {
                    if ([VNGMoatOnOff getStatus] == 0x1) {
                            [VNGMoatOnOff setDebug:0x0];
                    }
            }
    }
    return;
}

-(void)setCompletionBlocks:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)initializeDisplayWebView {
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
    r0 = [VNGMoatAnalytics class];
    r0 = [r0 retain];
    r22 = r0;
    objc_sync_enter(r0);
    r0 = [r19 retrieveKeyWindow];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (([r19 initializeDisplayWebViewCalled] & 0x1) != 0x0) {
            objc_sync_exit(r22);
    }
    else {
            r0 = [r19 displayPartnerCode];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            [r0 release];
            if (r20 != 0x0 && r23 != 0x0) {
                    [r19 setInitializeDisplayWebViewCalled:0x1];
                    objc_sync_exit(r22);
                    [r22 release];
                    r22 = [[VNGMoatWebViewAndBridge alloc] init];
                    [r19 setGlobalDisplayWebView:r22];
                    [r22 release];
                    r0 = [r19 globalDisplayWebView];
                    r0 = [r0 retain];
                    r24 = [[r0 webView] retain];
                    [r20 addSubview:r24];
                    [r24 release];
                    [r0 release];
                    r22 = [[r19 globalDisplayWebView] retain];
                    r19 = [[r19 displayPartnerCode] retain];
                    [r22 vivifyDisplayWebViewWithPartnerCode:r19];
                    [r19 release];
            }
            else {
                    objc_sync_exit(r22);
            }
    }
    [r22 release];
    [r20 release];
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized & 0x1;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(bool)initializeDisplayWebViewCalled {
    r0 = *(int8_t *)(int64_t *)&self->_initializeDisplayWebViewCalled & 0x1;
    return r0;
}

-(void)setInitializeDisplayWebViewCalled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initializeDisplayWebViewCalled = arg2;
    return;
}

-(bool)IDFACollectionBlocked {
    r0 = *(int8_t *)(int64_t *)&self->_IDFACollectionBlocked & 0x1;
    return r0;
}

-(void)setIDFACollectionBlocked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_IDFACollectionBlocked = arg2;
    return;
}

-(void)setGlobalDisplayWebView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)globalDisplayWebView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_globalDisplayWebView)), 0x1);
    return r0;
}

-(void *)displayPartnerCode {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_displayPartnerCode)), 0x1);
    return r0;
}

-(void)setDisplayPartnerCode:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)trackedWebViews {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackedWebViews)), 0x1);
    return r0;
}

-(void)setTrackedWebViews:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)retainedWebViewAndBridges {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_retainedWebViewAndBridges)), 0x1);
    return r0;
}

-(void)setRetainedWebViewAndBridges:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_retainedWebViewAndBridges, 0x0);
    objc_storeStrong((int64_t *)&self->_trackedWebViews, 0x0);
    objc_storeStrong((int64_t *)&self->_displayPartnerCode, 0x0);
    objc_storeStrong((int64_t *)&self->_globalDisplayWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_completionBlocks, 0x0);
    return;
}

@end