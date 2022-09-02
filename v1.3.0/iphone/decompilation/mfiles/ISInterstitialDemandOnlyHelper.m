@implementation ISInterstitialDemandOnlyHelper

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_smashDic));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_instanceIdToWaterfallPos));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_wasLoadCalled));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_instancesToLoad));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(bool)hasInterstitial:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [ISConfigurations getConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 trackReachability] & 0x1) != 0x0) {
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 getReachabilityObject];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 currentReachabilityStatus];
            [r0 release];
            [r22 release];
            [r20 release];
            if (r24 == 0x0) {
                    r21 = 0x0;
            }
            else {
                    r0 = [r21 getSmash:r19];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            r22 = [[r20 instanceId] retain];
                            if ([r21 getWasLoadCalled:r22] != 0x0 && [r20 mediationState] == 0x3) {
                                    r21 = [r20 hasInterstitial];
                            }
                            else {
                                    r21 = 0x0;
                            }
                            [r22 release];
                    }
                    else {
                            r21 = [[ISLoggerManager sharedInstance] retain];
                            r22 = [[NSString stringWithFormat:@"hasInterstitial: %@ - Unknown instanceId"] retain];
                            [r21 log:r22 level:0x3 tag:0x0];
                            [r22 release];
                            [r21 release];
                            r21 = 0x0;
                    }
                    [r20 release];
            }
    }
    else {
            [r20 release];
            r0 = [r21 getSmash:r19];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r22 = [[r20 instanceId] retain];
                    if ([r21 getWasLoadCalled:r22] != 0x0 && [r20 mediationState] == 0x3) {
                            r21 = [r20 hasInterstitial];
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r22 release];
            }
            else {
                    r21 = [[ISLoggerManager sharedInstance] retain];
                    r22 = [[NSString stringWithFormat:@"hasInterstitial: %@ - Unknown instanceId"] retain];
                    [r21 log:r22 level:0x3 tag:0x0];
                    [r22 release];
                    [r21 release];
                    r21 = 0x0;
            }
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)addSmash:(void *)arg2 adapter:(void *)arg3 {
    r31 = r31 - 0x80;
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
    var_60 = self;
    r19 = [arg2 retain];
    var_58 = [arg3 retain];
    r27 = [[ISLoggerManager sharedInstance] retain];
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r28 = r0;
    r20 = [[r0 providerName] retain];
    r0 = [NSString stringWithFormat:@"Trying to load %@ "];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r27 log:r21 level:0x0 tag:0x6];
    [r21 release];
    [r20 release];
    [r28 release];
    [r27 release];
    if (([r19 respondsToSelector:@selector(initISWithUserId:)] & 0x1) != 0x0) {
            r28 = var_58;
            if (r28 != 0x0) {
                    [r19 setAdapter:r28];
                    [r19 setIsDelegate:var_60];
                    r0 = [ISConfigurations getConfigurations];
                    r0 = [r0 retain];
                    r21 = [[r0 userId] retain];
                    [r19 initISWithUserId:r21];
                    [r21 release];
                    [r0 release];
                    r0 = [r19 adapterConfig];
                    r0 = [r0 retain];
                    r25 = [[r0 providerName] retain];
                    r24 = [[NSString stringWithFormat:@"adding interstitial provider %@"] retain];
                    [r25 release];
                    [r0 release];
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:r24 level:0x0 tag:0x6];
                    [r0 release];
                    r21 = [[r19 instanceId] retain];
                    [var_60 setSmash:r19 withInstanceId:r21];
                    [r21 release];
                    r21 = [[r19 instanceId] retain];
                    [var_60 addWaterfallPosition:r21];
                    [r21 release];
                    r20 = [[r19 instanceId] retain];
                    [var_60 setWasLoadCalled:r20 wasCalled:0x0];
                    [r20 release];
                    [r24 release];
                    r21 = 0x1;
            }
            else {
                    r0 = [r19 adapterConfig];
                    r0 = [r0 retain];
                    r25 = [[r0 reflectionName] retain];
                    r20 = [[NSString stringWithFormat:@"initialization adapter failed for %@ - please verify that required dependencies are in your build path."] retain];
                    [r25 release];
                    [r0 release];
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:r20 level:0x0 tag:0x6];
                    [r0 release];
                    [r20 release];
                    r21 = 0x0;
            }
    }
    else {
            r20 = [[ISLoggerManager sharedInstance] retain];
            r21 = [[NSString stringWithFormat:@"ISInterstitialDemandOnlyHelper !smash respondsToSelector:@selector(initISWithUserId:)"] retain];
            [r20 log:r21 level:0x0 tag:0x6];
            [r21 release];
            [r20 release];
            r21 = 0x0;
            r28 = var_58;
    }
    [r28 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)loadInterstitial:(void *)arg2 {
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
    r0 = [ISDelegateThrottler sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 hasPendingInvocation:r19];
    [r0 release];
    if (r22 == 0x0) goto loc_1006abb90;

loc_1006abb1c:
    r20 = [[ISLoggerManager sharedInstance] retain];
    r21 = [[NSString stringWithFormat:@"loadInterstitial %@ already in progress"] retain];
    [r20 log:r21 level:0x1 tag:0x0];
    [r21 release];
    r0 = r20;
    goto loc_1006abdf4;

loc_1006abdf4:
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1006abb90:
    [r20 sendMediationEvent:0x16 data:0x0];
    r0 = [r20 getSmash:r19];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1006abc40;

loc_1006abbd0:
    [r20 sendProviderEvent:r21 eventId:0x16 data:0x0];
    if ([r21 mediationState] != 0x7) goto loc_1006abda4;

loc_1006abc04:
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_instancesToLoad)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(r20 + r23) addObject:r2];
    objc_sync_exit(r22);
    r0 = r22;
    goto loc_1006abd9c;

loc_1006abd9c:
    [r0 release];
    goto loc_1006abdf0;

loc_1006abdf0:
    r0 = r21;
    goto loc_1006abdf4;

loc_1006abda4:
    r22 = [[r21 instanceId] retain];
    [r20 setWasLoadCalled:r22 wasCalled:0x1];
    [r22 release];
    [r21 loadInterstitial];
    goto loc_1006abdf0;

loc_1006abc40:
    r24 = [[ISLoggerManager sharedInstance] retain];
    r25 = [[NSString stringWithFormat:@"loadInterstitial: %@ - The requested instance does not exist"] retain];
    [r24 log:r25 level:0x3 tag:0x0];
    [r25 release];
    [r24 release];
    r24 = [[ISError createError:0x20f withMessage:@"The requested instance does not exist"] retain];
    r0 = @class(ISDelegateThrottler);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToLoadWithError:r24 instanceId:r19];
    [r0 release];
    r23 = [@(0x20f) retain];
    r25 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r20 sendMediationEvent:0xe3 data:r25];
    [r25 release];
    [r23 release];
    r0 = r24;
    goto loc_1006abd9c;
}

-(void)supersonicISInitSuccessWithSMASH:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adapterConfig];
    r0 = [r0 retain];
    r23 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@:ISInitSuccess"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_instancesToLoad));
    r0 = *(r20 + r26);
    r0 = [r0 retain];
    r22 = r0;
    objc_sync_enter(r0);
    r24 = *(r20 + r26);
    r0 = [r19 instanceId];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r24 = [r24 containsObject:r2];
    [r25 release];
    if (r24 != 0x0) {
            r24 = *(r20 + r26);
            r25 = [[r19 instanceId] retain];
            [r24 removeObject:r25];
            [r25 release];
            r23 = [[r19 instanceId] retain];
            [r20 setWasLoadCalled:r23 wasCalled:0x1];
            [r23 release];
            [r19 loadInterstitial];
    }
    objc_sync_exit(r22);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)supersonicISInitFailedWithError:(void *)arg2 SMASH:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 adapterConfig];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 providerName] retain];
    [r19 code];
    r22 = [[NSString stringWithFormat:@"%@:ISInitFailWithError %d"] retain];
    [r24 release];
    [r23 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r22 level:0x3 tag:0x3];
    [r0 release];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_instancesToLoad));
    r0 = *(r21 + r28);
    r0 = [r0 retain];
    r23 = r0;
    objc_sync_enter(r0);
    r26 = *(r21 + r28);
    r0 = [r20 instanceId];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r26 = [r26 containsObject:r2];
    [r27 release];
    if (r26 != 0x0) {
            r26 = *(r21 + r28);
            r27 = [[r20 instanceId] retain];
            [r26 removeObject:r27];
            [r27 release];
            r24 = [[ISDelegateThrottler sharedInstance] retain];
            r25 = [[r20 instanceId] retain];
            [r24 interstitialDidFailToLoadWithError:r19 instanceId:r25];
            [r25 release];
            [r24 release];
            [r21 sendMediationEvent:0xe3 data:0x0];
            [r21 sendProviderEvent:r20 eventId:0xe3 data:0x0];
    }
    objc_sync_exit(r23);
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidLoadForSMASH:(void *)arg2 {
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
    var_58 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"interstitialDidLoadForAdapter:%@"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    [self sendProviderEvent:r20 eventId:0x1b data:r25];
    [r25 release];
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
    [self sendMediationEvent:0x1b data:r24];
    [r24 release];
    r22 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r19 = [[arg2 instanceId] retain];
    [r20 release];
    [r22 interstitialDidLoad:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 forSMASH:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 providerName] retain];
    [arg2 code];
    r23 = [[NSString stringWithFormat:@"%@: interstitial ad failed to load : %d"] retain];
    [r26 release];
    [r25 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r23 level:0x3 tag:0x3];
    [r0 release];
    r24 = [[ISDelegateThrottler sharedInstance] retain];
    r22 = [[arg3 instanceId] retain];
    [r24 interstitialDidFailToLoadWithError:r21 instanceId:r22];
    [r21 release];
    [r22 release];
    [r24 release];
    [self sendMediationEvent:0xe3 data:0x0];
    [self sendProviderEvent:r20 eventId:0xe3 data:0x0];
    [r20 release];
    [r23 release];
    return;
}

-(void)interstitialDidOpenForSMASH:(void *)arg2 {
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
    var_48 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@: ISAdOpened"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r24 = [[self->_placement name] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [self sendProviderEvent:r20 eventId:0x19 data:r25];
    [r25 release];
    [r24 release];
    r22 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r19 = [[arg2 instanceId] retain];
    [r20 release];
    [r22 interstitialDidOpen:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialDidCloseForSMASH:(void *)arg2 {
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
    var_48 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@: ISAdClosed"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r24 = [[self->_placement name] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [self sendProviderEvent:r20 eventId:0x1a data:r25];
    [r25 release];
    [r24 release];
    r22 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r19 = [[arg2 instanceId] retain];
    [r20 release];
    [r22 interstitialDidClose:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialDidShowForSMASH:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r23 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@:ISShowSuccess"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r22 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r20 = [[arg2 instanceId] retain];
    [r19 release];
    [r22 interstitialDidShow:r20];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)interstitialDidBecomeVisibleForSMASH:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@:ISAdVisible"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r22 = [[self->_placement name] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r23 = [r0 retain];
    [self sendProviderEvent:r20 eventId:0x1f data:r23];
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 forSMASH:(void *)arg3 {
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
    var_58 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 providerName] retain];
    [arg2 code];
    r20 = [[NSString stringWithFormat:@"%@:ISShowFailWithError %d"] retain];
    [r27 release];
    [r26 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x3 tag:0x3];
    [r0 release];
    r26 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r24 = [[arg3 instanceId] retain];
    [r25 release];
    [r26 interstitialDidFailToShowWithError:r22 instanceId:r24];
    [r24 release];
    [r26 release];
    r24 = [[self->_placement name] retain];
    r21 = [arg2 code];
    [r22 release];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2];
    r22 = [r0 retain];
    [self sendMediationEvent:0x1d data:r22];
    [r22 release];
    [r21 release];
    [r24 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)didClickInterstitialForSMASH:(void *)arg2 {
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
    var_48 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@:ISAdClicked"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r24 = [[self->_placement name] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [self sendProviderEvent:r20 eventId:0x1c data:r25];
    [r25 release];
    [r24 release];
    r22 = [[ISInterstitialDelegateWrapper sharedInstance] retain];
    r19 = [[arg2 instanceId] retain];
    [r20 release];
    [r22 didClickInterstitial:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)setSmash:(void *)arg2 withInstanceId:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(self + r23) setObject:r2 forKey:r3];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendMediationEvent:(long long)arg2 data:(void *)arg3 {
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
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:*0x100e8cd00 forKeyedSubscript:@"provider"];
    [r20 setObject:@"true" forKeyedSubscript:@"networkInstance"];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendProviderEvent:(void *)arg2 eventId:(long long)arg3 data:(void *)arg4 {
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
    r21 = arg3;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [NSMutableDictionary new];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r27 = [[r0 version] retain];
    [r20 setObject:r27 forKeyedSubscript:@"providerAdapterVersion"];
    [r27 release];
    [r0 release];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r26 = [[r0 sdkVersion] retain];
    [r20 setObject:r26 forKeyedSubscript:@"providerSDKVersion"];
    [r26 release];
    [r0 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r27 = [[r0 subAdapterId] retain];
    [r20 setObject:r27 forKeyedSubscript:@"spId"];
    [r27 release];
    [r0 release];
    r23 = [[arg2 adapterConfig] retain];
    [r22 release];
    r0 = [r23 adSourceNameForEvent];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r20 setObject:r22 forKeyedSubscript:@"provider"];
    [r22 release];
    [r23 release];
    [r20 setObject:@"true" forKeyedSubscript:@"networkInstance"];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)getSmash:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[*(self + r22) objectForKey:r2] retain];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
    r31 = r31 - 0x190;
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
    var_128 = [arg2 retain];
    var_150 = arg3;
    r26 = [arg3 retain];
    r23 = [arg4 retain];
    r21 = [[r26 name] retain];
    r24 = [[NSString stringWithFormat:@"Showing interstitial with placement%@"] retain];
    [r21 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    var_130 = r24;
    [r0 log:r24 level:0x1 tag:0x0];
    [r0 release];
    var_120 = r26;
    r21 = [[r26 name] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x60 forKeys:&saved_fp - 0x68 count:0x1] retain];
    [self sendMediationEvent:0x17 data:r24];
    r0 = r24;
    r24 = self;
    [r0 release];
    r0 = r21;
    r21 = r23;
    [r0 release];
    r0 = [r24 getSmash:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006ac158;

loc_1006ac010:
    r23 = var_120;
    if ([r20 mediationState] != 0x3) goto loc_1006ac2f4;

loc_1006ac038:
    var_160 = r20;
    var_158 = r21;
    r0 = [ISConfigurations getConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 trackReachability];
    r26 = @selector(sendMediationEvent:data:);
    var_168 = r24;
    if ((r0 & 0x1) == 0x0) goto loc_1006ac484;

loc_1006ac074:
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 currentReachabilityStatus];
    [r0 release];
    [r24 release];
    [r21 release];
    if (r20 != 0x0) goto loc_1006ac494;

loc_1006ac0e0:
    r19 = [[ISError createError:0x208 withMessage:@"Interstitail Show Fail - No internet connection"] retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    r26 = var_158;
    [r0 interstitialDidFailToShowWithError:r19 instanceId:r26];
    [r0 release];
    [r19 release];
    r19 = var_128;
    r27 = var_120;
    goto loc_1006ac9c8;

loc_1006ac9c8:
    r20 = var_160;
    goto loc_1006ac9cc;

loc_1006ac9cc:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [var_130 release];
    [r26 release];
    [r27 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006ac494:
    r0 = [ISPlacementCappingManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r24 = var_120;
    r21 = [r0 isPlacementCappedIS:r24];
    [r0 release];
    if (r21 != 0x4) goto loc_1006ac704;

loc_1006ac4d8:
    objc_storeStrong((int64_t *)&var_168->_placement, var_150);
    [var_160 preShow];
    r19 = [[r24 name] retain];
    [var_160 showInterstitialWithViewController:var_128 placement:r19];
    [r19 release];
    r19 = [[var_160 instanceId] retain];
    [var_168 setWasLoadCalled:r19 wasCalled:0x0];
    [r19 release];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    [r0 incrementShowCounterIS:r24];
    [r0 release];
    r20 = [[r24 name] retain];
    r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [var_168 sendProviderEvent:var_160 eventId:0x17 data:r21];
    [r21 release];
    [r20 release];
    r20 = [[r24 name] retain];
    r26 = var_158;
    r21 = [[var_168 getWaterfallPosition:r26] retain];
    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [var_168 sendProviderEvent:var_160 eventId:0xdb data:r22];
    [r22 release];
    [r21 release];
    r0 = r20;
    r20 = var_160;
    r19 = var_128;
    [r0 release];
    r27 = r24;
    goto loc_1006ac9cc;

loc_1006ac704:
    [@"" retain];
    r24 = @selector(name);
    if (r21 == 0x1) goto loc_1006ac778;

loc_1006ac720:
    r27 = var_120;
    r23 = var_158;
    if (r21 == 0x3) goto loc_1006ac7dc;

loc_1006ac734:
    r25 = @"";
    if (r21 != 0x2) goto loc_1006ac830;

loc_1006ac73c:
    r21 = [objc_msgSend(r27, r24) retain];
    r0 = [NSString stringWithFormat:@"Interstitial Show Fail - Placement %@ has reached its capping limit"];
    r29 = r29;
    goto loc_1006ac814;

loc_1006ac814:
    r25 = [r0 retain];
    [@"" release];
    [r21 release];
    goto loc_1006ac830;

loc_1006ac830:
    r22 = [[ISError createError:0x20c withMessage:r25] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r25 level:0x1 tag:0x0];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r22 instanceId:r23];
    [r0 release];
    [objc_msgSend(r27, r24) retain];
    [@(0x1) retain];
    [@(0x20c) retain];
    [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    objc_msgSend(var_168, r26);
    r26 = var_158;
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    [r25 release];
    r19 = var_128;
    goto loc_1006ac9c8;

loc_1006ac7dc:
    r21 = [objc_msgSend(r27, r24) retain];
    r0 = [NSString stringWithFormat:@"Interstitial Show Fail - Placement %@ has reached its limit as defined per pace"];
    r29 = r29;
    goto loc_1006ac814;

loc_1006ac778:
    r27 = var_120;
    r21 = [objc_msgSend(r27, r24) retain];
    r0 = [NSString stringWithFormat:@"Interstitial Show Fail - Placement %@ is capped by disabled delivery"];
    r29 = r29;
    r25 = [r0 retain];
    [@"" release];
    [r21 release];
    r23 = var_158;
    goto loc_1006ac830;

loc_1006ac484:
    [r21 release];
    goto loc_1006ac494;

loc_1006ac2f4:
    r26 = r21;
    r21 = [[NSString stringWithFormat:@"showInterstitialWithViewController: %@ - No ads to show"] retain];
    r19 = [[ISError createError:0x1fd withMessage:r21] retain];
    [r21 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r19 level:0x3 tag:0x0];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r19 instanceId:r26];
    [r0 release];
    r27 = r23;
    [[r27 name] retain];
    [@(0x1fd) retain];
    [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r24 sendMediationEvent:r2 data:r3];
    [r25 release];
    [r22 release];
    [r21 release];
    [r19 release];
    goto loc_1006ac47c;

loc_1006ac47c:
    r19 = var_128;
    goto loc_1006ac9cc;

loc_1006ac158:
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    r23 = r24;
    r24 = r21;
    r22 = [[NSString stringWithFormat:@"showInterstitialWithViewController: %@ - The requested instance does not exist"] retain];
    [r0 log:r22 level:0x3 tag:0x0];
    [r22 release];
    [r0 release];
    r19 = [[ISError createError:0x20f withMessage:@"The requested instance does not exist"] retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r19 instanceId:r24];
    [r0 release];
    r21 = [[var_120 name] retain];
    r22 = [@(0x20f) retain];
    r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x78 forKeys:r29 - 0x88 count:0x2] retain];
    [r23 sendMediationEvent:0x1d data:r25];
    [r25 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r27 = var_120;
    r26 = r24;
    goto loc_1006ac47c;
}

-(void *)getWaterfallPosition:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_instanceIdToWaterfallPos)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[*(self + r22) objectForKeyedSubscript:r19] retain];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)addWaterfallPosition:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_instanceIdToWaterfallPos)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = *(self + r24);
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    r22 = [[NSNumber numberWithInteger:r22] retain];
    [*(self + r24) setObject:r22 forKeyedSubscript:r19];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)setWasLoadCalled:(void *)arg2 wasCalled:(bool)arg3 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_wasLoadCalled)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r22 = [[NSNumber numberWithBool:arg3] retain];
    [*(self + r23) setObject:r22 forKeyedSubscript:r19];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(bool)getWasLoadCalled:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_wasLoadCalled)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = *(self + r22);
    r0 = [r0 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    [r0 boolValue];
    [r0 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_wasLoadCalled, 0x0);
    objc_storeStrong((int64_t *)&self->_instancesToLoad, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    objc_storeStrong((int64_t *)&self->_instanceIdToWaterfallPos, 0x0);
    objc_storeStrong((int64_t *)&self->_smashDic, 0x0);
    return;
}

@end