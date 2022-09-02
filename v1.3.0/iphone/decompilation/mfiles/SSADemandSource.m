@implementation SSADemandSource

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void *)initWithName:(void *)arg2 extraParams:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 setName:r19];
            [r22 setExtraParams:r20];
            [r22 setDelegate:r21];
            [r22 setInitState:0x0];
            [r22 setMediationState:0xffffffffffffffff];
            [r22 setAdAvailable:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void *)extraParams {
    r0 = self->_extraParams;
    return r0;
}

-(void)setExtraParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extraParams, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)isInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(long long)mediationState {
    r0 = self->_mediationState;
    return r0;
}

-(void)setMediationState:(long long)arg2 {
    self->_mediationState = arg2;
    return;
}

-(bool)isAdAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_adAvailable & 0x1;
    return r0;
}

-(void)setAdAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adAvailable = arg2;
    return;
}

-(long long)initState {
    r0 = self->_initState;
    return r0;
}

-(void)setInitState:(long long)arg2 {
    self->_initState = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_extraParams, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end