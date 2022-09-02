@implementation GADExtras

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] alloc] init];
    r19 = [[self additionalParameters] retain];
    [r20 setAdditionalParameters:r19];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)additionalParameters {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_additionalParameters)), 0x0);
    return r0;
}

-(void)setAdditionalParameters:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_additionalParameters, 0x0);
    return;
}

@end