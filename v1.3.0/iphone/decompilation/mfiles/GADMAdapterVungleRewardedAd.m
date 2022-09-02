@implementation GADMAdapterVungleRewardedAd

-(void *)initWithAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xe0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&saved_fp - 0x40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setAdConfiguration:r19];
            var_70 = [r20 copy];
            [r21 setAdLoadCompletionHandler:&var_C8];
            _Block_object_dispose(&var_98, 0x8);
            [var_70 release];
            _Block_object_dispose(&var_68, 0x8);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)loadRewardedAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [VungleRouter sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 loadAd:r20->desiredPlacement withDelegate:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [r20 adLoadCompletionHandler];
            r0 = [r0 retain];
            [[(*(r0 + 0x10))() retain] release];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)initialized:(bool)arg2 error:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    if (arg2 != 0x0) {
            [r20 loadRewardedAd];
    }
    else {
            r0 = [r20 adLoadCompletionHandler];
            r0 = [r0 retain];
            [[(*(r0 + 0x10))() retain] release];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)presentFromViewController:(void *)arg2 {
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
    *(int8_t *)0x1011e5f88 = 0x1;
    r22 = [arg2 retain];
    r20 = [[VungleRouter sharedInstance] retain];
    r0 = [r19 adConfiguration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 extras];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r24 = [r20 playAd:r22 delegate:r19 extras:r23];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    if ((r24 & 0x1) == 0x0) {
            r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
            r20 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r21] retain];
            [r21 release];
            r0 = [r19 adLoadCompletionHandler];
            r0 = [r0 retain];
            [[(*(r0 + 0x10))() retain] release];
            [r0 release];
            [r19 setAdLoadCompletionHandler:0x0];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)requestRewardedAd {
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
    r19 = self;
    r0 = [self adConfiguration];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 settings] retain];
    r0 = [r19 adConfiguration];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 extras] retain];
    r0 = [GADMAdapterVungleUtils findPlacement:r26 networkExtras:r28];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(desiredPlacement));
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [r20 release];
    if (*(r19 + r25) == 0x0) goto loc_10067e8ac;

loc_10067e868:
    r0 = [VungleSDK sharedSDK];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isInitialized] & 0x1) == 0x0) goto loc_10067e96c;

loc_10067e898:
    [r19 loadRewardedAd];
    goto loc_10067eaf8;

loc_10067eaf8:
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10067e96c:
    r0 = [r19 adConfiguration];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 settings] retain];
    r0 = [GADMAdapterVungleUtils findAppID:r23];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    [r25 release];
    if (r21 != 0x0) {
            r0 = [VungleRouter sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            [r0 initWithAppId:r21 delegate:r19];
    }
    else {
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            r22 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r23] retain];
            [r23 release];
            r0 = [r19 adLoadCompletionHandler];
            r0 = [r0 retain];
            [[(*(r0 + 0x10))() retain] release];
            [r0 release];
    }
    [r22 release];
    r0 = r21;
    goto loc_10067eaf4;

loc_10067eaf4:
    [r0 release];
    goto loc_10067eaf8;

loc_10067e8ac:
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"com.google.mediation.vungle" code:0x0 userInfo:r21] retain];
    [r21 release];
    r0 = [r19 adLoadCompletionHandler];
    r0 = [r0 retain];
    [[(*(r0 + 0x10))() retain] release];
    r0 = r0;
    goto loc_10067eaf4;
}

-(void)willShowAd {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 willPresentFullScreenView];
    [r0 reportImpression];
    [r0 didStartVideo];
    [r0 release];
    return;
}

-(void)adAvailable {
    r0 = self;
    if (*(int8_t *)byte_1011e5f88 == 0x0) {
            r19 = r0;
            r0 = [r0 adLoadCompletionHandler];
            r0 = [r0 retain];
            r21 = [(*(r0 + 0x10))() retain];
            [r19 setDelegate:r21];
            [r21 release];
            [r0 release];
    }
    return;
}

-(void)didCloseAd:(bool)arg2 didDownload:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (arg2 != 0x0) {
            [r20 didEndVideo];
            r22 = [GADAdReward alloc];
            r23 = [[NSDecimalNumber decimalNumberWithString:@"1"] retain];
            r22 = [r22 initWithRewardType:@"vungle" rewardAmount:r23];
            [r23 release];
            [r20 didRewardUserWithReward:r22];
            [r22 release];
    }
    if (r21 != 0x0) {
            [r20 reportClick];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(desiredPlacement));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    [r20 didDismissFullScreenView];
    [r20 release];
    return;
}

-(void)willCloseAd:(bool)arg2 didDownload:(bool)arg3 {
    *(int8_t *)0x1011e5f88 = 0x0;
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 willDismissFullScreenView];
    [r0 release];
    return;
}

-(void)adNotAvailable:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adLoadCompletionHandler];
    r0 = [r0 retain];
    r20 = [(*(r0 + 0x10))() retain];
    [r21 release];
    [r20 release];
    [r0 release];
    return;
}

-(void *)adConfiguration {
    r0 = self->_adConfiguration;
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adConfiguration, arg2);
    return;
}

-(void *)desiredPlacement {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(desiredPlacement)), 0x1);
    return r0;
}

-(void *)adLoadCompletionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler)), 0x0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setAdLoadCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->desiredPlacement, 0x0);
    return;
}

@end