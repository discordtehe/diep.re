@implementation GADInterstitialAd

-(void *)initWithContext:(void *)arg2 adController:(void *)arg3 metadata:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r23 = [arg2 retain];
    r20 = [r19 retain];
    r0 = [[&var_40 super] initWithContext:r23 metadata:arg4];
    r21 = r0;
    [r23 release];
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_adController, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adController));
    r0 = *(self + r21);
    r0 = [r0 retain];
    *(self + r21) = 0x0;
    [r0 release];
    sub_100860a80();
    _Block_object_dispose(&var_50, 0x8);
    [r0 release];
    [[&var_88 super] dealloc];
    return;
}

-(void *)adController {
    r0 = self->_adController;
    return r0;
}

-(void *)reward {
    r0 = self->_reward;
    return r0;
}

-(void)setReward:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reward, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reward, 0x0);
    objc_storeStrong((int64_t *)&self->_adController, 0x0);
    return;
}

@end