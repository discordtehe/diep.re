@implementation VungleMRAIDAd

-(void *)initWithDictionary:(void *)arg2 {
    r0 = [[&var_10 super] initWithDictionary:arg2];
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    [[&var_30 super] encodeWithCoder:r22];
    [arg2 encodeObject:self->_expectedLocalTemplateURL forKey:@"Expected Local Template URL"];
    [r22 release];
    return;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] initWithCoder:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"Expected Local Template URL"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_expectedLocalTemplateURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEqualToVungleMRAIDAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r20 = [self state];
    r19 = [arg2 state];
    r0 = [r22 release];
    if (r20 == r19) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r20 != r0) {
            [VungleMRAIDAd class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [[&var_20 super] isEqual:r2];
                    if (r0 != 0x0) {
                            r20 = [r20 isEqualToVungleMRAIDAd:r19];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)expectedLocalTemplateURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_expectedLocalTemplateURL)), 0x0);
    return r0;
}

-(void)setExpectedLocalTemplateURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_expectedLocalTemplateURL, 0x0);
    return;
}

@end