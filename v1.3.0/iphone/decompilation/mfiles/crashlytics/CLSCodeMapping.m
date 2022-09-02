@implementation CLSCodeMapping

+(void *)mappingWithURL:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithURL:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_URL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)URL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_URL)), 0x0);
    return r0;
}

-(int)source {
    r0 = *(int32_t *)(int64_t *)&self->_source;
    return r0;
}

-(void)setSource:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_source = arg2;
    return;
}

-(void *)sourceName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sourceName)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sourceName, 0x0);
    objc_storeStrong((int64_t *)&self->_URL, 0x0);
    return;
}

@end