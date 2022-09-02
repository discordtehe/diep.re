@implementation GADRewardedAd

-(void)updateTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    sub_1008c2bc8(r21);
    var_38 = r21;
    [r21 retain];
    var_30 = [self retain];
    var_28 = r19;
    [r19 retain];
    sub_100860a80();
    [var_28 release];
    [var_30 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    return;
}

-(void *)initWithAdUnitID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.rewarded-ad", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [GADAdSource alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [GADServerSideVerificationOptions alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serverSideVerificationOptions));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)loadRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    if ((sub_100818a24() & 0x1) != 0x0) {
            if (r19 == 0x0) {
                    r0 = [GADRequest request];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 release];
                    r19 = r22;
            }
            r22 = [[NSArray arrayWithObjects:r29 - 0x48 count:0x2] retain];
            [r19 setAdTypes:r22];
            [r22 release];
            r22 = [[GADTargeting alloc] initWithRequest:r19 adUnitID:r21->_adUnitID];
            r21 = [r21 retain];
            var_80 = r22;
            r22 = [r22 retain];
            var_78 = r20;
            r20 = [r20 retain];
            [r21 updateTargeting:r22 completionHandler:&var_A8];
            [var_78 release];
            [var_80 release];
            [r21 release];
            [r20 release];
            r0 = r22;
    }
    else {
            var_50 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [var_50 release];
            r0 = r20;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadWithTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x110;
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
    r29 = &saved_fp;
    r23 = self;
    r19 = [arg2 retain];
    [arg3 retain];
    objc_initWeak(r29 - 0x68, r23);
    r20 = &var_98 + 0x28;
    objc_copyWeak(r20, r29 - 0x68);
    r21 = [r21 retain];
    var_78 = r21;
    r0 = objc_retainBlock(&var_98);
    r22 = r0;
    if (*(int8_t *)(int64_t *)&r23->_hasBeenUsed != 0x0) {
            r0 = sub_100809600(0xe, 0x0);
            r29 = r29;
            r23 = [r0 retain];
            var_A8 = [r22 retain];
            var_A0 = r23;
            [r23 retain];
            dispatch_async(*__dispatch_main_q, &var_C8);
            [var_A0 release];
            [var_A8 release];
            [r23 release];
    }
    else {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
            if (*(int8_t *)(r23 + r26) != 0x0) {
                    NSLog(@"<Google> Ignoring request. Another request is already in progress.");
            }
            else {
                    objc_copyWeak(&var_F8 + 0x28, r29 - 0x68);
                    var_D8 = [r22 retain];
                    r0 = objc_retainBlock(&var_F8);
                    r25 = r0;
                    *(int8_t *)(r23 + r26) = 0x1;
                    r0 = [r23 adSource];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 loadAdsWithTargeting:r19 completionHandler:r25];
                    [r0 release];
                    [r25 release];
                    [var_D8 release];
                    objc_destroyWeak(&var_F8 + 0x28);
            }
    }
    [r22 release];
    [var_78 release];
    objc_destroyWeak(r20);
    objc_destroyWeak(r29 - 0x68);
    [r21 release];
    [r19 release];
    return;
}

-(void)presentFromRootViewController:(void *)arg2 delegate:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    var_38 = [self retain];
    var_30 = r19;
    [r19 retain];
    [r21 retain];
    sub_100860a80();
    [r21 release];
    [var_30 release];
    [var_38 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)adNetworkClassName {
    r0 = self->_rewardedAd;
    r0 = [r0 metadata];
    r0 = [r0 retain];
    r20 = [[r0 adNetworkClassName] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)adPresentationDidFailWithError:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(bool)isReady {
    r0 = self;
    if (r0->_rewardedAd != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)adSource {
    r0 = self->_adSource;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setRewardedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAd, arg2);
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 reward];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_reward));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [self attachRewardedCallbackObservers];
    [self attachLifecycleEventObservers];
    [r19 release];
    return;
}

-(void *)adMetadata {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setAdMetadata:(void *)arg2 {
    r20 = [arg2 copy];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)attachRewardedCallbackObservers {
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedObservers));
    r8 = *(self + r25);
    *(self + r25) = r0;
    [r8 release];
    objc_initWeak(&stack[-120], self);
    objc_copyWeak(&var_90 + 0x20, &stack[-120]);
    [r22 addObserverForName:*0x100e9c058 object:r24 queue:0x0 usingBlock:&var_90];
    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
    [r23 addObserverForName:*0x100e9c660 object:r20 queue:0x0 usingBlock:&var_B8];
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak(&var_90 + 0x20);
    objc_destroyWeak(&stack[-120]);
    return;
}

-(void)attachLifecycleEventObservers {
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_intermissionObservers));
    r8 = *(self + r26);
    *(self + r26) = r0;
    [r8 release];
    objc_initWeak(&saved_fp - 0x68, self);
    objc_copyWeak(&var_90 + 0x20, &saved_fp - 0x68);
    [r21 addObserverForName:*0x100e9c148 object:r24 queue:0x0 usingBlock:&var_90];
    objc_copyWeak(&var_B8 + 0x20, &saved_fp - 0x68);
    [r23 addObserverForName:*0x100e9c158 object:r25 queue:0x0 usingBlock:&var_B8];
    objc_copyWeak(&var_E0 + 0x20, &saved_fp - 0x68);
    [r24 addObserverForName:*0x100e9c160 object:r20 queue:0x0 usingBlock:&var_E0];
    objc_destroyWeak(&var_E0 + 0x20);
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak(&var_90 + 0x20);
    objc_destroyWeak(&saved_fp - 0x68);
    return;
}

-(void *)adUnitID {
    r0 = self->_adUnitID;
    return r0;
}

-(void *)reward {
    r0 = self->_reward;
    return r0;
}

-(void *)serverSideVerificationOptions {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_serverSideVerificationOptions)), 0x0);
    return r0;
}

-(void)setServerSideVerificationOptions:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adMetadataDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adMetadataDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdMetadataDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adMetadataDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adMetadataDelegate);
    objc_storeStrong((int64_t *)&self->_serverSideVerificationOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_reward, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_adMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_intermissionObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_adSource, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    return;
}

@end