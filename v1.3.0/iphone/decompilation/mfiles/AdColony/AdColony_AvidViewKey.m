@implementation AdColony_AvidViewKey

-(unsigned long long)hash {
    r0 = self->_view;
    r0 = [r0 hash];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [AdColony_AvidViewKey class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = r20->_view;
            r0 = [r19 view];
            r0 = [r0 retain];
            if (r20 == r0) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)view {
    r0 = self->_view;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [AdColony_AvidViewKey new];
    [r0 setView:self->_view];
    r0 = r0;
    return r0;
}

-(void)setView:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    return;
}

@end