@implementation ADCGCDWebServerHandler

-(void *)initWithMatchBlock:(void *)arg2 asyncProcessBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_matchBlock));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_asyncProcessBlock));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)matchBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_matchBlock)), 0x0);
    return r0;
}

-(void *)asyncProcessBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_asyncProcessBlock)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_asyncProcessBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_matchBlock, 0x0);
    return;
}

@end