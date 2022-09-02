@implementation GADAdapterStatus

-(void *)initWithState:(long long)arg2 latency:(double)arg3 description:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r20->_state = r21;
            r20->_latency = d8;
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_statusDescription));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [GADAdapterStatus alloc];
    r0 = [r0 initWithState:self->_state latency:self->_statusDescription description:r4];
    return r0;
}

-(long long)state {
    r0 = self->_state;
    return r0;
}

-(unsigned long long)hash {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_statusDescription));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r0 = [r8 hash];
    }
    else {
            r0 = r0->_state;
    }
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [GADAdapterStatus class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            if (*(r20 + r8) == *(r19 + r8)) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_statusDescription));
                    r0 = *(r20 + r8);
                    if (r0 != 0x0) {
                            r20 = [r0 isEqual:r2];
                    }
                    else {
                            if (*(r19 + r8) != 0x0) {
                                    r20 = [r0 isEqual:r2];
                            }
                            else {
                                    r20 = 0x1;
                            }
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
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
    r29 = &saved_fp;
    r19 = self;
    if (r19->_statusDescription != 0x0) {
            r0 = [@";" stringByAppendingString:r2];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [@"" retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(r19 + r8);
    if (r8 == 0x1) goto loc_100849e34;

loc_100849e24:
    r21 = @"";
    if (r8 != 0x0) goto loc_100849e50;

loc_100849e28:
    r21 = @"Not Ready";
    goto loc_100849e3c;

loc_100849e3c:
    [r21 retain];
    [@"" release];
    goto loc_100849e50;

loc_100849e50:
    r22 = [NSString alloc];
    r23 = [NSStringFromClass([r19 class]) retain];
    r19 = [r22 initWithFormat:@"<%@: %p; state = %@%@>"];
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;

loc_100849e34:
    r21 = @"Ready";
    goto loc_100849e3c;
}

-(double)latency {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_statusDescription, 0x0);
    return;
}

@end