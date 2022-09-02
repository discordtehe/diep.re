@implementation TR_DDLoggingContextSet

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
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_set));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r19->_lock = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)addToSet:(unsigned long long)arg2 {
    OSSpinLockLock((int64_t *)&self->_lock);
    r20 = self->_set;
    [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r20 addObject:r2];
    [r19 release];
    OSSpinLockUnlock((int64_t *)&self->_lock);
    return;
}

-(void)removeFromSet:(unsigned long long)arg2 {
    OSSpinLockLock((int64_t *)&self->_lock);
    r20 = self->_set;
    r19 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r20 removeObject:r19];
    [r19 release];
    OSSpinLockUnlock((int64_t *)&self->_lock);
    return;
}

-(bool)isInSet:(unsigned long long)arg2 {
    OSSpinLockLock((int64_t *)&self->_lock);
    r20 = self->_set;
    r19 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r20 containsObject:r2];
    [r19 release];
    OSSpinLockUnlock((int64_t *)&self->_lock);
    r0 = r20;
    return r0;
}

-(void *)currentSet {
    OSSpinLockLock((int64_t *)&self->_lock);
    [[self->_set allObjects] retain];
    OSSpinLockUnlock((int64_t *)&self->_lock);
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_set, 0x0);
    return;
}

@end