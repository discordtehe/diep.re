@implementation IROMoatWebTracker

+(void *)trackerWithWebComponent:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[IROMoatWebTracker alloc] initWithWebViewComponent:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)trackerWithAdView:(void *)arg2 withWebComponent:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[IROMoatWebTracker alloc] initWithView:r20 withWebComponent:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)startTracking {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffd0 - 0x40;
    r19 = self;
    if (([self checkFalseStart] & 0x1) != 0x0) goto loc_100751580;

loc_1007512e8:
    if ([IROMoatOnOff getStatus] == 0x0) goto loc_100751408;

loc_100751300:
    r0 = [IROMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100751408;

loc_10075133c:
    r0 = [r19 webBridge];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007514d4;

loc_100751364:
    var_58 = *0x101167f78;
    r0 = [[&var_60 super] startTracking];
    r0 = [r19 webBridge];
    r0 = [r0 retain];
    [r0 startTrackingImpression:r19];
    [r0 release];
    r0 = [r19 trackerID];
    r29 = r29;
    r19 = [r0 retain];
    [IROMoatLogging reportClientLog:0x0 trackerID:r19 format:@"startTracking succeeded"];
    [r19 release];
    r0 = 0x1;
    return r0;

loc_1007514d4:
    [IROMoatLogging reportDevLogWithObject:r19 format:@"No Moat bridge available"];
    r20 = @class(IROMoatLogging);
    r21 = [[r19 trackerID] retain];
    [r20 reportClientLog:0x1 trackerID:r21 format:@"startTracking failed"];
    [r21 release];
    r0 = [r19 failureReason];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"WebView was deallocated.";
            }
            else {
                    r2 = r20;
            }
    }
    [r19 notifyDelegateOfBadArgStart:r2];
    [r20 release];
    goto loc_100751580;

loc_100751580:
    r0 = 0x0;
    return r0;

loc_100751408:
    objc_initWeak(r29 - 0x28, r19);
    var_48 = 0xffffffffc2000000;
    var_40 = 0x1007515b4;
    var_38 = 0x100e8ea00;
    objc_copyWeak(&var_50 + 0x20, r29 - 0x28);
    r21 = objc_loadWeakRetained(r29 - 0x28);
    r0 = [NSValue valueWithNonretainedObject:r21];
    r29 = r29;
    r22 = [r0 retain];
    r0 = [r20 onResurrectionDo:&var_50 withQueue:@"MoatWebTracker" withKey:r22];
    [r22 release];
    [r21 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(r29 - 0x28);
    r0 = 0x1;
    return r0;
}

-(void)stopTracking {
    [IROMoatLogging reportDevLogWithObject:self format:@"called stopTracking."];
    [self cleanUp];
    [[&var_20 super] stopTracking];
    r20 = @class(IROMoatLogging);
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x70;
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_100751808;

loc_100751798:
    if ([IROMoatOnOff getStatus] == 0x0) goto loc_100751814;

loc_1007517b0:
    r0 = [IROMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isInitialized];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_100751814;

loc_1007517ec:
    [r21 setupTrackerForView:r19 withWebComponent:r20 isNative:r22];
    goto loc_100751808;

loc_100751808:
    [r21 retain];
    goto loc_10075193c;

loc_10075193c:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r21;
    return r0;

loc_100751814:
    objc_initWeak(&stack[-120], r21);
    objc_initWeak(&var_70, r20);
    objc_initWeak(&stack[-136], r19);
    var_B0 = 0xffffffffc2000000;
    var_A8 = 0x1007519b4;
    var_A0 = 0x100e8ea30;
    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
    objc_copyWeak(&var_B8 + 0x28, &stack[-136]);
    objc_copyWeak(&var_B8 + 0x30, &var_70);
    var_80 = r22;
    r0 = objc_loadWeakRetained(&stack[-136]);
    r22 = r0;
    r0 = [NSValue valueWithNonretainedObject:r22];
    r29 = r29;
    r27 = [r0 retain];
    r0 = [r26 onResurrectionDo:&var_B8 withQueue:@"MoatWebTracker" withKey:r27];
    [r27 release];
    [r22 release];
    [r21 retain];
    objc_destroyWeak(&var_B8 + 0x30);
    objc_destroyWeak(&var_B8 + 0x28);
    objc_destroyWeak(&var_B8 + 0x20);
    r0 = objc_destroyWeak(&stack[-136]);
    r0 = objc_destroyWeak(&var_70);
    r0 = objc_destroyWeak(&stack[-120]);
    goto loc_10075193c;
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
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Will install bridge"];
    r0 = [r19 wkWebView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100751f8c;

loc_100751f80:
    r1 = @selector(installWKWebViewBridge);
    goto loc_100751fb8;

loc_100751fb8:
    r0 = objc_msgSend(r19, r1);
    return r0;

loc_100751f8c:
    r0 = [r19 uiWebView];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100751fd0;

loc_100751fb0:
    r1 = @selector(installUIWebViewBridge);
    goto loc_100751fb8;

loc_100751fd0:
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Unable to track with nil WebView"];
    r0 = 0x0;
    return r0;
}

-(void)setupTrackerForView:(void *)arg2 withWebComponent:(void *)arg3 isNative:(bool)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_100751b80;

loc_100751ae0:
    if (r20 == 0x0) goto loc_100751bd8;

loc_100751ae4:
    var_40 = r19;
    stack[-72] = r20;
    [IROMoatLogging reportDevLogWithObject:r21 format:@"called to track with adView = %@ | webComponent = %@"];
    [r21 setIsNativeDisplay:r22];
    if ([r21 setViewToTrack:r19 withWebComponent:r20] != 0x0) {
            [r21 installBridge];
            r22 = @class(IROMoatLogging);
            r0 = [r21 trackerID];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r22 = @class(IROMoatLogging);
            r0 = [r21 trackerID];
            r29 = r29;
            r21 = [r0 retain];
    }
    r0 = r22;
    goto loc_100751c8c;

loc_100751c8c:
    [r0 reportClientLog:r2 trackerID:r3 format:r4];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100751bd8:
    [r21 setFailureReason:@"nil web component reference"];
    r22 = @"nil web component reference. Not tracking.";
    [IROMoatLogging reportDevLogWithObject:r21 format:r22];
    r0 = [r21 trackerID];
    r29 = r29;
    goto loc_100751c2c;

loc_100751c2c:
    r23 = @class(IROMoatLogging);
    r21 = [r0 retain];
    r0 = r23;
    goto loc_100751c8c;

loc_100751b80:
    [r21 setFailureReason:@"nil view reference"];
    r22 = @"nil view reference. Not tracking.";
    [IROMoatLogging reportDevLogWithObject:r21 format:r22];
    r0 = [r21 trackerID];
    r29 = r29;
    goto loc_100751c2c;
}

-(bool)installWKWebViewBridge {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r19 = self;
    r20 = [IROMoatWKWebViewBridge alloc];
    r0 = [r19 wkWebView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r20 = [r20 initWithWebView:r22 forNativeAd:[r19 isNativeDisplay]];
    [r22 release];
    [r20 addTracker:r19];
    if (r20 != 0x0) {
            [r19 setWebBridge:r20];
            r0 = [r19 wkWebView];
            r29 = r29;
            r21 = [r0 retain];
            var_30 = r21;
            [IROMoatLogging reportDevLogWithObject:r19 format:@"WK bridge installed into: %@"];
            [r21 release];
    }
    else {
            [IROMoatLogging reportDevLogWithObject:r19 format:@"WK bridge not installed"];
    }
    [r20 release];
    return 0x1;
}

-(bool)setViewToTrack:(void *)arg2 withWebComponent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (NSClassFromString(@"WKWebView") == 0x0) goto loc_100751db0;

loc_100751d04:
    r22 = [[IROMoatUIUtil digForWKWebView:r20 allowMultiple:0x0] retain];
    [r21 setWkWebView:r22];
    [r22 release];
    r0 = [r21 wkWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100751db0;

loc_100751d6c:
    [r21 setTrackedView:r19];
    r0 = [r21 trackedView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 layer];
    r29 = r29;
    goto loc_100751e58;

loc_100751e58:
    r23 = [r0 retain];
    [r21 setTrackedLayer:r23];
    [r23 release];
    [r22 release];
    r21 = 0x1;
    goto loc_100751ef8;

loc_100751ef8:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100751db0:
    r22 = [[IROMoatUIUtil digForUIWebView:r20 allowMultiple:0x0] retain];
    [r21 setUiWebView:r22];
    [r22 release];
    r0 = [r21 uiWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100751e8c;

loc_100751e18:
    [r21 setTrackedView:r19];
    r0 = [r21 trackedView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 layer];
    r29 = r29;
    goto loc_100751e58;

loc_100751e8c:
    r0 = [NSString stringWithFormat:@"WebView not found inside container"];
    r29 = r29;
    r22 = [r0 retain];
    [r21 setFailureReason:r22];
    [r22 release];
    var_40 = r20;
    [IROMoatLogging reportDevLogWithObject:r21 format:@"WebView not found inside container: %@"];
    r21 = 0x0;
    goto loc_100751ef8;
}

-(bool)installUIWebViewBridge {
    r20 = [IROMoatUIWebViewBridge alloc];
    r22 = [[self uiWebView] retain];
    r20 = [r20 initWithWebView:r22 forNativeAds:[self isNativeDisplay]];
    [r22 release];
    [r20 addTracker:self];
    [self setWebBridge:r20];
    r21 = [[self uiWebView] retain];
    [IROMoatLogging reportDevLogWithObject:self format:@"UI bridge installed into: %@"];
    [r21 release];
    [r20 release];
    return 0x1;
}

-(void)dealloc {
    [IROMoatLogging reportDevLogWithObject:self format:@"dealloc called."];
    [self cleanUp];
    [[&var_20 super] dealloc];
    return;
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
            [IROMoatLogging reportDevLogWithObject:r19 format:@"cleaning up webview tracker."];
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

-(void *)failureReason {
    r0 = self->_failureReason;
    return r0;
}

-(void)setFailureReason:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_failureReason));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)trackedView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_trackedView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)uiWebView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_uiWebView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTrackedView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_trackedView, arg2);
    return;
}

-(void)setUiWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_uiWebView, arg2);
    return;
}

-(void *)wkWebView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_wkWebView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWkWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_wkWebView, arg2);
    return;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webBridge, 0x0);
    objc_destroyWeak((int64_t *)&self->_wkWebView);
    objc_destroyWeak((int64_t *)&self->_uiWebView);
    objc_destroyWeak((int64_t *)&self->_trackedView);
    objc_storeStrong((int64_t *)&self->_failureReason, 0x0);
    return;
}

-(void)setCleanedUp:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_cleanedUp = arg2;
    return;
}

@end