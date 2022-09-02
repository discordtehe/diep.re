@implementation FBAdPlacement

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adCandidates, 0x0);
    objc_storeStrong((int64_t *)&self->_definition, 0x0);
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    return;
}

-(void *)initWithCode:(long long)arg2 message:(void *)arg3 definition:(void *)arg4 adCandidates:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setCode:r23];
            [r22 setMessage:r19];
            [r22 setDefinition:r20];
            [r22 setAdCandidates:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(long long)code {
    r0 = self->_code;
    return r0;
}

-(void)setCode:(long long)arg2 {
    self->_code = arg2;
    return;
}

-(void *)message {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_message)), 0x0);
    return r0;
}

-(void)setMessage:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)definition {
    r0 = self->_definition;
    return r0;
}

-(void)setDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_definition, arg2);
    return;
}

-(void *)adCandidates {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adCandidates)), 0x0);
    return r0;
}

-(void)setAdCandidates:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdPlacement");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end