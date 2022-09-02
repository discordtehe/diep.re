@implementation APMUserAttribute

-(bool)isPublic {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_name));
    r0 = *(r19 + r20);
    r0 = [r0 length];
    if (r0 != 0x0) {
            r0 = *(r19 + r20);
            r0 = [r0 characterAtIndex:0x0];
            if (r0 != 0x5f) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)initWithOrigin:(void *)arg2 name:(void *)arg3 value:(void *)arg4 lastSetTimestamp:(double)arg5 {
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r22 retain];
    r0 = [APMDataTypeValidator isValidInternalUserAttributeName:r20 failureCode:0x0];
    r24 = 0x0;
    if (r0 != 0x0) {
            r0 = [APMDataTypeValidator isValidInternalUserAttributeValue:r21 name:r20 failureCode:0x0];
            r24 = 0x0;
            if (r0 != 0x0) {
                    r0 = [[&var_60 super] init];
                    r23 = r0;
                    if (r23 != 0x0) {
                            r0 = [r19 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_origin));
                            r8 = *(r23 + r9);
                            *(r23 + r9) = r0;
                            [r8 release];
                            r0 = [r20 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                            r8 = *(r23 + r9);
                            *(r23 + r9) = r0;
                            [r8 release];
                            objc_storeStrong((int64_t *)&r23->_value, r22);
                            r23->_lastSetTimestamp = d8;
                    }
                    r23 = [r23 retain];
                    r24 = r23;
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void *)protoUserAttribute {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [APMPBUserAttribute alloc];
    r0 = [r0 initWithMessageInfo:0x0];
    r20 = r0;
    r2 = r19->_name;
    sub_1001a7bf8(r0, 0x1, r2);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_value));
    r8 = [*(r19 + r23) isDouble];
    r0 = *(r19 + r23);
    if (r8 != 0x0) {
            [r0 doubleValue];
            sub_1001a7a9c(r20, 0x5);
    }
    else {
            r8 = [r0 isInt64];
            r0 = *(r19 + r23);
            if (r8 != 0x0) {
                    r2 = [r0 int64Value];
                    sub_1001a7978(r20, 0x3, r2);
            }
            else {
                    r0 = [r0 stringValue];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r2 = [[*(r19 + r23) stringValue] retain];
                            sub_1001a7bf8(r20, 0x2, r2);
                            [r21 release];
                    }
            }
    }
    asm { fcvtzs     x2, d0 };
    sub_1001a7978(r20, 0x0, r2);
    r0 = [r20 autorelease];
    return r0;
}

-(void *)origin {
    r0 = self->_origin;
    return r0;
}

-(void *)value {
    r0 = self->_value;
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_value, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_origin, 0x0);
    return;
}

-(double)lastSetTimestamp {
    r0 = self;
    return r0;
}

@end