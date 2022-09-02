@implementation MPNativeAdRequest

-(void)dealloc {
    [*(self + 0x30) cancel];
    [*(self + 0x30) setDelegate:0x0];
    [*(self + 0x40) setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

+(void *)requestWithAdUnitIdentifier:(void *)arg2 rendererConfigurations:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [objc_alloc() initWithAdUnitIdentifier:r21 rendererConfigurations:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithAdUnitIdentifier:(void *)arg2 rendererConfigurations:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r22 + 0x18);
            *(r22 + 0x18) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = [r0 initWithDelegate:r22];
            r8 = *(r22 + 0x30);
            *(r22 + 0x30) = r0;
            [r8 release];
            objc_storeStrong(r22 + 0x20, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)startWithCompletionHandler:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[r20 adUnitIdentifier] retain];
            r22 = [[r20 targeting] retain];
            r0 = [r20 targeting];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 desiredAssets];
            r0 = [r0 retain];
            r26 = [[r0 allObjects] retain];
            r23 = [[MPAdServerURLBuilder URLWithAdUnitID:r21 targeting:r22 desiredAssets:r26 viewability:0x0] retain];
            [r20 setURL:r23];
            [r23 release];
            [r26 release];
            [r0 release];
            [r24 release];
            [r22 release];
            [r21 release];
            [r20 assignCompletionHandler:r19];
            r21 = [[r20 URL] retain];
            [r20 loadAdWithURL:r21];
    }
    else {
            r21 = [[NSString stringWithFormat:@"Native Ad Request did not start - requires completion handler block."] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)assignCompletionHandler:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [r0 retain];
    [self setCompletionHandler:&var_50];
    [r0 release];
    [r21 release];
    return;
}

-(void)startForAdSequence:(long long)arg2 withCompletionHandler:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = arg2;
    r20 = self;
    r0 = [arg3 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[r20 adUnitIdentifier] retain];
            r23 = [[r20 targeting] retain];
            r0 = [r20 targeting];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 desiredAssets];
            r0 = [r0 retain];
            r27 = [[r0 allObjects] retain];
            r22 = [[MPAdServerURLBuilder URLWithAdUnitID:r21 targeting:r23 desiredAssets:r27 adSequence:r22 viewability:0x0] retain];
            [r20 setURL:r22];
            [r22 release];
            [r27 release];
            [r0 release];
            [r25 release];
            [r23 release];
            [r21 release];
            [r20 assignCompletionHandler:r19];
            r21 = [[r20 URL] retain];
            [r20 loadAdWithURL:r21];
    }
    else {
            r21 = [[NSString stringWithFormat:@"Native Ad Request did not start - requires completion handler block."] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)loadAdWithURL:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r24 = [[MPLogEvent adLoadAttempt] retain];
    r0 = [r20 adUnitIdentifier];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [MPLogging logEvent:r24 source:r25 fromClass:[r20 class]];
    [r25 release];
    [r24 release];
    if ([r20 loading] != 0x0) {
            r23 = [[NSString stringWithFormat:@"Native ad request is already loading an ad. Wait for previous load to finish."] retain];
            r25 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r25 source:0x0 fromClass:[r20 class]];
            [r25 release];
    }
    else {
            [r20 setLoading:0x1];
            r0 = [r20 communicator];
            r0 = [r0 retain];
            r23 = r0;
            [r0 loadURL:r19];
    }
    [r23 release];
    [r19 release];
    return;
}

-(void)failAdRequest {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [self adConfiguration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 nextURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 adConfiguration];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 nextURL];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 length];
            [r0 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            if (r27 != 0x0) {
                    [r19 setLoading:0x0];
                    r0 = [r19 adConfiguration];
                    r0 = [r0 retain];
                    r20 = r0;
                    r21 = [[r0 nextURL] retain];
                    [r19 loadAdWithURL:r21];
                    [r21 release];
            }
            else {
                    r20 = [sub_1004fd5b0() retain];
                    [r19 completeAdRequestWithAdObject:0x0 error:r20];
            }
    }
    else {
            [r23 release];
            [r22 release];
            r20 = [sub_1004fd5b0() retain];
            [r19 completeAdRequestWithAdObject:0x0 error:r20];
    }
    [r20 release];
    return;
}

-(void)completeAdRequestWithAdObject:(void *)arg2 error:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = [arg3 retain];
    [r20 didStopLoading];
    [r20 setLoading:0x0];
    [r20 setRemainingConfigurations:0x0];
    r22 = [[r20 customEventRenderer] retain];
    [r19 setRenderer:r22];
    [r22 release];
    r22 = [[r20 adConfiguration] retain];
    [r19 setConfiguration:r22];
    [r22 release];
    r24 = [[r20 adUnitIdentifier] retain];
    [r19 setAdUnitID:r24];
    [r24 release];
    r0 = [r19 adAdapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(setAdConfiguration:)];
    [r0 release];
    if (r27 != 0x0) {
            r25 = [[r19 adAdapter] retain];
            r0 = [r20 adConfiguration];
            r29 = r29;
            [r0 retain];
            [r25 performSelector:@selector(setAdConfiguration:) withObject:r3];
            [r23 release];
            [r25 release];
    }
    if (r21 != 0x0) {
            r24 = [[MPLogEvent adFailedToLoadWithError:r21] retain];
            r0 = [r20 adUnitIdentifier];
            r29 = r29;
    }
    else {
            r24 = [[MPLogEvent adDidLoad] retain];
            r0 = [r20 adUnitIdentifier];
            r29 = r29;
    }
    r22 = [r0 retain];
    [MPLogging logEvent:r24 source:r22 fromClass:[r20 class]];
    [r22 release];
    [r24 release];
    r0 = [r20 completionHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 completionHandler];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r22 release];
            [r20 setCompletionHandler:0x0];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)communicatorDidReceiveAdConfigurations:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 mutableCopy];
    [r19 setRemainingConfigurations:r20];
    [r20 release];
    r0 = [r19 remainingConfigurations];
    r0 = [r0 retain];
    r22 = [[r0 removeFirst] retain];
    [r19 setAdConfiguration:r22];
    [r22 release];
    [r0 release];
    r0 = [r19 remainingConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            [r20 release];
            r20 = [[r19 adConfiguration] retain];
            [r19 fetchAdWithConfiguration:r20];
    }
    else {
            r0 = [r19 adConfiguration];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r20 release];
            if (r0 != 0x0) {
                    r20 = [[r19 adConfiguration] retain];
                    [r19 fetchAdWithConfiguration:r20];
            }
            else {
                    r24 = [[r19 adUnitIdentifier] retain];
                    r22 = [[NSString stringWithFormat:*0x100e7f420] retain];
                    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
                    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
                    [r21 release];
                    [r22 release];
                    [r24 release];
                    r20 = [sub_1004fd7a0() retain];
                    [r19 completeAdRequestWithAdObject:0x0 error:r20];
            }
    }
    [r20 release];
    return;
}

-(void)fetchAdWithConfiguration:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 adUnitWarmingUp] == 0x0) goto loc_1004e8068;

loc_1004e7f90:
    r25 = [[r20 adUnitIdentifier] retain];
    r23 = [[NSString stringWithFormat:*0x100e7f428] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    [r22 release];
    [r23 release];
    [r25 release];
    r0 = sub_1004fd6d0();
    goto loc_1004e8180;

loc_1004e8180:
    r21 = [r0 retain];
    [r20 completeAdRequestWithAdObject:0x0 error:r21];
    goto loc_1004e82d0;

loc_1004e82d0:
    [r21 release];
    [r19 release];
    return;

loc_1004e8068:
    r0 = [r19 networkType];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isEqualToString:*0x100e7f1b8];
    [r0 release];
    if (r24 == 0x0) goto loc_1004e81a4;

loc_1004e80c4:
    r25 = [[r20 adUnitIdentifier] retain];
    r23 = [[NSString stringWithFormat:*0x100e7f420] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    [r22 release];
    [r23 release];
    [r25 release];
    r0 = sub_1004fd7a0();
    goto loc_1004e8180;

loc_1004e81a4:
    r23 = [[NSString stringWithFormat:@"Received data from MoPub to construct native ad.\n"] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    [r22 release];
    [r23 release];
    r0 = [r20 communicator];
    r0 = [r0 retain];
    [r0 sendBeforeLoadUrlWithConfiguration:r19];
    [r0 release];
    r0 = [NSDate now];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r20 setAdapterLoadStartTimestamp:r19];
    [r0 release];
    r21 = [[r20 adConfiguration] retain];
    [r20 getAdWithConfiguration:r21];
    goto loc_1004e82d0;
}

-(unsigned long long)adTypeForAdServerCommunicator:(void *)arg2 {
    return 0x0;
}

-(void *)adUnitIDForAdServerCommunicator:(void *)arg2 {
    r0 = [self adUnitIdentifier];
    return r0;
}

-(void)communicatorDidFailWithError:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Error: Couldn't retrieve an ad from MoPub. Message: %@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r20 = [sub_1004fd870() retain];
    [self completeAdRequestWithAdObject:0x0 error:r20];
    [r20 release];
    return;
}

-(void)startTimeoutTimer {
    var_40 = d9;
    stack[-72] = d8;
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
    r0 = [self adConfiguration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_1004e8d88;

loc_1004e8d50:
    r0 = [r19 adConfiguration];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 adTimeoutInterval];
    if (d0 >= 0x0) goto loc_1004e8e28;

loc_1004e8d80:
    [r22 release];
    goto loc_1004e8d88;

loc_1004e8d88:
    [r20 release];
    r20 = [[MPTimer timerWithTimeInterval:r19 target:@selector(timeout) selector:0x0 repeats:r5] retain];
    [r19 setTimeoutTimer:r20];
    [r20 release];
    r0 = [r19 timeoutTimer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    return;

loc_1004e8e28:
    r0 = [r19 adConfiguration];
    r29 = r29;
    r0 = [r0 retain];
    [r0 adTimeoutInterval];
    v8 = v0;
    [r21 release];
    [r22 release];
    [r20 release];
    if (d8 > 0x0) {
            r20 = [[MPTimer timerWithTimeInterval:r19 target:@selector(timeout) selector:0x0 repeats:r5] retain];
            [r19 setTimeoutTimer:r20];
            [r20 release];
            r0 = [r19 timeoutTimer];
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
    }
    return;
}

-(void)getAdWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r29 = &saved_fp;
    r28 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 customEventClass] != 0x0) {
            var_180 = [r19 customEventClass];
            r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:r2] retain] level:0x1e];
            r29 = r29;
            [r0 retain];
            [r28 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r21 release];
            [r23 release];
    }
    r26 = @selector(class);
    [r28 startTimeoutTimer];
    if ([r19 customEventClass] == objc_msgSend(@class(MPMoPubNativeCustomEvent), r26)) goto loc_1004e721c;

loc_1004e71f8:
    r26 = @selector(class);
    if ([r19 customEventClass] != objc_msgSend(@class(MOPUBNativeVideoCustomEvent), r26)) goto loc_1004e754c;

loc_1004e721c:
    r26 = @selector(class);
    r21 = [[r19 adResponseData] retain];
    r0 = [NSJSONSerialization mp_JSONObjectWithData:r21 options:0x0 clearNullObjects:0x1 error:&var_108];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [var_108 retain];
    [r21 release];
    if ([r19 customEventClass] == objc_msgSend(@class(MOPUBNativeVideoCustomEvent), r26)) goto loc_1004e72d8;

loc_1004e72a8:
    r26 = @selector(class);
    if ([r19 customEventClass] == objc_msgSend(@class(MPMoPubNativeCustomEvent), r26)) goto loc_1004e73f8;

loc_1004e748c:
    [[r28 adUnitIdentifier] retain];
    [r23 setObject:r2 forKeyedSubscript:r3];
    [r20 release];
    [r23 setObject:r2 forKeyedSubscript:r3];
    r0 = [r19 dspCreativeId];
    r29 = r29;
    [r0 retain];
    [r23 setObject:r2 forKeyedSubscript:r3];
    [r20 release];
    [r19 setCustomEventClassData:r23];
    [r23 release];
    [r24 release];
    goto loc_1004e754c;

loc_1004e754c:
    var_170 = @selector(customEventClass);
    var_168 = r26;
    var_158 = r19;
    r23 = [NSStringFromClass([r19 customEventClass]) retain];
    var_140 = q0;
    var_160 = r28;
    r0 = [r28 rendererConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1004e7660;

loc_1004e75bc:
    r26 = r0;
    r22 = *var_140;
    goto loc_1004e75d0;

loc_1004e75d0:
    r19 = 0x0;
    goto loc_1004e75dc;

loc_1004e75dc:
    if (*var_140 != r22) {
            objc_enumerationMutation(r25);
    }
    r28 = @selector(containsObject:);
    r21 = *(var_148 + r19 * 0x8);
    r0 = [r21 supportedCustomEvents];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ((objc_msgSend(r0, r28) & 0x1) != 0x0) goto loc_1004e766c;

loc_1004e7624:
    [r20 release];
    r19 = r19 + 0x1;
    if (r19 < r26) goto loc_1004e75dc;

loc_1004e7638:
    r0 = [r25 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r26 = r0;
    if (r0 != 0x0) goto loc_1004e75d0;

loc_1004e7660:
    [r25 release];
    r19 = var_158;
    r0 = objc_msgSend(r19, var_170);
    r0 = NSStringFromClass(r0);
    r0 = [r0 retain];
    r24 = [[NSString stringWithFormat:@"Could not find renderer configuration for custom event class: %@"] retain];
    [r0 release];
    r25 = [[NSError errorWithCode:0x1a localizedDescription:r24] retain];
    r21 = [[MPLogEvent error:r25 message:0x0] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:objc_msgSend(var_160, var_168)];
    [r21 release];
    [var_160 nativeCustomEvent:0x0 didFailToLoadAdWithError:r25];
    goto loc_1004e7a4c;

loc_1004e7a4c:
    var_80 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard != var_80) {
            __stack_chk_fail();
    }
    return;

loc_1004e766c:
    r24 = [r21 retain];
    [r20 release];
    [r25 release];
    if (r24 != 0x0) {
            [r24 rendererClass];
            r20 = objc_alloc();
            r0 = [r24 rendererSettings];
            r29 = r29;
            r21 = [r0 retain];
            r20 = [r20 initWithRendererSettings:r21];
            r27 = var_160;
            [r27 setCustomEventRenderer:r20];
            [r20 release];
            [r21 release];
            r19 = var_158;
            r21 = var_170;
            objc_msgSend(r19, r21);
            r25 = [objc_alloc() init];
            r28 = var_168;
            objc_msgSend(@class(MPNativeCustomEvent), r28);
            if (([r25 isKindOfClass:r2] & 0x1) != 0x0) {
                    [r25 setDelegate:r27];
                    r0 = [r27 targeting];
                    r0 = [r0 retain];
                    r21 = [[r0 localExtras] retain];
                    [r25 setLocalExtras:r21];
                    [r21 release];
                    [r0 release];
                    [r27 setNativeCustomEvent:r25];
                    r22 = [[r27 nativeCustomEvent] retain];
                    r26 = [[r19 customEventClassData] retain];
                    r20 = [[r19 advancedBidPayload] retain];
                    [r22 requestAdWithCustomEventInfo:r26 adMarkup:r20];
                    [r20 release];
            }
            else {
                    r0 = objc_msgSend(r19, r21);
                    r0 = NSStringFromClass(r0);
                    r0 = [r0 retain];
                    r22 = [[NSString stringWithFormat:@"Custom Event Class: %@ does not extend MPNativeCustomEvent"] retain];
                    [r0 release];
                    r26 = [[NSError errorWithCode:0x1a localizedDescription:r22] retain];
                    r21 = [[MPLogEvent error:r26 message:0x0] retain];
                    [MPLogging logEvent:r21 source:0x0 fromClass:objc_msgSend(r27, r28)];
                    [r21 release];
                    [r27 nativeCustomEvent:0x0 didFailToLoadAdWithError:r26];
            }
            [r26 release];
            [r22 release];
    }
    else {
            r19 = var_158;
            r0 = objc_msgSend(r19, var_170);
            r0 = NSStringFromClass(r0);
            r0 = [r0 retain];
            r24 = [[NSString stringWithFormat:@"Could not find renderer configuration for custom event class: %@"] retain];
            [r0 release];
            r25 = [[NSError errorWithCode:0x1a localizedDescription:r24] retain];
            r21 = [[MPLogEvent error:r25 message:0x0] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:objc_msgSend(var_160, var_168)];
            [r21 release];
            [var_160 nativeCustomEvent:0x0 didFailToLoadAdWithError:r25];
    }
    goto loc_1004e7a4c;

loc_1004e73f8:
    r20 = objc_alloc();
    [r19 nativeImpressionMinVisiblePixels];
    r21 = [r19 nativeImpressionMinVisiblePercent];
    [r19 nativeImpressionMinVisibleTimeInterval];
    [r20 initWithImpressionMinVisiblePixels:r21 impressionMinVisiblePercent:0x0 impressionMinVisibleSeconds:0x1];
    [r23 setObject:r2 forKeyedSubscript:r3];
    r0 = r20;
    goto loc_1004e7488;

loc_1004e7488:
    [r0 release];
    goto loc_1004e748c;

loc_1004e72d8:
    r26 = @selector(class);
    var_158 = objc_alloc();
    r20 = [r19 nativeVideoPlayVisiblePercent];
    r25 = [r19 nativeVideoPauseVisiblePercent];
    [r19 nativeImpressionMinVisiblePixels];
    r0 = [r19 nativeImpressionMinVisiblePercent];
    r22 = r26;
    r26 = r0;
    [r19 nativeImpressionMinVisibleTimeInterval];
    [r19 nativeVideoMaxBufferingTime];
    r0 = [r19 nativeVideoTrackers];
    r29 = r29;
    r27 = [r0 retain];
    r4 = r26;
    r26 = r22;
    [var_158 initWithPlayVisiblePercent:r20 pauseVisiblePercent:r25 impressionMinVisiblePixels:r4 impressionMinVisiblePercent:r27 impressionMinVisibleSeconds:r6 maxBufferingTime:r7 trackers:var_180];
    [r23 setObject:r2 forKeyedSubscript:r3];
    [r20 release];
    r0 = r27;
    r24 = r24;
    goto loc_1004e7488;
}

-(void)timeout {
    r20 = [[NSError errorWithCode:0x19 localizedDescription:@"Native ad request timed out"] retain];
    r21 = [[self nativeCustomEvent] retain];
    [self nativeCustomEvent:r21 didFailToLoadAdWithError:r20];
    [r21 release];
    [r20 release];
    return;
}

-(void)nativeCustomEvent:(void *)arg2 didLoadAd:(void *)arg3 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg3 retain];
    r0 = [NSDate now];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r20 adapterLoadStartTimestamp];
    [r0 release];
    r22 = [[r20 communicator] retain];
    r23 = [[r20 adConfiguration] retain];
    [r22 sendAfterLoadUrlWithConfiguration:r23 adapterLoadDuration:0x1 adapterLoadResult:r4];
    [r23 release];
    [r22 release];
    r0 = [r20 adConfiguration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 clickTrackingURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r23 = [[r19 clickTrackerURLs] retain];
            r0 = [r20 adConfiguration];
            r0 = [r0 retain];
            r0 = [r0 clickTrackingURL];
            r29 = r29;
            [r0 retain];
            [r23 addObject:r2];
            [r22 release];
            [r24 release];
            [r23 release];
    }
    r0 = [r20 adConfiguration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 impressionTrackingURLs];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r23 = [[r19 impressionTrackerURLs] retain];
            r0 = [r20 adConfiguration];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 impressionTrackingURLs];
            r29 = r29;
            r22 = [r0 retain];
            [r23 addObjectsFromArray:r22];
            [r22 release];
            [r21 release];
            [r23 release];
    }
    r0 = [r19 clickTrackerURLs];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r22 = @selector(count);
            r0 = [r19 impressionTrackerURLs];
            r29 = r29;
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, r22);
            [r0 release];
            [r21 release];
            if (r22 != 0x0) {
                    [r20 completeAdRequestWithAdObject:r19 error:0x0];
            }
            else {
                    r21 = [sub_1004fd5b0() retain];
                    [r20 completeAdRequestWithAdObject:0x0 error:r21];
                    [r21 release];
            }
    }
    else {
            [r21 release];
            r21 = [sub_1004fd5b0() retain];
            [r20 completeAdRequestWithAdObject:0x0 error:r21];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)nativeCustomEvent:(void *)arg2 didFailToLoadAdWithError:(void *)arg3 {
    r3 = arg3;
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
    r29 = &saved_fp;
    r19 = self;
    if (arg2 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r23 = 0x1;
            }
    }
    r21 = @selector(now);
    r22 = [r3 retain];
    r0 = objc_msgSend(@class(NSDate), r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r19 adapterLoadStartTimestamp];
    [r0 release];
    r20 = [r22 isAdRequestTimedOutError];
    [r22 release];
    r8 = r23 << 0x1;
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = r8;
            }
            else {
                    r21 = 0x3;
            }
    }
    r22 = [[r19 communicator] retain];
    r23 = [[r19 adConfiguration] retain];
    [r22 sendAfterLoadUrlWithConfiguration:r23 adapterLoadDuration:r21 adapterLoadResult:r4];
    [r23 release];
    [r22 release];
    r0 = [r19 remainingConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    r0 = r19;
    if (r23 != 0x0) {
            r0 = [r0 remainingConfigurations];
            r0 = [r0 retain];
            r22 = [[r0 removeFirst] retain];
            [r19 setAdConfiguration:r22];
            [r22 release];
            [r0 release];
            r20 = [[r19 adConfiguration] retain];
            [r19 fetchAdWithConfiguration:r20];
    }
    else {
            r0 = [r0 adConfiguration];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 nextURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r19 setLoading:0x0];
            if (r0 != 0x0) {
                    r0 = [r19 adConfiguration];
                    r0 = [r0 retain];
                    r20 = r0;
                    r21 = [[r0 nextURL] retain];
                    [r19 loadAdWithURL:r21];
                    [r21 release];
            }
            else {
                    r24 = [[r19 adUnitIdentifier] retain];
                    r22 = [[NSString stringWithFormat:*0x100e7f420] retain];
                    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
                    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
                    [r21 release];
                    [r22 release];
                    [r24 release];
                    r20 = [sub_1004fd7a0() retain];
                    [r19 completeAdRequestWithAdObject:0x0 error:r20];
            }
    }
    [r20 release];
    return;
}

-(void)didStopLoading {
    r0 = [self timeoutTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    return;
}

-(void *)targeting {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setTargeting:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)adUnitIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setAdUnitIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)rendererConfigurations {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)URL {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setRendererConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setURL:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setCommunicator:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)communicator {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)nativeCustomEvent {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setNativeCustomEvent:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)adConfiguration {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void)setRemainingConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)remainingConfigurations {
    r0 = *(self + 0x50);
    return r0;
}

-(void *)customEventRenderer {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setCustomEventRenderer:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void)setLoading:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)loading {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void *)timeoutTimer {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setTimeoutTimer:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void)setAdapterLoadStartTimestamp:(double)arg2 {
    *(self + 0x68) = d0;
    return;
}

-(double)adapterLoadStartTimestamp {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end