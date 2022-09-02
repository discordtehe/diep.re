@implementation TR_DDContextWhitelistFilterLogFormatter

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
            r0 = [TR_DDLoggingContextSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_contextSet));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)addToWhitelist:(unsigned long long)arg2 {
    [self->_contextSet addToSet:arg2];
    return;
}

-(void)removeFromWhitelist:(unsigned long long)arg2 {
    [self->_contextSet removeFromSet:arg2];
    return;
}

-(void *)whitelist {
    r0 = self->_contextSet;
    r0 = [r0 currentSet];
    return r0;
}

-(bool)isOnWhitelist:(unsigned long long)arg2 {
    r0 = self->_contextSet;
    r0 = [r0 isInSet:arg2];
    return r0;
}

-(void *)formatLogMessage:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if ([self isOnWhitelist:r19->_context] != 0x0) {
            r20 = [r19->_message retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_contextSet, 0x0);
    return;
}

@end