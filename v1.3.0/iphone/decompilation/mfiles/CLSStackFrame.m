@implementation CLSStackFrame

+(void *)stackFrameWithAddress:(unsigned long long)arg2 {
    r0 = [self stackFrame];
    r0 = [r0 retain];
    [r0 setAddress:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)stackFrame {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)stackFrameWithSymbol:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self stackFrame];
    r0 = [r0 retain];
    [r0 setSymbol:r21];
    [r0 setRawSymbol:r21];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)description {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self fileName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    r20 = [r21 address];
    if (r0 != 0x0) {
            r22 = [[r21 fileName] retain];
            r23 = [[r21 symbol] retain];
            [r21 lineNumber];
            r19 = [[NSString stringWithFormat:r2] retain];
            [r23 release];
            r0 = r22;
    }
    else {
            [r21 lineNumber];
            r21 = [[r21 symbol] retain];
            r19 = [[NSString stringWithFormat:r2] retain];
            r0 = r21;
    }
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setSymbol:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)symbol {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_symbol)), 0x0);
    return r0;
}

-(void *)rawSymbol {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rawSymbol)), 0x0);
    return r0;
}

-(void)setRawSymbol:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)library {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_library)), 0x0);
    return r0;
}

-(void)setLibrary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)fileName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fileName)), 0x0);
    return r0;
}

-(unsigned int)lineNumber {
    r0 = *(int32_t *)(int64_t *)&self->_lineNumber;
    return r0;
}

-(void)setFileName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLineNumber:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->_lineNumber = arg2;
    return;
}

-(unsigned long long)offset {
    r0 = self->_offset;
    return r0;
}

-(void)setAddress:(unsigned long long)arg2 {
    self->_address = arg2;
    return;
}

-(void)setOffset:(unsigned long long)arg2 {
    self->_offset = arg2;
    return;
}

-(unsigned long long)address {
    r0 = self->_address;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fileName, 0x0);
    objc_storeStrong((int64_t *)&self->_library, 0x0);
    objc_storeStrong((int64_t *)&self->_rawSymbol, 0x0);
    objc_storeStrong((int64_t *)&self->_symbol, 0x0);
    return;
}

@end