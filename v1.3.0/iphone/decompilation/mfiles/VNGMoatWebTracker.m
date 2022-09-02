@implementation VNGMoatWebTracker

+(void *)trackerWithWebComponent:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[VNGMoatWebTracker alloc] initWithWebViewComponent:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)trackerWithAdView:(void *)arg2 withWebComponent:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[VNGMoatWebTracker alloc] initWithView:r20 withWebComponent:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)startTracking {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self checkFalseStart] & 0x1) == 0x0) goto loc_100678328;

loc_100678320:
    r0 = 0x0;
    return r0;

loc_100678328:
    if ([VNGMoatOnOff getStatus] == 0x0) goto loc_100678440;

loc_100678340:
    r0 = [VNGMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100678440;

loc_10067837c:
    r0 = [r19 webBridge];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100678520;

loc_1006783a4:
    [[&var_60 super] startTracking];
    r0 = [r19 webBridge];
    r0 = [r0 retain];
    [r0 startTrackingImpression:r19];
    [r0 release];
    r19 = [[r19 trackerID] retain];
    [VNGMoatLogging reportClientLog:0x0 trackerID:r19 format:@"startTracking succeeded"];
    [r19 release];
    goto loc_100678508;

loc_100678508:
    r0 = 0x1;
    return r0;

loc_100678520:
    [VNGMoatLogging reportDevLogWithObject:r19 format:@"No Moat bridge available"];
    r20 = @class(VNGMoatLogging);
    r21 = [[r19 trackerID] retain];
    [r20 reportClientLog:0x1 trackerID:r21 format:@"startTracking failed"];
    [r21 release];
    r20 = [[r19 failureReason] retain];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r20;
            }
            else {
                    r2 = @"WebView was deallocated.";
            }
    }
    [r19 notifyDelegateOfBadArgStart:r2];
    [r20 release];
    goto loc_100678320;

loc_100678440:
    objc_initWeak(r29 - 0x28, r19);
    objc_copyWeak(&var_50 + 0x20, r29 - 0x28);
    r21 = objc_loadWeakRetained(r29 - 0x28);
    r22 = [[NSValue valueWithNonretainedObject:r21] retain];
    [r20 onResurrectionDo:&var_50 withQueue:@"MoatWebTracker" withKey:r22];
    [r22 release];
    [r21 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(r29 - 0x28);
    goto loc_100678508;
}

-(void)stopTracking {
    [VNGMoatLogging reportDevLogWithObject:self format:@"called stopTracking."];
    [self cleanUp];
    [[&var_20 super] stopTracking];
    r20 = @class(VNGMoatLogging);
    r19 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r19 format:@"stopTracking succeeded"];
    [r19 release];
    return;
}

-(void *)initWithWebViewComponent:(void *)arg2 {
    r0 = [self initWithView:r2 withWebComponent:arg2 isNative:0x0];
    return r0;
}

-(void *)initWithView:(void *)arg2 withWebComponent:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithView:r21 withWebComponent:arg3 isNative:0x1];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithView:(void *)arg2 withWebComponent:(void *)arg3 isNative:(bool)arg4 {
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
    r29 = &saved_fp;
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            if ([VNGMoatOnOff getStatus] != 0x0) {
                    r0 = [VNGMoatAnalytics sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 isInitialized];
                    [r0 release];
                    if ((r24 & 0x1) != 0x0) {
                            [r21 setupTrackerForView:r19 withWebComponent:r20 isNative:r22];
                            [r21 retain];
                    }
                    else {
                            objc_initWeak(&stack[-120], r21);
                            objc_initWeak(&stack[-128], r20);
                            objc_initWeak(&stack[-136], r19);
                            objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
                            objc_copyWeak(&var_B8 + 0x28, &stack[-136]);
                            objc_copyWeak(&var_B8 + 0x30, &stack[-128]);
                            r0 = objc_loadWeakRetained(&stack[-136]);
                            r27 = [[NSValue valueWithNonretainedObject:r0] retain];
                            [r26 onResurrectionDo:&var_B8 withQueue:@"MoatWebTracker" withKey:r27];
                            [r27 release];
                            [r0 release];
                            [r21 retain];
                            objc_destroyWeak(&var_B8 + 0x30);
                            objc_destroyWeak(&var_B8 + 0x28);
                            objc_destroyWeak(&var_B8 + 0x20);
                            objc_destroyWeak(&stack[-136]);
                            objc_destroyWeak(&stack[-128]);
                            objc_destroyWeak(&stack[-120]);
                    }
            }
            else {
                    objc_initWeak(&stack[-120], r21);
                    objc_initWeak(&stack[-128], r20);
                    objc_initWeak(&stack[-136], r19);
                    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
                    objc_copyWeak(&var_B8 + 0x28, &stack[-136]);
                    objc_copyWeak(&var_B8 + 0x30, &stack[-128]);
                    r0 = objc_loadWeakRetained(&stack[-136]);
                    r27 = [[NSValue valueWithNonretainedObject:r0] retain];
                    [r26 onResurrectionDo:&var_B8 withQueue:@"MoatWebTracker" withKey:r27];
                    [r27 release];
                    [r0 release];
                    [r21 retain];
                    objc_destroyWeak(&var_B8 + 0x30);
                    objc_destroyWeak(&var_B8 + 0x28);
                    objc_destroyWeak(&var_B8 + 0x20);
                    objc_destroyWeak(&stack[-136]);
                    objc_destroyWeak(&stack[-128]);
                    objc_destroyWeak(&stack[-120]);
            }
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r21;
    return r0;
}

-(bool)setViewToTrack:(void *)arg2 withWebComponent:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (NSClassFromString(@"WKWebView") == 0x0) goto loc_100678de8;

loc_100678d3c:
    r22 = [[VNGMoatUIUtil digForWKWebView:r20 allowMultiple:0x0] retain];
    [r21 setWkWebView:r22];
    [r22 release];
    r0 = [r21 wkWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100678de8;

loc_100678da4:
    [r21 setTrackedView:r19];
    r0 = [r21 trackedView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 layer];
    goto loc_100678e90;

loc_100678e90:
    r23 = [r0 retain];
    [r21 setTrackedLayer:r23];
    [r23 release];
    [r22 release];
    r21 = 0x1;
    goto loc_100678f30;

loc_100678f30:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100678de8:
    r22 = [[VNGMoatUIUtil digForUIWebView:r20 allowMultiple:0x0] retain];
    [r21 setUiWebView:r22];
    [r22 release];
    r0 = [r21 uiWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100678ec4;

loc_100678e50:
    [r21 setTrackedView:r19];
    r0 = [r21 trackedView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 layer];
    goto loc_100678e90;

loc_100678ec4:
    r22 = [[NSString stringWithFormat:@"WebView not found inside container"] retain];
    [r21 setFailureReason:r22];
    [r22 release];
    [VNGMoatLogging reportDevLogWithObject:r21 format:@"WebView not found inside container: %@"];
    r21 = 0x0;
    goto loc_100678f30;
}

-(bool)installBridge {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [VNGMoatLogging reportDevLogWithObject:r19 format:@"Will install bridge"];
    r0 = [r19 wkWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100678fc4;

loc_100678fb8:
    r1 = @selector(installWKWebViewBridge);
    goto loc_100678ff0;

loc_100678ff0:
    r0 = objc_msgSend(r19, r1);
    return r0;

loc_100678fc4:
    r0 = [r19 uiWebView];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100679004;

loc_100678fe8:
    r1 = @selector(installUIWebViewBridge);
    goto loc_100678ff0;

loc_100679004:
    [VNGMoatLogging reportDevLogWithObject:r19 format:@"Unable to track with nil WebView"];
    r0 = 0x0;
    return r0;
}

-(void)setupTrackerForView:(void *)arg2 withWebComponent:(void *)arg3 isNative:(bool)arg4 {
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_100678bb8;

loc_100678b14:
    if (r20 == 0x0) goto loc_100678c10;

loc_100678b18:
    [VNGMoatLogging reportDevLogWithObject:r21 format:@"called to track with adView = %@ | webComponent = %@"];
    [r21 setIsNativeDisplay:r22];
    if ([r21 setViewToTrack:r19 withWebComponent:r20] != 0x0) {
            [r21 installBridge];
            r22 = @class(VNGMoatLogging);
            r21 = [[r21 trackerID] retain];
            r0 = r22;
    }
    else {
            r21 = [[r21 trackerID] retain];
            r0 = @class(VNGMoatLogging);
    }
    goto loc_100678cc4;

loc_100678cc4:
    [r0 reportClientLog:r2 trackerID:r3 format:r4];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100678c10:
    [r21 setFailureReason:@"nil web component reference"];
    r22 = @"nil web component reference. Not tracking.";
    [VNGMoatLogging reportDevLogWithObject:r21 format:r22];
    r0 = [r21 trackerID];
    goto loc_100678c64;

loc_100678c64:
    r23 = @class(VNGMoatLogging);
    r21 = [r0 retain];
    r0 = r23;
    goto loc_100678cc4;

loc_100678bb8:
    [r21 setFailureReason:@"nil view reference"];
    r22 = @"nil view reference. Not tracking.";
    [VNGMoatLogging reportDevLogWithObject:r21 format:r22];
    r0 = [r21 trackerID];
    goto loc_100678c64;
}

-(bool)installWKWebViewBridge {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [VNGMoatWKWebViewBridge alloc];
    r0 = [r19 wkWebView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r20 = [r20 initWithWebView:r22 forNativeAd:[r19 isNativeDisplay]];
    [r22 release];
    [r20 addTracker:r19];
    if (r20 != 0x0) {
            [r19 setWebBridge:r20];
            r21 = [[r19 wkWebView] retain];
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"WK bridge installed into: %@"];
            [r21 release];
    }
    else {
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"WK bridge not installed"];
    }
    [r20 release];
    return 0x1;
}

-(bool)installUIWebViewBridge {
    r20 = [VNGMoatUIWebViewBridge alloc];
    r22 = [[self uiWebView] retain];
    r20 = [r20 initWithWebView:r22 forNativeAds:[self isNativeDisplay]];
    [r22 release];
    [r20 addTracker:self];
    [self setWebBridge:r20];
    r21 = [[self uiWebView] retain];
    [VNGMoatLogging reportDevLogWithObject:self format:@"UI bridge installed into: %@"];
    [r21 release];
    [r20 release];
    return 0x1;
}

-(void)dealloc {
    [VNGMoatLogging reportDevLogWithObject:self format:@"dealloc called."];
    [self cleanUp];
    [[&var_20 super] dealloc];
    return;
}

-(void *)failureReason {
    r0 = self->_failureReason;
    return r0;
}

-(void)cleanUp {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self cleanedUp] & 0x1) == 0x0) {
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"cleaning up webview tracker."];
            if ([NSThread isMainThread] != 0x0) {
                    r0 = [r19 webBridge];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r22 = [r19 isActive];
                            [r21 release];
                            if (r22 != 0x0) {
                                    r0 = [r19 webBridge];
                                    r0 = [r0 retain];
                                    [r0 stopTrackingImpression:r19];
                                    [r0 release];
                            }
                    }
            }
            [r19 setWebBridge:0x0];
            [r19 setCleanedUp:0x1];
    }
    return;
}

-(void)setFailureReason:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_failureReason, arg2);
    return;
}

-(void *)trackedView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_trackedView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTrackedView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_trackedView, arg2);
    return;
}

-(void *)uiWebView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_uiWebView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setUiWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_uiWebView, arg2);
    return;
}

-(void)setWkWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_wkWebView, arg2);
    return;
}

-(void *)wkWebView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_wkWebView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)webBridge {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_webBridge)), 0x1);
    return r0;
}

-(void)setWebBridge:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)cleanedUp {
    r0 = *(int8_t *)(int64_t *)&self->_cleanedUp & 0x1;
    return r0;
}

-(void)setCleanedUp:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_cleanedUp = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webBridge, 0x0);
    objc_destroyWeak((int64_t *)&self->_wkWebView);
    objc_destroyWeak((int64_t *)&self->_uiWebView);
    objc_destroyWeak((int64_t *)&self->_trackedView);
    objc_storeStrong((int64_t *)&self->_failureReason, 0x0);
    return;
}

@end