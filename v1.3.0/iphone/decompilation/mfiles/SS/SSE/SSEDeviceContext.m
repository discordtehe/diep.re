@implementation SSEDeviceContext

+(void *)defaultDeviceContext {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffd0 - 0x510;
    var_28 = **___stack_chk_guard;
    r19 = [[UIDevice currentDevice] retain];
    r0 = [SSEDeviceContext alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 setDeviceOSName:@"ios"];
    r21 = [[r19 systemVersion] retain];
    [r20 setDeviceOSVersion:r21];
    [r21 release];
    uname(&stack[-1336]);
    r21 = [[NSString stringWithCString:&stack[-1336] + 0x400 encoding:0x4] retain];
    [r20 setDeviceModel:r21];
    [r21 release];
    [r20 setDeviceOEM:@"Apple"];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_deviceOSName));
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_deviceOSVersion));
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)setDeviceOSName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)deviceOSName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceOSName)), 0x1);
    return r0;
}

-(void)setDeviceOSVersion:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)deviceOSVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceOSVersion)), 0x1);
    return r0;
}

-(void *)deviceModel {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceModel)), 0x1);
    return r0;
}

-(void)setDeviceModel:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)deviceOEM {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceOEM)), 0x1);
    return r0;
}

-(void)setDeviceOEM:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deviceOEM, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceModel, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceOSVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceOSName, 0x0);
    return;
}

@end