@implementation GADMediationRewardBasedVideoAdRenderer

-(void)failedToSetUpWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = self->_renderCompletionHandler;
    [arg2 retain];
    r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
    (*(r19 + 0x10))(r19, 0x0, [r0 retain], 0x0);
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)receivedRewardBasedVideoAdWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r20 = [arg2 retain];
    r19 = objc_loadWeakRetained((int64_t *)&r21->_rewardBasedVideoAd);
    if (r19 != 0x0) {
            sub_1008833e8(*0x100e9c020, r19, 0x0);
    }
    var_28 = **___stack_chk_guard;
    r21 = r21->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
    (*(r21 + 0x10))(r21, 0x0, [r0 retain], 0x0);
    [r20 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void *)targeting {
    r0 = self->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r20 = [[r0 targeting] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_connector));
    r20 = *(r19 + r21);
    [GADMRewardBasedVideoAdNetworkConnector class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            [*(r19 + r21) stopBeingDelegate];
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)receivedRewardBasedVideoAdFromConnector:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_connector));
            if (*(r20 + r26) != r19) {
                    [[r19 adapterName] retain];
                    sub_1007ce06c(0x0, @"No ad was requested from the connector: %@.");
                    [r21 release];
                    [sub_1008098f8(0x2, @"Mediation error.") retain];
                    r20 = r20->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
                    (*(r20 + 0x10))(r20, 0x0, [r0 retain], 0x0);
                    [r22 release];
                    r0 = r21;
            }
            else {
                    r21 = [GADEventContext alloc];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_transaction));
                    r0 = *(r20 + r8);
                    r0 = [r0 serverRequest];
                    r0 = [r0 retain];
                    r25 = [[r0 context] retain];
                    r21 = [r21 initWithParent:r25 component:*0x100e97468];
                    var_70 = r21;
                    [r25 release];
                    [r0 release];
                    r22 = [GADAdMetadata alloc];
                    r25 = [[*(r20 + r26) adapterName] retain];
                    r22 = [r22 initWithAdNetworkClassName:r25];
                    var_78 = r22;
                    [r25 release];
                    objc_storeWeak((int64_t *)&r20->_rewardBasedVideoAd, [[GADInterstitialAd alloc] initWithContext:r21 adController:*(r20 + r26) metadata:r22]);
                    [*(r20 + r26) setRewardBasedVideoAd:r23];
                    [r23 addMonitor:r20];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
                    [GADVideoPingMonitor addMonitorToAd:r23 adConfiguration:*(r20 + r21)];
                    sub_100849730(r23, *0x100e99638, *(r20 + r21));
                    r27 = *(r20 + r21);
                    r0 = *(r20 + r8);
                    r0 = [r0 serverRequest];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 targeting];
                    r0 = [r0 retain];
                    r26 = r0;
                    r28 = [[r0 userIdentifier] retain];
                    r0 = *(r20 + r8);
                    r0 = [r0 serverRequest];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 targeting];
                    r0 = [r0 retain];
                    r21 = r0;
                    r22 = [[r0 customRewardString] retain];
                    r0 = sub_100865f18(r27, r28, r22);
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardGrantedUserInfo));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r22 release];
                    [r21 release];
                    [r24 release];
                    [r28 release];
                    [r26 release];
                    [r25 release];
                    r20 = r20->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_68 count:0x1];
                    (*(r20 + 0x10))(r20, [r0 retain], 0x0, 0x0);
                    [r21 release];
                    [r23 release];
                    [var_78 release];
                    r0 = var_70;
            }
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r0 = [arg4 retain];
    r21 = r0;
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r22->_transaction, arg2);
    objc_storeStrong((int64_t *)&r22->_adConfiguration, arg3);
    r0 = sub_1008b6508(r20, @protocol(GADMRewardBasedVideoAdNetworkAdapter), @selector(requestRewardBasedVideoAd));
    if (r0 == 0x0) {
            r0 = sub_1008b6508(r20, @protocol(GADMediationAdapter), @selector(loadRewardedAdForAdConfiguration:completionHandler:));
            if (r0 != 0x0) {
                    var_58 = [r22 retain];
                    var_50 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_78);
                    [var_50 release];
                    r0 = var_58;
            }
            else {
                    [sub_100809600(0x8, 0x0) retain];
                    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
                    (*(r21 + 0x10))(r21, 0x0, [r0 retain], 0x0);
                    [r23 release];
                    r0 = r22;
            }
    }
    else {
            var_58 = [r22 retain];
            var_50 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_78);
            [var_50 release];
            r0 = var_58;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)rewardGrantedUserInfo {
    r0 = self->_rewardGrantedUserInfo;
    return r0;
}

-(void *)shouldRenderTestAdLabel {
    r0 = self->_shouldRenderTestAdLabel;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_shouldRenderTestAdLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardGrantedUserInfo, 0x0);
    objc_destroyWeak((int64_t *)&self->_rewardBasedVideoAd);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_connector, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_transaction, 0x0);
    return;
}

@end