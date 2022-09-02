@implementation MPVungleRouter

+(void *)sharedRouter {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8270 != -0x1) {
            dispatch_once(0x1011d8270, 0x100e7e658);
    }
    r0 = *0x1011d8268;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setSdkInitializeState:0x0];
            r21 = [[NSMutableDictionary dictionary] retain];
            [r19 setDelegatesDict:r21];
            [r21 release];
            r20 = [[NSMutableDictionary dictionary] retain];
            [r19 setWaitingListDict:r20];
            [r20 release];
            r20 = [[NSMutableArray array] retain];
            [r19 setBannerDelegates:r20];
            [r20 release];
            [r19 setIsAdPlaying:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)collectConsentStatusFromMoPub {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isGDPRApplicable];
    [r0 release];
    if (r21 == 0x1) {
            r0 = @class(MoPub);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r21 = [r0 allowLegitimateInterest];
            [r0 release];
            r0 = @class(MoPub);
            r0 = [r0 sharedInstance];
            r29 = r29;
            r20 = [r0 retain];
            if (r21 != 0x0) {
                    if ([r20 currentConsentStatus] == 0x1) {
                            r21 = 0x1;
                    }
                    else {
                            r0 = [MoPub sharedInstance];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = r0;
                            if ([r0 currentConsentStatus] == 0x2) {
                                    r21 = 0x1;
                            }
                            else {
                                    r21 = @selector(currentConsentStatus);
                                    r0 = [MoPub sharedInstance];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    if (objc_msgSend(r0, r21) == 0x3) {
                                            if (CPU_FLAGS & E) {
                                                    r21 = 0x1;
                                            }
                                    }
                                    [r19 release];
                            }
                            [r22 release];
                    }
                    [r20 release];
                    r0 = [VungleSDK sharedSDK];
                    r0 = [r0 retain];
                    r19 = r0;
            }
            else {
                    r21 = [r20 canCollectPersonalInfo];
                    [r20 release];
                    r0 = [VungleSDK sharedSDK];
                    r0 = [r0 retain];
                    r19 = r0;
                    if (r21 == 0x0) {
                            asm { cinc       x2, x8, eq };
                    }
            }
            [r0 updateConsentStatus:r2 consentMessageVersion:r3];
            [r19 release];
    }
    return;
}

-(void)setShouldCollectDeviceId:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([self sdkInitializeState] == 0x0) {
            [VungleSDK setPublishIDFV:r19];
    }
    return;
}

-(void)initializeSdkWithInfo:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[arg2 objectForKey:r2] retain];
    r0 = [r20 vungleAppID];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r20 setVungleAppID:r19];
    }
    var_28 = r19;
    r0 = r19;
    if (*qword_1011d8278 == -0x1) {
            r0 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011d8278, &var_50);
            r0 = var_28;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)requestRewardedVideoAdWithCustomEventInfo:(void *)arg2 delegate:(void *)arg3 {
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
    [r21 collectConsentStatusFromMoPub];
    if ([r21 validateInfoData:r19] == 0x0) goto loc_100481ba4;

loc_100481b14:
    if ([r21 sdkInitializeState] == 0x0) goto loc_100481bf8;

loc_100481b2c:
    if ([r21 sdkInitializeState] != 0x1) goto loc_100481c78;

loc_100481b40:
    r21 = [[r21 waitingListDict] retain];
    [[r19 objectForKey:@"pid"] retain];
    [r21 setObject:r2 forKey:r3];
    [r22 release];
    goto loc_100481bec;

loc_100481bec:
    [r21 release];
    goto loc_100481ca4;

loc_100481ca4:
    [r20 release];
    [r19 release];
    return;

loc_100481c78:
    if ([r21 sdkInitializeState] == 0x2) {
            [r21 requestAdWithCustomEventInfo:r19 delegate:r20];
    }
    goto loc_100481ca4;

loc_100481bf8:
    r22 = [[r21 waitingListDict] retain];
    r23 = [[r19 objectForKey:@"pid"] retain];
    [r22 setObject:r20 forKey:r23];
    [r23 release];
    [r22 release];
    [r21 initializeSdkWithInfo:r19];
    goto loc_100481ca4;

loc_100481ba4:
    r21 = [[NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:0x0] retain];
    [r20 vungleAdDidFailToLoad:r21];
    goto loc_100481bec;
}

-(void)requestInterstitialAdWithCustomEventInfo:(void *)arg2 delegate:(void *)arg3 {
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
    [r21 collectConsentStatusFromMoPub];
    if ([r21 validateInfoData:r19] == 0x0) goto loc_1004819d8;

loc_100481940:
    if ([r21 sdkInitializeState] == 0x0) goto loc_1004819ec;

loc_100481958:
    if ([r21 sdkInitializeState] == 0x1) {
            r21 = [[r21 waitingListDict] retain];
            [[r19 objectForKey:@"pid"] retain];
            [r21 setObject:r2 forKey:r3];
            [r22 release];
            [r21 release];
    }
    else {
            if ([r21 sdkInitializeState] == 0x2) {
                    [r21 requestAdWithCustomEventInfo:r19 delegate:r20];
            }
    }
    goto loc_100481a68;

loc_100481a68:
    [r20 release];
    [r19 release];
    return;

loc_1004819ec:
    r22 = [[r21 waitingListDict] retain];
    r23 = [[r19 objectForKey:@"pid"] retain];
    [r22 setObject:r20 forKey:r23];
    [r23 release];
    [r22 release];
    r1 = @selector(initializeSdkWithInfo:);
    r0 = r21;
    goto loc_100481a64;

loc_100481a64:
    objc_msgSend(r0, r1);
    goto loc_100481a68;

loc_1004819d8:
    r1 = @selector(vungleAdDidFailToLoad:);
    r0 = r20;
    goto loc_100481a64;
}

-(void)setSDKOptions:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    r24 = 0x101137000;
    r25 = 0x101137000;
    if (r0 == 0x0) goto loc_100481578;

loc_100481408:
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r22 = [r0 retain];
    r2 = r22;
    if (([r21 isEqual:r2] & 0x1) == 0x0) goto loc_1004814f8;

loc_10048145c:
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:@"vungleMinimumFileSystemSizeForInit"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 release];
    r0 = r24;
    r24 = 0x101137000;
    [r0 release];
    [r22 release];
    if (r25 == 0x0) goto loc_100481504;

loc_1004814c0:
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 removeObjectForKey:r2];
    r25 = 0x101137000;
    goto loc_100481568;

loc_100481568:
    [r22 release];
    goto loc_100481570;

loc_100481570:
    [r21 release];
    goto loc_100481578;

loc_100481578:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100481710;

loc_1004815a0:
    r24 = 0x101137000;
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r22 = [r0 retain];
    r2 = r22;
    if ((objc_msgSend(r21, *(r24 + 0x990)) & 0x1) == 0x0) goto loc_100481690;

loc_1004815f4:
    r27 = r25;
    r1 = *(r25 + 0x978);
    var_58 = r1;
    r0 = objc_msgSend(@class(NSUserDefaults), r1);
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:@"vungleMinimumFileSystemSizeForAdRequest"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 release];
    r0 = r24;
    r24 = 0x101137000;
    [r0 release];
    [r22 release];
    if (r25 == 0x0) goto loc_10048169c;

loc_100481658:
    r0 = objc_msgSend(@class(NSUserDefaults), var_58);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 removeObjectForKey:r2];
    r25 = r27;
    goto loc_100481700;

loc_100481700:
    [r22 release];
    goto loc_100481708;

loc_100481708:
    [r21 release];
    goto loc_100481710;

loc_100481710:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100481890;

loc_100481738:
    r20 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r21 = [r0 retain];
    r2 = r21;
    if ((objc_msgSend(r20, *(r24 + 0x990)) & 0x1) == 0x0) goto loc_100481818;

loc_10048178c:
    r22 = *(r25 + 0x978);
    r0 = objc_msgSend(@class(NSUserDefaults), r22);
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 valueForKey:@"vungleMinimumFileSystemSizeForAssetDownload"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r21 release];
    if (r0 == 0x0) goto loc_100481820;

loc_1004817e4:
    r0 = objc_msgSend(@class(NSUserDefaults), r22);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 removeObjectForKey:r2];
    goto loc_100481880;

loc_100481880:
    [r21 release];
    goto loc_100481888;

loc_100481888:
    [r20 release];
    goto loc_100481890;

loc_100481890:
    r0 = objc_msgSend(@class(NSUserDefaults), *(r25 + 0x978));
    r0 = [r0 retain];
    [r0 synchronize];
    [r20 release];
    [r19 release];
    return;

loc_100481820:
    if ([r20 integerValue] < 0x1) goto loc_100481888;

loc_100481838:
    r0 = objc_msgSend(@class(NSUserDefaults), *(r25 + 0x978));
    r29 = r29;
    r21 = [r0 retain];
    [r20 intValue];
    asm { sxtw       x2, w0 };
    [r21 setInteger:r2 forKey:@"vungleMinimumFileSystemSizeForAssetDownload"];
    goto loc_100481880;

loc_100481818:
    [r21 release];
    goto loc_100481820;

loc_10048169c:
    r0 = [r21 integerValue];
    r25 = r27;
    if (r0 < 0x1) goto loc_100481708;

loc_1004816b8:
    r0 = objc_msgSend(@class(NSUserDefaults), *(r25 + 0x978));
    r29 = r29;
    r22 = [r0 retain];
    [r21 intValue];
    asm { sxtw       x2, w0 };
    [r22 setInteger:r2 forKey:@"vungleMinimumFileSystemSizeForAdRequest"];
    goto loc_100481700;

loc_100481690:
    r27 = r25;
    [r22 release];
    goto loc_10048169c;

loc_100481504:
    r0 = [r21 integerValue];
    r25 = 0x101137000;
    if (r0 < 0x1) goto loc_100481570;

loc_100481520:
    r0 = objc_msgSend(@class(NSUserDefaults), *(r25 + 0x978));
    r29 = r29;
    r22 = [r0 retain];
    [r21 intValue];
    asm { sxtw       x2, w0 };
    [r22 setInteger:r2 forKey:@"vungleMinimumFileSystemSizeForInit"];
    goto loc_100481568;

loc_1004814f8:
    r24 = 0x101137000;
    [r22 release];
    goto loc_100481504;
}

-(void)requestAdWithCustomEventInfo:(void *)arg2 delegate:(void *)arg3 {
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
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[r22 objectForKey:@"pid"] retain];
    [r22 release];
    r0 = [r21 delegatesDict];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 == 0x0) {
            r0 = [r21 delegatesDict];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r22 release];
    }
    r0 = [VungleSDK sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 loadPlacementWithID:r20 error:&var_48];
    r22 = [var_48 retain];
    [r0 release];
    if (r24 != 0x0) {
            r25 = [[NSString stringWithFormat:@"Vungle: Start to load an ad for Placement ID :%@"] retain];
            r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
            [r24 release];
            [r25 release];
    }
    else {
            if (r22 != 0x0) {
                    r25 = [[NSString stringWithFormat:@"Vungle: Unable to load an ad for Placement ID :%@, Error %@"] retain];
                    r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
                    [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
                    [r24 release];
                    [r25 release];
            }
            [r19 vungleAdDidFailToLoad:r22];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)requestBannerAdWithCustomEventInfo:(void *)arg2 size:(struct CGSize)arg3 delegate:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    [r21 collectConsentStatusFromMoPub];
    r0 = [r21 bannerDelegates];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 == 0x0) goto loc_100481ee8;

loc_100481d58:
    r0 = [r21 bannerPlacementID];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100481ee0;

loc_100481d7c:
    r24 = [[r19 objectForKey:@"pid"] retain];
    r0 = [r21 bannerPlacementID];
    r29 = r29;
    r23 = [r0 retain];
    r25 = [r24 isEqualToString:r2];
    [r23 release];
    [r24 release];
    [r22 release];
    if ((r25 & 0x1) != 0x0) goto loc_100481ee8;

loc_100481dec:
    r0 = objc_alloc();
    r0 = [r0 init];
    r24 = [[r0 adapterVersion] retain];
    r26 = [[NSString stringWithFormat:@"A banner ad type has been already instantiated. Multiple banner ads are not supported with Vungle iOS SDK version %@ and adapter version %@."] retain];
    r25 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r21 class]];
    [r25 release];
    [r26 release];
    [r24 release];
    [r0 release];
    goto loc_100482078;

loc_100482078:
    r1 = @selector(vungleAdDidFailToLoad:);
    r0 = r20;
    goto loc_100482088;

loc_100482088:
    objc_msgSend(r0, r1);
    goto loc_10048208c;

loc_10048208c:
    [r20 release];
    [r19 release];
    return;

loc_100481ee8:
    if (d8 != *0x100ba2d58 || [r21 validateInfoData:r19] == 0x0 || d9 != *0x100b9b1b8) goto loc_100482078;

loc_100481f20:
    r0 = [r19 objectForKey:@"pid"];
    r29 = r29;
    r23 = [r0 retain];
    [r21 setBannerPlacementID:r23];
    [r23 release];
    [r21 setIsInvalidatedBannerForPlacementID:0x0];
    if ([r21 sdkInitializeState] == 0x0) goto loc_1004820bc;

loc_100481f90:
    if ([r21 sdkInitializeState] != 0x1) goto loc_1004821a4;

loc_100481fa4:
    r24 = [[r21 waitingListDict] retain];
    r25 = [[r19 objectForKey:@"pid"] retain];
    r0 = [r24 objectForKey:r25];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r24 release];
    if (r0 != 0x0) goto loc_10048208c;

loc_100482018:
    r21 = [[r21 waitingListDict] retain];
    [[r19 objectForKey:@"pid"] retain];
    [r21 setObject:r2 forKey:r3];
    [r22 release];
    r0 = r21;
    goto loc_1004821f4;

loc_1004821f4:
    [r0 release];
    goto loc_10048208c;

loc_1004821a4:
    if ([r21 sdkInitializeState] != 0x2) goto loc_10048208c;

loc_1004821b8:
    r22 = [[r19 objectForKey:@"pid"] retain];
    [r21 requestBannerMrecAdWithPlacementID:r22 delegate:r20];
    r0 = r22;
    goto loc_1004821f4;

loc_1004820bc:
    r24 = [[r21 waitingListDict] retain];
    r25 = [[r19 objectForKey:@"pid"] retain];
    r0 = [r24 objectForKey:r25];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r24 release];
    if (r0 == 0x0) {
            r23 = [[r21 waitingListDict] retain];
            [[r19 objectForKey:@"pid"] retain];
            [r23 setObject:r2 forKey:r3];
            [r22 release];
            [r23 release];
    }
    r1 = @selector(initializeSdkWithInfo:);
    r0 = r21;
    goto loc_100482088;

loc_100481ee0:
    [r22 release];
    goto loc_100481ee8;
}

-(void)requestBannerMrecAdWithPlacementID:(void *)arg2 delegate:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[NSMutableDictionary dictionary] retain];
    r0 = [VungleSDK sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isAdCachedForPlacementID:r19];
    [r0 release];
    if (r25 != 0x0) {
            [r20 vungleAdDidLoad];
            [r21 setObject:r20 forKey:@"bannerDelegate"];
            r24 = [@(0x1) retain];
            [r21 setObject:r24 forKey:@"bannerState"];
            [r24 release];
            r0 = [r22 bannerDelegates];
            r0 = [r0 retain];
            [r0 addObject:r2];
            r0 = r22;
    }
    else {
            [r21 setObject:r20 forKey:@"bannerDelegate"];
            r25 = [@(0x0) retain];
            [r21 setObject:r25 forKey:@"bannerState"];
            [r25 release];
            r0 = [r22 bannerDelegates];
            r0 = [r0 retain];
            [r0 addObject:r21];
            [r0 release];
            r0 = @class(VungleSDK);
            r0 = [r0 sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 loadPlacementWithID:r19 error:&var_48];
            r23 = [var_48 retain];
            [r0 release];
            if (r25 != 0x0) {
                    r26 = [[NSString stringWithFormat:@"Vungle: Start to load an ad for Placement ID :%@"] retain];
                    r25 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
                    [MPLogging logEvent:r25 source:0x0 fromClass:[r22 class]];
                    [r25 release];
                    [r26 release];
            }
            else {
                    if (r23 != 0x0) {
                            r26 = [[NSString stringWithFormat:@"Vungle: Unable to load an ad for Placement ID :%@, Error %@"] retain];
                            r25 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
                            [MPLogging logEvent:r25 source:0x0 fromClass:[r22 class]];
                            [r25 release];
                            [r26 release];
                    }
                    [r20 vungleAdDidFailToLoad:r23];
            }
            r0 = r23;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)isAdAvailableForPlacementId:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r20 = [r0 isAdCachedForPlacementID:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)presentInterstitialAdFromViewController:(void *)arg2 options:(void *)arg3 forPlacementId:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (([r22 isAdPlaying] & 0x1) == 0x0 && [r22 isAdAvailableForPlacementId:r21] != 0x0) {
            [r22 setIsAdPlaying:0x1];
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 playAd:r19 options:r20 placementID:r21 error:&var_48];
            r24 = [var_48 retain];
            [r0 release];
            if ((r26 & 0x1) == 0x0) {
                    r0 = [r22 delegatesDict];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 objectForKey:r21];
                    r0 = [r0 retain];
                    [r0 vungleAdDidFailToPlay:0x0];
                    [r0 release];
                    [r25 release];
                    [r22 setIsAdPlaying:0x0];
            }
            r0 = r24;
    }
    else {
            r0 = [r22 delegatesDict];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKey:r21];
            r0 = [r0 retain];
            [r0 vungleAdDidFailToPlay:0x0];
            [r0 release];
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)renderBannerAdInView:(void *)arg2 options:(void *)arg3 forPlacementID:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [VungleSDK sharedSDK];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isAdCachedForPlacementID:r21];
    [r0 release];
    if (r25 == 0x0) goto loc_100483110;

loc_1004830ac:
    r0 = [VungleSDK sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 addAdViewToView:r19 withOptions:r27 placementID:r21 error:&var_70];
    r24 = [var_70 retain];
    [r0 release];
    if ((r25 & 0x1) == 0x0) goto loc_1004831f0;

loc_100483100:
    r22 = [r19 retain];
    goto loc_1004832c4;

loc_1004832c4:
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r21 release];
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004831f0:
    var_78 = r27;
    r25 = @selector(stringWithFormat:);
    r23 = @selector(class);
    goto loc_100483204;

loc_100483204:
    r20 = [[r24 localizedDescription] retain];
    r25 = [objc_msgSend(@class(NSString), r25) retain];
    r27 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:objc_msgSend(r22, r23)];
    [r27 release];
    [r25 release];
    [r20 release];
    r22 = 0x0;
    r27 = var_78;
    goto loc_1004832c4;

loc_100483110:
    var_78 = r27;
    r23 = @selector(class);
    r26 = [NSStringFromClass(objc_msgSend(r22, r23)) retain];
    r25 = @selector(stringWithFormat:);
    r27 = [objc_msgSend(@class(NSString), r25) retain];
    r28 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r0 = [NSError errorWithDomain:r26 code:0x2241 userInfo:r28];
    r29 = r29;
    r24 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    goto loc_100483204;
}

-(void)completeBannerAdViewForPlacementID:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    var_80 = r0;
    if (r0 != 0x0) {
            r22 = [[NSString stringWithFormat:@"Vungle: Triggering an ad completion call for %@"] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
            r0 = [r19 bannerDelegates];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(count);
            var_58 = r1;
            r23 = objc_msgSend(r0, r1);
            [r0 release];
            if (r23 != 0x0) {
                    r23 = 0x0;
                    do {
                            r0 = [r19 bannerDelegates];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 objectAtIndexedSubscript:r23];
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = [r0 valueForKey:@"bannerState"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = [r0 intValue];
                            [r0 release];
                            [r28 release];
                            [r20 release];
                            if (r22 == 0x2) {
                                    var_78 = @selector(setObject:forKey:);
                                    var_70 = @selector(numberWithInt:);
                                    r0 = [VungleSDK sharedSDK];
                                    r0 = [r0 retain];
                                    [r0 finishedDisplayingAd];
                                    [r20 release];
                                    r0 = [r19 bannerDelegates];
                                    r0 = [r0 retain];
                                    r22 = [[r0 objectAtIndexedSubscript:r23] retain];
                                    r0 = objc_msgSend(@class(NSNumber), var_70);
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r22, var_78);
                                    [r27 release];
                                    [r22 release];
                                    [r20 release];
                            }
                            r23 = r23 + 0x1;
                            r0 = [r19 bannerDelegates];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = objc_msgSend(r0, var_58);
                            [r0 release];
                    } while (r22 > r23);
            }
    }
    [var_80 release];
    return;
}

-(void)updateConsentStatus:(long long)arg2 {
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    [r0 updateConsentStatus:arg2 consentMessageVersion:@""];
    [r0 release];
    return;
}

-(void)invalidateBannerAdViewForPlacementID:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r25 = self;
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    var_60 = r20;
    if (r20 == 0x0) goto loc_1004839d8;

loc_10048364c:
    r23 = [[NSString stringWithFormat:@"Vungle: Triggering an ad completion call for %@"] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r25 class]];
    [r22 release];
    [r23 release];
    r0 = [r25 bannerDelegates];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 == 0x0) goto loc_1004839d8;

loc_10048372c:
    r22 = @selector(bannerDelegates);
    r23 = 0x0;
    r21 = @selector(objectAtIndexedSubscript:);
    r20 = @selector(valueForKey:);
    var_70 = r24;
    var_58 = r20;
    var_68 = r22;
    goto loc_100483754;

loc_100483754:
    r0 = objc_msgSend(r25, r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r27 = r0;
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r19 release];
    if (r0 != r24) goto loc_1004839d8;

loc_1004837bc:
    r0 = objc_msgSend(r25, r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r27 = r0;
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == r24) goto loc_100483824;

loc_10048380c:
    [r0 release];
    [r27 release];
    [r19 release];
    goto loc_1004838c8;

loc_1004838c8:
    r26 = @selector(count);
    r23 = r23 + 0x1;
    r0 = objc_msgSend(r25, r22);
    r29 = r29;
    r0 = [r0 retain];
    r20 = objc_msgSend(r0, r26);
    [r0 release];
    COND = r20 > r23;
    r20 = var_58;
    if (COND) goto loc_100483754;

loc_1004839d8:
    [r24 release];
    [var_60 release];
    return;

loc_100483824:
    r0 = objc_msgSend(r25, r22);
    r0 = [r0 retain];
    r28 = r0;
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r24 = r25;
    r25 = r0;
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 intValue];
    r21 = r21;
    [r0 release];
    r0 = r25;
    r25 = r24;
    r24 = var_70;
    r22 = var_68;
    [r0 release];
    [r28 release];
    [r24 release];
    [r27 release];
    [r19 release];
    if (r20 == 0x2) goto loc_100483908;
    goto loc_1004838c8;

loc_100483908:
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    [r0 finishedDisplayingAd];
    [r0 release];
    r0 = objc_msgSend(r25, r22);
    r0 = [r0 retain];
    r20 = [objc_msgSend(r0, r21) retain];
    r21 = [@(0x3) retain];
    [r20 setObject:r21 forKey:@"bannerState"];
    [r21 release];
    [r20 release];
    [r0 release];
    [r25 setIsInvalidatedBannerForPlacementID:0x1];
    goto loc_1004839d8;
}

-(void)presentRewardedVideoAdFromViewController:(void *)arg2 customerId:(void *)arg3 settings:(void *)arg4 forPlacementId:(void *)arg5 {
    r31 = r31 - 0x70;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (([r23 isAdPlaying] & 0x1) == 0x0 && [r23 isAdAvailableForPlacementId:r22] != 0x0) {
            [r23 setIsAdPlaying:0x1];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r24 = [r0 retain];
            if ([r20 length] != 0x0) {
                    r2 = 0x1;
                    [r24 setObject:r20 forKeyedSubscript:*0x100e89358];
            }
            else {
                    r2 = 0x1;
                    if (r21 != 0x0) {
                            r26 = @selector(length);
                            r2 = 0x1;
                            r0 = [r21 userIdentifier];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = objc_msgSend(r0, r26);
                            [r0 release];
                            if (r26 != 0x0) {
                                    r0 = [r21 userIdentifier];
                                    r29 = r29;
                                    r2 = [r0 retain];
                                    [r24 setObject:r2 forKeyedSubscript:r3];
                                    [r26 release];
                            }
                    }
            }
            r0 = [r21 ordinal];
            r27 = &@selector(alloc);
            r25 = r27;
            if (r0 != 0x0) {
                    [r21 ordinal];
                    r27 = r25;
                    r0 = objc_msgSend(@class(NSNumber), *(r25 + 0x790));
                    r29 = r29;
                    r2 = [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r26 release];
            }
            [r21 flexViewAutoDismissSeconds];
            if (d0 > 0x0) {
                    [r21 flexViewAutoDismissSeconds];
                    r27 = r25;
                    r0 = [NSNumber numberWithDouble:r2];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r26 release];
            }
            if ([r21 startMuted] != 0x0) {
                    r2 = [r21 startMuted];
                    r27 = r25;
                    r0 = [NSNumber numberWithBool:r2];
                    r29 = r29;
                    [r0 retain];
                    [r24 setObject:r2 forKeyedSubscript:r3];
                    [r26 release];
            }
            r0 = [r21 orientations];
            r0 = [r0 retain];
            r28 = [r0 intValue];
            [r0 release];
            r27 = *(r27 + 0x790);
            r0 = objc_msgSend(@class(NSNumber), r27);
            r29 = r29;
            r26 = [r0 retain];
            if (r28 == 0x1 || r28 == 0x2) {
                    r0 = objc_msgSend(@class(NSNumber), r27);
                    r29 = r29;
                    r27 = [r0 retain];
                    [r26 release];
                    r26 = r27;
            }
            [r24 setObject:r26 forKeyedSubscript:*0x100e89348];
            r0 = [VungleSDK sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 playAd:r19 options:r24 placementID:r22 error:0x0];
            [r0 release];
            if ((r28 & 0x1) == 0x0) {
                    r0 = [r23 delegatesDict];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 objectForKey:r22];
                    r0 = [r0 retain];
                    [r0 vungleAdDidFailToPlay:0x0];
                    [r0 release];
                    [r27 release];
                    [r23 setIsAdPlaying:r2];
            }
    }
    else {
            r24 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0] retain];
            r0 = [r23 delegatesDict];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKey:r22];
            r0 = [r0 retain];
            [r0 vungleAdDidFailToPlay:r24];
            [r0 release];
    }
    [r26 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(long long)getCurrentConsentStatus {
    r0 = [VungleSDK sharedSDK];
    r0 = [r0 retain];
    r20 = [r0 getCurrentConsentStatus];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)clearDelegateForRequestingBanner {
    [self clearDelegateWithState:0x0 placementID:0x0];
    return;
}

-(void)clearDelegateForPlacementId:(void *)arg2 {
    [self clearDelegateWithState:0x5 placementID:arg2];
    return;
}

-(void)vungleSDKDidInitialize {
    r22 = [[NSString stringWithFormat:@"Vungle: the SDK has been initialized successfully."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [self setSdkInitializeState:0x2];
    [self clearWaitingList];
    return;
}

-(void)clearDelegateWithState:(unsigned long long)arg2 placementID:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r24 = arg2;
    r21 = self;
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100483e1c;

loc_100483dec:
    r0 = [r21 delegatesDict];
    r0 = [r0 retain];
    r22 = r0;
    [r0 removeObjectForKey:r2];
    goto loc_100483fe8;

loc_100483fe8:
    [r22 release];
    goto loc_100483ff0;

loc_100483ff0:
    [r20 release];
    return;

loc_100483e1c:
    if (r24 == 0x5) goto loc_100483ff0;

loc_100483e24:
    r22 = [NSMutableArray new];
    r0 = [r21 bannerDelegates];
    r0 = [r0 retain];
    r1 = @selector(count);
    var_58 = r1;
    r25 = objc_msgSend(r0, r1);
    [r0 release];
    r0 = [r21 bannerDelegates];
    r29 = r29;
    r19 = [r0 retain];
    if (r25 != 0x0) {
            var_68 = r22;
            var_60 = r24;
            r25 = 0x0;
            var_78 = r20;
            do {
                    r0 = [r19 objectAtIndexedSubscript:r25];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 valueForKey:@"bannerState"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 intValue];
                    asm { sxtw       x22, w0 };
                    [r24 release];
                    [r20 release];
                    [r19 release];
                    if (r22 == var_60) {
                            r0 = [r21 bannerDelegates];
                            r0 = [r0 retain];
                            r0 = [r0 objectAtIndexedSubscript:r25];
                            r29 = r29;
                            [r0 retain];
                            [var_68 addObject:r2];
                            [r20 release];
                            [r19 release];
                    }
                    r25 = r25 + 0x1;
                    r0 = [r21 bannerDelegates];
                    r0 = [r0 retain];
                    r20 = objc_msgSend(r0, var_58);
                    [r0 release];
                    r0 = [r21 bannerDelegates];
                    r29 = r29;
                    r19 = [r0 retain];
            } while (r20 > r25);
            r20 = var_78;
            r22 = var_68;
    }
    [r19 removeObjectsInArray:r22];
    [r19 release];
    goto loc_100483fe8;
}

-(bool)validateInfoData:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"appId"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] == 0x0) goto loc_100483ba4;

loc_100483b38:
    r0 = [r21 vungleAppID];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_100483bfc;

loc_100483b5c:
    r0 = [r21 vungleAppID];
    r29 = r29;
    r0 = [r0 retain];
    r2 = r20;
    r26 = [r0 isEqualToString:r2];
    [r0 release];
    [r24 release];
    if ((r26 & 0x1) == 0x0) goto loc_100483c04;

loc_100483b9c:
    r25 = 0x1;
    goto loc_100483ca0;

loc_100483ca0:
    r23 = @selector(length);
    r0 = [r19 objectForKey:@"pid"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, r23);
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = @"Vungle: Info data for the Ad Unit is valid.";
            }
            else {
                    r2 = @"Vungle: PlacementID is empty. Setup placementID on MoPub dashboard.";
            }
    }
    if (CPU_FLAGS & NE) {
            asm { csetm      w26, ne };
    }
    if (r0 != 0x0 && r25 == 0x0) {
            r26 = 0x0;
    }
    else {
            r25 = [[NSString stringWithFormat:r2] retain];
            r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
            [r24 release];
            [r25 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r26 & 0x1;
    return r0;

loc_100483c04:
    r24 = [[NSString stringWithFormat:@"Vungle: AppID is different from the one used for initialization. Make sure you set the same network App ID for all AdUnits in this application on MoPub dashboard."] retain];
    r0 = [MPLogEvent eventWithMessage:r24 level:0x1e];
    r29 = r29;
    goto loc_100483c58;

loc_100483c58:
    r26 = @class(MPLogging);
    r25 = [r0 retain];
    [r26 logEvent:r25 source:0x0 fromClass:[r21 class]];
    [r25 release];
    r25 = 0x0;
    goto loc_100483c98;

loc_100483c98:
    [r24 release];
    goto loc_100483ca0;

loc_100483bfc:
    r2 = @"appId";
    r25 = 0x1;
    goto loc_100483c98;

loc_100483ba4:
    r2 = @"appId";
    r24 = [[NSString stringWithFormat:@"Vungle: AppID is empty. Setup appID on MoPub dashboard."] retain];
    r0 = [MPLogEvent eventWithMessage:r24 level:0x1e];
    r29 = r29;
    goto loc_100483c58;
}

-(void)vungleDidShowAdForPlacementID:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self delegatesDict];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:r2] retain];
    [r21 release];
    [r0 release];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            [r19 vungleAdDidAppear];
    }
    [r19 release];
    return;
}

-(void)clearWaitingList {
    r31 = r31 - 0x1d0;
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
    r19 = self;
    var_110 = q0;
    r0 = [self waitingListDict];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r0;
    var_1A8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_130 = r0;
    if (r0 != 0x0) {
            var_148 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != var_148) {
                                    objc_enumerationMutation(var_158);
                            }
                            r24 = *(var_118 + r28 * 0x8);
                            r0 = [r19 waitingListDict];
                            r0 = [r0 retain];
                            r21 = [[r0 objectForKey:r24] retain];
                            [r0 release];
                            r25 = [[r21 getPlacementID] retain];
                            r0 = [r19 bannerPlacementID];
                            r29 = r29;
                            r20 = [r0 retain];
                            r23 = [r25 isEqualToString:r20];
                            [r20 release];
                            [r25 release];
                            if (r23 != 0x0) {
                                    r0 = [r21 getPlacementID];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r19 requestBannerMrecAdWithPlacementID:r2 delegate:r3];
                            }
                            else {
                                    r0 = [r19 delegatesDict];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [r0 objectForKey:r24];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r20 release];
                                    if (r0 == 0x0) {
                                            r0 = [r19 delegatesDict];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 setObject:r21 forKey:r24];
                                            [r0 release];
                                    }
                                    r0 = [VungleSDK sharedSDK];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 loadPlacementWithID:r24 error:&var_128];
                                    r25 = [var_128 retain];
                                    [r0 release];
                                    if (r23 != 0x0) {
                                            r24 = [[NSString stringWithFormat:@"Vungle: Start to load an ad for Placement ID :%@"] retain];
                                            r0 = [MPLogEvent eventWithMessage:r24 level:0x1e];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
                                            [r23 release];
                                            [r24 release];
                                    }
                                    else {
                                            if (r25 != 0x0) {
                                                    r24 = [[NSString stringWithFormat:@"Vungle: Unable to load an ad for Placement ID :%@, Error %@"] retain];
                                                    r0 = [MPLogEvent eventWithMessage:r24 level:0x1e];
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
                                                    [r23 release];
                                                    [r24 release];
                                            }
                                            [r21 vungleAdDidFailToLoad:r25];
                                    }
                            }
                            [r25 release];
                            [r21 release];
                            r28 = r28 + 0x1;
                    } while (r28 < var_130);
                    r0 = objc_msgSend(var_158, var_1A8);
                    var_130 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_158 release];
    r0 = [r19 waitingListDict];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)vungleWillShowAdForPlacementID:(void *)arg2 {
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
    r20 = self;
    r22 = [arg2 retain];
    r0 = [r20 bannerPlacementID];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r21 = [r22 isEqualToString:r2];
    [r19 release];
    if (r21 == 0x0) goto loc_100484f1c;

loc_100484ce4:
    r0 = [r20 bannerDelegates];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(count);
    var_58 = r1;
    r23 = objc_msgSend(r0, r1);
    [r0 release];
    if (r23 == 0x0) goto loc_100484f98;

loc_100484d24:
    var_88 = r22;
    r23 = 0x0;
    r27 = 0x0;
    do {
            r0 = [r20 bannerDelegates];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 objectAtIndexedSubscript:r23];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 valueForKey:@"bannerState"];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 intValue];
            [r0 release];
            [r19 release];
            [r28 release];
            if (r25 == 0x1) {
                    var_80 = @selector(setObject:forKey:);
                    r0 = [r20 bannerDelegates];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 objectAtIndexedSubscript:r23];
                    r0 = [r0 retain];
                    [[r0 objectForKey:@"bannerDelegate"] retain];
                    [r27 release];
                    [r0 release];
                    [r19 release];
                    r0 = [r20 bannerDelegates];
                    r0 = [r0 retain];
                    r22 = [[r0 objectAtIndexedSubscript:r23] retain];
                    r0 = [NSNumber numberWithInt:r2];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r22, var_80);
                    [r25 release];
                    [r22 release];
                    [r19 release];
                    r27 = r28;
            }
            r23 = r23 + 0x1;
            r0 = [r20 bannerDelegates];
            r29 = r29;
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, var_58);
            [r0 release];
    } while (r22 > r23);
    if (r27 != 0x0) {
            if ([r27 respondsToSelector:r2] != 0x0) {
                    [r27 vungleAdWillAppear];
            }
    }
    goto loc_100484f90;

loc_100484f90:
    r22 = var_88;
    goto loc_100484f9c;

loc_100484f9c:
    [r27 release];
    [r22 release];
    return;

loc_100484f98:
    r27 = 0x0;
    goto loc_100484f9c;

loc_100484f1c:
    r0 = [r20 delegatesDict];
    r0 = [r0 retain];
    var_88 = r22;
    r27 = [[r0 objectForKey:r2] retain];
    [r0 release];
    if (r27 != 0x0) {
            if ([r27 respondsToSelector:r2] != 0x0) {
                    [r27 vungleAdWillAppear];
            }
    }
    goto loc_100484f90;
}

-(void)nativeAdsPlacementDidLoadAd:(void *)arg2 {
    return;
}

-(void)nativeAdsPlacement:(void *)arg2 didFailToLoadAdWithError:(void *)arg3 {
    return;
}

-(void)vungleWillCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r24 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [r21 bannerPlacementID];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [r25 isEqualToString:r2];
    [r19 release];
    if (r20 == 0x0) goto loc_100485288;

loc_1004850f8:
    r0 = [r21 bannerDelegates];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(count);
    var_58 = r1;
    r20 = objc_msgSend(r0, r1);
    [r0 release];
    if (r20 == 0x0) goto loc_100485414;

loc_100485138:
    var_78 = r25;
    var_70 = r24;
    r25 = 0x0;
    r27 = 0x0;
    do {
            r0 = [r21 bannerDelegates];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectAtIndexedSubscript:r25];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 valueForKey:@"bannerState"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 intValue];
            [r0 release];
            [r19 release];
            [r20 release];
            if (r24 == 0x3) {
                    r0 = [r21 bannerDelegates];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 objectAtIndexedSubscript:r25];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 objectForKey:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r27 release];
                    [r20 release];
                    [r19 release];
                    r27 = r22;
            }
            r25 = r25 + 0x1;
            r0 = [r21 bannerDelegates];
            r29 = r29;
            r0 = [r0 retain];
            r20 = objc_msgSend(r0, var_58);
            [r0 release];
    } while (r20 > r25);
    goto loc_1004852d0;

loc_1004852d0:
    r25 = var_78;
    r24 = var_70;
    if (r27 != 0x0) {
            r19 = [[r24 didDownload] retain];
            r0 = @(YES);
            r29 = r29;
            r20 = [r0 retain];
            r22 = [r19 isEqual:r2];
            [r20 release];
            [r19 release];
            if (r22 != 0x0) {
                    [r27 vungleAdWasTapped];
            }
            r0 = [r24 completedView];
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 boolValue] != 0x0) {
                    r22 = [r27 respondsToSelector:r2];
                    [r20 release];
                    if (r22 != 0x0) {
                            [r27 vungleAdShouldRewardUser];
                    }
            }
            else {
                    [r20 release];
            }
            if ([r27 respondsToSelector:r2] != 0x0) {
                    [r27 vungleAdWillDisappear];
            }
            [r21 setIsAdPlaying:0x0];
            [r27 release];
    }
    goto loc_100485414;

loc_100485414:
    [r25 release];
    [r24 release];
    return;

loc_100485288:
    var_70 = r24;
    r0 = [r21 delegatesDict];
    r0 = [r0 retain];
    r19 = r0;
    var_78 = r25;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    [r19 release];
    goto loc_1004852d0;
}

-(void)nativeAdsPlacementWillTriggerURLLaunch:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegatesDict];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r21] retain];
    [r21 release];
    [r20 vungleAdWillLeaveApplication];
    [r20 release];
    [r0 release];
    return;
}

-(void)vungleDidCloseAdWithViewInfo:(void *)arg2 placementID:(void *)arg3 {
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
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [r21 bannerPlacementID];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [r24 isEqualToString:r2];
    [r19 release];
    if (r20 != 0x0) {
            r0 = [r21 bannerDelegates];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(count);
            var_58 = r1;
            r20 = objc_msgSend(r0, r1);
            [r0 release];
            if (r20 != 0x0) {
                    var_98 = r24;
                    stack[-160] = r23;
                    r25 = 0x0;
                    var_6C = 0x0;
                    r20 = 0x0;
                    do {
                            r0 = [r21 bannerDelegates];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectAtIndexedSubscript:r25];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 valueForKey:@"bannerState"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = [r0 intValue];
                            [r0 release];
                            [r19 release];
                            [r23 release];
                            if (r27 == 0x3) {
                                    var_88 = @selector(setObject:forKey:);
                                    r0 = [r21 bannerDelegates];
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r0 = [r0 objectAtIndexedSubscript:r25];
                                    r0 = [r0 retain];
                                    [[r0 objectForKey:@"bannerDelegate"] retain];
                                    [r20 release];
                                    [r0 release];
                                    [r19 release];
                                    r0 = [r21 bannerDelegates];
                                    r0 = [r0 retain];
                                    r20 = [[r0 objectAtIndexedSubscript:r25] retain];
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r20, var_88);
                                    [r24 release];
                                    [r20 release];
                                    [r19 release];
                                    var_6C = 0x1;
                                    r20 = r23;
                            }
                            r25 = r25 + 0x1;
                            r0 = [r21 bannerDelegates];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = objc_msgSend(r0, var_58);
                            [r0 release];
                    } while (r23 > r25);
                    r24 = var_98;
                    r23 = stack[-160];
                    if ((var_6C & 0x1) != 0x0) {
                            [r21 clearDelegateWithState:0x4 placementID:0x0];
                    }
            }
            if ([r21 isInvalidatedBannerForPlacementID] != 0x0) {
                    [r21 setBannerPlacementID:0x0];
                    [r21 setIsInvalidatedBannerForPlacementID:0x0];
            }
    }
    else {
            r0 = [r21 delegatesDict];
            r0 = [r0 retain];
            r20 = [[r0 objectForKey:r2] retain];
            [r0 release];
    }
    if (r20 != 0x0 && [r20 respondsToSelector:r2] != 0x0) {
            [r20 vungleAdDidDisappear];
    }
    [r20 release];
    [r24 release];
    [r23 release];
    return;
}

-(void)vungleAdPlayabilityUpdate:(bool)arg2 placementID:(void *)arg3 error:(void *)arg4 {
    r31 = r31 - 0xf0;
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
    r28 = arg2;
    r21 = self;
    r25 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = [r21 bannerPlacementID];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [r25 isEqualToString:r2];
    [r19 release];
    if (r20 == 0x0) goto loc_100484aa8;

loc_100484620:
    r0 = [r21 bannerDelegates];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    if (r20 != 0x0) {
            var_68 = r26;
            var_A0 = r25;
            r25 = 0x0;
            var_84 = 0x0;
            var_88 = r28;
            do {
                    r0 = [r21 bannerDelegates];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 objectAtIndexedSubscript:r25];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 valueForKey:@"bannerState"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 intValue];
                    [r0 release];
                    [r20 release];
                    [r19 release];
                    if (r27 == 0x0) {
                            if (r28 != 0x0) {
                                    var_78 = @selector(setObject:forKey:);
                                    r0 = [r21 bannerDelegates];
                                    r0 = [r0 retain];
                                    r0 = [r0 objectAtIndexedSubscript:r25];
                                    r0 = [r0 retain];
                                    r0 = [r0 objectForKey:r2];
                                    r0 = [r0 retain];
                                    [r0 vungleAdDidLoad];
                                    [r22 release];
                                    [r20 release];
                                    [r19 release];
                                    r0 = [r21 bannerDelegates];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r22 = [[r0 objectAtIndexedSubscript:r25] retain];
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    objc_msgSend(r22, var_78);
                            }
                            else {
                                    r28 = var_68;
                                    if (r28 != 0x0) {
                                            [[r28 localizedDescription] retain];
                                            [[NSString stringWithFormat:@"Vungle: Ad playability update returned error for Placement ID: %@, Error: %@"] retain];
                                            r0 = [MPLogEvent eventWithMessage:r2 level:r3];
                                            r29 = r29;
                                            [r0 retain];
                                            [r21 class];
                                            [MPLogging logEvent:r2 source:r3 fromClass:r4];
                                            [r20 release];
                                            [r22 release];
                                            [r27 release];
                                            [r28 retain];
                                    }
                                    if (([r21 isAdPlaying] & 0x1) == 0x0) {
                                            r0 = [r21 bannerDelegates];
                                            r0 = [r0 retain];
                                            r0 = [r0 objectAtIndexedSubscript:r25];
                                            r0 = [r0 retain];
                                            r0 = [r0 objectForKey:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 vungleAdDidFailToLoad:r2];
                                            [r22 release];
                                            [r20 release];
                                            [r19 release];
                                    }
                                    var_78 = @selector(setObject:forKey:);
                                    r0 = [r21 bannerDelegates];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r19 = [[r0 objectAtIndexedSubscript:r25] retain];
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r19, var_78);
                                    [r20 release];
                                    var_84 = 0x1;
                                    r20 = var_68;
                                    r28 = var_88;
                            }
                            [r19 release];
                            [r22 release];
                            [r20 release];
                    }
                    r24 = @selector(count);
                    r25 = r25 + 0x1;
                    r0 = [r21 bannerDelegates];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = objc_msgSend(r0, r24);
                    [r0 release];
            } while (r20 > r25);
            r25 = var_A0;
            r26 = var_68;
            if ((var_84 & 0x1) != 0x0) {
                    [r21 clearDelegateWithState:0x4 placementID:0x0];
            }
    }
    goto loc_100484c48;

loc_100484c48:
    [r26 release];
    [r25 release];
    return;

loc_100484aa8:
    if (r28 == 0x0) goto loc_100484b00;

loc_100484aac:
    r0 = [r21 delegatesDict];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r25];
    r0 = [r0 retain];
    [r0 vungleAdDidLoad];
    [r0 release];
    r0 = r19;
    goto loc_100484c44;

loc_100484c44:
    [r0 release];
    goto loc_100484c48;

loc_100484b00:
    if (r25 == 0x0) goto loc_100484c48;

loc_100484b04:
    if (r26 != 0x0) {
            r22 = [[r26 localizedDescription] retain];
            r23 = [[NSString stringWithFormat:@"Vungle: Ad playability update returned error for Placement ID: %@, Error: %@"] retain];
            r0 = [MPLogEvent eventWithMessage:r23 level:0x1e];
            r29 = r29;
            r20 = [r0 retain];
            [MPLogging logEvent:r20 source:0x0 fromClass:[r21 class]];
            [r20 release];
            [r23 release];
            [r22 release];
            [r26 retain];
    }
    if (([r21 isAdPlaying] & 0x1) == 0x0) {
            r0 = [r21 delegatesDict];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectForKey:r25];
            r0 = [r0 retain];
            [r0 vungleAdDidFailToLoad:r26];
            [r0 release];
            [r19 release];
    }
    r0 = r26;
    goto loc_100484c44;
}

-(void)setVungleAppID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)vungleAppID {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(bool)isAdPlaying {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsAdPlaying:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(unsigned long long)sdkInitializeState {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setSdkInitializeState:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void *)delegatesDict {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setDelegatesDict:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)waitingListDict {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setWaitingListDict:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)bannerPlacementID {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setBannerPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)bannerDelegates {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setBannerDelegates:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(bool)isInvalidatedBannerForPlacementID {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setIsInvalidatedBannerForPlacementID:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end