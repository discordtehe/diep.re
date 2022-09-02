@implementation FIRConfiguration

+(void *)sharedInstance {
    if (*qword_1011d1db8 != -0x1) {
            dispatch_once(0x1011d1db8, 0x100e6a900);
    }
    r0 = *0x1011d1db0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [FIRAnalyticsConfiguration sharedInstance];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsConfiguration));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setLoggerLevel:(long long)arg2 {
    sub_100102628(arg2);
    return;
}

-(void *)analyticsConfiguration {
    r0 = self->_analyticsConfiguration;
    return r0;
}

-(void)setAnalyticsConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_analyticsConfiguration, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_analyticsConfiguration, 0x0);
    return;
}

@end