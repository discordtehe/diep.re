@implementation GADFIRAnalyticsStub

-(void)logInternalEventWithOrigin:(void *)arg2 name:(void *)arg3 parameters:(void *)arg4 {
    sub_1007ce06c(0x0, @"Stub only. Do not use.");
    return;
}

-(void)getScreenName:(void * *)arg2 screenClass:(void * *)arg3 {
    sub_1007ce06c(0x0, @"Stub only. Do not use.");
    return;
}

-(void)setScreenName:(void *)arg2 screenClass:(void *)arg3 {
    sub_1007ce06c(0x0, @"Stub only. Do not use.");
    return;
}

-(void)beginAdUnitExposure:(void *)arg2 {
    sub_1007ce06c(0x0, @"Stub only. Do not use.");
    return;
}

-(void)endAdUnitExposure:(void *)arg2 {
    sub_1007ce06c(0x0, @"Stub only. Do not use.");
    return;
}

-(void)setAnalyticsEnabled:(bool)arg2 {
    sub_1007ce06c(0x0, @"Stub only. Do not use.");
    return;
}

-(void *)googleAppID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_googleAppID)), 0x0);
    return r0;
}

-(void *)analyticsAppID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_analyticsAppID)), 0x0);
    return r0;
}

-(void *)appInstanceID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appInstanceID)), 0x0);
    return r0;
}

-(void *)origin {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_origin)), 0x0);
    return r0;
}

-(void *)adEventID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adEventID)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_origin, 0x0);
    objc_storeStrong((int64_t *)&self->_adEventID, 0x0);
    objc_storeStrong((int64_t *)&self->_appInstanceID, 0x0);
    objc_storeStrong((int64_t *)&self->_analyticsAppID, 0x0);
    objc_storeStrong((int64_t *)&self->_googleAppID, 0x0);
    return;
}

@end