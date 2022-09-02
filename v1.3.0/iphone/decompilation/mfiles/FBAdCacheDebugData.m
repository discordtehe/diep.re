@implementation FBAdCacheDebugData

-(void *)initWithRequestId:(void *)arg2 adFormat:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestId));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_adFormat, r20);
            *(int8_t *)(int64_t *)&r22->_hitOrMissLogged = 0x0;
            *(int8_t *)(int64_t *)&r22->_inMemoryCacheWriteFailureLogged = 0x0;
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)markInMemoryCacheWriteFailureLogged {
    *(int8_t *)(int64_t *)&self->_inMemoryCacheWriteFailureLogged = 0x1;
    return;
}

-(void)markHitOrMissLogged {
    *(int8_t *)(int64_t *)&self->_hitOrMissLogged = 0x1;
    return;
}

-(void *)requestId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestId)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adFormat, 0x0);
    objc_storeStrong((int64_t *)&self->_requestId, 0x0);
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [FBAdCacheDebugData alloc];
    r21 = [[self requestId] retain];
    r19 = [[self adFormat] retain];
    r20 = [r20 initWithRequestId:r21 adFormat:r19];
    [r19 release];
    [r21 release];
    r0 = r20;
    return r0;
}

-(void *)adFormat {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adFormat)), 0x0);
    return r0;
}

-(bool)hitOrMissLogged {
    r0 = *(int8_t *)(int64_t *)&self->_hitOrMissLogged;
    return r0;
}

-(bool)inMemoryCacheWriteFailureLogged {
    r0 = *(int8_t *)(int64_t *)&self->_inMemoryCacheWriteFailureLogged;
    return r0;
}

@end