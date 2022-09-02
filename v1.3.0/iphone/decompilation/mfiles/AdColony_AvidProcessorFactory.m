@implementation AdColony_AvidProcessorFactory

-(void *)rootProcessor {
    r0 = self->_screenProcessor;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_windowProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_screenProcessor, 0x0);
    return;
}

-(void *)init {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffb0) = self;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [AdColony_AvidViewProcessor new];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_viewProcessor));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r0 = *(r19 + r22);
            [r0 setProcessorForChildren:r0];
            r0 = [AdColony_AvidWindowProcessor new];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_windowProcessor));
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [*(r19 + r23) setProcessorForChildren:*(r19 + r22)];
            r0 = [AdColony_AvidScreenProcessor new];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_screenProcessor));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setProcessorForChildren:*(r19 + r23)];
    }
    r0 = r19;
    return r0;
}

@end