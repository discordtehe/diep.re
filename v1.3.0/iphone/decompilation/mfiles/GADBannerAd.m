@implementation GADBannerAd

-(void *)initWithContext:(void *)arg2 adView:(void *)arg3 metadata:(void *)arg4 videoController:(void *)arg5 {
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
    r19 = arg5;
    r21 = arg3;
    r24 = [arg2 retain];
    r20 = [r21 retain];
    r25 = [arg4 retain];
    r22 = [r19 retain];
    r0 = [[&var_50 super] initWithContext:r24 metadata:r25];
    r23 = r0;
    [r25 release];
    [r24 release];
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_adView, r21);
            objc_storeStrong((int64_t *)&r23->_videoController, r19);
    }
    [r22 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void)dealloc {
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r0 = *(self + r22);
    r0 = [r0 retain];
    *(self + r22) = 0x0;
    [r0 release];
    sub_100860a80();
    _Block_object_dispose(&var_70, 0x8);
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
    r0 = *(self + r20);
    r0 = [r0 retain];
    *(self + r20) = 0x0;
    [r0 release];
    sub_100860a80();
    _Block_object_dispose(&var_70, 0x8);
    [r0 release];
    [[&var_D0 super] dealloc];
    return;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void *)videoController {
    r0 = self->_videoController;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    return;
}

@end