@implementation GADEventContext

+(void *)rootContext {
    if (*qword_1011dbe00 != -0x1) {
            dispatch_once(0x1011dbe00, 0x100e974d8);
    }
    r0 = *0x1011dbe08;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithParent:(void *)arg2 component:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r21 = [arg3 retain];
    r22 = [self init];
    if (r22 != 0x0) {
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_componentName));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_parent, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 UUIDString];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_identifier));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_userInfo));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.event-context", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)userInfo {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = &var_40;
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    r0 = r20->_parent;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    if (r19 == 0x0) {
            r19 = [[NSMutableDictionary alloc] init];
    }
    [r19 addEntriesFromDictionary:*(var_38 + 0x28)];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setUserInfoObject:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = self->_lockQueue;
    var_38 = [self retain];
    var_30 = r19;
    [r19 retain];
    [r21 retain];
    dispatch_async(r22, &var_58);
    [r21 release];
    [var_30 release];
    [var_38 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)parent {
    r0 = self->_parent;
    return r0;
}

-(void *)componentName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_componentName)), 0x0);
    return r0;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_componentName, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_parent, 0x0);
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end