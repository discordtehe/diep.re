@implementation ADCGCDWebServerStreamedResponse

+(void *)responseWithContentType:(void *)arg2 streamBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[[self class] alloc] initWithContentType:r21 streamBlock:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)responseWithContentType:(void *)arg2 asyncStreamBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[[self class] alloc] initWithContentType:r21 asyncStreamBlock:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithContentType:(void *)arg2 streamBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r22 = [r0 retain];
    r19 = [self initWithContentType:r21 asyncStreamBlock:&var_48];
    [r21 release];
    [r0 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)description {
    r0 = [[&var_20 super] description];
    r20 = [r0 retain];
    r19 = [[NSMutableString stringWithString:r20] retain];
    [r20 release];
    [r19 appendString:@"\n\n<STREAM>"];
    r0 = [r19 autorelease];
    return r0;
}

-(void)asyncReadDataWithCompletion:(void *)arg2 {
    r0 = self->_block;
    r3 = *(r0 + 0x10);
    (r3)(r0, arg2, arg2, r3);
    return;
}

-(void *)initWithContentType:(void *)arg2 asyncStreamBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_block));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r21 setContentType:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    return;
}

@end