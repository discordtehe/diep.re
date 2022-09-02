@implementation ISSupersonicAdsAdapter

-(void *)initAdapter:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] initAdapter:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_lastReportedAvailability = 0x0;
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 appKey];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_applicationKey));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
            r0 = [ISSupersonicAdsConfiguration configurations];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)version {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e8cd08);
    return r0;
}

-(void *)sdkVersion {
    r0 = [SupersonicAdsPublisher getSDKVersion];
    return r0;
}

-(void)initRVWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r21 = self;
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    [r21 addRewardedVideoDelegate:arg4];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 mediationSegment];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r24 release];
    [r21 validateRVOptionalParams];
    [r21 validateIronSourceOptionalParams];
    if ([r19 length] != 0x0) {
            var_A0 = r20;
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 rewardedVideoCustomParameters];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 mutableCopy];
            [r0 release];
            [r25 release];
            if (r26 != 0x0) {
                    r20 = 0x0;
                    r27 = r26;
            }
            else {
                    r27 = [[NSMutableDictionary alloc] init];
                    r20 = 0x1;
            }
            r25 = [r27 retain];
            [r26 release];
            if (r20 != 0x0) {
                    [r27 release];
            }
            [r25 setObject:r19 forKeyedSubscript:@"segment"];
            r0 = @class(ISConfigurations);
            r0 = [r0 getConfigurations];
            r29 = r29;
            r26 = [r0 retain];
            r27 = [r25 copy];
            [r26 setRewardedVideoCustomParameters:r27];
            [r27 release];
            [r26 release];
            [r25 release];
            r20 = var_A0;
    }
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r24 = [[r0 rewardedVideoCustomParameters] retain];
    r25 = [[r21 createParams:r24 product:*0x100e8ccc0] retain];
    [r24 release];
    [r0 release];
    r23 = [[r21 paramsToString:r25] retain];
    r24 = [[r21 dispatcher] retain];
    var_70 = r22;
    r21 = [r22 retain];
    var_68 = r20;
    r20 = [r20 retain];
    r22 = [r25 retain];
    var_58 = r23;
    r23 = [r23 retain];
    [r24 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_98];
    [r24 release];
    [var_58 release];
    [r25 release];
    [var_68 release];
    [var_70 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self setRewardedVideoActiveDelegate:arg4];
    r19 = [[self dispatcher] retain];
    var_38 = r20;
    r20 = [r20 retain];
    var_30 = r22;
    r22 = [r22 retain];
    [r19 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_58];
    [r19 release];
    [var_30 release];
    [var_38 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)fetchRewardedVideoWithAdapterConfig:(void *)arg2 delegate:(void *)arg3 {
    return;
}

-(bool)hasAvailableAdsForAdapterConfig:(void *)arg2 {
    r0 = [self lastReportedAvailability];
    return r0;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [self addInterstititalDelegate:arg4];
    [self validateIronSourceOptionalParams];
    r22 = [[self createParams:0x0 product:*0x100e8ccd0] retain];
    r23 = [[self paramsToString:r22] retain];
    r24 = [[self dispatcher] retain];
    var_50 = r21;
    r20 = [r21 retain];
    var_48 = r19;
    r19 = [r19 retain];
    r21 = [r22 retain];
    var_38 = r23;
    r23 = [r23 retain];
    [r24 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_78];
    [r24 release];
    [var_38 release];
    [r22 release];
    [var_48 release];
    [var_50 release];
    [r23 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
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
    [r21 setInterstititalActiveDelegate:arg3];
    r0 = [r19 providerName];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 providerName];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r21 = [[r21 dispatcher] retain];
    var_50 = r22;
    r22 = [r22 retain];
    [r21 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_70];
    [r21 release];
    [var_50 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self setInterstititalActiveDelegate:arg4];
    r19 = [[self dispatcher] retain];
    var_30 = r20;
    r20 = [r20 retain];
    var_28 = r22;
    r22 = [r22 retain];
    [r19 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_58];
    [r19 release];
    [var_28 release];
    [var_30 release];
    [r22 release];
    [r20 release];
    return;
}

-(bool)hasInterstitialWithAdapterConfig:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 providerName];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 providerName];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r21 release];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 isInterstitialAdAvailableWithDemandSourceName:r20];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)initOWWithUserId:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    [arg2 retain];
    [arg3 retain];
    objc_storeWeak((int64_t *)&self->_owDelegate, arg4);
    [self validateOWOptionalParams];
    [self validateIronSourceOptionalParams];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r23 = [[r0 offerwallCustomParameters] retain];
    r24 = [[self createParams:r23 product:*0x100e8ccc8] retain];
    [r23 release];
    [r0 release];
    r22 = [[self paramsToString:r24] retain];
    r23 = [[self dispatcher] retain];
    var_50 = r21;
    r20 = [r21 retain];
    var_48 = r19;
    r19 = [r19 retain];
    r21 = [r24 retain];
    var_38 = r22;
    r22 = [r22 retain];
    [r23 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_78];
    [r23 release];
    [var_38 release];
    [r24 release];
    [var_48 release];
    [var_50 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(bool)hasOfferwall {
    r0 = *(int8_t *)(int64_t *)&self->_isOfferwallAvailable;
    return r0;
}

-(void)getOfferWallCreditsWithUserId:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    [r0 getOfferWallCreditsWithApplicationKey:*(self + sign_extend_64(*(int32_t *)ivar_offset(_applicationKey))) userId:r19 delegate:self];
    [r0 release];
    r21 = [[self logger] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r21 log:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void)showOfferwallWithViewController:(void *)arg2 placement:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 offerwallCustomParameters] retain];
    r0 = [r20 createParams:r24 product:*0x100e8ccc8];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r20 isConfigValueValid:r19] != 0x0) {
            if (r21 != 0x0) {
                    r1 = @selector(mutableCopy);
                    r0 = r21;
            }
            else {
                    r0 = [NSMutableDictionary alloc];
                    r1 = @selector(init);
            }
            r0 = objc_msgSend(r0, r1);
            r24 = r21;
            [r0 setObject:r19 forKeyedSubscript:@"placementId"];
            r21 = [r0 copy];
            [r24 release];
            [r0 release];
    }
    r0 = [SupersonicAdsPublisher sharedInstance];
    r0 = [r0 retain];
    [r0 showOfferWallFromViewController:r22 parameters:r21];
    [r22 release];
    [r0 release];
    r22 = [[r20 paramsToString:r21] retain];
    r23 = [[r20 logger] retain];
    r20 = [[r20 applicationKey] retain];
    r24 = [[NSString stringWithFormat:@"ISSupersonicAdsAdapter:showOfferWallWithApplicationKey:%@,params:%@"] retain];
    [r23 log:r24];
    [r24 release];
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)initBNWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [self addBannerDelegate:arg4];
    [self validateIronSourceOptionalParams];
    r22 = [[self createParams:0x0 product:*0x100e8ccd8] retain];
    r23 = [[self paramsToString:r22] retain];
    r24 = [[self dispatcher] retain];
    var_50 = r21;
    r20 = [r21 retain];
    var_48 = r19;
    r19 = [r19 retain];
    r21 = [r22 retain];
    var_38 = r23;
    r23 = [r23 retain];
    [r24 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_78];
    [r24 release];
    [var_38 release];
    [r22 release];
    [var_48 release];
    [var_50 release];
    [r23 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 adapterConfig:(void *)arg4 activeDelegate:(void *)arg5 {
    r31 = r31 - 0xa0;
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
    r21 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [arg5 retain];
    r0 = [r21 bannerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 bannerView];
            r0 = [r0 retain];
            [r0 performCleanup];
            [r0 release];
            [r21 setBannerView:0x0];
    }
    [r21 setBannerActiveDelegate:r23];
    var_68 = r22;
    [r22 retain];
    [r23 retain];
    var_50 = r19;
    [r19 retain];
    var_48 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_88);
    [var_48 release];
    [var_50 release];
    [r23 release];
    [var_68 release];
    [r20 release];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)ssaRewardedVideoDidUpdateAdUnits:(void *)arg2 {
    [self notifyRewardedVideoAvialbilty:0x1];
    [self setLastReportedAvailability:0x1];
    return;
}

-(void)reloadBanner:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 providerName];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 providerName];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = @"";
            [r21 retain];
    }
    [r22 release];
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
    r0 = [r20 bannerView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 bannerView];
            r0 = [r0 retain];
            [r0 loadAd:r22];
            [r0 release];
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)destroyBanner:(void *)arg2 {
    r0 = [self bannerView];
    r0 = [r0 retain];
    [r0 performCleanup];
    [r0 release];
    [self setBannerView:0x0];
    return;
}

-(void)ssaRewardedVideoNoMoreOffers {
    [self notifyRewardedVideoAvialbilty:0x0];
    [self setLastReportedAvailability:0x0];
    return;
}

-(void)ssaRewardedVideoDidFailInitWithError:(void *)arg2 {
    [self setLastReportedAvailability:0x0];
    [self notifyRewardedVideoAvialbilty:0x0];
    return;
}

-(void)ssaRewardedVideoDidFailShowWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[arg2 localizedDescription] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"IronSource" code:0x1fd userInfo:r22] retain];
    [r22 release];
    [r21 release];
    r21 = [[self rewardedVideoActiveDelegate] retain];
    [self notifyRewardedVideoDidFailToShowWithError:r20 forDelegate:r21];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)ssaRewardedVideoWindowWillOpen {
    r20 = [[self rewardedVideoActiveDelegate] retain];
    [self notifyRewardedVideoDidOpenForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoWindowDidClose {
    r20 = [[self rewardedVideoActiveDelegate] retain];
    [self notifyRewardedVideoDidCloseForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoDidReceiveCredit:(void *)arg2 {
    r20 = [[self rewardedVideoActiveDelegate] retain];
    [self notifyRewardedVideoReceiveRewardForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoAdClicked {
    r20 = [[self rewardedVideoActiveDelegate] retain];
    [self notifyRewardedVideoDidClickForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoAdDidReceiveNotificationOnEvent:(void *)arg2 extData:(void *)arg3 {
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
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r19 isEqualToString:r2] != 0x0) {
            r22 = [[r21 rewardedVideoActiveDelegate] retain];
            [r21 notifyRewardedVideoDidBecomeVisibleForDelegate:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)supersonicISInitSuccess {
    [self notifyInterstitialInitSuccess];
    return;
}

-(void)supersonicISInitFailedWithError:(void *)arg2 {
    [self notifyInterstitialInitFailedWithError:arg2];
    return;
}

-(void)supersonicISLoadSuccess {
    [self setInterstitialReady:0x1];
    [self notifyInterstitialDidLoad];
    return;
}

-(void)supersonicISLoadFailedWithError:(void *)arg2 {
    r21 = [arg2 retain];
    [self setInterstitialReady:0x0];
    [self notifyInterstitialDidLoadFailedWithError:r21];
    [r21 release];
    return;
}

-(void)supersonicISShowSuccess {
    r21 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidOpenForDelegate:r21];
    [r21 release];
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidShowForDelegate:r20];
    [r20 release];
    return;
}

-(void)supersonicISShowFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidFailToShowWithError:r21 forDelegate:r20];
    [r21 release];
    [r20 release];
    return;
}

-(void)supersonicISAdClicked {
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidClickForDelegate:r20];
    [r20 release];
    return;
}

-(void)supersonicISAdClosed {
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidCloseForDelegate:r20];
    [r20 release];
    return;
}

-(void)supersonicISAdDidReceiveNotificationOnEvent:(void *)arg2 extData:(void *)arg3 {
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
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r19 isEqualToString:r2] != 0x0) {
            r22 = [[r21 interstitialActiveDelegate] retain];
            [r21 notifyInterstitialDidBecomeVisibleForDelegate:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)ssaInitOfferWallFailedWithError:(void *)arg2 {
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
    r0 = [self owDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(adapterOfferwallHasChangedAvailability:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 owDelegate];
                    r0 = [r0 retain];
                    [r0 adapterOfferwallHasChangedAvailability:0x0];
                    [r0 release];
            }
    }
    [r19 setIsOfferwallAvailable:0x0];
    return;
}

-(void)ssaInitOfferWallSuccess {
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
    r0 = [self owDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(adapterOfferwallHasChangedAvailability:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 owDelegate];
                    r0 = [r0 retain];
                    [r0 adapterOfferwallHasChangedAvailability:0x1];
                    [r0 release];
            }
    }
    [r19 setIsOfferwallAvailable:0x1];
    return;
}

-(void)ssaOfferWallShowSuccess:(void *)arg2 {
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
    r0 = [self owDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:r2];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 owDelegate];
                    r0 = [r0 retain];
                    [r0 adapterOfferwallDidShow];
                    [r0 release];
            }
    }
    return;
}

-(void)ssaOfferWallShowFailedWithError:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [r20 owDelegate];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r20 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(adapterOfferwallDidFailToShowWithError:)];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r24 = [[r19 localizedDescription] retain];
                    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
                    r23 = [[NSError errorWithDomain:@"IronSource" code:0x1fe userInfo:r25] retain];
                    [r25 release];
                    [r24 release];
                    r0 = [r20 owDelegate];
                    r0 = [r0 retain];
                    [r0 adapterOfferwallDidFailToShowWithError:r23];
                    [r0 release];
                    [r23 release];
            }
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)ssaOfferWallDidClose {
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
    r0 = [self owDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:r2];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 owDelegate];
                    r0 = [r0 retain];
                    [r0 adapterOfferwallDidClose];
                    [r0 release];
            }
    }
    return;
}

-(void)ssaOfferwallDidFailGettingCreditWithError:(void *)arg2 {
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
    r0 = [r20 owDelegate];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r20 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(adapterOfferwallDidFailToReceiveCreditsWithError:)];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = [r20 owDelegate];
                    r0 = [r0 retain];
                    [r0 adapterOfferwallDidFailToReceiveCreditsWithError:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(bool)ssaOfferWallDidReceiveCredit:(void *)arg2 {
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
    r0 = [r20 owDelegate];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r20 owDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(adapterOfferwallDidReceiveCredits:)];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = [r20 owDelegate];
                    r0 = [r0 retain];
                    r20 = [r0 adapterOfferwallDidReceiveCredits:r19];
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)ISNBannerInitSuccess {
    [self notifyBannerInitSuccess];
    return;
}

-(void)ISNBannerInitFailedWithError:(void *)arg2 {
    [self notifyBannerInitFailedWithError:arg2];
    return;
}

-(void)ISNBannerLoadSuccess {
    r20 = [[self bannerView] retain];
    r21 = [[self bannerActiveDelegate] retain];
    [self notifyBannerDidLoad:r20 forDelegate:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)ISNBannerAdClicked {
    r20 = [[self bannerActiveDelegate] retain];
    [self notifyBannerDidClickForDelegate:r20];
    [r20 release];
    return;
}

-(void)ISNBannerLoadFailedWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[self bannerActiveDelegate] retain];
    [self notifyBannerDidFailToLoadWithError:r21 forDelegate:r20];
    [r21 release];
    [r20 release];
    return;
}

-(void)ISNBannerAdClosed {
    r20 = [[self bannerActiveDelegate] retain];
    [self notifyBannerDidDismissScreenForDelegate:r20];
    [r20 release];
    return;
}

-(void)ISNBannerWillPresentFullScreen {
    r20 = [[self bannerActiveDelegate] retain];
    [self notifyBannerWillPresentScreenForDelegate:r20];
    [r20 release];
    return;
}

-(void)setSDK5ParametersWithAdapterConfig:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    var_18 = r19;
    if (*qword_1011dac50 == -0x1) {
            r0 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011dac50, &var_40);
            r0 = var_18;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)paramsToString:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [[NSMutableString alloc] init];
    r0 = [r19 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = *(0x0 + r24 * 0x8);
                            r0 = [r19 objectForKey:r27];
                            r29 = r29;
                            r28 = [r0 retain];
                            if (r28 != 0x0) {
                                    [r20 appendFormat:r2];
                            }
                            [r28 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r23);
                    r23 = objc_msgSend(r21, var_120);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)validateOWOptionalParams {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
    r0 = *(r19 + r23);
    r0 = [r0 useClientSideCallbacks];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 intValue] != 0x1) goto loc_1006ed288;

loc_1006ed280:
    r0 = r20;
    goto loc_1006ed338;

loc_1006ed338:
    [r0 release];
    return;

.l1:
    return;

loc_1006ed288:
    r22 = @selector(intValue);
    r0 = *(r19 + r23);
    r0 = [r0 useClientSideCallbacks];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22);
    [r0 release];
    [r20 release];
    if (r22 == 0x0) goto .l1;

loc_1006ed2c0:
    [*(r19 + r23) setUseClientSideCallbacks:0x0];
    r19 = [[r19 logger] retain];
    r20 = [[NSString stringWithFormat:@"useClientSideCallbacks value is not valid for IronSource - value should be YES/NO"] retain];
    [r19 log:r20];
    [r20 release];
    r0 = r19;
    goto loc_1006ed338;
}

-(void)validateIronSourceOptionalParams {
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
    r28 = (int64_t *)&r19->_configs;
    r0 = *r28;
    r0 = [r0 language];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006ebb20;

loc_1006eb9c8:
    r0 = *r28;
    r0 = [r0 language];
    r29 = r29;
    r21 = [r0 retain];
    [NSString class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1006ebaa0;

loc_1006eba0c:
    r0 = *r28;
    r0 = [r0 language];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 length] != 0x2) goto loc_1006eba98;

loc_1006eba38:
    r0 = *r28;
    r0 = [r0 language];
    r29 = r29;
    r22 = [r0 retain];
    r24 = [r19 checkRegWithVal:r22 pattern:@"^[a-zA-Z]+$"];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    if ((r24 & 0x1) == 0x0) goto loc_1006ebab0;

loc_1006ebb28:
    r0 = *r28;
    r0 = [r0 itemName];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) goto loc_1006ebb6c;

loc_1006ebb4c:
    r0 = *r28;
    r0 = [r0 itemCount];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1006ebe00;

loc_1006ebb68:
    [r0 release];
    goto loc_1006ebb6c;

loc_1006ebb6c:
    [r20 release];
    goto loc_1006ebb74;

loc_1006ebb74:
    r0 = *r28;
    r0 = [r0 itemName];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1006ebe58;

loc_1006ebb90:
    r0 = *r28;
    r0 = [r0 itemName];
    r29 = r29;
    r25 = [r0 retain];
    [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_1006ebe50;

loc_1006ebbdc:
    r0 = *r28;
    r0 = [r0 itemName];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 length] == 0x0) goto loc_1006ebe48;

loc_1006ebc08:
    r20 = @selector(length);
    r0 = *r28;
    r0 = [r0 itemName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r20);
    [r0 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r27 > 0x32) goto loc_1006ebe60;

loc_1006ebc54:
    r0 = *r28;
    r0 = [r0 itemCount];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1006ebf24;

loc_1006ebc7c:
    r0 = *r28;
    r0 = [r0 itemCount];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 intValue] < 0x1) goto loc_1006ebf1c;

loc_1006ebcac:
    r26 = @selector(intValue);
    r0 = *r28;
    r0 = [r0 itemCount];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r26);
    [r0 release];
    [r25 release];
    [r23 release];
    if (r26 > 0x186a0) goto loc_1006ebf2c;

loc_1006ebcf8:
    r0 = *r28;
    r0 = [r0 privateKey];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1006ebdbc;

loc_1006ebd1c:
    r22 = @selector(isKindOfClass:);
    r0 = *r28;
    r0 = [r0 privateKey];
    r29 = r29;
    r24 = [r0 retain];
    [NSString class];
    if (objc_msgSend(r24, r22) == 0x0) goto loc_1006ebdb4;

loc_1006ebd54:
    r20 = @selector(length);
    r0 = *r28;
    r0 = [r0 privateKey];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (objc_msgSend(r0, r20) < 0x5) goto loc_1006ebdac;

loc_1006ebd7c:
    r20 = @selector(length);
    r0 = *r28;
    r0 = [r0 privateKey];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r20) < 0x1e) goto loc_1006ebf68;

loc_1006ebda4:
    [r22 release];
    goto loc_1006ebdac;

loc_1006ebdac:
    [r21 release];
    goto loc_1006ebdb4;

loc_1006ebdb4:
    [r24 release];
    goto loc_1006ebdbc;

loc_1006ebdbc:
    [r23 release];
    goto loc_1006ebdc4;

loc_1006ebdc4:
    r19 = [[r19 logger] retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:r2];
    goto loc_1006ebe9c;

loc_1006ebe9c:
    r20 = [r0 retain];
    [r19 log:r20];
    [r20 release];
    [r19 release];
    [*r28 setItemName:0x0];
    [*r28 setItemCount:0x0];
    [*r28 setPrivateKey:0x0];
    return;

.l6:
    return;

loc_1006ebf68:
    r0 = *r28;
    r0 = [r0 privateKey];
    r29 = r29;
    r20 = [r0 retain];
    r25 = [r19 checkRegWithVal:r20 pattern:@"^[0-9a-zA-Z]+$"];
    [r20 release];
    [r22 release];
    [r21 release];
    [r24 release];
    [r23 release];
    if ((r25 & 0x1) == 0x0) goto loc_1006ebdc4;
    goto .l6;

loc_1006ebf2c:
    r19 = [[r19 logger] retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:r2];
    goto loc_1006ebe9c;

loc_1006ebf1c:
    [r25 release];
    goto loc_1006ebf24;

loc_1006ebf24:
    [r23 release];
    goto loc_1006ebf2c;

loc_1006ebe60:
    r19 = [[r19 logger] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_1006ebe9c;

loc_1006ebe48:
    [r26 release];
    goto loc_1006ebe50;

loc_1006ebe50:
    [r25 release];
    goto loc_1006ebe58;

loc_1006ebe58:
    [r24 release];
    goto loc_1006ebe60;

loc_1006ebe00:
    r0 = *r28;
    r0 = [r0 privateKey];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 != 0x0) goto loc_1006ebb74;
    goto .l6;

loc_1006ebab0:
    [*r28 setLanguage:0x0];
    r20 = [[r19 logger] retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"language value is not valid for IronSource - please provide 2 letters language code"];
    r29 = r29;
    r21 = [r0 retain];
    [r20 log:r21];
    [r21 release];
    goto loc_1006ebb20;

loc_1006ebb20:
    [r20 release];
    goto loc_1006ebb28;

loc_1006eba98:
    [r23 release];
    goto loc_1006ebaa0;

loc_1006ebaa0:
    [r21 release];
    [r20 release];
    goto loc_1006ebab0;
}

-(void)validateRVOptionalParams {
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
    r0 = *(r19 + r24);
    r0 = [r0 maxVideoLength];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006ed42c;

loc_1006ed3a4:
    r0 = *(r19 + r24);
    r0 = [r0 maxVideoLength];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 intValue] < 0x1) goto loc_1006ed434;

loc_1006ed3d4:
    r23 = @selector(intValue);
    r0 = *(r19 + r24);
    r0 = [r0 maxVideoLength];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r23);
    [r0 release];
    [r22 release];
    [r20 release];
    if (r23 > 0x3e8) goto loc_1006ed444;

.l1:
    return;

loc_1006ed444:
    [*(r19 + r24) setMaxVideoLength:0x0];
    r19 = [[r19 logger] retain];
    r20 = [[NSString stringWithFormat:@"maxVideoLength is not valid for IronSource - value should be an integer between 1 to 1000"] retain];
    [r19 log:r20];
    [r20 release];
    r0 = r19;
    goto loc_1006ed4bc;

loc_1006ed4bc:
    [r0 release];
    return;

loc_1006ed434:
    [r22 release];
    [r20 release];
    goto loc_1006ed444;

loc_1006ed42c:
    r0 = r20;
    goto loc_1006ed4bc;
}

-(void *)md5:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) UTF8String];
    [r20 release];
    r0 = sub_100021280();
    r22 = &stack[-88];
    CC_MD5(r19, r0, &stack[-88]);
    r19 = [[NSMutableString stringWithCapacity:0x20] retain];
    r23 = 0x0;
    do {
            [r19 appendFormat:r2];
            r23 = r23 + 0x1;
    } while (r23 != 0x10);
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)checkRegWithVal:(void *)arg2 pattern:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    var_38 = 0x0;
    r19 = [r20 retain];
    r20 = [[NSRegularExpression regularExpressionWithPattern:r21 options:0x0 error:&var_38] retain];
    [r21 release];
    r21 = [var_38 retain];
    [r19 length];
    r22 = [[r20 firstMatchInString:r19 options:0x0 range:0x0] retain];
    [r21 release];
    [r19 release];
    if (r22 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)timeInMilliSeconds {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    r20 = @class(NSString);
    r21 = @class(NSNumber);
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r0 = [r21 numberWithDouble:r2];
    r0 = [r0 retain];
    [r0 longLongValue];
    r20 = [[r20 stringWithFormat:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)convertAge:(long long)arg2 {
    r2 = arg2;
    if (r2 < 0x12) {
            r8 = 0x1;
    }
    else {
            if (r2 < 0x15) {
                    r8 = 0x2;
            }
            else {
                    if (r2 < 0x19) {
                            r8 = 0x3;
                    }
                    else {
                            if (r2 < 0x23) {
                                    r8 = 0x4;
                            }
                            else {
                                    if (r2 < 0x2d) {
                                            r8 = 0x5;
                                    }
                                    else {
                                            if (r2 < 0x37) {
                                                    r8 = 0x6;
                                            }
                                            else {
                                                    if (r2 < 0x41) {
                                                            r8 = 0x7;
                                                    }
                                                    else {
                                                            r8 = r2 - 0x41;
                                                            if (r8 < 0x38) {
                                                                    if (CPU_FLAGS & B) {
                                                                            r8 = 0x1;
                                                                    }
                                                            }
                                                            r8 = r8 << 0x3;
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)setMediationState:(long long)arg2 forAdUnit:(void *)arg3 {
    r20 = [arg3 retain];
    r24 = [[self adapterName] retain];
    r23 = [[NSString stringWithFormat:@"ISSupersonicAdsAdapter:setMediationState:adUnit:%@, providerName:%@, state:%ld"] retain];
    [r24 release];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r23];
    [r0 release];
    r24 = [[SupersonicAdsPublisher sharedInstance] retain];
    r21 = [[self adapterName] retain];
    [r24 setMediationStateForProductType:r20 withDemandSourceName:r21 withState:arg2];
    [r20 release];
    [r21 release];
    [r24 release];
    [r23 release];
    return;
}

-(void)setConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_consent = arg2;
    *(int8_t *)(int64_t *)&self->_didSetConsent = 0x1;
    [self applyConsent:r2];
    return;
}

-(void)applyConsent:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (r19->_instance != 0x0) {
            r0 = [r19 dispatcher];
            r0 = [r0 retain];
            [r0 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_50];
            [r0 release];
    }
    return;
}

-(void *)createParams:(void *)arg2 product:(void *)arg3 {
    r31 = r31 - 0x1f0;
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
    r26 = self;
    r21 = [arg2 retain];
    var_1A8 = [arg3 retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = &saved_fp;
    var_170 = [r0 retain];
    var_190 = r26;
    var_1A0 = r21;
    if (r21 != 0x0) {
            r25 = [[NSMutableDictionary alloc] init];
            r0 = [r21 retain];
            r19 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_168 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    do {
                            r23 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [[r19 objectForKey:*(0x0 + r23 * 0x8)] retain];
                                    r0 = [NSString stringWithFormat:@"custom_%@"];
                                    r29 = r29;
                                    [r0 retain];
                                    [r25 setObject:r2 forKeyedSubscript:r3];
                                    [r27 release];
                                    [r22 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r24);
                            r24 = objc_msgSend(r19, var_168);
                    } while (r24 != 0x0);
            }
            [r19 release];
            r24 = r25;
            [r24 removeObjectForKey:r2];
            r26 = var_190;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 mutableCopy];
            [r0 release];
    }
    if ([r26 usersAge] != -0x1) {
            r0 = [r26 convertAge:[r26 usersAge]];
            r29 = r29;
            r19 = [r0 retain];
            [r24 setObject:r19 forKeyedSubscript:@"applicationUserAgeGroup"];
            [r19 release];
    }
    r0 = [r26 usersGender];
    r23 = var_1A8;
    if (r0 == 0x1) {
            [r24 setObject:r2 forKeyedSubscript:r3];
    }
    else {
            if ([r26 usersGender] == 0x2) {
                    [r24 setObject:r2 forKeyedSubscript:r3];
            }
    }
    [[var_170 objectForKeyedSubscript:r23] retain];
    [r24 setObject:r2 forKeyedSubscript:r3];
    [r19 release];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 plugin];
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    if (r20 != 0x0) {
            [r24 setObject:r2 forKeyedSubscript:r3];
    }
    r21 = @selector(setObject:forKeyedSubscript:);
    var_1B0 = r20;
    r1 = @selector(isEqualToString:);
    var_188 = r1;
    r0 = objc_msgSend(r23, r1);
    var_198 = r21;
    if ((r0 & 0x1) != 0x0 || objc_msgSend(r23, var_188) != 0x0) goto loc_1006ec434;

loc_1006ec6f0:
    r27 = var_188;
    if (objc_msgSend(r23, r27) != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
            r0 = *(r26 + r22);
            r0 = [r0 useClientSideCallbacks];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 intValue] != 0x0) {
                    r25 = @selector(intValue);
                    r0 = *(r26 + r22);
                    r0 = [r0 useClientSideCallbacks];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r25);
                    [r0 release];
                    [r19 release];
                    if (r22 == 0x1) {
                            objc_msgSend(r24, r21);
                    }
            }
            else {
                    [r19 release];
            }
    }
    if (objc_msgSend(r23, r27) == 0x0) goto loc_1006ecb08;

loc_1006ec7bc:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
    r25 = var_190;
    r0 = *(r25 + r27);
    r0 = [r0 maxVideoLength];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r25 + r27);
            r0 = [r0 maxVideoLength];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r24, var_198);
            [r19 release];
    }
    r0 = *(r25 + r27);
    r0 = [r0 itemName];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_1006ec8b8;

loc_1006ec84c:
    r0 = *(r25 + r27);
    r0 = [r0 itemName];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    [r19 release];
    if (r22 == 0x0) goto loc_1006ec8c0;

loc_1006ec888:
    r0 = *(r25 + r27);
    r0 = [r0 itemName];
    r29 = r29;
    r19 = [r0 retain];
    objc_msgSend(r24, var_198);
    goto loc_1006ec8b8;

loc_1006ec8b8:
    [r19 release];
    goto loc_1006ec8c0;

loc_1006ec8c0:
    r0 = *(r25 + r27);
    r0 = [r0 itemCount];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r25 + r27);
            r0 = [r0 itemCount];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r24, var_198);
            [r19 release];
    }
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_1006ecb08;

loc_1006ec944:
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006ecb00;

loc_1006ec968:
    r22 = var_190;
    r0 = *(r22 + r27);
    r0 = [r0 privateKey];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_1006ecaf8;

loc_1006ec990:
    r0 = *(r22 + r27);
    var_168 = @selector(privateKey);
    r0 = [r0 privateKey];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 length];
    [r0 release];
    [r25 release];
    [r20 release];
    [r19 release];
    if (r28 == 0x0) goto loc_1006ecb08;

loc_1006ec9e0:
    r19 = [[var_190 timeInMilliSeconds] retain];
    r21 = [[*(var_190 + r27) itemName] retain];
    r22 = [[*(var_190 + r27) itemCount] retain];
    r25 = [objc_msgSend(*(var_190 + r27), var_168) retain];
    r20 = [[NSString stringWithFormat:@"%@%@%@%@"] retain];
    [[var_190 md5:r20] retain];
    [r20 release];
    [r25 release];
    [r22 release];
    [r21 release];
    objc_msgSend(r24, var_198);
    objc_msgSend(r24, var_198);
    r0 = r26;
    goto loc_1006ecafc;

loc_1006ecafc:
    [r0 release];
    goto loc_1006ecb00;

loc_1006ecb00:
    [r19 release];
    goto loc_1006ecb08;

loc_1006ecb08:
    if ([r24 count] != 0x0) {
            r19 = [r24 copy];
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [var_1B0 release];
    [var_170 release];
    [r24 release];
    [r23 release];
    [var_1A0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006ecaf8:
    r0 = r20;
    goto loc_1006ecafc;

loc_1006ec434:
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
    r0 = *(r26 + r28);
    r0 = [r0 language];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006ec4d4;

loc_1006ec460:
    r0 = *(r26 + r28);
    r0 = [r0 language];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    [r20 release];
    if (r25 == 0x0) goto loc_1006ec4dc;

loc_1006ec49c:
    r21 = @selector(setObject:forKeyedSubscript:);
    r0 = *(r26 + r28);
    r0 = [r0 language];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r24, r21);
    r0 = r19;
    goto loc_1006ec4d8;

loc_1006ec4d8:
    [r0 release];
    goto loc_1006ec4dc;

loc_1006ec4dc:
    r0 = *(r26 + r28);
    r0 = [r0 minimumOfferCommission];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006ec56c;

loc_1006ec500:
    r0 = *(r26 + r28);
    r0 = [r0 minimumOfferCommission];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    [r20 release];
    if (r25 == 0x0) goto loc_1006ec574;

loc_1006ec53c:
    r21 = @selector(setObject:forKeyedSubscript:);
    r0 = *(r26 + r28);
    r0 = [r0 minimumOfferCommission];
    r29 = r29;
    r20 = [r0 retain];
    objc_msgSend(r24, r21);
    goto loc_1006ec56c;

loc_1006ec56c:
    [r20 release];
    goto loc_1006ec574;

loc_1006ec574:
    r0 = [r24 objectForKeyedSubscript:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = r23;
            r23 = r24;
            r0 = *(r26 + r28);
            r0 = [r0 privateKey];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r26;
            r26 = r0;
            if (r26 != 0x0) {
                    r0 = *(r24 + r28);
                    r0 = [r0 privateKey];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 length];
                    [r0 release];
                    [r26 release];
                    [r20 release];
                    r26 = r24;
                    r24 = r23;
                    r23 = r21;
                    r21 = var_198;
                    if (r27 != 0x0) {
                            r19 = [[*(r26 + r28) minimumOfferCommission] retain];
                            r22 = [[*(r26 + r28) privateKey] retain];
                            r20 = [[NSString stringWithFormat:@"%@%@"] retain];
                            r0 = [r26 md5:r20];
                            r29 = r29;
                            [r0 retain];
                            [r20 release];
                            [r22 release];
                            [r19 release];
                            objc_msgSend(r24, r21);
                            [r25 release];
                    }
            }
            else {
                    [r20 release];
                    r26 = r24;
                    r24 = r23;
                    r23 = r21;
                    r21 = var_198;
            }
    }
    goto loc_1006ec6f0;

loc_1006ec4d4:
    r0 = r20;
    goto loc_1006ec4d8;
}

-(bool)lastReportedAvailability {
    r0 = *(int8_t *)(int64_t *)&self->_lastReportedAvailability;
    return r0;
}

-(void)setLastReportedAvailability:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lastReportedAvailability = arg2;
    return;
}

-(void *)applicationKey {
    r0 = self->_applicationKey;
    return r0;
}

-(void *)configs {
    r0 = self->_configs;
    return r0;
}

-(void)setApplicationKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_applicationKey, arg2);
    return;
}

-(void)setConfigs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configs, arg2);
    return;
}

-(bool)consent {
    r0 = *(int8_t *)(int64_t *)&self->_consent;
    return r0;
}

-(bool)didSetConsent {
    r0 = *(int8_t *)(int64_t *)&self->_didSetConsent;
    return r0;
}

-(void)setDidSetConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSetConsent = arg2;
    return;
}

-(void *)instance {
    r0 = self->_instance;
    return r0;
}

-(void)setInstance:(void *)arg2 {
    self->_instance = arg2;
    return;
}

-(void *)bannerView {
    r0 = self->_bannerView;
    return r0;
}

-(void)setBannerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerView, arg2);
    return;
}

-(void *)owDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_owDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOwDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_owDelegate, arg2);
    return;
}

-(bool)isOfferwallAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_isOfferwallAvailable;
    return r0;
}

-(void)setIsOfferwallAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isOfferwallAvailable = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_owDelegate);
    objc_storeStrong((int64_t *)&self->_bannerView, 0x0);
    objc_storeStrong((int64_t *)&self->_configs, 0x0);
    objc_storeStrong((int64_t *)&self->_applicationKey, 0x0);
    return;
}

@end