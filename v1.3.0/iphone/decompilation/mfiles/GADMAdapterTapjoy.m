@implementation GADMAdapterTapjoy

+(void *)adapterVersion {
    objc_retainAutorelease(@"12.2.0.0");
    return @"12.2.0.0";
}

+(void *)networkExtrasClass {
    r0 = [GADMTapjoyExtras class];
    return r0;
}

-(void *)initWithRewardBasedVideoAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    objc_storeWeak((int64_t *)&r20->_rewardBasedVideoAdConnector, r19);
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)initRVPlacement {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardBasedVideoAdConnector);
    r21 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:@"placementName"] retain];
    [r0 release];
    [r21 release];
    r0 = [TJPlacement placementWithName:r20 mediationAgent:@"admob" mediationId:0x0 delegate:self];
    r0 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacement));
    r8 = *(self + r21);
    *(self + r21) = r0;
    [r8 release];
    [*(self + r21) setAdapterVersion:@"1.0.0"];
    [*(self + r21) setVideoDelegate:self];
    *(int8_t *)(int64_t *)&self->_rvIsRequesting = 0x1;
    [*(self + r21) requestContent];
    [r20 release];
    return;
}

-(void)presentRewardBasedVideoAdWithRootViewController:(void *)arg2 {
    [self->_rvPlacement showContentWithViewController:arg2];
    return;
}

-(void)setUp {
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
    r21 = self;
    r22 = (int64_t *)&r21->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r22);
    r20 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:@"sdkKey"] retain];
    [r0 release];
    [r20 release];
    r0 = objc_loadWeakRetained(r22);
    r24 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"placementName"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r24 release];
    if ([r19 length] != 0x0 && [r20 length] != 0x0) {
            if (([Tapjoy isConnected] & 0x1) != 0x0) {
                    r0 = objc_loadWeakRetained(r22);
                    [r0 adapterDidSetUpRewardBasedVideoAd:r21];
                    r0 = r0;
            }
            else {
                    [r21 setupListeners];
                    r0 = objc_loadWeakRetained(r22);
                    r21 = [[r0 networkExtras] retain];
                    [r0 release];
                    r22 = [[NSMutableDictionary alloc] init];
                    r23 = [[NSNumber numberWithBool:[r21 debugEnabled]] retain];
                    [r22 setObject:r23 forKey:@"TJC_OPTION_ENABLE_LOGGING"];
                    [r23 release];
                    [Tapjoy connect:r19 options:r22];
                    [r22 release];
                    r0 = r21;
            }
    }
    else {
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r23 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r24] retain];
            [r24 release];
            r0 = objc_loadWeakRetained(r22);
            [r0 adapter:r21 didFailToSetUpRewardBasedVideoAdWithError:r23];
            [r0 release];
            r0 = r23;
    }
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)requestRewardBasedVideoAd {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r21);
    r22 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"placementName"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r20 length] == 0x0) goto loc_1000fc628;

loc_1000fc5a0:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacement));
    r0 = *(r19 + r24);
    if (r0 == 0x0) goto loc_1000fc6dc;

loc_1000fc5b0:
    r22 = [[r0 placementName] retain];
    r23 = [r20 isEqualToString:r2];
    [r22 release];
    if ((r23 & 0x1) == 0x0) goto loc_1000fc6ec;

loc_1000fc5ec:
    r0 = *(r19 + r24);
    if (r0 == 0x0 || [r0 isContentReady] == 0x0) goto loc_1000fc6dc;

loc_1000fc604:
    r0 = objc_loadWeakRetained(r21);
    [r0 adapterDidReceiveRewardBasedVideoAd:r19];
    r0 = r0;
    goto loc_1000fc6d4;

loc_1000fc6d4:
    [r0 release];
    goto loc_1000fc6fc;

loc_1000fc6fc:
    var_38 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_1000fc6dc:
    if (*(int8_t *)(int64_t *)&r19->_rvIsRequesting == 0x0) {
            [r19 initRVPlacement];
    }
    goto loc_1000fc6fc;

loc_1000fc6ec:
    [r19 initRVPlacement];
    goto loc_1000fc6fc;

loc_1000fc628:
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r22 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r23] retain];
    [r23 release];
    r0 = objc_loadWeakRetained(r21);
    [r0 adapter:r19 didFailToLoadRewardBasedVideoAdwithError:r22];
    [r0 release];
    r0 = r22;
    goto loc_1000fc6d4;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    objc_storeWeak((int64_t *)&r20->_interstitialConnector, r19);
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)initInterstitialPlacement {
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    r20 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r22 = [[r0 objectForKey:@"placementName"] retain];
    [r0 release];
    [r20 release];
    r0 = [TJPlacement placementWithName:r22 mediationAgent:@"admob" mediationId:0x0 delegate:self];
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_intPlacement));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [*(self + r20) setAdapterVersion:@"1.0.0"];
    *(int8_t *)(int64_t *)&self->_intIsRequesting = 0x1;
    [*(self + r20) requestContent];
    [r22 release];
    return;
}

-(void)presentInterstitialFromRootViewController:(void *)arg2 {
    [self->_intPlacement showContentWithViewController:arg2];
    return;
}

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

-(void)getInterstitial {
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
    r21 = self;
    r22 = (int64_t *)&r21->_interstitialConnector;
    r0 = objc_loadWeakRetained(r22);
    r20 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:@"sdkKey"] retain];
    [r0 release];
    [r20 release];
    r0 = objc_loadWeakRetained(r22);
    r24 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"placementName"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r24 release];
    if ([r19 length] == 0x0 || [r20 length] == 0x0) goto loc_1000fca60;

loc_1000fca00:
    if (([Tapjoy isConnected] & 0x1) == 0x0) goto loc_1000fcb10;

loc_1000fca18:
    r0 = r21->_intPlacement;
    if (r0 != 0x0 && [r0 isContentReady] != 0x0) {
            r0 = objc_loadWeakRetained(r22);
            [r0 adapterDidReceiveInterstitial:r21];
            [r0 release];
    }
    else {
            if (*(int8_t *)(int64_t *)&r21->_intIsRequesting == 0x0) {
                    [r21 initInterstitialPlacement];
            }
    }
    NSLog(@"Requesting interstitial from Tapjoy");
    goto loc_1000fcbf4;

loc_1000fcbf4:
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1000fcb10:
    [r21 setupListeners];
    r0 = objc_loadWeakRetained(r22);
    r21 = [[r0 networkExtras] retain];
    [r0 release];
    r22 = [[NSMutableDictionary alloc] init];
    r23 = [[NSNumber numberWithBool:[r21 debugEnabled]] retain];
    [r22 setObject:r23 forKey:@"TJC_OPTION_ENABLE_LOGGING"];
    [r23 release];
    [Tapjoy connect:r19 options:r22];
    [r22 release];
    r0 = r21;
    goto loc_1000fcbf0;

loc_1000fcbf0:
    [r0 release];
    goto loc_1000fcbf4;

loc_1000fca60:
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r23 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r24] retain];
    [r24 release];
    r0 = objc_loadWeakRetained(r22);
    [r0 adapter:r21 didFailAd:r23];
    [r0 release];
    r0 = r23;
    goto loc_1000fcbf0;
}

-(void)tjcConnectSuccess:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r20 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 adapterDidSetUpRewardBasedVideoAd:r19];
            [r0 release];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_interstitialConnector);
            [r0 release];
            if (r0 != 0x0) {
                    [r19 initInterstitialPlacement];
            }
    }
    return;
}

-(void)tjcConnectFail:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r21 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fcf10;

loc_1000fcef8:
    r21 = objc_loadWeakRetained(r21);
    r1 = @selector(adapter:didFailToSetUpRewardBasedVideoAdWithError:);
    goto loc_1000fcf44;

loc_1000fcf44:
    objc_msgSend(r21, r1);
    [r21 release];
    goto loc_1000fcf5c;

loc_1000fcf5c:
    var_28 = **___stack_chk_guard;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_1000fcf10:
    r21 = (int64_t *)&r19->_interstitialConnector;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fcf5c;

loc_1000fcf30:
    r21 = objc_loadWeakRetained(r21);
    r1 = @selector(adapter:didFailAd:);
    goto loc_1000fcf44;
}

-(void)stopBeingDelegate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_rewardBasedVideoAdConnector);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd030;

loc_1000fd004:
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_rvPlacement));
    [*(r19 + r20) setDelegate:0x0];
    r0 = *(r19 + r20);
    r1 = @selector(setVideoDelegate:);
    goto loc_1000fd060;

loc_1000fd060:
    objc_msgSend(r0, r1);
    return;

.l1:
    return;

loc_1000fd030:
    r0 = objc_loadWeakRetained((int64_t *)&r19->_interstitialConnector);
    [r0 release];
    if (r0 == 0x0) goto .l1;

loc_1000fd04c:
    r0 = r19->_intPlacement;
    r1 = @selector(setDelegate:);
    goto loc_1000fd060;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r21] retain];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialConnector);
    [r0 adapter:self didFailAd:r20];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)requestDidSucceed:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([arg2 isContentAvailable] & 0x1) != 0x0) goto loc_1000fd36c;

loc_1000fd1c8:
    r20 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd28c;

loc_1000fd1e8:
    *(int8_t *)(int64_t *)&r19->_rvIsRequesting = 0x0;
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r21 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r22] retain];
    [r22 release];
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapter:didFailToLoadRewardBasedVideoAdwithError:);
    goto loc_1000fd34c;

loc_1000fd34c:
    objc_msgSend(r20, r1);
    [r20 release];
    [r21 release];
    goto loc_1000fd36c;

loc_1000fd36c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1000fd28c:
    r20 = (int64_t *)&r19->_interstitialConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd36c;

loc_1000fd2ac:
    *(int8_t *)(int64_t *)&r19->_intIsRequesting = 0x0;
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r21 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r22] retain];
    [r22 release];
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapter:didFailAd:);
    goto loc_1000fd34c;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd488;

loc_1000fd3e4:
    *(int8_t *)(int64_t *)&r19->_rvIsRequesting = 0x0;
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r21 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r22] retain];
    [r22 release];
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapter:didFailToLoadRewardBasedVideoAdwithError:);
    goto loc_1000fd548;

loc_1000fd548:
    objc_msgSend(r20, r1);
    [r20 release];
    [r21 release];
    goto loc_1000fd568;

loc_1000fd568:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1000fd488:
    r20 = (int64_t *)&r19->_interstitialConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd568;

loc_1000fd4a8:
    *(int8_t *)(int64_t *)&r19->_intIsRequesting = 0x0;
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r21 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r22] retain];
    [r22 release];
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapter:didFailAd:);
    goto loc_1000fd548;
}

-(void)contentIsReady:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd5f0;

loc_1000fd5cc:
    *(int8_t *)(int64_t *)&r19->_rvIsRequesting = 0x0;
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapterDidReceiveRewardBasedVideoAd:);
    goto loc_1000fd630;

loc_1000fd630:
    objc_msgSend(r20, r1);
    [r20 release];
    return;

.l1:
    return;

loc_1000fd5f0:
    r20 = (int64_t *)&r19->_interstitialConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto .l1;

loc_1000fd610:
    *(int8_t *)(int64_t *)&r19->_intIsRequesting = 0x0;
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapterDidReceiveInterstitial:);
    goto loc_1000fd630;
}

-(void)contentDidAppear:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto loc_1000fd6ac;

loc_1000fd694:
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapterDidOpenRewardBasedVideoAd:);
    goto loc_1000fd6e0;

loc_1000fd6e0:
    objc_msgSend(r20, r1);
    [r20 release];
    return;

.l1:
    return;

loc_1000fd6ac:
    r20 = (int64_t *)&r19->_interstitialConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 == 0x0) goto .l1;

loc_1000fd6cc:
    r20 = objc_loadWeakRetained(r20);
    r1 = @selector(adapterWillPresentInterstitial:);
    goto loc_1000fd6e0;
}

-(void)contentDidDisappear:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&r19->_rewardBasedVideoAdConnector;
    r0 = objc_loadWeakRetained(r20);
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 adapterDidCloseRewardBasedVideoAd:r19];
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_rvIsRequesting = 0x1;
            [r19->_rvPlacement requestContent];
    }
    else {
            r20 = (int64_t *)&r19->_interstitialConnector;
            r0 = objc_loadWeakRetained(r20);
            [r0 release];
            if (r0 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 adapterWillDismissInterstitial:r19];
                    [r0 release];
                    r0 = objc_loadWeakRetained(r20);
                    [r0 adapterDidDismissInterstitial:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)videoDidStart:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardBasedVideoAdConnector);
    [r0 adapterDidStartPlayingRewardBasedVideoAd:self];
    [r0 release];
    return;
}

-(void)videoDidComplete:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardBasedVideoAdConnector);
    [r0 adapterDidCompletePlayingRewardBasedVideoAd:self];
    [r0 release];
    r21 = [GADAdReward alloc];
    r22 = [[NSDecimalNumber one] retain];
    r21 = [r21 initWithRewardType:@"" rewardAmount:r22];
    [r22 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardBasedVideoAdConnector);
    [r0 adapter:self didRewardUserWithReward:r21];
    [r0 release];
    [r21 release];
    return;
}

-(void)videoDidFail:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"com.google.mediation.tapjoy" code:0x0 userInfo:r21] retain];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardBasedVideoAdConnector);
    [r0 adapter:self didFailToLoadRewardBasedVideoAdwithError:r20];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_rvPlacement, 0x0);
    objc_destroyWeak((int64_t *)&self->_interstitialConnector);
    objc_destroyWeak((int64_t *)&self->_rewardBasedVideoAdConnector);
    return;
}

@end