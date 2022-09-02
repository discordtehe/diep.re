@implementation IROMoatAnalytics

+(void *)sharedInstance {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011dade0 != -0x1) {
            r0 = dispatch_once(0x1011dade0, &var_28);
    }
    r0 = *0x1011dadd8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffd0) = self;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            [r19 setInitialized:0x0];
            [r19 setLocationServicesEnabled:0x1];
            [r19 setWebViewInitialized:0x0];
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
    r20 = [[IROMoatOptions alloc] init];
    [self startWithOptions:r20];
    [r20 release];
    return;
}

-(void)commonStart:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x30;
    r20 = self;
    r19 = [arg2 retain];
    if ([IROMoatOnOff getStatus] == 0x1) {
            [r20 initializeAppHooks:r19];
            r0 = r19;
    }
    else {
            r20 = [r19 copy];
            [r19 release];
            r19 = @class(IROMoatOnOff);
            var_50 = 0xffffffffc2000000;
            var_48 = 0x100749c7c;
            var_40 = 0x100e8e890;
            var_38 = r20;
            r20 = [r20 retain];
            r0 = [r19 onResurrectionDo:&var_58 withQueue:@"MoatAnalytics" withKey:[IROMoatAnalytics class]];
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
    r0 = [IROMoatAnalytics class];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (([r20 initialized] & 0x1) != 0x0) {
            objc_sync_exit(r21);
            r0 = r21;
    }
    else {
            [r20 setInitialized:0x1];
            objc_sync_exit(r21);
            [r21 release];
            [r20 setLocationServicesEnabled:[r19 locationServicesEnabled]];
            [r20 setDebug:[r19 debugLoggingEnabled]];
            [r20 setIDFACollectionBlocked:[r19 IDFACollectionEnabled] ^ 0x1];
            r21 = [[NSHashTable weakObjectsHashTable] retain];
            [r20 setTrackedWebViews:r21];
            [r21 release];
            [IROMoatUIUtil setFocusListener];
            r0 = [IROMoatLocationManager sharedInstance];
            r0 = [r0 retain];
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)prepareNativeDisplayTracking:(void *)arg2 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffd0 - 0x30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 setDisplayPartnerCode:r19];
    if ([IROMoatOnOff getStatus] != 0x0) {
            [IROMoatLogging reportDevLogWithObject:r20 format:@"Preparing Native Display Tracking - PartnerCode = %@"];
            var_50 = r19;
            [IROMoatLogging reportClientLog:0x0 format:@"prepared for Native Display Tracking with PartnerCode = %@"];
            [r20 initializeDisplayWebView];
    }
    else {
            var_40 = 0xffffffffc2000000;
            var_38 = 0x100749fc4;
            var_30 = 0x100e8e8c0;
            r8 = [r19 retain];
            var_28 = r8;
            r0 = [NSValue valueWithNonretainedObject:r8];
            r29 = r29;
            r21 = [r0 retain];
            r0 = [IROMoatOnOff onResurrectionDo:&var_48 withQueue:@"MoatAnalytics" withKey:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
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
    if ([IROMoatCoreUtil getMajorSystemVersion] == 0x8) {
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

-(bool)areLocationServicesEnabled {
    r0 = [self locationServicesEnabled];
    return r0;
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
    if ([IROMoatCoreUtil getMajorSystemVersion] == 0x8) {
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
    if (([self webViewInitialized] & 0x1) == 0x0) {
            r0 = [IROMoatAnalytics sharedInstance];
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

-(void)setDebug:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = arg2;
    if ([IROMoatOnOff isDevelopmentEnvironment] != 0x0) {
            if (r19 != 0x0) {
                    [IROMoatOnOff setDebug:r2];
                    var_18 = @"3.5.1";
                    var_20 = @"MoatAnalytics:SUCCESS";
                    NSLog(@"[%@] Moat enabled - Version %@.", @selector(setDebug:), 0x1);
            }
            else {
                    if ([IROMoatOnOff getStatus] == 0x1) {
                            [IROMoatOnOff setDebug:0x0];
                    }
            }
    }
    return;
}

-(void *)completionBlocks {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlocks)), 0x1);
    return r0;
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
    r0 = [IROMoatAnalytics class];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (([r19 webViewInitialized] & 0x1) != 0x0) {
            objc_sync_exit(r20);
    }
    else {
            [r19 setWebViewInitialized:0x1];
            objc_sync_exit(r20);
            [r20 release];
            r20 = [[IROMoatWebViewAndBridge alloc] init];
            [r19 setGlobalDisplayWebView:r20];
            [r20 release];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 delegate];
            r0 = [r0 retain];
            r20 = [[r0 window] retain];
            [r0 release];
            [r21 release];
            r0 = [r19 globalDisplayWebView];
            r0 = [r0 retain];
            r23 = [[r0 webView] retain];
            [r20 addSubview:r23];
            [r23 release];
            [r0 release];
            r21 = [[r19 globalDisplayWebView] retain];
            r19 = [[r19 displayPartnerCode] retain];
            [r21 vivifyDisplayWebViewWithPartnerCode:r19];
            [r19 release];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)setCompletionBlocks:(void *)arg2 {
    objc_setProperty_atomic();
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

-(bool)webViewInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_webViewInitialized & 0x1;
    return r0;
}

-(void)setWebViewInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webViewInitialized = arg2;
    return;
}

-(bool)locationServicesEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_locationServicesEnabled & 0x1;
    return r0;
}

-(void)setLocationServicesEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_locationServicesEnabled = arg2;
    return;
}

-(void)setIDFACollectionBlocked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_IDFACollectionBlocked = arg2;
    return;
}

-(bool)IDFACollectionBlocked {
    r0 = *(int8_t *)(int64_t *)&self->_IDFACollectionBlocked & 0x1;
    return r0;
}

-(void *)globalDisplayWebView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_globalDisplayWebView)), 0x1);
    return r0;
}

-(void)setGlobalDisplayWebView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackedWebViews, 0x0);
    objc_storeStrong((int64_t *)&self->_displayPartnerCode, 0x0);
    objc_storeStrong((int64_t *)&self->_globalDisplayWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_completionBlocks, 0x0);
    return;
}

@end