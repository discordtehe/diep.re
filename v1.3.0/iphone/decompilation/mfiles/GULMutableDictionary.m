@implementation GULMutableDictionary

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_objects));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_queue_create("GULMutableDictionary", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)objectForKey:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_sync(r20, &var_78);
    [*(&var_40 + 0x28) retain];
    [r0 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r19 = self->_queue;
    [r0 retain];
    var_28 = r21;
    [r21 retain];
    dispatch_async(r19, &var_58);
    [var_28 release];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)removeObjectForKey:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_async(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)removeAllObjects {
    dispatch_async(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_28);
    return;
}

-(unsigned long long)count {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void *)objectForKeyedSubscript:(void *)arg2 {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void *)dictionary {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 forKeyedSubscript:(void *)arg3 {
    [arg2 retain];
    [self setObject:r2 forKey:r3];
    [r21 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_objects, 0x0);
    return;
}

@end