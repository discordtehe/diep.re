@implementation GADVideoLoggingContextSource

-(void *)initWithWebAdView:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [GADEventContext alloc];
            r22 = [[r19 context] retain];
            r0 = [r21 initWithParent:r22 component:*0x100e974a8];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end