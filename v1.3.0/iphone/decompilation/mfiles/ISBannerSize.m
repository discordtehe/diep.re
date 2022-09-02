@implementation ISBannerSize

-(void *)initWithWidth:(long long)arg2 andHeight:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_sizeDescription, @"CUSTOM");
            r21->_width = r20;
            r21->_height = r19;
    }
    r0 = r21;
    return r0;
}

-(void *)initWithDescription:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_sizeDescription, r20);
            r21->_width = 0x0;
            r21->_height = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)sizeDescription {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sizeDescription)), 0x1);
    return r0;
}

-(long long)width {
    r0 = self->_width;
    return r0;
}

-(long long)height {
    r0 = self->_height;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sizeDescription, 0x0);
    return;
}

@end