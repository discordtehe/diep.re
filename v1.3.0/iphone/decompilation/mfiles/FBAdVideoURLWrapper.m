@implementation FBAdVideoURLWrapper

-(void *)initWithUrl:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_url));
            [r19 retain];
            r0 = *(r20 + r21);
            *(r20 + r21) = r19;
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

-(void *)url {
    r0 = self->_url;
    return r0;
}

-(bool)isFile {
    r0 = self->_url;
    r0 = [r0 isFileURL];
    return r0;
}

@end