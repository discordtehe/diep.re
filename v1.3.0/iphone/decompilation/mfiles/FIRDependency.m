@implementation FIRDependency

+(void *)dependencyWithProtocol:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithProtocol:r21 isRequired:0x1];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)dependencyWithProtocol:(void *)arg2 isRequired:(bool)arg3 {
    r22 = [arg2 retain];
    r19 = [[self alloc] initWithProtocol:r22 isRequired:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithProtocol:(void *)arg2 isRequired:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_protocol, r21);
            *(int8_t *)(int64_t *)&r22->_isRequired = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)protocol {
    r0 = self->_protocol;
    return r0;
}

-(bool)isRequired {
    r0 = *(int8_t *)(int64_t *)&self->_isRequired;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_protocol, 0x0);
    return;
}

@end