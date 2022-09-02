@implementation APMScreen

-(void *)initWithName:(void *)arg2 className:(void *)arg3 instanceID:(long long)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_className));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_instanceID = r19;
    }
    [r21 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [APMScreen alloc];
    r0 = [r0 initWithName:self->_name className:self->_className instanceID:self->_instanceID];
    return r0;
}

-(long long)instanceID {
    r0 = self->_instanceID;
    return r0;
}

-(void *)className {
    r0 = self->_className;
    return r0;
}

-(bool)isManuallySet {
    r0 = *(int8_t *)(int64_t *)&self->_isManuallySet;
    return r0;
}

-(void)setIsManuallySet:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isManuallySet = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_className, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end