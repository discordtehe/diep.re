@implementation GADMediationNativeAdConfiguration

-(void *)initWithOptions:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 targeting:(void *)arg4 credentials:(void *)arg5 extras:(void *)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r0 = [[&var_40 super] initWithAdConfiguration:r23 targeting:r22 credentials:r21 extras:arg6];
    r20 = r0;
    [r21 release];
    [r22 release];
    [r23 release];
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_options));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithAdConfiguration:(struct NSDictionary *)arg2 targeting:(void *)arg3 credentials:(void *)arg4 extras:(void *)arg5 {
    [self release];
    return 0x0;
}

-(void *)options {
    r0 = self->_options;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    return;
}

@end