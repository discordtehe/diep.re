@implementation ISRewardedVideoSMASH

-(void *)initWithAdapterConfig:(void *)arg2 {
    r0 = [[&var_10 super] initWithAdapterConfig:arg2];
    return r0;
}

-(void)completeIteration {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] completeIteration];
    if ([r19 hasAvailableAds] == 0x0) {
            asm { cinc       x2, x8, eq };
    }
    [r19 setMediationState:r2];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [[self adapter] retain];
    r22 = [[self adapterConfig] retain];
    [r21 showRewardedVideoWithViewController:r20 adapterConfig:r22 activeDelegate:self];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)initRVWithUserId:(void *)arg2 {
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
    r0 = [r20 adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(initRVWithUserId:adapterConfig:delegate:), r3, r4];
    [r0 release];
    if ((r24 & 0x1) != 0x0) {
            [r20 setMediationState:r2];
            r0 = [r20 adapter];
            r0 = [r0 retain];
            [r0 setUserId:r19];
            [r0 release];
            [r20 startLoadTimerForSelector:@selector(onRewardedVideoTick:)];
            r22 = [[r20 adapter] retain];
            r23 = [[r20 adapterConfig] retain];
            [r22 initRVWithUserId:r19 adapterConfig:r23 delegate:r20];
            [r23 release];
            [r22 release];
    }
    else {
            [r20 setMediationState:r2];
    }
    [r19 release];
    return;
}

-(bool)hasAvailableAds {
    r20 = [[self adapter] retain];
    r19 = [[self adapterConfig] retain];
    r21 = [r20 hasAvailableAdsForAdapterConfig:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)fetchVideo {
    r20 = [[self adapter] retain];
    r21 = [[self adapterConfig] retain];
    [r20 fetchRewardedVideoWithAdapterConfig:r21 delegate:self];
    [r21 release];
    [r20 release];
    return;
}

-(void)adapterRewardedVideoHasChangedAvailability:(bool)arg2 {
    r31 = r31 - 0xc0;
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
    r21 = arg2;
    r20 = self;
    if ([r20 mediationState] != 0x9 && [self mediationState] != 0x6 && [r20 mediationState] != 0x5) {
            [r20 stopTimer];
            r0 = [r20 adapterConfig];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 providerName];
            r29 = r29;
            r27 = [r0 retain];
            r8 = @"false";
            if (r21 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"false";
                    }
                    else {
                            r8 = @"true";
                    }
            }
            if (CPU_FLAGS & E) {
                    asm { cinc       x28, x8, eq };
            }
            r24 = [[NSString stringWithFormat:r2] retain];
            [r27 release];
            [r22 release];
            r0 = [ISLoggerManager sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            var_88 = r24;
            [r0 log:r2 level:r3 tag:r4];
            [r19 release];
            if (r28 == [r20 mediationState]) {
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:r2 level:r3 tag:r4];
                    [r19 release];
                    r22 = var_88;
            }
            else {
                    [r20 setMediationState:r28];
                    if (([r20 isMediationAvailable] & 0x1) != 0x0) {
                            r0 = [r20 rvDelegate];
                            r29 = r29;
                            r22 = [r0 retain];
                            if (r22 != 0x0) {
                                    r0 = [r20 rvDelegate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 respondsToSelector:@selector(rewardedVideoHasChangedAvailability:forSMASH:), 0x0];
                                    [r0 release];
                                    [r22 release];
                                    r22 = var_88;
                                    if (r23 != 0x0) {
                                            r19 = [[NSBlockOperation blockOperationWithBlock:&var_80] retain];
                                            r0 = [r20 delegateQueue];
                                            r0 = [r0 retain];
                                            [r0 addOperation:r19];
                                            [r0 release];
                                            [r19 release];
                                    }
                            }
                            else {
                                    r22 = var_88;
                            }
                    }
                    else {
                            r26 = @selector(stringWithFormat:);
                            r0 = [r20 adapterConfig];
                            r0 = [r0 retain];
                            r21 = [[r0 providerName] retain];
                            [objc_msgSend(@class(NSString), r26) retain];
                            [var_88 release];
                            [r21 release];
                            [r0 release];
                            r0 = @class(ISLoggerManager);
                            r0 = [r0 sharedInstance];
                            r0 = [r0 retain];
                            [r0 log:r2 level:r3 tag:r4];
                            [r20 release];
                            r22 = r19;
                    }
            }
            [r22 release];
    }
    return;
}

-(void)adapterRewardedVideoDidReceiveReward {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdRewarded"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(didReceiveRewardForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)adapterRewardedVideoDidFailToShowWithError:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = [r20 adapterConfig];
    r0 = [r0 retain];
    r23 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdFailedWithError: %@"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r20 rvDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r20 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(rewardedVideoDidFailToShowWithError:forSMASH:), 0x0];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    var_38 = [r19 retain];
                    r22 = [[NSBlockOperation blockOperationWithBlock:&var_60] retain];
                    r0 = [r20 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r22];
                    [r0 release];
                    [r22 release];
                    [var_38 release];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)adapterRewardedVideoDidOpen {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdOpened"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(rewardedVideoDidOpenForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)adapterRewardedVideoDidClose {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdClosed"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(rewardedVideoDidCloseForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)adapterRewardedVideoDidStart {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdStarted"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(rewardedVideoDidStartForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)adapterRewardedVideoDidEnd {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdEnded"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(rewardedVideoDidEndForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)adapterRewardedVideoDidClick {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdClicked"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(didClickRewardedVideoForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)adapterRewardedVideoDidBecomeVisible {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@ adapter: rvReportAdVisible"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 rvDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 rvDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(rewardedVideoDidBecomeVisibileForSMASH:)];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
                    r0 = [r19 delegateQueue];
                    r0 = [r0 retain];
                    [r0 addOperation:r21];
                    [r0 release];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)startRewardedVideoTimerWithTimeout:(unsigned long long)arg2 {
    r2 = arg2;
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (r2 != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_50);
    }
    else {
            r19 = [[r20 logger] retain];
            r0 = [r20 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r21 = [[NSString stringWithFormat:@"adapter timeout for %@ is not set, ignoring"] retain];
            [r19 log:r21];
            [r21 release];
            [r22 release];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void *)rvDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rvDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adUnitString {
    objc_retainAutorelease(@"rewardedvideo");
    return @"rewardedvideo";
}

-(void)onRewardedVideoTick:(void *)arg2 {
    [self stopTimer];
    r20 = [self hasAvailableAds];
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r23 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@: Rewarded Video Timer ticked - no ad availability"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x0 tag:0x6];
    [r0 release];
    [self adapterRewardedVideoHasChangedAvailability:r20];
    [r21 release];
    return;
}

-(void)setRvDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rvDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_rvDelegate);
    return;
}

@end