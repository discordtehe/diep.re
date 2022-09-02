@implementation GADAdPresenter

-(void)setAd:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ad, arg2);
    return;
}

-(void *)initWithPresenter:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_presenter, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)canPresent {
    r0 = self->_presenter;
    r0 = [r0 canPresent];
    return r0;
}

-(void)presentFromViewController:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r21->_ad);
    if (r20 != 0x0) {
            sub_1008b3ef0(r21->_presenter, r19, r20, 0x0);
    }
    else {
            sub_1007ce06c(0x0, @"Attempting to present from a GADAdPresenter with no ad. Ad presenter : %@");
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_presenter, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    return;
}

@end