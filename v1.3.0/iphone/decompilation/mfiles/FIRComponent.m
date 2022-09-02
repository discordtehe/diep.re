@implementation FIRComponent

+(void *)componentWithProtocol:(void *)arg2 creationBlock:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [FIRComponent alloc];
    r0 = [NSArray arrayWithObjects:&stack[-56] count:0x0];
    r22 = [r0 retain];
    r21 = [r21 initWithProtocol:r20 instantiationTiming:0x0 dependencies:r22 creationBlock:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithProtocol:(void *)arg2 instantiationTiming:(long long)arg3 dependencies:(void *)arg4 creationBlock:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg3;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_protocol, r24);
            r22->_instantiationTiming = r23;
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dependencies));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_creationBlock));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void *)componentWithProtocol:(void *)arg2 instantiationTiming:(long long)arg3 dependencies:(void *)arg4 creationBlock:(void *)arg5 {
    r22 = [arg2 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r21 = [[FIRComponent alloc] initWithProtocol:r22 instantiationTiming:arg3 dependencies:r20 creationBlock:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)protocol {
    r0 = self->_protocol;
    return r0;
}

-(void *)dependencies {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dependencies)), 0x0);
    return r0;
}

-(long long)instantiationTiming {
    r0 = self->_instantiationTiming;
    return r0;
}

-(void *)creationBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_creationBlock)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_creationBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_dependencies, 0x0);
    objc_storeStrong((int64_t *)&self->_protocol, 0x0);
    return;
}

@end