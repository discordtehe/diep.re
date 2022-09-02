@implementation GADMAdapterAdColonyRewardedAd

-(void)renderRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    [self setLoadCompletionHandler:arg3];
    r22 = [r21 retain];
    [GADMAdapterAdColonyHelper setupZoneFromAdConfig:r21 callback:&var_50];
    [r21 release];
    [r22 release];
    return;
}

-(void)getRewardedAdFromZoneId:(void *)arg2 withAdConfig:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    [self setRewardedAd:0x0];
    [self setZoneID:r21];
    objc_initWeak(&saved_fp - 0x58, self);
    [[GADMAdapterAdColonyHelper getAdOptionsFromAdConfig:r22] retain];
    objc_copyWeak(&var_90 + 0x30, &saved_fp - 0x58);
    [r22 retain];
    [r21 retain];
    objc_copyWeak(&var_B8 + 0x20, &saved_fp - 0x58);
    [AdColony requestInterstitialInZone:r21 options:r20 success:&var_90 failure:&var_B8];
    objc_destroyWeak(&var_B8 + 0x20);
    [r21 release];
    [r22 release];
    objc_destroyWeak(&var_90 + 0x30);
    [r20 release];
    objc_destroyWeak(&saved_fp - 0x58);
    [r22 release];
    [r21 release];
    return;
}

-(void)handleAdReceived:(void *)arg2 forAdConfig:(void *)arg3 zone:(void *)arg4 {
    r31 = r31 - 0xc0;
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
    r23 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = [[r19 zoneID] retain];
    r0 = [AdColony zoneForID:r24];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r24 release];
    if ([r20 rewarded] != 0x0) {
            [r23 setRewardedAd:r19];
            r24 = [[r23 loadCompletionHandler] retain];
            r25 = [(*(r24 + 0x10))() retain];
            [r23 setAdEventDelegate:r25];
    }
    else {
            NSLog(@"AdColonyAdapter [**Error**] : %@", @selector(rewarded));
            r26 = [[NSDictionary dictionaryWithObjects:r29 - 0x50 forKeys:&var_58 count:0x1] retain];
            r24 = [[NSError errorWithDomain:*0x100e92df8 code:0x0 userInfo:r26] retain];
            [r26 release];
            r25 = [[r23 loadCompletionHandler] retain];
            [[(*(r25 + 0x10))() retain] release];
    }
    var_48 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    objc_initWeak(&stack[-112], r19);
    objc_initWeak(&stack[-120], r23);
    objc_copyWeak(&var_A8 + 0x30, &stack[-112]);
    [r22 retain];
    objc_copyWeak(&var_A8 + 0x38, &stack[-120]);
    r21 = [r21 retain];
    [r19 setExpire:&var_A8];
    [r21 release];
    objc_destroyWeak(&var_A8 + 0x38);
    [r22 release];
    objc_destroyWeak(&var_A8 + 0x30);
    objc_destroyWeak(&stack[-120]);
    objc_destroyWeak(&stack[-112]);
    [r20 release];
    [r21 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)presentFromViewController:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r22 = self;
    r20 = [arg2 retain];
    objc_initWeak(&saved_fp - 0x80, r22);
    [[r22 rewardedAd] retain];
    var_128 = &var_A8 + 0x20;
    objc_copyWeak(&var_A8 + 0x20, &saved_fp - 0x80);
    [r21 setOpen:&var_A8];
    [r21 release];
    r0 = [r22 rewardedAd];
    r21 = &var_D0 + 0x20;
    [r0 retain];
    objc_copyWeak(r21, &saved_fp - 0x80);
    [r23 setClick:&var_D0];
    [r23 release];
    r0 = [r22 rewardedAd];
    r23 = &var_F8 + 0x20;
    [r0 retain];
    objc_copyWeak(r23, &saved_fp - 0x80);
    [r25 setClose:&var_F8];
    [r25 release];
    r0 = [r22 rewardedAd];
    r0 = [r0 retain];
    r28 = [[r0 zoneID] retain];
    r26 = [[AdColony zoneForID:r28] retain];
    [r28 release];
    [r0 release];
    r25 = &var_120 + 0x20;
    objc_copyWeak(r25, &saved_fp - 0x80);
    [r26 setReward:&var_120];
    r0 = [r22 rewardedAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r2 = r20;
    r28 = [r0 showWithPresentingViewController:r2];
    [r0 release];
    if ((r28 & 0x1) == 0x0) {
            [@"Failed to show ad for zone" retain];
            [[r22 zoneID] retain];
            NSLog(@"AdColonyAdapter [Info] : %@, %@.", @selector(showWithPresentingViewController:), r2);
            [r27 release];
            r28 = [[NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1] retain];
            r0 = [NSError errorWithDomain:@"GADMAdapterAdColonyRewardedAd" code:0x0 userInfo:r28];
            r29 = r29;
            r24 = [r0 retain];
            [r28 release];
            r0 = [r22 adEventDelegate];
            r0 = [r0 retain];
            [r0 didFailToPresentWithError:r24];
            [r0 release];
            [r24 release];
            [@"Failed to show ad for zone" release];
    }
    var_68 = **___stack_chk_guard;
    objc_destroyWeak(r25);
    [r26 release];
    objc_destroyWeak(r23);
    objc_destroyWeak(r21);
    objc_destroyWeak(var_128);
    objc_destroyWeak(r29 - 0x80);
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)loadCompletionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_loadCompletionHandler)), 0x0);
    return r0;
}

-(void)setLoadCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)rewardedAd {
    r0 = self->_rewardedAd;
    return r0;
}

-(void)setRewardedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAd, arg2);
    return;
}

-(void *)adEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdEventDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adEventDelegate, arg2);
    return;
}

-(void *)zoneID {
    r0 = self->_zoneID;
    return r0;
}

-(void)setZoneID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zoneID, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_zoneID, 0x0);
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    objc_storeStrong((int64_t *)&self->_loadCompletionHandler, 0x0);
    return;
}

@end