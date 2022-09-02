@implementation ADJActivityPackage

-(long long)getRetries {
    r0 = [self retries];
    return r0;
}

-(void *)extendedString {
    r31 = r31 - 0x90;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [[NSMutableString string] retain];
    r19 = [[r20 path] retain];
    [r22 appendFormat:@"Path:      %@\n"];
    [r19 release];
    r19 = [[r20 clientSdk] retain];
    [r22 appendFormat:@"ClientSdk: %@\n"];
    [r19 release];
    r0 = [r20 parameters];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = @selector(parameters);
            r0 = objc_msgSend(r20, r21);
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 allKeys];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 sortedArrayUsingSelector:@selector(localizedStandardCompare:)];
            r29 = r29;
            r27 = [r0 retain];
            [r24 release];
            [r19 release];
            r28 = [r27 count];
            [r22 appendFormat:@"Parameters:"];
            if (r28 != 0x0) {
                    r23 = @selector(appendFormat:);
                    r25 = 0x0;
                    do {
                            r19 = [[r27 objectAtIndex:r25] retain];
                            r0 = objc_msgSend(r20, r21);
                            r0 = [r0 retain];
                            r24 = r23;
                            r23 = r22;
                            r22 = r20;
                            r20 = r0;
                            r0 = [r0 objectForKey:r19];
                            r29 = r29;
                            r0 = [r0 retain];
                            r0 = r20;
                            r20 = r22;
                            r22 = r23;
                            r23 = r24;
                            [r0 release];
                            r0 = objc_retainAutorelease(r19);
                            [r0 UTF8String];
                            objc_msgSend(r22, r23);
                            r0 = r21;
                            r21 = r26;
                            [r0 release];
                            [r19 release];
                            r25 = r25 + 0x1;
                    } while (r28 != r25);
            }
            [r27 release];
    }
    r0 = [r22 autorelease];
    return r0;
}

-(long long)increaseRetries {
    [self setRetries:[self retries] + 0x1];
    r0 = [self retries];
    return r0;
}

-(void *)description {
    r21 = [[ADJActivityKindUtil activityKindToString:[self activityKind]] retain];
    r19 = [[self suffix] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)successMessage {
    r21 = [[ADJActivityKindUtil activityKindToString:[self activityKind]] retain];
    r19 = [[self suffix] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)failureMessage {
    r21 = [[ADJActivityKindUtil activityKindToString:[self activityKind]] retain];
    r19 = [[self suffix] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)path {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_path)), 0x0);
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = [[r19 decodeObjectForKey:@"path"] retain];
            [r20 setPath:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"suffix"] retain];
            [r20 setSuffix:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"clientSdk"] retain];
            [r20 setClientSdk:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"parameters"] retain];
            [r20 setParameters:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"partnerParameters"] retain];
            [r20 setPartnerParameters:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"callbackParameters"] retain];
            [r20 setCallbackParameters:r22];
            [r22 release];
            r21 = [[r19 decodeObjectForKey:@"kind"] retain];
            [r20 setActivityKind:[ADJActivityKindUtil activityKindFromString:r21]];
            [r20 retain];
            [r21 release];
    }
    [r19 release];
    [r20 release];
    r0 = r20;
    return r0;
}

-(void)setPath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[ADJActivityKindUtil activityKindToString:[self activityKind]] retain];
    r24 = [[self path] retain];
    [arg2 encodeObject:r24 forKey:@"path"];
    [r24 release];
    [arg2 encodeObject:r22 forKey:@"kind"];
    r24 = [[self suffix] retain];
    [arg2 encodeObject:r24 forKey:@"suffix"];
    [r24 release];
    r24 = [[self clientSdk] retain];
    [arg2 encodeObject:r24 forKey:@"clientSdk"];
    [r24 release];
    r24 = [[self parameters] retain];
    [arg2 encodeObject:r24 forKey:@"parameters"];
    [r24 release];
    r24 = [[self callbackParameters] retain];
    [arg2 encodeObject:r24 forKey:@"callbackParameters"];
    [r24 release];
    r21 = [[self partnerParameters] retain];
    [arg2 encodeObject:r21 forKey:@"partnerParameters"];
    [r20 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)setClientSdk:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)clientSdk {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clientSdk)), 0x0);
    return r0;
}

-(long long)retries {
    r0 = self->_retries;
    return r0;
}

-(void)setRetries:(long long)arg2 {
    self->_retries = arg2;
    return;
}

-(void *)parameters {
    r0 = self->_parameters;
    return r0;
}

-(void)setParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parameters, arg2);
    return;
}

-(void *)partnerParameters {
    r0 = self->_partnerParameters;
    return r0;
}

-(void)setPartnerParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_partnerParameters, arg2);
    return;
}

-(void *)callbackParameters {
    r0 = self->_callbackParameters;
    return r0;
}

-(void)setCallbackParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callbackParameters, arg2);
    return;
}

-(void)setSuffix:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)suffix {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_suffix)), 0x0);
    return r0;
}

-(int)activityKind {
    r0 = *(int32_t *)(int64_t *)&self->_activityKind;
    return r0;
}

-(void)setActivityKind:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_activityKind = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_suffix, 0x0);
    objc_storeStrong((int64_t *)&self->_callbackParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_partnerParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_parameters, 0x0);
    objc_storeStrong((int64_t *)&self->_clientSdk, 0x0);
    objc_storeStrong((int64_t *)&self->_path, 0x0);
    return;
}

@end