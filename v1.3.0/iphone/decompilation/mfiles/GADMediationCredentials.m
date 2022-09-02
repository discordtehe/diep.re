@implementation GADMediationCredentials

-(void *)initWithAdFormat:(long long)arg2 credentials:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = [arg3 retain];
    r0 = [[&var_38 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            if (r20 == 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 release];
                    r20 = r22;
            }
            [NSDictionary class];
            if (([r20 isKindOfClass:r2] & 0x1) == 0x0) {
                    sub_1007ce06c(0x0, @"Invalid value for credentials. Credentials: %@");
                    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r20 release];
                    r20 = r22;
            }
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_format = r19;
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = self;
    r21 = [r22 retain];
    r0 = [r22 objectForKeyedSubscript:@"format"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r20 = sub_100807674();
    [r24 release];
    if (r20 == *0x100bf3d88) {
            sub_1007ce06c(0x0, @"Unknown or unsupported ad format in mediation configuration: %@");
            [r21 release];
            r20 = 0x0;
    }
    else {
            r22 = [r22 objectForKeyedSubscript:@"data"];
            [r21 release];
            r21 = [r22 retain];
            [NSDictionary class];
            if (([r21 isKindOfClass:r2] & 0x1) == 0x0) {
                    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r21 release];
                    r21 = r22;
            }
            r19 = [[r19 initWithAdFormat:r20 credentials:r21] retain];
            [r21 release];
            r20 = r19;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != r21) {
            [GADMediationCredentials class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 retain];
                    r20 = r0;
                    if (r21->_format == [r0 format]) {
                            r21 = r21->_settings;
                            r22 = [[r20 settings] retain];
                            r21 = [r21 isEqual:r2];
                            [r22 release];
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x1;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(unsigned long long)hash {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithInteger:self->_format] retain];
    r0 = [NSArray arrayWithObjects:&var_38 count:0x2];
    r0 = [r0 retain];
    r19 = [r0 hash];
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)format {
    r0 = self->_format;
    return r0;
}

-(void *)settings {
    r0 = self->_settings;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_settings, 0x0);
    return;
}

@end