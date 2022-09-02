@implementation ADCGCDWebServerMultiPartFile

-(void)dealloc {
    unlink([self->_temporaryPath fileSystemRepresentation]);
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithControlName:(void *)arg2 contentType:(void *)arg3 fileName:(void *)arg4 temporaryPath:(void *)arg5 {
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
    r0 = [[&var_40 super] initWithControlName:r23 contentType:r24];
    r21 = r0;
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_temporaryPath));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)description {
    [self class];
    r22 = [[self mimeType] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)fileName {
    r0 = self->_fileName;
    return r0;
}

-(void *)temporaryPath {
    r0 = self->_temporaryPath;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_temporaryPath, 0x0);
    objc_storeStrong((int64_t *)&self->_fileName, 0x0);
    return;
}

@end