@implementation ISInterstitialSMASH

-(void *)initWithAdapterConfig:(void *)arg2 {
    r0 = [[&var_10 super] initWithAdapterConfig:arg2];
    return r0;
}

-(void)completeIteration {
    [[&var_20 super] completeIteration];
    [self setMediationState:0x2];
    return;
}

-(void)initISWithUserId:(void *)arg2 {
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
    r24 = [r0 respondsToSelector:@selector(initISWithUserId:adapterConfig:delegate:), r3, r4];
    [r0 release];
    if ((r24 & 0x1) != 0x0) {
            [r20 setMediationState:r2];
            r0 = [r20 adapter];
            r0 = [r0 retain];
            [r0 setUserId:r19];
            [r0 release];
            [r20 startInitTimerForSelector:@selector(onInterstitialInitTick:)];
            r22 = [[r20 adapter] retain];
            r23 = [[r20 adapterConfig] retain];
            [r22 initISWithUserId:r19 adapterConfig:r23 delegate:r20];
            [r23 release];
            [r22 release];
    }
    else {
            [r20 setMediationState:r2];
    }
    [r19 release];
    return;
}

-(void)loadInterstitial {
    [self setMediationState:0x8];
    [self startLoadTimerForSelector:@selector(onInterstitialLoadTick:)];
    r20 = [[self adapter] retain];
    r21 = [[self adapterConfig] retain];
    [r20 loadInterstitialWithAdapterConfig:r21 activeDelegate:self];
    [r21 release];
    [r20 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 {
    r20 = [arg2 retain];
    r21 = [[self adapter] retain];
    r22 = [[self adapterConfig] retain];
    [r21 showInterstitialWithViewController:r20 adapterConfig:r22 activeDelegate:self];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(bool)hasInterstitial {
    r20 = [[self adapter] retain];
    r19 = [[self adapterConfig] retain];
    r21 = [r20 hasInterstitialWithAdapterConfig:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)adapterInterstitialInitSuccess {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self mediationState] == 0x7) {
            [r19 stopInitTimer];
            [r19 setMediationState:0x2];
            r0 = [r19 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r20 = [[NSString stringWithFormat:@"%@ adapter: isReportInitSuccess"] retain];
            [r22 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x0 tag:0x3];
            [r0 release];
            r0 = (int64_t *)&r19->_initISOnceToken;
            if (*r0 != -0x1) {
                    dispatch_once(r0, &var_48);
            }
            [r20 release];
    }
    return;
}

-(void)adapterInterstitialInitFailedWithError:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    if ([r20 mediationState] == 0x7) {
            [r20 stopInitTimer];
            [r20 setMediationState:0x1];
            r0 = [r20 adapterConfig];
            r0 = [r0 retain];
            r23 = [[r0 providerName] retain];
            r21 = [[NSString stringWithFormat:@"%@ adapter: isReportInitFailedWithError: %@"] retain];
            [r23 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x0 tag:0x3];
            [r0 release];
            r22 = (int64_t *)&r20->_initISOnceToken;
            r0 = [r19 retain];
            var_38 = r0;
            if (*r22 != -0x1) {
                    dispatch_once(r22, &var_60);
                    r0 = var_38;
            }
            [r0 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)adapterInterstitialDidLoad {
    r31 = r31 - 0x70;
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
    if ([self mediationState] == 0x8) {
            [r19 stopTimer];
            [r19 setMediationState:0x3];
            r0 = [r19 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r20 = [[NSString stringWithFormat:@"%@ adapter: isReportAdReady"] retain];
            [r22 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x0 tag:0x3];
            [r0 release];
            r0 = [r19 isDelegate];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r19 isDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 respondsToSelector:@selector(interstitialDidLoadForSMASH:)];
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
    }
    return;
}

-(void)adapterInterstitialDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    if ([r20 mediationState] == 0x8) {
            [r20 stopTimer];
            [r20 setMediationState:0x4];
            r0 = [r20 adapterConfig];
            r0 = [r0 retain];
            r23 = [[r0 providerName] retain];
            r21 = [[NSString stringWithFormat:@"%@ adapter: isReportAdFailed"] retain];
            [r23 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x0 tag:0x3];
            [r0 release];
            r0 = [r20 isDelegate];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r20 isDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:@selector(interstitialDidFailToLoadWithError:forSMASH:), 0x0];
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
    }
    [r19 release];
    return;
}

-(void)adapterInterstitialDidOpen {
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
    r20 = [[NSString stringWithFormat:@"%@ adapter: isReportAdOpened"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 isDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 isDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(interstitialDidOpenForSMASH:)];
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

-(void)adapterInterstitialDidClose {
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
    r20 = [[NSString stringWithFormat:@"%@ adapter: isReportAdClosed"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 isDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 isDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(interstitialDidCloseForSMASH:)];
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

-(void)adapterInterstitialDidShow {
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
    r20 = [[NSString stringWithFormat:@"%@ adapter: isReportShowSuccess"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 isDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 isDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(interstitialDidShowForSMASH:)];
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

-(void)adapterInterstitialDidFailToShowWithError:(void *)arg2 {
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
    r21 = [[NSString stringWithFormat:@"%@ adapter: isReportShowFailedWithError: %@"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r20 isDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r20 isDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(interstitialDidFailToShowWithError:forSMASH:), 0x0];
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

-(void)adapterInterstitialDidClick {
    r31 = r31 - 0x60;
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
    r20 = [[NSString stringWithFormat:@"%@ adapter: isReportAdClicked"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 isDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(didClickInterstitialForSMASH:)];
    [r0 release];
    if (r22 != 0x0) {
            r21 = [[NSBlockOperation blockOperationWithBlock:&var_48] retain];
            r0 = [r19 delegateQueue];
            r0 = [r0 retain];
            [r0 addOperation:r21];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)adapterInterstitialDidBecomeVisible {
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
    r20 = [[NSString stringWithFormat:@"%@ adapter: isReportAdVisible"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 isDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 isDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(interstitialDidBecomeVisibleForSMASH:)];
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

-(void)adapterInterstitialDidReceiveReward {
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
    r20 = [[NSString stringWithFormat:@"%@ adapter: isReportAdRewarded"] retain];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x3];
    [r0 release];
    r0 = [r19 risDelegate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 risDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(didReceiveRewardForInterstitialForSMASH:)];
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

-(void)onInterstitialLoadTick:(void *)arg2 {
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
    [self stopTimer];
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@: Interstitial Timer load ticked - no ad availability"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x6];
    [r0 release];
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r23 = [[NSError errorWithDomain:r22 code:0x1fd userInfo:r24] retain];
    [r24 release];
    [r22 release];
    [r0 release];
    [self adapterInterstitialDidFailToLoadWithError:r23];
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adUnitString {
    objc_retainAutorelease(@"interstitial");
    return @"interstitial";
}

-(void *)isDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_isDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)onInterstitialInitTick:(void *)arg2 {
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
    [self stopTimer];
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"%@: Interstitial Timer init ticked - init failed"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x6];
    [r0 release];
    r0 = [self adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r23 = [[NSError errorWithDomain:r22 code:0x1fc userInfo:r24] retain];
    [r24 release];
    [r22 release];
    [r0 release];
    [self adapterInterstitialInitFailedWithError:r23];
    [r23 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setIsDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_isDelegate, arg2);
    return;
}

-(void *)risDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_risDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRisDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_risDelegate, arg2);
    return;
}

-(long long)initISOnceToken {
    r0 = self->_initISOnceToken;
    return r0;
}

-(void)setInitISOnceToken:(long long)arg2 {
    self->_initISOnceToken = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_risDelegate);
    objc_destroyWeak((int64_t *)&self->_isDelegate);
    return;
}

@end