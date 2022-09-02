@implementation ADJSessionParameters

-(void)setCallbackParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callbackParameters, arg2);
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r21 = self;
    r20 = [[[self class] allocWithZone:r19] init];
    if (r20 != 0x0) {
            r0 = [r21 callbackParameters];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setCallbackParameters:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 partnerParameters];
            r0 = [r0 retain];
            r19 = [r0 copyWithZone:r19];
            [r20 setPartnerParameters:r19];
            [r19 release];
            [r0 release];
    }
    r0 = r20;
    return r0;
}

-(void *)callbackParameters {
    r0 = self->_callbackParameters;
    return r0;
}

-(void)setPartnerParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_partnerParameters, arg2);
    return;
}

-(void *)partnerParameters {
    r0 = self->_partnerParameters;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_partnerParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_callbackParameters, 0x0);
    return;
}

@end