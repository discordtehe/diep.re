@implementation UMONCustomEvent

-(void *)getJsonDictionary {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r0 = [self category];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_90 = r0;
    if (r0 != 0x0) {
            r0 = [r22 category];
            r29 = r29;
            r20 = [r0 retain];
            var_98 = 0x0;
            var_94 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r20 = [r0 retain];
            var_98 = 0x1;
            var_94 = 0x0;
    }
    r0 = [r22 type];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r22 type];
            r29 = r29;
            r23 = [r0 retain];
            r26 = 0x0;
            r28 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r23 = [r0 retain];
            r28 = 0x0;
            r26 = 0x1;
    }
    r0 = [r22 userInfo];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r22 userInfo];
            r29 = r29;
            r25 = [r0 retain];
            r19 = 0x0;
            r27 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r25 = [r0 retain];
            r27 = 0x0;
            r19 = 0x1;
    }
    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r19 != 0x0) {
            [r25 release];
    }
    if (r27 != 0x0) {
            [r25 release];
    }
    [r24 release];
    if (r26 != 0x0) {
            [r23 release];
    }
    if (r28 != 0x0) {
            [r23 release];
    }
    [r21 release];
    if (var_98 != 0x0) {
            [r20 release];
    }
    if (var_94 != 0x0) {
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [var_90 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithBuilder:(void *)arg2 {
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
            r21 = [[r19 category] retain];
            [r20 setCategory:r21];
            [r21 release];
            r21 = [[r19 type] retain];
            [r20 setType:r21];
            [r21 release];
            r21 = [[r19 userInfo] retain];
            [r20 setUserInfo:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)build:(void *)arg2 {
    (*([arg2 retain] + 0x10))(arg2, [[UMONCustomEventBuilder alloc] init]);
    [r22 release];
    r19 = [[UMONCustomEvent alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)category {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_category)), 0x1);
    return r0;
}

-(void)setCategory:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)type {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_type)), 0x1);
    return r0;
}

-(void)setType:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setUserInfo:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)userInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userInfo)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_category, 0x0);
    return;
}

@end