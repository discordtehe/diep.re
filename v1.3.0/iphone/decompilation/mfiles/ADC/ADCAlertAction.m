@implementation ADCAlertAction

-(void *)initWithTitle:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_title, r21);
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completion));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)title {
    r0 = self->_title;
    return r0;
}

-(void)setTitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_title, arg2);
    return;
}

-(void *)completion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completion)), 0x0);
    return r0;
}

-(void)setCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completion, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    return;
}

@end