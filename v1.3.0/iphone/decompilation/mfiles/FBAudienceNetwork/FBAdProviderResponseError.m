@implementation FBAdProviderResponseError

-(void *)initWithErrorMessage:(void *)arg2 withErrorCode:(long long)arg3 withPlacementDefinition:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r19 = arg2;
    [arg2 retain];
    [r20 retain];
    r0 = [[&var_30 super] initWithType:0x1];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setErrorMessage:r19];
            [r22 setErrorCode:r21];
            [r22 setAdPlacementDefinition:r20];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)errorMessage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_errorMessage)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adPlacementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_errorMessage, 0x0);
    return;
}

-(void)setErrorMessage:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(long long)errorCode {
    r0 = self->_errorCode;
    return r0;
}

-(void *)adPlacementDefinition {
    r0 = self->_adPlacementDefinition;
    return r0;
}

-(void)setErrorCode:(long long)arg2 {
    self->_errorCode = arg2;
    return;
}

-(void)setAdPlacementDefinition:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adPlacementDefinition));
    [arg2 retain];
    r0 = *(self + r21);
    *(self + r21) = arg2;
    [r0 release];
    return;
}

@end