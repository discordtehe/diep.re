@implementation ISUserDefaultKeyValueStorage

-(void *)initWithIdentifier:(void *)arg2 {
    r31 = r31 - 0x50;
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
            r0 = [r19 copy];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_identifier));
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_prefix, @"com.supersonic");
            r0 = r20->_prefix;
            r0 = [r0 stringByAppendingFormat:@".%@"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fullIdentifier));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_defaults));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)load {
    [self->_defaults synchronize];
    return;
}

-(void)save {
    [self->_defaults synchronize];
    return;
}

-(void *)objectForKey:(void *)arg2 {
    r20 = [[self getFullKey:arg2] retain];
    r19 = [[self->_defaults objectForKey:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)removeObjectForKey:(void *)arg2 {
    [[self getFullKey:arg2] retain];
    [self->_defaults removeObjectForKey:r2];
    [r20 release];
    return;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    [[self getFullKey:arg3] retain];
    [self->_defaults setObject:r2 forKey:r3];
    [r21 release];
    [r19 release];
    return;
}

-(void *)getFullKey:(void *)arg2 {
    r0 = self->_fullIdentifier;
    r0 = [r0 stringByAppendingFormat:@".%@"];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_defaults, 0x0);
    objc_storeStrong((int64_t *)&self->_prefix, 0x0);
    objc_storeStrong((int64_t *)&self->_fullIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

@end