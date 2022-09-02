@implementation IronSource

+(void *)sdkVersion {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 sdkVersion] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setAge:(long long)arg2 {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setAge:arg2];
    [r0 release];
    return;
}

+(void)setGender:(long long)arg2 {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setGender:arg2];
    [r0 release];
    return;
}

+(void)shouldTrackReachability:(bool)arg2 {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 shouldTrackReachability:arg2];
    [r0 release];
    return;
}

+(void)setAdaptersDebug:(bool)arg2 {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setAdaptersDebug:arg2];
    [r0 release];
    return;
}

+(bool)setDynamicUserId:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 setDynamicUserId:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)advertiserId {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 advertiserId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setMediationSegment:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setMediationSegment:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setMediationType:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setMediationType:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setSegment:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setSegment:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setUserId:(void *)arg2 {
    [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setUserId:r2];
    [r21 release];
    [r19 release];
    return;
}

+(void)setSegmentDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setSegmentDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)initWithAppKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 initWithAppKey:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)initWithAppKey:(void *)arg2 adUnits:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            r0 = [r21 validAdUnit:r20];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [IronSourceSdk sharedInstance];
                    r0 = [r0 retain];
                    [r0 initWithAppKey:r19 adUnits:r20];
                    [r0 release];
            }
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)initISDemandOnly:(void *)arg2 adUnits:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 initISDemandOnly:r20 adUnits:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)setRewardedVideoDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setRewardedVideoDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showRewardedVideoWithViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showRewardedVideoWithViewController:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showRewardedVideoWithViewController:r20 placement:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(bool)hasRewardedVideo {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 hasRewardedVideo];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)validAdUnit:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r20 = [NSMutableArray new];
            var_110 = q0;
            r0 = [r19 retain];
            r21 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    r25 = @selector(countByEnumeratingWithState:objects:count:);
                    r22 = *var_110;
                    var_138 = r25;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_110 != r22) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r26 = *(var_118 + r25 * 0x8);
                                    if (r26 != 0x0) {
                                            if ([r26 caseInsensitiveCompare:r2] != 0x0) {
                                                    if ([r26 caseInsensitiveCompare:r2] != 0x0) {
                                                            if ([r26 caseInsensitiveCompare:r2] != 0x0) {
                                                                    if ([r26 caseInsensitiveCompare:r2] != 0x0) {
                                                                            r0 = [ISLoggerManager sharedInstance];
                                                                            r29 = r29;
                                                                            r0 = [r0 retain];
                                                                            [r0 log:r2 level:r3 tag:r4];
                                                                            [r26 release];
                                                                    }
                                                                    else {
                                                                            [r20 addObject:r2];
                                                                    }
                                                            }
                                                            else {
                                                                    [r20 addObject:r2];
                                                            }
                                                    }
                                                    else {
                                                            [r20 addObject:r2];
                                                    }
                                            }
                                            else {
                                                    [r20 addObject:r2];
                                            }
                                    }
                                    r25 = r25 + 0x1;
                            } while (r25 < r23);
                            r23 = objc_msgSend(r21, var_138);
                    } while (r23 != 0x0);
            }
            [r21 release];
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-240] count:0x0];
            r20 = [r0 retain];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isRewardedVideoCappedForPlacement:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 isRewardedVideoCappedForPlacement:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)rewardedVideoPlacementInfo:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 rewardedVideoPlacementInfo:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)setRewardedVideoServerParameters:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setRewardedVideoServerParameters:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showISDemandOnlyRewardedVideo:(void *)arg2 instanceId:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showRewardedVideoWithViewController:r20 placement:0x0 instanceId:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)clearRewardedVideoServerParameters {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 clearRewardedVideoServerParameters];
    [r0 release];
    return;
}

+(void)showISDemandOnlyRewardedVideo:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showRewardedVideoWithViewController:r21 placement:r20 instanceId:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r0 release];
    return;
}

+(void)setISDemandOnlyRewardedVideoDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setInstRewardedVideoDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setInterstitialDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setInterstitialDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(bool)hasISDemandOnlyRewardedVideo:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 hasRewardedVideo:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)loadInterstitial {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 loadInterstitial];
    [r0 release];
    return;
}

+(void)setRewardedInterstitialDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setRewardedInterstitialDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showInterstitialWithViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showInterstitialWithViewController:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showInterstitialWithViewController:r20 placement:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(bool)hasInterstitial {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 hasInterstitial];
    [r0 release];
    r0 = r20;
    return r0;
}

+(bool)isInterstitialCappedForPlacement:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 isInterstitialCappedForPlacement:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)setISDemandOnlyInterstitialDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setInstInterstitialDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)loadISDemandOnlyInterstitial:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 loadInterstitial:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showISDemandOnlyInterstitial:(void *)arg2 instanceId:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showInterstitialWithViewController:r20 placement:0x0 instanceId:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)showISDemandOnlyInterstitial:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showInterstitialWithViewController:r21 placement:r20 instanceId:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r0 release];
    return;
}

+(void)setOfferwallDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setOfferwallDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(bool)hasISDemandOnlyInterstitial:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 hasInterstitial:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)showOfferwallWithViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showOfferwallWithViewController:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)showOfferwallWithViewController:(void *)arg2 placement:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 showOfferwallWithViewController:r20 placement:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)offerwallCredits {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 offerwallCredits];
    [r0 release];
    return;
}

+(bool)hasOfferwall {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 hasOfferwall];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)setBannerDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setBannerDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 loadBannerWithViewController:r20 size:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

+(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 placement:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 loadBannerWithViewController:r21 size:r20 placement:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r0 release];
    return;
}

+(void)destroyBanner:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 destroyBanner:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setLogDelegate:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setLogDelegate:r21];
    [r21 release];
    [r0 release];
    return;
}

+(bool)isBannerCappedForPlacement:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 isBannerCappedForPlacement:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)setConsent:(bool)arg2 {
    r0 = [IronSourceSdk sharedInstance];
    r0 = [r0 retain];
    [r0 setConsent:arg2];
    [r0 release];
    return;
}

@end