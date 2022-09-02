@implementation MRHostSDKVersionProperty

+(void *)defaultProperty {
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setVersion:@"5.8.0"];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)version {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_version)), 0x0);
    return r0;
}

-(void *)description {
    r20 = [[self version] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_version, 0x0);
    return;
}

@end