@implementation APMPropertyFilter

-(void *)initWithAudienceID:(int)arg2 filterID:(int)arg3 propertyName:(void *)arg4 data:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r23 = arg2;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            *(int32_t *)(int64_t *)&r21->_audienceID = r23;
            *(int32_t *)(int64_t *)&r21->_filterID = r22;
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_propertyName));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_data));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(int)audienceID {
    r0 = *(int32_t *)(int64_t *)&self->_audienceID;
    return r0;
}

-(int)filterID {
    r0 = *(int32_t *)(int64_t *)&self->_filterID;
    return r0;
}

-(void *)propertyName {
    r0 = self->_propertyName;
    return r0;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_propertyName, 0x0);
    return;
}

@end