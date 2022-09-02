@implementation AdColony_ExternalAvidAdSessionContext

+(void *)contextWithPartnerVersion:(void *)arg2 {
    r0 = [self contextWithPartnerVersion:arg2 isDeferred:0x0];
    return r0;
}

-(void *)initWithPartnerVersion:(void *)arg2 {
    r0 = [self initWithPartnerVersion:arg2 isDeferred:0x0];
    return r0;
}

+(void *)contextWithPartnerVersion:(void *)arg2 isDeferred:(bool)arg3 {
    r22 = [arg2 retain];
    r19 = [[self alloc] initWithPartnerVersion:r22 isDeferred:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)partnerVersion {
    r0 = self->_partnerVersion;
    return r0;
}

-(void *)initWithPartnerVersion:(void *)arg2 isDeferred:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_partnerVersion));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r21->_isDeferred = r19;
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)isDeferred {
    r0 = *(int8_t *)(int64_t *)&self->_isDeferred;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_partnerVersion, 0x0);
    return;
}

@end