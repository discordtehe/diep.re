@implementation CacheInfo

-(void *)appId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_appId)), 0x1);
    return r0;
}

-(void)setAppId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setObject:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)object {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_object)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_object, 0x0);
    objc_storeStrong((int64_t *)&self->_appId, 0x0);
    return;
}

@end