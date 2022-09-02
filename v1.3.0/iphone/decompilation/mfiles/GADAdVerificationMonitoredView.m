@implementation GADAdVerificationMonitoredView

-(void *)initWithMonitoredView:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_monitoredView, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)monitoredView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_monitoredView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)addObserverForMonitoredViewDismissal:(void *)arg2 dismissalBlock:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_presenterDismissalObserverCollection));
    if (*(r21 + r22) != 0x0) {
            sub_1007ce06c(0x0, @"Observer must be added only once.");
    }
    else {
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            [*(r21 + r22) addObserverForName:*0x100e9c118 object:r19 queue:0x0 usingBlock:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setMonitoredView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_monitoredView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_monitoredView);
    objc_storeStrong((int64_t *)&self->_presenterDismissalObserverCollection, 0x0);
    return;
}

@end