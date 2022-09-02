@implementation ADCGCDWebServerMultiPart

-(void *)controlName {
    r0 = self->_controlName;
    return r0;
}

-(void *)initWithControlName:(void *)arg2 contentType:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_controlName));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_contentType));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            r0 = sub_100222dac();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mimeType));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)mimeType {
    r0 = self->_mimeType;
    return r0;
}

-(void *)contentType {
    r0 = self->_contentType;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mimeType, 0x0);
    objc_storeStrong((int64_t *)&self->_contentType, 0x0);
    objc_storeStrong((int64_t *)&self->_controlName, 0x0);
    return;
}

@end