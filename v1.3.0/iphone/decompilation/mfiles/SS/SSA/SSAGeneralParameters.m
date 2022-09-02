@implementation SSAGeneralParameters

-(void)setAdditionalParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_additionalParameters, arg2);
    return;
}

-(void *)initWithAppKey:(void *)arg2 userId:(void *)arg3 delegate:(void *)arg4 parames:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [[&var_40 super] initWithAppKey:r23 userId:r24];
    r21 = r0;
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            [r21 setDelegate:r19];
            if (r20 != 0x0) {
                    r22 = [r20 mutableCopy];
                    [r21 setAdditionalParameters:r22];
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)additionalParameters {
    r0 = self->_additionalParameters;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_additionalParameters, 0x0);
    return;
}

@end