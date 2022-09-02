@implementation GADServerResponse

-(void *)initWithConfiguration:(void *)arg2 response:(void *)arg3 responseBody:(void *)arg4 {
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rawResponse));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rawResponseData));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(struct NSDictionary *)common {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_configuration;
    r0 = [r0 objectForKeyedSubscript:@"common"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adConfigurations {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_configuration;
    r0 = [r0 objectForKeyedSubscript:@"ad_configs"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-40] count:0x0];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)rawResponse {
    r0 = self->_rawResponse;
    return r0;
}

-(void *)rawResponseData {
    r0 = self->_rawResponseData;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rawResponseData, 0x0);
    objc_storeStrong((int64_t *)&self->_rawResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    return;
}

@end