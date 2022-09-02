@implementation MPActivityItemProviderWithSubject

-(void *)initWithSubject:(void *)arg2 body:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] initWithPlaceholderItem:r20];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_subject));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_body));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)item {
    r0 = [self body];
    return r0;
}

-(void *)subject {
    r0 = self->_subject;
    return r0;
}

-(void *)activityViewController:(void *)arg2 subjectForActivityType:(void *)arg3 {
    r0 = [self subject];
    return r0;
}

-(void *)body {
    r0 = self->_body;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_body, 0x0);
    objc_storeStrong((int64_t *)&self->_subject, 0x0);
    return;
}

@end