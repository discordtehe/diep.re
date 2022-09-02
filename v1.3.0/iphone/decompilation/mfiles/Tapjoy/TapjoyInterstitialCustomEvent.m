@implementation TapjoyInterstitialCustomEvent

-(void)setupListeners {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(tjcConnectSuccess:) name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(tjcConnectFail:) name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    return;
}

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:@"name"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 setPlacementName:r22];
    [r22 release];
    [TapjoyAdapterConfiguration updateInitializationParameters:r19];
    if (([r21 isConnecting] & 0x1) == 0x0) {
            if (([Tapjoy isConnected] & 0x1) != 0x0) {
                    r24 = [[NSString stringWithFormat:@"Requesting Tapjoy interstitial"] retain];
                    r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
                    [MPLogging logEvent:r23 source:0x0 fromClass:[r21 class]];
                    [r23 release];
                    [r24 release];
                    r1 = @selector(requestPlacementContentWithAdMarkup:);
                    r0 = r21;
            }
            else {
                    r1 = @selector(initializeWithCustomNetworkInfo:);
                    r0 = r21;
            }
            objc_msgSend(r0, r1);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)initializeWithCustomNetworkInfo:(void *)arg2 {
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
    r0 = [arg2 retain];
    r22 = r0;
    r19 = [[r0 objectForKeyedSubscript:@"sdkKey"] retain];
    r0 = [r22 objectForKeyedSubscript:@"debugEnabled"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r22 = [r21 boolValue];
    [r21 release];
    if (r19 != 0x0) {
            r24 = [[NSString stringWithFormat:@"Connecting to Tapjoy via MoPub dashboard settings"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
            [r24 release];
            r21 = [objc_alloc() init];
            r22 = [[NSNumber numberWithBool:r22] retain];
            [r21 setObject:r22 forKey:@"TJC_OPTION_ENABLE_LOGGING"];
            [r22 release];
            [r20 setupListeners];
            [Tapjoy connect:r19 options:r21];
            [r20 setIsConnecting:0x1];
    }
    else {
            r21 = [[NSError errorWithCode:0x21 localizedDescription:@"Tapjoy interstitial is initialized with empty 'sdkKey'. You must call Tapjoy connect before requesting content."] retain];
            r25 = [NSStringFromClass([r20 class]) retain];
            r23 = [[MPLogEvent adLoadFailedForAdapter:r25 error:r21] retain];
            r26 = [[r20 placementName] retain];
            [MPLogging logEvent:r23 source:r26 fromClass:[r20 class]];
            [r26 release];
            [r23 release];
            [r25 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r21];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adShowAttemptForAdapter:r23] retain];
    r24 = [[self placementName] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self placement];
    r0 = [r0 retain];
    [r0 showContentWithViewController:0x0];
    [r0 release];
    return;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self->_placement setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)requestPlacementContentWithAdMarkup:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 placementName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r20 placementName] retain];
            r22 = [[TJPlacement placementWithName:r23 mediationAgent:@"mopub" mediationId:0x0 delegate:r20] retain];
            [r20 setPlacement:r22];
            [r22 release];
            [r23 release];
            r0 = [r20 placement];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setAdapterVersion:@"5.8.0"];
            [r0 release];
            if (r19 != 0x0) {
                    r23 = [[r19 dataUsingEncoding:0x4] retain];
                    r0 = [NSJSONSerialization JSONObjectWithData:r23 options:0x0 error:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            r0 = [r20 placement];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setAuctionData:r24];
                            [r0 release];
                    }
                    [r24 release];
                    [r23 release];
            }
            r26 = [NSStringFromClass([r20 class]) retain];
            r24 = [[MPLogEvent adLoadAttemptForAdapter:r26 dspCreativeId:0x0 dspName:0x0] retain];
            r21 = [[r20 placementName] retain];
            [MPLogging logEvent:r24 source:r21 fromClass:[r20 class]];
            [r21 release];
            [r24 release];
            [r26 release];
            r0 = [r20 placement];
            r0 = [r0 retain];
            r21 = r0;
            [r0 requestContent];
    }
    else {
            r21 = [[NSError errorWithCode:0x21 localizedDescription:@"Invalid Tapjoy placement name specified"] retain];
            r25 = [NSStringFromClass([r20 class]) retain];
            r23 = [[MPLogEvent adLoadFailedForAdapter:r25 error:r21] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
            [r25 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r21];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)requestDidSucceed:(void *)arg2 {
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
    r19 = self;
    if ([arg2 isContentAvailable] != 0x0) {
            r23 = [NSStringFromClass([r19 class]) retain];
            r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
            r24 = [[r19 placementName] retain];
            [MPLogging logEvent:r21 source:r24 fromClass:[r19 class]];
            [r24 release];
            [r21 release];
            [r23 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r20 = r0;
            [r0 interstitialCustomEvent:r19 didLoadAd:0x0];
    }
    else {
            r20 = [[NSError errorWithCode:0x21 localizedDescription:@"No Tapjoy interstitials available"] retain];
            r24 = [NSStringFromClass([r19 class]) retain];
            r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
            r25 = [[r19 placementName] retain];
            [MPLogging logEvent:r22 source:r25 fromClass:[r19 class]];
            [r25 release];
            [r22 release];
            [r24 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r19 didFailToLoadAdWithError:r20];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
    r20 = [arg3 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    r25 = [[self placementName] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEvent:self didFailToLoadAdWithError:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)tjcConnectSuccess:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Tapjoy connect Succeeded"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self setIsConnecting:0x0];
    [self fetchMoPubGDPRSettings];
    [self requestPlacementContentWithAdMarkup:0x0];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)contentDidDisappear:(void *)arg2 {
    r23 = @class(MPLogging);
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adWillDisappearForAdapter:r24] retain];
    r26 = [[self placementName] retain];
    [r23 logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillDisappear:self];
    [r0 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidDisappearForAdapter:r26] retain];
    r21 = [[self placementName] retain];
    [r24 logEvent:r25 source:r21 fromClass:[self class]];
    [r21 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidDisappear:self];
    [r0 release];
    return;
}

-(void)tjcConnectFail:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Tapjoy connect Failed"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self setIsConnecting:0x0];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)contentDidAppear:(void *)arg2 {
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adWillAppearForAdapter:r24] retain];
    r26 = [[self placementName] retain];
    [MPLogging logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillAppear:self];
    [r0 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowSuccessForAdapter:r26] retain];
    r27 = [[self placementName] retain];
    [r24 logEvent:r25 source:r27 fromClass:[self class]];
    [r27 release];
    [r25 release];
    [r26 release];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidAppearForAdapter:r26] retain];
    r21 = [[self placementName] retain];
    [MPLogging logEvent:r25 source:r21 fromClass:[self class]];
    [r21 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidAppear:self];
    [r0 release];
    return;
}

-(bool)isConnecting {
    r0 = *(int8_t *)(int64_t *)&self->_isConnecting;
    return r0;
}

-(void *)placement {
    r0 = self->_placement;
    return r0;
}

-(void)fetchMoPubGDPRSettings {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 isGDPRApplicable];
    [r0 release];
    if (r20 != 0x0) {
            if (r20 == 0x1) {
                    [Tapjoy subjectToGDPR:r2];
                    r0 = @class(MoPub);
                    r0 = [r0 sharedInstance];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 canCollectPersonalInfo];
                    if (r0 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = @"0";
                            }
                            else {
                                    r0 = @"1";
                            }
                    }
                    r20 = [r0 retain];
                    [r19 release];
                    [Tapjoy setUserConsent:r20];
                    [r20 release];
            }
            else {
                    [Tapjoy subjectToGDPR:r2];
                    [Tapjoy setUserConsent:@"-1"];
            }
    }
    return;
}

-(void)setPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placement, arg2);
    return;
}

-(void *)placementName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementName)), 0x0);
    return r0;
}

-(void)setIsConnecting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isConnecting = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementName, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    return;
}

-(void)setPlacementName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end