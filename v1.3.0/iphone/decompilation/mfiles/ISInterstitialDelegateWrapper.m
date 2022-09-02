@implementation ISInterstitialDelegateWrapper

+(void *)sharedInstance {
    if (*qword_1011dac70 != -0x1) {
            dispatch_once(0x1011dac70, 0x100e8c990);
    }
    r0 = *0x1011dac68;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setISDemandOnlyMode:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    objc_sync_enter(self);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_wasModeSet));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            *(int8_t *)(int64_t *)&r19->_isDemandOnlyModeOn = r20;
    }
    objc_sync_exit(r19);
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_demandOnlyDelegate));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_wasModeSet = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    [arg2 retain];
    objc_sync_enter(self);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    [self retain];
    r0 = *(self + r22);
    *(self + r22) = r20;
    [r0 release];
    objc_sync_exit(self);
    [r21 release];
    return;
}

-(void)setInstDelegate:(void *)arg2 {
    [arg2 retain];
    objc_sync_enter(self);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_demandOnlyDelegate));
    [self retain];
    r0 = *(self + r22);
    *(self + r22) = r20;
    [r0 release];
    objc_sync_exit(self);
    [r21 release];
    return;
}

-(void)interstitialDidLoad {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)verifyMediationMode:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_wasModeSet != 0x0 && *(int8_t *)(int64_t *)&r20->_isDemandOnlyModeOn != 0x0) {
            r20 = [[ISLoggerManager sharedInstance] retain];
            r21 = [[NSString stringWithFormat:@"%@ delegate call was made while not in Demand Only mode"] retain];
            [r20 log:r21 level:0x2 tag:0x1];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)verifyDemandOnlyMode:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_wasModeSet != 0x0 && *(int8_t *)(int64_t *)&r20->_isDemandOnlyModeOn == 0x0) {
            r20 = [[ISLoggerManager sharedInstance] retain];
            r21 = [[NSString stringWithFormat:@"%@ delegate call was made while in Demand Only mode"] retain];
            [r20 log:r21 level:0x2 tag:0x1];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidOpen {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)interstitialDidClose {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)interstitialDidShow {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)didClickInterstitial {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)interstitialDidLoad:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 instanceId:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)interstitialDidOpen:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidClose:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidShow:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)didClickInterstitial:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_demandOnlyDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    return;
}

@end