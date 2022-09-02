@implementation GADMAdapterIronSourceRewardedAd

-(void *)initWithGADMediationRewardedAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_adConfiguration, r19);
            objc_storeStrong((int64_t *)&r21->_instanceID, @"0");
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)presentFromViewController:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [ISMediationManager sharedManager];
    r0 = [r0 retain];
    [r0 presentRewardedAdFromViewController:r22 delegate:self];
    [r22 release];
    [r0 release];
    return;
}

-(void)requestRewardedAd {
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
    r0 = [self adConfiguration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r20 = [[r0 settings] retain];
    [r0 release];
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_adConfiguration);
    [r19 setIsLogEnabled:[r0 isTestRequest]];
    [r0 release];
    r21 = @"";
    [r21 retain];
    r0 = [r20 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            [@"" release];
    }
    if ([GADMAdapterIronSourceUtils isEmpty:r21] != 0x0) {
            [r19 onLog:@"Fail to setup, 'appKey' parameter is missing"];
            r22 = [[GADMAdapterIronSourceUtils createErrorWith:@"IronSource Adapter failed to setUp" andReason:@"'appKey' parameter is missing" andSuggestion:@"Make sure that 'appKey' server parameter is added"] retain];
            r0 = r19->_adLoadCompletionHandler;
            [[(*(r0 + 0x10))(r0, 0x0, r22) retain] release];
    }
    else {
            r22 = [[ISMediationManager sharedManager] retain];
            r23 = [[NSSet setWithObject:@"rewardedvideo"] retain];
            [r22 initIronSourceSDKWithAppKey:r21 forAdUnits:r23];
            [r23 release];
            [r19 parseCredentials];
            [r22 requestRewardedAdWithDelegate:r19];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)parseCredentials {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_adConfiguration);
    r21 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r20 = [[r0 settings] retain];
    [r0 release];
    [r21 release];
    r0 = [r20 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_instanceID));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    return;
}

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[arg2 description] retain];
    r23 = [[NSString stringWithFormat:@"IronSource rewardedVideo did fail to show with error: %@, for Instance ID: %@"] retain];
    [r20 release];
    [r21 release];
    [self onLog:r23];
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didFailToPresentWithError:r19];
    [r19 release];
    [r0 release];
    [r23 release];
    return;
}

-(void)rewardedVideoDidOpen:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"IronSource RewardedVideo did open for Instance ID: %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didStartVideo];
    [r0 willPresentFullScreenView];
    [r0 release];
    return;
}

-(void)didReceiveRewardForPlacement:(void *)arg2 instanceId:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r22 = [[r19 rewardName] retain];
            r0 = [r19 rewardAmount];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [GADAdReward alloc];
            if (r23 != 0x0) {
                    [r23 decimalValue];
            }
            r25 = [[NSDecimalNumber decimalNumberWithDecimal:&var_58] retain];
            r24 = [r24 initWithRewardType:r22 rewardAmount:r25];
            [r25 release];
            r0 = objc_loadWeakRetained((int64_t *)&r21->_adEventDelegate);
            [r0 didEndVideo];
            [r0 didRewardUserWithReward:r24];
            r26 = [[NSString stringWithFormat:@"IronSource received reward for placement %@ ,for Instance ID: %@"] retain];
            [r21 onLog:r26];
            [r26 release];
            [r0 release];
            [r23 release];
            [r22 release];
            [r24 release];
    }
    else {
            [r21 onLog:@"IronSource received reward for placement - without placement info"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidClose:(void *)arg2 {
    r20 = [[NSString stringWithFormat:@"IronSource RewardedVideo did close for Instance ID: %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 didDismissFullScreenView];
    [r0 release];
    return;
}

-(void *)getInstanceID {
    r0 = self->_instanceID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)didClickRewardedVideo:(void *)arg2 instanceId:(void *)arg3 {
    r20 = [[NSString stringWithFormat:@"Did click IronSource RewardedVideo for Instance ID: %@"] retain];
    [self onLog:r20];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 reportClick];
    [r0 release];
    return;
}

-(void)onLog:(void *)arg2 {
    r2 = arg2;
    r1 = _cmd;
    if (*(int8_t *)(int64_t *)&self->_isLogEnabled != 0x0) {
            NSLog(@"IronSourceAdapter: %@", r1);
    }
    return;
}

-(void)didFailToLoadAdWithError:(void *)arg2 {
    r0 = self->_adLoadCompletionHandler;
    [[(*(r0 + 0x10))(r0, 0x0, arg2) retain] release];
    return;
}

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 instanceId:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (arg2 != 0x0) {
            r20 = [[NSString stringWithFormat:r2] retain];
            [r19 onLog:r20];
            [r20 release];
            r0 = r19->_adLoadCompletionHandler;
            r20 = [(*(r0 + 0x10))(r0, r19, 0x0) retain];
            objc_storeWeak((int64_t *)&r19->_adEventDelegate, r20);
    }
    else {
            r21 = [[NSString stringWithFormat:@"Rewarded Ad not available for Instance ID: %@"] retain];
            r20 = [[GADMAdapterIronSourceUtils createErrorWith:r21 andReason:@"No Ad available" andSuggestion:0x0] retain];
            [r21 release];
            r0 = r19->_adLoadCompletionHandler;
            [[(*(r0 + 0x10))(r0, 0x0, r20) retain] release];
    }
    [r20 release];
    return;
}

-(void *)adLoadCompletionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler)), 0x0);
    return r0;
}

-(void)setAdLoadCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adConfiguration {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adConfiguration);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adConfiguration, arg2);
    return;
}

-(void)setIsLogEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLogEnabled = arg2;
    return;
}

-(void)setAdEventDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adEventDelegate, arg2);
    return;
}

-(bool)isLogEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isLogEnabled;
    return r0;
}

-(void)setInstanceID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_instanceID, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instanceID, 0x0);
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_destroyWeak((int64_t *)&self->_adConfiguration);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    return;
}

-(void *)instanceID {
    r0 = self->_instanceID;
    return r0;
}

@end