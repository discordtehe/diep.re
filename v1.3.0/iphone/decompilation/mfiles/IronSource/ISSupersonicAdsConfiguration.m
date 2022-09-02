@implementation ISSupersonicAdsConfiguration

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_debugMode = 0x0;
    }
    return r0;
}

+(void *)configurations {
    sub_1006df814(0x1011dac18, 0x100e8bd40);
    r0 = *0x1011dac10;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)useClientSideCallbacks {
    r0 = self->_useClientSideCallbacks;
    return r0;
}

-(void)setUseClientSideCallbacks:(void *)arg2 {
    self->_useClientSideCallbacks = arg2;
    return;
}

-(void *)language {
    r0 = self->_language;
    return r0;
}

-(void)setLanguage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_language, arg2);
    return;
}

-(void *)minimumOfferCommission {
    r0 = self->_minimumOfferCommission;
    return r0;
}

-(void)setMinimumOfferCommission:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_minimumOfferCommission, arg2);
    return;
}

-(void *)controllerConfig {
    r0 = self->_controllerConfig;
    return r0;
}

-(void)setControllerConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerConfig, arg2);
    return;
}

-(void *)itemName {
    r0 = self->_itemName;
    return r0;
}

-(void)setItemName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_itemName, arg2);
    return;
}

-(void *)controllerUrl {
    r0 = self->_controllerUrl;
    return r0;
}

-(void)setControllerUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerUrl, arg2);
    return;
}

-(void *)itemCount {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_itemCount)), 0x1);
    return r0;
}

-(void)setItemCount:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)maxVideoLength {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_maxVideoLength)), 0x1);
    return r0;
}

-(void)setMaxVideoLength:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)privateKey {
    r0 = self->_privateKey;
    return r0;
}

-(void)setPrivateKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privateKey, arg2);
    return;
}

-(bool)debugMode {
    r0 = *(int8_t *)(int64_t *)&self->_debugMode;
    return r0;
}

-(void)setDebugMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugMode = arg2;
    return;
}

-(long long)debugLevel {
    r0 = self->_debugLevel;
    return r0;
}

-(void)setDebugLevel:(long long)arg2 {
    self->_debugLevel = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_privateKey, 0x0);
    objc_storeStrong((int64_t *)&self->_maxVideoLength, 0x0);
    objc_storeStrong((int64_t *)&self->_itemCount, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_itemName, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_minimumOfferCommission, 0x0);
    objc_storeStrong((int64_t *)&self->_language, 0x0);
    return;
}

@end