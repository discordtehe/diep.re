@implementation TRAppSession

-(bool)isValid {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self appSessionID];
    if (r0 > 0x0) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)initWithTRAppSessionDictionary:(void *)arg2 {
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
            r0 = [r19 notNullObjectForKey:@"id"];
            r0 = [r0 retain];
            [r20 setAppSessionID:[r0 longValue]];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setAppSessionID:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setAppSessionID:[r19 decodeIntegerForKey:@"TR App Session ID"]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    [arg2 encodeInteger:[self appSessionID] forKey:@"TR App Session ID"];
    [r22 release];
    return;
}

-(long long)appSessionID {
    r0 = self->_appSessionID;
    return r0;
}

-(void)setAppSessionID:(long long)arg2 {
    self->_appSessionID = arg2;
    return;
}

-(void)setIsValid:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isValid = arg2;
    return;
}

@end