@implementation GADMAdapterAdColonyExtras

-(void *)userId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userId)), 0x1);
    return r0;
}

-(bool)showPrePopup {
    r0 = *(int8_t *)(int64_t *)&self->_showPrePopup & 0x1;
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setShowPrePopup:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showPrePopup = arg2;
    return;
}

-(bool)showPostPopup {
    r0 = *(int8_t *)(int64_t *)&self->_showPostPopup & 0x1;
    return r0;
}

-(void)setShowPostPopup:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showPostPopup = arg2;
    return;
}

-(bool)testMode {
    r0 = *(int8_t *)(int64_t *)&self->_testMode & 0x1;
    return r0;
}

-(void)setTestMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_testMode = arg2;
    return;
}

-(bool)gdprRequired {
    r0 = *(int8_t *)(int64_t *)&self->_gdprRequired;
    return r0;
}

-(void)setGdprRequired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_gdprRequired = arg2;
    return;
}

-(void *)gdprConsentString {
    r0 = self->_gdprConsentString;
    return r0;
}

-(void)setGdprConsentString:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gdprConsentString, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_gdprConsentString, 0x0);
    objc_storeStrong((int64_t *)&self->_userId, 0x0);
    return;
}

@end