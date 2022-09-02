@implementation DFPBannerViewOptions

-(void *)requestParameters {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([self enableManualImpressions] != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_30 super] copyWithZone:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_enableManualImpressions));
    *(int8_t *)(r0 + r8) = *(int8_t *)(self + r8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeDelegate));
    objc_storeWeak(r0 + r22, objc_loadWeakRetained(self + r22));
    [r21 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_appEventDelegate));
    objc_storeWeak(r20 + r21, objc_loadWeakRetained(self + r21));
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)appEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_appEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAppEventDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_appEventDelegate, arg2);
    return;
}

-(void *)adSizeDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adSizeDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdSizeDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adSizeDelegate, arg2);
    return;
}

-(bool)enableManualImpressions {
    r0 = *(int8_t *)(int64_t *)&self->_enableManualImpressions;
    return r0;
}

-(void)setEnableManualImpressions:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enableManualImpressions = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adSizeDelegate);
    objc_destroyWeak((int64_t *)&self->_appEventDelegate);
    return;
}

@end